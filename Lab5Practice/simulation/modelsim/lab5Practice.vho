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

-- DATE "03/11/2022 10:02:23"

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

ENTITY 	demo_Display IS
    PORT (
	CLOCK_50 : IN std_logic;
	KEY : IN std_logic_vector(3 DOWNTO 0);
	LEDR : BUFFER std_logic_vector(9 DOWNTO 0)
	);
END demo_Display;

-- Design Ports Information
-- KEY[1]	=>  Location: PIN_AA15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- KEY[2]	=>  Location: PIN_W15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- KEY[3]	=>  Location: PIN_Y16,	 I/O Standard: 2.5 V,	 Current Strength: Default
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
-- KEY[0]	=>  Location: PIN_AA14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- CLOCK_50	=>  Location: PIN_AF14,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF demo_Display IS
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
SIGNAL ww_KEY : std_logic_vector(3 DOWNTO 0);
SIGNAL ww_LEDR : std_logic_vector(9 DOWNTO 0);
SIGNAL \KEY[1]~input_o\ : std_logic;
SIGNAL \KEY[2]~input_o\ : std_logic;
SIGNAL \KEY[3]~input_o\ : std_logic;
SIGNAL \~QUARTUS_CREATED_GND~I_combout\ : std_logic;
SIGNAL \CLOCK_50~input_o\ : std_logic;
SIGNAL \CLOCK_50~inputCLKENA0_outclk\ : std_logic;
SIGNAL \twentyCnt|Add0~77_sumout\ : std_logic;
SIGNAL \KEY[0]~input_o\ : std_logic;
SIGNAL \reset20Count~0_combout\ : std_logic;
SIGNAL \twentyCnt|Add0~78\ : std_logic;
SIGNAL \twentyCnt|Add0~73_sumout\ : std_logic;
SIGNAL \twentyCnt|Add0~74\ : std_logic;
SIGNAL \twentyCnt|Add0~69_sumout\ : std_logic;
SIGNAL \twentyCnt|Add0~70\ : std_logic;
SIGNAL \twentyCnt|Add0~65_sumout\ : std_logic;
SIGNAL \twentyCnt|Add0~66\ : std_logic;
SIGNAL \twentyCnt|Add0~61_sumout\ : std_logic;
SIGNAL \twentyCnt|Add0~62\ : std_logic;
SIGNAL \twentyCnt|Add0~57_sumout\ : std_logic;
SIGNAL \twentyCnt|Add0~58\ : std_logic;
SIGNAL \twentyCnt|Add0~53_sumout\ : std_logic;
SIGNAL \twentyCnt|Add0~54\ : std_logic;
SIGNAL \twentyCnt|Add0~49_sumout\ : std_logic;
SIGNAL \twentyCnt|Add0~50\ : std_logic;
SIGNAL \twentyCnt|Add0~45_sumout\ : std_logic;
SIGNAL \twentyCnt|Add0~46\ : std_logic;
SIGNAL \twentyCnt|Add0~41_sumout\ : std_logic;
SIGNAL \twentyCnt|Add0~42\ : std_logic;
SIGNAL \twentyCnt|Add0~37_sumout\ : std_logic;
SIGNAL \twentyCnt|Add0~38\ : std_logic;
SIGNAL \twentyCnt|Add0~33_sumout\ : std_logic;
SIGNAL \twentyCnt|Add0~34\ : std_logic;
SIGNAL \twentyCnt|Add0~29_sumout\ : std_logic;
SIGNAL \twentyCnt|Add0~30\ : std_logic;
SIGNAL \twentyCnt|Add0~25_sumout\ : std_logic;
SIGNAL \twentyCnt|Add0~26\ : std_logic;
SIGNAL \twentyCnt|Add0~21_sumout\ : std_logic;
SIGNAL \twentyCnt|Add0~22\ : std_logic;
SIGNAL \twentyCnt|Add0~17_sumout\ : std_logic;
SIGNAL \twentyCnt|Add0~18\ : std_logic;
SIGNAL \twentyCnt|Add0~9_sumout\ : std_logic;
SIGNAL \twentyCnt|Add0~10\ : std_logic;
SIGNAL \twentyCnt|Add0~13_sumout\ : std_logic;
SIGNAL \twentyCnt|Add0~14\ : std_logic;
SIGNAL \twentyCnt|Add0~5_sumout\ : std_logic;
SIGNAL \twentyCnt|Add0~6\ : std_logic;
SIGNAL \twentyCnt|Add0~1_sumout\ : std_logic;
SIGNAL \clk_50~combout\ : std_logic;
SIGNAL \shiftReg|regval[0]~_wirecell_combout\ : std_logic;
SIGNAL \fourCnt|tempCount~0_combout\ : std_logic;
SIGNAL \resetCount~0_combout\ : std_logic;
SIGNAL \fourCnt|tempCount~3_combout\ : std_logic;
SIGNAL \fourCnt|Add0~1_combout\ : std_logic;
SIGNAL \fourCnt|tempCount~2_combout\ : std_logic;
SIGNAL \fourCnt|Add0~0_combout\ : std_logic;
SIGNAL \fourCnt|tempCount~1_combout\ : std_logic;
SIGNAL \s1~0_combout\ : std_logic;
SIGNAL \s0~combout\ : std_logic;
SIGNAL \Mux1~0_combout\ : std_logic;
SIGNAL \s1~combout\ : std_logic;
SIGNAL \shiftReg|Mux9~1_combout\ : std_logic;
SIGNAL \shiftReg|regval[2]~feeder_combout\ : std_logic;
SIGNAL \shiftReg|regval[3]~feeder_combout\ : std_logic;
SIGNAL \shiftReg|regval[4]~feeder_combout\ : std_logic;
SIGNAL \shiftReg|regval[5]~feeder_combout\ : std_logic;
SIGNAL \shiftReg|regval[5]~DUPLICATE_q\ : std_logic;
SIGNAL \shiftReg|regval[6]~feeder_combout\ : std_logic;
SIGNAL \shiftReg|regval[7]~feeder_combout\ : std_logic;
SIGNAL \shiftReg|regval[8]~feeder_combout\ : std_logic;
SIGNAL \shiftReg|regval[9]~feeder_combout\ : std_logic;
SIGNAL \shiftReg|Mux9~0_combout\ : std_logic;
SIGNAL \shiftReg|regval\ : std_logic_vector(9 DOWNTO 0);
SIGNAL \twentyCnt|tempCount\ : std_logic_vector(19 DOWNTO 0);
SIGNAL \fourCnt|tempCount\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \shiftReg|ALT_INV_regval[5]~DUPLICATE_q\ : std_logic;
SIGNAL \ALT_INV_KEY[0]~input_o\ : std_logic;
SIGNAL \ALT_INV_s0~combout\ : std_logic;
SIGNAL \ALT_INV_s1~combout\ : std_logic;
SIGNAL \fourCnt|ALT_INV_Add0~1_combout\ : std_logic;
SIGNAL \fourCnt|ALT_INV_Add0~0_combout\ : std_logic;
SIGNAL \fourCnt|ALT_INV_tempCount\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \ALT_INV_resetCount~0_combout\ : std_logic;
SIGNAL \ALT_INV_clk_50~combout\ : std_logic;
SIGNAL \ALT_INV_s1~0_combout\ : std_logic;
SIGNAL \ALT_INV_Mux1~0_combout\ : std_logic;
SIGNAL \shiftReg|ALT_INV_Mux9~1_combout\ : std_logic;
SIGNAL \shiftReg|ALT_INV_regval\ : std_logic_vector(9 DOWNTO 0);
SIGNAL \twentyCnt|ALT_INV_tempCount\ : std_logic_vector(19 DOWNTO 0);

