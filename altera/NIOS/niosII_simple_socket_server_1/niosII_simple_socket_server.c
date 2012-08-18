/******************************************************************************
* Copyright (c) 2010 Altera Corporation, San Jose, California, USA.           *
* All rights reserved. All use of this software and documentation is          *
* subject to the License Agreement located at the end of this file below.     *
*******************************************************************************                                                                             *
* Date - March 2, 2010                                                        *
* Module - niosII_simple_socket_server.c                                      *
*                                                                             *                                                                             *
******************************************************************************/

/******************************************************************************
 * Nios II Simple Socket Server (SSS) example.
 *
 * This example demonstrates the use of MicroC/OS-II running on NIOS II.
 * In addition it is to serve as a good starting point for designs using
 * MicroC/OS-II and Altera NicheStack TCP/IP Stack - NIOS II Edition.
 *
 * -Known Issues
 *     If you want to use Nichestack with a VIC (vectored interrupt controller),
 *     you must use at least Altera ACDS version 9.1 SP1 or greater.
 *
 * Please refer to the Altera NicheStack Tutorial documentation for details on this
 * software example, as well as details on how to configure the NicheStack TCP/IP
 * networking stack and MicroC/OS-II Real-Time Operating System.
 */

#include <stdio.h>
#include <string.h>
#include <ctype.h>

/* MicroC/OS-II definitions */
#include "includes.h"

/* NIOs II Simple Socket Server definitions */
#include "niosII_simple_socket_server.h"
#include "alt_error_handler.h"

/* Nichestack definitions */
#include "ipport.h"
#include "tcpport.h"

#include "system.h"                // component names
#include "altera_avalon_tse.h"  // phy_cfg_fp, alt_tse_system_info, TSE_PHY_AUTO_ADDRESS
#include "altera_avalon_tse_system_info.h"  // TSE_SYSTEM_EXT_MEM_NO_SHARED_FIFO

  alt_tse_system_info tse_mac_device[MAXNETS] = {
    //Macro defined in altera_avalon_tse_system_info, should match TSE configuration
    TSE_SYSTEM_EXT_MEM_NO_SHARED_FIFO(
                                              TSE_MAC,                    //tse_name
                                              0,                                 //offset
                                              SGDMA_TX,                  //sgdma_tx_name
                                              SGDMA_RX,                  //sgdma_rx_name
                                              TSE_PHY_AUTO_ADDRESS,      //phy_address
                                              &marvell_cfg_rgmii,        //phy_cfg_fp
                                              DESCRIPTOR_MEMORY)         //desc_mem_name

  };

/*
 * Global handles (pointers) to our MicroC/OS-II resources. All of resources
 * beginning with "SSS" are declared and created in this file.
 */

/*
 * This SSSLEDCommandQ MicroC/OS-II message queue will be used to communicate
 * between the simple socket server task and Nios II Embedded Evaluation Kit (NEEK)
 * LED control task, called LEDManagementTask.
 *
 * Handle to our MicroC/OS-II Command Queue and variable definitions related to
 * the Q for sending commands received on the TCP-IP socket from the
 * SSSNiosIISimpleSocketServerTask to the LEDManagementTask.
 */
OS_EVENT  *SSSLEDCommandQ;
#define SSS_LED_COMMAND_Q_SIZE  30  /* Message capacity of SSSLEDCommandQ */
void *SSSLEDCommandQTbl[SSS_LED_COMMAND_Q_SIZE]; /*Storage for SSSLEDCommandQ*/

/*
 * This SSSLEDFreqMailbox MicroC/OS-II mailbox will be used to pass an LED 
 * frequency between the LED task responsible for blinking the LED on the
 * Nios II Embedded Evaluation Kit (NEEK), called LEDBlinkTask, and 
 * the LED control task, called LEDManagementTask.
 *
 * Handle to our MicroC/OS-II LED Frequency Mailbox.
 */
OS_EVENT  *SSSLEDFreqMailbox;
 
