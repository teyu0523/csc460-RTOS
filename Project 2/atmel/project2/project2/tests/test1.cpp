/*
 * test1.cpp
 *
 * T000;0;25;50;75;100;125;150;175;200;225;250;0;
 *
 * Created: 2015/3/8 下午 09:20:04
 *  Author: Allen
 */ 
#ifdef USE_TEST_00444

#include <avr/io.h>
#include <avr/interrupt.h>
#include <util/delay.h>
#include "../trace/trace.h"

SERVICE* serviceTest;

void s()
{
	int16_t value = 1;
	add_to_trace(1);
	Service_Subscribe(serviceTest, &value);
	
	add_to_trace(1);
	
}

void s2()
{
	int16_t value = 5;
	add_to_trace(0);
	print_trace();
	Service_Publish(serviceTest, value);
}


int r_main(void)
{
	//serviceTest = Service_Init(); 
	
	uart_init();
	set_trace_test(1);
	add_to_trace(0);
	Task_Create_System(s, 0);
	Task_Create_System(s2, 0);
	add_to_trace(0);
	return 1;
}

#endif