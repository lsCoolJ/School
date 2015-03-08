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

-- DATE "05/13/2014 10:03:29"

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

ENTITY 	Part6 IS
    PORT (
	KEY : IN std_logic_vector(0 DOWNTO 0);
	CLOCK_50 : IN std_logic;
	HEX0 : OUT std_logic_vector(0 TO 6);
	HEX1 : OUT std_logic_vector(0 TO 6);
	HEX2 : OUT std_logic_vector(0 TO 6);
	HEX3 : OUT std_logic_vector(0 TO 6);
	HEX4 : OUT std_logic_vector(0 TO 6);
	HEX5 : OUT std_logic_vector(0 TO 6);
	HEX6 : OUT std_logic_vector(0 TO 6);
	HEX7 : OUT std_logic_vector(0 TO 6)
	);
END Part6;

-- Design Ports Information
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
-- CLOCK_50	=>  Location: PIN_N2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- KEY[0]	=>  Location: PIN_G26,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default


ARCHITECTURE structure OF Part6 IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_KEY : std_logic_vector(0 DOWNTO 0);
SIGNAL ww_CLOCK_50 : std_logic;
SIGNAL ww_HEX0 : std_logic_vector(0 TO 6);
SIGNAL ww_HEX1 : std_logic_vector(0 TO 6);
SIGNAL ww_HEX2 : std_logic_vector(0 TO 6);
SIGNAL ww_HEX3 : std_logic_vector(0 TO 6);
SIGNAL ww_HEX4 : std_logic_vector(0 TO 6);
SIGNAL ww_HEX5 : std_logic_vector(0 TO 6);
SIGNAL ww_HEX6 : std_logic_vector(0 TO 6);
SIGNAL ww_HEX7 : std_logic_vector(0 TO 6);
SIGNAL \CLOCK_50~clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \U1|auto_generated|counter_comb_bita2~combout\ : std_logic;
SIGNAL \U1|auto_generated|counter_comb_bita3~combout\ : std_logic;
SIGNAL \U1|auto_generated|counter_comb_bita5~combout\ : std_logic;
SIGNAL \U1|auto_generated|counter_comb_bita7~combout\ : std_logic;
SIGNAL \U1|auto_generated|counter_comb_bita16~combout\ : std_logic;
SIGNAL \U1|auto_generated|counter_comb_bita19~combout\ : std_logic;
SIGNAL \U1|auto_generated|counter_comb_bita23~combout\ : std_logic;
SIGNAL \currState.D~regout\ : std_logic;
SIGNAL \Equal0~2_combout\ : std_logic;
SIGNAL \Equal0~6_combout\ : std_logic;
SIGNAL \currState.C~regout\ : std_logic;
SIGNAL \in0~2_combout\ : std_logic;
SIGNAL \currState~15_combout\ : std_logic;
SIGNAL \currState~19_combout\ : std_logic;
SIGNAL \CLOCK_50~combout\ : std_logic;
SIGNAL \CLOCK_50~clkctrl_outclk\ : std_logic;
SIGNAL \in6~0_combout\ : std_logic;
SIGNAL \U1|auto_generated|counter_comb_bita0~COUT\ : std_logic;
SIGNAL \U1|auto_generated|counter_comb_bita1~combout\ : std_logic;
SIGNAL \ACLR~regout\ : std_logic;
SIGNAL \U1|auto_generated|counter_comb_bita0~combout\ : std_logic;
SIGNAL \Equal0~7_combout\ : std_logic;
SIGNAL \U1|auto_generated|counter_comb_bita1~COUT\ : std_logic;
SIGNAL \U1|auto_generated|counter_comb_bita2~COUT\ : std_logic;
SIGNAL \U1|auto_generated|counter_comb_bita3~COUT\ : std_logic;
SIGNAL \U1|auto_generated|counter_comb_bita4~combout\ : std_logic;
SIGNAL \U1|auto_generated|counter_comb_bita4~COUT\ : std_logic;
SIGNAL \U1|auto_generated|counter_comb_bita5~COUT\ : std_logic;
SIGNAL \U1|auto_generated|counter_comb_bita6~combout\ : std_logic;
SIGNAL \U1|auto_generated|counter_comb_bita6~COUT\ : std_logic;
SIGNAL \U1|auto_generated|counter_comb_bita7~COUT\ : std_logic;
SIGNAL \U1|auto_generated|counter_comb_bita8~combout\ : std_logic;
SIGNAL \U1|auto_generated|counter_comb_bita8~COUT\ : std_logic;
SIGNAL \U1|auto_generated|counter_comb_bita9~combout\ : std_logic;
SIGNAL \Equal0~5_combout\ : std_logic;
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
SIGNAL \U1|auto_generated|counter_comb_bita21~combout\ : std_logic;
SIGNAL \U1|auto_generated|counter_comb_bita18~combout\ : std_logic;
SIGNAL \Equal0~1_combout\ : std_logic;
SIGNAL \U1|auto_generated|counter_comb_bita21~COUT\ : std_logic;
SIGNAL \U1|auto_generated|counter_comb_bita22~combout\ : std_logic;
SIGNAL \U1|auto_generated|counter_comb_bita22~COUT\ : std_logic;
SIGNAL \U1|auto_generated|counter_comb_bita23~COUT\ : std_logic;
SIGNAL \U1|auto_generated|counter_comb_bita24~combout\ : std_logic;
SIGNAL \U1|auto_generated|counter_comb_bita24~COUT\ : std_logic;
SIGNAL \U1|auto_generated|counter_comb_bita25~combout\ : std_logic;
SIGNAL \Equal0~0_combout\ : std_logic;
SIGNAL \Equal0~3_combout\ : std_logic;
SIGNAL \Equal0~4_combout\ : std_logic;
SIGNAL \Equal0~8_combout\ : std_logic;
SIGNAL \in7~0_combout\ : std_logic;
SIGNAL \currState~21_combout\ : std_logic;
SIGNAL \currState.E~regout\ : std_logic;
SIGNAL \currState~18_combout\ : std_logic;
SIGNAL \currState.F~regout\ : std_logic;
SIGNAL \currState~20_combout\ : std_logic;
SIGNAL \currState.G~regout\ : std_logic;
SIGNAL \currState~16_combout\ : std_logic;
SIGNAL \currState.H~regout\ : std_logic;
SIGNAL \nextState~2_combout\ : std_logic;
SIGNAL \currState.I~regout\ : std_logic;
SIGNAL \currState.A~feeder_combout\ : std_logic;
SIGNAL \currState.A~regout\ : std_logic;
SIGNAL \currState~17_combout\ : std_logic;
SIGNAL \currState.B~regout\ : std_logic;
SIGNAL \in0~0_combout\ : std_logic;
SIGNAL \in0~1_combout\ : std_logic;
SIGNAL \in5~1_combout\ : std_logic;
SIGNAL \in6~1_combout\ : std_logic;
SIGNAL \in7~1_combout\ : std_logic;
SIGNAL \in0~3_combout\ : std_logic;
SIGNAL \in0~6_combout\ : std_logic;
SIGNAL \in0~4_combout\ : std_logic;
SIGNAL \in0~5_combout\ : std_logic;
SIGNAL \H0|hex~0_combout\ : std_logic;
SIGNAL \H0|WideOr0~0_combout\ : std_logic;
SIGNAL \H0|hex~1_combout\ : std_logic;
SIGNAL \H0|Decoder1~0_combout\ : std_logic;
SIGNAL \H0|hex~2_combout\ : std_logic;
SIGNAL \in1~3_combout\ : std_logic;
SIGNAL \in1~1_combout\ : std_logic;
SIGNAL \in1~2_combout\ : std_logic;
SIGNAL \in1~0_combout\ : std_logic;
SIGNAL \H1|hex~0_combout\ : std_logic;
SIGNAL \H1|WideOr0~0_combout\ : std_logic;
SIGNAL \H1|hex~1_combout\ : std_logic;
SIGNAL \H1|Decoder1~0_combout\ : std_logic;
SIGNAL \H1|hex~2_combout\ : std_logic;
SIGNAL \in2~3_combout\ : std_logic;
SIGNAL \in2~1_combout\ : std_logic;
SIGNAL \in2~0_combout\ : std_logic;
SIGNAL \in2~2_combout\ : std_logic;
SIGNAL \H2|hex~0_combout\ : std_logic;
SIGNAL \H2|WideOr0~0_combout\ : std_logic;
SIGNAL \H2|hex~1_combout\ : std_logic;
SIGNAL \H2|Decoder1~0_combout\ : std_logic;
SIGNAL \H2|hex~2_combout\ : std_logic;
SIGNAL \in3~2_combout\ : std_logic;
SIGNAL \in3~3_combout\ : std_logic;
SIGNAL \in3~0_combout\ : std_logic;
SIGNAL \in3~1_combout\ : std_logic;
SIGNAL \H3|hex~0_combout\ : std_logic;
SIGNAL \H3|WideOr0~0_combout\ : std_logic;
SIGNAL \H3|hex~1_combout\ : std_logic;
SIGNAL \H3|Decoder1~0_combout\ : std_logic;
SIGNAL \H3|hex~2_combout\ : std_logic;
SIGNAL \in4~3_combout\ : std_logic;
SIGNAL \in4~0_combout\ : std_logic;
SIGNAL \in4~2_combout\ : std_logic;
SIGNAL \in4~1_combout\ : std_logic;
SIGNAL \H4|hex~0_combout\ : std_logic;
SIGNAL \H4|WideOr0~0_combout\ : std_logic;
SIGNAL \H4|hex~1_combout\ : std_logic;
SIGNAL \H4|Decoder1~0_combout\ : std_logic;
SIGNAL \H4|hex~2_combout\ : std_logic;
SIGNAL \in5~0_combout\ : std_logic;
SIGNAL \in5~2_combout\ : std_logic;
SIGNAL \in5~3_combout\ : std_logic;
SIGNAL \H5|hex~0_combout\ : std_logic;
SIGNAL \H5|WideOr0~0_combout\ : std_logic;
SIGNAL \H5|hex~1_combout\ : std_logic;
SIGNAL \H5|Decoder1~0_combout\ : std_logic;
SIGNAL \H5|hex~2_combout\ : std_logic;
SIGNAL \in6~2_combout\ : std_logic;
SIGNAL \in6~3_combout\ : std_logic;
SIGNAL \H6|hex~0_combout\ : std_logic;
SIGNAL \H6|WideOr0~0_combout\ : std_logic;
SIGNAL \H6|hex~1_combout\ : std_logic;
SIGNAL \H6|Decoder1~0_combout\ : std_logic;
SIGNAL \H6|hex~2_combout\ : std_logic;
SIGNAL \in7~3_combout\ : std_logic;
SIGNAL \in7~2_combout\ : std_logic;
SIGNAL \H7|hex~0_combout\ : std_logic;
SIGNAL \H7|WideOr0~0_combout\ : std_logic;
SIGNAL \H7|hex~1_combout\ : std_logic;
SIGNAL \H7|Decoder1~0_combout\ : std_logic;
SIGNAL \H7|hex~2_combout\ : std_logic;
SIGNAL in7 : std_logic_vector(3 DOWNTO 0);
SIGNAL in6 : std_logic_vector(3 DOWNTO 0);
SIGNAL in5 : std_logic_vector(3 DOWNTO 0);
SIGNAL in4 : std_logic_vector(3 DOWNTO 0);
SIGNAL in3 : std_logic_vector(3 DOWNTO 0);
SIGNAL in2 : std_logic_vector(3 DOWNTO 0);
SIGNAL in1 : std_logic_vector(3 DOWNTO 0);
SIGNAL in0 : std_logic_vector(3 DOWNTO 0);
SIGNAL \U1|auto_generated|safe_q\ : std_logic_vector(25 DOWNTO 0);
SIGNAL \KEY~combout\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \ALT_INV_KEY~combout\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \H7|ALT_INV_hex~2_combout\ : std_logic;
SIGNAL \H7|ALT_INV_Decoder1~0_combout\ : std_logic;
SIGNAL \H7|ALT_INV_WideOr0~0_combout\ : std_logic;
SIGNAL \H7|ALT_INV_hex~0_combout\ : std_logic;
SIGNAL \H6|ALT_INV_hex~2_combout\ : std_logic;
SIGNAL \H6|ALT_INV_Decoder1~0_combout\ : std_logic;
SIGNAL \H6|ALT_INV_WideOr0~0_combout\ : std_logic;
SIGNAL \H6|ALT_INV_hex~0_combout\ : std_logic;
SIGNAL \H5|ALT_INV_hex~2_combout\ : std_logic;
SIGNAL \H5|ALT_INV_Decoder1~0_combout\ : std_logic;
SIGNAL \H5|ALT_INV_WideOr0~0_combout\ : std_logic;
SIGNAL \H5|ALT_INV_hex~0_combout\ : std_logic;
SIGNAL \H4|ALT_INV_hex~2_combout\ : std_logic;
SIGNAL \H4|ALT_INV_Decoder1~0_combout\ : std_logic;
SIGNAL \H4|ALT_INV_WideOr0~0_combout\ : std_logic;
SIGNAL \H4|ALT_INV_hex~0_combout\ : std_logic;
SIGNAL \H3|ALT_INV_hex~2_combout\ : std_logic;
SIGNAL \H3|ALT_INV_Decoder1~0_combout\ : std_logic;
SIGNAL \H3|ALT_INV_WideOr0~0_combout\ : std_logic;
SIGNAL \H3|ALT_INV_hex~0_combout\ : std_logic;
SIGNAL \H2|ALT_INV_hex~2_combout\ : std_logic;
SIGNAL \H2|ALT_INV_Decoder1~0_combout\ : std_logic;
SIGNAL \H2|ALT_INV_WideOr0~0_combout\ : std_logic;
SIGNAL \H2|ALT_INV_hex~0_combout\ : std_logic;
SIGNAL \H1|ALT_INV_hex~2_combout\ : std_logic;
SIGNAL \H1|ALT_INV_Decoder1~0_combout\ : std_logic;
SIGNAL \H1|ALT_INV_WideOr0~0_combout\ : std_logic;
SIGNAL \H1|ALT_INV_hex~0_combout\ : std_logic;
SIGNAL \H0|ALT_INV_hex~2_combout\ : std_logic;
SIGNAL \H0|ALT_INV_Decoder1~0_combout\ : std_logic;
SIGNAL \H0|ALT_INV_WideOr0~0_combout\ : std_logic;
SIGNAL \H0|ALT_INV_hex~0_combout\ : std_logic;

