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

-- DATE "03/04/2022 11:26:41"

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

ENTITY 	demo_display IS
    PORT (
	Reset : IN std_logic;
	clk : IN std_logic;
	rstb : IN std_logic;
	leds : OUT std_logic_vector(9 DOWNTO 0)
	);
END demo_display;

-- Design Ports Information
-- leds[0]	=>  Location: PIN_AB30,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- leds[1]	=>  Location: PIN_Y26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- leds[2]	=>  Location: PIN_AA28,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- leds[3]	=>  Location: PIN_AD30,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- leds[4]	=>  Location: PIN_AB28,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- leds[5]	=>  Location: PIN_V25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- leds[6]	=>  Location: PIN_AD29,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- leds[7]	=>  Location: PIN_AA30,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- leds[8]	=>  Location: PIN_AE29,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- leds[9]	=>  Location: PIN_AC30,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- clk	=>  Location: PIN_Y27,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- rstb	=>  Location: PIN_AA26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Reset	=>  Location: PIN_AB27,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF demo_display IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_Reset : std_logic;
SIGNAL ww_clk : std_logic;
SIGNAL ww_rstb : std_logic;
SIGNAL ww_leds : std_logic_vector(9 DOWNTO 0);
SIGNAL \~QUARTUS_CREATED_GND~I_combout\ : std_logic;
SIGNAL \clk~input_o\ : std_logic;
SIGNAL \clk~inputCLKENA0_outclk\ : std_logic;
SIGNAL \Reset~input_o\ : std_logic;
SIGNAL \rstb~input_o\ : std_logic;
SIGNAL \rstb~inputCLKENA0_outclk\ : std_logic;
SIGNAL \cnt0|count~3_combout\ : std_logic;
SIGNAL \cnt0|Add0~0_combout\ : std_logic;
SIGNAL \cnt0|count~2_combout\ : std_logic;
SIGNAL \cnt0|count~4_combout\ : std_logic;
SIGNAL \cnt0|count~0_combout\ : std_logic;
SIGNAL \Selector2~0_combout\ : std_logic;
SIGNAL \Selector3~0_combout\ : std_logic;
SIGNAL \next_state.LEFT_127~combout\ : std_logic;
SIGNAL \current_state.LEFT~0_combout\ : std_logic;
SIGNAL \current_state.LEFT~q\ : std_logic;
SIGNAL \cnt0|count~1_combout\ : std_logic;
SIGNAL \Selector0~0_combout\ : std_logic;
SIGNAL \next_state.RIGHT_118~combout\ : std_logic;
SIGNAL \current_state.RIGHT~q\ : std_logic;
SIGNAL \shft0|Mux0~0_combout\ : std_logic;
SIGNAL \shft0|regval[8]~feeder_combout\ : std_logic;
SIGNAL \shft0|regval[5]~DUPLICATE_q\ : std_logic;
SIGNAL \shft0|regval[7]~DUPLICATE_q\ : std_logic;
SIGNAL \shft0|regval[7]~feeder_combout\ : std_logic;
SIGNAL \shft0|regval[6]~feeder_combout\ : std_logic;
SIGNAL \shft0|regval[6]~DUPLICATE_q\ : std_logic;
SIGNAL \shft0|regval[5]~feeder_combout\ : std_logic;
SIGNAL \shft0|regval[4]~feeder_combout\ : std_logic;
SIGNAL \shft0|regval[3]~feeder_combout\ : std_logic;
SIGNAL \shft0|regval[2]~feeder_combout\ : std_logic;
SIGNAL \shft0|regval[1]~feeder_combout\ : std_logic;
SIGNAL \shft0|regval[0]~_wirecell_combout\ : std_logic;
SIGNAL \shft0|Mux9~0_combout\ : std_logic;
SIGNAL \shft0|regval[8]~DUPLICATE_q\ : std_logic;
SIGNAL \shft0|regval\ : std_logic_vector(9 DOWNTO 0);
SIGNAL \cnt0|count\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \shft0|ALT_INV_regval\ : std_logic_vector(9 DOWNTO 0);
SIGNAL \ALT_INV_current_state.RIGHT~q\ : std_logic;
SIGNAL \cnt0|ALT_INV_count\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \ALT_INV_current_state.LEFT~q\ : std_logic;
SIGNAL \ALT_INV_Selector0~0_combout\ : std_logic;
SIGNAL \ALT_INV_Selector3~0_combout\ : std_logic;
SIGNAL \cnt0|ALT_INV_Add0~0_combout\ : std_logic;
SIGNAL \ALT_INV_Selector2~0_combout\ : std_logic;
SIGNAL \cnt0|ALT_INV_count~4_combout\ : std_logic;
SIGNAL \ALT_INV_next_state.RIGHT_118~combout\ : std_logic;
SIGNAL \ALT_INV_next_state.LEFT_127~combout\ : std_logic;
SIGNAL \ALT_INV_Reset~input_o\ : std_logic;
SIGNAL \ALT_INV_rstb~inputCLKENA0_outclk\ : std_logic;
SIGNAL \shft0|ALT_INV_regval[6]~DUPLICATE_q\ : std_logic;

