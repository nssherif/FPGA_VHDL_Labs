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

-- DATE "03/10/2022 14:41:48"

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

ENTITY 	fourBitCounter IS
    PORT (
	CLOCK_50 : IN std_logic;
	KEY : IN std_logic_vector(3 DOWNTO 0);
	LEDR : BUFFER std_logic_vector(3 DOWNTO 0)
	);
END fourBitCounter;

-- Design Ports Information
-- KEY[1]	=>  Location: PIN_AA15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- KEY[2]	=>  Location: PIN_W15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- KEY[3]	=>  Location: PIN_Y16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDR[0]	=>  Location: PIN_V16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDR[1]	=>  Location: PIN_W16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDR[2]	=>  Location: PIN_V17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDR[3]	=>  Location: PIN_V18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- KEY[0]	=>  Location: PIN_AA14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- CLOCK_50	=>  Location: PIN_AF14,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF fourBitCounter IS
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
SIGNAL ww_LEDR : std_logic_vector(3 DOWNTO 0);
SIGNAL \KEY[1]~input_o\ : std_logic;
SIGNAL \KEY[2]~input_o\ : std_logic;
SIGNAL \KEY[3]~input_o\ : std_logic;
SIGNAL \~QUARTUS_CREATED_GND~I_combout\ : std_logic;
SIGNAL \CLOCK_50~input_o\ : std_logic;
SIGNAL \CLOCK_50~inputCLKENA0_outclk\ : std_logic;
SIGNAL \KEY[0]~input_o\ : std_logic;
SIGNAL \tempCount~0_combout\ : std_logic;
SIGNAL \tempCount~1_combout\ : std_logic;
SIGNAL \tempCount~2_combout\ : std_logic;
SIGNAL \tempCount~3_combout\ : std_logic;
SIGNAL tempCount : std_logic_vector(3 DOWNTO 0);
SIGNAL \ALT_INV_KEY[0]~input_o\ : std_logic;
SIGNAL ALT_INV_tempCount : std_logic_vector(3 DOWNTO 0);

BEGIN

ww_CLOCK_50 <= CLOCK_50;
ww_KEY <= KEY;
LEDR <= ww_LEDR;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;
\ALT_INV_KEY[0]~input_o\ <= NOT \KEY[0]~input_o\;
ALT_INV_tempCount(3) <= NOT tempCount(3);
ALT_INV_tempCount(2) <= NOT tempCount(2);
ALT_INV_tempCount(1) <= NOT tempCount(1);
ALT_INV_tempCount(0) <= NOT tempCount(0);

-- Location: IOOBUF_X52_Y0_N2
\LEDR[0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => tempCount(0),
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
	i => tempCount(1),
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
	i => tempCount(2),
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
	i => tempCount(3),
	devoe => ww_devoe,
	o => ww_LEDR(3));

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

-- Location: LABCELL_X55_Y1_N3
\tempCount~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \tempCount~0_combout\ = ( !tempCount(0) & ( \KEY[0]~input_o\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111110000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datae => ALT_INV_tempCount(0),
	dataf => \ALT_INV_KEY[0]~input_o\,
	combout => \tempCount~0_combout\);

-- Location: FF_X55_Y1_N5
\tempCount[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \tempCount~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => tempCount(0));

-- Location: LABCELL_X55_Y1_N39
\tempCount~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \tempCount~1_combout\ = ( !tempCount(1) & ( tempCount(0) & ( \KEY[0]~input_o\ ) ) ) # ( tempCount(1) & ( !tempCount(0) & ( \KEY[0]~input_o\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000010101010101010101010101010101010000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_KEY[0]~input_o\,
	datae => ALT_INV_tempCount(1),
	dataf => ALT_INV_tempCount(0),
	combout => \tempCount~1_combout\);

-- Location: FF_X55_Y1_N41
\tempCount[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \tempCount~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => tempCount(1));

-- Location: LABCELL_X55_Y1_N6
\tempCount~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \tempCount~2_combout\ = ( tempCount(2) & ( tempCount(0) & ( (\KEY[0]~input_o\ & !tempCount(1)) ) ) ) # ( !tempCount(2) & ( tempCount(0) & ( (\KEY[0]~input_o\ & tempCount(1)) ) ) ) # ( tempCount(2) & ( !tempCount(0) & ( \KEY[0]~input_o\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000011110000111100000000000011110000111100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_KEY[0]~input_o\,
	datad => ALT_INV_tempCount(1),
	datae => ALT_INV_tempCount(2),
	dataf => ALT_INV_tempCount(0),
	combout => \tempCount~2_combout\);

-- Location: FF_X55_Y1_N8
\tempCount[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \tempCount~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => tempCount(2));

-- Location: LABCELL_X55_Y1_N48
\tempCount~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \tempCount~3_combout\ = ( tempCount(3) & ( tempCount(0) & ( (\KEY[0]~input_o\ & ((!tempCount(2)) # (!tempCount(1)))) ) ) ) # ( !tempCount(3) & ( tempCount(0) & ( (tempCount(2) & (\KEY[0]~input_o\ & tempCount(1))) ) ) ) # ( tempCount(3) & ( !tempCount(0) & 
-- ( \KEY[0]~input_o\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000011110000111100000000000000110000111100001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => ALT_INV_tempCount(2),
	datac => \ALT_INV_KEY[0]~input_o\,
	datad => ALT_INV_tempCount(1),
	datae => ALT_INV_tempCount(3),
	dataf => ALT_INV_tempCount(0),
	combout => \tempCount~3_combout\);

-- Location: FF_X55_Y1_N49
\tempCount[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \tempCount~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => tempCount(3));

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

-- Location: LABCELL_X35_Y4_N3
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