BEGIN

ww_KEY <= KEY;
ww_CLOCK_50 <= CLOCK_50;
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

\CLOCK_50~clkctrl_INCLK_bus\ <= (gnd & gnd & gnd & \CLOCK_50~combout\);
\ALT_INV_KEY~combout\(0) <= NOT \KEY~combout\(0);
\H7|ALT_INV_hex~2_combout\ <= NOT \H7|hex~2_combout\;
\H7|ALT_INV_Decoder1~0_combout\ <= NOT \H7|Decoder1~0_combout\;
\H7|ALT_INV_WideOr0~0_combout\ <= NOT \H7|WideOr0~0_combout\;
\H7|ALT_INV_hex~0_combout\ <= NOT \H7|hex~0_combout\;
\H6|ALT_INV_hex~2_combout\ <= NOT \H6|hex~2_combout\;
\H6|ALT_INV_Decoder1~0_combout\ <= NOT \H6|Decoder1~0_combout\;
\H6|ALT_INV_WideOr0~0_combout\ <= NOT \H6|WideOr0~0_combout\;
\H6|ALT_INV_hex~0_combout\ <= NOT \H6|hex~0_combout\;
\H5|ALT_INV_hex~2_combout\ <= NOT \H5|hex~2_combout\;
\H5|ALT_INV_Decoder1~0_combout\ <= NOT \H5|Decoder1~0_combout\;
\H5|ALT_INV_WideOr0~0_combout\ <= NOT \H5|WideOr0~0_combout\;
\H5|ALT_INV_hex~0_combout\ <= NOT \H5|hex~0_combout\;
\H4|ALT_INV_hex~2_combout\ <= NOT \H4|hex~2_combout\;
\H4|ALT_INV_Decoder1~0_combout\ <= NOT \H4|Decoder1~0_combout\;
\H4|ALT_INV_WideOr0~0_combout\ <= NOT \H4|WideOr0~0_combout\;
\H4|ALT_INV_hex~0_combout\ <= NOT \H4|hex~0_combout\;
\H3|ALT_INV_hex~2_combout\ <= NOT \H3|hex~2_combout\;
\H3|ALT_INV_Decoder1~0_combout\ <= NOT \H3|Decoder1~0_combout\;
\H3|ALT_INV_WideOr0~0_combout\ <= NOT \H3|WideOr0~0_combout\;
\H3|ALT_INV_hex~0_combout\ <= NOT \H3|hex~0_combout\;
\H2|ALT_INV_hex~2_combout\ <= NOT \H2|hex~2_combout\;
\H2|ALT_INV_Decoder1~0_combout\ <= NOT \H2|Decoder1~0_combout\;
\H2|ALT_INV_WideOr0~0_combout\ <= NOT \H2|WideOr0~0_combout\;
\H2|ALT_INV_hex~0_combout\ <= NOT \H2|hex~0_combout\;
\H1|ALT_INV_hex~2_combout\ <= NOT \H1|hex~2_combout\;
\H1|ALT_INV_Decoder1~0_combout\ <= NOT \H1|Decoder1~0_combout\;
\H1|ALT_INV_WideOr0~0_combout\ <= NOT \H1|WideOr0~0_combout\;
\H1|ALT_INV_hex~0_combout\ <= NOT \H1|hex~0_combout\;
\H0|ALT_INV_hex~2_combout\ <= NOT \H0|hex~2_combout\;
\H0|ALT_INV_Decoder1~0_combout\ <= NOT \H0|Decoder1~0_combout\;
\H0|ALT_INV_WideOr0~0_combout\ <= NOT \H0|WideOr0~0_combout\;
\H0|ALT_INV_hex~0_combout\ <= NOT \H0|hex~0_combout\;

