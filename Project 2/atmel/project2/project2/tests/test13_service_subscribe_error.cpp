/*
 * test13_service_subscribe_error.cpp
 *		
 *	Make sure the pins are connected to LED to 8 and 9.
 *	Expected:
 *		7 red light LED blinks (ERR_RUN_7_SUBSCRIBE_MAX_SUBSCRIBERS_REACHED)
 *
 * Created: 2015/3/9 下午 09:03:26
 *  Author: Allen
 */ 
#ifdef USE_TEST_013

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
	set_trace_test(13);
	add_to_trace(0);
	Task_Create_System(s, 0);
	Task_Create_System(s, 0);
	Task_Create_System(s, 0);
	Task_Create_System(s, 0); // OS_Abort(); with error.
	Task_Create_Periodic(rr, 0, 20, 5, 5);

	add_to_trace(0);
	return 1;
}

#endif