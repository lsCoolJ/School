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

-- DATE "05/13/2014 10:05:18"

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
	SW : IN std_logic_vector(0 DOWNTO 0);
	KEY : IN std_logic_vector(0 DOWNTO 0);
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
-- KEY[0]	=>  Location: PIN_G26,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- SW[0]	=>  Location: PIN_N25,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default


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
SIGNAL ww_SW : std_logic_vector(0 DOWNTO 0);
SIGNAL ww_KEY : std_logic_vector(0 DOWNTO 0);
SIGNAL ww_HEX0 : std_logic_vector(0 TO 6);
SIGNAL ww_HEX1 : std_logic_vector(0 TO 6);
SIGNAL ww_HEX2 : std_logic_vector(0 TO 6);
SIGNAL ww_HEX3 : std_logic_vector(0 TO 6);
SIGNAL ww_HEX4 : std_logic_vector(0 TO 6);
SIGNAL ww_HEX5 : std_logic_vector(0 TO 6);
SIGNAL ww_HEX6 : std_logic_vector(0 TO 6);
SIGNAL ww_HEX7 : std_logic_vector(0 TO 6);
SIGNAL \currState.H~regout\ : std_logic;
SIGNAL \currState.G~regout\ : std_logic;
SIGNAL \in0~2_combout\ : std_logic;
SIGNAL \in0~4_combout\ : std_logic;
SIGNAL \currState~16_combout\ : std_logic;
SIGNAL \currState~20_combout\ : std_logic;
SIGNAL \in1~3_combout\ : std_logic;
SIGNAL \in2~3_combout\ : std_logic;
SIGNAL \in3~3_combout\ : std_logic;
SIGNAL \in4~3_combout\ : std_logic;
SIGNAL \in5~3_combout\ : std_logic;
SIGNAL \in6~3_combout\ : std_logic;
SIGNAL \in7~3_combout\ : std_logic;
SIGNAL \nextState~2_combout\ : std_logic;
SIGNAL \currState.I~regout\ : std_logic;
SIGNAL \in0~6_combout\ : std_logic;
SIGNAL \in7~1_combout\ : std_logic;
SIGNAL \in0~3_combout\ : std_logic;
SIGNAL \in2~2_combout\ : std_logic;
SIGNAL \in3~2_combout\ : std_logic;
SIGNAL \in4~2_combout\ : std_logic;
SIGNAL \in5~2_combout\ : std_logic;
SIGNAL \in6~2_combout\ : std_logic;
SIGNAL \in7~2_combout\ : std_logic;
SIGNAL \in0~5_combout\ : std_logic;
SIGNAL \currState.A~feeder_combout\ : std_logic;
SIGNAL \currState.A~regout\ : std_logic;
SIGNAL \currState~17_combout\ : std_logic;
SIGNAL \currState.B~regout\ : std_logic;
SIGNAL \currState~19_combout\ : std_logic;
SIGNAL \currState.C~regout\ : std_logic;
SIGNAL \currState~15_combout\ : std_logic;
SIGNAL \currState.D~regout\ : std_logic;
SIGNAL \currState~21_combout\ : std_logic;
SIGNAL \currState.E~regout\ : std_logic;
SIGNAL \currState~18_combout\ : std_logic;
SIGNAL \currState.F~regout\ : std_logic;
SIGNAL \in0~0_combout\ : std_logic;
SIGNAL \in7~0_combout\ : std_logic;
SIGNAL \in0~1_combout\ : std_logic;
SIGNAL \H0|hex~0_combout\ : std_logic;
SIGNAL \H0|WideOr0~0_combout\ : std_logic;
SIGNAL \H0|hex~1_combout\ : std_logic;
SIGNAL \H0|Decoder1~0_combout\ : std_logic;
SIGNAL \H0|hex~2_combout\ : std_logic;
SIGNAL \in1~1_combout\ : std_logic;
SIGNAL \in1~2_combout\ : std_logic;
SIGNAL \in1~0_combout\ : std_logic;
SIGNAL \H1|hex~0_combout\ : std_logic;
SIGNAL \H1|WideOr0~0_combout\ : std_logic;
SIGNAL \H1|hex~1_combout\ : std_logic;
SIGNAL \H1|Decoder1~0_combout\ : std_logic;
SIGNAL \H1|hex~2_combout\ : std_logic;
SIGNAL \in2~1_combout\ : std_logic;
SIGNAL \in2~0_combout\ : std_logic;
SIGNAL \H2|hex~0_combout\ : std_logic;
SIGNAL \H2|WideOr0~0_combout\ : std_logic;
SIGNAL \H2|hex~1_combout\ : std_logic;
SIGNAL \H2|Decoder1~0_combout\ : std_logic;
SIGNAL \H2|hex~2_combout\ : std_logic;
SIGNAL \in3~1_combout\ : std_logic;
SIGNAL \in3~0_combout\ : std_logic;
SIGNAL \H3|hex~0_combout\ : std_logic;
SIGNAL \H3|WideOr0~0_combout\ : std_logic;
SIGNAL \H3|hex~1_combout\ : std_logic;
SIGNAL \H3|Decoder1~0_combout\ : std_logic;
SIGNAL \H3|hex~2_combout\ : std_logic;
SIGNAL \in4~0_combout\ : std_logic;
SIGNAL \in4~1_combout\ : std_logic;
SIGNAL \H4|hex~0_combout\ : std_logic;
SIGNAL \H4|WideOr0~0_combout\ : std_logic;
SIGNAL \H4|hex~1_combout\ : std_logic;
SIGNAL \H4|Decoder1~0_combout\ : std_logic;
SIGNAL \H4|hex~2_combout\ : std_logic;
SIGNAL \in5~0_combout\ : std_logic;
SIGNAL \in5~1_combout\ : std_logic;
SIGNAL \H5|hex~0_combout\ : std_logic;
SIGNAL \H5|WideOr0~0_combout\ : std_logic;
SIGNAL \H5|hex~1_combout\ : std_logic;
SIGNAL \H5|Decoder1~0_combout\ : std_logic;
SIGNAL \H5|hex~2_combout\ : std_logic;
SIGNAL \in6~1_combout\ : std_logic;
SIGNAL \in6~0_combout\ : std_logic;
SIGNAL \H6|hex~0_combout\ : std_logic;
SIGNAL \H6|WideOr0~0_combout\ : std_logic;
SIGNAL \H6|hex~1_combout\ : std_logic;
SIGNAL \H6|Decoder1~0_combout\ : std_logic;
SIGNAL \H6|hex~2_combout\ : std_logic;
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
SIGNAL \SW~combout\ : std_logic_vector(0 DOWNTO 0);
SIGNAL in2 : std_logic_vector(3 DOWNTO 0);
SIGNAL in1 : std_logic_vector(3 DOWNTO 0);
SIGNAL \KEY~combout\ : std_logic_vector(0 DOWNTO 0);
SIGNAL in0 : std_logic_vector(3 DOWNTO 0);
SIGNAL \ALT_INV_SW~combout\ : std_logic_vector(0 DOWNTO 0);
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

