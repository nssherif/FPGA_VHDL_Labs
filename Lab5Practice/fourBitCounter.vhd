library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_unsigned.all;


entity fourBitCounter is
	port (reset, clk: in std_logic;
			output: out std_logic_vector(3 downto 0));
end fourBitCounter;

architecture Structure of fourBitCounter is
	signal tempCount: std_logic_vector(3 downto 0); --:= "0000";
begin
	process(clk)
	begin
		if (clk'event and clk='1') then
			if (reset = '1') then
				tempCount <= "0000";
			else
				tempCount <= tempCount + '1';
			end if;
		end if;	
	end process;
	output <= tempCount;

end Structure;