-- Location: LCFF_X1_Y13_N21
\U1|auto_generated|counter_reg_bit1a[23]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \U1|auto_generated|counter_comb_bita23~combout\,
	aclr => \ACLR~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \U1|auto_generated|safe_q\(23));

-- Location: LCFF_X1_Y13_N13
\U1|auto_generated|counter_reg_bit1a[19]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \U1|auto_generated|counter_comb_bita19~combout\,
	aclr => \ACLR~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \U1|auto_generated|safe_q\(19));

-- Location: LCFF_X1_Y13_N7
\U1|auto_generated|counter_reg_bit1a[16]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \U1|auto_generated|counter_comb_bita16~combout\,
	aclr => \ACLR~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \U1|auto_generated|safe_q\(16));

-- Location: LCFF_X1_Y14_N21
\U1|auto_generated|counter_reg_bit1a[7]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \U1|auto_generated|counter_comb_bita7~combout\,
	aclr => \ACLR~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \U1|auto_generated|safe_q\(7));

-- Location: LCFF_X1_Y14_N17
\U1|auto_generated|counter_reg_bit1a[5]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \U1|auto_generated|counter_comb_bita5~combout\,
	aclr => \ACLR~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \U1|auto_generated|safe_q\(5));

-- Location: LCFF_X1_Y14_N13
\U1|auto_generated|counter_reg_bit1a[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \U1|auto_generated|counter_comb_bita3~combout\,
	aclr => \ACLR~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \U1|auto_generated|safe_q\(3));

-- Location: LCFF_X1_Y14_N11
\U1|auto_generated|counter_reg_bit1a[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \U1|auto_generated|counter_comb_bita2~combout\,
	aclr => \ACLR~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \U1|auto_generated|safe_q\(2));

-- Location: LCCOMB_X1_Y14_N10
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

-- Location: LCCOMB_X1_Y14_N12
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

-- Location: LCCOMB_X1_Y14_N16
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

-- Location: LCCOMB_X1_Y14_N20
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

-- Location: LCCOMB_X1_Y13_N6
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

-- Location: LCCOMB_X1_Y13_N12
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

-- Location: LCCOMB_X1_Y13_N20
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

-- Location: LCFF_X5_Y14_N11
\currState.D\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \currState~15_combout\,
	ena => \Equal0~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \currState.D~regout\);

-- Location: LCCOMB_X1_Y13_N30
\Equal0~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \Equal0~2_combout\ = (!\U1|auto_generated|safe_q\(16) & (\U1|auto_generated|safe_q\(15) & (\U1|auto_generated|safe_q\(17) & \U1|auto_generated|safe_q\(14))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U1|auto_generated|safe_q\(16),
	datab => \U1|auto_generated|safe_q\(15),
	datac => \U1|auto_generated|safe_q\(17),
	datad => \U1|auto_generated|safe_q\(14),
	combout => \Equal0~2_combout\);

-- Location: LCCOMB_X1_Y14_N2
\Equal0~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \Equal0~6_combout\ = (!\U1|auto_generated|safe_q\(2) & (!\U1|auto_generated|safe_q\(4) & (!\U1|auto_generated|safe_q\(5) & !\U1|auto_generated|safe_q\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U1|auto_generated|safe_q\(2),
	datab => \U1|auto_generated|safe_q\(4),
	datac => \U1|auto_generated|safe_q\(5),
	datad => \U1|auto_generated|safe_q\(3),
	combout => \Equal0~6_combout\);

-- Location: LCFF_X5_Y14_N13
\currState.C\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \currState~19_combout\,
	ena => \Equal0~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \currState.C~regout\);

-- Location: LCCOMB_X5_Y14_N16
\in0~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \in0~2_combout\ = (\currState.C~regout\) # ((\currState.H~regout\) # ((\currState.G~regout\) # (\currState.D~regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \currState.C~regout\,
	datab => \currState.H~regout\,
	datac => \currState.G~regout\,
	datad => \currState.D~regout\,
	combout => \in0~2_combout\);

-- Location: LCCOMB_X5_Y14_N10
\currState~15\ : cycloneii_lcell_comb
-- Equation(s):
-- \currState~15_combout\ = (\currState.C~regout\ & \KEY~combout\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \currState.C~regout\,
	datad => \KEY~combout\(0),
	combout => \currState~15_combout\);

-- Location: LCCOMB_X5_Y14_N12
\currState~19\ : cycloneii_lcell_comb
-- Equation(s):
-- \currState~19_combout\ = (\currState.B~regout\ & \KEY~combout\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \currState.B~regout\,
	datad => \KEY~combout\(0),
	combout => \currState~19_combout\);

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

-- Location: LCCOMB_X2_Y14_N16
\in6~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \in6~0_combout\ = (in5(0) & \KEY~combout\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => in5(0),
	datad => \KEY~combout\(0),
	combout => \in6~0_combout\);

-- Location: LCCOMB_X1_Y14_N6
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

-- Location: LCCOMB_X1_Y14_N8
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

-- Location: LCFF_X2_Y14_N23
ACLR : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \Equal0~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \ACLR~regout\);

-- Location: LCFF_X1_Y14_N9
\U1|auto_generated|counter_reg_bit1a[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \U1|auto_generated|counter_comb_bita1~combout\,
	aclr => \ACLR~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \U1|auto_generated|safe_q\(1));

-- Location: LCFF_X1_Y14_N7
\U1|auto_generated|counter_reg_bit1a[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \U1|auto_generated|counter_comb_bita0~combout\,
	aclr => \ACLR~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \U1|auto_generated|safe_q\(0));

-- Location: LCCOMB_X1_Y14_N4
\Equal0~7\ : cycloneii_lcell_comb
-- Equation(s):
-- \Equal0~7_combout\ = (!\U1|auto_generated|safe_q\(1) & !\U1|auto_generated|safe_q\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \U1|auto_generated|safe_q\(1),
	datad => \U1|auto_generated|safe_q\(0),
	combout => \Equal0~7_combout\);

-- Location: LCCOMB_X1_Y14_N14
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

-- Location: LCFF_X1_Y14_N15
\U1|auto_generated|counter_reg_bit1a[4]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \U1|auto_generated|counter_comb_bita4~combout\,
	aclr => \ACLR~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \U1|auto_generated|safe_q\(4));

-- Location: LCCOMB_X1_Y14_N18
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

