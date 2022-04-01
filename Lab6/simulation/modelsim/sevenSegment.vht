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
-- Generated on "03/16/2022 15:02:12"
                                                            
-- Vhdl Test Bench template for design  :  sevenSegment
-- 
-- Simulation tool : ModelSim-Altera (VHDL)
-- 

LIBRARY ieee;                                               
USE ieee.std_logic_1164.all;                                

ENTITY sevenSegment_vhd_tst IS
END sevenSegment_vhd_tst;
ARCHITECTURE sevenSegment_arch OF sevenSegment_vhd_tst IS
-- constants                                                 
-- signals                                                   
SIGNAL hexOutput : STD_LOGIC_VECTOR(6 DOWNTO 0);
SIGNAL input : STD_LOGIC_VECTOR(3 DOWNTO 0) := '0000';
COMPONENT sevenSegment
	PORT (
	hexOutput : OUT STD_LOGIC_VECTOR(6 DOWNTO 0);
	input : IN STD_LOGIC_VECTOR(3 DOWNTO 0)
	);
END COMPONENT;
BEGIN
	i1 : sevenSegment
	PORT MAP (
-- list connections between master ports and signals
	hexOutput => hexOutput,
	input => input
	);
init : PROCESS                                               
                                    
BEGIN                                                        
        -- code that executes only once                      
WAIT;                                                       
END PROCESS init;                                           
always : PROCESS                                              
-- optional sensitivity list                                  
-- (        )                                                 
-- variable declarations                                      
BEGIN                                                         
        input <= '0000', '0001' after 10ns, '0011' after 20 ns, '0111' after 30ns, '1111' after 40ns, '0000' after 50ns; 
WAIT;                                                        
END PROCESS always;                                          
END sevenSegment_arch;
