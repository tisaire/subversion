#include <unistd.h>
#include <stdio.h>
#include <stdlib.h>
#include <malloc.h>
#include <ctype.h>

#include "sys/alt_irq.h"
#include "system.h"
#include "altera_avalon_pio_regs.h"

#include "alt_2_wire.h"
#include "alt_eeprom.h"



int readRandom(struct device *device, int address, char *buf, int len) {
    int i, ret;

   alt_2_wireStart();

     if(alt_2_wireSendByte(device->writeControlByte | ((address & 0x700) >> 7))) {
        fprintf(stderr, "read[0x%.3X]: control byte 1 was not ACKed\n", address);
        alt_2_wireStop();
        return -1;
    }
    if(alt_2_wireSendByte(address & 0xFF)) {
        fprintf(stderr, "read[0x%.3X]: addressing byte 1 was not ACKed\n", address);
        alt_2_wireStop();
        return -1;
    }

//  now we issue a read 
    alt_2_wireStart();

    if(alt_2_wireSendByte(device->readControlByte | ((address & 0x700) >> 7))) {
        fprintf(stderr, "read[0x%.3X]: control byte 2 was not ACKed\n", address);
        alt_2_wireStop();
        return -1;
    }

//  and fill the buffer from the device
    for(i = 0; i < len; i++) {
        ret = alt_2_wireReadByte(((i == len - 1)?(SEND_NACK):(SEND_ACK)));
        if(ret < 0) {
            fprintf(stderr, "read[0x%.3X]: byte read failed\n", address + i);
            alt_2_wireStop();
            return -1;
        }
        buf[i] = ret & 0xFF;
    }

    alt_2_wireStop();
    return 0;
}

int writeByte(struct device *device, int address, int value) {
    int busy, controlByte = 0;
    alt_2_wireSendByte(0);
    alt_2_wireStart();

    controlByte = device->writeControlByte | ((address & 0x700) >> 7);
    if(alt_2_wireSendByte(controlByte)) {
        fprintf(stderr, "write[0x%.3X]: control byte was not ACKed\n", address);
        alt_2_wireStop();
        return -1;
    }
    if(alt_2_wireSendByte(address & 0xFF)) {
        fprintf(stderr, "write[0x%.3X]: addressing byte was not ACKed\n", address);
        alt_2_wireStop();
        return -1;
    }

    if(alt_2_wireSendByte(value & 0xFF)) {
        fprintf(stderr, "write[0x%.3X]: data byte was not ACKed\n", address);
        alt_2_wireStop();
        return -1;
    }

    alt_2_wireStop();

    for(busy = 0; busy < 1000; busy ++) {
        alt_2_wireStart();
        if(!alt_2_wireSendByte(controlByte)) {
            if(busy < 1) {
                fprintf(stderr, "write[0x%.3X]: write ACKed immediately, something may be wrong\n", address);
            }
             fprintf(stderr, "write[0x%.3X]: got ACK, waited %d\n", address, busy);
            alt_2_wireStop();
            return 0;
        }
    }

    fprintf(stderr, "write[0x%.3X]: waited %d cycles for ACK, failed!\n", address, busy);
    alt_2_wireStop();
    return -1;
}

void hexdump_eeprom(char *buf, int len, int offset) {
    int i, j;

    for(i = 0; i < len; i+= 16) {
        printf("0x%.4X: ", i + offset);
        for(j = 0; (j < 16) && (i+j < len); j++)
            printf("%.2X ", buf[i+j] & 0xFF);
        printf("\n");
    }
}

void dump(struct device *device, int start, int len) {
    char *buf = malloc(len);

    if(!readRandom(device, start, buf, len)) {
        hexdump_eeprom(buf, len, start);
    }
    free(buf);
}

void fill(struct device *device, char b) {
    int i;

    for(i = 0; i < device->size; i++) {
        if(writeByte(device, i, b)) return;
    }
    fprintf(stderr, "fill: cleared %d bytes to 0x%.2X\n", device->size, b & 0xFF);
};
