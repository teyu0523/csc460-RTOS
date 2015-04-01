/*
 * ir.c
 *
 * Created: 2015-01-28 12:15:57
 *  Author: Daniel
 */ 

#include "ir.h"
#include "avr/io.h"
#include <util/delay.h>
#include <avr/interrupt.h>

extern void ir_rxhandler();

volatile uint8_t is_receiving = 0;
volatile uint8_t is_transmitting = 0;
volatile uint8_t currentBit = 0;
volatile uint8_t currentByte = 0;
volatile uint8_t outputByte = 0;

//Timer 2 runs PWM.
//Timer 1 runs signaling.
//Output on pin 10 (PB4/OC2A)
//Input on pin 3 (PE5/INT5)
// void IR_init() {
	
// 	//PWM Timer 2
// 	DDRB |= (1<<PB4);	
// 	TCCR2A = 0;
// 	TCCR2B = 0;
// 	//Set to Fast PWM mode 15
// 	TCCR2A |= (1<<WGM20) | (1<<WGM21);
// 	TCCR2B |= (1<<WGM22);
// 	//No Prescaller
// 	TCCR2B |= (1<<CS20);
// 	OCR1A=421;  //38khz
// 	OCR1C = 210;//50% duty cycle
	
	
	
// 	//Interrupt Timer 1.
// 	TCCR1A = 0;
// 	TCCR1B = 0;
// 	//Leave on normal mode.	
// 	//No prescaller
// 	TCCR1B |= (1<<CS10);
// 	//Make sure interrupt is disabled until external interrupt
// 	TIMSK1 &= ~(1<<OCIE1A);
	

// 	//Setup the input interrupt on pin 3 (PE5/INT4)
// 	DDRE &= ~(1<<PE5);
// 	EICRB |= (1<<ISC51) | (1<<ISC50);
// // 	EIMSK |= (1<<INT6);	
// // 	PCMSK2 |= (1<<)
// // 	EICRB |=
// }

//Timer 5 runs PWM.
// ouput onto pin44 (PL5/OC5C)
//Timer 3 runs signaling.
//Output on pin 10 (PB4/OC2A)
//Input on pin 3 (PE5/INT5)
void IR_init() {

	// This block sets up the PWM timers for controlling
	// the IR transmitter
	DDRL |= (1 << PL3)  | ( 1 << PL5);
	TCCR5A = 0;
	TCCR5B = 0;

	// fast pwm
	TCCR5A |= (1<<WGM50) | (1<<WGM51);
	TCCR5B |= (1<<WGM52) | (1<<WGM53);
	// output to pin 44, for output C
	// but have the output turned off to begin with.
	TCCR5A &= ~(1 << COM5C1);

	// no prescaler
	TCCR5B |= (1 << CS50);
	// set output compare counts
	OCR5A = 421; // 38 Khz
	OCR5C = 210; // 50 % duty

	// Interrupt Timer 3.
	//clear the control registers
	TCCR3A = 0;
	TCCR3B = 0;
	//Leave on normal mode.
	//No prescaller
	TCCR3B |= (1<<CS10);
	//Make sure interrupt is disabled until external interrupt
	TIMSK3 &= ~(1<<OCIE3A);

	//Setup the input interrupt on pin 3 (PE5/INT5)
	DDRE &= ~_BV(PE5);

	EICRB |= (1<<ISC51) | (1<<ISC50);
	EIMSK |= _BV(INT5);
	EIFR |= _BV(INTF5);
}

// //Receiving a signal.
// ISR(INT5_vect) {
// 	if(!is_receiving) {
// 		//Start a new byte, start the timers.
// 		is_receiving = 1;
// 		currentBit = 0;
// 		currentByte = 0;
// 		//Clear any existing timer interrupts.
// 		TIFR1 |= (1<<OCF1A);
// 		//Delay by 1.5 bit lengths.
// 		OCR1A = TCNT1 + 12000;
// 		TIMSK1 |= (1<<OCIE1A);		
// 	}	
// }