-- Location: LCFF_X1_Y14_N19
\U1|auto_generated|counter_reg_bit1a[6]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \U1|auto_generated|counter_comb_bita6~combout\,
	aclr => \ACLR~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \U1|auto_generated|safe_q\(6));

-- Location: LCCOMB_X1_Y14_N22
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

-- Location: LCFF_X1_Y14_N23
\U1|auto_generated|counter_reg_bit1a[8]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \U1|auto_generated|counter_comb_bita8~combout\,
	aclr => \ACLR~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \U1|auto_generated|safe_q\(8));

-- Location: LCCOMB_X1_Y14_N24
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

-- Location: LCFF_X1_Y14_N25
\U1|auto_generated|counter_reg_bit1a[9]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \U1|auto_generated|counter_comb_bita9~combout\,
	aclr => \ACLR~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \U1|auto_generated|safe_q\(9));

-- Location: LCCOMB_X1_Y14_N0
\Equal0~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \Equal0~5_combout\ = (\U1|auto_generated|safe_q\(7) & (!\U1|auto_generated|safe_q\(6) & (!\U1|auto_generated|safe_q\(9) & !\U1|auto_generated|safe_q\(8))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U1|auto_generated|safe_q\(7),
	datab => \U1|auto_generated|safe_q\(6),
	datac => \U1|auto_generated|safe_q\(9),
	datad => \U1|auto_generated|safe_q\(8),
	combout => \Equal0~5_combout\);

-- Location: LCCOMB_X1_Y14_N26
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

-- Location: LCFF_X1_Y14_N27
\U1|auto_generated|counter_reg_bit1a[10]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \U1|auto_generated|counter_comb_bita10~combout\,
	aclr => \ACLR~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \U1|auto_generated|safe_q\(10));

-- Location: LCCOMB_X1_Y14_N28
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

-- Location: LCFF_X1_Y14_N29
\U1|auto_generated|counter_reg_bit1a[11]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \U1|auto_generated|counter_comb_bita11~combout\,
	aclr => \ACLR~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \U1|auto_generated|safe_q\(11));

-- Location: LCCOMB_X1_Y14_N30
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

-- Location: LCFF_X1_Y14_N31
\U1|auto_generated|counter_reg_bit1a[12]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \U1|auto_generated|counter_comb_bita12~combout\,
	aclr => \ACLR~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \U1|auto_generated|safe_q\(12));

-- Location: LCCOMB_X1_Y13_N0
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

-- Location: LCFF_X1_Y13_N1
\U1|auto_generated|counter_reg_bit1a[13]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \U1|auto_generated|counter_comb_bita13~combout\,
	aclr => \ACLR~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \U1|auto_generated|safe_q\(13));

-- Location: LCCOMB_X1_Y13_N2
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

-- Location: LCFF_X1_Y13_N3
\U1|auto_generated|counter_reg_bit1a[14]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \U1|auto_generated|counter_comb_bita14~combout\,
	aclr => \ACLR~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \U1|auto_generated|safe_q\(14));

-- Location: LCCOMB_X1_Y13_N4
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

-- Location: LCFF_X1_Y13_N5
\U1|auto_generated|counter_reg_bit1a[15]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \U1|auto_generated|counter_comb_bita15~combout\,
	aclr => \ACLR~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \U1|auto_generated|safe_q\(15));

-- Location: LCCOMB_X1_Y13_N8
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

-- Location: LCFF_X1_Y13_N9
\U1|auto_generated|counter_reg_bit1a[17]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \U1|auto_generated|counter_comb_bita17~combout\,
	aclr => \ACLR~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \U1|auto_generated|safe_q\(17));

-- Location: LCCOMB_X1_Y13_N10
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

-- Location: LCCOMB_X1_Y13_N14
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

-- Location: LCFF_X1_Y13_N15
\U1|auto_generated|counter_reg_bit1a[20]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \U1|auto_generated|counter_comb_bita20~combout\,
	aclr => \ACLR~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \U1|auto_generated|safe_q\(20));

-- Location: LCCOMB_X1_Y13_N16
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

-- Location: LCFF_X1_Y13_N17
\U1|auto_generated|counter_reg_bit1a[21]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \U1|auto_generated|counter_comb_bita21~combout\,
	aclr => \ACLR~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \U1|auto_generated|safe_q\(21));

-- Location: LCFF_X1_Y13_N11
\U1|auto_generated|counter_reg_bit1a[18]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \U1|auto_generated|counter_comb_bita18~combout\,
	aclr => \ACLR~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \U1|auto_generated|safe_q\(18));

-- Location: LCCOMB_X1_Y13_N28
\Equal0~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \Equal0~1_combout\ = (\U1|auto_generated|safe_q\(19) & (\U1|auto_generated|safe_q\(20) & (\U1|auto_generated|safe_q\(21) & !\U1|auto_generated|safe_q\(18))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U1|auto_generated|safe_q\(19),
	datab => \U1|auto_generated|safe_q\(20),
	datac => \U1|auto_generated|safe_q\(21),
	datad => \U1|auto_generated|safe_q\(18),
	combout => \Equal0~1_combout\);

-- Location: LCCOMB_X1_Y13_N18
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

-- Location: LCFF_X1_Y13_N19
\U1|auto_generated|counter_reg_bit1a[22]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \U1|auto_generated|counter_comb_bita22~combout\,
	aclr => \ACLR~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \U1|auto_generated|safe_q\(22));

-- Location: LCCOMB_X1_Y13_N22
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

-- Location: LCFF_X1_Y13_N23
\U1|auto_generated|counter_reg_bit1a[24]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \U1|auto_generated|counter_comb_bita24~combout\,
	aclr => \ACLR~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \U1|auto_generated|safe_q\(24));

-- Location: LCCOMB_X1_Y13_N24
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

-- Location: LCFF_X1_Y13_N25
\U1|auto_generated|counter_reg_bit1a[25]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \U1|auto_generated|counter_comb_bita25~combout\,
	aclr => \ACLR~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \U1|auto_generated|safe_q\(25));

