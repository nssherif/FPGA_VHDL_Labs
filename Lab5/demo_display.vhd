library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_unsigned.all;
entity demo_display is
	port( Reset , clk , rstb: in std_logic;
			leds: out std_logic_vector (9 downto 0));
end demo_display;

architecture Structure of demo_display is

	component counter4bit is
		port( rst,clk, ld: in std_logic;
				l: in std_logic_vector (3 downto 0);
				o: out std_logic_vector (3 downto 0));
	end component;
	
	component Bit10ShiftRegister is
	port( s0, s1, sil , sir , clk , clrb: in std_logic;
			l: in std_logic_vector (9 downto 0);
			q: out std_logic_vector (9 downto 0));
	end component;
	
	type state_type is ( IDLE, LEFT , RIGHT );
	signal current_state , next_state: state_type;
	signal led_init , led_vals: std_logic_vector (9 downto 0);
	signal counter_init: std_logic_vector (3 downto 0);
	signal counter_vals: std_logic_vector (3 downto 0);
	signal load_cnt , s0 , s1 , sil , sir , clk_10: std_logic;
	
	begin
	
	-- Implement datapath components
	led_init <= "0000000001";
	counter_init <= "1010";
	cnt0: counter4bit port map (clk , rstb , load_cnt ,
										counter_init , counter_vals );
										
	shft0: Bit10ShiftRegister port map (s0, s1, sil , sir , clk , rstb ,
													led_init , led_vals );
	sir <= led_vals (0);
	sil <= led_vals (9);
	clk_10 <= counter_vals (3) and counter_vals (1);
	leds <= led_vals;
	-- Implement state machine ----------------
	-- Flip -flops for state
	process(clk , rstb)
		begin
			if (rstb = '1') then
				current_state <= LEFT;
				
			elsif (clk 'event and clk = '1') then
				current_state <= next_state;
			end if;
	end process;
	
			-- Next state generation including outputs
	process(current_state, rstb , clk_10)
		begin
			-- Set defaults for all outputs
			s0 <= '0';
			s1 <= '0';
			load_cnt <= '0';
			case current_state is
				when IDLE =>
					next_state <= LEFT;
					s0 <= '1';
					s1 <= '0';
					load_cnt <= '1';
				when LEFT =>
					s0 <= '1';
					if (rstb = '1') then
						next_state <= IDLE;
					if (( clk_10 = '1') or (rstb = '1')) then
						next_state <= RIGHT;
						load_cnt <= '1';
					else
					next_state <= LEFT;
					end if;
					end if;
				when RIGHT =>
					s1 <= '1';
					if (rstb = '1') then
						next_state <= IDLE;
					else
					if (( clk_10 = '1') or (Reset = '1')) then
						next_state <= LEFT;
						load_cnt <= '1';
					else
					next_state <= RIGHT;
					end if;
					end if;
				when others =>
				next_state <= IDLE;
			end case;
	end process;
end Structure;