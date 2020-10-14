/*
 * File:   LED_INTERFACE.c
 * Author: Gunnar
 *
 * Created on September 14, 2019, 9:21 PM
 */

#include <xc.h>
#include <stdint.h>
#include "BQ25895M.h"
#include "time.h"

uint8_t i = 0;
uint8_t c = 0;
uint8_t color = 0;
uint32_t rgb_delay = 0;

void RGB_fade() {
    //this function fades between continuous colors using the RGB led
    if(timer_diff(rgb_delay) >= 2) {
        rgb_delay = get_time();
        if (i >= 255) {
            i = 0;
            color++;
            if (color > 2) {
                color = 0;
            }
        }
        i++;
        if (color == 0) {
            PWM3DCH = 255 - i;
            PWM4DCH = i;
            PWM5DCH = 0;
        }
        if (color == 1) {
            PWM3DCH = 0;
            PWM4DCH = 255 - i;
            PWM5DCH = i;
        }
        if (color == 2) {
            PWM3DCH = i;
            PWM4DCH = 0;
            PWM5DCH = 255 - i;
        }
    }
}

static char Map(int x, char inMin, char inMax, char outMin, char outMax) {
    // Map a single value onto a different range
    return (((x - inMin) * (outMax - outMin)) / (inMax - inMin)) +outMin;
}

void battery_fade() {
    //this function is used to demonstrate the battery voltage on the RG led

    char v = BATTERY_VOLTAGE; //temp variable holding the battery voltage

    //initial map v to lowest and highest battery acceptable
    char battery_min = 0;   //2.304V
    char battery_max = 98;  //4.25

    if (v > battery_max) {
        v = battery_max;
    }
    if (v < battery_min) {
        v = battery_min;
    }

    v = Map(v, battery_min, battery_max, 0, 127); //map battery voltage to full scale

    //yellow-red: 63-0
    if (v <= 63) {
        v = Map(v, 0, 63, 0, 255);
        PWM3DCH = 0;    //blue
        PWM4DCH = v;    //green
        PWM5DCH = 255;  //red
    }
    //green-yellow 127-63
    else if (v >= 63) {
        v = Map(v, 63, 127, 0, 255);
        PWM3DCH = 0;        //blue
        PWM4DCH = 255;      //green
        PWM5DCH = 255 - v;  //red
    }
}

uint8_t dir = 0;
uint32_t chrg_delay = 0;

void chrg_led() {
    
    if(timer_diff(chrg_delay) >= 2) {
        chrg_delay = get_time();
        if(c >= 255) {
            dir = 0;
        }
        if(c <= 1) {
            dir = 1;
        }
        if(dir == 1) {
            c++;
        }
        else if(dir == 0) {
            c--;
        }

        switch(VBUS_CHRG_STATE[1]) {
            case 0b01:
                //status is pre-charge
                PWM3DCH = 0; //blue
                PWM4DCH = 0; //green
                PWM5DCH = c; //red         
            break;
            case 0b10:
                //status is fast charge
                PWM3DCH = 0; //blue
                PWM4DCH = c; //green
                PWM5DCH = c; //red    
            break;
            case 0b11:
                //charge is complete
                PWM3DCH = 0; //blue
                PWM4DCH = c; //green
                PWM5DCH = 0; //red
            break;
            default:
                PWM3DCH = 0; //blue
                PWM4DCH = 0; //green
                PWM5DCH = 0; //red          
        }        
    }
}

uint8_t flash_state = 0;
uint32_t flash_time = 0;

void flash_led() {
    if(timer_diff(flash_time) >= 50) {
        flash_state = !flash_state;
        flash_time = get_time();
    } 
    if(flash_state) {
        PWM3DCH = 0;
        PWM4DCH = 0;
        PWM5DCH = 255;
    }
    else {
        PWM3DCH = 0;
        PWM4DCH = 0;
        PWM5DCH = 0; 
    }  
}

char mode = 2;

void led_modes() {
    //this function is used to set some led modes that are cycled when pwr_btn is tapped
    if(mode == 0) {
        PWM3DCH = 0;
        PWM4DCH = 0;
        PWM5DCH = 0;
    }
    else if(mode == 1) {
        RGB_fade();
    }
    else if(mode == 2) {
        battery_fade();
    }
    else if(mode == 3) {
        flash_led();  
    }
    else {
        mode = 0;
    }
    
}