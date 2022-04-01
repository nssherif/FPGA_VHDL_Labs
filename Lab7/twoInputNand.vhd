library ieee;
use ieee.std_logic_1164.all;         


entity twoInputNand is
	port (x, y: in std_logic;
			z: out std_logic);
end twoInputNand;

architecture Structure of twoInputNand is
begin
	z <= x nand y;
end Structure;