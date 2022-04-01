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
-- Generated on "03/25/2022 10:05:24"
                                                            
-- Vhdl Test Bench template for design  :  twoInputNand
-- 
-- Simulation tool : ModelSim-Altera (VHDL)
-- 

LIBRARY ieee;                                               
USE ieee.std_logic_1164.all;                                

ENTITY twoInputNand_vhd_tst IS
END twoInputNand_vhd_tst;
ARCHITECTURE twoInputNand_arch OF twoInputNand_vhd_tst IS
-- constants                                                 
-- signals                                                   
SIGNAL x : STD_LOGIC;
SIGNAL y : STD_LOGIC;
SIGNAL z : STD_LOGIC;
COMPONENT twoInputNand
	PORT (
	x : IN STD_LOGIC;
	y : IN STD_LOGIC;
	z : BUFFER STD_LOGIC
	);
END COMPONENT;
BEGIN
	i1 : twoInputNand
	PORT MAP (
-- list connections between master ports and signals
	x => x,
	y => y,
	z => z
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
END twoInputNand_arch;
