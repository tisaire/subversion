/******************************************************************************
* Copyright (c) 2004 Altera Corporation, San Jose, California, USA.           *
* All rights reserved. All use of this software and documentation is          *
* subject to the License Agreement located at the end of this file below.     *
*******************************************************************************
*                                                                             *
* This example demonstrates the use of MicroC/OS-II running on NIOS II.       *
* In addition it is to serve as a good starting point for designs using       *
* MicroC/OS-II with NIOSII.                                                   *
*                                                                             *
* There are 5 different task that are used in this example(There are two      *
* additional task that are used for initialization and status). The send_task *
* fills up a message queue and the two receive_tasks periodically pull message*
* out of the queue.  The two getsem_tasks are contending for a shared         *
* resource.                                                                   *
*                                                                             *
* See the MicroC/OS-II Tutorial for additional details on the design and the  *
* minimum requirements for the design to function correctly.                  *
*                                                                             *
* The MicroC/OS-II Tutorial is located in <Nios II kit install dir>\documents.*
*                                                                             *
*   -Known Issues                                                             *
*     If this design is run on the ISS, terminal output will take several     *
*     minutes per iteration.                                                  *
******************************************************************************/
#include <stdio.h>
#include <unistd.h>
#include <string.h>
#include "includes.h"
#include "alt_ucosii_simple_error_check.h"

/* Definition of Task Stacks */
#define   TASK_STACKSIZE       2048
OS_STK	initialize_task_stk[TASK_STACKSIZE];
OS_STK	print_status_task_stk[TASK_STACKSIZE];
OS_STK	getsem_task1_stk[TASK_STACKSIZE];
OS_STK	getsem_task2_stk[TASK_STACKSIZE];
OS_STK	receive_task1_stk[TASK_STACKSIZE];
OS_STK	receive_task2_stk[TASK_STACKSIZE];
OS_STK	send_task_stk[TASK_STACKSIZE];
OS_STK	pene_task_stk[TASK_STACKSIZE];
OS_STK	sender_pene_task_stk[TASK_STACKSIZE];
OS_STK 	pene_receive_task_stk[TASK_STACKSIZE];

/* Definition of Task Prioities */
#define INITIALIZE_TASK_PRIORITY			6
#define PRINT_STATUS_TASK_PRIORITY			7
#define GETSEM_TASK1_PRIORITY				8
#define GETSEM_TASK2_PRIORITY				9
#define RECEIVE_TASK1_PRIORITY				10
#define RECEIVE_TASK2_PRIORITY				11
#define SEND_TASK_PRIORITY					12
#define PENE_TASK_PRIORITY					13
#define SENDER_PENE_TASK_PRIORITY			14
#define PENE_RECEIVE_TASK_PRIORITY			15


/* Definition of Message Queue */
#define   MSG_QUEUE_SIZE  30           /*Size of message queue used in example*/
OS_EVENT  *msgqueue;                   /*Message queue pointer */
void      *msgqueueTbl[MSG_QUEUE_SIZE];/*Storage for messages*/

/* Definition of Message Queue */
#define   PENE_MSG_QUEUE_SIZE  10           /*Size of message queue used in example*/
OS_EVENT  *penemsgqueue;                   /*Message queue pointer */
void      *penemsgqueueTbl[PENE_MSG_QUEUE_SIZE];/*Storage for messages*/


/* Definition of Semaphore */
OS_EVENT *shared_resource_sem;

/*globals*/

INT32U number_of_messages_sent = 0;
INT32U number_of_messages_received_task1 = 0;
INT32U number_of_messages_received_task2 = 0;
INT32U getsem_task1_got_sem = 0;
INT32U getsem_task2_got_sem = 0;
char sem_owner_task_name[20];

/* Local Function Prototypes */
int initOSDataStructs(void);
int initCreateTasks(void);

