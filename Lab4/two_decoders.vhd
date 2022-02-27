library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
 
entity two_decoders is
Port ( SW : in STD_LOGIC_VECTOR (7 downto 0);
HEX0, HEX1: out STD_LOGIC_VECTOR (6 downto 0));
end two_decoders;

architecture Structure of two_decoders is

	component decoder
		port (SW: in STD_LOGIC_VECTOR (3 downto 0);
				HEX0: out STD_LOGIC_VECTOR (6 downto 0));
	end component;
	
	begin
	
	decoder1: decoder port map (SW(3 downto 0), HEX0);
	decoder2: decoder port map (SW(7 downto 4), HEX1);
end Structure;