ww_SW <= SW;
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
\ALT_INV_SW~combout\(0) <= NOT \SW~combout\(0);
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

-- Location: LCFF_X63_Y11_N21
\currState.H\ : cycloneii_lcell_ff
PORT MAP (
	clk => \KEY~combout\(0),
	datain => \currState~16_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \currState.H~regout\);

-- Location: LCFF_X63_Y11_N7
\currState.G\ : cycloneii_lcell_ff
PORT MAP (
	clk => \KEY~combout\(0),
	datain => \currState~20_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \currState.G~regout\);

-- Location: LCCOMB_X63_Y11_N24
\in0~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \in0~2_combout\ = (\currState.G~regout\) # ((\currState.C~regout\) # ((\currState.H~regout\) # (\currState.D~regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \currState.G~regout\,
	datab => \currState.C~regout\,
	datac => \currState.H~regout\,
	datad => \currState.D~regout\,
	combout => \in0~2_combout\);

-- Location: LCCOMB_X63_Y11_N12
\in0~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \in0~4_combout\ = (\currState.H~regout\) # ((\currState.E~regout\) # ((\currState.F~regout\) # (\currState.G~regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \currState.H~regout\,
	datab => \currState.E~regout\,
	datac => \currState.F~regout\,
	datad => \currState.G~regout\,
	combout => \in0~4_combout\);

-- Location: LCCOMB_X63_Y11_N20
\currState~16\ : cycloneii_lcell_comb
-- Equation(s):
-- \currState~16_combout\ = (\currState.G~regout\ & \SW~combout\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \currState.G~regout\,
	datac => \SW~combout\(0),
	combout => \currState~16_combout\);

-- Location: LCCOMB_X63_Y11_N6
\currState~20\ : cycloneii_lcell_comb
-- Equation(s):
-- \currState~20_combout\ = (\SW~combout\(0) & \currState.F~regout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \SW~combout\(0),
	datac => \currState.F~regout\,
	combout => \currState~20_combout\);

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

-- Location: LCCOMB_X63_Y7_N24
\in1~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \in1~3_combout\ = (\SW~combout\(0) & in0(3))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \SW~combout\(0),
	datac => in0(3),
	combout => \in1~3_combout\);

-- Location: LCFF_X63_Y7_N25
\in1[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \KEY~combout\(0),
	datain => \in1~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => in1(3));

-- Location: LCCOMB_X63_Y7_N20
\in2~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \in2~3_combout\ = (\SW~combout\(0) & in1(3))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \SW~combout\(0),
	datac => in1(3),
	combout => \in2~3_combout\);

