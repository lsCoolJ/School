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

-- DATE "05/05/2014 21:53:27"

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

ENTITY 	Part3 IS
    PORT (
	KEY : IN std_logic_vector(0 DOWNTO 0);
	SW : IN std_logic_vector(1 DOWNTO 0);
	HEX3 : OUT std_logic_vector(0 TO 6);
	HEX2 : OUT std_logic_vector(0 TO 6);
	HEX1 : OUT std_logic_vector(0 TO 6);
	HEX0 : OUT std_logic_vector(0 TO 6)
	);
END Part3;

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


ARCHITECTURE structure OF Part3 IS
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
SIGNAL \U1|auto_generated|counter_comb_bita0~combout\ : std_logic;
SIGNAL \~GND~combout\ : std_logic;
SIGNAL \U1|auto_generated|counter_comb_bita0~COUT\ : std_logic;
SIGNAL \U1|auto_generated|counter_comb_bita1~combout\ : std_logic;
SIGNAL \U1|auto_generated|counter_comb_bita1~COUT\ : std_logic;
SIGNAL \U1|auto_generated|counter_comb_bita2~combout\ : std_logic;
SIGNAL \U1|auto_generated|counter_comb_bita2~COUT\ : std_logic;
SIGNAL \U1|auto_generated|counter_comb_bita3~COUT\ : std_logic;
SIGNAL \U1|auto_generated|counter_comb_bita4~combout\ : std_logic;
SIGNAL \U1|auto_generated|counter_comb_bita4~COUT\ : std_logic;
SIGNAL \U1|auto_generated|counter_comb_bita5~COUT\ : std_logic;
SIGNAL \U1|auto_generated|counter_comb_bita6~COUT\ : std_logic;
SIGNAL \U1|auto_generated|counter_comb_bita7~combout\ : std_logic;
SIGNAL \U1|auto_generated|counter_comb_bita7~COUT\ : std_logic;
SIGNAL \U1|auto_generated|counter_comb_bita8~COUT\ : std_logic;
SIGNAL \U1|auto_generated|counter_comb_bita9~combout\ : std_logic;
SIGNAL \U1|auto_generated|counter_comb_bita9~COUT\ : std_logic;
SIGNAL \U1|auto_generated|counter_comb_bita10~COUT\ : std_logic;
SIGNAL \U1|auto_generated|counter_comb_bita11~combout\ : std_logic;
SIGNAL \U1|auto_generated|counter_comb_bita11~COUT\ : std_logic;
SIGNAL \U1|auto_generated|counter_comb_bita12~COUT\ : std_logic;
SIGNAL \U1|auto_generated|counter_comb_bita13~combout\ : std_logic;
SIGNAL \U1|auto_generated|counter_comb_bita13~COUT\ : std_logic;
SIGNAL \U1|auto_generated|counter_comb_bita14~combout\ : std_logic;
SIGNAL \U1|auto_generated|counter_comb_bita12~combout\ : std_logic;
SIGNAL \U1|auto_generated|counter_comb_bita14~COUT\ : std_logic;
SIGNAL \U1|auto_generated|counter_comb_bita15~combout\ : std_logic;
SIGNAL \H3|Add25~0_combout\ : std_logic;
SIGNAL \H3|Add22~0_combout\ : std_logic;
SIGNAL \H3|Add18~0_combout\ : std_logic;
SIGNAL \H3|Add13~0_combout\ : std_logic;
SIGNAL \H3|Add10~0_combout\ : std_logic;
SIGNAL \H3|Add7~0_combout\ : std_logic;
SIGNAL \H3|Add2~0_combout\ : std_logic;
SIGNAL \U1|auto_generated|counter_comb_bita10~combout\ : std_logic;
SIGNAL \U1|auto_generated|counter_comb_bita8~combout\ : std_logic;
SIGNAL \H2|Add25~0_combout\ : std_logic;
SIGNAL \H2|Add22~0_combout\ : std_logic;
SIGNAL \H2|Add18~0_combout\ : std_logic;
SIGNAL \H2|Add13~0_combout\ : std_logic;
SIGNAL \H2|Add10~0_combout\ : std_logic;
SIGNAL \H2|Add7~0_combout\ : std_logic;
SIGNAL \H2|Add2~0_combout\ : std_logic;
SIGNAL \U1|auto_generated|counter_comb_bita5~combout\ : std_logic;
SIGNAL \U1|auto_generated|counter_comb_bita6~combout\ : std_logic;
SIGNAL \H1|Add25~0_combout\ : std_logic;
SIGNAL \H1|Add22~0_combout\ : std_logic;
SIGNAL \H1|Add18~0_combout\ : std_logic;
SIGNAL \H1|Add13~0_combout\ : std_logic;
SIGNAL \H1|Add10~0_combout\ : std_logic;
SIGNAL \H1|Add7~0_combout\ : std_logic;
SIGNAL \H1|Add2~0_combout\ : std_logic;
SIGNAL \U1|auto_generated|counter_comb_bita3~combout\ : std_logic;
SIGNAL \H0|Add25~0_combout\ : std_logic;
SIGNAL \H0|Add22~0_combout\ : std_logic;
SIGNAL \H0|Add18~0_combout\ : std_logic;
SIGNAL \H0|Add13~0_combout\ : std_logic;
SIGNAL \H0|Add10~0_combout\ : std_logic;
SIGNAL \H0|Add7~0_combout\ : std_logic;
SIGNAL \H0|Add2~0_combout\ : std_logic;
SIGNAL \U1|auto_generated|safe_q\ : std_logic_vector(15 DOWNTO 0);
SIGNAL \KEY~combout\ : std_logic_vector(0 DOWNTO 0);
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
\U1|auto_generated|counter_comb_bita0\ : cycloneii_lcell_comb
-- Equation(s):
-- \U1|auto_generated|counter_comb_bita0~combout\ = \U1|auto_generated|safe_q\(0) $ (VCC)
-- \U1|auto_generated|counter_comb_bita0~COUT\ = CARRY(\U1|auto_generated|safe_q\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \U1|auto_generated|safe_q\(0),
	datad => VCC,
	combout => \U1|auto_generated|counter_comb_bita0~combout\,
	cout => \U1|auto_generated|counter_comb_bita0~COUT\);

