/*
 * test8_service_system.cpp
 *
 * Expected result:
 *	T008;0;0;1;2;2;5;
 *
 *		1 is the initial value in subscribe
 *		5 is the changed value in subscribe
 *		2 is when it gets to other system task to perform publish
 *
 * Created: 2015/3/8 下午 09:20:04
 *  Author: Allen
 */ 
#ifdef USE_TEST_008

#include <avr/io.h>
#include <avr/interrupt.h>
#include <util/delay.h>
#include "../trace/trace.h"

SERVICE* serviceTest;

void s()
{
	int16_t value = 1;
	add_to_trace(value);
	Service_Subscribe(serviceTest, &value);
	add_to_trace(value);
	print_trace();
}

void s2()
{
	int16_t value = 5;
	add_to_trace(2);
	Service_Publish(serviceTest, value);
	add_to_trace(2);
}

int r_main(void)
{
	serviceTest = Service_Init(); 
	
	uart_init();
	set_trace_test(8);
	add_to_trace(0);
	Task_Create_System(s, 0);
	Task_Create_System(s2, 0);
	add_to_trace(0);
	return 1;
}

#endif