-- Location: LCFF_X63_Y7_N21
\in2[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \KEY~combout\(0),
	datain => \in2~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => in2(3));

-- Location: LCCOMB_X63_Y7_N0
\in3~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \in3~3_combout\ = (\SW~combout\(0) & in2(3))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \SW~combout\(0),
	datac => in2(3),
	combout => \in3~3_combout\);

-- Location: LCFF_X63_Y7_N1
\in3[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \KEY~combout\(0),
	datain => \in3~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => in3(3));

-- Location: LCCOMB_X63_Y7_N28
\in4~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \in4~3_combout\ = (in3(3) & \SW~combout\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => in3(3),
	datac => \SW~combout\(0),
	combout => \in4~3_combout\);

-- Location: LCFF_X63_Y7_N29
\in4[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \KEY~combout\(0),
	datain => \in4~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => in4(3));

-- Location: LCCOMB_X1_Y15_N22
\in5~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \in5~3_combout\ = (\SW~combout\(0) & in4(3))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \SW~combout\(0),
	datac => in4(3),
	combout => \in5~3_combout\);

-- Location: LCFF_X1_Y15_N23
\in5[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \KEY~combout\(0),
	datain => \in5~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => in5(3));

-- Location: LCCOMB_X1_Y15_N10
\in6~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \in6~3_combout\ = (in5(3) & \SW~combout\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => in5(3),
	datac => \SW~combout\(0),
	combout => \in6~3_combout\);

-- Location: LCFF_X1_Y15_N11
\in6[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \KEY~combout\(0),
	datain => \in6~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => in6(3));

-- Location: LCCOMB_X1_Y23_N2
\in7~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \in7~3_combout\ = (in6(3) & \SW~combout\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => in6(3),
	datad => \SW~combout\(0),
	combout => \in7~3_combout\);

-- Location: LCFF_X1_Y23_N3
\in7[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \KEY~combout\(0),
	datain => \in7~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => in7(3));

-- Location: LCCOMB_X63_Y11_N22
\nextState~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \nextState~2_combout\ = (\currState.H~regout\) # (\currState.I~regout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101011111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \currState.H~regout\,
	datac => \currState.I~regout\,
	combout => \nextState~2_combout\);

-- Location: LCFF_X63_Y11_N23
\currState.I\ : cycloneii_lcell_ff
PORT MAP (
	clk => \KEY~combout\(0),
	datain => \nextState~2_combout\,
	sclr => \ALT_INV_SW~combout\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \currState.I~regout\);

-- Location: LCCOMB_X63_Y11_N28
\in0~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \in0~6_combout\ = (in7(3) & \currState.I~regout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => in7(3),
	datad => \currState.I~regout\,
	combout => \in0~6_combout\);

-- Location: LCFF_X63_Y11_N29
\in0[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \KEY~combout\(0),
	datain => \in0~6_combout\,
	sclr => \ALT_INV_SW~combout\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => in0(3));

-- Location: LCCOMB_X1_Y23_N22
\in7~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \in7~1_combout\ = (in6(1) & \SW~combout\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => in6(1),
	datad => \SW~combout\(0),
	combout => \in7~1_combout\);

-- Location: LCFF_X1_Y23_N23
\in7[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \KEY~combout\(0),
	datain => \in7~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => in7(1));

-- Location: LCCOMB_X63_Y11_N10
\in0~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \in0~3_combout\ = (\currState.I~regout\ & ((in7(1)))) # (!\currState.I~regout\ & (\in0~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \in0~2_combout\,
	datac => in7(1),
	datad => \currState.I~regout\,
	combout => \in0~3_combout\);

-- Location: LCFF_X63_Y11_N11
\in0[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \KEY~combout\(0),
	datain => \in0~3_combout\,
	sclr => \ALT_INV_SW~combout\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => in0(1));

-- Location: LCCOMB_X63_Y7_N2
\in2~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \in2~2_combout\ = (in1(2) & \SW~combout\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => in1(2),
	datac => \SW~combout\(0),
	combout => \in2~2_combout\);

-- Location: LCFF_X63_Y7_N3
\in2[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \KEY~combout\(0),
	datain => \in2~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => in2(2));

-- Location: LCCOMB_X63_Y7_N22
\in3~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \in3~2_combout\ = (in2(2) & \SW~combout\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => in2(2),
	datac => \SW~combout\(0),
	combout => \in3~2_combout\);

-- Location: LCFF_X63_Y7_N23
\in3[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \KEY~combout\(0),
	datain => \in3~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => in3(2));

-- Location: LCCOMB_X63_Y7_N10
\in4~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \in4~2_combout\ = (in3(2) & \SW~combout\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => in3(2),
	datac => \SW~combout\(0),
	combout => \in4~2_combout\);

-- Location: LCFF_X63_Y7_N11
\in4[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \KEY~combout\(0),
	datain => \in4~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => in4(2));

