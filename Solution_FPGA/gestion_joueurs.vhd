-- == LIBRAIRIES ==

library ieee;
use ieee.std_logic_1164.all;
library work;
use work.package_flip.all;


-- == ENTITE ==
ENTITY gestion_joueurs IS			
	
	PORT( en_jeu, start, game_ongoing : in std_logic;
			nb_credits : in integer range 0 to 99;
			nb_player : out integer range 0 to 4;
			leds_players : out std_logic_vector(3 downto 0)
		 );
	END gestion_joueurs;
-- ============

-- == ARCHITECHTURE ==
ARCHITECTURE BEHV OF gestion_joueurs IS

signal cpt_joueur : integer range 0 to 5 := 0;

BEGIN
	
	process(en_jeu, start)
	begin
		if(start = '1' and en_jeu = '1' and game_ongoing = '0') then
				if(nb_credits > 0) then
					if(cpt_joueur <= 4) then
							cpt_joueur <= cpt_joueur + 1;
					end if;
				end if;
		end if;
	end process;

	nb_player <= cpt_joueur;
	
	
	with cpt_joueur select
		leds_players(3 downto 0) <= "0000" when 0,
											 "1000" when 1,
											 "0100" when 2,
											 "0010" when 3,
											 "0001" when 4,
											 "0000" when others;
											 
	
	
	
END BEHV ;
-- ======================