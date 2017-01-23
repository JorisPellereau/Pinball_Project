#include <mega16.h>
#include <stdlib.h>
#include <stdio.h>
#include <delay.h>
#include <i2c.h>

#ifndef  fctn_matrice.h
#define  fctn_matrice.h


// == GESTION INTERNE
void crea_matrice(int **matrice_led , int nb_lig , int nb_col);
void init_motif (int ** matrice_led , int nb_lig , int nb_col ,  char eeprom * motif);

// == ECRITURE MATRICE ==
void write_mat_ports(int ** matrice_leds , int choix_couleur , int nb_lig , int nb_col);
void all_red();
void all_green();
void all_orange();
void all_off();
void scroll_droite(char *motif, int nb_affich);
void scroll_gauche(char *motif , int nb_affich);
void diagnostic();

// == GESTION I2C ==
//unsigned char read_data_i2c(unsigned char data);

// == GESTION EEPROM ==
void lecture_EEPROM(char eeprom *motif , int num_col);


#endif