-- Location: LCCOMB_X1_Y23_N18
\in5~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \in5~2_combout\ = (in4(2) & \SW~combout\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => in4(2),
	datad => \SW~combout\(0),
	combout => \in5~2_combout\);

-- Location: LCFF_X1_Y23_N19
\in5[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \KEY~combout\(0),
	datain => \in5~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => in5(2));

-- Location: LCCOMB_X1_Y23_N8
\in6~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \in6~2_combout\ = (in5(2) & \SW~combout\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => in5(2),
	datad => \SW~combout\(0),
	combout => \in6~2_combout\);

-- Location: LCFF_X1_Y23_N9
\in6[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \KEY~combout\(0),
	datain => \in6~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => in6(2));

-- Location: LCCOMB_X1_Y23_N16
\in7~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \in7~2_combout\ = (in6(2) & \SW~combout\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => in6(2),
	datad => \SW~combout\(0),
	combout => \in7~2_combout\);

-- Location: LCFF_X1_Y23_N17
\in7[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \KEY~combout\(0),
	datain => \in7~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => in7(2));

-- Location: LCCOMB_X63_Y7_N8
\in0~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \in0~5_combout\ = (\currState.I~regout\ & ((in7(2)))) # (!\currState.I~regout\ & (\in0~4_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \in0~4_combout\,
	datac => in7(2),
	datad => \currState.I~regout\,
	combout => \in0~5_combout\);

-- Location: LCFF_X63_Y7_N9
\in0[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \KEY~combout\(0),
	datain => \in0~5_combout\,
	sclr => \ALT_INV_SW~combout\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => in0(2));

-- Location: LCCOMB_X63_Y11_N14
\currState.A~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \currState.A~feeder_combout\ = \SW~combout\(0)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \SW~combout\(0),
	combout => \currState.A~feeder_combout\);

-- Location: LCFF_X63_Y11_N15
\currState.A\ : cycloneii_lcell_ff
PORT MAP (
	clk => \KEY~combout\(0),
	datain => \currState.A~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \currState.A~regout\);

-- Location: LCCOMB_X63_Y11_N30
\currState~17\ : cycloneii_lcell_comb
-- Equation(s):
-- \currState~17_combout\ = (\SW~combout\(0) & !\currState.A~regout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \SW~combout\(0),
	datac => \currState.A~regout\,
	combout => \currState~17_combout\);

-- Location: LCFF_X63_Y11_N31
\currState.B\ : cycloneii_lcell_ff
PORT MAP (
	clk => \KEY~combout\(0),
	datain => \currState~17_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \currState.B~regout\);

-- Location: LCCOMB_X63_Y11_N4
\currState~19\ : cycloneii_lcell_comb
-- Equation(s):
-- \currState~19_combout\ = (\currState.B~regout\ & \SW~combout\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \currState.B~regout\,
	datac => \SW~combout\(0),
	combout => \currState~19_combout\);

-- Location: LCFF_X63_Y11_N5
\currState.C\ : cycloneii_lcell_ff
PORT MAP (
	clk => \KEY~combout\(0),
	datain => \currState~19_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \currState.C~regout\);

-- Location: LCCOMB_X63_Y11_N18
\currState~15\ : cycloneii_lcell_comb
-- Equation(s):
-- \currState~15_combout\ = (\SW~combout\(0) & \currState.C~regout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \SW~combout\(0),
	datac => \currState.C~regout\,
	combout => \currState~15_combout\);

-- Location: LCFF_X63_Y11_N19
\currState.D\ : cycloneii_lcell_ff
PORT MAP (
	clk => \KEY~combout\(0),
	datain => \currState~15_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \currState.D~regout\);

-- Location: LCCOMB_X63_Y11_N2
\currState~21\ : cycloneii_lcell_comb
-- Equation(s):
-- \currState~21_combout\ = (\currState.D~regout\ & \SW~combout\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \currState.D~regout\,
	datac => \SW~combout\(0),
	combout => \currState~21_combout\);

-- Location: LCFF_X63_Y11_N3
\currState.E\ : cycloneii_lcell_ff
PORT MAP (
	clk => \KEY~combout\(0),
	datain => \currState~21_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \currState.E~regout\);

-- Location: LCCOMB_X63_Y11_N8
\currState~18\ : cycloneii_lcell_comb
-- Equation(s):
-- \currState~18_combout\ = (\currState.E~regout\ & \SW~combout\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \currState.E~regout\,
	datac => \SW~combout\(0),
	combout => \currState~18_combout\);

-- Location: LCFF_X63_Y11_N9
\currState.F\ : cycloneii_lcell_ff
PORT MAP (
	clk => \KEY~combout\(0),
	datain => \currState~18_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \currState.F~regout\);