-- Location: LCCOMB_X63_Y7_N0
\~GND\ : cycloneii_lcell_comb
-- Equation(s):
-- \~GND~combout\ = GND

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	combout => \~GND~combout\);

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

-- Location: LCFF_X64_Y7_N1
\U1|auto_generated|counter_reg_bit1a[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \KEY~combout\(0),
	datain => \U1|auto_generated|counter_comb_bita0~combout\,
	sdata => \~GND~combout\,
	sload => \SW~combout\(1),
	ena => \SW~combout\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \U1|auto_generated|safe_q\(0));

-- Location: LCCOMB_X64_Y7_N2
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

-- Location: LCFF_X64_Y7_N3
\U1|auto_generated|counter_reg_bit1a[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \KEY~combout\(0),
	datain => \U1|auto_generated|counter_comb_bita1~combout\,
	sdata => \~GND~combout\,
	sload => \SW~combout\(1),
	ena => \SW~combout\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \U1|auto_generated|safe_q\(1));

-- Location: LCCOMB_X64_Y7_N4
\U1|auto_generated|counter_comb_bita2\ : cycloneii_lcell_comb
-- Equation(s):
-- \U1|auto_generated|counter_comb_bita2~combout\ = (\U1|auto_generated|safe_q\(2) & (\U1|auto_generated|counter_comb_bita1~COUT\ $ (GND))) # (!\U1|auto_generated|safe_q\(2) & (!\U1|auto_generated|counter_comb_bita1~COUT\ & VCC))
-- \U1|auto_generated|counter_comb_bita2~COUT\ = CARRY((\U1|auto_generated|safe_q\(2) & !\U1|auto_generated|counter_comb_bita1~COUT\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \U1|auto_generated|safe_q\(2),
	datad => VCC,
	cin => \U1|auto_generated|counter_comb_bita1~COUT\,
	combout => \U1|auto_generated|counter_comb_bita2~combout\,
	cout => \U1|auto_generated|counter_comb_bita2~COUT\);

-- Location: LCFF_X64_Y7_N5
\U1|auto_generated|counter_reg_bit1a[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \KEY~combout\(0),
	datain => \U1|auto_generated|counter_comb_bita2~combout\,
	sdata => \~GND~combout\,
	sload => \SW~combout\(1),
	ena => \SW~combout\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \U1|auto_generated|safe_q\(2));

-- Location: LCCOMB_X64_Y7_N6
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

-- Location: LCCOMB_X64_Y7_N8
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

-- Location: LCFF_X64_Y7_N9
\U1|auto_generated|counter_reg_bit1a[4]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \KEY~combout\(0),
	datain => \U1|auto_generated|counter_comb_bita4~combout\,
	sdata => \~GND~combout\,
	sload => \SW~combout\(1),
	ena => \SW~combout\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \U1|auto_generated|safe_q\(4));

-- Location: LCCOMB_X64_Y7_N10
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

-- Location: LCCOMB_X64_Y7_N12
\U1|auto_generated|counter_comb_bita6\ : cycloneii_lcell_comb
-- Equation(s):
-- \U1|auto_generated|counter_comb_bita6~combout\ = (\U1|auto_generated|safe_q\(6) & (\U1|auto_generated|counter_comb_bita5~COUT\ $ (GND))) # (!\U1|auto_generated|safe_q\(6) & (!\U1|auto_generated|counter_comb_bita5~COUT\ & VCC))
-- \U1|auto_generated|counter_comb_bita6~COUT\ = CARRY((\U1|auto_generated|safe_q\(6) & !\U1|auto_generated|counter_comb_bita5~COUT\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U1|auto_generated|safe_q\(6),
	datad => VCC,
	cin => \U1|auto_generated|counter_comb_bita5~COUT\,
	combout => \U1|auto_generated|counter_comb_bita6~combout\,
	cout => \U1|auto_generated|counter_comb_bita6~COUT\);

-- Location: LCCOMB_X64_Y7_N14
\U1|auto_generated|counter_comb_bita7\ : cycloneii_lcell_comb
-- Equation(s):
-- \U1|auto_generated|counter_comb_bita7~combout\ = (\U1|auto_generated|safe_q\(7) & (!\U1|auto_generated|counter_comb_bita6~COUT\)) # (!\U1|auto_generated|safe_q\(7) & ((\U1|auto_generated|counter_comb_bita6~COUT\) # (GND)))
-- \U1|auto_generated|counter_comb_bita7~COUT\ = CARRY((!\U1|auto_generated|counter_comb_bita6~COUT\) # (!\U1|auto_generated|safe_q\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \U1|auto_generated|safe_q\(7),
	datad => VCC,
	cin => \U1|auto_generated|counter_comb_bita6~COUT\,
	combout => \U1|auto_generated|counter_comb_bita7~combout\,
	cout => \U1|auto_generated|counter_comb_bita7~COUT\);

-- Location: LCFF_X64_Y7_N15
\U1|auto_generated|counter_reg_bit1a[7]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \KEY~combout\(0),
	datain => \U1|auto_generated|counter_comb_bita7~combout\,
	sdata => \~GND~combout\,
	sload => \SW~combout\(1),
	ena => \SW~combout\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \U1|auto_generated|safe_q\(7));

