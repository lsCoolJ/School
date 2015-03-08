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

-- DATE "05/13/2014 11:44:29"

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
	SW : IN std_logic_vector(1 DOWNTO 0);
	KEY : IN std_logic_vector(0 DOWNTO 0);
	LEDR : OUT std_logic_vector(3 DOWNTO 0);
	LEDG : OUT std_logic_vector(0 DOWNTO 0)
	);
END Part2;

-- Design Ports Information
-- LEDR[0]	=>  Location: PIN_AE23,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- LEDR[1]	=>  Location: PIN_AF23,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- LEDR[2]	=>  Location: PIN_AB21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- LEDR[3]	=>  Location: PIN_AC22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- LEDG[0]	=>  Location: PIN_AE22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- SW[0]	=>  Location: PIN_N25,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- SW[1]	=>  Location: PIN_N26,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- KEY[0]	=>  Location: PIN_G26,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default


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
SIGNAL ww_SW : std_logic_vector(1 DOWNTO 0);
SIGNAL ww_KEY : std_logic_vector(0 DOWNTO 0);
SIGNAL ww_LEDR : std_logic_vector(3 DOWNTO 0);
SIGNAL ww_LEDG : std_logic_vector(0 DOWNTO 0);
SIGNAL \currState~21_combout\ : std_logic;
SIGNAL \currState.G~regout\ : std_logic;
SIGNAL \currState~19_combout\ : std_logic;
SIGNAL \currState.H~regout\ : std_logic;
SIGNAL \currState~23_combout\ : std_logic;
SIGNAL \currState.I~regout\ : std_logic;
SIGNAL \currState~17_combout\ : std_logic;
SIGNAL \currState~18_combout\ : std_logic;
SIGNAL \currState.F~regout\ : std_logic;
SIGNAL \currState~14_combout\ : std_logic;
SIGNAL \currState~22_combout\ : std_logic;
SIGNAL \currState.E~regout\ : std_logic;
SIGNAL \currState~15_combout\ : std_logic;
SIGNAL \currState.B~regout\ : std_logic;
SIGNAL \currState~20_combout\ : std_logic;
SIGNAL \currState.C~regout\ : std_logic;
SIGNAL \currState~16_combout\ : std_logic;
SIGNAL \currState.D~regout\ : std_logic;
SIGNAL \WideOr2~combout\ : std_logic;
SIGNAL \WideOr1~0_combout\ : std_logic;
SIGNAL \WideOr0~combout\ : std_logic;
SIGNAL \Z~0_combout\ : std_logic;
SIGNAL \Z~1_combout\ : std_logic;
SIGNAL \Z~regout\ : std_logic;
SIGNAL \KEY~combout\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \SW~combout\ : std_logic_vector(1 DOWNTO 0);

BEGIN

ww_SW <= SW;
ww_KEY <= KEY;
LEDR <= ww_LEDR;
LEDG <= ww_LEDG;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

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