-- Location: LCCOMB_X63_Y11_N26
\in0~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \in0~0_combout\ = (\currState.H~regout\) # ((\currState.B~regout\) # ((\currState.F~regout\) # (\currState.D~regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \currState.H~regout\,
	datab => \currState.B~regout\,
	datac => \currState.F~regout\,
	datad => \currState.D~regout\,
	combout => \in0~0_combout\);

-- Location: LCCOMB_X1_Y23_N28
\in7~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \in7~0_combout\ = (in6(0) & \SW~combout\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => in6(0),
	datad => \SW~combout\(0),
	combout => \in7~0_combout\);

-- Location: LCFF_X1_Y23_N29
\in7[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \KEY~combout\(0),
	datain => \in7~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => in7(0));

-- Location: LCCOMB_X63_Y11_N0
\in0~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \in0~1_combout\ = (\currState.I~regout\ & ((in7(0)))) # (!\currState.I~regout\ & (\in0~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \in0~0_combout\,
	datac => in7(0),
	datad => \currState.I~regout\,
	combout => \in0~1_combout\);

-- Location: LCFF_X63_Y11_N1
\in0[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \KEY~combout\(0),
	datain => \in0~1_combout\,
	sclr => \ALT_INV_SW~combout\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => in0(0));

