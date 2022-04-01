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

-- DATE "03/16/2022 15:01:35"

-- 
-- Device: Altera 5CSEMA5F31C6 Package FBGA896
-- 

-- 
-- This VHDL file should be used for ModelSim-Altera (VHDL) only
-- 

LIBRARY ALTERA_LNSIM;
LIBRARY CYCLONEV;
LIBRARY IEEE;
USE ALTERA_LNSIM.ALTERA_LNSIM_COMPONENTS.ALL;
USE CYCLONEV.CYCLONEV_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	sevenSegment IS
    PORT (
	input : IN std_logic_vector(3 DOWNTO 0);
	hexOutput : OUT std_logic_vector(6 DOWNTO 0)
	);
END sevenSegment;

-- Design Ports Information
-- hexOutput[0]	=>  Location: PIN_AB30,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- hexOutput[1]	=>  Location: PIN_V25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- hexOutput[2]	=>  Location: PIN_AA28,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- hexOutput[3]	=>  Location: PIN_AB27,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- hexOutput[4]	=>  Location: PIN_AA26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- hexOutput[5]	=>  Location: PIN_AD29,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- hexOutput[6]	=>  Location: PIN_AE29,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- input[0]	=>  Location: PIN_W25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- input[1]	=>  Location: PIN_AA30,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- input[2]	=>  Location: PIN_AB28,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- input[3]	=>  Location: PIN_AC29,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF sevenSegment IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_input : std_logic_vector(3 DOWNTO 0);
SIGNAL ww_hexOutput : std_logic_vector(6 DOWNTO 0);
SIGNAL \~QUARTUS_CREATED_GND~I_combout\ : std_logic;
SIGNAL \input[1]~input_o\ : std_logic;
SIGNAL \input[0]~input_o\ : std_logic;
SIGNAL \input[3]~input_o\ : std_logic;
SIGNAL \input[2]~input_o\ : std_logic;
SIGNAL \Mux6~0_combout\ : std_logic;
SIGNAL \Mux5~0_combout\ : std_logic;
SIGNAL \Mux4~0_combout\ : std_logic;
SIGNAL \Mux3~0_combout\ : std_logic;
SIGNAL \Mux2~0_combout\ : std_logic;
SIGNAL \Mux1~0_combout\ : std_logic;
SIGNAL \Mux0~0_combout\ : std_logic;
SIGNAL \ALT_INV_input[3]~input_o\ : std_logic;
SIGNAL \ALT_INV_input[2]~input_o\ : std_logic;
SIGNAL \ALT_INV_input[1]~input_o\ : std_logic;
SIGNAL \ALT_INV_input[0]~input_o\ : std_logic;
SIGNAL \ALT_INV_Mux0~0_combout\ : std_logic;

BEGIN

ww_input <= input;
hexOutput <= ww_hexOutput;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;
\ALT_INV_input[3]~input_o\ <= NOT \input[3]~input_o\;
\ALT_INV_input[2]~input_o\ <= NOT \input[2]~input_o\;
\ALT_INV_input[1]~input_o\ <= NOT \input[1]~input_o\;
\ALT_INV_input[0]~input_o\ <= NOT \input[0]~input_o\;
\ALT_INV_Mux0~0_combout\ <= NOT \Mux0~0_combout\;

-- Location: IOOBUF_X89_Y21_N5
\hexOutput[0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux6~0_combout\,
	devoe => ww_devoe,
	o => ww_hexOutput(0));

-- Location: IOOBUF_X89_Y20_N62
\hexOutput[1]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux5~0_combout\,
	devoe => ww_devoe,
	o => ww_hexOutput(1));

-- Location: IOOBUF_X89_Y21_N56
\hexOutput[2]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux4~0_combout\,
	devoe => ww_devoe,
	o => ww_hexOutput(2));

-- Location: IOOBUF_X89_Y23_N22
\hexOutput[3]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux3~0_combout\,
	devoe => ww_devoe,
	o => ww_hexOutput(3));

-- Location: IOOBUF_X89_Y23_N5
\hexOutput[4]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux2~0_combout\,
	devoe => ww_devoe,
	o => ww_hexOutput(4));

-- Location: IOOBUF_X89_Y23_N56
\hexOutput[5]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux1~0_combout\,
	devoe => ww_devoe,
	o => ww_hexOutput(5));

-- Location: IOOBUF_X89_Y23_N39
\hexOutput[6]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \ALT_INV_Mux0~0_combout\,
	devoe => ww_devoe,
	o => ww_hexOutput(6));

-- Location: IOIBUF_X89_Y21_N21
\input[1]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_input(1),
	o => \input[1]~input_o\);

-- Location: IOIBUF_X89_Y20_N44
\input[0]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_input(0),
	o => \input[0]~input_o\);

-- Location: IOIBUF_X89_Y20_N95
\input[3]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_input(3),
	o => \input[3]~input_o\);

-- Location: IOIBUF_X89_Y21_N38
\input[2]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_input(2),
	o => \input[2]~input_o\);

