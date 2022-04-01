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

-- DATE "03/10/2022 17:33:00"

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
	LEDR : OUT std_logic_vector(9 DOWNTO 0)
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
-- CLOCK_50	=>  Location: PIN_AF14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- KEY[0]	=>  Location: PIN_AA14,	 I/O Standard: 2.5 V,	 Current Strength: Default


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
SIGNAL \KEY[0]~input_o\ : std_logic;
SIGNAL \shiftReg|regval[0]~_wirecell_combout\ : std_logic;
SIGNAL \shiftReg|regval[1]~feeder_combout\ : std_logic;
SIGNAL \shiftReg|regval[2]~feeder_combout\ : std_logic;
SIGNAL \shiftReg|regval[3]~feeder_combout\ : std_logic;
SIGNAL \shiftReg|regval[4]~feeder_combout\ : std_logic;
SIGNAL \shiftReg|regval[5]~feeder_combout\ : std_logic;
SIGNAL \shiftReg|regval[6]~feeder_combout\ : std_logic;
SIGNAL \shiftReg|regval[7]~feeder_combout\ : std_logic;
SIGNAL \shiftReg|regval[8]~feeder_combout\ : std_logic;
SIGNAL \shiftReg|regval[9]~feeder_combout\ : std_logic;
SIGNAL \fourCnt|tempCount~3_combout\ : std_logic;
SIGNAL \fourCnt|tempCount[3]~DUPLICATE_q\ : std_logic;
SIGNAL \fourCnt|tempCount[0]~DUPLICATE_q\ : std_logic;
SIGNAL \clk_10~combout\ : std_logic;
SIGNAL \resetCount~q\ : std_logic;
SIGNAL \fourCnt|tempCount~0_combout\ : std_logic;
SIGNAL \fourCnt|tempCount~1_combout\ : std_logic;
SIGNAL \fourCnt|tempCount[1]~DUPLICATE_q\ : std_logic;
SIGNAL \fourCnt|tempCount~2_combout\ : std_logic;
SIGNAL \fourCnt|tempCount[2]~DUPLICATE_q\ : std_logic;
SIGNAL \s0~0_combout\ : std_logic;
SIGNAL \s0~q\ : std_logic;
SIGNAL \shiftReg|regval[8]~DUPLICATE_q\ : std_logic;
SIGNAL \shiftReg|regval[7]~DUPLICATE_q\ : std_logic;
SIGNAL \shiftReg|regval[2]~DUPLICATE_q\ : std_logic;
SIGNAL \shiftReg|regval[1]~DUPLICATE_q\ : std_logic;
SIGNAL \shiftReg|Mux9~0_combout\ : std_logic;
SIGNAL \shiftReg|regval[0]~DUPLICATE_q\ : std_logic;
SIGNAL \shiftReg|regval\ : std_logic_vector(9 DOWNTO 0);
SIGNAL \fourCnt|tempCount\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \fourCnt|ALT_INV_tempCount[3]~DUPLICATE_q\ : std_logic;
SIGNAL \fourCnt|ALT_INV_tempCount[2]~DUPLICATE_q\ : std_logic;
SIGNAL \fourCnt|ALT_INV_tempCount[1]~DUPLICATE_q\ : std_logic;
SIGNAL \fourCnt|ALT_INV_tempCount[0]~DUPLICATE_q\ : std_logic;
SIGNAL \shiftReg|ALT_INV_regval[0]~DUPLICATE_q\ : std_logic;
SIGNAL \shiftReg|ALT_INV_regval[8]~DUPLICATE_q\ : std_logic;
SIGNAL \shiftReg|ALT_INV_regval[7]~DUPLICATE_q\ : std_logic;
SIGNAL \shiftReg|ALT_INV_regval[2]~DUPLICATE_q\ : std_logic;
SIGNAL \shiftReg|ALT_INV_regval[1]~DUPLICATE_q\ : std_logic;
SIGNAL \shiftReg|ALT_INV_regval[0]~_wirecell_combout\ : std_logic;
SIGNAL \ALT_INV_resetCount~q\ : std_logic;
SIGNAL \fourCnt|ALT_INV_tempCount\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \ALT_INV_s0~q\ : std_logic;
SIGNAL \shiftReg|ALT_INV_regval\ : std_logic_vector(9 DOWNTO 0);

BEGIN

