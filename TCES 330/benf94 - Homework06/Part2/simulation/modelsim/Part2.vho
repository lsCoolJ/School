-- Copyright (C) 1991-2013 Altera Corporation
-- Your use of Altera Corporation's design tools, logic functions 
-- and other software and tools, and its AMPP partner logic 
-- functions, and any output files from any of the foregoing 
-- (including device programming or simulation files), and any 
-- associated documentation or information are expressly subject 
-- to the terms and conditions of the Altera Program License 
-- Subscription Agreement, Altera MegaCore Function License 
-- Agreement, or other applicable license agreement, including, 
-- without limitation, that your use is for the sole purpose of 
-- programming logic devices manufactured by Altera and sold by 
-- Altera or its authorized distributors.  Please refer to the 
-- applicable agreement for further details.

-- VENDOR "Altera"
-- PROGRAM "Quartus II 32-bit"
-- VERSION "Version 13.0.1 Build 232 06/12/2013 Service Pack 1 SJ Web Edition"

-- DATE "05/22/2014 18:17:14"

-- 
-- Device: Altera EP2C35F672C6 Package FBGA672
-- 

-- 
-- This VHDL file should be used for ModelSim-Altera (VHDL) only
-- 

LIBRARY CYCLONEII;
LIBRARY IEEE;
USE CYCLONEII.CYCLONEII_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	Part2 IS
    PORT (
	SW : IN std_logic_vector(17 DOWNTO 0);
	KEY : IN std_logic_vector(0 DOWNTO 0);
	CLOCK_50 : IN std_logic;
	LEDG : OUT std_logic_vector(0 DOWNTO 0);
	LEDR : OUT std_logic_vector(17 DOWNTO 0);
	HEX0 : OUT std_logic_vector(0 TO 6);
	HEX1 : OUT std_logic_vector(0 TO 6);
	HEX2 : OUT std_logic_vector(0 TO 6);
	HEX3 : OUT std_logic_vector(0 TO 6);
	HEX4 : OUT std_logic_vector(0 TO 6);
	HEX5 : OUT std_logic_vector(0 TO 6);
	HEX6 : OUT std_logic_vector(0 TO 6);
	HEX7 : OUT std_logic_vector(0 TO 6)
	);
END Part2;

-- Design Ports Information
-- LEDG[0]	=>  Location: PIN_AE22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- LEDR[0]	=>  Location: PIN_AE23,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- LEDR[1]	=>  Location: PIN_AF23,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- LEDR[2]	=>  Location: PIN_AB21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- LEDR[3]	=>  Location: PIN_AC22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- LEDR[4]	=>  Location: PIN_AD22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- LEDR[5]	=>  Location: PIN_AD23,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- LEDR[6]	=>  Location: PIN_AD21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- LEDR[7]	=>  Location: PIN_AC21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- LEDR[8]	=>  Location: PIN_AA14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- LEDR[9]	=>  Location: PIN_Y13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- LEDR[10]	=>  Location: PIN_AA13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- LEDR[11]	=>  Location: PIN_AC14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- LEDR[12]	=>  Location: PIN_AD15,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- LEDR[13]	=>  Location: PIN_AE15,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- LEDR[14]	=>  Location: PIN_AF13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- LEDR[15]	=>  Location: PIN_AE13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- LEDR[16]	=>  Location: PIN_AE12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- LEDR[17]	=>  Location: PIN_AD12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- HEX0[6]	=>  Location: PIN_V13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- HEX0[5]	=>  Location: PIN_V14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- HEX0[4]	=>  Location: PIN_AE11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- HEX0[3]	=>  Location: PIN_AD11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- HEX0[2]	=>  Location: PIN_AC12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- HEX0[1]	=>  Location: PIN_AB12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- HEX0[0]	=>  Location: PIN_AF10,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- HEX1[6]	=>  Location: PIN_AB24,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- HEX1[5]	=>  Location: PIN_AA23,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- HEX1[4]	=>  Location: PIN_AA24,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- HEX1[3]	=>  Location: PIN_Y22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- HEX1[2]	=>  Location: PIN_W21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- HEX1[1]	=>  Location: PIN_V21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- HEX1[0]	=>  Location: PIN_V20,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- HEX2[6]	=>  Location: PIN_Y24,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- HEX2[5]	=>  Location: PIN_AB25,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- HEX2[4]	=>  Location: PIN_AB26,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- HEX2[3]	=>  Location: PIN_AC26,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- HEX2[2]	=>  Location: PIN_AC25,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- HEX2[1]	=>  Location: PIN_V22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- HEX2[0]	=>  Location: PIN_AB23,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- HEX3[6]	=>  Location: PIN_W24,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- HEX3[5]	=>  Location: PIN_U22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- HEX3[4]	=>  Location: PIN_Y25,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- HEX3[3]	=>  Location: PIN_Y26,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- HEX3[2]	=>  Location: PIN_AA26,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- HEX3[1]	=>  Location: PIN_AA25,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- HEX3[0]	=>  Location: PIN_Y23,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- HEX4[6]	=>  Location: PIN_T3,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- HEX4[5]	=>  Location: PIN_R6,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- HEX4[4]	=>  Location: PIN_R7,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- HEX4[3]	=>  Location: PIN_T4,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- HEX4[2]	=>  Location: PIN_U2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- HEX4[1]	=>  Location: PIN_U1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- HEX4[0]	=>  Location: PIN_U9,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- HEX5[6]	=>  Location: PIN_R3,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- HEX5[5]	=>  Location: PIN_R4,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- HEX5[4]	=>  Location: PIN_R5,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- HEX5[3]	=>  Location: PIN_T9,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- HEX5[2]	=>  Location: PIN_P7,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- HEX5[1]	=>  Location: PIN_P6,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- HEX5[0]	=>  Location: PIN_T2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- HEX6[6]	=>  Location: PIN_M4,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- HEX6[5]	=>  Location: PIN_M5,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- HEX6[4]	=>  Location: PIN_M3,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- HEX6[3]	=>  Location: PIN_M2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- HEX6[2]	=>  Location: PIN_P3,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- HEX6[1]	=>  Location: PIN_P4,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- HEX6[0]	=>  Location: PIN_R2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- HEX7[6]	=>  Location: PIN_N9,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- HEX7[5]	=>  Location: PIN_P9,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- HEX7[4]	=>  Location: PIN_L7,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- HEX7[3]	=>  Location: PIN_L6,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- HEX7[2]	=>  Location: PIN_L9,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- HEX7[1]	=>  Location: PIN_L2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- HEX7[0]	=>  Location: PIN_L3,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- SW[17]	=>  Location: PIN_V2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- SW[0]	=>  Location: PIN_N25,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- SW[1]	=>  Location: PIN_N26,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- SW[2]	=>  Location: PIN_P25,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- SW[3]	=>  Location: PIN_AE14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- SW[4]	=>  Location: PIN_AF14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- SW[5]	=>  Location: PIN_AD13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- SW[6]	=>  Location: PIN_AC13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- SW[7]	=>  Location: PIN_C13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- SW[8]	=>  Location: PIN_B13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- SW[9]	=>  Location: PIN_A13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- SW[10]	=>  Location: PIN_N1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- SW[11]	=>  Location: PIN_P1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- SW[12]	=>  Location: PIN_P2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- SW[13]	=>  Location: PIN_T7,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- SW[14]	=>  Location: PIN_U3,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- SW[15]	=>  Location: PIN_U4,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- SW[16]	=>  Location: PIN_V1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- KEY[0]	=>  Location: PIN_G26,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- CLOCK_50	=>  Location: PIN_N2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default


