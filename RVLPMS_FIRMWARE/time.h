/* 
 * File:   time.c
 * Author: Gunnar T
 * Comments:
 * Revision history: 
 */
 
#ifndef TIME_H
#define	TIME_H

#include <xc.h> // include processor files - each processor file is guarded. 
#include <stdint.h>

extern uint32_t timer_counter;

inline uint32_t get_time(void);
uint32_t timer_diff(uint32_t t);

#endif	