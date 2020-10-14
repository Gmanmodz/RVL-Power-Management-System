/*
 * File:   time.c
 * Author: Gunnar
 *
 * Created on September 19, 2019, 5:09 PM
 */

#include <xc.h>
#include <stdint.h>

uint32_t timer_counter = 0;

inline uint32_t get_time(void) {
    return timer_counter;
}

uint32_t timer_diff(uint32_t t) {
    return timer_counter - t;
}