/* Definition of Task Stacks for tasks not invoked by TK_NEWTASK
 * (do not use NicheStack)
 */
OS_STK    LEDManagementTaskStk[TASK_STACKSIZE];
OS_STK    LEDBlinkTaskStk[TASK_STACKSIZE];

/*
 * Create our MicroC/OS-II resources. All of the resources beginning with
 * "SSS" are declared in this file, and created in this function.
 */
void SSSCreateOSDataStructs(void)
{

  /*
  * Create the resource for our MicroC/OS-II Queue for sending commands
  * received on the TCP/IP socket from the SSSNiosIISimpleSocketServerTask()
  * to the LEDManagementTask().
  */
  SSSLEDCommandQ = OSQCreate(&SSSLEDCommandQTbl[0], SSS_LED_COMMAND_Q_SIZE);
  if (!SSSLEDCommandQ)
  {
     alt_uCOSIIErrorHandler(EXPANDED_DIAGNOSIS_CODE,
     "Failed to create SSSLEDCommandQ.\n");
  }

  /*
  * Create the resource for our MicroC/OS-II Mailbox for sending blink frequencies
  * from the LEDManagementTask to the LEDBlinkTask.
  */
  SSSLEDFreqMailbox = OSMboxCreate(0);
  if (!SSSLEDFreqMailbox)
  {
     alt_uCOSIIErrorHandler(EXPANDED_DIAGNOSIS_CODE,
     "Failed to create SSSLEDFreqMailbox.\n");
  }

}

/* This function creates tasks used in this example which do not use sockets.
 * Tasks which use Nichestack sockets MUST be created with TK_NEWTASK.
 */

void SSSCreateTasks(void)
{
   INT8U error_code;

   error_code = OSTaskCreateExt(LEDBlinkTask,
                              NULL,
                              (void *)&LEDBlinkTaskStk[TASK_STACKSIZE-1],
                              LED_BLINK_TASK_PRIORITY,
                              LED_BLINK_TASK_PRIORITY,
                              LEDBlinkTaskStk,
                              TASK_STACKSIZE,
                              NULL,
                              0);

   alt_uCOSIIErrorHandler(error_code, 0);

   error_code = OSTaskCreateExt(LEDManagementTask,
                              NULL,
                              (void *)&LEDManagementTaskStk[TASK_STACKSIZE-1],
                              LED_MANAGEMENT_TASK_PRIORITY,
                              LED_MANAGEMENT_TASK_PRIORITY,
                              LEDManagementTaskStk,
                              TASK_STACKSIZE,
                              NULL,
                              0);

   alt_uCOSIIErrorHandler(error_code, 0);

}


/*
 * SSS_reset_connection()
 *
 * This routine will, when called, reset our SSSConn struct's members
 * to a reliable initial state. Note that we set our socket (FD) number to
 * -1 to easily determine whether the connection is in a "reset, ready to go"
 * state.
 */
void SSS_reset_connection(SSSConn* conn)
{
  memset(conn, 0, sizeof(SSSConn));

  conn->fd = -1;
  conn->state = READY;
  conn->rx_wr_pos = conn->rx_buffer;
  conn->rx_rd_pos = conn->rx_buffer;
  return;
}

/*
 * SSS_send_menu()
 *
 * This routine will transmit the menu out to the telent client.
 */
void SSS_send_menu(SSSConn* conn)
{
  alt_u8  tx_buf[SSS_TX_BUF_SIZE];
  alt_u8 *tx_wr_pos = tx_buf;

  tx_wr_pos += sprintf(tx_wr_pos,"====================================\n\r");
  tx_wr_pos += sprintf(tx_wr_pos,"Nios II Simple Socket Server Menu\n\r");
  tx_wr_pos += sprintf(tx_wr_pos,"====================================\n\r");
  tx_wr_pos += sprintf(tx_wr_pos,"1-9: Change LED Blink Frequency\n\r");
  tx_wr_pos += sprintf(tx_wr_pos,"Q: Terminate session\n\r");
  tx_wr_pos += sprintf(tx_wr_pos,"=================================\n\r");
  tx_wr_pos += sprintf(tx_wr_pos,"Enter your choice & press return:\n\r");

  send(conn->fd, tx_buf, tx_wr_pos - tx_buf, 0);

  return;
}