-- Location: LCCOMB_X1_Y13_N26
\Equal0~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Equal0~0_combout\ = (\U1|auto_generated|safe_q\(23) & (\U1|auto_generated|safe_q\(22) & (\U1|auto_generated|safe_q\(25) & !\U1|auto_generated|safe_q\(24))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U1|auto_generated|safe_q\(23),
	datab => \U1|auto_generated|safe_q\(22),
	datac => \U1|auto_generated|safe_q\(25),
	datad => \U1|auto_generated|safe_q\(24),
	combout => \Equal0~0_combout\);

-- Location: LCCOMB_X2_Y14_N2
\Equal0~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \Equal0~3_combout\ = (\U1|auto_generated|safe_q\(13) & (!\U1|auto_generated|safe_q\(11) & (\U1|auto_generated|safe_q\(12) & !\U1|auto_generated|safe_q\(10))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U1|auto_generated|safe_q\(13),
	datab => \U1|auto_generated|safe_q\(11),
	datac => \U1|auto_generated|safe_q\(12),
	datad => \U1|auto_generated|safe_q\(10),
	combout => \Equal0~3_combout\);

-- Location: LCCOMB_X2_Y14_N28
\Equal0~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \Equal0~4_combout\ = (\Equal0~2_combout\ & (\Equal0~1_combout\ & (\Equal0~0_combout\ & \Equal0~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal0~2_combout\,
	datab => \Equal0~1_combout\,
	datac => \Equal0~0_combout\,
	datad => \Equal0~3_combout\,
	combout => \Equal0~4_combout\);

-- Location: LCCOMB_X2_Y14_N22
\Equal0~8\ : cycloneii_lcell_comb
-- Equation(s):
-- \Equal0~8_combout\ = (\Equal0~6_combout\ & (\Equal0~7_combout\ & (\Equal0~5_combout\ & \Equal0~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal0~6_combout\,
	datab => \Equal0~7_combout\,
	datac => \Equal0~5_combout\,
	datad => \Equal0~4_combout\,
	combout => \Equal0~8_combout\);

-- Location: LCFF_X2_Y14_N17
\in6[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \in6~0_combout\,
	ena => \Equal0~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => in6(0));

-- Location: LCCOMB_X2_Y14_N24
\in7~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \in7~0_combout\ = (in6(0) & \KEY~combout\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => in6(0),
	datad => \KEY~combout\(0),
	combout => \in7~0_combout\);

-- Location: LCFF_X2_Y14_N25
\in7[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \in7~0_combout\,
	ena => \Equal0~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => in7(0));

-- Location: LCCOMB_X5_Y14_N2
\currState~21\ : cycloneii_lcell_comb
-- Equation(s):
-- \currState~21_combout\ = (\currState.D~regout\ & \KEY~combout\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \currState.D~regout\,
	datad => \KEY~combout\(0),
	combout => \currState~21_combout\);

-- Location: LCFF_X5_Y14_N3
\currState.E\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \currState~21_combout\,
	ena => \Equal0~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \currState.E~regout\);

-- Location: LCCOMB_X5_Y14_N0
\currState~18\ : cycloneii_lcell_comb
-- Equation(s):
-- \currState~18_combout\ = (\currState.E~regout\ & \KEY~combout\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \currState.E~regout\,
	datad => \KEY~combout\(0),
	combout => \currState~18_combout\);

-- Location: LCFF_X5_Y14_N1
\currState.F\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \currState~18_combout\,
	ena => \Equal0~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \currState.F~regout\);

-- Location: LCCOMB_X5_Y14_N14
\currState~20\ : cycloneii_lcell_comb
-- Equation(s):
-- \currState~20_combout\ = (\currState.F~regout\ & \KEY~combout\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \currState.F~regout\,
	datad => \KEY~combout\(0),
	combout => \currState~20_combout\);

-- Location: LCFF_X5_Y14_N15
\currState.G\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \currState~20_combout\,
	ena => \Equal0~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \currState.G~regout\);

-- Location: LCCOMB_X5_Y14_N28
\currState~16\ : cycloneii_lcell_comb
-- Equation(s):
-- \currState~16_combout\ = (\currState.G~regout\ & \KEY~combout\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \currState.G~regout\,
	datad => \KEY~combout\(0),
	combout => \currState~16_combout\);

-- Location: LCFF_X5_Y14_N29
\currState.H\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \currState~16_combout\,
	ena => \Equal0~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \currState.H~regout\);

-- Location: LCCOMB_X5_Y14_N8
\nextState~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \nextState~2_combout\ = (\currState.I~regout\) # (\currState.H~regout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \currState.I~regout\,
	datad => \currState.H~regout\,
	combout => \nextState~2_combout\);

-- Location: LCFF_X5_Y14_N9
\currState.I\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \nextState~2_combout\,
	sclr => \ALT_INV_KEY~combout\(0),
	ena => \Equal0~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \currState.I~regout\);

-- Location: LCCOMB_X5_Y14_N22
\currState.A~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \currState.A~feeder_combout\ = \KEY~combout\(0)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \KEY~combout\(0),
	combout => \currState.A~feeder_combout\);

-- Location: LCFF_X5_Y14_N23
\currState.A\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \currState.A~feeder_combout\,
	ena => \Equal0~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \currState.A~regout\);

-- Location: LCCOMB_X5_Y14_N30
\currState~17\ : cycloneii_lcell_comb
-- Equation(s):
-- \currState~17_combout\ = (!\currState.A~regout\ & \KEY~combout\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \currState.A~regout\,
	datad => \KEY~combout\(0),
	combout => \currState~17_combout\);

-- Location: LCFF_X5_Y14_N31
\currState.B\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \currState~17_combout\,
	ena => \Equal0~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \currState.B~regout\);

-- Location: LCCOMB_X5_Y14_N26
\in0~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \in0~0_combout\ = (\currState.D~regout\) # ((\currState.F~regout\) # ((\currState.H~regout\) # (\currState.B~regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \currState.D~regout\,
	datab => \currState.F~regout\,
	datac => \currState.H~regout\,
	datad => \currState.B~regout\,
	combout => \in0~0_combout\);

-- Location: LCCOMB_X5_Y14_N24
\in0~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \in0~1_combout\ = (\currState.I~regout\ & (in7(0))) # (!\currState.I~regout\ & ((\in0~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => in7(0),
	datac => \currState.I~regout\,
	datad => \in0~0_combout\,
	combout => \in0~1_combout\);

-- Location: LCFF_X5_Y14_N25
\in0[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \in0~1_combout\,
	sclr => \ALT_INV_KEY~combout\(0),
	ena => \Equal0~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => in0(0));

-- Location: LCCOMB_X3_Y14_N18
\in5~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \in5~1_combout\ = (in4(1) & \KEY~combout\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => in4(1),
	datad => \KEY~combout\(0),
	combout => \in5~1_combout\);

-- Location: LCFF_X3_Y14_N19
\in5[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \in5~1_combout\,
	ena => \Equal0~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => in5(1));

-- Location: LCCOMB_X2_Y14_N18
\in6~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \in6~1_combout\ = (in5(1) & \KEY~combout\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => in5(1),
	datad => \KEY~combout\(0),
	combout => \in6~1_combout\);

-- Location: LCFF_X2_Y14_N19
\in6[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \in6~1_combout\,
	ena => \Equal0~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => in6(1));

-- Location: LCCOMB_X4_Y14_N16
\in7~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \in7~1_combout\ = (\KEY~combout\(0) & in6(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \KEY~combout\(0),
	datac => in6(1),
	combout => \in7~1_combout\);

-- Location: LCFF_X4_Y14_N17
\in7[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \in7~1_combout\,
	ena => \Equal0~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => in7(1));

-- Location: LCCOMB_X5_Y14_N18
\in0~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \in0~3_combout\ = (\currState.I~regout\ & ((in7(1)))) # (!\currState.I~regout\ & (\in0~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101011001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \in0~2_combout\,
	datab => in7(1),
	datac => \currState.I~regout\,
	combout => \in0~3_combout\);

-- Location: LCFF_X5_Y14_N19
\in0[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \in0~3_combout\,
	sclr => \ALT_INV_KEY~combout\(0),
	ena => \Equal0~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => in0(1));

-- Location: LCCOMB_X5_Y14_N6
\in0~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \in0~6_combout\ = (in7(3) & \currState.I~regout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => in7(3),
	datac => \currState.I~regout\,
	combout => \in0~6_combout\);

-- Location: LCFF_X5_Y14_N7
\in0[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \in0~6_combout\,
	sclr => \ALT_INV_KEY~combout\(0),
	ena => \Equal0~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => in0(3));

-- Location: LCCOMB_X5_Y14_N4
\in0~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \in0~4_combout\ = (\currState.E~regout\) # ((\currState.H~regout\) # ((\currState.G~regout\) # (\currState.F~regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \currState.E~regout\,
	datab => \currState.H~regout\,
	datac => \currState.G~regout\,
	datad => \currState.F~regout\,
	combout => \in0~4_combout\);

-- Location: LCCOMB_X5_Y14_N20
\in0~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \in0~5_combout\ = (\currState.I~regout\ & (in7(2))) # (!\currState.I~regout\ & ((\in0~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110010101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => in7(2),
	datab => \in0~4_combout\,
	datac => \currState.I~regout\,
	combout => \in0~5_combout\);

-- Location: LCFF_X5_Y14_N21
\in0[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \in0~5_combout\,
	sclr => \ALT_INV_KEY~combout\(0),
	ena => \Equal0~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => in0(2));

