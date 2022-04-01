-- Digital Clock
library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_unsigned.all;

entity digitalClock is 
	port (KEY: in std_logic_vector (3 downto 0);
	CLOCK_50: in std_logic;
	SW: in std_logic_vector (7 downto 0);
	LEDR: out std_logic_vector (7 downto 0);
	HEX0, HEX1, HEX2, HEX3, HEX4, HEX5: out std_logic_vector (6 downto 0));
	
end digitalClock;


architecture Structure of digitalClock is


	component  fourBitCounter is
	port (reset, loadCount, enable, clk: in std_logic;
		switchValue: in std_logic_vector (3 downto 0);
			output: out std_logic_vector (3 downto 0));
	end component;
	
	component  sevenSegment is
	Port ( input : in STD_LOGIC_VECTOR (3 downto 0);
	hexOutput: out STD_LOGIC_VECTOR (6 downto 0));
	end component;
	
	component twentySixBitCounter is
	port (reset, clk: in std_logic;
			oneSecond: out std_logic);
	end component;
	
	
	--signasls go here**
	signal hex0Digits, hex1Digits, hex2Digits, hex3Digits, hex4Digits, hex5Digits, switchValue2,switchValue3,switchValue4, switchValue5: std_logic_vector(3 downto 0); 
	signal resetClock, oneSecond, incHex0Count, incHex1Count, incHex2Count,incHex3Count, incHex4Count, incHex5Count, resetHex0, resetHex1,resetHex2,
				resetHex3,resetHex4,resetHex5,enable2,enable3,enable4, enable5 : std_logic;
	
	-- end signals
	
	begin
	twentySixBitCounter1: twentySixBitCounter port map (resetClock, CLOCK_50, oneSecond);
	
	
	fourBitCounter1: fourBitCounter port map (resetHex0, incHex0Count, '0', oneSecond, "0000", hex0Digits);
	fourBitCounter2: fourBitCounter port map (resetHex1, incHex1Count, '0', oneSecond, "0000", hex1Digits);
	fourBitCounter3: fourBitCounter port map (resetHex2, incHex2Count, enable2, oneSecond, switchValue2, hex2Digits);
	fourBitCounter4: fourBitCounter port map (resetHex3, incHex3Count, enable3, oneSecond, switchValue3, hex3Digits);
	fourBitCounter5: fourBitCounter port map (resetHex4, incHex4Count, enable4, oneSecond, switchValue4, hex4Digits);
	fourBitCounter6: fourBitCounter port map (resetHex5, incHex5Count, enable5, oneSecond, switchValue5, hex5Digits);

	
	sevenSegment1: sevenSegment port map (hex0Digits, HEX0);
	sevenSegment2: sevenSegment port map (hex1Digits, HEX1);
	sevenSegment3: sevenSegment port map (hex2Digits, HEX2);
	sevenSegment4: sevenSegment port map (hex3Digits, HEX3);
	sevenSegment5: sevenSegment port map (hex4Digits, HEX4);
	sevenSegment6: sevenSegment port map (hex5Digits, HEX5);

	process(oneSecond, hex0Digits)
	begin
		resetClock <= '0'; --setting default value for reseting the clock
		LEDR(7 downto 0) <= SW(7 downto 0);
		if (KEY(0) = '0') then -- button to reset everything
			resetHex0 <= '1';
			resetHex1 <= '1';
			resetHex2 <= '1';
			resetHex3 <= '1';
			resetHex4 <= '1';
			resetHex5 <= '1';
			resetClock <= '1';
			
		elsif (KEY(2) = '0') then -- setting hours
			resetHex0 <= '1';
			resetHex1 <= '1';
			resetClock <= '1';
			enable4 <= '1';
			enable5 <= '1';

			if(SW(7 downto 4) < "0010") then --checking if second hand of the hour is less then 2
				switchValue4 <= SW(3 downto 0); --setting time values from switches
				switchValue5 <= SW(7 downto 4);
				
			elsif (SW(7 downto 4) <= "0010" and SW(3 downto 0) <= "0011") then --checking if hours are less than 24
				switchValue4 <= SW(3 downto 0); --setting time values from switches
				switchValue5 <= SW(7 downto 4);
				
			else
				switchValue4 <= "0011"; --setting maximum hour values (i.e 23)
				switchValue5 <= "0010";
				
			end if;		
		
		elsif (KEY(3) = '0') then -- setting minutes
			resetHex0 <= '1';
			resetHex1 <= '1';
			resetClock <= '1';
			enable2 <= '1';
			enable3 <= '1';
			
			if(SW(7 downto 4) <= "0101") then -- bounding the 'setting' of the second hand of minutes to 5 
				switchValue3 <= SW(7 downto 4);	
			else
				switchValue3 <= "0101"; --setting maximum minute value for second hand of minute(i.e 5)
			end if;
	
			if (SW(3 downto 0) <= "1001") then -- bounding the 'setting' of the first hand of minutes to 9 
				switchValue2 <= SW(3 downto 0);
			else
				switchValue2 <= "1001";	--setting maximum minute value for first hand of minute(i.e 9)
			end if;
			
		else
			if(oneSecond'event and oneSecond = '1') then
				resetClock <= '0';
				
				if (hex0Digits = "1000") then -- first display reaches 9, start counter of the second display and reset first display
					resetHex0 <= '1';
					incHex1Count <= '1';
					resetHex1 <= '0';
					
					if (hex1Digits = "0101") then -- 60sec have passed reset hex1 and increment minute
						resetHex1 <= '1';
						incHex2Count <= '1';
						
						if (hex2Digits = "1001") then -- 9 minutes have passed increment 10s of mins
							resetHex2 <= '1';
							incHex3Count <= '1';
							
							if (hex3Digits = "0101") then -- 60 mins have passed increment 1s of hr
								resetHex3 <= '1';
								incHex4Count <= '1';
								
								if (hex4Digits = "1001") then -- when 9th hr is reached reset HEX 4 and increment 10s of hr
									resetHex4 <= '1';
									incHex5Count <= '1';
									
								elsif (hex4Digits = "0011" and hex5Digits = "0010") then -- when the 24 hr mark is reached reset both hour HEXs
									resetHex4 <= '1';
									resetHex5 <= '1';
								end if;
								
							end if;
							
						end if;
						
					end if;
					
				else -- continue on counting seconds until 9 is reached
					-- also initializing values
					resetHex0 <= '0';
					incHex0count <= '1';
					incHex1Count <= '0';
					resetHex1 <= '0';
					incHex2Count <= '0';
					resetHex2 <= '0';
					incHex3Count <= '0';
					resetHex3 <= '0';
					incHex4Count <= '0';
					resetHex4 <= '0';
					incHex5Count <= '0';
					resetHex5 <= '0';
					resetClock <= '0';
					enable2 <= '0';
					enable3 <= '0';
					enable4 <= '0';
					enable5 <= '0';
					switchValue2 <= "0000";
					switchValue3 <= "0000";
					switchValue4 <= "0000";
					switchValue5 <= "0000";					
				end if;
			end if;
		end if;
	end process;
end Structure;