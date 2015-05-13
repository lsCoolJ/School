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

-- DATE "05/27/2014 11:01:32"

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

ENTITY 	Part5 IS
    PORT (
	SW : IN std_logic_vector(17 DOWNTO 0);
	LEDR : OUT std_logic_vector(17 DOWNTO 0);
	KEY : IN std_logic_vector(1 DOWNTO 0);
	HEX0 : OUT std_logic_vector(0 TO 6);
	HEX1 : OUT std_logic_vector(0 TO 6);
	HEX2 : OUT std_logic_vector(0 TO 6);
	HEX3 : OUT std_logic_vector(0 TO 6);
	HEX4 : OUT std_logic_vector(0 TO 6);
	HEX5 : OUT std_logic_vector(0 TO 6);
	HEX6 : OUT std_logic_vector(0 TO 6);
	HEX7 : OUT std_logic_vector(0 TO 6)
	);
END Part5;

-- Design Ports Information
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
-- SW[17]	=>  Location: PIN_V2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- KEY[1]	=>  Location: PIN_N23,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- KEY[0]	=>  Location: PIN_G26,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default


ARCHITECTURE structure OF Part5 IS
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
SIGNAL ww_LEDR : std_logic_vector(17 DOWNTO 0);
SIGNAL ww_KEY : std_logic_vector(1 DOWNTO 0);
SIGNAL ww_HEX0 : std_logic_vector(0 TO 6);
SIGNAL ww_HEX1 : std_logic_vector(0 TO 6);
SIGNAL ww_HEX2 : std_logic_vector(0 TO 6);
SIGNAL ww_HEX3 : std_logic_vector(0 TO 6);
SIGNAL ww_HEX4 : std_logic_vector(0 TO 6);
SIGNAL ww_HEX5 : std_logic_vector(0 TO 6);
SIGNAL ww_HEX6 : std_logic_vector(0 TO 6);
SIGNAL ww_HEX7 : std_logic_vector(0 TO 6);
SIGNAL \RF1|Ra_data[0]~2_combout\ : std_logic;
SIGNAL \RF1|Ra_data[0]~3_combout\ : std_logic;
SIGNAL \RF1|Ra_data[0]~4_combout\ : std_logic;
SIGNAL \RF1|Ra_data[0]~5_combout\ : std_logic;
SIGNAL \RF1|Ra_data[0]~6_combout\ : std_logic;
SIGNAL \RF1|Ra_data[2]~20_combout\ : std_logic;
SIGNAL \RF1|Ra_data[2]~21_combout\ : std_logic;
SIGNAL \RF1|Ra_data[2]~24_combout\ : std_logic;
SIGNAL \RF1|Ra_data[2]~27_combout\ : std_logic;
SIGNAL \RF1|Ra_data[3]~30_combout\ : std_logic;
SIGNAL \RF1|Ra_data[3]~32_combout\ : std_logic;
SIGNAL \RF1|Ra_data[3]~33_combout\ : std_logic;
SIGNAL \RF1|Ra_data[3]~34_combout\ : std_logic;
SIGNAL \RF1|Ra_data[3]~35_combout\ : std_logic;
SIGNAL \RF1|Ra_data[3]~36_combout\ : std_logic;
SIGNAL \RF1|Ra_data[5]~47_combout\ : std_logic;
SIGNAL \RF1|Rb_data[0]~2_combout\ : std_logic;
SIGNAL \RF1|Rb_data[0]~3_combout\ : std_logic;
SIGNAL \RF1|Rb_data[0]~4_combout\ : std_logic;
SIGNAL \RF1|Rb_data[0]~5_combout\ : std_logic;
SIGNAL \RF1|Rb_data[0]~6_combout\ : std_logic;
SIGNAL \RF1|Rb_data[1]~12_combout\ : std_logic;
SIGNAL \RF1|Rb_data[1]~13_combout\ : std_logic;
SIGNAL \RF1|Rb_data[2]~20_combout\ : std_logic;
SIGNAL \RF1|Rb_data[2]~24_combout\ : std_logic;
SIGNAL \RF1|Rb_data[2]~25_combout\ : std_logic;
SIGNAL \RF1|Rb_data[2]~27_combout\ : std_logic;
SIGNAL \RF1|Rb_data[2]~28_combout\ : std_logic;
SIGNAL \RF1|Rb_data[3]~32_combout\ : std_logic;
SIGNAL \RF1|Rb_data[3]~33_combout\ : std_logic;
SIGNAL \RF1|Rb_data[5]~40_combout\ : std_logic;
SIGNAL \RF1|Rb_data[5]~42_combout\ : std_logic;
SIGNAL \RF1|Rb_data[5]~43_combout\ : std_logic;
SIGNAL \RF1|Rb_data[4]~52_combout\ : std_logic;
SIGNAL \RF1|Rb_data[4]~53_combout\ : std_logic;
SIGNAL \RF1|Rb_data[4]~54_combout\ : std_logic;
SIGNAL \RF1|Rb_data[4]~55_combout\ : std_logic;
SIGNAL \RF1|Rb_data[4]~56_combout\ : std_logic;
SIGNAL \RF1|Reg11|Q_b[1]~0_combout\ : std_logic;
SIGNAL \RF1|Reg0|Q_b~3_combout\ : std_logic;
SIGNAL \RF1|Reg7|Q_b[5]~0_combout\ : std_logic;
SIGNAL \RF1|Reg15|Q_b[1]~0_combout\ : std_logic;
SIGNAL \RF1|Ra_data[2]~28_combout\ : std_logic;
SIGNAL \RF1|Reg5|Q_b[0]~0_combout\ : std_logic;
SIGNAL \RF1|Reg9|Q_b[0]~0_combout\ : std_logic;
SIGNAL \RF1|Reg1|Q_b[4]~0_combout\ : std_logic;
SIGNAL \RF1|Reg5|Q_b[0]~1_combout\ : std_logic;
SIGNAL \RF1|Ra_data[2]~22_combout\ : std_logic;
SIGNAL \RF1|Ra_data[2]~23_combout\ : std_logic;
SIGNAL \RF1|Reg4|Q_b[3]~0_combout\ : std_logic;
SIGNAL \RF1|Reg12|Q_b[4]~0_combout\ : std_logic;
SIGNAL \RF1|Reg8|Q_b[0]~0_combout\ : std_logic;
SIGNAL \RF1|Ra_data[2]~25_combout\ : std_logic;
SIGNAL \RF1|Ra_data[2]~26_combout\ : std_logic;
SIGNAL \RF1|Ra_data[2]~29_combout\ : std_logic;
SIGNAL \RF1|Reg0|Q_b~4_combout\ : std_logic;
SIGNAL \RF1|Reg11|Q_b[1]~1_combout\ : std_logic;
SIGNAL \RF1|Reg10|Q_b[1]~1_combout\ : std_logic;
SIGNAL \RF1|Ra_data[3]~31_combout\ : std_logic;
SIGNAL \RF1|Reg13|Q_b[2]~0_combout\ : std_logic;
SIGNAL \RF1|Ra_data[3]~37_combout\ : std_logic;
SIGNAL \RF1|Reg10|Q_b[1]~0_combout\ : std_logic;
SIGNAL \RF1|Reg14|Q_b[3]~0_combout\ : std_logic;
SIGNAL \RF1|Ra_data[3]~38_combout\ : std_logic;
SIGNAL \RF1|Ra_data[3]~39_combout\ : std_logic;
SIGNAL \RF1|Reg0|Q_b~0_combout\ : std_logic;
SIGNAL \RF1|Ra_data[0]~0_combout\ : std_logic;
SIGNAL \RF1|Ra_data[0]~1_combout\ : std_logic;
SIGNAL \RF1|Reg3|Q_b[5]~0_combout\ : std_logic;
SIGNAL \RF1|Ra_data[0]~7_combout\ : std_logic;
SIGNAL \RF1|Ra_data[0]~8_combout\ : std_logic;
SIGNAL \RF1|Ra_data[0]~9_combout\ : std_logic;
SIGNAL \RF1|Reg0|Q_b~2_combout\ : std_logic;
SIGNAL \RF1|Reg6|Q_b[4]~0_combout\ : std_logic;
SIGNAL \RF1|Reg4|Q_b[3]~1_combout\ : std_logic;
SIGNAL \RF1|Ra_data[1]~10_combout\ : std_logic;
SIGNAL \RF1|Ra_data[1]~11_combout\ : std_logic;
SIGNAL \RF1|Ra_data[1]~12_combout\ : std_logic;
SIGNAL \RF1|Ra_data[1]~13_combout\ : std_logic;
SIGNAL \RF1|Reg2|Q_b[0]~0_combout\ : std_logic;
SIGNAL \RF1|Reg0|Q_b[0]~1_combout\ : std_logic;
SIGNAL \RF1|Ra_data[1]~14_combout\ : std_logic;
SIGNAL \RF1|Ra_data[1]~15_combout\ : std_logic;
SIGNAL \RF1|Ra_data[1]~16_combout\ : std_logic;
SIGNAL \RF1|Ra_data[1]~17_combout\ : std_logic;
SIGNAL \RF1|Ra_data[1]~18_combout\ : std_logic;
SIGNAL \RF1|Ra_data[1]~19_combout\ : std_logic;
SIGNAL \H0|WideOr6~0_combout\ : std_logic;
SIGNAL \H0|WideOr5~0_combout\ : std_logic;
SIGNAL \H0|WideOr4~0_combout\ : std_logic;
SIGNAL \H0|WideOr3~0_combout\ : std_logic;
SIGNAL \H0|WideOr2~0_combout\ : std_logic;
SIGNAL \H0|WideOr1~0_combout\ : std_logic;
SIGNAL \H0|WideOr0~0_combout\ : std_logic;
SIGNAL \RF1|Reg0|Q_b~5_combout\ : std_logic;
SIGNAL \RF1|Ra_data[5]~48_combout\ : std_logic;
SIGNAL \RF1|Ra_data[5]~40_combout\ : std_logic;
SIGNAL \RF1|Ra_data[5]~41_combout\ : std_logic;
SIGNAL \RF1|Ra_data[5]~42_combout\ : std_logic;
SIGNAL \RF1|Ra_data[5]~43_combout\ : std_logic;
SIGNAL \RF1|Ra_data[5]~44_combout\ : std_logic;
SIGNAL \RF1|Ra_data[5]~45_combout\ : std_logic;
SIGNAL \RF1|Ra_data[5]~46_combout\ : std_logic;
SIGNAL \RF1|Ra_data[5]~49_combout\ : std_logic;
SIGNAL \RF1|Reg0|Q_b~6_combout\ : std_logic;
SIGNAL \RF1|Ra_data[4]~50_combout\ : std_logic;
SIGNAL \RF1|Ra_data[4]~51_combout\ : std_logic;
SIGNAL \RF1|Ra_data[4]~54_combout\ : std_logic;
SIGNAL \RF1|Ra_data[4]~55_combout\ : std_logic;
SIGNAL \RF1|Ra_data[4]~52_combout\ : std_logic;
SIGNAL \RF1|Ra_data[4]~53_combout\ : std_logic;
SIGNAL \RF1|Ra_data[4]~56_combout\ : std_logic;
SIGNAL \RF1|Ra_data[4]~57_combout\ : std_logic;
SIGNAL \RF1|Ra_data[4]~58_combout\ : std_logic;
SIGNAL \RF1|Ra_data[4]~59_combout\ : std_logic;
SIGNAL \H1|Decoder0~0_combout\ : std_logic;
SIGNAL \H1|Decoder0~1_combout\ : std_logic;
SIGNAL \H1|Decoder0~2_combout\ : std_logic;
SIGNAL \RF1|Rb_data[2]~22_combout\ : std_logic;
SIGNAL \RF1|Rb_data[2]~23_combout\ : std_logic;
SIGNAL \RF1|Rb_data[2]~26_combout\ : std_logic;
SIGNAL \RF1|Rb_data[2]~21_combout\ : std_logic;
SIGNAL \RF1|Rb_data[2]~29_combout\ : std_logic;
SIGNAL \RF1|Rb_data[1]~17_combout\ : std_logic;
SIGNAL \RF1|Rb_data[1]~18_combout\ : std_logic;
SIGNAL \RF1|Rb_data[1]~14_combout\ : std_logic;
SIGNAL \RF1|Rb_data[1]~15_combout\ : std_logic;
SIGNAL \RF1|Rb_data[1]~16_combout\ : std_logic;
SIGNAL \RF1|Rb_data[1]~10_combout\ : std_logic;
SIGNAL \RF1|Rb_data[1]~11_combout\ : std_logic;
SIGNAL \RF1|Rb_data[1]~19_combout\ : std_logic;
SIGNAL \RF1|Rb_data[0]~7_combout\ : std_logic;
SIGNAL \RF1|Rb_data[0]~8_combout\ : std_logic;
SIGNAL \RF1|Rb_data[0]~0_combout\ : std_logic;
SIGNAL \RF1|Rb_data[0]~1_combout\ : std_logic;
SIGNAL \RF1|Rb_data[0]~9_combout\ : std_logic;
SIGNAL \RF1|Rb_data[3]~30_combout\ : std_logic;
SIGNAL \RF1|Rb_data[3]~31_combout\ : std_logic;
SIGNAL \RF1|Rb_data[3]~34_combout\ : std_logic;
SIGNAL \RF1|Rb_data[3]~35_combout\ : std_logic;
SIGNAL \RF1|Rb_data[3]~36_combout\ : std_logic;
SIGNAL \RF1|Rb_data[3]~37_combout\ : std_logic;
SIGNAL \RF1|Rb_data[3]~38_combout\ : std_logic;
SIGNAL \RF1|Rb_data[3]~39_combout\ : std_logic;
SIGNAL \H4|WideOr6~0_combout\ : std_logic;
SIGNAL \H4|WideOr5~0_combout\ : std_logic;
SIGNAL \H4|WideOr4~0_combout\ : std_logic;
SIGNAL \H4|WideOr3~0_combout\ : std_logic;
SIGNAL \H4|WideOr2~0_combout\ : std_logic;
SIGNAL \H4|WideOr1~0_combout\ : std_logic;
SIGNAL \H4|WideOr0~0_combout\ : std_logic;
SIGNAL \RF1|Rb_data[5]~41_combout\ : std_logic;
SIGNAL \RF1|Rb_data[5]~47_combout\ : std_logic;
SIGNAL \RF1|Rb_data[5]~48_combout\ : std_logic;
SIGNAL \RF1|Rb_data[5]~44_combout\ : std_logic;
SIGNAL \RF1|Rb_data[5]~45_combout\ : std_logic;
SIGNAL \RF1|Rb_data[5]~46_combout\ : std_logic;
SIGNAL \RF1|Rb_data[5]~49_combout\ : std_logic;
SIGNAL \RF1|Rb_data[4]~57_combout\ : std_logic;
SIGNAL \RF1|Rb_data[4]~58_combout\ : std_logic;
SIGNAL \RF1|Rb_data[4]~50_combout\ : std_logic;
SIGNAL \RF1|Rb_data[4]~51_combout\ : std_logic;
SIGNAL \RF1|Rb_data[4]~59_combout\ : std_logic;
SIGNAL \H5|Decoder0~0_combout\ : std_logic;
SIGNAL \H5|Decoder0~1_combout\ : std_logic;
SIGNAL \H5|Decoder0~2_combout\ : std_logic;
SIGNAL \RF1|Reg1|Q_b\ : std_logic_vector(15 DOWNTO 0);
SIGNAL \RF1|Reg2|Q_b\ : std_logic_vector(15 DOWNTO 0);
SIGNAL \RF1|Reg3|Q_b\ : std_logic_vector(15 DOWNTO 0);
SIGNAL \RF1|Reg4|Q_b\ : std_logic_vector(15 DOWNTO 0);
SIGNAL \RF1|Reg5|Q_b\ : std_logic_vector(15 DOWNTO 0);
SIGNAL \RF1|Reg6|Q_b\ : std_logic_vector(15 DOWNTO 0);
SIGNAL \RF1|Reg7|Q_b\ : std_logic_vector(15 DOWNTO 0);
SIGNAL \RF1|Reg8|Q_b\ : std_logic_vector(15 DOWNTO 0);
SIGNAL \RF1|Reg9|Q_b\ : std_logic_vector(15 DOWNTO 0);
SIGNAL \RF1|Reg10|Q_b\ : std_logic_vector(15 DOWNTO 0);
SIGNAL \RF1|Reg11|Q_b\ : std_logic_vector(15 DOWNTO 0);
SIGNAL \RF1|Reg12|Q_b\ : std_logic_vector(15 DOWNTO 0);
SIGNAL \RF1|Reg13|Q_b\ : std_logic_vector(15 DOWNTO 0);
SIGNAL \RF1|Reg14|Q_b\ : std_logic_vector(15 DOWNTO 0);
SIGNAL \RF1|Reg15|Q_b\ : std_logic_vector(15 DOWNTO 0);
SIGNAL \RF1|Reg0|Q_b\ : std_logic_vector(15 DOWNTO 0);
SIGNAL \SW~combout\ : std_logic_vector(17 DOWNTO 0);
SIGNAL \KEY~combout\ : std_logic_vector(1 DOWNTO 0);
SIGNAL \H0|ALT_INV_WideOr6~0_combout\ : std_logic;
SIGNAL \ALT_INV_KEY~combout\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \RF1|ALT_INV_Rb_data[5]~49_combout\ : std_logic;
SIGNAL \H4|ALT_INV_WideOr6~0_combout\ : std_logic;
SIGNAL \RF1|ALT_INV_Ra_data[5]~49_combout\ : std_logic;

BEGIN

ww_SW <= SW;
LEDR <= ww_LEDR;
ww_KEY <= KEY;
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
\H0|ALT_INV_WideOr6~0_combout\ <= NOT \H0|WideOr6~0_combout\;
\ALT_INV_KEY~combout\(0) <= NOT \KEY~combout\(0);
\RF1|ALT_INV_Rb_data[5]~49_combout\ <= NOT \RF1|Rb_data[5]~49_combout\;
\H4|ALT_INV_WideOr6~0_combout\ <= NOT \H4|WideOr6~0_combout\;
\RF1|ALT_INV_Ra_data[5]~49_combout\ <= NOT \RF1|Ra_data[5]~49_combout\;

-- Location: LCFF_X64_Y27_N9
\RF1|Reg10|Q_b[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_KEY~combout\(0),
	sdata => \RF1|Reg0|Q_b~0_combout\,
	sload => VCC,
	ena => \RF1|Reg10|Q_b[1]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \RF1|Reg10|Q_b\(0));

-- Location: LCFF_X63_Y27_N1
\RF1|Reg6|Q_b[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_KEY~combout\(0),
	sdata => \RF1|Reg0|Q_b~0_combout\,
	sload => VCC,
	ena => \RF1|Reg6|Q_b[4]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \RF1|Reg6|Q_b\(0));