void sender_pene_task()
{
	INT8U i[20]="hola\n";
	INT8U return_code = OS_NO_ERR;
	OS_Q_DATA queue_data;

	  while (1)
	  {
	    return_code = OSQQuery(penemsgqueue, &queue_data);
	    alt_ucosii_check_return_code(return_code);
	    if(queue_data.OSNMsgs < MSG_QUEUE_SIZE) /*Check the number of messages*/
	    {                                       /*in the message queue*/
	      return_code = OSQPostOpt(penemsgqueue, (void *)i, OS_POST_OPT_BROADCAST);
	      alt_ucosii_check_return_code(return_code);
	    }
	    else
	    {
	      OSTimeDlyHMSM(0, 0,1 , 0);
	    }
	  }




}

void pene_receive_task()
{
  INT8U return_code = OS_NO_ERR;
  INT8U *i;

  while (1)
  {
    i = (INT8U *)OSQPend(penemsgqueue, 0, &return_code);
    printf("%s",i);
    alt_ucosii_check_return_code(return_code);
    OSTimeDlyHMSM(0, 0, 1, 0);
  }
}

/*The following task shows the size of my penis*/

void pene_task (void* pdata)
{
	FILE *fp_LCD=0;

	fp_LCD = fopen(LCD_NAME,"w"); // open LCD for write

	if(fp_LCD==0) {
	  printf("\nError Opening %s\n\n",LCD_NAME);
	}
	else {
	  printf("LCD opened, ready for access\n");
	  fprintf(fp_LCD,"Primer mensaje");
	}



	while(1)
	{
		fprintf(fp_LCD,"My Dick is Big!\r\n");
		//printf("my dick is big\n");
		OSTimeDlyHMSM(0, 0, 1, 0);
	}
}


/*The following task prints out status information every 3 seconds.  */

void print_status_task(void* pdata)
{
  while (1)
  { 
    OSTimeDlyHMSM(0, 0, 3, 0);
    printf("****************************************************************\n");
    printf("Hello From MicroC/OS-II Running on NIOS II.  Here is the status:\n");
    printf("\n");
    printf("The number of messages sent by the send_task:         %lu\n",
            number_of_messages_sent);
    printf("\n");
    printf("The number of messages received by the receive_task1: %lu\n",
            number_of_messages_received_task1);
    printf("\n");
    printf("The number of messages received by the receive_task2: %lu\n",
            number_of_messages_received_task2);
    printf("\n");
    printf("The shared resource is owned by: %s\n",
           &sem_owner_task_name[0]);
    printf("\n");
    printf("The Number of times getsem_task1 acquired the semaphore %lu\n",
            getsem_task1_got_sem);
    printf("\n");
    printf("The Number of times getsem_task2 acquired the semaphore %lu\n",
            getsem_task2_got_sem);
    printf("\n");
    printf("****************************************************************\n");
    printf("\n");
  }
}

/*The next two task compete for a shared resource via a semaphore.  The name of
 * the task that owns the semaphore is copied into the global variable
 * sem_owner_task_name[].  
 */ 
void getsem_task1(void* pdata)
{
  INT8U return_code = OS_NO_ERR;
  
  while (1)
  {
    OSSemPend(shared_resource_sem, 0, &return_code);
    alt_ucosii_check_return_code(return_code);
    strcpy(&sem_owner_task_name[0], "getsem_task1");
    getsem_task1_got_sem++;
    OSSemPost(shared_resource_sem);
    OSTimeDlyHMSM(0, 0, 1, 0);
  }
}

void getsem_task2(void* pdata)
{
  INT8U return_code = OS_NO_ERR;
  while (1)
  {
    OSSemPend(shared_resource_sem, 0, &return_code);
    strcpy(&sem_owner_task_name[0], "getsem_task2");
    alt_ucosii_check_return_code(return_code);
    getsem_task2_got_sem++;
    OSSemPost(shared_resource_sem);
    OSTimeDlyHMSM(0, 0, 1, 0);
  }
}

