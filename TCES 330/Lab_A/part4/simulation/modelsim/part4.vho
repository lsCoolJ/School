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

-- DATE "05/05/2014 21:47:31"

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
	HEX0 : OUT std_logic_vector(0 TO 6);
	CLOCK_50 : IN std_logic
	);
END Part4;

-- Design Ports Information
-- HEX0[6]	=>  Location: PIN_V13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- HEX0[5]	=>  Location: PIN_V14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- HEX0[4]	=>  Location: PIN_AE11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- HEX0[3]	=>  Location: PIN_AD11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- HEX0[2]	=>  Location: PIN_AC12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- HEX0[1]	=>  Location: PIN_AB12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- HEX0[0]	=>  Location: PIN_AF10,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- CLOCK_50	=>  Location: PIN_N2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default


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
SIGNAL ww_HEX0 : std_logic_vector(0 TO 6);
SIGNAL ww_CLOCK_50 : std_logic;
SIGNAL \CLOCK_50~clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \Mod0|auto_generated|divider|divider|add_sub_3_result_int[3]~5\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\ : std_logic;
SIGNAL \U1|auto_generated|counter_comb_bita3~combout\ : std_logic;
SIGNAL \U1|auto_generated|counter_comb_bita7~combout\ : std_logic;
SIGNAL \U1|auto_generated|counter_comb_bita9~combout\ : std_logic;
SIGNAL \U1|auto_generated|counter_comb_bita16~combout\ : std_logic;
SIGNAL \U1|auto_generated|counter_comb_bita18~combout\ : std_logic;
SIGNAL \U1|auto_generated|counter_comb_bita19~combout\ : std_logic;
SIGNAL \U1|auto_generated|counter_comb_bita21~combout\ : std_logic;
SIGNAL \U1|auto_generated|counter_comb_bita23~combout\ : std_logic;
SIGNAL \Equal0~1_combout\ : std_logic;
SIGNAL \Equal0~5_combout\ : std_logic;
SIGNAL \CLOCK_50~combout\ : std_logic;
SIGNAL \CLOCK_50~clkctrl_outclk\ : std_logic;
SIGNAL \U1|auto_generated|counter_comb_bita23_OTERM13\ : std_logic;
SIGNAL \U1|auto_generated|counter_comb_bita21_OTERM17\ : std_logic;
SIGNAL \U1|auto_generated|counter_comb_bita19_OTERM21\ : std_logic;
SIGNAL \U1|auto_generated|counter_comb_bita18_OTERM23\ : std_logic;
SIGNAL \U1|auto_generated|counter_comb_bita16_OTERM27\ : std_logic;
SIGNAL \U1|auto_generated|counter_comb_bita9_OTERM41\ : std_logic;
SIGNAL \U1|auto_generated|counter_comb_bita7_OTERM45\ : std_logic;
SIGNAL \U1|auto_generated|counter_comb_bita3_OTERM53\ : std_logic;
SIGNAL \Equal0~5_OTERM71\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|StageOut[12]~2_combout\ : std_logic;
SIGNAL \U1|auto_generated|counter_comb_bita0_RTM061~combout\ : std_logic;
SIGNAL \ACLR~feeder_combout\ : std_logic;
SIGNAL \ACLR~regout\ : std_logic;
SIGNAL \U1|auto_generated|counter_comb_bita0_OTERM59\ : std_logic;
SIGNAL \U1|auto_generated|counter_comb_bita0~COUT\ : std_logic;
SIGNAL \U1|auto_generated|counter_comb_bita1~combout\ : std_logic;
SIGNAL \U1|auto_generated|counter_comb_bita1_OTERM57\ : std_logic;
SIGNAL \Equal0~7_RTM069_combout\ : std_logic;
SIGNAL \Equal0~7_OTERM67\ : std_logic;
SIGNAL \U1|auto_generated|counter_comb_bita1~COUT\ : std_logic;
SIGNAL \U1|auto_generated|counter_comb_bita2~COUT\ : std_logic;
SIGNAL \U1|auto_generated|counter_comb_bita3~COUT\ : std_logic;
SIGNAL \U1|auto_generated|counter_comb_bita4~combout\ : std_logic;
SIGNAL \U1|auto_generated|counter_comb_bita4_OTERM51\ : std_logic;
SIGNAL \U1|auto_generated|counter_comb_bita4~COUT\ : std_logic;
SIGNAL \U1|auto_generated|counter_comb_bita5~COUT\ : std_logic;
SIGNAL \U1|auto_generated|counter_comb_bita6~combout\ : std_logic;
SIGNAL \U1|auto_generated|counter_comb_bita6_OTERM47\ : std_logic;
SIGNAL \U1|auto_generated|counter_comb_bita6~COUT\ : std_logic;
SIGNAL \U1|auto_generated|counter_comb_bita7~COUT\ : std_logic;
SIGNAL \U1|auto_generated|counter_comb_bita8~combout\ : std_logic;
SIGNAL \U1|auto_generated|counter_comb_bita8_OTERM43\ : std_logic;
SIGNAL \U1|auto_generated|counter_comb_bita8~COUT\ : std_logic;
SIGNAL \U1|auto_generated|counter_comb_bita9~COUT\ : std_logic;
SIGNAL \U1|auto_generated|counter_comb_bita10~combout\ : std_logic;
SIGNAL \U1|auto_generated|counter_comb_bita10_OTERM39\ : std_logic;
SIGNAL \U1|auto_generated|counter_comb_bita10~COUT\ : std_logic;
SIGNAL \U1|auto_generated|counter_comb_bita11~combout\ : std_logic;
SIGNAL \U1|auto_generated|counter_comb_bita11_OTERM37\ : std_logic;
SIGNAL \U1|auto_generated|counter_comb_bita11~COUT\ : std_logic;
SIGNAL \U1|auto_generated|counter_comb_bita12~combout\ : std_logic;
SIGNAL \U1|auto_generated|counter_comb_bita12_OTERM35\ : std_logic;
SIGNAL \U1|auto_generated|counter_comb_bita12~COUT\ : std_logic;
SIGNAL \U1|auto_generated|counter_comb_bita13~combout\ : std_logic;
SIGNAL \U1|auto_generated|counter_comb_bita13_OTERM33\ : std_logic;
SIGNAL \U1|auto_generated|counter_comb_bita13~COUT\ : std_logic;
SIGNAL \U1|auto_generated|counter_comb_bita14~combout\ : std_logic;
SIGNAL \U1|auto_generated|counter_comb_bita14_OTERM31\ : std_logic;
SIGNAL \U1|auto_generated|counter_comb_bita14~COUT\ : std_logic;
SIGNAL \U1|auto_generated|counter_comb_bita15~combout\ : std_logic;
SIGNAL \U1|auto_generated|counter_comb_bita15_OTERM29\ : std_logic;
SIGNAL \U1|auto_generated|counter_comb_bita15~COUT\ : std_logic;
SIGNAL \U1|auto_generated|counter_comb_bita16~COUT\ : std_logic;
SIGNAL \U1|auto_generated|counter_comb_bita17~combout\ : std_logic;
SIGNAL \U1|auto_generated|counter_comb_bita17_OTERM25\ : std_logic;
SIGNAL \Equal0~2_combout\ : std_logic;
SIGNAL \U1|auto_generated|counter_comb_bita17~COUT\ : std_logic;
SIGNAL \U1|auto_generated|counter_comb_bita18~COUT\ : std_logic;
SIGNAL \U1|auto_generated|counter_comb_bita19~COUT\ : std_logic;
SIGNAL \U1|auto_generated|counter_comb_bita20~combout\ : std_logic;
SIGNAL \U1|auto_generated|counter_comb_bita20_OTERM19\ : std_logic;
SIGNAL \U1|auto_generated|counter_comb_bita20~COUT\ : std_logic;
SIGNAL \U1|auto_generated|counter_comb_bita21~COUT\ : std_logic;
SIGNAL \U1|auto_generated|counter_comb_bita22~combout\ : std_logic;
SIGNAL \U1|auto_generated|counter_comb_bita22_OTERM15\ : std_logic;
SIGNAL \U1|auto_generated|counter_comb_bita22~COUT\ : std_logic;
SIGNAL \U1|auto_generated|counter_comb_bita23~COUT\ : std_logic;
SIGNAL \U1|auto_generated|counter_comb_bita24~combout\ : std_logic;
SIGNAL \U1|auto_generated|counter_comb_bita24_OTERM11\ : std_logic;
SIGNAL \U1|auto_generated|counter_comb_bita24~COUT\ : std_logic;
SIGNAL \U1|auto_generated|counter_comb_bita25~combout\ : std_logic;
SIGNAL \U1|auto_generated|counter_comb_bita25_OTERM9\ : std_logic;
SIGNAL \Equal0~0_combout\ : std_logic;
SIGNAL \Equal0~3_combout\ : std_logic;
SIGNAL \Equal0~4_combout\ : std_logic;
SIGNAL \Equal0~4_OTERM65\ : std_logic;
SIGNAL \U1|auto_generated|counter_comb_bita5~combout\ : std_logic;
SIGNAL \U1|auto_generated|counter_comb_bita5_OTERM49\ : std_logic;
SIGNAL \U1|auto_generated|counter_comb_bita2~combout\ : std_logic;
SIGNAL \U1|auto_generated|counter_comb_bita2_OTERM55\ : std_logic;
SIGNAL \Equal0~6_RTM075_combout\ : std_logic;
SIGNAL \Equal0~6_OTERM73\ : std_logic;
SIGNAL \Equal0~8_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|StageOut[13]~1_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|add_sub_3_result_int[1]~1\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|add_sub_3_result_int[2]~2_combout\ : std_logic;
SIGNAL \Add0~1_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|StageOut[14]~3_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|add_sub_3_result_int[2]~3\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|add_sub_3_result_int[3]~4_combout\ : std_logic;
SIGNAL \Add0~0_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|StageOut[15]~0_combout\ : std_logic;
SIGNAL \H0|Add25~0_combout\ : std_logic;
SIGNAL \H0|Add22~0_combout\ : std_logic;
SIGNAL \H0|Add18~0_combout\ : std_logic;
SIGNAL \H0|Add13~0_combout\ : std_logic;
SIGNAL \H0|Add10~0_combout\ : std_logic;
SIGNAL \H0|Add7~0_combout\ : std_logic;
SIGNAL \H0|Add2~0_combout\ : std_logic;
SIGNAL Q : std_logic_vector(3 DOWNTO 0);
SIGNAL \H0|ALT_INV_Add2~0_combout\ : std_logic;
SIGNAL \H0|ALT_INV_Add13~0_combout\ : std_logic;
SIGNAL \H0|ALT_INV_Add18~0_combout\ : std_logic;
SIGNAL \H0|ALT_INV_Add25~0_combout\ : std_logic;

