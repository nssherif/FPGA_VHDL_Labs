library ieee;
use ieee.std_logic_1164.all;
-- S1S0 = "11" is load , S1S0 = "01" is shift left ,
-- S1S0 = "10" is shift right
Entity Bit20ShiftRegister IS
	PORT( s0 , s1 , sil , sir , clk , clrb: in std_logic;
			l: in std_logic_vector (19 downto 0);
			q: out std_logic_vector (19 downto 0));
END Bit20ShiftRegister;

ARCHITECTURE Structure OF Bit20ShiftRegister IS
	signal regval: std_logic_vector (19 downto 0);
	signal ctrl: std_logic_vector (1 downto 0);
	
	begin
		ctrl <= s1 & s0;
		process(clk , clrb)
			begin
				if clrb = '0' then
					regval <= "00000000000000000001";
				elsif clk'event and clk = '1' then
					case ctrl is
						when "11" => regval <= l; -- load
						when "10" => regval <= sir & regval (19 downto 1); --right
						when "01" => regval <= regval (18 downto 0) & sil;--left
						when others => regval <= regval; -- hold
					end case;	
				end if;
		end process;
	q <= regval;
END Structure;