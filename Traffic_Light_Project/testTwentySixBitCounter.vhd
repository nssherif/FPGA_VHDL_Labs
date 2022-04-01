library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_unsigned.all;


entity testTwentySixBitCounter is
end testTwentySixBitCounter;

architecture Structure of testTwentySixBitCounter is

	component twentySixBitCounter is
		port (reset, clk: in std_logic;
				oneSecond: out std_logic);
	end component;

	signal tempReset, tempClk, tempOneSecond: std_logic;

begin
	
		m1: twentySixBitCounter (tempReset, tempClk, tempOneSecond);
		
		clk <= not clk after 0.005ns; --generating a short clock pulse to ensure we get to 50 Million cycles.
		tempReset <= '1' after 1000ns;
end Structure;