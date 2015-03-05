
#include <avr/io.h>
#include <Arduino.h>
#include <util/delay.h>
#include "kernel.h"
#include "os.h"

const unsigned int PT = 1;
const unsigned char PPP[2] = {1, 255};

//EVENT* print_event;

void p2()
{
	DDRB = 1 << PB7;
	for(;;){
		_delay_ms(5000);
		PORTB ^= 1 << PB7;
		Task_Next();
	}
}

void p()
{
	DDRB = 1 << PB7;
	for(;;){
		_delay_ms(500);
		for(;;) {
			//if(Now()%5 == 3)
			//{
				//PORTB ^= 1 << PB7;
				//break;
			//}
		}
		Task_Next();
	}
}

extern int r_main(void)
{
	//Task_Create_RR(p2, 0);
	//Task_Create_System(p, 0);
	Task_Create_Periodic( p, 0, 20, 1, 2 );
	return 1;
}
