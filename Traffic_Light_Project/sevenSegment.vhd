library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
 
entity sevenSegment is
Port ( input : in STD_LOGIC_VECTOR (4 downto 0);
reset : in STD_LOGIC;
hexOutput: out STD_LOGIC_VECTOR (6 downto 0));
end sevenSegment;
 
architecture Structure of sevenSegment is
 
begin
 
process(input)
begin
if (reset = '1') then
	hexOutput <= "1111111";
else
case input is
when "00000" =>
hexOutput <= "1000000"; --0
when "00001" =>
hexOutput <= "1111001"; --1 
when "00010" =>
hexOutput <= "0100100"; --2 
when "00011" =>
hexOutput <= "0110000"; --3 
when "00100" =>
hexOutput <= "0011001"; --4 
when "00101" =>
hexOutput <= "0010010"; --5 
when "00110" =>
hexOutput <= "0000010"; --6 
when "00111" =>
hexOutput <= "1111000"; --7 
when "01000" =>
hexOutput <= "0000000"; --8
when "01001" =>
hexOutput <= "0011000"; --9
when "01010" =>
hexOutput <= "0010000"; --g
when "01011" =>
hexOutput <= "0000110"; --E
when "01100" =>
hexOutput <= "1000001"; --U 
when "01101" =>
hexOutput <= "0000111"; --t 
when "01110" =>
hexOutput <= "0001100"; --P 
when "01111" =>
hexOutput <= "0101011"; --n 
when "10000" =>
hexOutput <= "1000110"; --C
when "10001" =>
hexOutput <= "0001000"; --A
when "10010" =>
hexOutput <= "0100011"; --o
when "10011" =>
hexOutput <= "1000111"; --L
when "10100" =>
hexOutput <= "0001110"; --F
when others =>
hexOutput <= "1111111";  --off

end case;
end if;
end process;

end Structure;