/*
 * SSS_handle_accept()
 *
 * This routine is called when ever our listening socket has an incoming
 * connection request. Since this example has only data transfer socket,
 * we just look at it to see whether its in use... if so, we accept the
 * connection request and call the telent_send_menu() routine to transmit
 * instructions to the user. Otherwise, the connection is already in use;
 * reject the incoming request by immediately closing the new socket.
 *
 * We'll also print out the client's IP address.
 */
void SSS_handle_accept(int listen_socket, SSSConn* conn)
{
  int                 socket, len;
  struct sockaddr_in  incoming_addr;

  len = sizeof(incoming_addr);

  if ((conn)->fd == -1)
  {
     if((socket=accept(listen_socket,(struct sockaddr*)&incoming_addr,&len))<0)
     {
         alt_NetworkErrorHandler(EXPANDED_DIAGNOSIS_CODE,
                                 "[SSS_handle_accept] accept failed");
     }
     else
     {
        (conn)->fd = socket;
        SSS_send_menu(conn);
        printf("[SSS_handle_accept] accepted connection request from %s\n",
               inet_ntoa(incoming_addr.sin_addr));
     }
  }
  else
  {
    printf("[SSS_handle_accept] rejected connection request from %s\n",
           inet_ntoa(incoming_addr.sin_addr));
  }

  return;
}

/*
 * SSS_exec_command()
 *
 * This routine is called whenever we have new, valid receive data from our
 * SSS connection. It will parse through the data simply looking for valid
 * commands to the SSS server.
 *
 * Incoming commands to talk to the board LEDs are handled by sending the
 * MicroC/OS-II SSSLedCommandQ a pointer to the value we received.
 *
 * If the user wishes to quit, we set the "close" member of our SSSConn
 * struct, which will be looked at back in SSS_handle_receive() when it
 * comes time to see whether to close the connection or not.
 */
void SSS_exec_command(SSSConn* conn)
{
   int bytes_to_process = conn->rx_wr_pos - conn->rx_rd_pos;
   INT8U tx_buf[SSS_TX_BUF_SIZE];
   INT8U *tx_wr_pos = tx_buf;

    INT8U error_code;


   /*
    * "SSSCommand" is declared static so that the data will reside
    * in the BSS segment. This is done because a pointer to the data in
    * SSSCommand
    * will be passed via SSSLedCommandQ to the LEDManagementTask.
    * Therefore SSSCommand cannot be placed on the stack of the
    * SSSNiosIISimpleSocketServerTask, since the LEDManagementTask does not
    * have access to the stack of the SSSNiosIISimpleSocketServerTask.
    */
   static INT32U SSSCommand;

   SSSCommand = '9';

   while(bytes_to_process--)
   {
      SSSCommand = toupper(*(conn->rx_rd_pos++));

      if ((SSSCommand >= '0' && SSSCommand <= '9') || (SSSCommand == 'Q'))
      {
         tx_wr_pos += sprintf(tx_wr_pos,
                              "--> Nios II Simple Socket Server Command %c.\n",
                              (char)SSSCommand);
         if (SSSCommand == 'Q')
         {
            tx_wr_pos += sprintf(tx_wr_pos,"Terminating connection.\n\n\r");
            conn->close = 1;
         }
         else
         {
            error_code = OSQPost(SSSLEDCommandQ, (void *)SSSCommand);

            alt_SSSErrorHandler(error_code, 0);
         }
      }
   }

  send(conn->fd, tx_buf, tx_wr_pos - tx_buf, 0);

  return;
}