BEGIN

HEX0 <= ww_HEX0;
ww_CLOCK_50 <= CLOCK_50;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\CLOCK_50~clkctrl_INCLK_bus\ <= (gnd & gnd & gnd & \CLOCK_50~combout\);
\H0|ALT_INV_Add2~0_combout\ <= NOT \H0|Add2~0_combout\;
\H0|ALT_INV_Add13~0_combout\ <= NOT \H0|Add13~0_combout\;
\H0|ALT_INV_Add18~0_combout\ <= NOT \H0|Add18~0_combout\;
\H0|ALT_INV_Add25~0_combout\ <= NOT \H0|Add25~0_combout\;

-- Location: LCCOMB_X28_Y1_N22
\Mod0|auto_generated|divider|divider|add_sub_3_result_int[3]~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|add_sub_3_result_int[3]~4_combout\ = (\Mod0|auto_generated|divider|divider|add_sub_3_result_int[2]~3\ & ((\Add0~0_combout\ $ (Q(3))))) # (!\Mod0|auto_generated|divider|divider|add_sub_3_result_int[2]~3\ & 
-- (\Add0~0_combout\ $ (Q(3) $ (VCC))))
-- \Mod0|auto_generated|divider|divider|add_sub_3_result_int[3]~5\ = CARRY((!\Mod0|auto_generated|divider|divider|add_sub_3_result_int[2]~3\ & (\Add0~0_combout\ $ (Q(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100000110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Add0~0_combout\,
	datab => Q(3),
	datad => VCC,
	cin => \Mod0|auto_generated|divider|divider|add_sub_3_result_int[2]~3\,
	combout => \Mod0|auto_generated|divider|divider|add_sub_3_result_int[3]~4_combout\,
	cout => \Mod0|auto_generated|divider|divider|add_sub_3_result_int[3]~5\);

-- Location: LCCOMB_X28_Y1_N24
\Mod0|auto_generated|divider|divider|add_sub_3_result_int[4]~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\ = !\Mod0|auto_generated|divider|divider|add_sub_3_result_int[3]~5\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \Mod0|auto_generated|divider|divider|add_sub_3_result_int[3]~5\,
	combout => \Mod0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\);

-- Location: LCCOMB_X27_Y5_N12
\U1|auto_generated|counter_comb_bita3\ : cycloneii_lcell_comb
-- Equation(s):
-- \U1|auto_generated|counter_comb_bita3~combout\ = (\U1|auto_generated|counter_comb_bita3_OTERM53\ & (!\U1|auto_generated|counter_comb_bita2~COUT\)) # (!\U1|auto_generated|counter_comb_bita3_OTERM53\ & ((\U1|auto_generated|counter_comb_bita2~COUT\) # 
-- (GND)))
-- \U1|auto_generated|counter_comb_bita3~COUT\ = CARRY((!\U1|auto_generated|counter_comb_bita2~COUT\) # (!\U1|auto_generated|counter_comb_bita3_OTERM53\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U1|auto_generated|counter_comb_bita3_OTERM53\,
	datad => VCC,
	cin => \U1|auto_generated|counter_comb_bita2~COUT\,
	combout => \U1|auto_generated|counter_comb_bita3~combout\,
	cout => \U1|auto_generated|counter_comb_bita3~COUT\);

-- Location: LCCOMB_X27_Y5_N20
\U1|auto_generated|counter_comb_bita7\ : cycloneii_lcell_comb
-- Equation(s):
-- \U1|auto_generated|counter_comb_bita7~combout\ = (\U1|auto_generated|counter_comb_bita7_OTERM45\ & (!\U1|auto_generated|counter_comb_bita6~COUT\)) # (!\U1|auto_generated|counter_comb_bita7_OTERM45\ & ((\U1|auto_generated|counter_comb_bita6~COUT\) # 
-- (GND)))
-- \U1|auto_generated|counter_comb_bita7~COUT\ = CARRY((!\U1|auto_generated|counter_comb_bita6~COUT\) # (!\U1|auto_generated|counter_comb_bita7_OTERM45\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U1|auto_generated|counter_comb_bita7_OTERM45\,
	datad => VCC,
	cin => \U1|auto_generated|counter_comb_bita6~COUT\,
	combout => \U1|auto_generated|counter_comb_bita7~combout\,
	cout => \U1|auto_generated|counter_comb_bita7~COUT\);

-- Location: LCCOMB_X27_Y5_N24
\U1|auto_generated|counter_comb_bita9\ : cycloneii_lcell_comb
-- Equation(s):
-- \U1|auto_generated|counter_comb_bita9~combout\ = (\U1|auto_generated|counter_comb_bita9_OTERM41\ & (!\U1|auto_generated|counter_comb_bita8~COUT\)) # (!\U1|auto_generated|counter_comb_bita9_OTERM41\ & ((\U1|auto_generated|counter_comb_bita8~COUT\) # 
-- (GND)))
-- \U1|auto_generated|counter_comb_bita9~COUT\ = CARRY((!\U1|auto_generated|counter_comb_bita8~COUT\) # (!\U1|auto_generated|counter_comb_bita9_OTERM41\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U1|auto_generated|counter_comb_bita9_OTERM41\,
	datad => VCC,
	cin => \U1|auto_generated|counter_comb_bita8~COUT\,
	combout => \U1|auto_generated|counter_comb_bita9~combout\,
	cout => \U1|auto_generated|counter_comb_bita9~COUT\);

