
#include <avr/io.h>
#include <Arduino.h>
#include <util/delay.h>
#include "kernel.h"
#include "os.h"

const unsigned int PT = 1;
const unsigned char PPP[2] = {1, 255};

//EVENT* print_event;

void p()
{
	DDRB = 1 << PB7;
	for(;;){
		_delay_ms(10);
		PORTB ^= 1 << PB7;
	}
}

extern int r_main(void)
{
	Task_Create(p, 0, RR, 0);
	return 1;
}
