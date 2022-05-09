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

-- DATE "05/09/2022 02:18:46"

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

ENTITY 	single_cycle_processor IS
    PORT (
	clock : IN std_logic;
	reset : IN std_logic;
	pc : BUFFER std_logic_vector(31 DOWNTO 0);
	alu_cont : BUFFER std_logic_vector(2 DOWNTO 0);
	alu_result : BUFFER std_logic_vector(31 DOWNTO 0);
	result : BUFFER std_logic_vector(31 DOWNTO 0);
	rd1 : BUFFER std_logic_vector(31 DOWNTO 0);
	rd2 : BUFFER std_logic_vector(31 DOWNTO 0);
	comp_flag : BUFFER std_logic
	);
END single_cycle_processor;

-- Design Ports Information
-- pc[0]	=>  Location: PIN_E20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- pc[1]	=>  Location: PIN_C20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- pc[2]	=>  Location: PIN_V14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- pc[3]	=>  Location: PIN_AB20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- pc[4]	=>  Location: PIN_Y17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- pc[5]	=>  Location: PIN_Y16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- pc[6]	=>  Location: PIN_AA17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- pc[7]	=>  Location: PIN_Y19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- pc[8]	=>  Location: PIN_Y21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- pc[9]	=>  Location: PIN_T14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- pc[10]	=>  Location: PIN_AA18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- pc[11]	=>  Location: PIN_Y15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- pc[12]	=>  Location: PIN_V19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- pc[13]	=>  Location: PIN_AB21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- pc[14]	=>  Location: PIN_U17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- pc[15]	=>  Location: PIN_U15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- pc[16]	=>  Location: PIN_V18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- pc[17]	=>  Location: PIN_W21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- pc[18]	=>  Location: PIN_P14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- pc[19]	=>  Location: PIN_U22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- pc[20]	=>  Location: PIN_R14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- pc[21]	=>  Location: PIN_V21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- pc[22]	=>  Location: PIN_AA19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- pc[23]	=>  Location: PIN_AA22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- pc[24]	=>  Location: PIN_AA20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- pc[25]	=>  Location: PIN_AB22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- pc[26]	=>  Location: PIN_V16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- pc[27]	=>  Location: PIN_Y20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- pc[28]	=>  Location: PIN_Y22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- pc[29]	=>  Location: PIN_W22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- pc[30]	=>  Location: PIN_W19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- pc[31]	=>  Location: PIN_W16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- alu_cont[0]	=>  Location: PIN_AB17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- alu_cont[1]	=>  Location: PIN_AB18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- alu_cont[2]	=>  Location: PIN_V15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- alu_result[0]	=>  Location: PIN_Y14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- alu_result[1]	=>  Location: PIN_AB15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- alu_result[2]	=>  Location: PIN_T13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- alu_result[3]	=>  Location: PIN_W9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- alu_result[4]	=>  Location: PIN_V10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- alu_result[5]	=>  Location: PIN_Y9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- alu_result[6]	=>  Location: PIN_U20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- alu_result[7]	=>  Location: PIN_P8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- alu_result[8]	=>  Location: PIN_Y10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- alu_result[9]	=>  Location: PIN_Y11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- alu_result[10]	=>  Location: PIN_T19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- alu_result[11]	=>  Location: PIN_P6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- alu_result[12]	=>  Location: PIN_R9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- alu_result[13]	=>  Location: PIN_M7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- alu_result[14]	=>  Location: PIN_V9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- alu_result[15]	=>  Location: PIN_R7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- alu_result[16]	=>  Location: PIN_M6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- alu_result[17]	=>  Location: PIN_AA7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- alu_result[18]	=>  Location: PIN_R22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- alu_result[19]	=>  Location: PIN_N8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- alu_result[20]	=>  Location: PIN_R11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- alu_result[21]	=>  Location: PIN_P7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- alu_result[22]	=>  Location: PIN_V6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- alu_result[23]	=>  Location: PIN_N6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- alu_result[24]	=>  Location: PIN_T18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- alu_result[25]	=>  Location: PIN_W8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- alu_result[26]	=>  Location: PIN_AB6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- alu_result[27]	=>  Location: PIN_T8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- alu_result[28]	=>  Location: PIN_T7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- alu_result[29]	=>  Location: PIN_T10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- alu_result[30]	=>  Location: PIN_U6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- alu_result[31]	=>  Location: PIN_AB7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- result[0]	=>  Location: PIN_AA15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- result[1]	=>  Location: PIN_AA13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- result[2]	=>  Location: PIN_AA14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- result[3]	=>  Location: PIN_N19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- result[4]	=>  Location: PIN_L22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- result[5]	=>  Location: PIN_L17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- result[6]	=>  Location: PIN_P18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- result[7]	=>  Location: PIN_T15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- result[8]	=>  Location: PIN_R17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- result[9]	=>  Location: PIN_AB12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- result[10]	=>  Location: PIN_R16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- result[11]	=>  Location: PIN_AB8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- result[12]	=>  Location: PIN_M22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- result[13]	=>  Location: PIN_T17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- result[14]	=>  Location: PIN_M18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- result[15]	=>  Location: PIN_N16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- result[16]	=>  Location: PIN_R15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- result[17]	=>  Location: PIN_K17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- result[18]	=>  Location: PIN_P19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- result[19]	=>  Location: PIN_R12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- result[20]	=>  Location: PIN_M20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- result[21]	=>  Location: PIN_U10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- result[22]	=>  Location: PIN_T9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- result[23]	=>  Location: PIN_T22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- result[24]	=>  Location: PIN_N21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- result[25]	=>  Location: PIN_P16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- result[26]	=>  Location: PIN_P17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- result[27]	=>  Location: PIN_AA9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- result[28]	=>  Location: PIN_AA8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- result[29]	=>  Location: PIN_M21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- result[30]	=>  Location: PIN_R21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- result[31]	=>  Location: PIN_U11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- rd1[0]	=>  Location: PIN_H15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- rd1[1]	=>  Location: PIN_G15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- rd1[2]	=>  Location: PIN_R10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- rd1[3]	=>  Location: PIN_H9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- rd1[4]	=>  Location: PIN_M9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- rd1[5]	=>  Location: PIN_N20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- rd1[6]	=>  Location: PIN_B15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- rd1[7]	=>  Location: PIN_J9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- rd1[8]	=>  Location: PIN_J13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- rd1[9]	=>  Location: PIN_J22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- rd1[10]	=>  Location: PIN_K16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- rd1[11]	=>  Location: PIN_B7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- rd1[12]	=>  Location: PIN_F15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- rd1[13]	=>  Location: PIN_A18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- rd1[14]	=>  Location: PIN_E12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- rd1[15]	=>  Location: PIN_J18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- rd1[16]	=>  Location: PIN_F7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- rd1[17]	=>  Location: PIN_C16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- rd1[18]	=>  Location: PIN_H8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- rd1[19]	=>  Location: PIN_K19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- rd1[20]	=>  Location: PIN_B5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- rd1[21]	=>  Location: PIN_B18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- rd1[22]	=>  Location: PIN_AB13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- rd1[23]	=>  Location: PIN_D9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- rd1[24]	=>  Location: PIN_G11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- rd1[25]	=>  Location: PIN_B16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- rd1[26]	=>  Location: PIN_C13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- rd1[27]	=>  Location: PIN_D7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- rd1[28]	=>  Location: PIN_AB10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- rd1[29]	=>  Location: PIN_H14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- rd1[30]	=>  Location: PIN_K20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- rd1[31]	=>  Location: PIN_A5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- rd2[0]	=>  Location: PIN_AB5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- rd2[1]	=>  Location: PIN_E9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- rd2[2]	=>  Location: PIN_E15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- rd2[3]	=>  Location: PIN_P9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- rd2[4]	=>  Location: PIN_F9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- rd2[5]	=>  Location: PIN_R6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- rd2[6]	=>  Location: PIN_J21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- rd2[7]	=>  Location: PIN_D13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- rd2[8]	=>  Location: PIN_H20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- rd2[9]	=>  Location: PIN_K9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- rd2[10]	=>  Location: PIN_N9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- rd2[11]	=>  Location: PIN_G12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- rd2[12]	=>  Location: PIN_U13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- rd2[13]	=>  Location: PIN_A10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- rd2[14]	=>  Location: PIN_B6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- rd2[15]	=>  Location: PIN_B22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- rd2[16]	=>  Location: PIN_C8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- rd2[17]	=>  Location: PIN_A13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- rd2[18]	=>  Location: PIN_A14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- rd2[19]	=>  Location: PIN_L8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- rd2[20]	=>  Location: PIN_H11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- rd2[21]	=>  Location: PIN_B11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- rd2[22]	=>  Location: PIN_B20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- rd2[23]	=>  Location: PIN_L7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- rd2[24]	=>  Location: PIN_A15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- rd2[25]	=>  Location: PIN_J11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- rd2[26]	=>  Location: PIN_T20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- rd2[27]	=>  Location: PIN_G6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- rd2[28]	=>  Location: PIN_AA12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- rd2[29]	=>  Location: PIN_B13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- rd2[30]	=>  Location: PIN_E10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- rd2[31]	=>  Location: PIN_D6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- comp_flag	=>  Location: PIN_T12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- clock	=>  Location: PIN_M16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- reset	=>  Location: PIN_V20,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF single_cycle_processor IS
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
SIGNAL ww_pc : std_logic_vector(31 DOWNTO 0);
SIGNAL ww_alu_cont : std_logic_vector(2 DOWNTO 0);
SIGNAL ww_alu_result : std_logic_vector(31 DOWNTO 0);
SIGNAL ww_result : std_logic_vector(31 DOWNTO 0);
SIGNAL ww_rd1 : std_logic_vector(31 DOWNTO 0);
SIGNAL ww_rd2 : std_logic_vector(31 DOWNTO 0);
SIGNAL ww_comp_flag : std_logic;
SIGNAL \~QUARTUS_CREATED_GND~I_combout\ : std_logic;
SIGNAL \clock~input_o\ : std_logic;
SIGNAL \clock~inputCLKENA0_outclk\ : std_logic;
SIGNAL \dpath|pc_adder|Add0~1_sumout\ : std_logic;
SIGNAL \dpath|PC|out[2]~feeder_combout\ : std_logic;
SIGNAL \reset~input_o\ : std_logic;
SIGNAL \dpath|pc_adder|Add0~2\ : std_logic;
SIGNAL \dpath|pc_adder|Add0~5_sumout\ : std_logic;
SIGNAL \dpath|pc_adder|Add0~6\ : std_logic;
SIGNAL \dpath|pc_adder|Add0~9_sumout\ : std_logic;
SIGNAL \dpath|pc_adder|Add0~10\ : std_logic;
SIGNAL \dpath|pc_adder|Add0~13_sumout\ : std_logic;
SIGNAL \dpath|pc_adder|Add0~14\ : std_logic;
SIGNAL \dpath|pc_adder|Add0~17_sumout\ : std_logic;
SIGNAL \dpath|pc_adder|Add0~18\ : std_logic;
SIGNAL \dpath|pc_adder|Add0~21_sumout\ : std_logic;
SIGNAL \dpath|pc_adder|Add0~22\ : std_logic;
SIGNAL \dpath|pc_adder|Add0~25_sumout\ : std_logic;
SIGNAL \dpath|pc_adder|Add0~26\ : std_logic;
SIGNAL \dpath|pc_adder|Add0~29_sumout\ : std_logic;
SIGNAL \dpath|pc_adder|Add0~30\ : std_logic;
SIGNAL \dpath|pc_adder|Add0~33_sumout\ : std_logic;
SIGNAL \dpath|pc_adder|Add0~34\ : std_logic;
SIGNAL \dpath|pc_adder|Add0~37_sumout\ : std_logic;
SIGNAL \dpath|pc_adder|Add0~38\ : std_logic;
SIGNAL \dpath|pc_adder|Add0~41_sumout\ : std_logic;
SIGNAL \dpath|pc_adder|Add0~42\ : std_logic;
SIGNAL \dpath|pc_adder|Add0~45_sumout\ : std_logic;
SIGNAL \dpath|pc_adder|Add0~46\ : std_logic;
SIGNAL \dpath|pc_adder|Add0~49_sumout\ : std_logic;
SIGNAL \dpath|pc_adder|Add0~50\ : std_logic;
SIGNAL \dpath|pc_adder|Add0~53_sumout\ : std_logic;
SIGNAL \dpath|pc_adder|Add0~54\ : std_logic;
SIGNAL \dpath|pc_adder|Add0~57_sumout\ : std_logic;
SIGNAL \dpath|pc_adder|Add0~58\ : std_logic;
SIGNAL \dpath|pc_adder|Add0~61_sumout\ : std_logic;
SIGNAL \dpath|pc_adder|Add0~62\ : std_logic;
SIGNAL \dpath|pc_adder|Add0~65_sumout\ : std_logic;
SIGNAL \dpath|pc_adder|Add0~66\ : std_logic;
SIGNAL \dpath|pc_adder|Add0~69_sumout\ : std_logic;
SIGNAL \dpath|pc_adder|Add0~70\ : std_logic;
SIGNAL \dpath|pc_adder|Add0~73_sumout\ : std_logic;
SIGNAL \dpath|pc_adder|Add0~74\ : std_logic;
SIGNAL \dpath|pc_adder|Add0~77_sumout\ : std_logic;
SIGNAL \dpath|pc_adder|Add0~78\ : std_logic;
SIGNAL \dpath|pc_adder|Add0~81_sumout\ : std_logic;
SIGNAL \dpath|pc_adder|Add0~82\ : std_logic;
SIGNAL \dpath|pc_adder|Add0~85_sumout\ : std_logic;
SIGNAL \dpath|pc_adder|Add0~86\ : std_logic;
SIGNAL \dpath|pc_adder|Add0~89_sumout\ : std_logic;
SIGNAL \dpath|pc_adder|Add0~90\ : std_logic;
SIGNAL \dpath|pc_adder|Add0~93_sumout\ : std_logic;
SIGNAL \dpath|pc_adder|Add0~94\ : std_logic;
SIGNAL \dpath|pc_adder|Add0~97_sumout\ : std_logic;
SIGNAL \dpath|pc_adder|Add0~98\ : std_logic;
SIGNAL \dpath|pc_adder|Add0~101_sumout\ : std_logic;
SIGNAL \dpath|pc_adder|Add0~102\ : std_logic;
SIGNAL \dpath|pc_adder|Add0~105_sumout\ : std_logic;
SIGNAL \dpath|pc_adder|Add0~106\ : std_logic;
SIGNAL \dpath|pc_adder|Add0~109_sumout\ : std_logic;
SIGNAL \dpath|pc_adder|Add0~110\ : std_logic;
SIGNAL \dpath|pc_adder|Add0~113_sumout\ : std_logic;
SIGNAL \dpath|pc_adder|Add0~114\ : std_logic;
SIGNAL \dpath|pc_adder|Add0~117_sumout\ : std_logic;
SIGNAL \cont|AluControl[0]~2_combout\ : std_logic;
SIGNAL \cont|AluControl[2]~1_combout\ : std_logic;
SIGNAL \cont|comb~1_combout\ : std_logic;
SIGNAL \cont|AluControl[2]~0_combout\ : std_logic;
SIGNAL \dpath|Alu|out[0]~0_combout\ : std_logic;
SIGNAL \dpath|Alu|out[2]~1_combout\ : std_logic;
SIGNAL \dpath|Alu|out[2]~2_combout\ : std_logic;
SIGNAL \dpath|Alu|out[3]~3_combout\ : std_logic;
SIGNAL \cont|comb~0_combout\ : std_logic;
SIGNAL \dpath|inst_mem|content~0_combout\ : std_logic;
SIGNAL \cont|MemtoReg[1]~0_combout\ : std_logic;
SIGNAL \dpath|mux_memtoreg|out[0]~0_combout\ : std_logic;
SIGNAL \dpath|mux_memtoreg|out[1]~1_combout\ : std_logic;
SIGNAL \dpath|mux_memtoreg|out[2]~2_combout\ : std_logic;
SIGNAL \dpath|mux_memtoreg|out[3]~3_combout\ : std_logic;
SIGNAL \dpath|PC|out\ : std_logic_vector(31 DOWNTO 0);
SIGNAL \cont|AluControl\ : std_logic_vector(2 DOWNTO 0);
SIGNAL \cont|MemtoReg\ : std_logic_vector(1 DOWNTO 0);
SIGNAL \cont|ALT_INV_MemtoReg\ : std_logic_vector(1 DOWNTO 0);
SIGNAL \cont|ALT_INV_AluControl\ : std_logic_vector(2 DOWNTO 0);
SIGNAL \cont|ALT_INV_AluControl[0]~2_combout\ : std_logic;
SIGNAL \cont|ALT_INV_AluControl[2]~1_combout\ : std_logic;
SIGNAL \cont|ALT_INV_comb~1_combout\ : std_logic;
SIGNAL \cont|ALT_INV_AluControl[2]~0_combout\ : std_logic;
SIGNAL \cont|ALT_INV_MemtoReg[1]~0_combout\ : std_logic;
SIGNAL \cont|ALT_INV_comb~0_combout\ : std_logic;
SIGNAL \dpath|inst_mem|ALT_INV_content~0_combout\ : std_logic;
SIGNAL \dpath|Alu|ALT_INV_out[2]~1_combout\ : std_logic;
SIGNAL \dpath|pc_adder|ALT_INV_Add0~1_sumout\ : std_logic;
SIGNAL \dpath|PC|ALT_INV_out\ : std_logic_vector(31 DOWNTO 2);