-- Location: LCCOMB_X27_Y4_N6
\U1|auto_generated|counter_comb_bita16\ : cycloneii_lcell_comb
-- Equation(s):
-- \U1|auto_generated|counter_comb_bita16~combout\ = (\U1|auto_generated|counter_comb_bita16_OTERM27\ & (\U1|auto_generated|counter_comb_bita15~COUT\ $ (GND))) # (!\U1|auto_generated|counter_comb_bita16_OTERM27\ & 
-- (!\U1|auto_generated|counter_comb_bita15~COUT\ & VCC))
-- \U1|auto_generated|counter_comb_bita16~COUT\ = CARRY((\U1|auto_generated|counter_comb_bita16_OTERM27\ & !\U1|auto_generated|counter_comb_bita15~COUT\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U1|auto_generated|counter_comb_bita16_OTERM27\,
	datad => VCC,
	cin => \U1|auto_generated|counter_comb_bita15~COUT\,
	combout => \U1|auto_generated|counter_comb_bita16~combout\,
	cout => \U1|auto_generated|counter_comb_bita16~COUT\);

-- Location: LCCOMB_X27_Y4_N10
\U1|auto_generated|counter_comb_bita18\ : cycloneii_lcell_comb
-- Equation(s):
-- \U1|auto_generated|counter_comb_bita18~combout\ = (\U1|auto_generated|counter_comb_bita18_OTERM23\ & (\U1|auto_generated|counter_comb_bita17~COUT\ $ (GND))) # (!\U1|auto_generated|counter_comb_bita18_OTERM23\ & 
-- (!\U1|auto_generated|counter_comb_bita17~COUT\ & VCC))
-- \U1|auto_generated|counter_comb_bita18~COUT\ = CARRY((\U1|auto_generated|counter_comb_bita18_OTERM23\ & !\U1|auto_generated|counter_comb_bita17~COUT\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U1|auto_generated|counter_comb_bita18_OTERM23\,
	datad => VCC,
	cin => \U1|auto_generated|counter_comb_bita17~COUT\,
	combout => \U1|auto_generated|counter_comb_bita18~combout\,
	cout => \U1|auto_generated|counter_comb_bita18~COUT\);

-- Location: LCCOMB_X27_Y4_N12
\U1|auto_generated|counter_comb_bita19\ : cycloneii_lcell_comb
-- Equation(s):
-- \U1|auto_generated|counter_comb_bita19~combout\ = (\U1|auto_generated|counter_comb_bita19_OTERM21\ & (!\U1|auto_generated|counter_comb_bita18~COUT\)) # (!\U1|auto_generated|counter_comb_bita19_OTERM21\ & ((\U1|auto_generated|counter_comb_bita18~COUT\) # 
-- (GND)))
-- \U1|auto_generated|counter_comb_bita19~COUT\ = CARRY((!\U1|auto_generated|counter_comb_bita18~COUT\) # (!\U1|auto_generated|counter_comb_bita19_OTERM21\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U1|auto_generated|counter_comb_bita19_OTERM21\,
	datad => VCC,
	cin => \U1|auto_generated|counter_comb_bita18~COUT\,
	combout => \U1|auto_generated|counter_comb_bita19~combout\,
	cout => \U1|auto_generated|counter_comb_bita19~COUT\);

-- Location: LCCOMB_X27_Y4_N16
\U1|auto_generated|counter_comb_bita21\ : cycloneii_lcell_comb
-- Equation(s):
-- \U1|auto_generated|counter_comb_bita21~combout\ = (\U1|auto_generated|counter_comb_bita21_OTERM17\ & (!\U1|auto_generated|counter_comb_bita20~COUT\)) # (!\U1|auto_generated|counter_comb_bita21_OTERM17\ & ((\U1|auto_generated|counter_comb_bita20~COUT\) # 
-- (GND)))
-- \U1|auto_generated|counter_comb_bita21~COUT\ = CARRY((!\U1|auto_generated|counter_comb_bita20~COUT\) # (!\U1|auto_generated|counter_comb_bita21_OTERM17\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U1|auto_generated|counter_comb_bita21_OTERM17\,
	datad => VCC,
	cin => \U1|auto_generated|counter_comb_bita20~COUT\,
	combout => \U1|auto_generated|counter_comb_bita21~combout\,
	cout => \U1|auto_generated|counter_comb_bita21~COUT\);

-- Location: LCCOMB_X27_Y4_N20
\U1|auto_generated|counter_comb_bita23\ : cycloneii_lcell_comb
-- Equation(s):
-- \U1|auto_generated|counter_comb_bita23~combout\ = (\U1|auto_generated|counter_comb_bita23_OTERM13\ & (!\U1|auto_generated|counter_comb_bita22~COUT\)) # (!\U1|auto_generated|counter_comb_bita23_OTERM13\ & ((\U1|auto_generated|counter_comb_bita22~COUT\) # 
-- (GND)))
-- \U1|auto_generated|counter_comb_bita23~COUT\ = CARRY((!\U1|auto_generated|counter_comb_bita22~COUT\) # (!\U1|auto_generated|counter_comb_bita23_OTERM13\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U1|auto_generated|counter_comb_bita23_OTERM13\,
	datad => VCC,
	cin => \U1|auto_generated|counter_comb_bita22~COUT\,
	combout => \U1|auto_generated|counter_comb_bita23~combout\,
	cout => \U1|auto_generated|counter_comb_bita23~COUT\);

-- Location: LCCOMB_X27_Y4_N30
\Equal0~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \Equal0~1_combout\ = (!\U1|auto_generated|counter_comb_bita18_OTERM23\ & (\U1|auto_generated|counter_comb_bita20_OTERM19\ & (\U1|auto_generated|counter_comb_bita21_OTERM17\ & \U1|auto_generated|counter_comb_bita19_OTERM21\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U1|auto_generated|counter_comb_bita18_OTERM23\,
	datab => \U1|auto_generated|counter_comb_bita20_OTERM19\,
	datac => \U1|auto_generated|counter_comb_bita21_OTERM17\,
	datad => \U1|auto_generated|counter_comb_bita19_OTERM21\,
	combout => \Equal0~1_combout\);

-- Location: LCCOMB_X27_Y5_N0
\Equal0~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \Equal0~5_combout\ = (\U1|auto_generated|counter_comb_bita7_OTERM45\ & (!\U1|auto_generated|counter_comb_bita6_OTERM47\ & (!\U1|auto_generated|counter_comb_bita9_OTERM41\ & !\U1|auto_generated|counter_comb_bita8_OTERM43\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U1|auto_generated|counter_comb_bita7_OTERM45\,
	datab => \U1|auto_generated|counter_comb_bita6_OTERM47\,
	datac => \U1|auto_generated|counter_comb_bita9_OTERM41\,
	datad => \U1|auto_generated|counter_comb_bita8_OTERM43\,
	combout => \Equal0~5_combout\);

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

-- Location: LCFF_X27_Y4_N21
\U1|auto_generated|counter_comb_bita23_NEW_REG12\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \U1|auto_generated|counter_comb_bita23~combout\,
	aclr => \ACLR~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \U1|auto_generated|counter_comb_bita23_OTERM13\);

-- Location: LCFF_X27_Y4_N17
\U1|auto_generated|counter_comb_bita21_NEW_REG16\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \U1|auto_generated|counter_comb_bita21~combout\,
	aclr => \ACLR~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \U1|auto_generated|counter_comb_bita21_OTERM17\);

-- Location: LCFF_X27_Y4_N13
\U1|auto_generated|counter_comb_bita19_NEW_REG20\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \U1|auto_generated|counter_comb_bita19~combout\,
	aclr => \ACLR~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \U1|auto_generated|counter_comb_bita19_OTERM21\);

-- Location: LCFF_X27_Y4_N11
\U1|auto_generated|counter_comb_bita18_NEW_REG22\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \U1|auto_generated|counter_comb_bita18~combout\,
	aclr => \ACLR~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \U1|auto_generated|counter_comb_bita18_OTERM23\);