/*The following task fills up a message queue with incrementing data.  The data
 * is not actually used by the application.  If the queue is full the task is
 * suspended for 1 second.
 */
 
void send_task(void* pdata)
{
  INT8U return_code = OS_NO_ERR;
  INT32U  msg = 0;
  OS_Q_DATA queue_data;  
  
  while (1)
  {
    return_code = OSQQuery(msgqueue, &queue_data);
    alt_ucosii_check_return_code(return_code);
    if(queue_data.OSNMsgs < MSG_QUEUE_SIZE) /*Check the number of messages*/
    {                                       /*in the message queue*/
      return_code = OSQPostOpt(msgqueue, (void *)&msg, OS_POST_OPT_BROADCAST);
      alt_ucosii_check_return_code(return_code);
      msg++;
      number_of_messages_sent++;
    }
    else
    {
      OSTimeDlyHMSM(0, 0,1 , 0);
    }
  }
}

/*The next two task pull messages in the queue at different rates.  The number
 * of messages received by the task is incremented when a new message is received
 */
void receive_task1(void* pdata)
{
  INT8U return_code = OS_NO_ERR;
  INT32U *msg;
  
  while (1)
  {
    msg = (INT32U *)OSQPend(msgqueue, 0, &return_code);
    printf("%d\n",(int)*msg);
    alt_ucosii_check_return_code(return_code);
    number_of_messages_received_task1++;
    OSTimeDlyHMSM(0, 0, 1, 0);
  }
}

void receive_task2(void* pdata)
{
  INT8U return_code = OS_NO_ERR;
  INT32U *msg;
  
  while (1)
  {
    msg = (INT32U *)OSQPend(msgqueue, 0, &return_code);
    alt_ucosii_check_return_code(return_code);
    number_of_messages_received_task2++;
    OSTimeDlyHMSM(0, 0, 1, 0);
  }
}

/* The following task is used to initialize the operating system data structures
 * and to create the task.   The task deletes itself as it is not 
 * needed after initialization is complete.  The convention of creating a task 
 * that is used to initialize the reset of the application is used by Labrosse.  
 * The main purpose for doing this is to ensure that stack checking will 
 * initialize correctly if enabled. See MicroC/OS-II The Real-Time Kernal text 
 * book for details. 
 */
void  initialize_task(void* pdata)
{
  INT8U return_code = OS_NO_ERR;
    
  /*create os data structures */
  initOSDataStructs();  

  /* create the tasks */
  initCreateTasks();
  
  /*This task is deleted because there is no need for it to run again */
  return_code = OSTaskDel(OS_PRIO_SELF);
  alt_ucosii_check_return_code(return_code);
  while (1);
}

/* Main creates a single task and starts task switching
 */
 
int main (int argc, char* argv[], char* envp[])
{
  INT8U return_code = OS_NO_ERR;
   
  return_code = OSTaskCreateExt(initialize_task,
                             NULL,
                             (void *)&initialize_task_stk[TASK_STACKSIZE],
                             INITIALIZE_TASK_PRIORITY,
                             INITIALIZE_TASK_PRIORITY,
                             initialize_task_stk,
                             TASK_STACKSIZE,
                             NULL,
			     0);
  alt_ucosii_check_return_code(return_code);
  OSStart();
  return 0;
}

/* This function simply creates a message queue and a semaphore
 */
 
int initOSDataStructs(void)
{
  msgqueue = OSQCreate(&msgqueueTbl[0], MSG_QUEUE_SIZE);
  shared_resource_sem = OSSemCreate(1);
  return 0;
}
/*This function creates the tasks used in this example
 */
 
