/*	Author: alecasatoorian
 *  Partner(s) Name: Alex Kevakian
 *	Lab Section:
 *	Assignment: Lab 3  Exercise 1
 *	Exercise Description: [optional - include for your own benefit]
 *
 *	I acknowledge all content contained herein, excluding template or example
 *	code, is my own original work.
 */
#include <avr/io.h>
#ifdef _SIMULATE_
#include "simAVRHeader.h"
#endif

int main(void) {
    /* Insert DDR and PORT initializations */
	DDRA = 0x00; PORTA = 0xFF;
	DDRB = 0x00; PORTB = 0xFF;
	DDRC = 0xFF; PORTC = 0x00;
    /* Insert your solution below */
    unsigned char counter = 0;
    unsigned char tmpA = PINA;
    unsigned char tmpB = PINB;
    while (1) {
	for(int i = 0; i < 7; ++i){
		tmpA = tmpA >> 1;
		if(tmpA & 0x01){
			++counter;
		}
	}
	for(int i = 0; i < 7; ++i){
		tmpB = tmpB >> 1;
		if(tmpB & 0x01){
			++counter;
		}
	}
	
    }

    PORTC = counter;
    return 1;
}