ARCHITECTURE structure OF Part2 IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_SW : std_logic_vector(17 DOWNTO 0);
SIGNAL ww_KEY : std_logic_vector(0 DOWNTO 0);
SIGNAL ww_CLOCK_50 : std_logic;
SIGNAL ww_LEDG : std_logic_vector(0 DOWNTO 0);
SIGNAL ww_LEDR : std_logic_vector(17 DOWNTO 0);
SIGNAL ww_HEX0 : std_logic_vector(0 TO 6);
SIGNAL ww_HEX1 : std_logic_vector(0 TO 6);
SIGNAL ww_HEX2 : std_logic_vector(0 TO 6);
SIGNAL ww_HEX3 : std_logic_vector(0 TO 6);
SIGNAL ww_HEX4 : std_logic_vector(0 TO 6);
SIGNAL ww_HEX5 : std_logic_vector(0 TO 6);
SIGNAL ww_HEX6 : std_logic_vector(0 TO 6);
SIGNAL ww_HEX7 : std_logic_vector(0 TO 6);
SIGNAL \RLPM|altsyncram_component|auto_generated|ram_block1a0_PORTADATAIN_bus\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \RLPM|altsyncram_component|auto_generated|ram_block1a0_PORTAADDR_bus\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \RLPM|altsyncram_component|auto_generated|ram_block1a0_PORTBADDR_bus\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \RLPM|altsyncram_component|auto_generated|ram_block1a0_PORTBDATAOUT_bus\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \CLOCK_50~clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \U1|auto_generated|counter_comb_bita3~combout\ : std_logic;
SIGNAL \U1|auto_generated|counter_comb_bita7~combout\ : std_logic;
SIGNAL \U1|auto_generated|counter_comb_bita9~combout\ : std_logic;
SIGNAL \U1|auto_generated|counter_comb_bita16~combout\ : std_logic;
SIGNAL \U1|auto_generated|counter_comb_bita18~combout\ : std_logic;
SIGNAL \U1|auto_generated|counter_comb_bita19~combout\ : std_logic;
SIGNAL \U1|auto_generated|counter_comb_bita21~combout\ : std_logic;
SIGNAL \U1|auto_generated|counter_comb_bita24~COUT\ : std_logic;
SIGNAL \U1|auto_generated|counter_comb_bita25~combout\ : std_logic;
SIGNAL \always0~1_combout\ : std_logic;
SIGNAL \always0~5_combout\ : std_logic;
SIGNAL \CLOCK_50~combout\ : std_logic;
SIGNAL \CLOCK_50~clkctrl_outclk\ : std_logic;
SIGNAL \rdAddr[0]~5_combout\ : std_logic;
SIGNAL \U1|auto_generated|counter_comb_bita0~COUT\ : std_logic;
SIGNAL \U1|auto_generated|counter_comb_bita1~combout\ : std_logic;
SIGNAL \ACLR~regout\ : std_logic;
SIGNAL \U1|auto_generated|counter_comb_bita1~COUT\ : std_logic;
SIGNAL \U1|auto_generated|counter_comb_bita2~COUT\ : std_logic;
SIGNAL \U1|auto_generated|counter_comb_bita3~COUT\ : std_logic;
SIGNAL \U1|auto_generated|counter_comb_bita4~combout\ : std_logic;
SIGNAL \U1|auto_generated|counter_comb_bita4~COUT\ : std_logic;
SIGNAL \U1|auto_generated|counter_comb_bita5~combout\ : std_logic;
SIGNAL \U1|auto_generated|counter_comb_bita2~combout\ : std_logic;
SIGNAL \always0~6_combout\ : std_logic;
SIGNAL \U1|auto_generated|counter_comb_bita5~COUT\ : std_logic;
SIGNAL \U1|auto_generated|counter_comb_bita6~combout\ : std_logic;
SIGNAL \U1|auto_generated|counter_comb_bita6~COUT\ : std_logic;
SIGNAL \U1|auto_generated|counter_comb_bita7~COUT\ : std_logic;
SIGNAL \U1|auto_generated|counter_comb_bita8~combout\ : std_logic;
SIGNAL \U1|auto_generated|counter_comb_bita8~COUT\ : std_logic;
SIGNAL \U1|auto_generated|counter_comb_bita9~COUT\ : std_logic;
SIGNAL \U1|auto_generated|counter_comb_bita10~combout\ : std_logic;
SIGNAL \U1|auto_generated|counter_comb_bita10~COUT\ : std_logic;
SIGNAL \U1|auto_generated|counter_comb_bita11~combout\ : std_logic;
SIGNAL \U1|auto_generated|counter_comb_bita11~COUT\ : std_logic;
SIGNAL \U1|auto_generated|counter_comb_bita12~combout\ : std_logic;
SIGNAL \U1|auto_generated|counter_comb_bita12~COUT\ : std_logic;
SIGNAL \U1|auto_generated|counter_comb_bita13~combout\ : std_logic;
SIGNAL \U1|auto_generated|counter_comb_bita13~COUT\ : std_logic;
SIGNAL \U1|auto_generated|counter_comb_bita14~combout\ : std_logic;
SIGNAL \U1|auto_generated|counter_comb_bita14~COUT\ : std_logic;
SIGNAL \U1|auto_generated|counter_comb_bita15~combout\ : std_logic;
SIGNAL \U1|auto_generated|counter_comb_bita15~COUT\ : std_logic;
SIGNAL \U1|auto_generated|counter_comb_bita16~COUT\ : std_logic;
SIGNAL \U1|auto_generated|counter_comb_bita17~combout\ : std_logic;
SIGNAL \U1|auto_generated|counter_comb_bita17~COUT\ : std_logic;
SIGNAL \U1|auto_generated|counter_comb_bita18~COUT\ : std_logic;
SIGNAL \U1|auto_generated|counter_comb_bita19~COUT\ : std_logic;
SIGNAL \U1|auto_generated|counter_comb_bita20~combout\ : std_logic;
SIGNAL \U1|auto_generated|counter_comb_bita20~COUT\ : std_logic;
SIGNAL \U1|auto_generated|counter_comb_bita21~COUT\ : std_logic;
SIGNAL \U1|auto_generated|counter_comb_bita22~combout\ : std_logic;
SIGNAL \U1|auto_generated|counter_comb_bita22~COUT\ : std_logic;
SIGNAL \U1|auto_generated|counter_comb_bita23~combout\ : std_logic;
SIGNAL \U1|auto_generated|counter_comb_bita23~COUT\ : std_logic;
SIGNAL \U1|auto_generated|counter_comb_bita24~combout\ : std_logic;
SIGNAL \always0~0_combout\ : std_logic;
SIGNAL \always0~3_combout\ : std_logic;
SIGNAL \always0~2_combout\ : std_logic;
SIGNAL \always0~4_combout\ : std_logic;
SIGNAL \U1|auto_generated|counter_comb_bita0~combout\ : std_logic;
SIGNAL \always0~7_combout\ : std_logic;
SIGNAL \always0~8_combout\ : std_logic;
SIGNAL \rdAddr[0]~6\ : std_logic;
SIGNAL \rdAddr[1]~7_combout\ : std_logic;
SIGNAL \rdAddr[1]~8\ : std_logic;
SIGNAL \rdAddr[2]~9_combout\ : std_logic;
SIGNAL \rdAddr[2]~10\ : std_logic;
SIGNAL \rdAddr[3]~11_combout\ : std_logic;
SIGNAL \rdAddr[3]~12\ : std_logic;
SIGNAL \rdAddr[4]~13_combout\ : std_logic;
SIGNAL \H0|WideOr6~0_combout\ : std_logic;
SIGNAL \H0|WideOr5~0_combout\ : std_logic;
SIGNAL \H0|WideOr4~0_combout\ : std_logic;
SIGNAL \H0|WideOr3~0_combout\ : std_logic;
SIGNAL \H0|WideOr2~0_combout\ : std_logic;
SIGNAL \H0|WideOr1~0_combout\ : std_logic;
SIGNAL \H0|WideOr0~0_combout\ : std_logic;
SIGNAL \H1|WideOr6~0_combout\ : std_logic;
SIGNAL \H1|WideOr5~0_combout\ : std_logic;
SIGNAL \H1|WideOr4~0_combout\ : std_logic;
SIGNAL \H1|WideOr3~0_combout\ : std_logic;
SIGNAL \H1|WideOr2~0_combout\ : std_logic;
SIGNAL \H1|WideOr1~0_combout\ : std_logic;
SIGNAL \H1|WideOr0~0_combout\ : std_logic;
SIGNAL \H2|WideOr6~0_combout\ : std_logic;
SIGNAL \H2|WideOr5~0_combout\ : std_logic;
SIGNAL \H2|WideOr4~0_combout\ : std_logic;
SIGNAL \H2|WideOr3~0_combout\ : std_logic;
SIGNAL \H2|WideOr2~0_combout\ : std_logic;
SIGNAL \H2|WideOr1~0_combout\ : std_logic;
SIGNAL \H2|WideOr0~0_combout\ : std_logic;
SIGNAL \H4|WideOr6~0_combout\ : std_logic;
SIGNAL \H4|WideOr5~0_combout\ : std_logic;
SIGNAL \H4|WideOr4~0_combout\ : std_logic;
SIGNAL \H4|WideOr3~0_combout\ : std_logic;
SIGNAL \H4|WideOr2~0_combout\ : std_logic;
SIGNAL \H4|WideOr1~0_combout\ : std_logic;
SIGNAL \H4|WideOr0~0_combout\ : std_logic;
SIGNAL \H5|WideOr6~0_combout\ : std_logic;
SIGNAL \H5|WideOr5~0_combout\ : std_logic;
SIGNAL \H5|WideOr4~0_combout\ : std_logic;
SIGNAL \H5|WideOr3~0_combout\ : std_logic;
SIGNAL \H5|WideOr2~0_combout\ : std_logic;
SIGNAL \H5|WideOr1~0_combout\ : std_logic;
SIGNAL \H5|WideOr0~0_combout\ : std_logic;
SIGNAL \H6|WideOr6~0_combout\ : std_logic;
SIGNAL \H6|WideOr5~0_combout\ : std_logic;
SIGNAL \H6|WideOr4~0_combout\ : std_logic;
SIGNAL \H6|WideOr3~0_combout\ : std_logic;
SIGNAL \H6|WideOr2~0_combout\ : std_logic;
SIGNAL \H6|WideOr1~0_combout\ : std_logic;
SIGNAL \H6|WideOr0~0_combout\ : std_logic;
SIGNAL rdAddr : std_logic_vector(4 DOWNTO 0);
SIGNAL \U1|auto_generated|safe_q\ : std_logic_vector(25 DOWNTO 0);
SIGNAL \RLPM|altsyncram_component|auto_generated|q_b\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \KEY~combout\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \SW~combout\ : std_logic_vector(17 DOWNTO 0);
SIGNAL \H6|ALT_INV_WideOr6~0_combout\ : std_logic;
SIGNAL \H5|ALT_INV_WideOr6~0_combout\ : std_logic;
SIGNAL \H4|ALT_INV_WideOr6~0_combout\ : std_logic;
SIGNAL \H2|ALT_INV_WideOr6~0_combout\ : std_logic;
SIGNAL \H1|ALT_INV_WideOr6~0_combout\ : std_logic;
SIGNAL \H0|ALT_INV_WideOr6~0_combout\ : std_logic;
SIGNAL \ALT_INV_KEY~combout\ : std_logic_vector(0 DOWNTO 0);

BEGIN

ww_SW <= SW;
ww_KEY <= KEY;
ww_CLOCK_50 <= CLOCK_50;
LEDG <= ww_LEDG;
LEDR <= ww_LEDR;
HEX0 <= ww_HEX0;
HEX1 <= ww_HEX1;
HEX2 <= ww_HEX2;
HEX3 <= ww_HEX3;
HEX4 <= ww_HEX4;
HEX5 <= ww_HEX5;
HEX6 <= ww_HEX6;
HEX7 <= ww_HEX7;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\RLPM|altsyncram_component|auto_generated|ram_block1a0_PORTADATAIN_bus\ <= (\SW~combout\(7) & \SW~combout\(6) & \SW~combout\(5) & \SW~combout\(4) & \SW~combout\(3) & \SW~combout\(2) & \SW~combout\(1) & \SW~combout\(0));

\RLPM|altsyncram_component|auto_generated|ram_block1a0_PORTAADDR_bus\ <= (\SW~combout\(15) & \SW~combout\(14) & \SW~combout\(13) & \SW~combout\(12) & \SW~combout\(11));

\RLPM|altsyncram_component|auto_generated|ram_block1a0_PORTBADDR_bus\ <= (rdAddr(4) & rdAddr(3) & rdAddr(2) & rdAddr(1) & rdAddr(0));

\RLPM|altsyncram_component|auto_generated|q_b\(0) <= \RLPM|altsyncram_component|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(0);
\RLPM|altsyncram_component|auto_generated|q_b\(1) <= \RLPM|altsyncram_component|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(1);
\RLPM|altsyncram_component|auto_generated|q_b\(2) <= \RLPM|altsyncram_component|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(2);
\RLPM|altsyncram_component|auto_generated|q_b\(3) <= \RLPM|altsyncram_component|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(3);
\RLPM|altsyncram_component|auto_generated|q_b\(4) <= \RLPM|altsyncram_component|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(4);
\RLPM|altsyncram_component|auto_generated|q_b\(5) <= \RLPM|altsyncram_component|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(5);
\RLPM|altsyncram_component|auto_generated|q_b\(6) <= \RLPM|altsyncram_component|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(6);
\RLPM|altsyncram_component|auto_generated|q_b\(7) <= \RLPM|altsyncram_component|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(7);

\CLOCK_50~clkctrl_INCLK_bus\ <= (gnd & gnd & gnd & \CLOCK_50~combout\);
\H6|ALT_INV_WideOr6~0_combout\ <= NOT \H6|WideOr6~0_combout\;
\H5|ALT_INV_WideOr6~0_combout\ <= NOT \H5|WideOr6~0_combout\;
\H4|ALT_INV_WideOr6~0_combout\ <= NOT \H4|WideOr6~0_combout\;
\H2|ALT_INV_WideOr6~0_combout\ <= NOT \H2|WideOr6~0_combout\;
\H1|ALT_INV_WideOr6~0_combout\ <= NOT \H1|WideOr6~0_combout\;
\H0|ALT_INV_WideOr6~0_combout\ <= NOT \H0|WideOr6~0_combout\;
\ALT_INV_KEY~combout\(0) <= NOT \KEY~combout\(0);

-- Location: LCFF_X61_Y3_N25
\U1|auto_generated|counter_reg_bit1a[25]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \U1|auto_generated|counter_comb_bita25~combout\,
	aclr => \ACLR~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \U1|auto_generated|safe_q\(25));

-- Location: LCFF_X61_Y3_N17
\U1|auto_generated|counter_reg_bit1a[21]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \U1|auto_generated|counter_comb_bita21~combout\,
	aclr => \ACLR~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \U1|auto_generated|safe_q\(21));

-- Location: LCFF_X61_Y3_N13
\U1|auto_generated|counter_reg_bit1a[19]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \U1|auto_generated|counter_comb_bita19~combout\,
	aclr => \ACLR~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \U1|auto_generated|safe_q\(19));

-- Location: LCFF_X61_Y3_N11
\U1|auto_generated|counter_reg_bit1a[18]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \U1|auto_generated|counter_comb_bita18~combout\,
	aclr => \ACLR~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \U1|auto_generated|safe_q\(18));

-- Location: LCFF_X61_Y3_N7
\U1|auto_generated|counter_reg_bit1a[16]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \U1|auto_generated|counter_comb_bita16~combout\,
	aclr => \ACLR~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \U1|auto_generated|safe_q\(16));

-- Location: LCFF_X61_Y4_N25
\U1|auto_generated|counter_reg_bit1a[9]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \U1|auto_generated|counter_comb_bita9~combout\,
	aclr => \ACLR~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \U1|auto_generated|safe_q\(9));

-- Location: LCFF_X61_Y4_N21
\U1|auto_generated|counter_reg_bit1a[7]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \U1|auto_generated|counter_comb_bita7~combout\,
	aclr => \ACLR~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \U1|auto_generated|safe_q\(7));

-- Location: LCFF_X61_Y4_N13
\U1|auto_generated|counter_reg_bit1a[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \U1|auto_generated|counter_comb_bita3~combout\,
	aclr => \ACLR~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \U1|auto_generated|safe_q\(3));

-- Location: LCCOMB_X61_Y4_N12
\U1|auto_generated|counter_comb_bita3\ : cycloneii_lcell_comb
-- Equation(s):
-- \U1|auto_generated|counter_comb_bita3~combout\ = (\U1|auto_generated|safe_q\(3) & (!\U1|auto_generated|counter_comb_bita2~COUT\)) # (!\U1|auto_generated|safe_q\(3) & ((\U1|auto_generated|counter_comb_bita2~COUT\) # (GND)))
-- \U1|auto_generated|counter_comb_bita3~COUT\ = CARRY((!\U1|auto_generated|counter_comb_bita2~COUT\) # (!\U1|auto_generated|safe_q\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U1|auto_generated|safe_q\(3),
	datad => VCC,
	cin => \U1|auto_generated|counter_comb_bita2~COUT\,
	combout => \U1|auto_generated|counter_comb_bita3~combout\,
	cout => \U1|auto_generated|counter_comb_bita3~COUT\);

-- Location: LCCOMB_X61_Y4_N20
\U1|auto_generated|counter_comb_bita7\ : cycloneii_lcell_comb
-- Equation(s):
-- \U1|auto_generated|counter_comb_bita7~combout\ = (\U1|auto_generated|safe_q\(7) & (!\U1|auto_generated|counter_comb_bita6~COUT\)) # (!\U1|auto_generated|safe_q\(7) & ((\U1|auto_generated|counter_comb_bita6~COUT\) # (GND)))
-- \U1|auto_generated|counter_comb_bita7~COUT\ = CARRY((!\U1|auto_generated|counter_comb_bita6~COUT\) # (!\U1|auto_generated|safe_q\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U1|auto_generated|safe_q\(7),
	datad => VCC,
	cin => \U1|auto_generated|counter_comb_bita6~COUT\,
	combout => \U1|auto_generated|counter_comb_bita7~combout\,
	cout => \U1|auto_generated|counter_comb_bita7~COUT\);

