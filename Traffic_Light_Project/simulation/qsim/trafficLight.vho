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

-- DATE "03/31/2022 15:56:11"

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

ENTITY 	fourBitDownCounter IS
    PORT (
	reset : IN std_logic;
	enable : IN std_logic;
	clk : IN std_logic;
	output : OUT std_logic_vector(4 DOWNTO 0)
	);
END fourBitDownCounter;

-- Design Ports Information
-- output[0]	=>  Location: PIN_AJ26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- output[1]	=>  Location: PIN_AC20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- output[2]	=>  Location: PIN_AK26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- output[3]	=>  Location: PIN_AJ25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- output[4]	=>  Location: PIN_AF24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- reset	=>  Location: PIN_AF23,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- clk	=>  Location: PIN_Y27,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- enable	=>  Location: PIN_AJ24,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF fourBitDownCounter IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_reset : std_logic;
SIGNAL ww_enable : std_logic;
SIGNAL ww_clk : std_logic;
SIGNAL ww_output : std_logic_vector(4 DOWNTO 0);
SIGNAL \~QUARTUS_CREATED_GND~I_combout\ : std_logic;
SIGNAL \clk~input_o\ : std_logic;
SIGNAL \clk~inputCLKENA0_outclk\ : std_logic;
SIGNAL \reset~input_o\ : std_logic;
SIGNAL \tempCount~0_combout\ : std_logic;
SIGNAL \enable~input_o\ : std_logic;
SIGNAL \tempCount[0]~1_combout\ : std_logic;
SIGNAL \tempCount~2_combout\ : std_logic;
SIGNAL \tempCount~3_combout\ : std_logic;
SIGNAL \tempCount~4_combout\ : std_logic;
SIGNAL \tempCount~5_combout\ : std_logic;
SIGNAL tempCount : std_logic_vector(4 DOWNTO 0);
SIGNAL \ALT_INV_enable~input_o\ : std_logic;
SIGNAL \ALT_INV_reset~input_o\ : std_logic;
SIGNAL ALT_INV_tempCount : std_logic_vector(4 DOWNTO 0);

BEGIN

ww_reset <= reset;
ww_enable <= enable;
ww_clk <= clk;
output <= ww_output;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;
\ALT_INV_enable~input_o\ <= NOT \enable~input_o\;
\ALT_INV_reset~input_o\ <= NOT \reset~input_o\;
ALT_INV_tempCount(4) <= NOT tempCount(4);
ALT_INV_tempCount(3) <= NOT tempCount(3);
ALT_INV_tempCount(2) <= NOT tempCount(2);
ALT_INV_tempCount(1) <= NOT tempCount(1);
ALT_INV_tempCount(0) <= NOT tempCount(0);

-- Location: IOOBUF_X76_Y0_N36
\output[0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => ALT_INV_tempCount(0),
	devoe => ww_devoe,
	o => ww_output(0));

-- Location: IOOBUF_X76_Y0_N2
\output[1]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => tempCount(1),
	devoe => ww_devoe,
	o => ww_output(1));

-- Location: IOOBUF_X76_Y0_N53
\output[2]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => tempCount(2),
	devoe => ww_devoe,
	o => ww_output(2));

-- Location: IOOBUF_X74_Y0_N93
\output[3]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => ALT_INV_tempCount(3),
	devoe => ww_devoe,
	o => ww_output(3));

-- Location: IOOBUF_X74_Y0_N59
\output[4]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => tempCount(4),
	devoe => ww_devoe,
	o => ww_output(4));

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

-- Location: IOIBUF_X74_Y0_N41
\reset~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_reset,
	o => \reset~input_o\);

-- Location: LABCELL_X74_Y1_N33
\tempCount~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \tempCount~0_combout\ = ( !tempCount(0) & ( !\reset~input_o\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111000011110000000000000000000011110000111100000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_reset~input_o\,
	datae => ALT_INV_tempCount(0),
	combout => \tempCount~0_combout\);

-- Location: IOIBUF_X74_Y0_N75
\enable~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_enable,
	o => \enable~input_o\);

