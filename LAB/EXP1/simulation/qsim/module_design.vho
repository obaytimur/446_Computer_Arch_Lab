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

-- VENDOR "Altera"
-- PROGRAM "Quartus Prime"
-- VERSION "Version 20.1.1 Build 720 11/11/2020 SJ Lite Edition"

-- DATE "04/01/2022 13:27:20"

-- 
-- Device: Altera 5CGXFC7C7F23C8 Package FBGA484
-- 

-- 
-- This VHDL file should be used for ModelSim-Altera (VHDL) only
-- 

LIBRARY ALTERA;
LIBRARY ALTERA_LNSIM;
LIBRARY CYCLONEV;
LIBRARY IEEE;
USE ALTERA.ALTERA_PRIMITIVES_COMPONENTS.ALL;
USE ALTERA_LNSIM.ALTERA_LNSIM_COMPONENTS.ALL;
USE CYCLONEV.CYCLONEV_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	datapath_design IS
    PORT (
	CO : OUT std_logic;
	mux_select_alu : IN std_logic;
	reset : IN std_logic;
	clock : IN std_logic;
	Input_Data : IN std_logic_vector(3 DOWNTO 0);
	alu_control : IN std_logic_vector(2 DOWNTO 0);
	OVF : OUT std_logic;
	N : OUT std_logic;
	Z : OUT std_logic;
	output_acc : OUT std_logic_vector(3 DOWNTO 0);
	PS_Acc : IN std_logic;
	mux_select : IN std_logic;
	RL_Q : IN std_logic;
	output_Q : OUT std_logic_vector(3 DOWNTO 0);
	R1 : OUT std_logic_vector(3 DOWNTO 0);
	mux_select_r1 : IN std_logic
	);
END datapath_design;

-- Design Ports Information
-- CO	=>  Location: PIN_AA22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- OVF	=>  Location: PIN_AB22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- N	=>  Location: PIN_T19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Z	=>  Location: PIN_V16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- output_acc[3]	=>  Location: PIN_Y21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- output_acc[2]	=>  Location: PIN_V18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- output_acc[1]	=>  Location: PIN_Y19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- output_acc[0]	=>  Location: PIN_V19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- output_Q[3]	=>  Location: PIN_V21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- output_Q[2]	=>  Location: PIN_U22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- output_Q[1]	=>  Location: PIN_AA17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- output_Q[0]	=>  Location: PIN_W16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- R1[3]	=>  Location: PIN_T17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- R1[2]	=>  Location: PIN_W21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- R1[1]	=>  Location: PIN_T14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- R1[0]	=>  Location: PIN_AA18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- alu_control[2]	=>  Location: PIN_U20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- alu_control[0]	=>  Location: PIN_U21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- mux_select_alu	=>  Location: PIN_U16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- alu_control[1]	=>  Location: PIN_U17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- reset	=>  Location: PIN_P14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Input_Data[3]	=>  Location: PIN_AA19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- clock	=>  Location: PIN_M16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Input_Data[2]	=>  Location: PIN_AA20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Input_Data[1]	=>  Location: PIN_V20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Input_Data[0]	=>  Location: PIN_W19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- PS_Acc	=>  Location: PIN_W22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- mux_select	=>  Location: PIN_Y22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- RL_Q	=>  Location: PIN_Y20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- mux_select_r1	=>  Location: PIN_R14,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF datapath_design IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_CO : std_logic;
SIGNAL ww_mux_select_alu : std_logic;
SIGNAL ww_reset : std_logic;
SIGNAL ww_clock : std_logic;
SIGNAL ww_Input_Data : std_logic_vector(3 DOWNTO 0);
SIGNAL ww_alu_control : std_logic_vector(2 DOWNTO 0);
SIGNAL ww_OVF : std_logic;
SIGNAL ww_N : std_logic;
SIGNAL ww_Z : std_logic;
SIGNAL ww_output_acc : std_logic_vector(3 DOWNTO 0);
SIGNAL ww_PS_Acc : std_logic;
SIGNAL ww_mux_select : std_logic;
SIGNAL ww_RL_Q : std_logic;
SIGNAL ww_output_Q : std_logic_vector(3 DOWNTO 0);
SIGNAL ww_R1 : std_logic_vector(3 DOWNTO 0);
SIGNAL ww_mux_select_r1 : std_logic;
SIGNAL \~QUARTUS_CREATED_GND~I_combout\ : std_logic;
SIGNAL \clock~input_o\ : std_logic;
SIGNAL \clock~inputCLKENA0_outclk\ : std_logic;
SIGNAL \Input_Data[3]~input_o\ : std_logic;
SIGNAL \reset~input_o\ : std_logic;
SIGNAL \inst4|out~0_combout\ : std_logic;
SIGNAL \alu_control[1]~input_o\ : std_logic;
SIGNAL \alu_control[2]~input_o\ : std_logic;
SIGNAL \inst6|Equal0~0_combout\ : std_logic;
SIGNAL \Input_Data[1]~input_o\ : std_logic;
SIGNAL \inst4|out~2_combout\ : std_logic;
SIGNAL \alu_control[0]~input_o\ : std_logic;
SIGNAL \inst6|CO~0_combout\ : std_logic;
SIGNAL \Input_Data[2]~input_o\ : std_logic;
SIGNAL \inst4|out~1_combout\ : std_logic;
SIGNAL \Input_Data[0]~input_o\ : std_logic;
SIGNAL \inst4|out~3_combout\ : std_logic;
SIGNAL \mux_select_alu~input_o\ : std_logic;
SIGNAL \inst6|CO~2_combout\ : std_logic;
SIGNAL \inst6|CO~1_combout\ : std_logic;
SIGNAL \inst6|CO~3_combout\ : std_logic;
SIGNAL \inst6|Add0~0_combout\ : std_logic;
SIGNAL \inst6|Add3~0_combout\ : std_logic;
SIGNAL \inst6|Add1~0_combout\ : std_logic;
SIGNAL \inst6|OVF~0_combout\ : std_logic;
SIGNAL \inst6|Equal11~0_combout\ : std_logic;
SIGNAL \inst6|out[3]~0_combout\ : std_logic;
SIGNAL \inst6|out[3]~1_combout\ : std_logic;
SIGNAL \inst6|out[3]~2_combout\ : std_logic;
SIGNAL \inst6|Equal15~0_combout\ : std_logic;
SIGNAL \inst6|Equal13~0_combout\ : std_logic;
SIGNAL \inst6|Add1~1_combout\ : std_logic;
SIGNAL \inst6|Equal1~0_combout\ : std_logic;
SIGNAL \inst6|Z~4_combout\ : std_logic;
SIGNAL \inst6|Equal11~1_combout\ : std_logic;
SIGNAL \inst6|Add0~1_combout\ : std_logic;
SIGNAL \inst6|Z~0_combout\ : std_logic;
SIGNAL \PS_Acc~input_o\ : std_logic;
SIGNAL \mux_select~input_o\ : std_logic;
SIGNAL \inst7|out[3]~0_combout\ : std_logic;
SIGNAL \RL_Q~input_o\ : std_logic;
SIGNAL \inst8|out~1_combout\ : std_logic;
SIGNAL \inst8|out~3_combout\ : std_logic;
SIGNAL \inst8|out~2_combout\ : std_logic;
SIGNAL \inst7|out[3]~1_combout\ : std_logic;
SIGNAL \inst6|out[2]~10_combout\ : std_logic;
SIGNAL \inst6|out[2]~5_combout\ : std_logic;
SIGNAL \inst6|out[2]~9_combout\ : std_logic;
SIGNAL \inst6|out[2]~4_combout\ : std_logic;
SIGNAL \inst7|out~3_combout\ : std_logic;
SIGNAL \inst6|out[1]~6_combout\ : std_logic;
SIGNAL \inst7|out~4_combout\ : std_logic;
SIGNAL \inst7|out~5_combout\ : std_logic;
SIGNAL \inst6|out[0]~8_combout\ : std_logic;
SIGNAL \inst6|out[0]~7_combout\ : std_logic;
SIGNAL \inst7|out~6_combout\ : std_logic;
SIGNAL \inst8|out~0_combout\ : std_logic;
SIGNAL \inst6|out[3]~3_combout\ : std_logic;
SIGNAL \inst7|out~2_combout\ : std_logic;
SIGNAL \mux_select_r1~input_o\ : std_logic;
SIGNAL \inst31|out~0_combout\ : std_logic;
SIGNAL \inst31|out~1_combout\ : std_logic;
SIGNAL \inst31|out~2_combout\ : std_logic;
SIGNAL \inst31|out~3_combout\ : std_logic;
SIGNAL \inst4|out\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \inst7|out\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \inst8|out\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \inst31|out\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \ALT_INV_mux_select_r1~input_o\ : std_logic;
SIGNAL \ALT_INV_RL_Q~input_o\ : std_logic;
SIGNAL \ALT_INV_mux_select~input_o\ : std_logic;
SIGNAL \ALT_INV_PS_Acc~input_o\ : std_logic;
SIGNAL \ALT_INV_Input_Data[0]~input_o\ : std_logic;
SIGNAL \ALT_INV_Input_Data[1]~input_o\ : std_logic;
SIGNAL \ALT_INV_Input_Data[2]~input_o\ : std_logic;
SIGNAL \ALT_INV_Input_Data[3]~input_o\ : std_logic;
SIGNAL \ALT_INV_reset~input_o\ : std_logic;
SIGNAL \ALT_INV_alu_control[1]~input_o\ : std_logic;
SIGNAL \ALT_INV_mux_select_alu~input_o\ : std_logic;
SIGNAL \ALT_INV_alu_control[0]~input_o\ : std_logic;
SIGNAL \ALT_INV_alu_control[2]~input_o\ : std_logic;
SIGNAL \inst6|ALT_INV_CO~2_combout\ : std_logic;
SIGNAL \inst6|ALT_INV_CO~1_combout\ : std_logic;
SIGNAL \inst6|ALT_INV_out[2]~10_combout\ : std_logic;
SIGNAL \inst6|ALT_INV_out[2]~9_combout\ : std_logic;
SIGNAL \inst6|ALT_INV_Equal1~0_combout\ : std_logic;
SIGNAL \inst6|ALT_INV_Add1~1_combout\ : std_logic;
SIGNAL \inst7|ALT_INV_out~5_combout\ : std_logic;
SIGNAL \inst6|ALT_INV_out[0]~8_combout\ : std_logic;
SIGNAL \inst6|ALT_INV_out[0]~7_combout\ : std_logic;
SIGNAL \inst6|ALT_INV_out[1]~6_combout\ : std_logic;
SIGNAL \inst6|ALT_INV_out[2]~5_combout\ : std_logic;
SIGNAL \inst6|ALT_INV_out[2]~4_combout\ : std_logic;
SIGNAL \inst6|ALT_INV_out[3]~3_combout\ : std_logic;
SIGNAL \inst7|ALT_INV_out[3]~1_combout\ : std_logic;
SIGNAL \inst7|ALT_INV_out[3]~0_combout\ : std_logic;
SIGNAL \inst6|ALT_INV_Equal13~0_combout\ : std_logic;
SIGNAL \inst6|ALT_INV_Add0~1_combout\ : std_logic;
SIGNAL \inst6|ALT_INV_Equal15~0_combout\ : std_logic;
SIGNAL \inst6|ALT_INV_Equal11~1_combout\ : std_logic;
SIGNAL \inst8|ALT_INV_out\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \inst7|ALT_INV_out\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \inst6|ALT_INV_out[3]~1_combout\ : std_logic;
SIGNAL \inst6|ALT_INV_out[3]~0_combout\ : std_logic;
SIGNAL \inst6|ALT_INV_Equal11~0_combout\ : std_logic;
SIGNAL \inst6|ALT_INV_Add3~0_combout\ : std_logic;
SIGNAL \inst6|ALT_INV_Add1~0_combout\ : std_logic;
SIGNAL \inst6|ALT_INV_Add0~0_combout\ : std_logic;
SIGNAL \inst6|ALT_INV_Equal0~0_combout\ : std_logic;
SIGNAL \inst4|ALT_INV_out\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \inst6|ALT_INV_CO~0_combout\ : std_logic;
SIGNAL \inst6|ALT_INV_Z~4_combout\ : std_logic;