-- Location: LCCOMB_X61_Y4_N24
\U1|auto_generated|counter_comb_bita9\ : cycloneii_lcell_comb
-- Equation(s):
-- \U1|auto_generated|counter_comb_bita9~combout\ = (\U1|auto_generated|safe_q\(9) & (!\U1|auto_generated|counter_comb_bita8~COUT\)) # (!\U1|auto_generated|safe_q\(9) & ((\U1|auto_generated|counter_comb_bita8~COUT\) # (GND)))
-- \U1|auto_generated|counter_comb_bita9~COUT\ = CARRY((!\U1|auto_generated|counter_comb_bita8~COUT\) # (!\U1|auto_generated|safe_q\(9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U1|auto_generated|safe_q\(9),
	datad => VCC,
	cin => \U1|auto_generated|counter_comb_bita8~COUT\,
	combout => \U1|auto_generated|counter_comb_bita9~combout\,
	cout => \U1|auto_generated|counter_comb_bita9~COUT\);

-- Location: LCCOMB_X61_Y3_N6
\U1|auto_generated|counter_comb_bita16\ : cycloneii_lcell_comb
-- Equation(s):
-- \U1|auto_generated|counter_comb_bita16~combout\ = (\U1|auto_generated|safe_q\(16) & (\U1|auto_generated|counter_comb_bita15~COUT\ $ (GND))) # (!\U1|auto_generated|safe_q\(16) & (!\U1|auto_generated|counter_comb_bita15~COUT\ & VCC))
-- \U1|auto_generated|counter_comb_bita16~COUT\ = CARRY((\U1|auto_generated|safe_q\(16) & !\U1|auto_generated|counter_comb_bita15~COUT\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U1|auto_generated|safe_q\(16),
	datad => VCC,
	cin => \U1|auto_generated|counter_comb_bita15~COUT\,
	combout => \U1|auto_generated|counter_comb_bita16~combout\,
	cout => \U1|auto_generated|counter_comb_bita16~COUT\);

-- Location: LCCOMB_X61_Y3_N10
\U1|auto_generated|counter_comb_bita18\ : cycloneii_lcell_comb
-- Equation(s):
-- \U1|auto_generated|counter_comb_bita18~combout\ = (\U1|auto_generated|safe_q\(18) & (\U1|auto_generated|counter_comb_bita17~COUT\ $ (GND))) # (!\U1|auto_generated|safe_q\(18) & (!\U1|auto_generated|counter_comb_bita17~COUT\ & VCC))
-- \U1|auto_generated|counter_comb_bita18~COUT\ = CARRY((\U1|auto_generated|safe_q\(18) & !\U1|auto_generated|counter_comb_bita17~COUT\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U1|auto_generated|safe_q\(18),
	datad => VCC,
	cin => \U1|auto_generated|counter_comb_bita17~COUT\,
	combout => \U1|auto_generated|counter_comb_bita18~combout\,
	cout => \U1|auto_generated|counter_comb_bita18~COUT\);

-- Location: LCCOMB_X61_Y3_N12
\U1|auto_generated|counter_comb_bita19\ : cycloneii_lcell_comb
-- Equation(s):
-- \U1|auto_generated|counter_comb_bita19~combout\ = (\U1|auto_generated|safe_q\(19) & (!\U1|auto_generated|counter_comb_bita18~COUT\)) # (!\U1|auto_generated|safe_q\(19) & ((\U1|auto_generated|counter_comb_bita18~COUT\) # (GND)))
-- \U1|auto_generated|counter_comb_bita19~COUT\ = CARRY((!\U1|auto_generated|counter_comb_bita18~COUT\) # (!\U1|auto_generated|safe_q\(19)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U1|auto_generated|safe_q\(19),
	datad => VCC,
	cin => \U1|auto_generated|counter_comb_bita18~COUT\,
	combout => \U1|auto_generated|counter_comb_bita19~combout\,
	cout => \U1|auto_generated|counter_comb_bita19~COUT\);

-- Location: LCCOMB_X61_Y3_N16
\U1|auto_generated|counter_comb_bita21\ : cycloneii_lcell_comb
-- Equation(s):
-- \U1|auto_generated|counter_comb_bita21~combout\ = (\U1|auto_generated|safe_q\(21) & (!\U1|auto_generated|counter_comb_bita20~COUT\)) # (!\U1|auto_generated|safe_q\(21) & ((\U1|auto_generated|counter_comb_bita20~COUT\) # (GND)))
-- \U1|auto_generated|counter_comb_bita21~COUT\ = CARRY((!\U1|auto_generated|counter_comb_bita20~COUT\) # (!\U1|auto_generated|safe_q\(21)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U1|auto_generated|safe_q\(21),
	datad => VCC,
	cin => \U1|auto_generated|counter_comb_bita20~COUT\,
	combout => \U1|auto_generated|counter_comb_bita21~combout\,
	cout => \U1|auto_generated|counter_comb_bita21~COUT\);

-- Location: LCCOMB_X61_Y3_N22
\U1|auto_generated|counter_comb_bita24\ : cycloneii_lcell_comb
-- Equation(s):
-- \U1|auto_generated|counter_comb_bita24~combout\ = (\U1|auto_generated|safe_q\(24) & (\U1|auto_generated|counter_comb_bita23~COUT\ $ (GND))) # (!\U1|auto_generated|safe_q\(24) & (!\U1|auto_generated|counter_comb_bita23~COUT\ & VCC))
-- \U1|auto_generated|counter_comb_bita24~COUT\ = CARRY((\U1|auto_generated|safe_q\(24) & !\U1|auto_generated|counter_comb_bita23~COUT\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \U1|auto_generated|safe_q\(24),
	datad => VCC,
	cin => \U1|auto_generated|counter_comb_bita23~COUT\,
	combout => \U1|auto_generated|counter_comb_bita24~combout\,
	cout => \U1|auto_generated|counter_comb_bita24~COUT\);

-- Location: LCCOMB_X61_Y3_N24
\U1|auto_generated|counter_comb_bita25\ : cycloneii_lcell_comb
-- Equation(s):
-- \U1|auto_generated|counter_comb_bita25~combout\ = \U1|auto_generated|safe_q\(25) $ (\U1|auto_generated|counter_comb_bita24~COUT\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U1|auto_generated|safe_q\(25),
	cin => \U1|auto_generated|counter_comb_bita24~COUT\,
	combout => \U1|auto_generated|counter_comb_bita25~combout\);

-- Location: LCCOMB_X61_Y3_N28
\always0~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \always0~1_combout\ = (\U1|auto_generated|safe_q\(18) & (\U1|auto_generated|safe_q\(20) & (\U1|auto_generated|safe_q\(21) & \U1|auto_generated|safe_q\(19))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U1|auto_generated|safe_q\(18),
	datab => \U1|auto_generated|safe_q\(20),
	datac => \U1|auto_generated|safe_q\(21),
	datad => \U1|auto_generated|safe_q\(19),
	combout => \always0~1_combout\);

-- Location: LCCOMB_X61_Y4_N2
\always0~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \always0~5_combout\ = (!\U1|auto_generated|safe_q\(9) & (!\U1|auto_generated|safe_q\(8) & (!\U1|auto_generated|safe_q\(7) & \U1|auto_generated|safe_q\(6))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U1|auto_generated|safe_q\(9),
	datab => \U1|auto_generated|safe_q\(8),
	datac => \U1|auto_generated|safe_q\(7),
	datad => \U1|auto_generated|safe_q\(6),
	combout => \always0~5_combout\);

-- Location: PIN_G26,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\KEY[0]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_KEY(0),
	combout => \KEY~combout\(0));

-- Location: PIN_V2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\SW[17]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_SW(17),
	combout => \SW~combout\(17));

-- Location: PIN_N25,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\SW[0]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_SW(0),
	combout => \SW~combout\(0));

-- Location: PIN_N26,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\SW[1]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_SW(1),
	combout => \SW~combout\(1));

-- Location: PIN_P25,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\SW[2]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_SW(2),
	combout => \SW~combout\(2));

-- Location: PIN_AE14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\SW[3]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_SW(3),
	combout => \SW~combout\(3));

-- Location: PIN_AF14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\SW[4]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_SW(4),
	combout => \SW~combout\(4));

-- Location: PIN_AD13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\SW[5]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_SW(5),
	combout => \SW~combout\(5));

-- Location: PIN_AC13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\SW[6]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_SW(6),
	combout => \SW~combout\(6));

-- Location: PIN_C13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\SW[7]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_SW(7),
	combout => \SW~combout\(7));

-- Location: PIN_B13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\SW[8]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_SW(8),
	combout => \SW~combout\(8));

-- Location: PIN_A13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\SW[9]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_SW(9),
	combout => \SW~combout\(9));

-- Location: PIN_N1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\SW[10]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_SW(10),
	combout => \SW~combout\(10));

-- Location: PIN_P1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\SW[11]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_SW(11),
	combout => \SW~combout\(11));

-- Location: PIN_P2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\SW[12]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_SW(12),
	combout => \SW~combout\(12));

-- Location: PIN_T7,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\SW[13]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_SW(13),
	combout => \SW~combout\(13));

-- Location: PIN_U3,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\SW[14]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_SW(14),
	combout => \SW~combout\(14));

-- Location: PIN_U4,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\SW[15]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_SW(15),
	combout => \SW~combout\(15));

-- Location: PIN_V1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\SW[16]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_SW(16),
	combout => \SW~combout\(16));

-- Location: PIN_N2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\CLOCK_50~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_CLOCK_50,
	combout => \CLOCK_50~combout\);

-- Location: CLKCTRL_G2
\CLOCK_50~clkctrl\ : cycloneii_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \CLOCK_50~clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \CLOCK_50~clkctrl_outclk\);

-- Location: LCCOMB_X62_Y4_N2
\rdAddr[0]~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \rdAddr[0]~5_combout\ = rdAddr(0) $ (VCC)
-- \rdAddr[0]~6\ = CARRY(rdAddr(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => rdAddr(0),
	datad => VCC,
	combout => \rdAddr[0]~5_combout\,
	cout => \rdAddr[0]~6\);

-- Location: LCCOMB_X61_Y4_N6
\U1|auto_generated|counter_comb_bita0\ : cycloneii_lcell_comb
-- Equation(s):
-- \U1|auto_generated|counter_comb_bita0~combout\ = \U1|auto_generated|safe_q\(0) $ (VCC)
-- \U1|auto_generated|counter_comb_bita0~COUT\ = CARRY(\U1|auto_generated|safe_q\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U1|auto_generated|safe_q\(0),
	datad => VCC,
	combout => \U1|auto_generated|counter_comb_bita0~combout\,
	cout => \U1|auto_generated|counter_comb_bita0~COUT\);

-- Location: LCCOMB_X61_Y4_N8
\U1|auto_generated|counter_comb_bita1\ : cycloneii_lcell_comb
-- Equation(s):
-- \U1|auto_generated|counter_comb_bita1~combout\ = (\U1|auto_generated|safe_q\(1) & (!\U1|auto_generated|counter_comb_bita0~COUT\)) # (!\U1|auto_generated|safe_q\(1) & ((\U1|auto_generated|counter_comb_bita0~COUT\) # (GND)))
-- \U1|auto_generated|counter_comb_bita1~COUT\ = CARRY((!\U1|auto_generated|counter_comb_bita0~COUT\) # (!\U1|auto_generated|safe_q\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \U1|auto_generated|safe_q\(1),
	datad => VCC,
	cin => \U1|auto_generated|counter_comb_bita0~COUT\,
	combout => \U1|auto_generated|counter_comb_bita1~combout\,
	cout => \U1|auto_generated|counter_comb_bita1~COUT\);

-- Location: LCFF_X62_Y4_N13
ACLR : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \always0~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \ACLR~regout\);

-- Location: LCFF_X61_Y4_N9
\U1|auto_generated|counter_reg_bit1a[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \U1|auto_generated|counter_comb_bita1~combout\,
	aclr => \ACLR~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \U1|auto_generated|safe_q\(1));