-- Location: LABCELL_X88_Y21_N0
\Mux6~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux6~0_combout\ = ( \input[3]~input_o\ & ( \input[2]~input_o\ ) ) # ( !\input[3]~input_o\ & ( \input[2]~input_o\ & ( (!\input[1]~input_o\ & !\input[0]~input_o\) ) ) ) # ( \input[3]~input_o\ & ( !\input[2]~input_o\ & ( \input[1]~input_o\ ) ) ) # ( 
-- !\input[3]~input_o\ & ( !\input[2]~input_o\ & ( (!\input[1]~input_o\ & \input[0]~input_o\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000101000001010010101010101010110100000101000001111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_input[1]~input_o\,
	datac => \ALT_INV_input[0]~input_o\,
	datae => \ALT_INV_input[3]~input_o\,
	dataf => \ALT_INV_input[2]~input_o\,
	combout => \Mux6~0_combout\);

-- Location: LABCELL_X88_Y21_N9
\Mux5~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux5~0_combout\ = ( \input[3]~input_o\ & ( \input[2]~input_o\ ) ) # ( !\input[3]~input_o\ & ( \input[2]~input_o\ & ( !\input[0]~input_o\ $ (!\input[1]~input_o\) ) ) ) # ( \input[3]~input_o\ & ( !\input[2]~input_o\ & ( \input[1]~input_o\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000001111111101010101101010101111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_input[0]~input_o\,
	datad => \ALT_INV_input[1]~input_o\,
	datae => \ALT_INV_input[3]~input_o\,
	dataf => \ALT_INV_input[2]~input_o\,
	combout => \Mux5~0_combout\);

-- Location: LABCELL_X88_Y21_N42
\Mux4~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux4~0_combout\ = ( \input[3]~input_o\ & ( \input[2]~input_o\ ) ) # ( \input[3]~input_o\ & ( !\input[2]~input_o\ & ( \input[1]~input_o\ ) ) ) # ( !\input[3]~input_o\ & ( !\input[2]~input_o\ & ( (\input[1]~input_o\ & !\input[0]~input_o\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101000001010000010101010101010100000000000000001111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_input[1]~input_o\,
	datac => \ALT_INV_input[0]~input_o\,
	datae => \ALT_INV_input[3]~input_o\,
	dataf => \ALT_INV_input[2]~input_o\,
	combout => \Mux4~0_combout\);

-- Location: LABCELL_X88_Y21_N51
\Mux3~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux3~0_combout\ = ( \input[3]~input_o\ & ( \input[2]~input_o\ ) ) # ( !\input[3]~input_o\ & ( \input[2]~input_o\ & ( !\input[0]~input_o\ $ (\input[1]~input_o\) ) ) ) # ( \input[3]~input_o\ & ( !\input[2]~input_o\ & ( (\input[1]~input_o\) # 
-- (\input[0]~input_o\) ) ) ) # ( !\input[3]~input_o\ & ( !\input[2]~input_o\ & ( (\input[0]~input_o\ & !\input[1]~input_o\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010100000000010101011111111110101010010101011111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_input[0]~input_o\,
	datad => \ALT_INV_input[1]~input_o\,
	datae => \ALT_INV_input[3]~input_o\,
	dataf => \ALT_INV_input[2]~input_o\,
	combout => \Mux3~0_combout\);

-- Location: LABCELL_X88_Y21_N54
\Mux2~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux2~0_combout\ = ( \input[3]~input_o\ & ( \input[2]~input_o\ ) ) # ( !\input[3]~input_o\ & ( \input[2]~input_o\ & ( (!\input[1]~input_o\) # (\input[0]~input_o\) ) ) ) # ( \input[3]~input_o\ & ( !\input[2]~input_o\ & ( (\input[0]~input_o\) # 
-- (\input[1]~input_o\) ) ) ) # ( !\input[3]~input_o\ & ( !\input[2]~input_o\ & ( \input[0]~input_o\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111010111110101111110101111101011111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_input[1]~input_o\,
	datac => \ALT_INV_input[0]~input_o\,
	datae => \ALT_INV_input[3]~input_o\,
	dataf => \ALT_INV_input[2]~input_o\,
	combout => \Mux2~0_combout\);

-- Location: LABCELL_X88_Y21_N33
\Mux1~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux1~0_combout\ = ( \input[3]~input_o\ & ( \input[2]~input_o\ ) ) # ( !\input[3]~input_o\ & ( \input[2]~input_o\ & ( (\input[0]~input_o\ & \input[1]~input_o\) ) ) ) # ( \input[3]~input_o\ & ( !\input[2]~input_o\ & ( \input[1]~input_o\ ) ) ) # ( 
-- !\input[3]~input_o\ & ( !\input[2]~input_o\ & ( (\input[1]~input_o\) # (\input[0]~input_o\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010111111111000000001111111100000000010101011111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_input[0]~input_o\,
	datad => \ALT_INV_input[1]~input_o\,
	datae => \ALT_INV_input[3]~input_o\,
	dataf => \ALT_INV_input[2]~input_o\,
	combout => \Mux1~0_combout\);

-- Location: LABCELL_X88_Y21_N36
\Mux0~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux0~0_combout\ = ( !\input[3]~input_o\ & ( \input[2]~input_o\ & ( (!\input[1]~input_o\) # (!\input[0]~input_o\) ) ) ) # ( \input[3]~input_o\ & ( !\input[2]~input_o\ & ( !\input[1]~input_o\ ) ) ) # ( !\input[3]~input_o\ & ( !\input[2]~input_o\ & ( 
-- \input[1]~input_o\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101101010101010101011111010111110100000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_input[1]~input_o\,
	datac => \ALT_INV_input[0]~input_o\,
	datae => \ALT_INV_input[3]~input_o\,
	dataf => \ALT_INV_input[2]~input_o\,
	combout => \Mux0~0_combout\);

-- Location: LABCELL_X23_Y4_N0
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