-- Location: LCFF_X27_Y4_N7
\U1|auto_generated|counter_comb_bita16_NEW_REG26\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \U1|auto_generated|counter_comb_bita16~combout\,
	aclr => \ACLR~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \U1|auto_generated|counter_comb_bita16_OTERM27\);

-- Location: LCFF_X27_Y5_N25
\U1|auto_generated|counter_comb_bita9_NEW_REG40\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \U1|auto_generated|counter_comb_bita9~combout\,
	aclr => \ACLR~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \U1|auto_generated|counter_comb_bita9_OTERM41\);

-- Location: LCFF_X27_Y5_N21
\U1|auto_generated|counter_comb_bita7_NEW_REG44\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \U1|auto_generated|counter_comb_bita7~combout\,
	aclr => \ACLR~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \U1|auto_generated|counter_comb_bita7_OTERM45\);

-- Location: LCFF_X27_Y5_N13
\U1|auto_generated|counter_comb_bita3_NEW_REG52\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \U1|auto_generated|counter_comb_bita3~combout\,
	aclr => \ACLR~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \U1|auto_generated|counter_comb_bita3_OTERM53\);

-- Location: LCFF_X27_Y5_N1
\Equal0~5_NEW_REG70\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \Equal0~5_combout\,
	aclr => \ACLR~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \Equal0~5_OTERM71\);

-- Location: LCCOMB_X28_Y1_N10
\Mod0|auto_generated|divider|divider|StageOut[12]~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|StageOut[12]~2_combout\ = !Q(0)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => Q(0),
	combout => \Mod0|auto_generated|divider|divider|StageOut[12]~2_combout\);

-- Location: LCCOMB_X28_Y5_N14
\U1|auto_generated|counter_comb_bita0_RTM061\ : cycloneii_lcell_comb
-- Equation(s):
-- \U1|auto_generated|counter_comb_bita0_RTM061~combout\ = !\U1|auto_generated|counter_comb_bita0_OTERM59\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \U1|auto_generated|counter_comb_bita0_OTERM59\,
	combout => \U1|auto_generated|counter_comb_bita0_RTM061~combout\);

-- Location: LCCOMB_X28_Y5_N16
\ACLR~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \ACLR~feeder_combout\ = \Equal0~8_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \Equal0~8_combout\,
	combout => \ACLR~feeder_combout\);

-- Location: LCFF_X28_Y5_N17
ACLR : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \ACLR~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \ACLR~regout\);

-- Location: LCFF_X27_Y5_N7
\U1|auto_generated|counter_comb_bita0_NEW_REG58\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	sdata => \U1|auto_generated|counter_comb_bita0_RTM061~combout\,
	aclr => \ACLR~regout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \U1|auto_generated|counter_comb_bita0_OTERM59\);

-- Location: LCCOMB_X27_Y5_N6
\U1|auto_generated|counter_comb_bita0\ : cycloneii_lcell_comb
-- Equation(s):
-- \U1|auto_generated|counter_comb_bita0~COUT\ = CARRY(!\U1|auto_generated|counter_comb_bita0_OTERM59\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111101010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U1|auto_generated|counter_comb_bita0_OTERM59\,
	datad => VCC,
	cout => \U1|auto_generated|counter_comb_bita0~COUT\);

-- Location: LCCOMB_X27_Y5_N8
\U1|auto_generated|counter_comb_bita1\ : cycloneii_lcell_comb
-- Equation(s):
-- \U1|auto_generated|counter_comb_bita1~combout\ = (\U1|auto_generated|counter_comb_bita1_OTERM57\ & (!\U1|auto_generated|counter_comb_bita0~COUT\)) # (!\U1|auto_generated|counter_comb_bita1_OTERM57\ & ((\U1|auto_generated|counter_comb_bita0~COUT\) # 
-- (GND)))
-- \U1|auto_generated|counter_comb_bita1~COUT\ = CARRY((!\U1|auto_generated|counter_comb_bita0~COUT\) # (!\U1|auto_generated|counter_comb_bita1_OTERM57\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \U1|auto_generated|counter_comb_bita1_OTERM57\,
	datad => VCC,
	cin => \U1|auto_generated|counter_comb_bita0~COUT\,
	combout => \U1|auto_generated|counter_comb_bita1~combout\,
	cout => \U1|auto_generated|counter_comb_bita1~COUT\);

-- Location: LCFF_X27_Y5_N9
\U1|auto_generated|counter_comb_bita1_NEW_REG56\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \U1|auto_generated|counter_comb_bita1~combout\,
	aclr => \ACLR~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \U1|auto_generated|counter_comb_bita1_OTERM57\);

-- Location: LCCOMB_X28_Y5_N0
\Equal0~7_RTM069\ : cycloneii_lcell_comb
-- Equation(s):
-- \Equal0~7_RTM069_combout\ = (\U1|auto_generated|counter_comb_bita1_OTERM57\) # (!\U1|auto_generated|counter_comb_bita0_OTERM59\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \U1|auto_generated|counter_comb_bita0_OTERM59\,
	datad => \U1|auto_generated|counter_comb_bita1_OTERM57\,
	combout => \Equal0~7_RTM069_combout\);

-- Location: LCFF_X28_Y5_N1
\Equal0~7_NEW_REG66\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \Equal0~7_RTM069_combout\,
	aclr => \ACLR~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \Equal0~7_OTERM67\);

-- Location: LCCOMB_X27_Y5_N10
\U1|auto_generated|counter_comb_bita2\ : cycloneii_lcell_comb
-- Equation(s):
-- \U1|auto_generated|counter_comb_bita2~combout\ = (\U1|auto_generated|counter_comb_bita2_OTERM55\ & (\U1|auto_generated|counter_comb_bita1~COUT\ $ (GND))) # (!\U1|auto_generated|counter_comb_bita2_OTERM55\ & (!\U1|auto_generated|counter_comb_bita1~COUT\ & 
-- VCC))
-- \U1|auto_generated|counter_comb_bita2~COUT\ = CARRY((\U1|auto_generated|counter_comb_bita2_OTERM55\ & !\U1|auto_generated|counter_comb_bita1~COUT\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U1|auto_generated|counter_comb_bita2_OTERM55\,
	datad => VCC,
	cin => \U1|auto_generated|counter_comb_bita1~COUT\,
	combout => \U1|auto_generated|counter_comb_bita2~combout\,
	cout => \U1|auto_generated|counter_comb_bita2~COUT\);

-- Location: LCCOMB_X27_Y5_N14
\U1|auto_generated|counter_comb_bita4\ : cycloneii_lcell_comb
-- Equation(s):
-- \U1|auto_generated|counter_comb_bita4~combout\ = (\U1|auto_generated|counter_comb_bita4_OTERM51\ & (\U1|auto_generated|counter_comb_bita3~COUT\ $ (GND))) # (!\U1|auto_generated|counter_comb_bita4_OTERM51\ & (!\U1|auto_generated|counter_comb_bita3~COUT\ & 
-- VCC))
-- \U1|auto_generated|counter_comb_bita4~COUT\ = CARRY((\U1|auto_generated|counter_comb_bita4_OTERM51\ & !\U1|auto_generated|counter_comb_bita3~COUT\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \U1|auto_generated|counter_comb_bita4_OTERM51\,
	datad => VCC,
	cin => \U1|auto_generated|counter_comb_bita3~COUT\,
	combout => \U1|auto_generated|counter_comb_bita4~combout\,
	cout => \U1|auto_generated|counter_comb_bita4~COUT\);

-- Location: LCFF_X27_Y5_N15
\U1|auto_generated|counter_comb_bita4_NEW_REG50\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \U1|auto_generated|counter_comb_bita4~combout\,
	aclr => \ACLR~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \U1|auto_generated|counter_comb_bita4_OTERM51\);

