/*
 * ir.c
 *
 * Created: 2015-01-28 12:15:57
 *  Author: Daniel
 */ 

#include "ir.h"
#include "avr/io.h"
#include <util/delay.h>

void IR_init() {
	PORTC |= (1 << PC2);	
	DDRL |= (1<<PL5);
	TCCR5A = 0;
	TCCR5B = 0;
	//Set to Fast PWM mode 15
	TCCR5A |= (1<<WGM50) | (1<<WGM51);
	TCCR5B |= (1<<WGM52) | (1<<WGM53);

	TCCR5B |= (1<<CS50);
	OCR5A=420;  //38khz
	OCR5C = 210;//50% duty cycle
	PORTC &= ~(1 << PC2);
	TCNT5 = 0;
}

void mark() {
	TCCR5A |= (1<<COM5C1);;
	PORTC |= (1 << PC2);
	_delay_us(500);
}
void space() {
	TCCR5A &= ~(1 << COM5C1);
	PORTC &= ~(1 << PC2);
	_delay_us(500);
}

void IR_transmit(uint8_t data) {
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
}