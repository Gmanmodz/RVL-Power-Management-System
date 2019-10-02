#ifndef STUSB4500_H
#define STUSB4500_H

// User adjustable parameters
#define PDO_CURRENT_MIN 0     // mA, 25mA increments
#define PDO_VOLTAGE_MIN 5000  // mV, 50mV increments
#define PDO_VOLTAGE_MAX 12000 // mV, 50mV increments

#define STUSB_OK 0
#define STUSB_FAILURE -1

int stusb_negotiate(void);

#endif // STUSB4500_H