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
-- Generated on "03/10/2022 17:16:23"
                                                             
-- Vhdl Test Bench(with test vectors) for design  :          twentyBitCounter
-- 
-- Simulation tool : 3rd Party
-- 

LIBRARY ieee;                                               
USE ieee.std_logic_1164.all;                                

ENTITY twentyBitCounter_vhd_vec_tst IS
END twentyBitCounter_vhd_vec_tst;
ARCHITECTURE twentyBitCounter_arch OF twentyBitCounter_vhd_vec_tst IS
-- constants                                                 
-- signals                                                   
SIGNAL clkTwentyBit : STD_LOGIC;
SIGNAL output : STD_LOGIC_VECTOR(19 DOWNTO 0);
SIGNAL reset : STD_LOGIC;
COMPONENT twentyBitCounter
	PORT (
	clkTwentyBit : IN STD_LOGIC;
	output : BUFFER STD_LOGIC_VECTOR(19 DOWNTO 0);
	reset : IN STD_LOGIC
	);
END COMPONENT;
BEGIN
	i1 : twentyBitCounter
	PORT MAP (
-- list connections between master ports and signals
	clkTwentyBit => clkTwentyBit,
	output => output,
	reset => reset
	);

-- clkTwentyBit
t_prcs_clkTwentyBit: PROCESS
BEGIN
LOOP
	clkTwentyBit <= '0';
	WAIT FOR 50000 ps;
	clkTwentyBit <= '1';
	WAIT FOR 50000 ps;
	IF (NOW >= 1000000 ps) THEN WAIT; END IF;
END LOOP;
END PROCESS t_prcs_clkTwentyBit;

-- reset
t_prcs_reset: PROCESS
BEGIN
	reset <= '0';
WAIT;
END PROCESS t_prcs_reset;
END twentyBitCounter_arch;