BEGIN

ww_CLOCK_50 <= CLOCK_50;
ww_KEY <= KEY;
LEDR <= ww_LEDR;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;
\shiftReg|ALT_INV_regval[5]~DUPLICATE_q\ <= NOT \shiftReg|regval[5]~DUPLICATE_q\;
\ALT_INV_KEY[0]~input_o\ <= NOT \KEY[0]~input_o\;
\ALT_INV_s0~combout\ <= NOT \s0~combout\;
\ALT_INV_s1~combout\ <= NOT \s1~combout\;
\fourCnt|ALT_INV_Add0~1_combout\ <= NOT \fourCnt|Add0~1_combout\;
\fourCnt|ALT_INV_Add0~0_combout\ <= NOT \fourCnt|Add0~0_combout\;
\fourCnt|ALT_INV_tempCount\(1) <= NOT \fourCnt|tempCount\(1);
\fourCnt|ALT_INV_tempCount\(2) <= NOT \fourCnt|tempCount\(2);
\ALT_INV_resetCount~0_combout\ <= NOT \resetCount~0_combout\;
\ALT_INV_clk_50~combout\ <= NOT \clk_50~combout\;
\ALT_INV_s1~0_combout\ <= NOT \s1~0_combout\;
\fourCnt|ALT_INV_tempCount\(3) <= NOT \fourCnt|tempCount\(3);
\fourCnt|ALT_INV_tempCount\(0) <= NOT \fourCnt|tempCount\(0);
\ALT_INV_Mux1~0_combout\ <= NOT \Mux1~0_combout\;
\shiftReg|ALT_INV_Mux9~1_combout\ <= NOT \shiftReg|Mux9~1_combout\;
\shiftReg|ALT_INV_regval\(0) <= NOT \shiftReg|regval\(0);
\twentyCnt|ALT_INV_tempCount\(0) <= NOT \twentyCnt|tempCount\(0);
\twentyCnt|ALT_INV_tempCount\(1) <= NOT \twentyCnt|tempCount\(1);
\twentyCnt|ALT_INV_tempCount\(2) <= NOT \twentyCnt|tempCount\(2);
\twentyCnt|ALT_INV_tempCount\(3) <= NOT \twentyCnt|tempCount\(3);
\twentyCnt|ALT_INV_tempCount\(4) <= NOT \twentyCnt|tempCount\(4);
\twentyCnt|ALT_INV_tempCount\(5) <= NOT \twentyCnt|tempCount\(5);
\twentyCnt|ALT_INV_tempCount\(6) <= NOT \twentyCnt|tempCount\(6);
\twentyCnt|ALT_INV_tempCount\(7) <= NOT \twentyCnt|tempCount\(7);
\twentyCnt|ALT_INV_tempCount\(8) <= NOT \twentyCnt|tempCount\(8);
\twentyCnt|ALT_INV_tempCount\(9) <= NOT \twentyCnt|tempCount\(9);
\twentyCnt|ALT_INV_tempCount\(10) <= NOT \twentyCnt|tempCount\(10);
\twentyCnt|ALT_INV_tempCount\(11) <= NOT \twentyCnt|tempCount\(11);
\twentyCnt|ALT_INV_tempCount\(12) <= NOT \twentyCnt|tempCount\(12);
\twentyCnt|ALT_INV_tempCount\(13) <= NOT \twentyCnt|tempCount\(13);
\twentyCnt|ALT_INV_tempCount\(14) <= NOT \twentyCnt|tempCount\(14);
\twentyCnt|ALT_INV_tempCount\(15) <= NOT \twentyCnt|tempCount\(15);
\twentyCnt|ALT_INV_tempCount\(17) <= NOT \twentyCnt|tempCount\(17);
\twentyCnt|ALT_INV_tempCount\(16) <= NOT \twentyCnt|tempCount\(16);
\twentyCnt|ALT_INV_tempCount\(18) <= NOT \twentyCnt|tempCount\(18);
\twentyCnt|ALT_INV_tempCount\(19) <= NOT \twentyCnt|tempCount\(19);
\shiftReg|ALT_INV_regval\(9) <= NOT \shiftReg|regval\(9);
\shiftReg|ALT_INV_regval\(8) <= NOT \shiftReg|regval\(8);
\shiftReg|ALT_INV_regval\(7) <= NOT \shiftReg|regval\(7);
\shiftReg|ALT_INV_regval\(6) <= NOT \shiftReg|regval\(6);
\shiftReg|ALT_INV_regval\(4) <= NOT \shiftReg|regval\(4);
\shiftReg|ALT_INV_regval\(3) <= NOT \shiftReg|regval\(3);
\shiftReg|ALT_INV_regval\(2) <= NOT \shiftReg|regval\(2);
\shiftReg|ALT_INV_regval\(1) <= NOT \shiftReg|regval\(1);

