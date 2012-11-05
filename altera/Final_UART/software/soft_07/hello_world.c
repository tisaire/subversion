#include <string.h>
#include <stdio.h>

#include "system.h"

#include "altera_avalon_pio_regs.h"
#include "altera_avalon_uart.h"
#include "altera_avalon_uart_regs.h"
#include "altera_avalon_lcd_16207.h"
#include "altera_avalon_lcd_16207_regs.h"



int main()
{

  int count = 1;
  int delay;
  int aux;



  FILE *fp_UART=0;

  FILE *fp_LCD=0;


  fp_UART = fopen(UART_NAME,"w"); // open UART for write
  fp_LCD = fopen(LCD_NAME,"w"); // open LCD for write

  if(fp_LCD==0) {
	  printf("\nError Opening %s\n\n",LCD_NAME);
  }
  else {
	  printf("LCD opened, ready for access\n");
  	  fprintf(fp_LCD,"Primer mensaje");
  }

  if(fp_UART==0) {
	  printf("\nError Opening %s\n\n",UART_NAME);
  }
  else {
	  printf("UART opened, ready for access\n");

  }

  printf("Hello from Nios 15!\n");

  //fprintf(fp_UART,"--------------------------\r\n");

  fprintf(fp_LCD,"Hola guapo");

  while(1) {
	  //aux=IORD_ALTERA_AVALON_PIO_DATA(PIO_SW_BASE);

	  //IOWR_ALTERA_AVALON_PIO_DATA(PIO_LEDR_BASE, aux);

	  if (IORD_ALTERA_AVALON_PIO_DATA(PIO_RDYDATA_BASE) == 1) { // !Empty
		  IOWR_ALTERA_AVALON_PIO_DATA(PIO_DATAREAD_BASE, 0x02); //Enable
		  IOWR_ALTERA_AVALON_PIO_DATA(PIO_DATAREAD_BASE, 0x03); //ENABLE +CLCK
		  IOWR_ALTERA_AVALON_PIO_DATA(PIO_DATAREAD_BASE, 0x00);
		  aux=IORD_ALTERA_AVALON_PIO_DATA(PIO_DATA_BASE);
		  fprintf(fp_UART,"%d\r\n",aux);
		  fprintf(fp_LCD,"D: %d N: %d\r\n\r\n", aux , count);
		  count++;
	  }


	 IOWR_ALTERA_AVALON_PIO_DATA(PIO_DATAREAD_BASE, 0x01);
	 IOWR_ALTERA_AVALON_PIO_DATA(PIO_DATAREAD_BASE, 0x00);  //0x00 clock



	 // printf("Laura es gorrina %d!\n",count);
	//  fprintf(fp,"%s:%d%s","Hola UART",count,"\n");
  }

 // fclose (fp);

  return 0;
}
