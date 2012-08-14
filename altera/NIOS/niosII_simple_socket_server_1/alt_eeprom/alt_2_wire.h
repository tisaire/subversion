#ifndef _ALT_2_WIRE_H
#define _ALT_2_WIRE_H

#define ALTERA_AVALON_PIO_DIRECTION_INPUT  0
#define ALTERA_AVALON_PIO_DIRECTION_OUTPUT 1

typedef struct alt_two_wire
{
  alt_u32 scl_pio;
  alt_u32 sda_pio;
} alt_two_wire;

void alt_2_wireInit(alt_two_wire* wires);
void alt_2_wireSetDelay(int delay);

void alt_2_wireStart();
void alt_2_wireStop();

int alt_2_wireSendByte(int byte);
int alt_2_wireReadByte(int ackControl);

enum { EXPECT_ACK, SEND_ACK, SEND_NACK };

#endif