-- Location: LABCELL_X74_Y1_N12
\tempCount[0]~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \tempCount[0]~1_combout\ = ( \enable~input_o\ ) # ( !\enable~input_o\ & ( \reset~input_o\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101010101010101010111111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_reset~input_o\,
	dataf => \ALT_INV_enable~input_o\,
	combout => \tempCount[0]~1_combout\);

-- Location: FF_X74_Y1_N35
\tempCount[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \tempCount~0_combout\,
	ena => \tempCount[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => tempCount(0));

-- Location: LABCELL_X74_Y1_N6
\tempCount~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \tempCount~2_combout\ = ( !tempCount(1) & ( tempCount(0) & ( !\reset~input_o\ ) ) ) # ( tempCount(1) & ( !tempCount(0) & ( !\reset~input_o\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000110011001100110011001100110011000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_reset~input_o\,
	datae => ALT_INV_tempCount(1),
	dataf => ALT_INV_tempCount(0),
	combout => \tempCount~2_combout\);

-- Location: FF_X74_Y1_N8
\tempCount[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \tempCount~2_combout\,
	ena => \tempCount[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => tempCount(1));

-- Location: LABCELL_X74_Y1_N42
\tempCount~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \tempCount~3_combout\ = ( tempCount(2) & ( tempCount(1) & ( !\reset~input_o\ ) ) ) # ( tempCount(2) & ( !tempCount(1) & ( (!\reset~input_o\ & !tempCount(0)) ) ) ) # ( !tempCount(2) & ( !tempCount(1) & ( (!\reset~input_o\ & tempCount(0)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000110000001100110000001100000000000000000000001100110011001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_reset~input_o\,
	datac => ALT_INV_tempCount(0),
	datae => ALT_INV_tempCount(2),
	dataf => ALT_INV_tempCount(1),
	combout => \tempCount~3_combout\);

-- Location: FF_X74_Y1_N44
\tempCount[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \tempCount~3_combout\,
	ena => \tempCount[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => tempCount(2));

-- Location: LABCELL_X74_Y1_N15
\tempCount~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \tempCount~4_combout\ = ( tempCount(0) & ( (!\reset~input_o\ & (!tempCount(3) $ (((tempCount(1)) # (tempCount(2)))))) ) ) # ( !tempCount(0) & ( (!\reset~input_o\ & tempCount(3)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000010101010000000001010101010000000001010101000000000101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_reset~input_o\,
	datab => ALT_INV_tempCount(2),
	datac => ALT_INV_tempCount(1),
	datad => ALT_INV_tempCount(3),
	dataf => ALT_INV_tempCount(0),
	combout => \tempCount~4_combout\);

-- Location: FF_X74_Y1_N17
\tempCount[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \tempCount~4_combout\,
	ena => \tempCount[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => tempCount(3));

-- Location: LABCELL_X74_Y1_N24
\tempCount~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \tempCount~5_combout\ = ( tempCount(4) & ( tempCount(1) & ( !\reset~input_o\ ) ) ) # ( tempCount(4) & ( !tempCount(1) & ( (!\reset~input_o\ & ((!tempCount(3)) # ((!tempCount(0)) # (tempCount(2))))) ) ) ) # ( !tempCount(4) & ( !tempCount(1) & ( 
-- (!\reset~input_o\ & (tempCount(3) & (tempCount(0) & !tempCount(2)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001000000000101010001010101000000000000000001010101010101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_reset~input_o\,
	datab => ALT_INV_tempCount(3),
	datac => ALT_INV_tempCount(0),
	datad => ALT_INV_tempCount(2),
	datae => ALT_INV_tempCount(4),
	dataf => ALT_INV_tempCount(1),
	combout => \tempCount~5_combout\);

-- Location: FF_X74_Y1_N25
\tempCount[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \tempCount~5_combout\,
	ena => \tempCount[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => tempCount(4));

-- Location: LABCELL_X11_Y43_N0
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