BEGIN

ww_clock <= clock;
ww_reset <= reset;
pc <= ww_pc;
alu_cont <= ww_alu_cont;
alu_result <= ww_alu_result;
result <= ww_result;
rd1 <= ww_rd1;
rd2 <= ww_rd2;
comp_flag <= ww_comp_flag;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;
\cont|ALT_INV_MemtoReg\(0) <= NOT \cont|MemtoReg\(0);
\cont|ALT_INV_MemtoReg\(1) <= NOT \cont|MemtoReg\(1);
\cont|ALT_INV_AluControl\(2) <= NOT \cont|AluControl\(2);
\cont|ALT_INV_AluControl\(1) <= NOT \cont|AluControl\(1);
\cont|ALT_INV_AluControl\(0) <= NOT \cont|AluControl\(0);
\cont|ALT_INV_AluControl[0]~2_combout\ <= NOT \cont|AluControl[0]~2_combout\;
\cont|ALT_INV_AluControl[2]~1_combout\ <= NOT \cont|AluControl[2]~1_combout\;
\cont|ALT_INV_comb~1_combout\ <= NOT \cont|comb~1_combout\;
\cont|ALT_INV_AluControl[2]~0_combout\ <= NOT \cont|AluControl[2]~0_combout\;
\cont|ALT_INV_MemtoReg[1]~0_combout\ <= NOT \cont|MemtoReg[1]~0_combout\;
\cont|ALT_INV_comb~0_combout\ <= NOT \cont|comb~0_combout\;
\dpath|inst_mem|ALT_INV_content~0_combout\ <= NOT \dpath|inst_mem|content~0_combout\;
\dpath|Alu|ALT_INV_out[2]~1_combout\ <= NOT \dpath|Alu|out[2]~1_combout\;
\dpath|pc_adder|ALT_INV_Add0~1_sumout\ <= NOT \dpath|pc_adder|Add0~1_sumout\;
\dpath|PC|ALT_INV_out\(31) <= NOT \dpath|PC|out\(31);
\dpath|PC|ALT_INV_out\(30) <= NOT \dpath|PC|out\(30);
\dpath|PC|ALT_INV_out\(29) <= NOT \dpath|PC|out\(29);
\dpath|PC|ALT_INV_out\(28) <= NOT \dpath|PC|out\(28);
\dpath|PC|ALT_INV_out\(27) <= NOT \dpath|PC|out\(27);
\dpath|PC|ALT_INV_out\(26) <= NOT \dpath|PC|out\(26);
\dpath|PC|ALT_INV_out\(25) <= NOT \dpath|PC|out\(25);
\dpath|PC|ALT_INV_out\(24) <= NOT \dpath|PC|out\(24);
\dpath|PC|ALT_INV_out\(23) <= NOT \dpath|PC|out\(23);
\dpath|PC|ALT_INV_out\(22) <= NOT \dpath|PC|out\(22);
\dpath|PC|ALT_INV_out\(21) <= NOT \dpath|PC|out\(21);
\dpath|PC|ALT_INV_out\(20) <= NOT \dpath|PC|out\(20);
\dpath|PC|ALT_INV_out\(19) <= NOT \dpath|PC|out\(19);
\dpath|PC|ALT_INV_out\(18) <= NOT \dpath|PC|out\(18);
\dpath|PC|ALT_INV_out\(17) <= NOT \dpath|PC|out\(17);
\dpath|PC|ALT_INV_out\(16) <= NOT \dpath|PC|out\(16);
\dpath|PC|ALT_INV_out\(15) <= NOT \dpath|PC|out\(15);
\dpath|PC|ALT_INV_out\(14) <= NOT \dpath|PC|out\(14);
\dpath|PC|ALT_INV_out\(13) <= NOT \dpath|PC|out\(13);
\dpath|PC|ALT_INV_out\(12) <= NOT \dpath|PC|out\(12);
\dpath|PC|ALT_INV_out\(11) <= NOT \dpath|PC|out\(11);
\dpath|PC|ALT_INV_out\(10) <= NOT \dpath|PC|out\(10);
\dpath|PC|ALT_INV_out\(9) <= NOT \dpath|PC|out\(9);
\dpath|PC|ALT_INV_out\(8) <= NOT \dpath|PC|out\(8);
\dpath|PC|ALT_INV_out\(7) <= NOT \dpath|PC|out\(7);
\dpath|PC|ALT_INV_out\(6) <= NOT \dpath|PC|out\(6);
\dpath|PC|ALT_INV_out\(5) <= NOT \dpath|PC|out\(5);
\dpath|PC|ALT_INV_out\(4) <= NOT \dpath|PC|out\(4);
\dpath|PC|ALT_INV_out\(3) <= NOT \dpath|PC|out\(3);
\dpath|PC|ALT_INV_out\(2) <= NOT \dpath|PC|out\(2);

-- Location: IOOBUF_X76_Y81_N36
\pc[0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_pc(0));

-- Location: IOOBUF_X86_Y81_N36
\pc[1]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_pc(1));

-- Location: IOOBUF_X56_Y0_N19
\pc[2]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \dpath|PC|out\(2),
	devoe => ww_devoe,
	o => ww_pc(2));

-- Location: IOOBUF_X58_Y0_N93
\pc[3]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \dpath|PC|out\(3),
	devoe => ww_devoe,
	o => ww_pc(3));

-- Location: IOOBUF_X58_Y0_N42
\pc[4]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \dpath|PC|out\(4),
	devoe => ww_devoe,
	o => ww_pc(4));

