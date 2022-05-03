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
-- Generated on "04/21/2022 14:57:36"
                                                             
-- Vhdl Test Bench(with test vectors) for design  :          alp
-- 
-- Simulation tool : 3rd Party
-- 

LIBRARY ieee;                                               
USE ieee.std_logic_1164.all;                                

ENTITY alp_vhd_vec_tst IS
END alp_vhd_vec_tst;
ARCHITECTURE alp_arch OF alp_vhd_vec_tst IS
-- constants                                                 
-- signals                                                   
SIGNAL CLR : STD_LOGIC;
SIGNAL COMP : STD_LOGIC;
SIGNAL DATA_IN : STD_LOGIC_VECTOR(3 DOWNTO 0);
SIGNAL ERR : STD_LOGIC;
SIGNAL LOAD : STD_LOGIC;
SIGNAL OP : STD_LOGIC_VECTOR(2 DOWNTO 0);
SIGNAL OUT_0 : STD_LOGIC_VECTOR(3 DOWNTO 0);
SIGNAL OUT_1 : STD_LOGIC_VECTOR(3 DOWNTO 0);
SIGNAL clock : STD_LOGIC;
SIGNAL reset : STD_LOGIC;
COMPONENT alp
	PORT (
	CLR : IN STD_LOGIC;
	COMP : IN STD_LOGIC;
	DATA_IN : IN STD_LOGIC_VECTOR(3 DOWNTO 0);
	ERR : BUFFER STD_LOGIC;
	LOAD : IN STD_LOGIC;
	OP : IN STD_LOGIC_VECTOR(2 DOWNTO 0);
	OUT_0 : BUFFER STD_LOGIC_VECTOR(3 DOWNTO 0);
	OUT_1 : BUFFER STD_LOGIC_VECTOR(3 DOWNTO 0);
	clock : IN STD_LOGIC;
	reset : IN STD_LOGIC
	);
END COMPONENT;
BEGIN
	i1 : alp
	PORT MAP (
-- list connections between master ports and signals
	CLR => CLR,
	COMP => COMP,
	DATA_IN => DATA_IN,
	ERR => ERR,
	LOAD => LOAD,
	OP => OP,
	OUT_0 => OUT_0,
	OUT_1 => OUT_1,
	clock => clock,
	reset => reset
	);

-- CLR
t_prcs_CLR: PROCESS
BEGIN
	CLR <= '0';
WAIT;
END PROCESS t_prcs_CLR;

-- COMP
t_prcs_COMP: PROCESS
BEGIN
	COMP <= '0';
	WAIT FOR 160000 ps;
	COMP <= '1';
WAIT;
END PROCESS t_prcs_COMP;
-- DATA_IN[3]
t_prcs_DATA_IN_3: PROCESS
BEGIN
	DATA_IN(3) <= '0';
	WAIT FOR 80000 ps;
	DATA_IN(3) <= '1';
	WAIT FOR 80000 ps;
	DATA_IN(3) <= '0';
	WAIT FOR 590000 ps;
	DATA_IN(3) <= '1';
WAIT;
END PROCESS t_prcs_DATA_IN_3;
-- DATA_IN[2]
t_prcs_DATA_IN_2: PROCESS
BEGIN
	DATA_IN(2) <= '0';
	WAIT FOR 80000 ps;
	DATA_IN(2) <= '1';
	WAIT FOR 670000 ps;
	DATA_IN(2) <= '0';
WAIT;
END PROCESS t_prcs_DATA_IN_2;
-- DATA_IN[1]
t_prcs_DATA_IN_1: PROCESS
BEGIN
	DATA_IN(1) <= '1';
WAIT;
END PROCESS t_prcs_DATA_IN_1;
-- DATA_IN[0]
t_prcs_DATA_IN_0: PROCESS
BEGIN
	DATA_IN(0) <= '1';
	WAIT FOR 80000 ps;
	DATA_IN(0) <= '0';
	WAIT FOR 80000 ps;
	DATA_IN(0) <= '1';
	WAIT FOR 590000 ps;
	DATA_IN(0) <= '0';
WAIT;
END PROCESS t_prcs_DATA_IN_0;

-- LOAD
t_prcs_LOAD: PROCESS
BEGIN
	LOAD <= '1';
	WAIT FOR 160000 ps;
	LOAD <= '0';
WAIT;
END PROCESS t_prcs_LOAD;
-- OP[2]
t_prcs_OP_2: PROCESS
BEGIN
	OP(2) <= '0';
WAIT;
END PROCESS t_prcs_OP_2;
-- OP[1]
t_prcs_OP_1: PROCESS
BEGIN
	OP(1) <= '1';
WAIT;
END PROCESS t_prcs_OP_1;
-- OP[0]
t_prcs_OP_0: PROCESS
BEGIN
	OP(0) <= '0';
WAIT;
END PROCESS t_prcs_OP_0;

-- clock
t_prcs_clock: PROCESS
BEGIN
	FOR i IN 1 TO 12
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
END alp_arch;
