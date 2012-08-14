#include <unistd.h>
#include <stdio.h>

#include "sys/alt_irq.h"
#include "system.h"
#include "altera_avalon_pio_regs.h"

#include "alt_2_wire.h"

int alt_2_wireDelay = 10;
alt_two_wire* bus;

int SDA = 1;
int SCL = 1;
int debug = 0;

static inline void setupDelay() {
	int i;
	for(i = 0; i < alt_2_wireDelay; i++); 
	   usleep(1);
}



static void pulldownSDA() {
    IOWR_ALTERA_AVALON_PIO_DATA(bus->sda_pio, 0x0);
	setupDelay();
}
static void pullupSDA() {
    IOWR_ALTERA_AVALON_PIO_DATA(bus->sda_pio, 0x1);
	setupDelay();
}
static void pulldownSCL() {
    IOWR_ALTERA_AVALON_PIO_DATA(bus->scl_pio, 0x0);
	setupDelay();
}
static void pullupSCL() {
    IOWR_ALTERA_AVALON_PIO_DATA(bus->scl_pio, 0x1);
	setupDelay();
}

static int readSDA() {
  int read_data = 0;
  IOWR_ALTERA_AVALON_PIO_DIRECTION(bus->sda_pio, ALTERA_AVALON_PIO_DIRECTION_INPUT);
  read_data = (IORD_ALTERA_AVALON_PIO_DATA(bus->sda_pio) & 0x01);

  IOWR_ALTERA_AVALON_PIO_DIRECTION(bus->sda_pio, ALTERA_AVALON_PIO_DIRECTION_OUTPUT);
	return read_data;
}

void alt_2_wireStart() {
#ifdef ALT_2_WIRE_DEBUG
	printf("enter alt_2_wireStart()\n");
#endif
	pullupSCL();
	pullupSDA();

	pulldownSDA();

	pulldownSCL();
#ifdef ALT_2_WIRE_DEBUG
	printf("exit alt_2_wireStart()\n");
#endif
}

void alt_2_wireStop() {
#ifdef ALT_2_WIRE_DEBUG
	printf("enter alt_2_wireStop()\n");
#endif
	pulldownSDA();
 	pullupSCL();

	pullupSDA();
#ifdef ALT_2_WIRE_DEBUG
	printf("exit alt_2_wireStop()\n");
#endif
}

int alt_2_wireSendByte(int byte) {
    int i, ret;

#ifdef ALT_2_WIRE_DEBUG
    printf("start alt_2_wireSendByte(0x%.2X)\n", byte & 0xFF);
#endif
    for(i = 7; i > -1; i--) {
        (byte & (1 << i))?(pullupSDA()):(pulldownSDA());

        pullupSCL();
        pulldownSCL();
    }

    pullupSDA();
    IOWR_ALTERA_AVALON_PIO_DIRECTION(bus->sda_pio, ALTERA_AVALON_PIO_DIRECTION_INPUT);
    
    pullupSCL();
    ret = readSDA();
    pulldownSCL();

#ifdef ALT_2_WIRE_DEBUG
    printf("exit alt_2_wireSendByte(), ack = %d\n", ret);
#endif
    return ret;
}

int alt_2_wireReadByte(int ackControl) {
	int i, val = 0, ack;

#ifdef ALT_2_WIRE_DEBUG
	printf("start alt_2_wireReadByte(%d)\n", ackControl);
#endif
	pullupSDA();

	for(i = 7; i > -1; i--) {
		pullupSCL();
		val |= (readSDA() << i);
		pulldownSCL();
	}

	switch(ackControl) {
		case EXPECT_ACK:
			pullupSCL();
			ack = readSDA();
			pulldownSCL();
			if(ack) return -1;
			break;
		case SEND_ACK:
			pulldownSDA();
			pullupSCL();
			pulldownSCL();
			pullupSDA();
			break;
		case SEND_NACK:
			pullupSDA();
			pullupSCL();
			pulldownSCL();
			pulldownSDA();
			break;
		default:
#ifdef ALT_2_WIRE_DEBUG
			printf("error: unknown ack control mode!\n");
#endif
			alt_2_wireStop();
            return -1;
	}

#ifdef ALT_2_WIRE_DEBUG
	printf("exit alt_2_wireReadByte(), byte = 0x%.2X\n", val & 0xFF);
#endif
	return val;
}

void alt_2_wireSetDelay(int delay) {
	alt_2_wireDelay = delay;
}

void alt_2_wireInit(alt_two_wire* wires) {
    bus = wires;
    IOWR_ALTERA_AVALON_PIO_DIRECTION(bus->sda_pio, ALTERA_AVALON_PIO_DIRECTION_OUTPUT);
}