-- Location: IOOBUF_X58_Y0_N59
\pc[5]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \dpath|PC|out\(5),
	devoe => ww_devoe,
	o => ww_pc(5));

-- Location: IOOBUF_X60_Y0_N53
\pc[6]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \dpath|PC|out\(6),
	devoe => ww_devoe,
	o => ww_pc(6));

-- Location: IOOBUF_X66_Y0_N42
\pc[7]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \dpath|PC|out\(7),
	devoe => ww_devoe,
	o => ww_pc(7));

-- Location: IOOBUF_X68_Y0_N53
\pc[8]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \dpath|PC|out\(8),
	devoe => ww_devoe,
	o => ww_pc(8));

-- Location: IOOBUF_X60_Y0_N19
\pc[9]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \dpath|PC|out\(9),
	devoe => ww_devoe,
	o => ww_pc(9));

-- Location: IOOBUF_X60_Y0_N36
\pc[10]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \dpath|PC|out\(10),
	devoe => ww_devoe,
	o => ww_pc(10));

-- Location: IOOBUF_X54_Y0_N2
\pc[11]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \dpath|PC|out\(11),
	devoe => ww_devoe,
	o => ww_pc(11));

-- Location: IOOBUF_X70_Y0_N19
\pc[12]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \dpath|PC|out\(12),
	devoe => ww_devoe,
	o => ww_pc(12));

-- Location: IOOBUF_X58_Y0_N76
\pc[13]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \dpath|PC|out\(13),
	devoe => ww_devoe,
	o => ww_pc(13));

-- Location: IOOBUF_X72_Y0_N2
\pc[14]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \dpath|PC|out\(14),
	devoe => ww_devoe,
	o => ww_pc(14));

-- Location: IOOBUF_X60_Y0_N2
\pc[15]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \dpath|PC|out\(15),
	devoe => ww_devoe,
	o => ww_pc(15));

-- Location: IOOBUF_X70_Y0_N2
\pc[16]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \dpath|PC|out\(16),
	devoe => ww_devoe,
	o => ww_pc(16));

-- Location: IOOBUF_X68_Y0_N36
\pc[17]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \dpath|PC|out\(17),
	devoe => ww_devoe,
	o => ww_pc(17));

-- Location: IOOBUF_X68_Y0_N19
\pc[18]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \dpath|PC|out\(18),
	devoe => ww_devoe,
	o => ww_pc(18));

-- Location: IOOBUF_X70_Y0_N53
\pc[19]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \dpath|PC|out\(19),
	devoe => ww_devoe,
	o => ww_pc(19));

-- Location: IOOBUF_X68_Y0_N2
\pc[20]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \dpath|PC|out\(20),
	devoe => ww_devoe,
	o => ww_pc(20));

-- Location: IOOBUF_X70_Y0_N36
\pc[21]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \dpath|PC|out\(21),
	devoe => ww_devoe,
	o => ww_pc(21));

-- Location: IOOBUF_X62_Y0_N53
\pc[22]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \dpath|PC|out\(22),
	devoe => ww_devoe,
	o => ww_pc(22));

-- Location: IOOBUF_X64_Y0_N36
\pc[23]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \dpath|PC|out\(23),
	devoe => ww_devoe,
	o => ww_pc(23));

-- Location: IOOBUF_X62_Y0_N36
\pc[24]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \dpath|PC|out\(24),
	devoe => ww_devoe,
	o => ww_pc(24));

-- Location: IOOBUF_X64_Y0_N53
\pc[25]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \dpath|PC|out\(25),
	devoe => ww_devoe,
	o => ww_pc(25));

-- Location: IOOBUF_X64_Y0_N19
\pc[26]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \dpath|PC|out\(26),
	devoe => ww_devoe,
	o => ww_pc(26));

-- Location: IOOBUF_X66_Y0_N59
\pc[27]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \dpath|PC|out\(27),
	devoe => ww_devoe,
	o => ww_pc(27));

-- Location: IOOBUF_X66_Y0_N93
\pc[28]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \dpath|PC|out\(28),
	devoe => ww_devoe,
	o => ww_pc(28));

-- Location: IOOBUF_X66_Y0_N76
\pc[29]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \dpath|PC|out\(29),
	devoe => ww_devoe,
	o => ww_pc(29));

-- Location: IOOBUF_X62_Y0_N2
\pc[30]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \dpath|PC|out\(30),
	devoe => ww_devoe,
	o => ww_pc(30));

-- Location: IOOBUF_X64_Y0_N2
\pc[31]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \dpath|PC|out\(31),
	devoe => ww_devoe,
	o => ww_pc(31));

-- Location: IOOBUF_X56_Y0_N53
\alu_cont[0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \cont|AluControl\(0),
	devoe => ww_devoe,
	o => ww_alu_cont(0));

-- Location: IOOBUF_X56_Y0_N36
\alu_cont[1]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \cont|AluControl\(1),
	devoe => ww_devoe,
	o => ww_alu_cont(1));

-- Location: IOOBUF_X56_Y0_N2
\alu_cont[2]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \cont|AluControl\(2),
	devoe => ww_devoe,
	o => ww_alu_cont(2));

-- Location: IOOBUF_X54_Y0_N19
\alu_result[0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \dpath|Alu|out[0]~0_combout\,
	devoe => ww_devoe,
	o => ww_alu_result(0));

-- Location: IOOBUF_X54_Y0_N53
\alu_result[1]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \dpath|Alu|out[0]~0_combout\,
	devoe => ww_devoe,
	o => ww_alu_result(1));

-- Location: IOOBUF_X52_Y0_N2
\alu_result[2]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \dpath|Alu|out[2]~2_combout\,
	devoe => ww_devoe,
	o => ww_alu_result(2));

-- Location: IOOBUF_X4_Y0_N36
\alu_result[3]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \dpath|Alu|out[3]~3_combout\,
	devoe => ww_devoe,
	o => ww_alu_result(3));

-- Location: IOOBUF_X26_Y0_N42
\alu_result[4]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \dpath|Alu|out[3]~3_combout\,
	devoe => ww_devoe,
	o => ww_alu_result(4));

-- Location: IOOBUF_X34_Y0_N76
\alu_result[5]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \dpath|Alu|out[3]~3_combout\,
	devoe => ww_devoe,
	o => ww_alu_result(5));

-- Location: IOOBUF_X72_Y0_N36
\alu_result[6]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \dpath|Alu|out[3]~3_combout\,
	devoe => ww_devoe,
	o => ww_alu_result(6));

-- Location: IOOBUF_X28_Y0_N19
\alu_result[7]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \dpath|Alu|out[3]~3_combout\,
	devoe => ww_devoe,
	o => ww_alu_result(7));

-- Location: IOOBUF_X34_Y0_N93
\alu_result[8]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \dpath|Alu|out[3]~3_combout\,
	devoe => ww_devoe,
	o => ww_alu_result(8));

-- Location: IOOBUF_X40_Y0_N53
\alu_result[9]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \dpath|Alu|out[3]~3_combout\,
	devoe => ww_devoe,
	o => ww_alu_result(9));

-- Location: IOOBUF_X89_Y4_N79
\alu_result[10]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \dpath|Alu|out[3]~3_combout\,
	devoe => ww_devoe,
	o => ww_alu_result(10));

-- Location: IOOBUF_X4_Y0_N19
\alu_result[11]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \dpath|Alu|out[3]~3_combout\,
	devoe => ww_devoe,
	o => ww_alu_result(11));

-- Location: IOOBUF_X34_Y0_N42
\alu_result[12]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \dpath|Alu|out[3]~3_combout\,
	devoe => ww_devoe,
	o => ww_alu_result(12));

-- Location: IOOBUF_X8_Y0_N2
\alu_result[13]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \dpath|Alu|out[3]~3_combout\,
	devoe => ww_devoe,
	o => ww_alu_result(13));

-- Location: IOOBUF_X26_Y0_N59
\alu_result[14]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \dpath|Alu|out[3]~3_combout\,
	devoe => ww_devoe,
	o => ww_alu_result(14));

-- Location: IOOBUF_X8_Y0_N53
\alu_result[15]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \dpath|Alu|out[3]~3_combout\,
	devoe => ww_devoe,
	o => ww_alu_result(15));

-- Location: IOOBUF_X8_Y0_N19
\alu_result[16]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \dpath|Alu|out[3]~3_combout\,
	devoe => ww_devoe,
	o => ww_alu_result(16));

-- Location: IOOBUF_X28_Y0_N53
\alu_result[17]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \dpath|Alu|out[3]~3_combout\,
	devoe => ww_devoe,
	o => ww_alu_result(17));

-- Location: IOOBUF_X89_Y6_N56
\alu_result[18]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \dpath|Alu|out[3]~3_combout\,
	devoe => ww_devoe,
	o => ww_alu_result(18));

-- Location: IOOBUF_X28_Y0_N2
\alu_result[19]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \dpath|Alu|out[3]~3_combout\,
	devoe => ww_devoe,
	o => ww_alu_result(19));

-- Location: IOOBUF_X38_Y0_N2
\alu_result[20]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \dpath|Alu|out[3]~3_combout\,
	devoe => ww_devoe,
	o => ww_alu_result(20));

-- Location: IOOBUF_X8_Y0_N36
\alu_result[21]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \dpath|Alu|out[3]~3_combout\,
	devoe => ww_devoe,
	o => ww_alu_result(21));

-- Location: IOOBUF_X6_Y0_N36
\alu_result[22]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \dpath|Alu|out[3]~3_combout\,
	devoe => ww_devoe,
	o => ww_alu_result(22));

-- Location: IOOBUF_X4_Y0_N2
\alu_result[23]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \dpath|Alu|out[3]~3_combout\,
	devoe => ww_devoe,
	o => ww_alu_result(23));

-- Location: IOOBUF_X89_Y4_N45
\alu_result[24]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \dpath|Alu|out[3]~3_combout\,
	devoe => ww_devoe,
	o => ww_alu_result(24));

-- Location: IOOBUF_X4_Y0_N53
\alu_result[25]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \dpath|Alu|out[3]~3_combout\,
	devoe => ww_devoe,
	o => ww_alu_result(25));

-- Location: IOOBUF_X26_Y0_N93
\alu_result[26]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \dpath|Alu|out[3]~3_combout\,
	devoe => ww_devoe,
	o => ww_alu_result(26));

-- Location: IOOBUF_X6_Y0_N2
\alu_result[27]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \dpath|Alu|out[3]~3_combout\,
	devoe => ww_devoe,
	o => ww_alu_result(27));

-- Location: IOOBUF_X6_Y0_N19
\alu_result[28]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \dpath|Alu|out[3]~3_combout\,
	devoe => ww_devoe,
	o => ww_alu_result(28));

-- Location: IOOBUF_X34_Y0_N59
\alu_result[29]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \dpath|Alu|out[3]~3_combout\,
	devoe => ww_devoe,
	o => ww_alu_result(29));

-- Location: IOOBUF_X6_Y0_N53
\alu_result[30]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \dpath|Alu|out[3]~3_combout\,
	devoe => ww_devoe,
	o => ww_alu_result(30));

-- Location: IOOBUF_X28_Y0_N36
\alu_result[31]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \dpath|Alu|out[3]~3_combout\,
	devoe => ww_devoe,
	o => ww_alu_result(31));

-- Location: IOOBUF_X54_Y0_N36
\result[0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \dpath|mux_memtoreg|out[0]~0_combout\,
	devoe => ww_devoe,
	o => ww_result(0));

