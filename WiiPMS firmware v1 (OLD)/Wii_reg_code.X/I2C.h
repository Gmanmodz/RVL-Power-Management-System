/* 
 * File:   
 * Author: 
 * Comments:
 * Revision history: 
 */
#ifndef I2C_H
#define	I2C_H

#include <xc.h> // include processor files - each processor file is guarded.  

void I2C_Master_Init(const unsigned long clk);
void I2C_Master_Wait();
void I2C_Master_Start();
void I2C_Master_Repeated_Start();
void I2C_Master_Stop();
void I2C_Master_Write(unsigned char data);
void I2C_Master_Ack();
void I2C_Master_nAck();
unsigned char I2C_Master_Read(char ack);
void BQ_Write(unsigned char reg, char data);
void LM_Write(unsigned char reg, char data);
unsigned short BQ_Read(unsigned char reg);

#endif