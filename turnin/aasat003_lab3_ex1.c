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
    unsigned char counter1 = 0x00;
    unsigned char counter2 = 0x00;
    unsigned char tmpA = 0x00;
    unsigned char tmpB = 0x00;
    unsigned char tmp1 = 0x00;
    unsigned char i = 0x00;

    while (1) {
      tmpA = PINA;
      tmpB = PINB;
      counter1 = 0x00;
      counter2 = 0x00;
	while(i < 0x08){
	        tmp1 = (tmpA >> i) & 0x01;
		
		if(tmp1 == 0x01){
		   counter1 = counter1 + 0x01;
		}
		i = i + 0x01;
	}

	i = 0x00;

	while(i < 0x08){
	        tmp1 = (tmpB >> i) & 0x01;
		if (tmp1 == 0x01){
		  counter2 = counter2 + 0x01;
		}
		i = i + 0x01;
	}
	PORTC = counter1 + counter2;
	i = 0x00;
    }
 
}