-- Location: IOOBUF_X52_Y0_N2
\LEDR[0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \shiftReg|ALT_INV_regval\(0),
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
	i => \shiftReg|regval\(1),
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
	i => \shiftReg|regval\(2),
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
	i => \shiftReg|regval\(3),
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
	i => \shiftReg|regval\(4),
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
	i => \shiftReg|regval[5]~DUPLICATE_q\,
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
	i => \shiftReg|regval\(6),
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
	i => \shiftReg|regval\(7),
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
	i => \shiftReg|regval\(8),
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
	i => \shiftReg|regval\(9),
	devoe => ww_devoe,
	o => ww_LEDR(9));

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

-- Location: LABCELL_X57_Y3_N0
\twentyCnt|Add0~77\ : cyclonev_lcell_comb
-- Equation(s):
-- \twentyCnt|Add0~77_sumout\ = SUM(( \twentyCnt|tempCount\(0) ) + ( VCC ) + ( !VCC ))
-- \twentyCnt|Add0~78\ = CARRY(( \twentyCnt|tempCount\(0) ) + ( VCC ) + ( !VCC ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \twentyCnt|ALT_INV_tempCount\(0),
	cin => GND,
	sumout => \twentyCnt|Add0~77_sumout\,
	cout => \twentyCnt|Add0~78\);

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

-- Location: LABCELL_X56_Y3_N9
\reset20Count~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \reset20Count~0_combout\ = ( \clk_50~combout\ ) # ( !\clk_50~combout\ & ( !\KEY[0]~input_o\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111000011110000111100001111000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_KEY[0]~input_o\,
	dataf => \ALT_INV_clk_50~combout\,
	combout => \reset20Count~0_combout\);

-- Location: FF_X57_Y3_N2
\twentyCnt|tempCount[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \twentyCnt|Add0~77_sumout\,
	sclr => \reset20Count~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \twentyCnt|tempCount\(0));

