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

-- DATE "05/05/2014 18:36:08"

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
	KEY : IN std_logic_vector(0 DOWNTO 0);
	SW : IN std_logic_vector(1 DOWNTO 0);
	HEX3 : OUT std_logic_vector(0 TO 6);
	HEX2 : OUT std_logic_vector(0 TO 6);
	HEX1 : OUT std_logic_vector(0 TO 6);
	HEX0 : OUT std_logic_vector(0 TO 6)
	);
END Part2;

-- Design Ports Information
-- HEX3[6]	=>  Location: PIN_W24,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- HEX3[5]	=>  Location: PIN_U22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- HEX3[4]	=>  Location: PIN_Y25,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- HEX3[3]	=>  Location: PIN_Y26,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- HEX3[2]	=>  Location: PIN_AA26,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- HEX3[1]	=>  Location: PIN_AA25,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- HEX3[0]	=>  Location: PIN_Y23,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- HEX2[6]	=>  Location: PIN_Y24,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- HEX2[5]	=>  Location: PIN_AB25,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- HEX2[4]	=>  Location: PIN_AB26,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- HEX2[3]	=>  Location: PIN_AC26,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- HEX2[2]	=>  Location: PIN_AC25,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- HEX2[1]	=>  Location: PIN_V22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- HEX2[0]	=>  Location: PIN_AB23,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- HEX1[6]	=>  Location: PIN_AB24,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- HEX1[5]	=>  Location: PIN_AA23,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- HEX1[4]	=>  Location: PIN_AA24,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- HEX1[3]	=>  Location: PIN_Y22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- HEX1[2]	=>  Location: PIN_W21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- HEX1[1]	=>  Location: PIN_V21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- HEX1[0]	=>  Location: PIN_V20,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- HEX0[6]	=>  Location: PIN_V13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- HEX0[5]	=>  Location: PIN_V14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- HEX0[4]	=>  Location: PIN_AE11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- HEX0[3]	=>  Location: PIN_AD11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- HEX0[2]	=>  Location: PIN_AC12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- HEX0[1]	=>  Location: PIN_AB12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- HEX0[0]	=>  Location: PIN_AF10,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- KEY[0]	=>  Location: PIN_G26,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- SW[1]	=>  Location: PIN_N26,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- SW[0]	=>  Location: PIN_N25,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default


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
SIGNAL ww_KEY : std_logic_vector(0 DOWNTO 0);
SIGNAL ww_SW : std_logic_vector(1 DOWNTO 0);
SIGNAL ww_HEX3 : std_logic_vector(0 TO 6);
SIGNAL ww_HEX2 : std_logic_vector(0 TO 6);
SIGNAL ww_HEX1 : std_logic_vector(0 TO 6);
SIGNAL ww_HEX0 : std_logic_vector(0 TO 6);
SIGNAL \U1|Q[0]~16_combout\ : std_logic;
SIGNAL \U1|Q[12]~48_combout\ : std_logic;
SIGNAL \U1|Q[0]~17\ : std_logic;
SIGNAL \U1|Q[1]~18_combout\ : std_logic;
SIGNAL \U1|Q[1]~19\ : std_logic;
SIGNAL \U1|Q[2]~20_combout\ : std_logic;
SIGNAL \U1|Q[2]~21\ : std_logic;
SIGNAL \U1|Q[3]~23\ : std_logic;
SIGNAL \U1|Q[4]~24_combout\ : std_logic;
SIGNAL \U1|Q[4]~25\ : std_logic;
SIGNAL \U1|Q[5]~27\ : std_logic;
SIGNAL \U1|Q[6]~29\ : std_logic;
SIGNAL \U1|Q[7]~30_combout\ : std_logic;
SIGNAL \U1|Q[7]~31\ : std_logic;
SIGNAL \U1|Q[8]~33\ : std_logic;
SIGNAL \U1|Q[9]~34_combout\ : std_logic;
SIGNAL \U1|Q[9]~35\ : std_logic;
SIGNAL \U1|Q[10]~37\ : std_logic;
SIGNAL \U1|Q[11]~38_combout\ : std_logic;
SIGNAL \U1|Q[11]~39\ : std_logic;
SIGNAL \U1|Q[12]~40_combout\ : std_logic;
SIGNAL \U1|Q[12]~41\ : std_logic;
SIGNAL \U1|Q[13]~42_combout\ : std_logic;
SIGNAL \U1|Q[13]~43\ : std_logic;
SIGNAL \U1|Q[14]~44_combout\ : std_logic;
SIGNAL \U1|Q[14]~45\ : std_logic;
SIGNAL \U1|Q[15]~46_combout\ : std_logic;
SIGNAL \H3|Add25~0_combout\ : std_logic;
SIGNAL \H3|Add22~0_combout\ : std_logic;
SIGNAL \H3|Add18~0_combout\ : std_logic;
SIGNAL \H3|Add13~0_combout\ : std_logic;
SIGNAL \H3|Add10~0_combout\ : std_logic;
SIGNAL \H3|Add7~0_combout\ : std_logic;
SIGNAL \H3|Add2~0_combout\ : std_logic;
SIGNAL \U1|Q[10]~36_combout\ : std_logic;
SIGNAL \U1|Q[8]~32_combout\ : std_logic;
SIGNAL \H2|Add25~0_combout\ : std_logic;
SIGNAL \H2|Add22~0_combout\ : std_logic;
SIGNAL \H2|Add18~0_combout\ : std_logic;
SIGNAL \H2|Add13~0_combout\ : std_logic;
SIGNAL \H2|Add10~0_combout\ : std_logic;
SIGNAL \H2|Add7~0_combout\ : std_logic;
SIGNAL \H2|Add2~0_combout\ : std_logic;
SIGNAL \U1|Q[5]~26_combout\ : std_logic;
SIGNAL \U1|Q[6]~28_combout\ : std_logic;
SIGNAL \H1|Add25~0_combout\ : std_logic;
SIGNAL \H1|Add22~0_combout\ : std_logic;
SIGNAL \H1|Add18~0_combout\ : std_logic;
SIGNAL \H1|Add13~0_combout\ : std_logic;
SIGNAL \H1|Add10~0_combout\ : std_logic;
SIGNAL \H1|Add7~0_combout\ : std_logic;
SIGNAL \H1|Add2~0_combout\ : std_logic;
SIGNAL \U1|Q[3]~22_combout\ : std_logic;
SIGNAL \H0|Add25~0_combout\ : std_logic;
SIGNAL \H0|Add22~0_combout\ : std_logic;
SIGNAL \H0|Add18~0_combout\ : std_logic;
SIGNAL \H0|Add13~0_combout\ : std_logic;
SIGNAL \H0|Add10~0_combout\ : std_logic;
SIGNAL \H0|Add7~0_combout\ : std_logic;
SIGNAL \H0|Add2~0_combout\ : std_logic;
SIGNAL \KEY~combout\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \U1|Q\ : std_logic_vector(15 DOWNTO 0);
SIGNAL \SW~combout\ : std_logic_vector(1 DOWNTO 0);
SIGNAL \H0|ALT_INV_Add2~0_combout\ : std_logic;
SIGNAL \H0|ALT_INV_Add13~0_combout\ : std_logic;
SIGNAL \H0|ALT_INV_Add18~0_combout\ : std_logic;
SIGNAL \H0|ALT_INV_Add25~0_combout\ : std_logic;
SIGNAL \H1|ALT_INV_Add2~0_combout\ : std_logic;
SIGNAL \H1|ALT_INV_Add13~0_combout\ : std_logic;
SIGNAL \H1|ALT_INV_Add18~0_combout\ : std_logic;
SIGNAL \H1|ALT_INV_Add25~0_combout\ : std_logic;
SIGNAL \H2|ALT_INV_Add2~0_combout\ : std_logic;
SIGNAL \H2|ALT_INV_Add13~0_combout\ : std_logic;
SIGNAL \H2|ALT_INV_Add18~0_combout\ : std_logic;
SIGNAL \H2|ALT_INV_Add25~0_combout\ : std_logic;
SIGNAL \H3|ALT_INV_Add2~0_combout\ : std_logic;
SIGNAL \H3|ALT_INV_Add13~0_combout\ : std_logic;
SIGNAL \H3|ALT_INV_Add18~0_combout\ : std_logic;
SIGNAL \H3|ALT_INV_Add25~0_combout\ : std_logic;

