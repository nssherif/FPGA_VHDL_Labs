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

-- *****************************************************************************
-- This file contains a Vhdl test bench with test vectors .The test vectors     
-- are exported from a vector file in the Quartus Waveform Editor and apply to  
-- the top level entity of the current Quartus project .The user can use this   
-- testbench to simulate his design using a third-party simulation tool .       
-- *****************************************************************************
-- Generated on "03/04/2022 11:26:39"
                                                             
-- Vhdl Test Bench(with test vectors) for design  :          demo_display
-- 
-- Simulation tool : 3rd Party
-- 

LIBRARY ieee;                                               
USE ieee.std_logic_1164.all;                                

ENTITY demo_display_vhd_vec_tst IS
END demo_display_vhd_vec_tst;
ARCHITECTURE demo_display_arch OF demo_display_vhd_vec_tst IS
-- constants                                                 
-- signals                                                   
SIGNAL clk : STD_LOGIC;
SIGNAL leds : STD_LOGIC_VECTOR(9 DOWNTO 0);
SIGNAL Reset : STD_LOGIC;
SIGNAL rstb : STD_LOGIC;
COMPONENT demo_display
	PORT (
	clk : IN STD_LOGIC;
	leds : OUT STD_LOGIC_VECTOR(9 DOWNTO 0);
	Reset : IN STD_LOGIC;
	rstb : IN STD_LOGIC
	);
END COMPONENT;
BEGIN
	i1 : demo_display
	PORT MAP (
-- list connections between master ports and signals
	clk => clk,
	leds => leds,
	Reset => Reset,
	rstb => rstb
	);

-- clk
t_prcs_clk: PROCESS
BEGIN
LOOP
	clk <= '0';
	WAIT FOR 50000 ps;
	clk <= '1';
	WAIT FOR 50000 ps;
	IF (NOW >= 1000000 ps) THEN WAIT; END IF;
END LOOP;
END PROCESS t_prcs_clk;

-- Reset
t_prcs_Reset: PROCESS
BEGIN
	Reset <= '0';
WAIT;
END PROCESS t_prcs_Reset;

-- rstb
t_prcs_rstb: PROCESS
BEGIN
	rstb <= '0';
WAIT;
END PROCESS t_prcs_rstb;
END demo_display_arch;
