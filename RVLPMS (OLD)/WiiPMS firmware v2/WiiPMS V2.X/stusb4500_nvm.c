//library by Jeff Longo

#include "stusb4500_nvm.h"

#include "i2c_driver_stusb4500.h"
#include "stusb4500_nvm_config.h"

/* NVM Registers
FTP_CUST_PASSWORD REG: address 0x95
    [7:0] : Password required to flash NVM, password = FTP_CUST_PASSWORD = 0x47

FTP_CTRL_0: address 0x96
    [7]   : FTP_CUST_PWR    : Power
    [6]   : FTP_CUST_RST_N  : Reset
    [5]   : --------------  : --------------
    [4]   : FTP_CUST_REQ    : Request operation
    [3]   : --------------  : --------------
    [2:0] : FTP_CUST_SECT   : Sector 0 - 4 selection

FTP_CTRL_1: address 0x97
    [7:3] : FTP_CUST_SER    : Sectors to erase (MSB = sector 4, LSB = sector 0)
    [2:0] : FTP_CUST_OPCODE : Opcode
            000 : Read sector
            001 : Write Program Load register (PL) with data to be written to
                  sector 0 or 1
            010 : Write FTP_CTRL_1[7:3] to Sector Erase register (SER)
            011 : Read PL
            100 : Read SER
            101 : Erase sectors masked by SER
            110 : Program sector selected by FTP_CTRL_0[2:0]
            111 : Soft program sectors masked by SER

RW_BUFFER: address 0x53
    [7:0] : Buffer used for reading and writing data */

#define FTP_CUST_PASSWORD_REG 0x95
#define FTP_CUST_PASSWORD 0x47
#define FTP_CTRL_0 0x96
#define FTP_CUST_PWR 0x80
#define FTP_CUST_RST_N 0x40
#define FTP_CUST_REQ 0x10
#define FTP_CUST_SECT 0x07
#define FTP_CTRL_1 0x97
#define FTP_CUST_SER 0xF8
#define FTP_CUST_OPCODE 0x07
#define RW_BUFFER 0x53

// Opcodes
#define READ 0x00             // Read memory array
#define WRITE_PL 0x01         // Shift in data on Program Load (PL) Register
#define WRITE_SER 0x02        // Shift in data on Sector Erase (SER) Register
#define READ_PL 0x03          // Shift out data on Program Load (PL) Register
#define READ_SER 0x04         // Shift out data on Sector Erase (SER) Register
#define ERASE_SECTOR 0x05     // Erase memory array
#define PROG_SECTOR 0x06      // Program 256b word into EEPROM
#define SOFT_PROG_SECTOR 0x07 // Soft Program array

// Sector masks
#define SECTOR0 0x01
#define SECTOR1 0x02
#define SECTOR2 0x04
#define SECTOR3 0x08
#define SECTOR4 0x10

// I2C device ID
#define STUSB_ADDR 0x28

// 5 sectors, 8 bytes each
#define NVM_SIZE 40

// Data to be written to sectors
const static uint8_t nvm_config[5][8] = {
    { 0x00, 0x00, 0xB0, 0xAA, 0x00, 0x45, 0x00, 0x00 }, // Sector 0
    { 0x10, 0x40, 0x9C, 0x1C, 0xFF, 0x01, 0x3C, 0xDF }, // Sector 1
    { 0x02, 0x40, 0x0F, 0x00, 0x32, 0x00, 0xFC, 0xF1 }, // Sector 2
    { 0x00,
      0x19, // Sector 3
      (uint8_t)(((I_SNK_PDO1 & 0x0F) << 4) | ((SNK_PDO_NUMB & 0x03) << 1)),
      0xAF,
      (uint8_t)((I_SNK_PDO2 & 0x0F) | 0xF0),
      (uint8_t)(((I_SNK_PDO3 & 0x0F) << 4) | 0x05),
      0x5F,
      0x00 },
    { (uint8_t)((V_SNK_PDO2 & 0x03) << 2), // Sector 4
      (uint8_t)((V_SNK_PDO2 >> 2) & 0xFF),
      (uint8_t)(V_SNK_PDO3 & 0xFF),
      (uint8_t)(((I_SNK_PDO_FLEX & 0x3F) << 2) | ((V_SNK_PDO3 >> 8) & 0x03)),
      (uint8_t)(((I_SNK_PDO_FLEX >> 6) & 0x0F) | 0x40),
      0x00,
      (uint8_t)(
        ((REQ_SRC_CURRENT & 0x01) << 4) | ((POWER_ONLY_ABOVE_5V & 0x01) << 2) |
        0x40),
      0xFB },
};

