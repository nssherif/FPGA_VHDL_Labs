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
-- Generated on "03/27/2022 17:01:28"
                                                             
-- Vhdl Test Bench(with test vectors) for design  :          trafficLight
-- 
-- Simulation tool : 3rd Party
-- 

LIBRARY ieee;                                               
USE ieee.std_logic_1164.all;                                

ENTITY trafficLight_vhd_vec_tst IS
END trafficLight_vhd_vec_tst;
ARCHITECTURE trafficLight_arch OF trafficLight_vhd_vec_tst IS
-- constants                                                 
-- signals                                                   
SIGNAL CLOCK_50 : STD_LOGIC;
SIGNAL HEX0 : STD_LOGIC_VECTOR(7 DOWNTO 0);
SIGNAL HEX1 : STD_LOGIC_VECTOR(7 DOWNTO 0);
SIGNAL HEX2 : STD_LOGIC_VECTOR(7 DOWNTO 0);
SIGNAL HEX3 : STD_LOGIC_VECTOR(7 DOWNTO 0);
SIGNAL HEX4 : STD_LOGIC_VECTOR(7 DOWNTO 0);
SIGNAL HEX5 : STD_LOGIC_VECTOR(7 DOWNTO 0);
SIGNAL KEY : STD_LOGIC_VECTOR(3 DOWNTO 0);
SIGNAL LEDR : STD_LOGIC_VECTOR(9 DOWNTO 0);
COMPONENT trafficLight
	PORT (
	CLOCK_50 : IN STD_LOGIC;
	HEX0 : OUT STD_LOGIC_VECTOR(7 DOWNTO 0);
	HEX1 : OUT STD_LOGIC_VECTOR(7 DOWNTO 0);
	HEX2 : OUT STD_LOGIC_VECTOR(7 DOWNTO 0);
	HEX3 : OUT STD_LOGIC_VECTOR(7 DOWNTO 0);
	HEX4 : OUT STD_LOGIC_VECTOR(7 DOWNTO 0);
	HEX5 : OUT STD_LOGIC_VECTOR(7 DOWNTO 0);
	KEY : IN STD_LOGIC_VECTOR(3 DOWNTO 0);
	LEDR : OUT STD_LOGIC_VECTOR(9 DOWNTO 0)
	);
END COMPONENT;
BEGIN
	i1 : trafficLight
	PORT MAP (
-- list connections between master ports and signals
	CLOCK_50 => CLOCK_50,
	HEX0 => HEX0,
	HEX1 => HEX1,
	HEX2 => HEX2,
	HEX3 => HEX3,
	HEX4 => HEX4,
	HEX5 => HEX5,
	KEY => KEY,
	LEDR => LEDR
	);
END trafficLight_arch;
