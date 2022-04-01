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

-- ***************************************************************************
-- This file contains a Vhdl test bench template that is freely editable to   
-- suit user's needs .Comments are provided in each section to help the user  
-- fill out necessary details.                                                
-- ***************************************************************************
-- Generated on "03/16/2022 14:43:21"
                                                            
-- Vhdl Test Bench template for design  :  fourBitCounter
-- 
-- Simulation tool : ModelSim-Altera (VHDL)
-- 

LIBRARY ieee;                                               
USE ieee.std_logic_1164.all;                                

ENTITY fourBitCounter_vhd_tst IS
END fourBitCounter_vhd_tst;
ARCHITECTURE fourBitCounter_arch OF fourBitCounter_vhd_tst IS
-- constants                                                 
-- signals                                                   
SIGNAL clk : STD_LOGIC;
SIGNAL enable : STD_LOGIC;
SIGNAL loadCount : STD_LOGIC;
SIGNAL output : STD_LOGIC_VECTOR(3 DOWNTO 0);
SIGNAL reset : STD_LOGIC;
SIGNAL switchValue : STD_LOGIC_VECTOR(3 DOWNTO 0);
COMPONENT fourBitCounter
	PORT (
	clk : IN STD_LOGIC;
	enable : IN STD_LOGIC;
	loadCount : IN STD_LOGIC;
	output : OUT STD_LOGIC_VECTOR(3 DOWNTO 0);
	reset : IN STD_LOGIC;
	switchValue : IN STD_LOGIC_VECTOR(3 DOWNTO 0)
	);
END COMPONENT;
BEGIN
	i1 : fourBitCounter
	PORT MAP (
-- list connections between master ports and signals
	clk => clk,
	enable => enable,
	loadCount => loadCount,
	output => output,
	reset => reset,
	switchValue => switchValue
	);
init : PROCESS                                               
-- variable declarations                                     
BEGIN                                                        
		clk <= not CLOCK_50 after 0.5 ns; 
	WAIT;                                                       
END PROCESS init;                                           
always : PROCESS                                              
-- optional sensitivity list                                  
-- (        )                                                 
-- variable declarations                                      
BEGIN                                                         
      reset <= '0';
		enable <= '0', '1' after 10ns, '0' after 20ns;
		switchValue <= '0000', '1010' after 10ns, '0010' after 20ns;
		loadCount <= '0','1' after 30ns;
WAIT;                                                        
END PROCESS always;                                          
END fourBitCounter_arch;