ww_CLOCK_50 <= CLOCK_50;
ww_KEY <= KEY;
LEDR <= ww_LEDR;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;
\fourCnt|ALT_INV_tempCount[3]~DUPLICATE_q\ <= NOT \fourCnt|tempCount[3]~DUPLICATE_q\;
\fourCnt|ALT_INV_tempCount[2]~DUPLICATE_q\ <= NOT \fourCnt|tempCount[2]~DUPLICATE_q\;
\fourCnt|ALT_INV_tempCount[1]~DUPLICATE_q\ <= NOT \fourCnt|tempCount[1]~DUPLICATE_q\;
\fourCnt|ALT_INV_tempCount[0]~DUPLICATE_q\ <= NOT \fourCnt|tempCount[0]~DUPLICATE_q\;
\shiftReg|ALT_INV_regval[0]~DUPLICATE_q\ <= NOT \shiftReg|regval[0]~DUPLICATE_q\;
\shiftReg|ALT_INV_regval[8]~DUPLICATE_q\ <= NOT \shiftReg|regval[8]~DUPLICATE_q\;
\shiftReg|ALT_INV_regval[7]~DUPLICATE_q\ <= NOT \shiftReg|regval[7]~DUPLICATE_q\;
\shiftReg|ALT_INV_regval[2]~DUPLICATE_q\ <= NOT \shiftReg|regval[2]~DUPLICATE_q\;
\shiftReg|ALT_INV_regval[1]~DUPLICATE_q\ <= NOT \shiftReg|regval[1]~DUPLICATE_q\;
\shiftReg|ALT_INV_regval[0]~_wirecell_combout\ <= NOT \shiftReg|regval[0]~_wirecell_combout\;
\ALT_INV_resetCount~q\ <= NOT \resetCount~q\;
\fourCnt|ALT_INV_tempCount\(3) <= NOT \fourCnt|tempCount\(3);
\fourCnt|ALT_INV_tempCount\(2) <= NOT \fourCnt|tempCount\(2);
\fourCnt|ALT_INV_tempCount\(1) <= NOT \fourCnt|tempCount\(1);
\fourCnt|ALT_INV_tempCount\(0) <= NOT \fourCnt|tempCount\(0);
\ALT_INV_s0~q\ <= NOT \s0~q\;
\shiftReg|ALT_INV_regval\(0) <= NOT \shiftReg|regval\(0);
\shiftReg|ALT_INV_regval\(9) <= NOT \shiftReg|regval\(9);
\shiftReg|ALT_INV_regval\(6) <= NOT \shiftReg|regval\(6);
\shiftReg|ALT_INV_regval\(5) <= NOT \shiftReg|regval\(5);
\shiftReg|ALT_INV_regval\(4) <= NOT \shiftReg|regval\(4);
\shiftReg|ALT_INV_regval\(3) <= NOT \shiftReg|regval\(3);

-- Location: IOOBUF_X52_Y0_N2
\LEDR[0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \shiftReg|ALT_INV_regval[0]~DUPLICATE_q\,
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
	i => \shiftReg|regval\(5),
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

-- Location: FF_X80_Y2_N11
\shiftReg|regval[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \shiftReg|Mux9~0_combout\,
	clrn => \KEY[0]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \shiftReg|regval\(0));

-- Location: LABCELL_X80_Y2_N12
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

-- Location: LABCELL_X80_Y2_N45
\shiftReg|regval[1]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \shiftReg|regval[1]~feeder_combout\ = ( \shiftReg|regval[0]~_wirecell_combout\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \shiftReg|ALT_INV_regval[0]~_wirecell_combout\,
	combout => \shiftReg|regval[1]~feeder_combout\);

-- Location: LABCELL_X80_Y2_N6
\shiftReg|regval[2]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \shiftReg|regval[2]~feeder_combout\ = \shiftReg|regval[1]~DUPLICATE_q\

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001100110011001100110011001100110011001100110011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \shiftReg|ALT_INV_regval[1]~DUPLICATE_q\,
	combout => \shiftReg|regval[2]~feeder_combout\);

-- Location: LABCELL_X80_Y2_N39
\shiftReg|regval[3]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \shiftReg|regval[3]~feeder_combout\ = ( \shiftReg|regval[2]~DUPLICATE_q\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \shiftReg|ALT_INV_regval[2]~DUPLICATE_q\,
	combout => \shiftReg|regval[3]~feeder_combout\);

-- Location: LABCELL_X80_Y2_N42
\shiftReg|regval[4]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \shiftReg|regval[4]~feeder_combout\ = \shiftReg|regval\(3)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001100110011001100110011001100110011001100110011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \shiftReg|ALT_INV_regval\(3),
	combout => \shiftReg|regval[4]~feeder_combout\);

