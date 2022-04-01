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

-- DATE "03/31/2022 19:10:53"

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

ENTITY 	trafficLight IS
    PORT (
	CLOCK_50 : IN std_logic;
	SW : IN std_logic_vector(9 DOWNTO 0);
	LEDR : BUFFER std_logic_vector(9 DOWNTO 0);
	HEX0 : BUFFER std_logic_vector(6 DOWNTO 0);
	HEX2 : BUFFER std_logic_vector(6 DOWNTO 0);
	HEX3 : BUFFER std_logic_vector(6 DOWNTO 0);
	HEX4 : BUFFER std_logic_vector(6 DOWNTO 0);
	HEX5 : BUFFER std_logic_vector(6 DOWNTO 0)
	);
END trafficLight;

-- Design Ports Information
-- SW[0]	=>  Location: PIN_AB12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[3]	=>  Location: PIN_AF10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[4]	=>  Location: PIN_AD11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[5]	=>  Location: PIN_AD12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[6]	=>  Location: PIN_AE11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[7]	=>  Location: PIN_AC9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[8]	=>  Location: PIN_AD10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[9]	=>  Location: PIN_AE12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDR[0]	=>  Location: PIN_V16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDR[1]	=>  Location: PIN_W16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDR[2]	=>  Location: PIN_V17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDR[3]	=>  Location: PIN_V18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDR[4]	=>  Location: PIN_W17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDR[5]	=>  Location: PIN_W19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDR[6]	=>  Location: PIN_Y19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDR[7]	=>  Location: PIN_W20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDR[8]	=>  Location: PIN_W21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDR[9]	=>  Location: PIN_Y21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX0[0]	=>  Location: PIN_AE26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX0[1]	=>  Location: PIN_AE27,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX0[2]	=>  Location: PIN_AE28,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX0[3]	=>  Location: PIN_AG27,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX0[4]	=>  Location: PIN_AF28,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX0[5]	=>  Location: PIN_AG28,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX0[6]	=>  Location: PIN_AH28,	 I/O Standard: 2.5 V,	 Current Strength: Default
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
-- SW[1]	=>  Location: PIN_AC12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[2]	=>  Location: PIN_AF9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- CLOCK_50	=>  Location: PIN_AF14,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF trafficLight IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_CLOCK_50 : std_logic;
SIGNAL ww_SW : std_logic_vector(9 DOWNTO 0);
SIGNAL ww_LEDR : std_logic_vector(9 DOWNTO 0);
SIGNAL ww_HEX0 : std_logic_vector(6 DOWNTO 0);
SIGNAL ww_HEX2 : std_logic_vector(6 DOWNTO 0);
SIGNAL ww_HEX3 : std_logic_vector(6 DOWNTO 0);
SIGNAL ww_HEX4 : std_logic_vector(6 DOWNTO 0);
SIGNAL ww_HEX5 : std_logic_vector(6 DOWNTO 0);
SIGNAL \SW[0]~input_o\ : std_logic;
SIGNAL \SW[3]~input_o\ : std_logic;
SIGNAL \SW[4]~input_o\ : std_logic;
SIGNAL \SW[5]~input_o\ : std_logic;
SIGNAL \SW[6]~input_o\ : std_logic;
SIGNAL \SW[7]~input_o\ : std_logic;
SIGNAL \SW[8]~input_o\ : std_logic;
SIGNAL \SW[9]~input_o\ : std_logic;
SIGNAL \~QUARTUS_CREATED_GND~I_combout\ : std_logic;
SIGNAL \CLOCK_50~input_o\ : std_logic;
SIGNAL \CLOCK_50~inputCLKENA0_outclk\ : std_logic;
SIGNAL \twentySixBitCounter1|tempCount[9]~DUPLICATE_q\ : std_logic;
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
SIGNAL \twentySixBitCounter1|Add0~37_sumout\ : std_logic;
SIGNAL \twentySixBitCounter1|Add0~38\ : std_logic;
SIGNAL \twentySixBitCounter1|Add0~61_sumout\ : std_logic;
SIGNAL \twentySixBitCounter1|Add0~62\ : std_logic;
SIGNAL \twentySixBitCounter1|Add0~65_sumout\ : std_logic;
SIGNAL \twentySixBitCounter1|Add0~66\ : std_logic;
SIGNAL \twentySixBitCounter1|Add0~69_sumout\ : std_logic;
SIGNAL \twentySixBitCounter1|Add0~70\ : std_logic;
SIGNAL \twentySixBitCounter1|Add0~73_sumout\ : std_logic;
SIGNAL \twentySixBitCounter1|tempCount[6]~DUPLICATE_q\ : std_logic;
SIGNAL \twentySixBitCounter1|Add0~74\ : std_logic;
SIGNAL \twentySixBitCounter1|Add0~77_sumout\ : std_logic;
SIGNAL \twentySixBitCounter1|tempCount[10]~feeder_combout\ : std_logic;
SIGNAL \twentySixBitCounter1|Equal0~2_combout\ : std_logic;
SIGNAL \twentySixBitCounter1|Add0~78\ : std_logic;
SIGNAL \twentySixBitCounter1|Add0~81_sumout\ : std_logic;
SIGNAL \twentySixBitCounter1|Add0~82\ : std_logic;
SIGNAL \twentySixBitCounter1|Add0~85_sumout\ : std_logic;
SIGNAL \twentySixBitCounter1|Add0~86\ : std_logic;
SIGNAL \twentySixBitCounter1|Add0~89_sumout\ : std_logic;
SIGNAL \twentySixBitCounter1|Add0~90\ : std_logic;
SIGNAL \twentySixBitCounter1|Add0~93_sumout\ : std_logic;
SIGNAL \twentySixBitCounter1|Add0~94\ : std_logic;
SIGNAL \twentySixBitCounter1|Add0~97_sumout\ : std_logic;
SIGNAL \twentySixBitCounter1|Add0~98\ : std_logic;
SIGNAL \twentySixBitCounter1|Add0~101_sumout\ : std_logic;
SIGNAL \twentySixBitCounter1|Add0~102\ : std_logic;
SIGNAL \twentySixBitCounter1|Add0~1_sumout\ : std_logic;
SIGNAL \twentySixBitCounter1|Add0~2\ : std_logic;
SIGNAL \twentySixBitCounter1|Add0~5_sumout\ : std_logic;
SIGNAL \twentySixBitCounter1|Equal0~3_combout\ : std_logic;
SIGNAL \twentySixBitCounter1|Add0~6\ : std_logic;
SIGNAL \twentySixBitCounter1|Add0~13_sumout\ : std_logic;
SIGNAL \twentySixBitCounter1|Add0~14\ : std_logic;
SIGNAL \twentySixBitCounter1|Add0~17_sumout\ : std_logic;
SIGNAL \twentySixBitCounter1|Add0~18\ : std_logic;
SIGNAL \twentySixBitCounter1|Add0~21_sumout\ : std_logic;
SIGNAL \twentySixBitCounter1|Add0~22\ : std_logic;
SIGNAL \twentySixBitCounter1|Add0~25_sumout\ : std_logic;
SIGNAL \twentySixBitCounter1|Add0~26\ : std_logic;
SIGNAL \twentySixBitCounter1|Add0~29_sumout\ : std_logic;
SIGNAL \twentySixBitCounter1|tempCount[23]~DUPLICATE_q\ : std_logic;
SIGNAL \twentySixBitCounter1|Add0~30\ : std_logic;
SIGNAL \twentySixBitCounter1|Add0~9_sumout\ : std_logic;
SIGNAL \twentySixBitCounter1|Equal0~0_combout\ : std_logic;
SIGNAL \twentySixBitCounter1|tempCount[1]~DUPLICATE_q\ : std_logic;
SIGNAL \twentySixBitCounter1|tempCount[2]~DUPLICATE_q\ : std_logic;
SIGNAL \twentySixBitCounter1|Add0~10\ : std_logic;
SIGNAL \twentySixBitCounter1|Add0~33_sumout\ : std_logic;
SIGNAL \twentySixBitCounter1|Equal0~1_combout\ : std_logic;
SIGNAL \twentySixBitCounter1|Equal0~4_combout\ : std_logic;
SIGNAL \twentySixBitCounter1|reached~feeder_combout\ : std_logic;
SIGNAL \twentySixBitCounter1|reached~q\ : std_logic;
SIGNAL \countSevenSecond|tempCount[0]~4_combout\ : std_logic;
SIGNAL \traffic_lights_state.EW_Buffer_State~q\ : std_logic;
SIGNAL \downCounter|tempCount[0]~5_combout\ : std_logic;
SIGNAL \resetHEXVal~0_combout\ : std_logic;
SIGNAL \downCounter|tempCount[2]~1_combout\ : std_logic;
SIGNAL \downCounter|tempCount[3]~2_combout\ : std_logic;
SIGNAL \downCounter|tempCount[1]~0_combout\ : std_logic;
SIGNAL \downCounter|tempCount[4]~3_combout\ : std_logic;
SIGNAL \Equal3~0_combout\ : std_logic;
SIGNAL \countTenSecond|tempCount[0]~4_combout\ : std_logic;
SIGNAL \SW[1]~input_o\ : std_logic;
SIGNAL \Selector0~0_combout\ : std_logic;
SIGNAL \traffic_lights_state.EW_GREEN~q\ : std_logic;
SIGNAL \WideOr10~0_combout\ : std_logic;
SIGNAL \countTenSecond|tempCount[4]~DUPLICATE_q\ : std_logic;
SIGNAL \countTenSecond|tempCount[4]~3_combout\ : std_logic;
SIGNAL \countTenSecond|tempCount[3]~2_combout\ : std_logic;
SIGNAL \countTenSecond|tempCount[1]~0_combout\ : std_logic;
SIGNAL \countTenSecond|tempCount[2]~1_combout\ : std_logic;
SIGNAL \Equal0~0_combout\ : std_logic;
SIGNAL \Selector6~0_combout\ : std_logic;
SIGNAL \traffic_lights_state.EW_End_State~q\ : std_logic;
SIGNAL \traffic_lights_state.EW_YELLOw~q\ : std_logic;
SIGNAL \traffic_lights_state.NS_YELLOW~DUPLICATE_q\ : std_logic;
SIGNAL \WideOr23~combout\ : std_logic;
SIGNAL \countThreeSecond|tempCount[0]~4_combout\ : std_logic;
SIGNAL \countThreeSecond|tempCount[0]~feeder_combout\ : std_logic;
SIGNAL \countThreeSecond|tempCount[0]~DUPLICATE_q\ : std_logic;
SIGNAL \countThreeSecond|tempCount[1]~3_combout\ : std_logic;
SIGNAL \countThreeSecond|tempCount[1]~feeder_combout\ : std_logic;
SIGNAL \countThreeSecond|tempCount[1]~DUPLICATE_q\ : std_logic;
SIGNAL \countThreeSecond|tempCount[3]~DUPLICATE_q\ : std_logic;
SIGNAL \countThreeSecond|tempCount[2]~0_combout\ : std_logic;
SIGNAL \countThreeSecond|tempCount[2]~DUPLICATE_q\ : std_logic;
SIGNAL \countThreeSecond|tempCount[3]~1_combout\ : std_logic;
SIGNAL \countThreeSecond|tempCount[4]~2_combout\ : std_logic;
SIGNAL \Equal1~0_combout\ : std_logic;
SIGNAL \Selector7~0_combout\ : std_logic;
SIGNAL \traffic_lights_state.EW_Buffer_State~DUPLICATE_q\ : std_logic;
SIGNAL \traffic_lights_state.EW_YELLOw~DUPLICATE_q\ : std_logic;
SIGNAL \Selector2~0_combout\ : std_logic;
SIGNAL \traffic_lights_state.NS_LEFT~q\ : std_logic;
SIGNAL \HEX3Vals[0]~0_combout\ : std_logic;
SIGNAL \countSevenSecond|tempCount[0]~DUPLICATE_q\ : std_logic;
SIGNAL \countSevenSecond|tempCount[1]~3_combout\ : std_logic;
SIGNAL \countSevenSecond|tempCount[2]~DUPLICATE_q\ : std_logic;
SIGNAL \countSevenSecond|tempCount[2]~2_combout\ : std_logic;
SIGNAL \countSevenSecond|tempCount[4]~1_combout\ : std_logic;
SIGNAL \countSevenSecond|tempCount[3]~0_combout\ : std_logic;
SIGNAL \Equal2~0_combout\ : std_logic;
SIGNAL \SW[2]~input_o\ : std_logic;
SIGNAL \Selector3~0_combout\ : std_logic;
SIGNAL \traffic_lights_state.NS_GREEN~q\ : std_logic;
SIGNAL \Selector8~0_combout\ : std_logic;
SIGNAL \traffic_lights_state.NS_End_State~q\ : std_logic;
SIGNAL \Selector9~0_combout\ : std_logic;
SIGNAL \traffic_lights_state.NS_Buffer_State~q\ : std_logic;
SIGNAL \traffic_lights_state.NS_YELLOW~feeder_combout\ : std_logic;
SIGNAL \traffic_lights_state.NS_YELLOW~q\ : std_logic;
SIGNAL \Selector5~0_combout\ : std_logic;
SIGNAL \traffic_lights_state.EW_LEFT~q\ : std_logic;
SIGNAL \WideOr3~combout\ : std_logic;
SIGNAL \WideOr2~combout\ : std_logic;
SIGNAL \WideOr1~combout\ : std_logic;
SIGNAL \WideOr0~combout\ : std_logic;
SIGNAL \LEDR~4_combout\ : std_logic;
SIGNAL \LEDR~5_combout\ : std_logic;
SIGNAL \HexValues1|Mux6~0_combout\ : std_logic;
SIGNAL \HexValues1|Mux5~0_combout\ : std_logic;
SIGNAL \HexValues1|Mux4~0_combout\ : std_logic;
SIGNAL \HexValues1|Mux3~0_combout\ : std_logic;
SIGNAL \HexValues1|Mux2~0_combout\ : std_logic;
SIGNAL \HexValues1|Mux1~0_combout\ : std_logic;
SIGNAL \HexValues1|Mux0~0_combout\ : std_logic;
SIGNAL \HexValues3|Mux6~0_combout\ : std_logic;
SIGNAL \HexValues3|Mux5~0_combout\ : std_logic;
SIGNAL \HexValues3|Mux4~0_combout\ : std_logic;
SIGNAL \HexValues3|Mux3~0_combout\ : std_logic;
SIGNAL \HexValues3|Mux1~0_combout\ : std_logic;
SIGNAL \HexValues4|Mux6~0_combout\ : std_logic;
SIGNAL \HexValues4|Mux5~0_combout\ : std_logic;
SIGNAL \HexValues4|Mux2~0_combout\ : std_logic;
SIGNAL \HexValues4|Mux1~0_combout\ : std_logic;
SIGNAL \HexValues4|Mux0~0_combout\ : std_logic;
SIGNAL \HexValues5|Mux6~0_combout\ : std_logic;
SIGNAL \HexValues5|Mux5~0_combout\ : std_logic;
SIGNAL \HexValues5|Mux4~0_combout\ : std_logic;
SIGNAL \HexValues5|Mux3~0_combout\ : std_logic;
SIGNAL \HexValues5|Mux2~0_combout\ : std_logic;
SIGNAL \HexValues5|Mux0~0_combout\ : std_logic;
SIGNAL \HexValues6|Mux6~0_combout\ : std_logic;
SIGNAL \WideOr5~combout\ : std_logic;
SIGNAL \HexValues6|Mux2~0_combout\ : std_logic;
SIGNAL \twentySixBitCounter1|tempCount\ : std_logic_vector(25 DOWNTO 0);
SIGNAL \downCounter|tempCount\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \countSevenSecond|tempCount\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \countThreeSecond|tempCount\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \countTenSecond|tempCount\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \countTenSecond|ALT_INV_tempCount[4]~DUPLICATE_q\ : std_logic;
SIGNAL \countThreeSecond|ALT_INV_tempCount[1]~DUPLICATE_q\ : std_logic;
SIGNAL \countThreeSecond|ALT_INV_tempCount[0]~DUPLICATE_q\ : std_logic;
SIGNAL \countThreeSecond|ALT_INV_tempCount[3]~DUPLICATE_q\ : std_logic;
SIGNAL \countThreeSecond|ALT_INV_tempCount[2]~DUPLICATE_q\ : std_logic;
SIGNAL \countSevenSecond|ALT_INV_tempCount[0]~DUPLICATE_q\ : std_logic;
SIGNAL \countSevenSecond|ALT_INV_tempCount[2]~DUPLICATE_q\ : std_logic;
SIGNAL \ALT_INV_traffic_lights_state.NS_YELLOW~DUPLICATE_q\ : std_logic;
SIGNAL \ALT_INV_traffic_lights_state.EW_YELLOw~DUPLICATE_q\ : std_logic;
SIGNAL \ALT_INV_traffic_lights_state.EW_Buffer_State~DUPLICATE_q\ : std_logic;
SIGNAL \twentySixBitCounter1|ALT_INV_tempCount[9]~DUPLICATE_q\ : std_logic;
SIGNAL \twentySixBitCounter1|ALT_INV_tempCount[6]~DUPLICATE_q\ : std_logic;
SIGNAL \twentySixBitCounter1|ALT_INV_tempCount[2]~DUPLICATE_q\ : std_logic;
SIGNAL \twentySixBitCounter1|ALT_INV_tempCount[1]~DUPLICATE_q\ : std_logic;
SIGNAL \twentySixBitCounter1|ALT_INV_tempCount[23]~DUPLICATE_q\ : std_logic;
SIGNAL \ALT_INV_SW[2]~input_o\ : std_logic;
SIGNAL \ALT_INV_SW[1]~input_o\ : std_logic;
SIGNAL \countThreeSecond|ALT_INV_tempCount[0]~4_combout\ : std_logic;
SIGNAL \twentySixBitCounter1|ALT_INV_Equal0~4_combout\ : std_logic;
SIGNAL \twentySixBitCounter1|ALT_INV_Equal0~3_combout\ : std_logic;
SIGNAL \twentySixBitCounter1|ALT_INV_Equal0~2_combout\ : std_logic;
SIGNAL \twentySixBitCounter1|ALT_INV_Equal0~1_combout\ : std_logic;
SIGNAL \twentySixBitCounter1|ALT_INV_Equal0~0_combout\ : std_logic;
SIGNAL \countThreeSecond|ALT_INV_tempCount[1]~3_combout\ : std_logic;
SIGNAL \ALT_INV_Equal0~0_combout\ : std_logic;
SIGNAL \countTenSecond|ALT_INV_tempCount\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \ALT_INV_Equal1~0_combout\ : std_logic;
SIGNAL \countThreeSecond|ALT_INV_tempCount\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \ALT_INV_Equal2~0_combout\ : std_logic;
SIGNAL \countSevenSecond|ALT_INV_tempCount\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \HexValues6|ALT_INV_Mux2~0_combout\ : std_logic;
SIGNAL \HexValues5|ALT_INV_Mux5~0_combout\ : std_logic;
SIGNAL \HexValues5|ALT_INV_Mux6~0_combout\ : std_logic;
SIGNAL \HexValues4|ALT_INV_Mux1~0_combout\ : std_logic;
SIGNAL \HexValues4|ALT_INV_Mux5~0_combout\ : std_logic;
SIGNAL \HexValues4|ALT_INV_Mux6~0_combout\ : std_logic;
SIGNAL \ALT_INV_WideOr10~0_combout\ : std_logic;
SIGNAL \ALT_INV_HEX3Vals[0]~0_combout\ : std_logic;
SIGNAL \HexValues3|ALT_INV_Mux3~0_combout\ : std_logic;
SIGNAL \HexValues3|ALT_INV_Mux6~0_combout\ : std_logic;
SIGNAL \ALT_INV_Equal3~0_combout\ : std_logic;
SIGNAL \ALT_INV_resetHEXVal~0_combout\ : std_logic;
SIGNAL \downCounter|ALT_INV_tempCount\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \ALT_INV_LEDR~5_combout\ : std_logic;
SIGNAL \ALT_INV_LEDR~4_combout\ : std_logic;
SIGNAL \ALT_INV_WideOr0~combout\ : std_logic;
SIGNAL \ALT_INV_traffic_lights_state.NS_YELLOW~q\ : std_logic;
SIGNAL \ALT_INV_traffic_lights_state.NS_End_State~q\ : std_logic;
SIGNAL \ALT_INV_traffic_lights_state.NS_GREEN~q\ : std_logic;
SIGNAL \ALT_INV_traffic_lights_state.NS_Buffer_State~q\ : std_logic;
SIGNAL \ALT_INV_traffic_lights_state.NS_LEFT~q\ : std_logic;
SIGNAL \ALT_INV_WideOr2~combout\ : std_logic;
SIGNAL \ALT_INV_traffic_lights_state.EW_YELLOw~q\ : std_logic;
SIGNAL \ALT_INV_traffic_lights_state.EW_End_State~q\ : std_logic;
SIGNAL \ALT_INV_traffic_lights_state.EW_GREEN~q\ : std_logic;
SIGNAL \ALT_INV_traffic_lights_state.EW_Buffer_State~q\ : std_logic;
SIGNAL \ALT_INV_traffic_lights_state.EW_LEFT~q\ : std_logic;
SIGNAL \twentySixBitCounter1|ALT_INV_Add0~77_sumout\ : std_logic;
SIGNAL \twentySixBitCounter1|ALT_INV_tempCount\ : std_logic_vector(25 DOWNTO 0);