BEGIN

ww_Reset <= Reset;
ww_clk <= clk;
ww_rstb <= rstb;
leds <= ww_leds;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;
\shft0|ALT_INV_regval\(0) <= NOT \shft0|regval\(0);
\shft0|ALT_INV_regval\(9) <= NOT \shft0|regval\(9);
\ALT_INV_current_state.RIGHT~q\ <= NOT \current_state.RIGHT~q\;
\cnt0|ALT_INV_count\(3) <= NOT \cnt0|count\(3);
\cnt0|ALT_INV_count\(1) <= NOT \cnt0|count\(1);
\ALT_INV_current_state.LEFT~q\ <= NOT \current_state.LEFT~q\;
\ALT_INV_Selector0~0_combout\ <= NOT \Selector0~0_combout\;
\cnt0|ALT_INV_count\(2) <= NOT \cnt0|count\(2);
\ALT_INV_Selector3~0_combout\ <= NOT \Selector3~0_combout\;
\cnt0|ALT_INV_count\(0) <= NOT \cnt0|count\(0);
\cnt0|ALT_INV_Add0~0_combout\ <= NOT \cnt0|Add0~0_combout\;
\ALT_INV_Selector2~0_combout\ <= NOT \Selector2~0_combout\;
\cnt0|ALT_INV_count~4_combout\ <= NOT \cnt0|count~4_combout\;
\ALT_INV_next_state.RIGHT_118~combout\ <= NOT \next_state.RIGHT_118~combout\;
\ALT_INV_next_state.LEFT_127~combout\ <= NOT \next_state.LEFT_127~combout\;
\ALT_INV_Reset~input_o\ <= NOT \Reset~input_o\;
\ALT_INV_rstb~inputCLKENA0_outclk\ <= NOT \rstb~inputCLKENA0_outclk\;
\shft0|ALT_INV_regval[6]~DUPLICATE_q\ <= NOT \shft0|regval[6]~DUPLICATE_q\;
\shft0|ALT_INV_regval\(8) <= NOT \shft0|regval\(8);
\shft0|ALT_INV_regval\(7) <= NOT \shft0|regval\(7);
\shft0|ALT_INV_regval\(5) <= NOT \shft0|regval\(5);
\shft0|ALT_INV_regval\(4) <= NOT \shft0|regval\(4);
\shft0|ALT_INV_regval\(3) <= NOT \shft0|regval\(3);
\shft0|ALT_INV_regval\(2) <= NOT \shft0|regval\(2);
\shft0|ALT_INV_regval\(1) <= NOT \shft0|regval\(1);

-- Location: IOOBUF_X89_Y21_N5
\leds[0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \shft0|ALT_INV_regval\(0),
	devoe => ww_devoe,
	o => ww_leds(0));

-- Location: IOOBUF_X89_Y25_N5
\leds[1]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \shft0|regval\(1),
	devoe => ww_devoe,
	o => ww_leds(1));

-- Location: IOOBUF_X89_Y21_N56
\leds[2]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \shft0|regval\(2),
	devoe => ww_devoe,
	o => ww_leds(2));

-- Location: IOOBUF_X89_Y25_N39
\leds[3]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \shft0|regval\(3),
	devoe => ww_devoe,
	o => ww_leds(3));

-- Location: IOOBUF_X89_Y21_N39
\leds[4]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \shft0|regval\(4),
	devoe => ww_devoe,
	o => ww_leds(4));

-- Location: IOOBUF_X89_Y20_N62
\leds[5]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \shft0|regval[5]~DUPLICATE_q\,
	devoe => ww_devoe,
	o => ww_leds(5));

