library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_unsigned.all;


entity twentyBitCounter is
	port (reset, clkTwentyBit: in std_logic;
			output: out std_logic_vector(19 downto 0));
end twentyBitCounter;

architecture Structure of twentyBitCounter is
	signal tempCount: std_logic_vector(19 downto 0) ;
begin
	process(clkTwentyBit,reset)
	begin
		if (clkTwentyBit'event and clkTwentyBit='1') then
			if (reset = '1') then
				tempCount <= "00000000000000000000";
			else
				tempCount <= tempCount + '1';
			end if;
		end if;	
	end process;
	output <= tempCount;

end Structure;