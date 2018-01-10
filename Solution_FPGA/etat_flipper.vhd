-- == LIBRAIRIES ==

library ieee;
use ieee.std_logic_1164.all;
use IEEE.numeric_std.all;
use IEEE.std_logic_arith.all; 
use IEEE.std_logic_unsigned.all;


-- == ENTITE ==
ENTITY etat_flipper IS			
	
	PORT(	
			start, add_credit, fin_partie, clock : in std_logic;
			attente, en_jeu, credit_ajoute : out std_logic
			); 
	

END etat_flipper ;
-- ============

-- == ARCHITECHTURE ==
ARCHITECTURE BEHV1 OF etat_flipper IS
 

-- Etats : xi // Etats suivant : xsi

signal x0 : std_logic := '1';		-- Vameur initiale
signal x1, x2, xs0, xs1, xs2: std_logic;
begin
		
		-- ==
		bloc_F: process(start, add_credit, fin_partie)
		begin
		
			xs0 <= (x1 and not add_credit) or (x2 and fin_partie) or (x0 and not(start or add_credit));
			xs1 <= (x0 and add_credit) or (x1 and add_credit);	-- Ajouter nb credit > 0 via un signal ...
			xs2 <= (x0 and start) or (x2 and not fin_partie);
		
		end process;
		-- ==
		
		-- ==
		bloc_M : process(clock)
		begin
			if(rising_edge(clock)) then
				x0 <= xs0;
				x1 <= xs1;
				x2 <= xs2;
			end if;
		end process;
		-- ==

		-- == bloc_G: SORTIE
		attente <= x0;
		credit_ajoute <= x1;
		en_jeu <= x2;
		-- ==

END BEHV1 ;	
-- ======================


