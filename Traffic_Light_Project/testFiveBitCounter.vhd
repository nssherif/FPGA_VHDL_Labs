library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_unsigned.all;


entity testFiveBitCounter is
end testFiveBitCounter;

architecture Structure of testFiveBitCounter is

	component fiveBitCounter is
		port (reset, enable, clk: in std_logic;
				output: out std_logic_vector(4 downto 0));
	end component;

	signal tempReset, tempEnable, tempClk: std_logic;
	signal tempOutput: std_logic_vector(4 downto 0); 

begin
	
		m1: fiveBitCounter ( tempReset, tempEnable, tempClk, tempOutput);
		
		clk <= not clk after 5ns;
		tempEnable <= '1', '0' after 50ns, '1' after 70ns;
		tempReset <= '1' after 100ns;
end Structure;