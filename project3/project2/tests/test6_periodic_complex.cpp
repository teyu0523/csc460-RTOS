/*
 * test6_periodic_complex.cpp
 *
 * Expected results	
 *  T006;0;0;10;15;20;110;115;120;210;215;220;310;315;320;410;415;420;510;515;520;610;615;620;710;715;720;810;815;820;910;
 * 
 * Author: Allen
 */ 
#ifdef USE_TEST_006

#include <avr/io.h>
#include <avr/interrupt.h>
#include <util/delay.h>
#include "../trace/trace.h"

void p1(){
	int i;
	for(i=0; i<10; i++)
	{
		add_to_trace(Now()); 
		Task_Next();
	}
	print_trace();
}

void p2(){
	int i;
	for(i=0; i<9; i++)
	{
		add_to_trace(Now());
		Task_Next();
	}
}

int r_main(void)
{
	uart_init();
	set_trace_test(6);
	add_to_trace(0);
	Task_Create_Periodic(p1, 0, 20, 5, 2); //10,110,210,310, ...,910
	Task_Create_Periodic(p2, 0, 20, 5, 3); //15,115,215,315, ...,815
	Task_Create_Periodic(p2, 0, 20, 5, 4);
	add_to_trace(0);
	return 0;
}

#endif