/*
 * File:   PPS.c
 * Author: Gunnar
 *
 * Created on September 13, 2019, 10:48 PM
 */


#include <xc.h>

void PPS_unlock() {
    PPSLOCK = 0x55;
    PPSLOCK = 0xAA;
    PPSLOCK = 0; //PPS unlocked	
}

void PPS_lock() {
    PPSLOCK = 0x55;
    PPSLOCK = 0xAA;
    PPSLOCK = 1; //PPS locked   	
}