BEGIN

ww_KEY <= KEY;
ww_SW <= SW;
HEX3 <= ww_HEX3;
HEX2 <= ww_HEX2;
HEX1 <= ww_HEX1;
HEX0 <= ww_HEX0;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;
\H0|ALT_INV_Add2~0_combout\ <= NOT \H0|Add2~0_combout\;
\H0|ALT_INV_Add13~0_combout\ <= NOT \H0|Add13~0_combout\;
\H0|ALT_INV_Add18~0_combout\ <= NOT \H0|Add18~0_combout\;
\H0|ALT_INV_Add25~0_combout\ <= NOT \H0|Add25~0_combout\;
\H1|ALT_INV_Add2~0_combout\ <= NOT \H1|Add2~0_combout\;
\H1|ALT_INV_Add13~0_combout\ <= NOT \H1|Add13~0_combout\;
\H1|ALT_INV_Add18~0_combout\ <= NOT \H1|Add18~0_combout\;
\H1|ALT_INV_Add25~0_combout\ <= NOT \H1|Add25~0_combout\;
\H2|ALT_INV_Add2~0_combout\ <= NOT \H2|Add2~0_combout\;
\H2|ALT_INV_Add13~0_combout\ <= NOT \H2|Add13~0_combout\;
\H2|ALT_INV_Add18~0_combout\ <= NOT \H2|Add18~0_combout\;
\H2|ALT_INV_Add25~0_combout\ <= NOT \H2|Add25~0_combout\;
\H3|ALT_INV_Add2~0_combout\ <= NOT \H3|Add2~0_combout\;
\H3|ALT_INV_Add13~0_combout\ <= NOT \H3|Add13~0_combout\;
\H3|ALT_INV_Add18~0_combout\ <= NOT \H3|Add18~0_combout\;
\H3|ALT_INV_Add25~0_combout\ <= NOT \H3|Add25~0_combout\;

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

-- Location: LCCOMB_X64_Y7_N0
\U1|Q[0]~16\ : cycloneii_lcell_comb
-- Equation(s):
-- \U1|Q[0]~16_combout\ = \U1|Q\(0) $ (VCC)
-- \U1|Q[0]~17\ = CARRY(\U1|Q\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \U1|Q\(0),
	datad => VCC,
	combout => \U1|Q[0]~16_combout\,
	cout => \U1|Q[0]~17\);

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

