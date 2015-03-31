/*
 * test2_rr.cpp
 *
 * Expected results	
 *	T001;0;0;1;2;3;1;2;3;2;33;1;22;1;
 *	------------------------------------
 *	rr1:1,_,_,1, , , ,__,1_,__,1_
 *	rr2:_,2,_,_,2,_,2,__,__,22,__
 *	rr3:_,_,3,_,_,3,_,33,  ,  ,  
 *	------------------------------------
 *  Author: Allen
 */ 
#ifdef USE_TEST_002

#include <avr/io.h>
#include <avr/interrupt.h>
#include <util/delay.h>
#include "../trace/trace.h"

void rr1(){
	add_to_trace(1);
	Task_Next();
	add_to_trace(1);
	Task_Terminate();
	Task_Next();
}

void rr2(){
	add_to_trace(2);
	Task_Next();
	add_to_trace(2);
	Task_Next();
	add_to_trace(2);
	Task_Create_RR(rr1,0);
	Task_Next();
	add_to_trace(22);
	Task_Next();
	print_trace();
	return;
}

void rr3(){
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
	set_trace_test(2);
	add_to_trace(0);
	Task_Create_RR(rr1, 0);
	Task_Create_RR(rr2, 0);
	Task_Create_RR(rr3, 0);
	add_to_trace(0);
	return 0;
}

#endif