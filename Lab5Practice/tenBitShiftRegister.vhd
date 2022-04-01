library ieee;
use ieee.std_logic_1164.all;
-- S1S0 = "11" is load , S1S0 = "01" is shift left ,
-- S1S0 = "10" is shift right
Entity tenBitShiftRegister IS
	PORT( s0 , s1  , clk , clrb: in std_logic;
			
			q: out std_logic_vector (9 downto 0));
END tenBitShiftRegister;

ARCHITECTURE Structure OF tenBitShiftRegister IS
	signal regval: std_logic_vector (9 downto 0);
	signal ctrl: std_logic_vector (1 downto 0);
	begin
		ctrl <= s0 & s1;
		process(clk , clrb)
			begin
				if clrb = '1' then
					regval <= "0000000001";
				elsif clk'event and clk = '1' then
					case ctrl is
						when "01" => regval <= regval(0) & regval (9 downto 1); --right
						when "10" => regval <= regval (8 downto 0) & regval(9);--left
						when others => regval <=  "0000000001"; -- idle
					end case;	
				end if;
		end process;
	q <= regval;
END Structure;