-- Location: LCCOMB_X64_Y15_N16
\U1|Q[12]~48\ : cycloneii_lcell_comb
-- Equation(s):
-- \U1|Q[12]~48_combout\ = (\SW~combout\(0)) # (\SW~combout\(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \SW~combout\(0),
	datad => \SW~combout\(1),
	combout => \U1|Q[12]~48_combout\);

-- Location: LCFF_X64_Y7_N1
\U1|Q[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \KEY~combout\(0),
	datain => \U1|Q[0]~16_combout\,
	sclr => \SW~combout\(1),
	ena => \U1|Q[12]~48_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \U1|Q\(0));

-- Location: LCCOMB_X64_Y7_N2
\U1|Q[1]~18\ : cycloneii_lcell_comb
-- Equation(s):
-- \U1|Q[1]~18_combout\ = (\U1|Q\(1) & (!\U1|Q[0]~17\)) # (!\U1|Q\(1) & ((\U1|Q[0]~17\) # (GND)))
-- \U1|Q[1]~19\ = CARRY((!\U1|Q[0]~17\) # (!\U1|Q\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \U1|Q\(1),
	datad => VCC,
	cin => \U1|Q[0]~17\,
	combout => \U1|Q[1]~18_combout\,
	cout => \U1|Q[1]~19\);

-- Location: LCFF_X64_Y7_N3
\U1|Q[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \KEY~combout\(0),
	datain => \U1|Q[1]~18_combout\,
	sclr => \SW~combout\(1),
	ena => \U1|Q[12]~48_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \U1|Q\(1));

