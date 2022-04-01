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
-- Generated on "03/10/2022 17:26:55"
                                                             
-- Vhdl Test Bench(with test vectors) for design  :          tenBitShiftRegister
-- 
-- Simulation tool : 3rd Party
-- 

LIBRARY ieee;                                               
USE ieee.std_logic_1164.all;                                

ENTITY tenBitShiftRegister_vhd_vec_tst IS
END tenBitShiftRegister_vhd_vec_tst;
ARCHITECTURE tenBitShiftRegister_arch OF tenBitShiftRegister_vhd_vec_tst IS
-- constants                                                 
-- signals                                                   
SIGNAL clk : STD_LOGIC;
SIGNAL clrb : STD_LOGIC;
SIGNAL q : STD_LOGIC_VECTOR(9 DOWNTO 0);
SIGNAL s0 : STD_LOGIC;
SIGNAL s1 : STD_LOGIC;
COMPONENT tenBitShiftRegister
	PORT (
	clk : IN STD_LOGIC;
	clrb : IN STD_LOGIC;
	q : OUT STD_LOGIC_VECTOR(9 DOWNTO 0);
	s0 : IN STD_LOGIC;
	s1 : IN STD_LOGIC
	);
END COMPONENT;
BEGIN
	i1 : tenBitShiftRegister
	PORT MAP (
-- list connections between master ports and signals
	clk => clk,
	clrb => clrb,
	q => q,
	s0 => s0,
	s1 => s1
	);

-- s0
t_prcs_s0: PROCESS
BEGIN
	s0 <= '1';
	WAIT FOR 380000 ps;
	s0 <= '0';
WAIT;
END PROCESS t_prcs_s0;

-- s1
t_prcs_s1: PROCESS
BEGIN
	s1 <= '0';
	WAIT FOR 380000 ps;
	s1 <= '1';
	WAIT FOR 420000 ps;
	s1 <= '0';
WAIT;
END PROCESS t_prcs_s1;

-- clk
t_prcs_clk: PROCESS
BEGIN
	FOR i IN 1 TO 6
	LOOP
		clk <= '0';
		WAIT FOR 75000 ps;
		clk <= '1';
		WAIT FOR 75000 ps;
	END LOOP;
	clk <= '0';
	WAIT FOR 75000 ps;
	clk <= '1';
WAIT;
END PROCESS t_prcs_clk;

-- clrb
t_prcs_clrb: PROCESS
BEGIN
	clrb <= '0';
	WAIT FOR 800000 ps;
	clrb <= '1';
WAIT;
END PROCESS t_prcs_clrb;
END tenBitShiftRegister_arch;
