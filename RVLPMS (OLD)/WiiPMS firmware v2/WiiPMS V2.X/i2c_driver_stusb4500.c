#include "i2c_driver_stusb4500.h"

#include "PICCONFIG.h"

#include <xc.h>

static void i2c_master_wait(void) {
    while (SSP1STAT & 0x04 || SSP1CON2 & 0x1F)
        ;
}

static void i2c_master_start(void) {
    SSP1CON2bits.SEN = 1;
    i2c_master_wait();
}

static void i2c_master_repeat_start(void) {
    SSP1CON2bits.RSEN = 1;
    i2c_master_wait();
}

static void i2c_master_stop(void) {
    SSP1CON2bits.PEN = 1;
    i2c_master_wait();
}

static int i2c_master_send_byte(const uint8_t data) {
    SSP1BUF = data;
    i2c_master_wait();

    return SSP1CON2bits.ACKSTAT ? I2C_FAILURE : I2C_OK;
}

static uint8_t i2c_master_receive_byte(const char ack) {
    SSP1CON2bits.RCEN = 1;
    i2c_master_wait();
    uint8_t data = SSP1BUF;
    i2c_master_wait();
    SSP1CON2bits.ACKDT = ack;
    SSP1CON2bits.ACKEN = 1;
    i2c_master_wait();

    return data;
}

void i2c_master_init(const unsigned long clk) {
    SSP1STAT = 0x80; // No slew rate control
    SSP1CON1 = 0x28; // i2c master
    SSP1CON2 = 0x00; // Clear i2c bits
    SSP1CON3 = 0x00; // Start/stop interrupts disabled
    SSP1ADD = (_XTAL_FREQ / (4 * clk)) - 1;
}

int i2c_master_write(
  const uint8_t device, const uint8_t reg, const void* buf, uint16_t len) {
    uint8_t* data = (uint8_t*)buf;
    if (!data) return I2C_FAILURE;

    int ok = I2C_OK;

    i2c_master_wait();
    i2c_master_start();
    if (ok == I2C_OK) ok = i2c_master_send_byte((device << 1) | _I2C_WRITE);
    if (ok == I2C_OK) ok = i2c_master_send_byte(reg);
    while (ok == I2C_OK && len--) {
        ok = i2c_master_send_byte(*data++);
    }
    i2c_master_stop();

    return ok;
}

int i2c_master_write_u8(
  const uint8_t device, const uint8_t reg, const uint8_t data) {
    return i2c_master_write(device, reg, &data, 1);
}

int i2c_master_write_u16(
  const uint8_t device, const uint8_t reg, const uint16_t data) {
    return i2c_master_write(device, reg, &data, 2);
}

int i2c_master_write_u32(
  const uint8_t device, const uint8_t reg, const uint32_t data) {
    return i2c_master_write(device, reg, &data, 4);
}

int i2c_master_read(
  const uint8_t device, const uint8_t reg, void* buf, uint16_t len) {
    uint8_t* data = (uint8_t*)buf;
    if (!data) return I2C_FAILURE;

    int ok = I2C_OK;

    i2c_master_wait();
    i2c_master_start();
    if (ok == I2C_OK) ok = i2c_master_send_byte((device << 1) | _I2C_WRITE);
    if (ok == I2C_OK) ok = i2c_master_send_byte(reg);
    if (ok == I2C_OK) i2c_master_repeat_start();
    if (ok == I2C_OK) ok = i2c_master_send_byte((device << 1) | _I2C_READ);
    if (ok == I2C_OK) {
        while (len--) {
            *data++ = i2c_master_receive_byte(len ? I2C_ACK : I2C_NACK);
        }
    }
    i2c_master_stop();

    return ok;
}

int i2c_master_read_u8(const uint8_t device, const uint8_t reg, uint8_t* data) {
    return i2c_master_read(device, reg, data, 1);
}

int i2c_master_read_u16(
  const uint8_t device, const uint8_t reg, uint16_t* data) {
    return i2c_master_read(device, reg, (uint8_t*)data, 2);
}

int i2c_master_read_u32(
  const uint8_t device, const uint8_t reg, uint32_t* data) {
    return i2c_master_read(device, reg, (uint8_t*)data, 4);
}