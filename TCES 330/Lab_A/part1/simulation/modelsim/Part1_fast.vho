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

-- DATE "05/05/2014 16:44:45"

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

ENTITY 	Part1 IS
    PORT (
	KEY : IN std_logic_vector(0 DOWNTO 0);
	SW : IN std_logic_vector(1 DOWNTO 0);
	HEX3 : OUT std_logic_vector(0 TO 6);
	HEX2 : OUT std_logic_vector(0 TO 6);
	HEX1 : OUT std_logic_vector(0 TO 6);
	HEX0 : OUT std_logic_vector(0 TO 6)
	);
END Part1;

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
-- SW[0]	=>  Location: PIN_N25,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- SW[1]	=>  Location: PIN_N26,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default


ARCHITECTURE structure OF Part1 IS
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
SIGNAL \U1|Tffg[9].U|Q~0_combout\ : std_logic;
SIGNAL \U1|Tffg[9].U|Q~regout\ : std_logic;
SIGNAL \U1|Tffg[10].U|Q~0_combout\ : std_logic;
SIGNAL \U1|Tffg[10].U|Q~regout\ : std_logic;
SIGNAL \U1|Tffg[0].U|Q~0_combout\ : std_logic;
SIGNAL \U1|Tffg[0].U|Q~regout\ : std_logic;
SIGNAL \U1|Tffg[2].U|Q~0_combout\ : std_logic;
SIGNAL \U1|Tffg[2].U|Q~regout\ : std_logic;
SIGNAL \U1|Tffg[3].U|Q~0_combout\ : std_logic;
SIGNAL \U1|Tffg[3].U|Q~regout\ : std_logic;
SIGNAL \U1|Tffg[4].U|Q~0_combout\ : std_logic;
SIGNAL \U1|Tffg[4].U|Q~regout\ : std_logic;
SIGNAL \U1|Tffg[6].U|Q~0_combout\ : std_logic;
SIGNAL \U1|Tffg[6].U|Q~regout\ : std_logic;
SIGNAL \U1|T[9]~0_combout\ : std_logic;
SIGNAL \U1|Tffg[7].U|Q~0_combout\ : std_logic;
SIGNAL \U1|Tffg[7].U|Q~regout\ : std_logic;
SIGNAL \U1|Tffg[8].U|Q~0_combout\ : std_logic;
SIGNAL \U1|Tffg[8].U|Q~regout\ : std_logic;
SIGNAL \U1|Tffg[11].U|Q~0_combout\ : std_logic;
SIGNAL \U1|Tffg[11].U|Q~regout\ : std_logic;
SIGNAL \U1|Tffg[12].U|Q~0_combout\ : std_logic;
SIGNAL \U1|Tffg[12].U|Q~regout\ : std_logic;
SIGNAL \U1|Tffg[13].U|Q~0_combout\ : std_logic;
SIGNAL \U1|Tffg[13].U|Q~regout\ : std_logic;
SIGNAL \U1|Tffg[14].U|Q~0_combout\ : std_logic;
SIGNAL \U1|Tffg[14].U|Q~regout\ : std_logic;
SIGNAL \U1|Tffg[15].U|Q~0_combout\ : std_logic;
SIGNAL \U1|Tffg[15].U|Q~regout\ : std_logic;
SIGNAL \H3|Add25~0_combout\ : std_logic;
SIGNAL \H3|Add22~0_combout\ : std_logic;
SIGNAL \H3|Add18~0_combout\ : std_logic;
SIGNAL \H3|Add13~0_combout\ : std_logic;
SIGNAL \H3|Add10~0_combout\ : std_logic;
SIGNAL \H3|Add7~0_combout\ : std_logic;
SIGNAL \H3|Add2~0_combout\ : std_logic;
SIGNAL \H2|Add25~0_combout\ : std_logic;
SIGNAL \H2|Add22~0_combout\ : std_logic;
SIGNAL \H2|Add18~0_combout\ : std_logic;
SIGNAL \H2|Add13~0_combout\ : std_logic;
SIGNAL \H2|Add10~0_combout\ : std_logic;
SIGNAL \H2|Add7~0_combout\ : std_logic;
SIGNAL \H2|Add2~0_combout\ : std_logic;
SIGNAL \U1|Tffg[5].U|Q~0_combout\ : std_logic;
SIGNAL \U1|Tffg[5].U|Q~regout\ : std_logic;
SIGNAL \H1|Add25~0_combout\ : std_logic;
SIGNAL \H1|Add22~0_combout\ : std_logic;
SIGNAL \H1|Add18~0_combout\ : std_logic;
SIGNAL \H1|Add13~0_combout\ : std_logic;
SIGNAL \H1|Add10~0_combout\ : std_logic;
SIGNAL \H1|Add7~0_combout\ : std_logic;
SIGNAL \H1|Add2~0_combout\ : std_logic;
SIGNAL \U1|Tffg[1].U|Q~0_combout\ : std_logic;
SIGNAL \U1|Tffg[1].U|Q~regout\ : std_logic;
SIGNAL \H0|Add25~0_combout\ : std_logic;
SIGNAL \H0|Add22~0_combout\ : std_logic;
SIGNAL \H0|Add18~0_combout\ : std_logic;
SIGNAL \H0|Add13~0_combout\ : std_logic;
SIGNAL \H0|Add10~0_combout\ : std_logic;
SIGNAL \H0|Add7~0_combout\ : std_logic;
SIGNAL \H0|Add2~0_combout\ : std_logic;
SIGNAL \U1|T\ : std_logic_vector(15 DOWNTO 0);
SIGNAL \SW~combout\ : std_logic_vector(1 DOWNTO 0);
SIGNAL \KEY~combout\ : std_logic_vector(0 DOWNTO 0);
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