-- Location: LCFF_X63_Y27_N3
\RF1|Reg2|Q_b[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_KEY~combout\(0),
	sdata => \RF1|Reg0|Q_b~0_combout\,
	sload => VCC,
	ena => \RF1|Reg2|Q_b[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \RF1|Reg2|Q_b\(0));

-- Location: LCCOMB_X63_Y27_N0
\RF1|Ra_data[0]~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \RF1|Ra_data[0]~2_combout\ = (\SW~combout\(12) & ((\SW~combout\(13)) # ((\RF1|Reg6|Q_b\(0))))) # (!\SW~combout\(12) & (!\SW~combout\(13) & ((\RF1|Reg2|Q_b\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100110101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW~combout\(12),
	datab => \SW~combout\(13),
	datac => \RF1|Reg6|Q_b\(0),
	datad => \RF1|Reg2|Q_b\(0),
	combout => \RF1|Ra_data[0]~2_combout\);

-- Location: LCFF_X64_Y27_N19
\RF1|Reg14|Q_b[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_KEY~combout\(0),
	sdata => \RF1|Reg0|Q_b~0_combout\,
	sload => VCC,
	ena => \RF1|Reg14|Q_b[3]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \RF1|Reg14|Q_b\(0));

-- Location: LCCOMB_X64_Y27_N8
\RF1|Ra_data[0]~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \RF1|Ra_data[0]~3_combout\ = (\RF1|Ra_data[0]~2_combout\ & (((\RF1|Reg14|Q_b\(0))) # (!\SW~combout\(13)))) # (!\RF1|Ra_data[0]~2_combout\ & (\SW~combout\(13) & (\RF1|Reg10|Q_b\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101001100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RF1|Ra_data[0]~2_combout\,
	datab => \SW~combout\(13),
	datac => \RF1|Reg10|Q_b\(0),
	datad => \RF1|Reg14|Q_b\(0),
	combout => \RF1|Ra_data[0]~3_combout\);

-- Location: LCFF_X62_Y24_N1
\RF1|Reg4|Q_b[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_KEY~combout\(0),
	datain => \RF1|Reg0|Q_b~0_combout\,
	ena => \RF1|Reg4|Q_b[3]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \RF1|Reg4|Q_b\(0));

-- Location: LCFF_X64_Y24_N25
\RF1|Reg8|Q_b[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_KEY~combout\(0),
	sdata => \RF1|Reg0|Q_b~0_combout\,
	sload => VCC,
	ena => \RF1|Reg8|Q_b[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \RF1|Reg8|Q_b\(0));

-- Location: LCFF_X63_Y24_N17
\RF1|Reg0|Q_b[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_KEY~combout\(0),
	sdata => \RF1|Reg0|Q_b~0_combout\,
	sload => VCC,
	ena => \RF1|Reg0|Q_b[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \RF1|Reg0|Q_b\(0));

-- Location: LCCOMB_X64_Y24_N24
\RF1|Ra_data[0]~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \RF1|Ra_data[0]~4_combout\ = (\SW~combout\(12) & (\SW~combout\(13))) # (!\SW~combout\(12) & ((\SW~combout\(13) & (\RF1|Reg8|Q_b\(0))) # (!\SW~combout\(13) & ((\RF1|Reg0|Q_b\(0))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW~combout\(12),
	datab => \SW~combout\(13),
	datac => \RF1|Reg8|Q_b\(0),
	datad => \RF1|Reg0|Q_b\(0),
	combout => \RF1|Ra_data[0]~4_combout\);

-- Location: LCFF_X62_Y24_N11
\RF1|Reg12|Q_b[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_KEY~combout\(0),
	sdata => \RF1|Reg0|Q_b~0_combout\,
	sload => VCC,
	ena => \RF1|Reg12|Q_b[4]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \RF1|Reg12|Q_b\(0));

-- Location: LCCOMB_X62_Y24_N10
\RF1|Ra_data[0]~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \RF1|Ra_data[0]~5_combout\ = (\SW~combout\(12) & ((\RF1|Ra_data[0]~4_combout\ & ((\RF1|Reg12|Q_b\(0)))) # (!\RF1|Ra_data[0]~4_combout\ & (\RF1|Reg4|Q_b\(0))))) # (!\SW~combout\(12) & (((\RF1|Ra_data[0]~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW~combout\(12),
	datab => \RF1|Reg4|Q_b\(0),
	datac => \RF1|Reg12|Q_b\(0),
	datad => \RF1|Ra_data[0]~4_combout\,
	combout => \RF1|Ra_data[0]~5_combout\);

-- Location: LCCOMB_X63_Y26_N20
\RF1|Ra_data[0]~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \RF1|Ra_data[0]~6_combout\ = (\SW~combout\(11) & ((\SW~combout\(10)) # ((\RF1|Ra_data[0]~3_combout\)))) # (!\SW~combout\(11) & (!\SW~combout\(10) & ((\RF1|Ra_data[0]~5_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100110101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW~combout\(11),
	datab => \SW~combout\(10),
	datac => \RF1|Ra_data[0]~3_combout\,
	datad => \RF1|Ra_data[0]~5_combout\,
	combout => \RF1|Ra_data[0]~6_combout\);

-- Location: LCFF_X64_Y24_N27
\RF1|Reg8|Q_b[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_KEY~combout\(0),
	sdata => \RF1|Reg0|Q_b~2_combout\,
	sload => VCC,
	ena => \RF1|Reg8|Q_b[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \RF1|Reg8|Q_b\(1));

-- Location: LCFF_X64_Y25_N1
\RF1|Reg10|Q_b[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_KEY~combout\(0),
	sdata => \RF1|Reg0|Q_b~3_combout\,
	sload => VCC,
	ena => \RF1|Reg10|Q_b[1]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \RF1|Reg10|Q_b\(2));

-- Location: LCFF_X63_Y27_N11
\RF1|Reg2|Q_b[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_KEY~combout\(0),
	sdata => \RF1|Reg0|Q_b~3_combout\,
	sload => VCC,
	ena => \RF1|Reg2|Q_b[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \RF1|Reg2|Q_b\(2));

-- Location: LCCOMB_X64_Y25_N0
\RF1|Ra_data[2]~20\ : cycloneii_lcell_comb
-- Equation(s):
-- \RF1|Ra_data[2]~20_combout\ = (\SW~combout\(12) & (((\SW~combout\(13))))) # (!\SW~combout\(12) & ((\SW~combout\(13) & ((\RF1|Reg10|Q_b\(2)))) # (!\SW~combout\(13) & (\RF1|Reg2|Q_b\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW~combout\(12),
	datab => \RF1|Reg2|Q_b\(2),
	datac => \RF1|Reg10|Q_b\(2),
	datad => \SW~combout\(13),
	combout => \RF1|Ra_data[2]~20_combout\);

-- Location: LCCOMB_X63_Y27_N8
\RF1|Ra_data[2]~21\ : cycloneii_lcell_comb
-- Equation(s):
-- \RF1|Ra_data[2]~21_combout\ = (\SW~combout\(12) & ((\RF1|Ra_data[2]~20_combout\ & ((\RF1|Reg14|Q_b\(2)))) # (!\RF1|Ra_data[2]~20_combout\ & (\RF1|Reg6|Q_b\(2))))) # (!\SW~combout\(12) & (\RF1|Ra_data[2]~20_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110001100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW~combout\(12),
	datab => \RF1|Ra_data[2]~20_combout\,
	datac => \RF1|Reg6|Q_b\(2),
	datad => \RF1|Reg14|Q_b\(2),
	combout => \RF1|Ra_data[2]~21_combout\);

-- Location: LCFF_X63_Y24_N31
\RF1|Reg4|Q_b[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_KEY~combout\(0),
	sdata => \RF1|Reg0|Q_b~3_combout\,
	sload => VCC,
	ena => \RF1|Reg4|Q_b[3]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \RF1|Reg4|Q_b\(2));

-- Location: LCFF_X63_Y24_N25
\RF1|Reg0|Q_b[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_KEY~combout\(0),
	datain => \RF1|Reg0|Q_b~3_combout\,
	ena => \RF1|Reg0|Q_b[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \RF1|Reg0|Q_b\(2));

-- Location: LCCOMB_X63_Y24_N30
\RF1|Ra_data[2]~24\ : cycloneii_lcell_comb
-- Equation(s):
-- \RF1|Ra_data[2]~24_combout\ = (\SW~combout\(13) & (((\SW~combout\(12))))) # (!\SW~combout\(13) & ((\SW~combout\(12) & ((\RF1|Reg4|Q_b\(2)))) # (!\SW~combout\(12) & (\RF1|Reg0|Q_b\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RF1|Reg0|Q_b\(2),
	datab => \SW~combout\(13),
	datac => \RF1|Reg4|Q_b\(2),
	datad => \SW~combout\(12),
	combout => \RF1|Ra_data[2]~24_combout\);

-- Location: LCFF_X64_Y23_N25
\RF1|Reg11|Q_b[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_KEY~combout\(0),
	sdata => \RF1|Reg0|Q_b~3_combout\,
	sload => VCC,
	ena => \RF1|Reg11|Q_b[1]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \RF1|Reg11|Q_b\(2));

-- Location: LCFF_X63_Y25_N11
\RF1|Reg3|Q_b[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_KEY~combout\(0),
	sdata => \RF1|Reg0|Q_b~3_combout\,
	sload => VCC,
	ena => \RF1|Reg3|Q_b[5]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \RF1|Reg3|Q_b\(2));

-- Location: LCCOMB_X64_Y23_N24
\RF1|Ra_data[2]~27\ : cycloneii_lcell_comb
-- Equation(s):
-- \RF1|Ra_data[2]~27_combout\ = (\SW~combout\(12) & (\SW~combout\(13))) # (!\SW~combout\(12) & ((\SW~combout\(13) & (\RF1|Reg11|Q_b\(2))) # (!\SW~combout\(13) & ((\RF1|Reg3|Q_b\(2))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW~combout\(12),
	datab => \SW~combout\(13),
	datac => \RF1|Reg11|Q_b\(2),
	datad => \RF1|Reg3|Q_b\(2),
	combout => \RF1|Ra_data[2]~27_combout\);

-- Location: LCCOMB_X64_Y26_N4
\RF1|Ra_data[3]~30\ : cycloneii_lcell_comb
-- Equation(s):
-- \RF1|Ra_data[3]~30_combout\ = (\SW~combout\(11) & (\SW~combout\(10))) # (!\SW~combout\(11) & ((\SW~combout\(10) & (\RF1|Reg9|Q_b\(3))) # (!\SW~combout\(10) & ((\RF1|Reg8|Q_b\(3))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW~combout\(11),
	datab => \SW~combout\(10),
	datac => \RF1|Reg9|Q_b\(3),
	datad => \RF1|Reg8|Q_b\(3),
	combout => \RF1|Ra_data[3]~30_combout\);

-- Location: LCFF_X63_Y26_N17
\RF1|Reg5|Q_b[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_KEY~combout\(0),
	sdata => \RF1|Reg0|Q_b~4_combout\,
	sload => VCC,
	ena => \RF1|Reg5|Q_b[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \RF1|Reg5|Q_b\(3));

-- Location: LCFF_X63_Y27_N21
\RF1|Reg6|Q_b[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_KEY~combout\(0),
	sdata => \RF1|Reg0|Q_b~4_combout\,
	sload => VCC,
	ena => \RF1|Reg6|Q_b[4]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \RF1|Reg6|Q_b\(3));

-- Location: LCFF_X63_Y24_N11
\RF1|Reg4|Q_b[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_KEY~combout\(0),
	sdata => \RF1|Reg0|Q_b~4_combout\,
	sload => VCC,
	ena => \RF1|Reg4|Q_b[3]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \RF1|Reg4|Q_b\(3));

-- Location: LCCOMB_X63_Y27_N20
\RF1|Ra_data[3]~32\ : cycloneii_lcell_comb
-- Equation(s):
-- \RF1|Ra_data[3]~32_combout\ = (\SW~combout\(10) & (((\SW~combout\(11))))) # (!\SW~combout\(10) & ((\SW~combout\(11) & ((\RF1|Reg6|Q_b\(3)))) # (!\SW~combout\(11) & (\RF1|Reg4|Q_b\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW~combout\(10),
	datab => \RF1|Reg4|Q_b\(3),
	datac => \RF1|Reg6|Q_b\(3),
	datad => \SW~combout\(11),
	combout => \RF1|Ra_data[3]~32_combout\);

-- Location: LCFF_X63_Y25_N13
\RF1|Reg7|Q_b[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_KEY~combout\(0),
	sdata => \RF1|Reg0|Q_b~4_combout\,
	sload => VCC,
	ena => \RF1|Reg7|Q_b[5]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \RF1|Reg7|Q_b\(3));

-- Location: LCCOMB_X63_Y26_N16
\RF1|Ra_data[3]~33\ : cycloneii_lcell_comb
-- Equation(s):
-- \RF1|Ra_data[3]~33_combout\ = (\SW~combout\(10) & ((\RF1|Ra_data[3]~32_combout\ & ((\RF1|Reg7|Q_b\(3)))) # (!\RF1|Ra_data[3]~32_combout\ & (\RF1|Reg5|Q_b\(3))))) # (!\SW~combout\(10) & (\RF1|Ra_data[3]~32_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110001100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW~combout\(10),
	datab => \RF1|Ra_data[3]~32_combout\,
	datac => \RF1|Reg5|Q_b\(3),
	datad => \RF1|Reg7|Q_b\(3),
	combout => \RF1|Ra_data[3]~33_combout\);

-- Location: LCFF_X63_Y23_N25
\RF1|Reg1|Q_b[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_KEY~combout\(0),
	sdata => \RF1|Reg0|Q_b~4_combout\,
	sload => VCC,
	ena => \RF1|Reg1|Q_b[4]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \RF1|Reg1|Q_b\(3));

-- Location: LCFF_X63_Y27_N23
\RF1|Reg2|Q_b[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_KEY~combout\(0),
	sdata => \RF1|Reg0|Q_b~4_combout\,
	sload => VCC,
	ena => \RF1|Reg2|Q_b[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \RF1|Reg2|Q_b\(3));

-- Location: LCCOMB_X63_Y27_N22
\RF1|Ra_data[3]~34\ : cycloneii_lcell_comb
-- Equation(s):
-- \RF1|Ra_data[3]~34_combout\ = (\SW~combout\(10) & (((\SW~combout\(11))))) # (!\SW~combout\(10) & ((\SW~combout\(11) & ((\RF1|Reg2|Q_b\(3)))) # (!\SW~combout\(11) & (\RF1|Reg0|Q_b\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RF1|Reg0|Q_b\(3),
	datab => \SW~combout\(10),
	datac => \RF1|Reg2|Q_b\(3),
	datad => \SW~combout\(11),
	combout => \RF1|Ra_data[3]~34_combout\);

-- Location: LCCOMB_X63_Y23_N24
\RF1|Ra_data[3]~35\ : cycloneii_lcell_comb
-- Equation(s):
-- \RF1|Ra_data[3]~35_combout\ = (\SW~combout\(10) & ((\RF1|Ra_data[3]~34_combout\ & (\RF1|Reg3|Q_b\(3))) # (!\RF1|Ra_data[3]~34_combout\ & ((\RF1|Reg1|Q_b\(3)))))) # (!\SW~combout\(10) & (((\RF1|Ra_data[3]~34_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RF1|Reg3|Q_b\(3),
	datab => \SW~combout\(10),
	datac => \RF1|Reg1|Q_b\(3),
	datad => \RF1|Ra_data[3]~34_combout\,
	combout => \RF1|Ra_data[3]~35_combout\);

-- Location: LCCOMB_X64_Y26_N6
\RF1|Ra_data[3]~36\ : cycloneii_lcell_comb
-- Equation(s):
-- \RF1|Ra_data[3]~36_combout\ = (\SW~combout\(12) & (((\SW~combout\(13)) # (\RF1|Ra_data[3]~33_combout\)))) # (!\SW~combout\(12) & (\RF1|Ra_data[3]~35_combout\ & (!\SW~combout\(13))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111010100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW~combout\(12),
	datab => \RF1|Ra_data[3]~35_combout\,
	datac => \SW~combout\(13),
	datad => \RF1|Ra_data[3]~33_combout\,
	combout => \RF1|Ra_data[3]~36_combout\);

-- Location: LCFF_X63_Y25_N17
\RF1|Reg7|Q_b[5]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_KEY~combout\(0),
	sdata => \RF1|Reg0|Q_b~5_combout\,
	sload => VCC,
	ena => \RF1|Reg7|Q_b[5]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \RF1|Reg7|Q_b\(5));

-- Location: LCCOMB_X63_Y25_N16
\RF1|Ra_data[5]~47\ : cycloneii_lcell_comb
-- Equation(s):
-- \RF1|Ra_data[5]~47_combout\ = (\SW~combout\(13) & (\SW~combout\(12))) # (!\SW~combout\(13) & ((\SW~combout\(12) & (\RF1|Reg7|Q_b\(5))) # (!\SW~combout\(12) & ((\RF1|Reg3|Q_b\(5))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW~combout\(13),
	datab => \SW~combout\(12),
	datac => \RF1|Reg7|Q_b\(5),
	datad => \RF1|Reg3|Q_b\(5),
	combout => \RF1|Ra_data[5]~47_combout\);

-- Location: LCCOMB_X63_Y27_N2
\RF1|Rb_data[0]~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \RF1|Rb_data[0]~2_combout\ = (\SW~combout\(16) & ((\SW~combout\(17)) # ((\RF1|Reg6|Q_b\(0))))) # (!\SW~combout\(16) & (!\SW~combout\(17) & (\RF1|Reg2|Q_b\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW~combout\(16),
	datab => \SW~combout\(17),
	datac => \RF1|Reg2|Q_b\(0),
	datad => \RF1|Reg6|Q_b\(0),
	combout => \RF1|Rb_data[0]~2_combout\);

-- Location: LCCOMB_X64_Y27_N18
\RF1|Rb_data[0]~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \RF1|Rb_data[0]~3_combout\ = (\RF1|Rb_data[0]~2_combout\ & (((\RF1|Reg14|Q_b\(0)) # (!\SW~combout\(17))))) # (!\RF1|Rb_data[0]~2_combout\ & (\RF1|Reg10|Q_b\(0) & ((\SW~combout\(17)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RF1|Rb_data[0]~2_combout\,
	datab => \RF1|Reg10|Q_b\(0),
	datac => \RF1|Reg14|Q_b\(0),
	datad => \SW~combout\(17),
	combout => \RF1|Rb_data[0]~3_combout\);

-- Location: LCCOMB_X63_Y24_N16
\RF1|Rb_data[0]~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \RF1|Rb_data[0]~4_combout\ = (\SW~combout\(16) & (((\SW~combout\(17))))) # (!\SW~combout\(16) & ((\SW~combout\(17) & (\RF1|Reg8|Q_b\(0))) # (!\SW~combout\(17) & ((\RF1|Reg0|Q_b\(0))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW~combout\(16),
	datab => \RF1|Reg8|Q_b\(0),
	datac => \RF1|Reg0|Q_b\(0),
	datad => \SW~combout\(17),
	combout => \RF1|Rb_data[0]~4_combout\);

-- Location: LCCOMB_X62_Y24_N28
\RF1|Rb_data[0]~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \RF1|Rb_data[0]~5_combout\ = (\RF1|Rb_data[0]~4_combout\ & ((\RF1|Reg12|Q_b\(0)) # ((!\SW~combout\(16))))) # (!\RF1|Rb_data[0]~4_combout\ & (((\RF1|Reg4|Q_b\(0) & \SW~combout\(16)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RF1|Reg12|Q_b\(0),
	datab => \RF1|Reg4|Q_b\(0),
	datac => \RF1|Rb_data[0]~4_combout\,
	datad => \SW~combout\(16),
	combout => \RF1|Rb_data[0]~5_combout\);

-- Location: LCCOMB_X62_Y25_N20
\RF1|Rb_data[0]~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \RF1|Rb_data[0]~6_combout\ = (\SW~combout\(14) & (((\SW~combout\(15))))) # (!\SW~combout\(14) & ((\SW~combout\(15) & ((\RF1|Rb_data[0]~3_combout\))) # (!\SW~combout\(15) & (\RF1|Rb_data[0]~5_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW~combout\(14),
	datab => \RF1|Rb_data[0]~5_combout\,
	datac => \RF1|Rb_data[0]~3_combout\,
	datad => \SW~combout\(15),
	combout => \RF1|Rb_data[0]~6_combout\);

-- Location: LCCOMB_X64_Y24_N26
\RF1|Rb_data[1]~12\ : cycloneii_lcell_comb
-- Equation(s):
-- \RF1|Rb_data[1]~12_combout\ = (\SW~combout\(14) & (\SW~combout\(15))) # (!\SW~combout\(14) & ((\SW~combout\(15) & ((\RF1|Reg10|Q_b\(1)))) # (!\SW~combout\(15) & (\RF1|Reg8|Q_b\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW~combout\(14),
	datab => \SW~combout\(15),
	datac => \RF1|Reg8|Q_b\(1),
	datad => \RF1|Reg10|Q_b\(1),
	combout => \RF1|Rb_data[1]~12_combout\);

-- Location: LCCOMB_X62_Y25_N12
\RF1|Rb_data[1]~13\ : cycloneii_lcell_comb
-- Equation(s):
-- \RF1|Rb_data[1]~13_combout\ = (\SW~combout\(14) & ((\RF1|Rb_data[1]~12_combout\ & (\RF1|Reg11|Q_b\(1))) # (!\RF1|Rb_data[1]~12_combout\ & ((\RF1|Reg9|Q_b\(1)))))) # (!\SW~combout\(14) & (\RF1|Rb_data[1]~12_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110011011000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW~combout\(14),
	datab => \RF1|Rb_data[1]~12_combout\,
	datac => \RF1|Reg11|Q_b\(1),
	datad => \RF1|Reg9|Q_b\(1),
	combout => \RF1|Rb_data[1]~13_combout\);

-- Location: LCCOMB_X63_Y27_N10
\RF1|Rb_data[2]~20\ : cycloneii_lcell_comb
-- Equation(s):
-- \RF1|Rb_data[2]~20_combout\ = (\SW~combout\(16) & (\SW~combout\(17))) # (!\SW~combout\(16) & ((\SW~combout\(17) & ((\RF1|Reg10|Q_b\(2)))) # (!\SW~combout\(17) & (\RF1|Reg2|Q_b\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW~combout\(16),
	datab => \SW~combout\(17),
	datac => \RF1|Reg2|Q_b\(2),
	datad => \RF1|Reg10|Q_b\(2),
	combout => \RF1|Rb_data[2]~20_combout\);

-- Location: LCCOMB_X64_Y24_N6
\RF1|Rb_data[2]~24\ : cycloneii_lcell_comb
-- Equation(s):
-- \RF1|Rb_data[2]~24_combout\ = (\SW~combout\(16) & ((\RF1|Reg4|Q_b\(2)) # ((\SW~combout\(17))))) # (!\SW~combout\(16) & (((!\SW~combout\(17) & \RF1|Reg0|Q_b\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RF1|Reg4|Q_b\(2),
	datab => \SW~combout\(16),
	datac => \SW~combout\(17),
	datad => \RF1|Reg0|Q_b\(2),
	combout => \RF1|Rb_data[2]~24_combout\);

-- Location: LCCOMB_X64_Y24_N0
\RF1|Rb_data[2]~25\ : cycloneii_lcell_comb
-- Equation(s):
-- \RF1|Rb_data[2]~25_combout\ = (\RF1|Rb_data[2]~24_combout\ & (((\RF1|Reg12|Q_b\(2))) # (!\SW~combout\(17)))) # (!\RF1|Rb_data[2]~24_combout\ & (\SW~combout\(17) & ((\RF1|Reg8|Q_b\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110011010100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RF1|Rb_data[2]~24_combout\,
	datab => \SW~combout\(17),
	datac => \RF1|Reg12|Q_b\(2),
	datad => \RF1|Reg8|Q_b\(2),
	combout => \RF1|Rb_data[2]~25_combout\);

-- Location: LCCOMB_X63_Y25_N10
\RF1|Rb_data[2]~27\ : cycloneii_lcell_comb
-- Equation(s):
-- \RF1|Rb_data[2]~27_combout\ = (\SW~combout\(16) & (\SW~combout\(17))) # (!\SW~combout\(16) & ((\SW~combout\(17) & ((\RF1|Reg11|Q_b\(2)))) # (!\SW~combout\(17) & (\RF1|Reg3|Q_b\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW~combout\(16),
	datab => \SW~combout\(17),
	datac => \RF1|Reg3|Q_b\(2),
	datad => \RF1|Reg11|Q_b\(2),
	combout => \RF1|Rb_data[2]~27_combout\);

-- Location: LCCOMB_X64_Y25_N26
\RF1|Rb_data[2]~28\ : cycloneii_lcell_comb
-- Equation(s):
-- \RF1|Rb_data[2]~28_combout\ = (\SW~combout\(16) & ((\RF1|Rb_data[2]~27_combout\ & ((\RF1|Reg15|Q_b\(2)))) # (!\RF1|Rb_data[2]~27_combout\ & (\RF1|Reg7|Q_b\(2))))) # (!\SW~combout\(16) & (((\RF1|Rb_data[2]~27_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RF1|Reg7|Q_b\(2),
	datab => \SW~combout\(16),
	datac => \RF1|Reg15|Q_b\(2),
	datad => \RF1|Rb_data[2]~27_combout\,
	combout => \RF1|Rb_data[2]~28_combout\);

-- Location: LCCOMB_X63_Y24_N10
\RF1|Rb_data[3]~32\ : cycloneii_lcell_comb
-- Equation(s):
-- \RF1|Rb_data[3]~32_combout\ = (\SW~combout\(15) & ((\SW~combout\(14)) # ((\RF1|Reg6|Q_b\(3))))) # (!\SW~combout\(15) & (!\SW~combout\(14) & (\RF1|Reg4|Q_b\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW~combout\(15),
	datab => \SW~combout\(14),
	datac => \RF1|Reg4|Q_b\(3),
	datad => \RF1|Reg6|Q_b\(3),
	combout => \RF1|Rb_data[3]~32_combout\);

-- Location: LCCOMB_X63_Y25_N12
\RF1|Rb_data[3]~33\ : cycloneii_lcell_comb
-- Equation(s):
-- \RF1|Rb_data[3]~33_combout\ = (\SW~combout\(14) & ((\RF1|Rb_data[3]~32_combout\ & ((\RF1|Reg7|Q_b\(3)))) # (!\RF1|Rb_data[3]~32_combout\ & (\RF1|Reg5|Q_b\(3))))) # (!\SW~combout\(14) & (((\RF1|Rb_data[3]~32_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RF1|Reg5|Q_b\(3),
	datab => \SW~combout\(14),
	datac => \RF1|Reg7|Q_b\(3),
	datad => \RF1|Rb_data[3]~32_combout\,
	combout => \RF1|Rb_data[3]~33_combout\);

-- Location: LCCOMB_X63_Y23_N26
\RF1|Rb_data[5]~40\ : cycloneii_lcell_comb
-- Equation(s):
-- \RF1|Rb_data[5]~40_combout\ = (\SW~combout\(16) & (\SW~combout\(17))) # (!\SW~combout\(16) & ((\SW~combout\(17) & ((\RF1|Reg9|Q_b\(5)))) # (!\SW~combout\(17) & (\RF1|Reg1|Q_b\(5)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW~combout\(16),
	datab => \SW~combout\(17),
	datac => \RF1|Reg1|Q_b\(5),
	datad => \RF1|Reg9|Q_b\(5),
	combout => \RF1|Rb_data[5]~40_combout\);

-- Location: LCCOMB_X63_Y27_N18
\RF1|Rb_data[5]~42\ : cycloneii_lcell_comb
-- Equation(s):
-- \RF1|Rb_data[5]~42_combout\ = (\SW~combout\(17) & (((\SW~combout\(16))))) # (!\SW~combout\(17) & ((\SW~combout\(16) & (\RF1|Reg6|Q_b\(5))) # (!\SW~combout\(16) & ((\RF1|Reg2|Q_b\(5))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RF1|Reg6|Q_b\(5),
	datab => \SW~combout\(17),
	datac => \RF1|Reg2|Q_b\(5),
	datad => \SW~combout\(16),
	combout => \RF1|Rb_data[5]~42_combout\);

-- Location: LCCOMB_X64_Y27_N16
\RF1|Rb_data[5]~43\ : cycloneii_lcell_comb
-- Equation(s):
-- \RF1|Rb_data[5]~43_combout\ = (\SW~combout\(17) & ((\RF1|Rb_data[5]~42_combout\ & ((\RF1|Reg14|Q_b\(5)))) # (!\RF1|Rb_data[5]~42_combout\ & (\RF1|Reg10|Q_b\(5))))) # (!\SW~combout\(17) & (((\RF1|Rb_data[5]~42_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW~combout\(17),
	datab => \RF1|Reg10|Q_b\(5),
	datac => \RF1|Reg14|Q_b\(5),
	datad => \RF1|Rb_data[5]~42_combout\,
	combout => \RF1|Rb_data[5]~43_combout\);

-- Location: LCCOMB_X64_Y24_N18
\RF1|Rb_data[4]~52\ : cycloneii_lcell_comb
-- Equation(s):
-- \RF1|Rb_data[4]~52_combout\ = (\SW~combout\(14) & (((\SW~combout\(15))))) # (!\SW~combout\(14) & ((\SW~combout\(15) & (\RF1|Reg10|Q_b\(4))) # (!\SW~combout\(15) & ((\RF1|Reg8|Q_b\(4))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW~combout\(14),
	datab => \RF1|Reg10|Q_b\(4),
	datac => \RF1|Reg8|Q_b\(4),
	datad => \SW~combout\(15),
	combout => \RF1|Rb_data[4]~52_combout\);

-- Location: LCCOMB_X64_Y23_N0
\RF1|Rb_data[4]~53\ : cycloneii_lcell_comb
-- Equation(s):
-- \RF1|Rb_data[4]~53_combout\ = (\RF1|Rb_data[4]~52_combout\ & (((\RF1|Reg11|Q_b\(4))) # (!\SW~combout\(14)))) # (!\RF1|Rb_data[4]~52_combout\ & (\SW~combout\(14) & ((\RF1|Reg9|Q_b\(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110011010100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RF1|Rb_data[4]~52_combout\,
	datab => \SW~combout\(14),
	datac => \RF1|Reg11|Q_b\(4),
	datad => \RF1|Reg9|Q_b\(4),
	combout => \RF1|Rb_data[4]~53_combout\);

-- Location: LCCOMB_X63_Y24_N4
\RF1|Rb_data[4]~54\ : cycloneii_lcell_comb
-- Equation(s):
-- \RF1|Rb_data[4]~54_combout\ = (\SW~combout\(15) & (\SW~combout\(14))) # (!\SW~combout\(15) & ((\SW~combout\(14) & ((\RF1|Reg1|Q_b\(4)))) # (!\SW~combout\(14) & (\RF1|Reg0|Q_b\(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW~combout\(15),
	datab => \SW~combout\(14),
	datac => \RF1|Reg0|Q_b\(4),
	datad => \RF1|Reg1|Q_b\(4),
	combout => \RF1|Rb_data[4]~54_combout\);

-- Location: LCCOMB_X63_Y23_N14
\RF1|Rb_data[4]~55\ : cycloneii_lcell_comb
-- Equation(s):
-- \RF1|Rb_data[4]~55_combout\ = (\RF1|Rb_data[4]~54_combout\ & (((\RF1|Reg3|Q_b\(4))) # (!\SW~combout\(15)))) # (!\RF1|Rb_data[4]~54_combout\ & (\SW~combout\(15) & ((\RF1|Reg2|Q_b\(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110011010100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RF1|Rb_data[4]~54_combout\,
	datab => \SW~combout\(15),
	datac => \RF1|Reg3|Q_b\(4),
	datad => \RF1|Reg2|Q_b\(4),
	combout => \RF1|Rb_data[4]~55_combout\);

-- Location: LCCOMB_X64_Y23_N16
\RF1|Rb_data[4]~56\ : cycloneii_lcell_comb
-- Equation(s):
-- \RF1|Rb_data[4]~56_combout\ = (\SW~combout\(16) & (((\SW~combout\(17))))) # (!\SW~combout\(16) & ((\SW~combout\(17) & ((\RF1|Rb_data[4]~53_combout\))) # (!\SW~combout\(17) & (\RF1|Rb_data[4]~55_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001011000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RF1|Rb_data[4]~55_combout\,
	datab => \SW~combout\(16),
	datac => \SW~combout\(17),
	datad => \RF1|Rb_data[4]~53_combout\,
	combout => \RF1|Rb_data[4]~56_combout\);

-- Location: LCCOMB_X61_Y24_N14
\RF1|Reg11|Q_b[1]~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \RF1|Reg11|Q_b[1]~0_combout\ = (\SW~combout\(6) & \SW~combout\(7))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \SW~combout\(6),
	datad => \SW~combout\(7),
	combout => \RF1|Reg11|Q_b[1]~0_combout\);

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

-- Location: PIN_N23,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\KEY[1]~I\ : cycloneii_io
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
	padio => ww_KEY(1),
	combout => \KEY~combout\(1));

-- Location: LCCOMB_X63_Y24_N24
\RF1|Reg0|Q_b~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \RF1|Reg0|Q_b~3_combout\ = (\SW~combout\(2) & \KEY~combout\(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW~combout\(2),
	datac => \KEY~combout\(1),
	combout => \RF1|Reg0|Q_b~3_combout\);

-- Location: LCCOMB_X62_Y24_N2
\RF1|Reg7|Q_b[5]~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \RF1|Reg7|Q_b[5]~0_combout\ = ((\RF1|Reg11|Q_b[1]~0_combout\ & (\SW~combout\(8) & !\SW~combout\(9)))) # (!\KEY~combout\(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RF1|Reg11|Q_b[1]~0_combout\,
	datab => \SW~combout\(8),
	datac => \SW~combout\(9),
	datad => \KEY~combout\(1),
	combout => \RF1|Reg7|Q_b[5]~0_combout\);

-- Location: LCFF_X63_Y25_N25
\RF1|Reg7|Q_b[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_KEY~combout\(0),
	sdata => \RF1|Reg0|Q_b~3_combout\,
	sload => VCC,
	ena => \RF1|Reg7|Q_b[5]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \RF1|Reg7|Q_b\(2));

-- Location: LCCOMB_X62_Y24_N6
\RF1|Reg15|Q_b[1]~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \RF1|Reg15|Q_b[1]~0_combout\ = ((\RF1|Reg11|Q_b[1]~0_combout\ & (\SW~combout\(8) & \SW~combout\(9)))) # (!\KEY~combout\(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RF1|Reg11|Q_b[1]~0_combout\,
	datab => \SW~combout\(8),
	datac => \SW~combout\(9),
	datad => \KEY~combout\(1),
	combout => \RF1|Reg15|Q_b[1]~0_combout\);

-- Location: LCFF_X64_Y25_N27
\RF1|Reg15|Q_b[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_KEY~combout\(0),
	sdata => \RF1|Reg0|Q_b~3_combout\,
	sload => VCC,
	ena => \RF1|Reg15|Q_b[1]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \RF1|Reg15|Q_b\(2));

-- Location: LCCOMB_X63_Y25_N24
\RF1|Ra_data[2]~28\ : cycloneii_lcell_comb
-- Equation(s):
-- \RF1|Ra_data[2]~28_combout\ = (\RF1|Ra_data[2]~27_combout\ & (((\RF1|Reg15|Q_b\(2))) # (!\SW~combout\(12)))) # (!\RF1|Ra_data[2]~27_combout\ & (\SW~combout\(12) & (\RF1|Reg7|Q_b\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101001100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RF1|Ra_data[2]~27_combout\,
	datab => \SW~combout\(12),
	datac => \RF1|Reg7|Q_b\(2),
	datad => \RF1|Reg15|Q_b\(2),
	combout => \RF1|Ra_data[2]~28_combout\);

-- Location: LCCOMB_X61_Y24_N16
\RF1|Reg5|Q_b[0]~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \RF1|Reg5|Q_b[0]~0_combout\ = (\SW~combout\(6) & !\SW~combout\(7))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \SW~combout\(6),
	datad => \SW~combout\(7),
	combout => \RF1|Reg5|Q_b[0]~0_combout\);

-- Location: LCCOMB_X62_Y24_N24
\RF1|Reg9|Q_b[0]~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \RF1|Reg9|Q_b[0]~0_combout\ = ((!\SW~combout\(8) & (\RF1|Reg5|Q_b[0]~0_combout\ & \SW~combout\(9)))) # (!\KEY~combout\(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW~combout\(8),
	datab => \RF1|Reg5|Q_b[0]~0_combout\,
	datac => \SW~combout\(9),
	datad => \KEY~combout\(1),
	combout => \RF1|Reg9|Q_b[0]~0_combout\);

-- Location: LCFF_X64_Y26_N29
\RF1|Reg9|Q_b[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_KEY~combout\(0),
	sdata => \RF1|Reg0|Q_b~3_combout\,
	sload => VCC,
	ena => \RF1|Reg9|Q_b[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \RF1|Reg9|Q_b\(2));

-- Location: LCCOMB_X62_Y24_N26
\RF1|Reg1|Q_b[4]~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \RF1|Reg1|Q_b[4]~0_combout\ = ((!\SW~combout\(8) & (\RF1|Reg5|Q_b[0]~0_combout\ & !\SW~combout\(9)))) # (!\KEY~combout\(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW~combout\(8),
	datab => \RF1|Reg5|Q_b[0]~0_combout\,
	datac => \SW~combout\(9),
	datad => \KEY~combout\(1),
	combout => \RF1|Reg1|Q_b[4]~0_combout\);

-- Location: LCFF_X64_Y26_N31
\RF1|Reg1|Q_b[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_KEY~combout\(0),
	sdata => \RF1|Reg0|Q_b~3_combout\,
	sload => VCC,
	ena => \RF1|Reg1|Q_b[4]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \RF1|Reg1|Q_b\(2));

-- Location: LCCOMB_X62_Y24_N14
\RF1|Reg5|Q_b[0]~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \RF1|Reg5|Q_b[0]~1_combout\ = ((\SW~combout\(8) & (\RF1|Reg5|Q_b[0]~0_combout\ & !\SW~combout\(9)))) # (!\KEY~combout\(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW~combout\(8),
	datab => \RF1|Reg5|Q_b[0]~0_combout\,
	datac => \SW~combout\(9),
	datad => \KEY~combout\(1),
	combout => \RF1|Reg5|Q_b[0]~1_combout\);

-- Location: LCFF_X63_Y26_N29
\RF1|Reg5|Q_b[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_KEY~combout\(0),
	sdata => \RF1|Reg0|Q_b~3_combout\,
	sload => VCC,
	ena => \RF1|Reg5|Q_b[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \RF1|Reg5|Q_b\(2));

-- Location: LCCOMB_X63_Y26_N28
\RF1|Ra_data[2]~22\ : cycloneii_lcell_comb
-- Equation(s):
-- \RF1|Ra_data[2]~22_combout\ = (\SW~combout\(13) & (((\SW~combout\(12))))) # (!\SW~combout\(13) & ((\SW~combout\(12) & ((\RF1|Reg5|Q_b\(2)))) # (!\SW~combout\(12) & (\RF1|Reg1|Q_b\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW~combout\(13),
	datab => \RF1|Reg1|Q_b\(2),
	datac => \RF1|Reg5|Q_b\(2),
	datad => \SW~combout\(12),
	combout => \RF1|Ra_data[2]~22_combout\);

-- Location: LCCOMB_X64_Y26_N28
\RF1|Ra_data[2]~23\ : cycloneii_lcell_comb
-- Equation(s):
-- \RF1|Ra_data[2]~23_combout\ = (\SW~combout\(13) & ((\RF1|Ra_data[2]~22_combout\ & (\RF1|Reg13|Q_b\(2))) # (!\RF1|Ra_data[2]~22_combout\ & ((\RF1|Reg9|Q_b\(2)))))) # (!\SW~combout\(13) & (((\RF1|Ra_data[2]~22_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RF1|Reg13|Q_b\(2),
	datab => \SW~combout\(13),
	datac => \RF1|Reg9|Q_b\(2),
	datad => \RF1|Ra_data[2]~22_combout\,
	combout => \RF1|Ra_data[2]~23_combout\);

-- Location: LCCOMB_X61_Y24_N28
\RF1|Reg4|Q_b[3]~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \RF1|Reg4|Q_b[3]~0_combout\ = (!\SW~combout\(6) & !\SW~combout\(7))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \SW~combout\(6),
	datad => \SW~combout\(7),
	combout => \RF1|Reg4|Q_b[3]~0_combout\);

-- Location: LCCOMB_X62_Y24_N30
\RF1|Reg12|Q_b[4]~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \RF1|Reg12|Q_b[4]~0_combout\ = ((\SW~combout\(8) & (\RF1|Reg4|Q_b[3]~0_combout\ & \SW~combout\(9)))) # (!\KEY~combout\(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW~combout\(8),
	datab => \RF1|Reg4|Q_b[3]~0_combout\,
	datac => \SW~combout\(9),
	datad => \KEY~combout\(1),
	combout => \RF1|Reg12|Q_b[4]~0_combout\);

-- Location: LCFF_X64_Y24_N1
\RF1|Reg12|Q_b[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_KEY~combout\(0),
	sdata => \RF1|Reg0|Q_b~3_combout\,
	sload => VCC,
	ena => \RF1|Reg12|Q_b[4]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \RF1|Reg12|Q_b\(2));

-- Location: LCCOMB_X62_Y24_N18
\RF1|Reg8|Q_b[0]~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \RF1|Reg8|Q_b[0]~0_combout\ = ((!\SW~combout\(8) & (\RF1|Reg4|Q_b[3]~0_combout\ & \SW~combout\(9)))) # (!\KEY~combout\(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW~combout\(8),
	datab => \RF1|Reg4|Q_b[3]~0_combout\,
	datac => \SW~combout\(9),
	datad => \KEY~combout\(1),
	combout => \RF1|Reg8|Q_b[0]~0_combout\);

-- Location: LCFF_X64_Y24_N23
\RF1|Reg8|Q_b[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_KEY~combout\(0),
	sdata => \RF1|Reg0|Q_b~3_combout\,
	sload => VCC,
	ena => \RF1|Reg8|Q_b[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \RF1|Reg8|Q_b\(2));

-- Location: LCCOMB_X64_Y24_N22
\RF1|Ra_data[2]~25\ : cycloneii_lcell_comb
-- Equation(s):
-- \RF1|Ra_data[2]~25_combout\ = (\RF1|Ra_data[2]~24_combout\ & ((\RF1|Reg12|Q_b\(2)) # ((!\SW~combout\(13))))) # (!\RF1|Ra_data[2]~24_combout\ & (((\RF1|Reg8|Q_b\(2) & \SW~combout\(13)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RF1|Ra_data[2]~24_combout\,
	datab => \RF1|Reg12|Q_b\(2),
	datac => \RF1|Reg8|Q_b\(2),
	datad => \SW~combout\(13),
	combout => \RF1|Ra_data[2]~25_combout\);

-- Location: LCCOMB_X64_Y26_N0
\RF1|Ra_data[2]~26\ : cycloneii_lcell_comb
-- Equation(s):
-- \RF1|Ra_data[2]~26_combout\ = (\SW~combout\(10) & ((\RF1|Ra_data[2]~23_combout\) # ((\SW~combout\(11))))) # (!\SW~combout\(10) & (((!\SW~combout\(11) & \RF1|Ra_data[2]~25_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110110101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW~combout\(10),
	datab => \RF1|Ra_data[2]~23_combout\,
	datac => \SW~combout\(11),
	datad => \RF1|Ra_data[2]~25_combout\,
	combout => \RF1|Ra_data[2]~26_combout\);

-- Location: LCCOMB_X64_Y26_N26
\RF1|Ra_data[2]~29\ : cycloneii_lcell_comb
-- Equation(s):
-- \RF1|Ra_data[2]~29_combout\ = (\SW~combout\(11) & ((\RF1|Ra_data[2]~26_combout\ & ((\RF1|Ra_data[2]~28_combout\))) # (!\RF1|Ra_data[2]~26_combout\ & (\RF1|Ra_data[2]~21_combout\)))) # (!\SW~combout\(11) & (((\RF1|Ra_data[2]~26_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RF1|Ra_data[2]~21_combout\,
	datab => \RF1|Ra_data[2]~28_combout\,
	datac => \SW~combout\(11),
	datad => \RF1|Ra_data[2]~26_combout\,
	combout => \RF1|Ra_data[2]~29_combout\);

-- Location: LCCOMB_X64_Y27_N26
\RF1|Reg0|Q_b~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \RF1|Reg0|Q_b~4_combout\ = (\KEY~combout\(1) & \SW~combout\(3))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \KEY~combout\(1),
	datac => \SW~combout\(3),
	combout => \RF1|Reg0|Q_b~4_combout\);

-- Location: LCCOMB_X62_Y24_N16
\RF1|Reg11|Q_b[1]~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \RF1|Reg11|Q_b[1]~1_combout\ = ((\RF1|Reg11|Q_b[1]~0_combout\ & (!\SW~combout\(8) & \SW~combout\(9)))) # (!\KEY~combout\(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RF1|Reg11|Q_b[1]~0_combout\,
	datab => \SW~combout\(8),
	datac => \SW~combout\(9),
	datad => \KEY~combout\(1),
	combout => \RF1|Reg11|Q_b[1]~1_combout\);

-- Location: LCFF_X64_Y23_N11
\RF1|Reg11|Q_b[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_KEY~combout\(0),
	sdata => \RF1|Reg0|Q_b~4_combout\,
	sload => VCC,
	ena => \RF1|Reg11|Q_b[1]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \RF1|Reg11|Q_b\(3));

-- Location: LCCOMB_X63_Y27_N26
\RF1|Reg10|Q_b[1]~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \RF1|Reg10|Q_b[1]~1_combout\ = ((\RF1|Reg10|Q_b[1]~0_combout\ & (!\SW~combout\(8) & \SW~combout\(9)))) # (!\KEY~combout\(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RF1|Reg10|Q_b[1]~0_combout\,
	datab => \SW~combout\(8),
	datac => \SW~combout\(9),
	datad => \KEY~combout\(1),
	combout => \RF1|Reg10|Q_b[1]~1_combout\);

-- Location: LCFF_X64_Y27_N27
\RF1|Reg10|Q_b[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_KEY~combout\(0),
	datain => \RF1|Reg0|Q_b~4_combout\,
	ena => \RF1|Reg10|Q_b[1]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \RF1|Reg10|Q_b\(3));

-- Location: LCCOMB_X64_Y23_N10
\RF1|Ra_data[3]~31\ : cycloneii_lcell_comb
-- Equation(s):
-- \RF1|Ra_data[3]~31_combout\ = (\RF1|Ra_data[3]~30_combout\ & (((\RF1|Reg11|Q_b\(3))) # (!\SW~combout\(11)))) # (!\RF1|Ra_data[3]~30_combout\ & (\SW~combout\(11) & ((\RF1|Reg10|Q_b\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110011010100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RF1|Ra_data[3]~30_combout\,
	datab => \SW~combout\(11),
	datac => \RF1|Reg11|Q_b\(3),
	datad => \RF1|Reg10|Q_b\(3),
	combout => \RF1|Ra_data[3]~31_combout\);

-- Location: LCFF_X64_Y24_N5
\RF1|Reg12|Q_b[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_KEY~combout\(0),
	sdata => \RF1|Reg0|Q_b~4_combout\,
	sload => VCC,
	ena => \RF1|Reg12|Q_b[4]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \RF1|Reg12|Q_b\(3));

-- Location: LCCOMB_X62_Y24_N4
\RF1|Reg13|Q_b[2]~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \RF1|Reg13|Q_b[2]~0_combout\ = ((\SW~combout\(8) & (\RF1|Reg5|Q_b[0]~0_combout\ & \SW~combout\(9)))) # (!\KEY~combout\(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW~combout\(8),
	datab => \RF1|Reg5|Q_b[0]~0_combout\,
	datac => \SW~combout\(9),
	datad => \KEY~combout\(1),
	combout => \RF1|Reg13|Q_b[2]~0_combout\);

-- Location: LCFF_X64_Y22_N25
\RF1|Reg13|Q_b[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_KEY~combout\(0),
	sdata => \RF1|Reg0|Q_b~4_combout\,
	sload => VCC,
	ena => \RF1|Reg13|Q_b[2]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \RF1|Reg13|Q_b\(3));

-- Location: LCCOMB_X64_Y22_N24
\RF1|Ra_data[3]~37\ : cycloneii_lcell_comb
-- Equation(s):
-- \RF1|Ra_data[3]~37_combout\ = (\SW~combout\(10) & (((\RF1|Reg13|Q_b\(3)) # (\SW~combout\(11))))) # (!\SW~combout\(10) & (\RF1|Reg12|Q_b\(3) & ((!\SW~combout\(11)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW~combout\(10),
	datab => \RF1|Reg12|Q_b\(3),
	datac => \RF1|Reg13|Q_b\(3),
	datad => \SW~combout\(11),
	combout => \RF1|Ra_data[3]~37_combout\);

-- Location: LCCOMB_X61_Y24_N10
\RF1|Reg10|Q_b[1]~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \RF1|Reg10|Q_b[1]~0_combout\ = (!\SW~combout\(6) & \SW~combout\(7))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \SW~combout\(6),
	datad => \SW~combout\(7),
	combout => \RF1|Reg10|Q_b[1]~0_combout\);

-- Location: LCCOMB_X62_Y24_N22
\RF1|Reg14|Q_b[3]~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \RF1|Reg14|Q_b[3]~0_combout\ = ((\SW~combout\(8) & (\RF1|Reg10|Q_b[1]~0_combout\ & \SW~combout\(9)))) # (!\KEY~combout\(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW~combout\(8),
	datab => \RF1|Reg10|Q_b[1]~0_combout\,
	datac => \SW~combout\(9),
	datad => \KEY~combout\(1),
	combout => \RF1|Reg14|Q_b[3]~0_combout\);

-- Location: LCFF_X64_Y27_N21
\RF1|Reg14|Q_b[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_KEY~combout\(0),
	sdata => \RF1|Reg0|Q_b~4_combout\,
	sload => VCC,
	ena => \RF1|Reg14|Q_b[3]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \RF1|Reg14|Q_b\(3));

-- Location: LCFF_X64_Y25_N29
\RF1|Reg15|Q_b[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_KEY~combout\(0),
	sdata => \RF1|Reg0|Q_b~4_combout\,
	sload => VCC,
	ena => \RF1|Reg15|Q_b[1]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \RF1|Reg15|Q_b\(3));

-- Location: LCCOMB_X64_Y27_N20
\RF1|Ra_data[3]~38\ : cycloneii_lcell_comb
-- Equation(s):
-- \RF1|Ra_data[3]~38_combout\ = (\SW~combout\(11) & ((\RF1|Ra_data[3]~37_combout\ & ((\RF1|Reg15|Q_b\(3)))) # (!\RF1|Ra_data[3]~37_combout\ & (\RF1|Reg14|Q_b\(3))))) # (!\SW~combout\(11) & (\RF1|Ra_data[3]~37_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110001100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW~combout\(11),
	datab => \RF1|Ra_data[3]~37_combout\,
	datac => \RF1|Reg14|Q_b\(3),
	datad => \RF1|Reg15|Q_b\(3),
	combout => \RF1|Ra_data[3]~38_combout\);

-- Location: LCCOMB_X64_Y26_N16
\RF1|Ra_data[3]~39\ : cycloneii_lcell_comb
-- Equation(s):
-- \RF1|Ra_data[3]~39_combout\ = (\RF1|Ra_data[3]~36_combout\ & (((\RF1|Ra_data[3]~38_combout\) # (!\SW~combout\(13))))) # (!\RF1|Ra_data[3]~36_combout\ & (\RF1|Ra_data[3]~31_combout\ & (\SW~combout\(13))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101001001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RF1|Ra_data[3]~36_combout\,
	datab => \RF1|Ra_data[3]~31_combout\,
	datac => \SW~combout\(13),
	datad => \RF1|Ra_data[3]~38_combout\,
	combout => \RF1|Ra_data[3]~39_combout\);

-- Location: LCCOMB_X62_Y24_N0
\RF1|Reg0|Q_b~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \RF1|Reg0|Q_b~0_combout\ = (\SW~combout\(0) & \KEY~combout\(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW~combout\(0),
	datad => \KEY~combout\(1),
	combout => \RF1|Reg0|Q_b~0_combout\);

-- Location: LCFF_X64_Y26_N25
\RF1|Reg9|Q_b[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_KEY~combout\(0),
	sdata => \RF1|Reg0|Q_b~0_combout\,
	sload => VCC,
	ena => \RF1|Reg9|Q_b[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \RF1|Reg9|Q_b\(0));

-- Location: LCFF_X64_Y26_N19
\RF1|Reg1|Q_b[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_KEY~combout\(0),
	sdata => \RF1|Reg0|Q_b~0_combout\,
	sload => VCC,
	ena => \RF1|Reg1|Q_b[4]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \RF1|Reg1|Q_b\(0));

-- Location: LCCOMB_X64_Y26_N24
\RF1|Ra_data[0]~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \RF1|Ra_data[0]~0_combout\ = (\SW~combout\(12) & (\SW~combout\(13))) # (!\SW~combout\(12) & ((\SW~combout\(13) & (\RF1|Reg9|Q_b\(0))) # (!\SW~combout\(13) & ((\RF1|Reg1|Q_b\(0))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW~combout\(12),
	datab => \SW~combout\(13),
	datac => \RF1|Reg9|Q_b\(0),
	datad => \RF1|Reg1|Q_b\(0),
	combout => \RF1|Ra_data[0]~0_combout\);

-- Location: LCFF_X63_Y26_N9
\RF1|Reg5|Q_b[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_KEY~combout\(0),
	sdata => \RF1|Reg0|Q_b~0_combout\,
	sload => VCC,
	ena => \RF1|Reg5|Q_b[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \RF1|Reg5|Q_b\(0));

-- Location: LCCOMB_X63_Y26_N8
\RF1|Ra_data[0]~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \RF1|Ra_data[0]~1_combout\ = (\RF1|Ra_data[0]~0_combout\ & ((\RF1|Reg13|Q_b\(0)) # ((!\SW~combout\(12))))) # (!\RF1|Ra_data[0]~0_combout\ & (((\RF1|Reg5|Q_b\(0) & \SW~combout\(12)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RF1|Reg13|Q_b\(0),
	datab => \RF1|Ra_data[0]~0_combout\,
	datac => \RF1|Reg5|Q_b\(0),
	datad => \SW~combout\(12),
	combout => \RF1|Ra_data[0]~1_combout\);

-- Location: LCFF_X63_Y25_N1
\RF1|Reg7|Q_b[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_KEY~combout\(0),
	sdata => \RF1|Reg0|Q_b~0_combout\,
	sload => VCC,
	ena => \RF1|Reg7|Q_b[5]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \RF1|Reg7|Q_b\(0));

-- Location: LCCOMB_X62_Y24_N12
\RF1|Reg3|Q_b[5]~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \RF1|Reg3|Q_b[5]~0_combout\ = ((\RF1|Reg11|Q_b[1]~0_combout\ & (!\SW~combout\(8) & !\SW~combout\(9)))) # (!\KEY~combout\(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RF1|Reg11|Q_b[1]~0_combout\,
	datab => \SW~combout\(8),
	datac => \SW~combout\(9),
	datad => \KEY~combout\(1),
	combout => \RF1|Reg3|Q_b[5]~0_combout\);

-- Location: LCFF_X63_Y25_N19
\RF1|Reg3|Q_b[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_KEY~combout\(0),
	sdata => \RF1|Reg0|Q_b~0_combout\,
	sload => VCC,
	ena => \RF1|Reg3|Q_b[5]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \RF1|Reg3|Q_b\(0));

-- Location: LCCOMB_X63_Y25_N0
\RF1|Ra_data[0]~7\ : cycloneii_lcell_comb
-- Equation(s):
-- \RF1|Ra_data[0]~7_combout\ = (\SW~combout\(13) & (\SW~combout\(12))) # (!\SW~combout\(13) & ((\SW~combout\(12) & (\RF1|Reg7|Q_b\(0))) # (!\SW~combout\(12) & ((\RF1|Reg3|Q_b\(0))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW~combout\(13),
	datab => \SW~combout\(12),
	datac => \RF1|Reg7|Q_b\(0),
	datad => \RF1|Reg3|Q_b\(0),
	combout => \RF1|Ra_data[0]~7_combout\);

-- Location: LCFF_X62_Y25_N9
\RF1|Reg11|Q_b[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_KEY~combout\(0),
	sdata => \RF1|Reg0|Q_b~0_combout\,
	sload => VCC,
	ena => \RF1|Reg11|Q_b[1]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \RF1|Reg11|Q_b\(0));

-- Location: LCCOMB_X62_Y25_N8
\RF1|Ra_data[0]~8\ : cycloneii_lcell_comb
-- Equation(s):
-- \RF1|Ra_data[0]~8_combout\ = (\RF1|Ra_data[0]~7_combout\ & ((\RF1|Reg15|Q_b\(0)) # ((!\SW~combout\(13))))) # (!\RF1|Ra_data[0]~7_combout\ & (((\RF1|Reg11|Q_b\(0) & \SW~combout\(13)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RF1|Reg15|Q_b\(0),
	datab => \RF1|Ra_data[0]~7_combout\,
	datac => \RF1|Reg11|Q_b\(0),
	datad => \SW~combout\(13),
	combout => \RF1|Ra_data[0]~8_combout\);

-- Location: LCCOMB_X63_Y26_N6
\RF1|Ra_data[0]~9\ : cycloneii_lcell_comb
-- Equation(s):
-- \RF1|Ra_data[0]~9_combout\ = (\RF1|Ra_data[0]~6_combout\ & (((\RF1|Ra_data[0]~8_combout\) # (!\SW~combout\(10))))) # (!\RF1|Ra_data[0]~6_combout\ & (\RF1|Ra_data[0]~1_combout\ & (\SW~combout\(10))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101001001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RF1|Ra_data[0]~6_combout\,
	datab => \RF1|Ra_data[0]~1_combout\,
	datac => \SW~combout\(10),
	datad => \RF1|Ra_data[0]~8_combout\,
	combout => \RF1|Ra_data[0]~9_combout\);

-- Location: LCCOMB_X63_Y26_N26
\RF1|Reg0|Q_b~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \RF1|Reg0|Q_b~2_combout\ = (\SW~combout\(1) & \KEY~combout\(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \SW~combout\(1),
	datad => \KEY~combout\(1),
	combout => \RF1|Reg0|Q_b~2_combout\);

-- Location: LCFF_X63_Y25_N29
\RF1|Reg7|Q_b[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_KEY~combout\(0),
	sdata => \RF1|Reg0|Q_b~2_combout\,
	sload => VCC,
	ena => \RF1|Reg7|Q_b[5]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \RF1|Reg7|Q_b\(1));

-- Location: LCCOMB_X63_Y27_N12
\RF1|Reg6|Q_b[4]~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \RF1|Reg6|Q_b[4]~0_combout\ = ((\RF1|Reg10|Q_b[1]~0_combout\ & (\SW~combout\(8) & !\SW~combout\(9)))) # (!\KEY~combout\(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RF1|Reg10|Q_b[1]~0_combout\,
	datab => \SW~combout\(8),
	datac => \SW~combout\(9),
	datad => \KEY~combout\(1),
	combout => \RF1|Reg6|Q_b[4]~0_combout\);

-- Location: LCFF_X63_Y27_N5
\RF1|Reg6|Q_b[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_KEY~combout\(0),
	sdata => \RF1|Reg0|Q_b~2_combout\,
	sload => VCC,
	ena => \RF1|Reg6|Q_b[4]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \RF1|Reg6|Q_b\(1));

-- Location: LCCOMB_X62_Y24_N8
\RF1|Reg4|Q_b[3]~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \RF1|Reg4|Q_b[3]~1_combout\ = ((\SW~combout\(8) & (\RF1|Reg4|Q_b[3]~0_combout\ & !\SW~combout\(9)))) # (!\KEY~combout\(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW~combout\(8),
	datab => \RF1|Reg4|Q_b[3]~0_combout\,
	datac => \SW~combout\(9),
	datad => \KEY~combout\(1),
	combout => \RF1|Reg4|Q_b[3]~1_combout\);

-- Location: LCFF_X63_Y24_N27
\RF1|Reg4|Q_b[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_KEY~combout\(0),
	sdata => \RF1|Reg0|Q_b~2_combout\,
	sload => VCC,
	ena => \RF1|Reg4|Q_b[3]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \RF1|Reg4|Q_b\(1));

-- Location: LCFF_X63_Y26_N25
\RF1|Reg5|Q_b[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_KEY~combout\(0),
	sdata => \RF1|Reg0|Q_b~2_combout\,
	sload => VCC,
	ena => \RF1|Reg5|Q_b[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \RF1|Reg5|Q_b\(1));

-- Location: LCCOMB_X63_Y26_N24
\RF1|Ra_data[1]~10\ : cycloneii_lcell_comb
-- Equation(s):
-- \RF1|Ra_data[1]~10_combout\ = (\SW~combout\(10) & (((\RF1|Reg5|Q_b\(1)) # (\SW~combout\(11))))) # (!\SW~combout\(10) & (\RF1|Reg4|Q_b\(1) & ((!\SW~combout\(11)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW~combout\(10),
	datab => \RF1|Reg4|Q_b\(1),
	datac => \RF1|Reg5|Q_b\(1),
	datad => \SW~combout\(11),
	combout => \RF1|Ra_data[1]~10_combout\);

-- Location: LCCOMB_X63_Y27_N4
\RF1|Ra_data[1]~11\ : cycloneii_lcell_comb
-- Equation(s):
-- \RF1|Ra_data[1]~11_combout\ = (\SW~combout\(11) & ((\RF1|Ra_data[1]~10_combout\ & (\RF1|Reg7|Q_b\(1))) # (!\RF1|Ra_data[1]~10_combout\ & ((\RF1|Reg6|Q_b\(1)))))) # (!\SW~combout\(11) & (((\RF1|Ra_data[1]~10_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW~combout\(11),
	datab => \RF1|Reg7|Q_b\(1),
	datac => \RF1|Reg6|Q_b\(1),
	datad => \RF1|Ra_data[1]~10_combout\,
	combout => \RF1|Ra_data[1]~11_combout\);

-- Location: LCFF_X62_Y25_N13
\RF1|Reg11|Q_b[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_KEY~combout\(0),
	sdata => \RF1|Reg0|Q_b~2_combout\,
	sload => VCC,
	ena => \RF1|Reg11|Q_b[1]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \RF1|Reg11|Q_b\(1));

-- Location: LCFF_X64_Y26_N21
\RF1|Reg9|Q_b[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_KEY~combout\(0),
	sdata => \RF1|Reg0|Q_b~2_combout\,
	sload => VCC,
	ena => \RF1|Reg9|Q_b[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \RF1|Reg9|Q_b\(1));

-- Location: LCFF_X64_Y27_N29
\RF1|Reg10|Q_b[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_KEY~combout\(0),
	sdata => \RF1|Reg0|Q_b~2_combout\,
	sload => VCC,
	ena => \RF1|Reg10|Q_b[1]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \RF1|Reg10|Q_b\(1));

-- Location: LCCOMB_X64_Y27_N28
\RF1|Ra_data[1]~12\ : cycloneii_lcell_comb
-- Equation(s):
-- \RF1|Ra_data[1]~12_combout\ = (\SW~combout\(10) & (((\SW~combout\(11))))) # (!\SW~combout\(10) & ((\SW~combout\(11) & ((\RF1|Reg10|Q_b\(1)))) # (!\SW~combout\(11) & (\RF1|Reg8|Q_b\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RF1|Reg8|Q_b\(1),
	datab => \SW~combout\(10),
	datac => \RF1|Reg10|Q_b\(1),
	datad => \SW~combout\(11),
	combout => \RF1|Ra_data[1]~12_combout\);

-- Location: LCCOMB_X64_Y26_N20
\RF1|Ra_data[1]~13\ : cycloneii_lcell_comb
-- Equation(s):
-- \RF1|Ra_data[1]~13_combout\ = (\SW~combout\(10) & ((\RF1|Ra_data[1]~12_combout\ & (\RF1|Reg11|Q_b\(1))) # (!\RF1|Ra_data[1]~12_combout\ & ((\RF1|Reg9|Q_b\(1)))))) # (!\SW~combout\(10) & (((\RF1|Ra_data[1]~12_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW~combout\(10),
	datab => \RF1|Reg11|Q_b\(1),
	datac => \RF1|Reg9|Q_b\(1),
	datad => \RF1|Ra_data[1]~12_combout\,
	combout => \RF1|Ra_data[1]~13_combout\);

-- Location: LCFF_X63_Y25_N31
\RF1|Reg3|Q_b[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_KEY~combout\(0),
	sdata => \RF1|Reg0|Q_b~2_combout\,
	sload => VCC,
	ena => \RF1|Reg3|Q_b[5]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \RF1|Reg3|Q_b\(1));

-- Location: LCCOMB_X63_Y27_N6
\RF1|Reg2|Q_b[0]~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \RF1|Reg2|Q_b[0]~0_combout\ = ((\RF1|Reg10|Q_b[1]~0_combout\ & (!\SW~combout\(8) & !\SW~combout\(9)))) # (!\KEY~combout\(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RF1|Reg10|Q_b[1]~0_combout\,
	datab => \SW~combout\(8),
	datac => \SW~combout\(9),
	datad => \KEY~combout\(1),
	combout => \RF1|Reg2|Q_b[0]~0_combout\);

-- Location: LCFF_X63_Y27_N31
\RF1|Reg2|Q_b[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_KEY~combout\(0),
	sdata => \RF1|Reg0|Q_b~2_combout\,
	sload => VCC,
	ena => \RF1|Reg2|Q_b[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \RF1|Reg2|Q_b\(1));

-- Location: LCFF_X64_Y26_N23
\RF1|Reg1|Q_b[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_KEY~combout\(0),
	sdata => \RF1|Reg0|Q_b~2_combout\,
	sload => VCC,
	ena => \RF1|Reg1|Q_b[4]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \RF1|Reg1|Q_b\(1));

-- Location: LCCOMB_X62_Y24_N20
\RF1|Reg0|Q_b[0]~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \RF1|Reg0|Q_b[0]~1_combout\ = ((!\SW~combout\(8) & (\RF1|Reg4|Q_b[3]~0_combout\ & !\SW~combout\(9)))) # (!\KEY~combout\(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW~combout\(8),
	datab => \RF1|Reg4|Q_b[3]~0_combout\,
	datac => \SW~combout\(9),
	datad => \KEY~combout\(1),
	combout => \RF1|Reg0|Q_b[0]~1_combout\);

-- Location: LCFF_X63_Y24_N29
\RF1|Reg0|Q_b[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_KEY~combout\(0),
	sdata => \RF1|Reg0|Q_b~2_combout\,
	sload => VCC,
	ena => \RF1|Reg0|Q_b[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \RF1|Reg0|Q_b\(1));

-- Location: LCCOMB_X64_Y26_N22
\RF1|Ra_data[1]~14\ : cycloneii_lcell_comb
-- Equation(s):
-- \RF1|Ra_data[1]~14_combout\ = (\SW~combout\(11) & (\SW~combout\(10))) # (!\SW~combout\(11) & ((\SW~combout\(10) & (\RF1|Reg1|Q_b\(1))) # (!\SW~combout\(10) & ((\RF1|Reg0|Q_b\(1))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW~combout\(11),
	datab => \SW~combout\(10),
	datac => \RF1|Reg1|Q_b\(1),
	datad => \RF1|Reg0|Q_b\(1),
	combout => \RF1|Ra_data[1]~14_combout\);

-- Location: LCCOMB_X63_Y27_N30
\RF1|Ra_data[1]~15\ : cycloneii_lcell_comb
-- Equation(s):
-- \RF1|Ra_data[1]~15_combout\ = (\SW~combout\(11) & ((\RF1|Ra_data[1]~14_combout\ & (\RF1|Reg3|Q_b\(1))) # (!\RF1|Ra_data[1]~14_combout\ & ((\RF1|Reg2|Q_b\(1)))))) # (!\SW~combout\(11) & (((\RF1|Ra_data[1]~14_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW~combout\(11),
	datab => \RF1|Reg3|Q_b\(1),
	datac => \RF1|Reg2|Q_b\(1),
	datad => \RF1|Ra_data[1]~14_combout\,
	combout => \RF1|Ra_data[1]~15_combout\);

-- Location: LCCOMB_X64_Y26_N8
\RF1|Ra_data[1]~16\ : cycloneii_lcell_comb
-- Equation(s):
-- \RF1|Ra_data[1]~16_combout\ = (\SW~combout\(12) & (\SW~combout\(13))) # (!\SW~combout\(12) & ((\SW~combout\(13) & (\RF1|Ra_data[1]~13_combout\)) # (!\SW~combout\(13) & ((\RF1|Ra_data[1]~15_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW~combout\(12),
	datab => \SW~combout\(13),
	datac => \RF1|Ra_data[1]~13_combout\,
	datad => \RF1|Ra_data[1]~15_combout\,
	combout => \RF1|Ra_data[1]~16_combout\);

-- Location: LCFF_X63_Y26_N27
\RF1|Reg13|Q_b[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_KEY~combout\(0),
	datain => \RF1|Reg0|Q_b~2_combout\,
	ena => \RF1|Reg13|Q_b[2]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \RF1|Reg13|Q_b\(1));

-- Location: LCFF_X62_Y25_N23
\RF1|Reg15|Q_b[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_KEY~combout\(0),
	sdata => \RF1|Reg0|Q_b~2_combout\,
	sload => VCC,
	ena => \RF1|Reg15|Q_b[1]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \RF1|Reg15|Q_b\(1));

-- Location: LCFF_X64_Y27_N31
\RF1|Reg14|Q_b[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_KEY~combout\(0),
	sdata => \RF1|Reg0|Q_b~2_combout\,
	sload => VCC,
	ena => \RF1|Reg14|Q_b[3]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \RF1|Reg14|Q_b\(1));

-- Location: LCFF_X64_Y24_N21
\RF1|Reg12|Q_b[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_KEY~combout\(0),
	sdata => \RF1|Reg0|Q_b~2_combout\,
	sload => VCC,
	ena => \RF1|Reg12|Q_b[4]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \RF1|Reg12|Q_b\(1));

-- Location: LCCOMB_X64_Y27_N30
\RF1|Ra_data[1]~17\ : cycloneii_lcell_comb
-- Equation(s):
-- \RF1|Ra_data[1]~17_combout\ = (\SW~combout\(11) & ((\SW~combout\(10)) # ((\RF1|Reg14|Q_b\(1))))) # (!\SW~combout\(11) & (!\SW~combout\(10) & ((\RF1|Reg12|Q_b\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100110101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW~combout\(11),
	datab => \SW~combout\(10),
	datac => \RF1|Reg14|Q_b\(1),
	datad => \RF1|Reg12|Q_b\(1),
	combout => \RF1|Ra_data[1]~17_combout\);

-- Location: LCCOMB_X62_Y25_N22
\RF1|Ra_data[1]~18\ : cycloneii_lcell_comb
-- Equation(s):
-- \RF1|Ra_data[1]~18_combout\ = (\SW~combout\(10) & ((\RF1|Ra_data[1]~17_combout\ & ((\RF1|Reg15|Q_b\(1)))) # (!\RF1|Ra_data[1]~17_combout\ & (\RF1|Reg13|Q_b\(1))))) # (!\SW~combout\(10) & (((\RF1|Ra_data[1]~17_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW~combout\(10),
	datab => \RF1|Reg13|Q_b\(1),
	datac => \RF1|Reg15|Q_b\(1),
	datad => \RF1|Ra_data[1]~17_combout\,
	combout => \RF1|Ra_data[1]~18_combout\);

-- Location: LCCOMB_X64_Y26_N10
\RF1|Ra_data[1]~19\ : cycloneii_lcell_comb
-- Equation(s):
-- \RF1|Ra_data[1]~19_combout\ = (\SW~combout\(12) & ((\RF1|Ra_data[1]~16_combout\ & ((\RF1|Ra_data[1]~18_combout\))) # (!\RF1|Ra_data[1]~16_combout\ & (\RF1|Ra_data[1]~11_combout\)))) # (!\SW~combout\(12) & (((\RF1|Ra_data[1]~16_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100001011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW~combout\(12),
	datab => \RF1|Ra_data[1]~11_combout\,
	datac => \RF1|Ra_data[1]~16_combout\,
	datad => \RF1|Ra_data[1]~18_combout\,
	combout => \RF1|Ra_data[1]~19_combout\);

-- Location: LCCOMB_X30_Y4_N0
\H0|WideOr6~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \H0|WideOr6~0_combout\ = (\RF1|Ra_data[0]~9_combout\ & ((\RF1|Ra_data[3]~39_combout\) # (\RF1|Ra_data[2]~29_combout\ $ (\RF1|Ra_data[1]~19_combout\)))) # (!\RF1|Ra_data[0]~9_combout\ & ((\RF1|Ra_data[1]~19_combout\) # (\RF1|Ra_data[2]~29_combout\ $ 
-- (\RF1|Ra_data[3]~39_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101111111100110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RF1|Ra_data[2]~29_combout\,
	datab => \RF1|Ra_data[3]~39_combout\,
	datac => \RF1|Ra_data[0]~9_combout\,
	datad => \RF1|Ra_data[1]~19_combout\,
	combout => \H0|WideOr6~0_combout\);

-- Location: LCCOMB_X30_Y4_N18
\H0|WideOr5~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \H0|WideOr5~0_combout\ = (\RF1|Ra_data[2]~29_combout\ & (\RF1|Ra_data[0]~9_combout\ & (\RF1|Ra_data[3]~39_combout\ $ (\RF1|Ra_data[1]~19_combout\)))) # (!\RF1|Ra_data[2]~29_combout\ & (!\RF1|Ra_data[3]~39_combout\ & ((\RF1|Ra_data[0]~9_combout\) # 
-- (\RF1|Ra_data[1]~19_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000110010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RF1|Ra_data[2]~29_combout\,
	datab => \RF1|Ra_data[3]~39_combout\,
	datac => \RF1|Ra_data[0]~9_combout\,
	datad => \RF1|Ra_data[1]~19_combout\,
	combout => \H0|WideOr5~0_combout\);

-- Location: LCCOMB_X30_Y4_N12
\H0|WideOr4~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \H0|WideOr4~0_combout\ = (\RF1|Ra_data[1]~19_combout\ & (((!\RF1|Ra_data[3]~39_combout\ & \RF1|Ra_data[0]~9_combout\)))) # (!\RF1|Ra_data[1]~19_combout\ & ((\RF1|Ra_data[2]~29_combout\ & (!\RF1|Ra_data[3]~39_combout\)) # (!\RF1|Ra_data[2]~29_combout\ & 
-- ((\RF1|Ra_data[0]~9_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000001110010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RF1|Ra_data[2]~29_combout\,
	datab => \RF1|Ra_data[3]~39_combout\,
	datac => \RF1|Ra_data[0]~9_combout\,
	datad => \RF1|Ra_data[1]~19_combout\,
	combout => \H0|WideOr4~0_combout\);

-- Location: LCCOMB_X30_Y4_N6
\H0|WideOr3~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \H0|WideOr3~0_combout\ = (\RF1|Ra_data[1]~19_combout\ & ((\RF1|Ra_data[2]~29_combout\ & ((\RF1|Ra_data[0]~9_combout\))) # (!\RF1|Ra_data[2]~29_combout\ & (\RF1|Ra_data[3]~39_combout\ & !\RF1|Ra_data[0]~9_combout\)))) # (!\RF1|Ra_data[1]~19_combout\ & 
-- (!\RF1|Ra_data[3]~39_combout\ & (\RF1|Ra_data[2]~29_combout\ $ (\RF1|Ra_data[0]~9_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010000010010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RF1|Ra_data[2]~29_combout\,
	datab => \RF1|Ra_data[3]~39_combout\,
	datac => \RF1|Ra_data[0]~9_combout\,
	datad => \RF1|Ra_data[1]~19_combout\,
	combout => \H0|WideOr3~0_combout\);

-- Location: LCCOMB_X30_Y4_N8
\H0|WideOr2~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \H0|WideOr2~0_combout\ = (\RF1|Ra_data[2]~29_combout\ & (\RF1|Ra_data[3]~39_combout\ & ((\RF1|Ra_data[1]~19_combout\) # (!\RF1|Ra_data[0]~9_combout\)))) # (!\RF1|Ra_data[2]~29_combout\ & (!\RF1|Ra_data[3]~39_combout\ & (!\RF1|Ra_data[0]~9_combout\ & 
-- \RF1|Ra_data[1]~19_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100100001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RF1|Ra_data[2]~29_combout\,
	datab => \RF1|Ra_data[3]~39_combout\,
	datac => \RF1|Ra_data[0]~9_combout\,
	datad => \RF1|Ra_data[1]~19_combout\,
	combout => \H0|WideOr2~0_combout\);

-- Location: LCCOMB_X30_Y4_N10
\H0|WideOr1~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \H0|WideOr1~0_combout\ = (\RF1|Ra_data[3]~39_combout\ & ((\RF1|Ra_data[0]~9_combout\ & ((\RF1|Ra_data[1]~19_combout\))) # (!\RF1|Ra_data[0]~9_combout\ & (\RF1|Ra_data[2]~29_combout\)))) # (!\RF1|Ra_data[3]~39_combout\ & (\RF1|Ra_data[2]~29_combout\ & 
-- (\RF1|Ra_data[0]~9_combout\ $ (\RF1|Ra_data[1]~19_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101000101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RF1|Ra_data[2]~29_combout\,
	datab => \RF1|Ra_data[3]~39_combout\,
	datac => \RF1|Ra_data[0]~9_combout\,
	datad => \RF1|Ra_data[1]~19_combout\,
	combout => \H0|WideOr1~0_combout\);

-- Location: LCCOMB_X30_Y4_N28
\H0|WideOr0~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \H0|WideOr0~0_combout\ = (\RF1|Ra_data[2]~29_combout\ & (!\RF1|Ra_data[1]~19_combout\ & (\RF1|Ra_data[3]~39_combout\ $ (!\RF1|Ra_data[0]~9_combout\)))) # (!\RF1|Ra_data[2]~29_combout\ & (\RF1|Ra_data[0]~9_combout\ & (\RF1|Ra_data[3]~39_combout\ $ 
-- (!\RF1|Ra_data[1]~19_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000010010010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RF1|Ra_data[2]~29_combout\,
	datab => \RF1|Ra_data[3]~39_combout\,
	datac => \RF1|Ra_data[0]~9_combout\,
	datad => \RF1|Ra_data[1]~19_combout\,
	combout => \H0|WideOr0~0_combout\);

-- Location: LCCOMB_X63_Y26_N18
\RF1|Reg0|Q_b~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \RF1|Reg0|Q_b~5_combout\ = (\SW~combout\(5) & \KEY~combout\(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \SW~combout\(5),
	datad => \KEY~combout\(1),
	combout => \RF1|Reg0|Q_b~5_combout\);

-- Location: LCFF_X62_Y25_N27
\RF1|Reg15|Q_b[5]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_KEY~combout\(0),
	sdata => \RF1|Reg0|Q_b~5_combout\,
	sload => VCC,
	ena => \RF1|Reg15|Q_b[1]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \RF1|Reg15|Q_b\(5));

-- Location: LCFF_X62_Y25_N17
\RF1|Reg11|Q_b[5]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_KEY~combout\(0),
	sdata => \RF1|Reg0|Q_b~5_combout\,
	sload => VCC,
	ena => \RF1|Reg11|Q_b[1]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \RF1|Reg11|Q_b\(5));

-- Location: LCCOMB_X62_Y25_N16
\RF1|Ra_data[5]~48\ : cycloneii_lcell_comb
-- Equation(s):
-- \RF1|Ra_data[5]~48_combout\ = (\RF1|Ra_data[5]~47_combout\ & ((\RF1|Reg15|Q_b\(5)) # ((!\SW~combout\(13))))) # (!\RF1|Ra_data[5]~47_combout\ & (((\RF1|Reg11|Q_b\(5) & \SW~combout\(13)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RF1|Ra_data[5]~47_combout\,
	datab => \RF1|Reg15|Q_b\(5),
	datac => \RF1|Reg11|Q_b\(5),
	datad => \SW~combout\(13),
	combout => \RF1|Ra_data[5]~48_combout\);

-- Location: LCFF_X63_Y26_N19
\RF1|Reg5|Q_b[5]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_KEY~combout\(0),
	datain => \RF1|Reg0|Q_b~5_combout\,
	ena => \RF1|Reg5|Q_b[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \RF1|Reg5|Q_b\(5));

-- Location: LCFF_X63_Y26_N5
\RF1|Reg13|Q_b[5]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_KEY~combout\(0),
	sdata => \RF1|Reg0|Q_b~5_combout\,
	sload => VCC,
	ena => \RF1|Reg13|Q_b[2]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \RF1|Reg13|Q_b\(5));

-- Location: LCFF_X64_Y23_N21
\RF1|Reg9|Q_b[5]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_KEY~combout\(0),
	sdata => \RF1|Reg0|Q_b~5_combout\,
	sload => VCC,
	ena => \RF1|Reg9|Q_b[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \RF1|Reg9|Q_b\(5));

-- Location: LCFF_X63_Y23_N27
\RF1|Reg1|Q_b[5]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_KEY~combout\(0),
	sdata => \RF1|Reg0|Q_b~5_combout\,
	sload => VCC,
	ena => \RF1|Reg1|Q_b[4]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \RF1|Reg1|Q_b\(5));

-- Location: LCCOMB_X64_Y23_N20
\RF1|Ra_data[5]~40\ : cycloneii_lcell_comb
-- Equation(s):
-- \RF1|Ra_data[5]~40_combout\ = (\SW~combout\(12) & (\SW~combout\(13))) # (!\SW~combout\(12) & ((\SW~combout\(13) & (\RF1|Reg9|Q_b\(5))) # (!\SW~combout\(13) & ((\RF1|Reg1|Q_b\(5))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW~combout\(12),
	datab => \SW~combout\(13),
	datac => \RF1|Reg9|Q_b\(5),
	datad => \RF1|Reg1|Q_b\(5),
	combout => \RF1|Ra_data[5]~40_combout\);

-- Location: LCCOMB_X63_Y26_N4
\RF1|Ra_data[5]~41\ : cycloneii_lcell_comb
-- Equation(s):
-- \RF1|Ra_data[5]~41_combout\ = (\SW~combout\(12) & ((\RF1|Ra_data[5]~40_combout\ & ((\RF1|Reg13|Q_b\(5)))) # (!\RF1|Ra_data[5]~40_combout\ & (\RF1|Reg5|Q_b\(5))))) # (!\SW~combout\(12) & (((\RF1|Ra_data[5]~40_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW~combout\(12),
	datab => \RF1|Reg5|Q_b\(5),
	datac => \RF1|Reg13|Q_b\(5),
	datad => \RF1|Ra_data[5]~40_combout\,
	combout => \RF1|Ra_data[5]~41_combout\);

-- Location: LCFF_X63_Y27_N25
\RF1|Reg6|Q_b[5]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_KEY~combout\(0),
	sdata => \RF1|Reg0|Q_b~5_combout\,
	sload => VCC,
	ena => \RF1|Reg6|Q_b[4]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \RF1|Reg6|Q_b\(5));

-- Location: LCFF_X63_Y27_N19
\RF1|Reg2|Q_b[5]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_KEY~combout\(0),
	sdata => \RF1|Reg0|Q_b~5_combout\,
	sload => VCC,
	ena => \RF1|Reg2|Q_b[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \RF1|Reg2|Q_b\(5));

-- Location: LCCOMB_X63_Y27_N24
\RF1|Ra_data[5]~42\ : cycloneii_lcell_comb
-- Equation(s):
-- \RF1|Ra_data[5]~42_combout\ = (\SW~combout\(12) & ((\SW~combout\(13)) # ((\RF1|Reg6|Q_b\(5))))) # (!\SW~combout\(12) & (!\SW~combout\(13) & ((\RF1|Reg2|Q_b\(5)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100110101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW~combout\(12),
	datab => \SW~combout\(13),
	datac => \RF1|Reg6|Q_b\(5),
	datad => \RF1|Reg2|Q_b\(5),
	combout => \RF1|Ra_data[5]~42_combout\);

-- Location: LCFF_X64_Y27_N15
\RF1|Reg10|Q_b[5]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_KEY~combout\(0),
	sdata => \RF1|Reg0|Q_b~5_combout\,
	sload => VCC,
	ena => \RF1|Reg10|Q_b[1]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \RF1|Reg10|Q_b\(5));

-- Location: LCFF_X64_Y27_N17
\RF1|Reg14|Q_b[5]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_KEY~combout\(0),
	sdata => \RF1|Reg0|Q_b~5_combout\,
	sload => VCC,
	ena => \RF1|Reg14|Q_b[3]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \RF1|Reg14|Q_b\(5));

-- Location: LCCOMB_X64_Y27_N14
\RF1|Ra_data[5]~43\ : cycloneii_lcell_comb
-- Equation(s):
-- \RF1|Ra_data[5]~43_combout\ = (\SW~combout\(13) & ((\RF1|Ra_data[5]~42_combout\ & ((\RF1|Reg14|Q_b\(5)))) # (!\RF1|Ra_data[5]~42_combout\ & (\RF1|Reg10|Q_b\(5))))) # (!\SW~combout\(13) & (\RF1|Ra_data[5]~42_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110001100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW~combout\(13),
	datab => \RF1|Ra_data[5]~42_combout\,
	datac => \RF1|Reg10|Q_b\(5),
	datad => \RF1|Reg14|Q_b\(5),
	combout => \RF1|Ra_data[5]~43_combout\);

-- Location: LCFF_X64_Y24_N9
\RF1|Reg12|Q_b[5]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_KEY~combout\(0),
	sdata => \RF1|Reg0|Q_b~5_combout\,
	sload => VCC,
	ena => \RF1|Reg12|Q_b[4]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \RF1|Reg12|Q_b\(5));

-- Location: LCFF_X63_Y24_N15
\RF1|Reg4|Q_b[5]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_KEY~combout\(0),
	sdata => \RF1|Reg0|Q_b~5_combout\,
	sload => VCC,
	ena => \RF1|Reg4|Q_b[3]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \RF1|Reg4|Q_b\(5));

-- Location: LCFF_X64_Y24_N31
\RF1|Reg8|Q_b[5]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_KEY~combout\(0),
	sdata => \RF1|Reg0|Q_b~5_combout\,
	sload => VCC,
	ena => \RF1|Reg8|Q_b[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \RF1|Reg8|Q_b\(5));

-- Location: LCFF_X63_Y24_N9
\RF1|Reg0|Q_b[5]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_KEY~combout\(0),
	sdata => \RF1|Reg0|Q_b~5_combout\,
	sload => VCC,
	ena => \RF1|Reg0|Q_b[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \RF1|Reg0|Q_b\(5));

-- Location: LCCOMB_X64_Y24_N30
\RF1|Ra_data[5]~44\ : cycloneii_lcell_comb
-- Equation(s):
-- \RF1|Ra_data[5]~44_combout\ = (\SW~combout\(12) & (\SW~combout\(13))) # (!\SW~combout\(12) & ((\SW~combout\(13) & (\RF1|Reg8|Q_b\(5))) # (!\SW~combout\(13) & ((\RF1|Reg0|Q_b\(5))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW~combout\(12),
	datab => \SW~combout\(13),
	datac => \RF1|Reg8|Q_b\(5),
	datad => \RF1|Reg0|Q_b\(5),
	combout => \RF1|Ra_data[5]~44_combout\);

-- Location: LCCOMB_X63_Y24_N14
\RF1|Ra_data[5]~45\ : cycloneii_lcell_comb
-- Equation(s):
-- \RF1|Ra_data[5]~45_combout\ = (\SW~combout\(12) & ((\RF1|Ra_data[5]~44_combout\ & (\RF1|Reg12|Q_b\(5))) # (!\RF1|Ra_data[5]~44_combout\ & ((\RF1|Reg4|Q_b\(5)))))) # (!\SW~combout\(12) & (((\RF1|Ra_data[5]~44_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW~combout\(12),
	datab => \RF1|Reg12|Q_b\(5),
	datac => \RF1|Reg4|Q_b\(5),
	datad => \RF1|Ra_data[5]~44_combout\,
	combout => \RF1|Ra_data[5]~45_combout\);

-- Location: LCCOMB_X64_Y22_N26
\RF1|Ra_data[5]~46\ : cycloneii_lcell_comb
-- Equation(s):
-- \RF1|Ra_data[5]~46_combout\ = (\SW~combout\(11) & ((\RF1|Ra_data[5]~43_combout\) # ((\SW~combout\(10))))) # (!\SW~combout\(11) & (((!\SW~combout\(10) & \RF1|Ra_data[5]~45_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110110101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW~combout\(11),
	datab => \RF1|Ra_data[5]~43_combout\,
	datac => \SW~combout\(10),
	datad => \RF1|Ra_data[5]~45_combout\,
	combout => \RF1|Ra_data[5]~46_combout\);

-- Location: LCCOMB_X64_Y22_N20
\RF1|Ra_data[5]~49\ : cycloneii_lcell_comb
-- Equation(s):
-- \RF1|Ra_data[5]~49_combout\ = (\SW~combout\(10) & ((\RF1|Ra_data[5]~46_combout\ & (\RF1|Ra_data[5]~48_combout\)) # (!\RF1|Ra_data[5]~46_combout\ & ((\RF1|Ra_data[5]~41_combout\))))) # (!\SW~combout\(10) & (((\RF1|Ra_data[5]~46_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RF1|Ra_data[5]~48_combout\,
	datab => \RF1|Ra_data[5]~41_combout\,
	datac => \SW~combout\(10),
	datad => \RF1|Ra_data[5]~46_combout\,
	combout => \RF1|Ra_data[5]~49_combout\);

-- Location: LCCOMB_X63_Y27_N28
\RF1|Reg0|Q_b~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \RF1|Reg0|Q_b~6_combout\ = (\SW~combout\(4) & \KEY~combout\(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \SW~combout\(4),
	datad => \KEY~combout\(1),
	combout => \RF1|Reg0|Q_b~6_combout\);

-- Location: LCFF_X63_Y24_N19
\RF1|Reg4|Q_b[4]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_KEY~combout\(0),
	sdata => \RF1|Reg0|Q_b~6_combout\,
	sload => VCC,
	ena => \RF1|Reg4|Q_b[3]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \RF1|Reg4|Q_b\(4));

-- Location: LCFF_X64_Y22_N15
\RF1|Reg5|Q_b[4]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_KEY~combout\(0),
	sdata => \RF1|Reg0|Q_b~6_combout\,
	sload => VCC,
	ena => \RF1|Reg5|Q_b[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \RF1|Reg5|Q_b\(4));

-- Location: LCCOMB_X64_Y22_N14
\RF1|Ra_data[4]~50\ : cycloneii_lcell_comb
-- Equation(s):
-- \RF1|Ra_data[4]~50_combout\ = (\SW~combout\(10) & (((\RF1|Reg5|Q_b\(4)) # (\SW~combout\(11))))) # (!\SW~combout\(10) & (\RF1|Reg4|Q_b\(4) & ((!\SW~combout\(11)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW~combout\(10),
	datab => \RF1|Reg4|Q_b\(4),
	datac => \RF1|Reg5|Q_b\(4),
	datad => \SW~combout\(11),
	combout => \RF1|Ra_data[4]~50_combout\);

-- Location: LCFF_X63_Y25_N21
\RF1|Reg7|Q_b[4]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_KEY~combout\(0),
	sdata => \RF1|Reg0|Q_b~6_combout\,
	sload => VCC,
	ena => \RF1|Reg7|Q_b[5]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \RF1|Reg7|Q_b\(4));

-- Location: LCCOMB_X63_Y25_N20
\RF1|Ra_data[4]~51\ : cycloneii_lcell_comb
-- Equation(s):
-- \RF1|Ra_data[4]~51_combout\ = (\RF1|Ra_data[4]~50_combout\ & (((\RF1|Reg7|Q_b\(4)) # (!\SW~combout\(11))))) # (!\RF1|Ra_data[4]~50_combout\ & (\RF1|Reg6|Q_b\(4) & ((\SW~combout\(11)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RF1|Reg6|Q_b\(4),
	datab => \RF1|Ra_data[4]~50_combout\,
	datac => \RF1|Reg7|Q_b\(4),
	datad => \SW~combout\(11),
	combout => \RF1|Ra_data[4]~51_combout\);

-- Location: LCFF_X63_Y23_N15
\RF1|Reg3|Q_b[4]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_KEY~combout\(0),
	sdata => \RF1|Reg0|Q_b~6_combout\,
	sload => VCC,
	ena => \RF1|Reg3|Q_b[5]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \RF1|Reg3|Q_b\(4));

-- Location: LCFF_X63_Y27_N15
\RF1|Reg2|Q_b[4]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_KEY~combout\(0),
	sdata => \RF1|Reg0|Q_b~6_combout\,
	sload => VCC,
	ena => \RF1|Reg2|Q_b[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \RF1|Reg2|Q_b\(4));

-- Location: LCFF_X63_Y23_N13
\RF1|Reg1|Q_b[4]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_KEY~combout\(0),
	sdata => \RF1|Reg0|Q_b~6_combout\,
	sload => VCC,
	ena => \RF1|Reg1|Q_b[4]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \RF1|Reg1|Q_b\(4));

-- Location: LCFF_X63_Y24_N5
\RF1|Reg0|Q_b[4]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_KEY~combout\(0),
	sdata => \RF1|Reg0|Q_b~6_combout\,
	sload => VCC,
	ena => \RF1|Reg0|Q_b[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \RF1|Reg0|Q_b\(4));

-- Location: LCCOMB_X63_Y23_N12
\RF1|Ra_data[4]~54\ : cycloneii_lcell_comb
-- Equation(s):
-- \RF1|Ra_data[4]~54_combout\ = (\SW~combout\(11) & (\SW~combout\(10))) # (!\SW~combout\(11) & ((\SW~combout\(10) & (\RF1|Reg1|Q_b\(4))) # (!\SW~combout\(10) & ((\RF1|Reg0|Q_b\(4))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW~combout\(11),
	datab => \SW~combout\(10),
	datac => \RF1|Reg1|Q_b\(4),
	datad => \RF1|Reg0|Q_b\(4),
	combout => \RF1|Ra_data[4]~54_combout\);

-- Location: LCCOMB_X63_Y27_N14
\RF1|Ra_data[4]~55\ : cycloneii_lcell_comb
-- Equation(s):
-- \RF1|Ra_data[4]~55_combout\ = (\SW~combout\(11) & ((\RF1|Ra_data[4]~54_combout\ & (\RF1|Reg3|Q_b\(4))) # (!\RF1|Ra_data[4]~54_combout\ & ((\RF1|Reg2|Q_b\(4)))))) # (!\SW~combout\(11) & (((\RF1|Ra_data[4]~54_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW~combout\(11),
	datab => \RF1|Reg3|Q_b\(4),
	datac => \RF1|Reg2|Q_b\(4),
	datad => \RF1|Ra_data[4]~54_combout\,
	combout => \RF1|Ra_data[4]~55_combout\);

-- Location: LCFF_X64_Y23_N1
\RF1|Reg11|Q_b[4]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_KEY~combout\(0),
	sdata => \RF1|Reg0|Q_b~6_combout\,
	sload => VCC,
	ena => \RF1|Reg11|Q_b[1]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \RF1|Reg11|Q_b\(4));

-- Location: LCFF_X64_Y23_N23
\RF1|Reg9|Q_b[4]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_KEY~combout\(0),
	sdata => \RF1|Reg0|Q_b~6_combout\,
	sload => VCC,
	ena => \RF1|Reg9|Q_b[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \RF1|Reg9|Q_b\(4));

-- Location: LCFF_X64_Y27_N3
\RF1|Reg10|Q_b[4]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_KEY~combout\(0),
	sdata => \RF1|Reg0|Q_b~6_combout\,
	sload => VCC,
	ena => \RF1|Reg10|Q_b[1]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \RF1|Reg10|Q_b\(4));

-- Location: LCFF_X64_Y24_N19
\RF1|Reg8|Q_b[4]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_KEY~combout\(0),
	sdata => \RF1|Reg0|Q_b~6_combout\,
	sload => VCC,
	ena => \RF1|Reg8|Q_b[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \RF1|Reg8|Q_b\(4));

-- Location: LCCOMB_X64_Y27_N2
\RF1|Ra_data[4]~52\ : cycloneii_lcell_comb
-- Equation(s):
-- \RF1|Ra_data[4]~52_combout\ = (\SW~combout\(11) & ((\SW~combout\(10)) # ((\RF1|Reg10|Q_b\(4))))) # (!\SW~combout\(11) & (!\SW~combout\(10) & ((\RF1|Reg8|Q_b\(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100110101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW~combout\(11),
	datab => \SW~combout\(10),
	datac => \RF1|Reg10|Q_b\(4),
	datad => \RF1|Reg8|Q_b\(4),
	combout => \RF1|Ra_data[4]~52_combout\);

-- Location: LCCOMB_X64_Y23_N22
\RF1|Ra_data[4]~53\ : cycloneii_lcell_comb
-- Equation(s):
-- \RF1|Ra_data[4]~53_combout\ = (\SW~combout\(10) & ((\RF1|Ra_data[4]~52_combout\ & (\RF1|Reg11|Q_b\(4))) # (!\RF1|Ra_data[4]~52_combout\ & ((\RF1|Reg9|Q_b\(4)))))) # (!\SW~combout\(10) & (((\RF1|Ra_data[4]~52_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW~combout\(10),
	datab => \RF1|Reg11|Q_b\(4),
	datac => \RF1|Reg9|Q_b\(4),
	datad => \RF1|Ra_data[4]~52_combout\,
	combout => \RF1|Ra_data[4]~53_combout\);

-- Location: LCCOMB_X63_Y27_N16
\RF1|Ra_data[4]~56\ : cycloneii_lcell_comb
-- Equation(s):
-- \RF1|Ra_data[4]~56_combout\ = (\SW~combout\(12) & (\SW~combout\(13))) # (!\SW~combout\(12) & ((\SW~combout\(13) & ((\RF1|Ra_data[4]~53_combout\))) # (!\SW~combout\(13) & (\RF1|Ra_data[4]~55_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW~combout\(12),
	datab => \SW~combout\(13),
	datac => \RF1|Ra_data[4]~55_combout\,
	datad => \RF1|Ra_data[4]~53_combout\,
	combout => \RF1|Ra_data[4]~56_combout\);

-- Location: LCFF_X64_Y25_N15
\RF1|Reg15|Q_b[4]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_KEY~combout\(0),
	sdata => \RF1|Reg0|Q_b~6_combout\,
	sload => VCC,
	ena => \RF1|Reg15|Q_b[1]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \RF1|Reg15|Q_b\(4));

-- Location: LCFF_X64_Y22_N1
\RF1|Reg13|Q_b[4]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_KEY~combout\(0),
	sdata => \RF1|Reg0|Q_b~6_combout\,
	sload => VCC,
	ena => \RF1|Reg13|Q_b[2]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \RF1|Reg13|Q_b\(4));

-- Location: LCFF_X64_Y27_N13
\RF1|Reg14|Q_b[4]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_KEY~combout\(0),
	sdata => \RF1|Reg0|Q_b~6_combout\,
	sload => VCC,
	ena => \RF1|Reg14|Q_b[3]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \RF1|Reg14|Q_b\(4));

-- Location: LCCOMB_X64_Y27_N12
\RF1|Ra_data[4]~57\ : cycloneii_lcell_comb
-- Equation(s):
-- \RF1|Ra_data[4]~57_combout\ = (\SW~combout\(10) & (((\SW~combout\(11))))) # (!\SW~combout\(10) & ((\SW~combout\(11) & ((\RF1|Reg14|Q_b\(4)))) # (!\SW~combout\(11) & (\RF1|Reg12|Q_b\(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RF1|Reg12|Q_b\(4),
	datab => \SW~combout\(10),
	datac => \RF1|Reg14|Q_b\(4),
	datad => \SW~combout\(11),
	combout => \RF1|Ra_data[4]~57_combout\);

-- Location: LCCOMB_X64_Y22_N0
\RF1|Ra_data[4]~58\ : cycloneii_lcell_comb
-- Equation(s):
-- \RF1|Ra_data[4]~58_combout\ = (\SW~combout\(10) & ((\RF1|Ra_data[4]~57_combout\ & (\RF1|Reg15|Q_b\(4))) # (!\RF1|Ra_data[4]~57_combout\ & ((\RF1|Reg13|Q_b\(4)))))) # (!\SW~combout\(10) & (((\RF1|Ra_data[4]~57_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW~combout\(10),
	datab => \RF1|Reg15|Q_b\(4),
	datac => \RF1|Reg13|Q_b\(4),
	datad => \RF1|Ra_data[4]~57_combout\,
	combout => \RF1|Ra_data[4]~58_combout\);

-- Location: LCCOMB_X64_Y22_N10
\RF1|Ra_data[4]~59\ : cycloneii_lcell_comb
-- Equation(s):
-- \RF1|Ra_data[4]~59_combout\ = (\SW~combout\(12) & ((\RF1|Ra_data[4]~56_combout\ & ((\RF1|Ra_data[4]~58_combout\))) # (!\RF1|Ra_data[4]~56_combout\ & (\RF1|Ra_data[4]~51_combout\)))) # (!\SW~combout\(12) & (((\RF1|Ra_data[4]~56_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100001011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW~combout\(12),
	datab => \RF1|Ra_data[4]~51_combout\,
	datac => \RF1|Ra_data[4]~56_combout\,
	datad => \RF1|Ra_data[4]~58_combout\,
	combout => \RF1|Ra_data[4]~59_combout\);

-- Location: LCCOMB_X64_Y22_N12
\H1|Decoder0~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \H1|Decoder0~0_combout\ = (\RF1|Ra_data[4]~59_combout\) # (\RF1|Ra_data[5]~49_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101011111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RF1|Ra_data[4]~59_combout\,
	datac => \RF1|Ra_data[5]~49_combout\,
	combout => \H1|Decoder0~0_combout\);

-- Location: LCCOMB_X64_Y22_N22
\H1|Decoder0~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \H1|Decoder0~1_combout\ = (\RF1|Ra_data[4]~59_combout\ & !\RF1|Ra_data[5]~49_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RF1|Ra_data[4]~59_combout\,
	datac => \RF1|Ra_data[5]~49_combout\,
	combout => \H1|Decoder0~1_combout\);

-- Location: LCCOMB_X64_Y22_N16
\H1|Decoder0~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \H1|Decoder0~2_combout\ = (!\RF1|Ra_data[4]~59_combout\ & \RF1|Ra_data[5]~49_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RF1|Ra_data[4]~59_combout\,
	datac => \RF1|Ra_data[5]~49_combout\,
	combout => \H1|Decoder0~2_combout\);

-- Location: LCFF_X63_Y26_N23
\RF1|Reg13|Q_b[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_KEY~combout\(0),
	sdata => \RF1|Reg0|Q_b~3_combout\,
	sload => VCC,
	ena => \RF1|Reg13|Q_b[2]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \RF1|Reg13|Q_b\(2));

-- Location: LCCOMB_X64_Y26_N30
\RF1|Rb_data[2]~22\ : cycloneii_lcell_comb
-- Equation(s):
-- \RF1|Rb_data[2]~22_combout\ = (\SW~combout\(17) & (\SW~combout\(16))) # (!\SW~combout\(17) & ((\SW~combout\(16) & ((\RF1|Reg5|Q_b\(2)))) # (!\SW~combout\(16) & (\RF1|Reg1|Q_b\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW~combout\(17),
	datab => \SW~combout\(16),
	datac => \RF1|Reg1|Q_b\(2),
	datad => \RF1|Reg5|Q_b\(2),
	combout => \RF1|Rb_data[2]~22_combout\);

-- Location: LCCOMB_X63_Y26_N22
\RF1|Rb_data[2]~23\ : cycloneii_lcell_comb
-- Equation(s):
-- \RF1|Rb_data[2]~23_combout\ = (\SW~combout\(17) & ((\RF1|Rb_data[2]~22_combout\ & ((\RF1|Reg13|Q_b\(2)))) # (!\RF1|Rb_data[2]~22_combout\ & (\RF1|Reg9|Q_b\(2))))) # (!\SW~combout\(17) & (((\RF1|Rb_data[2]~22_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RF1|Reg9|Q_b\(2),
	datab => \SW~combout\(17),
	datac => \RF1|Reg13|Q_b\(2),
	datad => \RF1|Rb_data[2]~22_combout\,
	combout => \RF1|Rb_data[2]~23_combout\);

-- Location: LCCOMB_X64_Y24_N16
\RF1|Rb_data[2]~26\ : cycloneii_lcell_comb
-- Equation(s):
-- \RF1|Rb_data[2]~26_combout\ = (\SW~combout\(15) & (((\SW~combout\(14))))) # (!\SW~combout\(15) & ((\SW~combout\(14) & ((\RF1|Rb_data[2]~23_combout\))) # (!\SW~combout\(14) & (\RF1|Rb_data[2]~25_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RF1|Rb_data[2]~25_combout\,
	datab => \SW~combout\(15),
	datac => \RF1|Rb_data[2]~23_combout\,
	datad => \SW~combout\(14),
	combout => \RF1|Rb_data[2]~26_combout\);

-- Location: LCFF_X64_Y27_N25
\RF1|Reg14|Q_b[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_KEY~combout\(0),
	sdata => \RF1|Reg0|Q_b~3_combout\,
	sload => VCC,
	ena => \RF1|Reg14|Q_b[3]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \RF1|Reg14|Q_b\(2));

-- Location: LCFF_X63_Y27_N9
\RF1|Reg6|Q_b[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_KEY~combout\(0),
	sdata => \RF1|Reg0|Q_b~3_combout\,
	sload => VCC,
	ena => \RF1|Reg6|Q_b[4]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \RF1|Reg6|Q_b\(2));

-- Location: LCCOMB_X64_Y27_N24
\RF1|Rb_data[2]~21\ : cycloneii_lcell_comb
-- Equation(s):
-- \RF1|Rb_data[2]~21_combout\ = (\RF1|Rb_data[2]~20_combout\ & (((\RF1|Reg14|Q_b\(2))) # (!\SW~combout\(16)))) # (!\RF1|Rb_data[2]~20_combout\ & (\SW~combout\(16) & ((\RF1|Reg6|Q_b\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110011010100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RF1|Rb_data[2]~20_combout\,
	datab => \SW~combout\(16),
	datac => \RF1|Reg14|Q_b\(2),
	datad => \RF1|Reg6|Q_b\(2),
	combout => \RF1|Rb_data[2]~21_combout\);

-- Location: LCCOMB_X63_Y23_N8
\RF1|Rb_data[2]~29\ : cycloneii_lcell_comb
-- Equation(s):
-- \RF1|Rb_data[2]~29_combout\ = (\SW~combout\(15) & ((\RF1|Rb_data[2]~26_combout\ & (\RF1|Rb_data[2]~28_combout\)) # (!\RF1|Rb_data[2]~26_combout\ & ((\RF1|Rb_data[2]~21_combout\))))) # (!\SW~combout\(15) & (((\RF1|Rb_data[2]~26_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011110010110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RF1|Rb_data[2]~28_combout\,
	datab => \SW~combout\(15),
	datac => \RF1|Rb_data[2]~26_combout\,
	datad => \RF1|Rb_data[2]~21_combout\,
	combout => \RF1|Rb_data[2]~29_combout\);

-- Location: LCCOMB_X64_Y24_N20
\RF1|Rb_data[1]~17\ : cycloneii_lcell_comb
-- Equation(s):
-- \RF1|Rb_data[1]~17_combout\ = (\SW~combout\(14) & (\SW~combout\(15))) # (!\SW~combout\(14) & ((\SW~combout\(15) & ((\RF1|Reg14|Q_b\(1)))) # (!\SW~combout\(15) & (\RF1|Reg12|Q_b\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW~combout\(14),
	datab => \SW~combout\(15),
	datac => \RF1|Reg12|Q_b\(1),
	datad => \RF1|Reg14|Q_b\(1),
	combout => \RF1|Rb_data[1]~17_combout\);

-- Location: LCCOMB_X62_Y25_N2
\RF1|Rb_data[1]~18\ : cycloneii_lcell_comb
-- Equation(s):
-- \RF1|Rb_data[1]~18_combout\ = (\SW~combout\(14) & ((\RF1|Rb_data[1]~17_combout\ & ((\RF1|Reg15|Q_b\(1)))) # (!\RF1|Rb_data[1]~17_combout\ & (\RF1|Reg13|Q_b\(1))))) # (!\SW~combout\(14) & (\RF1|Rb_data[1]~17_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110001100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW~combout\(14),
	datab => \RF1|Rb_data[1]~17_combout\,
	datac => \RF1|Reg13|Q_b\(1),
	datad => \RF1|Reg15|Q_b\(1),
	combout => \RF1|Rb_data[1]~18_combout\);

-- Location: LCCOMB_X63_Y24_N28
\RF1|Rb_data[1]~14\ : cycloneii_lcell_comb
-- Equation(s):
-- \RF1|Rb_data[1]~14_combout\ = (\SW~combout\(15) & (\SW~combout\(14))) # (!\SW~combout\(15) & ((\SW~combout\(14) & ((\RF1|Reg1|Q_b\(1)))) # (!\SW~combout\(14) & (\RF1|Reg0|Q_b\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW~combout\(15),
	datab => \SW~combout\(14),
	datac => \RF1|Reg0|Q_b\(1),
	datad => \RF1|Reg1|Q_b\(1),
	combout => \RF1|Rb_data[1]~14_combout\);

-- Location: LCCOMB_X63_Y25_N30
\RF1|Rb_data[1]~15\ : cycloneii_lcell_comb
-- Equation(s):
-- \RF1|Rb_data[1]~15_combout\ = (\SW~combout\(15) & ((\RF1|Rb_data[1]~14_combout\ & ((\RF1|Reg3|Q_b\(1)))) # (!\RF1|Rb_data[1]~14_combout\ & (\RF1|Reg2|Q_b\(1))))) # (!\SW~combout\(15) & (((\RF1|Rb_data[1]~14_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW~combout\(15),
	datab => \RF1|Reg2|Q_b\(1),
	datac => \RF1|Reg3|Q_b\(1),
	datad => \RF1|Rb_data[1]~14_combout\,
	combout => \RF1|Rb_data[1]~15_combout\);

-- Location: LCCOMB_X62_Y25_N24
\RF1|Rb_data[1]~16\ : cycloneii_lcell_comb
-- Equation(s):
-- \RF1|Rb_data[1]~16_combout\ = (\SW~combout\(16) & (((\SW~combout\(17))))) # (!\SW~combout\(16) & ((\SW~combout\(17) & (\RF1|Rb_data[1]~13_combout\)) # (!\SW~combout\(17) & ((\RF1|Rb_data[1]~15_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RF1|Rb_data[1]~13_combout\,
	datab => \RF1|Rb_data[1]~15_combout\,
	datac => \SW~combout\(16),
	datad => \SW~combout\(17),
	combout => \RF1|Rb_data[1]~16_combout\);

-- Location: LCCOMB_X63_Y24_N26
\RF1|Rb_data[1]~10\ : cycloneii_lcell_comb
-- Equation(s):
-- \RF1|Rb_data[1]~10_combout\ = (\SW~combout\(15) & (\SW~combout\(14))) # (!\SW~combout\(15) & ((\SW~combout\(14) & ((\RF1|Reg5|Q_b\(1)))) # (!\SW~combout\(14) & (\RF1|Reg4|Q_b\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW~combout\(15),
	datab => \SW~combout\(14),
	datac => \RF1|Reg4|Q_b\(1),
	datad => \RF1|Reg5|Q_b\(1),
	combout => \RF1|Rb_data[1]~10_combout\);

-- Location: LCCOMB_X63_Y25_N28
\RF1|Rb_data[1]~11\ : cycloneii_lcell_comb
-- Equation(s):
-- \RF1|Rb_data[1]~11_combout\ = (\SW~combout\(15) & ((\RF1|Rb_data[1]~10_combout\ & (\RF1|Reg7|Q_b\(1))) # (!\RF1|Rb_data[1]~10_combout\ & ((\RF1|Reg6|Q_b\(1)))))) # (!\SW~combout\(15) & (\RF1|Rb_data[1]~10_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110011011000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW~combout\(15),
	datab => \RF1|Rb_data[1]~10_combout\,
	datac => \RF1|Reg7|Q_b\(1),
	datad => \RF1|Reg6|Q_b\(1),
	combout => \RF1|Rb_data[1]~11_combout\);

-- Location: LCCOMB_X62_Y25_N28
\RF1|Rb_data[1]~19\ : cycloneii_lcell_comb
-- Equation(s):
-- \RF1|Rb_data[1]~19_combout\ = (\SW~combout\(16) & ((\RF1|Rb_data[1]~16_combout\ & (\RF1|Rb_data[1]~18_combout\)) # (!\RF1|Rb_data[1]~16_combout\ & ((\RF1|Rb_data[1]~11_combout\))))) # (!\SW~combout\(16) & (((\RF1|Rb_data[1]~16_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101101011010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW~combout\(16),
	datab => \RF1|Rb_data[1]~18_combout\,
	datac => \RF1|Rb_data[1]~16_combout\,
	datad => \RF1|Rb_data[1]~11_combout\,
	combout => \RF1|Rb_data[1]~19_combout\);

-- Location: LCFF_X62_Y25_N19
\RF1|Reg15|Q_b[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_KEY~combout\(0),
	sdata => \RF1|Reg0|Q_b~0_combout\,
	sload => VCC,
	ena => \RF1|Reg15|Q_b[1]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \RF1|Reg15|Q_b\(0));

-- Location: LCCOMB_X63_Y25_N18
\RF1|Rb_data[0]~7\ : cycloneii_lcell_comb
-- Equation(s):
-- \RF1|Rb_data[0]~7_combout\ = (\SW~combout\(16) & ((\SW~combout\(17)) # ((\RF1|Reg7|Q_b\(0))))) # (!\SW~combout\(16) & (!\SW~combout\(17) & (\RF1|Reg3|Q_b\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW~combout\(16),
	datab => \SW~combout\(17),
	datac => \RF1|Reg3|Q_b\(0),
	datad => \RF1|Reg7|Q_b\(0),
	combout => \RF1|Rb_data[0]~7_combout\);

-- Location: LCCOMB_X62_Y25_N18
\RF1|Rb_data[0]~8\ : cycloneii_lcell_comb
-- Equation(s):
-- \RF1|Rb_data[0]~8_combout\ = (\SW~combout\(17) & ((\RF1|Rb_data[0]~7_combout\ & ((\RF1|Reg15|Q_b\(0)))) # (!\RF1|Rb_data[0]~7_combout\ & (\RF1|Reg11|Q_b\(0))))) # (!\SW~combout\(17) & (((\RF1|Rb_data[0]~7_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW~combout\(17),
	datab => \RF1|Reg11|Q_b\(0),
	datac => \RF1|Reg15|Q_b\(0),
	datad => \RF1|Rb_data[0]~7_combout\,
	combout => \RF1|Rb_data[0]~8_combout\);

-- Location: LCFF_X63_Y26_N11
\RF1|Reg13|Q_b[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_KEY~combout\(0),
	sdata => \RF1|Reg0|Q_b~0_combout\,
	sload => VCC,
	ena => \RF1|Reg13|Q_b[2]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \RF1|Reg13|Q_b\(0));

-- Location: LCCOMB_X64_Y26_N18
\RF1|Rb_data[0]~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \RF1|Rb_data[0]~0_combout\ = (\SW~combout\(16) & (((\SW~combout\(17))))) # (!\SW~combout\(16) & ((\SW~combout\(17) & (\RF1|Reg9|Q_b\(0))) # (!\SW~combout\(17) & ((\RF1|Reg1|Q_b\(0))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RF1|Reg9|Q_b\(0),
	datab => \SW~combout\(16),
	datac => \RF1|Reg1|Q_b\(0),
	datad => \SW~combout\(17),
	combout => \RF1|Rb_data[0]~0_combout\);

-- Location: LCCOMB_X63_Y26_N10
\RF1|Rb_data[0]~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \RF1|Rb_data[0]~1_combout\ = (\SW~combout\(16) & ((\RF1|Rb_data[0]~0_combout\ & ((\RF1|Reg13|Q_b\(0)))) # (!\RF1|Rb_data[0]~0_combout\ & (\RF1|Reg5|Q_b\(0))))) # (!\SW~combout\(16) & (((\RF1|Rb_data[0]~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RF1|Reg5|Q_b\(0),
	datab => \SW~combout\(16),
	datac => \RF1|Reg13|Q_b\(0),
	datad => \RF1|Rb_data[0]~0_combout\,
	combout => \RF1|Rb_data[0]~1_combout\);

-- Location: LCCOMB_X62_Y25_N14
\RF1|Rb_data[0]~9\ : cycloneii_lcell_comb
-- Equation(s):
-- \RF1|Rb_data[0]~9_combout\ = (\RF1|Rb_data[0]~6_combout\ & ((\RF1|Rb_data[0]~8_combout\) # ((!\SW~combout\(14))))) # (!\RF1|Rb_data[0]~6_combout\ & (((\SW~combout\(14) & \RF1|Rb_data[0]~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101101010001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RF1|Rb_data[0]~6_combout\,
	datab => \RF1|Rb_data[0]~8_combout\,
	datac => \SW~combout\(14),
	datad => \RF1|Rb_data[0]~1_combout\,
	combout => \RF1|Rb_data[0]~9_combout\);

-- Location: LCFF_X64_Y24_N11
\RF1|Reg8|Q_b[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_KEY~combout\(0),
	sdata => \RF1|Reg0|Q_b~4_combout\,
	sload => VCC,
	ena => \RF1|Reg8|Q_b[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \RF1|Reg8|Q_b\(3));

-- Location: LCFF_X64_Y26_N5
\RF1|Reg9|Q_b[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_KEY~combout\(0),
	sdata => \RF1|Reg0|Q_b~4_combout\,
	sload => VCC,
	ena => \RF1|Reg9|Q_b[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \RF1|Reg9|Q_b\(3));

-- Location: LCCOMB_X64_Y24_N10
\RF1|Rb_data[3]~30\ : cycloneii_lcell_comb
-- Equation(s):
-- \RF1|Rb_data[3]~30_combout\ = (\SW~combout\(14) & ((\SW~combout\(15)) # ((\RF1|Reg9|Q_b\(3))))) # (!\SW~combout\(14) & (!\SW~combout\(15) & (\RF1|Reg8|Q_b\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW~combout\(14),
	datab => \SW~combout\(15),
	datac => \RF1|Reg8|Q_b\(3),
	datad => \RF1|Reg9|Q_b\(3),
	combout => \RF1|Rb_data[3]~30_combout\);

-- Location: LCCOMB_X64_Y23_N18
\RF1|Rb_data[3]~31\ : cycloneii_lcell_comb
-- Equation(s):
-- \RF1|Rb_data[3]~31_combout\ = (\RF1|Rb_data[3]~30_combout\ & ((\RF1|Reg11|Q_b\(3)) # ((!\SW~combout\(15))))) # (!\RF1|Rb_data[3]~30_combout\ & (((\RF1|Reg10|Q_b\(3) & \SW~combout\(15)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RF1|Reg11|Q_b\(3),
	datab => \RF1|Reg10|Q_b\(3),
	datac => \RF1|Rb_data[3]~30_combout\,
	datad => \SW~combout\(15),
	combout => \RF1|Rb_data[3]~31_combout\);

-- Location: LCFF_X63_Y25_N23
\RF1|Reg3|Q_b[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_KEY~combout\(0),
	sdata => \RF1|Reg0|Q_b~4_combout\,
	sload => VCC,
	ena => \RF1|Reg3|Q_b[5]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \RF1|Reg3|Q_b\(3));

-- Location: LCFF_X63_Y24_N21
\RF1|Reg0|Q_b[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_KEY~combout\(0),
	sdata => \RF1|Reg0|Q_b~4_combout\,
	sload => VCC,
	ena => \RF1|Reg0|Q_b[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \RF1|Reg0|Q_b\(3));

-- Location: LCCOMB_X63_Y24_N20
\RF1|Rb_data[3]~34\ : cycloneii_lcell_comb
-- Equation(s):
-- \RF1|Rb_data[3]~34_combout\ = (\SW~combout\(14) & (((\SW~combout\(15))))) # (!\SW~combout\(14) & ((\SW~combout\(15) & (\RF1|Reg2|Q_b\(3))) # (!\SW~combout\(15) & ((\RF1|Reg0|Q_b\(3))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RF1|Reg2|Q_b\(3),
	datab => \SW~combout\(14),
	datac => \RF1|Reg0|Q_b\(3),
	datad => \SW~combout\(15),
	combout => \RF1|Rb_data[3]~34_combout\);

-- Location: LCCOMB_X63_Y25_N22
\RF1|Rb_data[3]~35\ : cycloneii_lcell_comb
-- Equation(s):
-- \RF1|Rb_data[3]~35_combout\ = (\SW~combout\(14) & ((\RF1|Rb_data[3]~34_combout\ & ((\RF1|Reg3|Q_b\(3)))) # (!\RF1|Rb_data[3]~34_combout\ & (\RF1|Reg1|Q_b\(3))))) # (!\SW~combout\(14) & (((\RF1|Rb_data[3]~34_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RF1|Reg1|Q_b\(3),
	datab => \SW~combout\(14),
	datac => \RF1|Reg3|Q_b\(3),
	datad => \RF1|Rb_data[3]~34_combout\,
	combout => \RF1|Rb_data[3]~35_combout\);

-- Location: LCCOMB_X63_Y25_N14
\RF1|Rb_data[3]~36\ : cycloneii_lcell_comb
-- Equation(s):
-- \RF1|Rb_data[3]~36_combout\ = (\SW~combout\(16) & ((\RF1|Rb_data[3]~33_combout\) # ((\SW~combout\(17))))) # (!\SW~combout\(16) & (((!\SW~combout\(17) & \RF1|Rb_data[3]~35_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RF1|Rb_data[3]~33_combout\,
	datab => \SW~combout\(16),
	datac => \SW~combout\(17),
	datad => \RF1|Rb_data[3]~35_combout\,
	combout => \RF1|Rb_data[3]~36_combout\);

-- Location: LCCOMB_X64_Y24_N4
\RF1|Rb_data[3]~37\ : cycloneii_lcell_comb
-- Equation(s):
-- \RF1|Rb_data[3]~37_combout\ = (\SW~combout\(14) & ((\SW~combout\(15)) # ((\RF1|Reg13|Q_b\(3))))) # (!\SW~combout\(14) & (!\SW~combout\(15) & (\RF1|Reg12|Q_b\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW~combout\(14),
	datab => \SW~combout\(15),
	datac => \RF1|Reg12|Q_b\(3),
	datad => \RF1|Reg13|Q_b\(3),
	combout => \RF1|Rb_data[3]~37_combout\);

-- Location: LCCOMB_X64_Y25_N28
\RF1|Rb_data[3]~38\ : cycloneii_lcell_comb
-- Equation(s):
-- \RF1|Rb_data[3]~38_combout\ = (\SW~combout\(15) & ((\RF1|Rb_data[3]~37_combout\ & ((\RF1|Reg15|Q_b\(3)))) # (!\RF1|Rb_data[3]~37_combout\ & (\RF1|Reg14|Q_b\(3))))) # (!\SW~combout\(15) & (((\RF1|Rb_data[3]~37_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RF1|Reg14|Q_b\(3),
	datab => \SW~combout\(15),
	datac => \RF1|Reg15|Q_b\(3),
	datad => \RF1|Rb_data[3]~37_combout\,
	combout => \RF1|Rb_data[3]~38_combout\);

-- Location: LCCOMB_X64_Y25_N24
\RF1|Rb_data[3]~39\ : cycloneii_lcell_comb
-- Equation(s):
-- \RF1|Rb_data[3]~39_combout\ = (\SW~combout\(17) & ((\RF1|Rb_data[3]~36_combout\ & ((\RF1|Rb_data[3]~38_combout\))) # (!\RF1|Rb_data[3]~36_combout\ & (\RF1|Rb_data[3]~31_combout\)))) # (!\SW~combout\(17) & (((\RF1|Rb_data[3]~36_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100001011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW~combout\(17),
	datab => \RF1|Rb_data[3]~31_combout\,
	datac => \RF1|Rb_data[3]~36_combout\,
	datad => \RF1|Rb_data[3]~38_combout\,
	combout => \RF1|Rb_data[3]~39_combout\);

-- Location: LCCOMB_X63_Y23_N18
\H4|WideOr6~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \H4|WideOr6~0_combout\ = (\RF1|Rb_data[0]~9_combout\ & ((\RF1|Rb_data[3]~39_combout\) # (\RF1|Rb_data[2]~29_combout\ $ (\RF1|Rb_data[1]~19_combout\)))) # (!\RF1|Rb_data[0]~9_combout\ & ((\RF1|Rb_data[1]~19_combout\) # (\RF1|Rb_data[2]~29_combout\ $ 
-- (\RF1|Rb_data[3]~39_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110101101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RF1|Rb_data[2]~29_combout\,
	datab => \RF1|Rb_data[1]~19_combout\,
	datac => \RF1|Rb_data[0]~9_combout\,
	datad => \RF1|Rb_data[3]~39_combout\,
	combout => \H4|WideOr6~0_combout\);

-- Location: LCCOMB_X63_Y23_N28
\H4|WideOr5~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \H4|WideOr5~0_combout\ = (\RF1|Rb_data[2]~29_combout\ & (\RF1|Rb_data[0]~9_combout\ & (\RF1|Rb_data[1]~19_combout\ $ (\RF1|Rb_data[3]~39_combout\)))) # (!\RF1|Rb_data[2]~29_combout\ & (!\RF1|Rb_data[3]~39_combout\ & ((\RF1|Rb_data[1]~19_combout\) # 
-- (\RF1|Rb_data[0]~9_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000011010100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RF1|Rb_data[2]~29_combout\,
	datab => \RF1|Rb_data[1]~19_combout\,
	datac => \RF1|Rb_data[0]~9_combout\,
	datad => \RF1|Rb_data[3]~39_combout\,
	combout => \H4|WideOr5~0_combout\);

-- Location: LCCOMB_X63_Y23_N30
\H4|WideOr4~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \H4|WideOr4~0_combout\ = (\RF1|Rb_data[1]~19_combout\ & (((\RF1|Rb_data[0]~9_combout\ & !\RF1|Rb_data[3]~39_combout\)))) # (!\RF1|Rb_data[1]~19_combout\ & ((\RF1|Rb_data[2]~29_combout\ & ((!\RF1|Rb_data[3]~39_combout\))) # (!\RF1|Rb_data[2]~29_combout\ & 
-- (\RF1|Rb_data[0]~9_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000011110010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RF1|Rb_data[2]~29_combout\,
	datab => \RF1|Rb_data[1]~19_combout\,
	datac => \RF1|Rb_data[0]~9_combout\,
	datad => \RF1|Rb_data[3]~39_combout\,
	combout => \H4|WideOr4~0_combout\);

-- Location: LCCOMB_X63_Y23_N16
\H4|WideOr3~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \H4|WideOr3~0_combout\ = (\RF1|Rb_data[1]~19_combout\ & ((\RF1|Rb_data[2]~29_combout\ & (\RF1|Rb_data[0]~9_combout\)) # (!\RF1|Rb_data[2]~29_combout\ & (!\RF1|Rb_data[0]~9_combout\ & \RF1|Rb_data[3]~39_combout\)))) # (!\RF1|Rb_data[1]~19_combout\ & 
-- (!\RF1|Rb_data[3]~39_combout\ & (\RF1|Rb_data[2]~29_combout\ $ (\RF1|Rb_data[0]~9_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000010010010010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RF1|Rb_data[2]~29_combout\,
	datab => \RF1|Rb_data[1]~19_combout\,
	datac => \RF1|Rb_data[0]~9_combout\,
	datad => \RF1|Rb_data[3]~39_combout\,
	combout => \H4|WideOr3~0_combout\);

-- Location: LCCOMB_X63_Y23_N10
\H4|WideOr2~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \H4|WideOr2~0_combout\ = (\RF1|Rb_data[2]~29_combout\ & (\RF1|Rb_data[3]~39_combout\ & ((\RF1|Rb_data[1]~19_combout\) # (!\RF1|Rb_data[0]~9_combout\)))) # (!\RF1|Rb_data[2]~29_combout\ & (\RF1|Rb_data[1]~19_combout\ & (!\RF1|Rb_data[0]~9_combout\ & 
-- !\RF1|Rb_data[3]~39_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000101000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RF1|Rb_data[2]~29_combout\,
	datab => \RF1|Rb_data[1]~19_combout\,
	datac => \RF1|Rb_data[0]~9_combout\,
	datad => \RF1|Rb_data[3]~39_combout\,
	combout => \H4|WideOr2~0_combout\);

-- Location: LCCOMB_X63_Y23_N20
\H4|WideOr1~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \H4|WideOr1~0_combout\ = (\RF1|Rb_data[1]~19_combout\ & ((\RF1|Rb_data[0]~9_combout\ & ((\RF1|Rb_data[3]~39_combout\))) # (!\RF1|Rb_data[0]~9_combout\ & (\RF1|Rb_data[2]~29_combout\)))) # (!\RF1|Rb_data[1]~19_combout\ & (\RF1|Rb_data[2]~29_combout\ & 
-- (\RF1|Rb_data[0]~9_combout\ $ (\RF1|Rb_data[3]~39_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101000101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RF1|Rb_data[2]~29_combout\,
	datab => \RF1|Rb_data[1]~19_combout\,
	datac => \RF1|Rb_data[0]~9_combout\,
	datad => \RF1|Rb_data[3]~39_combout\,
	combout => \H4|WideOr1~0_combout\);

-- Location: LCCOMB_X63_Y23_N22
\H4|WideOr0~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \H4|WideOr0~0_combout\ = (\RF1|Rb_data[2]~29_combout\ & (!\RF1|Rb_data[1]~19_combout\ & (\RF1|Rb_data[0]~9_combout\ $ (!\RF1|Rb_data[3]~39_combout\)))) # (!\RF1|Rb_data[2]~29_combout\ & (\RF1|Rb_data[0]~9_combout\ & (\RF1|Rb_data[1]~19_combout\ $ 
-- (!\RF1|Rb_data[3]~39_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110000000010010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RF1|Rb_data[2]~29_combout\,
	datab => \RF1|Rb_data[1]~19_combout\,
	datac => \RF1|Rb_data[0]~9_combout\,
	datad => \RF1|Rb_data[3]~39_combout\,
	combout => \H4|WideOr0~0_combout\);

-- Location: LCCOMB_X63_Y26_N14
\RF1|Rb_data[5]~41\ : cycloneii_lcell_comb
-- Equation(s):
-- \RF1|Rb_data[5]~41_combout\ = (\RF1|Rb_data[5]~40_combout\ & (((\RF1|Reg13|Q_b\(5)) # (!\SW~combout\(16))))) # (!\RF1|Rb_data[5]~40_combout\ & (\RF1|Reg5|Q_b\(5) & ((\SW~combout\(16)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RF1|Rb_data[5]~40_combout\,
	datab => \RF1|Reg5|Q_b\(5),
	datac => \RF1|Reg13|Q_b\(5),
	datad => \SW~combout\(16),
	combout => \RF1|Rb_data[5]~41_combout\);

-- Location: LCFF_X63_Y25_N27
\RF1|Reg3|Q_b[5]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_KEY~combout\(0),
	sdata => \RF1|Reg0|Q_b~5_combout\,
	sload => VCC,
	ena => \RF1|Reg3|Q_b[5]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \RF1|Reg3|Q_b\(5));

-- Location: LCCOMB_X63_Y25_N26
\RF1|Rb_data[5]~47\ : cycloneii_lcell_comb
-- Equation(s):
-- \RF1|Rb_data[5]~47_combout\ = (\SW~combout\(17) & (((\SW~combout\(16))))) # (!\SW~combout\(17) & ((\SW~combout\(16) & (\RF1|Reg7|Q_b\(5))) # (!\SW~combout\(16) & ((\RF1|Reg3|Q_b\(5))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RF1|Reg7|Q_b\(5),
	datab => \SW~combout\(17),
	datac => \RF1|Reg3|Q_b\(5),
	datad => \SW~combout\(16),
	combout => \RF1|Rb_data[5]~47_combout\);

-- Location: LCCOMB_X62_Y25_N26
\RF1|Rb_data[5]~48\ : cycloneii_lcell_comb
-- Equation(s):
-- \RF1|Rb_data[5]~48_combout\ = (\RF1|Rb_data[5]~47_combout\ & (((\RF1|Reg15|Q_b\(5)) # (!\SW~combout\(17))))) # (!\RF1|Rb_data[5]~47_combout\ & (\RF1|Reg11|Q_b\(5) & ((\SW~combout\(17)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RF1|Reg11|Q_b\(5),
	datab => \RF1|Rb_data[5]~47_combout\,
	datac => \RF1|Reg15|Q_b\(5),
	datad => \SW~combout\(17),
	combout => \RF1|Rb_data[5]~48_combout\);

-- Location: LCCOMB_X63_Y24_N8
\RF1|Rb_data[5]~44\ : cycloneii_lcell_comb
-- Equation(s):
-- \RF1|Rb_data[5]~44_combout\ = (\SW~combout\(16) & (((\SW~combout\(17))))) # (!\SW~combout\(16) & ((\SW~combout\(17) & (\RF1|Reg8|Q_b\(5))) # (!\SW~combout\(17) & ((\RF1|Reg0|Q_b\(5))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW~combout\(16),
	datab => \RF1|Reg8|Q_b\(5),
	datac => \RF1|Reg0|Q_b\(5),
	datad => \SW~combout\(17),
	combout => \RF1|Rb_data[5]~44_combout\);

-- Location: LCCOMB_X64_Y24_N8
\RF1|Rb_data[5]~45\ : cycloneii_lcell_comb
-- Equation(s):
-- \RF1|Rb_data[5]~45_combout\ = (\RF1|Rb_data[5]~44_combout\ & (((\RF1|Reg12|Q_b\(5)) # (!\SW~combout\(16))))) # (!\RF1|Rb_data[5]~44_combout\ & (\RF1|Reg4|Q_b\(5) & ((\SW~combout\(16)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RF1|Reg4|Q_b\(5),
	datab => \RF1|Rb_data[5]~44_combout\,
	datac => \RF1|Reg12|Q_b\(5),
	datad => \SW~combout\(16),
	combout => \RF1|Rb_data[5]~45_combout\);

-- Location: LCCOMB_X64_Y23_N28
\RF1|Rb_data[5]~46\ : cycloneii_lcell_comb
-- Equation(s):
-- \RF1|Rb_data[5]~46_combout\ = (\SW~combout\(14) & (((\SW~combout\(15))))) # (!\SW~combout\(14) & ((\SW~combout\(15) & (\RF1|Rb_data[5]~43_combout\)) # (!\SW~combout\(15) & ((\RF1|Rb_data[5]~45_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RF1|Rb_data[5]~43_combout\,
	datab => \RF1|Rb_data[5]~45_combout\,
	datac => \SW~combout\(14),
	datad => \SW~combout\(15),
	combout => \RF1|Rb_data[5]~46_combout\);

-- Location: LCCOMB_X64_Y23_N30
\RF1|Rb_data[5]~49\ : cycloneii_lcell_comb
-- Equation(s):
-- \RF1|Rb_data[5]~49_combout\ = (\SW~combout\(14) & ((\RF1|Rb_data[5]~46_combout\ & ((\RF1|Rb_data[5]~48_combout\))) # (!\RF1|Rb_data[5]~46_combout\ & (\RF1|Rb_data[5]~41_combout\)))) # (!\SW~combout\(14) & (((\RF1|Rb_data[5]~46_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RF1|Rb_data[5]~41_combout\,
	datab => \RF1|Rb_data[5]~48_combout\,
	datac => \SW~combout\(14),
	datad => \RF1|Rb_data[5]~46_combout\,
	combout => \RF1|Rb_data[5]~49_combout\);

-- Location: LCFF_X64_Y24_N29
\RF1|Reg12|Q_b[4]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_KEY~combout\(0),
	sdata => \RF1|Reg0|Q_b~6_combout\,
	sload => VCC,
	ena => \RF1|Reg12|Q_b[4]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \RF1|Reg12|Q_b\(4));

-- Location: LCCOMB_X64_Y24_N28
\RF1|Rb_data[4]~57\ : cycloneii_lcell_comb
-- Equation(s):
-- \RF1|Rb_data[4]~57_combout\ = (\SW~combout\(14) & (\SW~combout\(15))) # (!\SW~combout\(14) & ((\SW~combout\(15) & ((\RF1|Reg14|Q_b\(4)))) # (!\SW~combout\(15) & (\RF1|Reg12|Q_b\(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW~combout\(14),
	datab => \SW~combout\(15),
	datac => \RF1|Reg12|Q_b\(4),
	datad => \RF1|Reg14|Q_b\(4),
	combout => \RF1|Rb_data[4]~57_combout\);

-- Location: LCCOMB_X64_Y25_N14
\RF1|Rb_data[4]~58\ : cycloneii_lcell_comb
-- Equation(s):
-- \RF1|Rb_data[4]~58_combout\ = (\RF1|Rb_data[4]~57_combout\ & (((\RF1|Reg15|Q_b\(4)) # (!\SW~combout\(14))))) # (!\RF1|Rb_data[4]~57_combout\ & (\RF1|Reg13|Q_b\(4) & ((\SW~combout\(14)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RF1|Reg13|Q_b\(4),
	datab => \RF1|Rb_data[4]~57_combout\,
	datac => \RF1|Reg15|Q_b\(4),
	datad => \SW~combout\(14),
	combout => \RF1|Rb_data[4]~58_combout\);

-- Location: LCCOMB_X63_Y24_N18
\RF1|Rb_data[4]~50\ : cycloneii_lcell_comb
-- Equation(s):
-- \RF1|Rb_data[4]~50_combout\ = (\SW~combout\(15) & (\SW~combout\(14))) # (!\SW~combout\(15) & ((\SW~combout\(14) & ((\RF1|Reg5|Q_b\(4)))) # (!\SW~combout\(14) & (\RF1|Reg4|Q_b\(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW~combout\(15),
	datab => \SW~combout\(14),
	datac => \RF1|Reg4|Q_b\(4),
	datad => \RF1|Reg5|Q_b\(4),
	combout => \RF1|Rb_data[4]~50_combout\);

-- Location: LCFF_X63_Y27_N29
\RF1|Reg6|Q_b[4]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_KEY~combout\(0),
	datain => \RF1|Reg0|Q_b~6_combout\,
	ena => \RF1|Reg6|Q_b[4]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \RF1|Reg6|Q_b\(4));

-- Location: LCCOMB_X63_Y24_N22
\RF1|Rb_data[4]~51\ : cycloneii_lcell_comb
-- Equation(s):
-- \RF1|Rb_data[4]~51_combout\ = (\SW~combout\(15) & ((\RF1|Rb_data[4]~50_combout\ & (\RF1|Reg7|Q_b\(4))) # (!\RF1|Rb_data[4]~50_combout\ & ((\RF1|Reg6|Q_b\(4)))))) # (!\SW~combout\(15) & (\RF1|Rb_data[4]~50_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110011011000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW~combout\(15),
	datab => \RF1|Rb_data[4]~50_combout\,
	datac => \RF1|Reg7|Q_b\(4),
	datad => \RF1|Reg6|Q_b\(4),
	combout => \RF1|Rb_data[4]~51_combout\);

-- Location: LCCOMB_X64_Y23_N26
\RF1|Rb_data[4]~59\ : cycloneii_lcell_comb
-- Equation(s):
-- \RF1|Rb_data[4]~59_combout\ = (\RF1|Rb_data[4]~56_combout\ & (((\RF1|Rb_data[4]~58_combout\)) # (!\SW~combout\(16)))) # (!\RF1|Rb_data[4]~56_combout\ & (\SW~combout\(16) & ((\RF1|Rb_data[4]~51_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110011010100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RF1|Rb_data[4]~56_combout\,
	datab => \SW~combout\(16),
	datac => \RF1|Rb_data[4]~58_combout\,
	datad => \RF1|Rb_data[4]~51_combout\,
	combout => \RF1|Rb_data[4]~59_combout\);

-- Location: LCCOMB_X64_Y23_N12
\H5|Decoder0~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \H5|Decoder0~0_combout\ = (\RF1|Rb_data[4]~59_combout\) # (\RF1|Rb_data[5]~49_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \RF1|Rb_data[4]~59_combout\,
	datad => \RF1|Rb_data[5]~49_combout\,
	combout => \H5|Decoder0~0_combout\);

-- Location: LCCOMB_X64_Y23_N6
\H5|Decoder0~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \H5|Decoder0~1_combout\ = (\RF1|Rb_data[4]~59_combout\ & !\RF1|Rb_data[5]~49_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \RF1|Rb_data[4]~59_combout\,
	datad => \RF1|Rb_data[5]~49_combout\,
	combout => \H5|Decoder0~1_combout\);

-- Location: LCCOMB_X64_Y23_N8
\H5|Decoder0~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \H5|Decoder0~2_combout\ = (!\RF1|Rb_data[4]~59_combout\ & \RF1|Rb_data[5]~49_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \RF1|Rb_data[4]~59_combout\,
	datad => \RF1|Rb_data[5]~49_combout\,
	combout => \H5|Decoder0~2_combout\);

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
	datain => \RF1|ALT_INV_Ra_data[5]~49_combout\,
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
	datain => \H1|Decoder0~0_combout\,
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
	datain => \RF1|Ra_data[4]~59_combout\,
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
	datain => \H1|Decoder0~1_combout\,
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
	datain => \H1|Decoder0~2_combout\,
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
	datain => GND,
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
	datain => \H1|Decoder0~1_combout\,
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
	datain => VCC,
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
	datain => GND,
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
	datain => GND,
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
	datain => GND,
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
	datain => GND,
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
	datain => GND,
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
	datain => GND,
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
	datain => GND,
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
	datain => GND,
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
	datain => GND,
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
	datain => GND,
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
	datain => \RF1|ALT_INV_Rb_data[5]~49_combout\,
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
	datain => \H5|Decoder0~0_combout\,
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
	datain => \RF1|Rb_data[4]~59_combout\,
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
	datain => \H5|Decoder0~1_combout\,
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
	datain => \H5|Decoder0~2_combout\,
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
	datain => GND,
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
	datain => \H5|Decoder0~1_combout\,
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
	datain => VCC,
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
	datain => GND,
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
	datain => GND,
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
	datain => GND,
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
	datain => GND,
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
	datain => GND,
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
	datain => GND,
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
	datain => GND,
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
	datain => GND,
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
	datain => GND,
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
	datain => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_HEX7(0));
END structure;