-- Location: LCCOMB_X64_Y7_N16
\U1|auto_generated|counter_comb_bita8\ : cycloneii_lcell_comb
-- Equation(s):
-- \U1|auto_generated|counter_comb_bita8~combout\ = (\U1|auto_generated|safe_q\(8) & (\U1|auto_generated|counter_comb_bita7~COUT\ $ (GND))) # (!\U1|auto_generated|safe_q\(8) & (!\U1|auto_generated|counter_comb_bita7~COUT\ & VCC))
-- \U1|auto_generated|counter_comb_bita8~COUT\ = CARRY((\U1|auto_generated|safe_q\(8) & !\U1|auto_generated|counter_comb_bita7~COUT\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U1|auto_generated|safe_q\(8),
	datad => VCC,
	cin => \U1|auto_generated|counter_comb_bita7~COUT\,
	combout => \U1|auto_generated|counter_comb_bita8~combout\,
	cout => \U1|auto_generated|counter_comb_bita8~COUT\);

-- Location: LCCOMB_X64_Y7_N18
\U1|auto_generated|counter_comb_bita9\ : cycloneii_lcell_comb
-- Equation(s):
-- \U1|auto_generated|counter_comb_bita9~combout\ = (\U1|auto_generated|safe_q\(9) & (!\U1|auto_generated|counter_comb_bita8~COUT\)) # (!\U1|auto_generated|safe_q\(9) & ((\U1|auto_generated|counter_comb_bita8~COUT\) # (GND)))
-- \U1|auto_generated|counter_comb_bita9~COUT\ = CARRY((!\U1|auto_generated|counter_comb_bita8~COUT\) # (!\U1|auto_generated|safe_q\(9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \U1|auto_generated|safe_q\(9),
	datad => VCC,
	cin => \U1|auto_generated|counter_comb_bita8~COUT\,
	combout => \U1|auto_generated|counter_comb_bita9~combout\,
	cout => \U1|auto_generated|counter_comb_bita9~COUT\);

-- Location: LCFF_X64_Y7_N19
\U1|auto_generated|counter_reg_bit1a[9]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \KEY~combout\(0),
	datain => \U1|auto_generated|counter_comb_bita9~combout\,
	sdata => \~GND~combout\,
	sload => \SW~combout\(1),
	ena => \SW~combout\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \U1|auto_generated|safe_q\(9));

-- Location: LCCOMB_X64_Y7_N20
\U1|auto_generated|counter_comb_bita10\ : cycloneii_lcell_comb
-- Equation(s):
-- \U1|auto_generated|counter_comb_bita10~combout\ = (\U1|auto_generated|safe_q\(10) & (\U1|auto_generated|counter_comb_bita9~COUT\ $ (GND))) # (!\U1|auto_generated|safe_q\(10) & (!\U1|auto_generated|counter_comb_bita9~COUT\ & VCC))
-- \U1|auto_generated|counter_comb_bita10~COUT\ = CARRY((\U1|auto_generated|safe_q\(10) & !\U1|auto_generated|counter_comb_bita9~COUT\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U1|auto_generated|safe_q\(10),
	datad => VCC,
	cin => \U1|auto_generated|counter_comb_bita9~COUT\,
	combout => \U1|auto_generated|counter_comb_bita10~combout\,
	cout => \U1|auto_generated|counter_comb_bita10~COUT\);

-- Location: LCCOMB_X64_Y7_N22
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

-- Location: LCFF_X64_Y7_N23
\U1|auto_generated|counter_reg_bit1a[11]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \KEY~combout\(0),
	datain => \U1|auto_generated|counter_comb_bita11~combout\,
	sdata => \~GND~combout\,
	sload => \SW~combout\(1),
	ena => \SW~combout\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \U1|auto_generated|safe_q\(11));

-- Location: LCCOMB_X64_Y7_N24
\U1|auto_generated|counter_comb_bita12\ : cycloneii_lcell_comb
-- Equation(s):
-- \U1|auto_generated|counter_comb_bita12~combout\ = (\U1|auto_generated|safe_q\(12) & (\U1|auto_generated|counter_comb_bita11~COUT\ $ (GND))) # (!\U1|auto_generated|safe_q\(12) & (!\U1|auto_generated|counter_comb_bita11~COUT\ & VCC))
-- \U1|auto_generated|counter_comb_bita12~COUT\ = CARRY((\U1|auto_generated|safe_q\(12) & !\U1|auto_generated|counter_comb_bita11~COUT\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U1|auto_generated|safe_q\(12),
	datad => VCC,
	cin => \U1|auto_generated|counter_comb_bita11~COUT\,
	combout => \U1|auto_generated|counter_comb_bita12~combout\,
	cout => \U1|auto_generated|counter_comb_bita12~COUT\);

-- Location: LCCOMB_X64_Y7_N26
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

-- Location: LCFF_X64_Y7_N27
\U1|auto_generated|counter_reg_bit1a[13]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \KEY~combout\(0),
	datain => \U1|auto_generated|counter_comb_bita13~combout\,
	sdata => \~GND~combout\,
	sload => \SW~combout\(1),
	ena => \SW~combout\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \U1|auto_generated|safe_q\(13));