BEGIN

ww_CLOCK_50 <= CLOCK_50;
ww_SW <= SW;
LEDR <= ww_LEDR;
HEX0 <= ww_HEX0;
HEX2 <= ww_HEX2;
HEX3 <= ww_HEX3;
HEX4 <= ww_HEX4;
HEX5 <= ww_HEX5;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;
\countTenSecond|ALT_INV_tempCount[4]~DUPLICATE_q\ <= NOT \countTenSecond|tempCount[4]~DUPLICATE_q\;
\countThreeSecond|ALT_INV_tempCount[1]~DUPLICATE_q\ <= NOT \countThreeSecond|tempCount[1]~DUPLICATE_q\;
\countThreeSecond|ALT_INV_tempCount[0]~DUPLICATE_q\ <= NOT \countThreeSecond|tempCount[0]~DUPLICATE_q\;
\countThreeSecond|ALT_INV_tempCount[3]~DUPLICATE_q\ <= NOT \countThreeSecond|tempCount[3]~DUPLICATE_q\;
\countThreeSecond|ALT_INV_tempCount[2]~DUPLICATE_q\ <= NOT \countThreeSecond|tempCount[2]~DUPLICATE_q\;
\countSevenSecond|ALT_INV_tempCount[0]~DUPLICATE_q\ <= NOT \countSevenSecond|tempCount[0]~DUPLICATE_q\;
\countSevenSecond|ALT_INV_tempCount[2]~DUPLICATE_q\ <= NOT \countSevenSecond|tempCount[2]~DUPLICATE_q\;
\ALT_INV_traffic_lights_state.NS_YELLOW~DUPLICATE_q\ <= NOT \traffic_lights_state.NS_YELLOW~DUPLICATE_q\;
\ALT_INV_traffic_lights_state.EW_YELLOw~DUPLICATE_q\ <= NOT \traffic_lights_state.EW_YELLOw~DUPLICATE_q\;
\ALT_INV_traffic_lights_state.EW_Buffer_State~DUPLICATE_q\ <= NOT \traffic_lights_state.EW_Buffer_State~DUPLICATE_q\;
\twentySixBitCounter1|ALT_INV_tempCount[9]~DUPLICATE_q\ <= NOT \twentySixBitCounter1|tempCount[9]~DUPLICATE_q\;
\twentySixBitCounter1|ALT_INV_tempCount[6]~DUPLICATE_q\ <= NOT \twentySixBitCounter1|tempCount[6]~DUPLICATE_q\;
\twentySixBitCounter1|ALT_INV_tempCount[2]~DUPLICATE_q\ <= NOT \twentySixBitCounter1|tempCount[2]~DUPLICATE_q\;
\twentySixBitCounter1|ALT_INV_tempCount[1]~DUPLICATE_q\ <= NOT \twentySixBitCounter1|tempCount[1]~DUPLICATE_q\;
\twentySixBitCounter1|ALT_INV_tempCount[23]~DUPLICATE_q\ <= NOT \twentySixBitCounter1|tempCount[23]~DUPLICATE_q\;
\ALT_INV_SW[2]~input_o\ <= NOT \SW[2]~input_o\;
\ALT_INV_SW[1]~input_o\ <= NOT \SW[1]~input_o\;
\countThreeSecond|ALT_INV_tempCount[0]~4_combout\ <= NOT \countThreeSecond|tempCount[0]~4_combout\;
\twentySixBitCounter1|ALT_INV_Equal0~4_combout\ <= NOT \twentySixBitCounter1|Equal0~4_combout\;
\twentySixBitCounter1|ALT_INV_Equal0~3_combout\ <= NOT \twentySixBitCounter1|Equal0~3_combout\;
\twentySixBitCounter1|ALT_INV_Equal0~2_combout\ <= NOT \twentySixBitCounter1|Equal0~2_combout\;
\twentySixBitCounter1|ALT_INV_Equal0~1_combout\ <= NOT \twentySixBitCounter1|Equal0~1_combout\;
\twentySixBitCounter1|ALT_INV_Equal0~0_combout\ <= NOT \twentySixBitCounter1|Equal0~0_combout\;
\countThreeSecond|ALT_INV_tempCount[1]~3_combout\ <= NOT \countThreeSecond|tempCount[1]~3_combout\;
\ALT_INV_Equal0~0_combout\ <= NOT \Equal0~0_combout\;
\countTenSecond|ALT_INV_tempCount\(4) <= NOT \countTenSecond|tempCount\(4);
\countTenSecond|ALT_INV_tempCount\(3) <= NOT \countTenSecond|tempCount\(3);
\countTenSecond|ALT_INV_tempCount\(2) <= NOT \countTenSecond|tempCount\(2);
\countTenSecond|ALT_INV_tempCount\(1) <= NOT \countTenSecond|tempCount\(1);
\countTenSecond|ALT_INV_tempCount\(0) <= NOT \countTenSecond|tempCount\(0);
\ALT_INV_Equal1~0_combout\ <= NOT \Equal1~0_combout\;
\countThreeSecond|ALT_INV_tempCount\(1) <= NOT \countThreeSecond|tempCount\(1);
\countThreeSecond|ALT_INV_tempCount\(0) <= NOT \countThreeSecond|tempCount\(0);
\countThreeSecond|ALT_INV_tempCount\(4) <= NOT \countThreeSecond|tempCount\(4);
\countThreeSecond|ALT_INV_tempCount\(3) <= NOT \countThreeSecond|tempCount\(3);
\countThreeSecond|ALT_INV_tempCount\(2) <= NOT \countThreeSecond|tempCount\(2);
\ALT_INV_Equal2~0_combout\ <= NOT \Equal2~0_combout\;
\countSevenSecond|ALT_INV_tempCount\(1) <= NOT \countSevenSecond|tempCount\(1);
\countSevenSecond|ALT_INV_tempCount\(0) <= NOT \countSevenSecond|tempCount\(0);
\countSevenSecond|ALT_INV_tempCount\(2) <= NOT \countSevenSecond|tempCount\(2);
\countSevenSecond|ALT_INV_tempCount\(4) <= NOT \countSevenSecond|tempCount\(4);
\countSevenSecond|ALT_INV_tempCount\(3) <= NOT \countSevenSecond|tempCount\(3);
\HexValues6|ALT_INV_Mux2~0_combout\ <= NOT \HexValues6|Mux2~0_combout\;
\HexValues5|ALT_INV_Mux5~0_combout\ <= NOT \HexValues5|Mux5~0_combout\;
\HexValues5|ALT_INV_Mux6~0_combout\ <= NOT \HexValues5|Mux6~0_combout\;
\HexValues4|ALT_INV_Mux1~0_combout\ <= NOT \HexValues4|Mux1~0_combout\;
\HexValues4|ALT_INV_Mux5~0_combout\ <= NOT \HexValues4|Mux5~0_combout\;
\HexValues4|ALT_INV_Mux6~0_combout\ <= NOT \HexValues4|Mux6~0_combout\;
\ALT_INV_WideOr10~0_combout\ <= NOT \WideOr10~0_combout\;
\ALT_INV_HEX3Vals[0]~0_combout\ <= NOT \HEX3Vals[0]~0_combout\;
\HexValues3|ALT_INV_Mux3~0_combout\ <= NOT \HexValues3|Mux3~0_combout\;
\HexValues3|ALT_INV_Mux6~0_combout\ <= NOT \HexValues3|Mux6~0_combout\;
\ALT_INV_Equal3~0_combout\ <= NOT \Equal3~0_combout\;
\ALT_INV_resetHEXVal~0_combout\ <= NOT \resetHEXVal~0_combout\;
\downCounter|ALT_INV_tempCount\(4) <= NOT \downCounter|tempCount\(4);
\downCounter|ALT_INV_tempCount\(3) <= NOT \downCounter|tempCount\(3);
\downCounter|ALT_INV_tempCount\(2) <= NOT \downCounter|tempCount\(2);
\downCounter|ALT_INV_tempCount\(0) <= NOT \downCounter|tempCount\(0);
\downCounter|ALT_INV_tempCount\(1) <= NOT \downCounter|tempCount\(1);
\ALT_INV_LEDR~5_combout\ <= NOT \LEDR~5_combout\;
\ALT_INV_LEDR~4_combout\ <= NOT \LEDR~4_combout\;
\ALT_INV_WideOr0~combout\ <= NOT \WideOr0~combout\;
\ALT_INV_traffic_lights_state.NS_YELLOW~q\ <= NOT \traffic_lights_state.NS_YELLOW~q\;
\ALT_INV_traffic_lights_state.NS_End_State~q\ <= NOT \traffic_lights_state.NS_End_State~q\;
\ALT_INV_traffic_lights_state.NS_GREEN~q\ <= NOT \traffic_lights_state.NS_GREEN~q\;
\ALT_INV_traffic_lights_state.NS_Buffer_State~q\ <= NOT \traffic_lights_state.NS_Buffer_State~q\;
\ALT_INV_traffic_lights_state.NS_LEFT~q\ <= NOT \traffic_lights_state.NS_LEFT~q\;
\ALT_INV_WideOr2~combout\ <= NOT \WideOr2~combout\;
\ALT_INV_traffic_lights_state.EW_YELLOw~q\ <= NOT \traffic_lights_state.EW_YELLOw~q\;
\ALT_INV_traffic_lights_state.EW_End_State~q\ <= NOT \traffic_lights_state.EW_End_State~q\;
\ALT_INV_traffic_lights_state.EW_GREEN~q\ <= NOT \traffic_lights_state.EW_GREEN~q\;
\ALT_INV_traffic_lights_state.EW_Buffer_State~q\ <= NOT \traffic_lights_state.EW_Buffer_State~q\;
\ALT_INV_traffic_lights_state.EW_LEFT~q\ <= NOT \traffic_lights_state.EW_LEFT~q\;
\twentySixBitCounter1|ALT_INV_Add0~77_sumout\ <= NOT \twentySixBitCounter1|Add0~77_sumout\;
\twentySixBitCounter1|ALT_INV_tempCount\(16) <= NOT \twentySixBitCounter1|tempCount\(16);
\twentySixBitCounter1|ALT_INV_tempCount\(15) <= NOT \twentySixBitCounter1|tempCount\(15);
\twentySixBitCounter1|ALT_INV_tempCount\(14) <= NOT \twentySixBitCounter1|tempCount\(14);
\twentySixBitCounter1|ALT_INV_tempCount\(13) <= NOT \twentySixBitCounter1|tempCount\(13);
\twentySixBitCounter1|ALT_INV_tempCount\(12) <= NOT \twentySixBitCounter1|tempCount\(12);
\twentySixBitCounter1|ALT_INV_tempCount\(11) <= NOT \twentySixBitCounter1|tempCount\(11);
\twentySixBitCounter1|ALT_INV_tempCount\(10) <= NOT \twentySixBitCounter1|tempCount\(10);
\twentySixBitCounter1|ALT_INV_tempCount\(9) <= NOT \twentySixBitCounter1|tempCount\(9);
\twentySixBitCounter1|ALT_INV_tempCount\(8) <= NOT \twentySixBitCounter1|tempCount\(8);
\twentySixBitCounter1|ALT_INV_tempCount\(7) <= NOT \twentySixBitCounter1|tempCount\(7);
\twentySixBitCounter1|ALT_INV_tempCount\(6) <= NOT \twentySixBitCounter1|tempCount\(6);
\twentySixBitCounter1|ALT_INV_tempCount\(4) <= NOT \twentySixBitCounter1|tempCount\(4);
\twentySixBitCounter1|ALT_INV_tempCount\(3) <= NOT \twentySixBitCounter1|tempCount\(3);
\twentySixBitCounter1|ALT_INV_tempCount\(2) <= NOT \twentySixBitCounter1|tempCount\(2);
\twentySixBitCounter1|ALT_INV_tempCount\(1) <= NOT \twentySixBitCounter1|tempCount\(1);
\twentySixBitCounter1|ALT_INV_tempCount\(0) <= NOT \twentySixBitCounter1|tempCount\(0);
\twentySixBitCounter1|ALT_INV_tempCount\(5) <= NOT \twentySixBitCounter1|tempCount\(5);
\twentySixBitCounter1|ALT_INV_tempCount\(25) <= NOT \twentySixBitCounter1|tempCount\(25);
\twentySixBitCounter1|ALT_INV_tempCount\(23) <= NOT \twentySixBitCounter1|tempCount\(23);
\twentySixBitCounter1|ALT_INV_tempCount\(22) <= NOT \twentySixBitCounter1|tempCount\(22);
\twentySixBitCounter1|ALT_INV_tempCount\(21) <= NOT \twentySixBitCounter1|tempCount\(21);
\twentySixBitCounter1|ALT_INV_tempCount\(20) <= NOT \twentySixBitCounter1|tempCount\(20);
\twentySixBitCounter1|ALT_INV_tempCount\(19) <= NOT \twentySixBitCounter1|tempCount\(19);
\twentySixBitCounter1|ALT_INV_tempCount\(24) <= NOT \twentySixBitCounter1|tempCount\(24);
\twentySixBitCounter1|ALT_INV_tempCount\(18) <= NOT \twentySixBitCounter1|tempCount\(18);
\twentySixBitCounter1|ALT_INV_tempCount\(17) <= NOT \twentySixBitCounter1|tempCount\(17);

-- Location: IOOBUF_X52_Y0_N2
\LEDR[0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \traffic_lights_state.EW_LEFT~q\,
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
	i => \WideOr3~combout\,
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
	i => \traffic_lights_state.EW_YELLOw~DUPLICATE_q\,
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
	i => \ALT_INV_WideOr2~combout\,
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
	i => \traffic_lights_state.NS_LEFT~q\,
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
	i => \WideOr1~combout\,
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
	i => \traffic_lights_state.NS_YELLOW~DUPLICATE_q\,
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
	i => \ALT_INV_WideOr0~combout\,
	devoe => ww_devoe,
	o => ww_LEDR(7));

-- Location: IOOBUF_X89_Y8_N5
\LEDR[8]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \ALT_INV_LEDR~4_combout\,
	devoe => ww_devoe,
	o => ww_LEDR(8));

-- Location: IOOBUF_X89_Y6_N22
\LEDR[9]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \ALT_INV_LEDR~5_combout\,
	devoe => ww_devoe,
	o => ww_LEDR(9));

-- Location: IOOBUF_X89_Y8_N39
\HEX0[0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \HexValues1|Mux6~0_combout\,
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
	i => \HexValues1|Mux5~0_combout\,
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
	i => \HexValues1|Mux4~0_combout\,
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
	i => \HexValues1|Mux3~0_combout\,
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
	i => \HexValues1|Mux2~0_combout\,
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
	i => \HexValues1|Mux1~0_combout\,
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
	i => \HexValues1|Mux0~0_combout\,
	devoe => ww_devoe,
	o => ww_HEX0(6));

-- Location: IOOBUF_X89_Y9_N22
\HEX2[0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \HexValues3|ALT_INV_Mux6~0_combout\,
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
	i => \HexValues3|Mux5~0_combout\,
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
	i => \HexValues3|Mux4~0_combout\,
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
	i => \HexValues3|ALT_INV_Mux3~0_combout\,
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
	i => GND,
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
	i => \HexValues3|Mux1~0_combout\,
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
	i => GND,
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
	i => \HexValues4|ALT_INV_Mux6~0_combout\,
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
	i => \HexValues4|ALT_INV_Mux5~0_combout\,
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
	i => \HEX3Vals[0]~0_combout\,
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
	i => GND,
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
	i => \HexValues4|Mux2~0_combout\,
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
	i => \HexValues4|ALT_INV_Mux1~0_combout\,
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
	i => \HexValues4|Mux0~0_combout\,
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
	i => \HexValues5|ALT_INV_Mux6~0_combout\,
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
	i => \HexValues5|ALT_INV_Mux5~0_combout\,
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
	i => \HexValues5|Mux4~0_combout\,
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
	i => \HexValues5|Mux3~0_combout\,
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
	i => \HexValues5|Mux2~0_combout\,
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
	i => GND,
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
	i => \HexValues5|Mux0~0_combout\,
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
	i => \HexValues6|Mux6~0_combout\,
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
	i => VCC,
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
	i => \WideOr5~combout\,
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
	i => \HexValues6|Mux6~0_combout\,
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
	i => \HexValues6|ALT_INV_Mux2~0_combout\,
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
	i => \HexValues6|Mux6~0_combout\,
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
	i => \resetHEXVal~0_combout\,
	devoe => ww_devoe,
	o => ww_HEX5(6));

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

-- Location: FF_X70_Y9_N59
\twentySixBitCounter1|tempCount[9]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \twentySixBitCounter1|Add0~73_sumout\,
	sclr => \twentySixBitCounter1|Equal0~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \twentySixBitCounter1|tempCount[9]~DUPLICATE_q\);