-- Location: LABCELL_X80_Y2_N15
\shiftReg|regval[5]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \shiftReg|regval[5]~feeder_combout\ = \shiftReg|regval\(4)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111000011110000111100001111000011110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \shiftReg|ALT_INV_regval\(4),
	combout => \shiftReg|regval[5]~feeder_combout\);

-- Location: LABCELL_X80_Y2_N18
\shiftReg|regval[6]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \shiftReg|regval[6]~feeder_combout\ = ( \shiftReg|regval\(5) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \shiftReg|ALT_INV_regval\(5),
	combout => \shiftReg|regval[6]~feeder_combout\);

-- Location: LABCELL_X80_Y2_N0
\shiftReg|regval[7]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \shiftReg|regval[7]~feeder_combout\ = \shiftReg|regval\(6)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111000011110000111100001111000011110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \shiftReg|ALT_INV_regval\(6),
	combout => \shiftReg|regval[7]~feeder_combout\);

-- Location: LABCELL_X80_Y2_N3
\shiftReg|regval[8]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \shiftReg|regval[8]~feeder_combout\ = \shiftReg|regval[7]~DUPLICATE_q\

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011111111000000001111111100000000111111110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \shiftReg|ALT_INV_regval[7]~DUPLICATE_q\,
	combout => \shiftReg|regval[8]~feeder_combout\);

-- Location: LABCELL_X80_Y2_N30
\shiftReg|regval[9]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \shiftReg|regval[9]~feeder_combout\ = \shiftReg|regval[8]~DUPLICATE_q\

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011111111000000001111111100000000111111110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \shiftReg|ALT_INV_regval[8]~DUPLICATE_q\,
	combout => \shiftReg|regval[9]~feeder_combout\);

-- Location: FF_X80_Y2_N55
\fourCnt|tempCount[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \fourCnt|tempCount~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fourCnt|tempCount\(3));

-- Location: FF_X80_Y2_N28
\fourCnt|tempCount[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \fourCnt|tempCount~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fourCnt|tempCount\(2));

-- Location: LABCELL_X80_Y2_N54
\fourCnt|tempCount~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \fourCnt|tempCount~3_combout\ = ( \fourCnt|tempCount\(3) & ( \fourCnt|tempCount\(2) & ( (\resetCount~q\ & ((!\fourCnt|tempCount\(0)) # (!\fourCnt|tempCount[1]~DUPLICATE_q\))) ) ) ) # ( !\fourCnt|tempCount\(3) & ( \fourCnt|tempCount\(2) & ( 
-- (\fourCnt|tempCount\(0) & (\resetCount~q\ & \fourCnt|tempCount[1]~DUPLICATE_q\)) ) ) ) # ( \fourCnt|tempCount\(3) & ( !\fourCnt|tempCount\(2) & ( \resetCount~q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000001100110011001100000001000000010011001000110010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \fourCnt|ALT_INV_tempCount\(0),
	datab => \ALT_INV_resetCount~q\,
	datac => \fourCnt|ALT_INV_tempCount[1]~DUPLICATE_q\,
	datae => \fourCnt|ALT_INV_tempCount\(3),
	dataf => \fourCnt|ALT_INV_tempCount\(2),
	combout => \fourCnt|tempCount~3_combout\);

-- Location: FF_X80_Y2_N56
\fourCnt|tempCount[3]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \fourCnt|tempCount~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fourCnt|tempCount[3]~DUPLICATE_q\);

-- Location: FF_X80_Y2_N52
\fourCnt|tempCount[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \fourCnt|tempCount~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fourCnt|tempCount\(1));

-- Location: FF_X80_Y2_N25
\fourCnt|tempCount[0]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \fourCnt|tempCount~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fourCnt|tempCount[0]~DUPLICATE_q\);

-- Location: LABCELL_X80_Y2_N21
clk_10 : cyclonev_lcell_comb
-- Equation(s):
-- \clk_10~combout\ = ( \fourCnt|tempCount[0]~DUPLICATE_q\ & ( (!\fourCnt|tempCount[3]~DUPLICATE_q\) # ((\fourCnt|tempCount[2]~DUPLICATE_q\) # (\fourCnt|tempCount\(1))) ) ) # ( !\fourCnt|tempCount[0]~DUPLICATE_q\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111111111111111111111111110101111111111111010111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \fourCnt|ALT_INV_tempCount[3]~DUPLICATE_q\,
	datac => \fourCnt|ALT_INV_tempCount\(1),
	datad => \fourCnt|ALT_INV_tempCount[2]~DUPLICATE_q\,
	dataf => \fourCnt|ALT_INV_tempCount[0]~DUPLICATE_q\,
	combout => \clk_10~combout\);

-- Location: FF_X80_Y2_N22
resetCount : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \clk_10~combout\,
	clrn => \KEY[0]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \resetCount~q\);