/*
 * SSS_handle_receive()
 *
 * This routine is called whenever there is a SSS connection established and
 * the socket assocaited with that connection has incoming data. We will first
 * look for a newline "\n" character to see if the user has entered something
 * and pressed 'return'. If there is no newline in the buffer, we'll attempt
 * to receive data from the listening socket until there is.
 *
 * The connection will remain open until the user enters "Q\n" or "q\n", as
 * deterimined by repeatedly calling recv(), and once a newline is found,
 * calling SSS_exec_command(), which will determine whether the quit
 * command was received.
 *
 * Finally, each time we receive data we must manage our receive-side buffer.
 * New data is received from the SSS socket onto the head of the buffer,
 * and popped off from the beginning of the buffer with the
 * SSS_exec_command() routine. Aside from these, we must move incoming
 * (un-processed) data to buffer start as appropriate and keep track of
 * associated pointers.
 */
void SSS_handle_receive(SSSConn* conn)
{
  int data_used = 0, rx_code = 0;
  INT8U *lf_addr;

  conn->rx_rd_pos = conn->rx_buffer;
  conn->rx_wr_pos = conn->rx_buffer;

  printf("[SSS_handle_receive] processing RX data\n");

  while(conn->state != CLOSE)
  {
    /* Find the Carriage return which marks the end of the header */
    lf_addr = strchr(conn->rx_buffer, '\n');

    if(lf_addr)
    {
      /* go off and do whatever the user wanted us to do */
      SSS_exec_command(conn);
    }
    /* No newline received? Then ask the socket for data */
    else
    {
      rx_code = recv(conn->fd, conn->rx_wr_pos,
        SSS_RX_BUF_SIZE - (conn->rx_wr_pos - conn->rx_buffer) -1, 0);

     if(rx_code > 0)
      {
        conn->rx_wr_pos += rx_code;

        /* Zero terminate so we can use string functions */
        *(conn->rx_wr_pos+1) = 0;
      }
    }

    /*
     * When the quit command is received, update our connection state so that
     * we can exit the while() loop and close the connection
     */
    conn->state = conn->close ? CLOSE : READY;

    /* Manage buffer */
    data_used = conn->rx_rd_pos - conn->rx_buffer;
    memmove(conn->rx_buffer, conn->rx_rd_pos,
       conn->rx_wr_pos - conn->rx_rd_pos);
    conn->rx_rd_pos = conn->rx_buffer;
    conn->rx_wr_pos -= data_used;
    memset(conn->rx_wr_pos, 0, data_used);
  }

  printf("[SSS_handle_receive] closing connection\n");
  close(conn->fd);
  SSS_reset_connection(conn);

  return;
}

/*
 * SSSNiosIISimpleSocketServerTask()
 *
 * This MicroC/OS-II thread spins forever after first establishing a listening
 * socket for our SSS connection, binding it, and listening. Once setup,
 * it perpetually waits for incoming data to either the listening socket, or
 * (if a connection is active), the SSS data socket. When data arrives,
 * the approrpriate routine is called to either accept/reject a connection
 * request, or process incoming data.
 */