-- Location: LCCOMB_X64_Y7_N4
\U1|Q[2]~20\ : cycloneii_lcell_comb
-- Equation(s):
-- \U1|Q[2]~20_combout\ = (\U1|Q\(2) & (\U1|Q[1]~19\ $ (GND))) # (!\U1|Q\(2) & (!\U1|Q[1]~19\ & VCC))
-- \U1|Q[2]~21\ = CARRY((\U1|Q\(2) & !\U1|Q[1]~19\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \U1|Q\(2),
	datad => VCC,
	cin => \U1|Q[1]~19\,
	combout => \U1|Q[2]~20_combout\,
	cout => \U1|Q[2]~21\);

-- Location: LCFF_X64_Y7_N5
\U1|Q[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \KEY~combout\(0),
	datain => \U1|Q[2]~20_combout\,
	sclr => \SW~combout\(1),
	ena => \U1|Q[12]~48_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \U1|Q\(2));

-- Location: LCCOMB_X64_Y7_N6
\U1|Q[3]~22\ : cycloneii_lcell_comb
-- Equation(s):
-- \U1|Q[3]~22_combout\ = (\U1|Q\(3) & (!\U1|Q[2]~21\)) # (!\U1|Q\(3) & ((\U1|Q[2]~21\) # (GND)))
-- \U1|Q[3]~23\ = CARRY((!\U1|Q[2]~21\) # (!\U1|Q\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U1|Q\(3),
	datad => VCC,
	cin => \U1|Q[2]~21\,
	combout => \U1|Q[3]~22_combout\,
	cout => \U1|Q[3]~23\);

-- Location: LCCOMB_X64_Y7_N8
\U1|Q[4]~24\ : cycloneii_lcell_comb
-- Equation(s):
-- \U1|Q[4]~24_combout\ = (\U1|Q\(4) & (\U1|Q[3]~23\ $ (GND))) # (!\U1|Q\(4) & (!\U1|Q[3]~23\ & VCC))
-- \U1|Q[4]~25\ = CARRY((\U1|Q\(4) & !\U1|Q[3]~23\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \U1|Q\(4),
	datad => VCC,
	cin => \U1|Q[3]~23\,
	combout => \U1|Q[4]~24_combout\,
	cout => \U1|Q[4]~25\);

-- Location: LCFF_X64_Y7_N9
\U1|Q[4]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \KEY~combout\(0),
	datain => \U1|Q[4]~24_combout\,
	sclr => \SW~combout\(1),
	ena => \U1|Q[12]~48_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \U1|Q\(4));

-- Location: LCCOMB_X64_Y7_N10
\U1|Q[5]~26\ : cycloneii_lcell_comb
-- Equation(s):
-- \U1|Q[5]~26_combout\ = (\U1|Q\(5) & (!\U1|Q[4]~25\)) # (!\U1|Q\(5) & ((\U1|Q[4]~25\) # (GND)))
-- \U1|Q[5]~27\ = CARRY((!\U1|Q[4]~25\) # (!\U1|Q\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U1|Q\(5),
	datad => VCC,
	cin => \U1|Q[4]~25\,
	combout => \U1|Q[5]~26_combout\,
	cout => \U1|Q[5]~27\);

-- Location: LCCOMB_X64_Y7_N12
\U1|Q[6]~28\ : cycloneii_lcell_comb
-- Equation(s):
-- \U1|Q[6]~28_combout\ = (\U1|Q\(6) & (\U1|Q[5]~27\ $ (GND))) # (!\U1|Q\(6) & (!\U1|Q[5]~27\ & VCC))
-- \U1|Q[6]~29\ = CARRY((\U1|Q\(6) & !\U1|Q[5]~27\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U1|Q\(6),
	datad => VCC,
	cin => \U1|Q[5]~27\,
	combout => \U1|Q[6]~28_combout\,
	cout => \U1|Q[6]~29\);

-- Location: LCCOMB_X64_Y7_N14
\U1|Q[7]~30\ : cycloneii_lcell_comb
-- Equation(s):
-- \U1|Q[7]~30_combout\ = (\U1|Q\(7) & (!\U1|Q[6]~29\)) # (!\U1|Q\(7) & ((\U1|Q[6]~29\) # (GND)))
-- \U1|Q[7]~31\ = CARRY((!\U1|Q[6]~29\) # (!\U1|Q\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \U1|Q\(7),
	datad => VCC,
	cin => \U1|Q[6]~29\,
	combout => \U1|Q[7]~30_combout\,
	cout => \U1|Q[7]~31\);

-- Location: LCFF_X64_Y7_N15
\U1|Q[7]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \KEY~combout\(0),
	datain => \U1|Q[7]~30_combout\,
	sclr => \SW~combout\(1),
	ena => \U1|Q[12]~48_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \U1|Q\(7));

-- Location: LCCOMB_X64_Y7_N16
\U1|Q[8]~32\ : cycloneii_lcell_comb
-- Equation(s):
-- \U1|Q[8]~32_combout\ = (\U1|Q\(8) & (\U1|Q[7]~31\ $ (GND))) # (!\U1|Q\(8) & (!\U1|Q[7]~31\ & VCC))
-- \U1|Q[8]~33\ = CARRY((\U1|Q\(8) & !\U1|Q[7]~31\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U1|Q\(8),
	datad => VCC,
	cin => \U1|Q[7]~31\,
	combout => \U1|Q[8]~32_combout\,
	cout => \U1|Q[8]~33\);

-- Location: LCCOMB_X64_Y7_N18
\U1|Q[9]~34\ : cycloneii_lcell_comb
-- Equation(s):
-- \U1|Q[9]~34_combout\ = (\U1|Q\(9) & (!\U1|Q[8]~33\)) # (!\U1|Q\(9) & ((\U1|Q[8]~33\) # (GND)))
-- \U1|Q[9]~35\ = CARRY((!\U1|Q[8]~33\) # (!\U1|Q\(9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \U1|Q\(9),
	datad => VCC,
	cin => \U1|Q[8]~33\,
	combout => \U1|Q[9]~34_combout\,
	cout => \U1|Q[9]~35\);

-- Location: LCFF_X64_Y7_N19
\U1|Q[9]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \KEY~combout\(0),
	datain => \U1|Q[9]~34_combout\,
	sclr => \SW~combout\(1),
	ena => \U1|Q[12]~48_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \U1|Q\(9));

-- Location: LCCOMB_X64_Y7_N20
\U1|Q[10]~36\ : cycloneii_lcell_comb
-- Equation(s):
-- \U1|Q[10]~36_combout\ = (\U1|Q\(10) & (\U1|Q[9]~35\ $ (GND))) # (!\U1|Q\(10) & (!\U1|Q[9]~35\ & VCC))
-- \U1|Q[10]~37\ = CARRY((\U1|Q\(10) & !\U1|Q[9]~35\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U1|Q\(10),
	datad => VCC,
	cin => \U1|Q[9]~35\,
	combout => \U1|Q[10]~36_combout\,
	cout => \U1|Q[10]~37\);

-- Location: LCCOMB_X64_Y7_N22
\U1|Q[11]~38\ : cycloneii_lcell_comb
-- Equation(s):
-- \U1|Q[11]~38_combout\ = (\U1|Q\(11) & (!\U1|Q[10]~37\)) # (!\U1|Q\(11) & ((\U1|Q[10]~37\) # (GND)))
-- \U1|Q[11]~39\ = CARRY((!\U1|Q[10]~37\) # (!\U1|Q\(11)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \U1|Q\(11),
	datad => VCC,
	cin => \U1|Q[10]~37\,
	combout => \U1|Q[11]~38_combout\,
	cout => \U1|Q[11]~39\);

-- Location: LCFF_X64_Y7_N23
\U1|Q[11]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \KEY~combout\(0),
	datain => \U1|Q[11]~38_combout\,
	sclr => \SW~combout\(1),
	ena => \U1|Q[12]~48_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \U1|Q\(11));

-- Location: LCCOMB_X64_Y7_N24
\U1|Q[12]~40\ : cycloneii_lcell_comb
-- Equation(s):
-- \U1|Q[12]~40_combout\ = (\U1|Q\(12) & (\U1|Q[11]~39\ $ (GND))) # (!\U1|Q\(12) & (!\U1|Q[11]~39\ & VCC))
-- \U1|Q[12]~41\ = CARRY((\U1|Q\(12) & !\U1|Q[11]~39\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U1|Q\(12),
	datad => VCC,
	cin => \U1|Q[11]~39\,
	combout => \U1|Q[12]~40_combout\,
	cout => \U1|Q[12]~41\);

-- Location: LCFF_X64_Y7_N25
\U1|Q[12]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \KEY~combout\(0),
	datain => \U1|Q[12]~40_combout\,
	sclr => \SW~combout\(1),
	ena => \U1|Q[12]~48_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \U1|Q\(12));

-- Location: LCCOMB_X64_Y7_N26
\U1|Q[13]~42\ : cycloneii_lcell_comb
-- Equation(s):
-- \U1|Q[13]~42_combout\ = (\U1|Q\(13) & (!\U1|Q[12]~41\)) # (!\U1|Q\(13) & ((\U1|Q[12]~41\) # (GND)))
-- \U1|Q[13]~43\ = CARRY((!\U1|Q[12]~41\) # (!\U1|Q\(13)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \U1|Q\(13),
	datad => VCC,
	cin => \U1|Q[12]~41\,
	combout => \U1|Q[13]~42_combout\,
	cout => \U1|Q[13]~43\);

-- Location: LCFF_X64_Y7_N27
\U1|Q[13]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \KEY~combout\(0),
	datain => \U1|Q[13]~42_combout\,
	sclr => \SW~combout\(1),
	ena => \U1|Q[12]~48_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \U1|Q\(13));

