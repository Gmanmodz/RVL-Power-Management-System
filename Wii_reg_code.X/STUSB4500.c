/*
 * File:   STUSB4500.c
 * Author: turnquistg
 *
 * Created on January 25, 2019, 12:14 PM
 */

#include <xc.h>
#include "I2C.h"
#include "STUSB4500.h"

void STUSB_Write(unsigned char reg, char data_1, char data_2, char data_3, char data_4)
{
    I2C_Master_Start();
    I2C_Master_Write(STUSB_ADDR << 1);            
    I2C_Master_Write(reg);
    I2C_Master_Write(data_1);   
    I2C_Master_Write(data_2);   
    I2C_Master_Write(data_3);   
    I2C_Master_Write(data_4);  
    I2C_Master_Stop();
}

unsigned short STUSB_Read(unsigned char reg)
{
    unsigned char data;
    
    I2C_Master_Start();
    I2C_Master_Write(STUSB_ADDR << 1);            
    I2C_Master_Write(reg);
    
    I2C_Master_Start();
    I2C_Master_Write((STUSB_ADDR << 1) | 0b1);   //Address Read      
    
    data=I2C_Master_Read(1);
    
    I2C_Master_Stop();
    return data;
}

void STUSB_9V_12V() {
    
    /*
        uint32_t Operationnal_Current :10;
        uint32_t Voltage :10;
        uint8_t Reserved_22_20  :3;
        uint8_t Fast_Role_Req_cur : 2;  // must be set to 0 in 2.0
        uint8_t Dual_Role_Data    :1;
        uint8_t USB_Communications_Capable :1;
        uint8_t Unconstrained_Power :1;
        uint8_t Higher_Capability :1;
        uint8_t Dual_Role_Power :1;
        uint8_t Fixed_Supply :2;     

    voltage is BYTE3[3:0] and BYTE2[7:2]
    current is BYTE2[1:0] and BYTE1[7:0]
     */
   
    //9V = 180, 3A = 300
    STUSB_Write(DPM_SNK_PDO2, 0b00101100, 0b11010001, 0b00000010, 0x00);    //PDO2 9V 3A
    
    //12V = 240, 2A = 200
    STUSB_Write(DPM_SNK_PDO3, 0b11001000, 0b11000000, 0b00000011, 0x00);    //PDO3 12V 2A

}