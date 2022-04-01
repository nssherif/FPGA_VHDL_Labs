library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_unsigned.all;

entity testSevenSegmentDecoder is
end testSevenSegmentDecoder;

architecture Structure of testSevenSegmentDecoder is

	component sevenSegment is
		Port ( input : in STD_LOGIC_VECTOR (4 downto 0);
				reset : in STD_LOGIC;
				hexOutput: out STD_LOGIC_VECTOR (6 downto 0));
	end component;

	signal tempInput: std_logic_vector(4 downto 0);
	signal tempReset: std_logic;
	signal tempOutput: std_logic_vector(6 downto 0); 

begin
	
		m1: sevenSegment (tempInput, tempReset, tempOutput);
		
		tempInput <= "0000", "0001" after 5ns, "0010" after 10ns, "0011" after 15ns, "0100" after 20ns;
		tempReset <= '0', '1' after 15ns;
end Structure;