-- Location: IOOBUF_X52_Y0_N36
\result[1]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \dpath|mux_memtoreg|out[1]~1_combout\,
	devoe => ww_devoe,
	o => ww_result(1));

-- Location: IOOBUF_X52_Y0_N53
\result[2]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \dpath|mux_memtoreg|out[2]~2_combout\,
	devoe => ww_devoe,
	o => ww_result(2));

-- Location: IOOBUF_X89_Y36_N5
\result[3]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \dpath|mux_memtoreg|out[3]~3_combout\,
	devoe => ww_devoe,
	o => ww_result(3));

-- Location: IOOBUF_X89_Y36_N56
\result[4]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \dpath|mux_memtoreg|out[3]~3_combout\,
	devoe => ww_devoe,
	o => ww_result(4));

-- Location: IOOBUF_X89_Y37_N22
\result[5]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \dpath|mux_memtoreg|out[3]~3_combout\,
	devoe => ww_devoe,
	o => ww_result(5));

-- Location: IOOBUF_X89_Y9_N56
\result[6]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \dpath|mux_memtoreg|out[3]~3_combout\,
	devoe => ww_devoe,
	o => ww_result(6));

-- Location: IOOBUF_X89_Y6_N5
\result[7]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \dpath|mux_memtoreg|out[3]~3_combout\,
	devoe => ww_devoe,
	o => ww_result(7));

-- Location: IOOBUF_X89_Y8_N22
\result[8]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \dpath|mux_memtoreg|out[3]~3_combout\,
	devoe => ww_devoe,
	o => ww_result(8));

-- Location: IOOBUF_X50_Y0_N76
\result[9]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \dpath|mux_memtoreg|out[3]~3_combout\,
	devoe => ww_devoe,
	o => ww_result(9));

-- Location: IOOBUF_X89_Y8_N5
\result[10]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \dpath|mux_memtoreg|out[3]~3_combout\,
	devoe => ww_devoe,
	o => ww_result(10));

-- Location: IOOBUF_X30_Y0_N36
\result[11]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \dpath|mux_memtoreg|out[3]~3_combout\,
	devoe => ww_devoe,
	o => ww_result(11));

-- Location: IOOBUF_X89_Y36_N39
\result[12]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \dpath|mux_memtoreg|out[3]~3_combout\,
	devoe => ww_devoe,
	o => ww_result(12));

-- Location: IOOBUF_X89_Y4_N62
\result[13]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \dpath|mux_memtoreg|out[3]~3_combout\,
	devoe => ww_devoe,
	o => ww_result(13));

-- Location: IOOBUF_X89_Y36_N22
\result[14]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \dpath|mux_memtoreg|out[3]~3_combout\,
	devoe => ww_devoe,
	o => ww_result(14));

-- Location: IOOBUF_X89_Y35_N45
\result[15]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \dpath|mux_memtoreg|out[3]~3_combout\,
	devoe => ww_devoe,
	o => ww_result(15));

-- Location: IOOBUF_X89_Y6_N22
\result[16]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \dpath|mux_memtoreg|out[3]~3_combout\,
	devoe => ww_devoe,
	o => ww_result(16));

-- Location: IOOBUF_X89_Y37_N5
\result[17]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \dpath|mux_memtoreg|out[3]~3_combout\,
	devoe => ww_devoe,
	o => ww_result(17));

-- Location: IOOBUF_X89_Y9_N39
\result[18]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \dpath|mux_memtoreg|out[3]~3_combout\,
	devoe => ww_devoe,
	o => ww_result(18));

-- Location: IOOBUF_X36_Y0_N53
\result[19]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \dpath|mux_memtoreg|out[3]~3_combout\,
	devoe => ww_devoe,
	o => ww_result(19));

-- Location: IOOBUF_X89_Y37_N39
\result[20]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \dpath|mux_memtoreg|out[3]~3_combout\,
	devoe => ww_devoe,
	o => ww_result(20));

-- Location: IOOBUF_X30_Y0_N2
\result[21]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \dpath|mux_memtoreg|out[3]~3_combout\,
	devoe => ww_devoe,
	o => ww_result(21));

-- Location: IOOBUF_X30_Y0_N19
\result[22]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \dpath|mux_memtoreg|out[3]~3_combout\,
	devoe => ww_devoe,
	o => ww_result(22));

-- Location: IOOBUF_X89_Y6_N39
\result[23]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \dpath|mux_memtoreg|out[3]~3_combout\,
	devoe => ww_devoe,
	o => ww_result(23));

-- Location: IOOBUF_X89_Y35_N96
\result[24]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \dpath|mux_memtoreg|out[3]~3_combout\,
	devoe => ww_devoe,
	o => ww_result(24));

-- Location: IOOBUF_X89_Y9_N5
\result[25]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \dpath|mux_memtoreg|out[3]~3_combout\,
	devoe => ww_devoe,
	o => ww_result(25));

-- Location: IOOBUF_X89_Y9_N22
\result[26]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \dpath|mux_memtoreg|out[3]~3_combout\,
	devoe => ww_devoe,
	o => ww_result(26));

-- Location: IOOBUF_X32_Y0_N36
\result[27]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \dpath|mux_memtoreg|out[3]~3_combout\,
	devoe => ww_devoe,
	o => ww_result(27));

-- Location: IOOBUF_X30_Y0_N53
\result[28]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \dpath|mux_memtoreg|out[3]~3_combout\,
	devoe => ww_devoe,
	o => ww_result(28));

-- Location: IOOBUF_X89_Y37_N56
\result[29]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \dpath|mux_memtoreg|out[3]~3_combout\,
	devoe => ww_devoe,
	o => ww_result(29));

-- Location: IOOBUF_X89_Y8_N39
\result[30]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \dpath|mux_memtoreg|out[3]~3_combout\,
	devoe => ww_devoe,
	o => ww_result(30));

-- Location: IOOBUF_X36_Y0_N19
\result[31]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \dpath|mux_memtoreg|out[3]~3_combout\,
	devoe => ww_devoe,
	o => ww_result(31));

-- Location: IOOBUF_X64_Y81_N19
\rd1[0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_rd1(0));

-- Location: IOOBUF_X62_Y81_N36
\rd1[1]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_rd1(1));

-- Location: IOOBUF_X38_Y0_N19
\rd1[2]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_rd1(2));

-- Location: IOOBUF_X36_Y81_N19
\rd1[3]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_rd1(3));

-- Location: IOOBUF_X32_Y0_N2
\rd1[4]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_rd1(4));

-- Location: IOOBUF_X89_Y35_N79
\rd1[5]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_rd1(5));

-- Location: IOOBUF_X62_Y81_N19
\rd1[6]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_rd1(6));

-- Location: IOOBUF_X36_Y81_N2
\rd1[7]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_rd1(7));

-- Location: IOOBUF_X60_Y81_N19
\rd1[8]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_rd1(8));

-- Location: IOOBUF_X84_Y81_N19
\rd1[9]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_rd1(9));

-- Location: IOOBUF_X64_Y81_N53
\rd1[10]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_rd1(10));

-- Location: IOOBUF_X32_Y81_N53
\rd1[11]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_rd1(11));

-- Location: IOOBUF_X66_Y81_N59
\rd1[12]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_rd1(12));

-- Location: IOOBUF_X74_Y81_N42
\rd1[13]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_rd1(13));

-- Location: IOOBUF_X50_Y81_N59
\rd1[14]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_rd1(14));

-- Location: IOOBUF_X68_Y81_N53
\rd1[15]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_rd1(15));

-- Location: IOOBUF_X26_Y81_N76
\rd1[16]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_rd1(16));

-- Location: IOOBUF_X72_Y81_N53
\rd1[17]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_rd1(17));

-- Location: IOOBUF_X38_Y81_N36
\rd1[18]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_rd1(18));

-- Location: IOOBUF_X72_Y81_N19
\rd1[19]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_rd1(19));

-- Location: IOOBUF_X34_Y81_N93
\rd1[20]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_rd1(20));

-- Location: IOOBUF_X84_Y81_N36
\rd1[21]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_rd1(21));

-- Location: IOOBUF_X50_Y0_N93
\rd1[22]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_rd1(22));

-- Location: IOOBUF_X28_Y81_N19
\rd1[23]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_rd1(23));

-- Location: IOOBUF_X56_Y81_N36
\rd1[24]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_rd1(24));

-- Location: IOOBUF_X72_Y81_N36
\rd1[25]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_rd1(25));

-- Location: IOOBUF_X54_Y81_N19
\rd1[26]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_rd1(26));

-- Location: IOOBUF_X28_Y81_N36
\rd1[27]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_rd1(27));

-- Location: IOOBUF_X38_Y0_N53
\rd1[28]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_rd1(28));

-- Location: IOOBUF_X60_Y81_N2
\rd1[29]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_rd1(29));

-- Location: IOOBUF_X72_Y81_N2
\rd1[30]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_rd1(30));

-- Location: IOOBUF_X34_Y81_N76
\rd1[31]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_rd1(31));

-- Location: IOOBUF_X26_Y0_N76
\rd2[0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_rd2(0));

-- Location: IOOBUF_X28_Y81_N2
\rd2[1]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_rd2(1));

-- Location: IOOBUF_X66_Y81_N42
\rd2[2]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_rd2(2));

-- Location: IOOBUF_X40_Y0_N19
\rd2[3]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_rd2(3));

-- Location: IOOBUF_X32_Y81_N19
\rd2[4]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_rd2(4));

-- Location: IOOBUF_X2_Y0_N59
\rd2[5]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_rd2(5));

-- Location: IOOBUF_X84_Y81_N2
\rd2[6]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_rd2(6));

-- Location: IOOBUF_X54_Y81_N2
\rd2[7]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_rd2(7));

-- Location: IOOBUF_X80_Y81_N19
\rd2[8]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_rd2(8));

-- Location: IOOBUF_X52_Y81_N53
\rd2[9]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_rd2(9));

-- Location: IOOBUF_X40_Y0_N2
\rd2[10]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_rd2(10));

-- Location: IOOBUF_X52_Y81_N19
\rd2[11]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_rd2(11));

-- Location: IOOBUF_X50_Y0_N42
\rd2[12]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_rd2(12));

-- Location: IOOBUF_X36_Y81_N36
\rd2[13]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_rd2(13));

-- Location: IOOBUF_X32_Y81_N36
\rd2[14]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_rd2(14));

-- Location: IOOBUF_X78_Y81_N36
\rd2[15]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_rd2(15));

-- Location: IOOBUF_X28_Y81_N53
\rd2[16]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_rd2(16));

-- Location: IOOBUF_X60_Y81_N53
\rd2[17]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_rd2(17));

-- Location: IOOBUF_X66_Y81_N93
\rd2[18]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_rd2(18));

-- Location: IOOBUF_X52_Y81_N36
\rd2[19]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_rd2(19));

-- Location: IOOBUF_X52_Y81_N2
\rd2[20]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_rd2(20));

-- Location: IOOBUF_X50_Y81_N93
\rd2[21]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_rd2(21));

-- Location: IOOBUF_X86_Y81_N53
\rd2[22]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_rd2(22));

-- Location: IOOBUF_X40_Y81_N36
\rd2[23]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_rd2(23));

-- Location: IOOBUF_X66_Y81_N76
\rd2[24]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_rd2(24));

-- Location: IOOBUF_X58_Y81_N76
\rd2[25]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_rd2(25));

-- Location: IOOBUF_X89_Y4_N96
\rd2[26]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_rd2(26));

-- Location: IOOBUF_X26_Y81_N42
\rd2[27]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_rd2(27));

