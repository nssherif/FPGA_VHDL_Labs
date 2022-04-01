-- Copyright (C) 2016  Intel Corporation. All rights reserved.
-- Your use of Intel Corporation's design tools, logic functions 
-- and other software and tools, and its AMPP partner logic 
-- functions, and any output files from any of the foregoing 
-- (including device programming or simulation files), and any 
-- associated documentation or information are expressly subject 
-- to the terms and conditions of the Intel Program License 
-- Subscription Agreement, the Intel Quartus Prime License Agreement,
-- the Intel MegaCore Function License Agreement, or other 
-- applicable license agreement, including, without limitation, 
-- that your use is for the sole purpose of programming logic 
-- devices manufactured by Intel and sold by Intel or its 
-- authorized distributors.  Please refer to the applicable 
-- agreement for further details.

-- VENDOR "Altera"
-- PROGRAM "Quartus Prime"
-- VERSION "Version 16.1.1 Build 200 11/30/2016 SJ Lite Edition"

-- DATE "03/16/2022 15:14:36"

-- 
-- Device: Altera 5CSEMA5F31C6 Package FBGA896
-- 

-- 
-- This VHDL file should be used for ModelSim-Altera (VHDL) only
-- 

LIBRARY ALTERA;
LIBRARY ALTERA_LNSIM;
LIBRARY CYCLONEV;
LIBRARY IEEE;
USE ALTERA.ALTERA_PRIMITIVES_COMPONENTS.ALL;
USE ALTERA_LNSIM.ALTERA_LNSIM_COMPONENTS.ALL;
USE CYCLONEV.CYCLONEV_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	digitalClock IS
    PORT (
	KEY : IN std_logic_vector(3 DOWNTO 0);
	CLOCK_50 : IN std_logic;
	SW : IN std_logic_vector(7 DOWNTO 0);
	LEDR : BUFFER std_logic_vector(7 DOWNTO 0);
	HEX0 : BUFFER std_logic_vector(6 DOWNTO 0);
	HEX1 : BUFFER std_logic_vector(6 DOWNTO 0);
	HEX2 : BUFFER std_logic_vector(6 DOWNTO 0);
	HEX3 : BUFFER std_logic_vector(6 DOWNTO 0);
	HEX4 : BUFFER std_logic_vector(6 DOWNTO 0);
	HEX5 : BUFFER std_logic_vector(6 DOWNTO 0)
	);
END digitalClock;

-- Design Ports Information
-- KEY[1]	=>  Location: PIN_AA15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDR[0]	=>  Location: PIN_V16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDR[1]	=>  Location: PIN_W16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDR[2]	=>  Location: PIN_V17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDR[3]	=>  Location: PIN_V18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDR[4]	=>  Location: PIN_W17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDR[5]	=>  Location: PIN_W19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDR[6]	=>  Location: PIN_Y19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDR[7]	=>  Location: PIN_W20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX0[0]	=>  Location: PIN_AE26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX0[1]	=>  Location: PIN_AE27,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX0[2]	=>  Location: PIN_AE28,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX0[3]	=>  Location: PIN_AG27,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX0[4]	=>  Location: PIN_AF28,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX0[5]	=>  Location: PIN_AG28,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX0[6]	=>  Location: PIN_AH28,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX1[0]	=>  Location: PIN_AJ29,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX1[1]	=>  Location: PIN_AH29,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX1[2]	=>  Location: PIN_AH30,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX1[3]	=>  Location: PIN_AG30,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX1[4]	=>  Location: PIN_AF29,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX1[5]	=>  Location: PIN_AF30,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX1[6]	=>  Location: PIN_AD27,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX2[0]	=>  Location: PIN_AB23,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX2[1]	=>  Location: PIN_AE29,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX2[2]	=>  Location: PIN_AD29,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX2[3]	=>  Location: PIN_AC28,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX2[4]	=>  Location: PIN_AD30,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX2[5]	=>  Location: PIN_AC29,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX2[6]	=>  Location: PIN_AC30,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX3[0]	=>  Location: PIN_AD26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX3[1]	=>  Location: PIN_AC27,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX3[2]	=>  Location: PIN_AD25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX3[3]	=>  Location: PIN_AC25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX3[4]	=>  Location: PIN_AB28,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX3[5]	=>  Location: PIN_AB25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX3[6]	=>  Location: PIN_AB22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX4[0]	=>  Location: PIN_AA24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX4[1]	=>  Location: PIN_Y23,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX4[2]	=>  Location: PIN_Y24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX4[3]	=>  Location: PIN_W22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX4[4]	=>  Location: PIN_W24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX4[5]	=>  Location: PIN_V23,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX4[6]	=>  Location: PIN_W25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX5[0]	=>  Location: PIN_V25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX5[1]	=>  Location: PIN_AA28,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX5[2]	=>  Location: PIN_Y27,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX5[3]	=>  Location: PIN_AB27,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX5[4]	=>  Location: PIN_AB26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX5[5]	=>  Location: PIN_AA26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX5[6]	=>  Location: PIN_AA25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[0]	=>  Location: PIN_AB12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[1]	=>  Location: PIN_AC12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[2]	=>  Location: PIN_AF9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[3]	=>  Location: PIN_AF10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[4]	=>  Location: PIN_AD11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[5]	=>  Location: PIN_AD12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[6]	=>  Location: PIN_AE11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[7]	=>  Location: PIN_AC9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- KEY[3]	=>  Location: PIN_Y16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- KEY[0]	=>  Location: PIN_AA14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- KEY[2]	=>  Location: PIN_W15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- CLOCK_50	=>  Location: PIN_AF14,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF digitalClock IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_KEY : std_logic_vector(3 DOWNTO 0);
SIGNAL ww_CLOCK_50 : std_logic;
SIGNAL ww_SW : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_LEDR : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_HEX0 : std_logic_vector(6 DOWNTO 0);
SIGNAL ww_HEX1 : std_logic_vector(6 DOWNTO 0);
SIGNAL ww_HEX2 : std_logic_vector(6 DOWNTO 0);
SIGNAL ww_HEX3 : std_logic_vector(6 DOWNTO 0);
SIGNAL ww_HEX4 : std_logic_vector(6 DOWNTO 0);
SIGNAL ww_HEX5 : std_logic_vector(6 DOWNTO 0);
SIGNAL \KEY[1]~input_o\ : std_logic;
SIGNAL \~QUARTUS_CREATED_GND~I_combout\ : std_logic;
SIGNAL \SW[0]~input_o\ : std_logic;
SIGNAL \SW[1]~input_o\ : std_logic;
SIGNAL \SW[2]~input_o\ : std_logic;
SIGNAL \SW[3]~input_o\ : std_logic;
SIGNAL \SW[4]~input_o\ : std_logic;
SIGNAL \SW[5]~input_o\ : std_logic;
SIGNAL \SW[6]~input_o\ : std_logic;
SIGNAL \SW[7]~input_o\ : std_logic;
SIGNAL \CLOCK_50~input_o\ : std_logic;
SIGNAL \CLOCK_50~inputCLKENA0_outclk\ : std_logic;
SIGNAL \twentySixBitCounter1|Add0~29_sumout\ : std_logic;
SIGNAL \KEY[2]~input_o\ : std_logic;
SIGNAL \KEY[3]~input_o\ : std_logic;
SIGNAL \KEY[0]~input_o\ : std_logic;
SIGNAL \resetHex0~0_combout\ : std_logic;
SIGNAL \twentySixBitCounter1|Add0~30\ : std_logic;
SIGNAL \twentySixBitCounter1|Add0~33_sumout\ : std_logic;
SIGNAL \twentySixBitCounter1|Add0~34\ : std_logic;
SIGNAL \twentySixBitCounter1|Add0~37_sumout\ : std_logic;
SIGNAL \twentySixBitCounter1|Add0~38\ : std_logic;
SIGNAL \twentySixBitCounter1|Add0~41_sumout\ : std_logic;
SIGNAL \twentySixBitCounter1|Add0~42\ : std_logic;
SIGNAL \twentySixBitCounter1|Add0~45_sumout\ : std_logic;
SIGNAL \twentySixBitCounter1|Add0~46\ : std_logic;
SIGNAL \twentySixBitCounter1|Add0~49_sumout\ : std_logic;
SIGNAL \twentySixBitCounter1|Add0~50\ : std_logic;
SIGNAL \twentySixBitCounter1|Add0~53_sumout\ : std_logic;
SIGNAL \twentySixBitCounter1|Add0~54\ : std_logic;
SIGNAL \twentySixBitCounter1|Add0~57_sumout\ : std_logic;
SIGNAL \twentySixBitCounter1|Add0~58\ : std_logic;
SIGNAL \twentySixBitCounter1|Add0~61_sumout\ : std_logic;
SIGNAL \twentySixBitCounter1|Add0~62\ : std_logic;
SIGNAL \twentySixBitCounter1|Add0~13_sumout\ : std_logic;
SIGNAL \twentySixBitCounter1|Add0~14\ : std_logic;
SIGNAL \twentySixBitCounter1|Add0~65_sumout\ : std_logic;
SIGNAL \twentySixBitCounter1|Add0~66\ : std_logic;
SIGNAL \twentySixBitCounter1|Add0~69_sumout\ : std_logic;
SIGNAL \twentySixBitCounter1|Add0~70\ : std_logic;
SIGNAL \twentySixBitCounter1|Add0~73_sumout\ : std_logic;
SIGNAL \twentySixBitCounter1|Add0~74\ : std_logic;
SIGNAL \twentySixBitCounter1|Add0~77_sumout\ : std_logic;
SIGNAL \twentySixBitCounter1|Add0~78\ : std_logic;
SIGNAL \twentySixBitCounter1|Add0~81_sumout\ : std_logic;
SIGNAL \twentySixBitCounter1|tempCount[14]~DUPLICATE_q\ : std_logic;
SIGNAL \twentySixBitCounter1|Add0~82\ : std_logic;
SIGNAL \twentySixBitCounter1|Add0~85_sumout\ : std_logic;
SIGNAL \twentySixBitCounter1|Add0~86\ : std_logic;
SIGNAL \twentySixBitCounter1|Add0~89_sumout\ : std_logic;
SIGNAL \twentySixBitCounter1|Add0~90\ : std_logic;
SIGNAL \twentySixBitCounter1|Add0~93_sumout\ : std_logic;
SIGNAL \twentySixBitCounter1|tempCount[17]~DUPLICATE_q\ : std_logic;
SIGNAL \twentySixBitCounter1|Add0~94\ : std_logic;
SIGNAL \twentySixBitCounter1|Add0~97_sumout\ : std_logic;
SIGNAL \twentySixBitCounter1|Add0~98\ : std_logic;
SIGNAL \twentySixBitCounter1|Add0~101_sumout\ : std_logic;
SIGNAL \twentySixBitCounter1|Add0~102\ : std_logic;
SIGNAL \twentySixBitCounter1|Add0~1_sumout\ : std_logic;
SIGNAL \twentySixBitCounter1|Add0~2\ : std_logic;
SIGNAL \twentySixBitCounter1|Add0~5_sumout\ : std_logic;
SIGNAL \twentySixBitCounter1|Equal0~3_combout\ : std_logic;
SIGNAL \twentySixBitCounter1|tempCount[11]~DUPLICATE_q\ : std_logic;
SIGNAL \twentySixBitCounter1|Equal0~2_combout\ : std_logic;
SIGNAL \twentySixBitCounter1|tempCount[4]~DUPLICATE_q\ : std_logic;
SIGNAL \twentySixBitCounter1|Equal0~1_combout\ : std_logic;
SIGNAL \twentySixBitCounter1|Add0~6\ : std_logic;
SIGNAL \twentySixBitCounter1|Add0~9_sumout\ : std_logic;
SIGNAL \twentySixBitCounter1|Add0~10\ : std_logic;
SIGNAL \twentySixBitCounter1|Add0~17_sumout\ : std_logic;
SIGNAL \twentySixBitCounter1|Add0~18\ : std_logic;
SIGNAL \twentySixBitCounter1|Add0~21_sumout\ : std_logic;
SIGNAL \twentySixBitCounter1|Add0~22\ : std_logic;
SIGNAL \twentySixBitCounter1|Add0~25_sumout\ : std_logic;
SIGNAL \twentySixBitCounter1|tempCount[25]~DUPLICATE_q\ : std_logic;
SIGNAL \twentySixBitCounter1|Equal0~0_combout\ : std_logic;
SIGNAL \twentySixBitCounter1|Equal0~4_combout\ : std_logic;
SIGNAL \twentySixBitCounter1|reached~q\ : std_logic;
SIGNAL \fourBitCounter1|tempCount~0_combout\ : std_logic;
SIGNAL \fourBitCounter1|tempCount~1_combout\ : std_logic;
SIGNAL \fourBitCounter1|tempCount~2_combout\ : std_logic;
SIGNAL \Equal0~0_combout\ : std_logic;
SIGNAL \resetHex0~1_combout\ : std_logic;
SIGNAL \resetHex0~q\ : std_logic;
SIGNAL \fourBitCounter1|tempCount~3_combout\ : std_logic;
SIGNAL \sevenSegment1|Mux6~0_combout\ : std_logic;
SIGNAL \sevenSegment1|Mux5~0_combout\ : std_logic;
SIGNAL \sevenSegment1|Mux4~0_combout\ : std_logic;
SIGNAL \sevenSegment1|Mux3~0_combout\ : std_logic;
SIGNAL \sevenSegment1|Mux2~0_combout\ : std_logic;
SIGNAL \sevenSegment1|Mux1~0_combout\ : std_logic;
SIGNAL \sevenSegment1|Mux0~0_combout\ : std_logic;
SIGNAL \incHex1Count~q\ : std_logic;
SIGNAL \fourBitCounter2|tempCount~0_combout\ : std_logic;
SIGNAL \fourBitCounter2|tempCount~1_combout\ : std_logic;
SIGNAL \fourBitCounter2|tempCount~3_combout\ : std_logic;
SIGNAL \Equal1~0_combout\ : std_logic;
SIGNAL \resetHex1~0_combout\ : std_logic;
SIGNAL \resetHex1~q\ : std_logic;
SIGNAL \fourBitCounter2|tempCount~2_combout\ : std_logic;
SIGNAL \sevenSegment2|Mux6~0_combout\ : std_logic;
SIGNAL \sevenSegment2|Mux5~0_combout\ : std_logic;
SIGNAL \sevenSegment2|Mux4~0_combout\ : std_logic;
SIGNAL \sevenSegment2|Mux3~0_combout\ : std_logic;
SIGNAL \sevenSegment2|Mux2~0_combout\ : std_logic;
SIGNAL \sevenSegment2|Mux1~0_combout\ : std_logic;
SIGNAL \sevenSegment2|Mux0~0_combout\ : std_logic;
SIGNAL \enable2~feeder_combout\ : std_logic;
SIGNAL \enable2~0_combout\ : std_logic;
SIGNAL \switchValue2[3]~21_combout\ : std_logic;
SIGNAL \enable2~q\ : std_logic;
SIGNAL \switchValue2[3]~13_combout\ : std_logic;
SIGNAL \switchValue2[3]~_emulated_q\ : std_logic;
SIGNAL \switchValue2[3]~14_combout\ : std_logic;
SIGNAL \incHex2Count~0_combout\ : std_logic;
SIGNAL \incHex2Count~q\ : std_logic;
SIGNAL \switchValue2~25_combout\ : std_logic;
SIGNAL \switchValue2[0]~1_combout\ : std_logic;
SIGNAL \switchValue2[0]~_emulated_q\ : std_logic;
SIGNAL \switchValue2[0]~2_combout\ : std_logic;
SIGNAL \fourBitCounter3|tempCount~0_combout\ : std_logic;
SIGNAL \switchValue2~26_combout\ : std_logic;
SIGNAL \switchValue2[1]~5_combout\ : std_logic;
SIGNAL \switchValue2[1]~_emulated_q\ : std_logic;
SIGNAL \switchValue2[1]~6_combout\ : std_logic;
SIGNAL \fourBitCounter3|tempCount~1_combout\ : std_logic;
SIGNAL \fourBitCounter3|Add0~1_combout\ : std_logic;
SIGNAL \fourBitCounter3|tempCount~3_combout\ : std_logic;
SIGNAL \resetHex2~0_combout\ : std_logic;
SIGNAL \resetHex2~1_combout\ : std_logic;
SIGNAL \resetHex2~2_combout\ : std_logic;
SIGNAL \resetHex2~q\ : std_logic;
SIGNAL \fourBitCounter3|Add0~0_combout\ : std_logic;
SIGNAL \switchValue2~27_combout\ : std_logic;
SIGNAL \switchValue2[2]~9_combout\ : std_logic;
SIGNAL \switchValue2[2]~_emulated_q\ : std_logic;
SIGNAL \switchValue2[2]~10_combout\ : std_logic;
SIGNAL \fourBitCounter3|tempCount~2_combout\ : std_logic;
SIGNAL \sevenSegment3|Mux6~0_combout\ : std_logic;
SIGNAL \sevenSegment3|Mux5~0_combout\ : std_logic;
SIGNAL \sevenSegment3|Mux4~0_combout\ : std_logic;
SIGNAL \sevenSegment3|Mux3~0_combout\ : std_logic;
SIGNAL \sevenSegment3|Mux2~0_combout\ : std_logic;
SIGNAL \sevenSegment3|Mux1~0_combout\ : std_logic;
SIGNAL \sevenSegment3|Mux0~0_combout\ : std_logic;
SIGNAL \incHex3Count~0_combout\ : std_logic;
SIGNAL \incHex3Count~q\ : std_logic;
SIGNAL \switchValue3~18_combout\ : std_logic;
SIGNAL \switchValue3[0]~1_combout\ : std_logic;
SIGNAL \switchValue3[0]~_emulated_q\ : std_logic;
SIGNAL \switchValue3[0]~2_combout\ : std_logic;
SIGNAL \fourBitCounter4|tempCount~0_combout\ : std_logic;
SIGNAL \switchValue3~19_combout\ : std_logic;
SIGNAL \switchValue3[1]~5_combout\ : std_logic;
SIGNAL \switchValue3[1]~_emulated_q\ : std_logic;
SIGNAL \switchValue3[1]~6_combout\ : std_logic;
SIGNAL \fourBitCounter4|tempCount~1_combout\ : std_logic;
SIGNAL \fourBitCounter4|Add0~0_combout\ : std_logic;
SIGNAL \fourBitCounter4|tempCount~3_combout\ : std_logic;
SIGNAL \resetHex3~0_combout\ : std_logic;
SIGNAL \resetHex3~1_combout\ : std_logic;
SIGNAL \resetHex3~q\ : std_logic;
SIGNAL \switchValue3~20_combout\ : std_logic;
SIGNAL \switchValue3[2]~9_combout\ : std_logic;
SIGNAL \switchValue3[2]~_emulated_q\ : std_logic;
SIGNAL \switchValue3[2]~10_combout\ : std_logic;
SIGNAL \fourBitCounter4|tempCount~2_combout\ : std_logic;
SIGNAL \sevenSegment4|Mux6~0_combout\ : std_logic;
SIGNAL \sevenSegment4|Mux5~0_combout\ : std_logic;
SIGNAL \sevenSegment4|Mux4~0_combout\ : std_logic;
SIGNAL \sevenSegment4|Mux3~0_combout\ : std_logic;
SIGNAL \sevenSegment4|Mux2~0_combout\ : std_logic;
SIGNAL \sevenSegment4|Mux1~0_combout\ : std_logic;
SIGNAL \sevenSegment4|Mux0~0_combout\ : std_logic;
SIGNAL \enable4~feeder_combout\ : std_logic;
SIGNAL \enable4~0_combout\ : std_logic;
SIGNAL \switchValue4[3]~21_combout\ : std_logic;
SIGNAL \enable4~q\ : std_logic;
SIGNAL \incHex4Count~0_combout\ : std_logic;
SIGNAL \incHex4Count~q\ : std_logic;
SIGNAL \switchValue4~26_combout\ : std_logic;
SIGNAL \switchValue4~28_combout\ : std_logic;
SIGNAL \switchValue4[1]~5_combout\ : std_logic;
SIGNAL \switchValue4[1]~_emulated_q\ : std_logic;
SIGNAL \switchValue4[1]~6_combout\ : std_logic;
SIGNAL \fourBitCounter5|tempCount~1_combout\ : std_logic;
SIGNAL \fourBitCounter5|Add0~0_combout\ : std_logic;
SIGNAL \switchValue4~29_combout\ : std_logic;
SIGNAL \switchValue4[2]~9_combout\ : std_logic;
SIGNAL \switchValue4[2]~_emulated_q\ : std_logic;
SIGNAL \switchValue4[2]~10_combout\ : std_logic;
SIGNAL \fourBitCounter5|tempCount~2_combout\ : std_logic;
SIGNAL \fourBitCounter5|Add0~1_combout\ : std_logic;
SIGNAL \switchValue4~30_combout\ : std_logic;
SIGNAL \switchValue4[3]~13_combout\ : std_logic;
SIGNAL \switchValue4[3]~_emulated_q\ : std_logic;
SIGNAL \switchValue4[3]~14_combout\ : std_logic;
SIGNAL \fourBitCounter5|tempCount~3_combout\ : std_logic;
SIGNAL \resetHex4~0_combout\ : std_logic;
SIGNAL \resetHex3~2_combout\ : std_logic;
SIGNAL \resetHex5~0_combout\ : std_logic;
SIGNAL \resetHex5~q\ : std_logic;
SIGNAL \incHex5Count~0_combout\ : std_logic;
SIGNAL \incHex5Count~q\ : std_logic;
SIGNAL \switchValue5~12_combout\ : std_logic;
SIGNAL \switchValue5[0]~1_combout\ : std_logic;
SIGNAL \switchValue5[0]~_emulated_q\ : std_logic;
SIGNAL \switchValue5[0]~2_combout\ : std_logic;
SIGNAL \fourBitCounter6|tempCount~0_combout\ : std_logic;
SIGNAL \switchValue5~13_combout\ : std_logic;
SIGNAL \switchValue5[1]~5_combout\ : std_logic;
SIGNAL \switchValue5[1]~_emulated_q\ : std_logic;
SIGNAL \switchValue5[1]~6_combout\ : std_logic;
SIGNAL \fourBitCounter6|tempCount~1_combout\ : std_logic;
SIGNAL \fourBitCounter6|tempCount~2_combout\ : std_logic;
SIGNAL \process_0~0_combout\ : std_logic;
SIGNAL \fourBitCounter6|Add0~0_combout\ : std_logic;
SIGNAL \fourBitCounter6|tempCount~3_combout\ : std_logic;
SIGNAL \process_0~1_combout\ : std_logic;
SIGNAL \resetHex4~1_combout\ : std_logic;
SIGNAL \resetHex4~q\ : std_logic;
SIGNAL \switchValue4~27_combout\ : std_logic;
SIGNAL \switchValue4[0]~1_combout\ : std_logic;
SIGNAL \switchValue4[0]~_emulated_q\ : std_logic;
SIGNAL \switchValue4[0]~2_combout\ : std_logic;
SIGNAL \fourBitCounter5|tempCount~0_combout\ : std_logic;
SIGNAL \sevenSegment5|Mux6~0_combout\ : std_logic;
SIGNAL \sevenSegment5|Mux5~0_combout\ : std_logic;
SIGNAL \sevenSegment5|Mux4~0_combout\ : std_logic;
SIGNAL \sevenSegment5|Mux3~0_combout\ : std_logic;
SIGNAL \sevenSegment5|Mux2~0_combout\ : std_logic;
SIGNAL \sevenSegment5|Mux1~0_combout\ : std_logic;
SIGNAL \sevenSegment5|Mux0~0_combout\ : std_logic;
SIGNAL \sevenSegment6|Mux6~0_combout\ : std_logic;
SIGNAL \sevenSegment6|Mux5~0_combout\ : std_logic;
SIGNAL \sevenSegment6|Mux4~0_combout\ : std_logic;
SIGNAL \sevenSegment6|Mux3~0_combout\ : std_logic;
SIGNAL \sevenSegment6|Mux2~0_combout\ : std_logic;
SIGNAL \sevenSegment6|Mux1~0_combout\ : std_logic;
SIGNAL \sevenSegment6|Mux0~0_combout\ : std_logic;
SIGNAL \twentySixBitCounter1|tempCount\ : std_logic_vector(25 DOWNTO 0);
SIGNAL \fourBitCounter6|tempCount\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \fourBitCounter1|tempCount\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \fourBitCounter2|tempCount\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \fourBitCounter3|tempCount\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \fourBitCounter4|tempCount\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \fourBitCounter5|tempCount\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \twentySixBitCounter1|ALT_INV_tempCount[17]~DUPLICATE_q\ : std_logic;
SIGNAL \twentySixBitCounter1|ALT_INV_tempCount[14]~DUPLICATE_q\ : std_logic;
SIGNAL \twentySixBitCounter1|ALT_INV_tempCount[11]~DUPLICATE_q\ : std_logic;
SIGNAL \twentySixBitCounter1|ALT_INV_tempCount[4]~DUPLICATE_q\ : std_logic;
SIGNAL \twentySixBitCounter1|ALT_INV_tempCount[25]~DUPLICATE_q\ : std_logic;
SIGNAL \ALT_INV_KEY[2]~input_o\ : std_logic;
SIGNAL \ALT_INV_KEY[0]~input_o\ : std_logic;
SIGNAL \ALT_INV_KEY[3]~input_o\ : std_logic;
SIGNAL \ALT_INV_SW[7]~input_o\ : std_logic;
SIGNAL \ALT_INV_SW[6]~input_o\ : std_logic;
SIGNAL \ALT_INV_SW[5]~input_o\ : std_logic;
SIGNAL \ALT_INV_SW[4]~input_o\ : std_logic;
SIGNAL \ALT_INV_SW[3]~input_o\ : std_logic;
SIGNAL \ALT_INV_SW[2]~input_o\ : std_logic;
SIGNAL \ALT_INV_SW[1]~input_o\ : std_logic;
SIGNAL \ALT_INV_SW[0]~input_o\ : std_logic;
SIGNAL \ALT_INV_switchValue5[1]~5_combout\ : std_logic;
SIGNAL \ALT_INV_switchValue5[0]~1_combout\ : std_logic;
SIGNAL \ALT_INV_switchValue4[3]~13_combout\ : std_logic;
SIGNAL \ALT_INV_switchValue4[2]~9_combout\ : std_logic;
SIGNAL \ALT_INV_switchValue4[1]~5_combout\ : std_logic;
SIGNAL \ALT_INV_switchValue4[0]~1_combout\ : std_logic;
SIGNAL \ALT_INV_switchValue3[2]~9_combout\ : std_logic;
SIGNAL \ALT_INV_switchValue3[1]~5_combout\ : std_logic;
SIGNAL \ALT_INV_switchValue3[0]~1_combout\ : std_logic;
SIGNAL \ALT_INV_switchValue2[3]~13_combout\ : std_logic;
SIGNAL \ALT_INV_switchValue2[2]~9_combout\ : std_logic;
SIGNAL \ALT_INV_switchValue2[1]~5_combout\ : std_logic;
SIGNAL \ALT_INV_switchValue2[0]~1_combout\ : std_logic;
SIGNAL \ALT_INV_switchValue5~13_combout\ : std_logic;
SIGNAL \ALT_INV_switchValue5~12_combout\ : std_logic;
SIGNAL \ALT_INV_switchValue4~30_combout\ : std_logic;
SIGNAL \ALT_INV_switchValue4~29_combout\ : std_logic;
SIGNAL \ALT_INV_switchValue4~28_combout\ : std_logic;
SIGNAL \ALT_INV_switchValue4~27_combout\ : std_logic;
SIGNAL \ALT_INV_switchValue4~26_combout\ : std_logic;
SIGNAL \ALT_INV_enable4~0_combout\ : std_logic;
SIGNAL \ALT_INV_switchValue3~20_combout\ : std_logic;
SIGNAL \ALT_INV_switchValue3~19_combout\ : std_logic;
SIGNAL \ALT_INV_switchValue3~18_combout\ : std_logic;
SIGNAL \ALT_INV_switchValue2~27_combout\ : std_logic;
SIGNAL \ALT_INV_switchValue2~26_combout\ : std_logic;
SIGNAL \ALT_INV_switchValue2~25_combout\ : std_logic;
SIGNAL \ALT_INV_enable2~0_combout\ : std_logic;
SIGNAL \ALT_INV_switchValue5[1]~6_combout\ : std_logic;
SIGNAL \ALT_INV_switchValue5[1]~_emulated_q\ : std_logic;
SIGNAL \ALT_INV_switchValue5[0]~2_combout\ : std_logic;
SIGNAL \ALT_INV_switchValue5[0]~_emulated_q\ : std_logic;
SIGNAL \ALT_INV_switchValue4[3]~14_combout\ : std_logic;
SIGNAL \ALT_INV_switchValue4[3]~_emulated_q\ : std_logic;
SIGNAL \ALT_INV_switchValue4[2]~10_combout\ : std_logic;
SIGNAL \ALT_INV_switchValue4[2]~_emulated_q\ : std_logic;
SIGNAL \ALT_INV_switchValue4[1]~6_combout\ : std_logic;
SIGNAL \ALT_INV_switchValue4[1]~_emulated_q\ : std_logic;
SIGNAL \ALT_INV_switchValue4[0]~2_combout\ : std_logic;
SIGNAL \ALT_INV_switchValue4[0]~_emulated_q\ : std_logic;
SIGNAL \ALT_INV_resetHex4~0_combout\ : std_logic;
SIGNAL \ALT_INV_process_0~1_combout\ : std_logic;
SIGNAL \ALT_INV_process_0~0_combout\ : std_logic;
SIGNAL \ALT_INV_resetHex3~2_combout\ : std_logic;
SIGNAL \ALT_INV_switchValue3[2]~10_combout\ : std_logic;
SIGNAL \ALT_INV_switchValue3[2]~_emulated_q\ : std_logic;
SIGNAL \ALT_INV_switchValue3[1]~6_combout\ : std_logic;
SIGNAL \ALT_INV_switchValue3[1]~_emulated_q\ : std_logic;
SIGNAL \ALT_INV_switchValue3[0]~2_combout\ : std_logic;
SIGNAL \ALT_INV_switchValue3[0]~_emulated_q\ : std_logic;
SIGNAL \ALT_INV_resetHex3~0_combout\ : std_logic;
SIGNAL \ALT_INV_switchValue2[3]~14_combout\ : std_logic;
SIGNAL \ALT_INV_switchValue2[3]~_emulated_q\ : std_logic;
SIGNAL \ALT_INV_switchValue2[2]~10_combout\ : std_logic;
SIGNAL \ALT_INV_switchValue2[2]~_emulated_q\ : std_logic;
SIGNAL \ALT_INV_switchValue2[1]~6_combout\ : std_logic;
SIGNAL \ALT_INV_switchValue2[1]~_emulated_q\ : std_logic;
SIGNAL \ALT_INV_switchValue2[0]~2_combout\ : std_logic;
SIGNAL \ALT_INV_switchValue2[0]~_emulated_q\ : std_logic;
SIGNAL \ALT_INV_resetHex2~0_combout\ : std_logic;
SIGNAL \ALT_INV_Equal1~0_combout\ : std_logic;
SIGNAL \twentySixBitCounter1|ALT_INV_Equal0~3_combout\ : std_logic;
SIGNAL \twentySixBitCounter1|ALT_INV_Equal0~2_combout\ : std_logic;
SIGNAL \twentySixBitCounter1|ALT_INV_Equal0~1_combout\ : std_logic;
SIGNAL \twentySixBitCounter1|ALT_INV_Equal0~0_combout\ : std_logic;
SIGNAL \ALT_INV_resetHex0~0_combout\ : std_logic;
SIGNAL \ALT_INV_Equal0~0_combout\ : std_logic;
SIGNAL \fourBitCounter6|ALT_INV_Add0~0_combout\ : std_logic;
SIGNAL \ALT_INV_resetHex5~q\ : std_logic;
SIGNAL \ALT_INV_incHex5Count~q\ : std_logic;
SIGNAL \fourBitCounter5|ALT_INV_Add0~1_combout\ : std_logic;
SIGNAL \fourBitCounter5|ALT_INV_Add0~0_combout\ : std_logic;
SIGNAL \ALT_INV_enable4~q\ : std_logic;
SIGNAL \ALT_INV_resetHex4~q\ : std_logic;
SIGNAL \ALT_INV_incHex4Count~q\ : std_logic;
SIGNAL \fourBitCounter4|ALT_INV_Add0~0_combout\ : std_logic;
SIGNAL \ALT_INV_resetHex3~q\ : std_logic;
SIGNAL \ALT_INV_incHex3Count~q\ : std_logic;
SIGNAL \fourBitCounter3|ALT_INV_Add0~1_combout\ : std_logic;
SIGNAL \fourBitCounter3|ALT_INV_Add0~0_combout\ : std_logic;
SIGNAL \ALT_INV_enable2~q\ : std_logic;
SIGNAL \ALT_INV_resetHex2~q\ : std_logic;
SIGNAL \ALT_INV_incHex2Count~q\ : std_logic;
SIGNAL \ALT_INV_incHex1Count~q\ : std_logic;
SIGNAL \ALT_INV_resetHex1~q\ : std_logic;
SIGNAL \ALT_INV_resetHex0~q\ : std_logic;
SIGNAL \sevenSegment6|ALT_INV_Mux0~0_combout\ : std_logic;
SIGNAL \fourBitCounter6|ALT_INV_tempCount\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \sevenSegment5|ALT_INV_Mux0~0_combout\ : std_logic;
SIGNAL \fourBitCounter5|ALT_INV_tempCount\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \sevenSegment4|ALT_INV_Mux0~0_combout\ : std_logic;
SIGNAL \fourBitCounter4|ALT_INV_tempCount\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \sevenSegment3|ALT_INV_Mux0~0_combout\ : std_logic;
SIGNAL \fourBitCounter3|ALT_INV_tempCount\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \sevenSegment2|ALT_INV_Mux0~0_combout\ : std_logic;
SIGNAL \fourBitCounter2|ALT_INV_tempCount\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \sevenSegment1|ALT_INV_Mux0~0_combout\ : std_logic;
SIGNAL \fourBitCounter1|ALT_INV_tempCount\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \twentySixBitCounter1|ALT_INV_tempCount\ : std_logic_vector(25 DOWNTO 0);