BEGIN

CO <= ww_CO;
ww_mux_select_alu <= mux_select_alu;
ww_reset <= reset;
ww_clock <= clock;
ww_Input_Data <= Input_Data;
ww_alu_control <= alu_control;
OVF <= ww_OVF;
N <= ww_N;
Z <= ww_Z;
output_acc <= ww_output_acc;
ww_PS_Acc <= PS_Acc;
ww_mux_select <= mux_select;
ww_RL_Q <= RL_Q;
output_Q <= ww_output_Q;
R1 <= ww_R1;
ww_mux_select_r1 <= mux_select_r1;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;
\ALT_INV_mux_select_r1~input_o\ <= NOT \mux_select_r1~input_o\;
\ALT_INV_RL_Q~input_o\ <= NOT \RL_Q~input_o\;
\ALT_INV_mux_select~input_o\ <= NOT \mux_select~input_o\;
\ALT_INV_PS_Acc~input_o\ <= NOT \PS_Acc~input_o\;
\ALT_INV_Input_Data[0]~input_o\ <= NOT \Input_Data[0]~input_o\;
\ALT_INV_Input_Data[1]~input_o\ <= NOT \Input_Data[1]~input_o\;
\ALT_INV_Input_Data[2]~input_o\ <= NOT \Input_Data[2]~input_o\;
\ALT_INV_Input_Data[3]~input_o\ <= NOT \Input_Data[3]~input_o\;
\ALT_INV_reset~input_o\ <= NOT \reset~input_o\;
\ALT_INV_alu_control[1]~input_o\ <= NOT \alu_control[1]~input_o\;
\ALT_INV_mux_select_alu~input_o\ <= NOT \mux_select_alu~input_o\;
\ALT_INV_alu_control[0]~input_o\ <= NOT \alu_control[0]~input_o\;
\ALT_INV_alu_control[2]~input_o\ <= NOT \alu_control[2]~input_o\;
\inst6|ALT_INV_CO~2_combout\ <= NOT \inst6|CO~2_combout\;
\inst6|ALT_INV_CO~1_combout\ <= NOT \inst6|CO~1_combout\;
\inst6|ALT_INV_out[2]~10_combout\ <= NOT \inst6|out[2]~10_combout\;
\inst6|ALT_INV_out[2]~9_combout\ <= NOT \inst6|out[2]~9_combout\;
\inst6|ALT_INV_Equal1~0_combout\ <= NOT \inst6|Equal1~0_combout\;
\inst6|ALT_INV_Add1~1_combout\ <= NOT \inst6|Add1~1_combout\;
\inst7|ALT_INV_out~5_combout\ <= NOT \inst7|out~5_combout\;
\inst6|ALT_INV_out[0]~8_combout\ <= NOT \inst6|out[0]~8_combout\;
\inst6|ALT_INV_out[0]~7_combout\ <= NOT \inst6|out[0]~7_combout\;
\inst6|ALT_INV_out[1]~6_combout\ <= NOT \inst6|out[1]~6_combout\;
\inst6|ALT_INV_out[2]~5_combout\ <= NOT \inst6|out[2]~5_combout\;
\inst6|ALT_INV_out[2]~4_combout\ <= NOT \inst6|out[2]~4_combout\;
\inst6|ALT_INV_out[3]~3_combout\ <= NOT \inst6|out[3]~3_combout\;
\inst7|ALT_INV_out[3]~1_combout\ <= NOT \inst7|out[3]~1_combout\;
\inst7|ALT_INV_out[3]~0_combout\ <= NOT \inst7|out[3]~0_combout\;
\inst6|ALT_INV_Equal13~0_combout\ <= NOT \inst6|Equal13~0_combout\;
\inst6|ALT_INV_Add0~1_combout\ <= NOT \inst6|Add0~1_combout\;
\inst6|ALT_INV_Equal15~0_combout\ <= NOT \inst6|Equal15~0_combout\;
\inst6|ALT_INV_Equal11~1_combout\ <= NOT \inst6|Equal11~1_combout\;
\inst8|ALT_INV_out\(0) <= NOT \inst8|out\(0);
\inst8|ALT_INV_out\(1) <= NOT \inst8|out\(1);
\inst8|ALT_INV_out\(2) <= NOT \inst8|out\(2);
\inst8|ALT_INV_out\(3) <= NOT \inst8|out\(3);
\inst7|ALT_INV_out\(0) <= NOT \inst7|out\(0);
\inst7|ALT_INV_out\(1) <= NOT \inst7|out\(1);
\inst7|ALT_INV_out\(2) <= NOT \inst7|out\(2);
\inst7|ALT_INV_out\(3) <= NOT \inst7|out\(3);
\inst6|ALT_INV_out[3]~1_combout\ <= NOT \inst6|out[3]~1_combout\;
\inst6|ALT_INV_out[3]~0_combout\ <= NOT \inst6|out[3]~0_combout\;
\inst6|ALT_INV_Equal11~0_combout\ <= NOT \inst6|Equal11~0_combout\;
\inst6|ALT_INV_Add3~0_combout\ <= NOT \inst6|Add3~0_combout\;
\inst6|ALT_INV_Add1~0_combout\ <= NOT \inst6|Add1~0_combout\;
\inst6|ALT_INV_Add0~0_combout\ <= NOT \inst6|Add0~0_combout\;
\inst6|ALT_INV_Equal0~0_combout\ <= NOT \inst6|Equal0~0_combout\;
\inst4|ALT_INV_out\(0) <= NOT \inst4|out\(0);
\inst4|ALT_INV_out\(1) <= NOT \inst4|out\(1);
\inst4|ALT_INV_out\(2) <= NOT \inst4|out\(2);
\inst6|ALT_INV_CO~0_combout\ <= NOT \inst6|CO~0_combout\;
\inst4|ALT_INV_out\(3) <= NOT \inst4|out\(3);
\inst6|ALT_INV_Z~4_combout\ <= NOT \inst6|Z~4_combout\;