-- Location: LABCELL_X57_Y3_N3
\twentyCnt|Add0~73\ : cyclonev_lcell_comb
-- Equation(s):
-- \twentyCnt|Add0~73_sumout\ = SUM(( \twentyCnt|tempCount\(1) ) + ( GND ) + ( \twentyCnt|Add0~78\ ))
-- \twentyCnt|Add0~74\ = CARRY(( \twentyCnt|tempCount\(1) ) + ( GND ) + ( \twentyCnt|Add0~78\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \twentyCnt|ALT_INV_tempCount\(1),
	cin => \twentyCnt|Add0~78\,
	sumout => \twentyCnt|Add0~73_sumout\,
	cout => \twentyCnt|Add0~74\);

-- Location: FF_X57_Y3_N5
\twentyCnt|tempCount[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \twentyCnt|Add0~73_sumout\,
	sclr => \reset20Count~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \twentyCnt|tempCount\(1));

-- Location: LABCELL_X57_Y3_N6
\twentyCnt|Add0~69\ : cyclonev_lcell_comb
-- Equation(s):
-- \twentyCnt|Add0~69_sumout\ = SUM(( \twentyCnt|tempCount\(2) ) + ( GND ) + ( \twentyCnt|Add0~74\ ))
-- \twentyCnt|Add0~70\ = CARRY(( \twentyCnt|tempCount\(2) ) + ( GND ) + ( \twentyCnt|Add0~74\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \twentyCnt|ALT_INV_tempCount\(2),
	cin => \twentyCnt|Add0~74\,
	sumout => \twentyCnt|Add0~69_sumout\,
	cout => \twentyCnt|Add0~70\);

-- Location: FF_X57_Y3_N7
\twentyCnt|tempCount[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \twentyCnt|Add0~69_sumout\,
	sclr => \reset20Count~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \twentyCnt|tempCount\(2));

-- Location: LABCELL_X57_Y3_N9
\twentyCnt|Add0~65\ : cyclonev_lcell_comb
-- Equation(s):
-- \twentyCnt|Add0~65_sumout\ = SUM(( \twentyCnt|tempCount\(3) ) + ( GND ) + ( \twentyCnt|Add0~70\ ))
-- \twentyCnt|Add0~66\ = CARRY(( \twentyCnt|tempCount\(3) ) + ( GND ) + ( \twentyCnt|Add0~70\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \twentyCnt|ALT_INV_tempCount\(3),
	cin => \twentyCnt|Add0~70\,
	sumout => \twentyCnt|Add0~65_sumout\,
	cout => \twentyCnt|Add0~66\);

-- Location: FF_X57_Y3_N11
\twentyCnt|tempCount[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \twentyCnt|Add0~65_sumout\,
	sclr => \reset20Count~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \twentyCnt|tempCount\(3));

-- Location: LABCELL_X57_Y3_N12
\twentyCnt|Add0~61\ : cyclonev_lcell_comb
-- Equation(s):
-- \twentyCnt|Add0~61_sumout\ = SUM(( \twentyCnt|tempCount\(4) ) + ( GND ) + ( \twentyCnt|Add0~66\ ))
-- \twentyCnt|Add0~62\ = CARRY(( \twentyCnt|tempCount\(4) ) + ( GND ) + ( \twentyCnt|Add0~66\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \twentyCnt|ALT_INV_tempCount\(4),
	cin => \twentyCnt|Add0~66\,
	sumout => \twentyCnt|Add0~61_sumout\,
	cout => \twentyCnt|Add0~62\);

-- Location: FF_X57_Y3_N14
\twentyCnt|tempCount[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \twentyCnt|Add0~61_sumout\,
	sclr => \reset20Count~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \twentyCnt|tempCount\(4));

-- Location: LABCELL_X57_Y3_N15
\twentyCnt|Add0~57\ : cyclonev_lcell_comb
-- Equation(s):
-- \twentyCnt|Add0~57_sumout\ = SUM(( \twentyCnt|tempCount\(5) ) + ( GND ) + ( \twentyCnt|Add0~62\ ))
-- \twentyCnt|Add0~58\ = CARRY(( \twentyCnt|tempCount\(5) ) + ( GND ) + ( \twentyCnt|Add0~62\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \twentyCnt|ALT_INV_tempCount\(5),
	cin => \twentyCnt|Add0~62\,
	sumout => \twentyCnt|Add0~57_sumout\,
	cout => \twentyCnt|Add0~58\);

-- Location: FF_X57_Y3_N17
\twentyCnt|tempCount[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \twentyCnt|Add0~57_sumout\,
	sclr => \reset20Count~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \twentyCnt|tempCount\(5));

-- Location: LABCELL_X57_Y3_N18
\twentyCnt|Add0~53\ : cyclonev_lcell_comb
-- Equation(s):
-- \twentyCnt|Add0~53_sumout\ = SUM(( \twentyCnt|tempCount\(6) ) + ( GND ) + ( \twentyCnt|Add0~58\ ))
-- \twentyCnt|Add0~54\ = CARRY(( \twentyCnt|tempCount\(6) ) + ( GND ) + ( \twentyCnt|Add0~58\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \twentyCnt|ALT_INV_tempCount\(6),
	cin => \twentyCnt|Add0~58\,
	sumout => \twentyCnt|Add0~53_sumout\,
	cout => \twentyCnt|Add0~54\);

-- Location: FF_X57_Y3_N20
\twentyCnt|tempCount[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \twentyCnt|Add0~53_sumout\,
	sclr => \reset20Count~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \twentyCnt|tempCount\(6));

-- Location: LABCELL_X57_Y3_N21
\twentyCnt|Add0~49\ : cyclonev_lcell_comb
-- Equation(s):
-- \twentyCnt|Add0~49_sumout\ = SUM(( \twentyCnt|tempCount\(7) ) + ( GND ) + ( \twentyCnt|Add0~54\ ))
-- \twentyCnt|Add0~50\ = CARRY(( \twentyCnt|tempCount\(7) ) + ( GND ) + ( \twentyCnt|Add0~54\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \twentyCnt|ALT_INV_tempCount\(7),
	cin => \twentyCnt|Add0~54\,
	sumout => \twentyCnt|Add0~49_sumout\,
	cout => \twentyCnt|Add0~50\);

-- Location: FF_X57_Y3_N23
\twentyCnt|tempCount[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \twentyCnt|Add0~49_sumout\,
	sclr => \reset20Count~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \twentyCnt|tempCount\(7));

-- Location: LABCELL_X57_Y3_N24
\twentyCnt|Add0~45\ : cyclonev_lcell_comb
-- Equation(s):
-- \twentyCnt|Add0~45_sumout\ = SUM(( \twentyCnt|tempCount\(8) ) + ( GND ) + ( \twentyCnt|Add0~50\ ))
-- \twentyCnt|Add0~46\ = CARRY(( \twentyCnt|tempCount\(8) ) + ( GND ) + ( \twentyCnt|Add0~50\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \twentyCnt|ALT_INV_tempCount\(8),
	cin => \twentyCnt|Add0~50\,
	sumout => \twentyCnt|Add0~45_sumout\,
	cout => \twentyCnt|Add0~46\);

-- Location: FF_X57_Y3_N26
\twentyCnt|tempCount[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \twentyCnt|Add0~45_sumout\,
	sclr => \reset20Count~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \twentyCnt|tempCount\(8));

-- Location: LABCELL_X57_Y3_N27
\twentyCnt|Add0~41\ : cyclonev_lcell_comb
-- Equation(s):
-- \twentyCnt|Add0~41_sumout\ = SUM(( \twentyCnt|tempCount\(9) ) + ( GND ) + ( \twentyCnt|Add0~46\ ))
-- \twentyCnt|Add0~42\ = CARRY(( \twentyCnt|tempCount\(9) ) + ( GND ) + ( \twentyCnt|Add0~46\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \twentyCnt|ALT_INV_tempCount\(9),
	cin => \twentyCnt|Add0~46\,
	sumout => \twentyCnt|Add0~41_sumout\,
	cout => \twentyCnt|Add0~42\);

-- Location: FF_X57_Y3_N29
\twentyCnt|tempCount[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \twentyCnt|Add0~41_sumout\,
	sclr => \reset20Count~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \twentyCnt|tempCount\(9));

-- Location: LABCELL_X57_Y3_N30
\twentyCnt|Add0~37\ : cyclonev_lcell_comb
-- Equation(s):
-- \twentyCnt|Add0~37_sumout\ = SUM(( \twentyCnt|tempCount\(10) ) + ( GND ) + ( \twentyCnt|Add0~42\ ))
-- \twentyCnt|Add0~38\ = CARRY(( \twentyCnt|tempCount\(10) ) + ( GND ) + ( \twentyCnt|Add0~42\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \twentyCnt|ALT_INV_tempCount\(10),
	cin => \twentyCnt|Add0~42\,
	sumout => \twentyCnt|Add0~37_sumout\,
	cout => \twentyCnt|Add0~38\);

-- Location: FF_X57_Y3_N32
\twentyCnt|tempCount[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \twentyCnt|Add0~37_sumout\,
	sclr => \reset20Count~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \twentyCnt|tempCount\(10));

-- Location: LABCELL_X57_Y3_N33
\twentyCnt|Add0~33\ : cyclonev_lcell_comb
-- Equation(s):
-- \twentyCnt|Add0~33_sumout\ = SUM(( \twentyCnt|tempCount\(11) ) + ( GND ) + ( \twentyCnt|Add0~38\ ))
-- \twentyCnt|Add0~34\ = CARRY(( \twentyCnt|tempCount\(11) ) + ( GND ) + ( \twentyCnt|Add0~38\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \twentyCnt|ALT_INV_tempCount\(11),
	cin => \twentyCnt|Add0~38\,
	sumout => \twentyCnt|Add0~33_sumout\,
	cout => \twentyCnt|Add0~34\);

-- Location: FF_X57_Y3_N35
\twentyCnt|tempCount[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \twentyCnt|Add0~33_sumout\,
	sclr => \reset20Count~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \twentyCnt|tempCount\(11));

-- Location: LABCELL_X57_Y3_N36
\twentyCnt|Add0~29\ : cyclonev_lcell_comb
-- Equation(s):
-- \twentyCnt|Add0~29_sumout\ = SUM(( \twentyCnt|tempCount\(12) ) + ( GND ) + ( \twentyCnt|Add0~34\ ))
-- \twentyCnt|Add0~30\ = CARRY(( \twentyCnt|tempCount\(12) ) + ( GND ) + ( \twentyCnt|Add0~34\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \twentyCnt|ALT_INV_tempCount\(12),
	cin => \twentyCnt|Add0~34\,
	sumout => \twentyCnt|Add0~29_sumout\,
	cout => \twentyCnt|Add0~30\);

-- Location: FF_X57_Y3_N38
\twentyCnt|tempCount[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \twentyCnt|Add0~29_sumout\,
	sclr => \reset20Count~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \twentyCnt|tempCount\(12));

-- Location: LABCELL_X57_Y3_N39
\twentyCnt|Add0~25\ : cyclonev_lcell_comb
-- Equation(s):
-- \twentyCnt|Add0~25_sumout\ = SUM(( \twentyCnt|tempCount\(13) ) + ( GND ) + ( \twentyCnt|Add0~30\ ))
-- \twentyCnt|Add0~26\ = CARRY(( \twentyCnt|tempCount\(13) ) + ( GND ) + ( \twentyCnt|Add0~30\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \twentyCnt|ALT_INV_tempCount\(13),
	cin => \twentyCnt|Add0~30\,
	sumout => \twentyCnt|Add0~25_sumout\,
	cout => \twentyCnt|Add0~26\);

-- Location: FF_X57_Y3_N41
\twentyCnt|tempCount[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \twentyCnt|Add0~25_sumout\,
	sclr => \reset20Count~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \twentyCnt|tempCount\(13));

-- Location: LABCELL_X57_Y3_N42
\twentyCnt|Add0~21\ : cyclonev_lcell_comb
-- Equation(s):
-- \twentyCnt|Add0~21_sumout\ = SUM(( \twentyCnt|tempCount\(14) ) + ( GND ) + ( \twentyCnt|Add0~26\ ))
-- \twentyCnt|Add0~22\ = CARRY(( \twentyCnt|tempCount\(14) ) + ( GND ) + ( \twentyCnt|Add0~26\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \twentyCnt|ALT_INV_tempCount\(14),
	cin => \twentyCnt|Add0~26\,
	sumout => \twentyCnt|Add0~21_sumout\,
	cout => \twentyCnt|Add0~22\);

-- Location: FF_X57_Y3_N43
\twentyCnt|tempCount[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \twentyCnt|Add0~21_sumout\,
	sclr => \reset20Count~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \twentyCnt|tempCount\(14));

-- Location: LABCELL_X57_Y3_N45
\twentyCnt|Add0~17\ : cyclonev_lcell_comb
-- Equation(s):
-- \twentyCnt|Add0~17_sumout\ = SUM(( \twentyCnt|tempCount\(15) ) + ( GND ) + ( \twentyCnt|Add0~22\ ))
-- \twentyCnt|Add0~18\ = CARRY(( \twentyCnt|tempCount\(15) ) + ( GND ) + ( \twentyCnt|Add0~22\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \twentyCnt|ALT_INV_tempCount\(15),
	cin => \twentyCnt|Add0~22\,
	sumout => \twentyCnt|Add0~17_sumout\,
	cout => \twentyCnt|Add0~18\);

-- Location: FF_X57_Y3_N47
\twentyCnt|tempCount[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \twentyCnt|Add0~17_sumout\,
	sclr => \reset20Count~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \twentyCnt|tempCount\(15));

-- Location: LABCELL_X57_Y3_N48
\twentyCnt|Add0~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \twentyCnt|Add0~9_sumout\ = SUM(( \twentyCnt|tempCount\(16) ) + ( GND ) + ( \twentyCnt|Add0~18\ ))
-- \twentyCnt|Add0~10\ = CARRY(( \twentyCnt|tempCount\(16) ) + ( GND ) + ( \twentyCnt|Add0~18\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \twentyCnt|ALT_INV_tempCount\(16),
	cin => \twentyCnt|Add0~18\,
	sumout => \twentyCnt|Add0~9_sumout\,
	cout => \twentyCnt|Add0~10\);

-- Location: FF_X57_Y3_N50
\twentyCnt|tempCount[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \twentyCnt|Add0~9_sumout\,
	sclr => \reset20Count~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \twentyCnt|tempCount\(16));

-- Location: LABCELL_X57_Y3_N51
\twentyCnt|Add0~13\ : cyclonev_lcell_comb
-- Equation(s):
-- \twentyCnt|Add0~13_sumout\ = SUM(( \twentyCnt|tempCount\(17) ) + ( GND ) + ( \twentyCnt|Add0~10\ ))
-- \twentyCnt|Add0~14\ = CARRY(( \twentyCnt|tempCount\(17) ) + ( GND ) + ( \twentyCnt|Add0~10\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \twentyCnt|ALT_INV_tempCount\(17),
	cin => \twentyCnt|Add0~10\,
	sumout => \twentyCnt|Add0~13_sumout\,
	cout => \twentyCnt|Add0~14\);

-- Location: FF_X57_Y3_N53
\twentyCnt|tempCount[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \twentyCnt|Add0~13_sumout\,
	sclr => \reset20Count~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \twentyCnt|tempCount\(17));

-- Location: LABCELL_X57_Y3_N54
\twentyCnt|Add0~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \twentyCnt|Add0~5_sumout\ = SUM(( \twentyCnt|tempCount\(18) ) + ( GND ) + ( \twentyCnt|Add0~14\ ))
-- \twentyCnt|Add0~6\ = CARRY(( \twentyCnt|tempCount\(18) ) + ( GND ) + ( \twentyCnt|Add0~14\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \twentyCnt|ALT_INV_tempCount\(18),
	cin => \twentyCnt|Add0~14\,
	sumout => \twentyCnt|Add0~5_sumout\,
	cout => \twentyCnt|Add0~6\);

-- Location: FF_X57_Y3_N56
\twentyCnt|tempCount[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \twentyCnt|Add0~5_sumout\,
	sclr => \reset20Count~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \twentyCnt|tempCount\(18));

-- Location: LABCELL_X57_Y3_N57
\twentyCnt|Add0~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \twentyCnt|Add0~1_sumout\ = SUM(( \twentyCnt|tempCount\(19) ) + ( GND ) + ( \twentyCnt|Add0~6\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \twentyCnt|ALT_INV_tempCount\(19),
	cin => \twentyCnt|Add0~6\,
	sumout => \twentyCnt|Add0~1_sumout\);

-- Location: FF_X57_Y3_N59
\twentyCnt|tempCount[19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \twentyCnt|Add0~1_sumout\,
	sclr => \reset20Count~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \twentyCnt|tempCount\(19));

-- Location: LABCELL_X56_Y3_N39
clk_50 : cyclonev_lcell_comb
-- Equation(s):
-- \clk_50~combout\ = LCELL(( \twentyCnt|tempCount\(19) & ( (\twentyCnt|tempCount\(17) & (\twentyCnt|tempCount\(16) & \twentyCnt|tempCount\(18))) ) ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000001010000000000000101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \twentyCnt|ALT_INV_tempCount\(17),
	datac => \twentyCnt|ALT_INV_tempCount\(16),
	datad => \twentyCnt|ALT_INV_tempCount\(18),
	dataf => \twentyCnt|ALT_INV_tempCount\(19),
	combout => \clk_50~combout\);

-- Location: LABCELL_X56_Y3_N30
\shiftReg|regval[0]~_wirecell\ : cyclonev_lcell_comb
-- Equation(s):
-- \shiftReg|regval[0]~_wirecell_combout\ = ( !\shiftReg|regval\(0) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111111111111111111111111100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \shiftReg|ALT_INV_regval\(0),
	combout => \shiftReg|regval[0]~_wirecell_combout\);

-- Location: LABCELL_X55_Y3_N21
\fourCnt|tempCount~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \fourCnt|tempCount~0_combout\ = ( !\fourCnt|tempCount\(0) & ( \KEY[0]~input_o\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101000000000000000001010101010101010000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_KEY[0]~input_o\,
	datae => \fourCnt|ALT_INV_tempCount\(0),
	combout => \fourCnt|tempCount~0_combout\);

-- Location: FF_X56_Y3_N47
\fourCnt|tempCount[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50~combout\,
	asdata => \fourCnt|tempCount~0_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fourCnt|tempCount\(0));

-- Location: LABCELL_X55_Y3_N12
\resetCount~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \resetCount~0_combout\ = ( \fourCnt|tempCount\(0) & ( \fourCnt|tempCount\(3) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000001111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datae => \fourCnt|ALT_INV_tempCount\(0),
	dataf => \fourCnt|ALT_INV_tempCount\(3),
	combout => \resetCount~0_combout\);

-- Location: LABCELL_X56_Y3_N42
\fourCnt|tempCount~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \fourCnt|tempCount~3_combout\ = ( \clk_50~combout\ & ( \shiftReg|Mux9~1_combout\ & ( (\KEY[0]~input_o\ & (!\fourCnt|tempCount\(0) $ (!\fourCnt|tempCount\(1)))) ) ) ) # ( !\clk_50~combout\ & ( \shiftReg|Mux9~1_combout\ & ( (\KEY[0]~input_o\ & 
-- (!\fourCnt|tempCount\(0) $ (!\fourCnt|tempCount\(1)))) ) ) ) # ( \clk_50~combout\ & ( !\shiftReg|Mux9~1_combout\ & ( (\KEY[0]~input_o\ & ((!\fourCnt|tempCount\(0) & ((\fourCnt|tempCount\(1)))) # (\fourCnt|tempCount\(0) & (!\fourCnt|tempCount\(3) & 
-- !\fourCnt|tempCount\(1))))) ) ) ) # ( !\clk_50~combout\ & ( !\shiftReg|Mux9~1_combout\ & ( (\KEY[0]~input_o\ & (!\fourCnt|tempCount\(0) $ (!\fourCnt|tempCount\(1)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001100001100000000100000110000000011000011000000001100001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \fourCnt|ALT_INV_tempCount\(3),
	datab => \fourCnt|ALT_INV_tempCount\(0),
	datac => \ALT_INV_KEY[0]~input_o\,
	datad => \fourCnt|ALT_INV_tempCount\(1),
	datae => \ALT_INV_clk_50~combout\,
	dataf => \shiftReg|ALT_INV_Mux9~1_combout\,
	combout => \fourCnt|tempCount~3_combout\);

-- Location: FF_X56_Y3_N11
\fourCnt|tempCount[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50~combout\,
	asdata => \fourCnt|tempCount~3_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fourCnt|tempCount\(1));

-- Location: LABCELL_X55_Y3_N0
\fourCnt|Add0~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \fourCnt|Add0~1_combout\ = ( \fourCnt|tempCount\(0) & ( \fourCnt|tempCount\(1) & ( !\fourCnt|tempCount\(2) ) ) ) # ( !\fourCnt|tempCount\(0) & ( \fourCnt|tempCount\(1) & ( \fourCnt|tempCount\(2) ) ) ) # ( \fourCnt|tempCount\(0) & ( !\fourCnt|tempCount\(1) 
-- & ( \fourCnt|tempCount\(2) ) ) ) # ( !\fourCnt|tempCount\(0) & ( !\fourCnt|tempCount\(1) & ( \fourCnt|tempCount\(2) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111000011110000111100001111000011111111000011110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \fourCnt|ALT_INV_tempCount\(2),
	datae => \fourCnt|ALT_INV_tempCount\(0),
	dataf => \fourCnt|ALT_INV_tempCount\(1),
	combout => \fourCnt|Add0~1_combout\);

-- Location: LABCELL_X56_Y3_N21
\fourCnt|tempCount~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \fourCnt|tempCount~2_combout\ = ( \fourCnt|Add0~1_combout\ & ( \KEY[0]~input_o\ & ( (!\clk_50~combout\) # ((!\resetCount~0_combout\) # (!\s1~combout\ $ (\s0~combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000001111111011111101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_s1~combout\,
	datab => \ALT_INV_clk_50~combout\,
	datac => \ALT_INV_resetCount~0_combout\,
	datad => \ALT_INV_s0~combout\,
	datae => \fourCnt|ALT_INV_Add0~1_combout\,
	dataf => \ALT_INV_KEY[0]~input_o\,
	combout => \fourCnt|tempCount~2_combout\);

-- Location: FF_X56_Y3_N23
\fourCnt|tempCount[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50~combout\,
	d => \fourCnt|tempCount~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fourCnt|tempCount\(2));

-- Location: LABCELL_X55_Y3_N57
\fourCnt|Add0~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \fourCnt|Add0~0_combout\ = ( \fourCnt|tempCount\(0) & ( \fourCnt|tempCount\(3) & ( (!\fourCnt|tempCount\(1)) # (!\fourCnt|tempCount\(2)) ) ) ) # ( !\fourCnt|tempCount\(0) & ( \fourCnt|tempCount\(3) ) ) # ( \fourCnt|tempCount\(0) & ( 
-- !\fourCnt|tempCount\(3) & ( (\fourCnt|tempCount\(1) & \fourCnt|tempCount\(2)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000101010111111111111111111111111110101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \fourCnt|ALT_INV_tempCount\(1),
	datad => \fourCnt|ALT_INV_tempCount\(2),
	datae => \fourCnt|ALT_INV_tempCount\(0),
	dataf => \fourCnt|ALT_INV_tempCount\(3),
	combout => \fourCnt|Add0~0_combout\);

-- Location: LABCELL_X56_Y3_N18
\fourCnt|tempCount~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \fourCnt|tempCount~1_combout\ = ( \KEY[0]~input_o\ & ( \fourCnt|Add0~0_combout\ & ( (!\clk_50~combout\) # ((!\resetCount~0_combout\) # (!\s1~combout\ $ (\s0~combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000001111111111101101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_s1~combout\,
	datab => \ALT_INV_clk_50~combout\,
	datac => \ALT_INV_s0~combout\,
	datad => \ALT_INV_resetCount~0_combout\,
	datae => \ALT_INV_KEY[0]~input_o\,
	dataf => \fourCnt|ALT_INV_Add0~0_combout\,
	combout => \fourCnt|tempCount~1_combout\);

-- Location: FF_X56_Y3_N20
\fourCnt|tempCount[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50~combout\,
	d => \fourCnt|tempCount~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fourCnt|tempCount\(3));

-- Location: LABCELL_X56_Y3_N3
\s1~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \s1~0_combout\ = ( \fourCnt|tempCount\(3) & ( (\clk_50~combout\ & ((!\s0~combout\ $ (\s1~combout\)) # (\fourCnt|tempCount\(0)))) ) ) # ( !\fourCnt|tempCount\(3) & ( (\clk_50~combout\ & (!\s0~combout\ $ (\s1~combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000100100001001000010010000100100001001000011110000100100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_s0~combout\,
	datab => \ALT_INV_s1~combout\,
	datac => \ALT_INV_clk_50~combout\,
	datad => \fourCnt|ALT_INV_tempCount\(0),
	dataf => \fourCnt|ALT_INV_tempCount\(3),
	combout => \s1~0_combout\);

-- Location: LABCELL_X56_Y3_N33
s0 : cyclonev_lcell_comb
-- Equation(s):
-- \s0~combout\ = ( \s0~combout\ & ( (!\KEY[0]~input_o\) # ((!\Mux1~0_combout\) # (!\s1~0_combout\)) ) ) # ( !\s0~combout\ & ( (!\KEY[0]~input_o\) # ((!\Mux1~0_combout\ & \s1~0_combout\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1010101011101110101010101110111011111111111011101111111111101110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_KEY[0]~input_o\,
	datab => \ALT_INV_Mux1~0_combout\,
	datad => \ALT_INV_s1~0_combout\,
	dataf => \ALT_INV_s0~combout\,
	combout => \s0~combout\);

-- Location: LABCELL_X55_Y3_N48
\Mux1~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux1~0_combout\ = ( \s1~combout\ & ( \s0~combout\ ) ) # ( !\s1~combout\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111111111111111111111111101010101010101010101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_s0~combout\,
	dataf => \ALT_INV_s1~combout\,
	combout => \Mux1~0_combout\);

-- Location: LABCELL_X56_Y3_N48
s1 : cyclonev_lcell_comb
-- Equation(s):
-- \s1~combout\ = ( \s1~combout\ & ( (\KEY[0]~input_o\ & ((!\s1~0_combout\) # (\Mux1~0_combout\))) ) ) # ( !\s1~combout\ & ( (\Mux1~0_combout\ & (\s1~0_combout\ & \KEY[0]~input_o\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000011000000000000001100000000111100110000000011110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_Mux1~0_combout\,
	datac => \ALT_INV_s1~0_combout\,
	datad => \ALT_INV_KEY[0]~input_o\,
	dataf => \ALT_INV_s1~combout\,
	combout => \s1~combout\);

-- Location: LABCELL_X56_Y3_N24
\shiftReg|Mux9~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \shiftReg|Mux9~1_combout\ = ( \s0~combout\ & ( \s1~combout\ ) ) # ( !\s0~combout\ & ( !\s1~combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111000011110000111100001111000000001111000011110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_s1~combout\,
	dataf => \ALT_INV_s0~combout\,
	combout => \shiftReg|Mux9~1_combout\);

-- Location: FF_X56_Y3_N32
\shiftReg|regval[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50~combout\,
	d => \shiftReg|regval[0]~_wirecell_combout\,
	asdata => \shiftReg|regval\(2),
	clrn => \KEY[0]~input_o\,
	sclr => \shiftReg|Mux9~1_combout\,
	sload => \ALT_INV_s0~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \shiftReg|regval\(1));

-- Location: LABCELL_X56_Y3_N51
\shiftReg|regval[2]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \shiftReg|regval[2]~feeder_combout\ = \shiftReg|regval\(1)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101010101010101010101010101010101010101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \shiftReg|ALT_INV_regval\(1),
	combout => \shiftReg|regval[2]~feeder_combout\);

-- Location: FF_X56_Y3_N52
\shiftReg|regval[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50~combout\,
	d => \shiftReg|regval[2]~feeder_combout\,
	asdata => \shiftReg|regval\(3),
	clrn => \KEY[0]~input_o\,
	sclr => \shiftReg|Mux9~1_combout\,
	sload => \ALT_INV_s0~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \shiftReg|regval\(2));

-- Location: LABCELL_X56_Y3_N27
\shiftReg|regval[3]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \shiftReg|regval[3]~feeder_combout\ = \shiftReg|regval\(2)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001100110011001100110011001100110011001100110011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \shiftReg|ALT_INV_regval\(2),
	combout => \shiftReg|regval[3]~feeder_combout\);

-- Location: FF_X56_Y3_N28
\shiftReg|regval[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50~combout\,
	d => \shiftReg|regval[3]~feeder_combout\,
	asdata => \shiftReg|regval\(4),
	clrn => \KEY[0]~input_o\,
	sclr => \shiftReg|Mux9~1_combout\,
	sload => \ALT_INV_s0~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \shiftReg|regval\(3));

-- Location: LABCELL_X56_Y3_N0
\shiftReg|regval[4]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \shiftReg|regval[4]~feeder_combout\ = \shiftReg|regval\(3)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111000011110000111100001111000011110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \shiftReg|ALT_INV_regval\(3),
	combout => \shiftReg|regval[4]~feeder_combout\);

-- Location: FF_X56_Y3_N13
\shiftReg|regval[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50~combout\,
	d => \shiftReg|regval[5]~feeder_combout\,
	asdata => \shiftReg|regval\(6),
	clrn => \KEY[0]~input_o\,
	sclr => \shiftReg|Mux9~1_combout\,
	sload => \ALT_INV_s0~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \shiftReg|regval\(5));

-- Location: FF_X56_Y3_N2
\shiftReg|regval[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50~combout\,
	d => \shiftReg|regval[4]~feeder_combout\,
	asdata => \shiftReg|regval\(5),
	clrn => \KEY[0]~input_o\,
	sclr => \shiftReg|Mux9~1_combout\,
	sload => \ALT_INV_s0~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \shiftReg|regval\(4));

-- Location: LABCELL_X56_Y3_N12
\shiftReg|regval[5]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \shiftReg|regval[5]~feeder_combout\ = \shiftReg|regval\(4)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101010101010101010101010101010101010101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \shiftReg|ALT_INV_regval\(4),
	combout => \shiftReg|regval[5]~feeder_combout\);

-- Location: FF_X56_Y3_N14
\shiftReg|regval[5]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50~combout\,
	d => \shiftReg|regval[5]~feeder_combout\,
	asdata => \shiftReg|regval\(6),
	clrn => \KEY[0]~input_o\,
	sclr => \shiftReg|Mux9~1_combout\,
	sload => \ALT_INV_s0~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \shiftReg|regval[5]~DUPLICATE_q\);

-- Location: LABCELL_X56_Y3_N15
\shiftReg|regval[6]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \shiftReg|regval[6]~feeder_combout\ = ( \shiftReg|regval[5]~DUPLICATE_q\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \shiftReg|ALT_INV_regval[5]~DUPLICATE_q\,
	combout => \shiftReg|regval[6]~feeder_combout\);

-- Location: FF_X56_Y3_N16
\shiftReg|regval[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50~combout\,
	d => \shiftReg|regval[6]~feeder_combout\,
	asdata => \shiftReg|regval\(7),
	clrn => \KEY[0]~input_o\,
	sclr => \shiftReg|Mux9~1_combout\,
	sload => \ALT_INV_s0~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \shiftReg|regval\(6));

-- Location: LABCELL_X56_Y3_N54
\shiftReg|regval[7]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \shiftReg|regval[7]~feeder_combout\ = \shiftReg|regval\(6)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001100110011001100110011001100110011001100110011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \shiftReg|ALT_INV_regval\(6),
	combout => \shiftReg|regval[7]~feeder_combout\);

-- Location: FF_X56_Y3_N55
\shiftReg|regval[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50~combout\,
	d => \shiftReg|regval[7]~feeder_combout\,
	asdata => \shiftReg|regval\(8),
	clrn => \KEY[0]~input_o\,
	sclr => \shiftReg|Mux9~1_combout\,
	sload => \ALT_INV_s0~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \shiftReg|regval\(7));

-- Location: LABCELL_X56_Y3_N57
\shiftReg|regval[8]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \shiftReg|regval[8]~feeder_combout\ = ( \shiftReg|regval\(7) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \shiftReg|ALT_INV_regval\(7),
	combout => \shiftReg|regval[8]~feeder_combout\);

-- Location: FF_X56_Y3_N58
\shiftReg|regval[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50~combout\,
	d => \shiftReg|regval[8]~feeder_combout\,
	asdata => \shiftReg|regval\(9),
	clrn => \KEY[0]~input_o\,
	sclr => \shiftReg|Mux9~1_combout\,
	sload => \ALT_INV_s0~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \shiftReg|regval\(8));

-- Location: LABCELL_X56_Y3_N36
\shiftReg|regval[9]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \shiftReg|regval[9]~feeder_combout\ = ( \shiftReg|regval\(8) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \shiftReg|ALT_INV_regval\(8),
	combout => \shiftReg|regval[9]~feeder_combout\);

-- Location: FF_X56_Y3_N38
\shiftReg|regval[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50~combout\,
	d => \shiftReg|regval[9]~feeder_combout\,
	asdata => \shiftReg|regval[0]~_wirecell_combout\,
	clrn => \KEY[0]~input_o\,
	sclr => \shiftReg|Mux9~1_combout\,
	sload => \ALT_INV_s0~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \shiftReg|regval\(9));

-- Location: LABCELL_X56_Y3_N6
\shiftReg|Mux9~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \shiftReg|Mux9~0_combout\ = ( \s0~combout\ & ( (!\shiftReg|regval\(9) & !\s1~combout\) ) ) # ( !\s0~combout\ & ( (!\shiftReg|regval\(1) & \s1~combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000110000001100000011000000110010100000101000001010000010100000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \shiftReg|ALT_INV_regval\(9),
	datab => \shiftReg|ALT_INV_regval\(1),
	datac => \ALT_INV_s1~combout\,
	dataf => \ALT_INV_s0~combout\,
	combout => \shiftReg|Mux9~0_combout\);

-- Location: FF_X56_Y3_N50
\shiftReg|regval[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50~combout\,
	asdata => \shiftReg|Mux9~0_combout\,
	clrn => \KEY[0]~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \shiftReg|regval\(0));

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

-- Location: LABCELL_X12_Y57_N0
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


