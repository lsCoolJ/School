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

-- DATE "05/13/2014 10:06:51"

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
	SW : IN std_logic_vector(2 DOWNTO 0);
	LEDR : OUT std_logic_vector(2 DOWNTO 0);
	KEY : IN std_logic_vector(0 DOWNTO 0);
	HEX0 : OUT std_logic_vector(0 TO 6)
	);
END Part4;

-- Design Ports Information
-- LEDR[0]	=>  Location: PIN_AE23,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- LEDR[1]	=>  Location: PIN_AF23,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- LEDR[2]	=>  Location: PIN_AB21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- HEX0[6]	=>  Location: PIN_V13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- HEX0[5]	=>  Location: PIN_V14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- HEX0[4]	=>  Location: PIN_AE11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- HEX0[3]	=>  Location: PIN_AD11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- HEX0[2]	=>  Location: PIN_AC12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- HEX0[1]	=>  Location: PIN_AB12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- HEX0[0]	=>  Location: PIN_AF10,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- SW[0]	=>  Location: PIN_N25,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- SW[1]	=>  Location: PIN_N26,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- SW[2]	=>  Location: PIN_P25,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- KEY[0]	=>  Location: PIN_G26,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default


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
SIGNAL ww_SW : std_logic_vector(2 DOWNTO 0);
SIGNAL ww_LEDR : std_logic_vector(2 DOWNTO 0);
SIGNAL ww_KEY : std_logic_vector(0 DOWNTO 0);
SIGNAL ww_HEX0 : std_logic_vector(0 TO 6);
SIGNAL \currState~4_combout\ : std_logic;
SIGNAL \currState~9_combout\ : std_logic;
SIGNAL \currState~10_combout\ : std_logic;
SIGNAL \currState~12_combout\ : std_logic;
SIGNAL \currState~13_combout\ : std_logic;
SIGNAL \currState~2_combout\ : std_logic;
SIGNAL \currState~6_combout\ : std_logic;
SIGNAL \currState~7_combout\ : std_logic;
SIGNAL \currState~3_combout\ : std_logic;
SIGNAL \Mux0~1_combout\ : std_logic;
SIGNAL \currState~15_combout\ : std_logic;
SIGNAL \currState~14_combout\ : std_logic;
SIGNAL \currState~11_combout\ : std_logic;
SIGNAL \Mux0~0_combout\ : std_logic;
SIGNAL \currState~5_combout\ : std_logic;
SIGNAL \currState~8_combout\ : std_logic;
SIGNAL \H0|WideOr6~0_combout\ : std_logic;
SIGNAL \H0|WideOr5~0_combout\ : std_logic;
SIGNAL \H0|WideOr4~0_combout\ : std_logic;
SIGNAL \H0|WideOr3~0_combout\ : std_logic;
SIGNAL \H0|WideOr2~0_combout\ : std_logic;
SIGNAL \H0|WideOr1~0_combout\ : std_logic;
SIGNAL \H0|WideOr0~0_combout\ : std_logic;
SIGNAL currState : std_logic_vector(3 DOWNTO 0);
SIGNAL \SW~combout\ : std_logic_vector(2 DOWNTO 0);
SIGNAL \KEY~combout\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \H0|ALT_INV_WideOr6~0_combout\ : std_logic;

BEGIN

ww_SW <= SW;
LEDR <= ww_LEDR;
ww_KEY <= KEY;
HEX0 <= ww_HEX0;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;
\H0|ALT_INV_WideOr6~0_combout\ <= NOT \H0|WideOr6~0_combout\;

