library ieee;
use ieee.std_logic_1164.all;

entity testPartOne is 
end testPartOne;

architecture Structure of testPartOne is
	component hazard is 
		port (A, B, C, D: in std_logic;
				F: out std_logic);
	end component;

	signal a, b, c, d, f: std_logic;
	
	begin
	
	m1: hazard port map (a, b, c, d, f);
	
	a <= '0' ,'1' after 10ns, '0' after 20ns;
	b <= '0' ,'1' after 10ns;
	c <= '0' ,'1' after 10ns;
	d <= '0' ,'1' after 10ns;
end Structure;