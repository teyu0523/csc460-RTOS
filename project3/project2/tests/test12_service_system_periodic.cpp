/*
 * test12_service_system_periodic.cpp
 *
 * Expected result:
 *	T012;0;0;1;2;5;2;
 *
 *		1 is the initial value in subscribe
 *		5 is the changed value in subscribe
 *		2 is when it gets to other system task to perform publish
 *
 * Created: 2015/3/8 下午 09:20:04
 *  Author: Allen
 */ 
#ifdef USE_TEST_012

#include <avr/io.h>
#include <avr/interrupt.h>
#include <util/delay.h>
#include "../trace/trace.h"

SERVICE* serviceTest;

void s()
{
	int16_t value = 1;
	add_to_trace(value); //1
	Service_Subscribe(serviceTest, &value);
	add_to_trace(value); //5
}

void rr()
{
	int16_t value = 5;
	add_to_trace(2);
	Service_Publish(serviceTest, value);
	add_to_trace(2);
	print_trace();
}

int r_main(void)
{
	serviceTest = Service_Init(); 
	
	uart_init();
	set_trace_test(12);
	add_to_trace(0);
	Task_Create_System(s, 0);
	Task_Create_Periodic(rr, 0, 20, 5, 5);

	add_to_trace(0);
	return 1;
}

#endif