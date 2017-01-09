#include <mega16.h>
#include <stdlib.h>
#include <stdio.h>
#include <delay.h>
#include <i2c.h>

//#ifndef  fctn_matrice.h
//#define  fctn_matrice.h



void crea_matrice(int **matrice_led , int nb_lig , int nb_col);
void init_motif (int ** matrice_led , int nb_lig , int nb_col ,  int eeprom * motif);
void write_mat_ports(int ** matrice_leds , int choix_couleur , int nb_lig , int nb_col);
void all_red();
void all_green();
void all_orange();
void all_off();
void scroll_droite(int *motif, int nb_affich);
void scroll_gauche(int *motif , int nb_affich);
void diagnostic();

//#endif
