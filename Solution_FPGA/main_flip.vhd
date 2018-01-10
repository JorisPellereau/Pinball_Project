-- == LIBRAIRIES ==

library ieee;
use ieee.std_logic_1164.all;
library work;
use work.package_flip.all;


-- == ENTITE ==
ENTITY main_flip IS			
	
	PORT(	
			start, add_credit, fin_partie, clock : in std_logic;
				
			
			leds_players : out std_logic_vector(3 downto 0);																	-- Pour afficher le nb de joueurs
			-- == Sorties permettant la commandes des 7 segments
			seg_D, seg_U : out std_logic_vector(6 downto 0)																		-- Pour afficher les credits
			--seg_CM1, seg_DM1, seg_M1, seg_C1, seg_D1, seg_U1 : out std_logic_vector(6 downto 0);						-- Pour controller les segments
			--seg_CM2, seg_DM2, seg_M2, seg_C2, seg_D2, seg_U2 : out std_logic_vector(6 downto 0);
			--seg_CM3, seg_DM3, seg_M3, seg_C3, seg_D3, seg_U3 : out std_logic_vector(6 downto 0);
			--seg_CM4, seg_DM4, seg_M4, seg_C4, seg_D4, seg_U4 : out std_logic_vector(6 downto 0)
		 );
	

	END main_flip ;
-- ============

-- == ARCHITECHTURE ==
ARCHITECTURE BEHV OF main_flip IS


-- == Etats flipper
signal attente, en_jeu, credit_ajoute  : std_logic;
-- ==================

-- == Pour le nb de joueurs ==
signal nb_player : integer range 0 to 3;
-- ============================

-- == Pour le nb de credit en cours --
signal nb_credit : integer range 0 to 99;
-- ==================================

signal game_ongoing : std_logic;			-- Pour ne plus ajouter de joueur en cours de partie 0 = pas encore lancé de bille / 1 partie bien en cours


--signal DEC_CM1, DEC_DM1, DEC_M1, DEC_C1, DEC_D1, DEC_U1 : integer range 0 to 9;
--signal DEC_CM2, DEC_DM2, DEC_M2, DEC_C2, DEC_D2, DEC_U2 : integer range 0 to 9;
--signal DEC_CM3, DEC_DM3, DEC_M3, DEC_C3, DEC_D3, DEC_U3 : integer range 0 to 9;
--signal DEC_CM4, DEC_DM4, DEC_M4, DEC_C4, DEC_D4, DEC_U4 : integer range 0 to 9;


BEGIN

	
	-- == Etats du flipper == --
	state_flipper : etat_flipper port map(start, add_credit, fin_partie, clock, attente, en_jeu, credit_ajoute);
	-- ====================== --
	
	-- == Gestion et affichage des credits == --
	credit_manage : gestion_credit port map(credit_ajoute , nb_credit,  seg_D, seg_U);
	-- ======================================
	
	-- == Gestion du nb de joueur == --
	player_manage : gestion_joueurs port map(en_jeu, start, game_ongoing,nb_credit, nb_player, leds_players );
	-- ==============================
	
	-- == Ecrans des scores == --	
	--display_1 : display_score port map(DEC_CM1, DEC_DM1, DEC_M1, DEC_C1, DEC_D1, DEC_U1, seg_CM1, seg_DM1, seg_M1, seg_C1, seg_D1, seg_U1);
	--display_2 : display_score port map(DEC_CM2, DEC_DM2, DEC_M2, DEC_C2, DEC_D2, DEC_U2, seg_CM2, seg_DM2, seg_M2, seg_C2, seg_D2, seg_U2);
	--display_3 : display_score port map(DEC_CM3, DEC_DM3, DEC_M3, DEC_C3, DEC_D3, DEC_U3, seg_CM3, seg_DM3, seg_M3, seg_C3, seg_D3, seg_U3);
	--display_4 : display_score port map(DEC_CM4, DEC_DM4, DEC_M4, DEC_C4, DEC_D4, DEC_U4, seg_CM4, seg_DM4, seg_M4, seg_C4, seg_D4, seg_U4);	
	-- ======================= --

	
END BEHV ;	
-- ======================




-- Instanciations
	--comptage : gestion_pts port map(MAJ, unite, dizaine, centaine, seg1 , seg2 , seg3 , seg4 , seg5 , seg6);