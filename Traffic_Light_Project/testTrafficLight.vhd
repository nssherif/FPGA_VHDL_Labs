library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_unsigned.all;


entity testTrafficLight is
end testTrafficLight;

architecture Structure of testTrafficLight is

	component trafficLight is
		port (CLOCK_50: in std_logic;
				SW: in std_logic_vector(9 downto 0);
				LEDR: out std_logic_vector(9 downto 0);
				HEX0, HEX2, HEX3, HEX4, HEX5: out std_logic_vector(6 downto 0));
	end component;

	signal tempClk : std_logic;
	signal tempSW, tempLEDR: std_logic_vector(9 downto 0);
	signal tempHEX0Output, tempHEX2Output, tempHEX3Output, tempHEX4Output, tempHEX5Output: std_logic_vector(4 downto 0); 

begin
	
		m1: trafficLight (tempClk, tempSW, tempLEDR, tempHEX0Output, tempHEX2Output, tempHEX3Output, tempHEX4Output, tempHEX5Output);
		
		tempClk <= not clk after 5ns;
		tempSW(1) <= '1', '0' after 50ns, '1' after 70ns;
		tempSW(2) <= '1', '0' after 70ns, '1' after 100ns;
end Structure;