-- Location: LCCOMB_X64_Y7_N28
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

-- Location: LCFF_X64_Y7_N29
\U1|auto_generated|counter_reg_bit1a[14]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \KEY~combout\(0),
	datain => \U1|auto_generated|counter_comb_bita14~combout\,
	sdata => \~GND~combout\,
	sload => \SW~combout\(1),
	ena => \SW~combout\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \U1|auto_generated|safe_q\(14));

-- Location: LCFF_X64_Y7_N25
\U1|auto_generated|counter_reg_bit1a[12]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \KEY~combout\(0),
	datain => \U1|auto_generated|counter_comb_bita12~combout\,
	sdata => \~GND~combout\,
	sload => \SW~combout\(1),
	ena => \SW~combout\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \U1|auto_generated|safe_q\(12));

-- Location: LCCOMB_X64_Y7_N30
\U1|auto_generated|counter_comb_bita15\ : cycloneii_lcell_comb
-- Equation(s):
-- \U1|auto_generated|counter_comb_bita15~combout\ = \U1|auto_generated|counter_comb_bita14~COUT\ $ (\U1|auto_generated|safe_q\(15))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \U1|auto_generated|safe_q\(15),
	cin => \U1|auto_generated|counter_comb_bita14~COUT\,
	combout => \U1|auto_generated|counter_comb_bita15~combout\);

-- Location: LCFF_X64_Y7_N31
\U1|auto_generated|counter_reg_bit1a[15]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \KEY~combout\(0),
	datain => \U1|auto_generated|counter_comb_bita15~combout\,
	sdata => \~GND~combout\,
	sload => \SW~combout\(1),
	ena => \SW~combout\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \U1|auto_generated|safe_q\(15));

