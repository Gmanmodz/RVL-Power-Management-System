/* 
 * File:   
 * Author: 
 * Comments:
 * Revision history: 
 */
#ifndef I2C_H
#define	I2C_H

#include <xc.h> // include processor files - each processor file is guarded.  

#define SDA RC1
#define SCL RC0

#define SDA_OUTPUT_TRIS TRISCbits.TRISC1
#define SCL_OUTPUT_TRIS TRISCbits.TRISC0

void I2C_bus_reset();
void I2C_Master_Init(const unsigned long clk);
void I2C_Master_Wait();
void I2C_Master_Start();
void I2C_Master_Repeated_Start();
void I2C_Master_Stop();
void I2C_Master_Write(unsigned char data);
void I2C_Master_Ack();
void I2C_Master_nAck();
unsigned char I2C_Master_Read(char ack);

#endif