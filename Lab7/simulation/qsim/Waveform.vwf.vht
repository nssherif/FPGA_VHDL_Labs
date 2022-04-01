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
-- Generated on "03/24/2022 18:33:36"
                                                             
-- Vhdl Test Bench(with test vectors) for design  :          hazard
-- 
-- Simulation tool : 3rd Party
-- 

LIBRARY ieee;                                               
USE ieee.std_logic_1164.all;                                

ENTITY hazard_vhd_vec_tst IS
END hazard_vhd_vec_tst;
ARCHITECTURE hazard_arch OF hazard_vhd_vec_tst IS
-- constants                                                 
-- signals                                                   
SIGNAL A : STD_LOGIC;
SIGNAL B : STD_LOGIC;
SIGNAL C : STD_LOGIC;
SIGNAL D : STD_LOGIC;
SIGNAL E : STD_LOGIC;
SIGNAL F : STD_LOGIC;
COMPONENT hazard
	PORT (
	A : IN STD_LOGIC;
	B : IN STD_LOGIC;
	C : IN STD_LOGIC;
	D : IN STD_LOGIC;
	E : IN STD_LOGIC;
	F : OUT STD_LOGIC
	);
END COMPONENT;
BEGIN
	i1 : hazard
	PORT MAP (
-- list connections between master ports and signals
	A => A,
	B => B,
	C => C,
	D => D,
	E => E,
	F => F
	);

-- A
t_prcs_A: PROCESS
BEGIN
	A <= '1';
WAIT;
END PROCESS t_prcs_A;

-- B
t_prcs_B: PROCESS
BEGIN
	B <= '1';
WAIT;
END PROCESS t_prcs_B;

-- C
t_prcs_C: PROCESS
BEGIN
	C <= '1';
WAIT;
END PROCESS t_prcs_C;

-- D
t_prcs_D: PROCESS
BEGIN
	D <= '1';
WAIT;
END PROCESS t_prcs_D;

-- E
t_prcs_E: PROCESS
BEGIN
	E <= '1';
WAIT;
END PROCESS t_prcs_E;
END hazard_arch;