-- Location: LCCOMB_X64_Y8_N0
\H3|Add25~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \H3|Add25~0_combout\ = (\U1|auto_generated|safe_q\(12) & ((\U1|auto_generated|safe_q\(15)) # (\U1|auto_generated|safe_q\(13) $ (\U1|auto_generated|safe_q\(14))))) # (!\U1|auto_generated|safe_q\(12) & ((\U1|auto_generated|safe_q\(13)) # 
-- (\U1|auto_generated|safe_q\(14) $ (\U1|auto_generated|safe_q\(15)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101101101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U1|auto_generated|safe_q\(13),
	datab => \U1|auto_generated|safe_q\(14),
	datac => \U1|auto_generated|safe_q\(12),
	datad => \U1|auto_generated|safe_q\(15),
	combout => \H3|Add25~0_combout\);

-- Location: LCCOMB_X64_Y8_N2
\H3|Add22~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \H3|Add22~0_combout\ = (\U1|auto_generated|safe_q\(13) & (!\U1|auto_generated|safe_q\(15) & ((\U1|auto_generated|safe_q\(12)) # (!\U1|auto_generated|safe_q\(14))))) # (!\U1|auto_generated|safe_q\(13) & (\U1|auto_generated|safe_q\(12) & 
-- (\U1|auto_generated|safe_q\(14) $ (!\U1|auto_generated|safe_q\(15)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000010110010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U1|auto_generated|safe_q\(13),
	datab => \U1|auto_generated|safe_q\(14),
	datac => \U1|auto_generated|safe_q\(12),
	datad => \U1|auto_generated|safe_q\(15),
	combout => \H3|Add22~0_combout\);

-- Location: LCCOMB_X64_Y8_N28
\H3|Add18~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \H3|Add18~0_combout\ = (\U1|auto_generated|safe_q\(13) & (((\U1|auto_generated|safe_q\(15)) # (!\U1|auto_generated|safe_q\(12))))) # (!\U1|auto_generated|safe_q\(13) & ((\U1|auto_generated|safe_q\(14) & ((\U1|auto_generated|safe_q\(15)))) # 
-- (!\U1|auto_generated|safe_q\(14) & (!\U1|auto_generated|safe_q\(12)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111100001011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U1|auto_generated|safe_q\(13),
	datab => \U1|auto_generated|safe_q\(14),
	datac => \U1|auto_generated|safe_q\(12),
	datad => \U1|auto_generated|safe_q\(15),
	combout => \H3|Add18~0_combout\);

-- Location: LCCOMB_X64_Y8_N30
\H3|Add13~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \H3|Add13~0_combout\ = (\U1|auto_generated|safe_q\(13) & ((\U1|auto_generated|safe_q\(14) & (!\U1|auto_generated|safe_q\(12))) # (!\U1|auto_generated|safe_q\(14) & ((\U1|auto_generated|safe_q\(12)) # (!\U1|auto_generated|safe_q\(15)))))) # 
-- (!\U1|auto_generated|safe_q\(13) & ((\U1|auto_generated|safe_q\(15)) # (\U1|auto_generated|safe_q\(14) $ (!\U1|auto_generated|safe_q\(12)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111110101101011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U1|auto_generated|safe_q\(13),
	datab => \U1|auto_generated|safe_q\(14),
	datac => \U1|auto_generated|safe_q\(12),
	datad => \U1|auto_generated|safe_q\(15),
	combout => \H3|Add13~0_combout\);

-- Location: LCCOMB_X64_Y8_N16
\H3|Add10~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \H3|Add10~0_combout\ = (\U1|auto_generated|safe_q\(14) & (\U1|auto_generated|safe_q\(15) & ((\U1|auto_generated|safe_q\(13)) # (!\U1|auto_generated|safe_q\(12))))) # (!\U1|auto_generated|safe_q\(14) & (\U1|auto_generated|safe_q\(13) & 
-- (!\U1|auto_generated|safe_q\(12) & !\U1|auto_generated|safe_q\(15))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000110000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U1|auto_generated|safe_q\(13),
	datab => \U1|auto_generated|safe_q\(14),
	datac => \U1|auto_generated|safe_q\(12),
	datad => \U1|auto_generated|safe_q\(15),
	combout => \H3|Add10~0_combout\);

-- Location: LCCOMB_X64_Y8_N18
\H3|Add7~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \H3|Add7~0_combout\ = (\U1|auto_generated|safe_q\(13) & ((\U1|auto_generated|safe_q\(12) & ((\U1|auto_generated|safe_q\(15)))) # (!\U1|auto_generated|safe_q\(12) & (\U1|auto_generated|safe_q\(14))))) # (!\U1|auto_generated|safe_q\(13) & 
-- (\U1|auto_generated|safe_q\(14) & (\U1|auto_generated|safe_q\(12) $ (\U1|auto_generated|safe_q\(15)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110001001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U1|auto_generated|safe_q\(13),
	datab => \U1|auto_generated|safe_q\(14),
	datac => \U1|auto_generated|safe_q\(12),
	datad => \U1|auto_generated|safe_q\(15),
	combout => \H3|Add7~0_combout\);

-- Location: LCCOMB_X64_Y8_N12
\H3|Add2~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \H3|Add2~0_combout\ = (\U1|auto_generated|safe_q\(14) & ((\U1|auto_generated|safe_q\(13)) # (\U1|auto_generated|safe_q\(12) $ (\U1|auto_generated|safe_q\(15))))) # (!\U1|auto_generated|safe_q\(14) & ((\U1|auto_generated|safe_q\(13) $ 
-- (\U1|auto_generated|safe_q\(15))) # (!\U1|auto_generated|safe_q\(12))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001111111101011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U1|auto_generated|safe_q\(13),
	datab => \U1|auto_generated|safe_q\(14),
	datac => \U1|auto_generated|safe_q\(12),
	datad => \U1|auto_generated|safe_q\(15),
	combout => \H3|Add2~0_combout\);

-- Location: LCFF_X64_Y7_N21
\U1|auto_generated|counter_reg_bit1a[10]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \KEY~combout\(0),
	datain => \U1|auto_generated|counter_comb_bita10~combout\,
	sdata => \~GND~combout\,
	sload => \SW~combout\(1),
	ena => \SW~combout\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \U1|auto_generated|safe_q\(10));

-- Location: LCFF_X64_Y7_N17
\U1|auto_generated|counter_reg_bit1a[8]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \KEY~combout\(0),
	datain => \U1|auto_generated|counter_comb_bita8~combout\,
	sdata => \~GND~combout\,
	sload => \SW~combout\(1),
	ena => \SW~combout\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \U1|auto_generated|safe_q\(8));

-- Location: LCCOMB_X64_Y6_N0
\H2|Add25~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \H2|Add25~0_combout\ = (\U1|auto_generated|safe_q\(8) & ((\U1|auto_generated|safe_q\(11)) # (\U1|auto_generated|safe_q\(10) $ (\U1|auto_generated|safe_q\(9))))) # (!\U1|auto_generated|safe_q\(8) & ((\U1|auto_generated|safe_q\(9)) # 
-- (\U1|auto_generated|safe_q\(10) $ (\U1|auto_generated|safe_q\(11)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101111111100110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U1|auto_generated|safe_q\(10),
	datab => \U1|auto_generated|safe_q\(11),
	datac => \U1|auto_generated|safe_q\(8),
	datad => \U1|auto_generated|safe_q\(9),
	combout => \H2|Add25~0_combout\);

-- Location: LCCOMB_X64_Y6_N2
\H2|Add22~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \H2|Add22~0_combout\ = (\U1|auto_generated|safe_q\(10) & (\U1|auto_generated|safe_q\(8) & (\U1|auto_generated|safe_q\(11) $ (\U1|auto_generated|safe_q\(9))))) # (!\U1|auto_generated|safe_q\(10) & (!\U1|auto_generated|safe_q\(11) & 
-- ((\U1|auto_generated|safe_q\(8)) # (\U1|auto_generated|safe_q\(9)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000110010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U1|auto_generated|safe_q\(10),
	datab => \U1|auto_generated|safe_q\(11),
	datac => \U1|auto_generated|safe_q\(8),
	datad => \U1|auto_generated|safe_q\(9),
	combout => \H2|Add22~0_combout\);

-- Location: LCCOMB_X64_Y6_N20
\H2|Add18~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \H2|Add18~0_combout\ = (\U1|auto_generated|safe_q\(9) & (((\U1|auto_generated|safe_q\(11)) # (!\U1|auto_generated|safe_q\(8))))) # (!\U1|auto_generated|safe_q\(9) & ((\U1|auto_generated|safe_q\(10) & (\U1|auto_generated|safe_q\(11))) # 
-- (!\U1|auto_generated|safe_q\(10) & ((!\U1|auto_generated|safe_q\(8))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111110001101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U1|auto_generated|safe_q\(10),
	datab => \U1|auto_generated|safe_q\(11),
	datac => \U1|auto_generated|safe_q\(8),
	datad => \U1|auto_generated|safe_q\(9),
	combout => \H2|Add18~0_combout\);

-- Location: LCCOMB_X64_Y6_N30
\H2|Add13~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \H2|Add13~0_combout\ = (\U1|auto_generated|safe_q\(9) & ((\U1|auto_generated|safe_q\(10) & ((!\U1|auto_generated|safe_q\(8)))) # (!\U1|auto_generated|safe_q\(10) & ((\U1|auto_generated|safe_q\(8)) # (!\U1|auto_generated|safe_q\(11)))))) # 
-- (!\U1|auto_generated|safe_q\(9) & ((\U1|auto_generated|safe_q\(11)) # (\U1|auto_generated|safe_q\(10) $ (!\U1|auto_generated|safe_q\(8)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101111101101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U1|auto_generated|safe_q\(10),
	datab => \U1|auto_generated|safe_q\(11),
	datac => \U1|auto_generated|safe_q\(8),
	datad => \U1|auto_generated|safe_q\(9),
	combout => \H2|Add13~0_combout\);

-- Location: LCCOMB_X64_Y6_N16
\H2|Add10~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \H2|Add10~0_combout\ = (\U1|auto_generated|safe_q\(10) & (\U1|auto_generated|safe_q\(11) & ((\U1|auto_generated|safe_q\(9)) # (!\U1|auto_generated|safe_q\(8))))) # (!\U1|auto_generated|safe_q\(10) & (!\U1|auto_generated|safe_q\(11) & 
-- (!\U1|auto_generated|safe_q\(8) & \U1|auto_generated|safe_q\(9))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100100001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U1|auto_generated|safe_q\(10),
	datab => \U1|auto_generated|safe_q\(11),
	datac => \U1|auto_generated|safe_q\(8),
	datad => \U1|auto_generated|safe_q\(9),
	combout => \H2|Add10~0_combout\);

-- Location: LCCOMB_X64_Y6_N18
\H2|Add7~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \H2|Add7~0_combout\ = (\U1|auto_generated|safe_q\(11) & ((\U1|auto_generated|safe_q\(8) & ((\U1|auto_generated|safe_q\(9)))) # (!\U1|auto_generated|safe_q\(8) & (\U1|auto_generated|safe_q\(10))))) # (!\U1|auto_generated|safe_q\(11) & 
-- (\U1|auto_generated|safe_q\(10) & (\U1|auto_generated|safe_q\(8) $ (\U1|auto_generated|safe_q\(9)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101000101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U1|auto_generated|safe_q\(10),
	datab => \U1|auto_generated|safe_q\(11),
	datac => \U1|auto_generated|safe_q\(8),
	datad => \U1|auto_generated|safe_q\(9),
	combout => \H2|Add7~0_combout\);

-- Location: LCCOMB_X64_Y6_N12
\H2|Add2~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \H2|Add2~0_combout\ = (\U1|auto_generated|safe_q\(10) & ((\U1|auto_generated|safe_q\(9)) # (\U1|auto_generated|safe_q\(11) $ (\U1|auto_generated|safe_q\(8))))) # (!\U1|auto_generated|safe_q\(10) & ((\U1|auto_generated|safe_q\(11) $ 
-- (\U1|auto_generated|safe_q\(9))) # (!\U1|auto_generated|safe_q\(8))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011111101101101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U1|auto_generated|safe_q\(10),
	datab => \U1|auto_generated|safe_q\(11),
	datac => \U1|auto_generated|safe_q\(8),
	datad => \U1|auto_generated|safe_q\(9),
	combout => \H2|Add2~0_combout\);

-- Location: LCFF_X64_Y7_N11
\U1|auto_generated|counter_reg_bit1a[5]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \KEY~combout\(0),
	datain => \U1|auto_generated|counter_comb_bita5~combout\,
	sdata => \~GND~combout\,
	sload => \SW~combout\(1),
	ena => \SW~combout\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \U1|auto_generated|safe_q\(5));

-- Location: LCFF_X64_Y7_N13
\U1|auto_generated|counter_reg_bit1a[6]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \KEY~combout\(0),
	datain => \U1|auto_generated|counter_comb_bita6~combout\,
	sdata => \~GND~combout\,
	sload => \SW~combout\(1),
	ena => \SW~combout\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \U1|auto_generated|safe_q\(6));

-- Location: LCCOMB_X64_Y4_N8
\H1|Add25~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \H1|Add25~0_combout\ = (\U1|auto_generated|safe_q\(4) & ((\U1|auto_generated|safe_q\(7)) # (\U1|auto_generated|safe_q\(5) $ (\U1|auto_generated|safe_q\(6))))) # (!\U1|auto_generated|safe_q\(4) & ((\U1|auto_generated|safe_q\(5)) # 
-- (\U1|auto_generated|safe_q\(6) $ (\U1|auto_generated|safe_q\(7)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111101111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U1|auto_generated|safe_q\(5),
	datab => \U1|auto_generated|safe_q\(4),
	datac => \U1|auto_generated|safe_q\(6),
	datad => \U1|auto_generated|safe_q\(7),
	combout => \H1|Add25~0_combout\);

-- Location: LCCOMB_X64_Y4_N2
\H1|Add22~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \H1|Add22~0_combout\ = (\U1|auto_generated|safe_q\(5) & (!\U1|auto_generated|safe_q\(7) & ((\U1|auto_generated|safe_q\(4)) # (!\U1|auto_generated|safe_q\(6))))) # (!\U1|auto_generated|safe_q\(5) & (\U1|auto_generated|safe_q\(4) & 
-- (\U1|auto_generated|safe_q\(6) $ (!\U1|auto_generated|safe_q\(7)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000010001110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U1|auto_generated|safe_q\(5),
	datab => \U1|auto_generated|safe_q\(4),
	datac => \U1|auto_generated|safe_q\(6),
	datad => \U1|auto_generated|safe_q\(7),
	combout => \H1|Add22~0_combout\);

-- Location: LCCOMB_X64_Y4_N20
\H1|Add18~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \H1|Add18~0_combout\ = (\U1|auto_generated|safe_q\(5) & (((\U1|auto_generated|safe_q\(7))) # (!\U1|auto_generated|safe_q\(4)))) # (!\U1|auto_generated|safe_q\(5) & ((\U1|auto_generated|safe_q\(6) & ((\U1|auto_generated|safe_q\(7)))) # 
-- (!\U1|auto_generated|safe_q\(6) & (!\U1|auto_generated|safe_q\(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101100100011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U1|auto_generated|safe_q\(5),
	datab => \U1|auto_generated|safe_q\(4),
	datac => \U1|auto_generated|safe_q\(6),
	datad => \U1|auto_generated|safe_q\(7),
	combout => \H1|Add18~0_combout\);

-- Location: LCCOMB_X64_Y4_N30
\H1|Add13~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \H1|Add13~0_combout\ = (\U1|auto_generated|safe_q\(5) & ((\U1|auto_generated|safe_q\(4) & (!\U1|auto_generated|safe_q\(6))) # (!\U1|auto_generated|safe_q\(4) & ((\U1|auto_generated|safe_q\(6)) # (!\U1|auto_generated|safe_q\(7)))))) # 
-- (!\U1|auto_generated|safe_q\(5) & ((\U1|auto_generated|safe_q\(7)) # (\U1|auto_generated|safe_q\(4) $ (!\U1|auto_generated|safe_q\(6)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111110101101011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U1|auto_generated|safe_q\(5),
	datab => \U1|auto_generated|safe_q\(4),
	datac => \U1|auto_generated|safe_q\(6),
	datad => \U1|auto_generated|safe_q\(7),
	combout => \H1|Add13~0_combout\);

-- Location: LCCOMB_X64_Y4_N0
\H1|Add10~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \H1|Add10~0_combout\ = (\U1|auto_generated|safe_q\(6) & (\U1|auto_generated|safe_q\(7) & ((\U1|auto_generated|safe_q\(5)) # (!\U1|auto_generated|safe_q\(4))))) # (!\U1|auto_generated|safe_q\(6) & (\U1|auto_generated|safe_q\(5) & 
-- (!\U1|auto_generated|safe_q\(4) & !\U1|auto_generated|safe_q\(7))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011000000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U1|auto_generated|safe_q\(5),
	datab => \U1|auto_generated|safe_q\(4),
	datac => \U1|auto_generated|safe_q\(6),
	datad => \U1|auto_generated|safe_q\(7),
	combout => \H1|Add10~0_combout\);

-- Location: LCCOMB_X64_Y4_N26
\H1|Add7~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \H1|Add7~0_combout\ = (\U1|auto_generated|safe_q\(5) & ((\U1|auto_generated|safe_q\(4) & ((\U1|auto_generated|safe_q\(7)))) # (!\U1|auto_generated|safe_q\(4) & (\U1|auto_generated|safe_q\(6))))) # (!\U1|auto_generated|safe_q\(5) & 
-- (\U1|auto_generated|safe_q\(6) & (\U1|auto_generated|safe_q\(4) $ (\U1|auto_generated|safe_q\(7)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100001100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U1|auto_generated|safe_q\(5),
	datab => \U1|auto_generated|safe_q\(4),
	datac => \U1|auto_generated|safe_q\(6),
	datad => \U1|auto_generated|safe_q\(7),
	combout => \H1|Add7~0_combout\);

-- Location: LCCOMB_X64_Y4_N12
\H1|Add2~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \H1|Add2~0_combout\ = (\U1|auto_generated|safe_q\(6) & ((\U1|auto_generated|safe_q\(5)) # (\U1|auto_generated|safe_q\(4) $ (\U1|auto_generated|safe_q\(7))))) # (!\U1|auto_generated|safe_q\(6) & ((\U1|auto_generated|safe_q\(5) $ 
-- (\U1|auto_generated|safe_q\(7))) # (!\U1|auto_generated|safe_q\(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011011111101011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U1|auto_generated|safe_q\(5),
	datab => \U1|auto_generated|safe_q\(4),
	datac => \U1|auto_generated|safe_q\(6),
	datad => \U1|auto_generated|safe_q\(7),
	combout => \H1|Add2~0_combout\);

-- Location: LCFF_X64_Y7_N7
\U1|auto_generated|counter_reg_bit1a[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \KEY~combout\(0),
	datain => \U1|auto_generated|counter_comb_bita3~combout\,
	sdata => \~GND~combout\,
	sload => \SW~combout\(1),
	ena => \SW~combout\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \U1|auto_generated|safe_q\(3));

-- Location: LCCOMB_X28_Y3_N16
\H0|Add25~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \H0|Add25~0_combout\ = (\U1|auto_generated|safe_q\(0) & ((\U1|auto_generated|safe_q\(3)) # (\U1|auto_generated|safe_q\(2) $ (\U1|auto_generated|safe_q\(1))))) # (!\U1|auto_generated|safe_q\(0) & ((\U1|auto_generated|safe_q\(1)) # 
-- (\U1|auto_generated|safe_q\(3) $ (\U1|auto_generated|safe_q\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011111111100110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U1|auto_generated|safe_q\(3),
	datab => \U1|auto_generated|safe_q\(2),
	datac => \U1|auto_generated|safe_q\(0),
	datad => \U1|auto_generated|safe_q\(1),
	combout => \H0|Add25~0_combout\);

-- Location: LCCOMB_X28_Y3_N18
\H0|Add22~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \H0|Add22~0_combout\ = (\U1|auto_generated|safe_q\(2) & (\U1|auto_generated|safe_q\(0) & (\U1|auto_generated|safe_q\(3) $ (\U1|auto_generated|safe_q\(1))))) # (!\U1|auto_generated|safe_q\(2) & (!\U1|auto_generated|safe_q\(3) & 
-- ((\U1|auto_generated|safe_q\(0)) # (\U1|auto_generated|safe_q\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000110010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U1|auto_generated|safe_q\(3),
	datab => \U1|auto_generated|safe_q\(2),
	datac => \U1|auto_generated|safe_q\(0),
	datad => \U1|auto_generated|safe_q\(1),
	combout => \H0|Add22~0_combout\);

-- Location: LCCOMB_X28_Y3_N20
\H0|Add18~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \H0|Add18~0_combout\ = (\U1|auto_generated|safe_q\(1) & ((\U1|auto_generated|safe_q\(3)) # ((!\U1|auto_generated|safe_q\(0))))) # (!\U1|auto_generated|safe_q\(1) & ((\U1|auto_generated|safe_q\(2) & (\U1|auto_generated|safe_q\(3))) # 
-- (!\U1|auto_generated|safe_q\(2) & ((!\U1|auto_generated|safe_q\(0))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110001011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U1|auto_generated|safe_q\(3),
	datab => \U1|auto_generated|safe_q\(2),
	datac => \U1|auto_generated|safe_q\(0),
	datad => \U1|auto_generated|safe_q\(1),
	combout => \H0|Add18~0_combout\);

-- Location: LCCOMB_X28_Y3_N22
\H0|Add13~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \H0|Add13~0_combout\ = (\U1|auto_generated|safe_q\(1) & ((\U1|auto_generated|safe_q\(2) & ((!\U1|auto_generated|safe_q\(0)))) # (!\U1|auto_generated|safe_q\(2) & ((\U1|auto_generated|safe_q\(0)) # (!\U1|auto_generated|safe_q\(3)))))) # 
-- (!\U1|auto_generated|safe_q\(1) & ((\U1|auto_generated|safe_q\(3)) # (\U1|auto_generated|safe_q\(2) $ (!\U1|auto_generated|safe_q\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110111101011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U1|auto_generated|safe_q\(3),
	datab => \U1|auto_generated|safe_q\(2),
	datac => \U1|auto_generated|safe_q\(0),
	datad => \U1|auto_generated|safe_q\(1),
	combout => \H0|Add13~0_combout\);

-- Location: LCCOMB_X28_Y3_N24
\H0|Add10~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \H0|Add10~0_combout\ = (\U1|auto_generated|safe_q\(3) & (\U1|auto_generated|safe_q\(2) & ((\U1|auto_generated|safe_q\(1)) # (!\U1|auto_generated|safe_q\(0))))) # (!\U1|auto_generated|safe_q\(3) & (!\U1|auto_generated|safe_q\(2) & 
-- (!\U1|auto_generated|safe_q\(0) & \U1|auto_generated|safe_q\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100100001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U1|auto_generated|safe_q\(3),
	datab => \U1|auto_generated|safe_q\(2),
	datac => \U1|auto_generated|safe_q\(0),
	datad => \U1|auto_generated|safe_q\(1),
	combout => \H0|Add10~0_combout\);

-- Location: LCCOMB_X28_Y3_N26
\H0|Add7~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \H0|Add7~0_combout\ = (\U1|auto_generated|safe_q\(3) & ((\U1|auto_generated|safe_q\(0) & ((\U1|auto_generated|safe_q\(1)))) # (!\U1|auto_generated|safe_q\(0) & (\U1|auto_generated|safe_q\(2))))) # (!\U1|auto_generated|safe_q\(3) & 
-- (\U1|auto_generated|safe_q\(2) & (\U1|auto_generated|safe_q\(0) $ (\U1|auto_generated|safe_q\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110001001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U1|auto_generated|safe_q\(3),
	datab => \U1|auto_generated|safe_q\(2),
	datac => \U1|auto_generated|safe_q\(0),
	datad => \U1|auto_generated|safe_q\(1),
	combout => \H0|Add7~0_combout\);

-- Location: LCCOMB_X28_Y3_N12
\H0|Add2~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \H0|Add2~0_combout\ = (\U1|auto_generated|safe_q\(3) & ((\U1|auto_generated|safe_q\(2) $ (!\U1|auto_generated|safe_q\(1))) # (!\U1|auto_generated|safe_q\(0)))) # (!\U1|auto_generated|safe_q\(3) & ((\U1|auto_generated|safe_q\(1)) # 
-- (\U1|auto_generated|safe_q\(2) $ (!\U1|auto_generated|safe_q\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101111101101011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U1|auto_generated|safe_q\(3),
	datab => \U1|auto_generated|safe_q\(2),
	datac => \U1|auto_generated|safe_q\(0),
	datad => \U1|auto_generated|safe_q\(1),
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


