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

void init_motif (int ** matrice_led , int nb_lig , int nb_col , char eeprom * motif  ) {
    int lig , col , masque_motif = 0b00000001;

    for(lig = 0 ; lig < nb_lig ; lig ++) {
         for(col = 0 ; col < nb_col ; col++) {
             matrice_led[lig][col] = masque_motif & motif[lig];
             masque_motif = masque_motif << 1;
         }
         masque_motif = 0b00000001;
    }
}

/*unsigned char read_data_i2c(unsigned char data) {
     i2c_start();
     data = i2c_read(0);
     i2c_stop();
     return data;
} */


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

void scroll_droite(char *motif, int nb_affich) {

}

void scroll_gauche(char *motif , int nb_affich) {

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

void lecture_EEPROM(char eeprom *motif , int num_col) {
     PORTA = motif[num_col];    // Affiche sur le PORT A la data en EEPROM selectionné
}