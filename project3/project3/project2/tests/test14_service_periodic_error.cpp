/*
 * test14_service_subscribe_error.cpp
 *		
 *	Make sure the pins are connected to LED to 8 and 9.
 *	Expected:
 *		8 red light LED blinks (ERR_RUN_8_SUBSCRIBE_PERIODIC_TASK)
 *
 * Created: 2015/3/9 下午 09:03:26
 *  Author: Allen
 */ 
#ifdef USE_TEST_014

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

int r_main(void)
{
	serviceTest = Service_Init(); 
	
	uart_init();
	set_trace_test(14);
	add_to_trace(0);
	Task_Create_Periodic(s, 0, 20, 5, 5);

	add_to_trace(0);
	return 1;
}

#endif