int initCreateTasks(void)
{
  INT8U return_code = OS_NO_ERR;

  /*return_code = OSTaskCreateExt(pene_receive_task,
                               NULL,
                               (void *)&pene_receive_task_stk[TASK_STACKSIZE],
                               PENE_RECEIVE_TASK_PRIORITY,
                               PENE_RECEIVE_TASK_PRIORITY,
                               pene_receive_task_stk,
                               TASK_STACKSIZE,
                               NULL,
                               0);
    alt_ucosii_check_return_code(return_code);
    printf("pene_receive_task done");
*/
  return_code = OSTaskCreateExt(sender_pene_task,
                               NULL,
                               (void *)&sender_pene_task_stk[TASK_STACKSIZE],
                               SENDER_PENE_TASK_PRIORITY,
                               SENDER_PENE_TASK_PRIORITY,
                               sender_pene_task_stk,
                               TASK_STACKSIZE,
                               NULL,
                               0);
    alt_ucosii_check_return_code(return_code);
    printf("sender_pene_task done");

  return_code = OSTaskCreateExt(pene_task,
                              NULL,
                              (void *)&pene_task_stk[TASK_STACKSIZE],
                              PENE_TASK_PRIORITY,
                              PENE_TASK_PRIORITY,
                              pene_receive_task_stk,
                              TASK_STACKSIZE,
                              NULL,
                              0);
   alt_ucosii_check_return_code(return_code);
   printf("pene_task done");


  return_code = OSTaskCreateExt(getsem_task1,
                             NULL,
                             (void *)&getsem_task1_stk[TASK_STACKSIZE],
                             GETSEM_TASK1_PRIORITY,
                             GETSEM_TASK1_PRIORITY,
                             pene_task_stk,
                             TASK_STACKSIZE,
                             NULL,
                             0);
  alt_ucosii_check_return_code(return_code);
  printf("getsem_taskº1 done");

  return_code = OSTaskCreateExt(getsem_task2,
                             NULL,
                             (void *)&getsem_task2_stk[TASK_STACKSIZE],
                             GETSEM_TASK2_PRIORITY,
                             GETSEM_TASK2_PRIORITY,
                             getsem_task2_stk,
                             TASK_STACKSIZE,
                             NULL,
                             0);
  alt_ucosii_check_return_code(return_code);
  printf("getsem_task2 done");
  return_code = OSTaskCreateExt(receive_task1,
                             NULL,
                             (void *)&receive_task1_stk[TASK_STACKSIZE],
                             RECEIVE_TASK1_PRIORITY,
                             RECEIVE_TASK1_PRIORITY,
                             receive_task1_stk,
                             TASK_STACKSIZE,
                             NULL,
                             0);
  alt_ucosii_check_return_code(return_code);
  printf("receive_task1 done");
  return_code = OSTaskCreateExt(receive_task2,
                             NULL,
                             (void *)&receive_task2_stk[TASK_STACKSIZE],
                             RECEIVE_TASK2_PRIORITY,
                             RECEIVE_TASK2_PRIORITY,
                             receive_task2_stk,
                             TASK_STACKSIZE,
                             NULL,
                             0);
  alt_ucosii_check_return_code(return_code);
  printf("receive_task2 done");
  return_code = OSTaskCreateExt(send_task,
                             NULL,
                             (void *)&send_task_stk[TASK_STACKSIZE],
                             SEND_TASK_PRIORITY,
                             SEND_TASK_PRIORITY,
                             send_task_stk,
                             TASK_STACKSIZE,
                             NULL,
                             0);
  alt_ucosii_check_return_code(return_code);
  printf("send_task done");
  return_code = OSTaskCreateExt(print_status_task,
                             NULL,
                             (void *)&print_status_task_stk[TASK_STACKSIZE],
                             PRINT_STATUS_TASK_PRIORITY,
                             PRINT_STATUS_TASK_PRIORITY,
                             print_status_task_stk,
                             TASK_STACKSIZE,
                             NULL,
                             0);
  alt_ucosii_check_return_code(return_code);
  printf("print_status_task done");
  return 0;
}

/******************************************************************************
*                                                                             *
* License Agreement                                                           *
*                                                                             *
* Copyright (c) 2004 Altera Corporation, San Jose, California, USA.           *
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
