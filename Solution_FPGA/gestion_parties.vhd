-- == LIBRAIRIES ==

library ieee;
use ieee.std_logic_1164.all;
use IEEE.numeric_std.all;
use IEEE.std_logic_arith.all; 
use IEEE.std_logic_unsigned.all;


-- == ENTITE ==
ENTITY gestion_parties IS			
	
	PORT(	
			add_credit, start, clock : in std_logic;
			reset_all : out std_logic;
			nb_parties : out integer range 0 to 99;
			nb_player : out integer range 0 to 3
			); 
	

END gestion_parties ;
-- ============

-- == ARCHITECHTURE ==
ARCHITECTURE BEHV OF gestion_parties IS

signal etat_flipper : std_logic;				-- Etat_initial du flipper = 0 // en marche = 1
signal cpt_player : integer range 0 to 3 := 0;
signal cpt_parties : integer range 0 to 99 := 0;
begin
		
		process(clock)
		begin
				if(rising_edge(clock)) then
					if(add_credit = '1') then
							cpt_parties <= cpt_parties + 1;
					end if;
				
					if(start = '1' and cpt_player < 4) then
						cpt_player <= cpt_player + 1;
						etat_flipper <= '1';
					end if;
				
				end if;
		
		end process;
		
		nb_player <= cpt_player;
		nb_parties <= cpt_parties;
		--reset_all <= not etat_flipper;
		
END BEHV ;	
-- ======================