-- Location: LCCOMB_X27_Y5_N16
\U1|auto_generated|counter_comb_bita5\ : cycloneii_lcell_comb
-- Equation(s):
-- \U1|auto_generated|counter_comb_bita5~combout\ = (\U1|auto_generated|counter_comb_bita5_OTERM49\ & (!\U1|auto_generated|counter_comb_bita4~COUT\)) # (!\U1|auto_generated|counter_comb_bita5_OTERM49\ & ((\U1|auto_generated|counter_comb_bita4~COUT\) # 
-- (GND)))
-- \U1|auto_generated|counter_comb_bita5~COUT\ = CARRY((!\U1|auto_generated|counter_comb_bita4~COUT\) # (!\U1|auto_generated|counter_comb_bita5_OTERM49\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U1|auto_generated|counter_comb_bita5_OTERM49\,
	datad => VCC,
	cin => \U1|auto_generated|counter_comb_bita4~COUT\,
	combout => \U1|auto_generated|counter_comb_bita5~combout\,
	cout => \U1|auto_generated|counter_comb_bita5~COUT\);

-- Location: LCCOMB_X27_Y5_N18
\U1|auto_generated|counter_comb_bita6\ : cycloneii_lcell_comb
-- Equation(s):
-- \U1|auto_generated|counter_comb_bita6~combout\ = (\U1|auto_generated|counter_comb_bita6_OTERM47\ & (\U1|auto_generated|counter_comb_bita5~COUT\ $ (GND))) # (!\U1|auto_generated|counter_comb_bita6_OTERM47\ & (!\U1|auto_generated|counter_comb_bita5~COUT\ & 
-- VCC))
-- \U1|auto_generated|counter_comb_bita6~COUT\ = CARRY((\U1|auto_generated|counter_comb_bita6_OTERM47\ & !\U1|auto_generated|counter_comb_bita5~COUT\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \U1|auto_generated|counter_comb_bita6_OTERM47\,
	datad => VCC,
	cin => \U1|auto_generated|counter_comb_bita5~COUT\,
	combout => \U1|auto_generated|counter_comb_bita6~combout\,
	cout => \U1|auto_generated|counter_comb_bita6~COUT\);

-- Location: LCFF_X27_Y5_N19
\U1|auto_generated|counter_comb_bita6_NEW_REG46\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \U1|auto_generated|counter_comb_bita6~combout\,
	aclr => \ACLR~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \U1|auto_generated|counter_comb_bita6_OTERM47\);

-- Location: LCCOMB_X27_Y5_N22
\U1|auto_generated|counter_comb_bita8\ : cycloneii_lcell_comb
-- Equation(s):
-- \U1|auto_generated|counter_comb_bita8~combout\ = (\U1|auto_generated|counter_comb_bita8_OTERM43\ & (\U1|auto_generated|counter_comb_bita7~COUT\ $ (GND))) # (!\U1|auto_generated|counter_comb_bita8_OTERM43\ & (!\U1|auto_generated|counter_comb_bita7~COUT\ & 
-- VCC))
-- \U1|auto_generated|counter_comb_bita8~COUT\ = CARRY((\U1|auto_generated|counter_comb_bita8_OTERM43\ & !\U1|auto_generated|counter_comb_bita7~COUT\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \U1|auto_generated|counter_comb_bita8_OTERM43\,
	datad => VCC,
	cin => \U1|auto_generated|counter_comb_bita7~COUT\,
	combout => \U1|auto_generated|counter_comb_bita8~combout\,
	cout => \U1|auto_generated|counter_comb_bita8~COUT\);

-- Location: LCFF_X27_Y5_N23
\U1|auto_generated|counter_comb_bita8_NEW_REG42\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \U1|auto_generated|counter_comb_bita8~combout\,
	aclr => \ACLR~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \U1|auto_generated|counter_comb_bita8_OTERM43\);

-- Location: LCCOMB_X27_Y5_N26
\U1|auto_generated|counter_comb_bita10\ : cycloneii_lcell_comb
-- Equation(s):
-- \U1|auto_generated|counter_comb_bita10~combout\ = (\U1|auto_generated|counter_comb_bita10_OTERM39\ & (\U1|auto_generated|counter_comb_bita9~COUT\ $ (GND))) # (!\U1|auto_generated|counter_comb_bita10_OTERM39\ & (!\U1|auto_generated|counter_comb_bita9~COUT\ 
-- & VCC))
-- \U1|auto_generated|counter_comb_bita10~COUT\ = CARRY((\U1|auto_generated|counter_comb_bita10_OTERM39\ & !\U1|auto_generated|counter_comb_bita9~COUT\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \U1|auto_generated|counter_comb_bita10_OTERM39\,
	datad => VCC,
	cin => \U1|auto_generated|counter_comb_bita9~COUT\,
	combout => \U1|auto_generated|counter_comb_bita10~combout\,
	cout => \U1|auto_generated|counter_comb_bita10~COUT\);

-- Location: LCFF_X27_Y5_N27
\U1|auto_generated|counter_comb_bita10_NEW_REG38\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \U1|auto_generated|counter_comb_bita10~combout\,
	aclr => \ACLR~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \U1|auto_generated|counter_comb_bita10_OTERM39\);

-- Location: LCCOMB_X27_Y5_N28
\U1|auto_generated|counter_comb_bita11\ : cycloneii_lcell_comb
-- Equation(s):
-- \U1|auto_generated|counter_comb_bita11~combout\ = (\U1|auto_generated|counter_comb_bita11_OTERM37\ & (!\U1|auto_generated|counter_comb_bita10~COUT\)) # (!\U1|auto_generated|counter_comb_bita11_OTERM37\ & ((\U1|auto_generated|counter_comb_bita10~COUT\) # 
-- (GND)))
-- \U1|auto_generated|counter_comb_bita11~COUT\ = CARRY((!\U1|auto_generated|counter_comb_bita10~COUT\) # (!\U1|auto_generated|counter_comb_bita11_OTERM37\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \U1|auto_generated|counter_comb_bita11_OTERM37\,
	datad => VCC,
	cin => \U1|auto_generated|counter_comb_bita10~COUT\,
	combout => \U1|auto_generated|counter_comb_bita11~combout\,
	cout => \U1|auto_generated|counter_comb_bita11~COUT\);

-- Location: LCFF_X27_Y5_N29
\U1|auto_generated|counter_comb_bita11_NEW_REG36\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \U1|auto_generated|counter_comb_bita11~combout\,
	aclr => \ACLR~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \U1|auto_generated|counter_comb_bita11_OTERM37\);

-- Location: LCCOMB_X27_Y5_N30
\U1|auto_generated|counter_comb_bita12\ : cycloneii_lcell_comb
-- Equation(s):
-- \U1|auto_generated|counter_comb_bita12~combout\ = (\U1|auto_generated|counter_comb_bita12_OTERM35\ & (\U1|auto_generated|counter_comb_bita11~COUT\ $ (GND))) # (!\U1|auto_generated|counter_comb_bita12_OTERM35\ & 
-- (!\U1|auto_generated|counter_comb_bita11~COUT\ & VCC))
-- \U1|auto_generated|counter_comb_bita12~COUT\ = CARRY((\U1|auto_generated|counter_comb_bita12_OTERM35\ & !\U1|auto_generated|counter_comb_bita11~COUT\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \U1|auto_generated|counter_comb_bita12_OTERM35\,
	datad => VCC,
	cin => \U1|auto_generated|counter_comb_bita11~COUT\,
	combout => \U1|auto_generated|counter_comb_bita12~combout\,
	cout => \U1|auto_generated|counter_comb_bita12~COUT\);

-- Location: LCFF_X27_Y5_N31
\U1|auto_generated|counter_comb_bita12_NEW_REG34\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \U1|auto_generated|counter_comb_bita12~combout\,
	aclr => \ACLR~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \U1|auto_generated|counter_comb_bita12_OTERM35\);

