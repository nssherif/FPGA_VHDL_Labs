library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_unsigned.all;


entity twentySixBitCounter is
	port (reset, clk: in std_logic;
			oneSecond: out std_logic);
end twentySixBitCounter;

architecture Structure of twentySixBitCounter is
	signal tempCount: std_logic_vector(25 downto 0) ;
	signal reached: std_logic;

begin
	process(clk,reset)
	begin
		if (reset = '1') then
				tempCount <= "00000000000000000000000000";
				reached <= '0';
		elsif (clk'event and clk='1') then	
			if (tempCount = "10111110101111000001111111") then
				reached <= '1';
				tempCount <= "00000000000000000000000000";
			else
				reached <= '0';
				tempCount <= tempCount + '1';
			end if;
		end if;	
	end process;
	
	oneSecond <= reached;

	end Structure;