-- Location: IOOBUF_X40_Y0_N36
\rd2[28]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_rd2(28));

-- Location: IOOBUF_X60_Y81_N36
\rd2[29]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_rd2(29));

-- Location: IOOBUF_X32_Y81_N2
\rd2[30]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_rd2(30));

-- Location: IOOBUF_X30_Y81_N53
\rd2[31]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_rd2(31));

-- Location: IOOBUF_X52_Y0_N19
\comp_flag~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_comp_flag);

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

-- Location: LABCELL_X64_Y2_N0
\dpath|pc_adder|Add0~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \dpath|pc_adder|Add0~1_sumout\ = SUM(( \dpath|PC|out\(2) ) + ( VCC ) + ( !VCC ))
-- \dpath|pc_adder|Add0~2\ = CARRY(( \dpath|PC|out\(2) ) + ( VCC ) + ( !VCC ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \dpath|PC|ALT_INV_out\(2),
	cin => GND,
	sumout => \dpath|pc_adder|Add0~1_sumout\,
	cout => \dpath|pc_adder|Add0~2\);

-- Location: LABCELL_X63_Y2_N18
\dpath|PC|out[2]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \dpath|PC|out[2]~feeder_combout\ = ( \dpath|pc_adder|Add0~1_sumout\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \dpath|pc_adder|ALT_INV_Add0~1_sumout\,
	combout => \dpath|PC|out[2]~feeder_combout\);

-- Location: IOIBUF_X62_Y0_N18
\reset~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_reset,
	o => \reset~input_o\);

-- Location: FF_X63_Y2_N20
\dpath|PC|out[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	d => \dpath|PC|out[2]~feeder_combout\,
	sclr => \reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dpath|PC|out\(2));