BEGIN

ww_KEY <= KEY;
ww_CLOCK_50 <= CLOCK_50;
ww_SW <= SW;
LEDR <= ww_LEDR;
HEX0 <= ww_HEX0;
HEX1 <= ww_HEX1;
HEX2 <= ww_HEX2;
HEX3 <= ww_HEX3;
HEX4 <= ww_HEX4;
HEX5 <= ww_HEX5;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;
\twentySixBitCounter1|ALT_INV_tempCount[17]~DUPLICATE_q\ <= NOT \twentySixBitCounter1|tempCount[17]~DUPLICATE_q\;
\twentySixBitCounter1|ALT_INV_tempCount[14]~DUPLICATE_q\ <= NOT \twentySixBitCounter1|tempCount[14]~DUPLICATE_q\;
\twentySixBitCounter1|ALT_INV_tempCount[11]~DUPLICATE_q\ <= NOT \twentySixBitCounter1|tempCount[11]~DUPLICATE_q\;
\twentySixBitCounter1|ALT_INV_tempCount[4]~DUPLICATE_q\ <= NOT \twentySixBitCounter1|tempCount[4]~DUPLICATE_q\;
\twentySixBitCounter1|ALT_INV_tempCount[25]~DUPLICATE_q\ <= NOT \twentySixBitCounter1|tempCount[25]~DUPLICATE_q\;
\ALT_INV_KEY[2]~input_o\ <= NOT \KEY[2]~input_o\;
\ALT_INV_KEY[0]~input_o\ <= NOT \KEY[0]~input_o\;
\ALT_INV_KEY[3]~input_o\ <= NOT \KEY[3]~input_o\;
\ALT_INV_SW[7]~input_o\ <= NOT \SW[7]~input_o\;
\ALT_INV_SW[6]~input_o\ <= NOT \SW[6]~input_o\;
\ALT_INV_SW[5]~input_o\ <= NOT \SW[5]~input_o\;
\ALT_INV_SW[4]~input_o\ <= NOT \SW[4]~input_o\;
\ALT_INV_SW[3]~input_o\ <= NOT \SW[3]~input_o\;
\ALT_INV_SW[2]~input_o\ <= NOT \SW[2]~input_o\;
\ALT_INV_SW[1]~input_o\ <= NOT \SW[1]~input_o\;
\ALT_INV_SW[0]~input_o\ <= NOT \SW[0]~input_o\;
\ALT_INV_switchValue5[1]~5_combout\ <= NOT \switchValue5[1]~5_combout\;
\ALT_INV_switchValue5[0]~1_combout\ <= NOT \switchValue5[0]~1_combout\;
\ALT_INV_switchValue4[3]~13_combout\ <= NOT \switchValue4[3]~13_combout\;
\ALT_INV_switchValue4[2]~9_combout\ <= NOT \switchValue4[2]~9_combout\;
\ALT_INV_switchValue4[1]~5_combout\ <= NOT \switchValue4[1]~5_combout\;
\ALT_INV_switchValue4[0]~1_combout\ <= NOT \switchValue4[0]~1_combout\;
\ALT_INV_switchValue3[2]~9_combout\ <= NOT \switchValue3[2]~9_combout\;
\ALT_INV_switchValue3[1]~5_combout\ <= NOT \switchValue3[1]~5_combout\;
\ALT_INV_switchValue3[0]~1_combout\ <= NOT \switchValue3[0]~1_combout\;
\ALT_INV_switchValue2[3]~13_combout\ <= NOT \switchValue2[3]~13_combout\;
\ALT_INV_switchValue2[2]~9_combout\ <= NOT \switchValue2[2]~9_combout\;
\ALT_INV_switchValue2[1]~5_combout\ <= NOT \switchValue2[1]~5_combout\;
\ALT_INV_switchValue2[0]~1_combout\ <= NOT \switchValue2[0]~1_combout\;
\ALT_INV_switchValue5~13_combout\ <= NOT \switchValue5~13_combout\;
\ALT_INV_switchValue5~12_combout\ <= NOT \switchValue5~12_combout\;
\ALT_INV_switchValue4~30_combout\ <= NOT \switchValue4~30_combout\;
\ALT_INV_switchValue4~29_combout\ <= NOT \switchValue4~29_combout\;
\ALT_INV_switchValue4~28_combout\ <= NOT \switchValue4~28_combout\;
\ALT_INV_switchValue4~27_combout\ <= NOT \switchValue4~27_combout\;
\ALT_INV_switchValue4~26_combout\ <= NOT \switchValue4~26_combout\;
\ALT_INV_enable4~0_combout\ <= NOT \enable4~0_combout\;
\ALT_INV_switchValue3~20_combout\ <= NOT \switchValue3~20_combout\;
\ALT_INV_switchValue3~19_combout\ <= NOT \switchValue3~19_combout\;
\ALT_INV_switchValue3~18_combout\ <= NOT \switchValue3~18_combout\;
\ALT_INV_switchValue2~27_combout\ <= NOT \switchValue2~27_combout\;
\ALT_INV_switchValue2~26_combout\ <= NOT \switchValue2~26_combout\;
\ALT_INV_switchValue2~25_combout\ <= NOT \switchValue2~25_combout\;
\ALT_INV_enable2~0_combout\ <= NOT \enable2~0_combout\;
\ALT_INV_switchValue5[1]~6_combout\ <= NOT \switchValue5[1]~6_combout\;
\ALT_INV_switchValue5[1]~_emulated_q\ <= NOT \switchValue5[1]~_emulated_q\;
\ALT_INV_switchValue5[0]~2_combout\ <= NOT \switchValue5[0]~2_combout\;
\ALT_INV_switchValue5[0]~_emulated_q\ <= NOT \switchValue5[0]~_emulated_q\;
\ALT_INV_switchValue4[3]~14_combout\ <= NOT \switchValue4[3]~14_combout\;
\ALT_INV_switchValue4[3]~_emulated_q\ <= NOT \switchValue4[3]~_emulated_q\;
\ALT_INV_switchValue4[2]~10_combout\ <= NOT \switchValue4[2]~10_combout\;
\ALT_INV_switchValue4[2]~_emulated_q\ <= NOT \switchValue4[2]~_emulated_q\;
\ALT_INV_switchValue4[1]~6_combout\ <= NOT \switchValue4[1]~6_combout\;
\ALT_INV_switchValue4[1]~_emulated_q\ <= NOT \switchValue4[1]~_emulated_q\;
\ALT_INV_switchValue4[0]~2_combout\ <= NOT \switchValue4[0]~2_combout\;
\ALT_INV_switchValue4[0]~_emulated_q\ <= NOT \switchValue4[0]~_emulated_q\;
\ALT_INV_resetHex4~0_combout\ <= NOT \resetHex4~0_combout\;
\ALT_INV_process_0~1_combout\ <= NOT \process_0~1_combout\;
\ALT_INV_process_0~0_combout\ <= NOT \process_0~0_combout\;
\ALT_INV_resetHex3~2_combout\ <= NOT \resetHex3~2_combout\;
\ALT_INV_switchValue3[2]~10_combout\ <= NOT \switchValue3[2]~10_combout\;
\ALT_INV_switchValue3[2]~_emulated_q\ <= NOT \switchValue3[2]~_emulated_q\;
\ALT_INV_switchValue3[1]~6_combout\ <= NOT \switchValue3[1]~6_combout\;
\ALT_INV_switchValue3[1]~_emulated_q\ <= NOT \switchValue3[1]~_emulated_q\;
\ALT_INV_switchValue3[0]~2_combout\ <= NOT \switchValue3[0]~2_combout\;
\ALT_INV_switchValue3[0]~_emulated_q\ <= NOT \switchValue3[0]~_emulated_q\;
\ALT_INV_resetHex3~0_combout\ <= NOT \resetHex3~0_combout\;
\ALT_INV_switchValue2[3]~14_combout\ <= NOT \switchValue2[3]~14_combout\;
\ALT_INV_switchValue2[3]~_emulated_q\ <= NOT \switchValue2[3]~_emulated_q\;
\ALT_INV_switchValue2[2]~10_combout\ <= NOT \switchValue2[2]~10_combout\;
\ALT_INV_switchValue2[2]~_emulated_q\ <= NOT \switchValue2[2]~_emulated_q\;
\ALT_INV_switchValue2[1]~6_combout\ <= NOT \switchValue2[1]~6_combout\;
\ALT_INV_switchValue2[1]~_emulated_q\ <= NOT \switchValue2[1]~_emulated_q\;
\ALT_INV_switchValue2[0]~2_combout\ <= NOT \switchValue2[0]~2_combout\;
\ALT_INV_switchValue2[0]~_emulated_q\ <= NOT \switchValue2[0]~_emulated_q\;
\ALT_INV_resetHex2~0_combout\ <= NOT \resetHex2~0_combout\;
\ALT_INV_Equal1~0_combout\ <= NOT \Equal1~0_combout\;
\twentySixBitCounter1|ALT_INV_Equal0~3_combout\ <= NOT \twentySixBitCounter1|Equal0~3_combout\;
\twentySixBitCounter1|ALT_INV_Equal0~2_combout\ <= NOT \twentySixBitCounter1|Equal0~2_combout\;
\twentySixBitCounter1|ALT_INV_Equal0~1_combout\ <= NOT \twentySixBitCounter1|Equal0~1_combout\;
\twentySixBitCounter1|ALT_INV_Equal0~0_combout\ <= NOT \twentySixBitCounter1|Equal0~0_combout\;
\ALT_INV_resetHex0~0_combout\ <= NOT \resetHex0~0_combout\;
\ALT_INV_Equal0~0_combout\ <= NOT \Equal0~0_combout\;
\fourBitCounter6|ALT_INV_Add0~0_combout\ <= NOT \fourBitCounter6|Add0~0_combout\;
\ALT_INV_resetHex5~q\ <= NOT \resetHex5~q\;
\ALT_INV_incHex5Count~q\ <= NOT \incHex5Count~q\;
\fourBitCounter5|ALT_INV_Add0~1_combout\ <= NOT \fourBitCounter5|Add0~1_combout\;
\fourBitCounter5|ALT_INV_Add0~0_combout\ <= NOT \fourBitCounter5|Add0~0_combout\;
\ALT_INV_enable4~q\ <= NOT \enable4~q\;
\ALT_INV_resetHex4~q\ <= NOT \resetHex4~q\;
\ALT_INV_incHex4Count~q\ <= NOT \incHex4Count~q\;
\fourBitCounter4|ALT_INV_Add0~0_combout\ <= NOT \fourBitCounter4|Add0~0_combout\;
\ALT_INV_resetHex3~q\ <= NOT \resetHex3~q\;
\ALT_INV_incHex3Count~q\ <= NOT \incHex3Count~q\;
\fourBitCounter3|ALT_INV_Add0~1_combout\ <= NOT \fourBitCounter3|Add0~1_combout\;
\fourBitCounter3|ALT_INV_Add0~0_combout\ <= NOT \fourBitCounter3|Add0~0_combout\;
\ALT_INV_enable2~q\ <= NOT \enable2~q\;
\ALT_INV_resetHex2~q\ <= NOT \resetHex2~q\;
\ALT_INV_incHex2Count~q\ <= NOT \incHex2Count~q\;
\ALT_INV_incHex1Count~q\ <= NOT \incHex1Count~q\;
\ALT_INV_resetHex1~q\ <= NOT \resetHex1~q\;
\ALT_INV_resetHex0~q\ <= NOT \resetHex0~q\;
\sevenSegment6|ALT_INV_Mux0~0_combout\ <= NOT \sevenSegment6|Mux0~0_combout\;
\fourBitCounter6|ALT_INV_tempCount\(3) <= NOT \fourBitCounter6|tempCount\(3);
\fourBitCounter6|ALT_INV_tempCount\(2) <= NOT \fourBitCounter6|tempCount\(2);
\fourBitCounter6|ALT_INV_tempCount\(1) <= NOT \fourBitCounter6|tempCount\(1);
\fourBitCounter6|ALT_INV_tempCount\(0) <= NOT \fourBitCounter6|tempCount\(0);
\sevenSegment5|ALT_INV_Mux0~0_combout\ <= NOT \sevenSegment5|Mux0~0_combout\;
\fourBitCounter5|ALT_INV_tempCount\(3) <= NOT \fourBitCounter5|tempCount\(3);
\fourBitCounter5|ALT_INV_tempCount\(2) <= NOT \fourBitCounter5|tempCount\(2);
\fourBitCounter5|ALT_INV_tempCount\(1) <= NOT \fourBitCounter5|tempCount\(1);
\fourBitCounter5|ALT_INV_tempCount\(0) <= NOT \fourBitCounter5|tempCount\(0);
\sevenSegment4|ALT_INV_Mux0~0_combout\ <= NOT \sevenSegment4|Mux0~0_combout\;
\fourBitCounter4|ALT_INV_tempCount\(3) <= NOT \fourBitCounter4|tempCount\(3);
\fourBitCounter4|ALT_INV_tempCount\(2) <= NOT \fourBitCounter4|tempCount\(2);
\fourBitCounter4|ALT_INV_tempCount\(1) <= NOT \fourBitCounter4|tempCount\(1);
\fourBitCounter4|ALT_INV_tempCount\(0) <= NOT \fourBitCounter4|tempCount\(0);
\sevenSegment3|ALT_INV_Mux0~0_combout\ <= NOT \sevenSegment3|Mux0~0_combout\;
\fourBitCounter3|ALT_INV_tempCount\(3) <= NOT \fourBitCounter3|tempCount\(3);
\fourBitCounter3|ALT_INV_tempCount\(2) <= NOT \fourBitCounter3|tempCount\(2);
\fourBitCounter3|ALT_INV_tempCount\(1) <= NOT \fourBitCounter3|tempCount\(1);
\fourBitCounter3|ALT_INV_tempCount\(0) <= NOT \fourBitCounter3|tempCount\(0);
\sevenSegment2|ALT_INV_Mux0~0_combout\ <= NOT \sevenSegment2|Mux0~0_combout\;
\fourBitCounter2|ALT_INV_tempCount\(3) <= NOT \fourBitCounter2|tempCount\(3);
\fourBitCounter2|ALT_INV_tempCount\(2) <= NOT \fourBitCounter2|tempCount\(2);
\fourBitCounter2|ALT_INV_tempCount\(1) <= NOT \fourBitCounter2|tempCount\(1);
\fourBitCounter2|ALT_INV_tempCount\(0) <= NOT \fourBitCounter2|tempCount\(0);
\sevenSegment1|ALT_INV_Mux0~0_combout\ <= NOT \sevenSegment1|Mux0~0_combout\;
\fourBitCounter1|ALT_INV_tempCount\(3) <= NOT \fourBitCounter1|tempCount\(3);
\fourBitCounter1|ALT_INV_tempCount\(2) <= NOT \fourBitCounter1|tempCount\(2);
\fourBitCounter1|ALT_INV_tempCount\(1) <= NOT \fourBitCounter1|tempCount\(1);
\fourBitCounter1|ALT_INV_tempCount\(0) <= NOT \fourBitCounter1|tempCount\(0);
\twentySixBitCounter1|ALT_INV_tempCount\(19) <= NOT \twentySixBitCounter1|tempCount\(19);
\twentySixBitCounter1|ALT_INV_tempCount\(18) <= NOT \twentySixBitCounter1|tempCount\(18);
\twentySixBitCounter1|ALT_INV_tempCount\(17) <= NOT \twentySixBitCounter1|tempCount\(17);
\twentySixBitCounter1|ALT_INV_tempCount\(16) <= NOT \twentySixBitCounter1|tempCount\(16);
\twentySixBitCounter1|ALT_INV_tempCount\(15) <= NOT \twentySixBitCounter1|tempCount\(15);
\twentySixBitCounter1|ALT_INV_tempCount\(14) <= NOT \twentySixBitCounter1|tempCount\(14);
\twentySixBitCounter1|ALT_INV_tempCount\(13) <= NOT \twentySixBitCounter1|tempCount\(13);
\twentySixBitCounter1|ALT_INV_tempCount\(12) <= NOT \twentySixBitCounter1|tempCount\(12);
\twentySixBitCounter1|ALT_INV_tempCount\(11) <= NOT \twentySixBitCounter1|tempCount\(11);
\twentySixBitCounter1|ALT_INV_tempCount\(10) <= NOT \twentySixBitCounter1|tempCount\(10);
\twentySixBitCounter1|ALT_INV_tempCount\(8) <= NOT \twentySixBitCounter1|tempCount\(8);
\twentySixBitCounter1|ALT_INV_tempCount\(7) <= NOT \twentySixBitCounter1|tempCount\(7);
\twentySixBitCounter1|ALT_INV_tempCount\(6) <= NOT \twentySixBitCounter1|tempCount\(6);
\twentySixBitCounter1|ALT_INV_tempCount\(5) <= NOT \twentySixBitCounter1|tempCount\(5);
\twentySixBitCounter1|ALT_INV_tempCount\(4) <= NOT \twentySixBitCounter1|tempCount\(4);
\twentySixBitCounter1|ALT_INV_tempCount\(3) <= NOT \twentySixBitCounter1|tempCount\(3);
\twentySixBitCounter1|ALT_INV_tempCount\(2) <= NOT \twentySixBitCounter1|tempCount\(2);
\twentySixBitCounter1|ALT_INV_tempCount\(1) <= NOT \twentySixBitCounter1|tempCount\(1);
\twentySixBitCounter1|ALT_INV_tempCount\(0) <= NOT \twentySixBitCounter1|tempCount\(0);
\twentySixBitCounter1|ALT_INV_tempCount\(25) <= NOT \twentySixBitCounter1|tempCount\(25);
\twentySixBitCounter1|ALT_INV_tempCount\(24) <= NOT \twentySixBitCounter1|tempCount\(24);
\twentySixBitCounter1|ALT_INV_tempCount\(23) <= NOT \twentySixBitCounter1|tempCount\(23);
\twentySixBitCounter1|ALT_INV_tempCount\(9) <= NOT \twentySixBitCounter1|tempCount\(9);
\twentySixBitCounter1|ALT_INV_tempCount\(22) <= NOT \twentySixBitCounter1|tempCount\(22);
\twentySixBitCounter1|ALT_INV_tempCount\(21) <= NOT \twentySixBitCounter1|tempCount\(21);
\twentySixBitCounter1|ALT_INV_tempCount\(20) <= NOT \twentySixBitCounter1|tempCount\(20);

-- Location: IOOBUF_X52_Y0_N2
\LEDR[0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \SW[0]~input_o\,
	devoe => ww_devoe,
	o => ww_LEDR(0));

-- Location: IOOBUF_X52_Y0_N19
\LEDR[1]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \SW[1]~input_o\,
	devoe => ww_devoe,
	o => ww_LEDR(1));

-- Location: IOOBUF_X60_Y0_N2
\LEDR[2]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \SW[2]~input_o\,
	devoe => ww_devoe,
	o => ww_LEDR(2));

-- Location: IOOBUF_X80_Y0_N2
\LEDR[3]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \SW[3]~input_o\,
	devoe => ww_devoe,
	o => ww_LEDR(3));

-- Location: IOOBUF_X60_Y0_N19
\LEDR[4]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \SW[4]~input_o\,
	devoe => ww_devoe,
	o => ww_LEDR(4));

-- Location: IOOBUF_X80_Y0_N19
\LEDR[5]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \SW[5]~input_o\,
	devoe => ww_devoe,
	o => ww_LEDR(5));

-- Location: IOOBUF_X84_Y0_N2
\LEDR[6]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \SW[6]~input_o\,
	devoe => ww_devoe,
	o => ww_LEDR(6));

-- Location: IOOBUF_X89_Y6_N5
\LEDR[7]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \SW[7]~input_o\,
	devoe => ww_devoe,
	o => ww_LEDR(7));

-- Location: IOOBUF_X89_Y8_N39
\HEX0[0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \sevenSegment1|Mux6~0_combout\,
	devoe => ww_devoe,
	o => ww_HEX0(0));

-- Location: IOOBUF_X89_Y11_N79
\HEX0[1]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \sevenSegment1|Mux5~0_combout\,
	devoe => ww_devoe,
	o => ww_HEX0(1));

-- Location: IOOBUF_X89_Y11_N96
\HEX0[2]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \sevenSegment1|Mux4~0_combout\,
	devoe => ww_devoe,
	o => ww_HEX0(2));

-- Location: IOOBUF_X89_Y4_N79
\HEX0[3]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \sevenSegment1|Mux3~0_combout\,
	devoe => ww_devoe,
	o => ww_HEX0(3));

-- Location: IOOBUF_X89_Y13_N56
\HEX0[4]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \sevenSegment1|Mux2~0_combout\,
	devoe => ww_devoe,
	o => ww_HEX0(4));

-- Location: IOOBUF_X89_Y13_N39
\HEX0[5]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \sevenSegment1|Mux1~0_combout\,
	devoe => ww_devoe,
	o => ww_HEX0(5));

-- Location: IOOBUF_X89_Y4_N96
\HEX0[6]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \sevenSegment1|ALT_INV_Mux0~0_combout\,
	devoe => ww_devoe,
	o => ww_HEX0(6));

-- Location: IOOBUF_X89_Y6_N39
\HEX1[0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \sevenSegment2|Mux6~0_combout\,
	devoe => ww_devoe,
	o => ww_HEX1(0));

-- Location: IOOBUF_X89_Y6_N56
\HEX1[1]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \sevenSegment2|Mux5~0_combout\,
	devoe => ww_devoe,
	o => ww_HEX1(1));

-- Location: IOOBUF_X89_Y16_N39
\HEX1[2]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \sevenSegment2|Mux4~0_combout\,
	devoe => ww_devoe,
	o => ww_HEX1(2));

-- Location: IOOBUF_X89_Y16_N56
\HEX1[3]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \sevenSegment2|Mux3~0_combout\,
	devoe => ww_devoe,
	o => ww_HEX1(3));

-- Location: IOOBUF_X89_Y15_N39
\HEX1[4]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \sevenSegment2|Mux2~0_combout\,
	devoe => ww_devoe,
	o => ww_HEX1(4));

-- Location: IOOBUF_X89_Y15_N56
\HEX1[5]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \sevenSegment2|Mux1~0_combout\,
	devoe => ww_devoe,
	o => ww_HEX1(5));

-- Location: IOOBUF_X89_Y8_N56
\HEX1[6]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \sevenSegment2|ALT_INV_Mux0~0_combout\,
	devoe => ww_devoe,
	o => ww_HEX1(6));

-- Location: IOOBUF_X89_Y9_N22
\HEX2[0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \sevenSegment3|Mux6~0_combout\,
	devoe => ww_devoe,
	o => ww_HEX2(0));

-- Location: IOOBUF_X89_Y23_N39
\HEX2[1]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \sevenSegment3|Mux5~0_combout\,
	devoe => ww_devoe,
	o => ww_HEX2(1));

-- Location: IOOBUF_X89_Y23_N56
\HEX2[2]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \sevenSegment3|Mux4~0_combout\,
	devoe => ww_devoe,
	o => ww_HEX2(2));

-- Location: IOOBUF_X89_Y20_N79
\HEX2[3]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \sevenSegment3|Mux3~0_combout\,
	devoe => ww_devoe,
	o => ww_HEX2(3));

-- Location: IOOBUF_X89_Y25_N39
\HEX2[4]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \sevenSegment3|Mux2~0_combout\,
	devoe => ww_devoe,
	o => ww_HEX2(4));

-- Location: IOOBUF_X89_Y20_N96
\HEX2[5]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \sevenSegment3|Mux1~0_combout\,
	devoe => ww_devoe,
	o => ww_HEX2(5));

-- Location: IOOBUF_X89_Y25_N56
\HEX2[6]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \sevenSegment3|ALT_INV_Mux0~0_combout\,
	devoe => ww_devoe,
	o => ww_HEX2(6));

-- Location: IOOBUF_X89_Y16_N5
\HEX3[0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \sevenSegment4|Mux6~0_combout\,
	devoe => ww_devoe,
	o => ww_HEX3(0));