void SSSNiosIISimpleSocketServerTask()
{
  int fd_listen, max_socket;
  struct sockaddr_in addr;
  static SSSConn conn;
  fd_set readfds;

  /*
   * Sockets primer...
   * The socket() call creates an endpoint for TCP of UDP communication. It
   * returns a descriptor (similar to a file descriptor) that we call fd_listen,
   * or, "the socket we're listening on for connection requests" in our SSS
   * server example.
   */
  if ((fd_listen = socket(AF_INET, SOCK_STREAM, 0)) < 0)
  {
    alt_NetworkErrorHandler(EXPANDED_DIAGNOSIS_CODE,"[SSS_task] Socket creation failed");
  }

  /*
   * Sockets primer, continued...
   * Calling bind() associates a socket created with socket() to a particular IP
   * port and incoming address. In this case we're binding to SSS_PORT and to
   * INADDR_ANY address (allowing anyone to connect to us. Bind may fail for
   * various reasons, but the most common is that some other socket is bound to
   * the port we're requesting.
   */
  addr.sin_family = AF_INET;
  addr.sin_port = htons(SSS_PORT);
  addr.sin_addr.s_addr = INADDR_ANY;

  if ((bind(fd_listen,(struct sockaddr *)&addr,sizeof(addr))) < 0)
  {
    alt_NetworkErrorHandler(EXPANDED_DIAGNOSIS_CODE,"[SSS_task] Bind failed");
  }

  /*
   * Sockets primer, continued...
   * The listen socket is a socket which is waiting for incoming connections.
   * This call to listen will block (i.e. not return) until someone tries to
   * connect to this port.
   */
  if ((listen(fd_listen,1)) < 0)
  {
    alt_NetworkErrorHandler(EXPANDED_DIAGNOSIS_CODE,"[SSS_task] Listen failed");
  }

  /* At this point we have successfully created a socket which is listening
   * on SSS_PORT for connection requests from any remote address.
   */
  SSS_reset_connection(&conn);
  printf("[SSS_task] Nios II Simple Socket Server listening on port %d\n", SSS_PORT);

  while(1)
  {
    /*
     * For those not familiar with sockets programming...
     * The select() call below basically tells the TCPIP stack to return
     * from this call when any of the events I have expressed an interest
     * in happen (it blocks until our call to select() is satisfied).
     *
     * In the call below we're only interested in either someone trying to
     * connect to us, or data being available to read on a socket, both of
     * these are a read event as far as select is called.
     *
     * The sockets we're interested in are passed in in the readfds
     * parameter, the format of the readfds is implementation dependant
     * Hence there are standard MACROs for setting/reading the values:
     *
     *   FD_ZERO  - Zero's out the sockets we're interested in
     *   FD_SET   - Adds a socket to those we're interested in
     *   FD_ISSET - Tests whether the chosen socket is set
     */
    FD_ZERO(&readfds);
    FD_SET(fd_listen, &readfds);
    max_socket = fd_listen+1;

    if (conn.fd != -1)
    {
      FD_SET(conn.fd, &readfds);
      if (max_socket <= conn.fd)
      {
        max_socket = conn.fd+1;
      }
    }
    printf("pre select\n");
    select(max_socket, &readfds, NULL, NULL, NULL);
    printf("post select\n");
    /*
     * If fd_listen (the listening socket we originally created in this thread
     * is "set" in readfs, then we have an incoming connection request. We'll
     * call a routine to explicitly accept or deny the incoming connection
     * request (in this example, we accept a single connection and reject any
     * others that come in while the connection is open).
     */
    if (FD_ISSET(fd_listen, &readfds))
    {
      SSS_handle_accept(fd_listen, &conn);
      printf("handle accepted\n");
    }
    /*
     * If SSS_handle_accept() accepts the connection, it creates *another*
     * socket for sending/receiving data over SSS. Note that this socket is
     * independant of the listening socket we created above. This socket's
     * descriptor is stored in conn.fd. If conn.fs is set in readfs... we have
     * incoming data for our SSS server, and we call our receiver routine
     * to process it.
     */
    else
    {
      if ((conn.fd != -1) && FD_ISSET(conn.fd, &readfds))
      {
        SSS_handle_receive(&conn);
      }
    }
  } /* while(1) */
}

