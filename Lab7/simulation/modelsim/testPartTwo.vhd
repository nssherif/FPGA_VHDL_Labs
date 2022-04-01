library ieee;
use ieee.std_logic_1164.all;

entity testPartTwo is 
end testPartTwo;

architecture Structure of testPartTwo is
	component hazard2 is 
		port (A, B, C, D: in std_logic;
				F: out std_logic);
	end component;

	signal a, b, c, d, f: std_logic;
	signal output: std_logic;
	
	begin
	
	m1: hazard2 port map (a, b, c, d, f);
	
	a <= '0' ,'1' after 10ns, '0' after 20ns;
	b <= '0' ,'1' after 10ns;
	c <= '0' ,'1' after 10ns;
	d <= '0' ,'1' after 10ns;
	output <= '1';
	
end Structure;