-- Location: LCCOMB_X27_Y4_N0
\U1|auto_generated|counter_comb_bita13\ : cycloneii_lcell_comb
-- Equation(s):
-- \U1|auto_generated|counter_comb_bita13~combout\ = (\U1|auto_generated|counter_comb_bita13_OTERM33\ & (!\U1|auto_generated|counter_comb_bita12~COUT\)) # (!\U1|auto_generated|counter_comb_bita13_OTERM33\ & ((\U1|auto_generated|counter_comb_bita12~COUT\) # 
-- (GND)))
-- \U1|auto_generated|counter_comb_bita13~COUT\ = CARRY((!\U1|auto_generated|counter_comb_bita12~COUT\) # (!\U1|auto_generated|counter_comb_bita13_OTERM33\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \U1|auto_generated|counter_comb_bita13_OTERM33\,
	datad => VCC,
	cin => \U1|auto_generated|counter_comb_bita12~COUT\,
	combout => \U1|auto_generated|counter_comb_bita13~combout\,
	cout => \U1|auto_generated|counter_comb_bita13~COUT\);

-- Location: LCFF_X27_Y4_N1
\U1|auto_generated|counter_comb_bita13_NEW_REG32\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \U1|auto_generated|counter_comb_bita13~combout\,
	aclr => \ACLR~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \U1|auto_generated|counter_comb_bita13_OTERM33\);

-- Location: LCCOMB_X27_Y4_N2
\U1|auto_generated|counter_comb_bita14\ : cycloneii_lcell_comb
-- Equation(s):
-- \U1|auto_generated|counter_comb_bita14~combout\ = (\U1|auto_generated|counter_comb_bita14_OTERM31\ & (\U1|auto_generated|counter_comb_bita13~COUT\ $ (GND))) # (!\U1|auto_generated|counter_comb_bita14_OTERM31\ & 
-- (!\U1|auto_generated|counter_comb_bita13~COUT\ & VCC))
-- \U1|auto_generated|counter_comb_bita14~COUT\ = CARRY((\U1|auto_generated|counter_comb_bita14_OTERM31\ & !\U1|auto_generated|counter_comb_bita13~COUT\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \U1|auto_generated|counter_comb_bita14_OTERM31\,
	datad => VCC,
	cin => \U1|auto_generated|counter_comb_bita13~COUT\,
	combout => \U1|auto_generated|counter_comb_bita14~combout\,
	cout => \U1|auto_generated|counter_comb_bita14~COUT\);

-- Location: LCFF_X27_Y4_N3
\U1|auto_generated|counter_comb_bita14_NEW_REG30\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \U1|auto_generated|counter_comb_bita14~combout\,
	aclr => \ACLR~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \U1|auto_generated|counter_comb_bita14_OTERM31\);

-- Location: LCCOMB_X27_Y4_N4
\U1|auto_generated|counter_comb_bita15\ : cycloneii_lcell_comb
-- Equation(s):
-- \U1|auto_generated|counter_comb_bita15~combout\ = (\U1|auto_generated|counter_comb_bita15_OTERM29\ & (!\U1|auto_generated|counter_comb_bita14~COUT\)) # (!\U1|auto_generated|counter_comb_bita15_OTERM29\ & ((\U1|auto_generated|counter_comb_bita14~COUT\) # 
-- (GND)))
-- \U1|auto_generated|counter_comb_bita15~COUT\ = CARRY((!\U1|auto_generated|counter_comb_bita14~COUT\) # (!\U1|auto_generated|counter_comb_bita15_OTERM29\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \U1|auto_generated|counter_comb_bita15_OTERM29\,
	datad => VCC,
	cin => \U1|auto_generated|counter_comb_bita14~COUT\,
	combout => \U1|auto_generated|counter_comb_bita15~combout\,
	cout => \U1|auto_generated|counter_comb_bita15~COUT\);

-- Location: LCFF_X27_Y4_N5
\U1|auto_generated|counter_comb_bita15_NEW_REG28\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \U1|auto_generated|counter_comb_bita15~combout\,
	aclr => \ACLR~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \U1|auto_generated|counter_comb_bita15_OTERM29\);

-- Location: LCCOMB_X27_Y4_N8
\U1|auto_generated|counter_comb_bita17\ : cycloneii_lcell_comb
-- Equation(s):
-- \U1|auto_generated|counter_comb_bita17~combout\ = (\U1|auto_generated|counter_comb_bita17_OTERM25\ & (!\U1|auto_generated|counter_comb_bita16~COUT\)) # (!\U1|auto_generated|counter_comb_bita17_OTERM25\ & ((\U1|auto_generated|counter_comb_bita16~COUT\) # 
-- (GND)))
-- \U1|auto_generated|counter_comb_bita17~COUT\ = CARRY((!\U1|auto_generated|counter_comb_bita16~COUT\) # (!\U1|auto_generated|counter_comb_bita17_OTERM25\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \U1|auto_generated|counter_comb_bita17_OTERM25\,
	datad => VCC,
	cin => \U1|auto_generated|counter_comb_bita16~COUT\,
	combout => \U1|auto_generated|counter_comb_bita17~combout\,
	cout => \U1|auto_generated|counter_comb_bita17~COUT\);

-- Location: LCFF_X27_Y4_N9
\U1|auto_generated|counter_comb_bita17_NEW_REG24\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \U1|auto_generated|counter_comb_bita17~combout\,
	aclr => \ACLR~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \U1|auto_generated|counter_comb_bita17_OTERM25\);

-- Location: LCCOMB_X27_Y4_N28
\Equal0~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \Equal0~2_combout\ = (!\U1|auto_generated|counter_comb_bita16_OTERM27\ & (\U1|auto_generated|counter_comb_bita17_OTERM25\ & (\U1|auto_generated|counter_comb_bita15_OTERM29\ & \U1|auto_generated|counter_comb_bita14_OTERM31\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U1|auto_generated|counter_comb_bita16_OTERM27\,
	datab => \U1|auto_generated|counter_comb_bita17_OTERM25\,
	datac => \U1|auto_generated|counter_comb_bita15_OTERM29\,
	datad => \U1|auto_generated|counter_comb_bita14_OTERM31\,
	combout => \Equal0~2_combout\);

-- Location: LCCOMB_X27_Y4_N14
\U1|auto_generated|counter_comb_bita20\ : cycloneii_lcell_comb
-- Equation(s):
-- \U1|auto_generated|counter_comb_bita20~combout\ = (\U1|auto_generated|counter_comb_bita20_OTERM19\ & (\U1|auto_generated|counter_comb_bita19~COUT\ $ (GND))) # (!\U1|auto_generated|counter_comb_bita20_OTERM19\ & 
-- (!\U1|auto_generated|counter_comb_bita19~COUT\ & VCC))
-- \U1|auto_generated|counter_comb_bita20~COUT\ = CARRY((\U1|auto_generated|counter_comb_bita20_OTERM19\ & !\U1|auto_generated|counter_comb_bita19~COUT\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \U1|auto_generated|counter_comb_bita20_OTERM19\,
	datad => VCC,
	cin => \U1|auto_generated|counter_comb_bita19~COUT\,
	combout => \U1|auto_generated|counter_comb_bita20~combout\,
	cout => \U1|auto_generated|counter_comb_bita20~COUT\);

-- Location: LCFF_X27_Y4_N15
\U1|auto_generated|counter_comb_bita20_NEW_REG18\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \U1|auto_generated|counter_comb_bita20~combout\,
	aclr => \ACLR~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \U1|auto_generated|counter_comb_bita20_OTERM19\);

-- Location: LCCOMB_X27_Y4_N18
\U1|auto_generated|counter_comb_bita22\ : cycloneii_lcell_comb
-- Equation(s):
-- \U1|auto_generated|counter_comb_bita22~combout\ = (\U1|auto_generated|counter_comb_bita22_OTERM15\ & (\U1|auto_generated|counter_comb_bita21~COUT\ $ (GND))) # (!\U1|auto_generated|counter_comb_bita22_OTERM15\ & 
-- (!\U1|auto_generated|counter_comb_bita21~COUT\ & VCC))
-- \U1|auto_generated|counter_comb_bita22~COUT\ = CARRY((\U1|auto_generated|counter_comb_bita22_OTERM15\ & !\U1|auto_generated|counter_comb_bita21~COUT\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \U1|auto_generated|counter_comb_bita22_OTERM15\,
	datad => VCC,
	cin => \U1|auto_generated|counter_comb_bita21~COUT\,
	combout => \U1|auto_generated|counter_comb_bita22~combout\,
	cout => \U1|auto_generated|counter_comb_bita22~COUT\);

-- Location: LCFF_X27_Y4_N19
\U1|auto_generated|counter_comb_bita22_NEW_REG14\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \U1|auto_generated|counter_comb_bita22~combout\,
	aclr => \ACLR~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \U1|auto_generated|counter_comb_bita22_OTERM15\);

