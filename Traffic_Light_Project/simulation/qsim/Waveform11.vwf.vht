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
-- Generated on "03/31/2022 10:21:18"
                                                             
-- Vhdl Test Bench(with test vectors) for design  :          sevenSegment
-- 
-- Simulation tool : 3rd Party
-- 

LIBRARY ieee;                                               
USE ieee.std_logic_1164.all;                                

ENTITY sevenSegment_vhd_vec_tst IS
END sevenSegment_vhd_vec_tst;
ARCHITECTURE sevenSegment_arch OF sevenSegment_vhd_vec_tst IS
-- constants                                                 
-- signals                                                   
SIGNAL hexOutput : STD_LOGIC_VECTOR(6 DOWNTO 0);
SIGNAL input : STD_LOGIC_VECTOR(3 DOWNTO 0);
SIGNAL reset : STD_LOGIC;
COMPONENT sevenSegment
	PORT (
	hexOutput : OUT STD_LOGIC_VECTOR(6 DOWNTO 0);
	input : IN STD_LOGIC_VECTOR(3 DOWNTO 0);
	reset : IN STD_LOGIC
	);
END COMPONENT;
BEGIN
	i1 : sevenSegment
	PORT MAP (
-- list connections between master ports and signals
	hexOutput => hexOutput,
	input => input,
	reset => reset
	);
-- input[3]
t_prcs_input_3: PROCESS
BEGIN
	input(3) <= '1';
WAIT;
END PROCESS t_prcs_input_3;
-- input[2]
t_prcs_input_2: PROCESS
BEGIN
	input(2) <= '0';
WAIT;
END PROCESS t_prcs_input_2;
-- input[1]
t_prcs_input_1: PROCESS
BEGIN
	input(1) <= '1';
WAIT;
END PROCESS t_prcs_input_1;
-- input[0]
t_prcs_input_0: PROCESS
BEGIN
	input(0) <= '0';
WAIT;
END PROCESS t_prcs_input_0;

-- reset
t_prcs_reset: PROCESS
BEGIN
	reset <= '0';
	WAIT FOR 500000 ps;
	reset <= '1';
WAIT;
END PROCESS t_prcs_reset;
END sevenSegment_arch;