-- Location: LCCOMB_X61_Y4_N10
\U1|auto_generated|counter_comb_bita2\ : cycloneii_lcell_comb
-- Equation(s):
-- \U1|auto_generated|counter_comb_bita2~combout\ = (\U1|auto_generated|safe_q\(2) & (\U1|auto_generated|counter_comb_bita1~COUT\ $ (GND))) # (!\U1|auto_generated|safe_q\(2) & (!\U1|auto_generated|counter_comb_bita1~COUT\ & VCC))
-- \U1|auto_generated|counter_comb_bita2~COUT\ = CARRY((\U1|auto_generated|safe_q\(2) & !\U1|auto_generated|counter_comb_bita1~COUT\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U1|auto_generated|safe_q\(2),
	datad => VCC,
	cin => \U1|auto_generated|counter_comb_bita1~COUT\,
	combout => \U1|auto_generated|counter_comb_bita2~combout\,
	cout => \U1|auto_generated|counter_comb_bita2~COUT\);

-- Location: LCCOMB_X61_Y4_N14
\U1|auto_generated|counter_comb_bita4\ : cycloneii_lcell_comb
-- Equation(s):
-- \U1|auto_generated|counter_comb_bita4~combout\ = (\U1|auto_generated|safe_q\(4) & (\U1|auto_generated|counter_comb_bita3~COUT\ $ (GND))) # (!\U1|auto_generated|safe_q\(4) & (!\U1|auto_generated|counter_comb_bita3~COUT\ & VCC))
-- \U1|auto_generated|counter_comb_bita4~COUT\ = CARRY((\U1|auto_generated|safe_q\(4) & !\U1|auto_generated|counter_comb_bita3~COUT\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \U1|auto_generated|safe_q\(4),
	datad => VCC,
	cin => \U1|auto_generated|counter_comb_bita3~COUT\,
	combout => \U1|auto_generated|counter_comb_bita4~combout\,
	cout => \U1|auto_generated|counter_comb_bita4~COUT\);

-- Location: LCFF_X61_Y4_N15
\U1|auto_generated|counter_reg_bit1a[4]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \U1|auto_generated|counter_comb_bita4~combout\,
	aclr => \ACLR~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \U1|auto_generated|safe_q\(4));

-- Location: LCCOMB_X61_Y4_N16
\U1|auto_generated|counter_comb_bita5\ : cycloneii_lcell_comb
-- Equation(s):
-- \U1|auto_generated|counter_comb_bita5~combout\ = (\U1|auto_generated|safe_q\(5) & (!\U1|auto_generated|counter_comb_bita4~COUT\)) # (!\U1|auto_generated|safe_q\(5) & ((\U1|auto_generated|counter_comb_bita4~COUT\) # (GND)))
-- \U1|auto_generated|counter_comb_bita5~COUT\ = CARRY((!\U1|auto_generated|counter_comb_bita4~COUT\) # (!\U1|auto_generated|safe_q\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U1|auto_generated|safe_q\(5),
	datad => VCC,
	cin => \U1|auto_generated|counter_comb_bita4~COUT\,
	combout => \U1|auto_generated|counter_comb_bita5~combout\,
	cout => \U1|auto_generated|counter_comb_bita5~COUT\);

-- Location: LCFF_X61_Y4_N17
\U1|auto_generated|counter_reg_bit1a[5]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \U1|auto_generated|counter_comb_bita5~combout\,
	aclr => \ACLR~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \U1|auto_generated|safe_q\(5));

-- Location: LCFF_X61_Y4_N11
\U1|auto_generated|counter_reg_bit1a[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \U1|auto_generated|counter_comb_bita2~combout\,
	aclr => \ACLR~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \U1|auto_generated|safe_q\(2));

-- Location: LCCOMB_X61_Y4_N4
\always0~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \always0~6_combout\ = (!\U1|auto_generated|safe_q\(3) & (!\U1|auto_generated|safe_q\(4) & (!\U1|auto_generated|safe_q\(5) & !\U1|auto_generated|safe_q\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U1|auto_generated|safe_q\(3),
	datab => \U1|auto_generated|safe_q\(4),
	datac => \U1|auto_generated|safe_q\(5),
	datad => \U1|auto_generated|safe_q\(2),
	combout => \always0~6_combout\);

-- Location: LCCOMB_X61_Y4_N18
\U1|auto_generated|counter_comb_bita6\ : cycloneii_lcell_comb
-- Equation(s):
-- \U1|auto_generated|counter_comb_bita6~combout\ = (\U1|auto_generated|safe_q\(6) & (\U1|auto_generated|counter_comb_bita5~COUT\ $ (GND))) # (!\U1|auto_generated|safe_q\(6) & (!\U1|auto_generated|counter_comb_bita5~COUT\ & VCC))
-- \U1|auto_generated|counter_comb_bita6~COUT\ = CARRY((\U1|auto_generated|safe_q\(6) & !\U1|auto_generated|counter_comb_bita5~COUT\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \U1|auto_generated|safe_q\(6),
	datad => VCC,
	cin => \U1|auto_generated|counter_comb_bita5~COUT\,
	combout => \U1|auto_generated|counter_comb_bita6~combout\,
	cout => \U1|auto_generated|counter_comb_bita6~COUT\);

-- Location: LCFF_X61_Y4_N19
\U1|auto_generated|counter_reg_bit1a[6]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \U1|auto_generated|counter_comb_bita6~combout\,
	aclr => \ACLR~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \U1|auto_generated|safe_q\(6));

-- Location: LCCOMB_X61_Y4_N22
\U1|auto_generated|counter_comb_bita8\ : cycloneii_lcell_comb
-- Equation(s):
-- \U1|auto_generated|counter_comb_bita8~combout\ = (\U1|auto_generated|safe_q\(8) & (\U1|auto_generated|counter_comb_bita7~COUT\ $ (GND))) # (!\U1|auto_generated|safe_q\(8) & (!\U1|auto_generated|counter_comb_bita7~COUT\ & VCC))
-- \U1|auto_generated|counter_comb_bita8~COUT\ = CARRY((\U1|auto_generated|safe_q\(8) & !\U1|auto_generated|counter_comb_bita7~COUT\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \U1|auto_generated|safe_q\(8),
	datad => VCC,
	cin => \U1|auto_generated|counter_comb_bita7~COUT\,
	combout => \U1|auto_generated|counter_comb_bita8~combout\,
	cout => \U1|auto_generated|counter_comb_bita8~COUT\);

-- Location: LCFF_X61_Y4_N23
\U1|auto_generated|counter_reg_bit1a[8]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \U1|auto_generated|counter_comb_bita8~combout\,
	aclr => \ACLR~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \U1|auto_generated|safe_q\(8));

-- Location: LCCOMB_X61_Y4_N26
\U1|auto_generated|counter_comb_bita10\ : cycloneii_lcell_comb
-- Equation(s):
-- \U1|auto_generated|counter_comb_bita10~combout\ = (\U1|auto_generated|safe_q\(10) & (\U1|auto_generated|counter_comb_bita9~COUT\ $ (GND))) # (!\U1|auto_generated|safe_q\(10) & (!\U1|auto_generated|counter_comb_bita9~COUT\ & VCC))
-- \U1|auto_generated|counter_comb_bita10~COUT\ = CARRY((\U1|auto_generated|safe_q\(10) & !\U1|auto_generated|counter_comb_bita9~COUT\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \U1|auto_generated|safe_q\(10),
	datad => VCC,
	cin => \U1|auto_generated|counter_comb_bita9~COUT\,
	combout => \U1|auto_generated|counter_comb_bita10~combout\,
	cout => \U1|auto_generated|counter_comb_bita10~COUT\);

-- Location: LCFF_X61_Y4_N27
\U1|auto_generated|counter_reg_bit1a[10]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \U1|auto_generated|counter_comb_bita10~combout\,
	aclr => \ACLR~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \U1|auto_generated|safe_q\(10));

-- Location: LCCOMB_X61_Y4_N28
\U1|auto_generated|counter_comb_bita11\ : cycloneii_lcell_comb
-- Equation(s):
-- \U1|auto_generated|counter_comb_bita11~combout\ = (\U1|auto_generated|safe_q\(11) & (!\U1|auto_generated|counter_comb_bita10~COUT\)) # (!\U1|auto_generated|safe_q\(11) & ((\U1|auto_generated|counter_comb_bita10~COUT\) # (GND)))
-- \U1|auto_generated|counter_comb_bita11~COUT\ = CARRY((!\U1|auto_generated|counter_comb_bita10~COUT\) # (!\U1|auto_generated|safe_q\(11)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \U1|auto_generated|safe_q\(11),
	datad => VCC,
	cin => \U1|auto_generated|counter_comb_bita10~COUT\,
	combout => \U1|auto_generated|counter_comb_bita11~combout\,
	cout => \U1|auto_generated|counter_comb_bita11~COUT\);

-- Location: LCFF_X61_Y4_N29
\U1|auto_generated|counter_reg_bit1a[11]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \U1|auto_generated|counter_comb_bita11~combout\,
	aclr => \ACLR~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \U1|auto_generated|safe_q\(11));

-- Location: LCCOMB_X61_Y4_N30
\U1|auto_generated|counter_comb_bita12\ : cycloneii_lcell_comb
-- Equation(s):
-- \U1|auto_generated|counter_comb_bita12~combout\ = (\U1|auto_generated|safe_q\(12) & (\U1|auto_generated|counter_comb_bita11~COUT\ $ (GND))) # (!\U1|auto_generated|safe_q\(12) & (!\U1|auto_generated|counter_comb_bita11~COUT\ & VCC))
-- \U1|auto_generated|counter_comb_bita12~COUT\ = CARRY((\U1|auto_generated|safe_q\(12) & !\U1|auto_generated|counter_comb_bita11~COUT\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \U1|auto_generated|safe_q\(12),
	datad => VCC,
	cin => \U1|auto_generated|counter_comb_bita11~COUT\,
	combout => \U1|auto_generated|counter_comb_bita12~combout\,
	cout => \U1|auto_generated|counter_comb_bita12~COUT\);

-- Location: LCFF_X61_Y4_N31
\U1|auto_generated|counter_reg_bit1a[12]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \U1|auto_generated|counter_comb_bita12~combout\,
	aclr => \ACLR~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \U1|auto_generated|safe_q\(12));

-- Location: LCCOMB_X61_Y3_N0
\U1|auto_generated|counter_comb_bita13\ : cycloneii_lcell_comb
-- Equation(s):
-- \U1|auto_generated|counter_comb_bita13~combout\ = (\U1|auto_generated|safe_q\(13) & (!\U1|auto_generated|counter_comb_bita12~COUT\)) # (!\U1|auto_generated|safe_q\(13) & ((\U1|auto_generated|counter_comb_bita12~COUT\) # (GND)))
-- \U1|auto_generated|counter_comb_bita13~COUT\ = CARRY((!\U1|auto_generated|counter_comb_bita12~COUT\) # (!\U1|auto_generated|safe_q\(13)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \U1|auto_generated|safe_q\(13),
	datad => VCC,
	cin => \U1|auto_generated|counter_comb_bita12~COUT\,
	combout => \U1|auto_generated|counter_comb_bita13~combout\,
	cout => \U1|auto_generated|counter_comb_bita13~COUT\);

-- Location: LCFF_X61_Y3_N1
\U1|auto_generated|counter_reg_bit1a[13]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \U1|auto_generated|counter_comb_bita13~combout\,
	aclr => \ACLR~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \U1|auto_generated|safe_q\(13));

-- Location: LCCOMB_X61_Y3_N2
\U1|auto_generated|counter_comb_bita14\ : cycloneii_lcell_comb
-- Equation(s):
-- \U1|auto_generated|counter_comb_bita14~combout\ = (\U1|auto_generated|safe_q\(14) & (\U1|auto_generated|counter_comb_bita13~COUT\ $ (GND))) # (!\U1|auto_generated|safe_q\(14) & (!\U1|auto_generated|counter_comb_bita13~COUT\ & VCC))
-- \U1|auto_generated|counter_comb_bita14~COUT\ = CARRY((\U1|auto_generated|safe_q\(14) & !\U1|auto_generated|counter_comb_bita13~COUT\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \U1|auto_generated|safe_q\(14),
	datad => VCC,
	cin => \U1|auto_generated|counter_comb_bita13~COUT\,
	combout => \U1|auto_generated|counter_comb_bita14~combout\,
	cout => \U1|auto_generated|counter_comb_bita14~COUT\);

-- Location: LCFF_X61_Y3_N3
\U1|auto_generated|counter_reg_bit1a[14]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \U1|auto_generated|counter_comb_bita14~combout\,
	aclr => \ACLR~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \U1|auto_generated|safe_q\(14));

-- Location: LCCOMB_X61_Y3_N4
\U1|auto_generated|counter_comb_bita15\ : cycloneii_lcell_comb
-- Equation(s):
-- \U1|auto_generated|counter_comb_bita15~combout\ = (\U1|auto_generated|safe_q\(15) & (!\U1|auto_generated|counter_comb_bita14~COUT\)) # (!\U1|auto_generated|safe_q\(15) & ((\U1|auto_generated|counter_comb_bita14~COUT\) # (GND)))
-- \U1|auto_generated|counter_comb_bita15~COUT\ = CARRY((!\U1|auto_generated|counter_comb_bita14~COUT\) # (!\U1|auto_generated|safe_q\(15)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \U1|auto_generated|safe_q\(15),
	datad => VCC,
	cin => \U1|auto_generated|counter_comb_bita14~COUT\,
	combout => \U1|auto_generated|counter_comb_bita15~combout\,
	cout => \U1|auto_generated|counter_comb_bita15~COUT\);

-- Location: LCFF_X61_Y3_N5
\U1|auto_generated|counter_reg_bit1a[15]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \U1|auto_generated|counter_comb_bita15~combout\,
	aclr => \ACLR~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \U1|auto_generated|safe_q\(15));

-- Location: LCCOMB_X61_Y3_N8
\U1|auto_generated|counter_comb_bita17\ : cycloneii_lcell_comb
-- Equation(s):
-- \U1|auto_generated|counter_comb_bita17~combout\ = (\U1|auto_generated|safe_q\(17) & (!\U1|auto_generated|counter_comb_bita16~COUT\)) # (!\U1|auto_generated|safe_q\(17) & ((\U1|auto_generated|counter_comb_bita16~COUT\) # (GND)))
-- \U1|auto_generated|counter_comb_bita17~COUT\ = CARRY((!\U1|auto_generated|counter_comb_bita16~COUT\) # (!\U1|auto_generated|safe_q\(17)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \U1|auto_generated|safe_q\(17),
	datad => VCC,
	cin => \U1|auto_generated|counter_comb_bita16~COUT\,
	combout => \U1|auto_generated|counter_comb_bita17~combout\,
	cout => \U1|auto_generated|counter_comb_bita17~COUT\);