-- Location: LCCOMB_X27_Y4_N22
\U1|auto_generated|counter_comb_bita24\ : cycloneii_lcell_comb
-- Equation(s):
-- \U1|auto_generated|counter_comb_bita24~combout\ = (\U1|auto_generated|counter_comb_bita24_OTERM11\ & (\U1|auto_generated|counter_comb_bita23~COUT\ $ (GND))) # (!\U1|auto_generated|counter_comb_bita24_OTERM11\ & 
-- (!\U1|auto_generated|counter_comb_bita23~COUT\ & VCC))
-- \U1|auto_generated|counter_comb_bita24~COUT\ = CARRY((\U1|auto_generated|counter_comb_bita24_OTERM11\ & !\U1|auto_generated|counter_comb_bita23~COUT\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \U1|auto_generated|counter_comb_bita24_OTERM11\,
	datad => VCC,
	cin => \U1|auto_generated|counter_comb_bita23~COUT\,
	combout => \U1|auto_generated|counter_comb_bita24~combout\,
	cout => \U1|auto_generated|counter_comb_bita24~COUT\);

-- Location: LCFF_X27_Y4_N23
\U1|auto_generated|counter_comb_bita24_NEW_REG10\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \U1|auto_generated|counter_comb_bita24~combout\,
	aclr => \ACLR~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \U1|auto_generated|counter_comb_bita24_OTERM11\);

-- Location: LCCOMB_X27_Y4_N24
\U1|auto_generated|counter_comb_bita25\ : cycloneii_lcell_comb
-- Equation(s):
-- \U1|auto_generated|counter_comb_bita25~combout\ = \U1|auto_generated|counter_comb_bita25_OTERM9\ $ (\U1|auto_generated|counter_comb_bita24~COUT\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U1|auto_generated|counter_comb_bita25_OTERM9\,
	cin => \U1|auto_generated|counter_comb_bita24~COUT\,
	combout => \U1|auto_generated|counter_comb_bita25~combout\);

-- Location: LCFF_X27_Y4_N25
\U1|auto_generated|counter_comb_bita25_NEW_REG8\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \U1|auto_generated|counter_comb_bita25~combout\,
	aclr => \ACLR~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \U1|auto_generated|counter_comb_bita25_OTERM9\);

