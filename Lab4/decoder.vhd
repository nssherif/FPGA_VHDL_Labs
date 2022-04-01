library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
 
entity decoder is
Port ( SW : in STD_LOGIC_VECTOR (3 downto 0);
HEX0: out STD_LOGIC_VECTOR (6 downto 0));
end decoder;
 
architecture Structure of decoder is
 
begin
 
process(SW)
begin
case SW is
when "0000" =>
HEX0 <= "1000000"; --0
when "0001" =>
HEX0 <= "1111001"; --1 
when "0010" =>
HEX0 <= "0100100"; --2 
when "0011" =>
HEX0 <= "0110000"; --3 
when "0100" =>
HEX0 <= "0011001"; --4 
when "0101" =>
HEX0 <= "0010010"; --5 
when "0110" =>
HEX0 <= "0000010"; --6 
when "0111" =>
HEX0 <= "1111000"; --7 
when "1000" =>
HEX0 <= "0000000"; --8
when "1001" =>
HEX0 <= "0011000"; --9
when "1010" =>
HEX0 <= "0001000"; --A
when "1011" =>
HEX0 <= "0000011"; --b
when "1100" =>
HEX0 <= "1000110"; --C 
when "1101" =>
HEX0 <= "0100001"; --d 
when "1110" =>
HEX0 <= "0000110"; --E 
when "1111" =>
HEX0 <= "0001110"; --F 
when others =>
HEX0 <= "1111111";  --off

end case;
end process;

end Structure;