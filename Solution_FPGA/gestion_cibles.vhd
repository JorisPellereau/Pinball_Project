-- == LIBRAIRIES ==

library ieee;
use ieee.std_logic_1164.all;
use IEEE.numeric_std.all;
use IEEE.std_logic_arith.all; 
use IEEE.std_logic_unsigned.all;
-- == ENTITE ==
ENTITY gestion_cibles IS			
	
	PORT(	c1, c2, c3, c4, c5, c6, clock : in  std_logic;					
			leds_cibles : out std_logic_vector(5 downto 0)					
			); 
	

END gestion_cibles ;
-- ============

-- == ARCHITECHTURE ==
ARCHITECTURE BEHV OF gestion_cibles IS

signal leds_sig : std_logic_vector(5 downto 0);

begin
		
		affich_cibles : process(clock)	
		variable cible_tmp : std_logic_vector(5 downto 0);	
		begin
				if(rising_edge(clock)) then					
					if (c1 = '1') then
						leds_sig(5) <= '1';
					elsif (c2 = '1') then
						leds_sig(4) <= '1';
					elsif (c3 = '1') then
						leds_sig(3) <= '1';
					elsif (c4 = '1') then
						leds_sig(2) <= '1';
					elsif (c5 = '1') then
						leds_sig(1) <= '1';
					elsif (c6 = '1') then
						leds_sig(0) <= '1';
					elsif (leds_sig = 63) then
						leds_sig <= "000000";
					end if;
				end if;			
		end process;
		leds_cibles <= leds_sig;								-- Ecriture des sorties
			
END BEHV ;	
-- ======================