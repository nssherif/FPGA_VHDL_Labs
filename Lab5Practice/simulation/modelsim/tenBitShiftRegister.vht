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
-- Generated on "03/11/2022 09:08:27"
                                                            
-- Vhdl Test Bench template for design  :  tenBitShiftRegister
-- 
-- Simulation tool : ModelSim-Altera (VHDL)
-- 

LIBRARY ieee;                                               
USE ieee.std_logic_1164.all;                                

ENTITY tenBitShiftRegister_vhd_tst IS
END tenBitShiftRegister_vhd_tst;
ARCHITECTURE tenBitShiftRegister_arch OF tenBitShiftRegister_vhd_tst IS
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
	q : BUFFER STD_LOGIC_VECTOR(9 DOWNTO 0);
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
init : PROCESS                                               
-- variable declarations                                     
BEGIN                                                        
        -- code that executes only once                      
WAIT;                                                       
END PROCESS init;                                           
always : PROCESS                                              
-- optional sensitivity list                                  
-- (        )                                                 
-- variable declarations                                      
BEGIN                                                         
        -- code executes for every event on sensitivity list  
WAIT;                                                        
END PROCESS always;                                          
END tenBitShiftRegister_arch;
