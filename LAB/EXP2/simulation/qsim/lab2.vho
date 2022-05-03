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

-- DATE "04/22/2022 11:52:22"

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

ENTITY 	alp IS
    PORT (
	clock : IN std_logic;
	reset : IN std_logic;
	DATA_IN : IN std_logic_vector(3 DOWNTO 0);
	OP : IN std_logic_vector(2 DOWNTO 0);
	LOAD : IN std_logic;
	COMP : IN std_logic;
	CLR : IN std_logic;
	OUT_0 : BUFFER std_logic_vector(3 DOWNTO 0);
	OUT_1 : BUFFER std_logic_vector(3 DOWNTO 0);
	ERR : BUFFER std_logic
	);
END alp;

-- Design Ports Information
-- OUT_0[0]	=>  Location: PIN_L22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- OUT_0[1]	=>  Location: PIN_C21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- OUT_0[2]	=>  Location: PIN_M18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- OUT_0[3]	=>  Location: PIN_M22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- OUT_1[0]	=>  Location: PIN_K22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- OUT_1[1]	=>  Location: PIN_L19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- OUT_1[2]	=>  Location: PIN_K21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- OUT_1[3]	=>  Location: PIN_L18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ERR	=>  Location: PIN_J21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- COMP	=>  Location: PIN_N20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DATA_IN[0]	=>  Location: PIN_N19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- clock	=>  Location: PIN_M16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DATA_IN[1]	=>  Location: PIN_J22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DATA_IN[2]	=>  Location: PIN_B17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DATA_IN[3]	=>  Location: PIN_B18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- OP[0]	=>  Location: PIN_K17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- OP[2]	=>  Location: PIN_M20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- OP[1]	=>  Location: PIN_L17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LOAD	=>  Location: PIN_N16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- CLR	=>  Location: PIN_M21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- reset	=>  Location: PIN_N21,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF alp IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_clock : std_logic;
SIGNAL ww_reset : std_logic;
SIGNAL ww_DATA_IN : std_logic_vector(3 DOWNTO 0);
SIGNAL ww_OP : std_logic_vector(2 DOWNTO 0);
SIGNAL ww_LOAD : std_logic;
SIGNAL ww_COMP : std_logic;
SIGNAL ww_CLR : std_logic;
SIGNAL ww_OUT_0 : std_logic_vector(3 DOWNTO 0);
SIGNAL ww_OUT_1 : std_logic_vector(3 DOWNTO 0);
SIGNAL ww_ERR : std_logic;
SIGNAL \~QUARTUS_CREATED_GND~I_combout\ : std_logic;
SIGNAL \clock~input_o\ : std_logic;
SIGNAL \clock~inputCLKENA0_outclk\ : std_logic;
SIGNAL \OP[1]~input_o\ : std_logic;
SIGNAL \OP[2]~input_o\ : std_logic;
SIGNAL \OP[0]~input_o\ : std_logic;
SIGNAL \cont_unit_deneme|Equal1~0_combout\ : std_logic;
SIGNAL \reset~input_o\ : std_logic;
SIGNAL \cont_unit_deneme|mux_alu_a_sel~0_combout\ : std_logic;
SIGNAL \LOAD~input_o\ : std_logic;
SIGNAL \COMP~input_o\ : std_logic;
SIGNAL \CLR~input_o\ : std_logic;
SIGNAL \cont_unit_deneme|alu_op[2]~2_combout\ : std_logic;
SIGNAL \cont_unit_deneme|state~14_combout\ : std_logic;
SIGNAL \cont_unit_deneme|state.01~q\ : std_logic;
SIGNAL \cont_unit_deneme|state~16_combout\ : std_logic;
SIGNAL \cont_unit_deneme|state.10~q\ : std_logic;
SIGNAL \cont_unit_deneme|seq_count[1]~1_combout\ : std_logic;
SIGNAL \cont_unit_deneme|seq_count[1]~2_combout\ : std_logic;
SIGNAL \cont_unit_deneme|state~13_combout\ : std_logic;
SIGNAL \cont_unit_deneme|seq_count[0]~0_combout\ : std_logic;
SIGNAL \cont_unit_deneme|state~15_combout\ : std_logic;
SIGNAL \cont_unit_deneme|state.11~q\ : std_logic;
SIGNAL \cont_unit_deneme|state~12_combout\ : std_logic;
SIGNAL \cont_unit_deneme|state.00~q\ : std_logic;
SIGNAL \cont_unit_deneme|qn1_reset~0_combout\ : std_logic;
SIGNAL \cont_unit_deneme|acc_reset~combout\ : std_logic;
SIGNAL \cont_unit_deneme|alu_op[0]~0_combout\ : std_logic;
SIGNAL \cont_unit_deneme|alu_op[1]~4_combout\ : std_logic;
SIGNAL \cont_unit_deneme|mux_R0_sel[1]~1_combout\ : std_logic;
SIGNAL \cont_unit_deneme|mux_R0_sel[1]~2_combout\ : std_logic;
SIGNAL \cont_unit_deneme|mux_R0_sel[0]~0_combout\ : std_logic;
SIGNAL \cont_unit_deneme|R0_en~0_combout\ : std_logic;
SIGNAL \cont_unit_deneme|RST~combout\ : std_logic;
SIGNAL \datapath_deneme|Reg1|out~0_combout\ : std_logic;
SIGNAL \datapath_deneme|Reg1|out~1_combout\ : std_logic;
SIGNAL \datapath_deneme|Reg1|out~2_combout\ : std_logic;
SIGNAL \cont_unit_deneme|R0_en~1_combout\ : std_logic;
SIGNAL \cont_unit_deneme|R0_en~combout\ : std_logic;
SIGNAL \datapath_deneme|Reg0|out[1]~3_combout\ : std_logic;
SIGNAL \datapath_deneme|alu|Add3~18_cout\ : std_logic;
SIGNAL \datapath_deneme|alu|Add3~6\ : std_logic;
SIGNAL \datapath_deneme|alu|Add3~9_sumout\ : std_logic;
SIGNAL \cont_unit_deneme|alu_op[2]~5_combout\ : std_logic;
SIGNAL \datapath_deneme|alu|out[1]~3_combout\ : std_logic;
SIGNAL \datapath_deneme|Reg0|out~0_combout\ : std_logic;
SIGNAL \DATA_IN[1]~input_o\ : std_logic;
SIGNAL \cont_unit_deneme|Q_PS~0_combout\ : std_logic;
SIGNAL \cont_unit_deneme|Q_PS~combout\ : std_logic;
SIGNAL \datapath_deneme|Reg1|out~5_combout\ : std_logic;
SIGNAL \datapath_deneme|Reg1|out~6_combout\ : std_logic;
SIGNAL \datapath_deneme|alu|Add1~18_cout\ : std_logic;
SIGNAL \datapath_deneme|alu|Add1~6\ : std_logic;
SIGNAL \datapath_deneme|alu|Add1~10\ : std_logic;
SIGNAL \datapath_deneme|alu|Add1~13_sumout\ : std_logic;
SIGNAL \datapath_deneme|mux_alu_b|out[2]~3_combout\ : std_logic;
SIGNAL \datapath_deneme|alu|out[2]~4_combout\ : std_logic;
SIGNAL \cont_unit_deneme|acc_PS~0_combout\ : std_logic;
SIGNAL \cont_unit_deneme|acc_PS~combout\ : std_logic;
SIGNAL \cont_unit_deneme|acc_en~1_combout\ : std_logic;
SIGNAL \cont_unit_deneme|acc_en~0_combout\ : std_logic;
SIGNAL \cont_unit_deneme|acc_en~combout\ : std_logic;
SIGNAL \datapath_deneme|Q|out~3_combout\ : std_logic;
SIGNAL \cont_unit_deneme|Q_en~0_combout\ : std_logic;
SIGNAL \cont_unit_deneme|Q_en~combout\ : std_logic;
SIGNAL \DATA_IN[3]~input_o\ : std_logic;
SIGNAL \datapath_deneme|Reg0|out~8_combout\ : std_logic;
SIGNAL \datapath_deneme|Reg0|out~9_combout\ : std_logic;
SIGNAL \datapath_deneme|alu|Add0~6\ : std_logic;
SIGNAL \datapath_deneme|alu|Add0~10\ : std_logic;
SIGNAL \datapath_deneme|alu|Add0~14\ : std_logic;
SIGNAL \datapath_deneme|alu|Add0~1_sumout\ : std_logic;
SIGNAL \datapath_deneme|alu|Add3~10\ : std_logic;
SIGNAL \datapath_deneme|alu|Add3~14\ : std_logic;
SIGNAL \datapath_deneme|alu|Add3~1_sumout\ : std_logic;
SIGNAL \datapath_deneme|mux_alu_a|out[3]~0_combout\ : std_logic;
SIGNAL \datapath_deneme|alu|out[3]~7_combout\ : std_logic;
SIGNAL \datapath_deneme|Reg1|out~7_combout\ : std_logic;
SIGNAL \datapath_deneme|Reg1|out~8_combout\ : std_logic;
SIGNAL \datapath_deneme|mux_alu_b|out[3]~0_combout\ : std_logic;
SIGNAL \datapath_deneme|alu|Add1~14\ : std_logic;
SIGNAL \datapath_deneme|alu|Add1~1_sumout\ : std_logic;
SIGNAL \datapath_deneme|alu|out[3]~6_combout\ : std_logic;
SIGNAL \datapath_deneme|acc|out~10_combout\ : std_logic;
SIGNAL \datapath_deneme|acc|out~2_combout\ : std_logic;
SIGNAL \datapath_deneme|acc|out[1]~1_combout\ : std_logic;
SIGNAL \datapath_deneme|alu|Add3~13_sumout\ : std_logic;
SIGNAL \datapath_deneme|alu|out[2]~5_combout\ : std_logic;
SIGNAL \DATA_IN[2]~input_o\ : std_logic;
SIGNAL \datapath_deneme|Reg0|out~6_combout\ : std_logic;
SIGNAL \datapath_deneme|Reg0|out~7_combout\ : std_logic;
SIGNAL \datapath_deneme|alu|Add0~13_sumout\ : std_logic;
SIGNAL \datapath_deneme|alu|out[2]~8_combout\ : std_logic;
SIGNAL \datapath_deneme|Q|out~2_combout\ : std_logic;
SIGNAL \datapath_deneme|Q|out~1_combout\ : std_logic;
SIGNAL \datapath_deneme|Reg0|out~4_combout\ : std_logic;
SIGNAL \datapath_deneme|Reg0|out~5_combout\ : std_logic;
SIGNAL \datapath_deneme|alu|Add0~9_sumout\ : std_logic;
SIGNAL \datapath_deneme|alu|out[1]~12_combout\ : std_logic;
SIGNAL \datapath_deneme|Reg1|out~3_combout\ : std_logic;
SIGNAL \datapath_deneme|Reg1|out~4_combout\ : std_logic;
SIGNAL \datapath_deneme|mux_alu_b|out[1]~2_combout\ : std_logic;
SIGNAL \datapath_deneme|alu|Add1~9_sumout\ : std_logic;
SIGNAL \datapath_deneme|alu|out[1]~2_combout\ : std_logic;
SIGNAL \datapath_deneme|acc|out~6_combout\ : std_logic;
SIGNAL \datapath_deneme|acc|out~0_combout\ : std_logic;
SIGNAL \datapath_deneme|alu|Add0~5_sumout\ : std_logic;
SIGNAL \datapath_deneme|alu|Add1~5_sumout\ : std_logic;
SIGNAL \datapath_deneme|mux_alu_b|out[0]~1_combout\ : std_logic;
SIGNAL \datapath_deneme|alu|out[0]~0_combout\ : std_logic;
SIGNAL \datapath_deneme|Q|out~0_combout\ : std_logic;
SIGNAL \datapath_deneme|qn1|out~0_combout\ : std_logic;
SIGNAL \cont_unit_deneme|alu_op[2]~1_combout\ : std_logic;
SIGNAL \cont_unit_deneme|alu_op[2]~3_combout\ : std_logic;
SIGNAL \cont_unit_deneme|mux_alu_a_sel~combout\ : std_logic;
SIGNAL \datapath_deneme|mux_alu_a|out[0]~1_combout\ : std_logic;
SIGNAL \datapath_deneme|alu|Add3~5_sumout\ : std_logic;
SIGNAL \datapath_deneme|alu|out[0]~1_combout\ : std_logic;
SIGNAL \DATA_IN[0]~input_o\ : std_logic;
SIGNAL \datapath_deneme|Reg0|out~1_combout\ : std_logic;
SIGNAL \datapath_deneme|Reg0|out~2_combout\ : std_logic;
SIGNAL \ERR~0_combout\ : std_logic;
SIGNAL \ERR~1_combout\ : std_logic;
SIGNAL \ERR~2_combout\ : std_logic;
SIGNAL \cont_unit_deneme|alu_op\ : std_logic_vector(2 DOWNTO 0);
SIGNAL \datapath_deneme|acc|out\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \datapath_deneme|Reg0|out\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \datapath_deneme|Reg1|out\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \cont_unit_deneme|mux_alu_b_sel\ : std_logic_vector(1 DOWNTO 0);
SIGNAL \datapath_deneme|Q|out\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \cont_unit_deneme|mux_R0_sel\ : std_logic_vector(1 DOWNTO 0);
SIGNAL \datapath_deneme|qn1|out\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \cont_unit_deneme|seq_count\ : std_logic_vector(1 DOWNTO 0);
SIGNAL \cont_unit_deneme|mux_R1_sel\ : std_logic_vector(1 DOWNTO 0);
SIGNAL \ALT_INV_reset~input_o\ : std_logic;
SIGNAL \ALT_INV_CLR~input_o\ : std_logic;
SIGNAL \ALT_INV_LOAD~input_o\ : std_logic;
SIGNAL \ALT_INV_OP[1]~input_o\ : std_logic;
SIGNAL \ALT_INV_OP[2]~input_o\ : std_logic;
SIGNAL \ALT_INV_OP[0]~input_o\ : std_logic;
SIGNAL \ALT_INV_DATA_IN[3]~input_o\ : std_logic;
SIGNAL \ALT_INV_DATA_IN[2]~input_o\ : std_logic;
SIGNAL \ALT_INV_DATA_IN[1]~input_o\ : std_logic;
SIGNAL \ALT_INV_DATA_IN[0]~input_o\ : std_logic;
SIGNAL \ALT_INV_COMP~input_o\ : std_logic;
SIGNAL \cont_unit_deneme|ALT_INV_Q_en~combout\ : std_logic;
SIGNAL \cont_unit_deneme|ALT_INV_Q_PS~combout\ : std_logic;
SIGNAL \cont_unit_deneme|ALT_INV_acc_reset~combout\ : std_logic;
SIGNAL \cont_unit_deneme|ALT_INV_acc_PS~combout\ : std_logic;
SIGNAL \cont_unit_deneme|ALT_INV_acc_en~combout\ : std_logic;
SIGNAL \cont_unit_deneme|ALT_INV_mux_R1_sel\ : std_logic_vector(1 DOWNTO 0);
SIGNAL \cont_unit_deneme|ALT_INV_R0_en~combout\ : std_logic;
SIGNAL \cont_unit_deneme|ALT_INV_mux_R0_sel\ : std_logic_vector(1 DOWNTO 0);
SIGNAL \cont_unit_deneme|ALT_INV_RST~combout\ : std_logic;
SIGNAL \cont_unit_deneme|ALT_INV_mux_alu_b_sel\ : std_logic_vector(1 DOWNTO 1);
SIGNAL \cont_unit_deneme|ALT_INV_alu_op\ : std_logic_vector(2 DOWNTO 0);
SIGNAL \cont_unit_deneme|ALT_INV_mux_alu_a_sel~combout\ : std_logic;
SIGNAL \cont_unit_deneme|ALT_INV_seq_count[1]~1_combout\ : std_logic;
SIGNAL \cont_unit_deneme|ALT_INV_Q_en~0_combout\ : std_logic;
SIGNAL \cont_unit_deneme|ALT_INV_Q_PS~0_combout\ : std_logic;
SIGNAL \cont_unit_deneme|ALT_INV_qn1_reset~0_combout\ : std_logic;
SIGNAL \cont_unit_deneme|ALT_INV_acc_PS~0_combout\ : std_logic;
SIGNAL \cont_unit_deneme|ALT_INV_acc_en~1_combout\ : std_logic;
SIGNAL \cont_unit_deneme|ALT_INV_acc_en~0_combout\ : std_logic;
SIGNAL \cont_unit_deneme|ALT_INV_state~13_combout\ : std_logic;
SIGNAL \cont_unit_deneme|ALT_INV_state.10~q\ : std_logic;
SIGNAL \cont_unit_deneme|ALT_INV_seq_count\ : std_logic_vector(1 DOWNTO 0);
SIGNAL \cont_unit_deneme|ALT_INV_R0_en~1_combout\ : std_logic;
SIGNAL \cont_unit_deneme|ALT_INV_Equal1~0_combout\ : std_logic;
SIGNAL \cont_unit_deneme|ALT_INV_R0_en~0_combout\ : std_logic;
SIGNAL \cont_unit_deneme|ALT_INV_mux_R0_sel[1]~2_combout\ : std_logic;
SIGNAL \cont_unit_deneme|ALT_INV_mux_R0_sel[1]~1_combout\ : std_logic;
SIGNAL \cont_unit_deneme|ALT_INV_state.11~q\ : std_logic;
SIGNAL \cont_unit_deneme|ALT_INV_mux_R0_sel[0]~0_combout\ : std_logic;
SIGNAL \cont_unit_deneme|ALT_INV_alu_op[2]~5_combout\ : std_logic;
SIGNAL \cont_unit_deneme|ALT_INV_mux_alu_a_sel~0_combout\ : std_logic;
SIGNAL \cont_unit_deneme|ALT_INV_alu_op[1]~4_combout\ : std_logic;
SIGNAL \cont_unit_deneme|ALT_INV_alu_op[2]~3_combout\ : std_logic;
SIGNAL \cont_unit_deneme|ALT_INV_alu_op[2]~2_combout\ : std_logic;
SIGNAL \cont_unit_deneme|ALT_INV_state.01~q\ : std_logic;
SIGNAL \datapath_deneme|qn1|ALT_INV_out\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \cont_unit_deneme|ALT_INV_alu_op[2]~1_combout\ : std_logic;
SIGNAL \cont_unit_deneme|ALT_INV_alu_op[0]~0_combout\ : std_logic;
SIGNAL \cont_unit_deneme|ALT_INV_state.00~q\ : std_logic;
SIGNAL \datapath_deneme|Reg1|ALT_INV_out~7_combout\ : std_logic;
SIGNAL \datapath_deneme|Reg1|ALT_INV_out~5_combout\ : std_logic;
SIGNAL \datapath_deneme|Reg1|ALT_INV_out~3_combout\ : std_logic;
SIGNAL \datapath_deneme|Reg1|ALT_INV_out~1_combout\ : std_logic;
SIGNAL \datapath_deneme|Reg1|ALT_INV_out~0_combout\ : std_logic;
SIGNAL \datapath_deneme|Reg0|ALT_INV_out~8_combout\ : std_logic;
SIGNAL \datapath_deneme|Q|ALT_INV_out\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \datapath_deneme|alu|ALT_INV_out[3]~7_combout\ : std_logic;
SIGNAL \datapath_deneme|alu|ALT_INV_out[3]~6_combout\ : std_logic;
SIGNAL \datapath_deneme|Reg0|ALT_INV_out~6_combout\ : std_logic;
SIGNAL \datapath_deneme|alu|ALT_INV_out[2]~5_combout\ : std_logic;
SIGNAL \datapath_deneme|alu|ALT_INV_out[2]~4_combout\ : std_logic;
SIGNAL \datapath_deneme|mux_alu_b|ALT_INV_out[2]~3_combout\ : std_logic;
SIGNAL \datapath_deneme|acc|ALT_INV_out\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \datapath_deneme|Reg0|ALT_INV_out~4_combout\ : std_logic;
SIGNAL \datapath_deneme|alu|ALT_INV_out[1]~3_combout\ : std_logic;
SIGNAL \datapath_deneme|alu|ALT_INV_out[1]~2_combout\ : std_logic;
SIGNAL \datapath_deneme|mux_alu_b|ALT_INV_out[1]~2_combout\ : std_logic;
SIGNAL \datapath_deneme|Reg0|ALT_INV_out~1_combout\ : std_logic;
SIGNAL \datapath_deneme|Reg0|ALT_INV_out~0_combout\ : std_logic;
SIGNAL \datapath_deneme|alu|ALT_INV_out[0]~1_combout\ : std_logic;
SIGNAL \datapath_deneme|alu|ALT_INV_out[0]~0_combout\ : std_logic;
SIGNAL \datapath_deneme|mux_alu_b|ALT_INV_out[0]~1_combout\ : std_logic;
SIGNAL \datapath_deneme|mux_alu_a|ALT_INV_out[0]~1_combout\ : std_logic;
SIGNAL \ALT_INV_ERR~1_combout\ : std_logic;
SIGNAL \ALT_INV_ERR~0_combout\ : std_logic;
SIGNAL \datapath_deneme|mux_alu_b|ALT_INV_out[3]~0_combout\ : std_logic;
SIGNAL \datapath_deneme|mux_alu_a|ALT_INV_out[3]~0_combout\ : std_logic;
SIGNAL \datapath_deneme|Reg1|ALT_INV_out\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \datapath_deneme|Reg0|ALT_INV_out\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \datapath_deneme|alu|ALT_INV_out[1]~12_combout\ : std_logic;
SIGNAL \datapath_deneme|alu|ALT_INV_out[2]~8_combout\ : std_logic;
SIGNAL \datapath_deneme|alu|ALT_INV_Add0~13_sumout\ : std_logic;
SIGNAL \datapath_deneme|alu|ALT_INV_Add3~13_sumout\ : std_logic;
SIGNAL \datapath_deneme|alu|ALT_INV_Add1~13_sumout\ : std_logic;
SIGNAL \datapath_deneme|alu|ALT_INV_Add0~9_sumout\ : std_logic;
SIGNAL \datapath_deneme|alu|ALT_INV_Add3~9_sumout\ : std_logic;
SIGNAL \datapath_deneme|alu|ALT_INV_Add1~9_sumout\ : std_logic;
SIGNAL \datapath_deneme|alu|ALT_INV_Add3~5_sumout\ : std_logic;
SIGNAL \datapath_deneme|alu|ALT_INV_Add1~5_sumout\ : std_logic;
SIGNAL \datapath_deneme|alu|ALT_INV_Add0~5_sumout\ : std_logic;
SIGNAL \datapath_deneme|alu|ALT_INV_Add1~1_sumout\ : std_logic;
SIGNAL \datapath_deneme|alu|ALT_INV_Add3~1_sumout\ : std_logic;
SIGNAL \datapath_deneme|alu|ALT_INV_Add0~1_sumout\ : std_logic;

