/*
 * ir.h
 *
 * Created: 2015-01-28 12:15:37
 *  Author: Daniel
 */ 


#ifndef IR_H_
#define IR_H_

#include "avr/io.h"

void IR_transmit(uint8_t data);
void IR_init();



#endif /* IR_H_ */