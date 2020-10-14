
# 1 "stusb4500_nvm.c"

# 13 "C:\Program Files (x86)\Microchip\xc8\v2.10\pic\include\c90\stdint.h"
typedef signed char int8_t;

# 20
typedef signed int int16_t;

# 28
typedef __int24 int24_t;

# 36
typedef signed long int int32_t;

# 52
typedef unsigned char uint8_t;

# 58
typedef unsigned int uint16_t;

# 65
typedef __uint24 uint24_t;

# 72
typedef unsigned long int uint32_t;

# 88
typedef signed char int_least8_t;

# 96
typedef signed int int_least16_t;

# 109
typedef __int24 int_least24_t;

# 118
typedef signed long int int_least32_t;

# 136
typedef unsigned char uint_least8_t;

# 143
typedef unsigned int uint_least16_t;

# 154
typedef __uint24 uint_least24_t;

# 162
typedef unsigned long int uint_least32_t;

# 181
typedef signed char int_fast8_t;

# 188
typedef signed int int_fast16_t;

# 200
typedef __int24 int_fast24_t;

# 208
typedef signed long int int_fast32_t;

# 224
typedef unsigned char uint_fast8_t;

# 230
typedef unsigned int uint_fast16_t;

# 240
typedef __uint24 uint_fast24_t;

# 247
typedef unsigned long int uint_fast32_t;

# 268
typedef int32_t intmax_t;

# 282
typedef uint32_t uintmax_t;

# 289
typedef int16_t intptr_t;




typedef uint16_t uintptr_t;

# 6 "stusb4500_nvm.h"
int nvm_flash(void);
int nvm_read(uint8_t* sectors_out);
int nvm_verify(void);

# 21 "i2c_driver_stusb4500.h"
void i2c_master_init(const unsigned long clk);
int i2c_master_write(
const uint8_t device, const uint8_t reg, const void* buf, uint16_t len);
int i2c_master_write_u8(
const uint8_t device, const uint8_t reg, const uint8_t data);
int i2c_master_write_u16(
const uint8_t device, const uint8_t reg, const uint16_t data);
int i2c_master_write_u32(
const uint8_t device, const uint8_t reg, const uint32_t data);
int i2c_master_read(
const uint8_t device, const uint8_t reg, void* buf, uint16_t len);
int i2c_master_read_u8(const uint8_t device, const uint8_t reg, uint8_t* data);
int i2c_master_read_u16(
const uint8_t device, const uint8_t reg, uint16_t* data);
int i2c_master_read_u32(
const uint8_t device, const uint8_t reg, uint32_t* data);

# 72 "stusb4500_nvm.c"
const static uint8_t nvm_config[5][8] = {
{ 0x00, 0x00, 0xB0, 0xAA, 0x00, 0x45, 0x00, 0x00 },
{ 0x10, 0x40, 0x9C, 0x1C, 0xFF, 0x01, 0x3C, 0xDF },
{ 0x02, 0x40, 0x0F, 0x00, 0x32, 0x00, 0xFC, 0xF1 },
{ 0x00,
0x19,
(uint8_t)((((1500 - 250) / 250 & 0x0F) << 4) | ((3 & 0x03) << 1)),
0xAF,
(uint8_t)(((3000 - 250) / 250 & 0x0F) | 0xF0),
(uint8_t)((((2000 - 250) / 250 & 0x0F) << 4) | 0x05),
0x5F,
0x00 },
{ (uint8_t)((9000 / 50 & 0x03) << 2),
(uint8_t)((9000 / 50 >> 2) & 0xFF),
(uint8_t)(12000 / 50 & 0xFF),
(uint8_t)(((2000 / 10 & 0x3F) << 2) | ((12000 / 50 >> 8) & 0x03)),
(uint8_t)(((2000 / 10 >> 6) & 0x0F) | 0x40),
0x00,
(uint8_t)(
((1 & 0x01) << 4) | ((0 & 0x01) << 2) |
0x40),
0xFB },
};

