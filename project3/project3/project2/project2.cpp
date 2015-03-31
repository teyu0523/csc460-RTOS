
#include <avr/io.h>
#include <Arduino.h>
#include <util/delay.h>
#include "kernel.h"
#include "os.h"
#include "uart/uart.h"
#include "trace/trace.h"
#include "radio/packet.h"
#include "radio/radio.h"
#include "radio/cops_and_robbers.h"

#define USE_TEST_013

#include "tests/test0_now.cpp"
#include "tests/test1_system.cpp"
#include "tests/test2_rr.cpp"
#include "tests/test3_system_rr.cpp"
#include "tests/test4_periodic.cpp"
#include "tests/test5_periodic_two.cpp"
#include "tests/test6_periodic_complex.cpp"
#include "tests/test7_tasks_all.cpp"
#include "tests/test8_service_system.cpp"
#include "tests/test9_service_rr.cpp"
#include "tests/test10_service_system_multiple.cpp"
#include "tests/test11_service_system_rr.cpp"
#include "tests/test12_service_system_periodic.cpp"
#include "tests/test13_service_subscribe_error.cpp"
#include "tests/test14_service_periodic_error.cpp"


#ifdef _USE_MAIN_
EVENT* print_event;

void p2()
{
	// // 1->output, 0->input
	// // DDRB defines the direction of the pin in B section  
	// DDRB = 1 << PB7;
	// for(;;){
	// 	_delay_ms(10);
	// 	//turns on/off the pin by xoring registor back and forth
	// 	PORTB ^= 1 << PB7;
	// }

	DDRH = (uint8_t)(_BV(PB7) | _BV(PB6));

	for(;;){
		_delay_ms(1);
		PORTB ^= (uint8_t)(_BV(PB7) | _BV(PB6));
		//Task_Next();
	}
}

void p()
{
	DDRB = 1 << PB7;
	int i;
	for(i=0;i<10;i++){
		add_to_trace(1);
		PORTB ^= (uint8_t)(_BV(PB7) | _BV(PB6));
		_delay_ms(20);
		PORTB ^= (uint8_t)(_BV(PB7) | _BV(PB6));
		_delay_ms(20);
		PORTB ^= (uint8_t)(_BV(PB7) | _BV(PB6));
		_delay_ms(20);
		PORTB ^= (uint8_t)(_BV(PB7) | _BV(PB6));
		_delay_ms(20);
		//turns on/off the pin by xoring registor back and forth
		
		//PORTB ^= (uint8_t)(_BV(PB7) | _BV(PB6));
		add_to_trace(2);
		Task_Next();
	}
}

int r_main(void)
{
	return 1;
}
#endif