BEGIN

ww_clock <= clock;
ww_reset <= reset;
ww_DATA_IN <= DATA_IN;
ww_OP <= OP;
ww_LOAD <= LOAD;
ww_COMP <= COMP;
ww_CLR <= CLR;
OUT_0 <= ww_OUT_0;
OUT_1 <= ww_OUT_1;
ERR <= ww_ERR;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;
\ALT_INV_reset~input_o\ <= NOT \reset~input_o\;
\ALT_INV_CLR~input_o\ <= NOT \CLR~input_o\;
\ALT_INV_LOAD~input_o\ <= NOT \LOAD~input_o\;
\ALT_INV_OP[1]~input_o\ <= NOT \OP[1]~input_o\;
\ALT_INV_OP[2]~input_o\ <= NOT \OP[2]~input_o\;
\ALT_INV_OP[0]~input_o\ <= NOT \OP[0]~input_o\;
\ALT_INV_DATA_IN[3]~input_o\ <= NOT \DATA_IN[3]~input_o\;
\ALT_INV_DATA_IN[2]~input_o\ <= NOT \DATA_IN[2]~input_o\;
\ALT_INV_DATA_IN[1]~input_o\ <= NOT \DATA_IN[1]~input_o\;
\ALT_INV_DATA_IN[0]~input_o\ <= NOT \DATA_IN[0]~input_o\;
\ALT_INV_COMP~input_o\ <= NOT \COMP~input_o\;
\cont_unit_deneme|ALT_INV_Q_en~combout\ <= NOT \cont_unit_deneme|Q_en~combout\;
\cont_unit_deneme|ALT_INV_Q_PS~combout\ <= NOT \cont_unit_deneme|Q_PS~combout\;
\cont_unit_deneme|ALT_INV_acc_reset~combout\ <= NOT \cont_unit_deneme|acc_reset~combout\;
\cont_unit_deneme|ALT_INV_acc_PS~combout\ <= NOT \cont_unit_deneme|acc_PS~combout\;
\cont_unit_deneme|ALT_INV_acc_en~combout\ <= NOT \cont_unit_deneme|acc_en~combout\;
\cont_unit_deneme|ALT_INV_mux_R1_sel\(1) <= NOT \cont_unit_deneme|mux_R1_sel\(1);
\cont_unit_deneme|ALT_INV_mux_R1_sel\(0) <= NOT \cont_unit_deneme|mux_R1_sel\(0);
\cont_unit_deneme|ALT_INV_R0_en~combout\ <= NOT \cont_unit_deneme|R0_en~combout\;
\cont_unit_deneme|ALT_INV_mux_R0_sel\(1) <= NOT \cont_unit_deneme|mux_R0_sel\(1);
\cont_unit_deneme|ALT_INV_mux_R0_sel\(0) <= NOT \cont_unit_deneme|mux_R0_sel\(0);
\cont_unit_deneme|ALT_INV_RST~combout\ <= NOT \cont_unit_deneme|RST~combout\;
\cont_unit_deneme|ALT_INV_mux_alu_b_sel\(1) <= NOT \cont_unit_deneme|mux_alu_b_sel\(1);
\cont_unit_deneme|ALT_INV_alu_op\(2) <= NOT \cont_unit_deneme|alu_op\(2);
\cont_unit_deneme|ALT_INV_mux_alu_a_sel~combout\ <= NOT \cont_unit_deneme|mux_alu_a_sel~combout\;
\cont_unit_deneme|ALT_INV_alu_op\(1) <= NOT \cont_unit_deneme|alu_op\(1);
\cont_unit_deneme|ALT_INV_alu_op\(0) <= NOT \cont_unit_deneme|alu_op\(0);
\cont_unit_deneme|ALT_INV_seq_count[1]~1_combout\ <= NOT \cont_unit_deneme|seq_count[1]~1_combout\;
\cont_unit_deneme|ALT_INV_Q_en~0_combout\ <= NOT \cont_unit_deneme|Q_en~0_combout\;
\cont_unit_deneme|ALT_INV_Q_PS~0_combout\ <= NOT \cont_unit_deneme|Q_PS~0_combout\;
\cont_unit_deneme|ALT_INV_qn1_reset~0_combout\ <= NOT \cont_unit_deneme|qn1_reset~0_combout\;
\cont_unit_deneme|ALT_INV_acc_PS~0_combout\ <= NOT \cont_unit_deneme|acc_PS~0_combout\;
\cont_unit_deneme|ALT_INV_acc_en~1_combout\ <= NOT \cont_unit_deneme|acc_en~1_combout\;
\cont_unit_deneme|ALT_INV_acc_en~0_combout\ <= NOT \cont_unit_deneme|acc_en~0_combout\;
\cont_unit_deneme|ALT_INV_state~13_combout\ <= NOT \cont_unit_deneme|state~13_combout\;
\cont_unit_deneme|ALT_INV_state.10~q\ <= NOT \cont_unit_deneme|state.10~q\;
\cont_unit_deneme|ALT_INV_seq_count\(1) <= NOT \cont_unit_deneme|seq_count\(1);
\cont_unit_deneme|ALT_INV_seq_count\(0) <= NOT \cont_unit_deneme|seq_count\(0);
\cont_unit_deneme|ALT_INV_R0_en~1_combout\ <= NOT \cont_unit_deneme|R0_en~1_combout\;
\cont_unit_deneme|ALT_INV_Equal1~0_combout\ <= NOT \cont_unit_deneme|Equal1~0_combout\;
\cont_unit_deneme|ALT_INV_R0_en~0_combout\ <= NOT \cont_unit_deneme|R0_en~0_combout\;
\cont_unit_deneme|ALT_INV_mux_R0_sel[1]~2_combout\ <= NOT \cont_unit_deneme|mux_R0_sel[1]~2_combout\;
\cont_unit_deneme|ALT_INV_mux_R0_sel[1]~1_combout\ <= NOT \cont_unit_deneme|mux_R0_sel[1]~1_combout\;
\cont_unit_deneme|ALT_INV_state.11~q\ <= NOT \cont_unit_deneme|state.11~q\;
\cont_unit_deneme|ALT_INV_mux_R0_sel[0]~0_combout\ <= NOT \cont_unit_deneme|mux_R0_sel[0]~0_combout\;
\cont_unit_deneme|ALT_INV_alu_op[2]~5_combout\ <= NOT \cont_unit_deneme|alu_op[2]~5_combout\;
\cont_unit_deneme|ALT_INV_mux_alu_a_sel~0_combout\ <= NOT \cont_unit_deneme|mux_alu_a_sel~0_combout\;
\cont_unit_deneme|ALT_INV_alu_op[1]~4_combout\ <= NOT \cont_unit_deneme|alu_op[1]~4_combout\;
\cont_unit_deneme|ALT_INV_alu_op[2]~3_combout\ <= NOT \cont_unit_deneme|alu_op[2]~3_combout\;
\cont_unit_deneme|ALT_INV_alu_op[2]~2_combout\ <= NOT \cont_unit_deneme|alu_op[2]~2_combout\;
\cont_unit_deneme|ALT_INV_state.01~q\ <= NOT \cont_unit_deneme|state.01~q\;
\datapath_deneme|qn1|ALT_INV_out\(0) <= NOT \datapath_deneme|qn1|out\(0);
\cont_unit_deneme|ALT_INV_alu_op[2]~1_combout\ <= NOT \cont_unit_deneme|alu_op[2]~1_combout\;
\cont_unit_deneme|ALT_INV_alu_op[0]~0_combout\ <= NOT \cont_unit_deneme|alu_op[0]~0_combout\;
\cont_unit_deneme|ALT_INV_state.00~q\ <= NOT \cont_unit_deneme|state.00~q\;
\datapath_deneme|Reg1|ALT_INV_out~7_combout\ <= NOT \datapath_deneme|Reg1|out~7_combout\;
\datapath_deneme|Reg1|ALT_INV_out~5_combout\ <= NOT \datapath_deneme|Reg1|out~5_combout\;
\datapath_deneme|Reg1|ALT_INV_out~3_combout\ <= NOT \datapath_deneme|Reg1|out~3_combout\;
\datapath_deneme|Reg1|ALT_INV_out~1_combout\ <= NOT \datapath_deneme|Reg1|out~1_combout\;
\datapath_deneme|Reg1|ALT_INV_out~0_combout\ <= NOT \datapath_deneme|Reg1|out~0_combout\;
\datapath_deneme|Reg0|ALT_INV_out~8_combout\ <= NOT \datapath_deneme|Reg0|out~8_combout\;
\datapath_deneme|Q|ALT_INV_out\(3) <= NOT \datapath_deneme|Q|out\(3);
\datapath_deneme|alu|ALT_INV_out[3]~7_combout\ <= NOT \datapath_deneme|alu|out[3]~7_combout\;
\datapath_deneme|alu|ALT_INV_out[3]~6_combout\ <= NOT \datapath_deneme|alu|out[3]~6_combout\;
\datapath_deneme|Reg0|ALT_INV_out~6_combout\ <= NOT \datapath_deneme|Reg0|out~6_combout\;
\datapath_deneme|Q|ALT_INV_out\(2) <= NOT \datapath_deneme|Q|out\(2);
\datapath_deneme|alu|ALT_INV_out[2]~5_combout\ <= NOT \datapath_deneme|alu|out[2]~5_combout\;
\datapath_deneme|alu|ALT_INV_out[2]~4_combout\ <= NOT \datapath_deneme|alu|out[2]~4_combout\;
\datapath_deneme|mux_alu_b|ALT_INV_out[2]~3_combout\ <= NOT \datapath_deneme|mux_alu_b|out[2]~3_combout\;
\datapath_deneme|acc|ALT_INV_out\(2) <= NOT \datapath_deneme|acc|out\(2);
\datapath_deneme|Reg0|ALT_INV_out~4_combout\ <= NOT \datapath_deneme|Reg0|out~4_combout\;
\datapath_deneme|Q|ALT_INV_out\(1) <= NOT \datapath_deneme|Q|out\(1);
\datapath_deneme|alu|ALT_INV_out[1]~3_combout\ <= NOT \datapath_deneme|alu|out[1]~3_combout\;
\datapath_deneme|alu|ALT_INV_out[1]~2_combout\ <= NOT \datapath_deneme|alu|out[1]~2_combout\;
\datapath_deneme|mux_alu_b|ALT_INV_out[1]~2_combout\ <= NOT \datapath_deneme|mux_alu_b|out[1]~2_combout\;
\datapath_deneme|acc|ALT_INV_out\(1) <= NOT \datapath_deneme|acc|out\(1);
\datapath_deneme|Reg0|ALT_INV_out~1_combout\ <= NOT \datapath_deneme|Reg0|out~1_combout\;
\datapath_deneme|Q|ALT_INV_out\(0) <= NOT \datapath_deneme|Q|out\(0);
\datapath_deneme|Reg0|ALT_INV_out~0_combout\ <= NOT \datapath_deneme|Reg0|out~0_combout\;
\datapath_deneme|alu|ALT_INV_out[0]~1_combout\ <= NOT \datapath_deneme|alu|out[0]~1_combout\;
\datapath_deneme|alu|ALT_INV_out[0]~0_combout\ <= NOT \datapath_deneme|alu|out[0]~0_combout\;
\datapath_deneme|mux_alu_b|ALT_INV_out[0]~1_combout\ <= NOT \datapath_deneme|mux_alu_b|out[0]~1_combout\;
\datapath_deneme|acc|ALT_INV_out\(0) <= NOT \datapath_deneme|acc|out\(0);
\datapath_deneme|mux_alu_a|ALT_INV_out[0]~1_combout\ <= NOT \datapath_deneme|mux_alu_a|out[0]~1_combout\;
\ALT_INV_ERR~1_combout\ <= NOT \ERR~1_combout\;
\ALT_INV_ERR~0_combout\ <= NOT \ERR~0_combout\;
\datapath_deneme|mux_alu_b|ALT_INV_out[3]~0_combout\ <= NOT \datapath_deneme|mux_alu_b|out[3]~0_combout\;
\datapath_deneme|acc|ALT_INV_out\(3) <= NOT \datapath_deneme|acc|out\(3);
\datapath_deneme|mux_alu_a|ALT_INV_out[3]~0_combout\ <= NOT \datapath_deneme|mux_alu_a|out[3]~0_combout\;
\datapath_deneme|Reg1|ALT_INV_out\(3) <= NOT \datapath_deneme|Reg1|out\(3);
\datapath_deneme|Reg1|ALT_INV_out\(2) <= NOT \datapath_deneme|Reg1|out\(2);
\datapath_deneme|Reg1|ALT_INV_out\(1) <= NOT \datapath_deneme|Reg1|out\(1);
\datapath_deneme|Reg1|ALT_INV_out\(0) <= NOT \datapath_deneme|Reg1|out\(0);
\datapath_deneme|Reg0|ALT_INV_out\(3) <= NOT \datapath_deneme|Reg0|out\(3);
\datapath_deneme|Reg0|ALT_INV_out\(2) <= NOT \datapath_deneme|Reg0|out\(2);
\datapath_deneme|Reg0|ALT_INV_out\(1) <= NOT \datapath_deneme|Reg0|out\(1);
\datapath_deneme|Reg0|ALT_INV_out\(0) <= NOT \datapath_deneme|Reg0|out\(0);
\datapath_deneme|alu|ALT_INV_out[1]~12_combout\ <= NOT \datapath_deneme|alu|out[1]~12_combout\;
\datapath_deneme|alu|ALT_INV_out[2]~8_combout\ <= NOT \datapath_deneme|alu|out[2]~8_combout\;
\datapath_deneme|alu|ALT_INV_Add0~13_sumout\ <= NOT \datapath_deneme|alu|Add0~13_sumout\;
\datapath_deneme|alu|ALT_INV_Add3~13_sumout\ <= NOT \datapath_deneme|alu|Add3~13_sumout\;
\datapath_deneme|alu|ALT_INV_Add1~13_sumout\ <= NOT \datapath_deneme|alu|Add1~13_sumout\;
\datapath_deneme|alu|ALT_INV_Add0~9_sumout\ <= NOT \datapath_deneme|alu|Add0~9_sumout\;
\datapath_deneme|alu|ALT_INV_Add3~9_sumout\ <= NOT \datapath_deneme|alu|Add3~9_sumout\;
\datapath_deneme|alu|ALT_INV_Add1~9_sumout\ <= NOT \datapath_deneme|alu|Add1~9_sumout\;
\datapath_deneme|alu|ALT_INV_Add3~5_sumout\ <= NOT \datapath_deneme|alu|Add3~5_sumout\;
\datapath_deneme|alu|ALT_INV_Add1~5_sumout\ <= NOT \datapath_deneme|alu|Add1~5_sumout\;
\datapath_deneme|alu|ALT_INV_Add0~5_sumout\ <= NOT \datapath_deneme|alu|Add0~5_sumout\;
\datapath_deneme|alu|ALT_INV_Add1~1_sumout\ <= NOT \datapath_deneme|alu|Add1~1_sumout\;
\datapath_deneme|alu|ALT_INV_Add3~1_sumout\ <= NOT \datapath_deneme|alu|Add3~1_sumout\;
\datapath_deneme|alu|ALT_INV_Add0~1_sumout\ <= NOT \datapath_deneme|alu|Add0~1_sumout\;

-- Location: IOOBUF_X89_Y36_N56
\OUT_0[0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \datapath_deneme|Reg0|out\(0),
	devoe => ww_devoe,
	o => ww_OUT_0(0));

-- Location: IOOBUF_X82_Y81_N42
\OUT_0[1]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \datapath_deneme|Reg0|out\(1),
	devoe => ww_devoe,
	o => ww_OUT_0(1));

-- Location: IOOBUF_X89_Y36_N22
\OUT_0[2]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \datapath_deneme|Reg0|out\(2),
	devoe => ww_devoe,
	o => ww_OUT_0(2));

-- Location: IOOBUF_X89_Y36_N39
\OUT_0[3]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \datapath_deneme|Reg0|out\(3),
	devoe => ww_devoe,
	o => ww_OUT_0(3));

-- Location: IOOBUF_X89_Y38_N56
\OUT_1[0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \datapath_deneme|Reg1|out\(0),
	devoe => ww_devoe,
	o => ww_OUT_1(0));

-- Location: IOOBUF_X89_Y38_N5
\OUT_1[1]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \datapath_deneme|Reg1|out\(1),
	devoe => ww_devoe,
	o => ww_OUT_1(1));

-- Location: IOOBUF_X89_Y38_N39
\OUT_1[2]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \datapath_deneme|Reg1|out\(2),
	devoe => ww_devoe,
	o => ww_OUT_1(2));

-- Location: IOOBUF_X89_Y38_N22
\OUT_1[3]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \datapath_deneme|Reg1|out\(3),
	devoe => ww_devoe,
	o => ww_OUT_1(3));

-- Location: IOOBUF_X84_Y81_N2
\ERR~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \ERR~2_combout\,
	devoe => ww_devoe,
	o => ww_ERR);

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

-- Location: IOIBUF_X89_Y37_N21
\OP[1]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_OP(1),
	o => \OP[1]~input_o\);

-- Location: IOIBUF_X89_Y37_N38
\OP[2]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_OP(2),
	o => \OP[2]~input_o\);

-- Location: IOIBUF_X89_Y37_N4
\OP[0]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_OP(0),
	o => \OP[0]~input_o\);

