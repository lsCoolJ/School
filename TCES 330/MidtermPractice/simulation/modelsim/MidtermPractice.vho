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

-- DATE "05/13/2014 11:48:41"

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

ENTITY 	MidtermPractice IS
    PORT (
	KEY : IN std_logic_vector(1 DOWNTO 1);
	SW : IN std_logic_vector(1 DOWNTO 0);
	LEDR : OUT std_logic_vector(1 DOWNTO 0);
	HEX0 : OUT std_logic_vector(0 TO 6)
	);
END MidtermPractice;

-- Design Ports Information
-- LEDR[0]	=>  Location: PIN_AE23,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- LEDR[1]	=>  Location: PIN_AF23,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- HEX0[6]	=>  Location: PIN_V13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- HEX0[5]	=>  Location: PIN_V14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- HEX0[4]	=>  Location: PIN_AE11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- HEX0[3]	=>  Location: PIN_AD11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- HEX0[2]	=>  Location: PIN_AC12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- HEX0[1]	=>  Location: PIN_AB12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- HEX0[0]	=>  Location: PIN_AF10,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- SW[0]	=>  Location: PIN_N25,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- SW[1]	=>  Location: PIN_N26,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- KEY[1]	=>  Location: PIN_N23,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default


ARCHITECTURE structure OF MidtermPractice IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_KEY : std_logic_vector(1 DOWNTO 1);
SIGNAL ww_SW : std_logic_vector(1 DOWNTO 0);
SIGNAL ww_LEDR : std_logic_vector(1 DOWNTO 0);
SIGNAL ww_HEX0 : std_logic_vector(0 TO 6);
SIGNAL \KEY[1]~clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \KEY[1]~clk_delay_ctrl_clkout\ : std_logic;
SIGNAL \KEY[1]~clkctrl_outclk\ : std_logic;
SIGNAL \M1|currState~9_combout\ : std_logic;
SIGNAL \M1|currState~10_combout\ : std_logic;
SIGNAL \M1|currState~2_regout\ : std_logic;
SIGNAL \M1|currState~7_combout\ : std_logic;
SIGNAL \M1|currState~8_combout\ : std_logic;
SIGNAL \M1|currState~4_regout\ : std_logic;
SIGNAL \M1|currState~5_combout\ : std_logic;
SIGNAL \M1|currState~6_combout\ : std_logic;
SIGNAL \M1|currState~3_regout\ : std_logic;
SIGNAL \H0|HEX0[6]~0_combout\ : std_logic;
SIGNAL \H0|WideOr3~0_combout\ : std_logic;
SIGNAL \H0|Decoder1~0_combout\ : std_logic;
SIGNAL \H0|WideOr0~0_combout\ : std_logic;
SIGNAL \H0|WideOr2~0_combout\ : std_logic;
SIGNAL \SW~combout\ : std_logic_vector(1 DOWNTO 0);
SIGNAL \KEY~combout\ : std_logic_vector(1 DOWNTO 1);
SIGNAL \H0|ALT_INV_WideOr2~0_combout\ : std_logic;
SIGNAL \H0|ALT_INV_Decoder1~0_combout\ : std_logic;

BEGIN

ww_KEY <= KEY;
ww_SW <= SW;
LEDR <= ww_LEDR;
HEX0 <= ww_HEX0;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\KEY[1]~clkctrl_INCLK_bus\ <= (gnd & gnd & gnd & \KEY[1]~clk_delay_ctrl_clkout\);
\H0|ALT_INV_WideOr2~0_combout\ <= NOT \H0|WideOr2~0_combout\;
\H0|ALT_INV_Decoder1~0_combout\ <= NOT \H0|Decoder1~0_combout\;

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

-- Location: CLKDELAYCTRL_G4
\KEY[1]~clk_delay_ctrl\ : cycloneii_clk_delay_ctrl
-- pragma translate_off
GENERIC MAP (
	delay_chain_mode => "none",
	use_new_style_dq_detection => "false")
-- pragma translate_on
PORT MAP (
	clk => \KEY~combout\(1),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	clkout => \KEY[1]~clk_delay_ctrl_clkout\);

-- Location: CLKCTRL_G4
\KEY[1]~clkctrl\ : cycloneii_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \KEY[1]~clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \KEY[1]~clkctrl_outclk\);

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

-- Location: LCCOMB_X28_Y1_N28
\M1|currState~9\ : cycloneii_lcell_comb
-- Equation(s):
-- \M1|currState~9_combout\ = (\M1|currState~2_regout\ & (((\M1|currState~4_regout\ & \SW~combout\(0))))) # (!\M1|currState~2_regout\ & ((\M1|currState~3_regout\) # (\M1|currState~4_regout\ $ (!\SW~combout\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011101011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \M1|currState~3_regout\,
	datab => \M1|currState~4_regout\,
	datac => \SW~combout\(0),
	datad => \M1|currState~2_regout\,
	combout => \M1|currState~9_combout\);