-- Location: IOOBUF_X89_Y16_N22
\HEX3[1]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \sevenSegment4|Mux5~0_combout\,
	devoe => ww_devoe,
	o => ww_HEX3(1));

-- Location: IOOBUF_X89_Y4_N45
\HEX3[2]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \sevenSegment4|Mux4~0_combout\,
	devoe => ww_devoe,
	o => ww_HEX3(2));

-- Location: IOOBUF_X89_Y4_N62
\HEX3[3]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \sevenSegment4|Mux3~0_combout\,
	devoe => ww_devoe,
	o => ww_HEX3(3));

-- Location: IOOBUF_X89_Y21_N39
\HEX3[4]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \sevenSegment4|Mux2~0_combout\,
	devoe => ww_devoe,
	o => ww_HEX3(4));

-- Location: IOOBUF_X89_Y11_N62
\HEX3[5]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \sevenSegment4|Mux1~0_combout\,
	devoe => ww_devoe,
	o => ww_HEX3(5));

-- Location: IOOBUF_X89_Y9_N5
\HEX3[6]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \sevenSegment4|ALT_INV_Mux0~0_combout\,
	devoe => ww_devoe,
	o => ww_HEX3(6));

-- Location: IOOBUF_X89_Y11_N45
\HEX4[0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \sevenSegment5|Mux6~0_combout\,
	devoe => ww_devoe,
	o => ww_HEX4(0));

-- Location: IOOBUF_X89_Y13_N5
\HEX4[1]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \sevenSegment5|Mux5~0_combout\,
	devoe => ww_devoe,
	o => ww_HEX4(1));

-- Location: IOOBUF_X89_Y13_N22
\HEX4[2]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \sevenSegment5|Mux4~0_combout\,
	devoe => ww_devoe,
	o => ww_HEX4(2));

-- Location: IOOBUF_X89_Y8_N22
\HEX4[3]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \sevenSegment5|Mux3~0_combout\,
	devoe => ww_devoe,
	o => ww_HEX4(3));

-- Location: IOOBUF_X89_Y15_N22
\HEX4[4]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \sevenSegment5|Mux2~0_combout\,
	devoe => ww_devoe,
	o => ww_HEX4(4));

-- Location: IOOBUF_X89_Y15_N5
\HEX4[5]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \sevenSegment5|Mux1~0_combout\,
	devoe => ww_devoe,
	o => ww_HEX4(5));

-- Location: IOOBUF_X89_Y20_N45
\HEX4[6]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \sevenSegment5|ALT_INV_Mux0~0_combout\,
	devoe => ww_devoe,
	o => ww_HEX4(6));

-- Location: IOOBUF_X89_Y20_N62
\HEX5[0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \sevenSegment6|Mux6~0_combout\,
	devoe => ww_devoe,
	o => ww_HEX5(0));

-- Location: IOOBUF_X89_Y21_N56
\HEX5[1]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \sevenSegment6|Mux5~0_combout\,
	devoe => ww_devoe,
	o => ww_HEX5(1));

-- Location: IOOBUF_X89_Y25_N22
\HEX5[2]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \sevenSegment6|Mux4~0_combout\,
	devoe => ww_devoe,
	o => ww_HEX5(2));

-- Location: IOOBUF_X89_Y23_N22
\HEX5[3]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \sevenSegment6|Mux3~0_combout\,
	devoe => ww_devoe,
	o => ww_HEX5(3));

-- Location: IOOBUF_X89_Y9_N56
\HEX5[4]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \sevenSegment6|Mux2~0_combout\,
	devoe => ww_devoe,
	o => ww_HEX5(4));

-- Location: IOOBUF_X89_Y23_N5
\HEX5[5]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \sevenSegment6|Mux1~0_combout\,
	devoe => ww_devoe,
	o => ww_HEX5(5));

-- Location: IOOBUF_X89_Y9_N39
\HEX5[6]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \sevenSegment6|ALT_INV_Mux0~0_combout\,
	devoe => ww_devoe,
	o => ww_HEX5(6));

-- Location: IOIBUF_X12_Y0_N18
\SW[0]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(0),
	o => \SW[0]~input_o\);

-- Location: IOIBUF_X16_Y0_N1
\SW[1]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(1),
	o => \SW[1]~input_o\);

-- Location: IOIBUF_X8_Y0_N35
\SW[2]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(2),
	o => \SW[2]~input_o\);

-- Location: IOIBUF_X4_Y0_N52
\SW[3]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(3),
	o => \SW[3]~input_o\);

-- Location: IOIBUF_X2_Y0_N41
\SW[4]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(4),
	o => \SW[4]~input_o\);

-- Location: IOIBUF_X16_Y0_N18
\SW[5]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(5),
	o => \SW[5]~input_o\);

-- Location: IOIBUF_X4_Y0_N35
\SW[6]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(6),
	o => \SW[6]~input_o\);

-- Location: IOIBUF_X4_Y0_N1
\SW[7]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(7),
	o => \SW[7]~input_o\);

-- Location: IOIBUF_X32_Y0_N1
\CLOCK_50~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_CLOCK_50,
	o => \CLOCK_50~input_o\);

-- Location: CLKCTRL_G6
\CLOCK_50~inputCLKENA0\ : cyclonev_clkena
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	disable_mode => "low",
	ena_register_mode => "always enabled",
	ena_register_power_up => "high",
	test_syn => "high")
-- pragma translate_on
PORT MAP (
	inclk => \CLOCK_50~input_o\,
	outclk => \CLOCK_50~inputCLKENA0_outclk\);

-- Location: LABCELL_X37_Y3_N30
\twentySixBitCounter1|Add0~29\ : cyclonev_lcell_comb
-- Equation(s):
-- \twentySixBitCounter1|Add0~29_sumout\ = SUM(( \twentySixBitCounter1|tempCount\(0) ) + ( VCC ) + ( !VCC ))
-- \twentySixBitCounter1|Add0~30\ = CARRY(( \twentySixBitCounter1|tempCount\(0) ) + ( VCC ) + ( !VCC ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \twentySixBitCounter1|ALT_INV_tempCount\(0),
	cin => GND,
	sumout => \twentySixBitCounter1|Add0~29_sumout\,
	cout => \twentySixBitCounter1|Add0~30\);

-- Location: IOIBUF_X40_Y0_N1
\KEY[2]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_KEY(2),
	o => \KEY[2]~input_o\);

-- Location: IOIBUF_X40_Y0_N18
\KEY[3]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_KEY(3),
	o => \KEY[3]~input_o\);

-- Location: IOIBUF_X36_Y0_N1
\KEY[0]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_KEY(0),
	o => \KEY[0]~input_o\);