-- Location: IOOBUF_X64_Y0_N36
\CO~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \inst6|CO~3_combout\,
	devoe => ww_devoe,
	o => ww_CO);

-- Location: IOOBUF_X64_Y0_N53
\OVF~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \inst6|OVF~0_combout\,
	devoe => ww_devoe,
	o => ww_OVF);

-- Location: IOOBUF_X89_Y4_N79
\N~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \inst6|out[3]~2_combout\,
	devoe => ww_devoe,
	o => ww_N);

-- Location: IOOBUF_X64_Y0_N19
\Z~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \inst6|Z~0_combout\,
	devoe => ww_devoe,
	o => ww_Z);

-- Location: IOOBUF_X68_Y0_N53
\output_acc[3]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \inst7|out\(3),
	devoe => ww_devoe,
	o => ww_output_acc(3));

-- Location: IOOBUF_X70_Y0_N2
\output_acc[2]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \inst7|out\(2),
	devoe => ww_devoe,
	o => ww_output_acc(2));

-- Location: IOOBUF_X66_Y0_N42
\output_acc[1]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \inst7|out\(1),
	devoe => ww_devoe,
	o => ww_output_acc(1));

-- Location: IOOBUF_X70_Y0_N19
\output_acc[0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \inst7|out\(0),
	devoe => ww_devoe,
	o => ww_output_acc(0));

-- Location: IOOBUF_X70_Y0_N36
\output_Q[3]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \inst8|out\(3),
	devoe => ww_devoe,
	o => ww_output_Q(3));

-- Location: IOOBUF_X70_Y0_N53
\output_Q[2]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \inst8|out\(2),
	devoe => ww_devoe,
	o => ww_output_Q(2));

-- Location: IOOBUF_X60_Y0_N53
\output_Q[1]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \inst8|out\(1),
	devoe => ww_devoe,
	o => ww_output_Q(1));

-- Location: IOOBUF_X64_Y0_N2
\output_Q[0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \inst8|out\(0),
	devoe => ww_devoe,
	o => ww_output_Q(0));

-- Location: IOOBUF_X89_Y4_N62
\R1[3]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \inst31|out\(3),
	devoe => ww_devoe,
	o => ww_R1(3));

-- Location: IOOBUF_X68_Y0_N36
\R1[2]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \inst31|out\(2),
	devoe => ww_devoe,
	o => ww_R1(2));

-- Location: IOOBUF_X60_Y0_N19
\R1[1]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \inst31|out\(1),
	devoe => ww_devoe,
	o => ww_R1(1));

-- Location: IOOBUF_X60_Y0_N36
\R1[0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \inst31|out\(0),
	devoe => ww_devoe,
	o => ww_R1(0));

-- Location: IOIBUF_X89_Y35_N61
\clock~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_clock,
	o => \clock~input_o\);

-- Location: CLKCTRL_G10
\clock~inputCLKENA0\ : cyclonev_clkena
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	disable_mode => "low",
	ena_register_mode => "always enabled",
	ena_register_power_up => "high",
	test_syn => "high")
-- pragma translate_on
PORT MAP (
	inclk => \clock~input_o\,
	outclk => \clock~inputCLKENA0_outclk\);

-- Location: IOIBUF_X62_Y0_N52
\Input_Data[3]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Input_Data(3),
	o => \Input_Data[3]~input_o\);

-- Location: IOIBUF_X68_Y0_N18
\reset~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_reset,
	o => \reset~input_o\);

-- Location: LABCELL_X68_Y3_N15
\inst4|out~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst4|out~0_combout\ = ( \Input_Data[3]~input_o\ & ( !\reset~input_o\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datae => \ALT_INV_Input_Data[3]~input_o\,
	dataf => \ALT_INV_reset~input_o\,
	combout => \inst4|out~0_combout\);

-- Location: FF_X74_Y3_N20
\inst4|out[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	asdata => \inst4|out~0_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst4|out\(3));

-- Location: IOIBUF_X72_Y0_N1
\alu_control[1]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_alu_control(1),
	o => \alu_control[1]~input_o\);

-- Location: IOIBUF_X72_Y0_N35
\alu_control[2]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_alu_control(2),
	o => \alu_control[2]~input_o\);

-- Location: LABCELL_X73_Y3_N39
\inst6|Equal0~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst6|Equal0~0_combout\ = (!\alu_control[1]~input_o\ & !\alu_control[2]~input_o\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1010000010100000101000001010000010100000101000001010000010100000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_alu_control[1]~input_o\,
	datac => \ALT_INV_alu_control[2]~input_o\,
	combout => \inst6|Equal0~0_combout\);

-- Location: IOIBUF_X62_Y0_N18
\Input_Data[1]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Input_Data(1),
	o => \Input_Data[1]~input_o\);

-- Location: LABCELL_X68_Y3_N39
\inst4|out~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst4|out~2_combout\ = ( \Input_Data[1]~input_o\ & ( !\reset~input_o\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datae => \ALT_INV_Input_Data[1]~input_o\,
	dataf => \ALT_INV_reset~input_o\,
	combout => \inst4|out~2_combout\);

-- Location: FF_X74_Y3_N35
\inst4|out[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	asdata => \inst4|out~2_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst4|out\(1));

-- Location: IOIBUF_X72_Y0_N52
\alu_control[0]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_alu_control(0),
	o => \alu_control[0]~input_o\);

-- Location: LABCELL_X73_Y3_N54
\inst6|CO~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst6|CO~0_combout\ = ( !\alu_control[2]~input_o\ & ( !\alu_control[0]~input_o\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1100110011001100000000000000000011001100110011000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_alu_control[0]~input_o\,
	datae => \ALT_INV_alu_control[2]~input_o\,
	combout => \inst6|CO~0_combout\);

-- Location: IOIBUF_X62_Y0_N35
\Input_Data[2]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Input_Data(2),
	o => \Input_Data[2]~input_o\);

-- Location: LABCELL_X68_Y3_N30
\inst4|out~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst4|out~1_combout\ = ( !\reset~input_o\ & ( \Input_Data[2]~input_o\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111000011110000111100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_Input_Data[2]~input_o\,
	dataf => \ALT_INV_reset~input_o\,
	combout => \inst4|out~1_combout\);

-- Location: FF_X74_Y3_N14
\inst4|out[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	asdata => \inst4|out~1_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst4|out\(2));

-- Location: IOIBUF_X62_Y0_N1
\Input_Data[0]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Input_Data(0),
	o => \Input_Data[0]~input_o\);

-- Location: LABCELL_X68_Y3_N18
\inst4|out~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst4|out~3_combout\ = ( !\reset~input_o\ & ( \Input_Data[0]~input_o\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111000011110000111100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_Input_Data[0]~input_o\,
	dataf => \ALT_INV_reset~input_o\,
	combout => \inst4|out~3_combout\);

-- Location: FF_X74_Y3_N53
\inst4|out[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	asdata => \inst4|out~3_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst4|out\(0));

-- Location: IOIBUF_X72_Y0_N18
\mux_select_alu~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_mux_select_alu,
	o => \mux_select_alu~input_o\);

-- Location: LABCELL_X73_Y3_N6
\inst6|CO~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst6|CO~2_combout\ = ( \inst4|out\(0) & ( \mux_select_alu~input_o\ & ( (\inst6|CO~0_combout\ & ((!\inst6|Equal0~0_combout\) # ((\inst4|out\(1) & \inst4|out\(2))))) ) ) ) # ( !\inst4|out\(0) & ( \mux_select_alu~input_o\ & ( (!\inst6|Equal0~0_combout\ & 
-- \inst6|CO~0_combout\) ) ) ) # ( \inst4|out\(0) & ( !\mux_select_alu~input_o\ & ( (!\inst6|Equal0~0_combout\ & \inst6|CO~0_combout\) ) ) ) # ( !\inst4|out\(0) & ( !\mux_select_alu~input_o\ & ( (!\inst6|Equal0~0_combout\ & \inst6|CO~0_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000101000001010000010100000101000001010000010100000101000001011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|ALT_INV_Equal0~0_combout\,
	datab => \inst4|ALT_INV_out\(1),
	datac => \inst6|ALT_INV_CO~0_combout\,
	datad => \inst4|ALT_INV_out\(2),
	datae => \inst4|ALT_INV_out\(0),
	dataf => \ALT_INV_mux_select_alu~input_o\,
	combout => \inst6|CO~2_combout\);

