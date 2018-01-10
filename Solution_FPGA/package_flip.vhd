-- Package des composants utilisés

library ieee;
use ieee.std_logic_1164.all;
use IEEE.STD_LOGIC_ARITH.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL; 
use ieee.numeric_bit.all ;

package package_flip IS


	-- == Affichage 7 segments == --
	component dec7seg	
	PORT( DEC : in integer range 0 to 9;			
			out_segs : out std_logic_vector(6 downto 0)	
		 );
	end component;
		
	component display_score	
	PORT( DEC_CM, DEC_DM, DEC_M, DEC_C, DEC_D, DEC_U : in integer range 0 to 9;
			seg_CM, seg_DM, seg_M, seg_C, seg_D, seg_U : out std_logic_vector(6 downto 0)						-- Pour controller les segments
		 );
	end component;
	
	-- ======================== --
	
	-- == Gestion_etat du flipper == --	
	component etat_flipper
	PORT(	start, add_credit, fin_partie, clock : in std_logic;
			attente, en_jeu, credit_ajoute : out std_logic
			);
	end component;
	
	-- ==============================
	
	
	-- == Gestion et affichage des credits == --
	component gestion_credit
	PORT( credit_ajoute : in std_logic;
			nb_credit :  out integer range 0 to 99;
			seg_D, seg_U : out std_logic_vector(6 downto 0)						-- Pour controller les segments			
		 );
	end component;
	-- =======================================
	
	
	-- == Gestion du nombre de joueur == --
	component gestion_joueurs
	PORT( en_jeu, start, game_ongoing : in std_logic;
			nb_credits : in integer range 0 to 99;
			nb_player : out integer range 0 to 4;
			leds_players : out std_logic_vector(3 downto 0)
		 );
	END component;
	-- ===================================
	
	
	component cmd_segs
	PORT(	score2 : in integer range 0 to 255;
			score1 : in integer range 0 to 255;
			score0 : in integer range 0 to 255;
			seg1 : out integer range 0 to 9;
			seg2 : out integer range 0 to 9;
			seg3 : out integer range 0 to 9;
			seg4 : out integer range 0 to 9;
			seg5 : out integer range 0 to 9;
			seg6 : out integer range 0 to 9
		 );
	end component;

	component comptage_pts
	PORT(	E321 : in std_logic_vector(2 downto 0);
			unite, dizaine, centaine : out integer range 0 to 9
		 );
		 end component;
		 
	component gestion_pts
	PORT(	
			MAJ : in std_logic;									-- Pour mise a jour du score
			unite, dizaine, centaine : in integer range 0 to 9;
			seg1 : out integer range 0 to 9;			-- Sur 4 bits
			seg2 : out integer range 0 to 9;
			seg3 : out integer range 0 to 9;
			seg4 : out integer range 0 to 9;
			seg5 : out integer range 0 to 9;
			seg6 : out integer range 0 to 9
		 );
		 end component;

end package package_flip;