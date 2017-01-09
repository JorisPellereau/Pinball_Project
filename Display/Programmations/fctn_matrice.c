#include <mega16.h>
#include <stdlib.h>
#include <stdio.h>
#include <delay.h>
#include <i2c.h>
#include "fctn_matrice.h"


void crea_matrice(int **matrice_led , int nb_lig , int nb_col) {
    int col;
    matrice_led = (int**)calloc(nb_lig , sizeof(int*));
    for(col = 0 ; col < nb_col ; col++){
        matrice_led[col] = (int*)calloc(nb_col , sizeof(int));
    }
}

void init_motif (int ** matrice_led , int nb_lig , int nb_col , int eeprom * motif  ) {
    int lig , col , masque_motif = 0b00000001;

    for(lig = 0 ; lig < nb_lig ; lig ++) {
         for(col = 0 ; col < nb_col ; col++) {
             matrice_led[lig][col] = masque_motif & motif[lig];
             masque_motif = masque_motif << 1;
         }
         masque_motif = 0b00000001;
    }
}

void write_mat_ports(int ** matrice_leds , int choix_couleur , int nb_lig , int nb_col ) {
        int lig , col , masque_portD , masque_portAB;
        masque_portD = 0b00000001;
        masque_portAB = 0b00000001;

        for(col = 0 ; col < nb_col ; col++) {   // Selection des colonnes
                if(choix_couleur == 1){
                    PORTA = masque_portAB;
                }
                else if(choix_couleur == 2) {
                     PORTB = masque_portAB;
                }
                else {
                     PORTA = masque_portAB;
                     PORTB = masque_portAB;
                }
                 for(lig = 0 ; lig < nb_lig ; lig++) {
                    PORTD = PORTD | (masque_portD | matrice_leds[lig][col]);
                    masque_portD = masque_portD << 1;
                 }
                 masque_portD = 0b00000001;
                 masque_portAB = masque_portAB << 1;
        }
}

void all_red() {
    PORTA = 0xFF ;
    PORTD = 0xFF;
}

void all_green() {
    PORTA = 0xFF;
    PORTB = 0xFF;
}

void all_orange() {
    PORTA = 0xFF;
    PORTB = 0xFF;
    PORTD = 0xFF;
}

void all_off() {
    PORTA = 0;
    PORTB = 0;
    PORTD = 0;
}

void scroll_droite(int *motif, int nb_affich) {
    int i = 0, j = 0 , k = 0;
    int x_pos = 0b10000000;
    for(i = 0 ; i < nb_affich ; i++) {
        for(j = 0 ; j <= k ; j++) { // <= a test !
            PORTD = motif[k-j];
            PORTA = x_pos;
            delay_ms(10);
            PORTD = 0;
            PORTA = 0;
            x_pos = x_pos >> 1;
        }
        x_pos = 0b10000000;
        k++;
    }
}

void scroll_gauche(int *motif , int nb_affich) {
         int a ;
         a = nb_affich;
         a = a / 2;
         motif[0] = 1;
}

void diagnostic() {
     all_red();
     delay_us(500);
     all_green();
     delay_us(500);
     all_orange();
     delay_us(500);
     all_off();
     delay_us(500);
}