#include <unistd.h>
#include <stdio.h>
#include <stdlib.h>
#include <malloc.h>
#include <ctype.h>

#include "sys/alt_irq.h"
#include "system.h"
#include "altera_avalon_pio_regs.h"

#include "alt_2_wire.h"

typedef struct device {
    int id;
    int size;
    int writeControlByte;
    int readControlByte;
} mem_device;



int readRandom(struct device *device, int address, char *buf, int len);
int writeByte(struct device *device, int address, int value);
void hexdump_eeprom(char *buf, int len, int offset);
void dump(struct device *device, int start, int len);
void fill(struct device *device, char b);