-- Location: LABCELL_X80_Y2_N24
\fourCnt|tempCount~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \fourCnt|tempCount~0_combout\ = ( \resetCount~q\ & ( !\fourCnt|tempCount\(0) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111000000001111111100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \fourCnt|ALT_INV_tempCount\(0),
	dataf => \ALT_INV_resetCount~q\,
	combout => \fourCnt|tempCount~0_combout\);

-- Location: FF_X80_Y2_N26
\fourCnt|tempCount[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \fourCnt|tempCount~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fourCnt|tempCount\(0));

-- Location: LABCELL_X80_Y2_N51
\fourCnt|tempCount~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \fourCnt|tempCount~1_combout\ = ( \fourCnt|tempCount\(1) & ( \resetCount~q\ & ( !\fourCnt|tempCount\(0) ) ) ) # ( !\fourCnt|tempCount\(1) & ( \resetCount~q\ & ( \fourCnt|tempCount\(0) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000111111111111111100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \fourCnt|ALT_INV_tempCount\(0),
	datae => \fourCnt|ALT_INV_tempCount\(1),
	dataf => \ALT_INV_resetCount~q\,
	combout => \fourCnt|tempCount~1_combout\);

-- Location: FF_X80_Y2_N53
\fourCnt|tempCount[1]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \fourCnt|tempCount~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fourCnt|tempCount[1]~DUPLICATE_q\);

-- Location: LABCELL_X80_Y2_N27
\fourCnt|tempCount~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \fourCnt|tempCount~2_combout\ = ( \fourCnt|tempCount[0]~DUPLICATE_q\ & ( (\resetCount~q\ & (!\fourCnt|tempCount[1]~DUPLICATE_q\ $ (!\fourCnt|tempCount\(2)))) ) ) # ( !\fourCnt|tempCount[0]~DUPLICATE_q\ & ( (\resetCount~q\ & \fourCnt|tempCount\(2)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000001111000000000000111100000101000010100000010100001010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \fourCnt|ALT_INV_tempCount[1]~DUPLICATE_q\,
	datac => \ALT_INV_resetCount~q\,
	datad => \fourCnt|ALT_INV_tempCount\(2),
	dataf => \fourCnt|ALT_INV_tempCount[0]~DUPLICATE_q\,
	combout => \fourCnt|tempCount~2_combout\);

-- Location: FF_X80_Y2_N29
\fourCnt|tempCount[2]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \fourCnt|tempCount~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fourCnt|tempCount[2]~DUPLICATE_q\);

