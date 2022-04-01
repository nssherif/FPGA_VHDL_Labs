library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_unsigned.all;


entity trafficLight is
	port (CLOCK_50: in std_logic;
			SW: in std_logic_vector(9 downto 0);
			LEDR: out std_logic_vector(9 downto 0);
			HEX0, HEX2, HEX3, HEX4, HEX5: out std_logic_vector(6 downto 0));
end trafficLight;

architecture structure of trafficLight is

	component twentySixBitCounter is
		port (reset, clk: in std_logic;
				oneSecond: out std_logic);
	end component;
	
	component sevenSegment is
		Port ( input : in STD_LOGIC_VECTOR (4 downto 0);
				reset : in STD_LOGIC;
				hexOutput: out STD_LOGIC_VECTOR (6 downto 0));
	end component;

	component fiveBitCounter is
		port (reset, enable, clk: in std_logic;
				output: out std_logic_vector(4 downto 0));
	end component;
	
	component fourBitDownCounter is
		port (reset, enable, clk: in std_logic;
				output: out std_logic_vector(4 downto 0));
	end component;
	
	signal oneSecond, NS_car_waiting, EW_car_waiting: std_logic;
	
	--creating user defined types for state checking
	type traffic_lights_state_type is (EW_GREEN, EW_YELLOw, NS_LEFT, NS_GREEN, NS_YELLOW, 
	EW_LEFT, EW_End_State, EW_Buffer_State, NS_End_State, NS_Buffer_State);
	signal traffic_lights_state, next_state: traffic_lights_state_type := EW_GREEN;

	--creating internal signals for each place we check 20 seconds
	signal resetTwentySecond, twentySecondReached, enableTwentySecond: std_logic;
	signal twentySecond: std_logic_vector (4 downto 0);
	
	--creating internal signals for each place we check 10 seconds
	signal resetTenSecond, tenSecondReached, enableTenSecond: std_logic;
	signal tenSecond: std_logic_vector (4 downto 0);
	
	--creating internal signal for each place we check 3 seconds
	signal resetThreeSecond, threeSecondReached, enableThreeSecond: std_logic;
	signal threeSecond: std_logic_vector (4 downto 0);
	
	--creating internal signal for each place we check 7 seconds
	signal resetSevenSecond, sevenSecondReached, enableSevenSecond: std_logic;
	signal sevenSecond: std_logic_vector (4 downto 0);
	
	--creating internal signal for counting down from 9 - 0
	signal resetDownCount, enableDownCount,zeroSecondsReached, resetHEXVal: std_logic;
	
	
	--creating internal signals for HEX values
	signal hex0Value, HEX2Vals, HEX3Vals, HEX4Vals, HEX5Vals: std_logic_vector (4 downto 0);
	
begin

	twentySixBitCounter1: twentySixBitCounter port map ('0', CLOCK_50, oneSecond);
	
	--counter port maps
	countTenSecond: fiveBitCounter port map (resetTenSecond, enableTenSecond, oneSecond, tenSecond);
	counttewntySecond: fiveBitCounter port map (resetTwentySecond, enableTwentySecond, oneSecond, twentySecond);
	countThreeSecond: fiveBitCounter port map (resetThreeSecond, enableThreeSecond, oneSecond, threeSecond);
	countSevenSecond: fiveBitCounter port map (resetSevenSecond, enableSevenSecond, oneSecond, sevenSecond);
	downCounter: fourBitDownCounter port map (resetDownCount, enableDownCount, oneSecond, hex0Value);
	
	--display port maps
	HexValues1: sevenSegment port map (hex0Value, resetHEXVal, HEX0);
	
	HexValues3: sevenSegment port map (HEX2Vals, '0', HEX2);
	HexValues4: sevenSegment port map (HEX3Vals, '0', HEX3);
	HexValues5: sevenSegment port map (HEX4Vals, '0', HEX4);
	HexValues6: sevenSegment port map (HEX5Vals, '0', HEX5);
	
