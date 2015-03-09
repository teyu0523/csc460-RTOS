/*
 * test3_system_rr.cpp
 *
 * Expected results	
 *	T003;0;0;1;1;2;3;2;3;2;1;1;33;22; 
 *								33 is before 22 because it is enqueued to the back 
 *								of rr queue
 *	------------------------------------
 *	rr1:1,1, , , , , ,1,1,  ,
 *	rr2:_,_,2,_,2,_,2,_,_,__,22
 *	rr3:_,_,_,3,_,3,_,_,_,33,  
 *	------------------------------------
 *  Author: Allen
 */ 
#ifdef USE_TEST_003

#include <avr/io.h>
#include <avr/interrupt.h>
#include <util/delay.h>
#include "../trace/trace.h"

void t1(){
	add_to_trace(1);
	Task_Next();
	add_to_trace(1);
	Task_Terminate();
	Task_Next();
}

void t2(){
	add_to_trace(2);
	Task_Next();
	add_to_trace(2);
	Task_Next();
	add_to_trace(2);
	Task_Create_System(t1,0);
	Task_Next();
	add_to_trace(22);
	Task_Next();
	print_trace();
	return;
}

void t3(){
	add_to_trace(3);
	Task_Next();
	add_to_trace(3);
	Task_Next();
	add_to_trace(33);
	Task_Terminate();
	Task_Next();
}

int r_main(void)
{
	uart_init();
	set_trace_test(3);
	add_to_trace(0);
	Task_Create_System(t1, 0);
	Task_Create_RR(t2, 0);
	Task_Create_RR(t3, 0);
	add_to_trace(0);
	return 0;
}

#endif