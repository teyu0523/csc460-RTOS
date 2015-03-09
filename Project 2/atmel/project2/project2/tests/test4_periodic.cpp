/*
 * test4_periodic.cpp
 *
 * Expected results	
 *	T004
 *
 *  Author: Allen
 */ 
#ifdef USE_TEST_004

#include <avr/io.h>
#include <avr/interrupt.h>
#include <util/delay.h>
#include "../trace/trace.h"

void p1(){
	for(i; i<10; i++)
	{
		add_to_trace(Now());
		Task_Next();
	}
	print_trace();
}

void p2(){
	
}

int r_main(void)
{
	uart_init();
	set_trace_test(4);
	add_to_trace(0);
	Task_Create_Periodic(p1, 0, 10, 5, 2);
	//Task_Create_Periodic(p2, 0, 10, 5, 3);
	add_to_trace(0);
	return 0;
}

#endif