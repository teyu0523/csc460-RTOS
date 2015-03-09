/*
 * test0.cpp
 *
 * Created: 2015/3/8 下午 09:20:04
 *  Author: Allen
 */ 
#ifdef USE_TEST_000

#include <avr/io.h>
#include <avr/interrupt.h>
#include <util/delay.h>
#include "../trace/trace.h"
void p()
{
	DDRB = 1 << PB6;
	PORTB ^= (uint8_t)_BV(PB6);
	add_to_trace(1);
	print_trace();
}


int r_main(void)
{
	uart_init();
	set_trace_test(0);
	Task_Create_Periodic(p, 0, 50, 2, 1);
	Task_Create_Periodic(p, 0, 50, 5, 25);
	return 1;
}

#endif