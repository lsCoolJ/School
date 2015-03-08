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

-- DATE "05/22/2014 20:21:34"

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

ENTITY 	Part4 IS
    PORT (
	SW : IN std_logic_vector(10 DOWNTO 0);
	LEDR : OUT std_logic_vector(10 DOWNTO 0);
	HEX0 : OUT std_logic_vector(0 TO 6);
	HEX1 : OUT std_logic_vector(0 TO 6);
	HEX4 : OUT std_logic_vector(0 TO 6);
	HEX5 : OUT std_logic_vector(0 TO 6);
	HEX6 : OUT std_logic_vector(0 TO 6);
	HEX7 : OUT std_logic_vector(0 TO 6)
	);
END Part4;

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


ARCHITECTURE structure OF Part4 IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_SW : std_logic_vector(10 DOWNTO 0);
SIGNAL ww_LEDR : std_logic_vector(10 DOWNTO 0);
SIGNAL ww_HEX0 : std_logic_vector(0 TO 6);
SIGNAL ww_HEX1 : std_logic_vector(0 TO 6);
SIGNAL ww_HEX4 : std_logic_vector(0 TO 6);
SIGNAL ww_HEX5 : std_logic_vector(0 TO 6);
SIGNAL ww_HEX6 : std_logic_vector(0 TO 6);
SIGNAL ww_HEX7 : std_logic_vector(0 TO 6);
SIGNAL \I1|Add1~0_combout\ : std_logic;
SIGNAL \I1|Add0~0_combout\ : std_logic;
SIGNAL \I1|Add1~2_combout\ : std_logic;
SIGNAL \I1|Add0~4_combout\ : std_logic;
SIGNAL \I1|Add1~6_combout\ : std_logic;
SIGNAL \I1|Add0~7\ : std_logic;
SIGNAL \I1|Add1~8_combout\ : std_logic;
SIGNAL \I1|Add0~8_combout\ : std_logic;
SIGNAL \I1|Mux15~0_combout\ : std_logic;
SIGNAL \I1|Mux12~1_combout\ : std_logic;
SIGNAL \I1|Mux13~0_combout\ : std_logic;
SIGNAL \I1|Mux13~1_combout\ : std_logic;
SIGNAL \I1|Mux13~2_combout\ : std_logic;
SIGNAL \I1|Mux13~3_combout\ : std_logic;
SIGNAL \I1|Mux14~1_combout\ : std_logic;
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
SIGNAL \I1|Mux12~0_combout\ : std_logic;
SIGNAL \I1|Mux14~2_combout\ : std_logic;
SIGNAL \I1|Mux12~2_combout\ : std_logic;
SIGNAL \I1|Add0~1\ : std_logic;
SIGNAL \I1|Add0~2_combout\ : std_logic;
SIGNAL \I1|Mux14~0_combout\ : std_logic;
SIGNAL \I1|Mux14~combout\ : std_logic;
SIGNAL \I1|Add1~1\ : std_logic;
SIGNAL \I1|Add1~3\ : std_logic;
SIGNAL \I1|Add1~4_combout\ : std_logic;
SIGNAL \I1|Mux13~combout\ : std_logic;
SIGNAL \I1|Mux12~4_combout\ : std_logic;
SIGNAL \I1|Mux12~3_combout\ : std_logic;
SIGNAL \I1|Mux12~5_combout\ : std_logic;
SIGNAL \I1|Add0~3\ : std_logic;
SIGNAL \I1|Add0~5\ : std_logic;
SIGNAL \I1|Add0~6_combout\ : std_logic;
SIGNAL \I1|Mux12~6_combout\ : std_logic;
SIGNAL \I1|Mux12~combout\ : std_logic;
SIGNAL \I1|Mux15~2_combout\ : std_logic;
SIGNAL \I1|Mux15~1_combout\ : std_logic;
SIGNAL \I1|Mux15~3_combout\ : std_logic;
SIGNAL \H4|WideOr6~0_combout\ : std_logic;
SIGNAL \H4|WideOr5~0_combout\ : std_logic;
SIGNAL \H4|WideOr4~0_combout\ : std_logic;
SIGNAL \H4|WideOr3~0_combout\ : std_logic;
SIGNAL \H4|WideOr2~0_combout\ : std_logic;
SIGNAL \H4|WideOr1~0_combout\ : std_logic;
SIGNAL \H4|WideOr0~0_combout\ : std_logic;
SIGNAL \I1|Add1~5\ : std_logic;
SIGNAL \I1|Add1~7\ : std_logic;
SIGNAL \I1|Add1~9\ : std_logic;
SIGNAL \I1|Add1~10_combout\ : std_logic;
SIGNAL \I1|Mux8~2_combout\ : std_logic;
SIGNAL \I1|Mux11~0_combout\ : std_logic;
SIGNAL \I1|Mux11~1_combout\ : std_logic;
SIGNAL \I1|Mux11~2_combout\ : std_logic;
SIGNAL \H5|Decoder0~0_combout\ : std_logic;
SIGNAL \SW~combout\ : std_logic_vector(10 DOWNTO 0);
SIGNAL \H1|ALT_INV_WideOr6~0_combout\ : std_logic;
SIGNAL \H0|ALT_INV_WideOr6~0_combout\ : std_logic;
SIGNAL \I1|ALT_INV_Mux8~2_combout\ : std_logic;
SIGNAL \H4|ALT_INV_WideOr6~0_combout\ : std_logic;

