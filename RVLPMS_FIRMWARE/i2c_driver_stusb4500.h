/*
 * File:     i2c.h
 * Author:   jefflongo
 * Comments: PIC i2c driver
 */

#ifndef I2C_DRIVER_STUSB4500_H
#define I2C_DRIVER_STUSB4500_H

#include <stdint.h>

#define I2C_OK 0
#define I2C_FAILURE -1

#define I2C_ACK 0
#define I2C_NACK 1

#define _I2C_WRITE 0
#define _I2C_READ 1

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

#endif // I2C_H