library ieee;
use ieee.std_logic_1164.all;    

entity fiveInputNand is
	port (a, b, c, d, e: in std_logic;
			z: out std_logic);
end fiveInputNand;

architecture Structure of fiveInputNand is
begin
	
	z <= (a nand b);
end Structure;