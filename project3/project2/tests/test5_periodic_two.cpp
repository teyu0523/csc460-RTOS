/*
 * test5_periodic_two.cpp
 *
 * Expected results	
 *	T005;0;0;10;15;110;115;210;215;310;315;410;415;510;515;610;615;710;715;810;815;910
 *
 *  Author: Allen
 */ 
#ifdef USE_TEST_005

#include <avr/io.h>
#include <avr/interrupt.h>
#include <util/delay.h>
#include "../trace/trace.h"

void p1(){
	int i;
	for(i=0; i<10; i++)
	{
		add_to_trace(Now()); //10,110,210,310, ...,910
		Task_Next();
	}
	print_trace();
}

void p2(){
	int i;
	for(i=0; i<9; i++)
	{
		add_to_trace(Now()); //15,115,215,315, ...,815
		Task_Next();
	}
}

int r_main(void)
{
	uart_init();
	set_trace_test(5);
	add_to_trace(0);
	Task_Create_Periodic(p1, 0, 20, 5, 2); 
	Task_Create_Periodic(p2, 0, 20, 5, 3);
	add_to_trace(0);
	return 0;
}

#endif