-- Location: LCCOMB_X64_Y8_N24
\U1|T[15]\ : cycloneii_lcell_comb
-- Equation(s):
-- \U1|T\(15) = (\U1|Tffg[14].U|Q~regout\ & (\U1|Tffg[13].U|Q~regout\ & (\U1|Tffg[12].U|Q~regout\ & \U1|T\(12))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U1|Tffg[14].U|Q~regout\,
	datab => \U1|Tffg[13].U|Q~regout\,
	datac => \U1|Tffg[12].U|Q~regout\,
	datad => \U1|T\(12),
	combout => \U1|T\(15));

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

-- Location: LCCOMB_X64_Y7_N26
\U1|Tffg[9].U|Q~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \U1|Tffg[9].U|Q~0_combout\ = \U1|T\(9) $ (\U1|Tffg[9].U|Q~regout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U1|T\(9),
	datac => \U1|Tffg[9].U|Q~regout\,
	combout => \U1|Tffg[9].U|Q~0_combout\);

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

-- Location: LCFF_X64_Y7_N27
\U1|Tffg[9].U|Q\ : cycloneii_lcell_ff
PORT MAP (
	clk => \KEY~combout\(0),
	datain => \U1|Tffg[9].U|Q~0_combout\,
	sclr => \SW~combout\(1),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \U1|Tffg[9].U|Q~regout\);

-- Location: LCCOMB_X64_Y7_N28
\U1|Tffg[10].U|Q~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \U1|Tffg[10].U|Q~0_combout\ = \U1|Tffg[10].U|Q~regout\ $ (((\U1|T\(9) & \U1|Tffg[9].U|Q~regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U1|T\(9),
	datac => \U1|Tffg[10].U|Q~regout\,
	datad => \U1|Tffg[9].U|Q~regout\,
	combout => \U1|Tffg[10].U|Q~0_combout\);

-- Location: LCFF_X64_Y7_N29
\U1|Tffg[10].U|Q\ : cycloneii_lcell_ff
PORT MAP (
	clk => \KEY~combout\(0),
	datain => \U1|Tffg[10].U|Q~0_combout\,
	sclr => \SW~combout\(1),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \U1|Tffg[10].U|Q~regout\);

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

-- Location: LCCOMB_X53_Y4_N2
\U1|Tffg[0].U|Q~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \U1|Tffg[0].U|Q~0_combout\ = \U1|Tffg[0].U|Q~regout\ $ (\SW~combout\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \U1|Tffg[0].U|Q~regout\,
	datad => \SW~combout\(0),
	combout => \U1|Tffg[0].U|Q~0_combout\);

-- Location: LCFF_X53_Y4_N3
\U1|Tffg[0].U|Q\ : cycloneii_lcell_ff
PORT MAP (
	clk => \KEY~combout\(0),
	datain => \U1|Tffg[0].U|Q~0_combout\,
	sclr => \SW~combout\(1),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \U1|Tffg[0].U|Q~regout\);

-- Location: LCCOMB_X53_Y4_N20
\U1|Tffg[2].U|Q~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \U1|Tffg[2].U|Q~0_combout\ = \U1|Tffg[2].U|Q~regout\ $ (((\U1|Tffg[1].U|Q~regout\ & (\U1|Tffg[0].U|Q~regout\ & \SW~combout\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U1|Tffg[1].U|Q~regout\,
	datab => \U1|Tffg[0].U|Q~regout\,
	datac => \U1|Tffg[2].U|Q~regout\,
	datad => \SW~combout\(0),
	combout => \U1|Tffg[2].U|Q~0_combout\);

-- Location: LCFF_X53_Y4_N21
\U1|Tffg[2].U|Q\ : cycloneii_lcell_ff
PORT MAP (
	clk => \KEY~combout\(0),
	datain => \U1|Tffg[2].U|Q~0_combout\,
	sclr => \SW~combout\(1),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \U1|Tffg[2].U|Q~regout\);

-- Location: LCCOMB_X53_Y4_N12
\U1|T[3]\ : cycloneii_lcell_comb
-- Equation(s):
-- \U1|T\(3) = (\U1|Tffg[1].U|Q~regout\ & (\U1|Tffg[0].U|Q~regout\ & (\U1|Tffg[2].U|Q~regout\ & \SW~combout\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U1|Tffg[1].U|Q~regout\,
	datab => \U1|Tffg[0].U|Q~regout\,
	datac => \U1|Tffg[2].U|Q~regout\,
	datad => \SW~combout\(0),
	combout => \U1|T\(3));

-- Location: LCCOMB_X64_Y4_N26
\U1|Tffg[3].U|Q~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \U1|Tffg[3].U|Q~0_combout\ = \U1|Tffg[3].U|Q~regout\ $ (\U1|T\(3))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \U1|Tffg[3].U|Q~regout\,
	datad => \U1|T\(3),
	combout => \U1|Tffg[3].U|Q~0_combout\);

-- Location: LCFF_X64_Y4_N27
\U1|Tffg[3].U|Q\ : cycloneii_lcell_ff
PORT MAP (
	clk => \KEY~combout\(0),
	datain => \U1|Tffg[3].U|Q~0_combout\,
	sclr => \SW~combout\(1),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \U1|Tffg[3].U|Q~regout\);

-- Location: LCCOMB_X64_Y4_N30
\U1|Tffg[4].U|Q~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \U1|Tffg[4].U|Q~0_combout\ = \U1|Tffg[4].U|Q~regout\ $ (((\U1|T\(3) & \U1|Tffg[3].U|Q~regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U1|T\(3),
	datac => \U1|Tffg[4].U|Q~regout\,
	datad => \U1|Tffg[3].U|Q~regout\,
	combout => \U1|Tffg[4].U|Q~0_combout\);

-- Location: LCFF_X64_Y4_N31
\U1|Tffg[4].U|Q\ : cycloneii_lcell_ff
PORT MAP (
	clk => \KEY~combout\(0),
	datain => \U1|Tffg[4].U|Q~0_combout\,
	sclr => \SW~combout\(1),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \U1|Tffg[4].U|Q~regout\);

-- Location: LCCOMB_X64_Y4_N6
\U1|T[6]\ : cycloneii_lcell_comb
-- Equation(s):
-- \U1|T\(6) = (\U1|Tffg[5].U|Q~regout\ & (\U1|Tffg[4].U|Q~regout\ & (\U1|Tffg[3].U|Q~regout\ & \U1|T\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U1|Tffg[5].U|Q~regout\,
	datab => \U1|Tffg[4].U|Q~regout\,
	datac => \U1|Tffg[3].U|Q~regout\,
	datad => \U1|T\(3),
	combout => \U1|T\(6));

-- Location: LCCOMB_X64_Y4_N16
\U1|Tffg[6].U|Q~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \U1|Tffg[6].U|Q~0_combout\ = \U1|Tffg[6].U|Q~regout\ $ (\U1|T\(6))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \U1|Tffg[6].U|Q~regout\,
	datad => \U1|T\(6),
	combout => \U1|Tffg[6].U|Q~0_combout\);

-- Location: LCFF_X64_Y4_N17
\U1|Tffg[6].U|Q\ : cycloneii_lcell_ff
PORT MAP (
	clk => \KEY~combout\(0),
	datain => \U1|Tffg[6].U|Q~0_combout\,
	sclr => \SW~combout\(1),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \U1|Tffg[6].U|Q~regout\);

-- Location: LCCOMB_X64_Y4_N2
\U1|T[9]~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \U1|T[9]~0_combout\ = (\U1|Tffg[5].U|Q~regout\ & (\U1|Tffg[4].U|Q~regout\ & (\U1|Tffg[6].U|Q~regout\ & \U1|Tffg[3].U|Q~regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U1|Tffg[5].U|Q~regout\,
	datab => \U1|Tffg[4].U|Q~regout\,
	datac => \U1|Tffg[6].U|Q~regout\,
	datad => \U1|Tffg[3].U|Q~regout\,
	combout => \U1|T[9]~0_combout\);

-- Location: LCCOMB_X64_Y4_N10
\U1|Tffg[7].U|Q~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \U1|Tffg[7].U|Q~0_combout\ = \U1|Tffg[7].U|Q~regout\ $ (((\U1|Tffg[6].U|Q~regout\ & \U1|T\(6))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U1|Tffg[6].U|Q~regout\,
	datac => \U1|Tffg[7].U|Q~regout\,
	datad => \U1|T\(6),
	combout => \U1|Tffg[7].U|Q~0_combout\);

-- Location: LCFF_X64_Y4_N11
\U1|Tffg[7].U|Q\ : cycloneii_lcell_ff
PORT MAP (
	clk => \KEY~combout\(0),
	datain => \U1|Tffg[7].U|Q~0_combout\,
	sclr => \SW~combout\(1),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \U1|Tffg[7].U|Q~regout\);

-- Location: LCCOMB_X64_Y4_N8
\U1|Tffg[8].U|Q~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \U1|Tffg[8].U|Q~0_combout\ = \U1|Tffg[8].U|Q~regout\ $ (((\U1|T\(6) & (\U1|Tffg[6].U|Q~regout\ & \U1|Tffg[7].U|Q~regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U1|T\(6),
	datab => \U1|Tffg[6].U|Q~regout\,
	datac => \U1|Tffg[8].U|Q~regout\,
	datad => \U1|Tffg[7].U|Q~regout\,
	combout => \U1|Tffg[8].U|Q~0_combout\);

-- Location: LCFF_X64_Y4_N9
\U1|Tffg[8].U|Q\ : cycloneii_lcell_ff
PORT MAP (
	clk => \KEY~combout\(0),
	datain => \U1|Tffg[8].U|Q~0_combout\,
	sclr => \SW~combout\(1),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \U1|Tffg[8].U|Q~regout\);

-- Location: LCCOMB_X64_Y4_N20
\U1|T[9]\ : cycloneii_lcell_comb
-- Equation(s):
-- \U1|T\(9) = (\U1|T\(3) & (\U1|T[9]~0_combout\ & (\U1|Tffg[8].U|Q~regout\ & \U1|Tffg[7].U|Q~regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U1|T\(3),
	datab => \U1|T[9]~0_combout\,
	datac => \U1|Tffg[8].U|Q~regout\,
	datad => \U1|Tffg[7].U|Q~regout\,
	combout => \U1|T\(9));

-- Location: LCCOMB_X64_Y7_N0
\U1|Tffg[11].U|Q~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \U1|Tffg[11].U|Q~0_combout\ = \U1|Tffg[11].U|Q~regout\ $ (((\U1|T\(9) & (\U1|Tffg[10].U|Q~regout\ & \U1|Tffg[9].U|Q~regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U1|T\(9),
	datab => \U1|Tffg[10].U|Q~regout\,
	datac => \U1|Tffg[11].U|Q~regout\,
	datad => \U1|Tffg[9].U|Q~regout\,
	combout => \U1|Tffg[11].U|Q~0_combout\);

-- Location: LCFF_X64_Y7_N1
\U1|Tffg[11].U|Q\ : cycloneii_lcell_ff
PORT MAP (
	clk => \KEY~combout\(0),
	datain => \U1|Tffg[11].U|Q~0_combout\,
	sclr => \SW~combout\(1),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \U1|Tffg[11].U|Q~regout\);

-- Location: LCCOMB_X64_Y8_N22
\U1|T[12]\ : cycloneii_lcell_comb
-- Equation(s):
-- \U1|T\(12) = (\U1|Tffg[9].U|Q~regout\ & (\U1|Tffg[10].U|Q~regout\ & (\U1|T\(9) & \U1|Tffg[11].U|Q~regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U1|Tffg[9].U|Q~regout\,
	datab => \U1|Tffg[10].U|Q~regout\,
	datac => \U1|T\(9),
	datad => \U1|Tffg[11].U|Q~regout\,
	combout => \U1|T\(12));

-- Location: LCCOMB_X64_Y8_N28
\U1|Tffg[12].U|Q~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \U1|Tffg[12].U|Q~0_combout\ = \U1|Tffg[12].U|Q~regout\ $ (\U1|T\(12))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \U1|Tffg[12].U|Q~regout\,
	datad => \U1|T\(12),
	combout => \U1|Tffg[12].U|Q~0_combout\);

-- Location: LCFF_X64_Y8_N29
\U1|Tffg[12].U|Q\ : cycloneii_lcell_ff
PORT MAP (
	clk => \KEY~combout\(0),
	datain => \U1|Tffg[12].U|Q~0_combout\,
	sclr => \SW~combout\(1),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \U1|Tffg[12].U|Q~regout\);

-- Location: LCCOMB_X64_Y8_N26
\U1|Tffg[13].U|Q~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \U1|Tffg[13].U|Q~0_combout\ = \U1|Tffg[13].U|Q~regout\ $ (((\U1|T\(12) & \U1|Tffg[12].U|Q~regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \U1|T\(12),
	datac => \U1|Tffg[13].U|Q~regout\,
	datad => \U1|Tffg[12].U|Q~regout\,
	combout => \U1|Tffg[13].U|Q~0_combout\);

-- Location: LCFF_X64_Y8_N27
\U1|Tffg[13].U|Q\ : cycloneii_lcell_ff
PORT MAP (
	clk => \KEY~combout\(0),
	datain => \U1|Tffg[13].U|Q~0_combout\,
	sclr => \SW~combout\(1),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \U1|Tffg[13].U|Q~regout\);

-- Location: LCCOMB_X64_Y8_N6
\U1|Tffg[14].U|Q~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \U1|Tffg[14].U|Q~0_combout\ = \U1|Tffg[14].U|Q~regout\ $ (((\U1|Tffg[12].U|Q~regout\ & (\U1|Tffg[13].U|Q~regout\ & \U1|T\(12)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U1|Tffg[12].U|Q~regout\,
	datab => \U1|Tffg[13].U|Q~regout\,
	datac => \U1|Tffg[14].U|Q~regout\,
	datad => \U1|T\(12),
	combout => \U1|Tffg[14].U|Q~0_combout\);

-- Location: LCFF_X64_Y8_N7
\U1|Tffg[14].U|Q\ : cycloneii_lcell_ff
PORT MAP (
	clk => \KEY~combout\(0),
	datain => \U1|Tffg[14].U|Q~0_combout\,
	sclr => \SW~combout\(1),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \U1|Tffg[14].U|Q~regout\);

-- Location: LCCOMB_X64_Y8_N8
\U1|Tffg[15].U|Q~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \U1|Tffg[15].U|Q~0_combout\ = \U1|T\(15) $ (\U1|Tffg[15].U|Q~regout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U1|T\(15),
	datac => \U1|Tffg[15].U|Q~regout\,
	combout => \U1|Tffg[15].U|Q~0_combout\);

-- Location: LCFF_X64_Y8_N9
\U1|Tffg[15].U|Q\ : cycloneii_lcell_ff
PORT MAP (
	clk => \KEY~combout\(0),
	datain => \U1|Tffg[15].U|Q~0_combout\,
	sclr => \SW~combout\(1),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \U1|Tffg[15].U|Q~regout\);

-- Location: LCCOMB_X64_Y8_N0
\H3|Add25~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \H3|Add25~0_combout\ = (\U1|Tffg[12].U|Q~regout\ & ((\U1|Tffg[15].U|Q~regout\) # (\U1|Tffg[14].U|Q~regout\ $ (\U1|Tffg[13].U|Q~regout\)))) # (!\U1|Tffg[12].U|Q~regout\ & ((\U1|Tffg[13].U|Q~regout\) # (\U1|Tffg[14].U|Q~regout\ $ 
-- (\U1|Tffg[15].U|Q~regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111011011011110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U1|Tffg[14].U|Q~regout\,
	datab => \U1|Tffg[13].U|Q~regout\,
	datac => \U1|Tffg[15].U|Q~regout\,
	datad => \U1|Tffg[12].U|Q~regout\,
	combout => \H3|Add25~0_combout\);

-- Location: LCCOMB_X64_Y8_N2
\H3|Add22~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \H3|Add22~0_combout\ = (\U1|Tffg[14].U|Q~regout\ & (\U1|Tffg[12].U|Q~regout\ & (\U1|Tffg[13].U|Q~regout\ $ (\U1|Tffg[15].U|Q~regout\)))) # (!\U1|Tffg[14].U|Q~regout\ & (!\U1|Tffg[15].U|Q~regout\ & ((\U1|Tffg[13].U|Q~regout\) # 
-- (\U1|Tffg[12].U|Q~regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010110100000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U1|Tffg[14].U|Q~regout\,
	datab => \U1|Tffg[13].U|Q~regout\,
	datac => \U1|Tffg[15].U|Q~regout\,
	datad => \U1|Tffg[12].U|Q~regout\,
	combout => \H3|Add22~0_combout\);

-- Location: LCCOMB_X64_Y8_N20
\H3|Add18~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \H3|Add18~0_combout\ = (\U1|Tffg[13].U|Q~regout\ & (((\U1|Tffg[15].U|Q~regout\) # (!\U1|Tffg[12].U|Q~regout\)))) # (!\U1|Tffg[13].U|Q~regout\ & ((\U1|Tffg[14].U|Q~regout\ & (\U1|Tffg[15].U|Q~regout\)) # (!\U1|Tffg[14].U|Q~regout\ & 
-- ((!\U1|Tffg[12].U|Q~regout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000011111101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U1|Tffg[14].U|Q~regout\,
	datab => \U1|Tffg[13].U|Q~regout\,
	datac => \U1|Tffg[15].U|Q~regout\,
	datad => \U1|Tffg[12].U|Q~regout\,
	combout => \H3|Add18~0_combout\);

-- Location: LCCOMB_X64_Y8_N30
\H3|Add13~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \H3|Add13~0_combout\ = (\U1|Tffg[13].U|Q~regout\ & ((\U1|Tffg[14].U|Q~regout\ & ((!\U1|Tffg[12].U|Q~regout\))) # (!\U1|Tffg[14].U|Q~regout\ & ((\U1|Tffg[12].U|Q~regout\) # (!\U1|Tffg[15].U|Q~regout\))))) # (!\U1|Tffg[13].U|Q~regout\ & 
-- ((\U1|Tffg[15].U|Q~regout\) # (\U1|Tffg[14].U|Q~regout\ $ (!\U1|Tffg[12].U|Q~regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111011010111101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U1|Tffg[14].U|Q~regout\,
	datab => \U1|Tffg[13].U|Q~regout\,
	datac => \U1|Tffg[15].U|Q~regout\,
	datad => \U1|Tffg[12].U|Q~regout\,
	combout => \H3|Add13~0_combout\);

-- Location: LCCOMB_X64_Y8_N16
\H3|Add10~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \H3|Add10~0_combout\ = (\U1|Tffg[14].U|Q~regout\ & (\U1|Tffg[15].U|Q~regout\ & ((\U1|Tffg[13].U|Q~regout\) # (!\U1|Tffg[12].U|Q~regout\)))) # (!\U1|Tffg[14].U|Q~regout\ & (\U1|Tffg[13].U|Q~regout\ & (!\U1|Tffg[15].U|Q~regout\ & 
-- !\U1|Tffg[12].U|Q~regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000010100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U1|Tffg[14].U|Q~regout\,
	datab => \U1|Tffg[13].U|Q~regout\,
	datac => \U1|Tffg[15].U|Q~regout\,
	datad => \U1|Tffg[12].U|Q~regout\,
	combout => \H3|Add10~0_combout\);

-- Location: LCCOMB_X64_Y8_N18
\H3|Add7~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \H3|Add7~0_combout\ = (\U1|Tffg[13].U|Q~regout\ & ((\U1|Tffg[12].U|Q~regout\ & ((\U1|Tffg[15].U|Q~regout\))) # (!\U1|Tffg[12].U|Q~regout\ & (\U1|Tffg[14].U|Q~regout\)))) # (!\U1|Tffg[13].U|Q~regout\ & (\U1|Tffg[14].U|Q~regout\ & (\U1|Tffg[15].U|Q~regout\ 
-- $ (\U1|Tffg[12].U|Q~regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001010101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U1|Tffg[14].U|Q~regout\,
	datab => \U1|Tffg[13].U|Q~regout\,
	datac => \U1|Tffg[15].U|Q~regout\,
	datad => \U1|Tffg[12].U|Q~regout\,
	combout => \H3|Add7~0_combout\);

-- Location: LCCOMB_X64_Y8_N12
\H3|Add2~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \H3|Add2~0_combout\ = (\U1|Tffg[14].U|Q~regout\ & ((\U1|Tffg[13].U|Q~regout\) # (\U1|Tffg[15].U|Q~regout\ $ (\U1|Tffg[12].U|Q~regout\)))) # (!\U1|Tffg[14].U|Q~regout\ & ((\U1|Tffg[13].U|Q~regout\ $ (\U1|Tffg[15].U|Q~regout\)) # 
-- (!\U1|Tffg[12].U|Q~regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001111011111101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U1|Tffg[14].U|Q~regout\,
	datab => \U1|Tffg[13].U|Q~regout\,
	datac => \U1|Tffg[15].U|Q~regout\,
	datad => \U1|Tffg[12].U|Q~regout\,
	combout => \H3|Add2~0_combout\);

-- Location: LCCOMB_X64_Y7_N30
\H2|Add25~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \H2|Add25~0_combout\ = (\U1|Tffg[8].U|Q~regout\ & ((\U1|Tffg[11].U|Q~regout\) # (\U1|Tffg[10].U|Q~regout\ $ (\U1|Tffg[9].U|Q~regout\)))) # (!\U1|Tffg[8].U|Q~regout\ & ((\U1|Tffg[9].U|Q~regout\) # (\U1|Tffg[11].U|Q~regout\ $ (\U1|Tffg[10].U|Q~regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101111110111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U1|Tffg[8].U|Q~regout\,
	datab => \U1|Tffg[11].U|Q~regout\,
	datac => \U1|Tffg[10].U|Q~regout\,
	datad => \U1|Tffg[9].U|Q~regout\,
	combout => \H2|Add25~0_combout\);

-- Location: LCCOMB_X64_Y7_N24
\H2|Add22~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \H2|Add22~0_combout\ = (\U1|Tffg[8].U|Q~regout\ & (\U1|Tffg[11].U|Q~regout\ $ (((\U1|Tffg[9].U|Q~regout\) # (!\U1|Tffg[10].U|Q~regout\))))) # (!\U1|Tffg[8].U|Q~regout\ & (!\U1|Tffg[11].U|Q~regout\ & (!\U1|Tffg[10].U|Q~regout\ & \U1|Tffg[9].U|Q~regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001110000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U1|Tffg[8].U|Q~regout\,
	datab => \U1|Tffg[11].U|Q~regout\,
	datac => \U1|Tffg[10].U|Q~regout\,
	datad => \U1|Tffg[9].U|Q~regout\,
	combout => \H2|Add22~0_combout\);

-- Location: LCCOMB_X64_Y7_N2
\H2|Add18~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \H2|Add18~0_combout\ = (\U1|Tffg[9].U|Q~regout\ & (((\U1|Tffg[11].U|Q~regout\)) # (!\U1|Tffg[8].U|Q~regout\))) # (!\U1|Tffg[9].U|Q~regout\ & ((\U1|Tffg[10].U|Q~regout\ & ((\U1|Tffg[11].U|Q~regout\))) # (!\U1|Tffg[10].U|Q~regout\ & 
-- (!\U1|Tffg[8].U|Q~regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110111000101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U1|Tffg[8].U|Q~regout\,
	datab => \U1|Tffg[11].U|Q~regout\,
	datac => \U1|Tffg[10].U|Q~regout\,
	datad => \U1|Tffg[9].U|Q~regout\,
	combout => \H2|Add18~0_combout\);

-- Location: LCCOMB_X64_Y7_N20
\H2|Add13~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \H2|Add13~0_combout\ = (\U1|Tffg[9].U|Q~regout\ & ((\U1|Tffg[8].U|Q~regout\ & ((!\U1|Tffg[10].U|Q~regout\))) # (!\U1|Tffg[8].U|Q~regout\ & ((\U1|Tffg[10].U|Q~regout\) # (!\U1|Tffg[11].U|Q~regout\))))) # (!\U1|Tffg[9].U|Q~regout\ & 
-- ((\U1|Tffg[11].U|Q~regout\) # (\U1|Tffg[8].U|Q~regout\ $ (!\U1|Tffg[10].U|Q~regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101111101101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U1|Tffg[8].U|Q~regout\,
	datab => \U1|Tffg[11].U|Q~regout\,
	datac => \U1|Tffg[10].U|Q~regout\,
	datad => \U1|Tffg[9].U|Q~regout\,
	combout => \H2|Add13~0_combout\);

-- Location: LCCOMB_X64_Y7_N22
\H2|Add10~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \H2|Add10~0_combout\ = (\U1|Tffg[11].U|Q~regout\ & (\U1|Tffg[10].U|Q~regout\ & ((\U1|Tffg[9].U|Q~regout\) # (!\U1|Tffg[8].U|Q~regout\)))) # (!\U1|Tffg[11].U|Q~regout\ & (!\U1|Tffg[8].U|Q~regout\ & (!\U1|Tffg[10].U|Q~regout\ & \U1|Tffg[9].U|Q~regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000101000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U1|Tffg[8].U|Q~regout\,
	datab => \U1|Tffg[11].U|Q~regout\,
	datac => \U1|Tffg[10].U|Q~regout\,
	datad => \U1|Tffg[9].U|Q~regout\,
	combout => \H2|Add10~0_combout\);

-- Location: LCCOMB_X64_Y7_N16
\H2|Add7~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \H2|Add7~0_combout\ = (\U1|Tffg[11].U|Q~regout\ & ((\U1|Tffg[8].U|Q~regout\ & ((\U1|Tffg[9].U|Q~regout\))) # (!\U1|Tffg[8].U|Q~regout\ & (\U1|Tffg[10].U|Q~regout\)))) # (!\U1|Tffg[11].U|Q~regout\ & (\U1|Tffg[10].U|Q~regout\ & (\U1|Tffg[8].U|Q~regout\ $ 
-- (\U1|Tffg[9].U|Q~regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100001100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U1|Tffg[8].U|Q~regout\,
	datab => \U1|Tffg[11].U|Q~regout\,
	datac => \U1|Tffg[10].U|Q~regout\,
	datad => \U1|Tffg[9].U|Q~regout\,
	combout => \H2|Add7~0_combout\);

-- Location: LCCOMB_X64_Y7_N18
\H2|Add2~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \H2|Add2~0_combout\ = (\U1|Tffg[11].U|Q~regout\ & ((\U1|Tffg[10].U|Q~regout\ $ (!\U1|Tffg[9].U|Q~regout\)) # (!\U1|Tffg[8].U|Q~regout\))) # (!\U1|Tffg[11].U|Q~regout\ & ((\U1|Tffg[9].U|Q~regout\) # (\U1|Tffg[8].U|Q~regout\ $ (!\U1|Tffg[10].U|Q~regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111011101101101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U1|Tffg[8].U|Q~regout\,
	datab => \U1|Tffg[11].U|Q~regout\,
	datac => \U1|Tffg[10].U|Q~regout\,
	datad => \U1|Tffg[9].U|Q~regout\,
	combout => \H2|Add2~0_combout\);

-- Location: LCCOMB_X64_Y4_N12
\U1|Tffg[5].U|Q~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \U1|Tffg[5].U|Q~0_combout\ = \U1|Tffg[5].U|Q~regout\ $ (((\U1|T\(3) & (\U1|Tffg[4].U|Q~regout\ & \U1|Tffg[3].U|Q~regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U1|T\(3),
	datab => \U1|Tffg[4].U|Q~regout\,
	datac => \U1|Tffg[5].U|Q~regout\,
	datad => \U1|Tffg[3].U|Q~regout\,
	combout => \U1|Tffg[5].U|Q~0_combout\);

-- Location: LCFF_X64_Y4_N13
\U1|Tffg[5].U|Q\ : cycloneii_lcell_ff
PORT MAP (
	clk => \KEY~combout\(0),
	datain => \U1|Tffg[5].U|Q~0_combout\,
	sclr => \SW~combout\(1),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \U1|Tffg[5].U|Q~regout\);

-- Location: LCCOMB_X64_Y4_N28
\H1|Add25~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \H1|Add25~0_combout\ = (\U1|Tffg[4].U|Q~regout\ & ((\U1|Tffg[7].U|Q~regout\) # (\U1|Tffg[6].U|Q~regout\ $ (\U1|Tffg[5].U|Q~regout\)))) # (!\U1|Tffg[4].U|Q~regout\ & ((\U1|Tffg[5].U|Q~regout\) # (\U1|Tffg[7].U|Q~regout\ $ (\U1|Tffg[6].U|Q~regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011111111011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U1|Tffg[7].U|Q~regout\,
	datab => \U1|Tffg[4].U|Q~regout\,
	datac => \U1|Tffg[6].U|Q~regout\,
	datad => \U1|Tffg[5].U|Q~regout\,
	combout => \H1|Add25~0_combout\);

-- Location: LCCOMB_X64_Y4_N22
\H1|Add22~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \H1|Add22~0_combout\ = (\U1|Tffg[4].U|Q~regout\ & (\U1|Tffg[7].U|Q~regout\ $ (((\U1|Tffg[5].U|Q~regout\) # (!\U1|Tffg[6].U|Q~regout\))))) # (!\U1|Tffg[4].U|Q~regout\ & (!\U1|Tffg[7].U|Q~regout\ & (!\U1|Tffg[6].U|Q~regout\ & \U1|Tffg[5].U|Q~regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010110000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U1|Tffg[7].U|Q~regout\,
	datab => \U1|Tffg[4].U|Q~regout\,
	datac => \U1|Tffg[6].U|Q~regout\,
	datad => \U1|Tffg[5].U|Q~regout\,
	combout => \H1|Add22~0_combout\);

-- Location: LCCOMB_X64_Y4_N0
\H1|Add18~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \H1|Add18~0_combout\ = (\U1|Tffg[5].U|Q~regout\ & ((\U1|Tffg[7].U|Q~regout\) # ((!\U1|Tffg[4].U|Q~regout\)))) # (!\U1|Tffg[5].U|Q~regout\ & ((\U1|Tffg[6].U|Q~regout\ & (\U1|Tffg[7].U|Q~regout\)) # (!\U1|Tffg[6].U|Q~regout\ & 
-- ((!\U1|Tffg[4].U|Q~regout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101110100011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U1|Tffg[7].U|Q~regout\,
	datab => \U1|Tffg[4].U|Q~regout\,
	datac => \U1|Tffg[6].U|Q~regout\,
	datad => \U1|Tffg[5].U|Q~regout\,
	combout => \H1|Add18~0_combout\);

-- Location: LCCOMB_X64_Y4_N18
\H1|Add13~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \H1|Add13~0_combout\ = (\U1|Tffg[5].U|Q~regout\ & ((\U1|Tffg[4].U|Q~regout\ & ((!\U1|Tffg[6].U|Q~regout\))) # (!\U1|Tffg[4].U|Q~regout\ & ((\U1|Tffg[6].U|Q~regout\) # (!\U1|Tffg[7].U|Q~regout\))))) # (!\U1|Tffg[5].U|Q~regout\ & ((\U1|Tffg[7].U|Q~regout\) 
-- # (\U1|Tffg[4].U|Q~regout\ $ (!\U1|Tffg[6].U|Q~regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110111101011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U1|Tffg[7].U|Q~regout\,
	datab => \U1|Tffg[4].U|Q~regout\,
	datac => \U1|Tffg[6].U|Q~regout\,
	datad => \U1|Tffg[5].U|Q~regout\,
	combout => \H1|Add13~0_combout\);

-- Location: LCCOMB_X64_Y4_N4
\H1|Add10~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \H1|Add10~0_combout\ = (\U1|Tffg[7].U|Q~regout\ & (\U1|Tffg[6].U|Q~regout\ & ((\U1|Tffg[5].U|Q~regout\) # (!\U1|Tffg[4].U|Q~regout\)))) # (!\U1|Tffg[7].U|Q~regout\ & (!\U1|Tffg[4].U|Q~regout\ & (!\U1|Tffg[6].U|Q~regout\ & \U1|Tffg[5].U|Q~regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000100100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U1|Tffg[7].U|Q~regout\,
	datab => \U1|Tffg[4].U|Q~regout\,
	datac => \U1|Tffg[6].U|Q~regout\,
	datad => \U1|Tffg[5].U|Q~regout\,
	combout => \H1|Add10~0_combout\);

-- Location: LCCOMB_X64_Y4_N14
\H1|Add7~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \H1|Add7~0_combout\ = (\U1|Tffg[7].U|Q~regout\ & ((\U1|Tffg[4].U|Q~regout\ & ((\U1|Tffg[5].U|Q~regout\))) # (!\U1|Tffg[4].U|Q~regout\ & (\U1|Tffg[6].U|Q~regout\)))) # (!\U1|Tffg[7].U|Q~regout\ & (\U1|Tffg[6].U|Q~regout\ & (\U1|Tffg[4].U|Q~regout\ $ 
-- (\U1|Tffg[5].U|Q~regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100001100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U1|Tffg[7].U|Q~regout\,
	datab => \U1|Tffg[4].U|Q~regout\,
	datac => \U1|Tffg[6].U|Q~regout\,
	datad => \U1|Tffg[5].U|Q~regout\,
	combout => \H1|Add7~0_combout\);

-- Location: LCCOMB_X64_Y4_N24
\H1|Add2~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \H1|Add2~0_combout\ = (\U1|Tffg[7].U|Q~regout\ & ((\U1|Tffg[6].U|Q~regout\ $ (!\U1|Tffg[5].U|Q~regout\)) # (!\U1|Tffg[4].U|Q~regout\))) # (!\U1|Tffg[7].U|Q~regout\ & ((\U1|Tffg[5].U|Q~regout\) # (\U1|Tffg[4].U|Q~regout\ $ (!\U1|Tffg[6].U|Q~regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111011101101011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U1|Tffg[7].U|Q~regout\,
	datab => \U1|Tffg[4].U|Q~regout\,
	datac => \U1|Tffg[6].U|Q~regout\,
	datad => \U1|Tffg[5].U|Q~regout\,
	combout => \H1|Add2~0_combout\);

-- Location: LCCOMB_X53_Y4_N24
\U1|Tffg[1].U|Q~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \U1|Tffg[1].U|Q~0_combout\ = \U1|Tffg[1].U|Q~regout\ $ (((\U1|Tffg[0].U|Q~regout\ & \SW~combout\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \U1|Tffg[0].U|Q~regout\,
	datac => \U1|Tffg[1].U|Q~regout\,
	datad => \SW~combout\(0),
	combout => \U1|Tffg[1].U|Q~0_combout\);

-- Location: LCFF_X53_Y4_N25
\U1|Tffg[1].U|Q\ : cycloneii_lcell_ff
PORT MAP (
	clk => \KEY~combout\(0),
	datain => \U1|Tffg[1].U|Q~0_combout\,
	sclr => \SW~combout\(1),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \U1|Tffg[1].U|Q~regout\);

-- Location: LCCOMB_X53_Y4_N6
\H0|Add25~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \H0|Add25~0_combout\ = (\U1|Tffg[0].U|Q~regout\ & ((\U1|Tffg[3].U|Q~regout\) # (\U1|Tffg[1].U|Q~regout\ $ (\U1|Tffg[2].U|Q~regout\)))) # (!\U1|Tffg[0].U|Q~regout\ & ((\U1|Tffg[1].U|Q~regout\) # (\U1|Tffg[2].U|Q~regout\ $ (\U1|Tffg[3].U|Q~regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111101111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U1|Tffg[1].U|Q~regout\,
	datab => \U1|Tffg[0].U|Q~regout\,
	datac => \U1|Tffg[2].U|Q~regout\,
	datad => \U1|Tffg[3].U|Q~regout\,
	combout => \H0|Add25~0_combout\);

-- Location: LCCOMB_X53_Y4_N16
\H0|Add22~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \H0|Add22~0_combout\ = (\U1|Tffg[1].U|Q~regout\ & (!\U1|Tffg[3].U|Q~regout\ & ((\U1|Tffg[0].U|Q~regout\) # (!\U1|Tffg[2].U|Q~regout\)))) # (!\U1|Tffg[1].U|Q~regout\ & (\U1|Tffg[0].U|Q~regout\ & (\U1|Tffg[2].U|Q~regout\ $ (!\U1|Tffg[3].U|Q~regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000010001110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U1|Tffg[1].U|Q~regout\,
	datab => \U1|Tffg[0].U|Q~regout\,
	datac => \U1|Tffg[2].U|Q~regout\,
	datad => \U1|Tffg[3].U|Q~regout\,
	combout => \H0|Add22~0_combout\);

-- Location: LCCOMB_X53_Y4_N26
\H0|Add18~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \H0|Add18~0_combout\ = (\U1|Tffg[1].U|Q~regout\ & (((\U1|Tffg[3].U|Q~regout\)) # (!\U1|Tffg[0].U|Q~regout\))) # (!\U1|Tffg[1].U|Q~regout\ & ((\U1|Tffg[2].U|Q~regout\ & ((\U1|Tffg[3].U|Q~regout\))) # (!\U1|Tffg[2].U|Q~regout\ & 
-- (!\U1|Tffg[0].U|Q~regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101100100011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U1|Tffg[1].U|Q~regout\,
	datab => \U1|Tffg[0].U|Q~regout\,
	datac => \U1|Tffg[2].U|Q~regout\,
	datad => \U1|Tffg[3].U|Q~regout\,
	combout => \H0|Add18~0_combout\);

-- Location: LCCOMB_X53_Y4_N28
\H0|Add13~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \H0|Add13~0_combout\ = (\U1|Tffg[1].U|Q~regout\ & ((\U1|Tffg[0].U|Q~regout\ & (!\U1|Tffg[2].U|Q~regout\)) # (!\U1|Tffg[0].U|Q~regout\ & ((\U1|Tffg[2].U|Q~regout\) # (!\U1|Tffg[3].U|Q~regout\))))) # (!\U1|Tffg[1].U|Q~regout\ & ((\U1|Tffg[3].U|Q~regout\) # 
-- (\U1|Tffg[0].U|Q~regout\ $ (!\U1|Tffg[2].U|Q~regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111110101101011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U1|Tffg[1].U|Q~regout\,
	datab => \U1|Tffg[0].U|Q~regout\,
	datac => \U1|Tffg[2].U|Q~regout\,
	datad => \U1|Tffg[3].U|Q~regout\,
	combout => \H0|Add13~0_combout\);

-- Location: LCCOMB_X53_Y4_N22
\H0|Add10~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \H0|Add10~0_combout\ = (\U1|Tffg[2].U|Q~regout\ & (\U1|Tffg[3].U|Q~regout\ & ((\U1|Tffg[1].U|Q~regout\) # (!\U1|Tffg[0].U|Q~regout\)))) # (!\U1|Tffg[2].U|Q~regout\ & (\U1|Tffg[1].U|Q~regout\ & (!\U1|Tffg[0].U|Q~regout\ & !\U1|Tffg[3].U|Q~regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011000000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U1|Tffg[1].U|Q~regout\,
	datab => \U1|Tffg[0].U|Q~regout\,
	datac => \U1|Tffg[2].U|Q~regout\,
	datad => \U1|Tffg[3].U|Q~regout\,
	combout => \H0|Add10~0_combout\);

-- Location: LCCOMB_X53_Y4_N0
\H0|Add7~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \H0|Add7~0_combout\ = (\U1|Tffg[1].U|Q~regout\ & ((\U1|Tffg[0].U|Q~regout\ & ((\U1|Tffg[3].U|Q~regout\))) # (!\U1|Tffg[0].U|Q~regout\ & (\U1|Tffg[2].U|Q~regout\)))) # (!\U1|Tffg[1].U|Q~regout\ & (\U1|Tffg[2].U|Q~regout\ & (\U1|Tffg[0].U|Q~regout\ $ 
-- (\U1|Tffg[3].U|Q~regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100001100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U1|Tffg[1].U|Q~regout\,
	datab => \U1|Tffg[0].U|Q~regout\,
	datac => \U1|Tffg[2].U|Q~regout\,
	datad => \U1|Tffg[3].U|Q~regout\,
	combout => \H0|Add7~0_combout\);

-- Location: LCCOMB_X53_Y4_N10
\H0|Add2~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \H0|Add2~0_combout\ = (\U1|Tffg[2].U|Q~regout\ & ((\U1|Tffg[1].U|Q~regout\) # (\U1|Tffg[0].U|Q~regout\ $ (\U1|Tffg[3].U|Q~regout\)))) # (!\U1|Tffg[2].U|Q~regout\ & ((\U1|Tffg[1].U|Q~regout\ $ (\U1|Tffg[3].U|Q~regout\)) # (!\U1|Tffg[0].U|Q~regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011011111101011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U1|Tffg[1].U|Q~regout\,
	datab => \U1|Tffg[0].U|Q~regout\,
	datac => \U1|Tffg[2].U|Q~regout\,
	datad => \U1|Tffg[3].U|Q~regout\,
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