-- Location: LABCELL_X64_Y2_N3
\dpath|pc_adder|Add0~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \dpath|pc_adder|Add0~5_sumout\ = SUM(( \dpath|PC|out\(3) ) + ( GND ) + ( \dpath|pc_adder|Add0~2\ ))
-- \dpath|pc_adder|Add0~6\ = CARRY(( \dpath|PC|out\(3) ) + ( GND ) + ( \dpath|pc_adder|Add0~2\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \dpath|PC|ALT_INV_out\(3),
	cin => \dpath|pc_adder|Add0~2\,
	sumout => \dpath|pc_adder|Add0~5_sumout\,
	cout => \dpath|pc_adder|Add0~6\);

-- Location: FF_X64_Y2_N5
\dpath|PC|out[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	d => \dpath|pc_adder|Add0~5_sumout\,
	sclr => \reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dpath|PC|out\(3));

-- Location: LABCELL_X64_Y2_N6
\dpath|pc_adder|Add0~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \dpath|pc_adder|Add0~9_sumout\ = SUM(( \dpath|PC|out\(4) ) + ( GND ) + ( \dpath|pc_adder|Add0~6\ ))
-- \dpath|pc_adder|Add0~10\ = CARRY(( \dpath|PC|out\(4) ) + ( GND ) + ( \dpath|pc_adder|Add0~6\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \dpath|PC|ALT_INV_out\(4),
	cin => \dpath|pc_adder|Add0~6\,
	sumout => \dpath|pc_adder|Add0~9_sumout\,
	cout => \dpath|pc_adder|Add0~10\);

-- Location: FF_X64_Y2_N8
\dpath|PC|out[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	d => \dpath|pc_adder|Add0~9_sumout\,
	sclr => \reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dpath|PC|out\(4));

-- Location: LABCELL_X64_Y2_N9
\dpath|pc_adder|Add0~13\ : cyclonev_lcell_comb
-- Equation(s):
-- \dpath|pc_adder|Add0~13_sumout\ = SUM(( \dpath|PC|out\(5) ) + ( GND ) + ( \dpath|pc_adder|Add0~10\ ))
-- \dpath|pc_adder|Add0~14\ = CARRY(( \dpath|PC|out\(5) ) + ( GND ) + ( \dpath|pc_adder|Add0~10\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \dpath|PC|ALT_INV_out\(5),
	cin => \dpath|pc_adder|Add0~10\,
	sumout => \dpath|pc_adder|Add0~13_sumout\,
	cout => \dpath|pc_adder|Add0~14\);

-- Location: FF_X64_Y2_N11
\dpath|PC|out[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	d => \dpath|pc_adder|Add0~13_sumout\,
	sclr => \reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dpath|PC|out\(5));

-- Location: LABCELL_X64_Y2_N12
\dpath|pc_adder|Add0~17\ : cyclonev_lcell_comb
-- Equation(s):
-- \dpath|pc_adder|Add0~17_sumout\ = SUM(( \dpath|PC|out\(6) ) + ( GND ) + ( \dpath|pc_adder|Add0~14\ ))
-- \dpath|pc_adder|Add0~18\ = CARRY(( \dpath|PC|out\(6) ) + ( GND ) + ( \dpath|pc_adder|Add0~14\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \dpath|PC|ALT_INV_out\(6),
	cin => \dpath|pc_adder|Add0~14\,
	sumout => \dpath|pc_adder|Add0~17_sumout\,
	cout => \dpath|pc_adder|Add0~18\);

-- Location: FF_X64_Y2_N14
\dpath|PC|out[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	d => \dpath|pc_adder|Add0~17_sumout\,
	sclr => \reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dpath|PC|out\(6));

-- Location: LABCELL_X64_Y2_N15
\dpath|pc_adder|Add0~21\ : cyclonev_lcell_comb
-- Equation(s):
-- \dpath|pc_adder|Add0~21_sumout\ = SUM(( \dpath|PC|out\(7) ) + ( GND ) + ( \dpath|pc_adder|Add0~18\ ))
-- \dpath|pc_adder|Add0~22\ = CARRY(( \dpath|PC|out\(7) ) + ( GND ) + ( \dpath|pc_adder|Add0~18\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \dpath|PC|ALT_INV_out\(7),
	cin => \dpath|pc_adder|Add0~18\,
	sumout => \dpath|pc_adder|Add0~21_sumout\,
	cout => \dpath|pc_adder|Add0~22\);

-- Location: FF_X64_Y2_N17
\dpath|PC|out[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	d => \dpath|pc_adder|Add0~21_sumout\,
	sclr => \reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dpath|PC|out\(7));

-- Location: LABCELL_X64_Y2_N18
\dpath|pc_adder|Add0~25\ : cyclonev_lcell_comb
-- Equation(s):
-- \dpath|pc_adder|Add0~25_sumout\ = SUM(( \dpath|PC|out\(8) ) + ( GND ) + ( \dpath|pc_adder|Add0~22\ ))
-- \dpath|pc_adder|Add0~26\ = CARRY(( \dpath|PC|out\(8) ) + ( GND ) + ( \dpath|pc_adder|Add0~22\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \dpath|PC|ALT_INV_out\(8),
	cin => \dpath|pc_adder|Add0~22\,
	sumout => \dpath|pc_adder|Add0~25_sumout\,
	cout => \dpath|pc_adder|Add0~26\);

-- Location: FF_X64_Y2_N20
\dpath|PC|out[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	d => \dpath|pc_adder|Add0~25_sumout\,
	sclr => \reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dpath|PC|out\(8));

-- Location: LABCELL_X64_Y2_N21
\dpath|pc_adder|Add0~29\ : cyclonev_lcell_comb
-- Equation(s):
-- \dpath|pc_adder|Add0~29_sumout\ = SUM(( \dpath|PC|out\(9) ) + ( GND ) + ( \dpath|pc_adder|Add0~26\ ))
-- \dpath|pc_adder|Add0~30\ = CARRY(( \dpath|PC|out\(9) ) + ( GND ) + ( \dpath|pc_adder|Add0~26\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \dpath|PC|ALT_INV_out\(9),
	cin => \dpath|pc_adder|Add0~26\,
	sumout => \dpath|pc_adder|Add0~29_sumout\,
	cout => \dpath|pc_adder|Add0~30\);

-- Location: FF_X64_Y2_N23
\dpath|PC|out[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	d => \dpath|pc_adder|Add0~29_sumout\,
	sclr => \reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dpath|PC|out\(9));

-- Location: LABCELL_X64_Y2_N24
\dpath|pc_adder|Add0~33\ : cyclonev_lcell_comb
-- Equation(s):
-- \dpath|pc_adder|Add0~33_sumout\ = SUM(( \dpath|PC|out\(10) ) + ( GND ) + ( \dpath|pc_adder|Add0~30\ ))
-- \dpath|pc_adder|Add0~34\ = CARRY(( \dpath|PC|out\(10) ) + ( GND ) + ( \dpath|pc_adder|Add0~30\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \dpath|PC|ALT_INV_out\(10),
	cin => \dpath|pc_adder|Add0~30\,
	sumout => \dpath|pc_adder|Add0~33_sumout\,
	cout => \dpath|pc_adder|Add0~34\);

-- Location: FF_X64_Y2_N26
\dpath|PC|out[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	d => \dpath|pc_adder|Add0~33_sumout\,
	sclr => \reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dpath|PC|out\(10));

-- Location: LABCELL_X64_Y2_N27
\dpath|pc_adder|Add0~37\ : cyclonev_lcell_comb
-- Equation(s):
-- \dpath|pc_adder|Add0~37_sumout\ = SUM(( \dpath|PC|out\(11) ) + ( GND ) + ( \dpath|pc_adder|Add0~34\ ))
-- \dpath|pc_adder|Add0~38\ = CARRY(( \dpath|PC|out\(11) ) + ( GND ) + ( \dpath|pc_adder|Add0~34\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \dpath|PC|ALT_INV_out\(11),
	cin => \dpath|pc_adder|Add0~34\,
	sumout => \dpath|pc_adder|Add0~37_sumout\,
	cout => \dpath|pc_adder|Add0~38\);

-- Location: FF_X64_Y2_N29
\dpath|PC|out[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	d => \dpath|pc_adder|Add0~37_sumout\,
	sclr => \reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dpath|PC|out\(11));

-- Location: LABCELL_X64_Y2_N30
\dpath|pc_adder|Add0~41\ : cyclonev_lcell_comb
-- Equation(s):
-- \dpath|pc_adder|Add0~41_sumout\ = SUM(( \dpath|PC|out\(12) ) + ( GND ) + ( \dpath|pc_adder|Add0~38\ ))
-- \dpath|pc_adder|Add0~42\ = CARRY(( \dpath|PC|out\(12) ) + ( GND ) + ( \dpath|pc_adder|Add0~38\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \dpath|PC|ALT_INV_out\(12),
	cin => \dpath|pc_adder|Add0~38\,
	sumout => \dpath|pc_adder|Add0~41_sumout\,
	cout => \dpath|pc_adder|Add0~42\);

-- Location: FF_X64_Y2_N32
\dpath|PC|out[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	d => \dpath|pc_adder|Add0~41_sumout\,
	sclr => \reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dpath|PC|out\(12));

-- Location: LABCELL_X64_Y2_N33
\dpath|pc_adder|Add0~45\ : cyclonev_lcell_comb
-- Equation(s):
-- \dpath|pc_adder|Add0~45_sumout\ = SUM(( \dpath|PC|out\(13) ) + ( GND ) + ( \dpath|pc_adder|Add0~42\ ))
-- \dpath|pc_adder|Add0~46\ = CARRY(( \dpath|PC|out\(13) ) + ( GND ) + ( \dpath|pc_adder|Add0~42\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \dpath|PC|ALT_INV_out\(13),
	cin => \dpath|pc_adder|Add0~42\,
	sumout => \dpath|pc_adder|Add0~45_sumout\,
	cout => \dpath|pc_adder|Add0~46\);

-- Location: FF_X64_Y2_N35
\dpath|PC|out[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	d => \dpath|pc_adder|Add0~45_sumout\,
	sclr => \reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dpath|PC|out\(13));

-- Location: LABCELL_X64_Y2_N36
\dpath|pc_adder|Add0~49\ : cyclonev_lcell_comb
-- Equation(s):
-- \dpath|pc_adder|Add0~49_sumout\ = SUM(( \dpath|PC|out\(14) ) + ( GND ) + ( \dpath|pc_adder|Add0~46\ ))
-- \dpath|pc_adder|Add0~50\ = CARRY(( \dpath|PC|out\(14) ) + ( GND ) + ( \dpath|pc_adder|Add0~46\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \dpath|PC|ALT_INV_out\(14),
	cin => \dpath|pc_adder|Add0~46\,
	sumout => \dpath|pc_adder|Add0~49_sumout\,
	cout => \dpath|pc_adder|Add0~50\);

-- Location: FF_X64_Y2_N38
\dpath|PC|out[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	d => \dpath|pc_adder|Add0~49_sumout\,
	sclr => \reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dpath|PC|out\(14));

-- Location: LABCELL_X64_Y2_N39
\dpath|pc_adder|Add0~53\ : cyclonev_lcell_comb
-- Equation(s):
-- \dpath|pc_adder|Add0~53_sumout\ = SUM(( \dpath|PC|out\(15) ) + ( GND ) + ( \dpath|pc_adder|Add0~50\ ))
-- \dpath|pc_adder|Add0~54\ = CARRY(( \dpath|PC|out\(15) ) + ( GND ) + ( \dpath|pc_adder|Add0~50\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \dpath|PC|ALT_INV_out\(15),
	cin => \dpath|pc_adder|Add0~50\,
	sumout => \dpath|pc_adder|Add0~53_sumout\,
	cout => \dpath|pc_adder|Add0~54\);

-- Location: FF_X64_Y2_N41
\dpath|PC|out[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	d => \dpath|pc_adder|Add0~53_sumout\,
	sclr => \reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dpath|PC|out\(15));

-- Location: LABCELL_X64_Y2_N42
\dpath|pc_adder|Add0~57\ : cyclonev_lcell_comb
-- Equation(s):
-- \dpath|pc_adder|Add0~57_sumout\ = SUM(( \dpath|PC|out\(16) ) + ( GND ) + ( \dpath|pc_adder|Add0~54\ ))
-- \dpath|pc_adder|Add0~58\ = CARRY(( \dpath|PC|out\(16) ) + ( GND ) + ( \dpath|pc_adder|Add0~54\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \dpath|PC|ALT_INV_out\(16),
	cin => \dpath|pc_adder|Add0~54\,
	sumout => \dpath|pc_adder|Add0~57_sumout\,
	cout => \dpath|pc_adder|Add0~58\);

-- Location: FF_X64_Y2_N44
\dpath|PC|out[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	d => \dpath|pc_adder|Add0~57_sumout\,
	sclr => \reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dpath|PC|out\(16));

-- Location: LABCELL_X64_Y2_N45
\dpath|pc_adder|Add0~61\ : cyclonev_lcell_comb
-- Equation(s):
-- \dpath|pc_adder|Add0~61_sumout\ = SUM(( \dpath|PC|out\(17) ) + ( GND ) + ( \dpath|pc_adder|Add0~58\ ))
-- \dpath|pc_adder|Add0~62\ = CARRY(( \dpath|PC|out\(17) ) + ( GND ) + ( \dpath|pc_adder|Add0~58\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \dpath|PC|ALT_INV_out\(17),
	cin => \dpath|pc_adder|Add0~58\,
	sumout => \dpath|pc_adder|Add0~61_sumout\,
	cout => \dpath|pc_adder|Add0~62\);

-- Location: FF_X64_Y2_N47
\dpath|PC|out[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	d => \dpath|pc_adder|Add0~61_sumout\,
	sclr => \reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dpath|PC|out\(17));

-- Location: LABCELL_X64_Y2_N48
\dpath|pc_adder|Add0~65\ : cyclonev_lcell_comb
-- Equation(s):
-- \dpath|pc_adder|Add0~65_sumout\ = SUM(( \dpath|PC|out\(18) ) + ( GND ) + ( \dpath|pc_adder|Add0~62\ ))
-- \dpath|pc_adder|Add0~66\ = CARRY(( \dpath|PC|out\(18) ) + ( GND ) + ( \dpath|pc_adder|Add0~62\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \dpath|PC|ALT_INV_out\(18),
	cin => \dpath|pc_adder|Add0~62\,
	sumout => \dpath|pc_adder|Add0~65_sumout\,
	cout => \dpath|pc_adder|Add0~66\);

-- Location: FF_X64_Y2_N50
\dpath|PC|out[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	d => \dpath|pc_adder|Add0~65_sumout\,
	sclr => \reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dpath|PC|out\(18));

-- Location: LABCELL_X64_Y2_N51
\dpath|pc_adder|Add0~69\ : cyclonev_lcell_comb
-- Equation(s):
-- \dpath|pc_adder|Add0~69_sumout\ = SUM(( \dpath|PC|out\(19) ) + ( GND ) + ( \dpath|pc_adder|Add0~66\ ))
-- \dpath|pc_adder|Add0~70\ = CARRY(( \dpath|PC|out\(19) ) + ( GND ) + ( \dpath|pc_adder|Add0~66\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \dpath|PC|ALT_INV_out\(19),
	cin => \dpath|pc_adder|Add0~66\,
	sumout => \dpath|pc_adder|Add0~69_sumout\,
	cout => \dpath|pc_adder|Add0~70\);

-- Location: FF_X64_Y2_N53
\dpath|PC|out[19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	d => \dpath|pc_adder|Add0~69_sumout\,
	sclr => \reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dpath|PC|out\(19));

-- Location: LABCELL_X64_Y2_N54
\dpath|pc_adder|Add0~73\ : cyclonev_lcell_comb
-- Equation(s):
-- \dpath|pc_adder|Add0~73_sumout\ = SUM(( \dpath|PC|out\(20) ) + ( GND ) + ( \dpath|pc_adder|Add0~70\ ))
-- \dpath|pc_adder|Add0~74\ = CARRY(( \dpath|PC|out\(20) ) + ( GND ) + ( \dpath|pc_adder|Add0~70\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \dpath|PC|ALT_INV_out\(20),
	cin => \dpath|pc_adder|Add0~70\,
	sumout => \dpath|pc_adder|Add0~73_sumout\,
	cout => \dpath|pc_adder|Add0~74\);

-- Location: FF_X64_Y2_N56
\dpath|PC|out[20]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	d => \dpath|pc_adder|Add0~73_sumout\,
	sclr => \reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dpath|PC|out\(20));

-- Location: LABCELL_X64_Y2_N57
\dpath|pc_adder|Add0~77\ : cyclonev_lcell_comb
-- Equation(s):
-- \dpath|pc_adder|Add0~77_sumout\ = SUM(( \dpath|PC|out\(21) ) + ( GND ) + ( \dpath|pc_adder|Add0~74\ ))
-- \dpath|pc_adder|Add0~78\ = CARRY(( \dpath|PC|out\(21) ) + ( GND ) + ( \dpath|pc_adder|Add0~74\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \dpath|PC|ALT_INV_out\(21),
	cin => \dpath|pc_adder|Add0~74\,
	sumout => \dpath|pc_adder|Add0~77_sumout\,
	cout => \dpath|pc_adder|Add0~78\);

-- Location: FF_X64_Y2_N59
\dpath|PC|out[21]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	d => \dpath|pc_adder|Add0~77_sumout\,
	sclr => \reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dpath|PC|out\(21));

-- Location: LABCELL_X64_Y1_N30
\dpath|pc_adder|Add0~81\ : cyclonev_lcell_comb
-- Equation(s):
-- \dpath|pc_adder|Add0~81_sumout\ = SUM(( \dpath|PC|out\(22) ) + ( GND ) + ( \dpath|pc_adder|Add0~78\ ))
-- \dpath|pc_adder|Add0~82\ = CARRY(( \dpath|PC|out\(22) ) + ( GND ) + ( \dpath|pc_adder|Add0~78\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \dpath|PC|ALT_INV_out\(22),
	cin => \dpath|pc_adder|Add0~78\,
	sumout => \dpath|pc_adder|Add0~81_sumout\,
	cout => \dpath|pc_adder|Add0~82\);

-- Location: FF_X64_Y1_N32
\dpath|PC|out[22]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	d => \dpath|pc_adder|Add0~81_sumout\,
	sclr => \reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dpath|PC|out\(22));

-- Location: LABCELL_X64_Y1_N33
\dpath|pc_adder|Add0~85\ : cyclonev_lcell_comb
-- Equation(s):
-- \dpath|pc_adder|Add0~85_sumout\ = SUM(( \dpath|PC|out\(23) ) + ( GND ) + ( \dpath|pc_adder|Add0~82\ ))
-- \dpath|pc_adder|Add0~86\ = CARRY(( \dpath|PC|out\(23) ) + ( GND ) + ( \dpath|pc_adder|Add0~82\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \dpath|PC|ALT_INV_out\(23),
	cin => \dpath|pc_adder|Add0~82\,
	sumout => \dpath|pc_adder|Add0~85_sumout\,
	cout => \dpath|pc_adder|Add0~86\);

-- Location: FF_X64_Y1_N35
\dpath|PC|out[23]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	d => \dpath|pc_adder|Add0~85_sumout\,
	sclr => \reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dpath|PC|out\(23));

-- Location: LABCELL_X64_Y1_N36
\dpath|pc_adder|Add0~89\ : cyclonev_lcell_comb
-- Equation(s):
-- \dpath|pc_adder|Add0~89_sumout\ = SUM(( \dpath|PC|out\(24) ) + ( GND ) + ( \dpath|pc_adder|Add0~86\ ))
-- \dpath|pc_adder|Add0~90\ = CARRY(( \dpath|PC|out\(24) ) + ( GND ) + ( \dpath|pc_adder|Add0~86\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \dpath|PC|ALT_INV_out\(24),
	cin => \dpath|pc_adder|Add0~86\,
	sumout => \dpath|pc_adder|Add0~89_sumout\,
	cout => \dpath|pc_adder|Add0~90\);

-- Location: FF_X64_Y1_N38
\dpath|PC|out[24]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	d => \dpath|pc_adder|Add0~89_sumout\,
	sclr => \reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dpath|PC|out\(24));

-- Location: LABCELL_X64_Y1_N39
\dpath|pc_adder|Add0~93\ : cyclonev_lcell_comb
-- Equation(s):
-- \dpath|pc_adder|Add0~93_sumout\ = SUM(( \dpath|PC|out\(25) ) + ( GND ) + ( \dpath|pc_adder|Add0~90\ ))
-- \dpath|pc_adder|Add0~94\ = CARRY(( \dpath|PC|out\(25) ) + ( GND ) + ( \dpath|pc_adder|Add0~90\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \dpath|PC|ALT_INV_out\(25),
	cin => \dpath|pc_adder|Add0~90\,
	sumout => \dpath|pc_adder|Add0~93_sumout\,
	cout => \dpath|pc_adder|Add0~94\);

-- Location: FF_X64_Y1_N41
\dpath|PC|out[25]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	d => \dpath|pc_adder|Add0~93_sumout\,
	sclr => \reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dpath|PC|out\(25));

-- Location: LABCELL_X64_Y1_N42
\dpath|pc_adder|Add0~97\ : cyclonev_lcell_comb
-- Equation(s):
-- \dpath|pc_adder|Add0~97_sumout\ = SUM(( \dpath|PC|out\(26) ) + ( GND ) + ( \dpath|pc_adder|Add0~94\ ))
-- \dpath|pc_adder|Add0~98\ = CARRY(( \dpath|PC|out\(26) ) + ( GND ) + ( \dpath|pc_adder|Add0~94\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \dpath|PC|ALT_INV_out\(26),
	cin => \dpath|pc_adder|Add0~94\,
	sumout => \dpath|pc_adder|Add0~97_sumout\,
	cout => \dpath|pc_adder|Add0~98\);

-- Location: FF_X64_Y1_N44
\dpath|PC|out[26]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	d => \dpath|pc_adder|Add0~97_sumout\,
	sclr => \reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dpath|PC|out\(26));

-- Location: LABCELL_X64_Y1_N45
\dpath|pc_adder|Add0~101\ : cyclonev_lcell_comb
-- Equation(s):
-- \dpath|pc_adder|Add0~101_sumout\ = SUM(( \dpath|PC|out\(27) ) + ( GND ) + ( \dpath|pc_adder|Add0~98\ ))
-- \dpath|pc_adder|Add0~102\ = CARRY(( \dpath|PC|out\(27) ) + ( GND ) + ( \dpath|pc_adder|Add0~98\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \dpath|PC|ALT_INV_out\(27),
	cin => \dpath|pc_adder|Add0~98\,
	sumout => \dpath|pc_adder|Add0~101_sumout\,
	cout => \dpath|pc_adder|Add0~102\);

-- Location: FF_X64_Y1_N47
\dpath|PC|out[27]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	d => \dpath|pc_adder|Add0~101_sumout\,
	sclr => \reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dpath|PC|out\(27));

-- Location: LABCELL_X64_Y1_N48
\dpath|pc_adder|Add0~105\ : cyclonev_lcell_comb
-- Equation(s):
-- \dpath|pc_adder|Add0~105_sumout\ = SUM(( \dpath|PC|out\(28) ) + ( GND ) + ( \dpath|pc_adder|Add0~102\ ))
-- \dpath|pc_adder|Add0~106\ = CARRY(( \dpath|PC|out\(28) ) + ( GND ) + ( \dpath|pc_adder|Add0~102\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \dpath|PC|ALT_INV_out\(28),
	cin => \dpath|pc_adder|Add0~102\,
	sumout => \dpath|pc_adder|Add0~105_sumout\,
	cout => \dpath|pc_adder|Add0~106\);

-- Location: FF_X64_Y1_N50
\dpath|PC|out[28]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	d => \dpath|pc_adder|Add0~105_sumout\,
	sclr => \reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dpath|PC|out\(28));

-- Location: LABCELL_X64_Y1_N51
\dpath|pc_adder|Add0~109\ : cyclonev_lcell_comb
-- Equation(s):
-- \dpath|pc_adder|Add0~109_sumout\ = SUM(( \dpath|PC|out\(29) ) + ( GND ) + ( \dpath|pc_adder|Add0~106\ ))
-- \dpath|pc_adder|Add0~110\ = CARRY(( \dpath|PC|out\(29) ) + ( GND ) + ( \dpath|pc_adder|Add0~106\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \dpath|PC|ALT_INV_out\(29),
	cin => \dpath|pc_adder|Add0~106\,
	sumout => \dpath|pc_adder|Add0~109_sumout\,
	cout => \dpath|pc_adder|Add0~110\);

-- Location: FF_X64_Y1_N53
\dpath|PC|out[29]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	d => \dpath|pc_adder|Add0~109_sumout\,
	sclr => \reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dpath|PC|out\(29));

-- Location: LABCELL_X64_Y1_N54
\dpath|pc_adder|Add0~113\ : cyclonev_lcell_comb
-- Equation(s):
-- \dpath|pc_adder|Add0~113_sumout\ = SUM(( \dpath|PC|out\(30) ) + ( GND ) + ( \dpath|pc_adder|Add0~110\ ))
-- \dpath|pc_adder|Add0~114\ = CARRY(( \dpath|PC|out\(30) ) + ( GND ) + ( \dpath|pc_adder|Add0~110\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \dpath|PC|ALT_INV_out\(30),
	cin => \dpath|pc_adder|Add0~110\,
	sumout => \dpath|pc_adder|Add0~113_sumout\,
	cout => \dpath|pc_adder|Add0~114\);

-- Location: FF_X64_Y1_N56
\dpath|PC|out[30]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	d => \dpath|pc_adder|Add0~113_sumout\,
	sclr => \reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dpath|PC|out\(30));

-- Location: LABCELL_X64_Y1_N57
\dpath|pc_adder|Add0~117\ : cyclonev_lcell_comb
-- Equation(s):
-- \dpath|pc_adder|Add0~117_sumout\ = SUM(( \dpath|PC|out\(31) ) + ( GND ) + ( \dpath|pc_adder|Add0~114\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \dpath|PC|ALT_INV_out\(31),
	cin => \dpath|pc_adder|Add0~114\,
	sumout => \dpath|pc_adder|Add0~117_sumout\);

-- Location: FF_X64_Y1_N59
\dpath|PC|out[31]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	d => \dpath|pc_adder|Add0~117_sumout\,
	sclr => \reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dpath|PC|out\(31));

-- Location: LABCELL_X63_Y2_N3
\cont|AluControl[0]~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \cont|AluControl[0]~2_combout\ = ( !\dpath|PC|out\(5) & ( !\dpath|PC|out\(4) & ( (\dpath|PC|out\(2) & \dpath|PC|out\(3)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000110011000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \dpath|PC|ALT_INV_out\(2),
	datad => \dpath|PC|ALT_INV_out\(3),
	datae => \dpath|PC|ALT_INV_out\(5),
	dataf => \dpath|PC|ALT_INV_out\(4),
	combout => \cont|AluControl[0]~2_combout\);

-- Location: LABCELL_X63_Y2_N54
\cont|AluControl[2]~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \cont|AluControl[2]~1_combout\ = ( \dpath|PC|out\(3) & ( \dpath|PC|out\(2) ) ) # ( !\dpath|PC|out\(3) & ( \dpath|PC|out\(2) ) ) # ( \dpath|PC|out\(3) & ( !\dpath|PC|out\(2) ) ) # ( !\dpath|PC|out\(3) & ( !\dpath|PC|out\(2) & ( (!\dpath|PC|out\(4)) # 
-- (\dpath|PC|out\(5)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1010111110101111111111111111111111111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \dpath|PC|ALT_INV_out\(4),
	datac => \dpath|PC|ALT_INV_out\(5),
	datae => \dpath|PC|ALT_INV_out\(3),
	dataf => \dpath|PC|ALT_INV_out\(2),
	combout => \cont|AluControl[2]~1_combout\);

-- Location: LABCELL_X63_Y2_N33
\cont|AluControl[0]\ : cyclonev_lcell_comb
-- Equation(s):
-- \cont|AluControl\(0) = ( \cont|AluControl[2]~1_combout\ & ( \cont|AluControl\(0) & ( \cont|AluControl[0]~2_combout\ ) ) ) # ( !\cont|AluControl[2]~1_combout\ & ( \cont|AluControl\(0) ) ) # ( \cont|AluControl[2]~1_combout\ & ( !\cont|AluControl\(0) & ( 
-- \cont|AluControl[0]~2_combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000001100110011001111111111111111110011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \cont|ALT_INV_AluControl[0]~2_combout\,
	datae => \cont|ALT_INV_AluControl[2]~1_combout\,
	dataf => \cont|ALT_INV_AluControl\(0),
	combout => \cont|AluControl\(0));

-- Location: LABCELL_X63_Y2_N39
\cont|comb~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \cont|comb~1_combout\ = ( \dpath|PC|out\(4) & ( !\dpath|PC|out\(3) & ( !\dpath|PC|out\(5) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \dpath|PC|ALT_INV_out\(5),
	datae => \dpath|PC|ALT_INV_out\(4),
	dataf => \dpath|PC|ALT_INV_out\(3),
	combout => \cont|comb~1_combout\);

-- Location: LABCELL_X63_Y2_N24
\cont|AluControl[1]\ : cyclonev_lcell_comb
-- Equation(s):
-- \cont|AluControl\(1) = ( \cont|AluControl[2]~1_combout\ & ( \cont|comb~1_combout\ ) ) # ( !\cont|AluControl[2]~1_combout\ & ( \cont|comb~1_combout\ & ( \cont|AluControl\(1) ) ) ) # ( !\cont|AluControl[2]~1_combout\ & ( !\cont|comb~1_combout\ & ( 
-- \cont|AluControl\(1) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111000000000000000000001111000011111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \cont|ALT_INV_AluControl\(1),
	datae => \cont|ALT_INV_AluControl[2]~1_combout\,
	dataf => \cont|ALT_INV_comb~1_combout\,
	combout => \cont|AluControl\(1));

-- Location: LABCELL_X63_Y2_N51
\cont|AluControl[2]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \cont|AluControl[2]~0_combout\ = ( !\dpath|PC|out\(4) & ( \dpath|PC|out\(3) & ( !\dpath|PC|out\(5) ) ) ) # ( \dpath|PC|out\(4) & ( !\dpath|PC|out\(3) & ( !\dpath|PC|out\(5) ) ) ) # ( !\dpath|PC|out\(4) & ( !\dpath|PC|out\(3) & ( !\dpath|PC|out\(5) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111100000000111111110000000011111111000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \dpath|PC|ALT_INV_out\(5),
	datae => \dpath|PC|ALT_INV_out\(4),
	dataf => \dpath|PC|ALT_INV_out\(3),
	combout => \cont|AluControl[2]~0_combout\);

-- Location: LABCELL_X63_Y2_N45
\cont|AluControl[2]\ : cyclonev_lcell_comb
-- Equation(s):
-- \cont|AluControl\(2) = ( !\cont|AluControl[2]~1_combout\ & ( \cont|AluControl[2]~0_combout\ & ( \cont|AluControl\(2) ) ) ) # ( \cont|AluControl[2]~1_combout\ & ( !\cont|AluControl[2]~0_combout\ ) ) # ( !\cont|AluControl[2]~1_combout\ & ( 
-- !\cont|AluControl[2]~0_combout\ & ( \cont|AluControl\(2) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111111111111111111100001111000011110000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \cont|ALT_INV_AluControl\(2),
	datae => \cont|ALT_INV_AluControl[2]~1_combout\,
	dataf => \cont|ALT_INV_AluControl[2]~0_combout\,
	combout => \cont|AluControl\(2));

-- Location: LABCELL_X57_Y1_N27
\dpath|Alu|out[0]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \dpath|Alu|out[0]~0_combout\ = ( \cont|AluControl\(2) & ( (\cont|AluControl\(0) & \cont|AluControl\(1)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000001010000010100000000000000000000010100000101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \cont|ALT_INV_AluControl\(0),
	datac => \cont|ALT_INV_AluControl\(1),
	datae => \cont|ALT_INV_AluControl\(2),
	combout => \dpath|Alu|out[0]~0_combout\);

-- Location: LABCELL_X57_Y1_N18
\dpath|Alu|out[2]~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \dpath|Alu|out[2]~1_combout\ = ( !\dpath|PC|out\(5) & ( (!\dpath|PC|out\(3) & (!\dpath|PC|out\(4) & \dpath|PC|out\(2))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000010001000000000001000100000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \dpath|PC|ALT_INV_out\(3),
	datab => \dpath|PC|ALT_INV_out\(4),
	datad => \dpath|PC|ALT_INV_out\(2),
	dataf => \dpath|PC|ALT_INV_out\(5),
	combout => \dpath|Alu|out[2]~1_combout\);

-- Location: LABCELL_X57_Y1_N51
\dpath|Alu|out[2]~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \dpath|Alu|out[2]~2_combout\ = ( \cont|AluControl\(2) & ( (!\cont|AluControl\(0) & (\cont|AluControl\(1) & \dpath|Alu|out[2]~1_combout\)) # (\cont|AluControl\(0) & (!\cont|AluControl\(1) $ (!\dpath|Alu|out[2]~1_combout\))) ) ) # ( !\cont|AluControl\(2) & 
-- ( \dpath|Alu|out[2]~1_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011111111000001010101101000000000111111110000010101011010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \cont|ALT_INV_AluControl\(0),
	datac => \cont|ALT_INV_AluControl\(1),
	datad => \dpath|Alu|ALT_INV_out[2]~1_combout\,
	datae => \cont|ALT_INV_AluControl\(2),
	combout => \dpath|Alu|out[2]~2_combout\);

-- Location: LABCELL_X57_Y1_N30
\dpath|Alu|out[3]~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \dpath|Alu|out[3]~3_combout\ = ( \cont|AluControl\(1) & ( \dpath|Alu|out[2]~1_combout\ & ( (\cont|AluControl\(2) & \cont|AluControl\(0)) ) ) ) # ( !\cont|AluControl\(1) & ( \dpath|Alu|out[2]~1_combout\ & ( (!\cont|AluControl\(2) & \cont|AluControl\(0)) ) 
-- ) ) # ( \cont|AluControl\(1) & ( !\dpath|Alu|out[2]~1_combout\ & ( (\cont|AluControl\(2) & \cont|AluControl\(0)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000001010000010100001010000010100000010100000101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \cont|ALT_INV_AluControl\(2),
	datac => \cont|ALT_INV_AluControl\(0),
	datae => \cont|ALT_INV_AluControl\(1),
	dataf => \dpath|Alu|ALT_INV_out[2]~1_combout\,
	combout => \dpath|Alu|out[3]~3_combout\);

-- Location: LABCELL_X57_Y1_N0
\cont|comb~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \cont|comb~0_combout\ = ( \dpath|PC|out\(2) & ( \dpath|PC|out\(3) ) ) # ( !\dpath|PC|out\(2) & ( \dpath|PC|out\(3) ) ) # ( \dpath|PC|out\(2) & ( !\dpath|PC|out\(3) & ( \dpath|PC|out\(5) ) ) ) # ( !\dpath|PC|out\(2) & ( !\dpath|PC|out\(3) & ( 
-- (\dpath|PC|out\(5)) # (\dpath|PC|out\(4)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011111100111111000011110000111111111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \dpath|PC|ALT_INV_out\(4),
	datac => \dpath|PC|ALT_INV_out\(5),
	datae => \dpath|PC|ALT_INV_out\(2),
	dataf => \dpath|PC|ALT_INV_out\(3),
	combout => \cont|comb~0_combout\);

-- Location: LABCELL_X57_Y1_N21
\dpath|inst_mem|content~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \dpath|inst_mem|content~0_combout\ = ( !\dpath|PC|out\(5) & ( (!\dpath|PC|out\(3) & !\dpath|PC|out\(4)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000100010001000100010001000100000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \dpath|PC|ALT_INV_out\(3),
	datab => \dpath|PC|ALT_INV_out\(4),
	dataf => \dpath|PC|ALT_INV_out\(5),
	combout => \dpath|inst_mem|content~0_combout\);

-- Location: LABCELL_X57_Y1_N6
\cont|MemtoReg[0]\ : cyclonev_lcell_comb
-- Equation(s):
-- \cont|MemtoReg\(0) = ( \dpath|inst_mem|content~0_combout\ & ( \cont|MemtoReg\(0) & ( !\cont|comb~0_combout\ ) ) ) # ( !\dpath|inst_mem|content~0_combout\ & ( \cont|MemtoReg\(0) & ( !\cont|comb~0_combout\ ) ) ) # ( \dpath|inst_mem|content~0_combout\ & ( 
-- !\cont|MemtoReg\(0) & ( !\cont|comb~0_combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111100001111000011110000111100001111000011110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \cont|ALT_INV_comb~0_combout\,
	datae => \dpath|inst_mem|ALT_INV_content~0_combout\,
	dataf => \cont|ALT_INV_MemtoReg\(0),
	combout => \cont|MemtoReg\(0));

-- Location: LABCELL_X62_Y1_N12
\cont|MemtoReg[1]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \cont|MemtoReg[1]~0_combout\ = ( \dpath|PC|out\(3) & ( \dpath|PC|out\(5) ) ) # ( !\dpath|PC|out\(3) & ( \dpath|PC|out\(5) ) ) # ( \dpath|PC|out\(3) & ( !\dpath|PC|out\(5) ) ) # ( !\dpath|PC|out\(3) & ( !\dpath|PC|out\(5) & ( (!\dpath|PC|out\(4)) # 
-- (!\dpath|PC|out\(2)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111101011111010111111111111111111111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \dpath|PC|ALT_INV_out\(4),
	datac => \dpath|PC|ALT_INV_out\(2),
	datae => \dpath|PC|ALT_INV_out\(3),
	dataf => \dpath|PC|ALT_INV_out\(5),
	combout => \cont|MemtoReg[1]~0_combout\);

-- Location: LABCELL_X62_Y1_N9
\cont|MemtoReg[1]\ : cyclonev_lcell_comb
-- Equation(s):
-- \cont|MemtoReg\(1) = ( \cont|comb~1_combout\ & ( \cont|MemtoReg\(1) ) ) # ( \cont|comb~1_combout\ & ( !\cont|MemtoReg\(1) & ( \cont|MemtoReg[1]~0_combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000011110000111100000000000000001111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \cont|ALT_INV_MemtoReg[1]~0_combout\,
	datae => \cont|ALT_INV_comb~1_combout\,
	dataf => \cont|ALT_INV_MemtoReg\(1),
	combout => \cont|MemtoReg\(1));

-- Location: LABCELL_X57_Y1_N12
\dpath|mux_memtoreg|out[0]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \dpath|mux_memtoreg|out[0]~0_combout\ = ( !\cont|MemtoReg\(1) & ( \dpath|Alu|out[2]~1_combout\ & ( (\cont|AluControl\(2) & ((!\cont|MemtoReg\(0) & (\cont|AluControl\(0) & \cont|AluControl\(1))) # (\cont|MemtoReg\(0) & (!\cont|AluControl\(0) & 
-- !\cont|AluControl\(1))))) ) ) ) # ( !\cont|MemtoReg\(1) & ( !\dpath|Alu|out[2]~1_combout\ & ( !\cont|MemtoReg\(0) $ (((!\cont|AluControl\(2)) # ((!\cont|AluControl\(0)) # (!\cont|AluControl\(1))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001100110110000000000000000000010000000001000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \cont|ALT_INV_AluControl\(2),
	datab => \cont|ALT_INV_MemtoReg\(0),
	datac => \cont|ALT_INV_AluControl\(0),
	datad => \cont|ALT_INV_AluControl\(1),
	datae => \cont|ALT_INV_MemtoReg\(1),
	dataf => \dpath|Alu|ALT_INV_out[2]~1_combout\,
	combout => \dpath|mux_memtoreg|out[0]~0_combout\);

-- Location: LABCELL_X57_Y1_N54
\dpath|mux_memtoreg|out[1]~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \dpath|mux_memtoreg|out[1]~1_combout\ = ( !\cont|MemtoReg\(1) & ( \dpath|Alu|out[2]~1_combout\ & ( (!\cont|AluControl\(1) & (\cont|MemtoReg\(0) & (!\cont|AluControl\(2) $ (\cont|AluControl\(0))))) # (\cont|AluControl\(1) & (!\cont|MemtoReg\(0) $ 
-- (((!\cont|AluControl\(2)) # (!\cont|AluControl\(0)))))) ) ) ) # ( !\cont|MemtoReg\(1) & ( !\dpath|Alu|out[2]~1_combout\ & ( (\cont|AluControl\(2) & (!\cont|MemtoReg\(0) & (\cont|AluControl\(0) & \cont|AluControl\(1)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000100000000000000000000100001001101100000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \cont|ALT_INV_AluControl\(2),
	datab => \cont|ALT_INV_MemtoReg\(0),
	datac => \cont|ALT_INV_AluControl\(0),
	datad => \cont|ALT_INV_AluControl\(1),
	datae => \cont|ALT_INV_MemtoReg\(1),
	dataf => \dpath|Alu|ALT_INV_out[2]~1_combout\,
	combout => \dpath|mux_memtoreg|out[1]~1_combout\);

-- Location: LABCELL_X57_Y1_N36
\dpath|mux_memtoreg|out[2]~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \dpath|mux_memtoreg|out[2]~2_combout\ = ( !\cont|MemtoReg\(1) & ( \dpath|Alu|out[2]~1_combout\ & ( (!\cont|MemtoReg\(0) & ((!\cont|AluControl\(2)) # (!\cont|AluControl\(0) $ (!\cont|AluControl\(1))))) # (\cont|MemtoReg\(0) & ((!\cont|AluControl\(0)) # 
-- (!\cont|AluControl\(2) $ (!\cont|AluControl\(1))))) ) ) ) # ( !\cont|MemtoReg\(1) & ( !\dpath|Alu|out[2]~1_combout\ & ( !\cont|MemtoReg\(0) $ (((!\cont|AluControl\(2)) # ((!\cont|AluControl\(0)) # (!\cont|AluControl\(1))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001100110110000000000000000010111101111110100000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \cont|ALT_INV_AluControl\(2),
	datab => \cont|ALT_INV_MemtoReg\(0),
	datac => \cont|ALT_INV_AluControl\(0),
	datad => \cont|ALT_INV_AluControl\(1),
	datae => \cont|ALT_INV_MemtoReg\(1),
	dataf => \dpath|Alu|ALT_INV_out[2]~1_combout\,
	combout => \dpath|mux_memtoreg|out[2]~2_combout\);

-- Location: LABCELL_X57_Y1_N42
\dpath|mux_memtoreg|out[3]~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \dpath|mux_memtoreg|out[3]~3_combout\ = ( !\cont|MemtoReg\(1) & ( \dpath|Alu|out[2]~1_combout\ & ( (!\cont|MemtoReg\(0) & (\cont|AluControl\(0) & (!\cont|AluControl\(2) $ (\cont|AluControl\(1))))) ) ) ) # ( !\cont|MemtoReg\(1) & ( 
-- !\dpath|Alu|out[2]~1_combout\ & ( (\cont|AluControl\(2) & (!\cont|MemtoReg\(0) & (\cont|AluControl\(0) & \cont|AluControl\(1)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000100000000000000000000001000000001000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \cont|ALT_INV_AluControl\(2),
	datab => \cont|ALT_INV_MemtoReg\(0),
	datac => \cont|ALT_INV_AluControl\(0),
	datad => \cont|ALT_INV_AluControl\(1),
	datae => \cont|ALT_INV_MemtoReg\(1),
	dataf => \dpath|Alu|ALT_INV_out[2]~1_combout\,
	combout => \dpath|mux_memtoreg|out[3]~3_combout\);

-- Location: MLABCELL_X28_Y76_N3
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