-- Location: LCCOMB_X29_Y7_N8
\H0|hex~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \H0|hex~0_combout\ = (!in0(3) & (!in0(2) & (in0(0) $ (in0(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => in0(0),
	datab => in0(1),
	datac => in0(3),
	datad => in0(2),
	combout => \H0|hex~0_combout\);

-- Location: LCCOMB_X29_Y7_N18
\H0|WideOr0~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \H0|WideOr0~0_combout\ = (!in0(3) & ((in0(1) & ((!in0(2)))) # (!in0(1) & ((in0(0)) # (in0(2))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001100001110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => in0(0),
	datab => in0(1),
	datac => in0(3),
	datad => in0(2),
	combout => \H0|WideOr0~0_combout\);

-- Location: LCCOMB_X29_Y7_N20
\H0|hex~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \H0|hex~1_combout\ = (in0(3)) # (in0(2) $ (!in0(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101111101011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => in0(3),
	datab => in0(2),
	datac => in0(1),
	combout => \H0|hex~1_combout\);

-- Location: LCCOMB_X29_Y7_N6
\H0|Decoder1~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \H0|Decoder1~0_combout\ = (in0(0) & (!in0(1) & !in0(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => in0(0),
	datab => in0(1),
	datac => in0(3),
	combout => \H0|Decoder1~0_combout\);

-- Location: LCCOMB_X29_Y7_N16
\H0|hex~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \H0|hex~2_combout\ = (!in0(3) & ((in0(0) & (!in0(1) & in0(2))) # (!in0(0) & (in0(1) & !in0(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => in0(0),
	datab => in0(1),
	datac => in0(3),
	datad => in0(2),
	combout => \H0|hex~2_combout\);

-- Location: LCCOMB_X29_Y7_N0
\in1~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \in1~3_combout\ = (\KEY~combout\(0) & in0(3))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \KEY~combout\(0),
	datac => in0(3),
	combout => \in1~3_combout\);

-- Location: LCFF_X29_Y7_N1
\in1[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \in1~3_combout\,
	ena => \Equal0~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => in1(3));

-- Location: LCCOMB_X29_Y7_N4
\in1~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \in1~1_combout\ = (\KEY~combout\(0) & in0(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \KEY~combout\(0),
	datac => in0(1),
	combout => \in1~1_combout\);

-- Location: LCFF_X29_Y7_N5
\in1[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \in1~1_combout\,
	ena => \Equal0~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => in1(1));

-- Location: LCCOMB_X29_Y7_N14
\in1~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \in1~2_combout\ = (in0(2) & \KEY~combout\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => in0(2),
	datac => \KEY~combout\(0),
	combout => \in1~2_combout\);

-- Location: LCFF_X29_Y7_N15
\in1[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \in1~2_combout\,
	ena => \Equal0~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => in1(2));

-- Location: LCCOMB_X29_Y7_N2
\in1~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \in1~0_combout\ = (\KEY~combout\(0) & in0(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \KEY~combout\(0),
	datac => in0(0),
	combout => \in1~0_combout\);

-- Location: LCFF_X29_Y7_N3
\in1[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \in1~0_combout\,
	ena => \Equal0~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => in1(0));

-- Location: LCCOMB_X29_Y7_N10
\H1|hex~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \H1|hex~0_combout\ = (!in1(3) & (!in1(2) & (in1(1) $ (in1(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => in1(3),
	datab => in1(1),
	datac => in1(2),
	datad => in1(0),
	combout => \H1|hex~0_combout\);

-- Location: LCCOMB_X29_Y7_N12
\H1|WideOr0~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \H1|WideOr0~0_combout\ = (!in1(3) & ((in1(1) & (!in1(2))) # (!in1(1) & ((in1(2)) # (in1(0))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001010100010100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => in1(3),
	datab => in1(1),
	datac => in1(2),
	datad => in1(0),
	combout => \H1|WideOr0~0_combout\);

-- Location: LCCOMB_X29_Y7_N22
\H1|hex~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \H1|hex~1_combout\ = (in1(3)) # (in1(1) $ (!in1(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => in1(1),
	datac => in1(2),
	datad => in1(3),
	combout => \H1|hex~1_combout\);

-- Location: LCCOMB_X29_Y7_N24
\H1|Decoder1~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \H1|Decoder1~0_combout\ = (!in1(3) & (!in1(1) & in1(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => in1(3),
	datac => in1(1),
	datad => in1(0),
	combout => \H1|Decoder1~0_combout\);

-- Location: LCCOMB_X29_Y7_N26
\H1|hex~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \H1|hex~2_combout\ = (!in1(3) & ((in1(1) & (!in1(2) & !in1(0))) # (!in1(1) & (in1(2) & in1(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => in1(3),
	datab => in1(1),
	datac => in1(2),
	datad => in1(0),
	combout => \H1|hex~2_combout\);

-- Location: LCCOMB_X29_Y7_N30
\in2~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \in2~3_combout\ = (in1(3) & \KEY~combout\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => in1(3),
	datac => \KEY~combout\(0),
	combout => \in2~3_combout\);

-- Location: LCFF_X29_Y7_N31
\in2[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \in2~3_combout\,
	ena => \Equal0~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => in2(3));

-- Location: LCCOMB_X29_Y7_N28
\in2~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \in2~1_combout\ = (\KEY~combout\(0) & in1(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \KEY~combout\(0),
	datac => in1(1),
	combout => \in2~1_combout\);

-- Location: LCFF_X29_Y7_N29
\in2[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \in2~1_combout\,
	ena => \Equal0~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => in2(1));

-- Location: LCCOMB_X30_Y7_N24
\in2~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \in2~0_combout\ = (\KEY~combout\(0) & in1(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \KEY~combout\(0),
	datad => in1(0),
	combout => \in2~0_combout\);

-- Location: LCFF_X30_Y7_N25
\in2[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \in2~0_combout\,
	ena => \Equal0~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => in2(0));

-- Location: LCCOMB_X30_Y7_N10
\in2~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \in2~2_combout\ = (\KEY~combout\(0) & in1(2))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \KEY~combout\(0),
	datad => in1(2),
	combout => \in2~2_combout\);

-- Location: LCFF_X30_Y7_N11
\in2[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \in2~2_combout\,
	ena => \Equal0~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => in2(2));

-- Location: LCCOMB_X30_Y7_N28
\H2|hex~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \H2|hex~0_combout\ = (!in2(3) & (!in2(2) & (in2(1) $ (in2(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => in2(3),
	datab => in2(1),
	datac => in2(0),
	datad => in2(2),
	combout => \H2|hex~0_combout\);

-- Location: LCCOMB_X30_Y7_N30
\H2|WideOr0~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \H2|WideOr0~0_combout\ = (!in2(3) & ((in2(1) & ((!in2(2)))) # (!in2(1) & ((in2(0)) # (in2(2))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000101010100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => in2(3),
	datab => in2(1),
	datac => in2(0),
	datad => in2(2),
	combout => \H2|WideOr0~0_combout\);

-- Location: LCCOMB_X30_Y7_N16
\H2|hex~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \H2|hex~1_combout\ = (in2(3)) # (in2(1) $ (!in2(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => in2(1),
	datac => in2(3),
	datad => in2(2),
	combout => \H2|hex~1_combout\);

-- Location: LCCOMB_X30_Y7_N26
\H2|Decoder1~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \H2|Decoder1~0_combout\ = (in2(0) & (!in2(1) & !in2(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => in2(0),
	datab => in2(1),
	datac => in2(3),
	combout => \H2|Decoder1~0_combout\);

-- Location: LCCOMB_X30_Y7_N4
\H2|hex~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \H2|hex~2_combout\ = (!in2(3) & ((in2(1) & (!in2(0) & !in2(2))) # (!in2(1) & (in2(0) & in2(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => in2(3),
	datab => in2(1),
	datac => in2(0),
	datad => in2(2),
	combout => \H2|hex~2_combout\);

-- Location: LCCOMB_X30_Y7_N2
\in3~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \in3~2_combout\ = (\KEY~combout\(0) & in2(2))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \KEY~combout\(0),
	datad => in2(2),
	combout => \in3~2_combout\);

-- Location: LCFF_X30_Y7_N3
\in3[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \in3~2_combout\,
	ena => \Equal0~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => in3(2));

-- Location: LCCOMB_X30_Y7_N12
\in3~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \in3~3_combout\ = (in2(3) & \KEY~combout\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => in2(3),
	datac => \KEY~combout\(0),
	combout => \in3~3_combout\);

-- Location: LCFF_X30_Y7_N13
\in3[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \in3~3_combout\,
	ena => \Equal0~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => in3(3));

-- Location: LCCOMB_X30_Y7_N22
\in3~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \in3~0_combout\ = (in2(0) & \KEY~combout\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => in2(0),
	datac => \KEY~combout\(0),
	combout => \in3~0_combout\);

-- Location: LCFF_X30_Y7_N23
\in3[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \in3~0_combout\,
	ena => \Equal0~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => in3(0));

-- Location: LCCOMB_X30_Y7_N0
\in3~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \in3~1_combout\ = (\KEY~combout\(0) & in2(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \KEY~combout\(0),
	datad => in2(1),
	combout => \in3~1_combout\);

-- Location: LCFF_X30_Y7_N1
\in3[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \in3~1_combout\,
	ena => \Equal0~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => in3(1));

-- Location: LCCOMB_X3_Y14_N16
\H3|hex~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \H3|hex~0_combout\ = (!in3(2) & (!in3(3) & (in3(0) $ (in3(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => in3(2),
	datab => in3(3),
	datac => in3(0),
	datad => in3(1),
	combout => \H3|hex~0_combout\);

-- Location: LCCOMB_X3_Y14_N26
\H3|WideOr0~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \H3|WideOr0~0_combout\ = (!in3(3) & ((in3(2) & ((!in3(1)))) # (!in3(2) & ((in3(0)) # (in3(1))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000100110010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => in3(2),
	datab => in3(3),
	datac => in3(0),
	datad => in3(1),
	combout => \H3|WideOr0~0_combout\);

-- Location: LCCOMB_X3_Y14_N28
\H3|hex~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \H3|hex~1_combout\ = (in3(3)) # (in3(2) $ (!in3(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101011110101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => in3(2),
	datac => in3(3),
	datad => in3(1),
	combout => \H3|hex~1_combout\);

-- Location: LCCOMB_X3_Y14_N30
\H3|Decoder1~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \H3|Decoder1~0_combout\ = (!in3(3) & (in3(0) & !in3(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => in3(3),
	datac => in3(0),
	datad => in3(1),
	combout => \H3|Decoder1~0_combout\);

-- Location: LCCOMB_X3_Y14_N8
\H3|hex~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \H3|hex~2_combout\ = (!in3(3) & ((in3(2) & (in3(0) & !in3(1))) # (!in3(2) & (!in3(0) & in3(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => in3(2),
	datab => in3(3),
	datac => in3(0),
	datad => in3(1),
	combout => \H3|hex~2_combout\);

-- Location: LCCOMB_X2_Y14_N8
\in4~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \in4~3_combout\ = (in3(3) & \KEY~combout\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => in3(3),
	datad => \KEY~combout\(0),
	combout => \in4~3_combout\);

-- Location: LCFF_X2_Y14_N9
\in4[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \in4~3_combout\,
	ena => \Equal0~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => in4(3));

-- Location: LCCOMB_X3_Y14_N2
\in4~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \in4~0_combout\ = (in3(0) & \KEY~combout\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => in3(0),
	datad => \KEY~combout\(0),
	combout => \in4~0_combout\);

-- Location: LCFF_X3_Y14_N3
\in4[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \in4~0_combout\,
	ena => \Equal0~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => in4(0));

-- Location: LCCOMB_X3_Y14_N14
\in4~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \in4~2_combout\ = (in3(2) & \KEY~combout\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => in3(2),
	datad => \KEY~combout\(0),
	combout => \in4~2_combout\);

-- Location: LCFF_X3_Y14_N15
\in4[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \in4~2_combout\,
	ena => \Equal0~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => in4(2));

-- Location: LCCOMB_X3_Y14_N12
\in4~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \in4~1_combout\ = (in3(1) & \KEY~combout\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => in3(1),
	datad => \KEY~combout\(0),
	combout => \in4~1_combout\);

-- Location: LCFF_X3_Y14_N13
\in4[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \in4~1_combout\,
	ena => \Equal0~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => in4(1));

-- Location: LCCOMB_X3_Y14_N0
\H4|hex~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \H4|hex~0_combout\ = (!in4(3) & (!in4(2) & (in4(0) $ (in4(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => in4(3),
	datab => in4(0),
	datac => in4(2),
	datad => in4(1),
	combout => \H4|hex~0_combout\);

-- Location: LCCOMB_X3_Y14_N10
\H4|WideOr0~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \H4|WideOr0~0_combout\ = (!in4(3) & ((in4(2) & ((!in4(1)))) # (!in4(2) & ((in4(0)) # (in4(1))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010101010100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => in4(3),
	datab => in4(0),
	datac => in4(2),
	datad => in4(1),
	combout => \H4|WideOr0~0_combout\);

-- Location: LCCOMB_X3_Y14_N4
\H4|hex~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \H4|hex~1_combout\ = (in4(3)) # (in4(2) $ (!in4(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101010101111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => in4(3),
	datac => in4(2),
	datad => in4(1),
	combout => \H4|hex~1_combout\);

-- Location: LCCOMB_X3_Y14_N6
\H4|Decoder1~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \H4|Decoder1~0_combout\ = (!in4(3) & (in4(0) & !in4(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => in4(3),
	datab => in4(0),
	datad => in4(1),
	combout => \H4|Decoder1~0_combout\);

-- Location: LCCOMB_X3_Y14_N24
\H4|hex~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \H4|hex~2_combout\ = (!in4(3) & ((in4(0) & (in4(2) & !in4(1))) # (!in4(0) & (!in4(2) & in4(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000101000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => in4(3),
	datab => in4(0),
	datac => in4(2),
	datad => in4(1),
	combout => \H4|hex~2_combout\);

-- Location: LCCOMB_X2_Y14_N10
\in5~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \in5~0_combout\ = (in4(0) & \KEY~combout\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => in4(0),
	datad => \KEY~combout\(0),
	combout => \in5~0_combout\);

-- Location: LCFF_X2_Y14_N11
\in5[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \in5~0_combout\,
	ena => \Equal0~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => in5(0));

-- Location: LCCOMB_X3_Y14_N20
\in5~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \in5~2_combout\ = (in4(2) & \KEY~combout\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => in4(2),
	datad => \KEY~combout\(0),
	combout => \in5~2_combout\);

-- Location: LCFF_X3_Y14_N21
\in5[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \in5~2_combout\,
	ena => \Equal0~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => in5(2));

-- Location: LCCOMB_X2_Y14_N4
\in5~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \in5~3_combout\ = (in4(3) & \KEY~combout\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => in4(3),
	datad => \KEY~combout\(0),
	combout => \in5~3_combout\);

-- Location: LCFF_X2_Y14_N5
\in5[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \in5~3_combout\,
	ena => \Equal0~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => in5(3));

-- Location: LCCOMB_X2_Y14_N30
\H5|hex~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \H5|hex~0_combout\ = (!in5(2) & (!in5(3) & (in5(0) $ (in5(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => in5(0),
	datab => in5(2),
	datac => in5(3),
	datad => in5(1),
	combout => \H5|hex~0_combout\);

-- Location: LCCOMB_X2_Y14_N0
\H5|WideOr0~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \H5|WideOr0~0_combout\ = (!in5(3) & ((in5(2) & ((!in5(1)))) # (!in5(2) & ((in5(0)) # (in5(1))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001100001110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => in5(0),
	datab => in5(2),
	datac => in5(3),
	datad => in5(1),
	combout => \H5|WideOr0~0_combout\);

-- Location: LCCOMB_X2_Y14_N26
\H5|hex~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \H5|hex~1_combout\ = (in5(3)) # (in5(2) $ (!in5(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => in5(2),
	datac => in5(3),
	datad => in5(1),
	combout => \H5|hex~1_combout\);

-- Location: LCCOMB_X2_Y14_N20
\H5|Decoder1~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \H5|Decoder1~0_combout\ = (in5(0) & (!in5(3) & !in5(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => in5(0),
	datac => in5(3),
	datad => in5(1),
	combout => \H5|Decoder1~0_combout\);

-- Location: LCCOMB_X2_Y14_N6
\H5|hex~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \H5|hex~2_combout\ = (!in5(3) & ((in5(0) & (in5(2) & !in5(1))) # (!in5(0) & (!in5(2) & in5(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => in5(0),
	datab => in5(2),
	datac => in5(3),
	datad => in5(1),
	combout => \H5|hex~2_combout\);

-- Location: LCCOMB_X2_Y14_N12
\in6~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \in6~2_combout\ = (in5(2) & \KEY~combout\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => in5(2),
	datad => \KEY~combout\(0),
	combout => \in6~2_combout\);

-- Location: LCFF_X2_Y14_N13
\in6[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \in6~2_combout\,
	ena => \Equal0~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => in6(2));

-- Location: LCCOMB_X2_Y14_N14
\in6~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \in6~3_combout\ = (in5(3) & \KEY~combout\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => in5(3),
	datad => \KEY~combout\(0),
	combout => \in6~3_combout\);

-- Location: LCFF_X2_Y14_N15
\in6[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \in6~3_combout\,
	ena => \Equal0~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => in6(3));

-- Location: LCCOMB_X4_Y14_N24
\H6|hex~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \H6|hex~0_combout\ = (!in6(2) & (!in6(3) & (in6(1) $ (in6(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => in6(2),
	datab => in6(3),
	datac => in6(1),
	datad => in6(0),
	combout => \H6|hex~0_combout\);

-- Location: LCCOMB_X3_Y14_N22
\H6|WideOr0~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \H6|WideOr0~0_combout\ = (!in6(3) & ((in6(1) & (!in6(2))) # (!in6(1) & ((in6(2)) # (in6(0))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001010100010100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => in6(3),
	datab => in6(1),
	datac => in6(2),
	datad => in6(0),
	combout => \H6|WideOr0~0_combout\);

-- Location: LCCOMB_X4_Y14_N18
\H6|hex~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \H6|hex~1_combout\ = (in6(3)) # (in6(2) $ (!in6(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110111101101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => in6(2),
	datab => in6(3),
	datac => in6(1),
	combout => \H6|hex~1_combout\);

-- Location: LCCOMB_X4_Y14_N4
\H6|Decoder1~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \H6|Decoder1~0_combout\ = (!in6(3) & (!in6(1) & in6(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => in6(3),
	datac => in6(1),
	datad => in6(0),
	combout => \H6|Decoder1~0_combout\);

-- Location: LCCOMB_X4_Y14_N6
\H6|hex~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \H6|hex~2_combout\ = (!in6(3) & ((in6(2) & (!in6(1) & in6(0))) # (!in6(2) & (in6(1) & !in6(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => in6(2),
	datab => in6(3),
	datac => in6(1),
	datad => in6(0),
	combout => \H6|hex~2_combout\);

-- Location: LCCOMB_X4_Y14_N12
\in7~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \in7~3_combout\ = (in6(3) & \KEY~combout\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => in6(3),
	datac => \KEY~combout\(0),
	combout => \in7~3_combout\);

-- Location: LCFF_X4_Y14_N13
\in7[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \in7~3_combout\,
	ena => \Equal0~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => in7(3));

-- Location: LCCOMB_X4_Y14_N10
\in7~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \in7~2_combout\ = (in6(2) & \KEY~combout\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => in6(2),
	datac => \KEY~combout\(0),
	combout => \in7~2_combout\);

-- Location: LCFF_X4_Y14_N11
\in7[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \in7~2_combout\,
	ena => \Equal0~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => in7(2));

-- Location: LCCOMB_X4_Y14_N22
\H7|hex~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \H7|hex~0_combout\ = (!in7(3) & (!in7(2) & (in7(0) $ (in7(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => in7(3),
	datab => in7(0),
	datac => in7(1),
	datad => in7(2),
	combout => \H7|hex~0_combout\);

-- Location: LCCOMB_X4_Y14_N0
\H7|WideOr0~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \H7|WideOr0~0_combout\ = (!in7(3) & ((in7(1) & ((!in7(2)))) # (!in7(1) & ((in7(0)) # (in7(2))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010101010100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => in7(3),
	datab => in7(0),
	datac => in7(1),
	datad => in7(2),
	combout => \H7|WideOr0~0_combout\);

-- Location: LCCOMB_X4_Y14_N26
\H7|hex~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \H7|hex~1_combout\ = (in7(3)) # (in7(1) $ (!in7(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101010101111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => in7(3),
	datac => in7(1),
	datad => in7(2),
	combout => \H7|hex~1_combout\);

-- Location: LCCOMB_X4_Y14_N20
\H7|Decoder1~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \H7|Decoder1~0_combout\ = (!in7(3) & (in7(0) & !in7(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => in7(3),
	datab => in7(0),
	datac => in7(1),
	combout => \H7|Decoder1~0_combout\);

-- Location: LCCOMB_X4_Y14_N30
\H7|hex~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \H7|hex~2_combout\ = (!in7(3) & ((in7(0) & (!in7(1) & in7(2))) # (!in7(0) & (in7(1) & !in7(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => in7(3),
	datab => in7(0),
	datac => in7(1),
	datad => in7(2),
	combout => \H7|hex~2_combout\);

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
	datain => \H0|ALT_INV_hex~0_combout\,
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
	datain => \H0|ALT_INV_WideOr0~0_combout\,
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
	datain => \H0|ALT_INV_WideOr0~0_combout\,
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
	datain => \H0|hex~1_combout\,
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
	datain => \H0|ALT_INV_Decoder1~0_combout\,
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
	datain => \H0|ALT_INV_Decoder1~0_combout\,
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
	datain => \H0|ALT_INV_hex~2_combout\,
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
	datain => \H1|ALT_INV_hex~0_combout\,
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
	datain => \H1|ALT_INV_WideOr0~0_combout\,
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
	datain => \H1|ALT_INV_WideOr0~0_combout\,
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
	datain => \H1|hex~1_combout\,
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
	datain => \H1|ALT_INV_Decoder1~0_combout\,
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
	datain => \H1|ALT_INV_Decoder1~0_combout\,
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
	datain => \H1|ALT_INV_hex~2_combout\,
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
	datain => \H2|ALT_INV_hex~0_combout\,
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
	datain => \H2|ALT_INV_WideOr0~0_combout\,
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
	datain => \H2|ALT_INV_WideOr0~0_combout\,
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
	datain => \H2|hex~1_combout\,
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
	datain => \H2|ALT_INV_Decoder1~0_combout\,
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
	datain => \H2|ALT_INV_Decoder1~0_combout\,
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
	datain => \H2|ALT_INV_hex~2_combout\,
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
	datain => \H3|ALT_INV_hex~0_combout\,
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
	datain => \H3|ALT_INV_WideOr0~0_combout\,
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
	datain => \H3|ALT_INV_WideOr0~0_combout\,
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
	datain => \H3|hex~1_combout\,
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
	datain => \H3|ALT_INV_Decoder1~0_combout\,
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
	datain => \H3|ALT_INV_Decoder1~0_combout\,
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
	datain => \H3|ALT_INV_hex~2_combout\,
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
	datain => \H4|ALT_INV_hex~0_combout\,
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
	datain => \H4|ALT_INV_WideOr0~0_combout\,
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
	datain => \H4|ALT_INV_WideOr0~0_combout\,
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
	datain => \H4|hex~1_combout\,
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
	datain => \H4|ALT_INV_Decoder1~0_combout\,
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
	datain => \H4|ALT_INV_Decoder1~0_combout\,
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
	datain => \H4|ALT_INV_hex~2_combout\,
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
	datain => \H5|ALT_INV_hex~0_combout\,
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
	datain => \H5|ALT_INV_WideOr0~0_combout\,
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
	datain => \H5|ALT_INV_WideOr0~0_combout\,
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
	datain => \H5|hex~1_combout\,
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
	datain => \H5|ALT_INV_Decoder1~0_combout\,
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
	datain => \H5|ALT_INV_Decoder1~0_combout\,
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
	datain => \H5|ALT_INV_hex~2_combout\,
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
	datain => \H6|ALT_INV_hex~0_combout\,
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
	datain => \H6|ALT_INV_WideOr0~0_combout\,
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
	datain => \H6|ALT_INV_WideOr0~0_combout\,
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
	datain => \H6|hex~1_combout\,
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
	datain => \H6|ALT_INV_Decoder1~0_combout\,
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
	datain => \H6|ALT_INV_Decoder1~0_combout\,
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
	datain => \H6|ALT_INV_hex~2_combout\,
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
	datain => \H7|ALT_INV_hex~0_combout\,
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
	datain => \H7|ALT_INV_WideOr0~0_combout\,
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
	datain => \H7|ALT_INV_WideOr0~0_combout\,
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
	datain => \H7|hex~1_combout\,
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
	datain => \H7|ALT_INV_Decoder1~0_combout\,
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
	datain => \H7|ALT_INV_Decoder1~0_combout\,
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
	datain => \H7|ALT_INV_hex~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_HEX7(0));
END structure;


