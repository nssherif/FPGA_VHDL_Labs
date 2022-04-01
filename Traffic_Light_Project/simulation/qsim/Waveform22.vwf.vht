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
-- Generated on "03/31/2022 15:31:42"
                                                             
-- Vhdl Test Bench(with test vectors) for design  :          fiveBitCounter
-- 
-- Simulation tool : 3rd Party
-- 

LIBRARY ieee;                                               
USE ieee.std_logic_1164.all;                                

ENTITY fiveBitCounter_vhd_vec_tst IS
END fiveBitCounter_vhd_vec_tst;
ARCHITECTURE fiveBitCounter_arch OF fiveBitCounter_vhd_vec_tst IS
-- constants                                                 
-- signals                                                   
SIGNAL clk : STD_LOGIC;
SIGNAL enable : STD_LOGIC;
SIGNAL output : STD_LOGIC_VECTOR(4 DOWNTO 0);
SIGNAL reset : STD_LOGIC;
COMPONENT fiveBitCounter
	PORT (
	clk : IN STD_LOGIC;
	enable : IN STD_LOGIC;
	output : BUFFER STD_LOGIC_VECTOR(4 DOWNTO 0);
	reset : IN STD_LOGIC
	);
END COMPONENT;
BEGIN
	i1 : fiveBitCounter
	PORT MAP (
-- list connections between master ports and signals
	clk => clk,
	enable => enable,
	output => output,
	reset => reset
	);

-- clk
t_prcs_clk: PROCESS
BEGIN
LOOP
	clk <= '0';
	WAIT FOR 25000 ps;
	clk <= '1';
	WAIT FOR 25000 ps;
	IF (NOW >= 1000000 ps) THEN WAIT; END IF;
END LOOP;
END PROCESS t_prcs_clk;

-- enable
t_prcs_enable: PROCESS
BEGIN
	enable <= '1';
WAIT;
END PROCESS t_prcs_enable;

-- reset
t_prcs_reset: PROCESS
BEGIN
	reset <= '0';
	WAIT FOR 420000 ps;
	reset <= '1';
	WAIT FOR 80000 ps;
	reset <= '0';
WAIT;
END PROCESS t_prcs_reset;
END fiveBitCounter_arch;
