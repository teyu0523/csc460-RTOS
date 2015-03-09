/*
 * test4_periodic.cpp
 *
 * Expected results	
 *	T004;0;0;10;110;210;310;410;510;610;710;810;910;
 *
 *  Author: Allen
 */ 
#ifdef USE_TEST_004

#include <avr/io.h>
#include <avr/interrupt.h>
#include <util/delay.h>
#include "../trace/trace.h"

void p1(){
	int i;
	for(i; i<10; i++)
	{
		add_to_trace(Now()); //10,110,210,310,410,510,610,...
		Task_Next();
	}
	print_trace();
}


int r_main(void)
{
	uart_init();
	set_trace_test(4);
	add_to_trace(0);
	Task_Create_Periodic(p1, 0, 20, 5, 2);
	//Task_Create_Periodic(p2, 0, 20, 5, 3);
	add_to_trace(0);
	return 0;
}

#endif