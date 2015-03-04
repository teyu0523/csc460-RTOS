
#include <avr/io.h>
#include <Arduino.h>
#include <util/delay.h>
#include "kernel.h"
#include "os.h"

const unsigned int PT = 1;
const unsigned char PPP[2] = {"a"};

//EVENT* print_event;

void p()
{
	// // 1 -> output, 0 -> input
	// // DDRB defines the direction of the pin in B section  
	// DDRB = 1 << PB7;
	// for(;;){
	// 	_delay_ms(10);
	// 	//turns on/off the pin by xoring registor back and forth
	// 	PORTB ^= 1 << PB7;
	// }

	DDRB = (uint8_t)(_BV(PB7) | _BV(PB6));

	for(;;){
		_delay_ms(10);
		//turns on/off the pin by xoring registor back and forth
		PORTB ^= (uint8_t)(_BV(PB7) | _BV(PB6));
	}
}

extern int r_main(void)
{
	Task_Create(p, 0, RR, 0);
	return 1;
}