//Receiving a signal.
ISR(INT5_vect) {
	if(!is_receiving) {
		//Start a new byte, start the timers.
		is_receiving = 1;
		currentBit = 0;
		currentByte = 0;

		//Clear any existing timer interrupts.
		TIFR3 |= (1<<OCF3A);

		//Delay by 1.5 bit lengths.
		// i.e 8000 + 8000
		OCR3A = TCNT3 + 12000;
		// enable timer 3 interrupts
		TIMSK3 |= (1<<OCIE3A);
	}
}

// //Read a new arriving signal.
// ISR(TIMER1_COMPA_vect) {
// 	if(is_receiving) {
// 		if(PINE & (1<<PE4)) {
// 			currentByte |= (1<<currentBit);
// 		}
	
// 		++currentBit;
// 		OCR1A += 8000;
	
// 		if(currentBit >= 8) {
// 			is_receiving = 0;
// 			TIMSK1 &= ~(1<<OCIE1A);
// 			TIFR1 |= (1<<OCF1A);
// 			EIFR |= (1<<INTF4);
// 		}
// 	}else if (is_transmitting) {
		
// 	}
	
// }

//Read a new arriving signal.
ISR(TIMER3_COMPA_vect) {
	if(is_receiving) {

		// check to see if the input pin is HIGH ( digital pin 3)
		if(!(PINE & (1<<PE5)) ) {
			currentByte |= (1<<currentBit);
		}

		++currentBit;
		OCR3A += 8000;

		if(currentBit >= 8) {
			is_receiving = 0;
			
			// disable further timer3 interrupts
			TIMSK3 &= ~(1<<OCIE3A);

			// clear any pending timer3 interrupts
			TIFR3 |= (1<<OCF3A);

			// clear the any interrupts waiting on the IR receiver
			EIFR |= (1<<INTF5);

			// here we should call
			outputByte = currentByte;
			ir_rxhandler();
		}
	}else if (is_transmitting) {

	}
}

// void enable_interupt() {
// 	//Clears existing interrupts.
// 	EIFR |= (1<<INTF4);
// 	EIMSK |= (1<<INT4);
// }

void enable_interrupt() {
	//Clears existing interrupts.
	EIFR  |= (1<<INTF5);
	EIMSK |= (1<<INT5);
}

// void disable_interupt() {
// 	EIMSK &= ~(1<<INT4);
// 	TIMSK1 &= ~(1<<OCIE1A);
// 	TIFR1 |= (1<<OCF1A);
// 	is_receiving = 0;
// }

void disable_interrupt() {
	EIMSK &= ~(1<<INT5);
	TIMSK3 &= ~(1<<OCIE3A);
	TIFR3 |= (1<<OCF3A);
	is_receiving = 0;
}

// void mark() {
// 	TCCR2A |= (1<<COM2A1);;
// //	PORTC |= (1 << PC2);
// 	_delay_us(500);
// }
// void space() {
// 	TCCR2A &= ~(1 << COM2A1);
// //	PORTC &= ~(1 << PC2);
// 	_delay_us(500);
// }

void mark() {
	TCCR5A |= (1<<COM5C1);
	PORTC |= (1 << PC2);
	_delay_us(500);
}
void space() {
	TCCR5A &= ~(1 << COM5C1);
	PORTC &= ~(1 << PC2);
	_delay_us(500);
}

// void IR_transmit(uint8_t data) {
// 	//cli();
// 	//disable_interupt();
// 	mark();
// 	space();
// 	for(int i = 0; i < 8; i++) {
// 		if(((data >> i) & 0x1)) {
// 			mark();
// 		} else {
// 			space();
// 		}
// 	}
// 	//space();
// 	//enable_interupt();
// 	//sei();
// }

void IR_transmit(uint8_t data) {
	/*uint8_t sreg = SREG;
	cli();
	disable_interrupt();*/

	mark();
	space();
	for(int i = 0; i < 8; i++) {
		if(((data >> i) & 0x1)) {
			mark();
			} else {
			space();
		}
	}
	space();

	/*enable_interrupt();
	SREG = sreg; // sei();*/
}

uint8_t IR_getLast(){
	return outputByte;
}