-- Location: LCCOMB_X28_Y1_N6
\M1|currState~10\ : cycloneii_lcell_comb
-- Equation(s):
-- \M1|currState~10_combout\ = (\M1|currState~9_combout\ & \SW~combout\(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \M1|currState~9_combout\,
	datad => \SW~combout\(1),
	combout => \M1|currState~10_combout\);

-- Location: LCFF_X28_Y1_N7
\M1|currState~2\ : cycloneii_lcell_ff
PORT MAP (
	clk => \KEY[1]~clkctrl_outclk\,
	datain => \M1|currState~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \M1|currState~2_regout\);

-- Location: LCCOMB_X28_Y1_N26
\M1|currState~7\ : cycloneii_lcell_comb
-- Equation(s):
-- \M1|currState~7_combout\ = (\M1|currState~3_regout\ & (((!\SW~combout\(0) & \M1|currState~2_regout\)))) # (!\M1|currState~3_regout\ & (!\M1|currState~4_regout\ & (\SW~combout\(0) & !\M1|currState~2_regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \M1|currState~3_regout\,
	datab => \M1|currState~4_regout\,
	datac => \SW~combout\(0),
	datad => \M1|currState~2_regout\,
	combout => \M1|currState~7_combout\);

-- Location: LCCOMB_X28_Y1_N2
\M1|currState~8\ : cycloneii_lcell_comb
-- Equation(s):
-- \M1|currState~8_combout\ = (\M1|currState~7_combout\ & \SW~combout\(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \M1|currState~7_combout\,
	datad => \SW~combout\(1),
	combout => \M1|currState~8_combout\);

-- Location: LCFF_X28_Y1_N3
\M1|currState~4\ : cycloneii_lcell_ff
PORT MAP (
	clk => \KEY[1]~clkctrl_outclk\,
	datain => \M1|currState~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \M1|currState~4_regout\);

-- Location: LCCOMB_X28_Y1_N0
\M1|currState~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \M1|currState~5_combout\ = (\M1|currState~3_regout\ & (\SW~combout\(0) $ (!\M1|currState~2_regout\))) # (!\M1|currState~3_regout\ & (!\SW~combout\(0) & \M1|currState~2_regout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \M1|currState~3_regout\,
	datac => \SW~combout\(0),
	datad => \M1|currState~2_regout\,
	combout => \M1|currState~5_combout\);

-- Location: LCCOMB_X28_Y1_N24
\M1|currState~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \M1|currState~6_combout\ = (\SW~combout\(1) & ((\M1|currState~5_combout\) # ((\M1|currState~4_regout\ & \SW~combout\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \M1|currState~4_regout\,
	datab => \M1|currState~5_combout\,
	datac => \SW~combout\(0),
	datad => \SW~combout\(1),
	combout => \M1|currState~6_combout\);

-- Location: LCFF_X28_Y1_N25
\M1|currState~3\ : cycloneii_lcell_ff
PORT MAP (
	clk => \KEY[1]~clkctrl_outclk\,
	datain => \M1|currState~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \M1|currState~3_regout\);

-- Location: LCCOMB_X28_Y1_N20
\H0|HEX0[6]~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \H0|HEX0[6]~0_combout\ = (!\M1|currState~4_regout\ & !\M1|currState~3_regout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001100000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \M1|currState~4_regout\,
	datac => \M1|currState~3_regout\,
	combout => \H0|HEX0[6]~0_combout\);

-- Location: LCCOMB_X28_Y1_N16
\H0|WideOr3~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \H0|WideOr3~0_combout\ = (\M1|currState~2_regout\) # (\M1|currState~3_regout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101011111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \M1|currState~2_regout\,
	datac => \M1|currState~3_regout\,
	combout => \H0|WideOr3~0_combout\);

-- Location: LCCOMB_X28_Y1_N18
\H0|Decoder1~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \H0|Decoder1~0_combout\ = (!\M1|currState~4_regout\ & !\M1|currState~2_regout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \M1|currState~4_regout\,
	datad => \M1|currState~2_regout\,
	combout => \H0|Decoder1~0_combout\);

-- Location: LCCOMB_X28_Y1_N12
\H0|WideOr0~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \H0|WideOr0~0_combout\ = (!\M1|currState~3_regout\ & (\M1|currState~2_regout\ $ (\M1|currState~4_regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000011000000110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \M1|currState~2_regout\,
	datab => \M1|currState~4_regout\,
	datac => \M1|currState~3_regout\,
	combout => \H0|WideOr0~0_combout\);

-- Location: LCCOMB_X28_Y1_N22
\H0|WideOr2~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \H0|WideOr2~0_combout\ = (\M1|currState~2_regout\) # (!\M1|currState~3_regout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110101111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \M1|currState~2_regout\,
	datac => \M1|currState~3_regout\,
	combout => \H0|WideOr2~0_combout\);

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
	datain => \H0|HEX0[6]~0_combout\,
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
	datain => \H0|WideOr3~0_combout\,
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
	datain => \H0|ALT_INV_Decoder1~0_combout\,
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
	datain => \H0|WideOr0~0_combout\,
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
	datain => \H0|ALT_INV_WideOr2~0_combout\,
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
	datain => GND,
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