-- Location: LCCOMB_X64_Y7_N28
\U1|Q[14]~44\ : cycloneii_lcell_comb
-- Equation(s):
-- \U1|Q[14]~44_combout\ = (\U1|Q\(14) & (\U1|Q[13]~43\ $ (GND))) # (!\U1|Q\(14) & (!\U1|Q[13]~43\ & VCC))
-- \U1|Q[14]~45\ = CARRY((\U1|Q\(14) & !\U1|Q[13]~43\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \U1|Q\(14),
	datad => VCC,
	cin => \U1|Q[13]~43\,
	combout => \U1|Q[14]~44_combout\,
	cout => \U1|Q[14]~45\);

-- Location: LCFF_X64_Y7_N29
\U1|Q[14]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \KEY~combout\(0),
	datain => \U1|Q[14]~44_combout\,
	sclr => \SW~combout\(1),
	ena => \U1|Q[12]~48_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \U1|Q\(14));

-- Location: LCCOMB_X64_Y7_N30
\U1|Q[15]~46\ : cycloneii_lcell_comb
-- Equation(s):
-- \U1|Q[15]~46_combout\ = \U1|Q[14]~45\ $ (\U1|Q\(15))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \U1|Q\(15),
	cin => \U1|Q[14]~45\,
	combout => \U1|Q[15]~46_combout\);

-- Location: LCFF_X64_Y7_N31
\U1|Q[15]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \KEY~combout\(0),
	datain => \U1|Q[15]~46_combout\,
	sclr => \SW~combout\(1),
	ena => \U1|Q[12]~48_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \U1|Q\(15));

