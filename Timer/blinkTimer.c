#include <avr/io.h>
#include <avr/interrupt.h>

void timerSetup ()
{
	/* 
	 * ***** Setting up the Timer in CTC Mode *****
	 * Using Timer 1
	 */

	 cli();							// Disable Interrupts

	TIMSK1 = 0b00000010;					// Enable OCIE1A Interrupt and none other | OCIEA ==> Bit_1 = 1
	TCCR1A = 0b00000000;					// COM1A1:0, COM1B1:0, RR, WGM11:10 set to 0

	TCCR1B = 0;
	TCCR1B |= 0b00010000;					// Set Mode = CTC | WGM12 ==> Bit_3 = 1
	TCCR1B |= 0b00000101;					// CS12:10 ==> Bits_2:0 = 101 | Set prescaler = 1024 | Ck = 16 MHz / 1024 = 15625 MHz

	OCRA1 = 15624;						// Setting TOP = 15624

	sei();							// Enable Interrupts
}

// void powerReductionMode ()
// {
// 	set_sleep_mode (SLEEP_MODE_PWR_SAVE);
// 	MCUCR = bit (BODS) | bit (BODSE);
// 	MCUCR = bit (BODS);
// 	sleep_cpu ();	
// }

int main ()
{
	DDRB |= 0b00100000;					// Set PB5 as output | ArduinoPIN : 13
	timerSetup ();
	while (1);						// Infinite loop
}

ISR (TIMER1_COMPA_vect)
{
	cli ();							// Disable Interrupts
	PORTB ^= 0b00100000;					// Toggle LedPIN 13
	// powerReductionMode ();
	sei ();							// Enable Interrupts
}