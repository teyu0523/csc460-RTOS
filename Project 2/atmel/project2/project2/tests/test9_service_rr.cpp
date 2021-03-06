﻿/*
 * test9_service_rr.cpp
 *
 * Expected result:
 *	T009;0;0;1;2;2;5;
 *
 *		1 is the initial value in subscribe
 *		5 is the changed value in subscribe
 *		2 is when it gets to other system task to perform publish
 *
 * Created: 2015/3/8 下午 09:20:04
 *  Author: Allen
 */ 
#ifdef USE_TEST_009

#include <avr/io.h>
#include <avr/interrupt.h>
#include <util/delay.h>
#include "../trace/trace.h"

SERVICE* serviceTest;

void rr()
{
	int16_t value = 1;
	add_to_trace(value);
	Service_Subscribe(serviceTest, &value);
	add_to_trace(value);
	print_trace();
}

void rr2()
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
	set_trace_test(9);
	add_to_trace(0);
	Task_Create_RR(rr, 0);
	Task_Create_RR(rr2, 0);
	add_to_trace(0);
	return 1;
}

#endif