-- Location: IOOBUF_X89_Y23_N56
\leds[6]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \shft0|regval[6]~DUPLICATE_q\,
	devoe => ww_devoe,
	o => ww_leds(6));

-- Location: IOOBUF_X89_Y21_N22
\leds[7]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \shft0|regval[7]~DUPLICATE_q\,
	devoe => ww_devoe,
	o => ww_leds(7));

-- Location: IOOBUF_X89_Y23_N39
\leds[8]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \shft0|regval[8]~DUPLICATE_q\,
	devoe => ww_devoe,
	o => ww_leds(8));

-- Location: IOOBUF_X89_Y25_N56
\leds[9]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \shft0|regval\(9),
	devoe => ww_devoe,
	o => ww_leds(9));

-- Location: IOIBUF_X89_Y25_N21
\clk~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_clk,
	o => \clk~input_o\);

-- Location: CLKCTRL_G10
\clk~inputCLKENA0\ : cyclonev_clkena
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	disable_mode => "low",
	ena_register_mode => "always enabled",
	ena_register_power_up => "high",
	test_syn => "high")
-- pragma translate_on
PORT MAP (
	inclk => \clk~input_o\,
	outclk => \clk~inputCLKENA0_outclk\);

-- Location: IOIBUF_X89_Y23_N21
\Reset~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Reset,
	o => \Reset~input_o\);

-- Location: IOIBUF_X89_Y23_N4
\rstb~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_rstb,
	o => \rstb~input_o\);

-- Location: CLKCTRL_G8
\rstb~inputCLKENA0\ : cyclonev_clkena
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	disable_mode => "low",
	ena_register_mode => "always enabled",
	ena_register_power_up => "high",
	test_syn => "high")
-- pragma translate_on
PORT MAP (
	inclk => \rstb~input_o\,
	outclk => \rstb~inputCLKENA0_outclk\);

