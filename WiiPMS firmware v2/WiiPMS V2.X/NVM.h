/* 
 * File:   NVM.c
 * Author: Gunnar T
 * Comments:
 * Revision history: 
 */
 
#ifndef NVM_H
#define	NVM_H

#include <xc.h> // include processor files - each processor file is guarded.  

void EEPROM_WRITE_BYTE(unsigned char addr, char data);
char EEPROM_READ_BYTE(unsigned char addr);

#endif	