-- Location: LCCOMB_X64_Y3_N12
\currState~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \currState~4_combout\ = (currState(1) & (\SW~combout\(2) $ (((!\SW~combout\(1)) # (!currState(0)))))) # (!currState(1) & ((\SW~combout\(1) & (currState(0) & !\SW~combout\(2))) # (!\SW~combout\(1) & ((\SW~combout\(2))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000010101101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => currState(1),
	datab => currState(0),
	datac => \SW~combout\(1),
	datad => \SW~combout\(2),
	combout => \currState~4_combout\);

-- Location: LCCOMB_X64_Y3_N4
\currState~9\ : cycloneii_lcell_comb
-- Equation(s):
-- \currState~9_combout\ = (currState(0) & ((\SW~combout\(1) $ (!\SW~combout\(2))) # (!currState(1)))) # (!currState(0) & ((currState(1) $ (!\SW~combout\(1))) # (!\SW~combout\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010101111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => currState(1),
	datab => currState(0),
	datac => \SW~combout\(1),
	datad => \SW~combout\(2),
	combout => \currState~9_combout\);

-- Location: LCCOMB_X64_Y3_N16
\currState~10\ : cycloneii_lcell_comb
-- Equation(s):
-- \currState~10_combout\ = (\currState~3_combout\ & ((currState(2) & (\currState~9_combout\)) # (!currState(2) & ((\Mux0~1_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \currState~9_combout\,
	datab => \currState~3_combout\,
	datac => \Mux0~1_combout\,
	datad => currState(2),
	combout => \currState~10_combout\);

-- Location: LCCOMB_X64_Y3_N10
\currState~12\ : cycloneii_lcell_comb
-- Equation(s):
-- \currState~12_combout\ = (!currState(1) & (!currState(2) & (currState(3) & \SW~combout\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => currState(1),
	datab => currState(2),
	datac => currState(3),
	datad => \SW~combout\(0),
	combout => \currState~12_combout\);

-- Location: LCCOMB_X64_Y3_N20
\currState~13\ : cycloneii_lcell_comb
-- Equation(s):
-- \currState~13_combout\ = (\currState~12_combout\ & (\SW~combout\(2) $ (((!\SW~combout\(1)) # (!currState(0))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \currState~12_combout\,
	datab => currState(0),
	datac => \SW~combout\(1),
	datad => \SW~combout\(2),
	combout => \currState~13_combout\);

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

-- Location: LCCOMB_X64_Y3_N0
\currState~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \currState~2_combout\ = (\SW~combout\(0) & (\SW~combout\(1) $ (currState(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100100001001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW~combout\(1),
	datab => \SW~combout\(0),
	datac => currState(0),
	combout => \currState~2_combout\);

-- Location: LCFF_X64_Y3_N1
\currState[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \KEY~combout\(0),
	datain => \currState~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => currState(0));

-- Location: LCCOMB_X64_Y3_N24
\currState~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \currState~6_combout\ = (\SW~combout\(1) & (!currState(0) & \SW~combout\(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW~combout\(1),
	datab => currState(0),
	datad => \SW~combout\(2),
	combout => \currState~6_combout\);

-- Location: LCCOMB_X64_Y3_N2
\currState~7\ : cycloneii_lcell_comb
-- Equation(s):
-- \currState~7_combout\ = (!currState(1) & (!currState(2) & \currState~6_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => currState(1),
	datab => currState(2),
	datac => \currState~6_combout\,
	combout => \currState~7_combout\);

-- Location: LCCOMB_X64_Y3_N8
\currState~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \currState~3_combout\ = (\SW~combout\(0) & !currState(3))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \SW~combout\(0),
	datad => currState(3),
	combout => \currState~3_combout\);

-- Location: LCCOMB_X64_Y3_N14
\Mux0~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux0~1_combout\ = (currState(1) & ((\SW~combout\(1) & (currState(0) & !\SW~combout\(2))) # (!\SW~combout\(1) & ((\SW~combout\(2))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => currState(1),
	datab => currState(0),
	datac => \SW~combout\(1),
	datad => \SW~combout\(2),
	combout => \Mux0~1_combout\);

-- Location: LCCOMB_X64_Y3_N6
\currState~15\ : cycloneii_lcell_comb
-- Equation(s):
-- \currState~15_combout\ = (!currState(3) & (\SW~combout\(0) & (\Mux0~1_combout\ & currState(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => currState(3),
	datab => \SW~combout\(0),
	datac => \Mux0~1_combout\,
	datad => currState(2),
	combout => \currState~15_combout\);

-- Location: LCCOMB_X64_Y3_N22
\currState~14\ : cycloneii_lcell_comb
-- Equation(s):
-- \currState~14_combout\ = (\currState~13_combout\) # ((\currState~15_combout\) # ((\currState~7_combout\ & \currState~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \currState~13_combout\,
	datab => \currState~7_combout\,
	datac => \currState~3_combout\,
	datad => \currState~15_combout\,
	combout => \currState~14_combout\);

-- Location: LCFF_X64_Y3_N23
\currState[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \KEY~combout\(0),
	datain => \currState~14_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => currState(3));

-- Location: LCCOMB_X64_Y3_N28
\currState~11\ : cycloneii_lcell_comb
-- Equation(s):
-- \currState~11_combout\ = (\currState~10_combout\) # ((\currState~7_combout\ & (currState(3) & \SW~combout\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \currState~10_combout\,
	datab => \currState~7_combout\,
	datac => currState(3),
	datad => \SW~combout\(0),
	combout => \currState~11_combout\);

-- Location: LCFF_X64_Y3_N29
\currState[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \KEY~combout\(0),
	datain => \currState~11_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => currState(2));

-- Location: LCCOMB_X64_Y3_N18
\Mux0~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux0~0_combout\ = currState(1) $ (\SW~combout\(2) $ (((currState(0) & \SW~combout\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001010101101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => currState(1),
	datab => currState(0),
	datac => \SW~combout\(1),
	datad => \SW~combout\(2),
	combout => \Mux0~0_combout\);

-- Location: LCCOMB_X64_Y3_N30
\currState~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \currState~5_combout\ = (\currState~3_combout\ & ((currState(2) & ((\Mux0~0_combout\))) # (!currState(2) & (\currState~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \currState~4_combout\,
	datab => \Mux0~0_combout\,
	datac => \currState~3_combout\,
	datad => currState(2),
	combout => \currState~5_combout\);

-- Location: LCCOMB_X64_Y3_N26
\currState~8\ : cycloneii_lcell_comb
-- Equation(s):
-- \currState~8_combout\ = (\currState~5_combout\) # ((currState(3) & (\SW~combout\(0) & \currState~7_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => currState(3),
	datab => \SW~combout\(0),
	datac => \currState~5_combout\,
	datad => \currState~7_combout\,
	combout => \currState~8_combout\);

-- Location: LCFF_X64_Y3_N27
\currState[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \KEY~combout\(0),
	datain => \currState~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => currState(1));

-- Location: LCCOMB_X28_Y3_N16
\H0|WideOr6~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \H0|WideOr6~0_combout\ = (currState(2) & (!currState(3) & ((!currState(1)) # (!currState(0))))) # (!currState(2) & ((currState(1) $ (currState(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001101111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => currState(0),
	datab => currState(2),
	datac => currState(1),
	datad => currState(3),
	combout => \H0|WideOr6~0_combout\);

-- Location: LCCOMB_X28_Y3_N18
\H0|WideOr5~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \H0|WideOr5~0_combout\ = (currState(0) & ((currState(1)) # (currState(2) $ (!currState(3))))) # (!currState(0) & ((currState(2) & ((currState(3)))) # (!currState(2) & (currState(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110010110010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => currState(0),
	datab => currState(2),
	datac => currState(1),
	datad => currState(3),
	combout => \H0|WideOr5~0_combout\);

-- Location: LCCOMB_X28_Y3_N20
\H0|WideOr4~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \H0|WideOr4~0_combout\ = (currState(0)) # ((currState(1) & ((currState(3)))) # (!currState(1) & (currState(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111010101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => currState(0),
	datab => currState(2),
	datac => currState(1),
	datad => currState(3),
	combout => \H0|WideOr4~0_combout\);

-- Location: LCCOMB_X28_Y3_N22
\H0|WideOr3~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \H0|WideOr3~0_combout\ = (currState(1) & ((currState(3)) # ((currState(0) & currState(2))))) # (!currState(1) & (currState(2) $ (((currState(0) & !currState(3))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110010000110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => currState(0),
	datab => currState(2),
	datac => currState(1),
	datad => currState(3),
	combout => \H0|WideOr3~0_combout\);

-- Location: LCCOMB_X28_Y3_N24
\H0|WideOr2~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \H0|WideOr2~0_combout\ = (currState(2) & (((currState(3))))) # (!currState(2) & (currState(1) & ((currState(3)) # (!currState(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => currState(0),
	datab => currState(2),
	datac => currState(1),
	datad => currState(3),
	combout => \H0|WideOr2~0_combout\);

-- Location: LCCOMB_X28_Y3_N26
\H0|WideOr1~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \H0|WideOr1~0_combout\ = (currState(2) & ((currState(3)) # (currState(0) $ (currState(1))))) # (!currState(2) & (((currState(1) & currState(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110001001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => currState(0),
	datab => currState(2),
	datac => currState(1),
	datad => currState(3),
	combout => \H0|WideOr1~0_combout\);

-- Location: LCCOMB_X28_Y3_N12
\H0|WideOr0~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \H0|WideOr0~0_combout\ = (currState(1) & (((currState(3))))) # (!currState(1) & (currState(2) $ (((currState(0) & !currState(3))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000000110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => currState(0),
	datab => currState(2),
	datac => currState(1),
	datad => currState(3),
	combout => \H0|WideOr0~0_combout\);

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
END structure;