-- Location: LABCELL_X88_Y23_N42
\cnt0|count~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \cnt0|count~3_combout\ = ( !\cnt0|count\(0) & ( \cnt0|count\(1) & ( (!\Reset~input_o\ & ((!\current_state.LEFT~q\) # ((\current_state.RIGHT~q\ & !\cnt0|count\(3))))) # (\Reset~input_o\ & (((\current_state.RIGHT~q\)))) ) ) ) # ( !\cnt0|count\(0) & ( 
-- !\cnt0|count\(1) & ( ((!\current_state.LEFT~q\ & !\Reset~input_o\)) # (\current_state.RIGHT~q\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1011101100110011000000000000000010111010001100110000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_current_state.LEFT~q\,
	datab => \ALT_INV_current_state.RIGHT~q\,
	datac => \cnt0|ALT_INV_count\(3),
	datad => \ALT_INV_Reset~input_o\,
	datae => \cnt0|ALT_INV_count\(0),
	dataf => \cnt0|ALT_INV_count\(1),
	combout => \cnt0|count~3_combout\);

-- Location: FF_X88_Y23_N44
\cnt0|count[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \rstb~inputCLKENA0_outclk\,
	d => \cnt0|count~3_combout\,
	clrn => \clk~inputCLKENA0_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \cnt0|count\(0));

-- Location: LABCELL_X88_Y23_N39
\cnt0|Add0~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \cnt0|Add0~0_combout\ = ( \cnt0|count\(2) & ( (!\cnt0|count\(1)) # (!\cnt0|count\(0)) ) ) # ( !\cnt0|count\(2) & ( (\cnt0|count\(1) & \cnt0|count\(0)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001100000011000000110000001111111100111111001111110011111100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \cnt0|ALT_INV_count\(1),
	datac => \cnt0|ALT_INV_count\(0),
	dataf => \cnt0|ALT_INV_count\(2),
	combout => \cnt0|Add0~0_combout\);

-- Location: LABCELL_X88_Y23_N6
\cnt0|count~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \cnt0|count~2_combout\ = ( \cnt0|count\(1) & ( \cnt0|Add0~0_combout\ & ( (!\Reset~input_o\ & ((!\current_state.LEFT~q\) # ((!\cnt0|count\(3) & \current_state.RIGHT~q\)))) # (\Reset~input_o\ & (((\current_state.RIGHT~q\)))) ) ) ) # ( !\cnt0|count\(1) & ( 
-- \cnt0|Add0~0_combout\ & ( ((!\current_state.LEFT~q\ & !\Reset~input_o\)) # (\current_state.RIGHT~q\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000010001000111111111000100011111011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_current_state.LEFT~q\,
	datab => \ALT_INV_Reset~input_o\,
	datac => \cnt0|ALT_INV_count\(3),
	datad => \ALT_INV_current_state.RIGHT~q\,
	datae => \cnt0|ALT_INV_count\(1),
	dataf => \cnt0|ALT_INV_Add0~0_combout\,
	combout => \cnt0|count~2_combout\);

-- Location: FF_X88_Y23_N8
\cnt0|count[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \rstb~inputCLKENA0_outclk\,
	d => \cnt0|count~2_combout\,
	clrn => \clk~inputCLKENA0_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \cnt0|count\(2));

-- Location: LABCELL_X88_Y23_N27
\cnt0|count~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \cnt0|count~4_combout\ = ( \current_state.RIGHT~q\ & ( (!\Reset~input_o\ & \current_state.LEFT~q\) ) ) # ( !\current_state.RIGHT~q\ & ( (\current_state.LEFT~q\) # (\Reset~input_o\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111111111111000011111111111100000000111100000000000011110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_Reset~input_o\,
	datad => \ALT_INV_current_state.LEFT~q\,
	dataf => \ALT_INV_current_state.RIGHT~q\,
	combout => \cnt0|count~4_combout\);

-- Location: LABCELL_X88_Y23_N54
\cnt0|count~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \cnt0|count~0_combout\ = ( \cnt0|count\(3) & ( \cnt0|count~4_combout\ ) ) # ( !\cnt0|count\(3) & ( \cnt0|count~4_combout\ & ( (!\current_state.RIGHT~q\) # ((\cnt0|count\(2) & (\cnt0|count\(0) & \cnt0|count\(1)))) ) ) ) # ( \cnt0|count\(3) & ( 
-- !\cnt0|count~4_combout\ & ( (!\cnt0|count\(2)) # ((!\cnt0|count\(0)) # (!\cnt0|count\(1))) ) ) ) # ( !\cnt0|count\(3) & ( !\cnt0|count~4_combout\ & ( (\cnt0|count\(2) & (\cnt0|count\(0) & \cnt0|count\(1))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000011111111111111110010101010101010111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_current_state.RIGHT~q\,
	datab => \cnt0|ALT_INV_count\(2),
	datac => \cnt0|ALT_INV_count\(0),
	datad => \cnt0|ALT_INV_count\(1),
	datae => \cnt0|ALT_INV_count\(3),
	dataf => \cnt0|ALT_INV_count~4_combout\,
	combout => \cnt0|count~0_combout\);

-- Location: FF_X88_Y23_N56
\cnt0|count[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \rstb~inputCLKENA0_outclk\,
	d => \cnt0|count~0_combout\,
	clrn => \clk~inputCLKENA0_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \cnt0|count\(3));

-- Location: LABCELL_X88_Y23_N48
\Selector2~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Selector2~0_combout\ = ( \cnt0|count\(1) & ( (!\Reset~input_o\ & ((!\cnt0|count\(3) & (!\current_state.RIGHT~q\)) # (\cnt0|count\(3) & ((\current_state.LEFT~q\))))) # (\Reset~input_o\ & (!\current_state.RIGHT~q\ & ((\current_state.LEFT~q\)))) ) ) # ( 
-- !\cnt0|count\(1) & ( (!\current_state.RIGHT~q\ & ((!\Reset~input_o\) # (\current_state.LEFT~q\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000100010101010100010001010101010000000101011101000000010101110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_current_state.RIGHT~q\,
	datab => \ALT_INV_Reset~input_o\,
	datac => \cnt0|ALT_INV_count\(3),
	datad => \ALT_INV_current_state.LEFT~q\,
	dataf => \cnt0|ALT_INV_count\(1),
	combout => \Selector2~0_combout\);

-- Location: LABCELL_X88_Y23_N21
\Selector3~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Selector3~0_combout\ = ( \Reset~input_o\ ) # ( !\Reset~input_o\ & ( \current_state.LEFT~q\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011111111000000001111111111111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \ALT_INV_current_state.LEFT~q\,
	dataf => \ALT_INV_Reset~input_o\,
	combout => \Selector3~0_combout\);

-- Location: LABCELL_X88_Y23_N33
\next_state.LEFT_127\ : cyclonev_lcell_comb
-- Equation(s):
-- \next_state.LEFT_127~combout\ = ( \Selector3~0_combout\ & ( \Selector2~0_combout\ ) ) # ( !\Selector3~0_combout\ & ( \next_state.LEFT_127~combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011111111000000001111111101010101010101010101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Selector2~0_combout\,
	datad => \ALT_INV_next_state.LEFT_127~combout\,
	dataf => \ALT_INV_Selector3~0_combout\,
	combout => \next_state.LEFT_127~combout\);

-- Location: LABCELL_X88_Y23_N0
\current_state.LEFT~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \current_state.LEFT~0_combout\ = ( !\next_state.LEFT_127~combout\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111111111111111111111111100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \ALT_INV_next_state.LEFT_127~combout\,
	combout => \current_state.LEFT~0_combout\);

-- Location: FF_X88_Y23_N2
\current_state.LEFT\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \current_state.LEFT~0_combout\,
	clrn => \ALT_INV_rstb~inputCLKENA0_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \current_state.LEFT~q\);

-- Location: LABCELL_X88_Y23_N12
\cnt0|count~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \cnt0|count~1_combout\ = ( \cnt0|count\(1) & ( \cnt0|count\(3) & ( (!\cnt0|count\(0) & ((!\Reset~input_o\ & (!\current_state.LEFT~q\)) # (\Reset~input_o\ & ((\current_state.RIGHT~q\))))) ) ) ) # ( !\cnt0|count\(1) & ( \cnt0|count\(3) & ( (\cnt0|count\(0) 
-- & (((!\current_state.LEFT~q\ & !\Reset~input_o\)) # (\current_state.RIGHT~q\))) ) ) ) # ( \cnt0|count\(1) & ( !\cnt0|count\(3) & ( (!\cnt0|count\(0) & (((!\current_state.LEFT~q\ & !\Reset~input_o\)) # (\current_state.RIGHT~q\))) ) ) ) # ( !\cnt0|count\(1) 
-- & ( !\cnt0|count\(3) & ( (\cnt0|count\(0) & (((!\current_state.LEFT~q\ & !\Reset~input_o\)) # (\current_state.RIGHT~q\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000010110011101100110000000000000000101100111010001100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_current_state.LEFT~q\,
	datab => \ALT_INV_current_state.RIGHT~q\,
	datac => \ALT_INV_Reset~input_o\,
	datad => \cnt0|ALT_INV_count\(0),
	datae => \cnt0|ALT_INV_count\(1),
	dataf => \cnt0|ALT_INV_count\(3),
	combout => \cnt0|count~1_combout\);

-- Location: FF_X88_Y23_N14
\cnt0|count[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \rstb~inputCLKENA0_outclk\,
	d => \cnt0|count~1_combout\,
	clrn => \clk~inputCLKENA0_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \cnt0|count\(1));

-- Location: LABCELL_X88_Y23_N18
\Selector0~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Selector0~0_combout\ = ( \current_state.RIGHT~q\ & ( (!\current_state.LEFT~q\) # ((!\Reset~input_o\ & ((!\cnt0|count\(1)) # (!\cnt0|count\(3))))) ) ) # ( !\current_state.RIGHT~q\ & ( (!\current_state.LEFT~q\ & (((\cnt0|count\(1) & \cnt0|count\(3))) # 
-- (\Reset~input_o\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101011100000000010101110000000011111111101010001111111110101000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Reset~input_o\,
	datab => \cnt0|ALT_INV_count\(1),
	datac => \cnt0|ALT_INV_count\(3),
	datad => \ALT_INV_current_state.LEFT~q\,
	dataf => \ALT_INV_current_state.RIGHT~q\,
	combout => \Selector0~0_combout\);

-- Location: LABCELL_X88_Y23_N51
\next_state.RIGHT_118\ : cyclonev_lcell_comb
-- Equation(s):
-- \next_state.RIGHT_118~combout\ = ( \Selector3~0_combout\ & ( \Selector0~0_combout\ ) ) # ( !\Selector3~0_combout\ & ( \next_state.RIGHT_118~combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111000011110000111100000000111111110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_next_state.RIGHT_118~combout\,
	datad => \ALT_INV_Selector0~0_combout\,
	dataf => \ALT_INV_Selector3~0_combout\,
	combout => \next_state.RIGHT_118~combout\);

-- Location: FF_X88_Y23_N35
\current_state.RIGHT\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \next_state.RIGHT_118~combout\,
	clrn => \ALT_INV_rstb~inputCLKENA0_outclk\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \current_state.RIGHT~q\);

-- Location: MLABCELL_X87_Y23_N45
\shft0|Mux0~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \shft0|Mux0~0_combout\ = ( !\current_state.RIGHT~q\ & ( \shft0|regval\(8) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111110000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datae => \ALT_INV_current_state.RIGHT~q\,
	dataf => \shft0|ALT_INV_regval\(8),
	combout => \shft0|Mux0~0_combout\);

-- Location: FF_X87_Y23_N46
\shft0|regval[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \shft0|Mux0~0_combout\,
	clrn => \ALT_INV_rstb~inputCLKENA0_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \shft0|regval\(9));

-- Location: LABCELL_X88_Y23_N24
\shft0|regval[8]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \shft0|regval[8]~feeder_combout\ = ( \shft0|regval\(9) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \shft0|ALT_INV_regval\(9),
	combout => \shft0|regval[8]~feeder_combout\);

-- Location: FF_X87_Y23_N49
\shft0|regval[5]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \shft0|regval[5]~feeder_combout\,
	asdata => \shft0|regval\(4),
	clrn => \ALT_INV_rstb~inputCLKENA0_outclk\,
	sload => \ALT_INV_current_state.RIGHT~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \shft0|regval[5]~DUPLICATE_q\);

-- Location: FF_X88_Y23_N5
\shft0|regval[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \shft0|regval[6]~feeder_combout\,
	asdata => \shft0|regval[5]~DUPLICATE_q\,
	clrn => \ALT_INV_rstb~inputCLKENA0_outclk\,
	sload => \ALT_INV_current_state.RIGHT~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \shft0|regval\(6));

-- Location: FF_X88_Y23_N31
\shft0|regval[7]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \shft0|regval[7]~feeder_combout\,
	asdata => \shft0|regval\(6),
	clrn => \ALT_INV_rstb~inputCLKENA0_outclk\,
	sload => \ALT_INV_current_state.RIGHT~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \shft0|regval[7]~DUPLICATE_q\);

-- Location: FF_X88_Y23_N26
\shft0|regval[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \shft0|regval[8]~feeder_combout\,
	asdata => \shft0|regval[7]~DUPLICATE_q\,
	clrn => \ALT_INV_rstb~inputCLKENA0_outclk\,
	sload => \ALT_INV_current_state.RIGHT~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \shft0|regval\(8));

-- Location: LABCELL_X88_Y23_N30
\shft0|regval[7]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \shft0|regval[7]~feeder_combout\ = \shft0|regval\(8)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111000011110000111100001111000011110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \shft0|ALT_INV_regval\(8),
	combout => \shft0|regval[7]~feeder_combout\);

-- Location: FF_X88_Y23_N32
\shft0|regval[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \shft0|regval[7]~feeder_combout\,
	asdata => \shft0|regval\(6),
	clrn => \ALT_INV_rstb~inputCLKENA0_outclk\,
	sload => \ALT_INV_current_state.RIGHT~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \shft0|regval\(7));

-- Location: LABCELL_X88_Y23_N3
\shft0|regval[6]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \shft0|regval[6]~feeder_combout\ = ( \shft0|regval\(7) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \shft0|ALT_INV_regval\(7),
	combout => \shft0|regval[6]~feeder_combout\);

-- Location: FF_X88_Y23_N4
\shft0|regval[6]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \shft0|regval[6]~feeder_combout\,
	asdata => \shft0|regval[5]~DUPLICATE_q\,
	clrn => \ALT_INV_rstb~inputCLKENA0_outclk\,
	sload => \ALT_INV_current_state.RIGHT~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \shft0|regval[6]~DUPLICATE_q\);

-- Location: MLABCELL_X87_Y23_N48
\shft0|regval[5]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \shft0|regval[5]~feeder_combout\ = ( \shft0|regval[6]~DUPLICATE_q\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \shft0|ALT_INV_regval[6]~DUPLICATE_q\,
	combout => \shft0|regval[5]~feeder_combout\);

-- Location: FF_X87_Y23_N50
\shft0|regval[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \shft0|regval[5]~feeder_combout\,
	asdata => \shft0|regval\(4),
	clrn => \ALT_INV_rstb~inputCLKENA0_outclk\,
	sload => \ALT_INV_current_state.RIGHT~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \shft0|regval\(5));

-- Location: MLABCELL_X87_Y23_N57
\shft0|regval[4]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \shft0|regval[4]~feeder_combout\ = ( \shft0|regval\(5) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \shft0|ALT_INV_regval\(5),
	combout => \shft0|regval[4]~feeder_combout\);

-- Location: FF_X87_Y23_N59
\shft0|regval[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \shft0|regval[4]~feeder_combout\,
	asdata => \shft0|regval\(3),
	clrn => \ALT_INV_rstb~inputCLKENA0_outclk\,
	sload => \ALT_INV_current_state.RIGHT~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \shft0|regval\(4));

-- Location: MLABCELL_X87_Y23_N36
\shft0|regval[3]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \shft0|regval[3]~feeder_combout\ = \shft0|regval\(4)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011111111000000001111111100000000111111110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \shft0|ALT_INV_regval\(4),
	combout => \shft0|regval[3]~feeder_combout\);

-- Location: FF_X87_Y23_N38
\shft0|regval[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \shft0|regval[3]~feeder_combout\,
	asdata => \shft0|regval\(2),
	clrn => \ALT_INV_rstb~inputCLKENA0_outclk\,
	sload => \ALT_INV_current_state.RIGHT~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \shft0|regval\(3));

-- Location: LABCELL_X88_Y23_N36
\shft0|regval[2]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \shft0|regval[2]~feeder_combout\ = ( \shft0|regval\(3) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \shft0|ALT_INV_regval\(3),
	combout => \shft0|regval[2]~feeder_combout\);

-- Location: FF_X88_Y23_N37
\shft0|regval[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \shft0|regval[2]~feeder_combout\,
	asdata => \shft0|regval\(1),
	clrn => \ALT_INV_rstb~inputCLKENA0_outclk\,
	sload => \ALT_INV_current_state.RIGHT~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \shft0|regval\(2));

-- Location: MLABCELL_X87_Y23_N39
\shft0|regval[1]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \shft0|regval[1]~feeder_combout\ = ( \shft0|regval\(2) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \shft0|ALT_INV_regval\(2),
	combout => \shft0|regval[1]~feeder_combout\);

-- Location: MLABCELL_X87_Y23_N3
\shft0|regval[0]~_wirecell\ : cyclonev_lcell_comb
-- Equation(s):
-- \shft0|regval[0]~_wirecell_combout\ = ( !\shft0|regval\(0) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111111111000000000000000011111111111111110000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datae => \shft0|ALT_INV_regval\(0),
	combout => \shft0|regval[0]~_wirecell_combout\);

-- Location: FF_X87_Y23_N41
\shft0|regval[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \shft0|regval[1]~feeder_combout\,
	asdata => \shft0|regval[0]~_wirecell_combout\,
	clrn => \ALT_INV_rstb~inputCLKENA0_outclk\,
	sload => \ALT_INV_current_state.RIGHT~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \shft0|regval\(1));

-- Location: MLABCELL_X87_Y23_N54
\shft0|Mux9~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \shft0|Mux9~0_combout\ = ( \shft0|regval\(1) & ( !\current_state.RIGHT~q\ ) ) # ( !\shft0|regval\(1) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111111111111111111111111111111111000000001111111100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \ALT_INV_current_state.RIGHT~q\,
	dataf => \shft0|ALT_INV_regval\(1),
	combout => \shft0|Mux9~0_combout\);

-- Location: FF_X87_Y23_N56
\shft0|regval[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \shft0|Mux9~0_combout\,
	clrn => \ALT_INV_rstb~inputCLKENA0_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \shft0|regval\(0));

-- Location: FF_X88_Y23_N25
\shft0|regval[8]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \shft0|regval[8]~feeder_combout\,
	asdata => \shft0|regval[7]~DUPLICATE_q\,
	clrn => \ALT_INV_rstb~inputCLKENA0_outclk\,
	sload => \ALT_INV_current_state.RIGHT~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \shft0|regval[8]~DUPLICATE_q\);

-- Location: LABCELL_X51_Y9_N0
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


