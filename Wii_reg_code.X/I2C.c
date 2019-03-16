/*
 * File:   I2C.c
 * Author: turnquistg
 *
 * Created on July 20, 2018, 11:56 AM
 */

#include <xc.h>
#include "PicConfig.h"

void I2C_Master_Init(const unsigned long clk)
{
    SSP1CON1 = 0b00101000;
    SSP1CON2 = 0x00;
    SSP1ADD = (_XTAL_FREQ / (4*clk)) - 1;
    SSP1STAT = 0b10000000;
}

void I2C_Master_Wait()
{
    while ((SSP1STAT & 0x04) || (SSP1CON2 & 0x1F));
}

void I2C_Master_Start()
{
    I2C_Master_Wait();
    SSP1CON2bits.SEN = 1;
}

void I2C_Master_Repeated_Start()
{
    I2C_Master_Wait();
    SSP1CON2bits.RSEN = 1;
}

void I2C_Master_Stop()
{
    I2C_Master_Wait();
    SSP1CON2bits.PEN = 1;
}

void I2C_Master_Write(unsigned char data)
{
    I2C_Master_Wait();
    SSP1BUF = data;
}

void I2C_Master_Ack()
{
    SSP1CON2bits.ACKDT = 0;
    SSP1CON2bits.ACKEN = 1;
}

void I2C_Master_nAck()
{
    SSP1CON2bits.ACKDT = 1;
    SSP1CON2bits.ACKEN = 1;
}

unsigned char I2C_Master_Read(char ack)
{
    I2C_Master_Wait();
    SSP1CON2bits.RCEN = 1;
    I2C_Master_Wait();
    
    unsigned char data = SSP1BUF;
    I2C_Master_Wait();
    
    if (ack)
        I2C_Master_nAck();
    else
        I2C_Master_Ack();
    
    return data;
}

void BQ_Write(unsigned char reg, char data)
{
    I2C_Master_Start();
    I2C_Master_Write(BQ_ADDR << 1);            
    I2C_Master_Write(reg);
    I2C_Master_Write(data);   
    I2C_Master_Stop();
}

void LM_Write(unsigned char reg, char data)
{
    I2C_Master_Start();
    I2C_Master_Write(LM_ADDR << 1);            
    I2C_Master_Write(reg | (data & 0x1F));       
    I2C_Master_Stop();
}

unsigned short BQ_Read(unsigned char reg)
{
    unsigned char data;
    
    I2C_Master_Start();
    I2C_Master_Write(BQ_ADDR << 1);            
    I2C_Master_Write(reg);
    
    I2C_Master_Start();
    I2C_Master_Write(0b11010101);   //Address Read      
    data=I2C_Master_Read(1);
    I2C_Master_Stop();
    return data;
}