-- Location: LCFF_X61_Y3_N9
\U1|auto_generated|counter_reg_bit1a[17]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \U1|auto_generated|counter_comb_bita17~combout\,
	aclr => \ACLR~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \U1|auto_generated|safe_q\(17));

-- Location: LCCOMB_X61_Y3_N14
\U1|auto_generated|counter_comb_bita20\ : cycloneii_lcell_comb
-- Equation(s):
-- \U1|auto_generated|counter_comb_bita20~combout\ = (\U1|auto_generated|safe_q\(20) & (\U1|auto_generated|counter_comb_bita19~COUT\ $ (GND))) # (!\U1|auto_generated|safe_q\(20) & (!\U1|auto_generated|counter_comb_bita19~COUT\ & VCC))
-- \U1|auto_generated|counter_comb_bita20~COUT\ = CARRY((\U1|auto_generated|safe_q\(20) & !\U1|auto_generated|counter_comb_bita19~COUT\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \U1|auto_generated|safe_q\(20),
	datad => VCC,
	cin => \U1|auto_generated|counter_comb_bita19~COUT\,
	combout => \U1|auto_generated|counter_comb_bita20~combout\,
	cout => \U1|auto_generated|counter_comb_bita20~COUT\);

-- Location: LCFF_X61_Y3_N15
\U1|auto_generated|counter_reg_bit1a[20]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \U1|auto_generated|counter_comb_bita20~combout\,
	aclr => \ACLR~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \U1|auto_generated|safe_q\(20));

-- Location: LCCOMB_X61_Y3_N18
\U1|auto_generated|counter_comb_bita22\ : cycloneii_lcell_comb
-- Equation(s):
-- \U1|auto_generated|counter_comb_bita22~combout\ = (\U1|auto_generated|safe_q\(22) & (\U1|auto_generated|counter_comb_bita21~COUT\ $ (GND))) # (!\U1|auto_generated|safe_q\(22) & (!\U1|auto_generated|counter_comb_bita21~COUT\ & VCC))
-- \U1|auto_generated|counter_comb_bita22~COUT\ = CARRY((\U1|auto_generated|safe_q\(22) & !\U1|auto_generated|counter_comb_bita21~COUT\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \U1|auto_generated|safe_q\(22),
	datad => VCC,
	cin => \U1|auto_generated|counter_comb_bita21~COUT\,
	combout => \U1|auto_generated|counter_comb_bita22~combout\,
	cout => \U1|auto_generated|counter_comb_bita22~COUT\);

-- Location: LCFF_X61_Y3_N19
\U1|auto_generated|counter_reg_bit1a[22]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \U1|auto_generated|counter_comb_bita22~combout\,
	aclr => \ACLR~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \U1|auto_generated|safe_q\(22));

-- Location: LCCOMB_X61_Y3_N20
\U1|auto_generated|counter_comb_bita23\ : cycloneii_lcell_comb
-- Equation(s):
-- \U1|auto_generated|counter_comb_bita23~combout\ = (\U1|auto_generated|safe_q\(23) & (!\U1|auto_generated|counter_comb_bita22~COUT\)) # (!\U1|auto_generated|safe_q\(23) & ((\U1|auto_generated|counter_comb_bita22~COUT\) # (GND)))
-- \U1|auto_generated|counter_comb_bita23~COUT\ = CARRY((!\U1|auto_generated|counter_comb_bita22~COUT\) # (!\U1|auto_generated|safe_q\(23)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U1|auto_generated|safe_q\(23),
	datad => VCC,
	cin => \U1|auto_generated|counter_comb_bita22~COUT\,
	combout => \U1|auto_generated|counter_comb_bita23~combout\,
	cout => \U1|auto_generated|counter_comb_bita23~COUT\);

-- Location: LCFF_X61_Y3_N21
\U1|auto_generated|counter_reg_bit1a[23]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \U1|auto_generated|counter_comb_bita23~combout\,
	aclr => \ACLR~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \U1|auto_generated|safe_q\(23));

-- Location: LCFF_X61_Y3_N23
\U1|auto_generated|counter_reg_bit1a[24]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \U1|auto_generated|counter_comb_bita24~combout\,
	aclr => \ACLR~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \U1|auto_generated|safe_q\(24));

