/*  ============================================================
#       Filename : Cmd_matric.c
#       Date : 12/01/2017
#       File Version : 1.0
#       Written by : JorisP30
#       Function : Programme principal cmd matrice
#
#       Chip type               : ATmega16
#       Program type            : Application
#       AVR Core Clock frequency: 8,000000 MHz
#       Memory model            : Small
#       External RAM size       : 0
#       Data Stack size         : 256
#  =============================================================== */

// == LIBRARIES ==
#include <mega16.h>
#include <stdlib.h>
#include <stdio.h>
#include <delay.h>
#include <i2c.h>
#include "fctn_matrice.h"
// ===============

// == GLOBAL VARIABLES ==
#define nb_affich 30
#define nb_lig 8
#define nb_col 8
#define rouge 1
#define vert 2
#define orange 3
// ======================


// == MOTIF STOCK EN EEPROM , ECRITURE EXTERNE
// Data en EEPROM ecrit de façon externe (a corriger !)
eeprom char motif_1[8] @0x00;
eeprom char motif_2[8] @0x08;
eeprom char motif_3[8] @0x10;
eeprom char motif_4[8] @0x18;
eeprom char motif_5[8] @0x20;
eeprom char motif_6[8] @0x28;
eeprom char motif_7[8] @0x30;
eeprom char motif_8[8] @0x38;
eeprom char motif_9[8] @0x40;
eeprom char motif_0[8] @0x48;
// ========================================



void main(void) {

// == VARIABLES LOCALES ==
int  **matrice_led , i;
crea_matrice(matrice_led ,  nb_lig ,  nb_col);
// =======================

// == Input/Output Ports initialization ==
// -- PORTS : A-B-D : OUTPUT
// -- PORT : C TWI + Others
PORTA=0x00;    // Init à 00000000
DDRA=0x00;     // PORT en sortie
PORTB=0x00;    // Init à 00000000
DDRB=0x00;     // PORT en sortie
PORTC=0x00;    // Init à 00000000
DDRC=0x00;     // PORT en sortie
PORTD=0x00;    // Init à 00000000
DDRD=0x00;     // PORT en sortie
// =======================================

// TWI


// Timer/Counter 0 initialization
// Clock source: System Clock
// Clock value: Timer 0 Stopped
// Mode: Normal top=0xFF
// OC0 output: Disconnected
TCCR0=0x00;
TCNT0=0x00;
OCR0=0x00;

// Timer/Counter 1 initialization
// Clock source: System Clock
// Clock value: Timer1 Stopped
// Mode: Normal top=0xFFFF
// OC1A output: Discon.
// OC1B output: Discon.
// Noise Canceler: Off
// Input Capture on Falling Edge
// Timer1 Overflow Interrupt: Off
// Input Capture Interrupt: Off
// Compare A Match Interrupt: Off
// Compare B Match Interrupt: Off
TCCR1A=0x00;
TCCR1B=0x00;
TCNT1H=0x00;
TCNT1L=0x00;
ICR1H=0x00;
ICR1L=0x00;
OCR1AH=0x00;
OCR1AL=0x00;
OCR1BH=0x00;
OCR1BL=0x00;

// Timer/Counter 2 initialization
// Clock source: System Clock
// Clock value: Timer2 Stopped
// Mode: Normal top=0xFF
// OC2 output: Disconnected
ASSR=0x00;
TCCR2=0x00;
TCNT2=0x00;
OCR2=0x00;

// External Interrupt(s) initialization
// INT0: Off
// INT1: Off
// INT2: Off
MCUCR=0x00;
MCUCSR=0x00;

// Timer(s)/Counter(s) Interrupt(s) initialization
TIMSK=0x00;

// USART initialization
// USART disabled
UCSRB=0x00;

// Analog Comparator initialization
// Analog Comparator: Off
// Analog Comparator Input Capture by Timer/Counter 1: Off
ACSR=0x80;
SFIOR=0x00;

// ADC initialization
// ADC disabled
ADCSRA=0x00;

// SPI initialization
// SPI disabled
SPCR=0x00;

// TWI initialization
// TWI disabled
TWCR=0x00;



//i2c_init();         // Pour initialiser la communication

while (1) {

     lecture_EEPROM(motif_2 , 0);
     //all_red();

       // Test
       //diagnostic();
           /*
      all_red();
      delay_us(500);
      all_green();
      delay_us(500);
      all_orange();
      delay_us(500);
      init_motif(matrice_led , nb_lig , nb_col ,  motif_1 );
      write_mat_ports(matrice_led , rouge , nb_lig , nb_col);
      delay_us(500);
      write_mat_ports(matrice_led , vert , nb_lig , nb_col);
      delay_us(500);
      write_mat_ports(matrice_led , orange , nb_lig , nb_col);
      delay_us(500);  */

    }
}


// Initialisation EEPROM

/*eeprom int motif_2[8] = {140 , 196 , 193 , 161 , 145 , 142 , 0 , 0};    // Initialisation
eeprom int motif_3[8] = {68 , 130 , 129 , 129 , 137 , 118 , 0 , 0};    // Initialisation
eeprom int motif_4[8] = {24 , 20 , 18 , 249 , 16 , 0 , 0 , 0};    // Initialisation
eeprom int motif_5[8] = {142 , 137 , 137 , 137 , 249 , 0 , 0 , 0};    // Initialisation
eeprom int motif_6[8] = {120 , 140 , 138 , 137 , 112 , 0 , 0 , 0};    // Initialisation
eeprom int motif_7[8] = {124 , 65 , 33 , 17 , 14 , 0 , 0 , 0};    // Initialisation
eeprom int motif_8[8] = {110 , 145 , 145 , 145 , 110 , 0 , 0 , 0};    // Initialisation
eeprom int motif_9[8] = {78 , 145 , 145 , 145 , 126 , 0 , 0 , 0};    // Initialisation
eeprom int motif_0[8] = {126 , 145 , 145 , 145 , 126 , 0 , 0 , 0};    // Initialisation */