BEGIN

ww_SW <= SW;
LEDR <= ww_LEDR;
HEX0 <= ww_HEX0;
HEX1 <= ww_HEX1;
HEX4 <= ww_HEX4;
HEX5 <= ww_HEX5;
HEX6 <= ww_HEX6;
HEX7 <= ww_HEX7;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;
\H1|ALT_INV_WideOr6~0_combout\ <= NOT \H1|WideOr6~0_combout\;
\H0|ALT_INV_WideOr6~0_combout\ <= NOT \H0|WideOr6~0_combout\;
\I1|ALT_INV_Mux8~2_combout\ <= NOT \I1|Mux8~2_combout\;
\H4|ALT_INV_WideOr6~0_combout\ <= NOT \H4|WideOr6~0_combout\;

-- Location: LCCOMB_X32_Y6_N4
\I1|Add1~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \I1|Add1~0_combout\ = (\SW~combout\(3) & ((GND) # (!\SW~combout\(7)))) # (!\SW~combout\(3) & (\SW~combout\(7) $ (GND)))
-- \I1|Add1~1\ = CARRY((\SW~combout\(3)) # (!\SW~combout\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010111011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW~combout\(3),
	datab => \SW~combout\(7),
	datad => VCC,
	combout => \I1|Add1~0_combout\,
	cout => \I1|Add1~1\);

-- Location: LCCOMB_X36_Y6_N0
\I1|Add0~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \I1|Add0~0_combout\ = (\SW~combout\(3) & (\SW~combout\(7) $ (VCC))) # (!\SW~combout\(3) & (\SW~combout\(7) & VCC))
-- \I1|Add0~1\ = CARRY((\SW~combout\(3) & \SW~combout\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW~combout\(3),
	datab => \SW~combout\(7),
	datad => VCC,
	combout => \I1|Add0~0_combout\,
	cout => \I1|Add0~1\);

-- Location: LCCOMB_X32_Y6_N6
\I1|Add1~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \I1|Add1~2_combout\ = (\SW~combout\(4) & ((\SW~combout\(8) & (!\I1|Add1~1\)) # (!\SW~combout\(8) & (\I1|Add1~1\ & VCC)))) # (!\SW~combout\(4) & ((\SW~combout\(8) & ((\I1|Add1~1\) # (GND))) # (!\SW~combout\(8) & (!\I1|Add1~1\))))
-- \I1|Add1~3\ = CARRY((\SW~combout\(4) & (\SW~combout\(8) & !\I1|Add1~1\)) # (!\SW~combout\(4) & ((\SW~combout\(8)) # (!\I1|Add1~1\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100101001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \SW~combout\(4),
	datab => \SW~combout\(8),
	datad => VCC,
	cin => \I1|Add1~1\,
	combout => \I1|Add1~2_combout\,
	cout => \I1|Add1~3\);

-- Location: LCCOMB_X36_Y6_N4
\I1|Add0~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \I1|Add0~4_combout\ = ((\SW~combout\(5) $ (\SW~combout\(9) $ (!\I1|Add0~3\)))) # (GND)
-- \I1|Add0~5\ = CARRY((\SW~combout\(5) & ((\SW~combout\(9)) # (!\I1|Add0~3\))) # (!\SW~combout\(5) & (\SW~combout\(9) & !\I1|Add0~3\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \SW~combout\(5),
	datab => \SW~combout\(9),
	datad => VCC,
	cin => \I1|Add0~3\,
	combout => \I1|Add0~4_combout\,
	cout => \I1|Add0~5\);

-- Location: LCCOMB_X32_Y6_N10
\I1|Add1~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \I1|Add1~6_combout\ = (\SW~combout\(6) & ((\SW~combout\(10) & (!\I1|Add1~5\)) # (!\SW~combout\(10) & (\I1|Add1~5\ & VCC)))) # (!\SW~combout\(6) & ((\SW~combout\(10) & ((\I1|Add1~5\) # (GND))) # (!\SW~combout\(10) & (!\I1|Add1~5\))))
-- \I1|Add1~7\ = CARRY((\SW~combout\(6) & (\SW~combout\(10) & !\I1|Add1~5\)) # (!\SW~combout\(6) & ((\SW~combout\(10)) # (!\I1|Add1~5\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100101001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \SW~combout\(6),
	datab => \SW~combout\(10),
	datad => VCC,
	cin => \I1|Add1~5\,
	combout => \I1|Add1~6_combout\,
	cout => \I1|Add1~7\);

-- Location: LCCOMB_X36_Y6_N6
\I1|Add0~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \I1|Add0~6_combout\ = (\SW~combout\(6) & ((\SW~combout\(10) & (\I1|Add0~5\ & VCC)) # (!\SW~combout\(10) & (!\I1|Add0~5\)))) # (!\SW~combout\(6) & ((\SW~combout\(10) & (!\I1|Add0~5\)) # (!\SW~combout\(10) & ((\I1|Add0~5\) # (GND)))))
-- \I1|Add0~7\ = CARRY((\SW~combout\(6) & (!\SW~combout\(10) & !\I1|Add0~5\)) # (!\SW~combout\(6) & ((!\I1|Add0~5\) # (!\SW~combout\(10)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \SW~combout\(6),
	datab => \SW~combout\(10),
	datad => VCC,
	cin => \I1|Add0~5\,
	combout => \I1|Add0~6_combout\,
	cout => \I1|Add0~7\);

-- Location: LCCOMB_X32_Y6_N12
\I1|Add1~8\ : cycloneii_lcell_comb
-- Equation(s):
-- \I1|Add1~8_combout\ = \I1|Add1~7\ $ (GND)
-- \I1|Add1~9\ = CARRY(!\I1|Add1~7\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => VCC,
	cin => \I1|Add1~7\,
	combout => \I1|Add1~8_combout\,
	cout => \I1|Add1~9\);

-- Location: LCCOMB_X36_Y6_N8
\I1|Add0~8\ : cycloneii_lcell_comb
-- Equation(s):
-- \I1|Add0~8_combout\ = !\I1|Add0~7\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \I1|Add0~7\,
	combout => \I1|Add0~8_combout\);

-- Location: LCCOMB_X33_Y6_N16
\I1|Mux15~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \I1|Mux15~0_combout\ = (\SW~combout\(1) & ((\I1|Add1~0_combout\))) # (!\SW~combout\(1) & (\I1|Add0~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \I1|Add0~0_combout\,
	datac => \I1|Add1~0_combout\,
	datad => \SW~combout\(1),
	combout => \I1|Mux15~0_combout\);

-- Location: LCCOMB_X33_Y6_N2
\I1|Mux12~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \I1|Mux12~1_combout\ = (\SW~combout\(2)) # ((!\SW~combout\(1) & \SW~combout\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111101000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW~combout\(1),
	datab => \SW~combout\(0),
	datad => \SW~combout\(2),
	combout => \I1|Mux12~1_combout\);

-- Location: LCCOMB_X32_Y3_N14
\I1|Mux13~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \I1|Mux13~0_combout\ = (\SW~combout\(5) & ((\SW~combout\(0)) # (\SW~combout\(9) $ (!\SW~combout\(1))))) # (!\SW~combout\(5) & (\SW~combout\(9) & ((!\SW~combout\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000011011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW~combout\(9),
	datab => \SW~combout\(0),
	datac => \SW~combout\(5),
	datad => \SW~combout\(1),
	combout => \I1|Mux13~0_combout\);

-- Location: LCCOMB_X32_Y3_N0
\I1|Mux13~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \I1|Mux13~1_combout\ = (\SW~combout\(0) & \SW~combout\(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \SW~combout\(0),
	datad => \SW~combout\(1),
	combout => \I1|Mux13~1_combout\);

-- Location: LCCOMB_X32_Y3_N10
\I1|Mux13~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \I1|Mux13~2_combout\ = \I1|Mux13~0_combout\ $ (((\I1|Mux13~1_combout\ & (\SW~combout\(3) & \SW~combout\(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \I1|Mux13~1_combout\,
	datab => \I1|Mux13~0_combout\,
	datac => \SW~combout\(3),
	datad => \SW~combout\(4),
	combout => \I1|Mux13~2_combout\);

-- Location: LCCOMB_X36_Y6_N26
\I1|Mux13~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \I1|Mux13~3_combout\ = (\I1|Mux12~2_combout\ & ((\I1|Mux13~2_combout\) # ((!\I1|Mux12~1_combout\)))) # (!\I1|Mux12~2_combout\ & (((\I1|Add0~4_combout\ & \I1|Mux12~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \I1|Mux13~2_combout\,
	datab => \I1|Mux12~2_combout\,
	datac => \I1|Add0~4_combout\,
	datad => \I1|Mux12~1_combout\,
	combout => \I1|Mux13~3_combout\);

-- Location: LCCOMB_X32_Y3_N12
\I1|Mux14~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \I1|Mux14~1_combout\ = (\SW~combout\(4) & ((\SW~combout\(0)) # (\SW~combout\(8) $ (!\SW~combout\(1))))) # (!\SW~combout\(4) & (((\SW~combout\(8) & !\SW~combout\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010100011011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW~combout\(4),
	datab => \SW~combout\(0),
	datac => \SW~combout\(8),
	datad => \SW~combout\(1),
	combout => \I1|Mux14~1_combout\);

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

-- Location: LCCOMB_X32_Y3_N8
\H0|WideOr6~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \H0|WideOr6~0_combout\ = (\SW~combout\(3) & ((\SW~combout\(6)) # (\SW~combout\(4) $ (\SW~combout\(5))))) # (!\SW~combout\(3) & ((\SW~combout\(4)) # (\SW~combout\(5) $ (\SW~combout\(6)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111101111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW~combout\(4),
	datab => \SW~combout\(3),
	datac => \SW~combout\(5),
	datad => \SW~combout\(6),
	combout => \H0|WideOr6~0_combout\);

-- Location: LCCOMB_X32_Y3_N26
\H0|WideOr5~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \H0|WideOr5~0_combout\ = (\SW~combout\(4) & (!\SW~combout\(6) & ((\SW~combout\(3)) # (!\SW~combout\(5))))) # (!\SW~combout\(4) & (\SW~combout\(3) & (\SW~combout\(5) $ (!\SW~combout\(6)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000010001110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW~combout\(4),
	datab => \SW~combout\(3),
	datac => \SW~combout\(5),
	datad => \SW~combout\(6),
	combout => \H0|WideOr5~0_combout\);

-- Location: LCCOMB_X32_Y3_N20
\H0|WideOr4~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \H0|WideOr4~0_combout\ = (\SW~combout\(4) & (\SW~combout\(3) & ((!\SW~combout\(6))))) # (!\SW~combout\(4) & ((\SW~combout\(5) & ((!\SW~combout\(6)))) # (!\SW~combout\(5) & (\SW~combout\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010011011100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW~combout\(4),
	datab => \SW~combout\(3),
	datac => \SW~combout\(5),
	datad => \SW~combout\(6),
	combout => \H0|WideOr4~0_combout\);

-- Location: LCCOMB_X32_Y3_N6
\H0|WideOr3~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \H0|WideOr3~0_combout\ = (\SW~combout\(4) & ((\SW~combout\(3) & (\SW~combout\(5))) # (!\SW~combout\(3) & (!\SW~combout\(5) & \SW~combout\(6))))) # (!\SW~combout\(4) & (!\SW~combout\(6) & (\SW~combout\(3) $ (\SW~combout\(5)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000001010010100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW~combout\(4),
	datab => \SW~combout\(3),
	datac => \SW~combout\(5),
	datad => \SW~combout\(6),
	combout => \H0|WideOr3~0_combout\);

-- Location: LCCOMB_X32_Y3_N24
\H0|WideOr2~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \H0|WideOr2~0_combout\ = (\SW~combout\(5) & (\SW~combout\(6) & ((\SW~combout\(4)) # (!\SW~combout\(3))))) # (!\SW~combout\(5) & (\SW~combout\(4) & (!\SW~combout\(3) & !\SW~combout\(6))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011000000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW~combout\(4),
	datab => \SW~combout\(3),
	datac => \SW~combout\(5),
	datad => \SW~combout\(6),
	combout => \H0|WideOr2~0_combout\);

-- Location: LCCOMB_X32_Y3_N18
\H0|WideOr1~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \H0|WideOr1~0_combout\ = (\SW~combout\(4) & ((\SW~combout\(3) & ((\SW~combout\(6)))) # (!\SW~combout\(3) & (\SW~combout\(5))))) # (!\SW~combout\(4) & (\SW~combout\(5) & (\SW~combout\(3) $ (\SW~combout\(6)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100001100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW~combout\(4),
	datab => \SW~combout\(3),
	datac => \SW~combout\(5),
	datad => \SW~combout\(6),
	combout => \H0|WideOr1~0_combout\);

-- Location: LCCOMB_X32_Y3_N28
\H0|WideOr0~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \H0|WideOr0~0_combout\ = (\SW~combout\(5) & (!\SW~combout\(4) & (\SW~combout\(3) $ (!\SW~combout\(6))))) # (!\SW~combout\(5) & (\SW~combout\(3) & (\SW~combout\(4) $ (!\SW~combout\(6)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100100000010100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW~combout\(4),
	datab => \SW~combout\(3),
	datac => \SW~combout\(5),
	datad => \SW~combout\(6),
	combout => \H0|WideOr0~0_combout\);

-- Location: LCCOMB_X36_Y6_N18
\H1|WideOr6~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \H1|WideOr6~0_combout\ = (\SW~combout\(7) & ((\SW~combout\(10)) # (\SW~combout\(8) $ (\SW~combout\(9))))) # (!\SW~combout\(7) & ((\SW~combout\(8)) # (\SW~combout\(9) $ (\SW~combout\(10)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111101111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW~combout\(7),
	datab => \SW~combout\(8),
	datac => \SW~combout\(9),
	datad => \SW~combout\(10),
	combout => \H1|WideOr6~0_combout\);

-- Location: LCCOMB_X36_Y6_N12
\H1|WideOr5~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \H1|WideOr5~0_combout\ = (\SW~combout\(7) & (\SW~combout\(10) $ (((\SW~combout\(8)) # (!\SW~combout\(9)))))) # (!\SW~combout\(7) & (\SW~combout\(8) & (!\SW~combout\(9) & !\SW~combout\(10))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000010001110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW~combout\(7),
	datab => \SW~combout\(8),
	datac => \SW~combout\(9),
	datad => \SW~combout\(10),
	combout => \H1|WideOr5~0_combout\);

-- Location: LCCOMB_X36_Y6_N14
\H1|WideOr4~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \H1|WideOr4~0_combout\ = (\SW~combout\(8) & (\SW~combout\(7) & ((!\SW~combout\(10))))) # (!\SW~combout\(8) & ((\SW~combout\(9) & ((!\SW~combout\(10)))) # (!\SW~combout\(9) & (\SW~combout\(7)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001010111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW~combout\(7),
	datab => \SW~combout\(8),
	datac => \SW~combout\(9),
	datad => \SW~combout\(10),
	combout => \H1|WideOr4~0_combout\);

-- Location: LCCOMB_X36_Y6_N24
\H1|WideOr3~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \H1|WideOr3~0_combout\ = (\SW~combout\(8) & ((\SW~combout\(7) & (\SW~combout\(9))) # (!\SW~combout\(7) & (!\SW~combout\(9) & \SW~combout\(10))))) # (!\SW~combout\(8) & (!\SW~combout\(10) & (\SW~combout\(7) $ (\SW~combout\(9)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000010010010010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW~combout\(7),
	datab => \SW~combout\(8),
	datac => \SW~combout\(9),
	datad => \SW~combout\(10),
	combout => \H1|WideOr3~0_combout\);

-- Location: LCCOMB_X36_Y6_N10
\H1|WideOr2~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \H1|WideOr2~0_combout\ = (\SW~combout\(9) & (\SW~combout\(10) & ((\SW~combout\(8)) # (!\SW~combout\(7))))) # (!\SW~combout\(9) & (!\SW~combout\(7) & (\SW~combout\(8) & !\SW~combout\(10))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101000000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW~combout\(7),
	datab => \SW~combout\(8),
	datac => \SW~combout\(9),
	datad => \SW~combout\(10),
	combout => \H1|WideOr2~0_combout\);

-- Location: LCCOMB_X36_Y6_N20
\H1|WideOr1~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \H1|WideOr1~0_combout\ = (\SW~combout\(8) & ((\SW~combout\(7) & ((\SW~combout\(10)))) # (!\SW~combout\(7) & (\SW~combout\(9))))) # (!\SW~combout\(8) & (\SW~combout\(9) & (\SW~combout\(7) $ (\SW~combout\(10)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100001100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW~combout\(7),
	datab => \SW~combout\(8),
	datac => \SW~combout\(9),
	datad => \SW~combout\(10),
	combout => \H1|WideOr1~0_combout\);

-- Location: LCCOMB_X36_Y6_N22
\H1|WideOr0~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \H1|WideOr0~0_combout\ = (\SW~combout\(9) & (!\SW~combout\(8) & (\SW~combout\(7) $ (!\SW~combout\(10))))) # (!\SW~combout\(9) & (\SW~combout\(7) & (\SW~combout\(8) $ (!\SW~combout\(10)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010100000010010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW~combout\(7),
	datab => \SW~combout\(8),
	datac => \SW~combout\(9),
	datad => \SW~combout\(10),
	combout => \H1|WideOr0~0_combout\);

-- Location: LCCOMB_X33_Y6_N24
\I1|Mux12~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \I1|Mux12~0_combout\ = (\SW~combout\(1) & !\SW~combout\(2))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW~combout\(1),
	datad => \SW~combout\(2),
	combout => \I1|Mux12~0_combout\);

-- Location: LCCOMB_X32_Y3_N30
\I1|Mux14~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \I1|Mux14~2_combout\ = \I1|Mux14~1_combout\ $ (((\SW~combout\(0) & (\SW~combout\(3) & \SW~combout\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \I1|Mux14~1_combout\,
	datab => \SW~combout\(0),
	datac => \SW~combout\(3),
	datad => \SW~combout\(1),
	combout => \I1|Mux14~2_combout\);

-- Location: LCCOMB_X33_Y6_N12
\I1|Mux12~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \I1|Mux12~2_combout\ = (\SW~combout\(2)) # ((\SW~combout\(1) & \SW~combout\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW~combout\(1),
	datab => \SW~combout\(0),
	datad => \SW~combout\(2),
	combout => \I1|Mux12~2_combout\);

-- Location: LCCOMB_X36_Y6_N2
\I1|Add0~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \I1|Add0~2_combout\ = (\SW~combout\(4) & ((\SW~combout\(8) & (\I1|Add0~1\ & VCC)) # (!\SW~combout\(8) & (!\I1|Add0~1\)))) # (!\SW~combout\(4) & ((\SW~combout\(8) & (!\I1|Add0~1\)) # (!\SW~combout\(8) & ((\I1|Add0~1\) # (GND)))))
-- \I1|Add0~3\ = CARRY((\SW~combout\(4) & (!\SW~combout\(8) & !\I1|Add0~1\)) # (!\SW~combout\(4) & ((!\I1|Add0~1\) # (!\SW~combout\(8)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \SW~combout\(4),
	datab => \SW~combout\(8),
	datad => VCC,
	cin => \I1|Add0~1\,
	combout => \I1|Add0~2_combout\,
	cout => \I1|Add0~3\);

-- Location: LCCOMB_X36_Y6_N16
\I1|Mux14~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \I1|Mux14~0_combout\ = (\I1|Mux12~1_combout\ & ((\I1|Mux12~2_combout\ & (\I1|Mux14~2_combout\)) # (!\I1|Mux12~2_combout\ & ((\I1|Add0~2_combout\))))) # (!\I1|Mux12~1_combout\ & (((\I1|Mux12~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101101011010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \I1|Mux12~1_combout\,
	datab => \I1|Mux14~2_combout\,
	datac => \I1|Mux12~2_combout\,
	datad => \I1|Add0~2_combout\,
	combout => \I1|Mux14~0_combout\);

-- Location: LCCOMB_X32_Y6_N16
\I1|Mux14\ : cycloneii_lcell_comb
-- Equation(s):
-- \I1|Mux14~combout\ = (\I1|Mux12~0_combout\ & ((\I1|Mux14~0_combout\ & ((\SW~combout\(4)))) # (!\I1|Mux14~0_combout\ & (\I1|Add1~2_combout\)))) # (!\I1|Mux12~0_combout\ & (((\I1|Mux14~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \I1|Add1~2_combout\,
	datab => \I1|Mux12~0_combout\,
	datac => \SW~combout\(4),
	datad => \I1|Mux14~0_combout\,
	combout => \I1|Mux14~combout\);

-- Location: LCCOMB_X32_Y6_N8
\I1|Add1~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \I1|Add1~4_combout\ = ((\SW~combout\(5) $ (\SW~combout\(9) $ (\I1|Add1~3\)))) # (GND)
-- \I1|Add1~5\ = CARRY((\SW~combout\(5) & ((!\I1|Add1~3\) # (!\SW~combout\(9)))) # (!\SW~combout\(5) & (!\SW~combout\(9) & !\I1|Add1~3\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \SW~combout\(5),
	datab => \SW~combout\(9),
	datad => VCC,
	cin => \I1|Add1~3\,
	combout => \I1|Add1~4_combout\,
	cout => \I1|Add1~5\);

-- Location: LCCOMB_X32_Y6_N26
\I1|Mux13\ : cycloneii_lcell_comb
-- Equation(s):
-- \I1|Mux13~combout\ = (\I1|Mux13~3_combout\ & (((\SW~combout\(5)) # (!\I1|Mux12~0_combout\)))) # (!\I1|Mux13~3_combout\ & (\I1|Add1~4_combout\ & ((\I1|Mux12~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \I1|Mux13~3_combout\,
	datab => \I1|Add1~4_combout\,
	datac => \SW~combout\(5),
	datad => \I1|Mux12~0_combout\,
	combout => \I1|Mux13~combout\);

-- Location: LCCOMB_X32_Y3_N22
\I1|Mux12~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \I1|Mux12~4_combout\ = (\SW~combout\(6) & (\SW~combout\(1) $ (((\SW~combout\(0)) # (!\SW~combout\(10)))))) # (!\SW~combout\(6) & ((\SW~combout\(1) & ((\SW~combout\(0)))) # (!\SW~combout\(1) & (\SW~combout\(10)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111011010010100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW~combout\(1),
	datab => \SW~combout\(6),
	datac => \SW~combout\(10),
	datad => \SW~combout\(0),
	combout => \I1|Mux12~4_combout\);

-- Location: LCCOMB_X32_Y3_N4
\I1|Mux12~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \I1|Mux12~3_combout\ = ((\SW~combout\(4) & (\SW~combout\(3) & \SW~combout\(5)))) # (!\SW~combout\(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW~combout\(4),
	datab => \SW~combout\(3),
	datac => \SW~combout\(5),
	datad => \SW~combout\(1),
	combout => \I1|Mux12~3_combout\);

-- Location: LCCOMB_X32_Y3_N16
\I1|Mux12~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \I1|Mux12~5_combout\ = \I1|Mux12~4_combout\ $ (((!\I1|Mux12~3_combout\ & \SW~combout\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \I1|Mux12~4_combout\,
	datac => \I1|Mux12~3_combout\,
	datad => \SW~combout\(0),
	combout => \I1|Mux12~5_combout\);

-- Location: LCCOMB_X36_Y6_N28
\I1|Mux12~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \I1|Mux12~6_combout\ = (\I1|Mux12~1_combout\ & ((\I1|Mux12~2_combout\ & (\I1|Mux12~5_combout\)) # (!\I1|Mux12~2_combout\ & ((\I1|Add0~6_combout\))))) # (!\I1|Mux12~1_combout\ & (\I1|Mux12~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110011011000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \I1|Mux12~1_combout\,
	datab => \I1|Mux12~2_combout\,
	datac => \I1|Mux12~5_combout\,
	datad => \I1|Add0~6_combout\,
	combout => \I1|Mux12~6_combout\);

-- Location: LCCOMB_X32_Y6_N24
\I1|Mux12\ : cycloneii_lcell_comb
-- Equation(s):
-- \I1|Mux12~combout\ = (\I1|Mux12~0_combout\ & ((\I1|Mux12~6_combout\ & ((\SW~combout\(6)))) # (!\I1|Mux12~6_combout\ & (\I1|Add1~6_combout\)))) # (!\I1|Mux12~0_combout\ & (((\I1|Mux12~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \I1|Add1~6_combout\,
	datab => \I1|Mux12~0_combout\,
	datac => \SW~combout\(6),
	datad => \I1|Mux12~6_combout\,
	combout => \I1|Mux12~combout\);

-- Location: LCCOMB_X33_Y6_N28
\I1|Mux15~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \I1|Mux15~2_combout\ = (\SW~combout\(0) & (\SW~combout\(2) $ (((\SW~combout\(1) & \SW~combout\(3)))))) # (!\SW~combout\(0) & (\SW~combout\(1) & (\SW~combout\(3) & \SW~combout\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110110010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW~combout\(1),
	datab => \SW~combout\(0),
	datac => \SW~combout\(3),
	datad => \SW~combout\(2),
	combout => \I1|Mux15~2_combout\);

-- Location: LCCOMB_X33_Y6_N26
\I1|Mux15~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \I1|Mux15~1_combout\ = (\SW~combout\(1) & (\SW~combout\(2) $ (((\SW~combout\(3)) # (!\SW~combout\(0)))))) # (!\SW~combout\(1) & ((\SW~combout\(0) & ((\SW~combout\(3)) # (!\SW~combout\(2)))) # (!\SW~combout\(0) & ((\SW~combout\(2))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101100111100110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW~combout\(1),
	datab => \SW~combout\(0),
	datac => \SW~combout\(3),
	datad => \SW~combout\(2),
	combout => \I1|Mux15~1_combout\);

-- Location: LCCOMB_X33_Y6_N30
\I1|Mux15~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \I1|Mux15~3_combout\ = (\I1|Mux15~2_combout\ & (((\SW~combout\(7)) # (\I1|Mux15~1_combout\)))) # (!\I1|Mux15~2_combout\ & (\I1|Mux15~0_combout\ & ((\I1|Mux15~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \I1|Mux15~0_combout\,
	datab => \I1|Mux15~2_combout\,
	datac => \SW~combout\(7),
	datad => \I1|Mux15~1_combout\,
	combout => \I1|Mux15~3_combout\);

-- Location: LCCOMB_X32_Y6_N18
\H4|WideOr6~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \H4|WideOr6~0_combout\ = (\I1|Mux15~3_combout\ & ((\I1|Mux12~combout\) # (\I1|Mux14~combout\ $ (\I1|Mux13~combout\)))) # (!\I1|Mux15~3_combout\ & ((\I1|Mux14~combout\) # (\I1|Mux13~combout\ $ (\I1|Mux12~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111011010111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \I1|Mux14~combout\,
	datab => \I1|Mux13~combout\,
	datac => \I1|Mux12~combout\,
	datad => \I1|Mux15~3_combout\,
	combout => \H4|WideOr6~0_combout\);

-- Location: LCCOMB_X32_Y6_N20
\H4|WideOr5~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \H4|WideOr5~0_combout\ = (\I1|Mux14~combout\ & (!\I1|Mux12~combout\ & ((\I1|Mux15~3_combout\) # (!\I1|Mux13~combout\)))) # (!\I1|Mux14~combout\ & (\I1|Mux15~3_combout\ & (\I1|Mux13~combout\ $ (!\I1|Mux12~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100101100000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \I1|Mux14~combout\,
	datab => \I1|Mux13~combout\,
	datac => \I1|Mux12~combout\,
	datad => \I1|Mux15~3_combout\,
	combout => \H4|WideOr5~0_combout\);

-- Location: LCCOMB_X32_Y6_N22
\H4|WideOr4~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \H4|WideOr4~0_combout\ = (\I1|Mux14~combout\ & (((!\I1|Mux12~combout\ & \I1|Mux15~3_combout\)))) # (!\I1|Mux14~combout\ & ((\I1|Mux13~combout\ & (!\I1|Mux12~combout\)) # (!\I1|Mux13~combout\ & ((\I1|Mux15~3_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001111100000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \I1|Mux14~combout\,
	datab => \I1|Mux13~combout\,
	datac => \I1|Mux12~combout\,
	datad => \I1|Mux15~3_combout\,
	combout => \H4|WideOr4~0_combout\);

-- Location: LCCOMB_X32_Y6_N0
\H4|WideOr3~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \H4|WideOr3~0_combout\ = (\I1|Mux14~combout\ & ((\I1|Mux13~combout\ & ((\I1|Mux15~3_combout\))) # (!\I1|Mux13~combout\ & (\I1|Mux12~combout\ & !\I1|Mux15~3_combout\)))) # (!\I1|Mux14~combout\ & (!\I1|Mux12~combout\ & (\I1|Mux13~combout\ $ 
-- (\I1|Mux15~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100100100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \I1|Mux14~combout\,
	datab => \I1|Mux13~combout\,
	datac => \I1|Mux12~combout\,
	datad => \I1|Mux15~3_combout\,
	combout => \H4|WideOr3~0_combout\);

-- Location: LCCOMB_X32_Y6_N2
\H4|WideOr2~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \H4|WideOr2~0_combout\ = (\I1|Mux13~combout\ & (\I1|Mux12~combout\ & ((\I1|Mux14~combout\) # (!\I1|Mux15~3_combout\)))) # (!\I1|Mux13~combout\ & (\I1|Mux14~combout\ & (!\I1|Mux12~combout\ & !\I1|Mux15~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000011000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \I1|Mux14~combout\,
	datab => \I1|Mux13~combout\,
	datac => \I1|Mux12~combout\,
	datad => \I1|Mux15~3_combout\,
	combout => \H4|WideOr2~0_combout\);

-- Location: LCCOMB_X32_Y6_N28
\H4|WideOr1~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \H4|WideOr1~0_combout\ = (\I1|Mux14~combout\ & ((\I1|Mux15~3_combout\ & ((\I1|Mux12~combout\))) # (!\I1|Mux15~3_combout\ & (\I1|Mux13~combout\)))) # (!\I1|Mux14~combout\ & (\I1|Mux13~combout\ & (\I1|Mux12~combout\ $ (\I1|Mux15~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010011001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \I1|Mux14~combout\,
	datab => \I1|Mux13~combout\,
	datac => \I1|Mux12~combout\,
	datad => \I1|Mux15~3_combout\,
	combout => \H4|WideOr1~0_combout\);

-- Location: LCCOMB_X32_Y6_N30
\H4|WideOr0~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \H4|WideOr0~0_combout\ = (\I1|Mux13~combout\ & (!\I1|Mux14~combout\ & (\I1|Mux12~combout\ $ (!\I1|Mux15~3_combout\)))) # (!\I1|Mux13~combout\ & (\I1|Mux15~3_combout\ & (\I1|Mux14~combout\ $ (!\I1|Mux12~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110000100000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \I1|Mux14~combout\,
	datab => \I1|Mux13~combout\,
	datac => \I1|Mux12~combout\,
	datad => \I1|Mux15~3_combout\,
	combout => \H4|WideOr0~0_combout\);

-- Location: LCCOMB_X32_Y6_N14
\I1|Add1~10\ : cycloneii_lcell_comb
-- Equation(s):
-- \I1|Add1~10_combout\ = !\I1|Add1~9\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \I1|Add1~9\,
	combout => \I1|Add1~10_combout\);

-- Location: LCCOMB_X33_Y6_N4
\I1|Mux8~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \I1|Mux8~2_combout\ = (\I1|Add1~10_combout\ & (!\SW~combout\(0) & (\SW~combout\(1) & !\SW~combout\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \I1|Add1~10_combout\,
	datab => \SW~combout\(0),
	datac => \SW~combout\(1),
	datad => \SW~combout\(2),
	combout => \I1|Mux8~2_combout\);

-- Location: LCCOMB_X32_Y3_N2
\I1|Mux11~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \I1|Mux11~0_combout\ = (\SW~combout\(4) & (\SW~combout\(3) & (\SW~combout\(5) & \SW~combout\(6))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW~combout\(4),
	datab => \SW~combout\(3),
	datac => \SW~combout\(5),
	datad => \SW~combout\(6),
	combout => \I1|Mux11~0_combout\);

-- Location: LCCOMB_X33_Y6_N22
\I1|Mux11~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \I1|Mux11~1_combout\ = (\SW~combout\(1) & (((\I1|Mux11~0_combout\ & \SW~combout\(2))))) # (!\SW~combout\(1) & (\I1|Add0~8_combout\ & ((!\SW~combout\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \I1|Add0~8_combout\,
	datab => \SW~combout\(1),
	datac => \I1|Mux11~0_combout\,
	datad => \SW~combout\(2),
	combout => \I1|Mux11~1_combout\);

-- Location: LCCOMB_X33_Y6_N0
\I1|Mux11~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \I1|Mux11~2_combout\ = (\SW~combout\(0) & (((\I1|Mux11~1_combout\)))) # (!\SW~combout\(0) & (\I1|Add1~8_combout\ & ((\I1|Mux12~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \I1|Add1~8_combout\,
	datab => \I1|Mux11~1_combout\,
	datac => \I1|Mux12~0_combout\,
	datad => \SW~combout\(0),
	combout => \I1|Mux11~2_combout\);

-- Location: LCCOMB_X33_Y6_N10
\H5|Decoder0~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \H5|Decoder0~0_combout\ = (\I1|Mux11~2_combout\ & (((\SW~combout\(0)) # (!\I1|Mux12~0_combout\)) # (!\I1|Add1~10_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110001001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \I1|Add1~10_combout\,
	datab => \I1|Mux11~2_combout\,
	datac => \I1|Mux12~0_combout\,
	datad => \SW~combout\(0),
	combout => \H5|Decoder0~0_combout\);

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
	datain => \I1|ALT_INV_Mux8~2_combout\,
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
	datain => \H5|Decoder0~0_combout\,
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
	datain => \I1|Mux11~2_combout\,
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
	datain => \I1|Mux8~2_combout\,
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
	datain => \I1|Mux8~2_combout\,
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
	datain => \H5|Decoder0~0_combout\,
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
	datain => \I1|ALT_INV_Mux8~2_combout\,
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
	datain => \I1|Mux8~2_combout\,
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
	datain => \I1|Mux8~2_combout\,
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
	datain => \I1|Mux8~2_combout\,
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
	datain => \I1|ALT_INV_Mux8~2_combout\,
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
	datain => \I1|Mux8~2_combout\,
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
	datain => \I1|Mux8~2_combout\,
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
	datain => \I1|Mux8~2_combout\,
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