-- Location: LCCOMB_X64_Y8_N0
\H3|Add25~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \H3|Add25~0_combout\ = (\U1|Q\(12) & ((\U1|Q\(15)) # (\U1|Q\(13) $ (\U1|Q\(14))))) # (!\U1|Q\(12) & ((\U1|Q\(13)) # (\U1|Q\(15) $ (\U1|Q\(14)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101101111111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U1|Q\(12),
	datab => \U1|Q\(15),
	datac => \U1|Q\(13),
	datad => \U1|Q\(14),
	combout => \H3|Add25~0_combout\);

-- Location: LCCOMB_X64_Y8_N2
\H3|Add22~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \H3|Add22~0_combout\ = (\U1|Q\(12) & (\U1|Q\(15) $ (((\U1|Q\(13)) # (!\U1|Q\(14)))))) # (!\U1|Q\(12) & (!\U1|Q\(15) & (\U1|Q\(13) & !\U1|Q\(14))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010100000110010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U1|Q\(12),
	datab => \U1|Q\(15),
	datac => \U1|Q\(13),
	datad => \U1|Q\(14),
	combout => \H3|Add22~0_combout\);

-- Location: LCCOMB_X64_Y8_N28
\H3|Add18~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \H3|Add18~0_combout\ = (\U1|Q\(13) & (((\U1|Q\(15))) # (!\U1|Q\(12)))) # (!\U1|Q\(13) & ((\U1|Q\(14) & ((\U1|Q\(15)))) # (!\U1|Q\(14) & (!\U1|Q\(12)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110011010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U1|Q\(12),
	datab => \U1|Q\(15),
	datac => \U1|Q\(13),
	datad => \U1|Q\(14),
	combout => \H3|Add18~0_combout\);

-- Location: LCCOMB_X64_Y8_N30
\H3|Add13~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \H3|Add13~0_combout\ = (\U1|Q\(13) & ((\U1|Q\(12) & ((!\U1|Q\(14)))) # (!\U1|Q\(12) & ((\U1|Q\(14)) # (!\U1|Q\(15)))))) # (!\U1|Q\(13) & ((\U1|Q\(15)) # (\U1|Q\(12) $ (!\U1|Q\(14)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101111010111101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U1|Q\(12),
	datab => \U1|Q\(15),
	datac => \U1|Q\(13),
	datad => \U1|Q\(14),
	combout => \H3|Add13~0_combout\);

-- Location: LCCOMB_X64_Y8_N16
\H3|Add10~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \H3|Add10~0_combout\ = (\U1|Q\(15) & (\U1|Q\(14) & ((\U1|Q\(13)) # (!\U1|Q\(12))))) # (!\U1|Q\(15) & (!\U1|Q\(12) & (\U1|Q\(13) & !\U1|Q\(14))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100010000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U1|Q\(12),
	datab => \U1|Q\(15),
	datac => \U1|Q\(13),
	datad => \U1|Q\(14),
	combout => \H3|Add10~0_combout\);

-- Location: LCCOMB_X64_Y8_N18
\H3|Add7~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \H3|Add7~0_combout\ = (\U1|Q\(15) & ((\U1|Q\(12) & (\U1|Q\(13))) # (!\U1|Q\(12) & ((\U1|Q\(14)))))) # (!\U1|Q\(15) & (\U1|Q\(14) & (\U1|Q\(12) $ (\U1|Q\(13)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101011010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U1|Q\(12),
	datab => \U1|Q\(15),
	datac => \U1|Q\(13),
	datad => \U1|Q\(14),
	combout => \H3|Add7~0_combout\);

-- Location: LCCOMB_X64_Y8_N12
\H3|Add2~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \H3|Add2~0_combout\ = (\U1|Q\(15) & ((\U1|Q\(13) $ (!\U1|Q\(14))) # (!\U1|Q\(12)))) # (!\U1|Q\(15) & ((\U1|Q\(13)) # (\U1|Q\(12) $ (!\U1|Q\(14)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111011001111101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U1|Q\(12),
	datab => \U1|Q\(15),
	datac => \U1|Q\(13),
	datad => \U1|Q\(14),
	combout => \H3|Add2~0_combout\);

-- Location: LCFF_X64_Y7_N21
\U1|Q[10]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \KEY~combout\(0),
	datain => \U1|Q[10]~36_combout\,
	sclr => \SW~combout\(1),
	ena => \U1|Q[12]~48_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \U1|Q\(10));

-- Location: LCFF_X64_Y7_N17
\U1|Q[8]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \KEY~combout\(0),
	datain => \U1|Q[8]~32_combout\,
	sclr => \SW~combout\(1),
	ena => \U1|Q[12]~48_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \U1|Q\(8));

-- Location: LCCOMB_X64_Y6_N0
\H2|Add25~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \H2|Add25~0_combout\ = (\U1|Q\(8) & ((\U1|Q\(11)) # (\U1|Q\(10) $ (\U1|Q\(9))))) # (!\U1|Q\(8) & ((\U1|Q\(9)) # (\U1|Q\(11) $ (\U1|Q\(10)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011111111100110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U1|Q\(11),
	datab => \U1|Q\(10),
	datac => \U1|Q\(8),
	datad => \U1|Q\(9),
	combout => \H2|Add25~0_combout\);

-- Location: LCCOMB_X64_Y6_N2
\H2|Add22~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \H2|Add22~0_combout\ = (\U1|Q\(10) & (\U1|Q\(8) & (\U1|Q\(11) $ (\U1|Q\(9))))) # (!\U1|Q\(10) & (!\U1|Q\(11) & ((\U1|Q\(8)) # (\U1|Q\(9)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000110010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U1|Q\(11),
	datab => \U1|Q\(10),
	datac => \U1|Q\(8),
	datad => \U1|Q\(9),
	combout => \H2|Add22~0_combout\);

-- Location: LCCOMB_X64_Y6_N20
\H2|Add18~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \H2|Add18~0_combout\ = (\U1|Q\(9) & ((\U1|Q\(11)) # ((!\U1|Q\(8))))) # (!\U1|Q\(9) & ((\U1|Q\(10) & (\U1|Q\(11))) # (!\U1|Q\(10) & ((!\U1|Q\(8))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110001011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U1|Q\(11),
	datab => \U1|Q\(10),
	datac => \U1|Q\(8),
	datad => \U1|Q\(9),
	combout => \H2|Add18~0_combout\);

-- Location: LCCOMB_X64_Y6_N30
\H2|Add13~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \H2|Add13~0_combout\ = (\U1|Q\(9) & ((\U1|Q\(10) & ((!\U1|Q\(8)))) # (!\U1|Q\(10) & ((\U1|Q\(8)) # (!\U1|Q\(11)))))) # (!\U1|Q\(9) & ((\U1|Q\(11)) # (\U1|Q\(10) $ (!\U1|Q\(8)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110111101011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U1|Q\(11),
	datab => \U1|Q\(10),
	datac => \U1|Q\(8),
	datad => \U1|Q\(9),
	combout => \H2|Add13~0_combout\);

-- Location: LCCOMB_X64_Y6_N16
\H2|Add10~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \H2|Add10~0_combout\ = (\U1|Q\(11) & (\U1|Q\(10) & ((\U1|Q\(9)) # (!\U1|Q\(8))))) # (!\U1|Q\(11) & (!\U1|Q\(10) & (!\U1|Q\(8) & \U1|Q\(9))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100100001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U1|Q\(11),
	datab => \U1|Q\(10),
	datac => \U1|Q\(8),
	datad => \U1|Q\(9),
	combout => \H2|Add10~0_combout\);

-- Location: LCCOMB_X64_Y6_N18
\H2|Add7~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \H2|Add7~0_combout\ = (\U1|Q\(11) & ((\U1|Q\(8) & ((\U1|Q\(9)))) # (!\U1|Q\(8) & (\U1|Q\(10))))) # (!\U1|Q\(11) & (\U1|Q\(10) & (\U1|Q\(8) $ (\U1|Q\(9)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110001001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U1|Q\(11),
	datab => \U1|Q\(10),
	datac => \U1|Q\(8),
	datad => \U1|Q\(9),
	combout => \H2|Add7~0_combout\);

-- Location: LCCOMB_X64_Y6_N12
\H2|Add2~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \H2|Add2~0_combout\ = (\U1|Q\(11) & ((\U1|Q\(10) $ (!\U1|Q\(9))) # (!\U1|Q\(8)))) # (!\U1|Q\(11) & ((\U1|Q\(9)) # (\U1|Q\(10) $ (!\U1|Q\(8)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101111101101011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U1|Q\(11),
	datab => \U1|Q\(10),
	datac => \U1|Q\(8),
	datad => \U1|Q\(9),
	combout => \H2|Add2~0_combout\);

-- Location: LCFF_X64_Y7_N11
\U1|Q[5]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \KEY~combout\(0),
	datain => \U1|Q[5]~26_combout\,
	sclr => \SW~combout\(1),
	ena => \U1|Q[12]~48_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \U1|Q\(5));

-- Location: LCFF_X64_Y7_N13
\U1|Q[6]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \KEY~combout\(0),
	datain => \U1|Q[6]~28_combout\,
	sclr => \SW~combout\(1),
	ena => \U1|Q[12]~48_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \U1|Q\(6));

-- Location: LCCOMB_X64_Y4_N0
\H1|Add25~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \H1|Add25~0_combout\ = (\U1|Q\(4) & ((\U1|Q\(7)) # (\U1|Q\(5) $ (\U1|Q\(6))))) # (!\U1|Q\(4) & ((\U1|Q\(5)) # (\U1|Q\(7) $ (\U1|Q\(6)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110011111111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U1|Q\(4),
	datab => \U1|Q\(5),
	datac => \U1|Q\(7),
	datad => \U1|Q\(6),
	combout => \H1|Add25~0_combout\);

-- Location: LCCOMB_X64_Y4_N2
\H1|Add22~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \H1|Add22~0_combout\ = (\U1|Q\(4) & (\U1|Q\(7) $ (((\U1|Q\(5)) # (!\U1|Q\(6)))))) # (!\U1|Q\(4) & (\U1|Q\(5) & (!\U1|Q\(7) & !\U1|Q\(6))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010100000001110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U1|Q\(4),
	datab => \U1|Q\(5),
	datac => \U1|Q\(7),
	datad => \U1|Q\(6),
	combout => \H1|Add22~0_combout\);

-- Location: LCCOMB_X64_Y4_N20
\H1|Add18~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \H1|Add18~0_combout\ = (\U1|Q\(5) & (((\U1|Q\(7))) # (!\U1|Q\(4)))) # (!\U1|Q\(5) & ((\U1|Q\(6) & ((\U1|Q\(7)))) # (!\U1|Q\(6) & (!\U1|Q\(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010011010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U1|Q\(4),
	datab => \U1|Q\(5),
	datac => \U1|Q\(7),
	datad => \U1|Q\(6),
	combout => \H1|Add18~0_combout\);

-- Location: LCCOMB_X64_Y4_N30
\H1|Add13~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \H1|Add13~0_combout\ = (\U1|Q\(5) & ((\U1|Q\(4) & ((!\U1|Q\(6)))) # (!\U1|Q\(4) & ((\U1|Q\(6)) # (!\U1|Q\(7)))))) # (!\U1|Q\(5) & ((\U1|Q\(7)) # (\U1|Q\(4) $ (!\U1|Q\(6)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111011010111101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U1|Q\(4),
	datab => \U1|Q\(5),
	datac => \U1|Q\(7),
	datad => \U1|Q\(6),
	combout => \H1|Add13~0_combout\);

-- Location: LCCOMB_X64_Y4_N16
\H1|Add10~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \H1|Add10~0_combout\ = (\U1|Q\(7) & (\U1|Q\(6) & ((\U1|Q\(5)) # (!\U1|Q\(4))))) # (!\U1|Q\(7) & (!\U1|Q\(4) & (\U1|Q\(5) & !\U1|Q\(6))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101000000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U1|Q\(4),
	datab => \U1|Q\(5),
	datac => \U1|Q\(7),
	datad => \U1|Q\(6),
	combout => \H1|Add10~0_combout\);

-- Location: LCCOMB_X64_Y4_N26
\H1|Add7~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \H1|Add7~0_combout\ = (\U1|Q\(5) & ((\U1|Q\(4) & (\U1|Q\(7))) # (!\U1|Q\(4) & ((\U1|Q\(6)))))) # (!\U1|Q\(5) & (\U1|Q\(6) & (\U1|Q\(4) $ (\U1|Q\(7)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101011010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U1|Q\(4),
	datab => \U1|Q\(5),
	datac => \U1|Q\(7),
	datad => \U1|Q\(6),
	combout => \H1|Add7~0_combout\);

-- Location: LCCOMB_X64_Y4_N12
\H1|Add2~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \H1|Add2~0_combout\ = (\U1|Q\(7) & ((\U1|Q\(5) $ (!\U1|Q\(6))) # (!\U1|Q\(4)))) # (!\U1|Q\(7) & ((\U1|Q\(5)) # (\U1|Q\(4) $ (!\U1|Q\(6)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101111001111101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U1|Q\(4),
	datab => \U1|Q\(5),
	datac => \U1|Q\(7),
	datad => \U1|Q\(6),
	combout => \H1|Add2~0_combout\);

-- Location: LCFF_X64_Y7_N7
\U1|Q[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \KEY~combout\(0),
	datain => \U1|Q[3]~22_combout\,
	sclr => \SW~combout\(1),
	ena => \U1|Q[12]~48_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \U1|Q\(3));

-- Location: LCCOMB_X28_Y3_N16
\H0|Add25~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \H0|Add25~0_combout\ = (\U1|Q\(0) & ((\U1|Q\(3)) # (\U1|Q\(2) $ (\U1|Q\(1))))) # (!\U1|Q\(0) & ((\U1|Q\(1)) # (\U1|Q\(3) $ (\U1|Q\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011111111100110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U1|Q\(3),
	datab => \U1|Q\(2),
	datac => \U1|Q\(0),
	datad => \U1|Q\(1),
	combout => \H0|Add25~0_combout\);

-- Location: LCCOMB_X28_Y3_N18
\H0|Add22~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \H0|Add22~0_combout\ = (\U1|Q\(2) & (\U1|Q\(0) & (\U1|Q\(3) $ (\U1|Q\(1))))) # (!\U1|Q\(2) & (!\U1|Q\(3) & ((\U1|Q\(0)) # (\U1|Q\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000110010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U1|Q\(3),
	datab => \U1|Q\(2),
	datac => \U1|Q\(0),
	datad => \U1|Q\(1),
	combout => \H0|Add22~0_combout\);

-- Location: LCCOMB_X28_Y3_N20
\H0|Add18~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \H0|Add18~0_combout\ = (\U1|Q\(1) & ((\U1|Q\(3)) # ((!\U1|Q\(0))))) # (!\U1|Q\(1) & ((\U1|Q\(2) & (\U1|Q\(3))) # (!\U1|Q\(2) & ((!\U1|Q\(0))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110001011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U1|Q\(3),
	datab => \U1|Q\(2),
	datac => \U1|Q\(0),
	datad => \U1|Q\(1),
	combout => \H0|Add18~0_combout\);

-- Location: LCCOMB_X28_Y3_N22
\H0|Add13~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \H0|Add13~0_combout\ = (\U1|Q\(1) & ((\U1|Q\(2) & ((!\U1|Q\(0)))) # (!\U1|Q\(2) & ((\U1|Q\(0)) # (!\U1|Q\(3)))))) # (!\U1|Q\(1) & ((\U1|Q\(3)) # (\U1|Q\(2) $ (!\U1|Q\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110111101011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U1|Q\(3),
	datab => \U1|Q\(2),
	datac => \U1|Q\(0),
	datad => \U1|Q\(1),
	combout => \H0|Add13~0_combout\);

-- Location: LCCOMB_X28_Y3_N24
\H0|Add10~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \H0|Add10~0_combout\ = (\U1|Q\(3) & (\U1|Q\(2) & ((\U1|Q\(1)) # (!\U1|Q\(0))))) # (!\U1|Q\(3) & (!\U1|Q\(2) & (!\U1|Q\(0) & \U1|Q\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100100001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U1|Q\(3),
	datab => \U1|Q\(2),
	datac => \U1|Q\(0),
	datad => \U1|Q\(1),
	combout => \H0|Add10~0_combout\);

-- Location: LCCOMB_X28_Y3_N26
\H0|Add7~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \H0|Add7~0_combout\ = (\U1|Q\(3) & ((\U1|Q\(0) & ((\U1|Q\(1)))) # (!\U1|Q\(0) & (\U1|Q\(2))))) # (!\U1|Q\(3) & (\U1|Q\(2) & (\U1|Q\(0) $ (\U1|Q\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110001001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U1|Q\(3),
	datab => \U1|Q\(2),
	datac => \U1|Q\(0),
	datad => \U1|Q\(1),
	combout => \H0|Add7~0_combout\);

-- Location: LCCOMB_X28_Y3_N12
\H0|Add2~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \H0|Add2~0_combout\ = (\U1|Q\(3) & ((\U1|Q\(2) $ (!\U1|Q\(1))) # (!\U1|Q\(0)))) # (!\U1|Q\(3) & ((\U1|Q\(1)) # (\U1|Q\(2) $ (!\U1|Q\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101111101101011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U1|Q\(3),
	datab => \U1|Q\(2),
	datac => \U1|Q\(0),
	datad => \U1|Q\(1),
	combout => \H0|Add2~0_combout\);

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
	datain => \H3|ALT_INV_Add25~0_combout\,
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
	datain => \H3|Add22~0_combout\,
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
	datain => \H3|ALT_INV_Add18~0_combout\,
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
	datain => \H3|ALT_INV_Add13~0_combout\,
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
	datain => \H3|Add10~0_combout\,
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
	datain => \H3|Add7~0_combout\,
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
	datain => \H3|ALT_INV_Add2~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_HEX3(0));

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
	datain => \H2|ALT_INV_Add25~0_combout\,
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
	datain => \H2|Add22~0_combout\,
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
	datain => \H2|ALT_INV_Add18~0_combout\,
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
	datain => \H2|ALT_INV_Add13~0_combout\,
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
	datain => \H2|Add10~0_combout\,
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
	datain => \H2|Add7~0_combout\,
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
	datain => \H2|ALT_INV_Add2~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_HEX2(0));

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
	datain => \H1|ALT_INV_Add25~0_combout\,
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
	datain => \H1|Add22~0_combout\,
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
	datain => \H1|ALT_INV_Add18~0_combout\,
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
	datain => \H1|ALT_INV_Add13~0_combout\,
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
	datain => \H1|Add10~0_combout\,
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
	datain => \H1|Add7~0_combout\,
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
	datain => \H1|ALT_INV_Add2~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_HEX1(0));

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
	datain => \H0|ALT_INV_Add25~0_combout\,
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
	datain => \H0|Add22~0_combout\,
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
	datain => \H0|ALT_INV_Add18~0_combout\,
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
	datain => \H0|ALT_INV_Add13~0_combout\,
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
	datain => \H0|Add10~0_combout\,
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
	datain => \H0|Add7~0_combout\,
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
	datain => \H0|ALT_INV_Add2~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_HEX0(0));
END structure;


