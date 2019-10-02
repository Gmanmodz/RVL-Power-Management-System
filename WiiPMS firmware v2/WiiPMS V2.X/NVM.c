/*
 * File:   NVM.c
 * Author: Gunnar
 *
 * Created on September 15, 2019, 8:30 PM
 */

#include <xc.h>

void EEPROM_WRITE_BYTE(unsigned char addr, char data) {
    INTCONbits.GIE = 0;
    NVMCON1bits.NVMREGS = 1;
    NVMCON1bits.WREN = 1;
    NVMADRH = 0xF0;
    NVMADRL = addr;
    NVMDATL = data;
    
    NVMCON2 = 0x55;
    NVMCON2 = 0xAA;
    NVMCON1bits.WR = 1;        
    while(NVMCON1bits.WR);
    NVMCON1bits.WREN = 0;
    INTCONbits.GIE = 1;        
}

char EEPROM_READ_BYTE(unsigned char addr) {
    char data;
    NVMCON1bits.NVMREGS = 1;
    NVMADRH = 0xF0;
    NVMADRL = addr;
    NVMCON1bits.RD = 1;
    data = NVMDATL;
    return data;
}