/*
 * File:   I2C.c
 * Author: Gunnar
 *
 * Created on September 14, 2019, 12:07 AM
 */

#include <xc.h>
#include "PICCONFIG.h"
#include "I2C.h"

void I2C_bus_reset() {
    
    SCL_OUTPUT_TRIS = 1;
    SDA_OUTPUT_TRIS = 1;
    
    char i = 0;

    while(i < 10) {
        i++;
        while(1) {
            if(!SDA) { 
                //pulse SCL
                SCL_OUTPUT_TRIS = 0;    //SCL low
                SCL = 0;
                __delay_ms(1);
                SCL_OUTPUT_TRIS = 1;    //SCL high
                __delay_ms(1);
            }
            if(SDA) {
                //stop sequence
                SDA_OUTPUT_TRIS = 0;    //SDA low
                SDA = 0;
                __delay_ms(1);
                SDA_OUTPUT_TRIS = 1;    //SDA high
                __delay_ms(1);    
                if(SDA) {
                    break;
                }
            } 
        }
    }      
}

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