-- Location: LCCOMB_X61_Y3_N26
\always0~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \always0~0_combout\ = (!\U1|auto_generated|safe_q\(25) & (\U1|auto_generated|safe_q\(22) & (!\U1|auto_generated|safe_q\(23) & \U1|auto_generated|safe_q\(24))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U1|auto_generated|safe_q\(25),
	datab => \U1|auto_generated|safe_q\(22),
	datac => \U1|auto_generated|safe_q\(23),
	datad => \U1|auto_generated|safe_q\(24),
	combout => \always0~0_combout\);

-- Location: LCCOMB_X61_Y4_N0
\always0~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \always0~3_combout\ = (\U1|auto_generated|safe_q\(11) & (\U1|auto_generated|safe_q\(12) & (\U1|auto_generated|safe_q\(13) & !\U1|auto_generated|safe_q\(10))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U1|auto_generated|safe_q\(11),
	datab => \U1|auto_generated|safe_q\(12),
	datac => \U1|auto_generated|safe_q\(13),
	datad => \U1|auto_generated|safe_q\(10),
	combout => \always0~3_combout\);

-- Location: LCCOMB_X61_Y3_N30
\always0~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \always0~2_combout\ = (\U1|auto_generated|safe_q\(16) & (!\U1|auto_generated|safe_q\(17) & (!\U1|auto_generated|safe_q\(15) & \U1|auto_generated|safe_q\(14))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U1|auto_generated|safe_q\(16),
	datab => \U1|auto_generated|safe_q\(17),
	datac => \U1|auto_generated|safe_q\(15),
	datad => \U1|auto_generated|safe_q\(14),
	combout => \always0~2_combout\);

-- Location: LCCOMB_X62_Y4_N24
\always0~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \always0~4_combout\ = (\always0~1_combout\ & (\always0~0_combout\ & (\always0~3_combout\ & \always0~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \always0~1_combout\,
	datab => \always0~0_combout\,
	datac => \always0~3_combout\,
	datad => \always0~2_combout\,
	combout => \always0~4_combout\);

-- Location: LCFF_X61_Y4_N7
\U1|auto_generated|counter_reg_bit1a[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \U1|auto_generated|counter_comb_bita0~combout\,
	aclr => \ACLR~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \U1|auto_generated|safe_q\(0));

-- Location: LCCOMB_X62_Y4_N26
\always0~7\ : cycloneii_lcell_comb
-- Equation(s):
-- \always0~7_combout\ = (!\U1|auto_generated|safe_q\(0) & !\U1|auto_generated|safe_q\(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \U1|auto_generated|safe_q\(0),
	datad => \U1|auto_generated|safe_q\(1),
	combout => \always0~7_combout\);

-- Location: LCCOMB_X62_Y4_N12
\always0~8\ : cycloneii_lcell_comb
-- Equation(s):
-- \always0~8_combout\ = (\always0~5_combout\ & (\always0~6_combout\ & (\always0~4_combout\ & \always0~7_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \always0~5_combout\,
	datab => \always0~6_combout\,
	datac => \always0~4_combout\,
	datad => \always0~7_combout\,
	combout => \always0~8_combout\);

-- Location: LCFF_X62_Y4_N3
\rdAddr[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \rdAddr[0]~5_combout\,
	ena => \always0~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => rdAddr(0));

-- Location: LCCOMB_X62_Y4_N4
\rdAddr[1]~7\ : cycloneii_lcell_comb
-- Equation(s):
-- \rdAddr[1]~7_combout\ = (rdAddr(1) & (!\rdAddr[0]~6\)) # (!rdAddr(1) & ((\rdAddr[0]~6\) # (GND)))
-- \rdAddr[1]~8\ = CARRY((!\rdAddr[0]~6\) # (!rdAddr(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => rdAddr(1),
	datad => VCC,
	cin => \rdAddr[0]~6\,
	combout => \rdAddr[1]~7_combout\,
	cout => \rdAddr[1]~8\);

-- Location: LCFF_X62_Y4_N5
\rdAddr[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \rdAddr[1]~7_combout\,
	ena => \always0~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => rdAddr(1));

-- Location: LCCOMB_X62_Y4_N6
\rdAddr[2]~9\ : cycloneii_lcell_comb
-- Equation(s):
-- \rdAddr[2]~9_combout\ = (rdAddr(2) & (\rdAddr[1]~8\ $ (GND))) # (!rdAddr(2) & (!\rdAddr[1]~8\ & VCC))
-- \rdAddr[2]~10\ = CARRY((rdAddr(2) & !\rdAddr[1]~8\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => rdAddr(2),
	datad => VCC,
	cin => \rdAddr[1]~8\,
	combout => \rdAddr[2]~9_combout\,
	cout => \rdAddr[2]~10\);

-- Location: LCFF_X62_Y4_N7
\rdAddr[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \rdAddr[2]~9_combout\,
	ena => \always0~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => rdAddr(2));

-- Location: LCCOMB_X62_Y4_N8
\rdAddr[3]~11\ : cycloneii_lcell_comb
-- Equation(s):
-- \rdAddr[3]~11_combout\ = (rdAddr(3) & (!\rdAddr[2]~10\)) # (!rdAddr(3) & ((\rdAddr[2]~10\) # (GND)))
-- \rdAddr[3]~12\ = CARRY((!\rdAddr[2]~10\) # (!rdAddr(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => rdAddr(3),
	datad => VCC,
	cin => \rdAddr[2]~10\,
	combout => \rdAddr[3]~11_combout\,
	cout => \rdAddr[3]~12\);

-- Location: LCFF_X62_Y4_N9
\rdAddr[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \rdAddr[3]~11_combout\,
	ena => \always0~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => rdAddr(3));

-- Location: LCCOMB_X62_Y4_N10
\rdAddr[4]~13\ : cycloneii_lcell_comb
-- Equation(s):
-- \rdAddr[4]~13_combout\ = \rdAddr[3]~12\ $ (!rdAddr(4))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => rdAddr(4),
	cin => \rdAddr[3]~12\,
	combout => \rdAddr[4]~13_combout\);

-- Location: LCFF_X62_Y4_N11
\rdAddr[4]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \rdAddr[4]~13_combout\,
	ena => \always0~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => rdAddr(4));

-- Location: M4K_X52_Y4
\RLPM|altsyncram_component|auto_generated|ram_block1a0\ : cycloneii_ram_block
-- pragma translate_off
GENERIC MAP (
	mem_init0 => X"1F1E1D1C1B1A191817161514131211100F0E0D0C0B0A09080706050403020100",
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	init_file => "ramlpm.mif",
	init_file_layout => "port_a",
	logical_ram_name => "ramlpm:RLPM|altsyncram:altsyncram_component|altsyncram_6rs1:auto_generated|ALTSYNCRAM",
	mixed_port_feed_through_mode => "dont_care",
	operation_mode => "dual_port",
	port_a_address_clear => "none",
	port_a_address_width => 5,
	port_a_byte_enable_clear => "none",
	port_a_byte_enable_clock => "none",
	port_a_data_in_clear => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "none",
	port_a_data_width => 8,
	port_a_first_address => 0,
	port_a_first_bit_number => 0,
	port_a_last_address => 31,
	port_a_logical_ram_depth => 32,
	port_a_logical_ram_width => 8,
	port_a_write_enable_clear => "none",
	port_b_address_clear => "none",
	port_b_address_clock => "clock0",
	port_b_address_width => 5,
	port_b_byte_enable_clear => "none",
	port_b_data_in_clear => "none",
	port_b_data_out_clear => "none",
	port_b_data_out_clock => "none",
	port_b_data_width => 8,
	port_b_first_address => 0,
	port_b_first_bit_number => 0,
	port_b_last_address => 31,
	port_b_logical_ram_depth => 32,
	port_b_logical_ram_width => 8,
	port_b_read_enable_write_enable_clear => "none",
	port_b_read_enable_write_enable_clock => "clock0",
	ram_block_type => "M4K",
	safe_write => "err_on_2clk")
-- pragma translate_on
PORT MAP (
	portawe => \ALT_INV_KEY~combout\(0),
	portbrewe => VCC,
	clk0 => \CLOCK_50~clkctrl_outclk\,
	portadatain => \RLPM|altsyncram_component|auto_generated|ram_block1a0_PORTADATAIN_bus\,
	portaaddr => \RLPM|altsyncram_component|auto_generated|ram_block1a0_PORTAADDR_bus\,
	portbaddr => \RLPM|altsyncram_component|auto_generated|ram_block1a0_PORTBADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portbdataout => \RLPM|altsyncram_component|auto_generated|ram_block1a0_PORTBDATAOUT_bus\);

-- Location: LCCOMB_X28_Y4_N8
\H0|WideOr6~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \H0|WideOr6~0_combout\ = (\RLPM|altsyncram_component|auto_generated|q_b\(0) & ((\RLPM|altsyncram_component|auto_generated|q_b\(3)) # (\RLPM|altsyncram_component|auto_generated|q_b\(2) $ (\RLPM|altsyncram_component|auto_generated|q_b\(1))))) # 
-- (!\RLPM|altsyncram_component|auto_generated|q_b\(0) & ((\RLPM|altsyncram_component|auto_generated|q_b\(1)) # (\RLPM|altsyncram_component|auto_generated|q_b\(2) $ (\RLPM|altsyncram_component|auto_generated|q_b\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111011011011110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RLPM|altsyncram_component|auto_generated|q_b\(2),
	datab => \RLPM|altsyncram_component|auto_generated|q_b\(1),
	datac => \RLPM|altsyncram_component|auto_generated|q_b\(3),
	datad => \RLPM|altsyncram_component|auto_generated|q_b\(0),
	combout => \H0|WideOr6~0_combout\);

-- Location: LCCOMB_X28_Y4_N10
\H0|WideOr5~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \H0|WideOr5~0_combout\ = (\RLPM|altsyncram_component|auto_generated|q_b\(2) & (\RLPM|altsyncram_component|auto_generated|q_b\(0) & (\RLPM|altsyncram_component|auto_generated|q_b\(1) $ (\RLPM|altsyncram_component|auto_generated|q_b\(3))))) # 
-- (!\RLPM|altsyncram_component|auto_generated|q_b\(2) & (!\RLPM|altsyncram_component|auto_generated|q_b\(3) & ((\RLPM|altsyncram_component|auto_generated|q_b\(1)) # (\RLPM|altsyncram_component|auto_generated|q_b\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010110100000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RLPM|altsyncram_component|auto_generated|q_b\(2),
	datab => \RLPM|altsyncram_component|auto_generated|q_b\(1),
	datac => \RLPM|altsyncram_component|auto_generated|q_b\(3),
	datad => \RLPM|altsyncram_component|auto_generated|q_b\(0),
	combout => \H0|WideOr5~0_combout\);

-- Location: LCCOMB_X28_Y4_N12
\H0|WideOr4~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \H0|WideOr4~0_combout\ = (\RLPM|altsyncram_component|auto_generated|q_b\(1) & (((!\RLPM|altsyncram_component|auto_generated|q_b\(3) & \RLPM|altsyncram_component|auto_generated|q_b\(0))))) # (!\RLPM|altsyncram_component|auto_generated|q_b\(1) & 
-- ((\RLPM|altsyncram_component|auto_generated|q_b\(2) & (!\RLPM|altsyncram_component|auto_generated|q_b\(3))) # (!\RLPM|altsyncram_component|auto_generated|q_b\(2) & ((\RLPM|altsyncram_component|auto_generated|q_b\(0))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001111100000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RLPM|altsyncram_component|auto_generated|q_b\(2),
	datab => \RLPM|altsyncram_component|auto_generated|q_b\(1),
	datac => \RLPM|altsyncram_component|auto_generated|q_b\(3),
	datad => \RLPM|altsyncram_component|auto_generated|q_b\(0),
	combout => \H0|WideOr4~0_combout\);

-- Location: LCCOMB_X28_Y4_N22
\H0|WideOr3~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \H0|WideOr3~0_combout\ = (\RLPM|altsyncram_component|auto_generated|q_b\(1) & ((\RLPM|altsyncram_component|auto_generated|q_b\(2) & ((\RLPM|altsyncram_component|auto_generated|q_b\(0)))) # (!\RLPM|altsyncram_component|auto_generated|q_b\(2) & 
-- (\RLPM|altsyncram_component|auto_generated|q_b\(3) & !\RLPM|altsyncram_component|auto_generated|q_b\(0))))) # (!\RLPM|altsyncram_component|auto_generated|q_b\(1) & (!\RLPM|altsyncram_component|auto_generated|q_b\(3) & 
-- (\RLPM|altsyncram_component|auto_generated|q_b\(2) $ (\RLPM|altsyncram_component|auto_generated|q_b\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100101000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RLPM|altsyncram_component|auto_generated|q_b\(2),
	datab => \RLPM|altsyncram_component|auto_generated|q_b\(1),
	datac => \RLPM|altsyncram_component|auto_generated|q_b\(3),
	datad => \RLPM|altsyncram_component|auto_generated|q_b\(0),
	combout => \H0|WideOr3~0_combout\);

-- Location: LCCOMB_X28_Y4_N0
\H0|WideOr2~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \H0|WideOr2~0_combout\ = (\RLPM|altsyncram_component|auto_generated|q_b\(2) & (\RLPM|altsyncram_component|auto_generated|q_b\(3) & ((\RLPM|altsyncram_component|auto_generated|q_b\(1)) # (!\RLPM|altsyncram_component|auto_generated|q_b\(0))))) # 
-- (!\RLPM|altsyncram_component|auto_generated|q_b\(2) & (\RLPM|altsyncram_component|auto_generated|q_b\(1) & (!\RLPM|altsyncram_component|auto_generated|q_b\(3) & !\RLPM|altsyncram_component|auto_generated|q_b\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000010100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RLPM|altsyncram_component|auto_generated|q_b\(2),
	datab => \RLPM|altsyncram_component|auto_generated|q_b\(1),
	datac => \RLPM|altsyncram_component|auto_generated|q_b\(3),
	datad => \RLPM|altsyncram_component|auto_generated|q_b\(0),
	combout => \H0|WideOr2~0_combout\);

-- Location: LCCOMB_X28_Y4_N2
\H0|WideOr1~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \H0|WideOr1~0_combout\ = (\RLPM|altsyncram_component|auto_generated|q_b\(1) & ((\RLPM|altsyncram_component|auto_generated|q_b\(0) & ((\RLPM|altsyncram_component|auto_generated|q_b\(3)))) # (!\RLPM|altsyncram_component|auto_generated|q_b\(0) & 
-- (\RLPM|altsyncram_component|auto_generated|q_b\(2))))) # (!\RLPM|altsyncram_component|auto_generated|q_b\(1) & (\RLPM|altsyncram_component|auto_generated|q_b\(2) & (\RLPM|altsyncram_component|auto_generated|q_b\(3) $ 
-- (\RLPM|altsyncram_component|auto_generated|q_b\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001010101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RLPM|altsyncram_component|auto_generated|q_b\(2),
	datab => \RLPM|altsyncram_component|auto_generated|q_b\(1),
	datac => \RLPM|altsyncram_component|auto_generated|q_b\(3),
	datad => \RLPM|altsyncram_component|auto_generated|q_b\(0),
	combout => \H0|WideOr1~0_combout\);

-- Location: LCCOMB_X28_Y4_N28
\H0|WideOr0~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \H0|WideOr0~0_combout\ = (\RLPM|altsyncram_component|auto_generated|q_b\(2) & (!\RLPM|altsyncram_component|auto_generated|q_b\(1) & (\RLPM|altsyncram_component|auto_generated|q_b\(3) $ (!\RLPM|altsyncram_component|auto_generated|q_b\(0))))) # 
-- (!\RLPM|altsyncram_component|auto_generated|q_b\(2) & (\RLPM|altsyncram_component|auto_generated|q_b\(0) & (\RLPM|altsyncram_component|auto_generated|q_b\(1) $ (!\RLPM|altsyncram_component|auto_generated|q_b\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110000100000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RLPM|altsyncram_component|auto_generated|q_b\(2),
	datab => \RLPM|altsyncram_component|auto_generated|q_b\(1),
	datac => \RLPM|altsyncram_component|auto_generated|q_b\(3),
	datad => \RLPM|altsyncram_component|auto_generated|q_b\(0),
	combout => \H0|WideOr0~0_combout\);

-- Location: LCCOMB_X64_Y4_N0
\H1|WideOr6~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \H1|WideOr6~0_combout\ = (\RLPM|altsyncram_component|auto_generated|q_b\(4) & ((\RLPM|altsyncram_component|auto_generated|q_b\(7)) # (\RLPM|altsyncram_component|auto_generated|q_b\(6) $ (\RLPM|altsyncram_component|auto_generated|q_b\(5))))) # 
-- (!\RLPM|altsyncram_component|auto_generated|q_b\(4) & ((\RLPM|altsyncram_component|auto_generated|q_b\(5)) # (\RLPM|altsyncram_component|auto_generated|q_b\(6) $ (\RLPM|altsyncram_component|auto_generated|q_b\(7)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111011111011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RLPM|altsyncram_component|auto_generated|q_b\(6),
	datab => \RLPM|altsyncram_component|auto_generated|q_b\(4),
	datac => \RLPM|altsyncram_component|auto_generated|q_b\(7),
	datad => \RLPM|altsyncram_component|auto_generated|q_b\(5),
	combout => \H1|WideOr6~0_combout\);

-- Location: LCCOMB_X64_Y4_N2
\H1|WideOr5~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \H1|WideOr5~0_combout\ = (\RLPM|altsyncram_component|auto_generated|q_b\(6) & (\RLPM|altsyncram_component|auto_generated|q_b\(4) & (\RLPM|altsyncram_component|auto_generated|q_b\(7) $ (\RLPM|altsyncram_component|auto_generated|q_b\(5))))) # 
-- (!\RLPM|altsyncram_component|auto_generated|q_b\(6) & (!\RLPM|altsyncram_component|auto_generated|q_b\(7) & ((\RLPM|altsyncram_component|auto_generated|q_b\(4)) # (\RLPM|altsyncram_component|auto_generated|q_b\(5)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110110000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RLPM|altsyncram_component|auto_generated|q_b\(6),
	datab => \RLPM|altsyncram_component|auto_generated|q_b\(4),
	datac => \RLPM|altsyncram_component|auto_generated|q_b\(7),
	datad => \RLPM|altsyncram_component|auto_generated|q_b\(5),
	combout => \H1|WideOr5~0_combout\);

-- Location: LCCOMB_X64_Y4_N28
\H1|WideOr4~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \H1|WideOr4~0_combout\ = (\RLPM|altsyncram_component|auto_generated|q_b\(5) & (((\RLPM|altsyncram_component|auto_generated|q_b\(4) & !\RLPM|altsyncram_component|auto_generated|q_b\(7))))) # (!\RLPM|altsyncram_component|auto_generated|q_b\(5) & 
-- ((\RLPM|altsyncram_component|auto_generated|q_b\(6) & ((!\RLPM|altsyncram_component|auto_generated|q_b\(7)))) # (!\RLPM|altsyncram_component|auto_generated|q_b\(6) & (\RLPM|altsyncram_component|auto_generated|q_b\(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110001001110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RLPM|altsyncram_component|auto_generated|q_b\(6),
	datab => \RLPM|altsyncram_component|auto_generated|q_b\(4),
	datac => \RLPM|altsyncram_component|auto_generated|q_b\(7),
	datad => \RLPM|altsyncram_component|auto_generated|q_b\(5),
	combout => \H1|WideOr4~0_combout\);

-- Location: LCCOMB_X64_Y4_N30
\H1|WideOr3~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \H1|WideOr3~0_combout\ = (\RLPM|altsyncram_component|auto_generated|q_b\(5) & ((\RLPM|altsyncram_component|auto_generated|q_b\(6) & (\RLPM|altsyncram_component|auto_generated|q_b\(4))) # (!\RLPM|altsyncram_component|auto_generated|q_b\(6) & 
-- (!\RLPM|altsyncram_component|auto_generated|q_b\(4) & \RLPM|altsyncram_component|auto_generated|q_b\(7))))) # (!\RLPM|altsyncram_component|auto_generated|q_b\(5) & (!\RLPM|altsyncram_component|auto_generated|q_b\(7) & 
-- (\RLPM|altsyncram_component|auto_generated|q_b\(6) $ (\RLPM|altsyncram_component|auto_generated|q_b\(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001100000000110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RLPM|altsyncram_component|auto_generated|q_b\(6),
	datab => \RLPM|altsyncram_component|auto_generated|q_b\(4),
	datac => \RLPM|altsyncram_component|auto_generated|q_b\(7),
	datad => \RLPM|altsyncram_component|auto_generated|q_b\(5),
	combout => \H1|WideOr3~0_combout\);

-- Location: LCCOMB_X64_Y4_N16
\H1|WideOr2~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \H1|WideOr2~0_combout\ = (\RLPM|altsyncram_component|auto_generated|q_b\(6) & (\RLPM|altsyncram_component|auto_generated|q_b\(7) & ((\RLPM|altsyncram_component|auto_generated|q_b\(5)) # (!\RLPM|altsyncram_component|auto_generated|q_b\(4))))) # 
-- (!\RLPM|altsyncram_component|auto_generated|q_b\(6) & (!\RLPM|altsyncram_component|auto_generated|q_b\(4) & (!\RLPM|altsyncram_component|auto_generated|q_b\(7) & \RLPM|altsyncram_component|auto_generated|q_b\(5))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000100100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RLPM|altsyncram_component|auto_generated|q_b\(6),
	datab => \RLPM|altsyncram_component|auto_generated|q_b\(4),
	datac => \RLPM|altsyncram_component|auto_generated|q_b\(7),
	datad => \RLPM|altsyncram_component|auto_generated|q_b\(5),
	combout => \H1|WideOr2~0_combout\);

-- Location: LCCOMB_X64_Y4_N26
\H1|WideOr1~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \H1|WideOr1~0_combout\ = (\RLPM|altsyncram_component|auto_generated|q_b\(7) & ((\RLPM|altsyncram_component|auto_generated|q_b\(4) & ((\RLPM|altsyncram_component|auto_generated|q_b\(5)))) # (!\RLPM|altsyncram_component|auto_generated|q_b\(4) & 
-- (\RLPM|altsyncram_component|auto_generated|q_b\(6))))) # (!\RLPM|altsyncram_component|auto_generated|q_b\(7) & (\RLPM|altsyncram_component|auto_generated|q_b\(6) & (\RLPM|altsyncram_component|auto_generated|q_b\(4) $ 
-- (\RLPM|altsyncram_component|auto_generated|q_b\(5)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001000101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RLPM|altsyncram_component|auto_generated|q_b\(6),
	datab => \RLPM|altsyncram_component|auto_generated|q_b\(4),
	datac => \RLPM|altsyncram_component|auto_generated|q_b\(7),
	datad => \RLPM|altsyncram_component|auto_generated|q_b\(5),
	combout => \H1|WideOr1~0_combout\);

-- Location: LCCOMB_X64_Y4_N12
\H1|WideOr0~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \H1|WideOr0~0_combout\ = (\RLPM|altsyncram_component|auto_generated|q_b\(6) & (!\RLPM|altsyncram_component|auto_generated|q_b\(5) & (\RLPM|altsyncram_component|auto_generated|q_b\(4) $ (!\RLPM|altsyncram_component|auto_generated|q_b\(7))))) # 
-- (!\RLPM|altsyncram_component|auto_generated|q_b\(6) & (\RLPM|altsyncram_component|auto_generated|q_b\(4) & (\RLPM|altsyncram_component|auto_generated|q_b\(7) $ (!\RLPM|altsyncram_component|auto_generated|q_b\(5)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000010000110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RLPM|altsyncram_component|auto_generated|q_b\(6),
	datab => \RLPM|altsyncram_component|auto_generated|q_b\(4),
	datac => \RLPM|altsyncram_component|auto_generated|q_b\(7),
	datad => \RLPM|altsyncram_component|auto_generated|q_b\(5),
	combout => \H1|WideOr0~0_combout\);

-- Location: LCCOMB_X62_Y4_N0
\H2|WideOr6~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \H2|WideOr6~0_combout\ = (rdAddr(0) & ((rdAddr(3)) # (rdAddr(2) $ (rdAddr(1))))) # (!rdAddr(0) & ((rdAddr(1)) # (rdAddr(2) $ (rdAddr(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101111011110110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => rdAddr(2),
	datab => rdAddr(3),
	datac => rdAddr(1),
	datad => rdAddr(0),
	combout => \H2|WideOr6~0_combout\);

-- Location: LCCOMB_X62_Y4_N20
\H2|WideOr5~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \H2|WideOr5~0_combout\ = (rdAddr(2) & (rdAddr(0) & (rdAddr(3) $ (rdAddr(1))))) # (!rdAddr(2) & (!rdAddr(3) & ((rdAddr(1)) # (rdAddr(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011100100010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => rdAddr(2),
	datab => rdAddr(3),
	datac => rdAddr(1),
	datad => rdAddr(0),
	combout => \H2|WideOr5~0_combout\);

-- Location: LCCOMB_X62_Y4_N22
\H2|WideOr4~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \H2|WideOr4~0_combout\ = (rdAddr(1) & (((!rdAddr(3) & rdAddr(0))))) # (!rdAddr(1) & ((rdAddr(2) & (!rdAddr(3))) # (!rdAddr(2) & ((rdAddr(0))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011011100000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => rdAddr(2),
	datab => rdAddr(3),
	datac => rdAddr(1),
	datad => rdAddr(0),
	combout => \H2|WideOr4~0_combout\);

-- Location: LCCOMB_X62_Y4_N16
\H2|WideOr3~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \H2|WideOr3~0_combout\ = (rdAddr(1) & ((rdAddr(2) & ((rdAddr(0)))) # (!rdAddr(2) & (rdAddr(3) & !rdAddr(0))))) # (!rdAddr(1) & (!rdAddr(3) & (rdAddr(2) $ (rdAddr(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000101000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => rdAddr(2),
	datab => rdAddr(3),
	datac => rdAddr(1),
	datad => rdAddr(0),
	combout => \H2|WideOr3~0_combout\);

-- Location: LCCOMB_X62_Y4_N18
\H2|WideOr2~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \H2|WideOr2~0_combout\ = (rdAddr(2) & (rdAddr(3) & ((rdAddr(1)) # (!rdAddr(0))))) # (!rdAddr(2) & (!rdAddr(3) & (rdAddr(1) & !rdAddr(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => rdAddr(2),
	datab => rdAddr(3),
	datac => rdAddr(1),
	datad => rdAddr(0),
	combout => \H2|WideOr2~0_combout\);

-- Location: LCCOMB_X62_Y4_N28
\H2|WideOr1~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \H2|WideOr1~0_combout\ = (rdAddr(3) & ((rdAddr(0) & ((rdAddr(1)))) # (!rdAddr(0) & (rdAddr(2))))) # (!rdAddr(3) & (rdAddr(2) & (rdAddr(1) $ (rdAddr(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001010101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => rdAddr(2),
	datab => rdAddr(3),
	datac => rdAddr(1),
	datad => rdAddr(0),
	combout => \H2|WideOr1~0_combout\);

-- Location: LCCOMB_X62_Y4_N30
\H2|WideOr0~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \H2|WideOr0~0_combout\ = (rdAddr(2) & (!rdAddr(1) & (rdAddr(3) $ (!rdAddr(0))))) # (!rdAddr(2) & (rdAddr(0) & (rdAddr(3) $ (!rdAddr(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100100100000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => rdAddr(2),
	datab => rdAddr(3),
	datac => rdAddr(1),
	datad => rdAddr(0),
	combout => \H2|WideOr0~0_combout\);

-- Location: LCCOMB_X1_Y14_N0
\H4|WideOr6~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \H4|WideOr6~0_combout\ = (\SW~combout\(0) & ((\SW~combout\(3)) # (\SW~combout\(1) $ (\SW~combout\(2))))) # (!\SW~combout\(0) & ((\SW~combout\(1)) # (\SW~combout\(3) $ (\SW~combout\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110011111111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW~combout\(1),
	datab => \SW~combout\(0),
	datac => \SW~combout\(3),
	datad => \SW~combout\(2),
	combout => \H4|WideOr6~0_combout\);

-- Location: LCCOMB_X1_Y14_N2
\H4|WideOr5~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \H4|WideOr5~0_combout\ = (\SW~combout\(1) & (!\SW~combout\(3) & ((\SW~combout\(0)) # (!\SW~combout\(2))))) # (!\SW~combout\(1) & (\SW~combout\(0) & (\SW~combout\(3) $ (!\SW~combout\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100100000001110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW~combout\(1),
	datab => \SW~combout\(0),
	datac => \SW~combout\(3),
	datad => \SW~combout\(2),
	combout => \H4|WideOr5~0_combout\);

-- Location: LCCOMB_X1_Y14_N12
\H4|WideOr4~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \H4|WideOr4~0_combout\ = (\SW~combout\(1) & (\SW~combout\(0) & (!\SW~combout\(3)))) # (!\SW~combout\(1) & ((\SW~combout\(2) & ((!\SW~combout\(3)))) # (!\SW~combout\(2) & (\SW~combout\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110101001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW~combout\(1),
	datab => \SW~combout\(0),
	datac => \SW~combout\(3),
	datad => \SW~combout\(2),
	combout => \H4|WideOr4~0_combout\);

-- Location: LCCOMB_X1_Y14_N14
\H4|WideOr3~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \H4|WideOr3~0_combout\ = (\SW~combout\(1) & ((\SW~combout\(0) & ((\SW~combout\(2)))) # (!\SW~combout\(0) & (\SW~combout\(3) & !\SW~combout\(2))))) # (!\SW~combout\(1) & (!\SW~combout\(3) & (\SW~combout\(0) $ (\SW~combout\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100100100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW~combout\(1),
	datab => \SW~combout\(0),
	datac => \SW~combout\(3),
	datad => \SW~combout\(2),
	combout => \H4|WideOr3~0_combout\);

-- Location: LCCOMB_X1_Y14_N16
\H4|WideOr2~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \H4|WideOr2~0_combout\ = (\SW~combout\(3) & (\SW~combout\(2) & ((\SW~combout\(1)) # (!\SW~combout\(0))))) # (!\SW~combout\(3) & (\SW~combout\(1) & (!\SW~combout\(0) & !\SW~combout\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011000000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW~combout\(1),
	datab => \SW~combout\(0),
	datac => \SW~combout\(3),
	datad => \SW~combout\(2),
	combout => \H4|WideOr2~0_combout\);

-- Location: LCCOMB_X1_Y14_N18
\H4|WideOr1~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \H4|WideOr1~0_combout\ = (\SW~combout\(1) & ((\SW~combout\(0) & (\SW~combout\(3))) # (!\SW~combout\(0) & ((\SW~combout\(2)))))) # (!\SW~combout\(1) & (\SW~combout\(2) & (\SW~combout\(0) $ (\SW~combout\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011011010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW~combout\(1),
	datab => \SW~combout\(0),
	datac => \SW~combout\(3),
	datad => \SW~combout\(2),
	combout => \H4|WideOr1~0_combout\);

-- Location: LCCOMB_X1_Y14_N20
\H4|WideOr0~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \H4|WideOr0~0_combout\ = (\SW~combout\(3) & (\SW~combout\(0) & (\SW~combout\(1) $ (\SW~combout\(2))))) # (!\SW~combout\(3) & (!\SW~combout\(1) & (\SW~combout\(0) $ (\SW~combout\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000110000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW~combout\(1),
	datab => \SW~combout\(0),
	datac => \SW~combout\(3),
	datad => \SW~combout\(2),
	combout => \H4|WideOr0~0_combout\);

-- Location: LCCOMB_X1_Y15_N8
\H5|WideOr6~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \H5|WideOr6~0_combout\ = (\SW~combout\(4) & ((\SW~combout\(7)) # (\SW~combout\(5) $ (\SW~combout\(6))))) # (!\SW~combout\(4) & ((\SW~combout\(5)) # (\SW~combout\(7) $ (\SW~combout\(6)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101101111101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW~combout\(5),
	datab => \SW~combout\(7),
	datac => \SW~combout\(4),
	datad => \SW~combout\(6),
	combout => \H5|WideOr6~0_combout\);

-- Location: LCCOMB_X1_Y15_N10
\H5|WideOr5~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \H5|WideOr5~0_combout\ = (\SW~combout\(5) & (!\SW~combout\(7) & ((\SW~combout\(4)) # (!\SW~combout\(6))))) # (!\SW~combout\(5) & (\SW~combout\(4) & (\SW~combout\(7) $ (!\SW~combout\(6)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110000000110010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW~combout\(5),
	datab => \SW~combout\(7),
	datac => \SW~combout\(4),
	datad => \SW~combout\(6),
	combout => \H5|WideOr5~0_combout\);

-- Location: LCCOMB_X1_Y15_N12
\H5|WideOr4~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \H5|WideOr4~0_combout\ = (\SW~combout\(5) & (!\SW~combout\(7) & (\SW~combout\(4)))) # (!\SW~combout\(5) & ((\SW~combout\(6) & (!\SW~combout\(7))) # (!\SW~combout\(6) & ((\SW~combout\(4))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000101110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW~combout\(5),
	datab => \SW~combout\(7),
	datac => \SW~combout\(4),
	datad => \SW~combout\(6),
	combout => \H5|WideOr4~0_combout\);

-- Location: LCCOMB_X1_Y15_N22
\H5|WideOr3~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \H5|WideOr3~0_combout\ = (\SW~combout\(5) & ((\SW~combout\(4) & ((\SW~combout\(6)))) # (!\SW~combout\(4) & (\SW~combout\(7) & !\SW~combout\(6))))) # (!\SW~combout\(5) & (!\SW~combout\(7) & (\SW~combout\(4) $ (\SW~combout\(6)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000100011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW~combout\(5),
	datab => \SW~combout\(7),
	datac => \SW~combout\(4),
	datad => \SW~combout\(6),
	combout => \H5|WideOr3~0_combout\);

-- Location: LCCOMB_X1_Y15_N0
\H5|WideOr2~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \H5|WideOr2~0_combout\ = (\SW~combout\(7) & (\SW~combout\(6) & ((\SW~combout\(5)) # (!\SW~combout\(4))))) # (!\SW~combout\(7) & (\SW~combout\(5) & (!\SW~combout\(4) & !\SW~combout\(6))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000110000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW~combout\(5),
	datab => \SW~combout\(7),
	datac => \SW~combout\(4),
	datad => \SW~combout\(6),
	combout => \H5|WideOr2~0_combout\);

-- Location: LCCOMB_X1_Y15_N2
\H5|WideOr1~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \H5|WideOr1~0_combout\ = (\SW~combout\(5) & ((\SW~combout\(4) & (\SW~combout\(7))) # (!\SW~combout\(4) & ((\SW~combout\(6)))))) # (!\SW~combout\(5) & (\SW~combout\(6) & (\SW~combout\(7) $ (\SW~combout\(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001111010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW~combout\(5),
	datab => \SW~combout\(7),
	datac => \SW~combout\(4),
	datad => \SW~combout\(6),
	combout => \H5|WideOr1~0_combout\);

-- Location: LCCOMB_X1_Y15_N20
\H5|WideOr0~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \H5|WideOr0~0_combout\ = (\SW~combout\(7) & (\SW~combout\(4) & (\SW~combout\(5) $ (\SW~combout\(6))))) # (!\SW~combout\(7) & (!\SW~combout\(5) & (\SW~combout\(4) $ (\SW~combout\(6)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000110010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW~combout\(5),
	datab => \SW~combout\(7),
	datac => \SW~combout\(4),
	datad => \SW~combout\(6),
	combout => \H5|WideOr0~0_combout\);

-- Location: LCCOMB_X1_Y17_N8
\H6|WideOr6~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \H6|WideOr6~0_combout\ = (\SW~combout\(11) & ((\SW~combout\(14)) # (\SW~combout\(13) $ (\SW~combout\(12))))) # (!\SW~combout\(11) & ((\SW~combout\(12)) # (\SW~combout\(14) $ (\SW~combout\(13)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011111111100110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW~combout\(14),
	datab => \SW~combout\(13),
	datac => \SW~combout\(11),
	datad => \SW~combout\(12),
	combout => \H6|WideOr6~0_combout\);

-- Location: LCCOMB_X1_Y17_N10
\H6|WideOr5~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \H6|WideOr5~0_combout\ = (\SW~combout\(13) & (\SW~combout\(11) & (\SW~combout\(14) $ (\SW~combout\(12))))) # (!\SW~combout\(13) & (!\SW~combout\(14) & ((\SW~combout\(11)) # (\SW~combout\(12)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000110010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW~combout\(14),
	datab => \SW~combout\(13),
	datac => \SW~combout\(11),
	datad => \SW~combout\(12),
	combout => \H6|WideOr5~0_combout\);

-- Location: LCCOMB_X1_Y17_N12
\H6|WideOr4~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \H6|WideOr4~0_combout\ = (\SW~combout\(12) & (!\SW~combout\(14) & ((\SW~combout\(11))))) # (!\SW~combout\(12) & ((\SW~combout\(13) & (!\SW~combout\(14))) # (!\SW~combout\(13) & ((\SW~combout\(11))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000001110100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW~combout\(14),
	datab => \SW~combout\(13),
	datac => \SW~combout\(11),
	datad => \SW~combout\(12),
	combout => \H6|WideOr4~0_combout\);

-- Location: LCCOMB_X1_Y17_N22
\H6|WideOr3~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \H6|WideOr3~0_combout\ = (\SW~combout\(12) & ((\SW~combout\(13) & ((\SW~combout\(11)))) # (!\SW~combout\(13) & (\SW~combout\(14) & !\SW~combout\(11))))) # (!\SW~combout\(12) & (!\SW~combout\(14) & (\SW~combout\(13) $ (\SW~combout\(11)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001000010100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW~combout\(14),
	datab => \SW~combout\(13),
	datac => \SW~combout\(11),
	datad => \SW~combout\(12),
	combout => \H6|WideOr3~0_combout\);

-- Location: LCCOMB_X1_Y17_N16
\H6|WideOr2~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \H6|WideOr2~0_combout\ = (\SW~combout\(14) & (\SW~combout\(13) & ((\SW~combout\(12)) # (!\SW~combout\(11))))) # (!\SW~combout\(14) & (!\SW~combout\(13) & (!\SW~combout\(11) & \SW~combout\(12))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100100001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW~combout\(14),
	datab => \SW~combout\(13),
	datac => \SW~combout\(11),
	datad => \SW~combout\(12),
	combout => \H6|WideOr2~0_combout\);

-- Location: LCCOMB_X1_Y17_N2
\H6|WideOr1~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \H6|WideOr1~0_combout\ = (\SW~combout\(14) & ((\SW~combout\(11) & ((\SW~combout\(12)))) # (!\SW~combout\(11) & (\SW~combout\(13))))) # (!\SW~combout\(14) & (\SW~combout\(13) & (\SW~combout\(11) $ (\SW~combout\(12)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110001001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW~combout\(14),
	datab => \SW~combout\(13),
	datac => \SW~combout\(11),
	datad => \SW~combout\(12),
	combout => \H6|WideOr1~0_combout\);

-- Location: LCCOMB_X1_Y17_N20
\H6|WideOr0~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \H6|WideOr0~0_combout\ = (\SW~combout\(14) & (\SW~combout\(11) & (\SW~combout\(13) $ (\SW~combout\(12))))) # (!\SW~combout\(14) & (!\SW~combout\(12) & (\SW~combout\(13) $ (\SW~combout\(11)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000010010100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW~combout\(14),
	datab => \SW~combout\(13),
	datac => \SW~combout\(11),
	datad => \SW~combout\(12),
	combout => \H6|WideOr0~0_combout\);

-- Location: PIN_AE22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\LEDG[0]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \SW~combout\(17),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_LEDG(0));

-- Location: PIN_AE23,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\LEDR[0]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \SW~combout\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_LEDR(0));

-- Location: PIN_AF23,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\LEDR[1]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \SW~combout\(1),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_LEDR(1));

-- Location: PIN_AB21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\LEDR[2]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \SW~combout\(2),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_LEDR(2));

-- Location: PIN_AC22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\LEDR[3]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \SW~combout\(3),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_LEDR(3));

-- Location: PIN_AD22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\LEDR[4]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \SW~combout\(4),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_LEDR(4));

-- Location: PIN_AD23,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\LEDR[5]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \SW~combout\(5),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_LEDR(5));

-- Location: PIN_AD21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\LEDR[6]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \SW~combout\(6),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_LEDR(6));

-- Location: PIN_AC21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\LEDR[7]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \SW~combout\(7),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_LEDR(7));

-- Location: PIN_AA14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\LEDR[8]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \SW~combout\(8),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_LEDR(8));

-- Location: PIN_Y13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\LEDR[9]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \SW~combout\(9),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_LEDR(9));

-- Location: PIN_AA13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\LEDR[10]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \SW~combout\(10),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_LEDR(10));

-- Location: PIN_AC14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\LEDR[11]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \SW~combout\(11),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_LEDR(11));

-- Location: PIN_AD15,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\LEDR[12]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \SW~combout\(12),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_LEDR(12));

-- Location: PIN_AE15,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\LEDR[13]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \SW~combout\(13),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_LEDR(13));

-- Location: PIN_AF13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\LEDR[14]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \SW~combout\(14),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_LEDR(14));

-- Location: PIN_AE13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\LEDR[15]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \SW~combout\(15),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_LEDR(15));

-- Location: PIN_AE12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\LEDR[16]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \SW~combout\(16),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_LEDR(16));

-- Location: PIN_AD12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\LEDR[17]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \SW~combout\(17),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_LEDR(17));

-- Location: PIN_V13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\HEX0[6]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \H0|ALT_INV_WideOr6~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_HEX0(6));

-- Location: PIN_V14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\HEX0[5]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \H0|WideOr5~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_HEX0(5));

-- Location: PIN_AE11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\HEX0[4]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \H0|WideOr4~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_HEX0(4));

-- Location: PIN_AD11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\HEX0[3]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \H0|WideOr3~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_HEX0(3));

-- Location: PIN_AC12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\HEX0[2]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \H0|WideOr2~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_HEX0(2));

-- Location: PIN_AB12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\HEX0[1]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \H0|WideOr1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_HEX0(1));

-- Location: PIN_AF10,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\HEX0[0]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \H0|WideOr0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_HEX0(0));

-- Location: PIN_AB24,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\HEX1[6]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \H1|ALT_INV_WideOr6~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_HEX1(6));

-- Location: PIN_AA23,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\HEX1[5]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \H1|WideOr5~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_HEX1(5));

-- Location: PIN_AA24,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\HEX1[4]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \H1|WideOr4~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_HEX1(4));

-- Location: PIN_Y22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\HEX1[3]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \H1|WideOr3~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_HEX1(3));

-- Location: PIN_W21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\HEX1[2]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \H1|WideOr2~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_HEX1(2));

-- Location: PIN_V21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\HEX1[1]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \H1|WideOr1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_HEX1(1));

-- Location: PIN_V20,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\HEX1[0]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \H1|WideOr0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_HEX1(0));

-- Location: PIN_Y24,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\HEX2[6]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \H2|ALT_INV_WideOr6~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_HEX2(6));

-- Location: PIN_AB25,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\HEX2[5]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \H2|WideOr5~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_HEX2(5));

-- Location: PIN_AB26,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\HEX2[4]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \H2|WideOr4~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_HEX2(4));

-- Location: PIN_AC26,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\HEX2[3]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \H2|WideOr3~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_HEX2(3));

-- Location: PIN_AC25,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\HEX2[2]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \H2|WideOr2~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_HEX2(2));

-- Location: PIN_V22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\HEX2[1]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \H2|WideOr1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_HEX2(1));

-- Location: PIN_AB23,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\HEX2[0]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \H2|WideOr0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_HEX2(0));

-- Location: PIN_W24,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\HEX3[6]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_HEX3(6));

-- Location: PIN_U22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\HEX3[5]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => rdAddr(4),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_HEX3(5));

-- Location: PIN_Y25,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\HEX3[4]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => rdAddr(4),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_HEX3(4));

-- Location: PIN_Y26,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\HEX3[3]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => rdAddr(4),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_HEX3(3));

-- Location: PIN_AA26,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\HEX3[2]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_HEX3(2));

