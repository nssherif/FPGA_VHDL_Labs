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

-- DATE "03/24/2022 20:39:24"

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

ENTITY 	hazard2 IS
    PORT (
	A : IN std_logic;
	B : IN std_logic;
	C : IN std_logic;
	D : IN std_logic;
	F : OUT std_logic
	);
END hazard2;

-- Design Ports Information
-- F	=>  Location: PIN_B5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A	=>  Location: PIN_D2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B	=>  Location: PIN_K12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- C	=>  Location: PIN_J12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- D	=>  Location: PIN_C2,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF hazard2 IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_A : std_logic;
SIGNAL ww_B : std_logic;
SIGNAL ww_C : std_logic;
SIGNAL ww_D : std_logic;
SIGNAL ww_F : std_logic;
SIGNAL \~QUARTUS_CREATED_GND~I_combout\ : std_logic;
SIGNAL \C~input_o\ : std_logic;
SIGNAL \A~input_o\ : std_logic;
SIGNAL \B~input_o\ : std_logic;
SIGNAL \D~input_o\ : std_logic;
SIGNAL \g18|z~0_combout\ : std_logic;
SIGNAL \ALT_INV_D~input_o\ : std_logic;
SIGNAL \ALT_INV_C~input_o\ : std_logic;
SIGNAL \ALT_INV_B~input_o\ : std_logic;
SIGNAL \ALT_INV_A~input_o\ : std_logic;
SIGNAL \g18|ALT_INV_z~0_combout\ : std_logic;

BEGIN

ww_A <= A;
ww_B <= B;
ww_C <= C;
ww_D <= D;
F <= ww_F;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;
\ALT_INV_D~input_o\ <= NOT \D~input_o\;
\ALT_INV_C~input_o\ <= NOT \C~input_o\;
\ALT_INV_B~input_o\ <= NOT \B~input_o\;
\ALT_INV_A~input_o\ <= NOT \A~input_o\;
\g18|ALT_INV_z~0_combout\ <= NOT \g18|z~0_combout\;

-- Location: IOOBUF_X14_Y81_N19
\F~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \g18|ALT_INV_z~0_combout\,
	devoe => ww_devoe,
	o => ww_F);

-- Location: IOIBUF_X12_Y81_N18
\C~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_C,
	o => \C~input_o\);

-- Location: IOIBUF_X12_Y81_N35
\A~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A,
	o => \A~input_o\);

-- Location: IOIBUF_X12_Y81_N1
\B~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B,
	o => \B~input_o\);

-- Location: IOIBUF_X12_Y81_N52
\D~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_D,
	o => \D~input_o\);

-- Location: LABCELL_X12_Y79_N0
\g18|z~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \g18|z~0_combout\ = ( \B~input_o\ & ( \D~input_o\ & ( (!\C~input_o\ & \A~input_o\) ) ) ) # ( !\B~input_o\ & ( \D~input_o\ & ( (\A~input_o\) # (\C~input_o\) ) ) ) # ( \B~input_o\ & ( !\D~input_o\ & ( (!\C~input_o\ & \A~input_o\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000011000000110000111111001111110000110000001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_C~input_o\,
	datac => \ALT_INV_A~input_o\,
	datae => \ALT_INV_B~input_o\,
	dataf => \ALT_INV_D~input_o\,
	combout => \g18|z~0_combout\);

-- Location: MLABCELL_X21_Y43_N3
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


