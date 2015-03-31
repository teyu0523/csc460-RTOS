/*
 * test7_tasks_all.cpp
 *
 * Expected results	
 *		T007;0;0;10;15;110;115;210;215;310;0;1;2;410;510;530;550;570;590;610;611;631;651;671;691;710;712;810;910;
 *
 *	First 2 zeros represent the task is started.
 * 
 *	rr	 :	  ,  ,   ,   ,   ,   ,   , , , ,   ,   ,530,550,570,590,___,611,631,651,671,691,___,712,   ,   .
 *	s(1) :	  ,  ,   ,   ,   ,   ,   ,0,1,2,   ,   ,   ,   ,   ,   ,   ,   ,   ,   ,   ,   ,   ,   ,   ,   .
 *	p1	 :	10,__,110,___,210,___,310,_,_,_,410,510,___,___,___,___,610,___,___,___,___,___,710,___,___,810,910.
 *	p2(1):	__,15,___,115,___,215,___, , , ,   ,   ,   ,   ,   ,   ,   ,   ,   ,   ,   ,   ,   ,   ,   ,   .
 *
 *  Author: Allen
 */ 
#ifdef USE_TEST_007

#include <avr/io.h>
#include <avr/interrupt.h>
#include <util/delay.h>
#include "../trace/trace.h"

void rr(){
	int i;
	for(i=10; i>0; i--)
	{
		_delay_ms(20);
		add_to_trace(Now());
		Task_Next();
	}

}

void s(){
	int i;
	for(i=0; i<3; i++)
	{
		add_to_trace(i);
		Task_Next();
	}

	Task_Next();
}

void p1(){
	DDRB = (_BV(PB5));
	PORTB ^= _BV(PB5);
	int i;
	for(i=0; i<5; i++)
	{
		add_to_trace(Now()); 
		Task_Next();
	}
	Task_Create_RR(rr,0);
	for(i=0; i<5; i++)
	{
		add_to_trace(Now());
		Task_Next();
	}
	Task_Next();
	PORTB ^= _BV(PB5);
	print_trace();
	
}

void p2(){
	int i;
	for(i=0; i<3; i++)
	{
		add_to_trace(Now());
		Task_Next();
	}
	Task_Create_System(s, 0);
	Task_Next();
}


int r_main(void)
{
	uart_init();
	set_trace_test(7);
	add_to_trace(0);
	
	Task_Create_Periodic(p1, 0, 20, 5, 2); //10,110,210,310, ...,910
	Task_Create_Periodic(p2, 0, 20, 5, 3); //15,115,215,315, ...,815
	add_to_trace(0);
	return 0;
}

#endif