-- Location: LABCELL_X80_Y2_N36
\s0~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \s0~0_combout\ = ( \fourCnt|tempCount[0]~DUPLICATE_q\ & ( !\s0~q\ $ ((((!\fourCnt|tempCount\(3)) # (\fourCnt|tempCount[1]~DUPLICATE_q\)) # (\fourCnt|tempCount[2]~DUPLICATE_q\))) ) ) # ( !\fourCnt|tempCount[0]~DUPLICATE_q\ & ( \s0~q\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011111111000000001111111100100000110111110010000011011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \fourCnt|ALT_INV_tempCount[2]~DUPLICATE_q\,
	datab => \fourCnt|ALT_INV_tempCount\(3),
	datac => \fourCnt|ALT_INV_tempCount[1]~DUPLICATE_q\,
	datad => \ALT_INV_s0~q\,
	dataf => \fourCnt|ALT_INV_tempCount[0]~DUPLICATE_q\,
	combout => \s0~0_combout\);

-- Location: FF_X80_Y2_N38
s0 : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \s0~0_combout\,
	clrn => \KEY[0]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \s0~q\);

-- Location: FF_X80_Y2_N31
\shiftReg|regval[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \shiftReg|regval[9]~feeder_combout\,
	asdata => \shiftReg|regval[0]~_wirecell_combout\,
	clrn => \KEY[0]~input_o\,
	sload => \s0~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \shiftReg|regval\(9));

-- Location: FF_X80_Y2_N5
\shiftReg|regval[8]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \shiftReg|regval[8]~feeder_combout\,
	asdata => \shiftReg|regval\(9),
	clrn => \KEY[0]~input_o\,
	sload => \s0~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \shiftReg|regval[8]~DUPLICATE_q\);

-- Location: FF_X80_Y2_N2
\shiftReg|regval[7]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \shiftReg|regval[7]~feeder_combout\,
	asdata => \shiftReg|regval[8]~DUPLICATE_q\,
	clrn => \KEY[0]~input_o\,
	sload => \s0~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \shiftReg|regval[7]~DUPLICATE_q\);

-- Location: FF_X80_Y2_N19
\shiftReg|regval[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \shiftReg|regval[6]~feeder_combout\,
	asdata => \shiftReg|regval[7]~DUPLICATE_q\,
	clrn => \KEY[0]~input_o\,
	sload => \s0~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \shiftReg|regval\(6));

-- Location: FF_X80_Y2_N17
\shiftReg|regval[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \shiftReg|regval[5]~feeder_combout\,
	asdata => \shiftReg|regval\(6),
	clrn => \KEY[0]~input_o\,
	sload => \s0~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \shiftReg|regval\(5));

-- Location: FF_X80_Y2_N43
\shiftReg|regval[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \shiftReg|regval[4]~feeder_combout\,
	asdata => \shiftReg|regval\(5),
	clrn => \KEY[0]~input_o\,
	sload => \s0~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \shiftReg|regval\(4));

-- Location: FF_X80_Y2_N40
\shiftReg|regval[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \shiftReg|regval[3]~feeder_combout\,
	asdata => \shiftReg|regval\(4),
	clrn => \KEY[0]~input_o\,
	sload => \s0~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \shiftReg|regval\(3));

-- Location: FF_X80_Y2_N8
\shiftReg|regval[2]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \shiftReg|regval[2]~feeder_combout\,
	asdata => \shiftReg|regval\(3),
	clrn => \KEY[0]~input_o\,
	sload => \s0~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \shiftReg|regval[2]~DUPLICATE_q\);

-- Location: FF_X80_Y2_N47
\shiftReg|regval[1]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \shiftReg|regval[1]~feeder_combout\,
	asdata => \shiftReg|regval[2]~DUPLICATE_q\,
	clrn => \KEY[0]~input_o\,
	sload => \s0~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \shiftReg|regval[1]~DUPLICATE_q\);

-- Location: LABCELL_X80_Y2_N9
\shiftReg|Mux9~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \shiftReg|Mux9~0_combout\ = ( \shiftReg|regval\(9) & ( (!\shiftReg|regval[1]~DUPLICATE_q\ & \s0~q\) ) ) # ( !\shiftReg|regval\(9) & ( (!\shiftReg|regval[1]~DUPLICATE_q\) # (!\s0~q\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111110000111111111111000000000000111100000000000011110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \shiftReg|ALT_INV_regval[1]~DUPLICATE_q\,
	datad => \ALT_INV_s0~q\,
	dataf => \shiftReg|ALT_INV_regval\(9),
	combout => \shiftReg|Mux9~0_combout\);

-- Location: FF_X80_Y2_N10
\shiftReg|regval[0]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \shiftReg|Mux9~0_combout\,
	clrn => \KEY[0]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \shiftReg|regval[0]~DUPLICATE_q\);

-- Location: FF_X80_Y2_N46
\shiftReg|regval[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \shiftReg|regval[1]~feeder_combout\,
	asdata => \shiftReg|regval[2]~DUPLICATE_q\,
	clrn => \KEY[0]~input_o\,
	sload => \s0~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \shiftReg|regval\(1));

-- Location: FF_X80_Y2_N7
\shiftReg|regval[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \shiftReg|regval[2]~feeder_combout\,
	asdata => \shiftReg|regval\(3),
	clrn => \KEY[0]~input_o\,
	sload => \s0~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \shiftReg|regval\(2));

-- Location: FF_X80_Y2_N1
\shiftReg|regval[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \shiftReg|regval[7]~feeder_combout\,
	asdata => \shiftReg|regval[8]~DUPLICATE_q\,
	clrn => \KEY[0]~input_o\,
	sload => \s0~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \shiftReg|regval\(7));

-- Location: FF_X80_Y2_N4
\shiftReg|regval[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \shiftReg|regval[8]~feeder_combout\,
	asdata => \shiftReg|regval\(9),
	clrn => \KEY[0]~input_o\,
	sload => \s0~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \shiftReg|regval\(8));

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

-- Location: LABCELL_X50_Y33_N3
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


