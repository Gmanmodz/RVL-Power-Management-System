#ifndef STUSB4500_NVM_H
#define STUSB4500_NVM_H

#include <stdint.h>

int nvm_flash(void);
int nvm_read(uint8_t* sectors_out);
int nvm_verify(void);

#endif // STUSB4500_NVM_H