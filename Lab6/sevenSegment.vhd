library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
 
entity sevenSegment is
Port ( input : in STD_LOGIC_VECTOR (3 downto 0);
hexOutput: out STD_LOGIC_VECTOR (6 downto 0));
end sevenSegment;
 
architecture Structure of sevenSegment is
 
begin
 
process(input)
begin
case input is
when "0000" =>
hexOutput <= "1000000"; --0
when "0001" =>
hexOutput <= "1111001"; --1 
when "0010" =>
hexOutput <= "0100100"; --2 
when "0011" =>
hexOutput <= "0110000"; --3 
when "0100" =>
hexOutput <= "0011001"; --4 
when "0101" =>
hexOutput <= "0010010"; --5 
when "0110" =>
hexOutput <= "0000010"; --6 
when "0111" =>
hexOutput <= "1111000"; --7 
when "1000" =>
hexOutput <= "0000000"; --8
when "1001" =>
hexOutput <= "0011000"; --9
when others =>
hexOutput <= "1111111";  --off

end case;
end process;

end Structure;