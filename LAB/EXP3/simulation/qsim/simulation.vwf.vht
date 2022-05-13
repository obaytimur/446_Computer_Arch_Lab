-- Copyright (C) 2020  Intel Corporation. All rights reserved.
-- Your use of Intel Corporation's design tools, logic functions 
-- and other software and tools, and any partner logic 
-- functions, and any output files from any of the foregoing 
-- (including device programming or simulation files), and any 
-- associated documentation or information are expressly subject 
-- to the terms and conditions of the Intel Program License 
-- Subscription Agreement, the Intel Quartus Prime License Agreement,
-- the Intel FPGA IP License Agreement, or other applicable license
-- agreement, including, without limitation, that your use is for
-- the sole purpose of programming logic devices manufactured by
-- Intel and sold by Intel or its authorized distributors.  Please
-- refer to the applicable agreement for further details, at
-- https://fpgasoftware.intel.com/eula.

-- *****************************************************************************
-- This file contains a Vhdl test bench with test vectors .The test vectors     
-- are exported from a vector file in the Quartus Waveform Editor and apply to  
-- the top level entity of the current Quartus project .The user can use this   
-- testbench to simulate his design using a third-party simulation tool .       
-- *****************************************************************************
-- Generated on "05/13/2022 13:01:45"
                                                             
-- Vhdl Test Bench(with test vectors) for design  :          single_cycle_processor
-- 
-- Simulation tool : 3rd Party
-- 

LIBRARY ieee;                                               
USE ieee.std_logic_1164.all;                                

ENTITY single_cycle_processor_vhd_vec_tst IS
END single_cycle_processor_vhd_vec_tst;
ARCHITECTURE single_cycle_processor_arch OF single_cycle_processor_vhd_vec_tst IS
-- constants                                                 
-- signals                                                   
SIGNAL alu_cont : STD_LOGIC_VECTOR(2 DOWNTO 0);
SIGNAL alu_result : STD_LOGIC_VECTOR(31 DOWNTO 0);
SIGNAL clock : STD_LOGIC;
SIGNAL comp_flag : STD_LOGIC;
SIGNAL pc : STD_LOGIC_VECTOR(31 DOWNTO 0);
SIGNAL rd1 : STD_LOGIC_VECTOR(31 DOWNTO 0);
SIGNAL rd2 : STD_LOGIC_VECTOR(31 DOWNTO 0);
SIGNAL reset : STD_LOGIC;
SIGNAL result : STD_LOGIC_VECTOR(31 DOWNTO 0);
COMPONENT single_cycle_processor
	PORT (
	alu_cont : BUFFER STD_LOGIC_VECTOR(2 DOWNTO 0);
	alu_result : BUFFER STD_LOGIC_VECTOR(31 DOWNTO 0);
	clock : IN STD_LOGIC;
	comp_flag : BUFFER STD_LOGIC;
	pc : BUFFER STD_LOGIC_VECTOR(31 DOWNTO 0);
	rd1 : BUFFER STD_LOGIC_VECTOR(31 DOWNTO 0);
	rd2 : BUFFER STD_LOGIC_VECTOR(31 DOWNTO 0);
	reset : IN STD_LOGIC;
	result : BUFFER STD_LOGIC_VECTOR(31 DOWNTO 0)
	);
END COMPONENT;
BEGIN
	i1 : single_cycle_processor
	PORT MAP (
-- list connections between master ports and signals
	alu_cont => alu_cont,
	alu_result => alu_result,
	clock => clock,
	comp_flag => comp_flag,
	pc => pc,
	rd1 => rd1,
	rd2 => rd2,
	reset => reset,
	result => result
	);

-- clock
t_prcs_clock: PROCESS
BEGIN
	FOR i IN 1 TO 6
	LOOP
		clock <= '0';
		WAIT FOR 40000 ps;
		clock <= '1';
		WAIT FOR 40000 ps;
	END LOOP;
	clock <= '0';
WAIT;
END PROCESS t_prcs_clock;

-- reset
t_prcs_reset: PROCESS
BEGIN
	reset <= '0';
WAIT;
END PROCESS t_prcs_reset;
END single_cycle_processor_arch;