-- Location: LABCELL_X83_Y37_N33
\cont_unit_deneme|Equal1~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \cont_unit_deneme|Equal1~0_combout\ = ( !\OP[0]~input_o\ & ( (\OP[1]~input_o\ & !\OP[2]~input_o\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100000000000011110000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_OP[1]~input_o\,
	datad => \ALT_INV_OP[2]~input_o\,
	dataf => \ALT_INV_OP[0]~input_o\,
	combout => \cont_unit_deneme|Equal1~0_combout\);

-- Location: IOIBUF_X89_Y35_N95
\reset~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_reset,
	o => \reset~input_o\);

-- Location: MLABCELL_X84_Y37_N9
\cont_unit_deneme|mux_alu_a_sel~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \cont_unit_deneme|mux_alu_a_sel~0_combout\ = ( !\cont_unit_deneme|state.00~q\ & ( (\OP[1]~input_o\ & (!\OP[0]~input_o\ & !\OP[2]~input_o\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101000000000000010100000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_OP[1]~input_o\,
	datac => \ALT_INV_OP[0]~input_o\,
	datad => \ALT_INV_OP[2]~input_o\,
	dataf => \cont_unit_deneme|ALT_INV_state.00~q\,
	combout => \cont_unit_deneme|mux_alu_a_sel~0_combout\);

-- Location: IOIBUF_X89_Y35_N44
\LOAD~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_LOAD,
	o => \LOAD~input_o\);

-- Location: IOIBUF_X89_Y35_N78
\COMP~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_COMP,
	o => \COMP~input_o\);

-- Location: IOIBUF_X89_Y37_N55
\CLR~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_CLR,
	o => \CLR~input_o\);

-- Location: MLABCELL_X84_Y37_N48
\cont_unit_deneme|alu_op[2]~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \cont_unit_deneme|alu_op[2]~2_combout\ = ( !\CLR~input_o\ & ( (!\LOAD~input_o\ & \COMP~input_o\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000101000001010000010100000101000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_LOAD~input_o\,
	datac => \ALT_INV_COMP~input_o\,
	dataf => \ALT_INV_CLR~input_o\,
	combout => \cont_unit_deneme|alu_op[2]~2_combout\);

-- Location: MLABCELL_X84_Y37_N3
\cont_unit_deneme|state~14\ : cyclonev_lcell_comb
-- Equation(s):
-- \cont_unit_deneme|state~14_combout\ = ( \cont_unit_deneme|alu_op[2]~2_combout\ & ( (!\reset~input_o\ & ((\cont_unit_deneme|state~13_combout\) # (\cont_unit_deneme|mux_alu_a_sel~0_combout\))) ) ) # ( !\cont_unit_deneme|alu_op[2]~2_combout\ & ( 
-- (\cont_unit_deneme|state~13_combout\ & !\reset~input_o\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100000000000011110000000000111111000000000011111100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \cont_unit_deneme|ALT_INV_mux_alu_a_sel~0_combout\,
	datac => \cont_unit_deneme|ALT_INV_state~13_combout\,
	datad => \ALT_INV_reset~input_o\,
	dataf => \cont_unit_deneme|ALT_INV_alu_op[2]~2_combout\,
	combout => \cont_unit_deneme|state~14_combout\);

-- Location: FF_X84_Y37_N5
\cont_unit_deneme|state.01\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	d => \cont_unit_deneme|state~14_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \cont_unit_deneme|state.01~q\);

-- Location: MLABCELL_X84_Y37_N6
\cont_unit_deneme|state~16\ : cyclonev_lcell_comb
-- Equation(s):
-- \cont_unit_deneme|state~16_combout\ = (\cont_unit_deneme|state.01~q\ & !\reset~input_o\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100000000000011110000000000001111000000000000111100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \cont_unit_deneme|ALT_INV_state.01~q\,
	datad => \ALT_INV_reset~input_o\,
	combout => \cont_unit_deneme|state~16_combout\);

-- Location: FF_X84_Y37_N8
\cont_unit_deneme|state.10\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	d => \cont_unit_deneme|state~16_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \cont_unit_deneme|state.10~q\);

-- Location: MLABCELL_X84_Y37_N54
\cont_unit_deneme|seq_count[1]~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \cont_unit_deneme|seq_count[1]~1_combout\ = ( \cont_unit_deneme|seq_count\(0) & ( (\cont_unit_deneme|state.00~q\ & !\cont_unit_deneme|seq_count\(1)) ) ) # ( !\cont_unit_deneme|seq_count\(0) & ( (\cont_unit_deneme|state.00~q\ & 
-- \cont_unit_deneme|seq_count\(1)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001100000011000000110000001100110000001100000011000000110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \cont_unit_deneme|ALT_INV_state.00~q\,
	datac => \cont_unit_deneme|ALT_INV_seq_count\(1),
	dataf => \cont_unit_deneme|ALT_INV_seq_count\(0),
	combout => \cont_unit_deneme|seq_count[1]~1_combout\);

-- Location: MLABCELL_X84_Y37_N18
\cont_unit_deneme|seq_count[1]~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \cont_unit_deneme|seq_count[1]~2_combout\ = ( \cont_unit_deneme|seq_count\(1) & ( \cont_unit_deneme|alu_op[2]~2_combout\ & ( (!\cont_unit_deneme|seq_count[1]~1_combout\) # (((!\cont_unit_deneme|mux_alu_a_sel~0_combout\ & 
-- !\cont_unit_deneme|state~13_combout\)) # (\reset~input_o\)) ) ) ) # ( !\cont_unit_deneme|seq_count\(1) & ( \cont_unit_deneme|alu_op[2]~2_combout\ & ( (!\cont_unit_deneme|seq_count[1]~1_combout\ & (!\reset~input_o\ & ((\cont_unit_deneme|state~13_combout\) 
-- # (\cont_unit_deneme|mux_alu_a_sel~0_combout\)))) ) ) ) # ( \cont_unit_deneme|seq_count\(1) & ( !\cont_unit_deneme|alu_op[2]~2_combout\ & ( (!\cont_unit_deneme|state~13_combout\) # ((!\cont_unit_deneme|seq_count[1]~1_combout\) # (\reset~input_o\)) ) ) ) # 
-- ( !\cont_unit_deneme|seq_count\(1) & ( !\cont_unit_deneme|alu_op[2]~2_combout\ & ( (\cont_unit_deneme|state~13_combout\ & (!\cont_unit_deneme|seq_count[1]~1_combout\ & !\reset~input_o\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011000000000000111111001111111101110000000000001111100011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \cont_unit_deneme|ALT_INV_mux_alu_a_sel~0_combout\,
	datab => \cont_unit_deneme|ALT_INV_state~13_combout\,
	datac => \cont_unit_deneme|ALT_INV_seq_count[1]~1_combout\,
	datad => \ALT_INV_reset~input_o\,
	datae => \cont_unit_deneme|ALT_INV_seq_count\(1),
	dataf => \cont_unit_deneme|ALT_INV_alu_op[2]~2_combout\,
	combout => \cont_unit_deneme|seq_count[1]~2_combout\);

-- Location: FF_X84_Y37_N20
\cont_unit_deneme|seq_count[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	d => \cont_unit_deneme|seq_count[1]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \cont_unit_deneme|seq_count\(1));

-- Location: MLABCELL_X84_Y37_N15
\cont_unit_deneme|state~13\ : cyclonev_lcell_comb
-- Equation(s):
-- \cont_unit_deneme|state~13_combout\ = ( \cont_unit_deneme|seq_count\(0) & ( (\cont_unit_deneme|state.00~q\ & \cont_unit_deneme|state.10~q\) ) ) # ( !\cont_unit_deneme|seq_count\(0) & ( (\cont_unit_deneme|state.00~q\ & (\cont_unit_deneme|state.10~q\ & 
-- \cont_unit_deneme|seq_count\(1))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000011000000000000001100000011000000110000001100000011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \cont_unit_deneme|ALT_INV_state.00~q\,
	datac => \cont_unit_deneme|ALT_INV_state.10~q\,
	datad => \cont_unit_deneme|ALT_INV_seq_count\(1),
	dataf => \cont_unit_deneme|ALT_INV_seq_count\(0),
	combout => \cont_unit_deneme|state~13_combout\);

-- Location: MLABCELL_X84_Y37_N42
\cont_unit_deneme|seq_count[0]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \cont_unit_deneme|seq_count[0]~0_combout\ = ( \cont_unit_deneme|seq_count\(0) & ( \cont_unit_deneme|alu_op[2]~2_combout\ & ( ((!\cont_unit_deneme|state.00~q\) # (!\cont_unit_deneme|state~13_combout\)) # (\reset~input_o\) ) ) ) # ( 
-- !\cont_unit_deneme|seq_count\(0) & ( \cont_unit_deneme|alu_op[2]~2_combout\ & ( (!\reset~input_o\ & (((!\cont_unit_deneme|state.00~q\ & \cont_unit_deneme|Equal1~0_combout\)) # (\cont_unit_deneme|state~13_combout\))) ) ) ) # ( 
-- \cont_unit_deneme|seq_count\(0) & ( !\cont_unit_deneme|alu_op[2]~2_combout\ & ( ((!\cont_unit_deneme|state.00~q\) # (!\cont_unit_deneme|state~13_combout\)) # (\reset~input_o\) ) ) ) # ( !\cont_unit_deneme|seq_count\(0) & ( 
-- !\cont_unit_deneme|alu_op[2]~2_combout\ & ( (!\reset~input_o\ & \cont_unit_deneme|state~13_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000010101010111111111101110100001000101010101111111111011101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_reset~input_o\,
	datab => \cont_unit_deneme|ALT_INV_state.00~q\,
	datac => \cont_unit_deneme|ALT_INV_Equal1~0_combout\,
	datad => \cont_unit_deneme|ALT_INV_state~13_combout\,
	datae => \cont_unit_deneme|ALT_INV_seq_count\(0),
	dataf => \cont_unit_deneme|ALT_INV_alu_op[2]~2_combout\,
	combout => \cont_unit_deneme|seq_count[0]~0_combout\);

-- Location: FF_X84_Y37_N44
\cont_unit_deneme|seq_count[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	d => \cont_unit_deneme|seq_count[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \cont_unit_deneme|seq_count\(0));

-- Location: LABCELL_X85_Y37_N48
\cont_unit_deneme|state~15\ : cyclonev_lcell_comb
-- Equation(s):
-- \cont_unit_deneme|state~15_combout\ = ( !\cont_unit_deneme|seq_count\(1) & ( \cont_unit_deneme|state.10~q\ & ( (!\reset~input_o\ & !\cont_unit_deneme|seq_count\(0)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011001100000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_reset~input_o\,
	datad => \cont_unit_deneme|ALT_INV_seq_count\(0),
	datae => \cont_unit_deneme|ALT_INV_seq_count\(1),
	dataf => \cont_unit_deneme|ALT_INV_state.10~q\,
	combout => \cont_unit_deneme|state~15_combout\);

-- Location: FF_X85_Y37_N50
\cont_unit_deneme|state.11\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	d => \cont_unit_deneme|state~15_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \cont_unit_deneme|state.11~q\);

-- Location: MLABCELL_X84_Y37_N12
\cont_unit_deneme|state~12\ : cyclonev_lcell_comb
-- Equation(s):
-- \cont_unit_deneme|state~12_combout\ = ( \cont_unit_deneme|alu_op[2]~2_combout\ & ( (!\reset~input_o\ & ((!\cont_unit_deneme|state.00~q\ & (\cont_unit_deneme|Equal1~0_combout\)) # (\cont_unit_deneme|state.00~q\ & ((!\cont_unit_deneme|state.11~q\))))) ) ) # 
-- ( !\cont_unit_deneme|alu_op[2]~2_combout\ & ( (\cont_unit_deneme|state.00~q\ & (!\reset~input_o\ & !\cont_unit_deneme|state.11~q\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011000000000000001100000000000001110000010000000111000001000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \cont_unit_deneme|ALT_INV_Equal1~0_combout\,
	datab => \cont_unit_deneme|ALT_INV_state.00~q\,
	datac => \ALT_INV_reset~input_o\,
	datad => \cont_unit_deneme|ALT_INV_state.11~q\,
	dataf => \cont_unit_deneme|ALT_INV_alu_op[2]~2_combout\,
	combout => \cont_unit_deneme|state~12_combout\);

-- Location: FF_X84_Y37_N14
\cont_unit_deneme|state.00\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	d => \cont_unit_deneme|state~12_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \cont_unit_deneme|state.00~q\);

-- Location: MLABCELL_X84_Y38_N12
\cont_unit_deneme|mux_alu_b_sel[1]\ : cyclonev_lcell_comb
-- Equation(s):
-- \cont_unit_deneme|mux_alu_b_sel\(1) = ( \cont_unit_deneme|state.00~q\ & ( (\cont_unit_deneme|alu_op[2]~3_combout\) # (\cont_unit_deneme|mux_alu_b_sel\(1)) ) ) # ( !\cont_unit_deneme|state.00~q\ & ( (\cont_unit_deneme|mux_alu_b_sel\(1) & 
-- !\cont_unit_deneme|alu_op[2]~3_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100000000000011110000000000001111111111110000111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \cont_unit_deneme|ALT_INV_mux_alu_b_sel\(1),
	datad => \cont_unit_deneme|ALT_INV_alu_op[2]~3_combout\,
	dataf => \cont_unit_deneme|ALT_INV_state.00~q\,
	combout => \cont_unit_deneme|mux_alu_b_sel\(1));

-- Location: MLABCELL_X84_Y37_N24
\cont_unit_deneme|qn1_reset~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \cont_unit_deneme|qn1_reset~0_combout\ = ( \cont_unit_deneme|alu_op[2]~2_combout\ & ( (!\cont_unit_deneme|state.00~q\ & ((\cont_unit_deneme|Equal1~0_combout\))) # (\cont_unit_deneme|state.00~q\ & (\cont_unit_deneme|state.01~q\)) ) ) # ( 
-- !\cont_unit_deneme|alu_op[2]~2_combout\ & ( (\cont_unit_deneme|state.00~q\ & \cont_unit_deneme|state.01~q\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001100000011000000110000001100000011110011110000001111001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \cont_unit_deneme|ALT_INV_state.00~q\,
	datac => \cont_unit_deneme|ALT_INV_state.01~q\,
	datad => \cont_unit_deneme|ALT_INV_Equal1~0_combout\,
	dataf => \cont_unit_deneme|ALT_INV_alu_op[2]~2_combout\,
	combout => \cont_unit_deneme|qn1_reset~0_combout\);

-- Location: MLABCELL_X84_Y37_N27
\cont_unit_deneme|acc_reset\ : cyclonev_lcell_comb
-- Equation(s):
-- \cont_unit_deneme|acc_reset~combout\ = ( \cont_unit_deneme|qn1_reset~0_combout\ & ( !\cont_unit_deneme|state.00~q\ ) ) # ( !\cont_unit_deneme|qn1_reset~0_combout\ & ( \cont_unit_deneme|acc_reset~combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011111111000000001111111111110000111100001111000011110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \cont_unit_deneme|ALT_INV_state.00~q\,
	datad => \cont_unit_deneme|ALT_INV_acc_reset~combout\,
	dataf => \cont_unit_deneme|ALT_INV_qn1_reset~0_combout\,
	combout => \cont_unit_deneme|acc_reset~combout\);

-- Location: LABCELL_X83_Y37_N24
\cont_unit_deneme|alu_op[0]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \cont_unit_deneme|alu_op[0]~0_combout\ = ( !\cont_unit_deneme|state.00~q\ & ( \OP[0]~input_o\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001100110011001100110011001100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_OP[0]~input_o\,
	dataf => \cont_unit_deneme|ALT_INV_state.00~q\,
	combout => \cont_unit_deneme|alu_op[0]~0_combout\);

-- Location: LABCELL_X83_Y37_N18
\cont_unit_deneme|alu_op[0]\ : cyclonev_lcell_comb
-- Equation(s):
-- \cont_unit_deneme|alu_op\(0) = ( \cont_unit_deneme|alu_op[0]~0_combout\ & ( (\cont_unit_deneme|alu_op[2]~3_combout\) # (\cont_unit_deneme|alu_op\(0)) ) ) # ( !\cont_unit_deneme|alu_op[0]~0_combout\ & ( (\cont_unit_deneme|alu_op\(0) & 
-- !\cont_unit_deneme|alu_op[2]~3_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100000000000011110000000000001111111111110000111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \cont_unit_deneme|ALT_INV_alu_op\(0),
	datad => \cont_unit_deneme|ALT_INV_alu_op[2]~3_combout\,
	dataf => \cont_unit_deneme|ALT_INV_alu_op[0]~0_combout\,
	combout => \cont_unit_deneme|alu_op\(0));

-- Location: LABCELL_X83_Y37_N48
\cont_unit_deneme|alu_op[1]~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \cont_unit_deneme|alu_op[1]~4_combout\ = ( \datapath_deneme|qn1|out\(0) & ( \datapath_deneme|Q|out\(0) & ( (!\cont_unit_deneme|state.00~q\ & ((!\OP[1]~input_o\) # ((!\OP[0]~input_o\ & !\OP[2]~input_o\)))) ) ) ) # ( !\datapath_deneme|qn1|out\(0) & ( 
-- \datapath_deneme|Q|out\(0) & ( (!\cont_unit_deneme|state.00~q\ & ((!\OP[1]~input_o\) # ((!\OP[0]~input_o\ & !\OP[2]~input_o\)))) ) ) ) # ( \datapath_deneme|qn1|out\(0) & ( !\datapath_deneme|Q|out\(0) & ( (!\OP[1]~input_o\) # (((!\OP[0]~input_o\ & 
-- !\OP[2]~input_o\)) # (\cont_unit_deneme|state.00~q\)) ) ) ) # ( !\datapath_deneme|qn1|out\(0) & ( !\datapath_deneme|Q|out\(0) & ( (!\cont_unit_deneme|state.00~q\ & ((!\OP[1]~input_o\) # ((!\OP[0]~input_o\ & !\OP[2]~input_o\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1110110000000000111011001111111111101100000000001110110000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_OP[0]~input_o\,
	datab => \ALT_INV_OP[1]~input_o\,
	datac => \ALT_INV_OP[2]~input_o\,
	datad => \cont_unit_deneme|ALT_INV_state.00~q\,
	datae => \datapath_deneme|qn1|ALT_INV_out\(0),
	dataf => \datapath_deneme|Q|ALT_INV_out\(0),
	combout => \cont_unit_deneme|alu_op[1]~4_combout\);

-- Location: LABCELL_X83_Y37_N54
\cont_unit_deneme|alu_op[1]\ : cyclonev_lcell_comb
-- Equation(s):
-- \cont_unit_deneme|alu_op\(1) = ( \cont_unit_deneme|alu_op[1]~4_combout\ & ( (!\cont_unit_deneme|alu_op[2]~3_combout\ & \cont_unit_deneme|alu_op\(1)) ) ) # ( !\cont_unit_deneme|alu_op[1]~4_combout\ & ( (\cont_unit_deneme|alu_op\(1)) # 
-- (\cont_unit_deneme|alu_op[2]~3_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111111111111000011111111111100000000111100000000000011110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \cont_unit_deneme|ALT_INV_alu_op[2]~3_combout\,
	datad => \cont_unit_deneme|ALT_INV_alu_op\(1),
	dataf => \cont_unit_deneme|ALT_INV_alu_op[1]~4_combout\,
	combout => \cont_unit_deneme|alu_op\(1));

-- Location: LABCELL_X85_Y37_N0
\cont_unit_deneme|mux_R0_sel[1]~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \cont_unit_deneme|mux_R0_sel[1]~1_combout\ = ( \OP[1]~input_o\ & ( (!\LOAD~input_o\ & ((!\OP[2]~input_o\) # (!\COMP~input_o\))) ) ) # ( !\OP[1]~input_o\ & ( (!\LOAD~input_o\ & !\COMP~input_o\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1100000011000000110000001100000011001000110010001100100011001000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_OP[2]~input_o\,
	datab => \ALT_INV_LOAD~input_o\,
	datac => \ALT_INV_COMP~input_o\,
	dataf => \ALT_INV_OP[1]~input_o\,
	combout => \cont_unit_deneme|mux_R0_sel[1]~1_combout\);

-- Location: LABCELL_X85_Y37_N12
\cont_unit_deneme|mux_R0_sel[1]~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \cont_unit_deneme|mux_R0_sel[1]~2_combout\ = ( \CLR~input_o\ & ( \cont_unit_deneme|state.11~q\ & ( \cont_unit_deneme|state.00~q\ ) ) ) # ( !\CLR~input_o\ & ( \cont_unit_deneme|state.11~q\ & ( (!\cont_unit_deneme|mux_R0_sel[1]~1_combout\) # 
-- (\cont_unit_deneme|state.00~q\) ) ) ) # ( !\CLR~input_o\ & ( !\cont_unit_deneme|state.11~q\ & ( (!\cont_unit_deneme|mux_R0_sel[1]~1_combout\ & !\cont_unit_deneme|state.00~q\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111000000000000000000000000000011110000111111110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \cont_unit_deneme|ALT_INV_mux_R0_sel[1]~1_combout\,
	datad => \cont_unit_deneme|ALT_INV_state.00~q\,
	datae => \ALT_INV_CLR~input_o\,
	dataf => \cont_unit_deneme|ALT_INV_state.11~q\,
	combout => \cont_unit_deneme|mux_R0_sel[1]~2_combout\);

-- Location: LABCELL_X85_Y37_N42
\cont_unit_deneme|mux_R0_sel[0]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \cont_unit_deneme|mux_R0_sel[0]~0_combout\ = ( !\cont_unit_deneme|state.00~q\ & ( \LOAD~input_o\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011111111000000001111111100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \ALT_INV_LOAD~input_o\,
	dataf => \cont_unit_deneme|ALT_INV_state.00~q\,
	combout => \cont_unit_deneme|mux_R0_sel[0]~0_combout\);

-- Location: LABCELL_X85_Y37_N27
\cont_unit_deneme|mux_R1_sel[0]\ : cyclonev_lcell_comb
-- Equation(s):
-- \cont_unit_deneme|mux_R1_sel\(0) = ( \cont_unit_deneme|mux_R1_sel\(0) & ( \cont_unit_deneme|mux_R0_sel[0]~0_combout\ & ( !\cont_unit_deneme|mux_R0_sel[1]~2_combout\ ) ) ) # ( \cont_unit_deneme|mux_R1_sel\(0) & ( !\cont_unit_deneme|mux_R0_sel[0]~0_combout\ 
-- ) ) # ( !\cont_unit_deneme|mux_R1_sel\(0) & ( !\cont_unit_deneme|mux_R0_sel[0]~0_combout\ & ( \cont_unit_deneme|mux_R0_sel[1]~2_combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111111111111111111100000000000000001111000011110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \cont_unit_deneme|ALT_INV_mux_R0_sel[1]~2_combout\,
	datae => \cont_unit_deneme|ALT_INV_mux_R1_sel\(0),
	dataf => \cont_unit_deneme|ALT_INV_mux_R0_sel[0]~0_combout\,
	combout => \cont_unit_deneme|mux_R1_sel\(0));

-- Location: MLABCELL_X84_Y37_N51
\cont_unit_deneme|R0_en~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \cont_unit_deneme|R0_en~0_combout\ = ( \cont_unit_deneme|state.00~q\ ) # ( !\cont_unit_deneme|state.00~q\ & ( \LOAD~input_o\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101010101010101010111111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_LOAD~input_o\,
	dataf => \cont_unit_deneme|ALT_INV_state.00~q\,
	combout => \cont_unit_deneme|R0_en~0_combout\);

-- Location: MLABCELL_X84_Y37_N33
\cont_unit_deneme|mux_R1_sel[1]\ : cyclonev_lcell_comb
-- Equation(s):
-- \cont_unit_deneme|mux_R1_sel\(1) = ( \cont_unit_deneme|R0_en~0_combout\ & ( (\cont_unit_deneme|mux_R1_sel\(1) & !\cont_unit_deneme|mux_R0_sel[1]~2_combout\) ) ) # ( !\cont_unit_deneme|R0_en~0_combout\ & ( (\cont_unit_deneme|mux_R0_sel[1]~2_combout\) # 
-- (\cont_unit_deneme|mux_R1_sel\(1)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101111101011111010111110101111101010000010100000101000001010000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \cont_unit_deneme|ALT_INV_mux_R1_sel\(1),
	datac => \cont_unit_deneme|ALT_INV_mux_R0_sel[1]~2_combout\,
	dataf => \cont_unit_deneme|ALT_INV_R0_en~0_combout\,
	combout => \cont_unit_deneme|mux_R1_sel\(1));

-- Location: LABCELL_X88_Y37_N51
\cont_unit_deneme|RST\ : cyclonev_lcell_comb
-- Equation(s):
-- \cont_unit_deneme|RST~combout\ = ( \cont_unit_deneme|RST~combout\ & ( (\cont_unit_deneme|state.00~q\) # (\CLR~input_o\) ) ) # ( !\cont_unit_deneme|RST~combout\ & ( (\CLR~input_o\ & !\cont_unit_deneme|state.00~q\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101000001010000010100000101000001011111010111110101111101011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_CLR~input_o\,
	datac => \cont_unit_deneme|ALT_INV_state.00~q\,
	dataf => \cont_unit_deneme|ALT_INV_RST~combout\,
	combout => \cont_unit_deneme|RST~combout\);

-- Location: MLABCELL_X82_Y38_N27
\datapath_deneme|Reg1|out~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \datapath_deneme|Reg1|out~0_combout\ = ( !\cont_unit_deneme|RST~combout\ & ( (!\cont_unit_deneme|mux_R1_sel\(0) & \cont_unit_deneme|mux_R1_sel\(1)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011001100000000001100110000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \cont_unit_deneme|ALT_INV_mux_R1_sel\(0),
	datad => \cont_unit_deneme|ALT_INV_mux_R1_sel\(1),
	dataf => \cont_unit_deneme|ALT_INV_RST~combout\,
	combout => \datapath_deneme|Reg1|out~0_combout\);

-- Location: MLABCELL_X82_Y38_N24
\datapath_deneme|Reg1|out~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \datapath_deneme|Reg1|out~1_combout\ = ( \datapath_deneme|acc|out\(0) & ( (!\cont_unit_deneme|RST~combout\ & (!\cont_unit_deneme|mux_R1_sel\(1) & ((\datapath_deneme|Reg0|out\(0)) # (\cont_unit_deneme|mux_R1_sel\(0))))) ) ) # ( 
-- !\datapath_deneme|acc|out\(0) & ( (!\cont_unit_deneme|RST~combout\ & (!\cont_unit_deneme|mux_R1_sel\(0) & (\datapath_deneme|Reg0|out\(0) & !\cont_unit_deneme|mux_R1_sel\(1)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000100000000000000010000000000000101010000000000010101000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \cont_unit_deneme|ALT_INV_RST~combout\,
	datab => \cont_unit_deneme|ALT_INV_mux_R1_sel\(0),
	datac => \datapath_deneme|Reg0|ALT_INV_out\(0),
	datad => \cont_unit_deneme|ALT_INV_mux_R1_sel\(1),
	dataf => \datapath_deneme|acc|ALT_INV_out\(0),
	combout => \datapath_deneme|Reg1|out~1_combout\);

-- Location: LABCELL_X83_Y38_N9
\datapath_deneme|Reg1|out~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \datapath_deneme|Reg1|out~2_combout\ = ( \datapath_deneme|Reg1|out~1_combout\ ) # ( !\datapath_deneme|Reg1|out~1_combout\ & ( (\datapath_deneme|Reg1|out~0_combout\ & ((!\cont_unit_deneme|alu_op\(0) & (\datapath_deneme|alu|out[0]~1_combout\)) # 
-- (\cont_unit_deneme|alu_op\(0) & ((\datapath_deneme|alu|out[0]~0_combout\))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000001000111000000000100011111111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \datapath_deneme|alu|ALT_INV_out[0]~1_combout\,
	datab => \cont_unit_deneme|ALT_INV_alu_op\(0),
	datac => \datapath_deneme|alu|ALT_INV_out[0]~0_combout\,
	datad => \datapath_deneme|Reg1|ALT_INV_out~0_combout\,
	dataf => \datapath_deneme|Reg1|ALT_INV_out~1_combout\,
	combout => \datapath_deneme|Reg1|out~2_combout\);

-- Location: LABCELL_X85_Y37_N36
\cont_unit_deneme|R0_en~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \cont_unit_deneme|R0_en~1_combout\ = ( \CLR~input_o\ & ( \cont_unit_deneme|state.11~q\ & ( \cont_unit_deneme|state.00~q\ ) ) ) # ( !\CLR~input_o\ & ( \cont_unit_deneme|state.11~q\ & ( (((\COMP~input_o\ & \cont_unit_deneme|Equal1~0_combout\)) # 
-- (\cont_unit_deneme|state.00~q\)) # (\LOAD~input_o\) ) ) ) # ( !\CLR~input_o\ & ( !\cont_unit_deneme|state.11~q\ & ( (!\cont_unit_deneme|state.00~q\ & (((\COMP~input_o\ & \cont_unit_deneme|Equal1~0_combout\)) # (\LOAD~input_o\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011011100000000000000000000000000110111111111110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_COMP~input_o\,
	datab => \ALT_INV_LOAD~input_o\,
	datac => \cont_unit_deneme|ALT_INV_Equal1~0_combout\,
	datad => \cont_unit_deneme|ALT_INV_state.00~q\,
	datae => \ALT_INV_CLR~input_o\,
	dataf => \cont_unit_deneme|ALT_INV_state.11~q\,
	combout => \cont_unit_deneme|R0_en~1_combout\);

-- Location: LABCELL_X85_Y37_N21
\cont_unit_deneme|R0_en\ : cyclonev_lcell_comb
-- Equation(s):
-- \cont_unit_deneme|R0_en~combout\ = ( \cont_unit_deneme|R0_en~1_combout\ & ( \cont_unit_deneme|R0_en~0_combout\ ) ) # ( !\cont_unit_deneme|R0_en~1_combout\ & ( \cont_unit_deneme|R0_en~0_combout\ & ( \cont_unit_deneme|R0_en~combout\ ) ) ) # ( 
-- !\cont_unit_deneme|R0_en~1_combout\ & ( !\cont_unit_deneme|R0_en~0_combout\ & ( \cont_unit_deneme|R0_en~combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011111111000000000000000000000000111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \cont_unit_deneme|ALT_INV_R0_en~combout\,
	datae => \cont_unit_deneme|ALT_INV_R0_en~1_combout\,
	dataf => \cont_unit_deneme|ALT_INV_R0_en~0_combout\,
	combout => \cont_unit_deneme|R0_en~combout\);

-- Location: MLABCELL_X82_Y38_N39
\datapath_deneme|Reg0|out[1]~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \datapath_deneme|Reg0|out[1]~3_combout\ = ( \cont_unit_deneme|RST~combout\ ) # ( !\cont_unit_deneme|RST~combout\ & ( \cont_unit_deneme|R0_en~combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101010101010101010111111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \cont_unit_deneme|ALT_INV_R0_en~combout\,
	dataf => \cont_unit_deneme|ALT_INV_RST~combout\,
	combout => \datapath_deneme|Reg0|out[1]~3_combout\);

-- Location: FF_X83_Y38_N11
\datapath_deneme|Reg1|out[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	d => \datapath_deneme|Reg1|out~2_combout\,
	ena => \datapath_deneme|Reg0|out[1]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \datapath_deneme|Reg1|out\(0));

-- Location: MLABCELL_X84_Y38_N24
\datapath_deneme|alu|Add3~18\ : cyclonev_lcell_comb
-- Equation(s):
-- \datapath_deneme|alu|Add3~18_cout\ = CARRY(( VCC ) + ( VCC ) + ( !VCC ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000001111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	cin => GND,
	cout => \datapath_deneme|alu|Add3~18_cout\);

-- Location: MLABCELL_X84_Y38_N27
\datapath_deneme|alu|Add3~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \datapath_deneme|alu|Add3~5_sumout\ = SUM(( (!\cont_unit_deneme|mux_alu_b_sel\(1) & ((\datapath_deneme|Reg1|out\(0)))) # (\cont_unit_deneme|mux_alu_b_sel\(1) & (\datapath_deneme|acc|out\(0))) ) + ( (!\datapath_deneme|Reg0|out\(0)) # 
-- (\cont_unit_deneme|mux_alu_a_sel~combout\) ) + ( \datapath_deneme|alu|Add3~18_cout\ ))
-- \datapath_deneme|alu|Add3~6\ = CARRY(( (!\cont_unit_deneme|mux_alu_b_sel\(1) & ((\datapath_deneme|Reg1|out\(0)))) # (\cont_unit_deneme|mux_alu_b_sel\(1) & (\datapath_deneme|acc|out\(0))) ) + ( (!\datapath_deneme|Reg0|out\(0)) # 
-- (\cont_unit_deneme|mux_alu_a_sel~combout\) ) + ( \datapath_deneme|alu|Add3~18_cout\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000001010101000000000000000000000001111001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \cont_unit_deneme|ALT_INV_mux_alu_a_sel~combout\,
	datab => \cont_unit_deneme|ALT_INV_mux_alu_b_sel\(1),
	datac => \datapath_deneme|acc|ALT_INV_out\(0),
	datad => \datapath_deneme|Reg1|ALT_INV_out\(0),
	dataf => \datapath_deneme|Reg0|ALT_INV_out\(0),
	cin => \datapath_deneme|alu|Add3~18_cout\,
	sumout => \datapath_deneme|alu|Add3~5_sumout\,
	cout => \datapath_deneme|alu|Add3~6\);

-- Location: MLABCELL_X84_Y38_N30
\datapath_deneme|alu|Add3~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \datapath_deneme|alu|Add3~9_sumout\ = SUM(( (!\cont_unit_deneme|mux_alu_b_sel\(1) & ((\datapath_deneme|Reg1|out\(1)))) # (\cont_unit_deneme|mux_alu_b_sel\(1) & (\datapath_deneme|acc|out\(1))) ) + ( (!\datapath_deneme|Reg0|out\(1)) # 
-- (\cont_unit_deneme|mux_alu_a_sel~combout\) ) + ( \datapath_deneme|alu|Add3~6\ ))
-- \datapath_deneme|alu|Add3~10\ = CARRY(( (!\cont_unit_deneme|mux_alu_b_sel\(1) & ((\datapath_deneme|Reg1|out\(1)))) # (\cont_unit_deneme|mux_alu_b_sel\(1) & (\datapath_deneme|acc|out\(1))) ) + ( (!\datapath_deneme|Reg0|out\(1)) # 
-- (\cont_unit_deneme|mux_alu_a_sel~combout\) ) + ( \datapath_deneme|alu|Add3~6\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000001010101000000000000000000000001111001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \cont_unit_deneme|ALT_INV_mux_alu_a_sel~combout\,
	datab => \cont_unit_deneme|ALT_INV_mux_alu_b_sel\(1),
	datac => \datapath_deneme|acc|ALT_INV_out\(1),
	datad => \datapath_deneme|Reg1|ALT_INV_out\(1),
	dataf => \datapath_deneme|Reg0|ALT_INV_out\(1),
	cin => \datapath_deneme|alu|Add3~6\,
	sumout => \datapath_deneme|alu|Add3~9_sumout\,
	cout => \datapath_deneme|alu|Add3~10\);

-- Location: LABCELL_X83_Y37_N42
\cont_unit_deneme|alu_op[2]~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \cont_unit_deneme|alu_op[2]~5_combout\ = ( !\cont_unit_deneme|state.00~q\ & ( (\OP[2]~input_o\ & ((!\OP[0]~input_o\) # (!\OP[1]~input_o\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001010000011110000101000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_OP[0]~input_o\,
	datac => \ALT_INV_OP[2]~input_o\,
	datad => \ALT_INV_OP[1]~input_o\,
	dataf => \cont_unit_deneme|ALT_INV_state.00~q\,
	combout => \cont_unit_deneme|alu_op[2]~5_combout\);

-- Location: LABCELL_X83_Y37_N57
\cont_unit_deneme|alu_op[2]\ : cyclonev_lcell_comb
-- Equation(s):
-- \cont_unit_deneme|alu_op\(2) = ( \cont_unit_deneme|alu_op[2]~5_combout\ & ( (\cont_unit_deneme|alu_op\(2)) # (\cont_unit_deneme|alu_op[2]~3_combout\) ) ) # ( !\cont_unit_deneme|alu_op[2]~5_combout\ & ( (!\cont_unit_deneme|alu_op[2]~3_combout\ & 
-- \cont_unit_deneme|alu_op\(2)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000010101010000000001010101001010101111111110101010111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \cont_unit_deneme|ALT_INV_alu_op[2]~3_combout\,
	datad => \cont_unit_deneme|ALT_INV_alu_op\(2),
	dataf => \cont_unit_deneme|ALT_INV_alu_op[2]~5_combout\,
	combout => \cont_unit_deneme|alu_op\(2));

-- Location: LABCELL_X83_Y38_N0
\datapath_deneme|alu|out[1]~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \datapath_deneme|alu|out[1]~3_combout\ = ( !\cont_unit_deneme|alu_op\(2) & ( (!\cont_unit_deneme|alu_op\(0) & (\cont_unit_deneme|alu_op\(1) & \datapath_deneme|alu|Add3~9_sumout\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000001100000000000000110000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \cont_unit_deneme|ALT_INV_alu_op\(0),
	datac => \cont_unit_deneme|ALT_INV_alu_op\(1),
	datad => \datapath_deneme|alu|ALT_INV_Add3~9_sumout\,
	dataf => \cont_unit_deneme|ALT_INV_alu_op\(2),
	combout => \datapath_deneme|alu|out[1]~3_combout\);

-- Location: LABCELL_X85_Y37_N45
\cont_unit_deneme|mux_R0_sel[1]\ : cyclonev_lcell_comb
-- Equation(s):
-- \cont_unit_deneme|mux_R0_sel\(1) = ( \cont_unit_deneme|state.00~q\ & ( (\cont_unit_deneme|mux_R0_sel\(1)) # (\cont_unit_deneme|mux_R0_sel[1]~2_combout\) ) ) # ( !\cont_unit_deneme|state.00~q\ & ( (!\cont_unit_deneme|mux_R0_sel[1]~2_combout\ & 
-- \cont_unit_deneme|mux_R0_sel\(1)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011110000000000001111000000001111111111110000111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \cont_unit_deneme|ALT_INV_mux_R0_sel[1]~2_combout\,
	datad => \cont_unit_deneme|ALT_INV_mux_R0_sel\(1),
	dataf => \cont_unit_deneme|ALT_INV_state.00~q\,
	combout => \cont_unit_deneme|mux_R0_sel\(1));

-- Location: LABCELL_X85_Y37_N3
\cont_unit_deneme|mux_R0_sel[0]\ : cyclonev_lcell_comb
-- Equation(s):
-- \cont_unit_deneme|mux_R0_sel\(0) = ( \cont_unit_deneme|mux_R0_sel[0]~0_combout\ & ( (\cont_unit_deneme|mux_R0_sel\(0)) # (\cont_unit_deneme|mux_R0_sel[1]~2_combout\) ) ) # ( !\cont_unit_deneme|mux_R0_sel[0]~0_combout\ & ( 
-- (!\cont_unit_deneme|mux_R0_sel[1]~2_combout\ & \cont_unit_deneme|mux_R0_sel\(0)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011110000000000001111000000001111111111110000111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \cont_unit_deneme|ALT_INV_mux_R0_sel[1]~2_combout\,
	datad => \cont_unit_deneme|ALT_INV_mux_R0_sel\(0),
	dataf => \cont_unit_deneme|ALT_INV_mux_R0_sel[0]~0_combout\,
	combout => \cont_unit_deneme|mux_R0_sel\(0));

-- Location: LABCELL_X85_Y38_N51
\datapath_deneme|Reg0|out~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \datapath_deneme|Reg0|out~0_combout\ = ( !\cont_unit_deneme|mux_R0_sel\(0) & ( (!\cont_unit_deneme|RST~combout\ & !\cont_unit_deneme|mux_R0_sel\(1)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1010000010100000101000001010000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \cont_unit_deneme|ALT_INV_RST~combout\,
	datac => \cont_unit_deneme|ALT_INV_mux_R0_sel\(1),
	dataf => \cont_unit_deneme|ALT_INV_mux_R0_sel\(0),
	combout => \datapath_deneme|Reg0|out~0_combout\);

-- Location: IOIBUF_X84_Y81_N18
\DATA_IN[1]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_DATA_IN(1),
	o => \DATA_IN[1]~input_o\);

-- Location: MLABCELL_X84_Y37_N30
\cont_unit_deneme|Q_PS~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \cont_unit_deneme|Q_PS~0_combout\ = ( \cont_unit_deneme|state.10~q\ & ( ((\cont_unit_deneme|alu_op[2]~2_combout\ & \cont_unit_deneme|Equal1~0_combout\)) # (\cont_unit_deneme|state.00~q\) ) ) # ( !\cont_unit_deneme|state.10~q\ & ( 
-- (!\cont_unit_deneme|state.00~q\ & (\cont_unit_deneme|alu_op[2]~2_combout\ & \cont_unit_deneme|Equal1~0_combout\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000001100000000000000110000110011001111110011001100111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \cont_unit_deneme|ALT_INV_state.00~q\,
	datac => \cont_unit_deneme|ALT_INV_alu_op[2]~2_combout\,
	datad => \cont_unit_deneme|ALT_INV_Equal1~0_combout\,
	dataf => \cont_unit_deneme|ALT_INV_state.10~q\,
	combout => \cont_unit_deneme|Q_PS~0_combout\);

-- Location: MLABCELL_X84_Y37_N39
\cont_unit_deneme|Q_PS\ : cyclonev_lcell_comb
-- Equation(s):
-- \cont_unit_deneme|Q_PS~combout\ = ( \cont_unit_deneme|Q_PS~0_combout\ & ( !\cont_unit_deneme|state.00~q\ ) ) # ( !\cont_unit_deneme|Q_PS~0_combout\ & ( \cont_unit_deneme|Q_PS~combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011111111000000001111111111110000111100001111000011110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \cont_unit_deneme|ALT_INV_state.00~q\,
	datad => \cont_unit_deneme|ALT_INV_Q_PS~combout\,
	dataf => \cont_unit_deneme|ALT_INV_Q_PS~0_combout\,
	combout => \cont_unit_deneme|Q_PS~combout\);

-- Location: LABCELL_X85_Y38_N48
\datapath_deneme|Reg1|out~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \datapath_deneme|Reg1|out~5_combout\ = ( \datapath_deneme|Reg0|out\(2) & ( (!\cont_unit_deneme|RST~combout\ & (!\cont_unit_deneme|mux_R1_sel\(1) & ((!\cont_unit_deneme|mux_R1_sel\(0)) # (\datapath_deneme|acc|out\(2))))) ) ) # ( 
-- !\datapath_deneme|Reg0|out\(2) & ( (!\cont_unit_deneme|RST~combout\ & (\cont_unit_deneme|mux_R1_sel\(0) & (\datapath_deneme|acc|out\(2) & !\cont_unit_deneme|mux_R1_sel\(1)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001000000000000000100000000010001010000000001000101000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \cont_unit_deneme|ALT_INV_RST~combout\,
	datab => \cont_unit_deneme|ALT_INV_mux_R1_sel\(0),
	datac => \datapath_deneme|acc|ALT_INV_out\(2),
	datad => \cont_unit_deneme|ALT_INV_mux_R1_sel\(1),
	dataf => \datapath_deneme|Reg0|ALT_INV_out\(2),
	combout => \datapath_deneme|Reg1|out~5_combout\);

-- Location: MLABCELL_X84_Y38_N21
\datapath_deneme|Reg1|out~6\ : cyclonev_lcell_comb
-- Equation(s):
-- \datapath_deneme|Reg1|out~6_combout\ = ( \cont_unit_deneme|alu_op\(0) & ( \datapath_deneme|alu|out[2]~4_combout\ & ( (\datapath_deneme|Reg1|out~5_combout\) # (\datapath_deneme|Reg1|out~0_combout\) ) ) ) # ( !\cont_unit_deneme|alu_op\(0) & ( 
-- \datapath_deneme|alu|out[2]~4_combout\ & ( ((\datapath_deneme|Reg1|out~0_combout\ & ((\datapath_deneme|alu|out[2]~5_combout\) # (\datapath_deneme|alu|out[2]~8_combout\)))) # (\datapath_deneme|Reg1|out~5_combout\) ) ) ) # ( \cont_unit_deneme|alu_op\(0) & ( 
-- !\datapath_deneme|alu|out[2]~4_combout\ & ( ((\datapath_deneme|Reg1|out~0_combout\ & ((\datapath_deneme|alu|out[2]~5_combout\) # (\datapath_deneme|alu|out[2]~8_combout\)))) # (\datapath_deneme|Reg1|out~5_combout\) ) ) ) # ( !\cont_unit_deneme|alu_op\(0) & 
-- ( !\datapath_deneme|alu|out[2]~4_combout\ & ( ((\datapath_deneme|Reg1|out~0_combout\ & ((\datapath_deneme|alu|out[2]~5_combout\) # (\datapath_deneme|alu|out[2]~8_combout\)))) # (\datapath_deneme|Reg1|out~5_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000011111111111000001111111111100000111111111110000111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \datapath_deneme|alu|ALT_INV_out[2]~8_combout\,
	datab => \datapath_deneme|alu|ALT_INV_out[2]~5_combout\,
	datac => \datapath_deneme|Reg1|ALT_INV_out~0_combout\,
	datad => \datapath_deneme|Reg1|ALT_INV_out~5_combout\,
	datae => \cont_unit_deneme|ALT_INV_alu_op\(0),
	dataf => \datapath_deneme|alu|ALT_INV_out[2]~4_combout\,
	combout => \datapath_deneme|Reg1|out~6_combout\);

-- Location: FF_X84_Y38_N23
\datapath_deneme|Reg1|out[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	d => \datapath_deneme|Reg1|out~6_combout\,
	ena => \datapath_deneme|Reg0|out[1]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \datapath_deneme|Reg1|out\(2));

-- Location: LABCELL_X83_Y38_N30
\datapath_deneme|alu|Add1~18\ : cyclonev_lcell_comb
-- Equation(s):
-- \datapath_deneme|alu|Add1~18_cout\ = CARRY(( VCC ) + ( VCC ) + ( !VCC ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000001111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	cin => GND,
	cout => \datapath_deneme|alu|Add1~18_cout\);

-- Location: LABCELL_X83_Y38_N33
\datapath_deneme|alu|Add1~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \datapath_deneme|alu|Add1~5_sumout\ = SUM(( (!\cont_unit_deneme|mux_alu_a_sel~combout\ & \datapath_deneme|Reg0|out\(0)) ) + ( (!\cont_unit_deneme|mux_alu_b_sel\(1) & ((!\datapath_deneme|Reg1|out\(0)))) # (\cont_unit_deneme|mux_alu_b_sel\(1) & 
-- (!\datapath_deneme|acc|out\(0))) ) + ( \datapath_deneme|alu|Add1~18_cout\ ))
-- \datapath_deneme|alu|Add1~6\ = CARRY(( (!\cont_unit_deneme|mux_alu_a_sel~combout\ & \datapath_deneme|Reg0|out\(0)) ) + ( (!\cont_unit_deneme|mux_alu_b_sel\(1) & ((!\datapath_deneme|Reg1|out\(0)))) # (\cont_unit_deneme|mux_alu_b_sel\(1) & 
-- (!\datapath_deneme|acc|out\(0))) ) + ( \datapath_deneme|alu|Add1~18_cout\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000100011101110100000000000000000000000011110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \datapath_deneme|acc|ALT_INV_out\(0),
	datab => \cont_unit_deneme|ALT_INV_mux_alu_b_sel\(1),
	datac => \cont_unit_deneme|ALT_INV_mux_alu_a_sel~combout\,
	datad => \datapath_deneme|Reg0|ALT_INV_out\(0),
	dataf => \datapath_deneme|Reg1|ALT_INV_out\(0),
	cin => \datapath_deneme|alu|Add1~18_cout\,
	sumout => \datapath_deneme|alu|Add1~5_sumout\,
	cout => \datapath_deneme|alu|Add1~6\);

-- Location: LABCELL_X83_Y38_N36
\datapath_deneme|alu|Add1~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \datapath_deneme|alu|Add1~9_sumout\ = SUM(( (!\cont_unit_deneme|mux_alu_a_sel~combout\ & \datapath_deneme|Reg0|out\(1)) ) + ( (!\cont_unit_deneme|mux_alu_b_sel\(1) & ((!\datapath_deneme|Reg1|out\(1)))) # (\cont_unit_deneme|mux_alu_b_sel\(1) & 
-- (!\datapath_deneme|acc|out\(1))) ) + ( \datapath_deneme|alu|Add1~6\ ))
-- \datapath_deneme|alu|Add1~10\ = CARRY(( (!\cont_unit_deneme|mux_alu_a_sel~combout\ & \datapath_deneme|Reg0|out\(1)) ) + ( (!\cont_unit_deneme|mux_alu_b_sel\(1) & ((!\datapath_deneme|Reg1|out\(1)))) # (\cont_unit_deneme|mux_alu_b_sel\(1) & 
-- (!\datapath_deneme|acc|out\(1))) ) + ( \datapath_deneme|alu|Add1~6\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000001011010111100000000000000000000000011001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \cont_unit_deneme|ALT_INV_mux_alu_b_sel\(1),
	datab => \cont_unit_deneme|ALT_INV_mux_alu_a_sel~combout\,
	datac => \datapath_deneme|acc|ALT_INV_out\(1),
	datad => \datapath_deneme|Reg0|ALT_INV_out\(1),
	dataf => \datapath_deneme|Reg1|ALT_INV_out\(1),
	cin => \datapath_deneme|alu|Add1~6\,
	sumout => \datapath_deneme|alu|Add1~9_sumout\,
	cout => \datapath_deneme|alu|Add1~10\);

-- Location: LABCELL_X83_Y38_N39
\datapath_deneme|alu|Add1~13\ : cyclonev_lcell_comb
-- Equation(s):
-- \datapath_deneme|alu|Add1~13_sumout\ = SUM(( (!\cont_unit_deneme|mux_alu_a_sel~combout\ & \datapath_deneme|Reg0|out\(2)) ) + ( (!\cont_unit_deneme|mux_alu_b_sel\(1) & ((!\datapath_deneme|Reg1|out\(2)))) # (\cont_unit_deneme|mux_alu_b_sel\(1) & 
-- (!\datapath_deneme|acc|out\(2))) ) + ( \datapath_deneme|alu|Add1~10\ ))
-- \datapath_deneme|alu|Add1~14\ = CARRY(( (!\cont_unit_deneme|mux_alu_a_sel~combout\ & \datapath_deneme|Reg0|out\(2)) ) + ( (!\cont_unit_deneme|mux_alu_b_sel\(1) & ((!\datapath_deneme|Reg1|out\(2)))) # (\cont_unit_deneme|mux_alu_b_sel\(1) & 
-- (!\datapath_deneme|acc|out\(2))) ) + ( \datapath_deneme|alu|Add1~10\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000001011010111100000000000000000000000011001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \cont_unit_deneme|ALT_INV_mux_alu_b_sel\(1),
	datab => \cont_unit_deneme|ALT_INV_mux_alu_a_sel~combout\,
	datac => \datapath_deneme|acc|ALT_INV_out\(2),
	datad => \datapath_deneme|Reg0|ALT_INV_out\(2),
	dataf => \datapath_deneme|Reg1|ALT_INV_out\(2),
	cin => \datapath_deneme|alu|Add1~10\,
	sumout => \datapath_deneme|alu|Add1~13_sumout\,
	cout => \datapath_deneme|alu|Add1~14\);

-- Location: LABCELL_X85_Y38_N54
\datapath_deneme|mux_alu_b|out[2]~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \datapath_deneme|mux_alu_b|out[2]~3_combout\ = ( \cont_unit_deneme|mux_alu_b_sel\(1) & ( \datapath_deneme|acc|out\(2) ) ) # ( !\cont_unit_deneme|mux_alu_b_sel\(1) & ( \datapath_deneme|Reg1|out\(2) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111000011110000111100000000111111110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \datapath_deneme|Reg1|ALT_INV_out\(2),
	datad => \datapath_deneme|acc|ALT_INV_out\(2),
	dataf => \cont_unit_deneme|ALT_INV_mux_alu_b_sel\(1),
	combout => \datapath_deneme|mux_alu_b|out[2]~3_combout\);

-- Location: MLABCELL_X84_Y38_N42
\datapath_deneme|alu|out[2]~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \datapath_deneme|alu|out[2]~4_combout\ = ( \datapath_deneme|mux_alu_b|out[2]~3_combout\ & ( \cont_unit_deneme|mux_alu_a_sel~combout\ & ( (!\cont_unit_deneme|alu_op\(2) & ((\cont_unit_deneme|alu_op\(1)) # (\datapath_deneme|alu|Add1~13_sumout\))) # 
-- (\cont_unit_deneme|alu_op\(2) & ((!\cont_unit_deneme|alu_op\(1)))) ) ) ) # ( !\datapath_deneme|mux_alu_b|out[2]~3_combout\ & ( \cont_unit_deneme|mux_alu_a_sel~combout\ & ( (!\cont_unit_deneme|alu_op\(2) & (\datapath_deneme|alu|Add1~13_sumout\ & 
-- !\cont_unit_deneme|alu_op\(1))) # (\cont_unit_deneme|alu_op\(2) & ((\cont_unit_deneme|alu_op\(1)))) ) ) ) # ( \datapath_deneme|mux_alu_b|out[2]~3_combout\ & ( !\cont_unit_deneme|mux_alu_a_sel~combout\ & ( (!\cont_unit_deneme|alu_op\(1) & 
-- (((\cont_unit_deneme|alu_op\(2)) # (\datapath_deneme|alu|Add1~13_sumout\)))) # (\cont_unit_deneme|alu_op\(1) & (!\datapath_deneme|Reg0|out\(2) $ (((\cont_unit_deneme|alu_op\(2)))))) ) ) ) # ( !\datapath_deneme|mux_alu_b|out[2]~3_combout\ & ( 
-- !\cont_unit_deneme|mux_alu_a_sel~combout\ & ( (!\cont_unit_deneme|alu_op\(2) & (((\datapath_deneme|alu|Add1~13_sumout\ & !\cont_unit_deneme|alu_op\(1))))) # (\cont_unit_deneme|alu_op\(2) & (!\datapath_deneme|Reg0|out\(2) $ 
-- (((!\cont_unit_deneme|alu_op\(1)))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011010100001010001111111010010100110000000011110011111111110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \datapath_deneme|Reg0|ALT_INV_out\(2),
	datab => \datapath_deneme|alu|ALT_INV_Add1~13_sumout\,
	datac => \cont_unit_deneme|ALT_INV_alu_op\(2),
	datad => \cont_unit_deneme|ALT_INV_alu_op\(1),
	datae => \datapath_deneme|mux_alu_b|ALT_INV_out[2]~3_combout\,
	dataf => \cont_unit_deneme|ALT_INV_mux_alu_a_sel~combout\,
	combout => \datapath_deneme|alu|out[2]~4_combout\);

-- Location: LABCELL_X83_Y37_N30
\cont_unit_deneme|acc_PS~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \cont_unit_deneme|acc_PS~0_combout\ = ( \datapath_deneme|Q|out\(0) & ( (\cont_unit_deneme|state.00~q\ & ((!\cont_unit_deneme|state.01~q\ & ((\cont_unit_deneme|state.10~q\))) # (\cont_unit_deneme|state.01~q\ & (!\datapath_deneme|qn1|out\(0))))) ) ) # ( 
-- !\datapath_deneme|Q|out\(0) & ( (\cont_unit_deneme|state.00~q\ & ((!\cont_unit_deneme|state.01~q\ & ((\cont_unit_deneme|state.10~q\))) # (\cont_unit_deneme|state.01~q\ & (\datapath_deneme|qn1|out\(0))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000100110001000000010011000100000010001100100000001000110010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \datapath_deneme|qn1|ALT_INV_out\(0),
	datab => \cont_unit_deneme|ALT_INV_state.00~q\,
	datac => \cont_unit_deneme|ALT_INV_state.01~q\,
	datad => \cont_unit_deneme|ALT_INV_state.10~q\,
	dataf => \datapath_deneme|Q|ALT_INV_out\(0),
	combout => \cont_unit_deneme|acc_PS~0_combout\);

-- Location: LABCELL_X83_Y37_N45
\cont_unit_deneme|acc_PS\ : cyclonev_lcell_comb
-- Equation(s):
-- \cont_unit_deneme|acc_PS~combout\ = (!\cont_unit_deneme|acc_PS~0_combout\ & (\cont_unit_deneme|acc_PS~combout\)) # (\cont_unit_deneme|acc_PS~0_combout\ & ((\cont_unit_deneme|state.01~q\)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000110000111111000011000011111100001100001111110000110000111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \cont_unit_deneme|ALT_INV_acc_PS~0_combout\,
	datac => \cont_unit_deneme|ALT_INV_acc_PS~combout\,
	datad => \cont_unit_deneme|ALT_INV_state.01~q\,
	combout => \cont_unit_deneme|acc_PS~combout\);

-- Location: MLABCELL_X84_Y37_N36
\cont_unit_deneme|acc_en~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \cont_unit_deneme|acc_en~1_combout\ = ( \cont_unit_deneme|state.10~q\ & ( \cont_unit_deneme|state.00~q\ ) ) # ( !\cont_unit_deneme|state.10~q\ & ( (\cont_unit_deneme|state.00~q\ & \cont_unit_deneme|state.01~q\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000110011000000000011001100110011001100110011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \cont_unit_deneme|ALT_INV_state.00~q\,
	datad => \cont_unit_deneme|ALT_INV_state.01~q\,
	dataf => \cont_unit_deneme|ALT_INV_state.10~q\,
	combout => \cont_unit_deneme|acc_en~1_combout\);

-- Location: LABCELL_X83_Y37_N15
\cont_unit_deneme|acc_en~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \cont_unit_deneme|acc_en~0_combout\ = ( \cont_unit_deneme|state.01~q\ & ( \datapath_deneme|qn1|out\(0) & ( !\datapath_deneme|Q|out\(0) ) ) ) # ( !\cont_unit_deneme|state.01~q\ & ( \datapath_deneme|qn1|out\(0) ) ) # ( \cont_unit_deneme|state.01~q\ & ( 
-- !\datapath_deneme|qn1|out\(0) & ( \datapath_deneme|Q|out\(0) ) ) ) # ( !\cont_unit_deneme|state.01~q\ & ( !\datapath_deneme|qn1|out\(0) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111111111000011110000111111111111111111111111000011110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \datapath_deneme|Q|ALT_INV_out\(0),
	datae => \cont_unit_deneme|ALT_INV_state.01~q\,
	dataf => \datapath_deneme|qn1|ALT_INV_out\(0),
	combout => \cont_unit_deneme|acc_en~0_combout\);

-- Location: LABCELL_X83_Y37_N9
\cont_unit_deneme|acc_en\ : cyclonev_lcell_comb
-- Equation(s):
-- \cont_unit_deneme|acc_en~combout\ = ( \cont_unit_deneme|acc_en~0_combout\ & ( (\cont_unit_deneme|acc_en~combout\) # (\cont_unit_deneme|acc_en~1_combout\) ) ) # ( !\cont_unit_deneme|acc_en~0_combout\ & ( (!\cont_unit_deneme|acc_en~1_combout\ & 
-- \cont_unit_deneme|acc_en~combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000110000001100000011000000110000111111001111110011111100111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \cont_unit_deneme|ALT_INV_acc_en~1_combout\,
	datac => \cont_unit_deneme|ALT_INV_acc_en~combout\,
	dataf => \cont_unit_deneme|ALT_INV_acc_en~0_combout\,
	combout => \cont_unit_deneme|acc_en~combout\);

-- Location: LABCELL_X83_Y38_N3
\datapath_deneme|Q|out~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \datapath_deneme|Q|out~3_combout\ = ( \datapath_deneme|acc|out\(0) & ( (!\cont_unit_deneme|Q_PS~combout\) # ((!\cont_unit_deneme|alu_op\(0) & (\datapath_deneme|alu|out[3]~7_combout\)) # (\cont_unit_deneme|alu_op\(0) & 
-- ((\datapath_deneme|alu|out[3]~6_combout\)))) ) ) # ( !\datapath_deneme|acc|out\(0) & ( (\cont_unit_deneme|Q_PS~combout\ & ((!\cont_unit_deneme|alu_op\(0) & (\datapath_deneme|alu|out[3]~7_combout\)) # (\cont_unit_deneme|alu_op\(0) & 
-- ((\datapath_deneme|alu|out[3]~6_combout\))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010000010101000001000001010110101110101111111010111010111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \cont_unit_deneme|ALT_INV_Q_PS~combout\,
	datab => \cont_unit_deneme|ALT_INV_alu_op\(0),
	datac => \datapath_deneme|alu|ALT_INV_out[3]~7_combout\,
	datad => \datapath_deneme|alu|ALT_INV_out[3]~6_combout\,
	dataf => \datapath_deneme|acc|ALT_INV_out\(0),
	combout => \datapath_deneme|Q|out~3_combout\);

-- Location: MLABCELL_X84_Y37_N57
\cont_unit_deneme|Q_en~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \cont_unit_deneme|Q_en~0_combout\ = ( \cont_unit_deneme|state.10~q\ & ( ((\cont_unit_deneme|alu_op[2]~2_combout\ & \cont_unit_deneme|Equal1~0_combout\)) # (\cont_unit_deneme|state.00~q\) ) ) # ( !\cont_unit_deneme|state.10~q\ & ( 
-- (!\cont_unit_deneme|state.00~q\ & (\cont_unit_deneme|alu_op[2]~2_combout\ & (\cont_unit_deneme|Equal1~0_combout\))) # (\cont_unit_deneme|state.00~q\ & (((\cont_unit_deneme|state.01~q\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010000110111000001000011011100110111001101110011011100110111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \cont_unit_deneme|ALT_INV_alu_op[2]~2_combout\,
	datab => \cont_unit_deneme|ALT_INV_state.00~q\,
	datac => \cont_unit_deneme|ALT_INV_Equal1~0_combout\,
	datad => \cont_unit_deneme|ALT_INV_state.01~q\,
	dataf => \cont_unit_deneme|ALT_INV_state.10~q\,
	combout => \cont_unit_deneme|Q_en~0_combout\);

-- Location: MLABCELL_X84_Y37_N0
\cont_unit_deneme|Q_en\ : cyclonev_lcell_comb
-- Equation(s):
-- \cont_unit_deneme|Q_en~combout\ = ( \cont_unit_deneme|state.01~q\ & ( (!\cont_unit_deneme|Q_en~0_combout\ & \cont_unit_deneme|Q_en~combout\) ) ) # ( !\cont_unit_deneme|state.01~q\ & ( (\cont_unit_deneme|Q_en~combout\) # (\cont_unit_deneme|Q_en~0_combout\) 
-- ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010111111111010101011111111100000000101010100000000010101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \cont_unit_deneme|ALT_INV_Q_en~0_combout\,
	datad => \cont_unit_deneme|ALT_INV_Q_en~combout\,
	dataf => \cont_unit_deneme|ALT_INV_state.01~q\,
	combout => \cont_unit_deneme|Q_en~combout\);

-- Location: FF_X83_Y38_N5
\datapath_deneme|Q|out[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	d => \datapath_deneme|Q|out~3_combout\,
	ena => \cont_unit_deneme|Q_en~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \datapath_deneme|Q|out\(3));

-- Location: IOIBUF_X84_Y81_N35
\DATA_IN[3]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_DATA_IN(3),
	o => \DATA_IN[3]~input_o\);

-- Location: LABCELL_X85_Y38_N57
\datapath_deneme|Reg0|out~8\ : cyclonev_lcell_comb
-- Equation(s):
-- \datapath_deneme|Reg0|out~8_combout\ = ( \cont_unit_deneme|mux_R0_sel\(0) & ( (!\cont_unit_deneme|RST~combout\ & (!\cont_unit_deneme|mux_R0_sel\(1) & \DATA_IN[3]~input_o\)) ) ) # ( !\cont_unit_deneme|mux_R0_sel\(0) & ( (\datapath_deneme|Q|out\(3) & 
-- (!\cont_unit_deneme|RST~combout\ & \cont_unit_deneme|mux_R0_sel\(1))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010000000100000001000000010000000000110000000000000011000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \datapath_deneme|Q|ALT_INV_out\(3),
	datab => \cont_unit_deneme|ALT_INV_RST~combout\,
	datac => \cont_unit_deneme|ALT_INV_mux_R0_sel\(1),
	datad => \ALT_INV_DATA_IN[3]~input_o\,
	dataf => \cont_unit_deneme|ALT_INV_mux_R0_sel\(0),
	combout => \datapath_deneme|Reg0|out~8_combout\);

-- Location: MLABCELL_X84_Y38_N15
\datapath_deneme|Reg0|out~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \datapath_deneme|Reg0|out~9_combout\ = ( \datapath_deneme|Reg0|out~0_combout\ & ( ((!\cont_unit_deneme|alu_op\(0) & ((\datapath_deneme|alu|out[3]~7_combout\))) # (\cont_unit_deneme|alu_op\(0) & (\datapath_deneme|alu|out[3]~6_combout\))) # 
-- (\datapath_deneme|Reg0|out~8_combout\) ) ) # ( !\datapath_deneme|Reg0|out~0_combout\ & ( \datapath_deneme|Reg0|out~8_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011111111000000001111111100110101111111110011010111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \datapath_deneme|alu|ALT_INV_out[3]~6_combout\,
	datab => \datapath_deneme|alu|ALT_INV_out[3]~7_combout\,
	datac => \cont_unit_deneme|ALT_INV_alu_op\(0),
	datad => \datapath_deneme|Reg0|ALT_INV_out~8_combout\,
	dataf => \datapath_deneme|Reg0|ALT_INV_out~0_combout\,
	combout => \datapath_deneme|Reg0|out~9_combout\);

-- Location: FF_X84_Y38_N17
\datapath_deneme|Reg0|out[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	d => \datapath_deneme|Reg0|out~9_combout\,
	ena => \datapath_deneme|Reg0|out[1]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \datapath_deneme|Reg0|out\(3));

-- Location: MLABCELL_X84_Y38_N0
\datapath_deneme|alu|Add0~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \datapath_deneme|alu|Add0~5_sumout\ = SUM(( (!\cont_unit_deneme|mux_alu_b_sel\(1) & ((\datapath_deneme|Reg1|out\(0)))) # (\cont_unit_deneme|mux_alu_b_sel\(1) & (\datapath_deneme|acc|out\(0))) ) + ( (!\cont_unit_deneme|mux_alu_a_sel~combout\ & 
-- \datapath_deneme|Reg0|out\(0)) ) + ( !VCC ))
-- \datapath_deneme|alu|Add0~6\ = CARRY(( (!\cont_unit_deneme|mux_alu_b_sel\(1) & ((\datapath_deneme|Reg1|out\(0)))) # (\cont_unit_deneme|mux_alu_b_sel\(1) & (\datapath_deneme|acc|out\(0))) ) + ( (!\cont_unit_deneme|mux_alu_a_sel~combout\ & 
-- \datapath_deneme|Reg0|out\(0)) ) + ( !VCC ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110101010100000000000000000000001111001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \cont_unit_deneme|ALT_INV_mux_alu_a_sel~combout\,
	datab => \cont_unit_deneme|ALT_INV_mux_alu_b_sel\(1),
	datac => \datapath_deneme|acc|ALT_INV_out\(0),
	datad => \datapath_deneme|Reg1|ALT_INV_out\(0),
	dataf => \datapath_deneme|Reg0|ALT_INV_out\(0),
	cin => GND,
	sumout => \datapath_deneme|alu|Add0~5_sumout\,
	cout => \datapath_deneme|alu|Add0~6\);

-- Location: MLABCELL_X84_Y38_N3
\datapath_deneme|alu|Add0~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \datapath_deneme|alu|Add0~9_sumout\ = SUM(( (!\cont_unit_deneme|mux_alu_b_sel\(1) & ((\datapath_deneme|Reg1|out\(1)))) # (\cont_unit_deneme|mux_alu_b_sel\(1) & (\datapath_deneme|acc|out\(1))) ) + ( (!\cont_unit_deneme|mux_alu_a_sel~combout\ & 
-- \datapath_deneme|Reg0|out\(1)) ) + ( \datapath_deneme|alu|Add0~6\ ))
-- \datapath_deneme|alu|Add0~10\ = CARRY(( (!\cont_unit_deneme|mux_alu_b_sel\(1) & ((\datapath_deneme|Reg1|out\(1)))) # (\cont_unit_deneme|mux_alu_b_sel\(1) & (\datapath_deneme|acc|out\(1))) ) + ( (!\cont_unit_deneme|mux_alu_a_sel~combout\ & 
-- \datapath_deneme|Reg0|out\(1)) ) + ( \datapath_deneme|alu|Add0~6\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110101010100000000000000000000001111001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \cont_unit_deneme|ALT_INV_mux_alu_a_sel~combout\,
	datab => \cont_unit_deneme|ALT_INV_mux_alu_b_sel\(1),
	datac => \datapath_deneme|acc|ALT_INV_out\(1),
	datad => \datapath_deneme|Reg1|ALT_INV_out\(1),
	dataf => \datapath_deneme|Reg0|ALT_INV_out\(1),
	cin => \datapath_deneme|alu|Add0~6\,
	sumout => \datapath_deneme|alu|Add0~9_sumout\,
	cout => \datapath_deneme|alu|Add0~10\);

-- Location: MLABCELL_X84_Y38_N6
\datapath_deneme|alu|Add0~13\ : cyclonev_lcell_comb
-- Equation(s):
-- \datapath_deneme|alu|Add0~13_sumout\ = SUM(( (!\cont_unit_deneme|mux_alu_b_sel\(1) & ((\datapath_deneme|Reg1|out\(2)))) # (\cont_unit_deneme|mux_alu_b_sel\(1) & (\datapath_deneme|acc|out\(2))) ) + ( (!\cont_unit_deneme|mux_alu_a_sel~combout\ & 
-- \datapath_deneme|Reg0|out\(2)) ) + ( \datapath_deneme|alu|Add0~10\ ))
-- \datapath_deneme|alu|Add0~14\ = CARRY(( (!\cont_unit_deneme|mux_alu_b_sel\(1) & ((\datapath_deneme|Reg1|out\(2)))) # (\cont_unit_deneme|mux_alu_b_sel\(1) & (\datapath_deneme|acc|out\(2))) ) + ( (!\cont_unit_deneme|mux_alu_a_sel~combout\ & 
-- \datapath_deneme|Reg0|out\(2)) ) + ( \datapath_deneme|alu|Add0~10\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110101010100000000000000000000001111001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \cont_unit_deneme|ALT_INV_mux_alu_a_sel~combout\,
	datab => \cont_unit_deneme|ALT_INV_mux_alu_b_sel\(1),
	datac => \datapath_deneme|acc|ALT_INV_out\(2),
	datad => \datapath_deneme|Reg1|ALT_INV_out\(2),
	dataf => \datapath_deneme|Reg0|ALT_INV_out\(2),
	cin => \datapath_deneme|alu|Add0~10\,
	sumout => \datapath_deneme|alu|Add0~13_sumout\,
	cout => \datapath_deneme|alu|Add0~14\);

-- Location: MLABCELL_X84_Y38_N9
\datapath_deneme|alu|Add0~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \datapath_deneme|alu|Add0~1_sumout\ = SUM(( (!\cont_unit_deneme|mux_alu_b_sel\(1) & ((\datapath_deneme|Reg1|out\(3)))) # (\cont_unit_deneme|mux_alu_b_sel\(1) & (\datapath_deneme|acc|out\(3))) ) + ( (!\cont_unit_deneme|mux_alu_a_sel~combout\ & 
-- \datapath_deneme|Reg0|out\(3)) ) + ( \datapath_deneme|alu|Add0~14\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110101010100000000000000000000001111001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \cont_unit_deneme|ALT_INV_mux_alu_a_sel~combout\,
	datab => \cont_unit_deneme|ALT_INV_mux_alu_b_sel\(1),
	datac => \datapath_deneme|acc|ALT_INV_out\(3),
	datad => \datapath_deneme|Reg1|ALT_INV_out\(3),
	dataf => \datapath_deneme|Reg0|ALT_INV_out\(3),
	cin => \datapath_deneme|alu|Add0~14\,
	sumout => \datapath_deneme|alu|Add0~1_sumout\);

-- Location: MLABCELL_X84_Y38_N33
\datapath_deneme|alu|Add3~13\ : cyclonev_lcell_comb
-- Equation(s):
-- \datapath_deneme|alu|Add3~13_sumout\ = SUM(( (!\cont_unit_deneme|mux_alu_b_sel\(1) & ((\datapath_deneme|Reg1|out\(2)))) # (\cont_unit_deneme|mux_alu_b_sel\(1) & (\datapath_deneme|acc|out\(2))) ) + ( (!\datapath_deneme|Reg0|out\(2)) # 
-- (\cont_unit_deneme|mux_alu_a_sel~combout\) ) + ( \datapath_deneme|alu|Add3~10\ ))
-- \datapath_deneme|alu|Add3~14\ = CARRY(( (!\cont_unit_deneme|mux_alu_b_sel\(1) & ((\datapath_deneme|Reg1|out\(2)))) # (\cont_unit_deneme|mux_alu_b_sel\(1) & (\datapath_deneme|acc|out\(2))) ) + ( (!\datapath_deneme|Reg0|out\(2)) # 
-- (\cont_unit_deneme|mux_alu_a_sel~combout\) ) + ( \datapath_deneme|alu|Add3~10\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000001010101000000000000000000000001111001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \cont_unit_deneme|ALT_INV_mux_alu_a_sel~combout\,
	datab => \cont_unit_deneme|ALT_INV_mux_alu_b_sel\(1),
	datac => \datapath_deneme|acc|ALT_INV_out\(2),
	datad => \datapath_deneme|Reg1|ALT_INV_out\(2),
	dataf => \datapath_deneme|Reg0|ALT_INV_out\(2),
	cin => \datapath_deneme|alu|Add3~10\,
	sumout => \datapath_deneme|alu|Add3~13_sumout\,
	cout => \datapath_deneme|alu|Add3~14\);

-- Location: MLABCELL_X84_Y38_N36
\datapath_deneme|alu|Add3~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \datapath_deneme|alu|Add3~1_sumout\ = SUM(( (!\cont_unit_deneme|mux_alu_b_sel\(1) & ((\datapath_deneme|Reg1|out\(3)))) # (\cont_unit_deneme|mux_alu_b_sel\(1) & (\datapath_deneme|acc|out\(3))) ) + ( (!\datapath_deneme|Reg0|out\(3)) # 
-- (\cont_unit_deneme|mux_alu_a_sel~combout\) ) + ( \datapath_deneme|alu|Add3~14\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000001111000000000000000000000001000111011101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \datapath_deneme|acc|ALT_INV_out\(3),
	datab => \cont_unit_deneme|ALT_INV_mux_alu_b_sel\(1),
	datac => \cont_unit_deneme|ALT_INV_mux_alu_a_sel~combout\,
	datad => \datapath_deneme|Reg1|ALT_INV_out\(3),
	dataf => \datapath_deneme|Reg0|ALT_INV_out\(3),
	cin => \datapath_deneme|alu|Add3~14\,
	sumout => \datapath_deneme|alu|Add3~1_sumout\);

-- Location: LABCELL_X85_Y38_N21
\datapath_deneme|mux_alu_a|out[3]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \datapath_deneme|mux_alu_a|out[3]~0_combout\ = ( \datapath_deneme|Reg0|out\(3) & ( !\cont_unit_deneme|mux_alu_a_sel~combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datae => \datapath_deneme|Reg0|ALT_INV_out\(3),
	dataf => \cont_unit_deneme|ALT_INV_mux_alu_a_sel~combout\,
	combout => \datapath_deneme|mux_alu_a|out[3]~0_combout\);

-- Location: MLABCELL_X84_Y38_N48
\datapath_deneme|alu|out[3]~7\ : cyclonev_lcell_comb
-- Equation(s):
-- \datapath_deneme|alu|out[3]~7_combout\ = ( \cont_unit_deneme|alu_op\(2) & ( \datapath_deneme|mux_alu_a|out[3]~0_combout\ & ( !\datapath_deneme|mux_alu_b|out[3]~0_combout\ $ (!\cont_unit_deneme|alu_op\(1)) ) ) ) # ( !\cont_unit_deneme|alu_op\(2) & ( 
-- \datapath_deneme|mux_alu_a|out[3]~0_combout\ & ( (!\cont_unit_deneme|alu_op\(1) & (\datapath_deneme|alu|Add0~1_sumout\)) # (\cont_unit_deneme|alu_op\(1) & ((\datapath_deneme|alu|Add3~1_sumout\))) ) ) ) # ( \cont_unit_deneme|alu_op\(2) & ( 
-- !\datapath_deneme|mux_alu_a|out[3]~0_combout\ & ( (\datapath_deneme|mux_alu_b|out[3]~0_combout\ & \cont_unit_deneme|alu_op\(1)) ) ) ) # ( !\cont_unit_deneme|alu_op\(2) & ( !\datapath_deneme|mux_alu_a|out[3]~0_combout\ & ( (!\cont_unit_deneme|alu_op\(1) & 
-- (\datapath_deneme|alu|Add0~1_sumout\)) # (\cont_unit_deneme|alu_op\(1) & ((\datapath_deneme|alu|Add3~1_sumout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010100110011000000000000111101010101001100110000111111110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \datapath_deneme|alu|ALT_INV_Add0~1_sumout\,
	datab => \datapath_deneme|alu|ALT_INV_Add3~1_sumout\,
	datac => \datapath_deneme|mux_alu_b|ALT_INV_out[3]~0_combout\,
	datad => \cont_unit_deneme|ALT_INV_alu_op\(1),
	datae => \cont_unit_deneme|ALT_INV_alu_op\(2),
	dataf => \datapath_deneme|mux_alu_a|ALT_INV_out[3]~0_combout\,
	combout => \datapath_deneme|alu|out[3]~7_combout\);

-- Location: MLABCELL_X82_Y38_N12
\datapath_deneme|Reg1|out~7\ : cyclonev_lcell_comb
-- Equation(s):
-- \datapath_deneme|Reg1|out~7_combout\ = ( \datapath_deneme|Reg0|out\(3) & ( (!\cont_unit_deneme|RST~combout\ & (!\cont_unit_deneme|mux_R1_sel\(1) & ((!\cont_unit_deneme|mux_R1_sel\(0)) # (\datapath_deneme|acc|out\(3))))) ) ) # ( 
-- !\datapath_deneme|Reg0|out\(3) & ( (!\cont_unit_deneme|RST~combout\ & (\datapath_deneme|acc|out\(3) & (\cont_unit_deneme|mux_R1_sel\(0) & !\cont_unit_deneme|mux_R1_sel\(1)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001000000000000000100000000010100010000000001010001000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \cont_unit_deneme|ALT_INV_RST~combout\,
	datab => \datapath_deneme|acc|ALT_INV_out\(3),
	datac => \cont_unit_deneme|ALT_INV_mux_R1_sel\(0),
	datad => \cont_unit_deneme|ALT_INV_mux_R1_sel\(1),
	dataf => \datapath_deneme|Reg0|ALT_INV_out\(3),
	combout => \datapath_deneme|Reg1|out~7_combout\);

-- Location: MLABCELL_X82_Y38_N18
\datapath_deneme|Reg1|out~8\ : cyclonev_lcell_comb
-- Equation(s):
-- \datapath_deneme|Reg1|out~8_combout\ = ( \datapath_deneme|alu|out[3]~6_combout\ & ( ((\datapath_deneme|Reg1|out~0_combout\ & ((\cont_unit_deneme|alu_op\(0)) # (\datapath_deneme|alu|out[3]~7_combout\)))) # (\datapath_deneme|Reg1|out~7_combout\) ) ) # ( 
-- !\datapath_deneme|alu|out[3]~6_combout\ & ( ((\datapath_deneme|alu|out[3]~7_combout\ & (\datapath_deneme|Reg1|out~0_combout\ & !\cont_unit_deneme|alu_op\(0)))) # (\datapath_deneme|Reg1|out~7_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001111100001111000111110000111100011111001111110001111100111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \datapath_deneme|alu|ALT_INV_out[3]~7_combout\,
	datab => \datapath_deneme|Reg1|ALT_INV_out~0_combout\,
	datac => \datapath_deneme|Reg1|ALT_INV_out~7_combout\,
	datad => \cont_unit_deneme|ALT_INV_alu_op\(0),
	dataf => \datapath_deneme|alu|ALT_INV_out[3]~6_combout\,
	combout => \datapath_deneme|Reg1|out~8_combout\);

-- Location: FF_X82_Y38_N20
\datapath_deneme|Reg1|out[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	d => \datapath_deneme|Reg1|out~8_combout\,
	ena => \datapath_deneme|Reg0|out[1]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \datapath_deneme|Reg1|out\(3));

-- Location: MLABCELL_X82_Y38_N21
\datapath_deneme|mux_alu_b|out[3]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \datapath_deneme|mux_alu_b|out[3]~0_combout\ = ( \cont_unit_deneme|mux_alu_b_sel\(1) & ( \datapath_deneme|acc|out\(3) ) ) # ( !\cont_unit_deneme|mux_alu_b_sel\(1) & ( \datapath_deneme|Reg1|out\(3) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111000011110000111100000000111111110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \datapath_deneme|Reg1|ALT_INV_out\(3),
	datad => \datapath_deneme|acc|ALT_INV_out\(3),
	dataf => \cont_unit_deneme|ALT_INV_mux_alu_b_sel\(1),
	combout => \datapath_deneme|mux_alu_b|out[3]~0_combout\);

-- Location: LABCELL_X83_Y38_N42
\datapath_deneme|alu|Add1~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \datapath_deneme|alu|Add1~1_sumout\ = SUM(( (!\cont_unit_deneme|mux_alu_b_sel\(1) & ((!\datapath_deneme|Reg1|out\(3)))) # (\cont_unit_deneme|mux_alu_b_sel\(1) & (!\datapath_deneme|acc|out\(3))) ) + ( (!\cont_unit_deneme|mux_alu_a_sel~combout\ & 
-- \datapath_deneme|Reg0|out\(3)) ) + ( \datapath_deneme|alu|Add1~14\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110011001100000000000000001111101001010000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \cont_unit_deneme|ALT_INV_mux_alu_b_sel\(1),
	datab => \cont_unit_deneme|ALT_INV_mux_alu_a_sel~combout\,
	datac => \datapath_deneme|acc|ALT_INV_out\(3),
	datad => \datapath_deneme|Reg1|ALT_INV_out\(3),
	dataf => \datapath_deneme|Reg0|ALT_INV_out\(3),
	cin => \datapath_deneme|alu|Add1~14\,
	sumout => \datapath_deneme|alu|Add1~1_sumout\);

-- Location: LABCELL_X83_Y38_N48
\datapath_deneme|alu|out[3]~6\ : cyclonev_lcell_comb
-- Equation(s):
-- \datapath_deneme|alu|out[3]~6_combout\ = ( \datapath_deneme|alu|Add1~1_sumout\ & ( \cont_unit_deneme|alu_op\(1) & ( (!\datapath_deneme|mux_alu_b|out[3]~0_combout\ & (\cont_unit_deneme|alu_op\(2) & ((!\datapath_deneme|Reg0|out\(3)) # 
-- (\cont_unit_deneme|mux_alu_a_sel~combout\)))) # (\datapath_deneme|mux_alu_b|out[3]~0_combout\ & (!\cont_unit_deneme|alu_op\(2) $ (((!\cont_unit_deneme|mux_alu_a_sel~combout\ & \datapath_deneme|Reg0|out\(3)))))) ) ) ) # ( 
-- !\datapath_deneme|alu|Add1~1_sumout\ & ( \cont_unit_deneme|alu_op\(1) & ( (!\datapath_deneme|mux_alu_b|out[3]~0_combout\ & (\cont_unit_deneme|alu_op\(2) & ((!\datapath_deneme|Reg0|out\(3)) # (\cont_unit_deneme|mux_alu_a_sel~combout\)))) # 
-- (\datapath_deneme|mux_alu_b|out[3]~0_combout\ & (!\cont_unit_deneme|alu_op\(2) $ (((!\cont_unit_deneme|mux_alu_a_sel~combout\ & \datapath_deneme|Reg0|out\(3)))))) ) ) ) # ( \datapath_deneme|alu|Add1~1_sumout\ & ( !\cont_unit_deneme|alu_op\(1) & ( 
-- ((!\cont_unit_deneme|alu_op\(2)) # ((!\cont_unit_deneme|mux_alu_a_sel~combout\ & \datapath_deneme|Reg0|out\(3)))) # (\datapath_deneme|mux_alu_b|out[3]~0_combout\) ) ) ) # ( !\datapath_deneme|alu|Add1~1_sumout\ & ( !\cont_unit_deneme|alu_op\(1) & ( 
-- (\cont_unit_deneme|alu_op\(2) & (((!\cont_unit_deneme|mux_alu_a_sel~combout\ & \datapath_deneme|Reg0|out\(3))) # (\datapath_deneme|mux_alu_b|out[3]~0_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001100001011111100111111101100111100000101100011110000010110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \cont_unit_deneme|ALT_INV_mux_alu_a_sel~combout\,
	datab => \datapath_deneme|mux_alu_b|ALT_INV_out[3]~0_combout\,
	datac => \cont_unit_deneme|ALT_INV_alu_op\(2),
	datad => \datapath_deneme|Reg0|ALT_INV_out\(3),
	datae => \datapath_deneme|alu|ALT_INV_Add1~1_sumout\,
	dataf => \cont_unit_deneme|ALT_INV_alu_op\(1),
	combout => \datapath_deneme|alu|out[3]~6_combout\);

-- Location: LABCELL_X83_Y38_N27
\datapath_deneme|acc|out~10\ : cyclonev_lcell_comb
-- Equation(s):
-- \datapath_deneme|acc|out~10_combout\ = ( !\cont_unit_deneme|alu_op\(0) & ( (!\cont_unit_deneme|acc_reset~combout\ & ((!\cont_unit_deneme|acc_PS~combout\ & (((\datapath_deneme|acc|out\(3))))) # (\cont_unit_deneme|acc_PS~combout\ & 
-- ((!\cont_unit_deneme|acc_en~combout\ & ((\datapath_deneme|acc|out\(3)))) # (\cont_unit_deneme|acc_en~combout\ & (\datapath_deneme|alu|out[3]~7_combout\)))))) ) ) # ( \cont_unit_deneme|alu_op\(0) & ( (!\cont_unit_deneme|acc_reset~combout\ & 
-- ((!\cont_unit_deneme|acc_PS~combout\ & (((\datapath_deneme|acc|out\(3))))) # (\cont_unit_deneme|acc_PS~combout\ & ((!\cont_unit_deneme|acc_en~combout\ & ((\datapath_deneme|acc|out\(3)))) # (\cont_unit_deneme|acc_en~combout\ & 
-- (\datapath_deneme|alu|out[3]~6_combout\)))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "on",
	lut_mask => "0000000111101111000000011110111100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \cont_unit_deneme|ALT_INV_acc_PS~combout\,
	datab => \cont_unit_deneme|ALT_INV_acc_en~combout\,
	datac => \datapath_deneme|alu|ALT_INV_out[3]~6_combout\,
	datad => \datapath_deneme|acc|ALT_INV_out\(3),
	datae => \cont_unit_deneme|ALT_INV_alu_op\(0),
	dataf => \cont_unit_deneme|ALT_INV_acc_reset~combout\,
	datag => \datapath_deneme|alu|ALT_INV_out[3]~7_combout\,
	combout => \datapath_deneme|acc|out~10_combout\);

-- Location: FF_X83_Y38_N29
\datapath_deneme|acc|out[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	d => \datapath_deneme|acc|out~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \datapath_deneme|acc|out\(3));

-- Location: LABCELL_X85_Y38_N24
\datapath_deneme|acc|out~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \datapath_deneme|acc|out~2_combout\ = ( !\cont_unit_deneme|acc_PS~combout\ & ( (((\datapath_deneme|acc|out\(3) & ((!\cont_unit_deneme|acc_reset~combout\))))) ) ) # ( \cont_unit_deneme|acc_PS~combout\ & ( (!\cont_unit_deneme|acc_reset~combout\ & 
-- ((((\datapath_deneme|alu|out[2]~4_combout\ & \cont_unit_deneme|alu_op\(0))) # (\datapath_deneme|alu|out[2]~8_combout\)) # (\datapath_deneme|alu|out[2]~5_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "on",
	lut_mask => "0000111100001111001111110111111100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \datapath_deneme|alu|ALT_INV_out[2]~4_combout\,
	datab => \datapath_deneme|alu|ALT_INV_out[2]~5_combout\,
	datac => \datapath_deneme|alu|ALT_INV_out[2]~8_combout\,
	datad => \cont_unit_deneme|ALT_INV_alu_op\(0),
	datae => \cont_unit_deneme|ALT_INV_acc_PS~combout\,
	dataf => \cont_unit_deneme|ALT_INV_acc_reset~combout\,
	datag => \datapath_deneme|acc|ALT_INV_out\(3),
	combout => \datapath_deneme|acc|out~2_combout\);

-- Location: LABCELL_X85_Y38_N15
\datapath_deneme|acc|out[1]~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \datapath_deneme|acc|out[1]~1_combout\ = ( \cont_unit_deneme|acc_reset~combout\ ) # ( !\cont_unit_deneme|acc_reset~combout\ & ( \cont_unit_deneme|acc_en~combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111000011110000111111111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \cont_unit_deneme|ALT_INV_acc_en~combout\,
	dataf => \cont_unit_deneme|ALT_INV_acc_reset~combout\,
	combout => \datapath_deneme|acc|out[1]~1_combout\);

-- Location: FF_X85_Y38_N26
\datapath_deneme|acc|out[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	d => \datapath_deneme|acc|out~2_combout\,
	ena => \datapath_deneme|acc|out[1]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \datapath_deneme|acc|out\(2));

-- Location: MLABCELL_X84_Y38_N57
\datapath_deneme|alu|out[2]~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \datapath_deneme|alu|out[2]~5_combout\ = ( !\cont_unit_deneme|alu_op\(2) & ( (!\cont_unit_deneme|alu_op\(0) & (\datapath_deneme|alu|Add3~13_sumout\ & \cont_unit_deneme|alu_op\(1))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001000000010000000100000001000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \cont_unit_deneme|ALT_INV_alu_op\(0),
	datab => \datapath_deneme|alu|ALT_INV_Add3~13_sumout\,
	datac => \cont_unit_deneme|ALT_INV_alu_op\(1),
	dataf => \cont_unit_deneme|ALT_INV_alu_op\(2),
	combout => \datapath_deneme|alu|out[2]~5_combout\);

-- Location: IOIBUF_X84_Y81_N52
\DATA_IN[2]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_DATA_IN(2),
	o => \DATA_IN[2]~input_o\);

-- Location: LABCELL_X85_Y38_N30
\datapath_deneme|Reg0|out~6\ : cyclonev_lcell_comb
-- Equation(s):
-- \datapath_deneme|Reg0|out~6_combout\ = ( \cont_unit_deneme|mux_R0_sel\(0) & ( (!\cont_unit_deneme|RST~combout\ & (!\cont_unit_deneme|mux_R0_sel\(1) & \DATA_IN[2]~input_o\)) ) ) # ( !\cont_unit_deneme|mux_R0_sel\(0) & ( (!\cont_unit_deneme|RST~combout\ & 
-- (\cont_unit_deneme|mux_R0_sel\(1) & \datapath_deneme|Q|out\(2))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000100010000000000010001000001000000010000000100000001000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \cont_unit_deneme|ALT_INV_RST~combout\,
	datab => \cont_unit_deneme|ALT_INV_mux_R0_sel\(1),
	datac => \ALT_INV_DATA_IN[2]~input_o\,
	datad => \datapath_deneme|Q|ALT_INV_out\(2),
	dataf => \cont_unit_deneme|ALT_INV_mux_R0_sel\(0),
	combout => \datapath_deneme|Reg0|out~6_combout\);

-- Location: LABCELL_X85_Y38_N42
\datapath_deneme|Reg0|out~7\ : cyclonev_lcell_comb
-- Equation(s):
-- \datapath_deneme|Reg0|out~7_combout\ = ( \datapath_deneme|Reg0|out~6_combout\ & ( \datapath_deneme|Reg0|out~0_combout\ ) ) # ( !\datapath_deneme|Reg0|out~6_combout\ & ( \datapath_deneme|Reg0|out~0_combout\ & ( (((\cont_unit_deneme|alu_op\(0) & 
-- \datapath_deneme|alu|out[2]~4_combout\)) # (\datapath_deneme|alu|out[2]~5_combout\)) # (\datapath_deneme|alu|out[2]~8_combout\) ) ) ) # ( \datapath_deneme|Reg0|out~6_combout\ & ( !\datapath_deneme|Reg0|out~0_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111101110111011111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \datapath_deneme|alu|ALT_INV_out[2]~8_combout\,
	datab => \datapath_deneme|alu|ALT_INV_out[2]~5_combout\,
	datac => \cont_unit_deneme|ALT_INV_alu_op\(0),
	datad => \datapath_deneme|alu|ALT_INV_out[2]~4_combout\,
	datae => \datapath_deneme|Reg0|ALT_INV_out~6_combout\,
	dataf => \datapath_deneme|Reg0|ALT_INV_out~0_combout\,
	combout => \datapath_deneme|Reg0|out~7_combout\);

-- Location: FF_X85_Y38_N44
\datapath_deneme|Reg0|out[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	d => \datapath_deneme|Reg0|out~7_combout\,
	ena => \datapath_deneme|Reg0|out[1]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \datapath_deneme|Reg0|out\(2));

-- Location: LABCELL_X85_Y38_N0
\datapath_deneme|alu|out[2]~8\ : cyclonev_lcell_comb
-- Equation(s):
-- \datapath_deneme|alu|out[2]~8_combout\ = ( !\cont_unit_deneme|alu_op\(2) & ( (!\cont_unit_deneme|alu_op\(1) & (!\cont_unit_deneme|alu_op\(0) & (\datapath_deneme|alu|Add0~13_sumout\))) ) ) # ( \cont_unit_deneme|alu_op\(2) & ( (!\cont_unit_deneme|alu_op\(0) 
-- & ((!\cont_unit_deneme|alu_op\(1) & (!\cont_unit_deneme|mux_alu_a_sel~combout\ & (\datapath_deneme|Reg0|out\(2) & \datapath_deneme|mux_alu_b|out[2]~3_combout\))) # (\cont_unit_deneme|alu_op\(1) & (!\datapath_deneme|mux_alu_b|out[2]~3_combout\ $ 
-- (((!\datapath_deneme|Reg0|out\(2)) # (\cont_unit_deneme|mux_alu_a_sel~combout\))))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "on",
	lut_mask => "0000100000001000000000000100000000001000000010000100010010000100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \cont_unit_deneme|ALT_INV_alu_op\(1),
	datab => \cont_unit_deneme|ALT_INV_alu_op\(0),
	datac => \cont_unit_deneme|ALT_INV_mux_alu_a_sel~combout\,
	datad => \datapath_deneme|Reg0|ALT_INV_out\(2),
	datae => \cont_unit_deneme|ALT_INV_alu_op\(2),
	dataf => \datapath_deneme|mux_alu_b|ALT_INV_out[2]~3_combout\,
	datag => \datapath_deneme|alu|ALT_INV_Add0~13_sumout\,
	combout => \datapath_deneme|alu|out[2]~8_combout\);

-- Location: LABCELL_X85_Y38_N6
\datapath_deneme|Q|out~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \datapath_deneme|Q|out~2_combout\ = ( \cont_unit_deneme|alu_op\(0) & ( \datapath_deneme|alu|out[2]~4_combout\ & ( (\cont_unit_deneme|Q_PS~combout\) # (\datapath_deneme|Q|out\(3)) ) ) ) # ( !\cont_unit_deneme|alu_op\(0) & ( 
-- \datapath_deneme|alu|out[2]~4_combout\ & ( (!\cont_unit_deneme|Q_PS~combout\ & (((\datapath_deneme|Q|out\(3))))) # (\cont_unit_deneme|Q_PS~combout\ & (((\datapath_deneme|alu|out[2]~5_combout\)) # (\datapath_deneme|alu|out[2]~8_combout\))) ) ) ) # ( 
-- \cont_unit_deneme|alu_op\(0) & ( !\datapath_deneme|alu|out[2]~4_combout\ & ( (!\cont_unit_deneme|Q_PS~combout\ & (((\datapath_deneme|Q|out\(3))))) # (\cont_unit_deneme|Q_PS~combout\ & (((\datapath_deneme|alu|out[2]~5_combout\)) # 
-- (\datapath_deneme|alu|out[2]~8_combout\))) ) ) ) # ( !\cont_unit_deneme|alu_op\(0) & ( !\datapath_deneme|alu|out[2]~4_combout\ & ( (!\cont_unit_deneme|Q_PS~combout\ & (((\datapath_deneme|Q|out\(3))))) # (\cont_unit_deneme|Q_PS~combout\ & 
-- (((\datapath_deneme|alu|out[2]~5_combout\)) # (\datapath_deneme|alu|out[2]~8_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111101110111000011110111011100001111011101110000111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \datapath_deneme|alu|ALT_INV_out[2]~8_combout\,
	datab => \datapath_deneme|alu|ALT_INV_out[2]~5_combout\,
	datac => \datapath_deneme|Q|ALT_INV_out\(3),
	datad => \cont_unit_deneme|ALT_INV_Q_PS~combout\,
	datae => \cont_unit_deneme|ALT_INV_alu_op\(0),
	dataf => \datapath_deneme|alu|ALT_INV_out[2]~4_combout\,
	combout => \datapath_deneme|Q|out~2_combout\);

-- Location: FF_X85_Y38_N8
\datapath_deneme|Q|out[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	d => \datapath_deneme|Q|out~2_combout\,
	ena => \cont_unit_deneme|Q_en~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \datapath_deneme|Q|out\(2));

-- Location: MLABCELL_X82_Y38_N0
\datapath_deneme|Q|out~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \datapath_deneme|Q|out~1_combout\ = ( \datapath_deneme|alu|out[1]~2_combout\ & ( \datapath_deneme|alu|out[1]~3_combout\ & ( (\datapath_deneme|Q|out\(2)) # (\cont_unit_deneme|Q_PS~combout\) ) ) ) # ( !\datapath_deneme|alu|out[1]~2_combout\ & ( 
-- \datapath_deneme|alu|out[1]~3_combout\ & ( (\datapath_deneme|Q|out\(2)) # (\cont_unit_deneme|Q_PS~combout\) ) ) ) # ( \datapath_deneme|alu|out[1]~2_combout\ & ( !\datapath_deneme|alu|out[1]~3_combout\ & ( (!\cont_unit_deneme|Q_PS~combout\ & 
-- (((\datapath_deneme|Q|out\(2))))) # (\cont_unit_deneme|Q_PS~combout\ & (((\cont_unit_deneme|alu_op\(0))) # (\datapath_deneme|alu|out[1]~12_combout\))) ) ) ) # ( !\datapath_deneme|alu|out[1]~2_combout\ & ( !\datapath_deneme|alu|out[1]~3_combout\ & ( 
-- (!\cont_unit_deneme|Q_PS~combout\ & ((\datapath_deneme|Q|out\(2)))) # (\cont_unit_deneme|Q_PS~combout\ & (\datapath_deneme|alu|out[1]~12_combout\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010111110101000001111111011100001111111111110000111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \datapath_deneme|alu|ALT_INV_out[1]~12_combout\,
	datab => \cont_unit_deneme|ALT_INV_alu_op\(0),
	datac => \cont_unit_deneme|ALT_INV_Q_PS~combout\,
	datad => \datapath_deneme|Q|ALT_INV_out\(2),
	datae => \datapath_deneme|alu|ALT_INV_out[1]~2_combout\,
	dataf => \datapath_deneme|alu|ALT_INV_out[1]~3_combout\,
	combout => \datapath_deneme|Q|out~1_combout\);

-- Location: FF_X82_Y38_N2
\datapath_deneme|Q|out[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	d => \datapath_deneme|Q|out~1_combout\,
	ena => \cont_unit_deneme|Q_en~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \datapath_deneme|Q|out\(1));

-- Location: LABCELL_X85_Y38_N36
\datapath_deneme|Reg0|out~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \datapath_deneme|Reg0|out~4_combout\ = ( \cont_unit_deneme|mux_R0_sel\(0) & ( (\DATA_IN[1]~input_o\ & (!\cont_unit_deneme|mux_R0_sel\(1) & !\cont_unit_deneme|RST~combout\)) ) ) # ( !\cont_unit_deneme|mux_R0_sel\(0) & ( (\cont_unit_deneme|mux_R0_sel\(1) & 
-- (!\cont_unit_deneme|RST~combout\ & \datapath_deneme|Q|out\(1))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000110000000000000011000001000000010000000100000001000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_DATA_IN[1]~input_o\,
	datab => \cont_unit_deneme|ALT_INV_mux_R0_sel\(1),
	datac => \cont_unit_deneme|ALT_INV_RST~combout\,
	datad => \datapath_deneme|Q|ALT_INV_out\(1),
	dataf => \cont_unit_deneme|ALT_INV_mux_R0_sel\(0),
	combout => \datapath_deneme|Reg0|out~4_combout\);

-- Location: LABCELL_X83_Y38_N21
\datapath_deneme|Reg0|out~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \datapath_deneme|Reg0|out~5_combout\ = ( \datapath_deneme|Reg0|out~0_combout\ & ( \datapath_deneme|Reg0|out~4_combout\ ) ) # ( !\datapath_deneme|Reg0|out~0_combout\ & ( \datapath_deneme|Reg0|out~4_combout\ ) ) # ( \datapath_deneme|Reg0|out~0_combout\ & ( 
-- !\datapath_deneme|Reg0|out~4_combout\ & ( (((\datapath_deneme|alu|out[1]~2_combout\ & \cont_unit_deneme|alu_op\(0))) # (\datapath_deneme|alu|out[1]~3_combout\)) # (\datapath_deneme|alu|out[1]~12_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000001101111111111111111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \datapath_deneme|alu|ALT_INV_out[1]~2_combout\,
	datab => \datapath_deneme|alu|ALT_INV_out[1]~12_combout\,
	datac => \cont_unit_deneme|ALT_INV_alu_op\(0),
	datad => \datapath_deneme|alu|ALT_INV_out[1]~3_combout\,
	datae => \datapath_deneme|Reg0|ALT_INV_out~0_combout\,
	dataf => \datapath_deneme|Reg0|ALT_INV_out~4_combout\,
	combout => \datapath_deneme|Reg0|out~5_combout\);

-- Location: FF_X83_Y38_N23
\datapath_deneme|Reg0|out[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	d => \datapath_deneme|Reg0|out~5_combout\,
	ena => \datapath_deneme|Reg0|out[1]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \datapath_deneme|Reg0|out\(1));

-- Location: LABCELL_X83_Y38_N54
\datapath_deneme|alu|out[1]~12\ : cyclonev_lcell_comb
-- Equation(s):
-- \datapath_deneme|alu|out[1]~12_combout\ = ( !\cont_unit_deneme|alu_op\(2) & ( (((\datapath_deneme|alu|Add0~9_sumout\ & (!\cont_unit_deneme|alu_op\(0) & !\cont_unit_deneme|alu_op\(1))))) ) ) # ( \cont_unit_deneme|alu_op\(2) & ( 
-- (!\cont_unit_deneme|alu_op\(0) & ((!\datapath_deneme|mux_alu_b|out[1]~2_combout\ & (\datapath_deneme|Reg0|out\(1) & (!\cont_unit_deneme|mux_alu_a_sel~combout\ & \cont_unit_deneme|alu_op\(1)))) # (\datapath_deneme|mux_alu_b|out[1]~2_combout\ & 
-- (!\cont_unit_deneme|alu_op\(1) $ (((!\datapath_deneme|Reg0|out\(1)) # (\cont_unit_deneme|mux_alu_a_sel~combout\))))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "on",
	lut_mask => "0000111100000000000100000000000000000000000000000110001100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \datapath_deneme|Reg0|ALT_INV_out\(1),
	datab => \datapath_deneme|mux_alu_b|ALT_INV_out[1]~2_combout\,
	datac => \cont_unit_deneme|ALT_INV_mux_alu_a_sel~combout\,
	datad => \cont_unit_deneme|ALT_INV_alu_op\(0),
	datae => \cont_unit_deneme|ALT_INV_alu_op\(2),
	dataf => \cont_unit_deneme|ALT_INV_alu_op\(1),
	datag => \datapath_deneme|alu|ALT_INV_Add0~9_sumout\,
	combout => \datapath_deneme|alu|out[1]~12_combout\);

-- Location: MLABCELL_X82_Y38_N57
\datapath_deneme|Reg1|out~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \datapath_deneme|Reg1|out~3_combout\ = ( \datapath_deneme|acc|out\(1) & ( (!\cont_unit_deneme|RST~combout\ & (!\cont_unit_deneme|mux_R1_sel\(1) & ((\datapath_deneme|Reg0|out\(1)) # (\cont_unit_deneme|mux_R1_sel\(0))))) ) ) # ( 
-- !\datapath_deneme|acc|out\(1) & ( (!\cont_unit_deneme|RST~combout\ & (!\cont_unit_deneme|mux_R1_sel\(0) & (!\cont_unit_deneme|mux_R1_sel\(1) & \datapath_deneme|Reg0|out\(1)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000010000000000000001000000000100000101000000010000010100000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \cont_unit_deneme|ALT_INV_RST~combout\,
	datab => \cont_unit_deneme|ALT_INV_mux_R1_sel\(0),
	datac => \cont_unit_deneme|ALT_INV_mux_R1_sel\(1),
	datad => \datapath_deneme|Reg0|ALT_INV_out\(1),
	dataf => \datapath_deneme|acc|ALT_INV_out\(1),
	combout => \datapath_deneme|Reg1|out~3_combout\);

-- Location: LABCELL_X83_Y38_N18
\datapath_deneme|Reg1|out~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \datapath_deneme|Reg1|out~4_combout\ = ( \datapath_deneme|Reg1|out~0_combout\ & ( \datapath_deneme|Reg1|out~3_combout\ ) ) # ( !\datapath_deneme|Reg1|out~0_combout\ & ( \datapath_deneme|Reg1|out~3_combout\ ) ) # ( \datapath_deneme|Reg1|out~0_combout\ & ( 
-- !\datapath_deneme|Reg1|out~3_combout\ & ( (((\datapath_deneme|alu|out[1]~2_combout\ & \cont_unit_deneme|alu_op\(0))) # (\datapath_deneme|alu|out[1]~3_combout\)) # (\datapath_deneme|alu|out[1]~12_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000001111110111111111111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \datapath_deneme|alu|ALT_INV_out[1]~2_combout\,
	datab => \datapath_deneme|alu|ALT_INV_out[1]~12_combout\,
	datac => \datapath_deneme|alu|ALT_INV_out[1]~3_combout\,
	datad => \cont_unit_deneme|ALT_INV_alu_op\(0),
	datae => \datapath_deneme|Reg1|ALT_INV_out~0_combout\,
	dataf => \datapath_deneme|Reg1|ALT_INV_out~3_combout\,
	combout => \datapath_deneme|Reg1|out~4_combout\);

-- Location: FF_X83_Y38_N20
\datapath_deneme|Reg1|out[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	d => \datapath_deneme|Reg1|out~4_combout\,
	ena => \datapath_deneme|Reg0|out[1]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \datapath_deneme|Reg1|out\(1));

-- Location: MLABCELL_X82_Y38_N36
\datapath_deneme|mux_alu_b|out[1]~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \datapath_deneme|mux_alu_b|out[1]~2_combout\ = ( \cont_unit_deneme|mux_alu_b_sel\(1) & ( \datapath_deneme|acc|out\(1) ) ) # ( !\cont_unit_deneme|mux_alu_b_sel\(1) & ( \datapath_deneme|Reg1|out\(1) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011111111000000001111111100001111000011110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \datapath_deneme|acc|ALT_INV_out\(1),
	datad => \datapath_deneme|Reg1|ALT_INV_out\(1),
	dataf => \cont_unit_deneme|ALT_INV_mux_alu_b_sel\(1),
	combout => \datapath_deneme|mux_alu_b|out[1]~2_combout\);

-- Location: MLABCELL_X82_Y38_N30
\datapath_deneme|alu|out[1]~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \datapath_deneme|alu|out[1]~2_combout\ = ( \cont_unit_deneme|alu_op\(2) & ( \cont_unit_deneme|mux_alu_a_sel~combout\ & ( !\datapath_deneme|mux_alu_b|out[1]~2_combout\ $ (!\cont_unit_deneme|alu_op\(1)) ) ) ) # ( !\cont_unit_deneme|alu_op\(2) & ( 
-- \cont_unit_deneme|mux_alu_a_sel~combout\ & ( (!\cont_unit_deneme|alu_op\(1) & ((\datapath_deneme|alu|Add1~9_sumout\))) # (\cont_unit_deneme|alu_op\(1) & (\datapath_deneme|mux_alu_b|out[1]~2_combout\)) ) ) ) # ( \cont_unit_deneme|alu_op\(2) & ( 
-- !\cont_unit_deneme|mux_alu_a_sel~combout\ & ( (!\datapath_deneme|mux_alu_b|out[1]~2_combout\ & (!\datapath_deneme|Reg0|out\(1) $ (!\cont_unit_deneme|alu_op\(1)))) # (\datapath_deneme|mux_alu_b|out[1]~2_combout\ & ((!\cont_unit_deneme|alu_op\(1)) # 
-- (\datapath_deneme|Reg0|out\(1)))) ) ) ) # ( !\cont_unit_deneme|alu_op\(2) & ( !\cont_unit_deneme|mux_alu_a_sel~combout\ & ( (!\cont_unit_deneme|alu_op\(1) & (((\datapath_deneme|alu|Add1~9_sumout\)))) # (\cont_unit_deneme|alu_op\(1) & 
-- (\datapath_deneme|mux_alu_b|out[1]~2_combout\ & ((!\datapath_deneme|Reg0|out\(1))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001101010000010111111010010100110011010101010101010110101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \datapath_deneme|mux_alu_b|ALT_INV_out[1]~2_combout\,
	datab => \datapath_deneme|alu|ALT_INV_Add1~9_sumout\,
	datac => \datapath_deneme|Reg0|ALT_INV_out\(1),
	datad => \cont_unit_deneme|ALT_INV_alu_op\(1),
	datae => \cont_unit_deneme|ALT_INV_alu_op\(2),
	dataf => \cont_unit_deneme|ALT_INV_mux_alu_a_sel~combout\,
	combout => \datapath_deneme|alu|out[1]~2_combout\);

-- Location: MLABCELL_X82_Y38_N48
\datapath_deneme|acc|out~6\ : cyclonev_lcell_comb
-- Equation(s):
-- \datapath_deneme|acc|out~6_combout\ = ( !\cont_unit_deneme|acc_PS~combout\ & ( (!\cont_unit_deneme|acc_reset~combout\ & (((\datapath_deneme|acc|out\(2))))) ) ) # ( \cont_unit_deneme|acc_PS~combout\ & ( (!\cont_unit_deneme|acc_reset~combout\ & 
-- ((((\datapath_deneme|alu|out[1]~2_combout\ & \cont_unit_deneme|alu_op\(0))) # (\datapath_deneme|alu|out[1]~3_combout\)) # (\datapath_deneme|alu|out[1]~12_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "on",
	lut_mask => "0000101000001010000010100010101000001010000010101010101010101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \cont_unit_deneme|ALT_INV_acc_reset~combout\,
	datab => \datapath_deneme|alu|ALT_INV_out[1]~2_combout\,
	datac => \datapath_deneme|alu|ALT_INV_out[1]~12_combout\,
	datad => \cont_unit_deneme|ALT_INV_alu_op\(0),
	datae => \cont_unit_deneme|ALT_INV_acc_PS~combout\,
	dataf => \datapath_deneme|alu|ALT_INV_out[1]~3_combout\,
	datag => \datapath_deneme|acc|ALT_INV_out\(2),
	combout => \datapath_deneme|acc|out~6_combout\);

-- Location: FF_X82_Y38_N50
\datapath_deneme|acc|out[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	d => \datapath_deneme|acc|out~6_combout\,
	ena => \datapath_deneme|acc|out[1]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \datapath_deneme|acc|out\(1));

-- Location: MLABCELL_X82_Y38_N42
\datapath_deneme|acc|out~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \datapath_deneme|acc|out~0_combout\ = ( \cont_unit_deneme|acc_PS~combout\ & ( \datapath_deneme|alu|out[0]~0_combout\ & ( (!\cont_unit_deneme|acc_reset~combout\ & ((\cont_unit_deneme|alu_op\(0)) # (\datapath_deneme|alu|out[0]~1_combout\))) ) ) ) # ( 
-- !\cont_unit_deneme|acc_PS~combout\ & ( \datapath_deneme|alu|out[0]~0_combout\ & ( (!\cont_unit_deneme|acc_reset~combout\ & \datapath_deneme|acc|out\(1)) ) ) ) # ( \cont_unit_deneme|acc_PS~combout\ & ( !\datapath_deneme|alu|out[0]~0_combout\ & ( 
-- (!\cont_unit_deneme|acc_reset~combout\ & (\datapath_deneme|alu|out[0]~1_combout\ & !\cont_unit_deneme|alu_op\(0))) ) ) ) # ( !\cont_unit_deneme|acc_PS~combout\ & ( !\datapath_deneme|alu|out[0]~0_combout\ & ( (!\cont_unit_deneme|acc_reset~combout\ & 
-- \datapath_deneme|acc|out\(1)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000101000001010001000100000000000001010000010100010001010101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \cont_unit_deneme|ALT_INV_acc_reset~combout\,
	datab => \datapath_deneme|alu|ALT_INV_out[0]~1_combout\,
	datac => \datapath_deneme|acc|ALT_INV_out\(1),
	datad => \cont_unit_deneme|ALT_INV_alu_op\(0),
	datae => \cont_unit_deneme|ALT_INV_acc_PS~combout\,
	dataf => \datapath_deneme|alu|ALT_INV_out[0]~0_combout\,
	combout => \datapath_deneme|acc|out~0_combout\);

-- Location: FF_X82_Y38_N44
\datapath_deneme|acc|out[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	d => \datapath_deneme|acc|out~0_combout\,
	ena => \datapath_deneme|acc|out[1]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \datapath_deneme|acc|out\(0));

-- Location: MLABCELL_X82_Y38_N15
\datapath_deneme|mux_alu_b|out[0]~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \datapath_deneme|mux_alu_b|out[0]~1_combout\ = ( \cont_unit_deneme|mux_alu_b_sel\(1) & ( \datapath_deneme|acc|out\(0) ) ) # ( !\cont_unit_deneme|mux_alu_b_sel\(1) & ( \datapath_deneme|Reg1|out\(0) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011111111000000001111111100001111000011110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \datapath_deneme|acc|ALT_INV_out\(0),
	datad => \datapath_deneme|Reg1|ALT_INV_out\(0),
	dataf => \cont_unit_deneme|ALT_INV_mux_alu_b_sel\(1),
	combout => \datapath_deneme|mux_alu_b|out[0]~1_combout\);

-- Location: MLABCELL_X82_Y38_N6
\datapath_deneme|alu|out[0]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \datapath_deneme|alu|out[0]~0_combout\ = ( \datapath_deneme|alu|Add1~5_sumout\ & ( \datapath_deneme|mux_alu_b|out[0]~1_combout\ & ( (!\cont_unit_deneme|alu_op\(1)) # ((!\cont_unit_deneme|alu_op\(2) & (!\datapath_deneme|mux_alu_a|out[0]~1_combout\)) # 
-- (\cont_unit_deneme|alu_op\(2) & ((!\datapath_deneme|alu|Add0~5_sumout\)))) ) ) ) # ( !\datapath_deneme|alu|Add1~5_sumout\ & ( \datapath_deneme|mux_alu_b|out[0]~1_combout\ & ( (!\cont_unit_deneme|alu_op\(2) & (!\datapath_deneme|mux_alu_a|out[0]~1_combout\ 
-- & ((\cont_unit_deneme|alu_op\(1))))) # (\cont_unit_deneme|alu_op\(2) & (((!\datapath_deneme|alu|Add0~5_sumout\) # (!\cont_unit_deneme|alu_op\(1))))) ) ) ) # ( \datapath_deneme|alu|Add1~5_sumout\ & ( !\datapath_deneme|mux_alu_b|out[0]~1_combout\ & ( 
-- (!\cont_unit_deneme|alu_op\(2) & (((!\cont_unit_deneme|alu_op\(1))))) # (\cont_unit_deneme|alu_op\(2) & ((!\cont_unit_deneme|alu_op\(1) & (\datapath_deneme|mux_alu_a|out[0]~1_combout\)) # (\cont_unit_deneme|alu_op\(1) & 
-- ((!\datapath_deneme|alu|Add0~5_sumout\))))) ) ) ) # ( !\datapath_deneme|alu|Add1~5_sumout\ & ( !\datapath_deneme|mux_alu_b|out[0]~1_combout\ & ( (\cont_unit_deneme|alu_op\(2) & ((!\cont_unit_deneme|alu_op\(1) & 
-- (\datapath_deneme|mux_alu_a|out[0]~1_combout\)) # (\cont_unit_deneme|alu_op\(1) & ((!\datapath_deneme|alu|Add0~5_sumout\))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010100001100111101010000110000001111101011001111111110101100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \datapath_deneme|mux_alu_a|ALT_INV_out[0]~1_combout\,
	datab => \datapath_deneme|alu|ALT_INV_Add0~5_sumout\,
	datac => \cont_unit_deneme|ALT_INV_alu_op\(2),
	datad => \cont_unit_deneme|ALT_INV_alu_op\(1),
	datae => \datapath_deneme|alu|ALT_INV_Add1~5_sumout\,
	dataf => \datapath_deneme|mux_alu_b|ALT_INV_out[0]~1_combout\,
	combout => \datapath_deneme|alu|out[0]~0_combout\);

-- Location: LABCELL_X83_Y37_N39
\datapath_deneme|Q|out~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \datapath_deneme|Q|out~0_combout\ = ( \datapath_deneme|Q|out\(1) & ( \cont_unit_deneme|alu_op\(0) & ( (!\cont_unit_deneme|Q_PS~combout\) # (\datapath_deneme|alu|out[0]~0_combout\) ) ) ) # ( !\datapath_deneme|Q|out\(1) & ( \cont_unit_deneme|alu_op\(0) & ( 
-- (\datapath_deneme|alu|out[0]~0_combout\ & \cont_unit_deneme|Q_PS~combout\) ) ) ) # ( \datapath_deneme|Q|out\(1) & ( !\cont_unit_deneme|alu_op\(0) & ( (!\cont_unit_deneme|Q_PS~combout\) # (\datapath_deneme|alu|out[0]~1_combout\) ) ) ) # ( 
-- !\datapath_deneme|Q|out\(1) & ( !\cont_unit_deneme|alu_op\(0) & ( (\datapath_deneme|alu|out[0]~1_combout\ & \cont_unit_deneme|Q_PS~combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010100000101111101011111010100000011000000111111001111110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \datapath_deneme|alu|ALT_INV_out[0]~1_combout\,
	datab => \datapath_deneme|alu|ALT_INV_out[0]~0_combout\,
	datac => \cont_unit_deneme|ALT_INV_Q_PS~combout\,
	datae => \datapath_deneme|Q|ALT_INV_out\(1),
	dataf => \cont_unit_deneme|ALT_INV_alu_op\(0),
	combout => \datapath_deneme|Q|out~0_combout\);

-- Location: FF_X83_Y37_N41
\datapath_deneme|Q|out[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	d => \datapath_deneme|Q|out~0_combout\,
	ena => \cont_unit_deneme|Q_en~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \datapath_deneme|Q|out\(0));

-- Location: LABCELL_X83_Y37_N27
\datapath_deneme|qn1|out~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \datapath_deneme|qn1|out~0_combout\ = ( !\cont_unit_deneme|acc_reset~combout\ & ( \datapath_deneme|Q|out\(0) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111000011110000111100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \datapath_deneme|Q|ALT_INV_out\(0),
	dataf => \cont_unit_deneme|ALT_INV_acc_reset~combout\,
	combout => \datapath_deneme|qn1|out~0_combout\);

-- Location: FF_X83_Y37_N29
\datapath_deneme|qn1|out[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	d => \datapath_deneme|qn1|out~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \datapath_deneme|qn1|out\(0));

-- Location: LABCELL_X83_Y37_N21
\cont_unit_deneme|alu_op[2]~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \cont_unit_deneme|alu_op[2]~1_combout\ = ( \OP[0]~input_o\ & ( (!\OP[2]~input_o\ & \OP[1]~input_o\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000001010000010100000101000001010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_OP[2]~input_o\,
	datac => \ALT_INV_OP[1]~input_o\,
	dataf => \ALT_INV_OP[0]~input_o\,
	combout => \cont_unit_deneme|alu_op[2]~1_combout\);

-- Location: LABCELL_X83_Y37_N0
\cont_unit_deneme|alu_op[2]~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \cont_unit_deneme|alu_op[2]~3_combout\ = ( \cont_unit_deneme|alu_op[2]~2_combout\ & ( \cont_unit_deneme|state.00~q\ & ( (\cont_unit_deneme|state.01~q\ & (!\datapath_deneme|qn1|out\(0) $ (!\datapath_deneme|Q|out\(0)))) ) ) ) # ( 
-- !\cont_unit_deneme|alu_op[2]~2_combout\ & ( \cont_unit_deneme|state.00~q\ & ( (\cont_unit_deneme|state.01~q\ & (!\datapath_deneme|qn1|out\(0) $ (!\datapath_deneme|Q|out\(0)))) ) ) ) # ( \cont_unit_deneme|alu_op[2]~2_combout\ & ( 
-- !\cont_unit_deneme|state.00~q\ & ( !\cont_unit_deneme|alu_op[2]~1_combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000110000001100000011000000110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \datapath_deneme|qn1|ALT_INV_out\(0),
	datab => \datapath_deneme|Q|ALT_INV_out\(0),
	datac => \cont_unit_deneme|ALT_INV_state.01~q\,
	datad => \cont_unit_deneme|ALT_INV_alu_op[2]~1_combout\,
	datae => \cont_unit_deneme|ALT_INV_alu_op[2]~2_combout\,
	dataf => \cont_unit_deneme|ALT_INV_state.00~q\,
	combout => \cont_unit_deneme|alu_op[2]~3_combout\);

-- Location: MLABCELL_X84_Y38_N54
\cont_unit_deneme|mux_alu_a_sel\ : cyclonev_lcell_comb
-- Equation(s):
-- \cont_unit_deneme|mux_alu_a_sel~combout\ = ( \cont_unit_deneme|mux_alu_a_sel~0_combout\ & ( (\cont_unit_deneme|alu_op[2]~3_combout\) # (\cont_unit_deneme|mux_alu_a_sel~combout\) ) ) # ( !\cont_unit_deneme|mux_alu_a_sel~0_combout\ & ( 
-- (\cont_unit_deneme|mux_alu_a_sel~combout\ & !\cont_unit_deneme|alu_op[2]~3_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100000000000011110000000000001111111111110000111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \cont_unit_deneme|ALT_INV_mux_alu_a_sel~combout\,
	datad => \cont_unit_deneme|ALT_INV_alu_op[2]~3_combout\,
	dataf => \cont_unit_deneme|ALT_INV_mux_alu_a_sel~0_combout\,
	combout => \cont_unit_deneme|mux_alu_a_sel~combout\);

-- Location: MLABCELL_X82_Y38_N54
\datapath_deneme|mux_alu_a|out[0]~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \datapath_deneme|mux_alu_a|out[0]~1_combout\ = ( !\cont_unit_deneme|mux_alu_a_sel~combout\ & ( \datapath_deneme|Reg0|out\(0) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011111111000000001111111100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \datapath_deneme|Reg0|ALT_INV_out\(0),
	dataf => \cont_unit_deneme|ALT_INV_mux_alu_a_sel~combout\,
	combout => \datapath_deneme|mux_alu_a|out[0]~1_combout\);

-- Location: LABCELL_X83_Y38_N12
\datapath_deneme|alu|out[0]~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \datapath_deneme|alu|out[0]~1_combout\ = ( \datapath_deneme|alu|Add3~5_sumout\ & ( \cont_unit_deneme|alu_op\(2) & ( (!\cont_unit_deneme|alu_op\(1) & (\datapath_deneme|mux_alu_a|out[0]~1_combout\ & (\datapath_deneme|mux_alu_b|out[0]~1_combout\))) # 
-- (\cont_unit_deneme|alu_op\(1) & (((\datapath_deneme|alu|Add0~5_sumout\)))) ) ) ) # ( !\datapath_deneme|alu|Add3~5_sumout\ & ( \cont_unit_deneme|alu_op\(2) & ( (!\cont_unit_deneme|alu_op\(1) & (\datapath_deneme|mux_alu_a|out[0]~1_combout\ & 
-- (\datapath_deneme|mux_alu_b|out[0]~1_combout\))) # (\cont_unit_deneme|alu_op\(1) & (((\datapath_deneme|alu|Add0~5_sumout\)))) ) ) ) # ( \datapath_deneme|alu|Add3~5_sumout\ & ( !\cont_unit_deneme|alu_op\(2) & ( (\cont_unit_deneme|alu_op\(1)) # 
-- (\datapath_deneme|alu|Add0~5_sumout\) ) ) ) # ( !\datapath_deneme|alu|Add3~5_sumout\ & ( !\cont_unit_deneme|alu_op\(2) & ( (\datapath_deneme|alu|Add0~5_sumout\ & !\cont_unit_deneme|alu_op\(1)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100000000000011111111111100010001000011110001000100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \datapath_deneme|mux_alu_a|ALT_INV_out[0]~1_combout\,
	datab => \datapath_deneme|mux_alu_b|ALT_INV_out[0]~1_combout\,
	datac => \datapath_deneme|alu|ALT_INV_Add0~5_sumout\,
	datad => \cont_unit_deneme|ALT_INV_alu_op\(1),
	datae => \datapath_deneme|alu|ALT_INV_Add3~5_sumout\,
	dataf => \cont_unit_deneme|ALT_INV_alu_op\(2),
	combout => \datapath_deneme|alu|out[0]~1_combout\);

-- Location: IOIBUF_X89_Y36_N4
\DATA_IN[0]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_DATA_IN(0),
	o => \DATA_IN[0]~input_o\);

-- Location: LABCELL_X85_Y38_N12
\datapath_deneme|Reg0|out~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \datapath_deneme|Reg0|out~1_combout\ = ( \cont_unit_deneme|mux_R0_sel\(0) & ( (!\cont_unit_deneme|mux_R0_sel\(1) & (!\cont_unit_deneme|RST~combout\ & \DATA_IN[0]~input_o\)) ) ) # ( !\cont_unit_deneme|mux_R0_sel\(0) & ( (\datapath_deneme|Q|out\(0) & 
-- (\cont_unit_deneme|mux_R0_sel\(1) & !\cont_unit_deneme|RST~combout\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000000010000000100000001000000000000110000000000000011000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \datapath_deneme|Q|ALT_INV_out\(0),
	datab => \cont_unit_deneme|ALT_INV_mux_R0_sel\(1),
	datac => \cont_unit_deneme|ALT_INV_RST~combout\,
	datad => \ALT_INV_DATA_IN[0]~input_o\,
	dataf => \cont_unit_deneme|ALT_INV_mux_R0_sel\(0),
	combout => \datapath_deneme|Reg0|out~1_combout\);

-- Location: LABCELL_X83_Y38_N6
\datapath_deneme|Reg0|out~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \datapath_deneme|Reg0|out~2_combout\ = ( \datapath_deneme|alu|out[0]~0_combout\ & ( ((\datapath_deneme|Reg0|out~0_combout\ & ((\cont_unit_deneme|alu_op\(0)) # (\datapath_deneme|alu|out[0]~1_combout\)))) # (\datapath_deneme|Reg0|out~1_combout\) ) ) # ( 
-- !\datapath_deneme|alu|out[0]~0_combout\ & ( ((\datapath_deneme|alu|out[0]~1_combout\ & (!\cont_unit_deneme|alu_op\(0) & \datapath_deneme|Reg0|out~0_combout\))) # (\datapath_deneme|Reg0|out~1_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111101001111000011110100111100001111011111110000111101111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \datapath_deneme|alu|ALT_INV_out[0]~1_combout\,
	datab => \cont_unit_deneme|ALT_INV_alu_op\(0),
	datac => \datapath_deneme|Reg0|ALT_INV_out~1_combout\,
	datad => \datapath_deneme|Reg0|ALT_INV_out~0_combout\,
	dataf => \datapath_deneme|alu|ALT_INV_out[0]~0_combout\,
	combout => \datapath_deneme|Reg0|out~2_combout\);

-- Location: FF_X83_Y38_N8
\datapath_deneme|Reg0|out[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	d => \datapath_deneme|Reg0|out~2_combout\,
	ena => \datapath_deneme|Reg0|out[1]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \datapath_deneme|Reg0|out\(0));

-- Location: LABCELL_X85_Y37_N54
\ERR~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \ERR~0_combout\ = ( \cont_unit_deneme|alu_op\(0) & ( !\cont_unit_deneme|alu_op\(2) & ( (\COMP~input_o\ & (!\cont_unit_deneme|alu_op\(1) & (!\datapath_deneme|mux_alu_a|out[3]~0_combout\ $ (!\datapath_deneme|mux_alu_b|out[3]~0_combout\)))) ) ) ) # ( 
-- !\cont_unit_deneme|alu_op\(0) & ( !\cont_unit_deneme|alu_op\(2) & ( (\COMP~input_o\ & (!\datapath_deneme|mux_alu_a|out[3]~0_combout\ $ (!\datapath_deneme|mux_alu_b|out[3]~0_combout\ $ (!\cont_unit_deneme|alu_op\(1))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000100100000110000001100000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \datapath_deneme|mux_alu_a|ALT_INV_out[3]~0_combout\,
	datab => \datapath_deneme|mux_alu_b|ALT_INV_out[3]~0_combout\,
	datac => \ALT_INV_COMP~input_o\,
	datad => \cont_unit_deneme|ALT_INV_alu_op\(1),
	datae => \cont_unit_deneme|ALT_INV_alu_op\(0),
	dataf => \cont_unit_deneme|ALT_INV_alu_op\(2),
	combout => \ERR~0_combout\);

-- Location: LABCELL_X85_Y37_N6
\ERR~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \ERR~1_combout\ = ( \datapath_deneme|alu|Add1~1_sumout\ & ( \datapath_deneme|mux_alu_a|out[3]~0_combout\ & ( (!\cont_unit_deneme|alu_op\(1) & (\cont_unit_deneme|alu_op\(0))) # (\cont_unit_deneme|alu_op\(1) & ((!\datapath_deneme|alu|Add3~1_sumout\ $ 
-- (\datapath_deneme|mux_alu_b|out[3]~0_combout\)))) ) ) ) # ( !\datapath_deneme|alu|Add1~1_sumout\ & ( \datapath_deneme|mux_alu_a|out[3]~0_combout\ & ( (\cont_unit_deneme|alu_op\(1) & (!\datapath_deneme|alu|Add3~1_sumout\ $ 
-- (\datapath_deneme|mux_alu_b|out[3]~0_combout\))) ) ) ) # ( \datapath_deneme|alu|Add1~1_sumout\ & ( !\datapath_deneme|mux_alu_a|out[3]~0_combout\ & ( (\cont_unit_deneme|alu_op\(1) & (!\datapath_deneme|alu|Add3~1_sumout\ $ 
-- (\datapath_deneme|mux_alu_b|out[3]~0_combout\))) ) ) ) # ( !\datapath_deneme|alu|Add1~1_sumout\ & ( !\datapath_deneme|mux_alu_a|out[3]~0_combout\ & ( (!\cont_unit_deneme|alu_op\(1) & (\cont_unit_deneme|alu_op\(0))) # (\cont_unit_deneme|alu_op\(1) & 
-- ((!\datapath_deneme|alu|Add3~1_sumout\ $ (\datapath_deneme|mux_alu_b|out[3]~0_combout\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0111010001000111001100000000001100110000000000110111010001000111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \cont_unit_deneme|ALT_INV_alu_op\(0),
	datab => \cont_unit_deneme|ALT_INV_alu_op\(1),
	datac => \datapath_deneme|alu|ALT_INV_Add3~1_sumout\,
	datad => \datapath_deneme|mux_alu_b|ALT_INV_out[3]~0_combout\,
	datae => \datapath_deneme|alu|ALT_INV_Add1~1_sumout\,
	dataf => \datapath_deneme|mux_alu_a|ALT_INV_out[3]~0_combout\,
	combout => \ERR~1_combout\);

-- Location: LABCELL_X85_Y37_N30
\ERR~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \ERR~2_combout\ = ( \cont_unit_deneme|alu_op\(0) & ( \datapath_deneme|mux_alu_a|out[3]~0_combout\ & ( (\ERR~0_combout\ & !\ERR~1_combout\) ) ) ) # ( !\cont_unit_deneme|alu_op\(0) & ( \datapath_deneme|mux_alu_a|out[3]~0_combout\ & ( (\ERR~0_combout\ & 
-- (!\ERR~1_combout\ & ((!\datapath_deneme|alu|Add0~1_sumout\) # (\cont_unit_deneme|alu_op\(1))))) ) ) ) # ( \cont_unit_deneme|alu_op\(0) & ( !\datapath_deneme|mux_alu_a|out[3]~0_combout\ & ( (\ERR~0_combout\ & !\ERR~1_combout\) ) ) ) # ( 
-- !\cont_unit_deneme|alu_op\(0) & ( !\datapath_deneme|mux_alu_a|out[3]~0_combout\ & ( (\ERR~0_combout\ & (!\ERR~1_combout\ & ((\cont_unit_deneme|alu_op\(1)) # (\datapath_deneme|alu|Add0~1_sumout\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010001000100010001000100010001000000010001000100010001000100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_ERR~0_combout\,
	datab => \ALT_INV_ERR~1_combout\,
	datac => \datapath_deneme|alu|ALT_INV_Add0~1_sumout\,
	datad => \cont_unit_deneme|ALT_INV_alu_op\(1),
	datae => \cont_unit_deneme|ALT_INV_alu_op\(0),
	dataf => \datapath_deneme|mux_alu_a|ALT_INV_out[3]~0_combout\,
	combout => \ERR~2_combout\);

-- Location: LABCELL_X50_Y53_N3
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