-- Location: PIN_AA25,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\HEX3[1]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_HEX3(1));

-- Location: PIN_Y23,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\HEX3[0]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => rdAddr(4),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_HEX3(0));

-- Location: PIN_T3,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\HEX4[6]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \H4|ALT_INV_WideOr6~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_HEX4(6));

-- Location: PIN_R6,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\HEX4[5]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \H4|WideOr5~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_HEX4(5));

-- Location: PIN_R7,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\HEX4[4]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \H4|WideOr4~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_HEX4(4));

-- Location: PIN_T4,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\HEX4[3]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \H4|WideOr3~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_HEX4(3));

-- Location: PIN_U2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\HEX4[2]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \H4|WideOr2~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_HEX4(2));

-- Location: PIN_U1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\HEX4[1]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \H4|WideOr1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_HEX4(1));

-- Location: PIN_U9,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\HEX4[0]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \H4|WideOr0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_HEX4(0));

-- Location: PIN_R3,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\HEX5[6]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \H5|ALT_INV_WideOr6~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_HEX5(6));

-- Location: PIN_R4,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\HEX5[5]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \H5|WideOr5~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_HEX5(5));

-- Location: PIN_R5,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\HEX5[4]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \H5|WideOr4~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_HEX5(4));

-- Location: PIN_T9,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\HEX5[3]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \H5|WideOr3~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_HEX5(3));