-- Location: LABCELL_X70_Y9_N30
\twentySixBitCounter1|Add0~41\ : cyclonev_lcell_comb
-- Equation(s):
-- \twentySixBitCounter1|Add0~41_sumout\ = SUM(( \twentySixBitCounter1|tempCount\(0) ) + ( VCC ) + ( !VCC ))
-- \twentySixBitCounter1|Add0~42\ = CARRY(( \twentySixBitCounter1|tempCount\(0) ) + ( VCC ) + ( !VCC ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \twentySixBitCounter1|ALT_INV_tempCount\(0),
	cin => GND,
	sumout => \twentySixBitCounter1|Add0~41_sumout\,
	cout => \twentySixBitCounter1|Add0~42\);

-- Location: FF_X70_Y9_N31
\twentySixBitCounter1|tempCount[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \twentySixBitCounter1|Add0~41_sumout\,
	sclr => \twentySixBitCounter1|Equal0~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \twentySixBitCounter1|tempCount\(0));

-- Location: LABCELL_X70_Y9_N33
\twentySixBitCounter1|Add0~45\ : cyclonev_lcell_comb
-- Equation(s):
-- \twentySixBitCounter1|Add0~45_sumout\ = SUM(( \twentySixBitCounter1|tempCount\(1) ) + ( GND ) + ( \twentySixBitCounter1|Add0~42\ ))
-- \twentySixBitCounter1|Add0~46\ = CARRY(( \twentySixBitCounter1|tempCount\(1) ) + ( GND ) + ( \twentySixBitCounter1|Add0~42\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \twentySixBitCounter1|ALT_INV_tempCount\(1),
	cin => \twentySixBitCounter1|Add0~42\,
	sumout => \twentySixBitCounter1|Add0~45_sumout\,
	cout => \twentySixBitCounter1|Add0~46\);

-- Location: FF_X70_Y9_N35
\twentySixBitCounter1|tempCount[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \twentySixBitCounter1|Add0~45_sumout\,
	sclr => \twentySixBitCounter1|Equal0~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \twentySixBitCounter1|tempCount\(1));

-- Location: LABCELL_X70_Y9_N36
\twentySixBitCounter1|Add0~49\ : cyclonev_lcell_comb
-- Equation(s):
-- \twentySixBitCounter1|Add0~49_sumout\ = SUM(( \twentySixBitCounter1|tempCount\(2) ) + ( GND ) + ( \twentySixBitCounter1|Add0~46\ ))
-- \twentySixBitCounter1|Add0~50\ = CARRY(( \twentySixBitCounter1|tempCount\(2) ) + ( GND ) + ( \twentySixBitCounter1|Add0~46\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \twentySixBitCounter1|ALT_INV_tempCount\(2),
	cin => \twentySixBitCounter1|Add0~46\,
	sumout => \twentySixBitCounter1|Add0~49_sumout\,
	cout => \twentySixBitCounter1|Add0~50\);

-- Location: FF_X70_Y9_N38
\twentySixBitCounter1|tempCount[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \twentySixBitCounter1|Add0~49_sumout\,
	sclr => \twentySixBitCounter1|Equal0~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \twentySixBitCounter1|tempCount\(2));

-- Location: LABCELL_X70_Y9_N39
\twentySixBitCounter1|Add0~53\ : cyclonev_lcell_comb
-- Equation(s):
-- \twentySixBitCounter1|Add0~53_sumout\ = SUM(( \twentySixBitCounter1|tempCount\(3) ) + ( GND ) + ( \twentySixBitCounter1|Add0~50\ ))
-- \twentySixBitCounter1|Add0~54\ = CARRY(( \twentySixBitCounter1|tempCount\(3) ) + ( GND ) + ( \twentySixBitCounter1|Add0~50\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \twentySixBitCounter1|ALT_INV_tempCount\(3),
	cin => \twentySixBitCounter1|Add0~50\,
	sumout => \twentySixBitCounter1|Add0~53_sumout\,
	cout => \twentySixBitCounter1|Add0~54\);

-- Location: FF_X70_Y9_N40
\twentySixBitCounter1|tempCount[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \twentySixBitCounter1|Add0~53_sumout\,
	sclr => \twentySixBitCounter1|Equal0~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \twentySixBitCounter1|tempCount\(3));

-- Location: LABCELL_X70_Y9_N42
\twentySixBitCounter1|Add0~57\ : cyclonev_lcell_comb
-- Equation(s):
-- \twentySixBitCounter1|Add0~57_sumout\ = SUM(( \twentySixBitCounter1|tempCount\(4) ) + ( GND ) + ( \twentySixBitCounter1|Add0~54\ ))
-- \twentySixBitCounter1|Add0~58\ = CARRY(( \twentySixBitCounter1|tempCount\(4) ) + ( GND ) + ( \twentySixBitCounter1|Add0~54\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \twentySixBitCounter1|ALT_INV_tempCount\(4),
	cin => \twentySixBitCounter1|Add0~54\,
	sumout => \twentySixBitCounter1|Add0~57_sumout\,
	cout => \twentySixBitCounter1|Add0~58\);

-- Location: FF_X70_Y9_N44
\twentySixBitCounter1|tempCount[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \twentySixBitCounter1|Add0~57_sumout\,
	sclr => \twentySixBitCounter1|Equal0~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \twentySixBitCounter1|tempCount\(4));

-- Location: LABCELL_X70_Y9_N45
\twentySixBitCounter1|Add0~37\ : cyclonev_lcell_comb
-- Equation(s):
-- \twentySixBitCounter1|Add0~37_sumout\ = SUM(( \twentySixBitCounter1|tempCount\(5) ) + ( GND ) + ( \twentySixBitCounter1|Add0~58\ ))
-- \twentySixBitCounter1|Add0~38\ = CARRY(( \twentySixBitCounter1|tempCount\(5) ) + ( GND ) + ( \twentySixBitCounter1|Add0~58\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \twentySixBitCounter1|ALT_INV_tempCount\(5),
	cin => \twentySixBitCounter1|Add0~58\,
	sumout => \twentySixBitCounter1|Add0~37_sumout\,
	cout => \twentySixBitCounter1|Add0~38\);

-- Location: FF_X70_Y9_N46
\twentySixBitCounter1|tempCount[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \twentySixBitCounter1|Add0~37_sumout\,
	sclr => \twentySixBitCounter1|Equal0~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \twentySixBitCounter1|tempCount\(5));

-- Location: LABCELL_X70_Y9_N48
\twentySixBitCounter1|Add0~61\ : cyclonev_lcell_comb
-- Equation(s):
-- \twentySixBitCounter1|Add0~61_sumout\ = SUM(( \twentySixBitCounter1|tempCount\(6) ) + ( GND ) + ( \twentySixBitCounter1|Add0~38\ ))
-- \twentySixBitCounter1|Add0~62\ = CARRY(( \twentySixBitCounter1|tempCount\(6) ) + ( GND ) + ( \twentySixBitCounter1|Add0~38\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \twentySixBitCounter1|ALT_INV_tempCount\(6),
	cin => \twentySixBitCounter1|Add0~38\,
	sumout => \twentySixBitCounter1|Add0~61_sumout\,
	cout => \twentySixBitCounter1|Add0~62\);

-- Location: FF_X70_Y9_N49
\twentySixBitCounter1|tempCount[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \twentySixBitCounter1|Add0~61_sumout\,
	sclr => \twentySixBitCounter1|Equal0~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \twentySixBitCounter1|tempCount\(6));

-- Location: LABCELL_X70_Y9_N51
\twentySixBitCounter1|Add0~65\ : cyclonev_lcell_comb
-- Equation(s):
-- \twentySixBitCounter1|Add0~65_sumout\ = SUM(( \twentySixBitCounter1|tempCount\(7) ) + ( GND ) + ( \twentySixBitCounter1|Add0~62\ ))
-- \twentySixBitCounter1|Add0~66\ = CARRY(( \twentySixBitCounter1|tempCount\(7) ) + ( GND ) + ( \twentySixBitCounter1|Add0~62\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \twentySixBitCounter1|ALT_INV_tempCount\(7),
	cin => \twentySixBitCounter1|Add0~62\,
	sumout => \twentySixBitCounter1|Add0~65_sumout\,
	cout => \twentySixBitCounter1|Add0~66\);

-- Location: FF_X70_Y9_N53
\twentySixBitCounter1|tempCount[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \twentySixBitCounter1|Add0~65_sumout\,
	sclr => \twentySixBitCounter1|Equal0~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \twentySixBitCounter1|tempCount\(7));

-- Location: LABCELL_X70_Y9_N54
\twentySixBitCounter1|Add0~69\ : cyclonev_lcell_comb
-- Equation(s):
-- \twentySixBitCounter1|Add0~69_sumout\ = SUM(( \twentySixBitCounter1|tempCount\(8) ) + ( GND ) + ( \twentySixBitCounter1|Add0~66\ ))
-- \twentySixBitCounter1|Add0~70\ = CARRY(( \twentySixBitCounter1|tempCount\(8) ) + ( GND ) + ( \twentySixBitCounter1|Add0~66\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \twentySixBitCounter1|ALT_INV_tempCount\(8),
	cin => \twentySixBitCounter1|Add0~66\,
	sumout => \twentySixBitCounter1|Add0~69_sumout\,
	cout => \twentySixBitCounter1|Add0~70\);

-- Location: FF_X70_Y9_N55
\twentySixBitCounter1|tempCount[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \twentySixBitCounter1|Add0~69_sumout\,
	sclr => \twentySixBitCounter1|Equal0~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \twentySixBitCounter1|tempCount\(8));

-- Location: LABCELL_X70_Y9_N57
\twentySixBitCounter1|Add0~73\ : cyclonev_lcell_comb
-- Equation(s):
-- \twentySixBitCounter1|Add0~73_sumout\ = SUM(( \twentySixBitCounter1|tempCount[9]~DUPLICATE_q\ ) + ( GND ) + ( \twentySixBitCounter1|Add0~70\ ))
-- \twentySixBitCounter1|Add0~74\ = CARRY(( \twentySixBitCounter1|tempCount[9]~DUPLICATE_q\ ) + ( GND ) + ( \twentySixBitCounter1|Add0~70\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \twentySixBitCounter1|ALT_INV_tempCount[9]~DUPLICATE_q\,
	cin => \twentySixBitCounter1|Add0~70\,
	sumout => \twentySixBitCounter1|Add0~73_sumout\,
	cout => \twentySixBitCounter1|Add0~74\);

-- Location: FF_X70_Y9_N58
\twentySixBitCounter1|tempCount[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \twentySixBitCounter1|Add0~73_sumout\,
	sclr => \twentySixBitCounter1|Equal0~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \twentySixBitCounter1|tempCount\(9));

-- Location: FF_X70_Y9_N50
\twentySixBitCounter1|tempCount[6]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \twentySixBitCounter1|Add0~61_sumout\,
	sclr => \twentySixBitCounter1|Equal0~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \twentySixBitCounter1|tempCount[6]~DUPLICATE_q\);

-- Location: LABCELL_X70_Y8_N0
\twentySixBitCounter1|Add0~77\ : cyclonev_lcell_comb
-- Equation(s):
-- \twentySixBitCounter1|Add0~77_sumout\ = SUM(( \twentySixBitCounter1|tempCount\(10) ) + ( GND ) + ( \twentySixBitCounter1|Add0~74\ ))
-- \twentySixBitCounter1|Add0~78\ = CARRY(( \twentySixBitCounter1|tempCount\(10) ) + ( GND ) + ( \twentySixBitCounter1|Add0~74\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \twentySixBitCounter1|ALT_INV_tempCount\(10),
	cin => \twentySixBitCounter1|Add0~74\,
	sumout => \twentySixBitCounter1|Add0~77_sumout\,
	cout => \twentySixBitCounter1|Add0~78\);

-- Location: LABCELL_X70_Y9_N12
\twentySixBitCounter1|tempCount[10]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \twentySixBitCounter1|tempCount[10]~feeder_combout\ = ( \twentySixBitCounter1|Add0~77_sumout\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \twentySixBitCounter1|ALT_INV_Add0~77_sumout\,
	combout => \twentySixBitCounter1|tempCount[10]~feeder_combout\);

-- Location: FF_X70_Y9_N14
\twentySixBitCounter1|tempCount[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \twentySixBitCounter1|tempCount[10]~feeder_combout\,
	sclr => \twentySixBitCounter1|Equal0~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \twentySixBitCounter1|tempCount\(10));

-- Location: LABCELL_X70_Y9_N24
\twentySixBitCounter1|Equal0~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \twentySixBitCounter1|Equal0~2_combout\ = ( !\twentySixBitCounter1|tempCount\(10) & ( !\twentySixBitCounter1|tempCount\(7) & ( (!\twentySixBitCounter1|tempCount\(9) & (\twentySixBitCounter1|tempCount\(4) & (\twentySixBitCounter1|tempCount[6]~DUPLICATE_q\ 
-- & !\twentySixBitCounter1|tempCount\(8)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001000000000000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \twentySixBitCounter1|ALT_INV_tempCount\(9),
	datab => \twentySixBitCounter1|ALT_INV_tempCount\(4),
	datac => \twentySixBitCounter1|ALT_INV_tempCount[6]~DUPLICATE_q\,
	datad => \twentySixBitCounter1|ALT_INV_tempCount\(8),
	datae => \twentySixBitCounter1|ALT_INV_tempCount\(10),
	dataf => \twentySixBitCounter1|ALT_INV_tempCount\(7),
	combout => \twentySixBitCounter1|Equal0~2_combout\);

-- Location: LABCELL_X70_Y8_N3
\twentySixBitCounter1|Add0~81\ : cyclonev_lcell_comb
-- Equation(s):
-- \twentySixBitCounter1|Add0~81_sumout\ = SUM(( \twentySixBitCounter1|tempCount\(11) ) + ( GND ) + ( \twentySixBitCounter1|Add0~78\ ))
-- \twentySixBitCounter1|Add0~82\ = CARRY(( \twentySixBitCounter1|tempCount\(11) ) + ( GND ) + ( \twentySixBitCounter1|Add0~78\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \twentySixBitCounter1|ALT_INV_tempCount\(11),
	cin => \twentySixBitCounter1|Add0~78\,
	sumout => \twentySixBitCounter1|Add0~81_sumout\,
	cout => \twentySixBitCounter1|Add0~82\);

-- Location: FF_X70_Y8_N5
\twentySixBitCounter1|tempCount[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \twentySixBitCounter1|Add0~81_sumout\,
	sclr => \twentySixBitCounter1|Equal0~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \twentySixBitCounter1|tempCount\(11));

-- Location: LABCELL_X70_Y8_N6
\twentySixBitCounter1|Add0~85\ : cyclonev_lcell_comb
-- Equation(s):
-- \twentySixBitCounter1|Add0~85_sumout\ = SUM(( \twentySixBitCounter1|tempCount\(12) ) + ( GND ) + ( \twentySixBitCounter1|Add0~82\ ))
-- \twentySixBitCounter1|Add0~86\ = CARRY(( \twentySixBitCounter1|tempCount\(12) ) + ( GND ) + ( \twentySixBitCounter1|Add0~82\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \twentySixBitCounter1|ALT_INV_tempCount\(12),
	cin => \twentySixBitCounter1|Add0~82\,
	sumout => \twentySixBitCounter1|Add0~85_sumout\,
	cout => \twentySixBitCounter1|Add0~86\);

-- Location: FF_X70_Y8_N8
\twentySixBitCounter1|tempCount[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \twentySixBitCounter1|Add0~85_sumout\,
	sclr => \twentySixBitCounter1|Equal0~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \twentySixBitCounter1|tempCount\(12));

-- Location: LABCELL_X70_Y8_N9
\twentySixBitCounter1|Add0~89\ : cyclonev_lcell_comb
-- Equation(s):
-- \twentySixBitCounter1|Add0~89_sumout\ = SUM(( \twentySixBitCounter1|tempCount\(13) ) + ( GND ) + ( \twentySixBitCounter1|Add0~86\ ))
-- \twentySixBitCounter1|Add0~90\ = CARRY(( \twentySixBitCounter1|tempCount\(13) ) + ( GND ) + ( \twentySixBitCounter1|Add0~86\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \twentySixBitCounter1|ALT_INV_tempCount\(13),
	cin => \twentySixBitCounter1|Add0~86\,
	sumout => \twentySixBitCounter1|Add0~89_sumout\,
	cout => \twentySixBitCounter1|Add0~90\);

-- Location: FF_X70_Y8_N10
\twentySixBitCounter1|tempCount[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \twentySixBitCounter1|Add0~89_sumout\,
	sclr => \twentySixBitCounter1|Equal0~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \twentySixBitCounter1|tempCount\(13));

-- Location: LABCELL_X70_Y8_N12
\twentySixBitCounter1|Add0~93\ : cyclonev_lcell_comb
-- Equation(s):
-- \twentySixBitCounter1|Add0~93_sumout\ = SUM(( \twentySixBitCounter1|tempCount\(14) ) + ( GND ) + ( \twentySixBitCounter1|Add0~90\ ))
-- \twentySixBitCounter1|Add0~94\ = CARRY(( \twentySixBitCounter1|tempCount\(14) ) + ( GND ) + ( \twentySixBitCounter1|Add0~90\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \twentySixBitCounter1|ALT_INV_tempCount\(14),
	cin => \twentySixBitCounter1|Add0~90\,
	sumout => \twentySixBitCounter1|Add0~93_sumout\,
	cout => \twentySixBitCounter1|Add0~94\);

-- Location: FF_X70_Y8_N13
\twentySixBitCounter1|tempCount[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \twentySixBitCounter1|Add0~93_sumout\,
	sclr => \twentySixBitCounter1|Equal0~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \twentySixBitCounter1|tempCount\(14));

-- Location: LABCELL_X70_Y8_N15
\twentySixBitCounter1|Add0~97\ : cyclonev_lcell_comb
-- Equation(s):
-- \twentySixBitCounter1|Add0~97_sumout\ = SUM(( \twentySixBitCounter1|tempCount\(15) ) + ( GND ) + ( \twentySixBitCounter1|Add0~94\ ))
-- \twentySixBitCounter1|Add0~98\ = CARRY(( \twentySixBitCounter1|tempCount\(15) ) + ( GND ) + ( \twentySixBitCounter1|Add0~94\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \twentySixBitCounter1|ALT_INV_tempCount\(15),
	cin => \twentySixBitCounter1|Add0~94\,
	sumout => \twentySixBitCounter1|Add0~97_sumout\,
	cout => \twentySixBitCounter1|Add0~98\);

-- Location: FF_X70_Y8_N17
\twentySixBitCounter1|tempCount[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \twentySixBitCounter1|Add0~97_sumout\,
	sclr => \twentySixBitCounter1|Equal0~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \twentySixBitCounter1|tempCount\(15));

-- Location: LABCELL_X70_Y8_N18
\twentySixBitCounter1|Add0~101\ : cyclonev_lcell_comb
-- Equation(s):
-- \twentySixBitCounter1|Add0~101_sumout\ = SUM(( \twentySixBitCounter1|tempCount\(16) ) + ( GND ) + ( \twentySixBitCounter1|Add0~98\ ))
-- \twentySixBitCounter1|Add0~102\ = CARRY(( \twentySixBitCounter1|tempCount\(16) ) + ( GND ) + ( \twentySixBitCounter1|Add0~98\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \twentySixBitCounter1|ALT_INV_tempCount\(16),
	cin => \twentySixBitCounter1|Add0~98\,
	sumout => \twentySixBitCounter1|Add0~101_sumout\,
	cout => \twentySixBitCounter1|Add0~102\);

-- Location: FF_X70_Y8_N20
\twentySixBitCounter1|tempCount[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \twentySixBitCounter1|Add0~101_sumout\,
	sclr => \twentySixBitCounter1|Equal0~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \twentySixBitCounter1|tempCount\(16));

-- Location: LABCELL_X70_Y8_N21
\twentySixBitCounter1|Add0~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \twentySixBitCounter1|Add0~1_sumout\ = SUM(( \twentySixBitCounter1|tempCount\(17) ) + ( GND ) + ( \twentySixBitCounter1|Add0~102\ ))
-- \twentySixBitCounter1|Add0~2\ = CARRY(( \twentySixBitCounter1|tempCount\(17) ) + ( GND ) + ( \twentySixBitCounter1|Add0~102\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \twentySixBitCounter1|ALT_INV_tempCount\(17),
	cin => \twentySixBitCounter1|Add0~102\,
	sumout => \twentySixBitCounter1|Add0~1_sumout\,
	cout => \twentySixBitCounter1|Add0~2\);

-- Location: FF_X70_Y8_N22
\twentySixBitCounter1|tempCount[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \twentySixBitCounter1|Add0~1_sumout\,
	sclr => \twentySixBitCounter1|Equal0~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \twentySixBitCounter1|tempCount\(17));

-- Location: LABCELL_X70_Y8_N24
\twentySixBitCounter1|Add0~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \twentySixBitCounter1|Add0~5_sumout\ = SUM(( \twentySixBitCounter1|tempCount\(18) ) + ( GND ) + ( \twentySixBitCounter1|Add0~2\ ))
-- \twentySixBitCounter1|Add0~6\ = CARRY(( \twentySixBitCounter1|tempCount\(18) ) + ( GND ) + ( \twentySixBitCounter1|Add0~2\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \twentySixBitCounter1|ALT_INV_tempCount\(18),
	cin => \twentySixBitCounter1|Add0~2\,
	sumout => \twentySixBitCounter1|Add0~5_sumout\,
	cout => \twentySixBitCounter1|Add0~6\);

-- Location: FF_X70_Y8_N25
\twentySixBitCounter1|tempCount[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \twentySixBitCounter1|Add0~5_sumout\,
	sclr => \twentySixBitCounter1|Equal0~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \twentySixBitCounter1|tempCount\(18));

-- Location: LABCELL_X70_Y8_N54
\twentySixBitCounter1|Equal0~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \twentySixBitCounter1|Equal0~3_combout\ = ( \twentySixBitCounter1|tempCount\(13) & ( \twentySixBitCounter1|tempCount\(14) & ( (!\twentySixBitCounter1|tempCount\(11) & (\twentySixBitCounter1|tempCount\(15) & (!\twentySixBitCounter1|tempCount\(16) & 
-- \twentySixBitCounter1|tempCount\(12)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000000100000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \twentySixBitCounter1|ALT_INV_tempCount\(11),
	datab => \twentySixBitCounter1|ALT_INV_tempCount\(15),
	datac => \twentySixBitCounter1|ALT_INV_tempCount\(16),
	datad => \twentySixBitCounter1|ALT_INV_tempCount\(12),
	datae => \twentySixBitCounter1|ALT_INV_tempCount\(13),
	dataf => \twentySixBitCounter1|ALT_INV_tempCount\(14),
	combout => \twentySixBitCounter1|Equal0~3_combout\);

-- Location: LABCELL_X70_Y8_N27
\twentySixBitCounter1|Add0~13\ : cyclonev_lcell_comb
-- Equation(s):
-- \twentySixBitCounter1|Add0~13_sumout\ = SUM(( \twentySixBitCounter1|tempCount\(19) ) + ( GND ) + ( \twentySixBitCounter1|Add0~6\ ))
-- \twentySixBitCounter1|Add0~14\ = CARRY(( \twentySixBitCounter1|tempCount\(19) ) + ( GND ) + ( \twentySixBitCounter1|Add0~6\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \twentySixBitCounter1|ALT_INV_tempCount\(19),
	cin => \twentySixBitCounter1|Add0~6\,
	sumout => \twentySixBitCounter1|Add0~13_sumout\,
	cout => \twentySixBitCounter1|Add0~14\);

-- Location: FF_X70_Y8_N29
\twentySixBitCounter1|tempCount[19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \twentySixBitCounter1|Add0~13_sumout\,
	sclr => \twentySixBitCounter1|Equal0~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \twentySixBitCounter1|tempCount\(19));

-- Location: LABCELL_X70_Y8_N30
\twentySixBitCounter1|Add0~17\ : cyclonev_lcell_comb
-- Equation(s):
-- \twentySixBitCounter1|Add0~17_sumout\ = SUM(( \twentySixBitCounter1|tempCount\(20) ) + ( GND ) + ( \twentySixBitCounter1|Add0~14\ ))
-- \twentySixBitCounter1|Add0~18\ = CARRY(( \twentySixBitCounter1|tempCount\(20) ) + ( GND ) + ( \twentySixBitCounter1|Add0~14\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \twentySixBitCounter1|ALT_INV_tempCount\(20),
	cin => \twentySixBitCounter1|Add0~14\,
	sumout => \twentySixBitCounter1|Add0~17_sumout\,
	cout => \twentySixBitCounter1|Add0~18\);

-- Location: FF_X70_Y8_N31
\twentySixBitCounter1|tempCount[20]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \twentySixBitCounter1|Add0~17_sumout\,
	sclr => \twentySixBitCounter1|Equal0~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \twentySixBitCounter1|tempCount\(20));

-- Location: LABCELL_X70_Y8_N33
\twentySixBitCounter1|Add0~21\ : cyclonev_lcell_comb
-- Equation(s):
-- \twentySixBitCounter1|Add0~21_sumout\ = SUM(( \twentySixBitCounter1|tempCount\(21) ) + ( GND ) + ( \twentySixBitCounter1|Add0~18\ ))
-- \twentySixBitCounter1|Add0~22\ = CARRY(( \twentySixBitCounter1|tempCount\(21) ) + ( GND ) + ( \twentySixBitCounter1|Add0~18\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \twentySixBitCounter1|ALT_INV_tempCount\(21),
	cin => \twentySixBitCounter1|Add0~18\,
	sumout => \twentySixBitCounter1|Add0~21_sumout\,
	cout => \twentySixBitCounter1|Add0~22\);

-- Location: FF_X70_Y8_N35
\twentySixBitCounter1|tempCount[21]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \twentySixBitCounter1|Add0~21_sumout\,
	sclr => \twentySixBitCounter1|Equal0~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \twentySixBitCounter1|tempCount\(21));

-- Location: LABCELL_X70_Y8_N36
\twentySixBitCounter1|Add0~25\ : cyclonev_lcell_comb
-- Equation(s):
-- \twentySixBitCounter1|Add0~25_sumout\ = SUM(( \twentySixBitCounter1|tempCount\(22) ) + ( GND ) + ( \twentySixBitCounter1|Add0~22\ ))
-- \twentySixBitCounter1|Add0~26\ = CARRY(( \twentySixBitCounter1|tempCount\(22) ) + ( GND ) + ( \twentySixBitCounter1|Add0~22\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \twentySixBitCounter1|ALT_INV_tempCount\(22),
	cin => \twentySixBitCounter1|Add0~22\,
	sumout => \twentySixBitCounter1|Add0~25_sumout\,
	cout => \twentySixBitCounter1|Add0~26\);

-- Location: FF_X70_Y8_N38
\twentySixBitCounter1|tempCount[22]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \twentySixBitCounter1|Add0~25_sumout\,
	sclr => \twentySixBitCounter1|Equal0~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \twentySixBitCounter1|tempCount\(22));

-- Location: LABCELL_X70_Y8_N39
\twentySixBitCounter1|Add0~29\ : cyclonev_lcell_comb
-- Equation(s):
-- \twentySixBitCounter1|Add0~29_sumout\ = SUM(( \twentySixBitCounter1|tempCount[23]~DUPLICATE_q\ ) + ( GND ) + ( \twentySixBitCounter1|Add0~26\ ))
-- \twentySixBitCounter1|Add0~30\ = CARRY(( \twentySixBitCounter1|tempCount[23]~DUPLICATE_q\ ) + ( GND ) + ( \twentySixBitCounter1|Add0~26\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \twentySixBitCounter1|ALT_INV_tempCount[23]~DUPLICATE_q\,
	cin => \twentySixBitCounter1|Add0~26\,
	sumout => \twentySixBitCounter1|Add0~29_sumout\,
	cout => \twentySixBitCounter1|Add0~30\);

-- Location: FF_X70_Y8_N40
\twentySixBitCounter1|tempCount[23]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \twentySixBitCounter1|Add0~29_sumout\,
	sclr => \twentySixBitCounter1|Equal0~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \twentySixBitCounter1|tempCount[23]~DUPLICATE_q\);

-- Location: LABCELL_X70_Y8_N42
\twentySixBitCounter1|Add0~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \twentySixBitCounter1|Add0~9_sumout\ = SUM(( \twentySixBitCounter1|tempCount\(24) ) + ( GND ) + ( \twentySixBitCounter1|Add0~30\ ))
-- \twentySixBitCounter1|Add0~10\ = CARRY(( \twentySixBitCounter1|tempCount\(24) ) + ( GND ) + ( \twentySixBitCounter1|Add0~30\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \twentySixBitCounter1|ALT_INV_tempCount\(24),
	cin => \twentySixBitCounter1|Add0~30\,
	sumout => \twentySixBitCounter1|Add0~9_sumout\,
	cout => \twentySixBitCounter1|Add0~10\);

-- Location: FF_X70_Y8_N44
\twentySixBitCounter1|tempCount[24]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \twentySixBitCounter1|Add0~9_sumout\,
	sclr => \twentySixBitCounter1|Equal0~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \twentySixBitCounter1|tempCount\(24));

-- Location: FF_X70_Y8_N41
\twentySixBitCounter1|tempCount[23]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \twentySixBitCounter1|Add0~29_sumout\,
	sclr => \twentySixBitCounter1|Equal0~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \twentySixBitCounter1|tempCount\(23));

-- Location: LABCELL_X70_Y8_N48
\twentySixBitCounter1|Equal0~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \twentySixBitCounter1|Equal0~0_combout\ = ( \twentySixBitCounter1|tempCount\(19) & ( \twentySixBitCounter1|tempCount\(20) & ( (\twentySixBitCounter1|tempCount\(22) & (!\twentySixBitCounter1|tempCount\(24) & (\twentySixBitCounter1|tempCount\(21) & 
-- \twentySixBitCounter1|tempCount\(23)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000000000100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \twentySixBitCounter1|ALT_INV_tempCount\(22),
	datab => \twentySixBitCounter1|ALT_INV_tempCount\(24),
	datac => \twentySixBitCounter1|ALT_INV_tempCount\(21),
	datad => \twentySixBitCounter1|ALT_INV_tempCount\(23),
	datae => \twentySixBitCounter1|ALT_INV_tempCount\(19),
	dataf => \twentySixBitCounter1|ALT_INV_tempCount\(20),
	combout => \twentySixBitCounter1|Equal0~0_combout\);

-- Location: FF_X70_Y9_N34
\twentySixBitCounter1|tempCount[1]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \twentySixBitCounter1|Add0~45_sumout\,
	sclr => \twentySixBitCounter1|Equal0~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \twentySixBitCounter1|tempCount[1]~DUPLICATE_q\);

-- Location: FF_X70_Y9_N37
\twentySixBitCounter1|tempCount[2]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \twentySixBitCounter1|Add0~49_sumout\,
	sclr => \twentySixBitCounter1|Equal0~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \twentySixBitCounter1|tempCount[2]~DUPLICATE_q\);

-- Location: LABCELL_X70_Y8_N45
\twentySixBitCounter1|Add0~33\ : cyclonev_lcell_comb
-- Equation(s):
-- \twentySixBitCounter1|Add0~33_sumout\ = SUM(( \twentySixBitCounter1|tempCount\(25) ) + ( GND ) + ( \twentySixBitCounter1|Add0~10\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \twentySixBitCounter1|ALT_INV_tempCount\(25),
	cin => \twentySixBitCounter1|Add0~10\,
	sumout => \twentySixBitCounter1|Add0~33_sumout\);

-- Location: FF_X70_Y8_N46
\twentySixBitCounter1|tempCount[25]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \twentySixBitCounter1|Add0~33_sumout\,
	sclr => \twentySixBitCounter1|Equal0~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \twentySixBitCounter1|tempCount\(25));

-- Location: LABCELL_X70_Y9_N6
\twentySixBitCounter1|Equal0~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \twentySixBitCounter1|Equal0~1_combout\ = ( \twentySixBitCounter1|tempCount\(25) & ( \twentySixBitCounter1|tempCount\(5) & ( (\twentySixBitCounter1|tempCount\(0) & (\twentySixBitCounter1|tempCount[1]~DUPLICATE_q\ & (\twentySixBitCounter1|tempCount\(3) & 
-- \twentySixBitCounter1|tempCount[2]~DUPLICATE_q\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000000000001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \twentySixBitCounter1|ALT_INV_tempCount\(0),
	datab => \twentySixBitCounter1|ALT_INV_tempCount[1]~DUPLICATE_q\,
	datac => \twentySixBitCounter1|ALT_INV_tempCount\(3),
	datad => \twentySixBitCounter1|ALT_INV_tempCount[2]~DUPLICATE_q\,
	datae => \twentySixBitCounter1|ALT_INV_tempCount\(25),
	dataf => \twentySixBitCounter1|ALT_INV_tempCount\(5),
	combout => \twentySixBitCounter1|Equal0~1_combout\);

-- Location: LABCELL_X70_Y9_N21
\twentySixBitCounter1|Equal0~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \twentySixBitCounter1|Equal0~4_combout\ = ( \twentySixBitCounter1|Equal0~0_combout\ & ( \twentySixBitCounter1|Equal0~1_combout\ & ( (\twentySixBitCounter1|Equal0~2_combout\ & (\twentySixBitCounter1|tempCount\(17) & (!\twentySixBitCounter1|tempCount\(18) & 
-- \twentySixBitCounter1|Equal0~3_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000000010000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \twentySixBitCounter1|ALT_INV_Equal0~2_combout\,
	datab => \twentySixBitCounter1|ALT_INV_tempCount\(17),
	datac => \twentySixBitCounter1|ALT_INV_tempCount\(18),
	datad => \twentySixBitCounter1|ALT_INV_Equal0~3_combout\,
	datae => \twentySixBitCounter1|ALT_INV_Equal0~0_combout\,
	dataf => \twentySixBitCounter1|ALT_INV_Equal0~1_combout\,
	combout => \twentySixBitCounter1|Equal0~4_combout\);

-- Location: LABCELL_X71_Y9_N30
\twentySixBitCounter1|reached~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \twentySixBitCounter1|reached~feeder_combout\ = \twentySixBitCounter1|Equal0~4_combout\

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101010101010101010101010101010101010101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \twentySixBitCounter1|ALT_INV_Equal0~4_combout\,
	combout => \twentySixBitCounter1|reached~feeder_combout\);

-- Location: FF_X71_Y9_N32
\twentySixBitCounter1|reached\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \twentySixBitCounter1|reached~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \twentySixBitCounter1|reached~q\);

-- Location: MLABCELL_X72_Y9_N27
\countSevenSecond|tempCount[0]~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \countSevenSecond|tempCount[0]~4_combout\ = ( !\countSevenSecond|tempCount[0]~DUPLICATE_q\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111111111111111111111111100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \countSevenSecond|ALT_INV_tempCount[0]~DUPLICATE_q\,
	combout => \countSevenSecond|tempCount[0]~4_combout\);

-- Location: FF_X72_Y9_N26
\traffic_lights_state.EW_Buffer_State\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \twentySixBitCounter1|reached~q\,
	asdata => \Selector7~0_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \traffic_lights_state.EW_Buffer_State~q\);

-- Location: LABCELL_X73_Y9_N15
\downCounter|tempCount[0]~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \downCounter|tempCount[0]~5_combout\ = ( !\downCounter|tempCount\(0) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111111111111111111111111100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \downCounter|ALT_INV_tempCount\(0),
	combout => \downCounter|tempCount[0]~5_combout\);

-- Location: LABCELL_X73_Y9_N57
\resetHEXVal~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \resetHEXVal~0_combout\ = ( \traffic_lights_state.NS_End_State~q\ ) # ( !\traffic_lights_state.NS_End_State~q\ & ( \traffic_lights_state.EW_End_State~q\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111000011110000111111111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_traffic_lights_state.EW_End_State~q\,
	dataf => \ALT_INV_traffic_lights_state.NS_End_State~q\,
	combout => \resetHEXVal~0_combout\);

-- Location: FF_X73_Y9_N23
\downCounter|tempCount[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \twentySixBitCounter1|reached~q\,
	asdata => \downCounter|tempCount[0]~5_combout\,
	sload => VCC,
	ena => \resetHEXVal~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \downCounter|tempCount\(0));

-- Location: LABCELL_X73_Y9_N42
\downCounter|tempCount[2]~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \downCounter|tempCount[2]~1_combout\ = ( \downCounter|tempCount\(0) & ( (!\downCounter|tempCount\(1) & (!\downCounter|tempCount\(2) & ((!\downCounter|tempCount\(3)) # (\downCounter|tempCount\(4))))) # (\downCounter|tempCount\(1) & 
-- (((\downCounter|tempCount\(2))))) ) ) # ( !\downCounter|tempCount\(0) & ( \downCounter|tempCount\(2) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111000011110000111110100101001001011010010100100101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \downCounter|ALT_INV_tempCount\(1),
	datab => \downCounter|ALT_INV_tempCount\(4),
	datac => \downCounter|ALT_INV_tempCount\(2),
	datad => \downCounter|ALT_INV_tempCount\(3),
	dataf => \downCounter|ALT_INV_tempCount\(0),
	combout => \downCounter|tempCount[2]~1_combout\);

-- Location: FF_X73_Y9_N47
\downCounter|tempCount[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \twentySixBitCounter1|reached~q\,
	asdata => \downCounter|tempCount[2]~1_combout\,
	sload => VCC,
	ena => \resetHEXVal~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \downCounter|tempCount\(2));

-- Location: LABCELL_X73_Y9_N21
\downCounter|tempCount[3]~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \downCounter|tempCount[3]~2_combout\ = ( \downCounter|tempCount\(1) & ( \downCounter|tempCount\(3) ) ) # ( !\downCounter|tempCount\(1) & ( !\downCounter|tempCount\(3) $ (((!\downCounter|tempCount\(0)) # (\downCounter|tempCount\(2)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001111000011001100111100001100110011001100110011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \downCounter|ALT_INV_tempCount\(3),
	datac => \downCounter|ALT_INV_tempCount\(2),
	datad => \downCounter|ALT_INV_tempCount\(0),
	dataf => \downCounter|ALT_INV_tempCount\(1),
	combout => \downCounter|tempCount[3]~2_combout\);

-- Location: FF_X73_Y9_N44
\downCounter|tempCount[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \twentySixBitCounter1|reached~q\,
	asdata => \downCounter|tempCount[3]~2_combout\,
	sload => VCC,
	ena => \resetHEXVal~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \downCounter|tempCount\(3));

-- Location: LABCELL_X73_Y9_N45
\downCounter|tempCount[1]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \downCounter|tempCount[1]~0_combout\ = ( \downCounter|tempCount\(0) & ( (!\downCounter|tempCount\(1) & (((!\downCounter|tempCount\(3)) # (\downCounter|tempCount\(2))) # (\downCounter|tempCount\(4)))) ) ) # ( !\downCounter|tempCount\(0) & ( 
-- \downCounter|tempCount\(1) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101010101010101010110100010101010101010001010101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \downCounter|ALT_INV_tempCount\(1),
	datab => \downCounter|ALT_INV_tempCount\(4),
	datac => \downCounter|ALT_INV_tempCount\(3),
	datad => \downCounter|ALT_INV_tempCount\(2),
	dataf => \downCounter|ALT_INV_tempCount\(0),
	combout => \downCounter|tempCount[1]~0_combout\);

-- Location: FF_X73_Y9_N20
\downCounter|tempCount[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \twentySixBitCounter1|reached~q\,
	asdata => \downCounter|tempCount[1]~0_combout\,
	sload => VCC,
	ena => \resetHEXVal~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \downCounter|tempCount\(1));

-- Location: LABCELL_X73_Y9_N30
\downCounter|tempCount[4]~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \downCounter|tempCount[4]~3_combout\ = ( \downCounter|tempCount\(2) & ( \downCounter|tempCount\(3) & ( \downCounter|tempCount\(4) ) ) ) # ( !\downCounter|tempCount\(2) & ( \downCounter|tempCount\(3) & ( (\downCounter|tempCount\(4) & 
-- ((!\downCounter|tempCount\(0)) # (\downCounter|tempCount\(1)))) ) ) ) # ( \downCounter|tempCount\(2) & ( !\downCounter|tempCount\(3) & ( \downCounter|tempCount\(4) ) ) ) # ( !\downCounter|tempCount\(2) & ( !\downCounter|tempCount\(3) & ( 
-- \downCounter|tempCount\(4) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001100110011001100110011001100110001001100010011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \downCounter|ALT_INV_tempCount\(1),
	datab => \downCounter|ALT_INV_tempCount\(4),
	datac => \downCounter|ALT_INV_tempCount\(0),
	datae => \downCounter|ALT_INV_tempCount\(2),
	dataf => \downCounter|ALT_INV_tempCount\(3),
	combout => \downCounter|tempCount[4]~3_combout\);

-- Location: FF_X73_Y9_N17
\downCounter|tempCount[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \twentySixBitCounter1|reached~q\,
	asdata => \downCounter|tempCount[4]~3_combout\,
	sload => VCC,
	ena => \resetHEXVal~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \downCounter|tempCount\(4));

-- Location: LABCELL_X73_Y9_N12
\Equal3~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Equal3~0_combout\ = ( \downCounter|tempCount\(3) & ( (\downCounter|tempCount\(0) & (!\downCounter|tempCount\(4) & (!\downCounter|tempCount\(1) & !\downCounter|tempCount\(2)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000001000000000000000100000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \downCounter|ALT_INV_tempCount\(0),
	datab => \downCounter|ALT_INV_tempCount\(4),
	datac => \downCounter|ALT_INV_tempCount\(1),
	datad => \downCounter|ALT_INV_tempCount\(2),
	dataf => \downCounter|ALT_INV_tempCount\(3),
	combout => \Equal3~0_combout\);

-- Location: LABCELL_X73_Y9_N48
\countTenSecond|tempCount[0]~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \countTenSecond|tempCount[0]~4_combout\ = !\countTenSecond|tempCount\(0)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111000011110000111100001111000011110000111100001111000011110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \countTenSecond|ALT_INV_tempCount\(0),
	combout => \countTenSecond|tempCount[0]~4_combout\);

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

-- Location: MLABCELL_X72_Y9_N0
\Selector0~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Selector0~0_combout\ = ( \Equal0~0_combout\ & ( (!\traffic_lights_state.EW_LEFT~q\ & (((\traffic_lights_state.EW_GREEN~q\) # (\SW[1]~input_o\)))) # (\traffic_lights_state.EW_LEFT~q\ & (!\Equal2~0_combout\ & ((\traffic_lights_state.EW_GREEN~q\) # 
-- (\SW[1]~input_o\)))) ) ) # ( !\Equal0~0_combout\ & ( (\traffic_lights_state.EW_GREEN~q\ & ((!\traffic_lights_state.EW_LEFT~q\) # (!\Equal2~0_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011101110000000001110111000001110111011100000111011101110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_traffic_lights_state.EW_LEFT~q\,
	datab => \ALT_INV_Equal2~0_combout\,
	datac => \ALT_INV_SW[1]~input_o\,
	datad => \ALT_INV_traffic_lights_state.EW_GREEN~q\,
	dataf => \ALT_INV_Equal0~0_combout\,
	combout => \Selector0~0_combout\);

-- Location: FF_X72_Y9_N5
\traffic_lights_state.EW_GREEN\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \twentySixBitCounter1|reached~q\,
	asdata => \Selector0~0_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \traffic_lights_state.EW_GREEN~q\);

-- Location: MLABCELL_X72_Y9_N15
\WideOr10~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \WideOr10~0_combout\ = ( \traffic_lights_state.EW_GREEN~q\ & ( \traffic_lights_state.NS_GREEN~q\ ) ) # ( !\traffic_lights_state.EW_GREEN~q\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111111111111111111111111100001111000011110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_traffic_lights_state.NS_GREEN~q\,
	dataf => \ALT_INV_traffic_lights_state.EW_GREEN~q\,
	combout => \WideOr10~0_combout\);

-- Location: FF_X73_Y9_N29
\countTenSecond|tempCount[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \twentySixBitCounter1|reached~q\,
	asdata => \countTenSecond|tempCount[0]~4_combout\,
	sload => VCC,
	ena => \WideOr10~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \countTenSecond|tempCount\(0));

-- Location: FF_X73_Y9_N35
\countTenSecond|tempCount[4]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \twentySixBitCounter1|reached~q\,
	asdata => \countTenSecond|tempCount[4]~3_combout\,
	sload => VCC,
	ena => \WideOr10~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \countTenSecond|tempCount[4]~DUPLICATE_q\);

-- Location: LABCELL_X73_Y9_N0
\countTenSecond|tempCount[4]~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \countTenSecond|tempCount[4]~3_combout\ = ( \countTenSecond|tempCount\(2) & ( !\countTenSecond|tempCount[4]~DUPLICATE_q\ $ (((!\countTenSecond|tempCount\(1)) # ((!\countTenSecond|tempCount\(0)) # (!\countTenSecond|tempCount\(3))))) ) ) # ( 
-- !\countTenSecond|tempCount\(2) & ( \countTenSecond|tempCount[4]~DUPLICATE_q\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001100110011001100110011001100110011001101100011001100110110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \countTenSecond|ALT_INV_tempCount\(1),
	datab => \countTenSecond|ALT_INV_tempCount[4]~DUPLICATE_q\,
	datac => \countTenSecond|ALT_INV_tempCount\(0),
	datad => \countTenSecond|ALT_INV_tempCount\(3),
	dataf => \countTenSecond|ALT_INV_tempCount\(2),
	combout => \countTenSecond|tempCount[4]~3_combout\);

-- Location: FF_X73_Y9_N34
\countTenSecond|tempCount[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \twentySixBitCounter1|reached~q\,
	asdata => \countTenSecond|tempCount[4]~3_combout\,
	sload => VCC,
	ena => \WideOr10~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \countTenSecond|tempCount\(4));

-- Location: LABCELL_X73_Y9_N27
\countTenSecond|tempCount[3]~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \countTenSecond|tempCount[3]~2_combout\ = ( \countTenSecond|tempCount\(1) & ( !\countTenSecond|tempCount\(3) $ (((!\countTenSecond|tempCount\(2)) # (!\countTenSecond|tempCount\(0)))) ) ) # ( !\countTenSecond|tempCount\(1) & ( 
-- (\countTenSecond|tempCount\(3) & (((!\countTenSecond|tempCount\(0)) # (\countTenSecond|tempCount\(2))) # (\countTenSecond|tempCount\(4)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010100010101010101010001010101010101010110100101010101011010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \countTenSecond|ALT_INV_tempCount\(3),
	datab => \countTenSecond|ALT_INV_tempCount\(4),
	datac => \countTenSecond|ALT_INV_tempCount\(2),
	datad => \countTenSecond|ALT_INV_tempCount\(0),
	dataf => \countTenSecond|ALT_INV_tempCount\(1),
	combout => \countTenSecond|tempCount[3]~2_combout\);

-- Location: FF_X73_Y9_N2
\countTenSecond|tempCount[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \twentySixBitCounter1|reached~q\,
	asdata => \countTenSecond|tempCount[3]~2_combout\,
	sload => VCC,
	ena => \WideOr10~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \countTenSecond|tempCount\(3));

-- Location: LABCELL_X73_Y9_N6
\countTenSecond|tempCount[1]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \countTenSecond|tempCount[1]~0_combout\ = ( \countTenSecond|tempCount\(4) & ( !\countTenSecond|tempCount\(0) $ (!\countTenSecond|tempCount\(1)) ) ) # ( !\countTenSecond|tempCount\(4) & ( (!\countTenSecond|tempCount\(0) & (\countTenSecond|tempCount\(1))) # 
-- (\countTenSecond|tempCount\(0) & (!\countTenSecond|tempCount\(1) & ((!\countTenSecond|tempCount\(3)) # (\countTenSecond|tempCount\(2))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0110001001100110011000100110011001100110011001100110011001100110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \countTenSecond|ALT_INV_tempCount\(0),
	datab => \countTenSecond|ALT_INV_tempCount\(1),
	datac => \countTenSecond|ALT_INV_tempCount\(3),
	datad => \countTenSecond|ALT_INV_tempCount\(2),
	dataf => \countTenSecond|ALT_INV_tempCount\(4),
	combout => \countTenSecond|tempCount[1]~0_combout\);

-- Location: FF_X73_Y9_N50
\countTenSecond|tempCount[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \twentySixBitCounter1|reached~q\,
	asdata => \countTenSecond|tempCount[1]~0_combout\,
	sload => VCC,
	ena => \WideOr10~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \countTenSecond|tempCount\(1));

-- Location: LABCELL_X73_Y9_N9
\countTenSecond|tempCount[2]~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \countTenSecond|tempCount[2]~1_combout\ = ( \countTenSecond|tempCount\(1) & ( !\countTenSecond|tempCount\(2) $ (!\countTenSecond|tempCount\(0)) ) ) # ( !\countTenSecond|tempCount\(1) & ( \countTenSecond|tempCount\(2) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111000011110000111100001111111100000000111111110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \countTenSecond|ALT_INV_tempCount\(2),
	datad => \countTenSecond|ALT_INV_tempCount\(0),
	dataf => \countTenSecond|ALT_INV_tempCount\(1),
	combout => \countTenSecond|tempCount[2]~1_combout\);

-- Location: FF_X73_Y9_N8
\countTenSecond|tempCount[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \twentySixBitCounter1|reached~q\,
	asdata => \countTenSecond|tempCount[2]~1_combout\,
	sload => VCC,
	ena => \WideOr10~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \countTenSecond|tempCount\(2));

-- Location: LABCELL_X73_Y9_N51
\Equal0~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Equal0~0_combout\ = ( !\countTenSecond|tempCount[4]~DUPLICATE_q\ & ( (\countTenSecond|tempCount\(0) & (!\countTenSecond|tempCount\(2) & (!\countTenSecond|tempCount\(1) & \countTenSecond|tempCount\(3)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000001000000000000000100000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \countTenSecond|ALT_INV_tempCount\(0),
	datab => \countTenSecond|ALT_INV_tempCount\(2),
	datac => \countTenSecond|ALT_INV_tempCount\(1),
	datad => \countTenSecond|ALT_INV_tempCount\(3),
	dataf => \countTenSecond|ALT_INV_tempCount[4]~DUPLICATE_q\,
	combout => \Equal0~0_combout\);

-- Location: LABCELL_X73_Y9_N39
\Selector6~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Selector6~0_combout\ = ( \traffic_lights_state.EW_GREEN~q\ & ( (\traffic_lights_state.EW_End_State~q\ & !\Equal3~0_combout\) ) ) # ( !\traffic_lights_state.EW_GREEN~q\ & ( (!\traffic_lights_state.EW_End_State~q\ & (((\Equal0~0_combout\ & 
-- \SW[1]~input_o\)))) # (\traffic_lights_state.EW_End_State~q\ & ((!\Equal3~0_combout\) # ((\Equal0~0_combout\ & \SW[1]~input_o\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100010001001111010001000100111101000100010001000100010001000100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_traffic_lights_state.EW_End_State~q\,
	datab => \ALT_INV_Equal3~0_combout\,
	datac => \ALT_INV_Equal0~0_combout\,
	datad => \ALT_INV_SW[1]~input_o\,
	dataf => \ALT_INV_traffic_lights_state.EW_GREEN~q\,
	combout => \Selector6~0_combout\);

-- Location: FF_X73_Y9_N41
\traffic_lights_state.EW_End_State\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \twentySixBitCounter1|reached~q\,
	d => \Selector6~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \traffic_lights_state.EW_End_State~q\);

-- Location: FF_X71_Y9_N53
\traffic_lights_state.EW_YELLOw\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \twentySixBitCounter1|reached~q\,
	asdata => \traffic_lights_state.EW_Buffer_State~DUPLICATE_q\,
	sload => VCC,
	ena => \Equal1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \traffic_lights_state.EW_YELLOw~q\);

-- Location: FF_X71_Y9_N8
\traffic_lights_state.NS_YELLOW~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \twentySixBitCounter1|reached~q\,
	d => \traffic_lights_state.NS_YELLOW~feeder_combout\,
	ena => \Equal1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \traffic_lights_state.NS_YELLOW~DUPLICATE_q\);

-- Location: LABCELL_X71_Y9_N54
WideOr23 : cyclonev_lcell_comb
-- Equation(s):
-- \WideOr23~combout\ = ( \traffic_lights_state.NS_Buffer_State~q\ & ( \traffic_lights_state.EW_Buffer_State~DUPLICATE_q\ ) ) # ( !\traffic_lights_state.NS_Buffer_State~q\ & ( \traffic_lights_state.EW_Buffer_State~DUPLICATE_q\ ) ) # ( 
-- \traffic_lights_state.NS_Buffer_State~q\ & ( !\traffic_lights_state.EW_Buffer_State~DUPLICATE_q\ ) ) # ( !\traffic_lights_state.NS_Buffer_State~q\ & ( !\traffic_lights_state.EW_Buffer_State~DUPLICATE_q\ & ( (\traffic_lights_state.NS_YELLOW~DUPLICATE_q\) # 
-- (\traffic_lights_state.EW_YELLOw~q\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010111111111111111111111111111111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_traffic_lights_state.EW_YELLOw~q\,
	datad => \ALT_INV_traffic_lights_state.NS_YELLOW~DUPLICATE_q\,
	datae => \ALT_INV_traffic_lights_state.NS_Buffer_State~q\,
	dataf => \ALT_INV_traffic_lights_state.EW_Buffer_State~DUPLICATE_q\,
	combout => \WideOr23~combout\);

-- Location: FF_X71_Y9_N14
\countThreeSecond|tempCount[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \twentySixBitCounter1|reached~q\,
	d => \countThreeSecond|tempCount[0]~feeder_combout\,
	ena => \WideOr23~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \countThreeSecond|tempCount\(0));

-- Location: LABCELL_X73_Y9_N3
\countThreeSecond|tempCount[0]~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \countThreeSecond|tempCount[0]~4_combout\ = !\countThreeSecond|tempCount\(0)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111100000000111111110000000011111111000000001111111100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \countThreeSecond|ALT_INV_tempCount\(0),
	combout => \countThreeSecond|tempCount[0]~4_combout\);

-- Location: LABCELL_X71_Y9_N12
\countThreeSecond|tempCount[0]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \countThreeSecond|tempCount[0]~feeder_combout\ = ( \countThreeSecond|tempCount[0]~4_combout\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \countThreeSecond|ALT_INV_tempCount[0]~4_combout\,
	combout => \countThreeSecond|tempCount[0]~feeder_combout\);

-- Location: FF_X71_Y9_N13
\countThreeSecond|tempCount[0]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \twentySixBitCounter1|reached~q\,
	d => \countThreeSecond|tempCount[0]~feeder_combout\,
	ena => \WideOr23~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \countThreeSecond|tempCount[0]~DUPLICATE_q\);

-- Location: LABCELL_X71_Y9_N0
\countThreeSecond|tempCount[1]~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \countThreeSecond|tempCount[1]~3_combout\ = ( \countThreeSecond|tempCount[0]~DUPLICATE_q\ & ( !\countThreeSecond|tempCount\(1) ) ) # ( !\countThreeSecond|tempCount[0]~DUPLICATE_q\ & ( \countThreeSecond|tempCount\(1) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011111111000000001111111111111111000000001111111100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \countThreeSecond|ALT_INV_tempCount\(1),
	dataf => \countThreeSecond|ALT_INV_tempCount[0]~DUPLICATE_q\,
	combout => \countThreeSecond|tempCount[1]~3_combout\);

-- Location: LABCELL_X71_Y9_N39
\countThreeSecond|tempCount[1]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \countThreeSecond|tempCount[1]~feeder_combout\ = \countThreeSecond|tempCount[1]~3_combout\

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101010101010101010101010101010101010101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \countThreeSecond|ALT_INV_tempCount[1]~3_combout\,
	combout => \countThreeSecond|tempCount[1]~feeder_combout\);

-- Location: FF_X71_Y9_N40
\countThreeSecond|tempCount[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \twentySixBitCounter1|reached~q\,
	d => \countThreeSecond|tempCount[1]~feeder_combout\,
	ena => \WideOr23~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \countThreeSecond|tempCount\(1));

-- Location: FF_X71_Y9_N41
\countThreeSecond|tempCount[1]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \twentySixBitCounter1|reached~q\,
	d => \countThreeSecond|tempCount[1]~feeder_combout\,
	ena => \WideOr23~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \countThreeSecond|tempCount[1]~DUPLICATE_q\);

-- Location: FF_X71_Y9_N23
\countThreeSecond|tempCount[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \twentySixBitCounter1|reached~q\,
	asdata => \countThreeSecond|tempCount[2]~0_combout\,
	sload => VCC,
	ena => \WideOr23~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \countThreeSecond|tempCount\(2));

-- Location: FF_X71_Y9_N25
\countThreeSecond|tempCount[3]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \twentySixBitCounter1|reached~q\,
	asdata => \countThreeSecond|tempCount[3]~1_combout\,
	sload => VCC,
	ena => \WideOr23~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \countThreeSecond|tempCount[3]~DUPLICATE_q\);

-- Location: LABCELL_X71_Y9_N48
\countThreeSecond|tempCount[2]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \countThreeSecond|tempCount[2]~0_combout\ = ( \countThreeSecond|tempCount\(4) & ( \countThreeSecond|tempCount[3]~DUPLICATE_q\ & ( !\countThreeSecond|tempCount\(2) $ (((!\countThreeSecond|tempCount[1]~DUPLICATE_q\) # (!\countThreeSecond|tempCount\(0)))) ) 
-- ) ) # ( !\countThreeSecond|tempCount\(4) & ( \countThreeSecond|tempCount[3]~DUPLICATE_q\ & ( !\countThreeSecond|tempCount\(2) $ (((!\countThreeSecond|tempCount[1]~DUPLICATE_q\) # (!\countThreeSecond|tempCount\(0)))) ) ) ) # ( 
-- \countThreeSecond|tempCount\(4) & ( !\countThreeSecond|tempCount[3]~DUPLICATE_q\ & ( !\countThreeSecond|tempCount\(2) $ (((!\countThreeSecond|tempCount[1]~DUPLICATE_q\) # (!\countThreeSecond|tempCount\(0)))) ) ) ) # ( !\countThreeSecond|tempCount\(4) & ( 
-- !\countThreeSecond|tempCount[3]~DUPLICATE_q\ & ( (\countThreeSecond|tempCount\(2) & ((!\countThreeSecond|tempCount[1]~DUPLICATE_q\) # (!\countThreeSecond|tempCount\(0)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001100000011110011110000001111001111000000111100111100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \countThreeSecond|ALT_INV_tempCount[1]~DUPLICATE_q\,
	datac => \countThreeSecond|ALT_INV_tempCount\(2),
	datad => \countThreeSecond|ALT_INV_tempCount\(0),
	datae => \countThreeSecond|ALT_INV_tempCount\(4),
	dataf => \countThreeSecond|ALT_INV_tempCount[3]~DUPLICATE_q\,
	combout => \countThreeSecond|tempCount[2]~0_combout\);

-- Location: FF_X71_Y9_N22
\countThreeSecond|tempCount[2]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \twentySixBitCounter1|reached~q\,
	asdata => \countThreeSecond|tempCount[2]~0_combout\,
	sload => VCC,
	ena => \WideOr23~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \countThreeSecond|tempCount[2]~DUPLICATE_q\);

-- Location: LABCELL_X71_Y9_N45
\countThreeSecond|tempCount[3]~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \countThreeSecond|tempCount[3]~1_combout\ = ( \countThreeSecond|tempCount[2]~DUPLICATE_q\ & ( !\countThreeSecond|tempCount\(3) $ (((!\countThreeSecond|tempCount[1]~DUPLICATE_q\) # (!\countThreeSecond|tempCount\(0)))) ) ) # ( 
-- !\countThreeSecond|tempCount[2]~DUPLICATE_q\ & ( \countThreeSecond|tempCount\(3) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101010101010101010101010110010101100101011001010110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \countThreeSecond|ALT_INV_tempCount\(3),
	datab => \countThreeSecond|ALT_INV_tempCount[1]~DUPLICATE_q\,
	datac => \countThreeSecond|ALT_INV_tempCount\(0),
	dataf => \countThreeSecond|ALT_INV_tempCount[2]~DUPLICATE_q\,
	combout => \countThreeSecond|tempCount[3]~1_combout\);

-- Location: FF_X71_Y9_N26
\countThreeSecond|tempCount[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \twentySixBitCounter1|reached~q\,
	asdata => \countThreeSecond|tempCount[3]~1_combout\,
	sload => VCC,
	ena => \WideOr23~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \countThreeSecond|tempCount\(3));

-- Location: LABCELL_X71_Y9_N18
\countThreeSecond|tempCount[4]~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \countThreeSecond|tempCount[4]~2_combout\ = ( \countThreeSecond|tempCount\(1) & ( \countThreeSecond|tempCount[2]~DUPLICATE_q\ & ( !\countThreeSecond|tempCount\(4) $ (((!\countThreeSecond|tempCount\(3)) # (!\countThreeSecond|tempCount\(0)))) ) ) ) # ( 
-- !\countThreeSecond|tempCount\(1) & ( \countThreeSecond|tempCount[2]~DUPLICATE_q\ & ( \countThreeSecond|tempCount\(4) ) ) ) # ( \countThreeSecond|tempCount\(1) & ( !\countThreeSecond|tempCount[2]~DUPLICATE_q\ & ( \countThreeSecond|tempCount\(4) ) ) ) # ( 
-- !\countThreeSecond|tempCount\(1) & ( !\countThreeSecond|tempCount[2]~DUPLICATE_q\ & ( \countThreeSecond|tempCount\(4) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001100110011001100110011001100110011001100110011001100111100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \countThreeSecond|ALT_INV_tempCount\(4),
	datac => \countThreeSecond|ALT_INV_tempCount\(3),
	datad => \countThreeSecond|ALT_INV_tempCount\(0),
	datae => \countThreeSecond|ALT_INV_tempCount\(1),
	dataf => \countThreeSecond|ALT_INV_tempCount[2]~DUPLICATE_q\,
	combout => \countThreeSecond|tempCount[4]~2_combout\);

-- Location: FF_X71_Y9_N47
\countThreeSecond|tempCount[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \twentySixBitCounter1|reached~q\,
	asdata => \countThreeSecond|tempCount[4]~2_combout\,
	sload => VCC,
	ena => \WideOr23~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \countThreeSecond|tempCount\(4));

-- Location: LABCELL_X71_Y9_N3
\Equal1~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Equal1~0_combout\ = ( !\countThreeSecond|tempCount[3]~DUPLICATE_q\ & ( (\countThreeSecond|tempCount\(1) & (\countThreeSecond|tempCount\(0) & (!\countThreeSecond|tempCount\(4) & !\countThreeSecond|tempCount\(2)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000000000000000100000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \countThreeSecond|ALT_INV_tempCount\(1),
	datab => \countThreeSecond|ALT_INV_tempCount\(0),
	datac => \countThreeSecond|ALT_INV_tempCount\(4),
	datad => \countThreeSecond|ALT_INV_tempCount\(2),
	dataf => \countThreeSecond|ALT_INV_tempCount[3]~DUPLICATE_q\,
	combout => \Equal1~0_combout\);

-- Location: MLABCELL_X72_Y9_N45
\Selector7~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Selector7~0_combout\ = ( \Equal3~0_combout\ & ( \Equal1~0_combout\ & ( \traffic_lights_state.EW_End_State~q\ ) ) ) # ( \Equal3~0_combout\ & ( !\Equal1~0_combout\ & ( (\traffic_lights_state.EW_End_State~q\) # (\traffic_lights_state.EW_Buffer_State~q\) ) ) 
-- ) # ( !\Equal3~0_combout\ & ( !\Equal1~0_combout\ & ( \traffic_lights_state.EW_Buffer_State~q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101010101011111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_traffic_lights_state.EW_Buffer_State~q\,
	datad => \ALT_INV_traffic_lights_state.EW_End_State~q\,
	datae => \ALT_INV_Equal3~0_combout\,
	dataf => \ALT_INV_Equal1~0_combout\,
	combout => \Selector7~0_combout\);

-- Location: FF_X72_Y9_N25
\traffic_lights_state.EW_Buffer_State~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \twentySixBitCounter1|reached~q\,
	asdata => \Selector7~0_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \traffic_lights_state.EW_Buffer_State~DUPLICATE_q\);

-- Location: FF_X71_Y9_N52
\traffic_lights_state.EW_YELLOw~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \twentySixBitCounter1|reached~q\,
	asdata => \traffic_lights_state.EW_Buffer_State~DUPLICATE_q\,
	sload => VCC,
	ena => \Equal1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \traffic_lights_state.EW_YELLOw~DUPLICATE_q\);

-- Location: MLABCELL_X72_Y9_N9
\Selector2~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Selector2~0_combout\ = ( \Equal2~0_combout\ & ( (\traffic_lights_state.EW_YELLOw~DUPLICATE_q\ & \Equal1~0_combout\) ) ) # ( !\Equal2~0_combout\ & ( ((\traffic_lights_state.EW_YELLOw~DUPLICATE_q\ & \Equal1~0_combout\)) # (\traffic_lights_state.NS_LEFT~q\) 
-- ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011011100110111001101110011011100000101000001010000010100000101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_traffic_lights_state.EW_YELLOw~DUPLICATE_q\,
	datab => \ALT_INV_traffic_lights_state.NS_LEFT~q\,
	datac => \ALT_INV_Equal1~0_combout\,
	dataf => \ALT_INV_Equal2~0_combout\,
	combout => \Selector2~0_combout\);

-- Location: FF_X72_Y9_N41
\traffic_lights_state.NS_LEFT\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \twentySixBitCounter1|reached~q\,
	asdata => \Selector2~0_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \traffic_lights_state.NS_LEFT~q\);

-- Location: MLABCELL_X72_Y9_N36
\HEX3Vals[0]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \HEX3Vals[0]~0_combout\ = (\traffic_lights_state.EW_LEFT~q\) # (\traffic_lights_state.NS_LEFT~q\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111111111111000011111111111100001111111111110000111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_traffic_lights_state.NS_LEFT~q\,
	datad => \ALT_INV_traffic_lights_state.EW_LEFT~q\,
	combout => \HEX3Vals[0]~0_combout\);

-- Location: FF_X72_Y9_N58
\countSevenSecond|tempCount[0]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \twentySixBitCounter1|reached~q\,
	asdata => \countSevenSecond|tempCount[0]~4_combout\,
	sload => VCC,
	ena => \HEX3Vals[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \countSevenSecond|tempCount[0]~DUPLICATE_q\);

-- Location: MLABCELL_X72_Y9_N3
\countSevenSecond|tempCount[1]~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \countSevenSecond|tempCount[1]~3_combout\ = ( \countSevenSecond|tempCount[0]~DUPLICATE_q\ & ( !\countSevenSecond|tempCount\(1) ) ) # ( !\countSevenSecond|tempCount[0]~DUPLICATE_q\ & ( \countSevenSecond|tempCount\(1) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111000011110000111111110000111100001111000011110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \countSevenSecond|ALT_INV_tempCount\(1),
	dataf => \countSevenSecond|ALT_INV_tempCount[0]~DUPLICATE_q\,
	combout => \countSevenSecond|tempCount[1]~3_combout\);

-- Location: FF_X72_Y9_N17
\countSevenSecond|tempCount[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \twentySixBitCounter1|reached~q\,
	asdata => \countSevenSecond|tempCount[1]~3_combout\,
	sload => VCC,
	ena => \HEX3Vals[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \countSevenSecond|tempCount\(1));

-- Location: FF_X72_Y9_N31
\countSevenSecond|tempCount[2]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \twentySixBitCounter1|reached~q\,
	asdata => \countSevenSecond|tempCount[2]~2_combout\,
	sload => VCC,
	ena => \HEX3Vals[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \countSevenSecond|tempCount[2]~DUPLICATE_q\);

-- Location: MLABCELL_X72_Y9_N48
\countSevenSecond|tempCount[2]~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \countSevenSecond|tempCount[2]~2_combout\ = ( \countSevenSecond|tempCount[0]~DUPLICATE_q\ & ( !\countSevenSecond|tempCount\(1) $ (!\countSevenSecond|tempCount[2]~DUPLICATE_q\) ) ) # ( !\countSevenSecond|tempCount[0]~DUPLICATE_q\ & ( 
-- \countSevenSecond|tempCount[2]~DUPLICATE_q\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111000011110000111100111100001111000011110000111100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \countSevenSecond|ALT_INV_tempCount\(1),
	datac => \countSevenSecond|ALT_INV_tempCount[2]~DUPLICATE_q\,
	dataf => \countSevenSecond|ALT_INV_tempCount[0]~DUPLICATE_q\,
	combout => \countSevenSecond|tempCount[2]~2_combout\);

-- Location: FF_X72_Y9_N32
\countSevenSecond|tempCount[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \twentySixBitCounter1|reached~q\,
	asdata => \countSevenSecond|tempCount[2]~2_combout\,
	sload => VCC,
	ena => \HEX3Vals[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \countSevenSecond|tempCount\(2));

-- Location: FF_X72_Y9_N59
\countSevenSecond|tempCount[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \twentySixBitCounter1|reached~q\,
	asdata => \countSevenSecond|tempCount[0]~4_combout\,
	sload => VCC,
	ena => \HEX3Vals[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \countSevenSecond|tempCount\(0));

-- Location: MLABCELL_X72_Y9_N33
\countSevenSecond|tempCount[4]~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \countSevenSecond|tempCount[4]~1_combout\ = ( \countSevenSecond|tempCount\(0) & ( \countSevenSecond|tempCount[2]~DUPLICATE_q\ & ( !\countSevenSecond|tempCount\(4) $ (((!\countSevenSecond|tempCount\(1)) # (!\countSevenSecond|tempCount\(3)))) ) ) ) # ( 
-- !\countSevenSecond|tempCount\(0) & ( \countSevenSecond|tempCount[2]~DUPLICATE_q\ & ( \countSevenSecond|tempCount\(4) ) ) ) # ( \countSevenSecond|tempCount\(0) & ( !\countSevenSecond|tempCount[2]~DUPLICATE_q\ & ( \countSevenSecond|tempCount\(4) ) ) ) # ( 
-- !\countSevenSecond|tempCount\(0) & ( !\countSevenSecond|tempCount[2]~DUPLICATE_q\ & ( \countSevenSecond|tempCount\(4) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001100110011001100110011001100110011001100110011001100111100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \countSevenSecond|ALT_INV_tempCount\(4),
	datac => \countSevenSecond|ALT_INV_tempCount\(1),
	datad => \countSevenSecond|ALT_INV_tempCount\(3),
	datae => \countSevenSecond|ALT_INV_tempCount\(0),
	dataf => \countSevenSecond|ALT_INV_tempCount[2]~DUPLICATE_q\,
	combout => \countSevenSecond|tempCount[4]~1_combout\);

-- Location: FF_X72_Y9_N14
\countSevenSecond|tempCount[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \twentySixBitCounter1|reached~q\,
	asdata => \countSevenSecond|tempCount[4]~1_combout\,
	sload => VCC,
	ena => \HEX3Vals[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \countSevenSecond|tempCount\(4));

-- Location: MLABCELL_X72_Y9_N39
\countSevenSecond|tempCount[3]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \countSevenSecond|tempCount[3]~0_combout\ = ( \countSevenSecond|tempCount[0]~DUPLICATE_q\ & ( (!\countSevenSecond|tempCount\(3) & (\countSevenSecond|tempCount\(2) & (\countSevenSecond|tempCount\(4) & \countSevenSecond|tempCount\(1)))) # 
-- (\countSevenSecond|tempCount\(3) & ((!\countSevenSecond|tempCount\(2)) # ((!\countSevenSecond|tempCount\(1))))) ) ) # ( !\countSevenSecond|tempCount[0]~DUPLICATE_q\ & ( \countSevenSecond|tempCount\(3) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101010101010101010101010101010001100101010101000110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \countSevenSecond|ALT_INV_tempCount\(3),
	datab => \countSevenSecond|ALT_INV_tempCount\(2),
	datac => \countSevenSecond|ALT_INV_tempCount\(4),
	datad => \countSevenSecond|ALT_INV_tempCount\(1),
	dataf => \countSevenSecond|ALT_INV_tempCount[0]~DUPLICATE_q\,
	combout => \countSevenSecond|tempCount[3]~0_combout\);

-- Location: FF_X72_Y9_N50
\countSevenSecond|tempCount[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \twentySixBitCounter1|reached~q\,
	asdata => \countSevenSecond|tempCount[3]~0_combout\,
	sload => VCC,
	ena => \HEX3Vals[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \countSevenSecond|tempCount\(3));

-- Location: MLABCELL_X72_Y9_N12
\Equal2~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Equal2~0_combout\ = ( \countSevenSecond|tempCount[2]~DUPLICATE_q\ & ( (\countSevenSecond|tempCount[0]~DUPLICATE_q\ & (\countSevenSecond|tempCount\(1) & (!\countSevenSecond|tempCount\(3) & !\countSevenSecond|tempCount\(4)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000010000000000000001000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \countSevenSecond|ALT_INV_tempCount[0]~DUPLICATE_q\,
	datab => \countSevenSecond|ALT_INV_tempCount\(1),
	datac => \countSevenSecond|ALT_INV_tempCount\(3),
	datad => \countSevenSecond|ALT_INV_tempCount\(4),
	dataf => \countSevenSecond|ALT_INV_tempCount[2]~DUPLICATE_q\,
	combout => \Equal2~0_combout\);

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

-- Location: MLABCELL_X72_Y9_N18
\Selector3~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Selector3~0_combout\ = ( \traffic_lights_state.NS_LEFT~q\ & ( ((\traffic_lights_state.NS_GREEN~q\ & ((!\Equal0~0_combout\) # (!\SW[2]~input_o\)))) # (\Equal2~0_combout\) ) ) # ( !\traffic_lights_state.NS_LEFT~q\ & ( (\traffic_lights_state.NS_GREEN~q\ & 
-- ((!\Equal0~0_combout\) # (!\SW[2]~input_o\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010000010101010101000001110111011100110111011101110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_traffic_lights_state.NS_GREEN~q\,
	datab => \ALT_INV_Equal2~0_combout\,
	datac => \ALT_INV_Equal0~0_combout\,
	datad => \ALT_INV_SW[2]~input_o\,
	dataf => \ALT_INV_traffic_lights_state.NS_LEFT~q\,
	combout => \Selector3~0_combout\);

-- Location: FF_X72_Y9_N20
\traffic_lights_state.NS_GREEN\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \twentySixBitCounter1|reached~q\,
	d => \Selector3~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \traffic_lights_state.NS_GREEN~q\);

-- Location: LABCELL_X73_Y9_N54
\Selector8~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Selector8~0_combout\ = ( \Equal3~0_combout\ & ( (\traffic_lights_state.NS_GREEN~q\ & (\Equal0~0_combout\ & \SW[2]~input_o\)) ) ) # ( !\Equal3~0_combout\ & ( ((\traffic_lights_state.NS_GREEN~q\ & (\Equal0~0_combout\ & \SW[2]~input_o\))) # 
-- (\traffic_lights_state.NS_End_State~q\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010111010101010101011100000000000000110000000000000011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_traffic_lights_state.NS_End_State~q\,
	datab => \ALT_INV_traffic_lights_state.NS_GREEN~q\,
	datac => \ALT_INV_Equal0~0_combout\,
	datad => \ALT_INV_SW[2]~input_o\,
	dataf => \ALT_INV_Equal3~0_combout\,
	combout => \Selector8~0_combout\);

-- Location: FF_X73_Y9_N38
\traffic_lights_state.NS_End_State\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \twentySixBitCounter1|reached~q\,
	asdata => \Selector8~0_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \traffic_lights_state.NS_End_State~q\);

-- Location: MLABCELL_X72_Y9_N51
\Selector9~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Selector9~0_combout\ = ( \Equal1~0_combout\ & ( (\traffic_lights_state.NS_End_State~q\ & \Equal3~0_combout\) ) ) # ( !\Equal1~0_combout\ & ( ((\traffic_lights_state.NS_End_State~q\ & \Equal3~0_combout\)) # (\traffic_lights_state.NS_Buffer_State~q\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101011111010101010101111100000000000011110000000000001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_traffic_lights_state.NS_Buffer_State~q\,
	datac => \ALT_INV_traffic_lights_state.NS_End_State~q\,
	datad => \ALT_INV_Equal3~0_combout\,
	dataf => \ALT_INV_Equal1~0_combout\,
	combout => \Selector9~0_combout\);

-- Location: FF_X72_Y9_N23
\traffic_lights_state.NS_Buffer_State\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \twentySixBitCounter1|reached~q\,
	asdata => \Selector9~0_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \traffic_lights_state.NS_Buffer_State~q\);

-- Location: LABCELL_X71_Y9_N6
\traffic_lights_state.NS_YELLOW~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \traffic_lights_state.NS_YELLOW~feeder_combout\ = \traffic_lights_state.NS_Buffer_State~q\

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101010101010101010101010101010101010101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_traffic_lights_state.NS_Buffer_State~q\,
	combout => \traffic_lights_state.NS_YELLOW~feeder_combout\);

-- Location: FF_X71_Y9_N7
\traffic_lights_state.NS_YELLOW\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \twentySixBitCounter1|reached~q\,
	d => \traffic_lights_state.NS_YELLOW~feeder_combout\,
	ena => \Equal1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \traffic_lights_state.NS_YELLOW~q\);

-- Location: MLABCELL_X72_Y9_N54
\Selector5~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Selector5~0_combout\ = ( \Equal1~0_combout\ & ( ((\traffic_lights_state.EW_LEFT~q\ & !\Equal2~0_combout\)) # (\traffic_lights_state.NS_YELLOW~q\) ) ) # ( !\Equal1~0_combout\ & ( (\traffic_lights_state.EW_LEFT~q\ & !\Equal2~0_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100000000000011110000000001011111010101010101111101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_traffic_lights_state.NS_YELLOW~q\,
	datac => \ALT_INV_traffic_lights_state.EW_LEFT~q\,
	datad => \ALT_INV_Equal2~0_combout\,
	dataf => \ALT_INV_Equal1~0_combout\,
	combout => \Selector5~0_combout\);

-- Location: FF_X72_Y9_N38
\traffic_lights_state.EW_LEFT\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \twentySixBitCounter1|reached~q\,
	asdata => \Selector5~0_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \traffic_lights_state.EW_LEFT~q\);

-- Location: LABCELL_X73_Y9_N18
WideOr3 : cyclonev_lcell_comb
-- Equation(s):
-- \WideOr3~combout\ = ( \traffic_lights_state.EW_Buffer_State~q\ ) # ( !\traffic_lights_state.EW_Buffer_State~q\ & ( (!\traffic_lights_state.EW_GREEN~q\) # (\traffic_lights_state.EW_End_State~q\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111010111110101111101011111010111111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_traffic_lights_state.EW_End_State~q\,
	datac => \ALT_INV_traffic_lights_state.EW_GREEN~q\,
	dataf => \ALT_INV_traffic_lights_state.EW_Buffer_State~q\,
	combout => \WideOr3~combout\);

-- Location: MLABCELL_X72_Y9_N6
WideOr2 : cyclonev_lcell_comb
-- Equation(s):
-- \WideOr2~combout\ = ( \traffic_lights_state.EW_Buffer_State~q\ ) # ( !\traffic_lights_state.EW_Buffer_State~q\ & ( ((!\traffic_lights_state.EW_GREEN~q\) # (\traffic_lights_state.EW_End_State~q\)) # (\traffic_lights_state.EW_YELLOw~DUPLICATE_q\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111010111111111111101011111111111111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_traffic_lights_state.EW_YELLOw~DUPLICATE_q\,
	datac => \ALT_INV_traffic_lights_state.EW_GREEN~q\,
	datad => \ALT_INV_traffic_lights_state.EW_End_State~q\,
	dataf => \ALT_INV_traffic_lights_state.EW_Buffer_State~q\,
	combout => \WideOr2~combout\);

-- Location: LABCELL_X73_Y9_N24
WideOr1 : cyclonev_lcell_comb
-- Equation(s):
-- \WideOr1~combout\ = ( \traffic_lights_state.NS_Buffer_State~q\ ) # ( !\traffic_lights_state.NS_Buffer_State~q\ & ( (\traffic_lights_state.NS_End_State~q\) # (\traffic_lights_state.NS_GREEN~q\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111111111111000011111111111111111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_traffic_lights_state.NS_GREEN~q\,
	datad => \ALT_INV_traffic_lights_state.NS_End_State~q\,
	dataf => \ALT_INV_traffic_lights_state.NS_Buffer_State~q\,
	combout => \WideOr1~combout\);

-- Location: MLABCELL_X72_Y9_N21
WideOr0 : cyclonev_lcell_comb
-- Equation(s):
-- \WideOr0~combout\ = ( \traffic_lights_state.NS_End_State~q\ ) # ( !\traffic_lights_state.NS_End_State~q\ & ( ((\traffic_lights_state.NS_Buffer_State~q\) # (\traffic_lights_state.NS_YELLOW~DUPLICATE_q\)) # (\traffic_lights_state.NS_GREEN~q\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101111111111111010111111111111111111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_traffic_lights_state.NS_GREEN~q\,
	datac => \ALT_INV_traffic_lights_state.NS_YELLOW~DUPLICATE_q\,
	datad => \ALT_INV_traffic_lights_state.NS_Buffer_State~q\,
	dataf => \ALT_INV_traffic_lights_state.NS_End_State~q\,
	combout => \WideOr0~combout\);

-- Location: LABCELL_X74_Y9_N3
\LEDR~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \LEDR~4_combout\ = ( !\traffic_lights_state.EW_End_State~q\ & ( \traffic_lights_state.EW_GREEN~q\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101000000000000000001010101010101010000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_traffic_lights_state.EW_GREEN~q\,
	datae => \ALT_INV_traffic_lights_state.EW_End_State~q\,
	combout => \LEDR~4_combout\);

-- Location: LABCELL_X74_Y9_N54
\LEDR~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \LEDR~5_combout\ = ( !\traffic_lights_state.NS_End_State~q\ & ( !\traffic_lights_state.NS_GREEN~q\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1100110011001100110011001100110000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_traffic_lights_state.NS_GREEN~q\,
	dataf => \ALT_INV_traffic_lights_state.NS_End_State~q\,
	combout => \LEDR~5_combout\);

-- Location: LABCELL_X75_Y9_N48
\HexValues1|Mux6~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \HexValues1|Mux6~0_combout\ = ( \downCounter|tempCount\(0) & ( \downCounter|tempCount\(3) & ( (!\resetHEXVal~0_combout\) # (!\downCounter|tempCount\(4) $ (\downCounter|tempCount\(1))) ) ) ) # ( !\downCounter|tempCount\(0) & ( \downCounter|tempCount\(3) & 
-- ( (!\resetHEXVal~0_combout\) # (!\downCounter|tempCount\(4) $ (((\downCounter|tempCount\(1)) # (\downCounter|tempCount\(2))))) ) ) ) # ( \downCounter|tempCount\(0) & ( !\downCounter|tempCount\(3) & ( ((!\resetHEXVal~0_combout\) # 
-- ((\downCounter|tempCount\(2) & !\downCounter|tempCount\(1)))) # (\downCounter|tempCount\(4)) ) ) ) # ( !\downCounter|tempCount\(0) & ( !\downCounter|tempCount\(3) & ( ((!\resetHEXVal~0_combout\) # (\downCounter|tempCount\(2))) # 
-- (\downCounter|tempCount\(4)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1101111111011111110111111101110111101101110111011110111011011101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \downCounter|ALT_INV_tempCount\(4),
	datab => \ALT_INV_resetHEXVal~0_combout\,
	datac => \downCounter|ALT_INV_tempCount\(2),
	datad => \downCounter|ALT_INV_tempCount\(1),
	datae => \downCounter|ALT_INV_tempCount\(0),
	dataf => \downCounter|ALT_INV_tempCount\(3),
	combout => \HexValues1|Mux6~0_combout\);

-- Location: LABCELL_X75_Y9_N54
\HexValues1|Mux5~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \HexValues1|Mux5~0_combout\ = ( \downCounter|tempCount\(0) & ( \downCounter|tempCount\(3) & ( ((!\resetHEXVal~0_combout\) # (!\downCounter|tempCount\(2) $ (\downCounter|tempCount\(1)))) # (\downCounter|tempCount\(4)) ) ) ) # ( !\downCounter|tempCount\(0) 
-- & ( \downCounter|tempCount\(3) & ( (!\resetHEXVal~0_combout\) # ((!\downCounter|tempCount\(1) & ((\downCounter|tempCount\(2)))) # (\downCounter|tempCount\(1) & (\downCounter|tempCount\(4)))) ) ) ) # ( \downCounter|tempCount\(0) & ( 
-- !\downCounter|tempCount\(3) & ( (!\resetHEXVal~0_combout\) # (\downCounter|tempCount\(4)) ) ) ) # ( !\downCounter|tempCount\(0) & ( !\downCounter|tempCount\(3) & ( ((!\resetHEXVal~0_combout\) # ((\downCounter|tempCount\(1)) # 
-- (\downCounter|tempCount\(2)))) # (\downCounter|tempCount\(4)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1101111111111111110111011101110111001111110111011111110111011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \downCounter|ALT_INV_tempCount\(4),
	datab => \ALT_INV_resetHEXVal~0_combout\,
	datac => \downCounter|ALT_INV_tempCount\(2),
	datad => \downCounter|ALT_INV_tempCount\(1),
	datae => \downCounter|ALT_INV_tempCount\(0),
	dataf => \downCounter|ALT_INV_tempCount\(3),
	combout => \HexValues1|Mux5~0_combout\);

-- Location: LABCELL_X75_Y9_N36
\HexValues1|Mux4~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \HexValues1|Mux4~0_combout\ = ( \downCounter|tempCount\(0) & ( \downCounter|tempCount\(3) & ( (!\resetHEXVal~0_combout\) # ((!\downCounter|tempCount\(4) & (!\downCounter|tempCount\(2))) # (\downCounter|tempCount\(4) & ((!\downCounter|tempCount\(1)) # 
-- (\downCounter|tempCount\(2))))) ) ) ) # ( !\downCounter|tempCount\(0) & ( \downCounter|tempCount\(3) & ( (!\resetHEXVal~0_combout\) # ((\downCounter|tempCount\(4) & ((\downCounter|tempCount\(1)) # (\downCounter|tempCount\(2))))) ) ) ) # ( 
-- \downCounter|tempCount\(0) & ( !\downCounter|tempCount\(3) & ( ((!\resetHEXVal~0_combout\) # ((\downCounter|tempCount\(2) & \downCounter|tempCount\(1)))) # (\downCounter|tempCount\(4)) ) ) ) # ( !\downCounter|tempCount\(0) & ( !\downCounter|tempCount\(3) 
-- & ( ((!\resetHEXVal~0_combout\) # (!\downCounter|tempCount\(2) $ (!\downCounter|tempCount\(1)))) # (\downCounter|tempCount\(4)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1101111111111101110111011101111111001101110111011111110111101101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \downCounter|ALT_INV_tempCount\(4),
	datab => \ALT_INV_resetHEXVal~0_combout\,
	datac => \downCounter|ALT_INV_tempCount\(2),
	datad => \downCounter|ALT_INV_tempCount\(1),
	datae => \downCounter|ALT_INV_tempCount\(0),
	dataf => \downCounter|ALT_INV_tempCount\(3),
	combout => \HexValues1|Mux4~0_combout\);

-- Location: LABCELL_X75_Y9_N42
\HexValues1|Mux3~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \HexValues1|Mux3~0_combout\ = ( \downCounter|tempCount\(0) & ( \downCounter|tempCount\(3) & ( (!\resetHEXVal~0_combout\) # ((!\downCounter|tempCount\(4) & ((!\downCounter|tempCount\(1)))) # (\downCounter|tempCount\(4) & (\downCounter|tempCount\(2)))) ) ) 
-- ) # ( !\downCounter|tempCount\(0) & ( \downCounter|tempCount\(3) & ( (!\resetHEXVal~0_combout\) # ((!\downCounter|tempCount\(2) & ((!\downCounter|tempCount\(1)))) # (\downCounter|tempCount\(2) & ((\downCounter|tempCount\(1)) # 
-- (\downCounter|tempCount\(4))))) ) ) ) # ( \downCounter|tempCount\(0) & ( !\downCounter|tempCount\(3) & ( ((!\resetHEXVal~0_combout\) # ((\downCounter|tempCount\(2) & \downCounter|tempCount\(1)))) # (\downCounter|tempCount\(4)) ) ) ) # ( 
-- !\downCounter|tempCount\(0) & ( !\downCounter|tempCount\(3) & ( ((!\resetHEXVal~0_combout\) # (!\downCounter|tempCount\(2) $ (\downCounter|tempCount\(1)))) # (\downCounter|tempCount\(4)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111110111011111110111011101111111111101110011111110111111001101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \downCounter|ALT_INV_tempCount\(4),
	datab => \ALT_INV_resetHEXVal~0_combout\,
	datac => \downCounter|ALT_INV_tempCount\(2),
	datad => \downCounter|ALT_INV_tempCount\(1),
	datae => \downCounter|ALT_INV_tempCount\(0),
	dataf => \downCounter|ALT_INV_tempCount\(3),
	combout => \HexValues1|Mux3~0_combout\);

-- Location: LABCELL_X75_Y9_N24
\HexValues1|Mux2~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \HexValues1|Mux2~0_combout\ = ( \downCounter|tempCount\(0) & ( \downCounter|tempCount\(3) & ( (!\resetHEXVal~0_combout\) # ((!\downCounter|tempCount\(4) & ((!\downCounter|tempCount\(1)))) # (\downCounter|tempCount\(4) & (\downCounter|tempCount\(2) & 
-- \downCounter|tempCount\(1)))) ) ) ) # ( !\downCounter|tempCount\(0) & ( \downCounter|tempCount\(3) & ( (!\downCounter|tempCount\(4)) # ((!\resetHEXVal~0_combout\) # (\downCounter|tempCount\(2))) ) ) ) # ( \downCounter|tempCount\(0) & ( 
-- !\downCounter|tempCount\(3) & ( ((!\resetHEXVal~0_combout\) # ((!\downCounter|tempCount\(2) & \downCounter|tempCount\(1)))) # (\downCounter|tempCount\(4)) ) ) ) # ( !\downCounter|tempCount\(0) & ( !\downCounter|tempCount\(3) & ( 
-- ((!\resetHEXVal~0_combout\) # ((!\downCounter|tempCount\(2) & !\downCounter|tempCount\(1)))) # (\downCounter|tempCount\(4)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111110111011101110111011111110111101111111011111110111011001101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \downCounter|ALT_INV_tempCount\(4),
	datab => \ALT_INV_resetHEXVal~0_combout\,
	datac => \downCounter|ALT_INV_tempCount\(2),
	datad => \downCounter|ALT_INV_tempCount\(1),
	datae => \downCounter|ALT_INV_tempCount\(0),
	dataf => \downCounter|ALT_INV_tempCount\(3),
	combout => \HexValues1|Mux2~0_combout\);

-- Location: LABCELL_X75_Y9_N12
\HexValues1|Mux1~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \HexValues1|Mux1~0_combout\ = ( \downCounter|tempCount\(0) & ( \downCounter|tempCount\(3) & ( (!\resetHEXVal~0_combout\) # ((!\downCounter|tempCount\(4) & (!\downCounter|tempCount\(2))) # (\downCounter|tempCount\(4) & ((\downCounter|tempCount\(1))))) ) ) 
-- ) # ( !\downCounter|tempCount\(0) & ( \downCounter|tempCount\(3) & ( (!\resetHEXVal~0_combout\) # ((!\downCounter|tempCount\(4) & ((!\downCounter|tempCount\(2)) # (\downCounter|tempCount\(1)))) # (\downCounter|tempCount\(4) & 
-- (\downCounter|tempCount\(2)))) ) ) ) # ( \downCounter|tempCount\(0) & ( !\downCounter|tempCount\(3) & ( (!\resetHEXVal~0_combout\) # (\downCounter|tempCount\(4)) ) ) ) # ( !\downCounter|tempCount\(0) & ( !\downCounter|tempCount\(3) & ( 
-- ((!\resetHEXVal~0_combout\) # ((\downCounter|tempCount\(2) & \downCounter|tempCount\(1)))) # (\downCounter|tempCount\(4)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1101110111011111110111011101110111101101111011111110110011111101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \downCounter|ALT_INV_tempCount\(4),
	datab => \ALT_INV_resetHEXVal~0_combout\,
	datac => \downCounter|ALT_INV_tempCount\(2),
	datad => \downCounter|ALT_INV_tempCount\(1),
	datae => \downCounter|ALT_INV_tempCount\(0),
	dataf => \downCounter|ALT_INV_tempCount\(3),
	combout => \HexValues1|Mux1~0_combout\);

-- Location: LABCELL_X75_Y9_N6
\HexValues1|Mux0~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \HexValues1|Mux0~0_combout\ = ( \downCounter|tempCount\(0) & ( \downCounter|tempCount\(3) & ( (!\resetHEXVal~0_combout\) # ((!\downCounter|tempCount\(2) & ((!\downCounter|tempCount\(1)))) # (\downCounter|tempCount\(2) & (\downCounter|tempCount\(4) & 
-- \downCounter|tempCount\(1)))) ) ) ) # ( !\downCounter|tempCount\(0) & ( \downCounter|tempCount\(3) & ( (!\resetHEXVal~0_combout\) # ((!\downCounter|tempCount\(4) & (!\downCounter|tempCount\(2) $ (\downCounter|tempCount\(1)))) # (\downCounter|tempCount\(4) 
-- & ((\downCounter|tempCount\(1)) # (\downCounter|tempCount\(2))))) ) ) ) # ( \downCounter|tempCount\(0) & ( !\downCounter|tempCount\(3) & ( ((!\resetHEXVal~0_combout\) # ((\downCounter|tempCount\(2) & !\downCounter|tempCount\(1)))) # 
-- (\downCounter|tempCount\(4)) ) ) ) # ( !\downCounter|tempCount\(0) & ( !\downCounter|tempCount\(3) & ( (!\resetHEXVal~0_combout\) # (\downCounter|tempCount\(4)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1101110111011101110111111101110111101101110111111111110011001101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \downCounter|ALT_INV_tempCount\(4),
	datab => \ALT_INV_resetHEXVal~0_combout\,
	datac => \downCounter|ALT_INV_tempCount\(2),
	datad => \downCounter|ALT_INV_tempCount\(1),
	datae => \downCounter|ALT_INV_tempCount\(0),
	dataf => \downCounter|ALT_INV_tempCount\(3),
	combout => \HexValues1|Mux0~0_combout\);

-- Location: LABCELL_X74_Y9_N12
\HexValues3|Mux6~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \HexValues3|Mux6~0_combout\ = ( \traffic_lights_state.EW_LEFT~q\ & ( \traffic_lights_state.NS_End_State~q\ & ( (!\traffic_lights_state.EW_GREEN~q\) # (\traffic_lights_state.NS_GREEN~q\) ) ) ) # ( !\traffic_lights_state.EW_LEFT~q\ & ( 
-- \traffic_lights_state.NS_End_State~q\ & ( (!\traffic_lights_state.EW_GREEN~q\) # (\traffic_lights_state.NS_GREEN~q\) ) ) ) # ( \traffic_lights_state.EW_LEFT~q\ & ( !\traffic_lights_state.NS_End_State~q\ & ( ((!\traffic_lights_state.EW_GREEN~q\) # 
-- (!\traffic_lights_state.EW_End_State~q\)) # (\traffic_lights_state.NS_GREEN~q\) ) ) ) # ( !\traffic_lights_state.EW_LEFT~q\ & ( !\traffic_lights_state.NS_End_State~q\ & ( (!\traffic_lights_state.EW_End_State~q\ & (((!\traffic_lights_state.NS_GREEN~q\ & 
-- \traffic_lights_state.EW_GREEN~q\)) # (\traffic_lights_state.NS_LEFT~q\))) # (\traffic_lights_state.EW_End_State~q\ & (((!\traffic_lights_state.EW_GREEN~q\) # (\traffic_lights_state.NS_GREEN~q\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101110111110011111111111111001111110011111100111111001111110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_traffic_lights_state.NS_LEFT~q\,
	datab => \ALT_INV_traffic_lights_state.NS_GREEN~q\,
	datac => \ALT_INV_traffic_lights_state.EW_GREEN~q\,
	datad => \ALT_INV_traffic_lights_state.EW_End_State~q\,
	datae => \ALT_INV_traffic_lights_state.EW_LEFT~q\,
	dataf => \ALT_INV_traffic_lights_state.NS_End_State~q\,
	combout => \HexValues3|Mux6~0_combout\);

-- Location: LABCELL_X83_Y13_N3
\HexValues3|Mux5~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \HexValues3|Mux5~0_combout\ = ( !\traffic_lights_state.NS_GREEN~q\ & ( \traffic_lights_state.EW_End_State~q\ & ( \traffic_lights_state.EW_GREEN~q\ ) ) ) # ( \traffic_lights_state.NS_GREEN~q\ & ( !\traffic_lights_state.EW_End_State~q\ & ( 
-- !\traffic_lights_state.NS_End_State~q\ ) ) ) # ( !\traffic_lights_state.NS_GREEN~q\ & ( !\traffic_lights_state.EW_End_State~q\ & ( (!\traffic_lights_state.NS_End_State~q\ & (((!\traffic_lights_state.EW_GREEN~q\) # (\traffic_lights_state.NS_LEFT~q\)) # 
-- (\traffic_lights_state.EW_LEFT~q\))) # (\traffic_lights_state.NS_End_State~q\ & (((\traffic_lights_state.EW_GREEN~q\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1100110001111111110011001100110000000000111111110000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_traffic_lights_state.EW_LEFT~q\,
	datab => \ALT_INV_traffic_lights_state.NS_End_State~q\,
	datac => \ALT_INV_traffic_lights_state.NS_LEFT~q\,
	datad => \ALT_INV_traffic_lights_state.EW_GREEN~q\,
	datae => \ALT_INV_traffic_lights_state.NS_GREEN~q\,
	dataf => \ALT_INV_traffic_lights_state.EW_End_State~q\,
	combout => \HexValues3|Mux5~0_combout\);

-- Location: LABCELL_X83_Y13_N6
\HexValues3|Mux4~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \HexValues3|Mux4~0_combout\ = ( !\traffic_lights_state.NS_GREEN~q\ & ( \traffic_lights_state.EW_End_State~q\ & ( \traffic_lights_state.EW_GREEN~q\ ) ) ) # ( \traffic_lights_state.NS_GREEN~q\ & ( !\traffic_lights_state.EW_End_State~q\ & ( 
-- (!\traffic_lights_state.NS_End_State~q\ & ((\traffic_lights_state.EW_LEFT~q\) # (\traffic_lights_state.NS_LEFT~q\))) ) ) ) # ( !\traffic_lights_state.NS_GREEN~q\ & ( !\traffic_lights_state.EW_End_State~q\ & ( ((!\traffic_lights_state.NS_End_State~q\ & 
-- ((\traffic_lights_state.EW_LEFT~q\) # (\traffic_lights_state.NS_LEFT~q\)))) # (\traffic_lights_state.EW_GREEN~q\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0111111101010101001111110000000001010101010101010000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_traffic_lights_state.EW_GREEN~q\,
	datab => \ALT_INV_traffic_lights_state.NS_LEFT~q\,
	datac => \ALT_INV_traffic_lights_state.EW_LEFT~q\,
	datad => \ALT_INV_traffic_lights_state.NS_End_State~q\,
	datae => \ALT_INV_traffic_lights_state.NS_GREEN~q\,
	dataf => \ALT_INV_traffic_lights_state.EW_End_State~q\,
	combout => \HexValues3|Mux4~0_combout\);

-- Location: LABCELL_X83_Y13_N12
\HexValues3|Mux3~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \HexValues3|Mux3~0_combout\ = ( !\traffic_lights_state.NS_GREEN~q\ & ( \traffic_lights_state.EW_End_State~q\ & ( (\traffic_lights_state.EW_GREEN~q\ & (!\traffic_lights_state.NS_LEFT~q\ & !\traffic_lights_state.EW_LEFT~q\)) ) ) ) # ( 
-- \traffic_lights_state.NS_GREEN~q\ & ( !\traffic_lights_state.EW_End_State~q\ & ( !\traffic_lights_state.NS_End_State~q\ ) ) ) # ( !\traffic_lights_state.NS_GREEN~q\ & ( !\traffic_lights_state.EW_End_State~q\ & ( (!\traffic_lights_state.EW_GREEN~q\ & 
-- (((!\traffic_lights_state.NS_End_State~q\)))) # (\traffic_lights_state.EW_GREEN~q\ & (!\traffic_lights_state.NS_LEFT~q\ & (!\traffic_lights_state.EW_LEFT~q\ & \traffic_lights_state.NS_End_State~q\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1010101001000000111111110000000001000000010000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_traffic_lights_state.EW_GREEN~q\,
	datab => \ALT_INV_traffic_lights_state.NS_LEFT~q\,
	datac => \ALT_INV_traffic_lights_state.EW_LEFT~q\,
	datad => \ALT_INV_traffic_lights_state.NS_End_State~q\,
	datae => \ALT_INV_traffic_lights_state.NS_GREEN~q\,
	dataf => \ALT_INV_traffic_lights_state.EW_End_State~q\,
	combout => \HexValues3|Mux3~0_combout\);

-- Location: LABCELL_X73_Y9_N36
\HexValues3|Mux1~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \HexValues3|Mux1~0_combout\ = ( \HEX3Vals[0]~0_combout\ & ( (!\WideOr10~0_combout\ & ((\traffic_lights_state.NS_End_State~q\) # (\traffic_lights_state.EW_End_State~q\))) ) ) # ( !\HEX3Vals[0]~0_combout\ & ( (!\traffic_lights_state.EW_End_State~q\ & 
-- (\WideOr10~0_combout\ & !\traffic_lights_state.NS_End_State~q\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000101000000000000010100000000001010000111100000101000011110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_traffic_lights_state.EW_End_State~q\,
	datac => \ALT_INV_WideOr10~0_combout\,
	datad => \ALT_INV_traffic_lights_state.NS_End_State~q\,
	dataf => \ALT_INV_HEX3Vals[0]~0_combout\,
	combout => \HexValues3|Mux1~0_combout\);

-- Location: LABCELL_X83_Y13_N42
\HexValues4|Mux6~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \HexValues4|Mux6~0_combout\ = ( !\traffic_lights_state.EW_End_State~q\ & ( (!\traffic_lights_state.NS_End_State~q\ & ((!\traffic_lights_state.EW_GREEN~q\) # (\traffic_lights_state.NS_GREEN~q\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1100000011001100110000001100110000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_traffic_lights_state.NS_End_State~q\,
	datac => \ALT_INV_traffic_lights_state.EW_GREEN~q\,
	datad => \ALT_INV_traffic_lights_state.NS_GREEN~q\,
	dataf => \ALT_INV_traffic_lights_state.EW_End_State~q\,
	combout => \HexValues4|Mux6~0_combout\);

-- Location: LABCELL_X83_Y13_N36
\HexValues4|Mux5~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \HexValues4|Mux5~0_combout\ = ( \traffic_lights_state.NS_GREEN~q\ & ( \traffic_lights_state.EW_End_State~q\ & ( (!\traffic_lights_state.NS_LEFT~q\ & !\traffic_lights_state.EW_LEFT~q\) ) ) ) # ( !\traffic_lights_state.NS_GREEN~q\ & ( 
-- \traffic_lights_state.EW_End_State~q\ & ( (!\traffic_lights_state.NS_LEFT~q\ & !\traffic_lights_state.EW_LEFT~q\) ) ) ) # ( \traffic_lights_state.NS_GREEN~q\ & ( !\traffic_lights_state.EW_End_State~q\ & ( (!\traffic_lights_state.NS_LEFT~q\ & 
-- !\traffic_lights_state.EW_LEFT~q\) ) ) ) # ( !\traffic_lights_state.NS_GREEN~q\ & ( !\traffic_lights_state.EW_End_State~q\ & ( (!\traffic_lights_state.NS_LEFT~q\ & (!\traffic_lights_state.EW_LEFT~q\ & ((!\traffic_lights_state.EW_GREEN~q\) # 
-- (\traffic_lights_state.NS_End_State~q\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000000011000000110000001100000011000000110000001100000011000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_traffic_lights_state.EW_GREEN~q\,
	datab => \ALT_INV_traffic_lights_state.NS_LEFT~q\,
	datac => \ALT_INV_traffic_lights_state.EW_LEFT~q\,
	datad => \ALT_INV_traffic_lights_state.NS_End_State~q\,
	datae => \ALT_INV_traffic_lights_state.NS_GREEN~q\,
	dataf => \ALT_INV_traffic_lights_state.EW_End_State~q\,
	combout => \HexValues4|Mux5~0_combout\);

-- Location: LABCELL_X83_Y13_N30
\HexValues4|Mux2~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \HexValues4|Mux2~0_combout\ = ( \traffic_lights_state.NS_GREEN~q\ & ( !\traffic_lights_state.EW_End_State~q\ & ( (!\traffic_lights_state.NS_LEFT~q\ & (!\traffic_lights_state.EW_LEFT~q\ & !\traffic_lights_state.NS_End_State~q\)) ) ) ) # ( 
-- !\traffic_lights_state.NS_GREEN~q\ & ( !\traffic_lights_state.EW_End_State~q\ & ( (!\traffic_lights_state.EW_GREEN~q\ & (!\traffic_lights_state.NS_LEFT~q\ & (!\traffic_lights_state.EW_LEFT~q\ & !\traffic_lights_state.NS_End_State~q\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000000000000000110000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_traffic_lights_state.EW_GREEN~q\,
	datab => \ALT_INV_traffic_lights_state.NS_LEFT~q\,
	datac => \ALT_INV_traffic_lights_state.EW_LEFT~q\,
	datad => \ALT_INV_traffic_lights_state.NS_End_State~q\,
	datae => \ALT_INV_traffic_lights_state.NS_GREEN~q\,
	dataf => \ALT_INV_traffic_lights_state.EW_End_State~q\,
	combout => \HexValues4|Mux2~0_combout\);

-- Location: LABCELL_X83_Y13_N48
\HexValues4|Mux1~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \HexValues4|Mux1~0_combout\ = ( \traffic_lights_state.NS_GREEN~q\ & ( \traffic_lights_state.EW_End_State~q\ ) ) # ( !\traffic_lights_state.NS_GREEN~q\ & ( \traffic_lights_state.EW_End_State~q\ ) ) # ( \traffic_lights_state.NS_GREEN~q\ & ( 
-- !\traffic_lights_state.EW_End_State~q\ ) ) # ( !\traffic_lights_state.NS_GREEN~q\ & ( !\traffic_lights_state.EW_End_State~q\ & ( (!\traffic_lights_state.EW_GREEN~q\) # (((\traffic_lights_state.NS_End_State~q\) # (\traffic_lights_state.EW_LEFT~q\)) # 
-- (\traffic_lights_state.NS_LEFT~q\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1011111111111111111111111111111111111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_traffic_lights_state.EW_GREEN~q\,
	datab => \ALT_INV_traffic_lights_state.NS_LEFT~q\,
	datac => \ALT_INV_traffic_lights_state.EW_LEFT~q\,
	datad => \ALT_INV_traffic_lights_state.NS_End_State~q\,
	datae => \ALT_INV_traffic_lights_state.NS_GREEN~q\,
	dataf => \ALT_INV_traffic_lights_state.EW_End_State~q\,
	combout => \HexValues4|Mux1~0_combout\);

-- Location: LABCELL_X74_Y9_N6
\HexValues4|Mux0~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \HexValues4|Mux0~0_combout\ = ( !\traffic_lights_state.EW_LEFT~q\ & ( \traffic_lights_state.NS_End_State~q\ & ( !\traffic_lights_state.NS_LEFT~q\ ) ) ) # ( \traffic_lights_state.EW_LEFT~q\ & ( !\traffic_lights_state.NS_End_State~q\ & ( 
-- (!\traffic_lights_state.NS_GREEN~q\ & (\traffic_lights_state.EW_GREEN~q\ & !\traffic_lights_state.EW_End_State~q\)) ) ) ) # ( !\traffic_lights_state.EW_LEFT~q\ & ( !\traffic_lights_state.NS_End_State~q\ & ( (!\traffic_lights_state.NS_LEFT~q\ & 
-- (((\traffic_lights_state.EW_End_State~q\)))) # (\traffic_lights_state.NS_LEFT~q\ & (!\traffic_lights_state.NS_GREEN~q\ & (\traffic_lights_state.EW_GREEN~q\ & !\traffic_lights_state.EW_End_State~q\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010010101010000011000000000010101010101010100000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_traffic_lights_state.NS_LEFT~q\,
	datab => \ALT_INV_traffic_lights_state.NS_GREEN~q\,
	datac => \ALT_INV_traffic_lights_state.EW_GREEN~q\,
	datad => \ALT_INV_traffic_lights_state.EW_End_State~q\,
	datae => \ALT_INV_traffic_lights_state.EW_LEFT~q\,
	dataf => \ALT_INV_traffic_lights_state.NS_End_State~q\,
	combout => \HexValues4|Mux0~0_combout\);

-- Location: LABCELL_X74_Y9_N24
\HexValues5|Mux6~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \HexValues5|Mux6~0_combout\ = ( \traffic_lights_state.EW_LEFT~q\ & ( \traffic_lights_state.NS_End_State~q\ ) ) # ( !\traffic_lights_state.EW_LEFT~q\ & ( \traffic_lights_state.NS_End_State~q\ ) ) # ( \traffic_lights_state.EW_LEFT~q\ & ( 
-- !\traffic_lights_state.NS_End_State~q\ & ( \traffic_lights_state.EW_End_State~q\ ) ) ) # ( !\traffic_lights_state.EW_LEFT~q\ & ( !\traffic_lights_state.NS_End_State~q\ & ( ((\traffic_lights_state.EW_GREEN~q\ & ((\traffic_lights_state.NS_GREEN~q\) # 
-- (\traffic_lights_state.NS_LEFT~q\)))) # (\traffic_lights_state.EW_End_State~q\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000011111111111000000001111111111111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_traffic_lights_state.NS_LEFT~q\,
	datab => \ALT_INV_traffic_lights_state.NS_GREEN~q\,
	datac => \ALT_INV_traffic_lights_state.EW_GREEN~q\,
	datad => \ALT_INV_traffic_lights_state.EW_End_State~q\,
	datae => \ALT_INV_traffic_lights_state.EW_LEFT~q\,
	dataf => \ALT_INV_traffic_lights_state.NS_End_State~q\,
	combout => \HexValues5|Mux6~0_combout\);

-- Location: LABCELL_X83_Y13_N45
\HexValues5|Mux5~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \HexValues5|Mux5~0_combout\ = ( \traffic_lights_state.EW_LEFT~q\ & ( (!\traffic_lights_state.EW_End_State~q\ & !\traffic_lights_state.NS_End_State~q\) ) ) # ( !\traffic_lights_state.EW_LEFT~q\ & ( !\traffic_lights_state.EW_GREEN~q\ $ 
-- (((\traffic_lights_state.NS_End_State~q\) # (\traffic_lights_state.EW_End_State~q\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000100001110111100010000111011110001000100010001000100010001000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_traffic_lights_state.EW_End_State~q\,
	datab => \ALT_INV_traffic_lights_state.NS_End_State~q\,
	datad => \ALT_INV_traffic_lights_state.EW_GREEN~q\,
	dataf => \ALT_INV_traffic_lights_state.EW_LEFT~q\,
	combout => \HexValues5|Mux5~0_combout\);

-- Location: LABCELL_X83_Y13_N18
\HexValues5|Mux4~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \HexValues5|Mux4~0_combout\ = ( \traffic_lights_state.NS_GREEN~q\ & ( \traffic_lights_state.EW_End_State~q\ & ( (!\traffic_lights_state.EW_GREEN~q\) # (\traffic_lights_state.EW_LEFT~q\) ) ) ) # ( !\traffic_lights_state.NS_GREEN~q\ & ( 
-- \traffic_lights_state.EW_End_State~q\ & ( (!\traffic_lights_state.EW_GREEN~q\) # (\traffic_lights_state.EW_LEFT~q\) ) ) ) # ( \traffic_lights_state.NS_GREEN~q\ & ( !\traffic_lights_state.EW_End_State~q\ & ( (\traffic_lights_state.NS_End_State~q\ & 
-- ((!\traffic_lights_state.EW_GREEN~q\) # (\traffic_lights_state.EW_LEFT~q\))) ) ) ) # ( !\traffic_lights_state.NS_GREEN~q\ & ( !\traffic_lights_state.EW_End_State~q\ & ( (!\traffic_lights_state.EW_GREEN~q\ & (((\traffic_lights_state.NS_End_State~q\)))) # 
-- (\traffic_lights_state.EW_GREEN~q\ & ((!\traffic_lights_state.EW_LEFT~q\ & (!\traffic_lights_state.NS_LEFT~q\ & !\traffic_lights_state.NS_End_State~q\)) # (\traffic_lights_state.EW_LEFT~q\ & ((\traffic_lights_state.NS_End_State~q\))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100000010101111000000001010111110101111101011111010111110101111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_traffic_lights_state.EW_GREEN~q\,
	datab => \ALT_INV_traffic_lights_state.NS_LEFT~q\,
	datac => \ALT_INV_traffic_lights_state.EW_LEFT~q\,
	datad => \ALT_INV_traffic_lights_state.NS_End_State~q\,
	datae => \ALT_INV_traffic_lights_state.NS_GREEN~q\,
	dataf => \ALT_INV_traffic_lights_state.EW_End_State~q\,
	combout => \HexValues5|Mux4~0_combout\);

-- Location: LABCELL_X74_Y9_N18
\HexValues5|Mux3~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \HexValues5|Mux3~0_combout\ = ( !\traffic_lights_state.EW_LEFT~q\ & ( \traffic_lights_state.NS_End_State~q\ & ( \traffic_lights_state.EW_GREEN~q\ ) ) ) # ( \traffic_lights_state.EW_LEFT~q\ & ( !\traffic_lights_state.NS_End_State~q\ & ( 
-- (!\traffic_lights_state.EW_End_State~q\ & ((\traffic_lights_state.NS_GREEN~q\) # (\traffic_lights_state.NS_LEFT~q\))) ) ) ) # ( !\traffic_lights_state.EW_LEFT~q\ & ( !\traffic_lights_state.NS_End_State~q\ & ( (!\traffic_lights_state.EW_GREEN~q\ & 
-- (!\traffic_lights_state.EW_End_State~q\ & ((\traffic_lights_state.NS_GREEN~q\) # (\traffic_lights_state.NS_LEFT~q\)))) # (\traffic_lights_state.EW_GREEN~q\ & (((\traffic_lights_state.EW_End_State~q\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0111000000001111011101110000000000001111000011110000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_traffic_lights_state.NS_LEFT~q\,
	datab => \ALT_INV_traffic_lights_state.NS_GREEN~q\,
	datac => \ALT_INV_traffic_lights_state.EW_GREEN~q\,
	datad => \ALT_INV_traffic_lights_state.EW_End_State~q\,
	datae => \ALT_INV_traffic_lights_state.EW_LEFT~q\,
	dataf => \ALT_INV_traffic_lights_state.NS_End_State~q\,
	combout => \HexValues5|Mux3~0_combout\);

-- Location: LABCELL_X74_Y9_N39
\HexValues5|Mux2~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \HexValues5|Mux2~0_combout\ = ( !\traffic_lights_state.EW_End_State~q\ & ( \traffic_lights_state.NS_GREEN~q\ & ( !\traffic_lights_state.NS_End_State~q\ ) ) ) # ( !\traffic_lights_state.EW_End_State~q\ & ( !\traffic_lights_state.NS_GREEN~q\ & ( 
-- (!\traffic_lights_state.NS_End_State~q\ & \traffic_lights_state.NS_LEFT~q\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000010101010000000000000000010101010101010100000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_traffic_lights_state.NS_End_State~q\,
	datad => \ALT_INV_traffic_lights_state.NS_LEFT~q\,
	datae => \ALT_INV_traffic_lights_state.EW_End_State~q\,
	dataf => \ALT_INV_traffic_lights_state.NS_GREEN~q\,
	combout => \HexValues5|Mux2~0_combout\);

-- Location: LABCELL_X83_Y13_N24
\HexValues5|Mux0~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \HexValues5|Mux0~0_combout\ = ( \traffic_lights_state.NS_GREEN~q\ & ( \traffic_lights_state.EW_End_State~q\ & ( (!\traffic_lights_state.EW_GREEN~q\) # (\traffic_lights_state.EW_LEFT~q\) ) ) ) # ( !\traffic_lights_state.NS_GREEN~q\ & ( 
-- \traffic_lights_state.EW_End_State~q\ & ( (!\traffic_lights_state.EW_GREEN~q\) # (\traffic_lights_state.EW_LEFT~q\) ) ) ) # ( \traffic_lights_state.NS_GREEN~q\ & ( !\traffic_lights_state.EW_End_State~q\ & ( (\traffic_lights_state.NS_End_State~q\ & 
-- ((!\traffic_lights_state.EW_GREEN~q\) # (\traffic_lights_state.EW_LEFT~q\))) ) ) ) # ( !\traffic_lights_state.NS_GREEN~q\ & ( !\traffic_lights_state.EW_End_State~q\ & ( (!\traffic_lights_state.EW_GREEN~q\ & ((!\traffic_lights_state.NS_LEFT~q\) # 
-- ((\traffic_lights_state.NS_End_State~q\)))) # (\traffic_lights_state.EW_GREEN~q\ & (\traffic_lights_state.EW_LEFT~q\ & ((!\traffic_lights_state.NS_LEFT~q\) # (\traffic_lights_state.NS_End_State~q\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000110010101111000000001010111110101111101011111010111110101111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_traffic_lights_state.EW_GREEN~q\,
	datab => \ALT_INV_traffic_lights_state.NS_LEFT~q\,
	datac => \ALT_INV_traffic_lights_state.EW_LEFT~q\,
	datad => \ALT_INV_traffic_lights_state.NS_End_State~q\,
	datae => \ALT_INV_traffic_lights_state.NS_GREEN~q\,
	dataf => \ALT_INV_traffic_lights_state.EW_End_State~q\,
	combout => \HexValues5|Mux0~0_combout\);

-- Location: LABCELL_X83_Y13_N54
\HexValues6|Mux6~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \HexValues6|Mux6~0_combout\ = ( \traffic_lights_state.NS_GREEN~q\ & ( \traffic_lights_state.EW_End_State~q\ ) ) # ( !\traffic_lights_state.NS_GREEN~q\ & ( \traffic_lights_state.EW_End_State~q\ & ( (!\traffic_lights_state.EW_GREEN~q\) # 
-- ((\traffic_lights_state.EW_LEFT~q\) # (\traffic_lights_state.NS_LEFT~q\)) ) ) ) # ( \traffic_lights_state.NS_GREEN~q\ & ( !\traffic_lights_state.EW_End_State~q\ & ( ((\traffic_lights_state.EW_GREEN~q\ & !\traffic_lights_state.EW_LEFT~q\)) # 
-- (\traffic_lights_state.NS_End_State~q\) ) ) ) # ( !\traffic_lights_state.NS_GREEN~q\ & ( !\traffic_lights_state.EW_End_State~q\ & ( (!\traffic_lights_state.EW_GREEN~q\ & (((\traffic_lights_state.NS_End_State~q\)))) # (\traffic_lights_state.EW_GREEN~q\ & 
-- ((!\traffic_lights_state.EW_LEFT~q\ & (\traffic_lights_state.NS_LEFT~q\)) # (\traffic_lights_state.EW_LEFT~q\ & ((\traffic_lights_state.NS_End_State~q\))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000010111111010100001111111110111111101111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_traffic_lights_state.EW_GREEN~q\,
	datab => \ALT_INV_traffic_lights_state.NS_LEFT~q\,
	datac => \ALT_INV_traffic_lights_state.EW_LEFT~q\,
	datad => \ALT_INV_traffic_lights_state.NS_End_State~q\,
	datae => \ALT_INV_traffic_lights_state.NS_GREEN~q\,
	dataf => \ALT_INV_traffic_lights_state.EW_End_State~q\,
	combout => \HexValues6|Mux6~0_combout\);

-- Location: LABCELL_X74_Y9_N30
WideOr5 : cyclonev_lcell_comb
-- Equation(s):
-- \WideOr5~combout\ = ( \traffic_lights_state.EW_LEFT~q\ ) # ( !\traffic_lights_state.EW_LEFT~q\ & ( (!\traffic_lights_state.EW_GREEN~q\) # ((\traffic_lights_state.NS_End_State~q\) # (\traffic_lights_state.EW_End_State~q\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1011111110111111111111111111111110111111101111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_traffic_lights_state.EW_GREEN~q\,
	datab => \ALT_INV_traffic_lights_state.EW_End_State~q\,
	datac => \ALT_INV_traffic_lights_state.NS_End_State~q\,
	datae => \ALT_INV_traffic_lights_state.EW_LEFT~q\,
	combout => \WideOr5~combout\);

-- Location: LABCELL_X74_Y9_N48
\HexValues6|Mux2~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \HexValues6|Mux2~0_combout\ = ( !\traffic_lights_state.EW_LEFT~q\ & ( \traffic_lights_state.NS_End_State~q\ & ( (!\traffic_lights_state.NS_LEFT~q\ & (!\traffic_lights_state.NS_GREEN~q\ & \traffic_lights_state.EW_GREEN~q\)) ) ) ) # ( 
-- \traffic_lights_state.EW_LEFT~q\ & ( !\traffic_lights_state.NS_End_State~q\ & ( !\traffic_lights_state.EW_End_State~q\ ) ) ) # ( !\traffic_lights_state.EW_LEFT~q\ & ( !\traffic_lights_state.NS_End_State~q\ & ( !\traffic_lights_state.EW_End_State~q\ $ 
-- (((!\traffic_lights_state.NS_LEFT~q\ & (!\traffic_lights_state.NS_GREEN~q\ & \traffic_lights_state.EW_GREEN~q\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111011100001000111111110000000000001000000010000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_traffic_lights_state.NS_LEFT~q\,
	datab => \ALT_INV_traffic_lights_state.NS_GREEN~q\,
	datac => \ALT_INV_traffic_lights_state.EW_GREEN~q\,
	datad => \ALT_INV_traffic_lights_state.EW_End_State~q\,
	datae => \ALT_INV_traffic_lights_state.EW_LEFT~q\,
	dataf => \ALT_INV_traffic_lights_state.NS_End_State~q\,
	combout => \HexValues6|Mux2~0_combout\);

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

-- Location: IOIBUF_X4_Y0_N18
\SW[8]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(8),
	o => \SW[8]~input_o\);

-- Location: IOIBUF_X2_Y0_N58
\SW[9]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(9),
	o => \SW[9]~input_o\);

-- Location: MLABCELL_X39_Y27_N3
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


