-- == LIBRAIRIES ==

library ieee;
use ieee.std_logic_1164.all;



-- == ENTITE ==
ENTITY dec7seg IS			
	
	PORT( DEC : in integer range 0 to 9;			
			out_segs : out std_logic_vector(6 downto 0)	
		 );
END dec7seg ;
-- ============

-- == ARCHITECHTURE ==
ARCHITECTURE BEHV OF dec7seg IS
BEGIN
	--		  a
	--	    _____
	--	   |	    |   
	--  f |      | b
	--	   | _____|   
	--    |   g  |	
	--	e  |	    | c  
	--    | _____| 
	--        d
	--      "gfedcba"          
	
	out_segs <= "0111111" when DEC = 0
			 else "0000110" when DEC = 1
		    else "1011011" when DEC = 2
		    else "1001111" when DEC = 3
		    else "1100110" when DEC = 4
		    else "1101101" when DEC = 5
		    else "1111101" when DEC = 6
		    else "0000111" when DEC = 7
		    else "1111111" when DEC = 8
		    else "1101111" when DEC = 9
		    else "1000000";	
END BEHV ;
-- ======================