-- Location: LCCOMB_X64_Y8_N4
\currState~21\ : cycloneii_lcell_comb
-- Equation(s):
-- \currState~21_combout\ = (\SW~combout\(0) & (\currState.F~regout\ & \SW~combout\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW~combout\(0),
	datac => \currState.F~regout\,
	datad => \SW~combout\(1),
	combout => \currState~21_combout\);

-- Location: LCFF_X64_Y8_N5
\currState.G\ : cycloneii_lcell_ff
PORT MAP (
	clk => \KEY~combout\(0),
	datain => \currState~21_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \currState.G~regout\);

-- Location: LCCOMB_X64_Y8_N30
\currState~19\ : cycloneii_lcell_comb
-- Equation(s):
-- \currState~19_combout\ = (\SW~combout\(0) & (\currState.G~regout\ & \SW~combout\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW~combout\(0),
	datac => \currState.G~regout\,
	datad => \SW~combout\(1),
	combout => \currState~19_combout\);

-- Location: LCFF_X64_Y8_N31
\currState.H\ : cycloneii_lcell_ff
PORT MAP (
	clk => \KEY~combout\(0),
	datain => \currState~19_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \currState.H~regout\);

-- Location: LCCOMB_X64_Y8_N28
\currState~23\ : cycloneii_lcell_comb
-- Equation(s):
-- \currState~23_combout\ = (\SW~combout\(0) & (\SW~combout\(1) & ((\currState.H~regout\) # (\currState.I~regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW~combout\(0),
	datab => \currState.H~regout\,
	datac => \currState.I~regout\,
	datad => \SW~combout\(1),
	combout => \currState~23_combout\);

-- Location: LCFF_X64_Y8_N29
\currState.I\ : cycloneii_lcell_ff
PORT MAP (
	clk => \KEY~combout\(0),
	datain => \currState~23_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \currState.I~regout\);

-- Location: LCCOMB_X64_Y8_N2
\currState~17\ : cycloneii_lcell_comb
-- Equation(s):
-- \currState~17_combout\ = (!\currState.F~regout\ & (!\currState.H~regout\ & (!\currState.G~regout\ & !\currState.I~regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \currState.F~regout\,
	datab => \currState.H~regout\,
	datac => \currState.G~regout\,
	datad => \currState.I~regout\,
	combout => \currState~17_combout\);

-- Location: LCCOMB_X64_Y8_N12
\currState~18\ : cycloneii_lcell_comb
-- Equation(s):
-- \currState~18_combout\ = (\SW~combout\(0) & (\currState~17_combout\ & \SW~combout\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW~combout\(0),
	datab => \currState~17_combout\,
	datad => \SW~combout\(1),
	combout => \currState~18_combout\);

-- Location: LCFF_X64_Y8_N13
\currState.F\ : cycloneii_lcell_ff
PORT MAP (
	clk => \KEY~combout\(0),
	datain => \currState~18_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \currState.F~regout\);

-- Location: LCCOMB_X64_Y8_N8
\currState~14\ : cycloneii_lcell_comb
-- Equation(s):
-- \currState~14_combout\ = (\SW~combout\(0) & (!\currState.D~regout\ & (!\currState.B~regout\ & !\SW~combout\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW~combout\(0),
	datab => \currState.D~regout\,
	datac => \currState.B~regout\,
	datad => \SW~combout\(1),
	combout => \currState~14_combout\);

-- Location: LCCOMB_X64_Y8_N24
\currState~22\ : cycloneii_lcell_comb
-- Equation(s):
-- \currState~22_combout\ = (\SW~combout\(0) & (!\SW~combout\(1) & ((\currState.D~regout\) # (\currState.E~regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW~combout\(0),
	datab => \currState.D~regout\,
	datac => \currState.E~regout\,
	datad => \SW~combout\(1),
	combout => \currState~22_combout\);

-- Location: LCFF_X64_Y8_N25
\currState.E\ : cycloneii_lcell_ff
PORT MAP (
	clk => \KEY~combout\(0),
	datain => \currState~22_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \currState.E~regout\);

-- Location: LCCOMB_X64_Y8_N0
\currState~15\ : cycloneii_lcell_comb
-- Equation(s):
-- \currState~15_combout\ = (\currState~14_combout\ & (!\currState.E~regout\ & !\currState.C~regout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \currState~14_combout\,
	datac => \currState.E~regout\,
	datad => \currState.C~regout\,
	combout => \currState~15_combout\);

-- Location: LCFF_X64_Y8_N1
\currState.B\ : cycloneii_lcell_ff
PORT MAP (
	clk => \KEY~combout\(0),
	datain => \currState~15_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \currState.B~regout\);

-- Location: LCCOMB_X64_Y8_N10
\currState~20\ : cycloneii_lcell_comb
-- Equation(s):
-- \currState~20_combout\ = (\SW~combout\(0) & (\currState.B~regout\ & !\SW~combout\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW~combout\(0),
	datab => \currState.B~regout\,
	datad => \SW~combout\(1),
	combout => \currState~20_combout\);

-- Location: LCFF_X64_Y8_N11
\currState.C\ : cycloneii_lcell_ff
PORT MAP (
	clk => \KEY~combout\(0),
	datain => \currState~20_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \currState.C~regout\);

-- Location: LCCOMB_X64_Y8_N18
\currState~16\ : cycloneii_lcell_comb
-- Equation(s):
-- \currState~16_combout\ = (\SW~combout\(0) & (\currState.C~regout\ & !\SW~combout\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW~combout\(0),
	datac => \currState.C~regout\,
	datad => \SW~combout\(1),
	combout => \currState~16_combout\);

-- Location: LCFF_X64_Y8_N19
\currState.D\ : cycloneii_lcell_ff
PORT MAP (
	clk => \KEY~combout\(0),
	datain => \currState~16_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \currState.D~regout\);

-- Location: LCCOMB_X64_Y8_N16
WideOr2 : cycloneii_lcell_comb
-- Equation(s):
-- \WideOr2~combout\ = (\currState.F~regout\) # ((\currState.D~regout\) # ((\currState.B~regout\) # (\currState.H~regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \currState.F~regout\,
	datab => \currState.D~regout\,
	datac => \currState.B~regout\,
	datad => \currState.H~regout\,
	combout => \WideOr2~combout\);

-- Location: LCCOMB_X64_Y8_N22
\WideOr1~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \WideOr1~0_combout\ = (\currState.C~regout\) # ((\currState.D~regout\) # ((\currState.G~regout\) # (\currState.H~regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \currState.C~regout\,
	datab => \currState.D~regout\,
	datac => \currState.G~regout\,
	datad => \currState.H~regout\,
	combout => \WideOr1~0_combout\);

-- Location: LCCOMB_X64_Y8_N26
WideOr0 : cycloneii_lcell_comb
-- Equation(s):
-- \WideOr0~combout\ = (\currState.F~regout\) # ((\currState.G~regout\) # ((\currState.E~regout\) # (\currState.H~regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \currState.F~regout\,
	datab => \currState.G~regout\,
	datac => \currState.E~regout\,
	datad => \currState.H~regout\,
	combout => \WideOr0~combout\);

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

-- Location: LCCOMB_X64_Y8_N20
\Z~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Z~0_combout\ = (\SW~combout\(1) & ((\currState.H~regout\) # ((\currState.I~regout\)))) # (!\SW~combout\(1) & (((\currState.E~regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW~combout\(1),
	datab => \currState.H~regout\,
	datac => \currState.E~regout\,
	datad => \currState.I~regout\,
	combout => \Z~0_combout\);

-- Location: LCCOMB_X64_Y8_N6
\Z~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \Z~1_combout\ = (\SW~combout\(0) & ((\Z~0_combout\) # ((\currState.D~regout\ & !\SW~combout\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW~combout\(0),
	datab => \currState.D~regout\,
	datac => \Z~0_combout\,
	datad => \SW~combout\(1),
	combout => \Z~1_combout\);

-- Location: LCFF_X64_Y8_N7
Z : cycloneii_lcell_ff
PORT MAP (
	clk => \KEY~combout\(0),
	datain => \Z~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \Z~regout\);

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
	datain => \WideOr2~combout\,
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
	datain => \WideOr1~0_combout\,
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
	datain => \WideOr0~combout\,
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
	datain => \currState.I~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_LEDR(3));

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
	datain => \Z~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_LEDG(0));
END structure;


