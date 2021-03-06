library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_unsigned.all;


entity fiveBitCounter is
	port (reset, enable, clk: in std_logic;
			output: out std_logic_vector(4 downto 0));
end fiveBitCounter;

architecture Structure of fiveBitCounter is
	signal tempCount: std_logic_vector(4 downto 0);
begin
	process(clk)
	begin
		if (clk'event and clk='1') then
			if (reset = '1') then
				tempCount <= "00000";
			else
				if (enable = '1') then
					tempCount <= tempCount + '1';
				else
					tempCount <= tempCount;
				end if;
				
			end if;
		end if;	
	end process;
	output <= tempCount;

end Structure;