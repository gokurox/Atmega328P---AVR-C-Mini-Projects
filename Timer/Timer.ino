#include <avr/io.h>
#include <avr/interrupt.h>
#include <avr/sleep.h>

void powerReductionMode () {
  set_sleep_mode (SLEEP_MODE_PWR_SAVE);
  MCUCR = bit (BODS) | bit (BODSE);  // turn on brown-out enable select
  MCUCR = bit (BODS);
  sleep_cpu ();
}

void setTimer () {
  cli();
  TCCR1A = 0;
  TCCR1B = 0;
  TCCR1B |= 0b00001000;
  TCCR1B |= 0b00000101;
  OCR1A = 15624;
  TIMSK1 |= (1 << OCIE1A);
  sei();
}

int main () {
    DDRB |= 0x20;
    setTimer ();
    while (1);
}

ISR (TIMER1_COMPA_vect) {
  cli();
  PORTB ^= 0x20;
  powerReductionMode ();
  sei();
}

