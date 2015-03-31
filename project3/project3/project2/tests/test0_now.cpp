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

int r_main(void)
{
	uart_init();
	set_trace_test(0);
	add_to_trace(0);
	int i;
	for (i=0; i<10; i++)
	{
		_delay_ms(25);
		add_to_trace(Now());
	}
	add_to_trace(0);
	print_trace();
	return 0;
}

#endif