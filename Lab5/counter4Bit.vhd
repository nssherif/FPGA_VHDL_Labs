library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_ARITH.all;
use IEEE.STD_LOGIC_UNSIGNED.all;

entity counter4Bit is
    Port ( rst,clk, ld : in std_logic;
	 l: in std_logic_vector(3 downto 0);
           o: out std_logic_vector(3 downto 0));
end counter4Bit;

architecture count_arch of counter4Bit is
   signal count : unsigned(3 downto 0);
    begin
      process(rst,clk)
        begin
				if (rst = '0') then
				count <= "0000";
          elsif (clk'event and clk = '1') then 
				if (ld = '1') then
				count <= "1000";
			else
			count <= count + 1;
			 
          end if;
			 end if;
         end process;
         o <= std_logic_vector(count);
      end count_arch;