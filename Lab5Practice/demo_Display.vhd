library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_unsigned.all;
use ieee.std_logic_arith.all;
use ieee.numeric_std.all;
use STD.textio.all;                     
use IEEE.std_logic_textio.all;          


entity demo_Display is
	port (CLOCK_50: in std_logic;
			KEY: in std_logic_vector (3 downto 0);
			LEDR: out std_logic_vector(9 downto 0));
end demo_Display;

architecture Structure of demo_Display is

	component fourBitCounter is
		port (reset, clk: in std_logic;
			output: out std_logic_vector(3 downto 0));
	end component;
	
	component twentyBitCounter is
		port (reset, clkTwentyBit: in std_logic;
				output: out std_logic_vector(19 downto 0));
	end component;
	
	component tenBitShiftRegister is
	PORT( s0 , s1 , clk , clrb: in std_logic;
			q: out std_logic_vector (9 downto 0));
	end component;
	
	type state_type is (IDLE, LEFTS, RIGHTS);
	signal current_state, next_state: state_type;
	signal ledVals, ledInit: std_logic_vector(9 downto 0);--KKKKK
	signal fourBitOutput: std_logic_vector(3 downto 0);
	signal twentybitoutput: std_logic_vector(19 downto 0);
	signal load_cnt, s0, s1,d0, d1, clrb, clk_10, resetCount, reset20Count, clk_50, resetShift: std_logic;
	signal ctrl:  std_logic_vector(1 downto 0);
	 
BEGIN
   ctrl <= s0 & s1;
	fourCnt: fourBitCounter port map(resetCount, clk_50,fourBitOutput);--load_cnt, fourBitOutput);
	twentyCnt: twentyBitCounter port map(reset20Count, CLOCK_50, twentybitoutput);
	shiftReg: tenBitShiftRegister port map (s0, s1, clk_50, resetShift, ledVals );
	
	clk_10 <= fourBitOutput(3) and fourBitOutput(0);--fourBitOutput(3) and not fourBitOutput(2) and not fourBitOutput(1) and fourBitOutput(0) ;
	LEDR <=ledVals;
	
	clk_50 <= twentybitoutput(16) and twentybitoutput(17) and twentybitoutput(18) and twentybitoutput(19) ;
	
	process(clk_50, KEY(0), clk_10)
	
		begin
		resetCount<='0';
				reset20Count<='0';
				resetShift<='0';
			if (KEY(0) = '0') then
				s0<='1';
				s1<='0';
				resetCount<='1';
				reset20Count<='1';
				resetShift<='1';
			else
			if (clk_50 = '1') then
			reset20Count<='1';
				case ctrl is
					when "10" => --left
						if (clk_10 = '1') then --stay left
							--resetCount <= '0';
							--s0<='1';
							--s1<='0';
							
						--else --reached end of left, switch to right and reset count.
							resetCount <= '1';
							s0<='0';
							s1<='1';
							
						end if;
					when "01" => --right
						if (clk_10 = '1') then --stay right
							--resetCount <= '0';
							--s0<='0';
							--s1<='1';
							
						--else--reached end of right, switch to left and reset count.
							resetCount <= '1';
							s0<='1';
							s1<='0';
							
						end if;
					when others =>
					--resetCount<='0';
				--reset20Count<='0';
				--resetShift<='0';
						s0<='0';
						s1<='1';
				end case;
			end if;
			end if;
	end process;
end Structure;