-- Location: PIN_P7,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\HEX5[2]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \H5|WideOr2~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_HEX5(2));

-- Location: PIN_P6,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\HEX5[1]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \H5|WideOr1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_HEX5(1));

-- Location: PIN_T2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\HEX5[0]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \H5|WideOr0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_HEX5(0));

-- Location: PIN_M4,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\HEX6[6]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \H6|ALT_INV_WideOr6~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_HEX6(6));

-- Location: PIN_M5,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\HEX6[5]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \H6|WideOr5~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_HEX6(5));

-- Location: PIN_M3,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\HEX6[4]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \H6|WideOr4~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_HEX6(4));

-- Location: PIN_M2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\HEX6[3]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \H6|WideOr3~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_HEX6(3));

-- Location: PIN_P3,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\HEX6[2]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \H6|WideOr2~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_HEX6(2));

-- Location: PIN_P4,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\HEX6[1]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \H6|WideOr1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_HEX6(1));

-- Location: PIN_R2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\HEX6[0]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \H6|WideOr0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_HEX6(0));

-- Location: PIN_N9,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\HEX7[6]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_HEX7(6));

-- Location: PIN_P9,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\HEX7[5]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \SW~combout\(15),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_HEX7(5));

-- Location: PIN_L7,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\HEX7[4]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \SW~combout\(15),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_HEX7(4));

-- Location: PIN_L6,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\HEX7[3]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \SW~combout\(15),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_HEX7(3));

-- Location: PIN_L9,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\HEX7[2]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_HEX7(2));

-- Location: PIN_L2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\HEX7[1]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_HEX7(1));

-- Location: PIN_L3,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\HEX7[0]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \SW~combout\(15),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_HEX7(0));
END structure;


