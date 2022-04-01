
library ieee;
use ieee.std_logic_1164.all;
-- S1S0 = "11" is load , S1S0 = "01" is shift left ,
-- S1S0 = "10" is shift right
Entity twentyBitCounter IS
	PORT( CLOCK2_50 : in std_logic;
	KEY : in std_logic_vector (3 downto 0);
			
			LEDR: out std_logic_vector (9 downto 0));
END twentyBitCounter;

ARCHITECTURE Structure OF twentyBitCounter IS
	signal regval: std_logic_vector (9 downto 0);
	signal ctrl: std_logic_vector (1 downto 0);
	

	begin
		ctrl <= KEY(0) & KEY(1);
		process(CLOCK2_50 , KEY(2))
			begin
				
				if KEY(2) = '0' then
					regval <= "0000000001";
				elsif CLOCK2_50'event and CLOCK2_50 = '1' then
					case ctrl is
						when "01" => regval <= "0000000010"; --right
						when "10" => regval <= regval (8 downto 0) & regval(9);--left
						when others => regval <=  "0000000001"; -- hold
					end case;	
				end if;
		end process;
	 LEDR<= regval;
END Structure;