--	firstDisplay: sevenSegment port map (hex0Value, HEX0);
--	secondDisplay: sevenSegment port map (hex1Value, HEX1);
	
	twentySecondReached <= '1' when twentySecond = "01111" else '0';
	tenSecondReached <= '1' when tenSecond = "01001" else '0';
	threeSecondReached <= '1' when threeSecond = "00011" else '0';
	sevenSecondReached <= '1' when sevenSecond = "00111" else '0';
	zeroSecondsReached <= '1' when hex0Value = "0000" else '0';
	NS_car_waiting <= SW(1);
	EW_car_waiting <= SW(2);
	
	process (oneSecond)
	begin
		if ( oneSecond'event and oneSecond = '1') then
			traffic_lights_state <= next_state ;
		end if ;
	end process ;
	
	process (traffic_lights_state, tenSecondReached, NS_car_waiting)
	begin
		LEDR(9 downto 0) <= "0000000000";
		enableTenSecond <= '0';
		resetTenSecond <= '0';
		enableThreeSecond <= '0';
		resetThreeSecond <= '0';
		enableDownCount <= '0';
		resetDownCount <= '0';
		enableSevenSecond <= '0';
		resetSevenSecond <= '0';
		resetHEXVal <= '1';
			case traffic_lights_state is
				when EW_GREEN => 
					LEDR(1) <= '1'; -- EW is Green
					LEDR(7) <= '1'; -- NS is Red
					LEDR(8) <= '1'; -- EW pedestrian signal is ON
					HEX5Vals <= "01011"; --E
					HEX4Vals <= "01100"; --U
					HEX3Vals <= "01010"; --G
					HEX2Vals <= "10010"; --o	
					enableTenSecond <= '1';
					if (tenSecondReached = '1') then -- if ten seconds have reached
						if (NS_car_waiting = '1') then
							next_state <= EW_End_State;
							resetTenSecond <= '1';		
						else
							resetTenSecond <= '1';
							next_state <= EW_GREEN;
						end if;
					else
						next_state <= EW_GREEN;
					end if;
	
				when EW_End_State =>
					LEDR(1) <= '1'; -- EW is Green
					LEDR(7) <= '1'; -- NS is Red
					LEDR(8) <= '1'; -- EW pedestrian signal is ON
					HEX5Vals <= "10000"; --C
					HEX4Vals <= "10001"; --A
					HEX3Vals <= "01100"; --U
					HEX2Vals <= "01101"; --T
					resetHEXVal <='0';
					enableDownCount <= '1';
					if (zeroSecondsReached = '1') then -- checking if timer reached zero
						next_state <= EW_Buffer_State;
						resetHEXVal <='1';
						resetDownCount <= '1';
					else
						next_state <= EW_End_State;
					end if;
				
				when EW_Buffer_State =>
					LEDR(1) <= '1'; -- EW is Green
					LEDR(7) <= '1'; -- NS is Red
					HEX5Vals <= "00101"; --S
					HEX4Vals <= "01101"; --T
					HEX3Vals <= "10010"; --o
					HEX2Vals <= "01110"; --P
					enableThreeSecond <= '1';
					if (threeSecondReached = '1') then -- checking if buffer time has reached
						next_state <= EW_YELLOW;
						resetThreeSecond <= '1';
					else
						next_state <= EW_Buffer_State;
					end if;
					
				when EW_YELLOW => 
					LEDR(2) <= '1'; -- EW is Yellow
					LEDR(7) <= '1'; -- NS is Red
					HEX5Vals <= "00101"; --S
					HEX4Vals <= "01101"; --T
					HEX3Vals <= "10010"; --o
					HEX2Vals <= "01110"; --P
					enableThreeSecond <= '1';
					if (threeSecondReached = '1') then -- check if 3 secs passed
						next_state <= NS_LEFT;
						resetThreeSecond <= '1';
					else
						next_state <= EW_YELLOW;
					end if;
				when NS_LEFT =>
					LEDR(3) <= '1'; -- EW is Red
					LEDR(4) <= '1'; -- NS left is On
					LEDR(7) <= '1'; -- NS is Red
					HEX5Vals <= "01111"; --N
					HEX4Vals <= "00101"; --S
					HEX3Vals <= "10011"; --L
					HEX2Vals <= "10100"; --F
					enableSevenSecond <= '1';
					if (sevenSecondReached = '1') then -- check if 3 secs passed
						next_state <= NS_GREEN;
						resetSevenSecond <= '1';
					else
						next_state <= NS_LEFT;
					end if;
				when NS_GREEN =>
					LEDR(3) <= '1'; -- EW is Red
					LEDR(5) <= '1'; -- NS is Green
					LEDR(9) <= '1'; -- NS pedestrian signal is ON
					HEX5Vals <= "01111"; --N
					HEX4Vals <= "00101"; --S
					HEX3Vals <= "01010"; --G
					HEX2Vals <= "10010"; --o
					enableTenSecond <= '1';
					if (tenSecondReached = '1') then -- if ten seconds have reached
						if (EW_car_waiting = '1') then
							next_state <= NS_End_State;
							resetTenSecond <= '1';		
						else
							resetTenSecond <= '1';
							next_state <= NS_GREEN;
						end if;
					else
						next_state <= NS_GREEN;
					end if;
				
				when NS_End_State =>
					LEDR(3) <= '1'; -- EW is Red
					LEDR(5) <= '1'; -- NS is Green
					LEDR(9) <= '1'; -- NS pedestrian signal is ON
					HEX5Vals <= "10000"; --C
					HEX4Vals <= "10001"; --A
					HEX3Vals <= "01100"; --U
					HEX2Vals <= "01101"; --T
					resetHEXVal <='0';
					enableDownCount <= '1';
					if (zeroSecondsReached = '1') then -- checking if timer reached zero
						next_state <= NS_Buffer_State;
						resetHEXVal <='1';
						resetDownCount <= '1';
					else
						next_state <= NS_End_State;
					end if;
				
				when NS_Buffer_State =>
					LEDR(3) <= '1'; -- EW is Red
					LEDR(5) <= '1'; -- NS is Green
					HEX5Vals <= "00101"; --S
					HEX4Vals <= "01101"; --T
					HEX3Vals <= "10010"; --o
					HEX2Vals <= "01110"; --P
					enableThreeSecond <= '1';
					if (threeSecondReached = '1') then -- checking if buffer time has reached
						next_state <= NS_YELLOW;
						resetThreeSecond <= '1';
					else
						next_state <= NS_Buffer_State;
					end if;
					
				when NS_YELLOW =>
					LEDR(3) <= '1'; -- EW is Red
					LEDR(6) <= '1'; -- NS Yellow
					HEX5Vals <= "00101"; --S
					HEX4Vals <= "01101"; --T
					HEX3Vals <= "10010"; --o
					HEX2Vals <= "01110"; --P
					enableThreeSecond <= '1';
					if (threeSecondReached = '1') then -- check if 3 secs passed
						next_state <= EW_LEFT;
						resetThreeSecond <= '1';
					else
						next_state <= NS_YELLOW;
					end if;
				
				when EW_LEFT =>
					LEDR(3) <= '1'; -- EW is Red
					LEDR(0) <= '1'; -- EW left is On
					LEDR(7) <= '1'; -- NS is Red
					HEX5Vals <= "01011"; --E
					HEX4Vals <= "01100"; --U
					HEX3Vals <= "10011"; --L
					HEX2Vals <= "10100"; --F
					enableSevenSecond <= '1';
					if (sevenSecondReached = '1') then -- check if 3 secs passed
						next_state <= EW_GREEN;
						resetSevenSecond <= '1';
					else
						next_state <= EW_LEFT;
					end if;
					
			end case;

	end process; 


end structure;