static int enter_write_mode(void) {
    uint8_t buffer;

    // Write FTP_CUST_PASSWORD to FTP_CUST_PASSWORD_REG
    buffer = FTP_CUST_PASSWORD;
    if (
      i2c_master_write_u8(STUSB_ADDR, FTP_CUST_PASSWORD_REG, buffer) != I2C_OK)
        return -1;

    // RW_BUFFER register must be NULL for Partial Erase feature
    buffer = 0x00;
    if (i2c_master_write_u8(STUSB_ADDR, RW_BUFFER, buffer) != I2C_OK) return -1;

    /* Begin NVM power on sequence */
    // Reset internal controller
    buffer = 0x00;
    if (i2c_master_write_u8(STUSB_ADDR, FTP_CTRL_0, buffer) != I2C_OK)
        return -1;

    // Set PWR and RST_N bits in FTP_CTRL_0
    buffer = FTP_CUST_PWR | FTP_CUST_RST_N;
    if (i2c_master_write_u8(STUSB_ADDR, FTP_CTRL_0, buffer) != I2C_OK)
        return -1;
    /* End NVM power on sequence */

    /* Begin sectors erase */
    // Format and mask sectors to erase and write SER write opcode
    buffer = (((SECTOR0 | SECTOR1 | SECTOR2 | SECTOR3 | SECTOR4) << 3) &
              FTP_CUST_SER) |
             (WRITE_SER & FTP_CUST_OPCODE);
    if (i2c_master_write_u8(STUSB_ADDR, FTP_CTRL_1, buffer) != I2C_OK)
        return -1;

    // Load SER write command
    buffer = FTP_CUST_PWR | FTP_CUST_RST_N | FTP_CUST_REQ;
    if (i2c_master_write_u8(STUSB_ADDR, FTP_CTRL_0, buffer) != I2C_OK)
        return -1;

    // Wait for execution
    do {
        if (i2c_master_read_u8(STUSB_ADDR, FTP_CTRL_0, &buffer) != I2C_OK)
            return -1;
    } while (buffer & FTP_CUST_REQ);

    // Write soft program opcode
    buffer = SOFT_PROG_SECTOR & FTP_CUST_OPCODE;
    if (i2c_master_write_u8(STUSB_ADDR, FTP_CTRL_1, buffer) != I2C_OK)
        return -1;

    // Load soft program command
    buffer = FTP_CUST_PWR | FTP_CUST_RST_N | FTP_CUST_REQ;
    if (i2c_master_write_u8(STUSB_ADDR, FTP_CTRL_0, buffer) != I2C_OK)
        return -1;

    // Wait for execution
    do {
        if (i2c_master_read_u8(STUSB_ADDR, FTP_CTRL_0, &buffer) != I2C_OK)
            return -1;
    } while (buffer & FTP_CUST_REQ);

    // Write erase sectors opcode
    buffer = ERASE_SECTOR & FTP_CUST_OPCODE;
    if (i2c_master_write_u8(STUSB_ADDR, FTP_CTRL_1, buffer) != I2C_OK)
        return -1;

    // Load erase sectors command
    buffer = FTP_CUST_PWR | FTP_CUST_RST_N | FTP_CUST_REQ;
    if (i2c_master_write_u8(STUSB_ADDR, FTP_CTRL_0, buffer) != I2C_OK)
        return -1;

    // Wait for execution
    do {
        if (i2c_master_read_u8(STUSB_ADDR, FTP_CTRL_0, &buffer) != I2C_OK)
            return -1;
    } while (buffer & FTP_CUST_REQ);
    /* End sectors erase */

    return 0;
}

static int enter_read_mode(void) {
    uint8_t buffer;

    // Write FTP_CUST_PASSWORD to FTP_CUST_PASSWORD_REG
    buffer = FTP_CUST_PASSWORD;
    if (
      i2c_master_write_u8(STUSB_ADDR, FTP_CUST_PASSWORD_REG, buffer) != I2C_OK)
        return -1;

    /* Begin NVM power on sequence */
    // Reset internal controller
    buffer = 0x00;
    if (i2c_master_write_u8(STUSB_ADDR, FTP_CTRL_0, buffer) != I2C_OK)
        return -1;

    // Set PWR and RST_N bits in FTP_CTRL_0
    buffer = FTP_CUST_PWR | FTP_CUST_RST_N;
    if (i2c_master_write_u8(STUSB_ADDR, FTP_CTRL_0, buffer) != I2C_OK)
        return -1;
    /* End NVM power on sequence */

    return 0;
}

static int read_sector(const uint8_t sector, uint8_t* sector_data) {
    if (!sector_data) return -1;

    uint8_t buffer;

    // Set PWR and RST_N bits in FTP_CTRL_0
    buffer = FTP_CUST_PWR | FTP_CUST_RST_N;
    if (i2c_master_write_u8(STUSB_ADDR, FTP_CTRL_0, buffer) != I2C_OK)
        return -1;

    // Write sector read opcode
    buffer = (READ & FTP_CUST_OPCODE);
    if (i2c_master_write_u8(STUSB_ADDR, FTP_CTRL_1, buffer) != I2C_OK)
        return -1;

    // Select sector to read and load sector read command
    buffer =
      (sector & FTP_CUST_SECT) | FTP_CUST_PWR | FTP_CUST_RST_N | FTP_CUST_REQ;
    if (i2c_master_write_u8(STUSB_ADDR, FTP_CTRL_0, buffer) != I2C_OK)
        return -1;

    // Wait for execution
    do {
        if (i2c_master_read_u8(STUSB_ADDR, FTP_CTRL_0, &buffer) != I2C_OK)
            return -1;
    } while (buffer & FTP_CUST_REQ);

    // Read sector data bytes from RW_BUFFER register
    if (i2c_master_read(STUSB_ADDR, RW_BUFFER, sector_data, 8) != I2C_OK)
        return -1;

    // Reset internal controller
    buffer = 0x00;
    if (i2c_master_write_u8(STUSB_ADDR, FTP_CTRL_0, buffer) != I2C_OK)
        return -1;

    return 0;
}