-- Location: LCCOMB_X27_Y4_N26
\Equal0~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Equal0~0_combout\ = (\U1|auto_generated|counter_comb_bita23_OTERM13\ & (!\U1|auto_generated|counter_comb_bita24_OTERM11\ & (\U1|auto_generated|counter_comb_bita25_OTERM9\ & \U1|auto_generated|counter_comb_bita22_OTERM15\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U1|auto_generated|counter_comb_bita23_OTERM13\,
	datab => \U1|auto_generated|counter_comb_bita24_OTERM11\,
	datac => \U1|auto_generated|counter_comb_bita25_OTERM9\,
	datad => \U1|auto_generated|counter_comb_bita22_OTERM15\,
	combout => \Equal0~0_combout\);

-- Location: LCCOMB_X27_Y5_N2
\Equal0~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \Equal0~3_combout\ = (\U1|auto_generated|counter_comb_bita12_OTERM35\ & (!\U1|auto_generated|counter_comb_bita11_OTERM37\ & (\U1|auto_generated|counter_comb_bita13_OTERM33\ & !\U1|auto_generated|counter_comb_bita10_OTERM39\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U1|auto_generated|counter_comb_bita12_OTERM35\,
	datab => \U1|auto_generated|counter_comb_bita11_OTERM37\,
	datac => \U1|auto_generated|counter_comb_bita13_OTERM33\,
	datad => \U1|auto_generated|counter_comb_bita10_OTERM39\,
	combout => \Equal0~3_combout\);

-- Location: LCCOMB_X27_Y5_N4
\Equal0~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \Equal0~4_combout\ = (\Equal0~1_combout\ & (\Equal0~2_combout\ & (\Equal0~0_combout\ & \Equal0~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal0~1_combout\,
	datab => \Equal0~2_combout\,
	datac => \Equal0~0_combout\,
	datad => \Equal0~3_combout\,
	combout => \Equal0~4_combout\);

-- Location: LCFF_X27_Y5_N5
\Equal0~4_NEW_REG64\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \Equal0~4_combout\,
	aclr => \ACLR~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \Equal0~4_OTERM65\);

-- Location: LCFF_X27_Y5_N17
\U1|auto_generated|counter_comb_bita5_NEW_REG48\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \U1|auto_generated|counter_comb_bita5~combout\,
	aclr => \ACLR~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \U1|auto_generated|counter_comb_bita5_OTERM49\);

-- Location: LCFF_X27_Y5_N11
\U1|auto_generated|counter_comb_bita2_NEW_REG54\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \U1|auto_generated|counter_comb_bita2~combout\,
	aclr => \ACLR~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \U1|auto_generated|counter_comb_bita2_OTERM55\);

-- Location: LCCOMB_X28_Y5_N18
\Equal0~6_RTM075\ : cycloneii_lcell_comb
-- Equation(s):
-- \Equal0~6_RTM075_combout\ = (\U1|auto_generated|counter_comb_bita3_OTERM53\) # ((\U1|auto_generated|counter_comb_bita5_OTERM49\) # ((\U1|auto_generated|counter_comb_bita4_OTERM51\) # (\U1|auto_generated|counter_comb_bita2_OTERM55\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U1|auto_generated|counter_comb_bita3_OTERM53\,
	datab => \U1|auto_generated|counter_comb_bita5_OTERM49\,
	datac => \U1|auto_generated|counter_comb_bita4_OTERM51\,
	datad => \U1|auto_generated|counter_comb_bita2_OTERM55\,
	combout => \Equal0~6_RTM075_combout\);

-- Location: LCFF_X28_Y5_N19
\Equal0~6_NEW_REG72\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \Equal0~6_RTM075_combout\,
	aclr => \ACLR~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \Equal0~6_OTERM73\);

-- Location: LCCOMB_X28_Y5_N28
\Equal0~8\ : cycloneii_lcell_comb
-- Equation(s):
-- \Equal0~8_combout\ = (\Equal0~5_OTERM71\ & (!\Equal0~7_OTERM67\ & (\Equal0~4_OTERM65\ & !\Equal0~6_OTERM73\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal0~5_OTERM71\,
	datab => \Equal0~7_OTERM67\,
	datac => \Equal0~4_OTERM65\,
	datad => \Equal0~6_OTERM73\,
	combout => \Equal0~8_combout\);

-- Location: LCFF_X28_Y1_N11
\Q[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \Mod0|auto_generated|divider|divider|StageOut[12]~2_combout\,
	ena => \Equal0~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => Q(0));

-- Location: LCCOMB_X28_Y1_N28
\Mod0|auto_generated|divider|divider|StageOut[13]~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|StageOut[13]~1_combout\ = \Mod0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\ $ (Q(1) $ (!Q(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010100101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mod0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\,
	datac => Q(1),
	datad => Q(0),
	combout => \Mod0|auto_generated|divider|divider|StageOut[13]~1_combout\);

-- Location: LCFF_X28_Y1_N29
\Q[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \Mod0|auto_generated|divider|divider|StageOut[13]~1_combout\,
	ena => \Equal0~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => Q(1));

-- Location: LCCOMB_X28_Y1_N18
\Mod0|auto_generated|divider|divider|add_sub_3_result_int[1]~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|add_sub_3_result_int[1]~1\ = CARRY(Q(0) $ (Q(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001100101100110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => Q(0),
	datab => Q(1),
	datad => VCC,
	cout => \Mod0|auto_generated|divider|divider|add_sub_3_result_int[1]~1\);

-- Location: LCCOMB_X28_Y1_N20
\Mod0|auto_generated|divider|divider|add_sub_3_result_int[2]~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|add_sub_3_result_int[2]~2_combout\ = (\Mod0|auto_generated|divider|divider|add_sub_3_result_int[1]~1\ & ((\Add0~1_combout\ $ (Q(2))))) # (!\Mod0|auto_generated|divider|divider|add_sub_3_result_int[1]~1\ & 
-- (\Add0~1_combout\ $ ((!Q(2)))))
-- \Mod0|auto_generated|divider|divider|add_sub_3_result_int[2]~3\ = CARRY((!\Mod0|auto_generated|divider|divider|add_sub_3_result_int[1]~1\ & (\Add0~1_combout\ $ (!Q(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100001001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Add0~1_combout\,
	datab => Q(2),
	datad => VCC,
	cin => \Mod0|auto_generated|divider|divider|add_sub_3_result_int[1]~1\,
	combout => \Mod0|auto_generated|divider|divider|add_sub_3_result_int[2]~2_combout\,
	cout => \Mod0|auto_generated|divider|divider|add_sub_3_result_int[2]~3\);

-- Location: LCCOMB_X28_Y1_N6
\Add0~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add0~1_combout\ = (Q(0) & Q(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => Q(0),
	datad => Q(1),
	combout => \Add0~1_combout\);

-- Location: LCCOMB_X28_Y1_N26
\Mod0|auto_generated|divider|divider|StageOut[14]~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|StageOut[14]~3_combout\ = (\Mod0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\ & ((Q(2) $ (\Add0~1_combout\)))) # (!\Mod0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\ & 
-- (\Mod0|auto_generated|divider|divider|add_sub_3_result_int[2]~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100111011100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mod0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\,
	datab => \Mod0|auto_generated|divider|divider|add_sub_3_result_int[2]~2_combout\,
	datac => Q(2),
	datad => \Add0~1_combout\,
	combout => \Mod0|auto_generated|divider|divider|StageOut[14]~3_combout\);

-- Location: LCFF_X28_Y1_N27
\Q[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \Mod0|auto_generated|divider|divider|StageOut[14]~3_combout\,
	ena => \Equal0~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => Q(2));

-- Location: LCCOMB_X28_Y1_N12
\Add0~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add0~0_combout\ = (Q(0) & (Q(2) & Q(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => Q(0),
	datab => Q(2),
	datad => Q(1),
	combout => \Add0~0_combout\);

-- Location: LCCOMB_X28_Y1_N2
\Mod0|auto_generated|divider|divider|StageOut[15]~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|StageOut[15]~0_combout\ = (\Mod0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\ & ((Q(3) $ (\Add0~0_combout\)))) # (!\Mod0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\ & 
-- (\Mod0|auto_generated|divider|divider|add_sub_3_result_int[3]~4_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100111011100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mod0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\,
	datab => \Mod0|auto_generated|divider|divider|add_sub_3_result_int[3]~4_combout\,
	datac => Q(3),
	datad => \Add0~0_combout\,
	combout => \Mod0|auto_generated|divider|divider|StageOut[15]~0_combout\);

-- Location: LCFF_X28_Y1_N3
\Q[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \Mod0|auto_generated|divider|divider|StageOut[15]~0_combout\,
	ena => \Equal0~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => Q(3));

-- Location: LCCOMB_X28_Y1_N16
\H0|Add25~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \H0|Add25~0_combout\ = (Q(0) & ((Q(3)) # (Q(2) $ (Q(1))))) # (!Q(0) & ((Q(1)) # (Q(3) $ (Q(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101111110111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => Q(0),
	datab => Q(3),
	datac => Q(2),
	datad => Q(1),
	combout => \H0|Add25~0_combout\);

-- Location: LCCOMB_X28_Y1_N0
\H0|Add22~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \H0|Add22~0_combout\ = (Q(0) & (Q(3) $ (((Q(1)) # (!Q(2)))))) # (!Q(0) & (!Q(3) & (!Q(2) & Q(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001110000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => Q(0),
	datab => Q(3),
	datac => Q(2),
	datad => Q(1),
	combout => \H0|Add22~0_combout\);

-- Location: LCCOMB_X27_Y1_N4
\H0|Add18~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \H0|Add18~0_combout\ = (Q(1) & ((Q(3)) # ((!Q(0))))) # (!Q(1) & ((Q(2) & (Q(3))) # (!Q(2) & ((!Q(0))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101110100011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => Q(3),
	datab => Q(0),
	datac => Q(2),
	datad => Q(1),
	combout => \H0|Add18~0_combout\);

-- Location: LCCOMB_X27_Y1_N20
\H0|Add13~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \H0|Add13~0_combout\ = (Q(1) & ((Q(0) & ((!Q(2)))) # (!Q(0) & ((Q(2)) # (!Q(3)))))) # (!Q(1) & ((Q(3)) # (Q(0) $ (!Q(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110111101011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => Q(3),
	datab => Q(0),
	datac => Q(2),
	datad => Q(1),
	combout => \H0|Add13~0_combout\);

-- Location: LCCOMB_X27_Y1_N12
\H0|Add10~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \H0|Add10~0_combout\ = (Q(3) & (Q(2) & ((Q(1)) # (!Q(0))))) # (!Q(3) & (!Q(0) & (!Q(2) & Q(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000100100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => Q(3),
	datab => Q(0),
	datac => Q(2),
	datad => Q(1),
	combout => \H0|Add10~0_combout\);

-- Location: LCCOMB_X27_Y1_N18
\H0|Add7~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \H0|Add7~0_combout\ = (Q(3) & ((Q(0) & ((Q(1)))) # (!Q(0) & (Q(2))))) # (!Q(3) & (Q(2) & (Q(0) $ (Q(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100001100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => Q(3),
	datab => Q(0),
	datac => Q(2),
	datad => Q(1),
	combout => \H0|Add7~0_combout\);

-- Location: LCCOMB_X27_Y1_N10
\H0|Add2~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \H0|Add2~0_combout\ = (Q(3) & ((Q(2) $ (!Q(1))) # (!Q(0)))) # (!Q(3) & ((Q(1)) # (Q(0) $ (!Q(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111011101101011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => Q(3),
	datab => Q(0),
	datac => Q(2),
	datad => Q(1),
	combout => \H0|Add2~0_combout\);

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