static int enter_write_mode(void) {
uint8_t buffer;


buffer = 0x47;
if (
i2c_master_write_u8(0x28, 0x95, buffer) != 0)
return -1;


buffer = 0x00;
if (i2c_master_write_u8(0x28, 0x53, buffer) != 0) return -1;



buffer = 0x00;
if (i2c_master_write_u8(0x28, 0x96, buffer) != 0)
return -1;


buffer = 0x80 | 0x40;
if (i2c_master_write_u8(0x28, 0x96, buffer) != 0)
return -1;




buffer = (((0x01 | 0x02 | 0x04 | 0x08 | 0x10) << 3) &
0xF8) |
(0x02 & 0x07);
if (i2c_master_write_u8(0x28, 0x97, buffer) != 0)
return -1;


buffer = 0x80 | 0x40 | 0x10;
if (i2c_master_write_u8(0x28, 0x96, buffer) != 0)
return -1;


do {
if (i2c_master_read_u8(0x28, 0x96, &buffer) != 0)
return -1;
} while (buffer & 0x10);


buffer = 0x07 & 0x07;
if (i2c_master_write_u8(0x28, 0x97, buffer) != 0)
return -1;


buffer = 0x80 | 0x40 | 0x10;
if (i2c_master_write_u8(0x28, 0x96, buffer) != 0)
return -1;


do {
if (i2c_master_read_u8(0x28, 0x96, &buffer) != 0)
return -1;
} while (buffer & 0x10);


buffer = 0x05 & 0x07;
if (i2c_master_write_u8(0x28, 0x97, buffer) != 0)
return -1;


buffer = 0x80 | 0x40 | 0x10;
if (i2c_master_write_u8(0x28, 0x96, buffer) != 0)
return -1;


do {
if (i2c_master_read_u8(0x28, 0x96, &buffer) != 0)
return -1;
} while (buffer & 0x10);


return 0;
}

static int enter_read_mode(void) {
uint8_t buffer;


buffer = 0x47;
if (
i2c_master_write_u8(0x28, 0x95, buffer) != 0)
return -1;



buffer = 0x00;
if (i2c_master_write_u8(0x28, 0x96, buffer) != 0)
return -1;


buffer = 0x80 | 0x40;
if (i2c_master_write_u8(0x28, 0x96, buffer) != 0)
return -1;


return 0;
}

static int read_sector(const uint8_t sector, uint8_t* sector_data) {
if (!sector_data) return -1;

uint8_t buffer;


buffer = 0x80 | 0x40;
if (i2c_master_write_u8(0x28, 0x96, buffer) != 0)
return -1;


buffer = (0x00 & 0x07);
if (i2c_master_write_u8(0x28, 0x97, buffer) != 0)
return -1;


buffer =
(sector & 0x07) | 0x80 | 0x40 | 0x10;
if (i2c_master_write_u8(0x28, 0x96, buffer) != 0)
return -1;


do {
if (i2c_master_read_u8(0x28, 0x96, &buffer) != 0)
return -1;
} while (buffer & 0x10);


if (i2c_master_read(0x28, 0x53, sector_data, 8) != 0)
return -1;


buffer = 0x00;
if (i2c_master_write_u8(0x28, 0x96, buffer) != 0)
return -1;

return 0;
}

static int write_sector(const uint8_t sector_num, const uint8_t* sector_data) {
if (!sector_data) return -1;

uint8_t buffer;


if (i2c_master_write(0x28, 0x53, sector_data, 8) != 0)
return -1;


buffer = 0x80 | 0x40;
if (i2c_master_write_u8(0x28, 0x96, buffer) != 0)
return -1;


buffer = (0x01 & 0x07);
if (i2c_master_write_u8(0x28, 0x97, buffer) != 0)
return -1;


buffer = 0x80 | 0x40 | 0x10;
if (i2c_master_write_u8(0x28, 0x96, buffer) != 0)
return -1;


do {
if (i2c_master_read_u8(0x28, 0x96, &buffer) != 0)
return -1;
} while (buffer & 0x10);


buffer = (0x06 & 0x07);
if (i2c_master_write_u8(0x28, 0x97, buffer) != 0)
return -1;


buffer = (sector_num & 0x07) | 0x80 | 0x40 |
0x10;
if (i2c_master_write_u8(0x28, 0x96, buffer) != 0)
return -1;


do {
if (i2c_master_read_u8(0x28, 0x96, &buffer) != 0)
return -1;
} while (buffer & 0x10);

return 0;
}

static int exit_rw_mode(void) {
uint8_t buffer;


buffer = 0x40;
if (i2c_master_write_u8(0x28, 0x96, buffer) != 0)
return -1;
buffer = 0x00;
if (i2c_master_write_u8(0x28, 0x97, buffer) != 0)
return -1;


buffer = 0x00;
if (
i2c_master_write_u8(0x28, 0x95, buffer) != 0)
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

for (int i = 0; i < 40; i++) {
sectors_out[i] = p_sectors[i];
}

return 0;
}

int nvm_verify(void) {
uint8_t sectors[5][8];
uint8_t* p_sectors = (uint8_t*)sectors;
const uint8_t* p_config = (const uint8_t*)nvm_config;

if (nvm_read(p_sectors) != 0) return -1;

for (int i = 0; i < 40; i++) {
if (p_sectors[i] != p_config[i]) return -1;
}

return 0;
}