void SSSNiosIISimpleSocketServerPeneTask(void)
{
	int fd_listen, max_socket;
	struct sockaddr_in addr;
	static SSSConn conn;
	fd_set readfds;
	char *mesg;
	int msg_len;



	INT8U tx_buf[SSS_TX_BUF_SIZE];
	INT8U *tx_wr_pos = tx_buf;

  /*
   * Sockets primer...
   * The socket() call creates an endpoint for TCP of UDP communication. It
   * returns a descriptor (similar to a file descriptor) that we call fd_listen,
   * or, "the socket we're listening on for connection requests" in our SSS
   * server example.
   */
  if ((fd_listen = socket(AF_INET, SOCK_STREAM, 0)) < 0)
  {
	alt_NetworkErrorHandler(EXPANDED_DIAGNOSIS_CODE,"[PENE_task] Socket creation failed");
  }

  /*
   * Sockets primer, continued...
   * Calling bind() associates a socket created with socket() to a particular IP
   * port and incoming address. In this case we're binding to SSS_PORT and to
   * INADDR_ANY address (allowing anyone to connect to us. Bind may fail for
   * various reasons, but the most common is that some other socket is bound to
   * the port we're requesting.
   */
  addr.sin_family = AF_INET;
  addr.sin_port = htons(PENE_PORT);
  addr.sin_addr.s_addr = INADDR_ANY;

  if ((bind(fd_listen,(struct sockaddr *)&addr,sizeof(addr))) < 0)
  {
	alt_NetworkErrorHandler(EXPANDED_DIAGNOSIS_CODE,"[PENE_task] Bind failed");
  }

  /*
   * Sockets primer, continued...
   * The listen socket is a socket which is waiting for incoming connections.
   * This call to listen will block (i.e. not return) until someone tries to
   * connect to this port.
   */
  if ((listen(fd_listen,1)) < 0)
  {
	alt_NetworkErrorHandler(EXPANDED_DIAGNOSIS_CODE,"[PENE_task] Listen failed");
  }

  /* At this point we have successfully created a socket which is listening
   * on SSS_PORT for connection requests from any remote address.
   */
  SSS_reset_connection(&conn);
  printf("[PENE_task] Nios II Simple Socket Server listening on port %d\n", PENE_PORT);

  while(1)
  {
		/*
		 * For those not familiar with sockets programming...
		 * The select() call below basically tells the TCPIP stack to return
		 * from this call when any of the events I have expressed an interest
		 * in happen (it blocks until our call to select() is satisfied).
		 *
		 * In the call below we're only interested in either someone trying to
		 * connect to us, or data being available to read on a socket, both of
		 * these are a read event as far as select is called.
		 *
		 * The sockets we're interested in are passed in in the readfds
		 * parameter, the format of the readfds is implementation dependant
		 * Hence there are standard MACROs for setting/reading the values:
		 *
		 *   FD_ZERO  - Zero's out the sockets we're interested in
		 *   FD_SET   - Adds a socket to those we're interested in
		 *   FD_ISSET - Tests whether the chosen socket is set
		 */
		FD_ZERO(&readfds);
		FD_SET(fd_listen, &readfds);
		max_socket = fd_listen+1;

		if (conn.fd != -1)
		{
		  FD_SET(conn.fd, &readfds);
		  if (max_socket <= conn.fd)
		  {
			max_socket = conn.fd+1;
		  }
		}
		printf("PENE pre select\n");
		select(max_socket, &readfds, NULL, NULL, NULL);
		printf("PENE post select\n");
		/*
		 * If fd_listen (the listening socket we originally created in this thread
		 * is "set" in readfs, then we have an incoming connection request. We'll
		 * call a routine to explicitly accept or deny the incoming connection
		 * request (in this example, we accept a single connection and reject any
		 * others that come in while the connection is open).
		 */
		if (FD_ISSET(fd_listen, &readfds))
		{
		  SSS_handle_accept(fd_listen, &conn);
		  printf("handle accepted\n");
		}
		/*
		 * If SSS_handle_accept() accepts the connection, it creates *another*
		 * socket for sending/receiving data over SSS. Note that this socket is
		 * independant of the listening socket we created above. This socket's
		 * descriptor is stored in conn.fd. If conn.fs is set in readfs... we have
		 * incoming data for our SSS server, and we call our receiver routine
		 * to process it.
		 */
		else
		{
		  if ((conn.fd != -1) && FD_ISSET(conn.fd, &readfds))
		  {
			SSS_handle_receive(&conn);
			printf("handle received\n");
		  }
		}
		//OSTimeDlyHMSM(0,0,1,0);

		//Generate mesg
		mesg="pene enviado, el c da asco y las FPGA'S aún más\npene enviado, el c da asco y las FPGA'S aún más\npene enviado, el c da asco y las FPGA'S aún más\npene enviado, el c da asco y las FPGA'S aún más\npene enviado, el c da asco y las FPGA'S aún más\npene enviado, el c da asco y las FPGA'S aún más\npene enviado, el c da asco y las FPGA'S aún más\npene enviado, el c da asco y las FPGA'S aún más\npene enviado, el c da asco y las FPGA'S aún más\npene enviado, el c da asco y las FPGA'S aún más\npene enviado, el c da asco y las FPGA'S aún más\npene enviado, el c da asco y las FPGA'S aún más\npene enviado, el c da asco y las FPGA'S aún más\npene enviado, el c da asco y las FPGA'S aún más\npene enviado, el c da asco y las FPGA'S aún más\npene enviado, el c da asco y las FPGA'S aún más\npene enviado, el c da asco y las FPGA'S aún más\npene enviado, el c da asco y las FPGA'S aún más\npene enviado, el c da asco y las FPGA'S aún más\npene enviado, el c da asco y las FPGA'S aún más\npene enviado, el c da asco y las FPGA'S aún más\npene enviado, el c da asco y las FPGA'S aún más\npene enviado, el c da asco y las FPGA'S aún más\npene enviado, el c da asco y las FPGA'S aún más\npene enviado, el c da asco y las FPGA'S aún más\npene enviado, el c da asco y las FPGA'S aún más\npene enviado, el c da asco y las FPGA'S aún más\npene enviado, el c da asco y las FPGA'S aún más\npene enviado, el c da asco y las FPGA'S aún más\n";
		//mesg=strcat(mesg,mesg);
		msg_len=strlen(mesg);

		printf("pre while");
		while(1)
		{
		//printf("in while");
		//tx_wr_pos += sprintf(tx_wr_pos,
							 // "--> Nios II Penecommand over TCP.\n");

		send(conn.fd, mesg, msg_len, 0);
		//OSTimeDlyHMSM(0,0,0,1);
		if ((conn.fd != -1) && FD_ISSET(conn.fd, &readfds))
			{
			SSS_handle_receive(&conn);
			printf("handle received\n");
			}
		}



  	}
	while (1)
	{
		tx_wr_pos += sprintf(tx_wr_pos,
							  "--> Nios II Penecommand.\n");

		 send(conn.fd, tx_buf, tx_wr_pos - tx_buf, 0);
		 OSTimeDlyHMSM(0,0,1,0);
	}

	while(1)
	{
		printf("pene!\n");
		OSTimeDlyHMSM(0,0,5,0);
	}

}



/******************************************************************************
*                                                                             *
* License Agreement                                                           *
*                                                                             *
* Copyright (c) 2006 Altera Corporation, San Jose, California, USA.           *
* All rights reserved.                                                        *
*                                                                             *
* Permission is hereby granted, free of charge, to any person obtaining a     *
* copy of this software and associated documentation files (the "Software"),  *
* to deal in the Software without restriction, including without limitation   *
* the rights to use, copy, modify, merge, publish, distribute, sublicense,    *
* and/or sell copies of the Software, and to permit persons to whom the       *
* Software is furnished to do so, subject to the following conditions:        *
*                                                                             *
* The above copyright notice and this permission notice shall be included in  *
* all copies or substantial portions of the Software.                         *
*                                                                             *
* THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR  *
* IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,    *
* FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE *
* AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER      *
* LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING     *
* FROM, OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER         *
* DEALINGS IN THE SOFTWARE.                                                   *
*                                                                             *
* This agreement shall be governed in all respects by the laws of the State   *
* of California and by the laws of the United States of America.              *
* Altera does not recommend, suggest or require that this reference design    *
* file be used in conjunction or combination with any other product.          *
******************************************************************************/
