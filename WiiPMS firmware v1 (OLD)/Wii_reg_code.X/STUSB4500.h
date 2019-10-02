/*
 * File:   STUSB4500.h
 * Author: turnquistg
 *
 * Created on January 25, 2019, 12:09 PM
 */

#ifndef STUSB4500_H
#define STUSB4500_H

#include <xc.h>

#define STUSB_ADDR      0b0101000
#define DPM_SNK_PDO2    0x89
#define DPM_SNK_PDO3    0x8D

void STUSB_Write(unsigned char reg, char data_1, char data_2, char data_3, char data_4);
unsigned short STUSB_Read(unsigned char reg);
void STUSB_9V_12V();

#endif