-- Location: LCCOMB_X63_Y7_N26
\H0|hex~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \H0|hex~0_combout\ = (!in0(3) & (!in0(2) & (in0(1) $ (in0(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => in0(3),
	datab => in0(1),
	datac => in0(2),
	datad => in0(0),
	combout => \H0|hex~0_combout\);

-- Location: LCCOMB_X63_Y7_N4
\H0|WideOr0~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \H0|WideOr0~0_combout\ = (!in0(3) & ((in0(1) & (!in0(2))) # (!in0(1) & ((in0(2)) # (in0(0))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001010100010100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => in0(3),
	datab => in0(1),
	datac => in0(2),
	datad => in0(0),
	combout => \H0|WideOr0~0_combout\);

-- Location: LCCOMB_X63_Y7_N30
\H0|hex~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \H0|hex~1_combout\ = (in0(3)) # (in0(1) $ (!in0(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101111101011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => in0(3),
	datab => in0(1),
	datac => in0(2),
	combout => \H0|hex~1_combout\);

-- Location: LCCOMB_X63_Y7_N16
\H0|Decoder1~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \H0|Decoder1~0_combout\ = (!in0(1) & (!in0(3) & in0(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => in0(1),
	datac => in0(3),
	datad => in0(0),
	combout => \H0|Decoder1~0_combout\);

-- Location: LCCOMB_X63_Y7_N18
\H0|hex~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \H0|hex~2_combout\ = (!in0(3) & ((in0(1) & (!in0(2) & !in0(0))) # (!in0(1) & (in0(2) & in0(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => in0(3),
	datab => in0(1),
	datac => in0(2),
	datad => in0(0),
	combout => \H0|hex~2_combout\);

-- Location: LCCOMB_X63_Y7_N12
\in1~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \in1~1_combout\ = (\SW~combout\(0) & in0(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \SW~combout\(0),
	datac => in0(1),
	combout => \in1~1_combout\);

-- Location: LCFF_X63_Y7_N13
\in1[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \KEY~combout\(0),
	datain => \in1~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => in1(1));

-- Location: LCCOMB_X63_Y7_N6
\in1~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \in1~2_combout\ = (\SW~combout\(0) & in0(2))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \SW~combout\(0),
	datac => in0(2),
	combout => \in1~2_combout\);

-- Location: LCFF_X63_Y7_N7
\in1[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \KEY~combout\(0),
	datain => \in1~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => in1(2));

-- Location: LCCOMB_X63_Y11_N16
\in1~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \in1~0_combout\ = (in0(0) & \SW~combout\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => in0(0),
	datac => \SW~combout\(0),
	combout => \in1~0_combout\);

-- Location: LCFF_X63_Y11_N17
\in1[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \KEY~combout\(0),
	datain => \in1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => in1(0));

-- Location: LCCOMB_X64_Y7_N16
\H1|hex~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \H1|hex~0_combout\ = (!in1(3) & (!in1(2) & (in1(1) $ (in1(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => in1(1),
	datab => in1(3),
	datac => in1(2),
	datad => in1(0),
	combout => \H1|hex~0_combout\);

-- Location: LCCOMB_X64_Y7_N18
\H1|WideOr0~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \H1|WideOr0~0_combout\ = (!in1(3) & ((in1(1) & (!in1(2))) # (!in1(1) & ((in1(2)) # (in1(0))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001001100010010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => in1(1),
	datab => in1(3),
	datac => in1(2),
	datad => in1(0),
	combout => \H1|WideOr0~0_combout\);

-- Location: LCCOMB_X64_Y7_N12
\H1|hex~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \H1|hex~1_combout\ = (in1(3)) # (in1(2) $ (!in1(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => in1(3),
	datac => in1(2),
	datad => in1(1),
	combout => \H1|hex~1_combout\);

-- Location: LCCOMB_X64_Y7_N6
\H1|Decoder1~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \H1|Decoder1~0_combout\ = (!in1(1) & (!in1(3) & in1(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => in1(1),
	datab => in1(3),
	datad => in1(0),
	combout => \H1|Decoder1~0_combout\);

-- Location: LCCOMB_X64_Y7_N8
\H1|hex~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \H1|hex~2_combout\ = (!in1(3) & ((in1(1) & (!in1(2) & !in1(0))) # (!in1(1) & (in1(2) & in1(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => in1(1),
	datab => in1(3),
	datac => in1(2),
	datad => in1(0),
	combout => \H1|hex~2_combout\);

-- Location: LCCOMB_X64_Y7_N28
\in2~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \in2~1_combout\ = (\SW~combout\(0) & in1(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW~combout\(0),
	datad => in1(1),
	combout => \in2~1_combout\);

-- Location: LCFF_X64_Y7_N29
\in2[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \KEY~combout\(0),
	datain => \in2~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => in2(1));

-- Location: LCCOMB_X64_Y7_N10
\in2~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \in2~0_combout\ = (\SW~combout\(0) & in1(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW~combout\(0),
	datad => in1(0),
	combout => \in2~0_combout\);

-- Location: LCFF_X64_Y7_N11
\in2[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \KEY~combout\(0),
	datain => \in2~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => in2(0));

-- Location: LCCOMB_X64_Y7_N30
\H2|hex~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \H2|hex~0_combout\ = (!in2(2) & (!in2(3) & (in2(1) $ (in2(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => in2(2),
	datab => in2(1),
	datac => in2(3),
	datad => in2(0),
	combout => \H2|hex~0_combout\);

-- Location: LCCOMB_X64_Y7_N24
\H2|WideOr0~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \H2|WideOr0~0_combout\ = (!in2(3) & ((in2(2) & (!in2(1))) # (!in2(2) & ((in2(1)) # (in2(0))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000011100000110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => in2(2),
	datab => in2(1),
	datac => in2(3),
	datad => in2(0),
	combout => \H2|WideOr0~0_combout\);

-- Location: LCCOMB_X64_Y7_N26
\H2|hex~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \H2|hex~1_combout\ = (in2(3)) # (in2(2) $ (!in2(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101011110101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => in2(2),
	datac => in2(3),
	datad => in2(1),
	combout => \H2|hex~1_combout\);

-- Location: LCCOMB_X64_Y7_N4
\H2|Decoder1~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \H2|Decoder1~0_combout\ = (!in2(1) & (!in2(3) & in2(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => in2(1),
	datac => in2(3),
	datad => in2(0),
	combout => \H2|Decoder1~0_combout\);

-- Location: LCCOMB_X64_Y7_N22
\H2|hex~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \H2|hex~2_combout\ = (!in2(3) & ((in2(2) & (!in2(1) & in2(0))) # (!in2(2) & (in2(1) & !in2(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => in2(2),
	datab => in2(1),
	datac => in2(3),
	datad => in2(0),
	combout => \H2|hex~2_combout\);

-- Location: LCCOMB_X64_Y7_N2
\in3~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \in3~1_combout\ = (\SW~combout\(0) & in2(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW~combout\(0),
	datad => in2(1),
	combout => \in3~1_combout\);

-- Location: LCFF_X64_Y7_N3
\in3[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \KEY~combout\(0),
	datain => \in3~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => in3(1));

-- Location: LCCOMB_X64_Y7_N0
\in3~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \in3~0_combout\ = (\SW~combout\(0) & in2(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW~combout\(0),
	datad => in2(0),
	combout => \in3~0_combout\);

-- Location: LCFF_X64_Y7_N1
\in3[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \KEY~combout\(0),
	datain => \in3~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => in3(0));

-- Location: LCCOMB_X64_Y8_N0
\H3|hex~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \H3|hex~0_combout\ = (!in3(3) & (!in3(2) & (in3(1) $ (in3(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => in3(1),
	datab => in3(3),
	datac => in3(2),
	datad => in3(0),
	combout => \H3|hex~0_combout\);

-- Location: LCCOMB_X64_Y8_N2
\H3|WideOr0~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \H3|WideOr0~0_combout\ = (!in3(3) & ((in3(1) & (!in3(2))) # (!in3(1) & ((in3(2)) # (in3(0))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001001100010010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => in3(1),
	datab => in3(3),
	datac => in3(2),
	datad => in3(0),
	combout => \H3|WideOr0~0_combout\);

-- Location: LCCOMB_X64_Y8_N28
\H3|hex~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \H3|hex~1_combout\ = (in3(3)) # (in3(1) $ (!in3(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110111101101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => in3(1),
	datab => in3(3),
	datac => in3(2),
	combout => \H3|hex~1_combout\);

-- Location: LCCOMB_X64_Y8_N30
\H3|Decoder1~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \H3|Decoder1~0_combout\ = (!in3(3) & (!in3(1) & in3(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => in3(3),
	datac => in3(1),
	datad => in3(0),
	combout => \H3|Decoder1~0_combout\);

-- Location: LCCOMB_X64_Y8_N16
\H3|hex~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \H3|hex~2_combout\ = (!in3(3) & ((in3(1) & (!in3(2) & !in3(0))) # (!in3(1) & (in3(2) & in3(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => in3(1),
	datab => in3(3),
	datac => in3(2),
	datad => in3(0),
	combout => \H3|hex~2_combout\);

-- Location: LCCOMB_X1_Y15_N0
\in4~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \in4~0_combout\ = (\SW~combout\(0) & in3(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \SW~combout\(0),
	datac => in3(0),
	combout => \in4~0_combout\);

-- Location: LCFF_X1_Y15_N1
\in4[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \KEY~combout\(0),
	datain => \in4~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => in4(0));

-- Location: LCCOMB_X64_Y7_N20
\in4~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \in4~1_combout\ = (\SW~combout\(0) & in3(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW~combout\(0),
	datad => in3(1),
	combout => \in4~1_combout\);

-- Location: LCFF_X64_Y7_N21
\in4[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \KEY~combout\(0),
	datain => \in4~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => in4(1));

-- Location: LCCOMB_X1_Y15_N2
\H4|hex~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \H4|hex~0_combout\ = (!in4(3) & (!in4(2) & (in4(0) $ (in4(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => in4(3),
	datab => in4(0),
	datac => in4(1),
	datad => in4(2),
	combout => \H4|hex~0_combout\);

-- Location: LCCOMB_X1_Y15_N28
\H4|WideOr0~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \H4|WideOr0~0_combout\ = (!in4(3) & ((in4(1) & ((!in4(2)))) # (!in4(1) & ((in4(0)) # (in4(2))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010101010100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => in4(3),
	datab => in4(0),
	datac => in4(1),
	datad => in4(2),
	combout => \H4|WideOr0~0_combout\);

-- Location: LCCOMB_X1_Y15_N6
\H4|hex~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \H4|hex~1_combout\ = (in4(3)) # (in4(2) $ (!in4(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100111111001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => in4(2),
	datab => in4(1),
	datac => in4(3),
	combout => \H4|hex~1_combout\);

-- Location: LCCOMB_X1_Y15_N16
\H4|Decoder1~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \H4|Decoder1~0_combout\ = (!in4(3) & (in4(0) & !in4(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => in4(3),
	datab => in4(0),
	datac => in4(1),
	combout => \H4|Decoder1~0_combout\);

-- Location: LCCOMB_X1_Y15_N18
\H4|hex~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \H4|hex~2_combout\ = (!in4(3) & ((in4(0) & (!in4(1) & in4(2))) # (!in4(0) & (in4(1) & !in4(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => in4(3),
	datab => in4(0),
	datac => in4(1),
	datad => in4(2),
	combout => \H4|hex~2_combout\);

-- Location: LCCOMB_X1_Y15_N20
\in5~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \in5~0_combout\ = (in4(0) & \SW~combout\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => in4(0),
	datac => \SW~combout\(0),
	combout => \in5~0_combout\);

-- Location: LCFF_X1_Y15_N21
\in5[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \KEY~combout\(0),
	datain => \in5~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => in5(0));

-- Location: LCCOMB_X1_Y23_N0
\in5~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \in5~1_combout\ = (in4(1) & \SW~combout\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => in4(1),
	datad => \SW~combout\(0),
	combout => \in5~1_combout\);

-- Location: LCFF_X1_Y23_N1
\in5[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \KEY~combout\(0),
	datain => \in5~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => in5(1));

-- Location: LCCOMB_X1_Y15_N8
\H5|hex~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \H5|hex~0_combout\ = (!in5(3) & (!in5(2) & (in5(0) $ (in5(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => in5(0),
	datab => in5(3),
	datac => in5(1),
	datad => in5(2),
	combout => \H5|hex~0_combout\);

-- Location: LCCOMB_X1_Y15_N26
\H5|WideOr0~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \H5|WideOr0~0_combout\ = (!in5(3) & ((in5(1) & ((!in5(2)))) # (!in5(1) & ((in5(0)) # (in5(2))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001100110010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => in5(0),
	datab => in5(3),
	datac => in5(1),
	datad => in5(2),
	combout => \H5|WideOr0~0_combout\);

-- Location: LCCOMB_X1_Y15_N12
\H5|hex~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \H5|hex~1_combout\ = (in5(3)) # (in5(1) $ (!in5(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => in5(3),
	datac => in5(1),
	datad => in5(2),
	combout => \H5|hex~1_combout\);

-- Location: LCCOMB_X1_Y15_N30
\H5|Decoder1~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \H5|Decoder1~0_combout\ = (in5(0) & (!in5(3) & !in5(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => in5(0),
	datab => in5(3),
	datac => in5(1),
	combout => \H5|Decoder1~0_combout\);

-- Location: LCCOMB_X1_Y15_N24
\H5|hex~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \H5|hex~2_combout\ = (!in5(3) & ((in5(0) & (!in5(1) & in5(2))) # (!in5(0) & (in5(1) & !in5(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => in5(0),
	datab => in5(3),
	datac => in5(1),
	datad => in5(2),
	combout => \H5|hex~2_combout\);

-- Location: LCCOMB_X1_Y23_N6
\in6~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \in6~1_combout\ = (in5(1) & \SW~combout\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => in5(1),
	datad => \SW~combout\(0),
	combout => \in6~1_combout\);

-- Location: LCFF_X1_Y23_N7
\in6[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \KEY~combout\(0),
	datain => \in6~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => in6(1));

-- Location: LCCOMB_X1_Y23_N12
\in6~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \in6~0_combout\ = (in5(0) & \SW~combout\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => in5(0),
	datad => \SW~combout\(0),
	combout => \in6~0_combout\);

-- Location: LCFF_X1_Y23_N13
\in6[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \KEY~combout\(0),
	datain => \in6~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => in6(0));

-- Location: LCCOMB_X1_Y23_N10
\H6|hex~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \H6|hex~0_combout\ = (!in6(2) & (!in6(3) & (in6(1) $ (in6(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => in6(1),
	datab => in6(2),
	datac => in6(3),
	datad => in6(0),
	combout => \H6|hex~0_combout\);

-- Location: LCCOMB_X1_Y23_N20
\H6|WideOr0~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \H6|WideOr0~0_combout\ = (!in6(3) & ((in6(1) & (!in6(2))) # (!in6(1) & ((in6(2)) # (in6(0))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000011100000110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => in6(1),
	datab => in6(2),
	datac => in6(3),
	datad => in6(0),
	combout => \H6|WideOr0~0_combout\);

-- Location: LCCOMB_X1_Y23_N14
\H6|hex~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \H6|hex~1_combout\ = (in6(3)) # (in6(1) $ (!in6(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100111111001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => in6(1),
	datab => in6(2),
	datac => in6(3),
	combout => \H6|hex~1_combout\);

-- Location: LCCOMB_X1_Y23_N24
\H6|Decoder1~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \H6|Decoder1~0_combout\ = (!in6(1) & (!in6(3) & in6(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => in6(1),
	datac => in6(3),
	datad => in6(0),
	combout => \H6|Decoder1~0_combout\);

-- Location: LCCOMB_X1_Y23_N26
\H6|hex~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \H6|hex~2_combout\ = (!in6(3) & ((in6(1) & (!in6(2) & !in6(0))) # (!in6(1) & (in6(2) & in6(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => in6(1),
	datab => in6(2),
	datac => in6(3),
	datad => in6(0),
	combout => \H6|hex~2_combout\);

-- Location: LCCOMB_X1_Y24_N0
\H7|hex~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \H7|hex~0_combout\ = (!in7(2) & (!in7(3) & (in7(1) $ (in7(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => in7(1),
	datab => in7(2),
	datac => in7(0),
	datad => in7(3),
	combout => \H7|hex~0_combout\);

-- Location: LCCOMB_X1_Y24_N10
\H7|WideOr0~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \H7|WideOr0~0_combout\ = (!in7(3) & ((in7(1) & (!in7(2))) # (!in7(1) & ((in7(2)) # (in7(0))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001110110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => in7(1),
	datab => in7(2),
	datac => in7(0),
	datad => in7(3),
	combout => \H7|WideOr0~0_combout\);

-- Location: LCCOMB_X1_Y24_N12
\H7|hex~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \H7|hex~1_combout\ = (in7(3)) # (in7(2) $ (!in7(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => in7(2),
	datac => in7(1),
	datad => in7(3),
	combout => \H7|hex~1_combout\);

-- Location: LCCOMB_X1_Y24_N14
\H7|Decoder1~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \H7|Decoder1~0_combout\ = (in7(0) & (!in7(1) & !in7(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => in7(0),
	datac => in7(1),
	datad => in7(3),
	combout => \H7|Decoder1~0_combout\);

-- Location: LCCOMB_X1_Y24_N16
\H7|hex~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \H7|hex~2_combout\ = (!in7(3) & ((in7(1) & (!in7(2) & !in7(0))) # (!in7(1) & (in7(2) & in7(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => in7(1),
	datab => in7(2),
	datac => in7(0),
	datad => in7(3),
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