-- Location: LABCELL_X73_Y3_N12
\inst6|CO~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst6|CO~1_combout\ = ( \inst4|out\(0) & ( \mux_select_alu~input_o\ & ( (!\inst6|Equal0~0_combout\ & (((\inst6|CO~0_combout\)))) # (\inst6|Equal0~0_combout\ & (!\inst4|out\(2) & (!\inst4|out\(1) & !\inst6|CO~0_combout\))) ) ) ) # ( !\inst4|out\(0) & ( 
-- \mux_select_alu~input_o\ & ( (!\inst6|Equal0~0_combout\ & (\inst6|CO~0_combout\ & ((\inst4|out\(1)) # (\inst4|out\(2))))) # (\inst6|Equal0~0_combout\ & (!\inst4|out\(2) & (!\inst4|out\(1) & !\inst6|CO~0_combout\))) ) ) ) # ( \inst4|out\(0) & ( 
-- !\mux_select_alu~input_o\ & ( (!\inst6|Equal0~0_combout\ & \inst6|CO~0_combout\) ) ) ) # ( !\inst4|out\(0) & ( !\mux_select_alu~input_o\ & ( (!\inst6|Equal0~0_combout\ & (((\inst6|CO~0_combout\)))) # (\inst6|Equal0~0_combout\ & (!\inst4|out\(2) & 
-- (!\inst4|out\(1) & !\inst6|CO~0_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100000010101010000000001010101001000000001010100100000010101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|ALT_INV_Equal0~0_combout\,
	datab => \inst4|ALT_INV_out\(2),
	datac => \inst4|ALT_INV_out\(1),
	datad => \inst6|ALT_INV_CO~0_combout\,
	datae => \inst4|ALT_INV_out\(0),
	dataf => \ALT_INV_mux_select_alu~input_o\,
	combout => \inst6|CO~1_combout\);

-- Location: LABCELL_X73_Y3_N42
\inst6|CO~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst6|CO~3_combout\ = ( \inst6|CO~1_combout\ & ( (!\inst4|out\(3)) # (\inst6|CO~2_combout\) ) ) # ( !\inst6|CO~1_combout\ & ( (\inst4|out\(3) & \inst6|CO~2_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001100000011000000110000001111001111110011111100111111001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \inst4|ALT_INV_out\(3),
	datac => \inst6|ALT_INV_CO~2_combout\,
	dataf => \inst6|ALT_INV_CO~1_combout\,
	combout => \inst6|CO~3_combout\);

-- Location: LABCELL_X74_Y3_N39
\inst6|Add0~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst6|Add0~0_combout\ = ( \inst4|out\(3) & ( (!\inst4|out\(0)) # ((!\mux_select_alu~input_o\) # ((!\inst4|out\(2)) # (!\inst4|out\(1)))) ) ) # ( !\inst4|out\(3) & ( (\inst4|out\(0) & (\mux_select_alu~input_o\ & (\inst4|out\(2) & \inst4|out\(1)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000001000000000000000111111111111111101111111111111110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|ALT_INV_out\(0),
	datab => \ALT_INV_mux_select_alu~input_o\,
	datac => \inst4|ALT_INV_out\(2),
	datad => \inst4|ALT_INV_out\(1),
	dataf => \inst4|ALT_INV_out\(3),
	combout => \inst6|Add0~0_combout\);

-- Location: LABCELL_X73_Y3_N30
\inst6|Add3~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst6|Add3~0_combout\ = ( \inst4|out\(1) & ( \inst4|out\(3) ) ) # ( !\inst4|out\(1) & ( !\inst4|out\(3) $ ((((!\mux_select_alu~input_o\) # (\inst4|out\(0))) # (\inst4|out\(2)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001110010011001100111001001100110011001100110011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|ALT_INV_out\(2),
	datab => \inst4|ALT_INV_out\(3),
	datac => \inst4|ALT_INV_out\(0),
	datad => \ALT_INV_mux_select_alu~input_o\,
	dataf => \inst4|ALT_INV_out\(1),
	combout => \inst6|Add3~0_combout\);

-- Location: LABCELL_X74_Y3_N6
\inst6|Add1~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst6|Add1~0_combout\ = ( \inst4|out\(2) & ( \inst4|out\(3) ) ) # ( !\inst4|out\(2) & ( !\inst4|out\(3) $ ((((\inst4|out\(0) & !\mux_select_alu~input_o\)) # (\inst4|out\(1)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1011000001001111101100000100111100000000111111110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|ALT_INV_out\(0),
	datab => \ALT_INV_mux_select_alu~input_o\,
	datac => \inst4|ALT_INV_out\(1),
	datad => \inst4|ALT_INV_out\(3),
	dataf => \inst4|ALT_INV_out\(2),
	combout => \inst6|Add1~0_combout\);

-- Location: LABCELL_X73_Y3_N0
\inst6|OVF~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst6|OVF~0_combout\ = ( \inst6|Add1~0_combout\ & ( !\inst4|out\(3) & ( (\inst6|CO~0_combout\ & ((!\inst6|Equal0~0_combout\ & ((\inst6|Add3~0_combout\))) # (\inst6|Equal0~0_combout\ & (\inst6|Add0~0_combout\)))) ) ) ) # ( !\inst6|Add1~0_combout\ & ( 
-- !\inst4|out\(3) & ( (!\inst6|CO~0_combout\ & (((\inst6|Equal0~0_combout\)))) # (\inst6|CO~0_combout\ & ((!\inst6|Equal0~0_combout\ & ((\inst6|Add3~0_combout\))) # (\inst6|Equal0~0_combout\ & (\inst6|Add0~0_combout\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001111110101000000110000010100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|ALT_INV_Add0~0_combout\,
	datab => \inst6|ALT_INV_Add3~0_combout\,
	datac => \inst6|ALT_INV_CO~0_combout\,
	datad => \inst6|ALT_INV_Equal0~0_combout\,
	datae => \inst6|ALT_INV_Add1~0_combout\,
	dataf => \inst4|ALT_INV_out\(3),
	combout => \inst6|OVF~0_combout\);

-- Location: LABCELL_X74_Y3_N9
\inst6|Equal11~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst6|Equal11~0_combout\ = ( !\inst4|out\(1) & ( (!\inst4|out\(0) & !\inst4|out\(2)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1010000010100000101000001010000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|ALT_INV_out\(0),
	datac => \inst4|ALT_INV_out\(2),
	dataf => \inst4|ALT_INV_out\(1),
	combout => \inst6|Equal11~0_combout\);

-- Location: LABCELL_X74_Y3_N24
\inst6|out[3]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst6|out[3]~0_combout\ = ( \alu_control[0]~input_o\ & ( \inst6|Equal11~0_combout\ & ( (\alu_control[2]~input_o\ & (\inst4|out\(3) & !\alu_control[1]~input_o\)) ) ) ) # ( !\alu_control[0]~input_o\ & ( \inst6|Equal11~0_combout\ & ( 
-- (\alu_control[1]~input_o\ & (!\inst4|out\(3) $ (((!\mux_select_alu~input_o\) # (\alu_control[2]~input_o\))))) ) ) ) # ( \alu_control[0]~input_o\ & ( !\inst6|Equal11~0_combout\ & ( (\alu_control[2]~input_o\ & (\inst4|out\(3) & !\alu_control[1]~input_o\)) ) 
-- ) ) # ( !\alu_control[0]~input_o\ & ( !\inst6|Equal11~0_combout\ & ( (\inst4|out\(3) & \alu_control[1]~input_o\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000001111000001010000000000000000001011010000010100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_alu_control[2]~input_o\,
	datab => \ALT_INV_mux_select_alu~input_o\,
	datac => \inst4|ALT_INV_out\(3),
	datad => \ALT_INV_alu_control[1]~input_o\,
	datae => \ALT_INV_alu_control[0]~input_o\,
	dataf => \inst6|ALT_INV_Equal11~0_combout\,
	combout => \inst6|out[3]~0_combout\);

-- Location: LABCELL_X74_Y3_N57
\inst6|out[3]~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst6|out[3]~1_combout\ = ( !\inst4|out\(3) & ( (\alu_control[0]~input_o\ & (\alu_control[1]~input_o\ & \alu_control[2]~input_o\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000101000000000000010100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_alu_control[0]~input_o\,
	datac => \ALT_INV_alu_control[1]~input_o\,
	datad => \ALT_INV_alu_control[2]~input_o\,
	dataf => \inst4|ALT_INV_out\(3),
	combout => \inst6|out[3]~1_combout\);

-- Location: LABCELL_X74_Y3_N12
\inst6|out[3]~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst6|out[3]~2_combout\ = ( \inst6|out[3]~1_combout\ & ( \inst6|Equal0~0_combout\ ) ) # ( !\inst6|out[3]~1_combout\ & ( \inst6|Equal0~0_combout\ & ( ((!\alu_control[0]~input_o\ & ((\inst6|Add0~0_combout\))) # (\alu_control[0]~input_o\ & 
-- (!\inst6|Add1~0_combout\))) # (\inst6|out[3]~0_combout\) ) ) ) # ( \inst6|out[3]~1_combout\ & ( !\inst6|Equal0~0_combout\ ) ) # ( !\inst6|out[3]~1_combout\ & ( !\inst6|Equal0~0_combout\ & ( \inst6|out[3]~0_combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101111111111111111101011101111111011111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|ALT_INV_out[3]~0_combout\,
	datab => \inst6|ALT_INV_Add1~0_combout\,
	datac => \ALT_INV_alu_control[0]~input_o\,
	datad => \inst6|ALT_INV_Add0~0_combout\,
	datae => \inst6|ALT_INV_out[3]~1_combout\,
	dataf => \inst6|ALT_INV_Equal0~0_combout\,
	combout => \inst6|out[3]~2_combout\);

-- Location: LABCELL_X73_Y3_N21
\inst6|Equal15~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst6|Equal15~0_combout\ = ( \mux_select_alu~input_o\ & ( (\inst4|out\(2) & (\inst4|out\(1) & (\inst4|out\(3) & !\inst4|out\(0)))) ) ) # ( !\mux_select_alu~input_o\ & ( (\inst4|out\(2) & (\inst4|out\(1) & (\inst4|out\(3) & \inst4|out\(0)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000001000000000000000100000001000000000000000100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|ALT_INV_out\(2),
	datab => \inst4|ALT_INV_out\(1),
	datac => \inst4|ALT_INV_out\(3),
	datad => \inst4|ALT_INV_out\(0),
	dataf => \ALT_INV_mux_select_alu~input_o\,
	combout => \inst6|Equal15~0_combout\);

-- Location: LABCELL_X73_Y3_N33
\inst6|Equal13~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst6|Equal13~0_combout\ = ( \mux_select_alu~input_o\ & ( (!\inst4|out\(2) & (!\inst4|out\(3) & (!\inst4|out\(1) & \inst4|out\(0)))) ) ) # ( !\mux_select_alu~input_o\ & ( (!\inst4|out\(2) & (!\inst4|out\(3) & (!\inst4|out\(1) & !\inst4|out\(0)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000000000000000100000000000000000000000100000000000000010000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|ALT_INV_out\(2),
	datab => \inst4|ALT_INV_out\(3),
	datac => \inst4|ALT_INV_out\(1),
	datad => \inst4|ALT_INV_out\(0),
	dataf => \ALT_INV_mux_select_alu~input_o\,
	combout => \inst6|Equal13~0_combout\);

-- Location: MLABCELL_X72_Y3_N21
\inst6|Add1~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst6|Add1~1_combout\ = (!\inst4|out\(0) & \mux_select_alu~input_o\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010001000100010001000100010001000100010001000100010001000100010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|ALT_INV_out\(0),
	datab => \ALT_INV_mux_select_alu~input_o\,
	combout => \inst6|Add1~1_combout\);

-- Location: LABCELL_X73_Y3_N45
\inst6|Equal1~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst6|Equal1~0_combout\ = ( \inst4|out\(1) & ( (\inst4|out\(2) & (\inst4|out\(3) & (\mux_select_alu~input_o\ & \inst4|out\(0)))) ) ) # ( !\inst4|out\(1) & ( (!\inst4|out\(2) & (!\inst4|out\(3) & (!\mux_select_alu~input_o\ & !\inst4|out\(0)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000000000000000100000000000000000000000000000010000000000000001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|ALT_INV_out\(2),
	datab => \inst4|ALT_INV_out\(3),
	datac => \ALT_INV_mux_select_alu~input_o\,
	datad => \inst4|ALT_INV_out\(0),
	dataf => \inst4|ALT_INV_out\(1),
	combout => \inst6|Equal1~0_combout\);

-- Location: MLABCELL_X72_Y3_N48
\inst6|Z~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst6|Z~4_combout\ = ( \inst6|Add1~1_combout\ & ( \inst6|Equal1~0_combout\ & ( (!\alu_control[2]~input_o\ & ((!\alu_control[0]~input_o\ & ((!\alu_control[1]~input_o\) # (\inst6|Equal13~0_combout\))) # (\alu_control[0]~input_o\ & 
-- (\inst6|Equal13~0_combout\ & !\alu_control[1]~input_o\)))) # (\alu_control[2]~input_o\ & (\alu_control[0]~input_o\)) ) ) ) # ( !\inst6|Add1~1_combout\ & ( \inst6|Equal1~0_combout\ & ( (!\alu_control[2]~input_o\ & ((!\alu_control[0]~input_o\ $ 
-- (\alu_control[1]~input_o\)) # (\inst6|Equal13~0_combout\))) # (\alu_control[2]~input_o\ & (\alu_control[0]~input_o\)) ) ) ) # ( \inst6|Add1~1_combout\ & ( !\inst6|Equal1~0_combout\ & ( (!\alu_control[2]~input_o\ & (\inst6|Equal13~0_combout\ & 
-- (!\alu_control[0]~input_o\ $ (!\alu_control[1]~input_o\)))) # (\alu_control[2]~input_o\ & (\alu_control[0]~input_o\)) ) ) ) # ( !\inst6|Add1~1_combout\ & ( !\inst6|Equal1~0_combout\ & ( (!\alu_control[2]~input_o\ & ((!\alu_control[0]~input_o\ & 
-- (\inst6|Equal13~0_combout\ & \alu_control[1]~input_o\)) # (\alu_control[0]~input_o\ & ((\alu_control[1]~input_o\) # (\inst6|Equal13~0_combout\))))) # (\alu_control[2]~input_o\ & (\alu_control[0]~input_o\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001001100111011000100110001100110011011001110111001101100011001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_alu_control[2]~input_o\,
	datab => \ALT_INV_alu_control[0]~input_o\,
	datac => \inst6|ALT_INV_Equal13~0_combout\,
	datad => \ALT_INV_alu_control[1]~input_o\,
	datae => \inst6|ALT_INV_Add1~1_combout\,
	dataf => \inst6|ALT_INV_Equal1~0_combout\,
	combout => \inst6|Z~4_combout\);

-- Location: LABCELL_X73_Y3_N18
\inst6|Equal11~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst6|Equal11~1_combout\ = ( !\mux_select_alu~input_o\ & ( (!\inst4|out\(2) & (!\inst4|out\(1) & (!\inst4|out\(0) & !\inst4|out\(3)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000000000000000100000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|ALT_INV_out\(2),
	datab => \inst4|ALT_INV_out\(1),
	datac => \inst4|ALT_INV_out\(0),
	datad => \inst4|ALT_INV_out\(3),
	dataf => \ALT_INV_mux_select_alu~input_o\,
	combout => \inst6|Equal11~1_combout\);

-- Location: LABCELL_X73_Y3_N36
\inst6|Add0~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst6|Add0~1_combout\ = ( \mux_select_alu~input_o\ & ( !\inst4|out\(0) ) ) # ( !\mux_select_alu~input_o\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111111111111111111111111111110000111100001111000011110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \inst4|ALT_INV_out\(0),
	dataf => \ALT_INV_mux_select_alu~input_o\,
	combout => \inst6|Add0~1_combout\);

-- Location: LABCELL_X73_Y3_N24
\inst6|Z~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst6|Z~0_combout\ = ( !\alu_control[1]~input_o\ & ( ((!\inst6|Z~4_combout\ & (\inst6|Add0~1_combout\ & (\alu_control[2]~input_o\))) # (\inst6|Z~4_combout\ & (((!\alu_control[2]~input_o\) # (\inst6|Equal11~1_combout\))))) ) ) # ( \alu_control[1]~input_o\ 
-- & ( (!\inst6|Z~4_combout\ & (((\inst6|Equal13~0_combout\ & (\alu_control[2]~input_o\))))) # (\inst6|Z~4_combout\ & ((((!\alu_control[2]~input_o\))) # (\inst6|Equal15~0_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "on",
	lut_mask => "0011001100001100001100110001110100110011001111110011001100011101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|ALT_INV_Equal15~0_combout\,
	datab => \inst6|ALT_INV_Z~4_combout\,
	datac => \inst6|ALT_INV_Equal13~0_combout\,
	datad => \ALT_INV_alu_control[2]~input_o\,
	datae => \ALT_INV_alu_control[1]~input_o\,
	dataf => \inst6|ALT_INV_Equal11~1_combout\,
	datag => \inst6|ALT_INV_Add0~1_combout\,
	combout => \inst6|Z~0_combout\);

-- Location: IOIBUF_X66_Y0_N75
\PS_Acc~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_PS_Acc,
	o => \PS_Acc~input_o\);

-- Location: IOIBUF_X66_Y0_N92
\mux_select~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_mux_select,
	o => \mux_select~input_o\);

-- Location: MLABCELL_X72_Y3_N57
\inst7|out[3]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst7|out[3]~0_combout\ = (!\reset~input_o\ & ((!\PS_Acc~input_o\) # (!\mux_select~input_o\)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111101000000000111110100000000011111010000000001111101000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_PS_Acc~input_o\,
	datac => \ALT_INV_mux_select~input_o\,
	datad => \ALT_INV_reset~input_o\,
	combout => \inst7|out[3]~0_combout\);

-- Location: IOIBUF_X66_Y0_N58
\RL_Q~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_RL_Q,
	o => \RL_Q~input_o\);

-- Location: MLABCELL_X72_Y3_N33
\inst8|out~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst8|out~1_combout\ = ( \inst8|out\(3) & ( (!\reset~input_o\ & ((\inst8|out\(1)) # (\RL_Q~input_o\))) ) ) # ( !\inst8|out\(3) & ( (!\RL_Q~input_o\ & (\inst8|out\(1) & !\reset~input_o\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000101000000000000010100000000001011111000000000101111100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_RL_Q~input_o\,
	datac => \inst8|ALT_INV_out\(1),
	datad => \ALT_INV_reset~input_o\,
	dataf => \inst8|ALT_INV_out\(3),
	combout => \inst8|out~1_combout\);

-- Location: FF_X72_Y3_N35
\inst8|out[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	d => \inst8|out~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst8|out\(2));

-- Location: MLABCELL_X72_Y3_N42
\inst8|out~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst8|out~3_combout\ = ( \RL_Q~input_o\ & ( (\inst8|out\(1) & !\reset~input_o\) ) ) # ( !\RL_Q~input_o\ & ( (\inst7|out\(0) & !\reset~input_o\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100000000000011110000000000110011000000000011001100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \inst8|ALT_INV_out\(1),
	datac => \inst7|ALT_INV_out\(0),
	datad => \ALT_INV_reset~input_o\,
	dataf => \ALT_INV_RL_Q~input_o\,
	combout => \inst8|out~3_combout\);

-- Location: FF_X72_Y3_N44
\inst8|out[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	d => \inst8|out~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst8|out\(0));

-- Location: MLABCELL_X72_Y3_N30
\inst8|out~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst8|out~2_combout\ = ( \inst8|out\(0) & ( (!\reset~input_o\ & ((!\RL_Q~input_o\) # (\inst8|out\(2)))) ) ) # ( !\inst8|out\(0) & ( (\RL_Q~input_o\ & (!\reset~input_o\ & \inst8|out\(2))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010000000100000001000000010010001100100011001000110010001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_RL_Q~input_o\,
	datab => \ALT_INV_reset~input_o\,
	datac => \inst8|ALT_INV_out\(2),
	dataf => \inst8|ALT_INV_out\(0),
	combout => \inst8|out~2_combout\);

-- Location: FF_X72_Y3_N32
\inst8|out[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	d => \inst8|out~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst8|out\(1));

-- Location: MLABCELL_X72_Y3_N39
\inst7|out[3]~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst7|out[3]~1_combout\ = (!\reset~input_o\ & ((!\PS_Acc~input_o\) # (\mux_select~input_o\)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1010101000001010101010100000101010101010000010101010101000001010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_reset~input_o\,
	datac => \ALT_INV_mux_select~input_o\,
	datad => \ALT_INV_PS_Acc~input_o\,
	combout => \inst7|out[3]~1_combout\);

-- Location: LABCELL_X74_Y3_N45
\inst6|out[2]~10\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst6|out[2]~10_combout\ = ( \inst4|out\(0) & ( (!\mux_select_alu~input_o\ & (\alu_control[0]~input_o\)) # (\mux_select_alu~input_o\ & ((\inst4|out\(1)))) ) ) # ( !\inst4|out\(0) & ( (\alu_control[0]~input_o\ & \inst4|out\(1)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010100000101000001010000010101010101000011110101010100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_alu_control[0]~input_o\,
	datac => \inst4|ALT_INV_out\(1),
	datad => \ALT_INV_mux_select_alu~input_o\,
	dataf => \inst4|ALT_INV_out\(0),
	combout => \inst6|out[2]~10_combout\);

-- Location: LABCELL_X74_Y3_N54
\inst6|out[2]~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst6|out[2]~5_combout\ = ( \inst6|out[2]~10_combout\ & ( (!\inst4|out\(2) & ((!\alu_control[2]~input_o\ & ((!\alu_control[1]~input_o\))) # (\alu_control[2]~input_o\ & (\alu_control[0]~input_o\ & \alu_control[1]~input_o\)))) ) ) # ( 
-- !\inst6|out[2]~10_combout\ & ( (!\inst4|out\(2) & (\alu_control[0]~input_o\ & (\alu_control[2]~input_o\ & \alu_control[1]~input_o\))) # (\inst4|out\(2) & (((!\alu_control[2]~input_o\ & !\alu_control[1]~input_o\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011000000000100001100000000010011000000000001001100000000000100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_alu_control[0]~input_o\,
	datab => \inst4|ALT_INV_out\(2),
	datac => \ALT_INV_alu_control[2]~input_o\,
	datad => \ALT_INV_alu_control[1]~input_o\,
	dataf => \inst6|ALT_INV_out[2]~10_combout\,
	combout => \inst6|out[2]~5_combout\);

-- Location: LABCELL_X74_Y3_N36
\inst6|out[2]~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst6|out[2]~9_combout\ = ( \alu_control[0]~input_o\ & ( (\alu_control[2]~input_o\ & !\alu_control[1]~input_o\) ) ) # ( !\alu_control[0]~input_o\ & ( \alu_control[1]~input_o\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011111111000000001111111100001111000000000000111100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_alu_control[2]~input_o\,
	datad => \ALT_INV_alu_control[1]~input_o\,
	dataf => \ALT_INV_alu_control[0]~input_o\,
	combout => \inst6|out[2]~9_combout\);

-- Location: LABCELL_X74_Y3_N21
\inst6|out[2]~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst6|out[2]~4_combout\ = ( \inst6|out[2]~9_combout\ & ( \inst4|out\(2) & ( (((!\mux_select_alu~input_o\) # (\inst4|out\(0))) # (\alu_control[2]~input_o\)) # (\inst4|out\(1)) ) ) ) # ( \inst6|out[2]~9_combout\ & ( !\inst4|out\(2) & ( (!\inst4|out\(1) & 
-- (!\alu_control[2]~input_o\ & (\mux_select_alu~input_o\ & !\inst4|out\(0)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000010000000000000000000000000001111011111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|ALT_INV_out\(1),
	datab => \ALT_INV_alu_control[2]~input_o\,
	datac => \ALT_INV_mux_select_alu~input_o\,
	datad => \inst4|ALT_INV_out\(0),
	datae => \inst6|ALT_INV_out[2]~9_combout\,
	dataf => \inst4|ALT_INV_out\(2),
	combout => \inst6|out[2]~4_combout\);

-- Location: LABCELL_X74_Y3_N48
\inst7|out~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst7|out~3_combout\ = ( \inst6|out[2]~5_combout\ & ( \inst6|out[2]~4_combout\ & ( (!\inst7|out[3]~1_combout\ & (\inst7|out[3]~0_combout\ & (\inst8|out\(2)))) # (\inst7|out[3]~1_combout\ & ((!\inst7|out[3]~0_combout\) # ((\inst7|out\(3))))) ) ) ) # ( 
-- !\inst6|out[2]~5_combout\ & ( \inst6|out[2]~4_combout\ & ( (!\inst7|out[3]~1_combout\ & (\inst7|out[3]~0_combout\ & (\inst8|out\(2)))) # (\inst7|out[3]~1_combout\ & ((!\inst7|out[3]~0_combout\) # ((\inst7|out\(3))))) ) ) ) # ( \inst6|out[2]~5_combout\ & ( 
-- !\inst6|out[2]~4_combout\ & ( (!\inst7|out[3]~1_combout\ & (\inst7|out[3]~0_combout\ & (\inst8|out\(2)))) # (\inst7|out[3]~1_combout\ & ((!\inst7|out[3]~0_combout\) # ((\inst7|out\(3))))) ) ) ) # ( !\inst6|out[2]~5_combout\ & ( !\inst6|out[2]~4_combout\ & 
-- ( (\inst7|out[3]~0_combout\ & ((!\inst7|out[3]~1_combout\ & (\inst8|out\(2))) # (\inst7|out[3]~1_combout\ & ((\inst7|out\(3)))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001000010011010001100101011101000110010101110100011001010111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|ALT_INV_out[3]~1_combout\,
	datab => \inst7|ALT_INV_out[3]~0_combout\,
	datac => \inst8|ALT_INV_out\(2),
	datad => \inst7|ALT_INV_out\(3),
	datae => \inst6|ALT_INV_out[2]~5_combout\,
	dataf => \inst6|ALT_INV_out[2]~4_combout\,
	combout => \inst7|out~3_combout\);

-- Location: FF_X74_Y3_N50
\inst7|out[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	d => \inst7|out~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst7|out\(2));

-- Location: LABCELL_X73_Y3_N48
\inst6|out[1]~6\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst6|out[1]~6_combout\ = ( \alu_control[1]~input_o\ & ( \inst4|out\(1) & ( (!\alu_control[0]~input_o\ & ((!\mux_select_alu~input_o\) # ((\alu_control[2]~input_o\) # (\inst4|out\(0))))) ) ) ) # ( !\alu_control[1]~input_o\ & ( \inst4|out\(1) & ( 
-- (!\alu_control[2]~input_o\ & ((!\inst4|out\(0)) # (!\mux_select_alu~input_o\ $ (\alu_control[0]~input_o\)))) # (\alu_control[2]~input_o\ & (((\alu_control[0]~input_o\)))) ) ) ) # ( \alu_control[1]~input_o\ & ( !\inst4|out\(1) & ( 
-- (!\alu_control[0]~input_o\ & (\mux_select_alu~input_o\ & (!\inst4|out\(0) & !\alu_control[2]~input_o\))) # (\alu_control[0]~input_o\ & (((\alu_control[2]~input_o\)))) ) ) ) # ( !\alu_control[1]~input_o\ & ( !\inst4|out\(1) & ( (\inst4|out\(0) & 
-- (!\alu_control[2]~input_o\ & (!\mux_select_alu~input_o\ $ (!\alu_control[0]~input_o\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000011000000000010000000011001111111001001100111000110011001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_mux_select_alu~input_o\,
	datab => \ALT_INV_alu_control[0]~input_o\,
	datac => \inst4|ALT_INV_out\(0),
	datad => \ALT_INV_alu_control[2]~input_o\,
	datae => \ALT_INV_alu_control[1]~input_o\,
	dataf => \inst4|ALT_INV_out\(1),
	combout => \inst6|out[1]~6_combout\);

-- Location: MLABCELL_X72_Y3_N45
\inst7|out~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst7|out~4_combout\ = ( \inst6|out[1]~6_combout\ & ( (!\inst7|out[3]~0_combout\ & (((\inst7|out[3]~1_combout\)))) # (\inst7|out[3]~0_combout\ & ((!\inst7|out[3]~1_combout\ & (\inst8|out\(1))) # (\inst7|out[3]~1_combout\ & ((\inst7|out\(2)))))) ) ) # ( 
-- !\inst6|out[1]~6_combout\ & ( (\inst7|out[3]~0_combout\ & ((!\inst7|out[3]~1_combout\ & (\inst8|out\(1))) # (\inst7|out[3]~1_combout\ & ((\inst7|out\(2)))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000000010101000100000001010100011010000111110001101000011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|ALT_INV_out[3]~0_combout\,
	datab => \inst8|ALT_INV_out\(1),
	datac => \inst7|ALT_INV_out[3]~1_combout\,
	datad => \inst7|ALT_INV_out\(2),
	dataf => \inst6|ALT_INV_out[1]~6_combout\,
	combout => \inst7|out~4_combout\);

-- Location: FF_X72_Y3_N47
\inst7|out[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	d => \inst7|out~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst7|out\(1));

-- Location: MLABCELL_X72_Y3_N36
\inst7|out~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst7|out~5_combout\ = ( \inst8|out\(0) & ( (!\reset~input_o\ & ((!\PS_Acc~input_o\ & ((\inst7|out\(1)))) # (\PS_Acc~input_o\ & (!\mux_select~input_o\)))) ) ) # ( !\inst8|out\(0) & ( (!\reset~input_o\ & (!\PS_Acc~input_o\ & \inst7|out\(1))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000010100000000000001010000000001000101010000000100010101000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_reset~input_o\,
	datab => \ALT_INV_mux_select~input_o\,
	datac => \ALT_INV_PS_Acc~input_o\,
	datad => \inst7|ALT_INV_out\(1),
	dataf => \inst8|ALT_INV_out\(0),
	combout => \inst7|out~5_combout\);

-- Location: MLABCELL_X72_Y3_N54
\inst6|out[0]~8\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst6|out[0]~8_combout\ = ( \inst4|out\(0) & ( !\mux_select_alu~input_o\ $ (((!\alu_control[1]~input_o\ & \alu_control[2]~input_o\))) ) ) # ( !\inst4|out\(0) & ( (\mux_select_alu~input_o\ & ((!\alu_control[2]~input_o\) # (\alu_control[1]~input_o\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011110011000000001111001111110011000011001111001100001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_alu_control[1]~input_o\,
	datac => \ALT_INV_alu_control[2]~input_o\,
	datad => \ALT_INV_mux_select_alu~input_o\,
	dataf => \inst4|ALT_INV_out\(0),
	combout => \inst6|out[0]~8_combout\);

-- Location: MLABCELL_X72_Y3_N18
\inst6|out[0]~7\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst6|out[0]~7_combout\ = ( \inst4|out\(0) & ( (!\mux_select_alu~input_o\ & ((!\alu_control[1]~input_o\))) # (\mux_select_alu~input_o\ & (\alu_control[2]~input_o\)) ) ) # ( !\inst4|out\(0) & ( !\mux_select_alu~input_o\ $ (((!\alu_control[2]~input_o\) # 
-- (!\alu_control[1]~input_o\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001100111100001100110011110011001111000000111100111100000011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_mux_select_alu~input_o\,
	datac => \ALT_INV_alu_control[2]~input_o\,
	datad => \ALT_INV_alu_control[1]~input_o\,
	dataf => \inst4|ALT_INV_out\(0),
	combout => \inst6|out[0]~7_combout\);

-- Location: MLABCELL_X72_Y3_N24
\inst7|out~6\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst7|out~6_combout\ = ( \inst6|out[0]~8_combout\ & ( \inst6|out[0]~7_combout\ & ( ((!\inst7|out[3]~0_combout\ & \inst7|out[3]~1_combout\)) # (\inst7|out~5_combout\) ) ) ) # ( !\inst6|out[0]~8_combout\ & ( \inst6|out[0]~7_combout\ & ( 
-- ((!\inst7|out[3]~0_combout\ & (\alu_control[0]~input_o\ & \inst7|out[3]~1_combout\))) # (\inst7|out~5_combout\) ) ) ) # ( \inst6|out[0]~8_combout\ & ( !\inst6|out[0]~7_combout\ & ( ((!\inst7|out[3]~0_combout\ & (!\alu_control[0]~input_o\ & 
-- \inst7|out[3]~1_combout\))) # (\inst7|out~5_combout\) ) ) ) # ( !\inst6|out[0]~8_combout\ & ( !\inst6|out[0]~7_combout\ & ( \inst7|out~5_combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111000011111000111100001111001011110000111110101111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|ALT_INV_out[3]~0_combout\,
	datab => \ALT_INV_alu_control[0]~input_o\,
	datac => \inst7|ALT_INV_out~5_combout\,
	datad => \inst7|ALT_INV_out[3]~1_combout\,
	datae => \inst6|ALT_INV_out[0]~8_combout\,
	dataf => \inst6|ALT_INV_out[0]~7_combout\,
	combout => \inst7|out~6_combout\);

-- Location: FF_X72_Y3_N26
\inst7|out[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	d => \inst7|out~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst7|out\(0));

-- Location: MLABCELL_X72_Y3_N3
\inst8|out~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst8|out~0_combout\ = ( \RL_Q~input_o\ & ( \inst8|out\(2) & ( (!\reset~input_o\ & \inst7|out\(0)) ) ) ) # ( !\RL_Q~input_o\ & ( \inst8|out\(2) & ( !\reset~input_o\ ) ) ) # ( \RL_Q~input_o\ & ( !\inst8|out\(2) & ( (!\reset~input_o\ & \inst7|out\(0)) ) ) 
-- )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000001010101010101010101010100000000010101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_reset~input_o\,
	datad => \inst7|ALT_INV_out\(0),
	datae => \ALT_INV_RL_Q~input_o\,
	dataf => \inst8|ALT_INV_out\(2),
	combout => \inst8|out~0_combout\);

-- Location: FF_X72_Y3_N5
\inst8|out[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	d => \inst8|out~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst8|out\(3));

-- Location: LABCELL_X74_Y3_N42
\inst6|out[3]~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst6|out[3]~3_combout\ = ( \inst6|Add1~0_combout\ & ( (!\inst6|out[3]~1_combout\ & (((!\inst6|Add0~0_combout\) # (!\inst6|Equal0~0_combout\)) # (\alu_control[0]~input_o\))) ) ) # ( !\inst6|Add1~0_combout\ & ( (!\inst6|out[3]~1_combout\ & 
-- ((!\inst6|Equal0~0_combout\) # ((!\alu_control[0]~input_o\ & !\inst6|Add0~0_combout\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111100000000000111110000000000011111101000000001111110100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_alu_control[0]~input_o\,
	datab => \inst6|ALT_INV_Add0~0_combout\,
	datac => \inst6|ALT_INV_Equal0~0_combout\,
	datad => \inst6|ALT_INV_out[3]~1_combout\,
	dataf => \inst6|ALT_INV_Add1~0_combout\,
	combout => \inst6|out[3]~3_combout\);

-- Location: LABCELL_X74_Y3_N30
\inst7|out~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst7|out~2_combout\ = ( \inst7|out\(0) & ( \inst6|out[3]~3_combout\ & ( (!\inst7|out[3]~0_combout\ & (((\inst6|out[3]~0_combout\ & \inst7|out[3]~1_combout\)))) # (\inst7|out[3]~0_combout\ & (((\inst7|out[3]~1_combout\)) # (\inst8|out\(3)))) ) ) ) # ( 
-- !\inst7|out\(0) & ( \inst6|out[3]~3_combout\ & ( (!\inst7|out[3]~0_combout\ & (((\inst6|out[3]~0_combout\ & \inst7|out[3]~1_combout\)))) # (\inst7|out[3]~0_combout\ & (\inst8|out\(3) & ((!\inst7|out[3]~1_combout\)))) ) ) ) # ( \inst7|out\(0) & ( 
-- !\inst6|out[3]~3_combout\ & ( ((\inst8|out\(3) & \inst7|out[3]~0_combout\)) # (\inst7|out[3]~1_combout\) ) ) ) # ( !\inst7|out\(0) & ( !\inst6|out[3]~3_combout\ & ( (!\inst7|out[3]~0_combout\ & ((\inst7|out[3]~1_combout\))) # (\inst7|out[3]~0_combout\ & 
-- (\inst8|out\(3) & !\inst7|out[3]~1_combout\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000111001100000100011111111100010001000011000001000100111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst8|ALT_INV_out\(3),
	datab => \inst7|ALT_INV_out[3]~0_combout\,
	datac => \inst6|ALT_INV_out[3]~0_combout\,
	datad => \inst7|ALT_INV_out[3]~1_combout\,
	datae => \inst7|ALT_INV_out\(0),
	dataf => \inst6|ALT_INV_out[3]~3_combout\,
	combout => \inst7|out~2_combout\);

-- Location: FF_X74_Y3_N32
\inst7|out[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	d => \inst7|out~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst7|out\(3));

-- Location: IOIBUF_X68_Y0_N1
\mux_select_r1~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_mux_select_r1,
	o => \mux_select_r1~input_o\);

-- Location: LABCELL_X74_Y3_N0
\inst31|out~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst31|out~0_combout\ = ( \inst6|out[3]~3_combout\ & ( (!\reset~input_o\ & ((!\mux_select_r1~input_o\ & (\inst6|out[3]~0_combout\)) # (\mux_select_r1~input_o\ & ((\inst7|out\(3)))))) ) ) # ( !\inst6|out[3]~3_combout\ & ( (!\reset~input_o\ & 
-- ((!\mux_select_r1~input_o\) # (\inst7|out\(3)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000100011001100100010001100110000001000010011000000100001001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_mux_select_r1~input_o\,
	datab => \ALT_INV_reset~input_o\,
	datac => \inst6|ALT_INV_out[3]~0_combout\,
	datad => \inst7|ALT_INV_out\(3),
	dataf => \inst6|ALT_INV_out[3]~3_combout\,
	combout => \inst31|out~0_combout\);

-- Location: FF_X74_Y3_N1
\inst31|out[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	d => \inst31|out~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst31|out\(3));

-- Location: LABCELL_X74_Y3_N3
\inst31|out~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst31|out~1_combout\ = ( \inst6|out[2]~5_combout\ & ( (!\reset~input_o\ & ((!\mux_select_r1~input_o\) # (\inst7|out\(2)))) ) ) # ( !\inst6|out[2]~5_combout\ & ( (!\reset~input_o\ & ((!\mux_select_r1~input_o\ & ((\inst6|out[2]~4_combout\))) # 
-- (\mux_select_r1~input_o\ & (\inst7|out\(2))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010010001100000001001000110010001100100011001000110010001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_mux_select_r1~input_o\,
	datab => \ALT_INV_reset~input_o\,
	datac => \inst7|ALT_INV_out\(2),
	datad => \inst6|ALT_INV_out[2]~4_combout\,
	dataf => \inst6|ALT_INV_out[2]~5_combout\,
	combout => \inst31|out~1_combout\);

-- Location: FF_X74_Y3_N4
\inst31|out[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	d => \inst31|out~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst31|out\(2));

-- Location: MLABCELL_X72_Y3_N12
\inst31|out~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst31|out~2_combout\ = ( \inst6|out[1]~6_combout\ & ( \inst7|out\(1) & ( !\reset~input_o\ ) ) ) # ( !\inst6|out[1]~6_combout\ & ( \inst7|out\(1) & ( (!\reset~input_o\ & \mux_select_r1~input_o\) ) ) ) # ( \inst6|out[1]~6_combout\ & ( !\inst7|out\(1) & ( 
-- (!\reset~input_o\ & !\mux_select_r1~input_o\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000101000001010000000001010000010101010101010101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_reset~input_o\,
	datac => \ALT_INV_mux_select_r1~input_o\,
	datae => \inst6|ALT_INV_out[1]~6_combout\,
	dataf => \inst7|ALT_INV_out\(1),
	combout => \inst31|out~2_combout\);

-- Location: FF_X72_Y3_N13
\inst31|out[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	d => \inst31|out~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst31|out\(1));

-- Location: MLABCELL_X72_Y3_N6
\inst31|out~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst31|out~3_combout\ = ( \inst6|out[0]~8_combout\ & ( \inst6|out[0]~7_combout\ & ( (!\reset~input_o\ & ((!\mux_select_r1~input_o\) # (\inst7|out\(0)))) ) ) ) # ( !\inst6|out[0]~8_combout\ & ( \inst6|out[0]~7_combout\ & ( (!\reset~input_o\ & 
-- ((!\mux_select_r1~input_o\ & (\alu_control[0]~input_o\)) # (\mux_select_r1~input_o\ & ((\inst7|out\(0)))))) ) ) ) # ( \inst6|out[0]~8_combout\ & ( !\inst6|out[0]~7_combout\ & ( (!\reset~input_o\ & ((!\mux_select_r1~input_o\ & (!\alu_control[0]~input_o\)) 
-- # (\mux_select_r1~input_o\ & ((\inst7|out\(0)))))) ) ) ) # ( !\inst6|out[0]~8_combout\ & ( !\inst6|out[0]~7_combout\ & ( (\mux_select_r1~input_o\ & (\inst7|out\(0) & !\reset~input_o\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010100000000100011010000000000100111000000001010111100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_mux_select_r1~input_o\,
	datab => \ALT_INV_alu_control[0]~input_o\,
	datac => \inst7|ALT_INV_out\(0),
	datad => \ALT_INV_reset~input_o\,
	datae => \inst6|ALT_INV_out[0]~8_combout\,
	dataf => \inst6|ALT_INV_out[0]~7_combout\,
	combout => \inst31|out~3_combout\);

-- Location: FF_X72_Y3_N7
\inst31|out[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	d => \inst31|out~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst31|out\(0));

-- Location: LABCELL_X48_Y17_N3
\~QUARTUS_CREATED_GND~I\ : cyclonev_lcell_comb
-- Equation(s):

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
;
END structure;