static int write_sector(const uint8_t sector_num, const uint8_t* sector_data) {
    if (!sector_data) return -1;

    uint8_t buffer;

    // Write the 8 byte programming data to the RW_BUFFER register
    if (i2c_master_write(STUSB_ADDR, RW_BUFFER, sector_data, 8) != I2C_OK)
        return -1;

    // Set PWR and RST_N bits in FTP_CTRL_0
    buffer = FTP_CUST_PWR | FTP_CUST_RST_N;
    if (i2c_master_write_u8(STUSB_ADDR, FTP_CTRL_0, buffer) != I2C_OK)
        return -1;

    // Write PL write opcode
    buffer = (WRITE_PL & FTP_CUST_OPCODE);
    if (i2c_master_write_u8(STUSB_ADDR, FTP_CTRL_1, buffer) != I2C_OK)
        return -1;

    // Load PL write command
    buffer = FTP_CUST_PWR | FTP_CUST_RST_N | FTP_CUST_REQ;
    if (i2c_master_write_u8(STUSB_ADDR, FTP_CTRL_0, buffer) != I2C_OK)
        return -1;

    // Wait for execution
    do {
        if (i2c_master_read_u8(STUSB_ADDR, FTP_CTRL_0, &buffer) != I2C_OK)
            return -1;
    } while (buffer & FTP_CUST_REQ);

    // Write program sector opcode
    buffer = (PROG_SECTOR & FTP_CUST_OPCODE);
    if (i2c_master_write_u8(STUSB_ADDR, FTP_CTRL_1, buffer) != I2C_OK)
        return -1;

    // Load program sector command
    buffer = (sector_num & FTP_CUST_SECT) | FTP_CUST_PWR | FTP_CUST_RST_N |
             FTP_CUST_REQ;
    if (i2c_master_write_u8(STUSB_ADDR, FTP_CTRL_0, buffer) != I2C_OK)
        return -1;

    // Wait for execution
    do {
        if (i2c_master_read_u8(STUSB_ADDR, FTP_CTRL_0, &buffer) != I2C_OK)
            return -1;
    } while (buffer & FTP_CUST_REQ);

    return 0;
}

static int exit_rw_mode(void) {
    uint8_t buffer;

    // Clear FTP_CTRL registers
    buffer = FTP_CUST_RST_N;
    if (i2c_master_write_u8(STUSB_ADDR, FTP_CTRL_0, buffer) != I2C_OK)
        return -1;
    buffer = 0x00;
    if (i2c_master_write_u8(STUSB_ADDR, FTP_CTRL_1, buffer) != I2C_OK)
        return -1;

    // Clear password
    buffer = 0x00;
    if (
      i2c_master_write_u8(STUSB_ADDR, FTP_CUST_PASSWORD_REG, buffer) != I2C_OK)
        return -1;

    return 0;
}

int nvm_flash(void) {
    if (enter_write_mode() != 0) return -1;
    if (write_sector(0, nvm_config[0]) != 0) return -1;
    if (write_sector(1, nvm_config[1]) != 0) return -1;
    if (write_sector(2, nvm_config[2]) != 0) return -1;
    if (write_sector(3, nvm_config[3]) != 0) return -1;
    if (write_sector(4, nvm_config[4]) != 0) return -1;
    if (exit_rw_mode() != 0) return -1;

    return 0;
}

int nvm_read(uint8_t* sectors_out) {
    if (!sectors_out) return -1;

    uint8_t sectors[5][8];
    uint8_t* p_sectors = (uint8_t*)sectors;

    if (enter_read_mode() != 0) return -1;
    if (read_sector(0, sectors[0]) != 0) return -1;
    if (read_sector(1, sectors[1]) != 0) return -1;
    if (read_sector(2, sectors[2]) != 0) return -1;
    if (read_sector(3, sectors[3]) != 0) return -1;
    if (read_sector(4, sectors[4]) != 0) return -1;
    if (exit_rw_mode() != 0) return -1;

    for (int i = 0; i < NVM_SIZE; i++) {
        sectors_out[i] = p_sectors[i];
    }

    return 0;
}

int nvm_verify(void) {
    uint8_t sectors[5][8];
    uint8_t* p_sectors = (uint8_t*)sectors;
    const uint8_t* p_config = (const uint8_t*)nvm_config;

    if (nvm_read(p_sectors) != 0) return -1;

    for (int i = 0; i < NVM_SIZE; i++) {
        if (p_sectors[i] != p_config[i]) return -1;
    }

    return 0;
}