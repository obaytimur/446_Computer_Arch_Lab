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
-- Generated on "04/01/2022 12:42:29"
                                                             
-- Vhdl Test Bench(with test vectors) for design  :          datapath_design
-- 
-- Simulation tool : 3rd Party
-- 

LIBRARY ieee;                                               
USE ieee.std_logic_1164.all;                                

ENTITY datapath_design_vhd_vec_tst IS
END datapath_design_vhd_vec_tst;
ARCHITECTURE datapath_design_arch OF datapath_design_vhd_vec_tst IS
-- constants                                                 
-- signals                                                   
SIGNAL alu_control : STD_LOGIC_VECTOR(2 DOWNTO 0);
SIGNAL clock : STD_LOGIC;
SIGNAL CO : STD_LOGIC;
SIGNAL Input_Data : STD_LOGIC_VECTOR(3 DOWNTO 0);
SIGNAL mux_select : STD_LOGIC;
SIGNAL mux_select_alu : STD_LOGIC;
SIGNAL mux_select_r1 : STD_LOGIC;
SIGNAL N : STD_LOGIC;
SIGNAL OVF : STD_LOGIC;
SIGNAL PS_Acc : STD_LOGIC;
SIGNAL R1 : STD_LOGIC_VECTOR(3 DOWNTO 0);
SIGNAL reset : STD_LOGIC;
SIGNAL RL_Q : STD_LOGIC;
SIGNAL Z : STD_LOGIC;
COMPONENT datapath_design
	PORT (
	alu_control : IN STD_LOGIC_VECTOR(2 DOWNTO 0);
	clock : IN STD_LOGIC;
	CO : OUT STD_LOGIC;
	Input_Data : IN STD_LOGIC_VECTOR(3 DOWNTO 0);
	mux_select : IN STD_LOGIC;
	mux_select_alu : IN STD_LOGIC;
	mux_select_r1 : IN STD_LOGIC;
	N : OUT STD_LOGIC;
	OVF : OUT STD_LOGIC;
	PS_Acc : IN STD_LOGIC;
	R1 : OUT STD_LOGIC_VECTOR(3 DOWNTO 0);
	reset : IN STD_LOGIC;
	RL_Q : IN STD_LOGIC;
	Z : OUT STD_LOGIC
	);
END COMPONENT;
BEGIN
	i1 : datapath_design
	PORT MAP (
-- list connections between master ports and signals
	alu_control => alu_control,
	clock => clock,
	CO => CO,
	Input_Data => Input_Data,
	mux_select => mux_select,
	mux_select_alu => mux_select_alu,
	mux_select_r1 => mux_select_r1,
	N => N,
	OVF => OVF,
	PS_Acc => PS_Acc,
	R1 => R1,
	reset => reset,
	RL_Q => RL_Q,
	Z => Z
	);
-- alu_control[2]
t_prcs_alu_control_2: PROCESS
BEGIN
	alu_control(2) <= '0';
WAIT;
END PROCESS t_prcs_alu_control_2;
-- alu_control[1]
t_prcs_alu_control_1: PROCESS
BEGIN
	alu_control(1) <= '0';
WAIT;
END PROCESS t_prcs_alu_control_1;
-- alu_control[0]
t_prcs_alu_control_0: PROCESS
BEGIN
	alu_control(0) <= '0';
WAIT;
END PROCESS t_prcs_alu_control_0;

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
-- Input_Data[3]
t_prcs_Input_Data_3: PROCESS
BEGIN
	Input_Data(3) <= '0';
WAIT;
END PROCESS t_prcs_Input_Data_3;
-- Input_Data[2]
t_prcs_Input_Data_2: PROCESS
BEGIN
	Input_Data(2) <= '1';
	WAIT FOR 999000 ps;
	Input_Data(2) <= '0';
WAIT;
END PROCESS t_prcs_Input_Data_2;
-- Input_Data[1]
t_prcs_Input_Data_1: PROCESS
BEGIN
	Input_Data(1) <= '0';
WAIT;
END PROCESS t_prcs_Input_Data_1;
-- Input_Data[0]
t_prcs_Input_Data_0: PROCESS
BEGIN
	Input_Data(0) <= '0';
WAIT;
END PROCESS t_prcs_Input_Data_0;

-- mux_select
t_prcs_mux_select: PROCESS
BEGIN
	mux_select <= '0';
	WAIT FOR 80000 ps;
	mux_select <= '1';
	WAIT FOR 80000 ps;
	mux_select <= '0';
WAIT;
END PROCESS t_prcs_mux_select;

-- mux_select_alu
t_prcs_mux_select_alu: PROCESS
BEGIN
	mux_select_alu <= '0';
WAIT;
END PROCESS t_prcs_mux_select_alu;

-- mux_select_r1
t_prcs_mux_select_r1: PROCESS
BEGIN
	mux_select_r1 <= '1';
	WAIT FOR 999000 ps;
	mux_select_r1 <= '0';
WAIT;
END PROCESS t_prcs_mux_select_r1;

-- PS_Acc
t_prcs_PS_Acc: PROCESS
BEGIN
	PS_Acc <= '0';
	WAIT FOR 80000 ps;
	PS_Acc <= '1';
	WAIT FOR 80000 ps;
	PS_Acc <= '0';
	WAIT FOR 640000 ps;
	PS_Acc <= '1';
	WAIT FOR 80000 ps;
	PS_Acc <= '0';
WAIT;
END PROCESS t_prcs_PS_Acc;

-- RL_Q
t_prcs_RL_Q: PROCESS
BEGIN
	RL_Q <= '0';
	WAIT FOR 640000 ps;
	RL_Q <= '1';
	WAIT FOR 160000 ps;
	RL_Q <= '0';
WAIT;
END PROCESS t_prcs_RL_Q;

-- reset
t_prcs_reset: PROCESS
BEGIN
	reset <= '0';
WAIT;
END PROCESS t_prcs_reset;
END datapath_design_arch;