-- Location: LABCELL_X36_Y2_N57
\resetHex0~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \resetHex0~0_combout\ = ( \KEY[0]~input_o\ & ( (!\KEY[2]~input_o\) # (!\KEY[3]~input_o\) ) ) # ( !\KEY[0]~input_o\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111111111111111111111111111111100111111001111110011111100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_KEY[2]~input_o\,
	datac => \ALT_INV_KEY[3]~input_o\,
	dataf => \ALT_INV_KEY[0]~input_o\,
	combout => \resetHex0~0_combout\);

-- Location: FF_X37_Y3_N31
\twentySixBitCounter1|tempCount[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \twentySixBitCounter1|Add0~29_sumout\,
	clrn => \ALT_INV_resetHex0~0_combout\,
	sclr => \twentySixBitCounter1|Equal0~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \twentySixBitCounter1|tempCount\(0));

-- Location: LABCELL_X37_Y3_N33
\twentySixBitCounter1|Add0~33\ : cyclonev_lcell_comb
-- Equation(s):
-- \twentySixBitCounter1|Add0~33_sumout\ = SUM(( \twentySixBitCounter1|tempCount\(1) ) + ( GND ) + ( \twentySixBitCounter1|Add0~30\ ))
-- \twentySixBitCounter1|Add0~34\ = CARRY(( \twentySixBitCounter1|tempCount\(1) ) + ( GND ) + ( \twentySixBitCounter1|Add0~30\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \twentySixBitCounter1|ALT_INV_tempCount\(1),
	cin => \twentySixBitCounter1|Add0~30\,
	sumout => \twentySixBitCounter1|Add0~33_sumout\,
	cout => \twentySixBitCounter1|Add0~34\);

-- Location: FF_X37_Y3_N35
\twentySixBitCounter1|tempCount[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \twentySixBitCounter1|Add0~33_sumout\,
	clrn => \ALT_INV_resetHex0~0_combout\,
	sclr => \twentySixBitCounter1|Equal0~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \twentySixBitCounter1|tempCount\(1));

-- Location: LABCELL_X37_Y3_N36
\twentySixBitCounter1|Add0~37\ : cyclonev_lcell_comb
-- Equation(s):
-- \twentySixBitCounter1|Add0~37_sumout\ = SUM(( \twentySixBitCounter1|tempCount\(2) ) + ( GND ) + ( \twentySixBitCounter1|Add0~34\ ))
-- \twentySixBitCounter1|Add0~38\ = CARRY(( \twentySixBitCounter1|tempCount\(2) ) + ( GND ) + ( \twentySixBitCounter1|Add0~34\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \twentySixBitCounter1|ALT_INV_tempCount\(2),
	cin => \twentySixBitCounter1|Add0~34\,
	sumout => \twentySixBitCounter1|Add0~37_sumout\,
	cout => \twentySixBitCounter1|Add0~38\);

-- Location: FF_X37_Y3_N38
\twentySixBitCounter1|tempCount[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \twentySixBitCounter1|Add0~37_sumout\,
	clrn => \ALT_INV_resetHex0~0_combout\,
	sclr => \twentySixBitCounter1|Equal0~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \twentySixBitCounter1|tempCount\(2));

-- Location: LABCELL_X37_Y3_N39
\twentySixBitCounter1|Add0~41\ : cyclonev_lcell_comb
-- Equation(s):
-- \twentySixBitCounter1|Add0~41_sumout\ = SUM(( \twentySixBitCounter1|tempCount\(3) ) + ( GND ) + ( \twentySixBitCounter1|Add0~38\ ))
-- \twentySixBitCounter1|Add0~42\ = CARRY(( \twentySixBitCounter1|tempCount\(3) ) + ( GND ) + ( \twentySixBitCounter1|Add0~38\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \twentySixBitCounter1|ALT_INV_tempCount\(3),
	cin => \twentySixBitCounter1|Add0~38\,
	sumout => \twentySixBitCounter1|Add0~41_sumout\,
	cout => \twentySixBitCounter1|Add0~42\);

-- Location: FF_X37_Y3_N41
\twentySixBitCounter1|tempCount[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \twentySixBitCounter1|Add0~41_sumout\,
	clrn => \ALT_INV_resetHex0~0_combout\,
	sclr => \twentySixBitCounter1|Equal0~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \twentySixBitCounter1|tempCount\(3));

-- Location: LABCELL_X37_Y3_N42
\twentySixBitCounter1|Add0~45\ : cyclonev_lcell_comb
-- Equation(s):
-- \twentySixBitCounter1|Add0~45_sumout\ = SUM(( \twentySixBitCounter1|tempCount\(4) ) + ( GND ) + ( \twentySixBitCounter1|Add0~42\ ))
-- \twentySixBitCounter1|Add0~46\ = CARRY(( \twentySixBitCounter1|tempCount\(4) ) + ( GND ) + ( \twentySixBitCounter1|Add0~42\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \twentySixBitCounter1|ALT_INV_tempCount\(4),
	cin => \twentySixBitCounter1|Add0~42\,
	sumout => \twentySixBitCounter1|Add0~45_sumout\,
	cout => \twentySixBitCounter1|Add0~46\);

-- Location: FF_X37_Y3_N43
\twentySixBitCounter1|tempCount[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \twentySixBitCounter1|Add0~45_sumout\,
	clrn => \ALT_INV_resetHex0~0_combout\,
	sclr => \twentySixBitCounter1|Equal0~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \twentySixBitCounter1|tempCount\(4));

-- Location: LABCELL_X37_Y3_N45
\twentySixBitCounter1|Add0~49\ : cyclonev_lcell_comb
-- Equation(s):
-- \twentySixBitCounter1|Add0~49_sumout\ = SUM(( \twentySixBitCounter1|tempCount\(5) ) + ( GND ) + ( \twentySixBitCounter1|Add0~46\ ))
-- \twentySixBitCounter1|Add0~50\ = CARRY(( \twentySixBitCounter1|tempCount\(5) ) + ( GND ) + ( \twentySixBitCounter1|Add0~46\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \twentySixBitCounter1|ALT_INV_tempCount\(5),
	cin => \twentySixBitCounter1|Add0~46\,
	sumout => \twentySixBitCounter1|Add0~49_sumout\,
	cout => \twentySixBitCounter1|Add0~50\);

-- Location: FF_X37_Y3_N47
\twentySixBitCounter1|tempCount[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \twentySixBitCounter1|Add0~49_sumout\,
	clrn => \ALT_INV_resetHex0~0_combout\,
	sclr => \twentySixBitCounter1|Equal0~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \twentySixBitCounter1|tempCount\(5));

-- Location: LABCELL_X37_Y3_N48
\twentySixBitCounter1|Add0~53\ : cyclonev_lcell_comb
-- Equation(s):
-- \twentySixBitCounter1|Add0~53_sumout\ = SUM(( \twentySixBitCounter1|tempCount\(6) ) + ( GND ) + ( \twentySixBitCounter1|Add0~50\ ))
-- \twentySixBitCounter1|Add0~54\ = CARRY(( \twentySixBitCounter1|tempCount\(6) ) + ( GND ) + ( \twentySixBitCounter1|Add0~50\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \twentySixBitCounter1|ALT_INV_tempCount\(6),
	cin => \twentySixBitCounter1|Add0~50\,
	sumout => \twentySixBitCounter1|Add0~53_sumout\,
	cout => \twentySixBitCounter1|Add0~54\);

-- Location: FF_X37_Y3_N50
\twentySixBitCounter1|tempCount[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \twentySixBitCounter1|Add0~53_sumout\,
	clrn => \ALT_INV_resetHex0~0_combout\,
	sclr => \twentySixBitCounter1|Equal0~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \twentySixBitCounter1|tempCount\(6));

-- Location: LABCELL_X37_Y3_N51
\twentySixBitCounter1|Add0~57\ : cyclonev_lcell_comb
-- Equation(s):
-- \twentySixBitCounter1|Add0~57_sumout\ = SUM(( \twentySixBitCounter1|tempCount\(7) ) + ( GND ) + ( \twentySixBitCounter1|Add0~54\ ))
-- \twentySixBitCounter1|Add0~58\ = CARRY(( \twentySixBitCounter1|tempCount\(7) ) + ( GND ) + ( \twentySixBitCounter1|Add0~54\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \twentySixBitCounter1|ALT_INV_tempCount\(7),
	cin => \twentySixBitCounter1|Add0~54\,
	sumout => \twentySixBitCounter1|Add0~57_sumout\,
	cout => \twentySixBitCounter1|Add0~58\);

-- Location: FF_X37_Y3_N52
\twentySixBitCounter1|tempCount[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \twentySixBitCounter1|Add0~57_sumout\,
	clrn => \ALT_INV_resetHex0~0_combout\,
	sclr => \twentySixBitCounter1|Equal0~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \twentySixBitCounter1|tempCount\(7));

-- Location: LABCELL_X37_Y3_N54
\twentySixBitCounter1|Add0~61\ : cyclonev_lcell_comb
-- Equation(s):
-- \twentySixBitCounter1|Add0~61_sumout\ = SUM(( \twentySixBitCounter1|tempCount\(8) ) + ( GND ) + ( \twentySixBitCounter1|Add0~58\ ))
-- \twentySixBitCounter1|Add0~62\ = CARRY(( \twentySixBitCounter1|tempCount\(8) ) + ( GND ) + ( \twentySixBitCounter1|Add0~58\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \twentySixBitCounter1|ALT_INV_tempCount\(8),
	cin => \twentySixBitCounter1|Add0~58\,
	sumout => \twentySixBitCounter1|Add0~61_sumout\,
	cout => \twentySixBitCounter1|Add0~62\);

-- Location: FF_X37_Y3_N56
\twentySixBitCounter1|tempCount[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \twentySixBitCounter1|Add0~61_sumout\,
	clrn => \ALT_INV_resetHex0~0_combout\,
	sclr => \twentySixBitCounter1|Equal0~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \twentySixBitCounter1|tempCount\(8));

-- Location: LABCELL_X37_Y3_N57
\twentySixBitCounter1|Add0~13\ : cyclonev_lcell_comb
-- Equation(s):
-- \twentySixBitCounter1|Add0~13_sumout\ = SUM(( \twentySixBitCounter1|tempCount\(9) ) + ( GND ) + ( \twentySixBitCounter1|Add0~62\ ))
-- \twentySixBitCounter1|Add0~14\ = CARRY(( \twentySixBitCounter1|tempCount\(9) ) + ( GND ) + ( \twentySixBitCounter1|Add0~62\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \twentySixBitCounter1|ALT_INV_tempCount\(9),
	cin => \twentySixBitCounter1|Add0~62\,
	sumout => \twentySixBitCounter1|Add0~13_sumout\,
	cout => \twentySixBitCounter1|Add0~14\);

-- Location: FF_X37_Y3_N59
\twentySixBitCounter1|tempCount[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \twentySixBitCounter1|Add0~13_sumout\,
	clrn => \ALT_INV_resetHex0~0_combout\,
	sclr => \twentySixBitCounter1|Equal0~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \twentySixBitCounter1|tempCount\(9));

-- Location: LABCELL_X37_Y2_N0
\twentySixBitCounter1|Add0~65\ : cyclonev_lcell_comb
-- Equation(s):
-- \twentySixBitCounter1|Add0~65_sumout\ = SUM(( \twentySixBitCounter1|tempCount\(10) ) + ( GND ) + ( \twentySixBitCounter1|Add0~14\ ))
-- \twentySixBitCounter1|Add0~66\ = CARRY(( \twentySixBitCounter1|tempCount\(10) ) + ( GND ) + ( \twentySixBitCounter1|Add0~14\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \twentySixBitCounter1|ALT_INV_tempCount\(10),
	cin => \twentySixBitCounter1|Add0~14\,
	sumout => \twentySixBitCounter1|Add0~65_sumout\,
	cout => \twentySixBitCounter1|Add0~66\);

-- Location: FF_X37_Y2_N2
\twentySixBitCounter1|tempCount[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \twentySixBitCounter1|Add0~65_sumout\,
	clrn => \ALT_INV_resetHex0~0_combout\,
	sclr => \twentySixBitCounter1|Equal0~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \twentySixBitCounter1|tempCount\(10));

-- Location: LABCELL_X37_Y2_N3
\twentySixBitCounter1|Add0~69\ : cyclonev_lcell_comb
-- Equation(s):
-- \twentySixBitCounter1|Add0~69_sumout\ = SUM(( \twentySixBitCounter1|tempCount\(11) ) + ( GND ) + ( \twentySixBitCounter1|Add0~66\ ))
-- \twentySixBitCounter1|Add0~70\ = CARRY(( \twentySixBitCounter1|tempCount\(11) ) + ( GND ) + ( \twentySixBitCounter1|Add0~66\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \twentySixBitCounter1|ALT_INV_tempCount\(11),
	cin => \twentySixBitCounter1|Add0~66\,
	sumout => \twentySixBitCounter1|Add0~69_sumout\,
	cout => \twentySixBitCounter1|Add0~70\);

-- Location: FF_X37_Y2_N5
\twentySixBitCounter1|tempCount[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \twentySixBitCounter1|Add0~69_sumout\,
	clrn => \ALT_INV_resetHex0~0_combout\,
	sclr => \twentySixBitCounter1|Equal0~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \twentySixBitCounter1|tempCount\(11));

-- Location: LABCELL_X37_Y2_N6
\twentySixBitCounter1|Add0~73\ : cyclonev_lcell_comb
-- Equation(s):
-- \twentySixBitCounter1|Add0~73_sumout\ = SUM(( \twentySixBitCounter1|tempCount\(12) ) + ( GND ) + ( \twentySixBitCounter1|Add0~70\ ))
-- \twentySixBitCounter1|Add0~74\ = CARRY(( \twentySixBitCounter1|tempCount\(12) ) + ( GND ) + ( \twentySixBitCounter1|Add0~70\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \twentySixBitCounter1|ALT_INV_tempCount\(12),
	cin => \twentySixBitCounter1|Add0~70\,
	sumout => \twentySixBitCounter1|Add0~73_sumout\,
	cout => \twentySixBitCounter1|Add0~74\);

-- Location: FF_X37_Y2_N7
\twentySixBitCounter1|tempCount[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \twentySixBitCounter1|Add0~73_sumout\,
	clrn => \ALT_INV_resetHex0~0_combout\,
	sclr => \twentySixBitCounter1|Equal0~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \twentySixBitCounter1|tempCount\(12));

-- Location: LABCELL_X37_Y2_N9
\twentySixBitCounter1|Add0~77\ : cyclonev_lcell_comb
-- Equation(s):
-- \twentySixBitCounter1|Add0~77_sumout\ = SUM(( \twentySixBitCounter1|tempCount\(13) ) + ( GND ) + ( \twentySixBitCounter1|Add0~74\ ))
-- \twentySixBitCounter1|Add0~78\ = CARRY(( \twentySixBitCounter1|tempCount\(13) ) + ( GND ) + ( \twentySixBitCounter1|Add0~74\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \twentySixBitCounter1|ALT_INV_tempCount\(13),
	cin => \twentySixBitCounter1|Add0~74\,
	sumout => \twentySixBitCounter1|Add0~77_sumout\,
	cout => \twentySixBitCounter1|Add0~78\);

-- Location: FF_X37_Y2_N11
\twentySixBitCounter1|tempCount[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \twentySixBitCounter1|Add0~77_sumout\,
	clrn => \ALT_INV_resetHex0~0_combout\,
	sclr => \twentySixBitCounter1|Equal0~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \twentySixBitCounter1|tempCount\(13));

-- Location: LABCELL_X37_Y2_N12
\twentySixBitCounter1|Add0~81\ : cyclonev_lcell_comb
-- Equation(s):
-- \twentySixBitCounter1|Add0~81_sumout\ = SUM(( \twentySixBitCounter1|tempCount[14]~DUPLICATE_q\ ) + ( GND ) + ( \twentySixBitCounter1|Add0~78\ ))
-- \twentySixBitCounter1|Add0~82\ = CARRY(( \twentySixBitCounter1|tempCount[14]~DUPLICATE_q\ ) + ( GND ) + ( \twentySixBitCounter1|Add0~78\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \twentySixBitCounter1|ALT_INV_tempCount[14]~DUPLICATE_q\,
	cin => \twentySixBitCounter1|Add0~78\,
	sumout => \twentySixBitCounter1|Add0~81_sumout\,
	cout => \twentySixBitCounter1|Add0~82\);

-- Location: FF_X37_Y2_N13
\twentySixBitCounter1|tempCount[14]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \twentySixBitCounter1|Add0~81_sumout\,
	clrn => \ALT_INV_resetHex0~0_combout\,
	sclr => \twentySixBitCounter1|Equal0~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \twentySixBitCounter1|tempCount[14]~DUPLICATE_q\);

-- Location: LABCELL_X37_Y2_N15
\twentySixBitCounter1|Add0~85\ : cyclonev_lcell_comb
-- Equation(s):
-- \twentySixBitCounter1|Add0~85_sumout\ = SUM(( \twentySixBitCounter1|tempCount\(15) ) + ( GND ) + ( \twentySixBitCounter1|Add0~82\ ))
-- \twentySixBitCounter1|Add0~86\ = CARRY(( \twentySixBitCounter1|tempCount\(15) ) + ( GND ) + ( \twentySixBitCounter1|Add0~82\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \twentySixBitCounter1|ALT_INV_tempCount\(15),
	cin => \twentySixBitCounter1|Add0~82\,
	sumout => \twentySixBitCounter1|Add0~85_sumout\,
	cout => \twentySixBitCounter1|Add0~86\);

-- Location: FF_X37_Y2_N17
\twentySixBitCounter1|tempCount[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \twentySixBitCounter1|Add0~85_sumout\,
	clrn => \ALT_INV_resetHex0~0_combout\,
	sclr => \twentySixBitCounter1|Equal0~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \twentySixBitCounter1|tempCount\(15));

-- Location: LABCELL_X37_Y2_N18
\twentySixBitCounter1|Add0~89\ : cyclonev_lcell_comb
-- Equation(s):
-- \twentySixBitCounter1|Add0~89_sumout\ = SUM(( \twentySixBitCounter1|tempCount\(16) ) + ( GND ) + ( \twentySixBitCounter1|Add0~86\ ))
-- \twentySixBitCounter1|Add0~90\ = CARRY(( \twentySixBitCounter1|tempCount\(16) ) + ( GND ) + ( \twentySixBitCounter1|Add0~86\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \twentySixBitCounter1|ALT_INV_tempCount\(16),
	cin => \twentySixBitCounter1|Add0~86\,
	sumout => \twentySixBitCounter1|Add0~89_sumout\,
	cout => \twentySixBitCounter1|Add0~90\);

-- Location: FF_X37_Y2_N20
\twentySixBitCounter1|tempCount[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \twentySixBitCounter1|Add0~89_sumout\,
	clrn => \ALT_INV_resetHex0~0_combout\,
	sclr => \twentySixBitCounter1|Equal0~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \twentySixBitCounter1|tempCount\(16));

-- Location: LABCELL_X37_Y2_N21
\twentySixBitCounter1|Add0~93\ : cyclonev_lcell_comb
-- Equation(s):
-- \twentySixBitCounter1|Add0~93_sumout\ = SUM(( \twentySixBitCounter1|tempCount[17]~DUPLICATE_q\ ) + ( GND ) + ( \twentySixBitCounter1|Add0~90\ ))
-- \twentySixBitCounter1|Add0~94\ = CARRY(( \twentySixBitCounter1|tempCount[17]~DUPLICATE_q\ ) + ( GND ) + ( \twentySixBitCounter1|Add0~90\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \twentySixBitCounter1|ALT_INV_tempCount[17]~DUPLICATE_q\,
	cin => \twentySixBitCounter1|Add0~90\,
	sumout => \twentySixBitCounter1|Add0~93_sumout\,
	cout => \twentySixBitCounter1|Add0~94\);

-- Location: FF_X37_Y2_N22
\twentySixBitCounter1|tempCount[17]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \twentySixBitCounter1|Add0~93_sumout\,
	clrn => \ALT_INV_resetHex0~0_combout\,
	sclr => \twentySixBitCounter1|Equal0~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \twentySixBitCounter1|tempCount[17]~DUPLICATE_q\);

-- Location: LABCELL_X37_Y2_N24
\twentySixBitCounter1|Add0~97\ : cyclonev_lcell_comb
-- Equation(s):
-- \twentySixBitCounter1|Add0~97_sumout\ = SUM(( \twentySixBitCounter1|tempCount\(18) ) + ( GND ) + ( \twentySixBitCounter1|Add0~94\ ))
-- \twentySixBitCounter1|Add0~98\ = CARRY(( \twentySixBitCounter1|tempCount\(18) ) + ( GND ) + ( \twentySixBitCounter1|Add0~94\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \twentySixBitCounter1|ALT_INV_tempCount\(18),
	cin => \twentySixBitCounter1|Add0~94\,
	sumout => \twentySixBitCounter1|Add0~97_sumout\,
	cout => \twentySixBitCounter1|Add0~98\);

-- Location: FF_X37_Y2_N26
\twentySixBitCounter1|tempCount[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \twentySixBitCounter1|Add0~97_sumout\,
	clrn => \ALT_INV_resetHex0~0_combout\,
	sclr => \twentySixBitCounter1|Equal0~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \twentySixBitCounter1|tempCount\(18));

-- Location: LABCELL_X37_Y2_N27
\twentySixBitCounter1|Add0~101\ : cyclonev_lcell_comb
-- Equation(s):
-- \twentySixBitCounter1|Add0~101_sumout\ = SUM(( \twentySixBitCounter1|tempCount\(19) ) + ( GND ) + ( \twentySixBitCounter1|Add0~98\ ))
-- \twentySixBitCounter1|Add0~102\ = CARRY(( \twentySixBitCounter1|tempCount\(19) ) + ( GND ) + ( \twentySixBitCounter1|Add0~98\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \twentySixBitCounter1|ALT_INV_tempCount\(19),
	cin => \twentySixBitCounter1|Add0~98\,
	sumout => \twentySixBitCounter1|Add0~101_sumout\,
	cout => \twentySixBitCounter1|Add0~102\);

-- Location: FF_X37_Y2_N29
\twentySixBitCounter1|tempCount[19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \twentySixBitCounter1|Add0~101_sumout\,
	clrn => \ALT_INV_resetHex0~0_combout\,
	sclr => \twentySixBitCounter1|Equal0~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \twentySixBitCounter1|tempCount\(19));

-- Location: LABCELL_X37_Y2_N30
\twentySixBitCounter1|Add0~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \twentySixBitCounter1|Add0~1_sumout\ = SUM(( \twentySixBitCounter1|tempCount\(20) ) + ( GND ) + ( \twentySixBitCounter1|Add0~102\ ))
-- \twentySixBitCounter1|Add0~2\ = CARRY(( \twentySixBitCounter1|tempCount\(20) ) + ( GND ) + ( \twentySixBitCounter1|Add0~102\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \twentySixBitCounter1|ALT_INV_tempCount\(20),
	cin => \twentySixBitCounter1|Add0~102\,
	sumout => \twentySixBitCounter1|Add0~1_sumout\,
	cout => \twentySixBitCounter1|Add0~2\);

-- Location: FF_X37_Y2_N31
\twentySixBitCounter1|tempCount[20]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \twentySixBitCounter1|Add0~1_sumout\,
	clrn => \ALT_INV_resetHex0~0_combout\,
	sclr => \twentySixBitCounter1|Equal0~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \twentySixBitCounter1|tempCount\(20));

-- Location: LABCELL_X37_Y2_N33
\twentySixBitCounter1|Add0~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \twentySixBitCounter1|Add0~5_sumout\ = SUM(( \twentySixBitCounter1|tempCount\(21) ) + ( GND ) + ( \twentySixBitCounter1|Add0~2\ ))
-- \twentySixBitCounter1|Add0~6\ = CARRY(( \twentySixBitCounter1|tempCount\(21) ) + ( GND ) + ( \twentySixBitCounter1|Add0~2\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \twentySixBitCounter1|ALT_INV_tempCount\(21),
	cin => \twentySixBitCounter1|Add0~2\,
	sumout => \twentySixBitCounter1|Add0~5_sumout\,
	cout => \twentySixBitCounter1|Add0~6\);

-- Location: FF_X37_Y2_N35
\twentySixBitCounter1|tempCount[21]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \twentySixBitCounter1|Add0~5_sumout\,
	clrn => \ALT_INV_resetHex0~0_combout\,
	sclr => \twentySixBitCounter1|Equal0~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \twentySixBitCounter1|tempCount\(21));

-- Location: FF_X37_Y2_N23
\twentySixBitCounter1|tempCount[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \twentySixBitCounter1|Add0~93_sumout\,
	clrn => \ALT_INV_resetHex0~0_combout\,
	sclr => \twentySixBitCounter1|Equal0~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \twentySixBitCounter1|tempCount\(17));

-- Location: FF_X37_Y2_N14
\twentySixBitCounter1|tempCount[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \twentySixBitCounter1|Add0~81_sumout\,
	clrn => \ALT_INV_resetHex0~0_combout\,
	sclr => \twentySixBitCounter1|Equal0~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \twentySixBitCounter1|tempCount\(14));

-- Location: LABCELL_X37_Y2_N48
\twentySixBitCounter1|Equal0~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \twentySixBitCounter1|Equal0~3_combout\ = ( \twentySixBitCounter1|tempCount\(19) & ( !\twentySixBitCounter1|tempCount\(16) & ( (\twentySixBitCounter1|tempCount\(17) & (\twentySixBitCounter1|tempCount\(15) & (!\twentySixBitCounter1|tempCount\(18) & 
-- \twentySixBitCounter1|tempCount\(14)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000001000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \twentySixBitCounter1|ALT_INV_tempCount\(17),
	datab => \twentySixBitCounter1|ALT_INV_tempCount\(15),
	datac => \twentySixBitCounter1|ALT_INV_tempCount\(18),
	datad => \twentySixBitCounter1|ALT_INV_tempCount\(14),
	datae => \twentySixBitCounter1|ALT_INV_tempCount\(19),
	dataf => \twentySixBitCounter1|ALT_INV_tempCount\(16),
	combout => \twentySixBitCounter1|Equal0~3_combout\);

-- Location: FF_X37_Y2_N4
\twentySixBitCounter1|tempCount[11]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \twentySixBitCounter1|Add0~69_sumout\,
	clrn => \ALT_INV_resetHex0~0_combout\,
	sclr => \twentySixBitCounter1|Equal0~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \twentySixBitCounter1|tempCount[11]~DUPLICATE_q\);

-- Location: LABCELL_X36_Y2_N33
\twentySixBitCounter1|Equal0~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \twentySixBitCounter1|Equal0~2_combout\ = ( !\twentySixBitCounter1|tempCount\(8) & ( !\twentySixBitCounter1|tempCount\(7) & ( (!\twentySixBitCounter1|tempCount[11]~DUPLICATE_q\ & (\twentySixBitCounter1|tempCount\(13) & 
-- (\twentySixBitCounter1|tempCount\(12) & !\twentySixBitCounter1|tempCount\(10)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001000000000000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \twentySixBitCounter1|ALT_INV_tempCount[11]~DUPLICATE_q\,
	datab => \twentySixBitCounter1|ALT_INV_tempCount\(13),
	datac => \twentySixBitCounter1|ALT_INV_tempCount\(12),
	datad => \twentySixBitCounter1|ALT_INV_tempCount\(10),
	datae => \twentySixBitCounter1|ALT_INV_tempCount\(8),
	dataf => \twentySixBitCounter1|ALT_INV_tempCount\(7),
	combout => \twentySixBitCounter1|Equal0~2_combout\);

-- Location: FF_X37_Y3_N44
\twentySixBitCounter1|tempCount[4]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \twentySixBitCounter1|Add0~45_sumout\,
	clrn => \ALT_INV_resetHex0~0_combout\,
	sclr => \twentySixBitCounter1|Equal0~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \twentySixBitCounter1|tempCount[4]~DUPLICATE_q\);

-- Location: LABCELL_X37_Y3_N6
\twentySixBitCounter1|Equal0~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \twentySixBitCounter1|Equal0~1_combout\ = ( \twentySixBitCounter1|tempCount\(2) & ( \twentySixBitCounter1|tempCount\(3) & ( (\twentySixBitCounter1|tempCount\(6) & (\twentySixBitCounter1|tempCount\(5) & (\twentySixBitCounter1|tempCount\(1) & 
-- \twentySixBitCounter1|tempCount[4]~DUPLICATE_q\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000000000001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \twentySixBitCounter1|ALT_INV_tempCount\(6),
	datab => \twentySixBitCounter1|ALT_INV_tempCount\(5),
	datac => \twentySixBitCounter1|ALT_INV_tempCount\(1),
	datad => \twentySixBitCounter1|ALT_INV_tempCount[4]~DUPLICATE_q\,
	datae => \twentySixBitCounter1|ALT_INV_tempCount\(2),
	dataf => \twentySixBitCounter1|ALT_INV_tempCount\(3),
	combout => \twentySixBitCounter1|Equal0~1_combout\);

-- Location: LABCELL_X37_Y2_N36
\twentySixBitCounter1|Add0~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \twentySixBitCounter1|Add0~9_sumout\ = SUM(( \twentySixBitCounter1|tempCount\(22) ) + ( GND ) + ( \twentySixBitCounter1|Add0~6\ ))
-- \twentySixBitCounter1|Add0~10\ = CARRY(( \twentySixBitCounter1|tempCount\(22) ) + ( GND ) + ( \twentySixBitCounter1|Add0~6\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \twentySixBitCounter1|ALT_INV_tempCount\(22),
	cin => \twentySixBitCounter1|Add0~6\,
	sumout => \twentySixBitCounter1|Add0~9_sumout\,
	cout => \twentySixBitCounter1|Add0~10\);

-- Location: FF_X37_Y2_N38
\twentySixBitCounter1|tempCount[22]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \twentySixBitCounter1|Add0~9_sumout\,
	clrn => \ALT_INV_resetHex0~0_combout\,
	sclr => \twentySixBitCounter1|Equal0~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \twentySixBitCounter1|tempCount\(22));

-- Location: LABCELL_X37_Y2_N39
\twentySixBitCounter1|Add0~17\ : cyclonev_lcell_comb
-- Equation(s):
-- \twentySixBitCounter1|Add0~17_sumout\ = SUM(( \twentySixBitCounter1|tempCount\(23) ) + ( GND ) + ( \twentySixBitCounter1|Add0~10\ ))
-- \twentySixBitCounter1|Add0~18\ = CARRY(( \twentySixBitCounter1|tempCount\(23) ) + ( GND ) + ( \twentySixBitCounter1|Add0~10\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \twentySixBitCounter1|ALT_INV_tempCount\(23),
	cin => \twentySixBitCounter1|Add0~10\,
	sumout => \twentySixBitCounter1|Add0~17_sumout\,
	cout => \twentySixBitCounter1|Add0~18\);

-- Location: FF_X37_Y2_N40
\twentySixBitCounter1|tempCount[23]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \twentySixBitCounter1|Add0~17_sumout\,
	clrn => \ALT_INV_resetHex0~0_combout\,
	sclr => \twentySixBitCounter1|Equal0~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \twentySixBitCounter1|tempCount\(23));

-- Location: LABCELL_X37_Y2_N42
\twentySixBitCounter1|Add0~21\ : cyclonev_lcell_comb
-- Equation(s):
-- \twentySixBitCounter1|Add0~21_sumout\ = SUM(( \twentySixBitCounter1|tempCount\(24) ) + ( GND ) + ( \twentySixBitCounter1|Add0~18\ ))
-- \twentySixBitCounter1|Add0~22\ = CARRY(( \twentySixBitCounter1|tempCount\(24) ) + ( GND ) + ( \twentySixBitCounter1|Add0~18\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \twentySixBitCounter1|ALT_INV_tempCount\(24),
	cin => \twentySixBitCounter1|Add0~18\,
	sumout => \twentySixBitCounter1|Add0~21_sumout\,
	cout => \twentySixBitCounter1|Add0~22\);

-- Location: FF_X37_Y2_N44
\twentySixBitCounter1|tempCount[24]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \twentySixBitCounter1|Add0~21_sumout\,
	clrn => \ALT_INV_resetHex0~0_combout\,
	sclr => \twentySixBitCounter1|Equal0~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \twentySixBitCounter1|tempCount\(24));

-- Location: FF_X37_Y2_N47
\twentySixBitCounter1|tempCount[25]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \twentySixBitCounter1|Add0~25_sumout\,
	clrn => \ALT_INV_resetHex0~0_combout\,
	sclr => \twentySixBitCounter1|Equal0~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \twentySixBitCounter1|tempCount\(25));

-- Location: LABCELL_X37_Y2_N45
\twentySixBitCounter1|Add0~25\ : cyclonev_lcell_comb
-- Equation(s):
-- \twentySixBitCounter1|Add0~25_sumout\ = SUM(( \twentySixBitCounter1|tempCount\(25) ) + ( GND ) + ( \twentySixBitCounter1|Add0~22\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \twentySixBitCounter1|ALT_INV_tempCount\(25),
	cin => \twentySixBitCounter1|Add0~22\,
	sumout => \twentySixBitCounter1|Add0~25_sumout\);

-- Location: FF_X37_Y2_N46
\twentySixBitCounter1|tempCount[25]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \twentySixBitCounter1|Add0~25_sumout\,
	clrn => \ALT_INV_resetHex0~0_combout\,
	sclr => \twentySixBitCounter1|Equal0~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \twentySixBitCounter1|tempCount[25]~DUPLICATE_q\);

-- Location: LABCELL_X37_Y3_N12
\twentySixBitCounter1|Equal0~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \twentySixBitCounter1|Equal0~0_combout\ = ( \twentySixBitCounter1|tempCount[25]~DUPLICATE_q\ & ( \twentySixBitCounter1|tempCount\(23) & ( (\twentySixBitCounter1|tempCount\(0) & (!\twentySixBitCounter1|tempCount\(9) & (!\twentySixBitCounter1|tempCount\(24) 
-- & \twentySixBitCounter1|tempCount\(22)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000001000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \twentySixBitCounter1|ALT_INV_tempCount\(0),
	datab => \twentySixBitCounter1|ALT_INV_tempCount\(9),
	datac => \twentySixBitCounter1|ALT_INV_tempCount\(24),
	datad => \twentySixBitCounter1|ALT_INV_tempCount\(22),
	datae => \twentySixBitCounter1|ALT_INV_tempCount[25]~DUPLICATE_q\,
	dataf => \twentySixBitCounter1|ALT_INV_tempCount\(23),
	combout => \twentySixBitCounter1|Equal0~0_combout\);

-- Location: LABCELL_X37_Y2_N54
\twentySixBitCounter1|Equal0~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \twentySixBitCounter1|Equal0~4_combout\ = ( \twentySixBitCounter1|Equal0~1_combout\ & ( \twentySixBitCounter1|Equal0~0_combout\ & ( (\twentySixBitCounter1|tempCount\(20) & (\twentySixBitCounter1|tempCount\(21) & (\twentySixBitCounter1|Equal0~3_combout\ & 
-- \twentySixBitCounter1|Equal0~2_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000000000001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \twentySixBitCounter1|ALT_INV_tempCount\(20),
	datab => \twentySixBitCounter1|ALT_INV_tempCount\(21),
	datac => \twentySixBitCounter1|ALT_INV_Equal0~3_combout\,
	datad => \twentySixBitCounter1|ALT_INV_Equal0~2_combout\,
	datae => \twentySixBitCounter1|ALT_INV_Equal0~1_combout\,
	dataf => \twentySixBitCounter1|ALT_INV_Equal0~0_combout\,
	combout => \twentySixBitCounter1|Equal0~4_combout\);

-- Location: FF_X37_Y2_N53
\twentySixBitCounter1|reached\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	asdata => \twentySixBitCounter1|Equal0~4_combout\,
	clrn => \ALT_INV_resetHex0~0_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \twentySixBitCounter1|reached~q\);

-- Location: LABCELL_X35_Y1_N54
\fourBitCounter1|tempCount~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \fourBitCounter1|tempCount~0_combout\ = ( !\fourBitCounter1|tempCount\(0) & ( \resetHex0~q\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111000011110000111100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_resetHex0~q\,
	dataf => \fourBitCounter1|ALT_INV_tempCount\(0),
	combout => \fourBitCounter1|tempCount~0_combout\);

-- Location: FF_X35_Y1_N11
\fourBitCounter1|tempCount[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \twentySixBitCounter1|reached~q\,
	asdata => \fourBitCounter1|tempCount~0_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fourBitCounter1|tempCount\(0));

-- Location: LABCELL_X37_Y1_N42
\fourBitCounter1|tempCount~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \fourBitCounter1|tempCount~1_combout\ = ( \resetHex0~q\ & ( !\fourBitCounter1|tempCount\(1) $ (!\fourBitCounter1|tempCount\(0)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000110011110011000011001111001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \fourBitCounter1|ALT_INV_tempCount\(1),
	datad => \fourBitCounter1|ALT_INV_tempCount\(0),
	dataf => \ALT_INV_resetHex0~q\,
	combout => \fourBitCounter1|tempCount~1_combout\);

-- Location: FF_X35_Y1_N17
\fourBitCounter1|tempCount[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \twentySixBitCounter1|reached~q\,
	asdata => \fourBitCounter1|tempCount~1_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fourBitCounter1|tempCount\(1));

-- Location: LABCELL_X35_Y1_N15
\fourBitCounter1|tempCount~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \fourBitCounter1|tempCount~2_combout\ = ( \resetHex0~q\ & ( !\fourBitCounter1|tempCount\(2) $ (((!\fourBitCounter1|tempCount\(0)) # (!\fourBitCounter1|tempCount\(1)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000110011001111000011001100111100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \fourBitCounter1|ALT_INV_tempCount\(2),
	datac => \fourBitCounter1|ALT_INV_tempCount\(0),
	datad => \fourBitCounter1|ALT_INV_tempCount\(1),
	dataf => \ALT_INV_resetHex0~q\,
	combout => \fourBitCounter1|tempCount~2_combout\);

-- Location: FF_X36_Y2_N8
\fourBitCounter1|tempCount[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \twentySixBitCounter1|reached~q\,
	asdata => \fourBitCounter1|tempCount~2_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fourBitCounter1|tempCount\(2));

-- Location: LABCELL_X35_Y1_N24
\Equal0~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Equal0~0_combout\ = ( !\fourBitCounter1|tempCount\(0) & ( (!\fourBitCounter1|tempCount\(1) & (\fourBitCounter1|tempCount\(3) & !\fourBitCounter1|tempCount\(2))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000110000000000000011000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \fourBitCounter1|ALT_INV_tempCount\(1),
	datac => \fourBitCounter1|ALT_INV_tempCount\(3),
	datad => \fourBitCounter1|ALT_INV_tempCount\(2),
	dataf => \fourBitCounter1|ALT_INV_tempCount\(0),
	combout => \Equal0~0_combout\);

-- Location: LABCELL_X37_Y1_N12
\resetHex0~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \resetHex0~1_combout\ = !\Equal0~0_combout\

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111100000000111111110000000011111111000000001111111100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \ALT_INV_Equal0~0_combout\,
	combout => \resetHex0~1_combout\);

-- Location: FF_X37_Y1_N13
resetHex0 : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \twentySixBitCounter1|reached~q\,
	d => \resetHex0~1_combout\,
	clrn => \ALT_INV_resetHex0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \resetHex0~q\);

-- Location: LABCELL_X35_Y1_N9
\fourBitCounter1|tempCount~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \fourBitCounter1|tempCount~3_combout\ = ( \fourBitCounter1|tempCount\(2) & ( (\resetHex0~q\ & (!\fourBitCounter1|tempCount\(3) $ (((!\fourBitCounter1|tempCount\(1)) # (!\fourBitCounter1|tempCount\(0)))))) ) ) # ( !\fourBitCounter1|tempCount\(2) & ( 
-- (\fourBitCounter1|tempCount\(3) & \resetHex0~q\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000100010001000100010001000100010001000100100001000100010010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \fourBitCounter1|ALT_INV_tempCount\(3),
	datab => \ALT_INV_resetHex0~q\,
	datac => \fourBitCounter1|ALT_INV_tempCount\(1),
	datad => \fourBitCounter1|ALT_INV_tempCount\(0),
	dataf => \fourBitCounter1|ALT_INV_tempCount\(2),
	combout => \fourBitCounter1|tempCount~3_combout\);

-- Location: FF_X35_Y1_N2
\fourBitCounter1|tempCount[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \twentySixBitCounter1|reached~q\,
	asdata => \fourBitCounter1|tempCount~3_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fourBitCounter1|tempCount\(3));

-- Location: MLABCELL_X39_Y2_N15
\sevenSegment1|Mux6~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \sevenSegment1|Mux6~0_combout\ = ( \fourBitCounter1|tempCount\(0) & ( \fourBitCounter1|tempCount\(2) & ( \fourBitCounter1|tempCount\(3) ) ) ) # ( !\fourBitCounter1|tempCount\(0) & ( \fourBitCounter1|tempCount\(2) & ( (!\fourBitCounter1|tempCount\(1)) # 
-- (\fourBitCounter1|tempCount\(3)) ) ) ) # ( \fourBitCounter1|tempCount\(0) & ( !\fourBitCounter1|tempCount\(2) & ( !\fourBitCounter1|tempCount\(3) $ (\fourBitCounter1|tempCount\(1)) ) ) ) # ( !\fourBitCounter1|tempCount\(0) & ( 
-- !\fourBitCounter1|tempCount\(2) & ( (\fourBitCounter1|tempCount\(3) & \fourBitCounter1|tempCount\(1)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000001010101101010100101010111111111010101010101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \fourBitCounter1|ALT_INV_tempCount\(3),
	datad => \fourBitCounter1|ALT_INV_tempCount\(1),
	datae => \fourBitCounter1|ALT_INV_tempCount\(0),
	dataf => \fourBitCounter1|ALT_INV_tempCount\(2),
	combout => \sevenSegment1|Mux6~0_combout\);

-- Location: MLABCELL_X39_Y2_N54
\sevenSegment1|Mux5~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \sevenSegment1|Mux5~0_combout\ = ( \fourBitCounter1|tempCount\(0) & ( \fourBitCounter1|tempCount\(2) & ( (!\fourBitCounter1|tempCount\(1)) # (\fourBitCounter1|tempCount\(3)) ) ) ) # ( !\fourBitCounter1|tempCount\(0) & ( \fourBitCounter1|tempCount\(2) & ( 
-- (\fourBitCounter1|tempCount\(3)) # (\fourBitCounter1|tempCount\(1)) ) ) ) # ( \fourBitCounter1|tempCount\(0) & ( !\fourBitCounter1|tempCount\(2) & ( (\fourBitCounter1|tempCount\(1) & \fourBitCounter1|tempCount\(3)) ) ) ) # ( 
-- !\fourBitCounter1|tempCount\(0) & ( !\fourBitCounter1|tempCount\(2) & ( (\fourBitCounter1|tempCount\(1) & \fourBitCounter1|tempCount\(3)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010100000101000001010000010101011111010111111010111110101111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \fourBitCounter1|ALT_INV_tempCount\(1),
	datac => \fourBitCounter1|ALT_INV_tempCount\(3),
	datae => \fourBitCounter1|ALT_INV_tempCount\(0),
	dataf => \fourBitCounter1|ALT_INV_tempCount\(2),
	combout => \sevenSegment1|Mux5~0_combout\);

-- Location: MLABCELL_X39_Y2_N48
\sevenSegment1|Mux4~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \sevenSegment1|Mux4~0_combout\ = ( \fourBitCounter1|tempCount\(0) & ( \fourBitCounter1|tempCount\(2) & ( \fourBitCounter1|tempCount\(3) ) ) ) # ( !\fourBitCounter1|tempCount\(0) & ( \fourBitCounter1|tempCount\(2) & ( \fourBitCounter1|tempCount\(3) ) ) ) # 
-- ( \fourBitCounter1|tempCount\(0) & ( !\fourBitCounter1|tempCount\(2) & ( (\fourBitCounter1|tempCount\(1) & \fourBitCounter1|tempCount\(3)) ) ) ) # ( !\fourBitCounter1|tempCount\(0) & ( !\fourBitCounter1|tempCount\(2) & ( \fourBitCounter1|tempCount\(1) ) ) 
-- )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101000001010000010100001111000011110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \fourBitCounter1|ALT_INV_tempCount\(1),
	datac => \fourBitCounter1|ALT_INV_tempCount\(3),
	datae => \fourBitCounter1|ALT_INV_tempCount\(0),
	dataf => \fourBitCounter1|ALT_INV_tempCount\(2),
	combout => \sevenSegment1|Mux4~0_combout\);

-- Location: MLABCELL_X39_Y2_N18
\sevenSegment1|Mux3~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \sevenSegment1|Mux3~0_combout\ = ( \fourBitCounter1|tempCount\(0) & ( \fourBitCounter1|tempCount\(2) & ( (\fourBitCounter1|tempCount\(3)) # (\fourBitCounter1|tempCount\(1)) ) ) ) # ( !\fourBitCounter1|tempCount\(0) & ( \fourBitCounter1|tempCount\(2) & ( 
-- (!\fourBitCounter1|tempCount\(1)) # (\fourBitCounter1|tempCount\(3)) ) ) ) # ( \fourBitCounter1|tempCount\(0) & ( !\fourBitCounter1|tempCount\(2) & ( (!\fourBitCounter1|tempCount\(1)) # (\fourBitCounter1|tempCount\(3)) ) ) ) # ( 
-- !\fourBitCounter1|tempCount\(0) & ( !\fourBitCounter1|tempCount\(2) & ( (\fourBitCounter1|tempCount\(1) & \fourBitCounter1|tempCount\(3)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010100000101101011111010111110101111101011110101111101011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \fourBitCounter1|ALT_INV_tempCount\(1),
	datac => \fourBitCounter1|ALT_INV_tempCount\(3),
	datae => \fourBitCounter1|ALT_INV_tempCount\(0),
	dataf => \fourBitCounter1|ALT_INV_tempCount\(2),
	combout => \sevenSegment1|Mux3~0_combout\);

-- Location: MLABCELL_X39_Y2_N27
\sevenSegment1|Mux2~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \sevenSegment1|Mux2~0_combout\ = ( \fourBitCounter1|tempCount\(0) & ( \fourBitCounter1|tempCount\(2) ) ) # ( !\fourBitCounter1|tempCount\(0) & ( \fourBitCounter1|tempCount\(2) & ( (!\fourBitCounter1|tempCount\(1)) # (\fourBitCounter1|tempCount\(3)) ) ) ) 
-- # ( \fourBitCounter1|tempCount\(0) & ( !\fourBitCounter1|tempCount\(2) ) ) # ( !\fourBitCounter1|tempCount\(0) & ( !\fourBitCounter1|tempCount\(2) & ( (\fourBitCounter1|tempCount\(3) & \fourBitCounter1|tempCount\(1)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000001010101111111111111111111111111010101011111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \fourBitCounter1|ALT_INV_tempCount\(3),
	datad => \fourBitCounter1|ALT_INV_tempCount\(1),
	datae => \fourBitCounter1|ALT_INV_tempCount\(0),
	dataf => \fourBitCounter1|ALT_INV_tempCount\(2),
	combout => \sevenSegment1|Mux2~0_combout\);

-- Location: MLABCELL_X39_Y2_N30
\sevenSegment1|Mux1~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \sevenSegment1|Mux1~0_combout\ = ( \fourBitCounter1|tempCount\(0) & ( \fourBitCounter1|tempCount\(2) & ( (\fourBitCounter1|tempCount\(3)) # (\fourBitCounter1|tempCount\(1)) ) ) ) # ( !\fourBitCounter1|tempCount\(0) & ( \fourBitCounter1|tempCount\(2) & ( 
-- \fourBitCounter1|tempCount\(3) ) ) ) # ( \fourBitCounter1|tempCount\(0) & ( !\fourBitCounter1|tempCount\(2) & ( (!\fourBitCounter1|tempCount\(3)) # (\fourBitCounter1|tempCount\(1)) ) ) ) # ( !\fourBitCounter1|tempCount\(0) & ( 
-- !\fourBitCounter1|tempCount\(2) & ( \fourBitCounter1|tempCount\(1) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101111101011111010100001111000011110101111101011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \fourBitCounter1|ALT_INV_tempCount\(1),
	datac => \fourBitCounter1|ALT_INV_tempCount\(3),
	datae => \fourBitCounter1|ALT_INV_tempCount\(0),
	dataf => \fourBitCounter1|ALT_INV_tempCount\(2),
	combout => \sevenSegment1|Mux1~0_combout\);

-- Location: MLABCELL_X39_Y2_N39
\sevenSegment1|Mux0~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \sevenSegment1|Mux0~0_combout\ = ( \fourBitCounter1|tempCount\(0) & ( \fourBitCounter1|tempCount\(2) & ( (!\fourBitCounter1|tempCount\(3) & !\fourBitCounter1|tempCount\(1)) ) ) ) # ( !\fourBitCounter1|tempCount\(0) & ( \fourBitCounter1|tempCount\(2) & ( 
-- !\fourBitCounter1|tempCount\(3) ) ) ) # ( \fourBitCounter1|tempCount\(0) & ( !\fourBitCounter1|tempCount\(2) & ( !\fourBitCounter1|tempCount\(3) $ (!\fourBitCounter1|tempCount\(1)) ) ) ) # ( !\fourBitCounter1|tempCount\(0) & ( 
-- !\fourBitCounter1|tempCount\(2) & ( !\fourBitCounter1|tempCount\(3) $ (!\fourBitCounter1|tempCount\(1)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010110101010010101011010101010101010101010101010101000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \fourBitCounter1|ALT_INV_tempCount\(3),
	datad => \fourBitCounter1|ALT_INV_tempCount\(1),
	datae => \fourBitCounter1|ALT_INV_tempCount\(0),
	dataf => \fourBitCounter1|ALT_INV_tempCount\(2),
	combout => \sevenSegment1|Mux0~0_combout\);

-- Location: FF_X36_Y2_N59
incHex1Count : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \twentySixBitCounter1|reached~q\,
	asdata => \Equal0~0_combout\,
	sload => VCC,
	ena => \ALT_INV_resetHex0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \incHex1Count~q\);

-- Location: MLABCELL_X34_Y2_N39
\fourBitCounter2|tempCount~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \fourBitCounter2|tempCount~0_combout\ = ( \resetHex1~q\ & ( !\fourBitCounter2|tempCount\(0) $ (!\incHex1Count~q\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000111100001111000011110000111100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \fourBitCounter2|ALT_INV_tempCount\(0),
	datac => \ALT_INV_incHex1Count~q\,
	dataf => \ALT_INV_resetHex1~q\,
	combout => \fourBitCounter2|tempCount~0_combout\);

-- Location: FF_X35_Y2_N20
\fourBitCounter2|tempCount[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \twentySixBitCounter1|reached~q\,
	asdata => \fourBitCounter2|tempCount~0_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fourBitCounter2|tempCount\(0));

-- Location: MLABCELL_X34_Y2_N54
\fourBitCounter2|tempCount~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \fourBitCounter2|tempCount~1_combout\ = ( \resetHex1~q\ & ( !\fourBitCounter2|tempCount\(1) $ (((!\incHex1Count~q\) # (!\fourBitCounter2|tempCount\(0)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000001111001111000000111100111100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_incHex1Count~q\,
	datac => \fourBitCounter2|ALT_INV_tempCount\(1),
	datad => \fourBitCounter2|ALT_INV_tempCount\(0),
	dataf => \ALT_INV_resetHex1~q\,
	combout => \fourBitCounter2|tempCount~1_combout\);

-- Location: FF_X35_Y2_N26
\fourBitCounter2|tempCount[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \twentySixBitCounter1|reached~q\,
	asdata => \fourBitCounter2|tempCount~1_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fourBitCounter2|tempCount\(1));

-- Location: MLABCELL_X34_Y2_N27
\fourBitCounter2|tempCount~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \fourBitCounter2|tempCount~3_combout\ = ( \fourBitCounter2|tempCount\(0) & ( \fourBitCounter2|tempCount\(1) & ( (\resetHex1~q\ & (!\fourBitCounter2|tempCount\(3) $ (((!\incHex1Count~q\) # (!\fourBitCounter2|tempCount\(2)))))) ) ) ) # ( 
-- !\fourBitCounter2|tempCount\(0) & ( \fourBitCounter2|tempCount\(1) & ( (\resetHex1~q\ & \fourBitCounter2|tempCount\(3)) ) ) ) # ( \fourBitCounter2|tempCount\(0) & ( !\fourBitCounter2|tempCount\(1) & ( (\resetHex1~q\ & \fourBitCounter2|tempCount\(3)) ) ) ) 
-- # ( !\fourBitCounter2|tempCount\(0) & ( !\fourBitCounter2|tempCount\(1) & ( (\resetHex1~q\ & \fourBitCounter2|tempCount\(3)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010100000101000001010000010100000101000001010000010100010100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_resetHex1~q\,
	datab => \ALT_INV_incHex1Count~q\,
	datac => \fourBitCounter2|ALT_INV_tempCount\(3),
	datad => \fourBitCounter2|ALT_INV_tempCount\(2),
	datae => \fourBitCounter2|ALT_INV_tempCount\(0),
	dataf => \fourBitCounter2|ALT_INV_tempCount\(1),
	combout => \fourBitCounter2|tempCount~3_combout\);

-- Location: FF_X35_Y2_N14
\fourBitCounter2|tempCount[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \twentySixBitCounter1|reached~q\,
	asdata => \fourBitCounter2|tempCount~3_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fourBitCounter2|tempCount\(3));

-- Location: LABCELL_X35_Y2_N12
\Equal1~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Equal1~0_combout\ = ( !\fourBitCounter2|tempCount\(1) & ( (\fourBitCounter2|tempCount\(2) & (\fourBitCounter2|tempCount\(0) & !\fourBitCounter2|tempCount\(3))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010100000000000001010000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \fourBitCounter2|ALT_INV_tempCount\(2),
	datac => \fourBitCounter2|ALT_INV_tempCount\(0),
	datad => \fourBitCounter2|ALT_INV_tempCount\(3),
	dataf => \fourBitCounter2|ALT_INV_tempCount\(1),
	combout => \Equal1~0_combout\);

-- Location: MLABCELL_X34_Y2_N57
\resetHex1~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \resetHex1~0_combout\ = ( \Equal1~0_combout\ & ( !\Equal0~0_combout\ ) ) # ( !\Equal1~0_combout\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111111111111111111111111111110000111100001111000011110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_Equal0~0_combout\,
	dataf => \ALT_INV_Equal1~0_combout\,
	combout => \resetHex1~0_combout\);

-- Location: FF_X34_Y2_N58
resetHex1 : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \twentySixBitCounter1|reached~q\,
	d => \resetHex1~0_combout\,
	clrn => \ALT_INV_resetHex0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \resetHex1~q\);

-- Location: LABCELL_X35_Y2_N18
\fourBitCounter2|tempCount~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \fourBitCounter2|tempCount~2_combout\ = ( \fourBitCounter2|tempCount\(1) & ( (\resetHex1~q\ & (!\fourBitCounter2|tempCount\(2) $ (((!\incHex1Count~q\) # (!\fourBitCounter2|tempCount\(0)))))) ) ) # ( !\fourBitCounter2|tempCount\(1) & ( 
-- (\fourBitCounter2|tempCount\(2) & \resetHex1~q\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010100000101000001010000010100000101000001100000010100000110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \fourBitCounter2|ALT_INV_tempCount\(2),
	datab => \ALT_INV_incHex1Count~q\,
	datac => \ALT_INV_resetHex1~q\,
	datad => \fourBitCounter2|ALT_INV_tempCount\(0),
	dataf => \fourBitCounter2|ALT_INV_tempCount\(1),
	combout => \fourBitCounter2|tempCount~2_combout\);

-- Location: FF_X36_Y2_N2
\fourBitCounter2|tempCount[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \twentySixBitCounter1|reached~q\,
	asdata => \fourBitCounter2|tempCount~2_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fourBitCounter2|tempCount\(2));

-- Location: MLABCELL_X34_Y2_N51
\sevenSegment2|Mux6~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \sevenSegment2|Mux6~0_combout\ = ( \fourBitCounter2|tempCount\(1) & ( \fourBitCounter2|tempCount\(3) ) ) # ( !\fourBitCounter2|tempCount\(1) & ( !\fourBitCounter2|tempCount\(2) $ (((!\fourBitCounter2|tempCount\(0)) # (\fourBitCounter2|tempCount\(3)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101100101011001010110010101100100110011001100110011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \fourBitCounter2|ALT_INV_tempCount\(2),
	datab => \fourBitCounter2|ALT_INV_tempCount\(3),
	datac => \fourBitCounter2|ALT_INV_tempCount\(0),
	dataf => \fourBitCounter2|ALT_INV_tempCount\(1),
	combout => \sevenSegment2|Mux6~0_combout\);

-- Location: MLABCELL_X34_Y2_N18
\sevenSegment2|Mux5~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \sevenSegment2|Mux5~0_combout\ = ( \fourBitCounter2|tempCount\(1) & ( ((!\fourBitCounter2|tempCount\(0) & \fourBitCounter2|tempCount\(2))) # (\fourBitCounter2|tempCount\(3)) ) ) # ( !\fourBitCounter2|tempCount\(1) & ( (\fourBitCounter2|tempCount\(2) & 
-- ((\fourBitCounter2|tempCount\(3)) # (\fourBitCounter2|tempCount\(0)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001100001111000000110000111100001100111111110000110011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \fourBitCounter2|ALT_INV_tempCount\(0),
	datac => \fourBitCounter2|ALT_INV_tempCount\(2),
	datad => \fourBitCounter2|ALT_INV_tempCount\(3),
	dataf => \fourBitCounter2|ALT_INV_tempCount\(1),
	combout => \sevenSegment2|Mux5~0_combout\);

-- Location: MLABCELL_X34_Y2_N15
\sevenSegment2|Mux4~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \sevenSegment2|Mux4~0_combout\ = ( \fourBitCounter2|tempCount\(1) & ( ((!\fourBitCounter2|tempCount\(2) & !\fourBitCounter2|tempCount\(0))) # (\fourBitCounter2|tempCount\(3)) ) ) # ( !\fourBitCounter2|tempCount\(1) & ( (\fourBitCounter2|tempCount\(2) & 
-- \fourBitCounter2|tempCount\(3)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000100010001000100010001000110110011101100111011001110110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \fourBitCounter2|ALT_INV_tempCount\(2),
	datab => \fourBitCounter2|ALT_INV_tempCount\(3),
	datac => \fourBitCounter2|ALT_INV_tempCount\(0),
	dataf => \fourBitCounter2|ALT_INV_tempCount\(1),
	combout => \sevenSegment2|Mux4~0_combout\);

-- Location: MLABCELL_X34_Y2_N30
\sevenSegment2|Mux3~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \sevenSegment2|Mux3~0_combout\ = ( \fourBitCounter2|tempCount\(1) & ( ((\fourBitCounter2|tempCount\(0) & \fourBitCounter2|tempCount\(2))) # (\fourBitCounter2|tempCount\(3)) ) ) # ( !\fourBitCounter2|tempCount\(1) & ( (!\fourBitCounter2|tempCount\(0) & 
-- (\fourBitCounter2|tempCount\(2))) # (\fourBitCounter2|tempCount\(0) & ((!\fourBitCounter2|tempCount\(2)) # (\fourBitCounter2|tempCount\(3)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011110000111111001111000011111100000011111111110000001111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \fourBitCounter2|ALT_INV_tempCount\(0),
	datac => \fourBitCounter2|ALT_INV_tempCount\(2),
	datad => \fourBitCounter2|ALT_INV_tempCount\(3),
	dataf => \fourBitCounter2|ALT_INV_tempCount\(1),
	combout => \sevenSegment2|Mux3~0_combout\);

-- Location: MLABCELL_X34_Y2_N36
\sevenSegment2|Mux2~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \sevenSegment2|Mux2~0_combout\ = ( \fourBitCounter2|tempCount\(3) & ( ((\fourBitCounter2|tempCount\(2)) # (\fourBitCounter2|tempCount\(0))) # (\fourBitCounter2|tempCount\(1)) ) ) # ( !\fourBitCounter2|tempCount\(3) & ( ((!\fourBitCounter2|tempCount\(1) & 
-- \fourBitCounter2|tempCount\(2))) # (\fourBitCounter2|tempCount\(0)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011101100111011001110110011101101111111011111110111111101111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \fourBitCounter2|ALT_INV_tempCount\(1),
	datab => \fourBitCounter2|ALT_INV_tempCount\(0),
	datac => \fourBitCounter2|ALT_INV_tempCount\(2),
	dataf => \fourBitCounter2|ALT_INV_tempCount\(3),
	combout => \sevenSegment2|Mux2~0_combout\);

-- Location: MLABCELL_X34_Y2_N42
\sevenSegment2|Mux1~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \sevenSegment2|Mux1~0_combout\ = ( \fourBitCounter2|tempCount\(1) & ( ((!\fourBitCounter2|tempCount\(2)) # (\fourBitCounter2|tempCount\(3))) # (\fourBitCounter2|tempCount\(0)) ) ) # ( !\fourBitCounter2|tempCount\(1) & ( (!\fourBitCounter2|tempCount\(2) & 
-- (\fourBitCounter2|tempCount\(0) & !\fourBitCounter2|tempCount\(3))) # (\fourBitCounter2|tempCount\(2) & ((\fourBitCounter2|tempCount\(3)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011000000001111001100000000111111110011111111111111001111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \fourBitCounter2|ALT_INV_tempCount\(0),
	datac => \fourBitCounter2|ALT_INV_tempCount\(2),
	datad => \fourBitCounter2|ALT_INV_tempCount\(3),
	dataf => \fourBitCounter2|ALT_INV_tempCount\(1),
	combout => \sevenSegment2|Mux1~0_combout\);

-- Location: MLABCELL_X34_Y2_N0
\sevenSegment2|Mux0~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \sevenSegment2|Mux0~0_combout\ = ( \fourBitCounter2|tempCount\(1) & ( (!\fourBitCounter2|tempCount\(3) & ((!\fourBitCounter2|tempCount\(0)) # (!\fourBitCounter2|tempCount\(2)))) ) ) # ( !\fourBitCounter2|tempCount\(1) & ( !\fourBitCounter2|tempCount\(2) $ 
-- (!\fourBitCounter2|tempCount\(3)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111111110000000011111111000011111100000000001111110000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \fourBitCounter2|ALT_INV_tempCount\(0),
	datac => \fourBitCounter2|ALT_INV_tempCount\(2),
	datad => \fourBitCounter2|ALT_INV_tempCount\(3),
	dataf => \fourBitCounter2|ALT_INV_tempCount\(1),
	combout => \sevenSegment2|Mux0~0_combout\);

-- Location: LABCELL_X36_Y1_N33
\enable2~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \enable2~feeder_combout\ = VCC

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111111111111111111111111111111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	combout => \enable2~feeder_combout\);

-- Location: LABCELL_X36_Y1_N42
\enable2~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \enable2~0_combout\ = ( \KEY[0]~input_o\ & ( (\KEY[2]~input_o\ & !\KEY[3]~input_o\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000110000001100000011000000110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_KEY[2]~input_o\,
	datac => \ALT_INV_KEY[3]~input_o\,
	dataf => \ALT_INV_KEY[0]~input_o\,
	combout => \enable2~0_combout\);

-- Location: LABCELL_X35_Y1_N0
\switchValue2[3]~21\ : cyclonev_lcell_comb
-- Equation(s):
-- \switchValue2[3]~21_combout\ = ( \fourBitCounter1|tempCount\(3) & ( \fourBitCounter1|tempCount\(0) & ( (\KEY[2]~input_o\ & \KEY[0]~input_o\) ) ) ) # ( !\fourBitCounter1|tempCount\(3) & ( \fourBitCounter1|tempCount\(0) & ( (\KEY[2]~input_o\ & 
-- \KEY[0]~input_o\) ) ) ) # ( \fourBitCounter1|tempCount\(3) & ( !\fourBitCounter1|tempCount\(0) & ( (\KEY[2]~input_o\ & (\KEY[0]~input_o\ & ((\fourBitCounter1|tempCount\(1)) # (\fourBitCounter1|tempCount\(2))))) ) ) ) # ( !\fourBitCounter1|tempCount\(3) & 
-- ( !\fourBitCounter1|tempCount\(0) & ( (\KEY[2]~input_o\ & \KEY[0]~input_o\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010100000101000000010000010100000101000001010000010100000101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_KEY[2]~input_o\,
	datab => \fourBitCounter1|ALT_INV_tempCount\(2),
	datac => \ALT_INV_KEY[0]~input_o\,
	datad => \fourBitCounter1|ALT_INV_tempCount\(1),
	datae => \fourBitCounter1|ALT_INV_tempCount\(3),
	dataf => \fourBitCounter1|ALT_INV_tempCount\(0),
	combout => \switchValue2[3]~21_combout\);

-- Location: FF_X36_Y1_N35
enable2 : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \twentySixBitCounter1|reached~q\,
	d => \enable2~feeder_combout\,
	clrn => \ALT_INV_enable2~0_combout\,
	ena => \switchValue2[3]~21_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \enable2~q\);

-- Location: LABCELL_X36_Y1_N18
\switchValue2[3]~13\ : cyclonev_lcell_comb
-- Equation(s):
-- \switchValue2[3]~13_combout\ = ( \enable2~0_combout\ & ( \SW[3]~input_o\ ) ) # ( !\enable2~0_combout\ & ( \switchValue2[3]~13_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111000011110000111100000000111111110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_switchValue2[3]~13_combout\,
	datad => \ALT_INV_SW[3]~input_o\,
	dataf => \ALT_INV_enable2~0_combout\,
	combout => \switchValue2[3]~13_combout\);

-- Location: FF_X36_Y1_N38
\switchValue2[3]~_emulated\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \twentySixBitCounter1|reached~q\,
	asdata => \switchValue2[3]~13_combout\,
	clrn => \ALT_INV_enable2~0_combout\,
	sload => VCC,
	ena => \switchValue2[3]~21_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \switchValue2[3]~_emulated_q\);

-- Location: LABCELL_X36_Y1_N30
\switchValue2[3]~14\ : cyclonev_lcell_comb
-- Equation(s):
-- \switchValue2[3]~14_combout\ = ( \switchValue2[3]~13_combout\ & ( (!\enable2~0_combout\ & ((!\switchValue2[3]~_emulated_q\))) # (\enable2~0_combout\ & (\SW[3]~input_o\)) ) ) # ( !\switchValue2[3]~13_combout\ & ( (!\enable2~0_combout\ & 
-- ((\switchValue2[3]~_emulated_q\))) # (\enable2~0_combout\ & (\SW[3]~input_o\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001111001111000000111100111111001111000000111100111100000011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_enable2~0_combout\,
	datac => \ALT_INV_SW[3]~input_o\,
	datad => \ALT_INV_switchValue2[3]~_emulated_q\,
	dataf => \ALT_INV_switchValue2[3]~13_combout\,
	combout => \switchValue2[3]~14_combout\);

-- Location: LABCELL_X35_Y1_N6
\incHex2Count~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \incHex2Count~0_combout\ = ( \Equal0~0_combout\ & ( (\incHex2Count~q\) # (\Equal1~0_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000001111111111110000111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_Equal1~0_combout\,
	datad => \ALT_INV_incHex2Count~q\,
	dataf => \ALT_INV_Equal0~0_combout\,
	combout => \incHex2Count~0_combout\);

-- Location: FF_X35_Y1_N44
incHex2Count : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \twentySixBitCounter1|reached~q\,
	asdata => \incHex2Count~0_combout\,
	sload => VCC,
	ena => \ALT_INV_resetHex0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \incHex2Count~q\);

-- Location: LABCELL_X36_Y1_N21
\switchValue2~25\ : cyclonev_lcell_comb
-- Equation(s):
-- \switchValue2~25_combout\ = ( \SW[1]~input_o\ & ( (\SW[0]~input_o\) # (\SW[3]~input_o\) ) ) # ( !\SW[1]~input_o\ & ( ((\SW[2]~input_o\ & \SW[3]~input_o\)) # (\SW[0]~input_o\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001111100011111000111110001111100111111001111110011111100111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_SW[2]~input_o\,
	datab => \ALT_INV_SW[3]~input_o\,
	datac => \ALT_INV_SW[0]~input_o\,
	dataf => \ALT_INV_SW[1]~input_o\,
	combout => \switchValue2~25_combout\);

-- Location: LABCELL_X36_Y1_N48
\switchValue2[0]~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \switchValue2[0]~1_combout\ = ( \switchValue2[0]~1_combout\ & ( (!\enable2~0_combout\) # (\switchValue2~25_combout\) ) ) # ( !\switchValue2[0]~1_combout\ & ( (\enable2~0_combout\ & \switchValue2~25_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001100000011000000110000001111001111110011111100111111001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_enable2~0_combout\,
	datac => \ALT_INV_switchValue2~25_combout\,
	dataf => \ALT_INV_switchValue2[0]~1_combout\,
	combout => \switchValue2[0]~1_combout\);

-- Location: FF_X36_Y1_N49
\switchValue2[0]~_emulated\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \twentySixBitCounter1|reached~q\,
	d => \switchValue2[0]~1_combout\,
	clrn => \ALT_INV_enable2~0_combout\,
	ena => \switchValue2[3]~21_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \switchValue2[0]~_emulated_q\);

-- Location: LABCELL_X36_Y1_N3
\switchValue2[0]~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \switchValue2[0]~2_combout\ = ( \switchValue2[0]~1_combout\ & ( (!\enable2~0_combout\ & ((!\switchValue2[0]~_emulated_q\))) # (\enable2~0_combout\ & (\switchValue2~25_combout\)) ) ) # ( !\switchValue2[0]~1_combout\ & ( (!\enable2~0_combout\ & 
-- ((\switchValue2[0]~_emulated_q\))) # (\enable2~0_combout\ & (\switchValue2~25_combout\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001111110011000000111111001111110011000000111111001100000011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_switchValue2~25_combout\,
	datac => \ALT_INV_enable2~0_combout\,
	datad => \ALT_INV_switchValue2[0]~_emulated_q\,
	dataf => \ALT_INV_switchValue2[0]~1_combout\,
	combout => \switchValue2[0]~2_combout\);

-- Location: LABCELL_X36_Y1_N24
\fourBitCounter3|tempCount~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \fourBitCounter3|tempCount~0_combout\ = ( \incHex2Count~q\ & ( (\resetHex2~q\ & ((!\enable2~q\ & ((\switchValue2[0]~2_combout\))) # (\enable2~q\ & (!\fourBitCounter3|tempCount\(0))))) ) ) # ( !\incHex2Count~q\ & ( (\resetHex2~q\ & ((!\enable2~q\ & 
-- ((\switchValue2[0]~2_combout\))) # (\enable2~q\ & (\fourBitCounter3|tempCount\(0))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000101000101000000010100010100010000010101000001000001010100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_resetHex2~q\,
	datab => \ALT_INV_enable2~q\,
	datac => \fourBitCounter3|ALT_INV_tempCount\(0),
	datad => \ALT_INV_switchValue2[0]~2_combout\,
	dataf => \ALT_INV_incHex2Count~q\,
	combout => \fourBitCounter3|tempCount~0_combout\);

-- Location: FF_X36_Y1_N2
\fourBitCounter3|tempCount[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \twentySixBitCounter1|reached~q\,
	asdata => \fourBitCounter3|tempCount~0_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fourBitCounter3|tempCount\(0));

-- Location: LABCELL_X36_Y1_N0
\switchValue2~26\ : cyclonev_lcell_comb
-- Equation(s):
-- \switchValue2~26_combout\ = (!\SW[3]~input_o\ & \SW[1]~input_o\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000101000001010000010100000101000001010000010100000101000001010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_SW[3]~input_o\,
	datac => \ALT_INV_SW[1]~input_o\,
	combout => \switchValue2~26_combout\);

-- Location: LABCELL_X35_Y1_N39
\switchValue2[1]~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \switchValue2[1]~5_combout\ = ( \enable2~0_combout\ & ( \switchValue2~26_combout\ ) ) # ( !\enable2~0_combout\ & ( \switchValue2[1]~5_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111000011110000111100000000111111110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_switchValue2[1]~5_combout\,
	datad => \ALT_INV_switchValue2~26_combout\,
	dataf => \ALT_INV_enable2~0_combout\,
	combout => \switchValue2[1]~5_combout\);

-- Location: FF_X36_Y1_N31
\switchValue2[1]~_emulated\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \twentySixBitCounter1|reached~q\,
	asdata => \switchValue2[1]~5_combout\,
	clrn => \ALT_INV_enable2~0_combout\,
	sload => VCC,
	ena => \switchValue2[3]~21_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \switchValue2[1]~_emulated_q\);

-- Location: LABCELL_X35_Y1_N30
\switchValue2[1]~6\ : cyclonev_lcell_comb
-- Equation(s):
-- \switchValue2[1]~6_combout\ = ( \switchValue2[1]~5_combout\ & ( (!\enable2~0_combout\ & (!\switchValue2[1]~_emulated_q\)) # (\enable2~0_combout\ & ((\switchValue2~26_combout\))) ) ) # ( !\switchValue2[1]~5_combout\ & ( (!\enable2~0_combout\ & 
-- (\switchValue2[1]~_emulated_q\)) # (\enable2~0_combout\ & ((\switchValue2~26_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011000000111111001100000011111111000000110011111100000011001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_switchValue2[1]~_emulated_q\,
	datac => \ALT_INV_enable2~0_combout\,
	datad => \ALT_INV_switchValue2~26_combout\,
	dataf => \ALT_INV_switchValue2[1]~5_combout\,
	combout => \switchValue2[1]~6_combout\);

-- Location: LABCELL_X35_Y1_N45
\fourBitCounter3|tempCount~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \fourBitCounter3|tempCount~1_combout\ = ( \fourBitCounter3|tempCount\(0) & ( \switchValue2[1]~6_combout\ & ( (\resetHex2~q\ & ((!\enable2~q\) # (!\incHex2Count~q\ $ (!\fourBitCounter3|tempCount\(1))))) ) ) ) # ( !\fourBitCounter3|tempCount\(0) & ( 
-- \switchValue2[1]~6_combout\ & ( (\resetHex2~q\ & ((!\enable2~q\) # (\fourBitCounter3|tempCount\(1)))) ) ) ) # ( \fourBitCounter3|tempCount\(0) & ( !\switchValue2[1]~6_combout\ & ( (\resetHex2~q\ & (\enable2~q\ & (!\incHex2Count~q\ $ 
-- (!\fourBitCounter3|tempCount\(1))))) ) ) ) # ( !\fourBitCounter3|tempCount\(0) & ( !\switchValue2[1]~6_combout\ & ( (\resetHex2~q\ & (\enable2~q\ & \fourBitCounter3|tempCount\(1))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000101000000010000010001010000010101010101000101010100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_resetHex2~q\,
	datab => \ALT_INV_incHex2Count~q\,
	datac => \ALT_INV_enable2~q\,
	datad => \fourBitCounter3|ALT_INV_tempCount\(1),
	datae => \fourBitCounter3|ALT_INV_tempCount\(0),
	dataf => \ALT_INV_switchValue2[1]~6_combout\,
	combout => \fourBitCounter3|tempCount~1_combout\);

-- Location: FF_X35_Y1_N5
\fourBitCounter3|tempCount[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \twentySixBitCounter1|reached~q\,
	asdata => \fourBitCounter3|tempCount~1_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fourBitCounter3|tempCount\(1));

-- Location: LABCELL_X36_Y1_N6
\fourBitCounter3|Add0~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \fourBitCounter3|Add0~1_combout\ = ( \incHex2Count~q\ & ( (\fourBitCounter3|tempCount\(1) & (\fourBitCounter3|tempCount\(2) & \fourBitCounter3|tempCount\(0))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000110000000000000011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \fourBitCounter3|ALT_INV_tempCount\(1),
	datac => \fourBitCounter3|ALT_INV_tempCount\(2),
	datad => \fourBitCounter3|ALT_INV_tempCount\(0),
	dataf => \ALT_INV_incHex2Count~q\,
	combout => \fourBitCounter3|Add0~1_combout\);

-- Location: LABCELL_X36_Y1_N39
\fourBitCounter3|tempCount~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \fourBitCounter3|tempCount~3_combout\ = ( \fourBitCounter3|Add0~1_combout\ & ( (\resetHex2~q\ & ((!\enable2~q\ & (\switchValue2[3]~14_combout\)) # (\enable2~q\ & ((!\fourBitCounter3|tempCount\(3)))))) ) ) # ( !\fourBitCounter3|Add0~1_combout\ & ( 
-- (\resetHex2~q\ & ((!\enable2~q\ & (\switchValue2[3]~14_combout\)) # (\enable2~q\ & ((\fourBitCounter3|tempCount\(3)))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001000010011000000100001001100010011000000100001001100000010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_enable2~q\,
	datab => \ALT_INV_resetHex2~q\,
	datac => \ALT_INV_switchValue2[3]~14_combout\,
	datad => \fourBitCounter3|ALT_INV_tempCount\(3),
	dataf => \fourBitCounter3|ALT_INV_Add0~1_combout\,
	combout => \fourBitCounter3|tempCount~3_combout\);

-- Location: FF_X36_Y1_N23
\fourBitCounter3|tempCount[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \twentySixBitCounter1|reached~q\,
	asdata => \fourBitCounter3|tempCount~3_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fourBitCounter3|tempCount\(3));

-- Location: LABCELL_X36_Y1_N9
\resetHex2~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \resetHex2~0_combout\ = ( !\fourBitCounter3|tempCount\(1) & ( (!\fourBitCounter3|tempCount\(2) & (\fourBitCounter3|tempCount\(3) & \fourBitCounter3|tempCount\(0))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000001010000000000000101000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \fourBitCounter3|ALT_INV_tempCount\(2),
	datac => \fourBitCounter3|ALT_INV_tempCount\(3),
	datad => \fourBitCounter3|ALT_INV_tempCount\(0),
	dataf => \fourBitCounter3|ALT_INV_tempCount\(1),
	combout => \resetHex2~0_combout\);

-- Location: LABCELL_X35_Y1_N27
\resetHex2~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \resetHex2~1_combout\ = ( \Equal0~0_combout\ & ( (\resetHex2~q\ & ((!\Equal1~0_combout\) # (!\resetHex2~0_combout\))) ) ) # ( !\Equal0~0_combout\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111111111111111111111111100001111000010100000111100001010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Equal1~0_combout\,
	datac => \ALT_INV_resetHex2~q\,
	datad => \ALT_INV_resetHex2~0_combout\,
	dataf => \ALT_INV_Equal0~0_combout\,
	combout => \resetHex2~1_combout\);

-- Location: LABCELL_X36_Y1_N36
\resetHex2~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \resetHex2~2_combout\ = ( \KEY[3]~input_o\ & ( \KEY[2]~input_o\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000001111000011110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_KEY[2]~input_o\,
	dataf => \ALT_INV_KEY[3]~input_o\,
	combout => \resetHex2~2_combout\);

-- Location: FF_X35_Y1_N38
resetHex2 : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \twentySixBitCounter1|reached~q\,
	asdata => \resetHex2~1_combout\,
	clrn => \KEY[0]~input_o\,
	sload => VCC,
	ena => \resetHex2~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \resetHex2~q\);

-- Location: LABCELL_X35_Y1_N33
\fourBitCounter3|Add0~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \fourBitCounter3|Add0~0_combout\ = ( \fourBitCounter3|tempCount\(0) & ( !\fourBitCounter3|tempCount\(2) $ (((!\fourBitCounter3|tempCount\(1)) # (!\incHex2Count~q\))) ) ) # ( !\fourBitCounter3|tempCount\(0) & ( \fourBitCounter3|tempCount\(2) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011111111000000001111111100000101111110100000010111111010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \fourBitCounter3|ALT_INV_tempCount\(1),
	datac => \ALT_INV_incHex2Count~q\,
	datad => \fourBitCounter3|ALT_INV_tempCount\(2),
	dataf => \fourBitCounter3|ALT_INV_tempCount\(0),
	combout => \fourBitCounter3|Add0~0_combout\);

-- Location: LABCELL_X37_Y1_N0
\switchValue2~27\ : cyclonev_lcell_comb
-- Equation(s):
-- \switchValue2~27_combout\ = ( \SW[2]~input_o\ & ( !\SW[3]~input_o\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111100001111000000000000000000001111000011110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_SW[3]~input_o\,
	datae => \ALT_INV_SW[2]~input_o\,
	combout => \switchValue2~27_combout\);

-- Location: LABCELL_X36_Y1_N57
\switchValue2[2]~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \switchValue2[2]~9_combout\ = ( \switchValue2[2]~9_combout\ & ( (!\enable2~0_combout\) # (\switchValue2~27_combout\) ) ) # ( !\switchValue2[2]~9_combout\ & ( (\switchValue2~27_combout\ & \enable2~0_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010100000101000001010000010111110101111101011111010111110101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_switchValue2~27_combout\,
	datac => \ALT_INV_enable2~0_combout\,
	dataf => \ALT_INV_switchValue2[2]~9_combout\,
	combout => \switchValue2[2]~9_combout\);

-- Location: FF_X36_Y1_N56
\switchValue2[2]~_emulated\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \twentySixBitCounter1|reached~q\,
	asdata => \switchValue2[2]~9_combout\,
	clrn => \ALT_INV_enable2~0_combout\,
	sload => VCC,
	ena => \switchValue2[3]~21_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \switchValue2[2]~_emulated_q\);

-- Location: LABCELL_X36_Y1_N54
\switchValue2[2]~10\ : cyclonev_lcell_comb
-- Equation(s):
-- \switchValue2[2]~10_combout\ = ( \switchValue2[2]~9_combout\ & ( (!\enable2~0_combout\ & ((!\switchValue2[2]~_emulated_q\))) # (\enable2~0_combout\ & (\switchValue2~27_combout\)) ) ) # ( !\switchValue2[2]~9_combout\ & ( (!\enable2~0_combout\ & 
-- ((\switchValue2[2]~_emulated_q\))) # (\enable2~0_combout\ & (\switchValue2~27_combout\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001110100011101000111010001110111010001110100011101000111010001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_switchValue2~27_combout\,
	datab => \ALT_INV_enable2~0_combout\,
	datac => \ALT_INV_switchValue2[2]~_emulated_q\,
	dataf => \ALT_INV_switchValue2[2]~9_combout\,
	combout => \switchValue2[2]~10_combout\);

-- Location: LABCELL_X36_Y1_N27
\fourBitCounter3|tempCount~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \fourBitCounter3|tempCount~2_combout\ = (\resetHex2~q\ & ((!\enable2~q\ & ((\switchValue2[2]~10_combout\))) # (\enable2~q\ & (\fourBitCounter3|Add0~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000101000101000000010100010100000001010001010000000101000101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_resetHex2~q\,
	datab => \ALT_INV_enable2~q\,
	datac => \fourBitCounter3|ALT_INV_Add0~0_combout\,
	datad => \ALT_INV_switchValue2[2]~10_combout\,
	combout => \fourBitCounter3|tempCount~2_combout\);

-- Location: FF_X36_Y1_N29
\fourBitCounter3|tempCount[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \twentySixBitCounter1|reached~q\,
	d => \fourBitCounter3|tempCount~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fourBitCounter3|tempCount\(2));

-- Location: MLABCELL_X39_Y1_N15
\sevenSegment3|Mux6~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \sevenSegment3|Mux6~0_combout\ = ( \fourBitCounter3|tempCount\(3) & ( \fourBitCounter3|tempCount\(0) & ( (\fourBitCounter3|tempCount\(1)) # (\fourBitCounter3|tempCount\(2)) ) ) ) # ( !\fourBitCounter3|tempCount\(3) & ( \fourBitCounter3|tempCount\(0) & ( 
-- (!\fourBitCounter3|tempCount\(2) & !\fourBitCounter3|tempCount\(1)) ) ) ) # ( \fourBitCounter3|tempCount\(3) & ( !\fourBitCounter3|tempCount\(0) & ( (\fourBitCounter3|tempCount\(1)) # (\fourBitCounter3|tempCount\(2)) ) ) ) # ( 
-- !\fourBitCounter3|tempCount\(3) & ( !\fourBitCounter3|tempCount\(0) & ( (\fourBitCounter3|tempCount\(2) & !\fourBitCounter3|tempCount\(1)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101000001010000010111110101111110100000101000000101111101011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \fourBitCounter3|ALT_INV_tempCount\(2),
	datac => \fourBitCounter3|ALT_INV_tempCount\(1),
	datae => \fourBitCounter3|ALT_INV_tempCount\(3),
	dataf => \fourBitCounter3|ALT_INV_tempCount\(0),
	combout => \sevenSegment3|Mux6~0_combout\);

-- Location: MLABCELL_X39_Y1_N18
\sevenSegment3|Mux5~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \sevenSegment3|Mux5~0_combout\ = ( \fourBitCounter3|tempCount\(3) & ( \fourBitCounter3|tempCount\(0) & ( (\fourBitCounter3|tempCount\(2)) # (\fourBitCounter3|tempCount\(1)) ) ) ) # ( !\fourBitCounter3|tempCount\(3) & ( \fourBitCounter3|tempCount\(0) & ( 
-- (!\fourBitCounter3|tempCount\(1) & \fourBitCounter3|tempCount\(2)) ) ) ) # ( \fourBitCounter3|tempCount\(3) & ( !\fourBitCounter3|tempCount\(0) & ( (\fourBitCounter3|tempCount\(2)) # (\fourBitCounter3|tempCount\(1)) ) ) ) # ( 
-- !\fourBitCounter3|tempCount\(3) & ( !\fourBitCounter3|tempCount\(0) & ( (\fourBitCounter3|tempCount\(1) & \fourBitCounter3|tempCount\(2)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001100000011001111110011111100001100000011000011111100111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \fourBitCounter3|ALT_INV_tempCount\(1),
	datac => \fourBitCounter3|ALT_INV_tempCount\(2),
	datae => \fourBitCounter3|ALT_INV_tempCount\(3),
	dataf => \fourBitCounter3|ALT_INV_tempCount\(0),
	combout => \sevenSegment3|Mux5~0_combout\);

-- Location: MLABCELL_X39_Y1_N3
\sevenSegment3|Mux4~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \sevenSegment3|Mux4~0_combout\ = ( \fourBitCounter3|tempCount\(3) & ( \fourBitCounter3|tempCount\(0) & ( (\fourBitCounter3|tempCount\(1)) # (\fourBitCounter3|tempCount\(2)) ) ) ) # ( \fourBitCounter3|tempCount\(3) & ( !\fourBitCounter3|tempCount\(0) & ( 
-- (\fourBitCounter3|tempCount\(1)) # (\fourBitCounter3|tempCount\(2)) ) ) ) # ( !\fourBitCounter3|tempCount\(3) & ( !\fourBitCounter3|tempCount\(0) & ( (!\fourBitCounter3|tempCount\(2) & \fourBitCounter3|tempCount\(1)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000101000001010010111110101111100000000000000000101111101011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \fourBitCounter3|ALT_INV_tempCount\(2),
	datac => \fourBitCounter3|ALT_INV_tempCount\(1),
	datae => \fourBitCounter3|ALT_INV_tempCount\(3),
	dataf => \fourBitCounter3|ALT_INV_tempCount\(0),
	combout => \sevenSegment3|Mux4~0_combout\);

-- Location: MLABCELL_X39_Y1_N54
\sevenSegment3|Mux3~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \sevenSegment3|Mux3~0_combout\ = ( \fourBitCounter3|tempCount\(0) & ( (!\fourBitCounter3|tempCount\(1) $ (\fourBitCounter3|tempCount\(2))) # (\fourBitCounter3|tempCount\(3)) ) ) # ( !\fourBitCounter3|tempCount\(0) & ( (!\fourBitCounter3|tempCount\(1) & 
-- (\fourBitCounter3|tempCount\(2))) # (\fourBitCounter3|tempCount\(1) & ((\fourBitCounter3|tempCount\(3)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000110000111111000011000011111111000011111111111100001111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \fourBitCounter3|ALT_INV_tempCount\(1),
	datac => \fourBitCounter3|ALT_INV_tempCount\(2),
	datad => \fourBitCounter3|ALT_INV_tempCount\(3),
	dataf => \fourBitCounter3|ALT_INV_tempCount\(0),
	combout => \sevenSegment3|Mux3~0_combout\);

-- Location: MLABCELL_X39_Y1_N57
\sevenSegment3|Mux2~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \sevenSegment3|Mux2~0_combout\ = ( \fourBitCounter3|tempCount\(0) ) # ( !\fourBitCounter3|tempCount\(0) & ( (!\fourBitCounter3|tempCount\(1) & (\fourBitCounter3|tempCount\(2))) # (\fourBitCounter3|tempCount\(1) & ((\fourBitCounter3|tempCount\(3)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101000001011111010100000101111111111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \fourBitCounter3|ALT_INV_tempCount\(2),
	datac => \fourBitCounter3|ALT_INV_tempCount\(1),
	datad => \fourBitCounter3|ALT_INV_tempCount\(3),
	dataf => \fourBitCounter3|ALT_INV_tempCount\(0),
	combout => \sevenSegment3|Mux2~0_combout\);

-- Location: MLABCELL_X39_Y1_N48
\sevenSegment3|Mux1~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \sevenSegment3|Mux1~0_combout\ = ( \fourBitCounter3|tempCount\(3) & ( \fourBitCounter3|tempCount\(0) & ( (\fourBitCounter3|tempCount\(2)) # (\fourBitCounter3|tempCount\(1)) ) ) ) # ( !\fourBitCounter3|tempCount\(3) & ( \fourBitCounter3|tempCount\(0) & ( 
-- (!\fourBitCounter3|tempCount\(2)) # (\fourBitCounter3|tempCount\(1)) ) ) ) # ( \fourBitCounter3|tempCount\(3) & ( !\fourBitCounter3|tempCount\(0) & ( (\fourBitCounter3|tempCount\(2)) # (\fourBitCounter3|tempCount\(1)) ) ) ) # ( 
-- !\fourBitCounter3|tempCount\(3) & ( !\fourBitCounter3|tempCount\(0) & ( (\fourBitCounter3|tempCount\(1) & !\fourBitCounter3|tempCount\(2)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011000000110000001111110011111111110011111100110011111100111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \fourBitCounter3|ALT_INV_tempCount\(1),
	datac => \fourBitCounter3|ALT_INV_tempCount\(2),
	datae => \fourBitCounter3|ALT_INV_tempCount\(3),
	dataf => \fourBitCounter3|ALT_INV_tempCount\(0),
	combout => \sevenSegment3|Mux1~0_combout\);

-- Location: MLABCELL_X39_Y1_N6
\sevenSegment3|Mux0~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \sevenSegment3|Mux0~0_combout\ = ( \fourBitCounter3|tempCount\(3) & ( \fourBitCounter3|tempCount\(0) & ( (!\fourBitCounter3|tempCount\(1) & !\fourBitCounter3|tempCount\(2)) ) ) ) # ( !\fourBitCounter3|tempCount\(3) & ( \fourBitCounter3|tempCount\(0) & ( 
-- !\fourBitCounter3|tempCount\(1) $ (!\fourBitCounter3|tempCount\(2)) ) ) ) # ( \fourBitCounter3|tempCount\(3) & ( !\fourBitCounter3|tempCount\(0) & ( (!\fourBitCounter3|tempCount\(1) & !\fourBitCounter3|tempCount\(2)) ) ) ) # ( 
-- !\fourBitCounter3|tempCount\(3) & ( !\fourBitCounter3|tempCount\(0) & ( (\fourBitCounter3|tempCount\(2)) # (\fourBitCounter3|tempCount\(1)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011111100111111110000001100000000111100001111001100000011000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \fourBitCounter3|ALT_INV_tempCount\(1),
	datac => \fourBitCounter3|ALT_INV_tempCount\(2),
	datae => \fourBitCounter3|ALT_INV_tempCount\(3),
	dataf => \fourBitCounter3|ALT_INV_tempCount\(0),
	combout => \sevenSegment3|Mux0~0_combout\);

-- Location: LABCELL_X35_Y1_N36
\incHex3Count~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \incHex3Count~0_combout\ = ( \Equal0~0_combout\ & ( ((\resetHex2~0_combout\ & \Equal1~0_combout\)) # (\incHex3Count~q\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000110111001101110011011100110111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_resetHex2~0_combout\,
	datab => \ALT_INV_incHex3Count~q\,
	datac => \ALT_INV_Equal1~0_combout\,
	dataf => \ALT_INV_Equal0~0_combout\,
	combout => \incHex3Count~0_combout\);

-- Location: FF_X35_Y1_N56
incHex3Count : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \twentySixBitCounter1|reached~q\,
	asdata => \incHex3Count~0_combout\,
	sload => VCC,
	ena => \ALT_INV_resetHex0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \incHex3Count~q\);

-- Location: LABCELL_X37_Y1_N9
\switchValue3~18\ : cyclonev_lcell_comb
-- Equation(s):
-- \switchValue3~18_combout\ = ( \SW[5]~input_o\ & ( ((\SW[4]~input_o\) # (\SW[6]~input_o\)) # (\SW[7]~input_o\) ) ) # ( !\SW[5]~input_o\ & ( (\SW[4]~input_o\) # (\SW[7]~input_o\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101111101011111010111110101111101111111011111110111111101111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_SW[7]~input_o\,
	datab => \ALT_INV_SW[6]~input_o\,
	datac => \ALT_INV_SW[4]~input_o\,
	dataf => \ALT_INV_SW[5]~input_o\,
	combout => \switchValue3~18_combout\);

-- Location: LABCELL_X36_Y1_N12
\switchValue3[0]~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \switchValue3[0]~1_combout\ = ( \enable2~0_combout\ & ( \switchValue3~18_combout\ ) ) # ( !\enable2~0_combout\ & ( \switchValue3[0]~1_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011111111000000001111111100001111000011110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_switchValue3~18_combout\,
	datad => \ALT_INV_switchValue3[0]~1_combout\,
	dataf => \ALT_INV_enable2~0_combout\,
	combout => \switchValue3[0]~1_combout\);

-- Location: FF_X36_Y1_N14
\switchValue3[0]~_emulated\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \twentySixBitCounter1|reached~q\,
	d => \switchValue3[0]~1_combout\,
	clrn => \ALT_INV_enable2~0_combout\,
	ena => \switchValue2[3]~21_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \switchValue3[0]~_emulated_q\);

-- Location: LABCELL_X36_Y1_N51
\switchValue3[0]~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \switchValue3[0]~2_combout\ = ( \switchValue3[0]~1_combout\ & ( (!\enable2~0_combout\ & (!\switchValue3[0]~_emulated_q\)) # (\enable2~0_combout\ & ((\switchValue3~18_combout\))) ) ) # ( !\switchValue3[0]~1_combout\ & ( (!\enable2~0_combout\ & 
-- (\switchValue3[0]~_emulated_q\)) # (\enable2~0_combout\ & ((\switchValue3~18_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000110000111111000011000011111111000000111100111100000011110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_enable2~0_combout\,
	datac => \ALT_INV_switchValue3[0]~_emulated_q\,
	datad => \ALT_INV_switchValue3~18_combout\,
	dataf => \ALT_INV_switchValue3[0]~1_combout\,
	combout => \switchValue3[0]~2_combout\);

-- Location: LABCELL_X36_Y1_N15
\fourBitCounter4|tempCount~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \fourBitCounter4|tempCount~0_combout\ = ( \switchValue3[0]~2_combout\ & ( (\resetHex3~q\ & ((!\enable2~q\) # (!\fourBitCounter4|tempCount\(0) $ (!\incHex3Count~q\)))) ) ) # ( !\switchValue3[0]~2_combout\ & ( (\enable2~q\ & (\resetHex3~q\ & 
-- (!\fourBitCounter4|tempCount\(0) $ (!\incHex3Count~q\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000010100000000000001010000000000101111100000000010111110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_enable2~q\,
	datab => \fourBitCounter4|ALT_INV_tempCount\(0),
	datac => \ALT_INV_incHex3Count~q\,
	datad => \ALT_INV_resetHex3~q\,
	dataf => \ALT_INV_switchValue3[0]~2_combout\,
	combout => \fourBitCounter4|tempCount~0_combout\);

-- Location: FF_X36_Y1_N26
\fourBitCounter4|tempCount[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \twentySixBitCounter1|reached~q\,
	asdata => \fourBitCounter4|tempCount~0_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fourBitCounter4|tempCount\(0));

-- Location: LABCELL_X37_Y1_N39
\switchValue3~19\ : cyclonev_lcell_comb
-- Equation(s):
-- \switchValue3~19_combout\ = ( \SW[5]~input_o\ & ( (!\SW[7]~input_o\ & !\SW[6]~input_o\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000010001000100010001000100010001000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_SW[7]~input_o\,
	datab => \ALT_INV_SW[6]~input_o\,
	dataf => \ALT_INV_SW[5]~input_o\,
	combout => \switchValue3~19_combout\);

-- Location: LABCELL_X37_Y1_N15
\switchValue3[1]~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \switchValue3[1]~5_combout\ = ( \enable2~0_combout\ & ( \switchValue3~19_combout\ ) ) # ( !\enable2~0_combout\ & ( \switchValue3[1]~5_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111000011110000111100110011001100110011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_switchValue3~19_combout\,
	datac => \ALT_INV_switchValue3[1]~5_combout\,
	dataf => \ALT_INV_enable2~0_combout\,
	combout => \switchValue3[1]~5_combout\);

-- Location: FF_X36_Y1_N43
\switchValue3[1]~_emulated\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \twentySixBitCounter1|reached~q\,
	asdata => \switchValue3[1]~5_combout\,
	clrn => \ALT_INV_enable2~0_combout\,
	sload => VCC,
	ena => \switchValue2[3]~21_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \switchValue3[1]~_emulated_q\);

-- Location: LABCELL_X37_Y1_N30
\switchValue3[1]~6\ : cyclonev_lcell_comb
-- Equation(s):
-- \switchValue3[1]~6_combout\ = ( \switchValue3[1]~_emulated_q\ & ( \switchValue3[1]~5_combout\ & ( (\switchValue3~19_combout\ & \enable2~0_combout\) ) ) ) # ( !\switchValue3[1]~_emulated_q\ & ( \switchValue3[1]~5_combout\ & ( (!\enable2~0_combout\) # 
-- (\switchValue3~19_combout\) ) ) ) # ( \switchValue3[1]~_emulated_q\ & ( !\switchValue3[1]~5_combout\ & ( (!\enable2~0_combout\) # (\switchValue3~19_combout\) ) ) ) # ( !\switchValue3[1]~_emulated_q\ & ( !\switchValue3[1]~5_combout\ & ( 
-- (\switchValue3~19_combout\ & \enable2~0_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000110011111111110011001111111111001100110000000000110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_switchValue3~19_combout\,
	datad => \ALT_INV_enable2~0_combout\,
	datae => \ALT_INV_switchValue3[1]~_emulated_q\,
	dataf => \ALT_INV_switchValue3[1]~5_combout\,
	combout => \switchValue3[1]~6_combout\);

-- Location: LABCELL_X37_Y1_N57
\fourBitCounter4|tempCount~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \fourBitCounter4|tempCount~1_combout\ = ( \fourBitCounter4|tempCount\(0) & ( \switchValue3[1]~6_combout\ & ( (\resetHex3~q\ & ((!\enable2~q\) # (!\fourBitCounter4|tempCount\(1) $ (!\incHex3Count~q\)))) ) ) ) # ( !\fourBitCounter4|tempCount\(0) & ( 
-- \switchValue3[1]~6_combout\ & ( (\resetHex3~q\ & ((!\enable2~q\) # (\fourBitCounter4|tempCount\(1)))) ) ) ) # ( \fourBitCounter4|tempCount\(0) & ( !\switchValue3[1]~6_combout\ & ( (\resetHex3~q\ & (\enable2~q\ & (!\fourBitCounter4|tempCount\(1) $ 
-- (!\incHex3Count~q\)))) ) ) ) # ( !\fourBitCounter4|tempCount\(0) & ( !\switchValue3[1]~6_combout\ & ( (\fourBitCounter4|tempCount\(1) & (\resetHex3~q\ & \enable2~q\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000101000000000000011000001111000001010000111100000110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \fourBitCounter4|ALT_INV_tempCount\(1),
	datab => \ALT_INV_incHex3Count~q\,
	datac => \ALT_INV_resetHex3~q\,
	datad => \ALT_INV_enable2~q\,
	datae => \fourBitCounter4|ALT_INV_tempCount\(0),
	dataf => \ALT_INV_switchValue3[1]~6_combout\,
	combout => \fourBitCounter4|tempCount~1_combout\);

-- Location: FF_X37_Y1_N29
\fourBitCounter4|tempCount[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \twentySixBitCounter1|reached~q\,
	asdata => \fourBitCounter4|tempCount~1_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fourBitCounter4|tempCount\(1));

-- Location: LABCELL_X35_Y1_N21
\fourBitCounter4|Add0~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \fourBitCounter4|Add0~0_combout\ = ( \fourBitCounter4|tempCount\(0) & ( (\incHex3Count~q\ & \fourBitCounter4|tempCount\(1)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000101000001010000010100000101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_incHex3Count~q\,
	datac => \fourBitCounter4|ALT_INV_tempCount\(1),
	dataf => \fourBitCounter4|ALT_INV_tempCount\(0),
	combout => \fourBitCounter4|Add0~0_combout\);

-- Location: LABCELL_X35_Y1_N48
\fourBitCounter4|tempCount~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \fourBitCounter4|tempCount~3_combout\ = ( \fourBitCounter4|Add0~0_combout\ & ( (\enable2~q\ & (\resetHex3~q\ & (!\fourBitCounter4|tempCount\(3) $ (!\fourBitCounter4|tempCount\(2))))) ) ) # ( !\fourBitCounter4|Add0~0_combout\ & ( (\enable2~q\ & 
-- (\resetHex3~q\ & \fourBitCounter4|tempCount\(3))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000100000001000000010000000100000001000100000000000100010000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_enable2~q\,
	datab => \ALT_INV_resetHex3~q\,
	datac => \fourBitCounter4|ALT_INV_tempCount\(3),
	datad => \fourBitCounter4|ALT_INV_tempCount\(2),
	dataf => \fourBitCounter4|ALT_INV_Add0~0_combout\,
	combout => \fourBitCounter4|tempCount~3_combout\);

-- Location: FF_X36_Y1_N5
\fourBitCounter4|tempCount[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \twentySixBitCounter1|reached~q\,
	asdata => \fourBitCounter4|tempCount~3_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fourBitCounter4|tempCount\(3));

-- Location: LABCELL_X35_Y1_N12
\resetHex3~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \resetHex3~0_combout\ = ( \fourBitCounter4|tempCount\(0) & ( (!\fourBitCounter4|tempCount\(3) & (\fourBitCounter4|tempCount\(2) & !\fourBitCounter4|tempCount\(1))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000001010000000000000101000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \fourBitCounter4|ALT_INV_tempCount\(3),
	datac => \fourBitCounter4|ALT_INV_tempCount\(2),
	datad => \fourBitCounter4|ALT_INV_tempCount\(1),
	dataf => \fourBitCounter4|ALT_INV_tempCount\(0),
	combout => \resetHex3~0_combout\);

-- Location: LABCELL_X35_Y1_N57
\resetHex3~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \resetHex3~1_combout\ = ( \Equal0~0_combout\ & ( (\resetHex3~q\ & ((!\Equal1~0_combout\) # ((!\resetHex3~0_combout\) # (!\resetHex2~0_combout\)))) ) ) # ( !\Equal0~0_combout\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111111111111111111111111100001111000011100000111100001110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Equal1~0_combout\,
	datab => \ALT_INV_resetHex3~0_combout\,
	datac => \ALT_INV_resetHex3~q\,
	datad => \ALT_INV_resetHex2~0_combout\,
	dataf => \ALT_INV_Equal0~0_combout\,
	combout => \resetHex3~1_combout\);

-- Location: FF_X35_Y1_N23
resetHex3 : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \twentySixBitCounter1|reached~q\,
	asdata => \resetHex3~1_combout\,
	clrn => \KEY[0]~input_o\,
	sload => VCC,
	ena => \resetHex2~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \resetHex3~q\);

-- Location: LABCELL_X37_Y1_N36
\switchValue3~20\ : cyclonev_lcell_comb
-- Equation(s):
-- \switchValue3~20_combout\ = (\SW[6]~input_o\) # (\SW[7]~input_o\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0111011101110111011101110111011101110111011101110111011101110111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_SW[7]~input_o\,
	datab => \ALT_INV_SW[6]~input_o\,
	combout => \switchValue3~20_combout\);

-- Location: LABCELL_X36_Y1_N45
\switchValue3[2]~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \switchValue3[2]~9_combout\ = ( \enable2~0_combout\ & ( \switchValue3~20_combout\ ) ) # ( !\enable2~0_combout\ & ( \switchValue3[2]~9_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011111111000000001111111100001111000011110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_switchValue3~20_combout\,
	datad => \ALT_INV_switchValue3[2]~9_combout\,
	dataf => \ALT_INV_enable2~0_combout\,
	combout => \switchValue3[2]~9_combout\);

-- Location: FF_X36_Y1_N46
\switchValue3[2]~_emulated\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \twentySixBitCounter1|reached~q\,
	d => \switchValue3[2]~9_combout\,
	clrn => \ALT_INV_enable2~0_combout\,
	ena => \switchValue2[3]~21_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \switchValue3[2]~_emulated_q\);

-- Location: LABCELL_X35_Y1_N18
\switchValue3[2]~10\ : cyclonev_lcell_comb
-- Equation(s):
-- \switchValue3[2]~10_combout\ = ( \switchValue3[2]~9_combout\ & ( (!\enable2~0_combout\ & ((!\switchValue3[2]~_emulated_q\))) # (\enable2~0_combout\ & (\switchValue3~20_combout\)) ) ) # ( !\switchValue3[2]~9_combout\ & ( (!\enable2~0_combout\ & 
-- ((\switchValue3[2]~_emulated_q\))) # (\enable2~0_combout\ & (\switchValue3~20_combout\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001111110011000000111111001111110011000000111111001100000011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_switchValue3~20_combout\,
	datac => \ALT_INV_enable2~0_combout\,
	datad => \ALT_INV_switchValue3[2]~_emulated_q\,
	dataf => \ALT_INV_switchValue3[2]~9_combout\,
	combout => \switchValue3[2]~10_combout\);

-- Location: LABCELL_X35_Y1_N51
\fourBitCounter4|tempCount~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \fourBitCounter4|tempCount~2_combout\ = ( \switchValue3[2]~10_combout\ & ( (\resetHex3~q\ & ((!\enable2~q\) # (!\fourBitCounter4|tempCount\(2) $ (!\fourBitCounter4|Add0~0_combout\)))) ) ) # ( !\switchValue3[2]~10_combout\ & ( (\enable2~q\ & (\resetHex3~q\ 
-- & (!\fourBitCounter4|tempCount\(2) $ (!\fourBitCounter4|Add0~0_combout\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000100010000000000010001000000100011001100100010001100110010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_enable2~q\,
	datab => \ALT_INV_resetHex3~q\,
	datac => \fourBitCounter4|ALT_INV_tempCount\(2),
	datad => \fourBitCounter4|ALT_INV_Add0~0_combout\,
	dataf => \ALT_INV_switchValue3[2]~10_combout\,
	combout => \fourBitCounter4|tempCount~2_combout\);

-- Location: FF_X35_Y1_N50
\fourBitCounter4|tempCount[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \twentySixBitCounter1|reached~q\,
	asdata => \fourBitCounter4|tempCount~2_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fourBitCounter4|tempCount\(2));

-- Location: LABCELL_X35_Y3_N12
\sevenSegment4|Mux6~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \sevenSegment4|Mux6~0_combout\ = ( \fourBitCounter4|tempCount\(1) & ( \fourBitCounter4|tempCount\(3) ) ) # ( !\fourBitCounter4|tempCount\(1) & ( \fourBitCounter4|tempCount\(3) & ( \fourBitCounter4|tempCount\(2) ) ) ) # ( !\fourBitCounter4|tempCount\(1) & 
-- ( !\fourBitCounter4|tempCount\(3) & ( !\fourBitCounter4|tempCount\(2) $ (!\fourBitCounter4|tempCount\(0)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011110000111100000000000000000000110011001100111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \fourBitCounter4|ALT_INV_tempCount\(2),
	datac => \fourBitCounter4|ALT_INV_tempCount\(0),
	datae => \fourBitCounter4|ALT_INV_tempCount\(1),
	dataf => \fourBitCounter4|ALT_INV_tempCount\(3),
	combout => \sevenSegment4|Mux6~0_combout\);

-- Location: LABCELL_X35_Y3_N42
\sevenSegment4|Mux5~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \sevenSegment4|Mux5~0_combout\ = ( \fourBitCounter4|tempCount\(1) & ( \fourBitCounter4|tempCount\(3) ) ) # ( !\fourBitCounter4|tempCount\(1) & ( \fourBitCounter4|tempCount\(3) & ( \fourBitCounter4|tempCount\(2) ) ) ) # ( \fourBitCounter4|tempCount\(1) & ( 
-- !\fourBitCounter4|tempCount\(3) & ( (\fourBitCounter4|tempCount\(2) & !\fourBitCounter4|tempCount\(0)) ) ) ) # ( !\fourBitCounter4|tempCount\(1) & ( !\fourBitCounter4|tempCount\(3) & ( (\fourBitCounter4|tempCount\(2) & \fourBitCounter4|tempCount\(0)) ) ) 
-- )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001100000011001100000011000000110011001100111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \fourBitCounter4|ALT_INV_tempCount\(2),
	datac => \fourBitCounter4|ALT_INV_tempCount\(0),
	datae => \fourBitCounter4|ALT_INV_tempCount\(1),
	dataf => \fourBitCounter4|ALT_INV_tempCount\(3),
	combout => \sevenSegment4|Mux5~0_combout\);

-- Location: LABCELL_X35_Y3_N51
\sevenSegment4|Mux4~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \sevenSegment4|Mux4~0_combout\ = ( \fourBitCounter4|tempCount\(0) & ( \fourBitCounter4|tempCount\(3) & ( (\fourBitCounter4|tempCount\(2)) # (\fourBitCounter4|tempCount\(1)) ) ) ) # ( !\fourBitCounter4|tempCount\(0) & ( \fourBitCounter4|tempCount\(3) & ( 
-- (\fourBitCounter4|tempCount\(2)) # (\fourBitCounter4|tempCount\(1)) ) ) ) # ( !\fourBitCounter4|tempCount\(0) & ( !\fourBitCounter4|tempCount\(3) & ( (\fourBitCounter4|tempCount\(1) & !\fourBitCounter4|tempCount\(2)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101000001010000000000000000000001011111010111110101111101011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \fourBitCounter4|ALT_INV_tempCount\(1),
	datac => \fourBitCounter4|ALT_INV_tempCount\(2),
	datae => \fourBitCounter4|ALT_INV_tempCount\(0),
	dataf => \fourBitCounter4|ALT_INV_tempCount\(3),
	combout => \sevenSegment4|Mux4~0_combout\);

-- Location: LABCELL_X35_Y3_N54
\sevenSegment4|Mux3~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \sevenSegment4|Mux3~0_combout\ = ( \fourBitCounter4|tempCount\(1) & ( \fourBitCounter4|tempCount\(3) ) ) # ( !\fourBitCounter4|tempCount\(1) & ( \fourBitCounter4|tempCount\(3) & ( (\fourBitCounter4|tempCount\(0)) # (\fourBitCounter4|tempCount\(2)) ) ) ) # 
-- ( \fourBitCounter4|tempCount\(1) & ( !\fourBitCounter4|tempCount\(3) & ( (\fourBitCounter4|tempCount\(2) & \fourBitCounter4|tempCount\(0)) ) ) ) # ( !\fourBitCounter4|tempCount\(1) & ( !\fourBitCounter4|tempCount\(3) & ( !\fourBitCounter4|tempCount\(2) $ 
-- (!\fourBitCounter4|tempCount\(0)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011110000111100000000110000001100111111001111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \fourBitCounter4|ALT_INV_tempCount\(2),
	datac => \fourBitCounter4|ALT_INV_tempCount\(0),
	datae => \fourBitCounter4|ALT_INV_tempCount\(1),
	dataf => \fourBitCounter4|ALT_INV_tempCount\(3),
	combout => \sevenSegment4|Mux3~0_combout\);

-- Location: LABCELL_X35_Y3_N36
\sevenSegment4|Mux2~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \sevenSegment4|Mux2~0_combout\ = ( \fourBitCounter4|tempCount\(1) & ( \fourBitCounter4|tempCount\(3) ) ) # ( !\fourBitCounter4|tempCount\(1) & ( \fourBitCounter4|tempCount\(3) & ( (\fourBitCounter4|tempCount\(0)) # (\fourBitCounter4|tempCount\(2)) ) ) ) # 
-- ( \fourBitCounter4|tempCount\(1) & ( !\fourBitCounter4|tempCount\(3) & ( \fourBitCounter4|tempCount\(0) ) ) ) # ( !\fourBitCounter4|tempCount\(1) & ( !\fourBitCounter4|tempCount\(3) & ( (\fourBitCounter4|tempCount\(0)) # (\fourBitCounter4|tempCount\(2)) ) 
-- ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011111100111111000011110000111100111111001111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \fourBitCounter4|ALT_INV_tempCount\(2),
	datac => \fourBitCounter4|ALT_INV_tempCount\(0),
	datae => \fourBitCounter4|ALT_INV_tempCount\(1),
	dataf => \fourBitCounter4|ALT_INV_tempCount\(3),
	combout => \sevenSegment4|Mux2~0_combout\);

-- Location: LABCELL_X35_Y3_N30
\sevenSegment4|Mux1~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \sevenSegment4|Mux1~0_combout\ = ( \fourBitCounter4|tempCount\(1) & ( \fourBitCounter4|tempCount\(3) ) ) # ( !\fourBitCounter4|tempCount\(1) & ( \fourBitCounter4|tempCount\(3) & ( \fourBitCounter4|tempCount\(2) ) ) ) # ( \fourBitCounter4|tempCount\(1) & ( 
-- !\fourBitCounter4|tempCount\(3) & ( (!\fourBitCounter4|tempCount\(2)) # (\fourBitCounter4|tempCount\(0)) ) ) ) # ( !\fourBitCounter4|tempCount\(1) & ( !\fourBitCounter4|tempCount\(3) & ( (!\fourBitCounter4|tempCount\(2) & \fourBitCounter4|tempCount\(0)) ) 
-- ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000110000001100110011111100111100110011001100111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \fourBitCounter4|ALT_INV_tempCount\(2),
	datac => \fourBitCounter4|ALT_INV_tempCount\(0),
	datae => \fourBitCounter4|ALT_INV_tempCount\(1),
	dataf => \fourBitCounter4|ALT_INV_tempCount\(3),
	combout => \sevenSegment4|Mux1~0_combout\);

-- Location: LABCELL_X35_Y3_N27
\sevenSegment4|Mux0~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \sevenSegment4|Mux0~0_combout\ = ( \fourBitCounter4|tempCount\(0) & ( \fourBitCounter4|tempCount\(3) & ( (!\fourBitCounter4|tempCount\(1) & !\fourBitCounter4|tempCount\(2)) ) ) ) # ( !\fourBitCounter4|tempCount\(0) & ( \fourBitCounter4|tempCount\(3) & ( 
-- (!\fourBitCounter4|tempCount\(1) & !\fourBitCounter4|tempCount\(2)) ) ) ) # ( \fourBitCounter4|tempCount\(0) & ( !\fourBitCounter4|tempCount\(3) & ( !\fourBitCounter4|tempCount\(1) $ (!\fourBitCounter4|tempCount\(2)) ) ) ) # ( 
-- !\fourBitCounter4|tempCount\(0) & ( !\fourBitCounter4|tempCount\(3) & ( (\fourBitCounter4|tempCount\(2)) # (\fourBitCounter4|tempCount\(1)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101111101011111010110100101101010100000101000001010000010100000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \fourBitCounter4|ALT_INV_tempCount\(1),
	datac => \fourBitCounter4|ALT_INV_tempCount\(2),
	datae => \fourBitCounter4|ALT_INV_tempCount\(0),
	dataf => \fourBitCounter4|ALT_INV_tempCount\(3),
	combout => \sevenSegment4|Mux0~0_combout\);

-- Location: LABCELL_X35_Y2_N0
\enable4~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \enable4~feeder_combout\ = VCC

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111111111111111111111111111111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	combout => \enable4~feeder_combout\);

-- Location: LABCELL_X35_Y2_N21
\enable4~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \enable4~0_combout\ = ( \KEY[0]~input_o\ & ( !\KEY[2]~input_o\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011110000111100001111000011110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_KEY[2]~input_o\,
	dataf => \ALT_INV_KEY[0]~input_o\,
	combout => \enable4~0_combout\);

-- Location: LABCELL_X36_Y2_N48
\switchValue4[3]~21\ : cyclonev_lcell_comb
-- Equation(s):
-- \switchValue4[3]~21_combout\ = ( \fourBitCounter1|tempCount\(3) & ( \fourBitCounter1|tempCount\(1) & ( (\KEY[3]~input_o\ & \KEY[0]~input_o\) ) ) ) # ( !\fourBitCounter1|tempCount\(3) & ( \fourBitCounter1|tempCount\(1) & ( (\KEY[3]~input_o\ & 
-- \KEY[0]~input_o\) ) ) ) # ( \fourBitCounter1|tempCount\(3) & ( !\fourBitCounter1|tempCount\(1) & ( (\KEY[3]~input_o\ & (\KEY[0]~input_o\ & ((\fourBitCounter1|tempCount\(2)) # (\fourBitCounter1|tempCount\(0))))) ) ) ) # ( !\fourBitCounter1|tempCount\(3) & 
-- ( !\fourBitCounter1|tempCount\(1) & ( (\KEY[3]~input_o\ & \KEY[0]~input_o\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010100000101000000010000010100000101000001010000010100000101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_KEY[3]~input_o\,
	datab => \fourBitCounter1|ALT_INV_tempCount\(0),
	datac => \ALT_INV_KEY[0]~input_o\,
	datad => \fourBitCounter1|ALT_INV_tempCount\(2),
	datae => \fourBitCounter1|ALT_INV_tempCount\(3),
	dataf => \fourBitCounter1|ALT_INV_tempCount\(1),
	combout => \switchValue4[3]~21_combout\);

-- Location: FF_X35_Y2_N2
enable4 : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \twentySixBitCounter1|reached~q\,
	d => \enable4~feeder_combout\,
	clrn => \ALT_INV_enable4~0_combout\,
	ena => \switchValue4[3]~21_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \enable4~q\);

-- Location: LABCELL_X36_Y2_N12
\incHex4Count~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \incHex4Count~0_combout\ = ( \resetHex3~0_combout\ & ( (\Equal0~0_combout\ & (((\Equal1~0_combout\ & \resetHex2~0_combout\)) # (\incHex4Count~q\))) ) ) # ( !\resetHex3~0_combout\ & ( (\incHex4Count~q\ & \Equal0~0_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010100000101000001010000010100000101000001110000010100000111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_incHex4Count~q\,
	datab => \ALT_INV_Equal1~0_combout\,
	datac => \ALT_INV_Equal0~0_combout\,
	datad => \ALT_INV_resetHex2~0_combout\,
	dataf => \ALT_INV_resetHex3~0_combout\,
	combout => \incHex4Count~0_combout\);

-- Location: FF_X36_Y2_N14
incHex4Count : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \twentySixBitCounter1|reached~q\,
	d => \incHex4Count~0_combout\,
	ena => \ALT_INV_resetHex0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \incHex4Count~q\);

-- Location: LABCELL_X37_Y1_N51
\switchValue4~26\ : cyclonev_lcell_comb
-- Equation(s):
-- \switchValue4~26_combout\ = ( !\SW[2]~input_o\ & ( \SW[5]~input_o\ & ( (!\SW[7]~input_o\ & (!\SW[6]~input_o\ & (!\SW[4]~input_o\ & !\SW[3]~input_o\))) ) ) ) # ( \SW[2]~input_o\ & ( !\SW[5]~input_o\ & ( (!\SW[7]~input_o\ & !\SW[6]~input_o\) ) ) ) # ( 
-- !\SW[2]~input_o\ & ( !\SW[5]~input_o\ & ( (!\SW[7]~input_o\ & !\SW[6]~input_o\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000100010001000100010001000100010000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_SW[7]~input_o\,
	datab => \ALT_INV_SW[6]~input_o\,
	datac => \ALT_INV_SW[4]~input_o\,
	datad => \ALT_INV_SW[3]~input_o\,
	datae => \ALT_INV_SW[2]~input_o\,
	dataf => \ALT_INV_SW[5]~input_o\,
	combout => \switchValue4~26_combout\);

-- Location: LABCELL_X35_Y2_N24
\switchValue4~28\ : cyclonev_lcell_comb
-- Equation(s):
-- \switchValue4~28_combout\ = (!\switchValue4~26_combout\) # (\SW[1]~input_o\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1010111110101111101011111010111110101111101011111010111110101111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_switchValue4~26_combout\,
	datac => \ALT_INV_SW[1]~input_o\,
	combout => \switchValue4~28_combout\);

-- Location: LABCELL_X35_Y2_N15
\switchValue4[1]~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \switchValue4[1]~5_combout\ = ( \switchValue4[1]~5_combout\ & ( (!\enable4~0_combout\) # (\switchValue4~28_combout\) ) ) # ( !\switchValue4[1]~5_combout\ & ( (\enable4~0_combout\ & \switchValue4~28_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000001111000000000000111111110000111111111111000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_enable4~0_combout\,
	datad => \ALT_INV_switchValue4~28_combout\,
	dataf => \ALT_INV_switchValue4[1]~5_combout\,
	combout => \switchValue4[1]~5_combout\);

-- Location: FF_X35_Y2_N8
\switchValue4[1]~_emulated\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \twentySixBitCounter1|reached~q\,
	asdata => \switchValue4[1]~5_combout\,
	clrn => \ALT_INV_enable4~0_combout\,
	sload => VCC,
	ena => \switchValue4[3]~21_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \switchValue4[1]~_emulated_q\);

-- Location: LABCELL_X35_Y2_N6
\switchValue4[1]~6\ : cyclonev_lcell_comb
-- Equation(s):
-- \switchValue4[1]~6_combout\ = ( \switchValue4[1]~5_combout\ & ( (!\enable4~0_combout\ & (!\switchValue4[1]~_emulated_q\)) # (\enable4~0_combout\ & ((\switchValue4~28_combout\))) ) ) # ( !\switchValue4[1]~5_combout\ & ( (!\enable4~0_combout\ & 
-- (\switchValue4[1]~_emulated_q\)) # (\enable4~0_combout\ & ((\switchValue4~28_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001100001111001100110000111111001100000011111100110000001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_switchValue4[1]~_emulated_q\,
	datac => \ALT_INV_switchValue4~28_combout\,
	datad => \ALT_INV_enable4~0_combout\,
	dataf => \ALT_INV_switchValue4[1]~5_combout\,
	combout => \switchValue4[1]~6_combout\);

-- Location: MLABCELL_X34_Y1_N27
\fourBitCounter5|tempCount~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \fourBitCounter5|tempCount~1_combout\ = ( \resetHex4~q\ & ( \switchValue4[1]~6_combout\ & ( (!\enable4~q\) # (!\fourBitCounter5|tempCount\(1) $ (((!\incHex4Count~q\) # (!\fourBitCounter5|tempCount\(0))))) ) ) ) # ( \resetHex4~q\ & ( 
-- !\switchValue4[1]~6_combout\ & ( (\enable4~q\ & (!\fourBitCounter5|tempCount\(1) $ (((!\incHex4Count~q\) # (!\fourBitCounter5|tempCount\(0)))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000010000111000000000000000001111000111111110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_incHex4Count~q\,
	datab => \fourBitCounter5|ALT_INV_tempCount\(0),
	datac => \ALT_INV_enable4~q\,
	datad => \fourBitCounter5|ALT_INV_tempCount\(1),
	datae => \ALT_INV_resetHex4~q\,
	dataf => \ALT_INV_switchValue4[1]~6_combout\,
	combout => \fourBitCounter5|tempCount~1_combout\);

-- Location: FF_X34_Y1_N50
\fourBitCounter5|tempCount[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \twentySixBitCounter1|reached~q\,
	asdata => \fourBitCounter5|tempCount~1_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fourBitCounter5|tempCount\(1));

-- Location: LABCELL_X36_Y2_N15
\fourBitCounter5|Add0~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \fourBitCounter5|Add0~0_combout\ = ( \fourBitCounter5|tempCount\(1) & ( !\fourBitCounter5|tempCount\(2) $ (((!\incHex4Count~q\) # (!\fourBitCounter5|tempCount\(0)))) ) ) # ( !\fourBitCounter5|tempCount\(1) & ( \fourBitCounter5|tempCount\(2) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111000011110000111100001111010110100000111101011010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_incHex4Count~q\,
	datac => \fourBitCounter5|ALT_INV_tempCount\(2),
	datad => \fourBitCounter5|ALT_INV_tempCount\(0),
	dataf => \fourBitCounter5|ALT_INV_tempCount\(1),
	combout => \fourBitCounter5|Add0~0_combout\);

-- Location: LABCELL_X37_Y1_N21
\switchValue4~29\ : cyclonev_lcell_comb
-- Equation(s):
-- \switchValue4~29_combout\ = ( !\SW[5]~input_o\ & ( (!\SW[7]~input_o\ & (!\SW[6]~input_o\ & \SW[2]~input_o\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000100000001000000010000000100000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_SW[7]~input_o\,
	datab => \ALT_INV_SW[6]~input_o\,
	datac => \ALT_INV_SW[2]~input_o\,
	dataf => \ALT_INV_SW[5]~input_o\,
	combout => \switchValue4~29_combout\);

-- Location: LABCELL_X35_Y2_N51
\switchValue4[2]~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \switchValue4[2]~9_combout\ = ( \switchValue4[2]~9_combout\ & ( (!\enable4~0_combout\) # (\switchValue4~29_combout\) ) ) # ( !\switchValue4[2]~9_combout\ & ( (\switchValue4~29_combout\ & \enable4~0_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000001111000000000000111111111111000011111111111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_switchValue4~29_combout\,
	datad => \ALT_INV_enable4~0_combout\,
	dataf => \ALT_INV_switchValue4[2]~9_combout\,
	combout => \switchValue4[2]~9_combout\);

-- Location: FF_X35_Y2_N52
\switchValue4[2]~_emulated\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \twentySixBitCounter1|reached~q\,
	d => \switchValue4[2]~9_combout\,
	clrn => \ALT_INV_enable4~0_combout\,
	ena => \switchValue4[3]~21_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \switchValue4[2]~_emulated_q\);

-- Location: LABCELL_X35_Y2_N27
\switchValue4[2]~10\ : cyclonev_lcell_comb
-- Equation(s):
-- \switchValue4[2]~10_combout\ = ( \switchValue4[2]~9_combout\ & ( (!\enable4~0_combout\ & ((!\switchValue4[2]~_emulated_q\))) # (\enable4~0_combout\ & (\switchValue4~29_combout\)) ) ) # ( !\switchValue4[2]~9_combout\ & ( (!\enable4~0_combout\ & 
-- ((\switchValue4[2]~_emulated_q\))) # (\enable4~0_combout\ & (\switchValue4~29_combout\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100110011000011110011001111110000001100111111000000110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_switchValue4~29_combout\,
	datac => \ALT_INV_switchValue4[2]~_emulated_q\,
	datad => \ALT_INV_enable4~0_combout\,
	dataf => \ALT_INV_switchValue4[2]~9_combout\,
	combout => \switchValue4[2]~10_combout\);

-- Location: LABCELL_X35_Y2_N45
\fourBitCounter5|tempCount~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \fourBitCounter5|tempCount~2_combout\ = ( \switchValue4[2]~10_combout\ & ( (\resetHex4~q\ & ((!\enable4~q\) # (\fourBitCounter5|Add0~0_combout\))) ) ) # ( !\switchValue4[2]~10_combout\ & ( (\resetHex4~q\ & (\fourBitCounter5|Add0~0_combout\ & \enable4~q\)) 
-- ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000011000000000000001100110011000000110011001100000011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_resetHex4~q\,
	datac => \fourBitCounter5|ALT_INV_Add0~0_combout\,
	datad => \ALT_INV_enable4~q\,
	dataf => \ALT_INV_switchValue4[2]~10_combout\,
	combout => \fourBitCounter5|tempCount~2_combout\);

-- Location: FF_X35_Y2_N47
\fourBitCounter5|tempCount[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \twentySixBitCounter1|reached~q\,
	d => \fourBitCounter5|tempCount~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fourBitCounter5|tempCount\(2));

-- Location: LABCELL_X36_Y2_N21
\fourBitCounter5|Add0~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \fourBitCounter5|Add0~1_combout\ = ( \fourBitCounter5|tempCount\(1) & ( (\fourBitCounter5|tempCount\(0) & (\fourBitCounter5|tempCount\(2) & \incHex4Count~q\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000100010000000000010001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \fourBitCounter5|ALT_INV_tempCount\(0),
	datab => \fourBitCounter5|ALT_INV_tempCount\(2),
	datad => \ALT_INV_incHex4Count~q\,
	dataf => \fourBitCounter5|ALT_INV_tempCount\(1),
	combout => \fourBitCounter5|Add0~1_combout\);

-- Location: LABCELL_X37_Y1_N6
\switchValue4~30\ : cyclonev_lcell_comb
-- Equation(s):
-- \switchValue4~30_combout\ = ( !\SW[5]~input_o\ & ( (!\SW[7]~input_o\ & (!\SW[6]~input_o\ & \SW[3]~input_o\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000100000001000000010000000100000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_SW[7]~input_o\,
	datab => \ALT_INV_SW[6]~input_o\,
	datac => \ALT_INV_SW[3]~input_o\,
	dataf => \ALT_INV_SW[5]~input_o\,
	combout => \switchValue4~30_combout\);

-- Location: LABCELL_X36_Y2_N39
\switchValue4[3]~13\ : cyclonev_lcell_comb
-- Equation(s):
-- \switchValue4[3]~13_combout\ = ( \enable4~0_combout\ & ( \switchValue4[3]~13_combout\ & ( \switchValue4~30_combout\ ) ) ) # ( !\enable4~0_combout\ & ( \switchValue4[3]~13_combout\ ) ) # ( \enable4~0_combout\ & ( !\switchValue4[3]~13_combout\ & ( 
-- \switchValue4~30_combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000010101010101010111111111111111110101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_switchValue4~30_combout\,
	datae => \ALT_INV_enable4~0_combout\,
	dataf => \ALT_INV_switchValue4[3]~13_combout\,
	combout => \switchValue4[3]~13_combout\);

-- Location: FF_X36_Y2_N26
\switchValue4[3]~_emulated\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \twentySixBitCounter1|reached~q\,
	asdata => \switchValue4[3]~13_combout\,
	clrn => \ALT_INV_enable4~0_combout\,
	sload => VCC,
	ena => \switchValue4[3]~21_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \switchValue4[3]~_emulated_q\);

-- Location: LABCELL_X36_Y2_N24
\switchValue4[3]~14\ : cyclonev_lcell_comb
-- Equation(s):
-- \switchValue4[3]~14_combout\ = ( \switchValue4~30_combout\ & ( (!\switchValue4[3]~_emulated_q\ $ (!\switchValue4[3]~13_combout\)) # (\enable4~0_combout\) ) ) # ( !\switchValue4~30_combout\ & ( (!\enable4~0_combout\ & (!\switchValue4[3]~_emulated_q\ $ 
-- (!\switchValue4[3]~13_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011000011000000001100001100000000111111110011110011111111001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_switchValue4[3]~_emulated_q\,
	datac => \ALT_INV_enable4~0_combout\,
	datad => \ALT_INV_switchValue4[3]~13_combout\,
	dataf => \ALT_INV_switchValue4~30_combout\,
	combout => \switchValue4[3]~14_combout\);

-- Location: LABCELL_X36_Y2_N42
\fourBitCounter5|tempCount~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \fourBitCounter5|tempCount~3_combout\ = ( \switchValue4[3]~14_combout\ & ( (\resetHex4~q\ & ((!\enable4~q\) # (!\fourBitCounter5|tempCount\(3) $ (!\fourBitCounter5|Add0~1_combout\)))) ) ) # ( !\switchValue4[3]~14_combout\ & ( (\resetHex4~q\ & (\enable4~q\ 
-- & (!\fourBitCounter5|tempCount\(3) $ (!\fourBitCounter5|Add0~1_combout\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000100000100000000010000010001010001010101000101000101010100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_resetHex4~q\,
	datab => \fourBitCounter5|ALT_INV_tempCount\(3),
	datac => \ALT_INV_enable4~q\,
	datad => \fourBitCounter5|ALT_INV_Add0~1_combout\,
	dataf => \ALT_INV_switchValue4[3]~14_combout\,
	combout => \fourBitCounter5|tempCount~3_combout\);

-- Location: FF_X36_Y2_N44
\fourBitCounter5|tempCount[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \twentySixBitCounter1|reached~q\,
	d => \fourBitCounter5|tempCount~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fourBitCounter5|tempCount\(3));

-- Location: MLABCELL_X34_Y1_N36
\resetHex4~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \resetHex4~0_combout\ = ( \fourBitCounter5|tempCount\(3) & ( !\fourBitCounter5|tempCount\(1) & ( (\fourBitCounter5|tempCount\(0) & !\fourBitCounter5|tempCount\(2)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000011110000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \fourBitCounter5|ALT_INV_tempCount\(0),
	datad => \fourBitCounter5|ALT_INV_tempCount\(2),
	datae => \fourBitCounter5|ALT_INV_tempCount\(3),
	dataf => \fourBitCounter5|ALT_INV_tempCount\(1),
	combout => \resetHex4~0_combout\);

-- Location: MLABCELL_X34_Y1_N15
\resetHex3~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \resetHex3~2_combout\ = ( \Equal1~0_combout\ & ( (\resetHex3~0_combout\ & \resetHex2~0_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000011110000000000001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_resetHex3~0_combout\,
	datad => \ALT_INV_resetHex2~0_combout\,
	dataf => \ALT_INV_Equal1~0_combout\,
	combout => \resetHex3~2_combout\);

-- Location: MLABCELL_X34_Y1_N0
\resetHex5~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \resetHex5~0_combout\ = ( \process_0~1_combout\ & ( \resetHex3~2_combout\ & ( !\Equal0~0_combout\ ) ) ) # ( !\process_0~1_combout\ & ( \resetHex3~2_combout\ & ( (!\Equal0~0_combout\) # (\resetHex5~q\) ) ) ) # ( \process_0~1_combout\ & ( 
-- !\resetHex3~2_combout\ & ( (!\Equal0~0_combout\) # (\resetHex5~q\) ) ) ) # ( !\process_0~1_combout\ & ( !\resetHex3~2_combout\ & ( (!\Equal0~0_combout\) # (\resetHex5~q\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111100001111111111110000111111111111000011111111111100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_resetHex5~q\,
	datad => \ALT_INV_Equal0~0_combout\,
	datae => \ALT_INV_process_0~1_combout\,
	dataf => \ALT_INV_resetHex3~2_combout\,
	combout => \resetHex5~0_combout\);

-- Location: FF_X34_Y1_N5
resetHex5 : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \twentySixBitCounter1|reached~q\,
	asdata => \resetHex5~0_combout\,
	clrn => \KEY[0]~input_o\,
	sload => VCC,
	ena => \resetHex2~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \resetHex5~q\);

-- Location: MLABCELL_X34_Y1_N21
\incHex5Count~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \incHex5Count~0_combout\ = ( \resetHex2~0_combout\ & ( \Equal1~0_combout\ & ( (\Equal0~0_combout\ & (((\resetHex3~0_combout\ & \resetHex4~0_combout\)) # (\incHex5Count~q\))) ) ) ) # ( !\resetHex2~0_combout\ & ( \Equal1~0_combout\ & ( (\incHex5Count~q\ & 
-- \Equal0~0_combout\) ) ) ) # ( \resetHex2~0_combout\ & ( !\Equal1~0_combout\ & ( (\incHex5Count~q\ & \Equal0~0_combout\) ) ) ) # ( !\resetHex2~0_combout\ & ( !\Equal1~0_combout\ & ( (\incHex5Count~q\ & \Equal0~0_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010100000101000001010000010100000101000001010000010100000111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_incHex5Count~q\,
	datab => \ALT_INV_resetHex3~0_combout\,
	datac => \ALT_INV_Equal0~0_combout\,
	datad => \ALT_INV_resetHex4~0_combout\,
	datae => \ALT_INV_resetHex2~0_combout\,
	dataf => \ALT_INV_Equal1~0_combout\,
	combout => \incHex5Count~0_combout\);

-- Location: FF_X34_Y1_N41
incHex5Count : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \twentySixBitCounter1|reached~q\,
	asdata => \incHex5Count~0_combout\,
	sload => VCC,
	ena => \ALT_INV_resetHex0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \incHex5Count~q\);

-- Location: LABCELL_X37_Y1_N18
\switchValue5~12\ : cyclonev_lcell_comb
-- Equation(s):
-- \switchValue5~12_combout\ = ( \SW[4]~input_o\ & ( (!\SW[7]~input_o\ & (!\SW[6]~input_o\ & !\SW[5]~input_o\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000010000000100000001000000010000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_SW[7]~input_o\,
	datab => \ALT_INV_SW[6]~input_o\,
	datac => \ALT_INV_SW[5]~input_o\,
	dataf => \ALT_INV_SW[4]~input_o\,
	combout => \switchValue5~12_combout\);

-- Location: LABCELL_X35_Y2_N9
\switchValue5[0]~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \switchValue5[0]~1_combout\ = (!\enable4~0_combout\ & ((\switchValue5[0]~1_combout\))) # (\enable4~0_combout\ & (\switchValue5~12_combout\))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111101010101000011110101010100001111010101010000111101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_switchValue5~12_combout\,
	datac => \ALT_INV_switchValue5[0]~1_combout\,
	datad => \ALT_INV_enable4~0_combout\,
	combout => \switchValue5[0]~1_combout\);

-- Location: FF_X35_Y2_N49
\switchValue5[0]~_emulated\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \twentySixBitCounter1|reached~q\,
	asdata => \switchValue5[0]~1_combout\,
	clrn => \ALT_INV_enable4~0_combout\,
	sload => VCC,
	ena => \switchValue4[3]~21_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \switchValue5[0]~_emulated_q\);

-- Location: LABCELL_X35_Y2_N48
\switchValue5[0]~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \switchValue5[0]~2_combout\ = ( \switchValue5[0]~1_combout\ & ( (!\enable4~0_combout\ & (!\switchValue5[0]~_emulated_q\)) # (\enable4~0_combout\ & ((\switchValue5~12_combout\))) ) ) # ( !\switchValue5[0]~1_combout\ & ( (!\enable4~0_combout\ & 
-- (\switchValue5[0]~_emulated_q\)) # (\enable4~0_combout\ & ((\switchValue5~12_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010011100100111001001110010011110001101100011011000110110001101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_enable4~0_combout\,
	datab => \ALT_INV_switchValue5[0]~_emulated_q\,
	datac => \ALT_INV_switchValue5~12_combout\,
	dataf => \ALT_INV_switchValue5[0]~1_combout\,
	combout => \switchValue5[0]~2_combout\);

-- Location: LABCELL_X35_Y2_N36
\fourBitCounter6|tempCount~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \fourBitCounter6|tempCount~0_combout\ = ( \switchValue5[0]~2_combout\ & ( (\resetHex5~q\ & ((!\enable4~q\) # (!\incHex5Count~q\ $ (!\fourBitCounter6|tempCount\(0))))) ) ) # ( !\switchValue5[0]~2_combout\ & ( (\resetHex5~q\ & (\enable4~q\ & 
-- (!\incHex5Count~q\ $ (!\fourBitCounter6|tempCount\(0))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000100000100000000010000010001010001010101000101000101010100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_resetHex5~q\,
	datab => \ALT_INV_incHex5Count~q\,
	datac => \ALT_INV_enable4~q\,
	datad => \fourBitCounter6|ALT_INV_tempCount\(0),
	dataf => \ALT_INV_switchValue5[0]~2_combout\,
	combout => \fourBitCounter6|tempCount~0_combout\);

-- Location: FF_X35_Y2_N56
\fourBitCounter6|tempCount[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \twentySixBitCounter1|reached~q\,
	asdata => \fourBitCounter6|tempCount~0_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fourBitCounter6|tempCount\(0));

-- Location: LABCELL_X37_Y1_N24
\switchValue5~13\ : cyclonev_lcell_comb
-- Equation(s):
-- \switchValue5~13_combout\ = ((\SW[5]~input_o\) # (\SW[6]~input_o\)) # (\SW[7]~input_o\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0111111101111111011111110111111101111111011111110111111101111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_SW[7]~input_o\,
	datab => \ALT_INV_SW[6]~input_o\,
	datac => \ALT_INV_SW[5]~input_o\,
	combout => \switchValue5~13_combout\);

-- Location: LABCELL_X35_Y2_N39
\switchValue5[1]~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \switchValue5[1]~5_combout\ = ( \switchValue5[1]~5_combout\ & ( (!\enable4~0_combout\) # (\switchValue5~13_combout\) ) ) # ( !\switchValue5[1]~5_combout\ & ( (\enable4~0_combout\ & \switchValue5~13_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000001111000000000000111111110000111111111111000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_enable4~0_combout\,
	datad => \ALT_INV_switchValue5~13_combout\,
	dataf => \ALT_INV_switchValue5[1]~5_combout\,
	combout => \switchValue5[1]~5_combout\);

-- Location: FF_X35_Y2_N4
\switchValue5[1]~_emulated\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \twentySixBitCounter1|reached~q\,
	asdata => \switchValue5[1]~5_combout\,
	clrn => \ALT_INV_enable4~0_combout\,
	sload => VCC,
	ena => \switchValue4[3]~21_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \switchValue5[1]~_emulated_q\);

-- Location: LABCELL_X35_Y2_N3
\switchValue5[1]~6\ : cyclonev_lcell_comb
-- Equation(s):
-- \switchValue5[1]~6_combout\ = ( \switchValue5[1]~5_combout\ & ( (!\enable4~0_combout\ & ((!\switchValue5[1]~_emulated_q\))) # (\enable4~0_combout\ & (\switchValue5~13_combout\)) ) ) # ( !\switchValue5[1]~5_combout\ & ( (!\enable4~0_combout\ & 
-- ((\switchValue5[1]~_emulated_q\))) # (\enable4~0_combout\ & (\switchValue5~13_combout\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111101010101000011110101010111110000010101011111000001010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_switchValue5~13_combout\,
	datac => \ALT_INV_switchValue5[1]~_emulated_q\,
	datad => \ALT_INV_enable4~0_combout\,
	dataf => \ALT_INV_switchValue5[1]~5_combout\,
	combout => \switchValue5[1]~6_combout\);

-- Location: LABCELL_X35_Y2_N57
\fourBitCounter6|tempCount~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \fourBitCounter6|tempCount~1_combout\ = ( \switchValue5[1]~6_combout\ & ( \resetHex5~q\ & ( (!\enable4~q\) # (!\fourBitCounter6|tempCount\(1) $ (((!\fourBitCounter6|tempCount\(0)) # (!\incHex5Count~q\)))) ) ) ) # ( !\switchValue5[1]~6_combout\ & ( 
-- \resetHex5~q\ & ( (\enable4~q\ & (!\fourBitCounter6|tempCount\(1) $ (((!\fourBitCounter6|tempCount\(0)) # (!\incHex5Count~q\))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000001101101111111100110110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \fourBitCounter6|ALT_INV_tempCount\(0),
	datab => \fourBitCounter6|ALT_INV_tempCount\(1),
	datac => \ALT_INV_incHex5Count~q\,
	datad => \ALT_INV_enable4~q\,
	datae => \ALT_INV_switchValue5[1]~6_combout\,
	dataf => \ALT_INV_resetHex5~q\,
	combout => \fourBitCounter6|tempCount~1_combout\);

-- Location: FF_X35_Y2_N29
\fourBitCounter6|tempCount[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \twentySixBitCounter1|reached~q\,
	asdata => \fourBitCounter6|tempCount~1_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fourBitCounter6|tempCount\(1));

-- Location: MLABCELL_X34_Y1_N30
\fourBitCounter6|tempCount~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \fourBitCounter6|tempCount~2_combout\ = ( \enable4~q\ & ( \fourBitCounter6|tempCount\(1) & ( (\resetHex5~q\ & (!\fourBitCounter6|tempCount\(2) $ (((!\incHex5Count~q\) # (!\fourBitCounter6|tempCount\(0)))))) ) ) ) # ( \enable4~q\ & ( 
-- !\fourBitCounter6|tempCount\(1) & ( (\resetHex5~q\ & \fourBitCounter6|tempCount\(2)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000101010100000000000000000000000101010100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_resetHex5~q\,
	datab => \ALT_INV_incHex5Count~q\,
	datac => \fourBitCounter6|ALT_INV_tempCount\(0),
	datad => \fourBitCounter6|ALT_INV_tempCount\(2),
	datae => \ALT_INV_enable4~q\,
	dataf => \fourBitCounter6|ALT_INV_tempCount\(1),
	combout => \fourBitCounter6|tempCount~2_combout\);

-- Location: FF_X34_Y1_N44
\fourBitCounter6|tempCount[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \twentySixBitCounter1|reached~q\,
	asdata => \fourBitCounter6|tempCount~2_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fourBitCounter6|tempCount\(2));

-- Location: MLABCELL_X34_Y1_N54
\process_0~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \process_0~0_combout\ = ( !\fourBitCounter5|tempCount\(3) & ( \fourBitCounter5|tempCount\(1) & ( (!\fourBitCounter6|tempCount\(0) & \fourBitCounter6|tempCount\(1)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000111100000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \fourBitCounter6|ALT_INV_tempCount\(0),
	datad => \fourBitCounter6|ALT_INV_tempCount\(1),
	datae => \fourBitCounter5|ALT_INV_tempCount\(3),
	dataf => \fourBitCounter5|ALT_INV_tempCount\(1),
	combout => \process_0~0_combout\);

-- Location: MLABCELL_X34_Y1_N12
\fourBitCounter6|Add0~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \fourBitCounter6|Add0~0_combout\ = ( \fourBitCounter6|tempCount\(2) & ( (\incHex5Count~q\ & (\fourBitCounter6|tempCount\(0) & \fourBitCounter6|tempCount\(1))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000110000000000000011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_incHex5Count~q\,
	datac => \fourBitCounter6|ALT_INV_tempCount\(0),
	datad => \fourBitCounter6|ALT_INV_tempCount\(1),
	dataf => \fourBitCounter6|ALT_INV_tempCount\(2),
	combout => \fourBitCounter6|Add0~0_combout\);

-- Location: MLABCELL_X34_Y1_N51
\fourBitCounter6|tempCount~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \fourBitCounter6|tempCount~3_combout\ = ( \enable4~q\ & ( \fourBitCounter6|Add0~0_combout\ & ( (\resetHex5~q\ & !\fourBitCounter6|tempCount\(3)) ) ) ) # ( \enable4~q\ & ( !\fourBitCounter6|Add0~0_combout\ & ( (\resetHex5~q\ & 
-- \fourBitCounter6|tempCount\(3)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000001010000010100000000000000000101000001010000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_resetHex5~q\,
	datac => \fourBitCounter6|ALT_INV_tempCount\(3),
	datae => \ALT_INV_enable4~q\,
	dataf => \fourBitCounter6|ALT_INV_Add0~0_combout\,
	combout => \fourBitCounter6|tempCount~3_combout\);

-- Location: FF_X34_Y1_N59
\fourBitCounter6|tempCount[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \twentySixBitCounter1|reached~q\,
	asdata => \fourBitCounter6|tempCount~3_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fourBitCounter6|tempCount\(3));

-- Location: MLABCELL_X34_Y1_N45
\process_0~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \process_0~1_combout\ = ( \process_0~0_combout\ & ( !\fourBitCounter6|tempCount\(3) & ( (!\fourBitCounter6|tempCount\(2) & (!\fourBitCounter5|tempCount\(2) & \fourBitCounter5|tempCount\(0))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000001100000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \fourBitCounter6|ALT_INV_tempCount\(2),
	datac => \fourBitCounter5|ALT_INV_tempCount\(2),
	datad => \fourBitCounter5|ALT_INV_tempCount\(0),
	datae => \ALT_INV_process_0~0_combout\,
	dataf => \fourBitCounter6|ALT_INV_tempCount\(3),
	combout => \process_0~1_combout\);

-- Location: MLABCELL_X34_Y1_N6
\resetHex4~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \resetHex4~1_combout\ = ( \process_0~1_combout\ & ( \resetHex3~2_combout\ & ( !\Equal0~0_combout\ ) ) ) # ( !\process_0~1_combout\ & ( \resetHex3~2_combout\ & ( (!\Equal0~0_combout\) # ((!\resetHex4~0_combout\ & \resetHex4~q\)) ) ) ) # ( 
-- \process_0~1_combout\ & ( !\resetHex3~2_combout\ & ( (!\Equal0~0_combout\) # (\resetHex4~q\) ) ) ) # ( !\process_0~1_combout\ & ( !\resetHex3~2_combout\ & ( (!\Equal0~0_combout\) # (\resetHex4~q\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111100001111111111110000111111111111000010101111111100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_resetHex4~0_combout\,
	datac => \ALT_INV_resetHex4~q\,
	datad => \ALT_INV_Equal0~0_combout\,
	datae => \ALT_INV_process_0~1_combout\,
	dataf => \ALT_INV_resetHex3~2_combout\,
	combout => \resetHex4~1_combout\);

-- Location: FF_X34_Y1_N32
resetHex4 : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \twentySixBitCounter1|reached~q\,
	asdata => \resetHex4~1_combout\,
	clrn => \KEY[0]~input_o\,
	sload => VCC,
	ena => \resetHex2~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \resetHex4~q\);

-- Location: LABCELL_X37_Y1_N45
\switchValue4~27\ : cyclonev_lcell_comb
-- Equation(s):
-- \switchValue4~27_combout\ = ( \switchValue4~26_combout\ & ( \SW[0]~input_o\ ) ) # ( !\switchValue4~26_combout\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111111111111111111111111101010101010101010101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_SW[0]~input_o\,
	dataf => \ALT_INV_switchValue4~26_combout\,
	combout => \switchValue4~27_combout\);

-- Location: LABCELL_X35_Y2_N33
\switchValue4[0]~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \switchValue4[0]~1_combout\ = ( \switchValue4[0]~1_combout\ & ( (!\enable4~0_combout\) # (\switchValue4~27_combout\) ) ) # ( !\switchValue4[0]~1_combout\ & ( (\switchValue4~27_combout\ & \enable4~0_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000001010101000000000101010111111111010101011111111101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_switchValue4~27_combout\,
	datad => \ALT_INV_enable4~0_combout\,
	dataf => \ALT_INV_switchValue4[0]~1_combout\,
	combout => \switchValue4[0]~1_combout\);

-- Location: FF_X35_Y2_N31
\switchValue4[0]~_emulated\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \twentySixBitCounter1|reached~q\,
	asdata => \switchValue4[0]~1_combout\,
	clrn => \ALT_INV_enable4~0_combout\,
	sload => VCC,
	ena => \switchValue4[3]~21_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \switchValue4[0]~_emulated_q\);

-- Location: LABCELL_X35_Y2_N30
\switchValue4[0]~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \switchValue4[0]~2_combout\ = ( \switchValue4[0]~1_combout\ & ( (!\enable4~0_combout\ & ((!\switchValue4[0]~_emulated_q\))) # (\enable4~0_combout\ & (\switchValue4~27_combout\)) ) ) # ( !\switchValue4[0]~1_combout\ & ( (!\enable4~0_combout\ & 
-- ((\switchValue4[0]~_emulated_q\))) # (\enable4~0_combout\ & (\switchValue4~27_combout\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111101010101000011110101010111110000010101011111000001010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_switchValue4~27_combout\,
	datac => \ALT_INV_switchValue4[0]~_emulated_q\,
	datad => \ALT_INV_enable4~0_combout\,
	dataf => \ALT_INV_switchValue4[0]~1_combout\,
	combout => \switchValue4[0]~2_combout\);

-- Location: LABCELL_X35_Y2_N42
\fourBitCounter5|tempCount~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \fourBitCounter5|tempCount~0_combout\ = ( \switchValue4[0]~2_combout\ & ( (\resetHex4~q\ & ((!\enable4~q\) # (!\fourBitCounter5|tempCount\(0) $ (!\incHex4Count~q\)))) ) ) # ( !\switchValue4[0]~2_combout\ & ( (\enable4~q\ & (\resetHex4~q\ & 
-- (!\fourBitCounter5|tempCount\(0) $ (!\incHex4Count~q\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000100010000000000010001000000100011001100100010001100110010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_enable4~q\,
	datab => \ALT_INV_resetHex4~q\,
	datac => \fourBitCounter5|ALT_INV_tempCount\(0),
	datad => \ALT_INV_incHex4Count~q\,
	dataf => \ALT_INV_switchValue4[0]~2_combout\,
	combout => \fourBitCounter5|tempCount~0_combout\);

-- Location: FF_X35_Y2_N23
\fourBitCounter5|tempCount[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \twentySixBitCounter1|reached~q\,
	asdata => \fourBitCounter5|tempCount~0_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fourBitCounter5|tempCount\(0));

-- Location: LABCELL_X36_Y2_N54
\sevenSegment5|Mux6~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \sevenSegment5|Mux6~0_combout\ = ( \fourBitCounter5|tempCount\(3) & ( (\fourBitCounter5|tempCount\(2)) # (\fourBitCounter5|tempCount\(1)) ) ) # ( !\fourBitCounter5|tempCount\(3) & ( (!\fourBitCounter5|tempCount\(1) & (!\fourBitCounter5|tempCount\(0) $ 
-- (!\fourBitCounter5|tempCount\(2)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101000010100000010100001010000000001111111111110000111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \fourBitCounter5|ALT_INV_tempCount\(0),
	datac => \fourBitCounter5|ALT_INV_tempCount\(1),
	datad => \fourBitCounter5|ALT_INV_tempCount\(2),
	dataf => \fourBitCounter5|ALT_INV_tempCount\(3),
	combout => \sevenSegment5|Mux6~0_combout\);

-- Location: LABCELL_X36_Y2_N45
\sevenSegment5|Mux5~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \sevenSegment5|Mux5~0_combout\ = ( \fourBitCounter5|tempCount\(1) & ( ((\fourBitCounter5|tempCount\(2) & !\fourBitCounter5|tempCount\(0))) # (\fourBitCounter5|tempCount\(3)) ) ) # ( !\fourBitCounter5|tempCount\(1) & ( (\fourBitCounter5|tempCount\(2) & 
-- ((\fourBitCounter5|tempCount\(0)) # (\fourBitCounter5|tempCount\(3)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001100001111000000110000111100111111001100110011111100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \fourBitCounter5|ALT_INV_tempCount\(3),
	datac => \fourBitCounter5|ALT_INV_tempCount\(2),
	datad => \fourBitCounter5|ALT_INV_tempCount\(0),
	dataf => \fourBitCounter5|ALT_INV_tempCount\(1),
	combout => \sevenSegment5|Mux5~0_combout\);

-- Location: LABCELL_X36_Y2_N0
\sevenSegment5|Mux4~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \sevenSegment5|Mux4~0_combout\ = ( \fourBitCounter5|tempCount\(1) & ( ((!\fourBitCounter5|tempCount\(2) & !\fourBitCounter5|tempCount\(0))) # (\fourBitCounter5|tempCount\(3)) ) ) # ( !\fourBitCounter5|tempCount\(1) & ( (\fourBitCounter5|tempCount\(3) & 
-- \fourBitCounter5|tempCount\(2)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000100010001000100010001000111010101110101011101010111010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \fourBitCounter5|ALT_INV_tempCount\(3),
	datab => \fourBitCounter5|ALT_INV_tempCount\(2),
	datac => \fourBitCounter5|ALT_INV_tempCount\(0),
	dataf => \fourBitCounter5|ALT_INV_tempCount\(1),
	combout => \sevenSegment5|Mux4~0_combout\);

-- Location: LABCELL_X36_Y2_N3
\sevenSegment5|Mux3~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \sevenSegment5|Mux3~0_combout\ = ( \fourBitCounter5|tempCount\(1) & ( ((\fourBitCounter5|tempCount\(2) & \fourBitCounter5|tempCount\(0))) # (\fourBitCounter5|tempCount\(3)) ) ) # ( !\fourBitCounter5|tempCount\(1) & ( (!\fourBitCounter5|tempCount\(2) & 
-- ((\fourBitCounter5|tempCount\(0)))) # (\fourBitCounter5|tempCount\(2) & ((!\fourBitCounter5|tempCount\(0)) # (\fourBitCounter5|tempCount\(3)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001111001111001100111100111100001111001111110000111100111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \fourBitCounter5|ALT_INV_tempCount\(2),
	datac => \fourBitCounter5|ALT_INV_tempCount\(3),
	datad => \fourBitCounter5|ALT_INV_tempCount\(0),
	dataf => \fourBitCounter5|ALT_INV_tempCount\(1),
	combout => \sevenSegment5|Mux3~0_combout\);

-- Location: LABCELL_X36_Y2_N6
\sevenSegment5|Mux2~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \sevenSegment5|Mux2~0_combout\ = ( \fourBitCounter5|tempCount\(3) & ( ((\fourBitCounter5|tempCount\(1)) # (\fourBitCounter5|tempCount\(2))) # (\fourBitCounter5|tempCount\(0)) ) ) # ( !\fourBitCounter5|tempCount\(3) & ( ((\fourBitCounter5|tempCount\(2) & 
-- !\fourBitCounter5|tempCount\(1))) # (\fourBitCounter5|tempCount\(0)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0111010101110101011101010111010101111111011111110111111101111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \fourBitCounter5|ALT_INV_tempCount\(0),
	datab => \fourBitCounter5|ALT_INV_tempCount\(2),
	datac => \fourBitCounter5|ALT_INV_tempCount\(1),
	dataf => \fourBitCounter5|ALT_INV_tempCount\(3),
	combout => \sevenSegment5|Mux2~0_combout\);

-- Location: LABCELL_X36_Y2_N9
\sevenSegment5|Mux1~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \sevenSegment5|Mux1~0_combout\ = (!\fourBitCounter5|tempCount\(0) & ((!\fourBitCounter5|tempCount\(2) & ((\fourBitCounter5|tempCount\(1)))) # (\fourBitCounter5|tempCount\(2) & (\fourBitCounter5|tempCount\(3))))) # (\fourBitCounter5|tempCount\(0) & 
-- ((!\fourBitCounter5|tempCount\(2) $ (\fourBitCounter5|tempCount\(3))) # (\fourBitCounter5|tempCount\(1))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100001111011111010000111101111101000011110111110100001111011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \fourBitCounter5|ALT_INV_tempCount\(0),
	datab => \fourBitCounter5|ALT_INV_tempCount\(2),
	datac => \fourBitCounter5|ALT_INV_tempCount\(3),
	datad => \fourBitCounter5|ALT_INV_tempCount\(1),
	combout => \sevenSegment5|Mux1~0_combout\);

-- Location: LABCELL_X36_Y2_N27
\sevenSegment5|Mux0~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \sevenSegment5|Mux0~0_combout\ = ( \fourBitCounter5|tempCount\(1) & ( (!\fourBitCounter5|tempCount\(3) & ((!\fourBitCounter5|tempCount\(2)) # (!\fourBitCounter5|tempCount\(0)))) ) ) # ( !\fourBitCounter5|tempCount\(1) & ( !\fourBitCounter5|tempCount\(3) $ 
-- (!\fourBitCounter5|tempCount\(2)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101101001011010010110100101101010101010101000001010101010100000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \fourBitCounter5|ALT_INV_tempCount\(3),
	datac => \fourBitCounter5|ALT_INV_tempCount\(2),
	datad => \fourBitCounter5|ALT_INV_tempCount\(0),
	dataf => \fourBitCounter5|ALT_INV_tempCount\(1),
	combout => \sevenSegment5|Mux0~0_combout\);

-- Location: MLABCELL_X39_Y1_N36
\sevenSegment6|Mux6~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \sevenSegment6|Mux6~0_combout\ = ( \fourBitCounter6|tempCount\(3) & ( (\fourBitCounter6|tempCount\(1)) # (\fourBitCounter6|tempCount\(2)) ) ) # ( !\fourBitCounter6|tempCount\(3) & ( (!\fourBitCounter6|tempCount\(1) & (!\fourBitCounter6|tempCount\(2) $ 
-- (!\fourBitCounter6|tempCount\(0)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0110011000000000011001100000000001010101111111110101010111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \fourBitCounter6|ALT_INV_tempCount\(2),
	datab => \fourBitCounter6|ALT_INV_tempCount\(0),
	datad => \fourBitCounter6|ALT_INV_tempCount\(1),
	dataf => \fourBitCounter6|ALT_INV_tempCount\(3),
	combout => \sevenSegment6|Mux6~0_combout\);

-- Location: MLABCELL_X39_Y1_N39
\sevenSegment6|Mux5~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \sevenSegment6|Mux5~0_combout\ = ( \fourBitCounter6|tempCount\(3) & ( (\fourBitCounter6|tempCount\(1)) # (\fourBitCounter6|tempCount\(2)) ) ) # ( !\fourBitCounter6|tempCount\(3) & ( (\fourBitCounter6|tempCount\(2) & (!\fourBitCounter6|tempCount\(0) $ 
-- (!\fourBitCounter6|tempCount\(1)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000101000100000100010100010001010101111111110101010111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \fourBitCounter6|ALT_INV_tempCount\(2),
	datab => \fourBitCounter6|ALT_INV_tempCount\(0),
	datad => \fourBitCounter6|ALT_INV_tempCount\(1),
	dataf => \fourBitCounter6|ALT_INV_tempCount\(3),
	combout => \sevenSegment6|Mux5~0_combout\);

-- Location: MLABCELL_X39_Y1_N42
\sevenSegment6|Mux4~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \sevenSegment6|Mux4~0_combout\ = ( \fourBitCounter6|tempCount\(3) & ( (\fourBitCounter6|tempCount\(1)) # (\fourBitCounter6|tempCount\(2)) ) ) # ( !\fourBitCounter6|tempCount\(3) & ( (!\fourBitCounter6|tempCount\(2) & (!\fourBitCounter6|tempCount\(0) & 
-- \fourBitCounter6|tempCount\(1))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000010001000000000001000100001010101111111110101010111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \fourBitCounter6|ALT_INV_tempCount\(2),
	datab => \fourBitCounter6|ALT_INV_tempCount\(0),
	datad => \fourBitCounter6|ALT_INV_tempCount\(1),
	dataf => \fourBitCounter6|ALT_INV_tempCount\(3),
	combout => \sevenSegment6|Mux4~0_combout\);

-- Location: MLABCELL_X39_Y1_N45
\sevenSegment6|Mux3~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \sevenSegment6|Mux3~0_combout\ = ( \fourBitCounter6|tempCount\(3) & ( ((\fourBitCounter6|tempCount\(1)) # (\fourBitCounter6|tempCount\(0))) # (\fourBitCounter6|tempCount\(2)) ) ) # ( !\fourBitCounter6|tempCount\(3) & ( (!\fourBitCounter6|tempCount\(2) & 
-- (\fourBitCounter6|tempCount\(0) & !\fourBitCounter6|tempCount\(1))) # (\fourBitCounter6|tempCount\(2) & (!\fourBitCounter6|tempCount\(0) $ (\fourBitCounter6|tempCount\(1)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0110011000010001011001100001000101110111111111110111011111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \fourBitCounter6|ALT_INV_tempCount\(2),
	datab => \fourBitCounter6|ALT_INV_tempCount\(0),
	datad => \fourBitCounter6|ALT_INV_tempCount\(1),
	dataf => \fourBitCounter6|ALT_INV_tempCount\(3),
	combout => \sevenSegment6|Mux3~0_combout\);

-- Location: MLABCELL_X39_Y1_N24
\sevenSegment6|Mux2~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \sevenSegment6|Mux2~0_combout\ = ( \fourBitCounter6|tempCount\(3) & ( ((\fourBitCounter6|tempCount\(1)) # (\fourBitCounter6|tempCount\(0))) # (\fourBitCounter6|tempCount\(2)) ) ) # ( !\fourBitCounter6|tempCount\(3) & ( ((\fourBitCounter6|tempCount\(2) & 
-- !\fourBitCounter6|tempCount\(1))) # (\fourBitCounter6|tempCount\(0)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0111011100110011011101110011001101110111111111110111011111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \fourBitCounter6|ALT_INV_tempCount\(2),
	datab => \fourBitCounter6|ALT_INV_tempCount\(0),
	datad => \fourBitCounter6|ALT_INV_tempCount\(1),
	dataf => \fourBitCounter6|ALT_INV_tempCount\(3),
	combout => \sevenSegment6|Mux2~0_combout\);

-- Location: MLABCELL_X39_Y1_N27
\sevenSegment6|Mux1~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \sevenSegment6|Mux1~0_combout\ = ( \fourBitCounter6|tempCount\(3) & ( (\fourBitCounter6|tempCount\(1)) # (\fourBitCounter6|tempCount\(2)) ) ) # ( !\fourBitCounter6|tempCount\(3) & ( (!\fourBitCounter6|tempCount\(2) & ((\fourBitCounter6|tempCount\(1)) # 
-- (\fourBitCounter6|tempCount\(0)))) # (\fourBitCounter6|tempCount\(2) & (\fourBitCounter6|tempCount\(0) & \fourBitCounter6|tempCount\(1))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010001010111011001000101011101101010101111111110101010111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \fourBitCounter6|ALT_INV_tempCount\(2),
	datab => \fourBitCounter6|ALT_INV_tempCount\(0),
	datad => \fourBitCounter6|ALT_INV_tempCount\(1),
	dataf => \fourBitCounter6|ALT_INV_tempCount\(3),
	combout => \sevenSegment6|Mux1~0_combout\);

-- Location: MLABCELL_X39_Y1_N30
\sevenSegment6|Mux0~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \sevenSegment6|Mux0~0_combout\ = ( !\fourBitCounter6|tempCount\(1) & ( \fourBitCounter6|tempCount\(3) & ( !\fourBitCounter6|tempCount\(2) ) ) ) # ( \fourBitCounter6|tempCount\(1) & ( !\fourBitCounter6|tempCount\(3) & ( (!\fourBitCounter6|tempCount\(0)) # 
-- (!\fourBitCounter6|tempCount\(2)) ) ) ) # ( !\fourBitCounter6|tempCount\(1) & ( !\fourBitCounter6|tempCount\(3) & ( \fourBitCounter6|tempCount\(2) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111111111001111110011110000111100000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \fourBitCounter6|ALT_INV_tempCount\(0),
	datac => \fourBitCounter6|ALT_INV_tempCount\(2),
	datae => \fourBitCounter6|ALT_INV_tempCount\(1),
	dataf => \fourBitCounter6|ALT_INV_tempCount\(3),
	combout => \sevenSegment6|Mux0~0_combout\);

-- Location: IOIBUF_X36_Y0_N18
\KEY[1]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_KEY(1),
	o => \KEY[1]~input_o\);

-- Location: MLABCELL_X21_Y25_N3
\~QUARTUS_CREATED_GND~I\ : cyclonev_lcell_comb
-- Equation(s):

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
;
END structure;


