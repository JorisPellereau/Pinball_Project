-- == LIBRAIRIES ==

library ieee;
use ieee.std_logic_1164.all;
use IEEE.numeric_std.all;
use IEEE.std_logic_arith.all; 
use IEEE.std_logic_unsigned.all;


-- == ENTITE ==
ENTITY gestion_flipper IS			
	
	PORT(	
			add_credit, start, clock, ball_glissiere, fin_partie : in std_logic;
			in_game : out std_logic;
			nb_player : inout integer range 0 to 3;
			nb_credit : inout integer range 0 to 99
			); 
	

END gestion_flipper ;
-- ============

-- == ARCHITECHTURE ==
ARCHITECTURE BEHV OF gestion_flipper IS
 

-- Etats : xi // Etats suivant : xsi

signal x0 : std_logic := '1';
signal x1, x2, x3, x4, x5, x6, x7, x8, x9, x10, x11, x12, x13 : std_logic;
signal xs0, xs1, xs2, xs3, xs4, xs5, xs6, xs7, xs8, xs9, xs10, xs11, xs12, xs13 : std_logic;
begin
		
		-- ==
		bloc_F: process(add_credit, start, ball_glissiere, fin_partie)
		begin
		
		xs0 <= (x1 and not start) or (fin_partie and (x4 or x7 or x10 or x13)) or (x0 and not start);
		xs1 <= (x0 and add_credit) or (x1 and not add_credit);
		xs2 <= (x0 and start) or (x2 and start);
		xs3 <= (x2 and not start) or (x3 and (ball_glissiere or not start));
		xs4 <= (x3 and not ball_glissiere) or (x4 and not fin_partie);
		xs5 <= (x3 and start) or (x5 and  start);
		xs6 <= (x5 and not start) or (x6 and ( not start or ball_glissiere));
		xs7 <= (x6 and not ball_glissiere) or (x7 and not fin_partie);
		xs8 <= (x6 and start) or (x8 and start);
		xs9 <= (x8 and not start) or (x9 and (not start or ball_glissiere));
		xs10 <= (x9 and not ball_glissiere) or (x10 and not fin_partie);
		xs11 <= (x9 and start) or (x11 and start);
		xs12 <= (x11 and not start) or (x12 and ball_glissiere);
		xs13 <= (x12 and not ball_glissiere) or (x13 and not fin_partie);
		end process;
		-- ==
		
		-- ==
		bloc_M : process(clock)
		begin
			if(rising_edge(clock)) then
				x0 <= xs0;
				x1 <= xs1;
				x2 <= xs2;
				x3 <= xs3;
				x4 <= xs4;
				x5 <= xs5;
				x6 <= xs6;
				x7 <= xs7;
				x8 <= xs8;
				x9 <= xs9;
				x10 <= xs10;
				x11 <= xs11;
				x12 <= xs12;
				x13 <= xs13;
			end if;
		end process;
		-- ==

		-- == bloc_G: SORTIE
		add_credits :process(x1)
						begin
							if(rising_edge(x1)) then
									nb_credit <= nb_credit + 1;
							end if;
						end process;
						
		add_players:process(x3, x6, x9, x12)
						begin
								if(x3 = '1' or x6 = '1' or x9 = '1' or x12 = '1') then
										nb_player <= nb_player + 1;								
								end if;
						end process;
		-- ==
		in_game <= x4 or x7 or x10 or x13;
END BEHV ;	
-- ======================