/*
 * File:   BQ25895M.c
 * Author: Gunnar
 *
 * Created on September 14, 2019, 11:18 AM
 */

#include <xc.h>
#include <stdint.h>
#include "I2C.h"
#include "BQ25895M.h"
#include "PICCONFIG.h"
#include "time.h"

void BQ_Write(unsigned char reg, char data) {
    I2C_Master_Start();
    I2C_Master_Write(BQ_ADDR << 1);            
    I2C_Master_Write(reg);
    I2C_Master_Write(data);   
    I2C_Master_Stop();
}

unsigned short BQ_Read(unsigned char reg) {
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

uint8_t VBUS_CHRG_STATE[2] = {0, 0};
uint8_t BATTERY_VOLTAGE;
uint8_t BQ_adc_state = 0;
uint32_t BQ_adc_time = 0;

void BQ_get_chrg_state() {
    char temp = BQ_Read(0x0B); //get charge/vbus status

    VBUS_CHRG_STATE[0] = (temp >> 4) & 0b00000111;   //vbus stat
    VBUS_CHRG_STATE[1] = (temp >> 2) & 0b00000011;   //chrg stat
}

void BQ_UPDATE() {
    if(BQ_adc_state == 0) {
        BQ_get_chrg_state();
        BQ_Write(0x02, 0b10010001); //start ADC
        BQ_adc_time = get_time();
        BQ_adc_state = 1;
    }
    else if(BQ_adc_state == 1) {
        if(timer_diff(BQ_adc_time) >= 80) {
            BATTERY_VOLTAGE = BQ_Read(0x0E);       
            BQ_adc_state = 2;
            BQ_adc_time = get_time();
        }
    }
    else if(BQ_adc_state == 2) {
        if(timer_diff(BQ_adc_time) >= 20) {
            BQ_adc_state = 0;
        }
    }
    else {
        BQ_adc_state = 0;
    }  
}

uint8_t REG00_config;
uint8_t REG01_config;
uint8_t REG02_config;
uint8_t REG03_config;
uint8_t REG04_config;
uint8_t REG05_config;
uint8_t REG06_config;
uint8_t REG07_config;
uint8_t REG08_config;

//REG00
uint8_t EN_HIZ = 0;
uint8_t EN_ILIM = 1;
uint8_t INILIM = 0b111010;    //3A

//REG01
uint8_t BHOT = 0b00;
uint8_t BCOLD = 0b0;
uint8_t VINDPM_OS = 0b00110;

//REG02
uint8_t CONV_START = 0b0;
uint8_t CONV_RATE = 0;
uint8_t BOOST_FREQ = 1;
uint8_t ICO_EN = 1;
uint8_t HVDCP_EN = 0;
uint8_t MAXC_EN = 0;
uint8_t FORCE_DPDM = 0;
uint8_t AUTO_DPDM_EN = 1;

//REG03
uint8_t WD_RST = 0;
uint8_t OTG_CONFIG = 0;
uint8_t CHG_CONFIG = 1;
uint8_t SYS_MIN = 0b101;

//REG04
uint8_t ICHG = 0b1100000;  //3.072A

//REG05
uint8_t IPRECHG = 0b0001;
uint8_t ITERM = 0b0011;

//REG06
uint8_t VREG = 0b010110;    //4.192V
uint8_t BATLOWV = 0;
uint8_t VRECHG = 0;

//REG07
uint8_t EN_TERM = 1;
uint8_t STAT_DIS = 1;  //disable stat pin
uint8_t WATCHDOG = 0;
uint8_t EN_TIMER = 1;
uint8_t CHG_TIMER = 10;

//REG08
uint8_t BAT_COMP = 0;
uint8_t VCLAMP = 0;
uint8_t TREG = 0b01;   //80C

void BQ_CONFIG_INIT() {
    REG00_config = (EN_HIZ<<7)|(EN_ILIM<<6)|(INILIM); 
    REG01_config = (BHOT<<6)|(BCOLD<<5)|(VINDPM_OS);
    REG02_config = (CONV_START<<7)|(CONV_RATE<<6)|(BOOST_FREQ<<5)|(ICO_EN<<4)|(HVDCP_EN<<3)|(MAXC_EN<<2)|(FORCE_DPDM<<1)|(AUTO_DPDM_EN);
    REG03_config = (WD_RST<<6)|(OTG_CONFIG<<5)|(CHG_CONFIG<<4)|(SYS_MIN<<1);   
    REG04_config = (ICHG);   
    REG05_config = (IPRECHG<<4)|(ITERM);
    REG06_config = (VREG<<2)|(BATLOWV<<1)|(VRECHG);
    REG07_config = (EN_TERM<<7)|(STAT_DIS<<6)|(WATCHDOG<<4)|(EN_TIMER<<3)|(CHG_TIMER<<1)|0b1;    
    REG08_config = (BAT_COMP<<5)|(VCLAMP<<2)|TREG;  
}

void BQ_INIT() {
    BQ_Write(0x00, REG00_config); 
    BQ_Write(0x01, REG01_config); 
    BQ_Write(0x02, REG02_config); 
    BQ_Write(0x03, REG03_config);
    BQ_Write(0x04, REG04_config);
    BQ_Write(0x05, REG05_config); 
    BQ_Write(0x06, REG06_config);
    BQ_Write(0x07, REG07_config);
    BQ_Write(0x08, REG08_config);
}