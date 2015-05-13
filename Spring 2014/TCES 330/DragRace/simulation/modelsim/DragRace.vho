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

-- DATE "05/20/2014 11:34:56"

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

ENTITY 	DragRace IS
    PORT (
	KEY : IN std_logic_vector(0 DOWNTO 0);
	SW : IN std_logic_vector(1 DOWNTO 0);
	CLOCK_50 : IN std_logic;
	HEX7 : OUT std_logic_vector(0 TO 6);
	HEX6 : OUT std_logic_vector(0 TO 6);
	HEX5 : OUT std_logic_vector(0 TO 6);
	HEX4 : OUT std_logic_vector(0 TO 6);
	HEX3 : OUT std_logic_vector(0 TO 6);
	HEX2 : OUT std_logic_vector(0 TO 6);
	HEX1 : OUT std_logic_vector(0 TO 6);
	HEX0 : OUT std_logic_vector(0 TO 6)
	);
END DragRace;

-- Design Ports Information
-- HEX7[6]	=>  Location: PIN_N9,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- HEX7[5]	=>  Location: PIN_P9,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- HEX7[4]	=>  Location: PIN_L7,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- HEX7[3]	=>  Location: PIN_L6,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- HEX7[2]	=>  Location: PIN_L9,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- HEX7[1]	=>  Location: PIN_L2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- HEX7[0]	=>  Location: PIN_L3,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- HEX6[6]	=>  Location: PIN_M4,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- HEX6[5]	=>  Location: PIN_M5,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- HEX6[4]	=>  Location: PIN_M3,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- HEX6[3]	=>  Location: PIN_M2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- HEX6[2]	=>  Location: PIN_P3,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- HEX6[1]	=>  Location: PIN_P4,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- HEX6[0]	=>  Location: PIN_R2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- HEX5[6]	=>  Location: PIN_R3,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- HEX5[5]	=>  Location: PIN_R4,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- HEX5[4]	=>  Location: PIN_R5,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- HEX5[3]	=>  Location: PIN_T9,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- HEX5[2]	=>  Location: PIN_P7,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- HEX5[1]	=>  Location: PIN_P6,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- HEX5[0]	=>  Location: PIN_T2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- HEX4[6]	=>  Location: PIN_T3,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- HEX4[5]	=>  Location: PIN_R6,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- HEX4[4]	=>  Location: PIN_R7,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- HEX4[3]	=>  Location: PIN_T4,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- HEX4[2]	=>  Location: PIN_U2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- HEX4[1]	=>  Location: PIN_U1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- HEX4[0]	=>  Location: PIN_U9,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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
-- SW[0]	=>  Location: PIN_N25,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- SW[1]	=>  Location: PIN_N26,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- KEY[0]	=>  Location: PIN_G26,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- CLOCK_50	=>  Location: PIN_N2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default


ARCHITECTURE structure OF DragRace IS
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
SIGNAL ww_CLOCK_50 : std_logic;
SIGNAL ww_HEX7 : std_logic_vector(0 TO 6);
SIGNAL ww_HEX6 : std_logic_vector(0 TO 6);
SIGNAL ww_HEX5 : std_logic_vector(0 TO 6);
SIGNAL ww_HEX4 : std_logic_vector(0 TO 6);
SIGNAL ww_HEX3 : std_logic_vector(0 TO 6);
SIGNAL ww_HEX2 : std_logic_vector(0 TO 6);
SIGNAL ww_HEX1 : std_logic_vector(0 TO 6);
SIGNAL ww_HEX0 : std_logic_vector(0 TO 6);
SIGNAL \CLOCK_50~clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \DS1|C1|out[0]~26_combout\ : std_logic;
SIGNAL \DS1|C1|out[2]~30_combout\ : std_logic;
SIGNAL \DS1|C1|out[3]~32_combout\ : std_logic;
SIGNAL \DS1|C1|out[5]~36_combout\ : std_logic;
SIGNAL \DS1|C1|out[9]~44_combout\ : std_logic;
SIGNAL \DS1|C1|out[18]~62_combout\ : std_logic;
SIGNAL \DS1|C1|out[23]~72_combout\ : std_logic;
SIGNAL \DS1|C1|out[24]~75\ : std_logic;
SIGNAL \DS1|C1|out[25]~76_combout\ : std_logic;
SIGNAL \DS1|always1~1_combout\ : std_logic;
SIGNAL \DS1|always1~7_combout\ : std_logic;
SIGNAL \DS1|always1~8_combout\ : std_logic;
SIGNAL \DS1|always1~9_combout\ : std_logic;
SIGNAL \DS1|always1~10_combout\ : std_logic;
SIGNAL \DS1|currState~23_combout\ : std_logic;
SIGNAL \DS1|currState~25_combout\ : std_logic;
SIGNAL \CLOCK_50~combout\ : std_logic;
SIGNAL \CLOCK_50~clkctrl_outclk\ : std_logic;
SIGNAL \DS1|C1|out[0]~27\ : std_logic;
SIGNAL \DS1|C1|out[1]~28_combout\ : std_logic;
SIGNAL \DS1|C1|out[21]~68_combout\ : std_logic;
SIGNAL \DS1|always1~3_combout\ : std_logic;
SIGNAL \DS1|currState~14_combout\ : std_logic;
SIGNAL \DS1|currState~27_combout\ : std_logic;
SIGNAL \DS1|currState~28_combout\ : std_logic;
SIGNAL \DS1|currState.Idle~regout\ : std_logic;
SIGNAL \DS1|Selector4~0_combout\ : std_logic;
SIGNAL \DS1|currState~17_combout\ : std_logic;
SIGNAL \DS1|currState~18_combout\ : std_logic;
SIGNAL \DS1|currState~20_combout\ : std_logic;
SIGNAL \DS1|currState.Am2~regout\ : std_logic;
SIGNAL \DS1|currState~21_combout\ : std_logic;
SIGNAL \DS1|currState~19_combout\ : std_logic;
SIGNAL \DS1|currState~22_combout\ : std_logic;
SIGNAL \DS1|currState.Am3~regout\ : std_logic;
SIGNAL \DS1|Selector3~0_combout\ : std_logic;
SIGNAL \DS1|C1|out[19]~64_combout\ : std_logic;
SIGNAL \DS1|always1~2_combout\ : std_logic;
SIGNAL \DS1|C1|out[16]~58_combout\ : std_logic;
SIGNAL \DS1|always1~0_combout\ : std_logic;
SIGNAL \DS1|always1~4_combout\ : std_logic;
SIGNAL \DS1|always1~12_combout\ : std_logic;
SIGNAL \DS1|currState~29_combout\ : std_logic;
SIGNAL \DS1|currState.Red~regout\ : std_logic;
SIGNAL \DS1|Selector2~0_combout\ : std_logic;
SIGNAL \DS1|Selector2~1_combout\ : std_logic;
SIGNAL \DS1|ACLR~0_combout\ : std_logic;
SIGNAL \DS1|ACLR~regout\ : std_logic;
SIGNAL \DS1|C1|out[1]~29\ : std_logic;
SIGNAL \DS1|C1|out[2]~31\ : std_logic;
SIGNAL \DS1|C1|out[3]~33\ : std_logic;
SIGNAL \DS1|C1|out[4]~34_combout\ : std_logic;
SIGNAL \DS1|C1|out[4]~35\ : std_logic;
SIGNAL \DS1|C1|out[5]~37\ : std_logic;
SIGNAL \DS1|C1|out[6]~38_combout\ : std_logic;
SIGNAL \DS1|C1|out[6]~39\ : std_logic;
SIGNAL \DS1|C1|out[7]~41\ : std_logic;
SIGNAL \DS1|C1|out[8]~42_combout\ : std_logic;
SIGNAL \DS1|C1|out[8]~43\ : std_logic;
SIGNAL \DS1|C1|out[9]~45\ : std_logic;
SIGNAL \DS1|C1|out[10]~46_combout\ : std_logic;
SIGNAL \DS1|C1|out[10]~47\ : std_logic;
SIGNAL \DS1|C1|out[11]~48_combout\ : std_logic;
SIGNAL \DS1|C1|out[11]~49\ : std_logic;
SIGNAL \DS1|C1|out[12]~50_combout\ : std_logic;
SIGNAL \DS1|C1|out[12]~51\ : std_logic;
SIGNAL \DS1|C1|out[13]~52_combout\ : std_logic;
SIGNAL \DS1|C1|out[13]~53\ : std_logic;
SIGNAL \DS1|C1|out[14]~54_combout\ : std_logic;
SIGNAL \DS1|C1|out[14]~55\ : std_logic;
SIGNAL \DS1|C1|out[15]~56_combout\ : std_logic;
SIGNAL \DS1|C1|out[15]~57\ : std_logic;
SIGNAL \DS1|C1|out[16]~59\ : std_logic;
SIGNAL \DS1|C1|out[17]~60_combout\ : std_logic;
SIGNAL \DS1|C1|out[17]~61\ : std_logic;
SIGNAL \DS1|C1|out[18]~63\ : std_logic;
SIGNAL \DS1|C1|out[19]~65\ : std_logic;
SIGNAL \DS1|C1|out[20]~66_combout\ : std_logic;
SIGNAL \DS1|C1|out[20]~67\ : std_logic;
SIGNAL \DS1|C1|out[21]~69\ : std_logic;
SIGNAL \DS1|C1|out[22]~70_combout\ : std_logic;
SIGNAL \DS1|C1|out[22]~71\ : std_logic;
SIGNAL \DS1|C1|out[23]~73\ : std_logic;
SIGNAL \DS1|C1|out[24]~74_combout\ : std_logic;
SIGNAL \DS1|C1|out[7]~40_combout\ : std_logic;
SIGNAL \DS1|always1~5_combout\ : std_logic;
SIGNAL \DS1|always1~6_combout\ : std_logic;
SIGNAL \DS1|always1~11_combout\ : std_logic;
SIGNAL \DS1|currState~16_combout\ : std_logic;
SIGNAL \DS1|currState~26_combout\ : std_logic;
SIGNAL \DS1|currState.Stage~regout\ : std_logic;
SIGNAL \DS1|Delay[25]~0_combout\ : std_logic;
SIGNAL \DS1|currState~15_combout\ : std_logic;
SIGNAL \DS1|currState.Am1~regout\ : std_logic;
SIGNAL \DS1|currState~24_combout\ : std_logic;
SIGNAL \DS1|currState.Green~regout\ : std_logic;
SIGNAL \DS1|C1|out\ : std_logic_vector(25 DOWNTO 0);
SIGNAL \KEY~combout\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \SW~combout\ : std_logic_vector(1 DOWNTO 0);
SIGNAL \ALT_INV_SW~combout\ : std_logic_vector(1 DOWNTO 0);
SIGNAL \DS1|ALT_INV_currState.Red~regout\ : std_logic;
SIGNAL \DS1|ALT_INV_currState.Green~regout\ : std_logic;
SIGNAL \DS1|ALT_INV_currState.Am3~regout\ : std_logic;
SIGNAL \DS1|ALT_INV_currState.Am2~regout\ : std_logic;
SIGNAL \DS1|ALT_INV_currState.Am1~regout\ : std_logic;

BEGIN

ww_KEY <= KEY;
ww_SW <= SW;
ww_CLOCK_50 <= CLOCK_50;
HEX7 <= ww_HEX7;
HEX6 <= ww_HEX6;
HEX5 <= ww_HEX5;
HEX4 <= ww_HEX4;
HEX3 <= ww_HEX3;
HEX2 <= ww_HEX2;
HEX1 <= ww_HEX1;
HEX0 <= ww_HEX0;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\CLOCK_50~clkctrl_INCLK_bus\ <= (gnd & gnd & gnd & \CLOCK_50~combout\);
\ALT_INV_SW~combout\(1) <= NOT \SW~combout\(1);
\ALT_INV_SW~combout\(0) <= NOT \SW~combout\(0);
\DS1|ALT_INV_currState.Red~regout\ <= NOT \DS1|currState.Red~regout\;
\DS1|ALT_INV_currState.Green~regout\ <= NOT \DS1|currState.Green~regout\;
\DS1|ALT_INV_currState.Am3~regout\ <= NOT \DS1|currState.Am3~regout\;
\DS1|ALT_INV_currState.Am2~regout\ <= NOT \DS1|currState.Am2~regout\;
\DS1|ALT_INV_currState.Am1~regout\ <= NOT \DS1|currState.Am1~regout\;

-- Location: LCFF_X62_Y12_N11
\DS1|C1|out[18]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \DS1|C1|out[18]~62_combout\,
	sclr => \DS1|ACLR~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \DS1|C1|out\(18));

-- Location: LCFF_X62_Y12_N21
\DS1|C1|out[23]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \DS1|C1|out[23]~72_combout\,
	sclr => \DS1|ACLR~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \DS1|C1|out\(23));

-- Location: LCFF_X62_Y12_N25
\DS1|C1|out[25]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \DS1|C1|out[25]~76_combout\,
	sclr => \DS1|ACLR~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \DS1|C1|out\(25));

-- Location: LCFF_X62_Y13_N7
\DS1|C1|out[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \DS1|C1|out[0]~26_combout\,
	sclr => \DS1|ACLR~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \DS1|C1|out\(0));

-- Location: LCFF_X62_Y13_N11
\DS1|C1|out[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \DS1|C1|out[2]~30_combout\,
	sclr => \DS1|ACLR~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \DS1|C1|out\(2));

-- Location: LCFF_X62_Y13_N13
\DS1|C1|out[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \DS1|C1|out[3]~32_combout\,
	sclr => \DS1|ACLR~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \DS1|C1|out\(3));

-- Location: LCFF_X62_Y13_N17
\DS1|C1|out[5]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \DS1|C1|out[5]~36_combout\,
	sclr => \DS1|ACLR~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \DS1|C1|out\(5));

-- Location: LCFF_X62_Y13_N25
\DS1|C1|out[9]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \DS1|C1|out[9]~44_combout\,
	sclr => \DS1|ACLR~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \DS1|C1|out\(9));

-- Location: LCCOMB_X62_Y13_N6
\DS1|C1|out[0]~26\ : cycloneii_lcell_comb
-- Equation(s):
-- \DS1|C1|out[0]~26_combout\ = \DS1|C1|out\(0) $ (VCC)
-- \DS1|C1|out[0]~27\ = CARRY(\DS1|C1|out\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DS1|C1|out\(0),
	datad => VCC,
	combout => \DS1|C1|out[0]~26_combout\,
	cout => \DS1|C1|out[0]~27\);

-- Location: LCCOMB_X62_Y13_N10
\DS1|C1|out[2]~30\ : cycloneii_lcell_comb
-- Equation(s):
-- \DS1|C1|out[2]~30_combout\ = (\DS1|C1|out\(2) & (\DS1|C1|out[1]~29\ $ (GND))) # (!\DS1|C1|out\(2) & (!\DS1|C1|out[1]~29\ & VCC))
-- \DS1|C1|out[2]~31\ = CARRY((\DS1|C1|out\(2) & !\DS1|C1|out[1]~29\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \DS1|C1|out\(2),
	datad => VCC,
	cin => \DS1|C1|out[1]~29\,
	combout => \DS1|C1|out[2]~30_combout\,
	cout => \DS1|C1|out[2]~31\);

-- Location: LCCOMB_X62_Y13_N12
\DS1|C1|out[3]~32\ : cycloneii_lcell_comb
-- Equation(s):
-- \DS1|C1|out[3]~32_combout\ = (\DS1|C1|out\(3) & (!\DS1|C1|out[2]~31\)) # (!\DS1|C1|out\(3) & ((\DS1|C1|out[2]~31\) # (GND)))
-- \DS1|C1|out[3]~33\ = CARRY((!\DS1|C1|out[2]~31\) # (!\DS1|C1|out\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \DS1|C1|out\(3),
	datad => VCC,
	cin => \DS1|C1|out[2]~31\,
	combout => \DS1|C1|out[3]~32_combout\,
	cout => \DS1|C1|out[3]~33\);

-- Location: LCCOMB_X62_Y13_N16
\DS1|C1|out[5]~36\ : cycloneii_lcell_comb
-- Equation(s):
-- \DS1|C1|out[5]~36_combout\ = (\DS1|C1|out\(5) & (!\DS1|C1|out[4]~35\)) # (!\DS1|C1|out\(5) & ((\DS1|C1|out[4]~35\) # (GND)))
-- \DS1|C1|out[5]~37\ = CARRY((!\DS1|C1|out[4]~35\) # (!\DS1|C1|out\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \DS1|C1|out\(5),
	datad => VCC,
	cin => \DS1|C1|out[4]~35\,
	combout => \DS1|C1|out[5]~36_combout\,
	cout => \DS1|C1|out[5]~37\);

-- Location: LCCOMB_X62_Y13_N24
\DS1|C1|out[9]~44\ : cycloneii_lcell_comb
-- Equation(s):
-- \DS1|C1|out[9]~44_combout\ = (\DS1|C1|out\(9) & (!\DS1|C1|out[8]~43\)) # (!\DS1|C1|out\(9) & ((\DS1|C1|out[8]~43\) # (GND)))
-- \DS1|C1|out[9]~45\ = CARRY((!\DS1|C1|out[8]~43\) # (!\DS1|C1|out\(9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \DS1|C1|out\(9),
	datad => VCC,
	cin => \DS1|C1|out[8]~43\,
	combout => \DS1|C1|out[9]~44_combout\,
	cout => \DS1|C1|out[9]~45\);

-- Location: LCCOMB_X62_Y12_N10
\DS1|C1|out[18]~62\ : cycloneii_lcell_comb
-- Equation(s):
-- \DS1|C1|out[18]~62_combout\ = (\DS1|C1|out\(18) & (\DS1|C1|out[17]~61\ $ (GND))) # (!\DS1|C1|out\(18) & (!\DS1|C1|out[17]~61\ & VCC))
-- \DS1|C1|out[18]~63\ = CARRY((\DS1|C1|out\(18) & !\DS1|C1|out[17]~61\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \DS1|C1|out\(18),
	datad => VCC,
	cin => \DS1|C1|out[17]~61\,
	combout => \DS1|C1|out[18]~62_combout\,
	cout => \DS1|C1|out[18]~63\);

-- Location: LCCOMB_X62_Y12_N20
\DS1|C1|out[23]~72\ : cycloneii_lcell_comb
-- Equation(s):
-- \DS1|C1|out[23]~72_combout\ = (\DS1|C1|out\(23) & (!\DS1|C1|out[22]~71\)) # (!\DS1|C1|out\(23) & ((\DS1|C1|out[22]~71\) # (GND)))
-- \DS1|C1|out[23]~73\ = CARRY((!\DS1|C1|out[22]~71\) # (!\DS1|C1|out\(23)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \DS1|C1|out\(23),
	datad => VCC,
	cin => \DS1|C1|out[22]~71\,
	combout => \DS1|C1|out[23]~72_combout\,
	cout => \DS1|C1|out[23]~73\);

-- Location: LCCOMB_X62_Y12_N22
\DS1|C1|out[24]~74\ : cycloneii_lcell_comb
-- Equation(s):
-- \DS1|C1|out[24]~74_combout\ = (\DS1|C1|out\(24) & (\DS1|C1|out[23]~73\ $ (GND))) # (!\DS1|C1|out\(24) & (!\DS1|C1|out[23]~73\ & VCC))
-- \DS1|C1|out[24]~75\ = CARRY((\DS1|C1|out\(24) & !\DS1|C1|out[23]~73\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \DS1|C1|out\(24),
	datad => VCC,
	cin => \DS1|C1|out[23]~73\,
	combout => \DS1|C1|out[24]~74_combout\,
	cout => \DS1|C1|out[24]~75\);

-- Location: LCCOMB_X62_Y12_N24
\DS1|C1|out[25]~76\ : cycloneii_lcell_comb
-- Equation(s):
-- \DS1|C1|out[25]~76_combout\ = \DS1|C1|out\(25) $ (\DS1|C1|out[24]~75\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \DS1|C1|out\(25),
	cin => \DS1|C1|out[24]~75\,
	combout => \DS1|C1|out[25]~76_combout\);

-- Location: LCCOMB_X62_Y12_N26
\DS1|always1~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \DS1|always1~1_combout\ = (\DS1|Selector4~0_combout\ & (\DS1|C1|out\(13) & (\DS1|C1|out\(12) & \DS1|C1|out\(14)))) # (!\DS1|Selector4~0_combout\ & (!\DS1|C1|out\(13) & (!\DS1|C1|out\(12) & !\DS1|C1|out\(14))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DS1|Selector4~0_combout\,
	datab => \DS1|C1|out\(13),
	datac => \DS1|C1|out\(12),
	datad => \DS1|C1|out\(14),
	combout => \DS1|always1~1_combout\);

-- Location: LCCOMB_X64_Y12_N20
\DS1|always1~7\ : cycloneii_lcell_comb
-- Equation(s):
-- \DS1|always1~7_combout\ = (\KEY~combout\(0) & (\DS1|C1|out\(25) $ (((!\SW~combout\(1)) # (!\DS1|currState.Stage~regout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \KEY~combout\(0),
	datab => \DS1|currState.Stage~regout\,
	datac => \SW~combout\(1),
	datad => \DS1|C1|out\(25),
	combout => \DS1|always1~7_combout\);

-- Location: LCCOMB_X62_Y13_N0
\DS1|always1~8\ : cycloneii_lcell_comb
-- Equation(s):
-- \DS1|always1~8_combout\ = (!\DS1|C1|out\(3) & (!\DS1|C1|out\(0) & (!\DS1|C1|out\(1) & !\DS1|C1|out\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DS1|C1|out\(3),
	datab => \DS1|C1|out\(0),
	datac => \DS1|C1|out\(1),
	datad => \DS1|C1|out\(2),
	combout => \DS1|always1~8_combout\);

-- Location: LCCOMB_X62_Y13_N2
\DS1|always1~9\ : cycloneii_lcell_comb
-- Equation(s):
-- \DS1|always1~9_combout\ = (!\DS1|C1|out\(9) & (!\DS1|C1|out\(4) & (!\DS1|C1|out\(5) & !\DS1|C1|out\(8))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DS1|C1|out\(9),
	datab => \DS1|C1|out\(4),
	datac => \DS1|C1|out\(5),
	datad => \DS1|C1|out\(8),
	combout => \DS1|always1~9_combout\);

-- Location: LCCOMB_X62_Y13_N4
\DS1|always1~10\ : cycloneii_lcell_comb
-- Equation(s):
-- \DS1|always1~10_combout\ = (\DS1|always1~8_combout\ & (\DS1|always1~9_combout\ & (\DS1|always1~7_combout\ & !\DS1|C1|out\(10))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DS1|always1~8_combout\,
	datab => \DS1|always1~9_combout\,
	datac => \DS1|always1~7_combout\,
	datad => \DS1|C1|out\(10),
	combout => \DS1|always1~10_combout\);

-- Location: LCCOMB_X63_Y12_N8
\DS1|currState~23\ : cycloneii_lcell_comb
-- Equation(s):
-- \DS1|currState~23_combout\ = (\DS1|currState.Green~regout\) # ((\DS1|currState.Am3~regout\ & \SW~combout\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DS1|currState.Green~regout\,
	datab => \DS1|currState.Am3~regout\,
	datad => \SW~combout\(1),
	combout => \DS1|currState~23_combout\);

-- Location: LCCOMB_X64_Y12_N18
\DS1|currState~25\ : cycloneii_lcell_comb
-- Equation(s):
-- \DS1|currState~25_combout\ = (\DS1|currState.Idle~regout\ & (((!\DS1|Selector2~1_combout\ & \DS1|currState.Stage~regout\)))) # (!\DS1|currState.Idle~regout\ & ((\DS1|currState~17_combout\) # ((!\DS1|Selector2~1_combout\ & \DS1|currState.Stage~regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100111101000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DS1|currState.Idle~regout\,
	datab => \DS1|currState~17_combout\,
	datac => \DS1|Selector2~1_combout\,
	datad => \DS1|currState.Stage~regout\,
	combout => \DS1|currState~25_combout\);

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

-- Location: LCCOMB_X62_Y13_N8
\DS1|C1|out[1]~28\ : cycloneii_lcell_comb
-- Equation(s):
-- \DS1|C1|out[1]~28_combout\ = (\DS1|C1|out\(1) & (!\DS1|C1|out[0]~27\)) # (!\DS1|C1|out\(1) & ((\DS1|C1|out[0]~27\) # (GND)))
-- \DS1|C1|out[1]~29\ = CARRY((!\DS1|C1|out[0]~27\) # (!\DS1|C1|out\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \DS1|C1|out\(1),
	datad => VCC,
	cin => \DS1|C1|out[0]~27\,
	combout => \DS1|C1|out[1]~28_combout\,
	cout => \DS1|C1|out[1]~29\);

-- Location: LCCOMB_X62_Y12_N16
\DS1|C1|out[21]~68\ : cycloneii_lcell_comb
-- Equation(s):
-- \DS1|C1|out[21]~68_combout\ = (\DS1|C1|out\(21) & (!\DS1|C1|out[20]~67\)) # (!\DS1|C1|out\(21) & ((\DS1|C1|out[20]~67\) # (GND)))
-- \DS1|C1|out[21]~69\ = CARRY((!\DS1|C1|out[20]~67\) # (!\DS1|C1|out\(21)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \DS1|C1|out\(21),
	datad => VCC,
	cin => \DS1|C1|out[20]~67\,
	combout => \DS1|C1|out[21]~68_combout\,
	cout => \DS1|C1|out[21]~69\);

-- Location: LCFF_X62_Y12_N17
\DS1|C1|out[21]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \DS1|C1|out[21]~68_combout\,
	sclr => \DS1|ACLR~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \DS1|C1|out\(21));

-- Location: LCCOMB_X62_Y12_N28
\DS1|always1~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \DS1|always1~3_combout\ = (\DS1|Selector4~0_combout\ & (\DS1|C1|out\(20) & (\DS1|C1|out\(21) & \DS1|C1|out\(22)))) # (!\DS1|Selector4~0_combout\ & (!\DS1|C1|out\(20) & (!\DS1|C1|out\(21) & !\DS1|C1|out\(22))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DS1|Selector4~0_combout\,
	datab => \DS1|C1|out\(20),
	datac => \DS1|C1|out\(21),
	datad => \DS1|C1|out\(22),
	combout => \DS1|always1~3_combout\);

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

-- Location: LCCOMB_X64_Y12_N2
\DS1|currState~14\ : cycloneii_lcell_comb
-- Equation(s):
-- \DS1|currState~14_combout\ = (!\DS1|Selector2~1_combout\ & (\KEY~combout\(0) & ((!\DS1|always1~4_combout\) # (!\DS1|always1~11_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DS1|always1~11_combout\,
	datab => \DS1|Selector2~1_combout\,
	datac => \KEY~combout\(0),
	datad => \DS1|always1~4_combout\,
	combout => \DS1|currState~14_combout\);

-- Location: LCCOMB_X64_Y12_N12
\DS1|currState~27\ : cycloneii_lcell_comb
-- Equation(s):
-- \DS1|currState~27_combout\ = (\DS1|currState.Idle~regout\ & (!\SW~combout\(1) & \DS1|currState.Stage~regout\)) # (!\DS1|currState.Idle~regout\ & (\SW~combout\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \DS1|currState.Idle~regout\,
	datac => \SW~combout\(1),
	datad => \DS1|currState.Stage~regout\,
	combout => \DS1|currState~27_combout\);

-- Location: LCCOMB_X64_Y12_N22
\DS1|currState~28\ : cycloneii_lcell_comb
-- Equation(s):
-- \DS1|currState~28_combout\ = (\KEY~combout\(0) & (\DS1|currState.Idle~regout\ $ (((!\DS1|currState~14_combout\ & \DS1|currState~27_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000001010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \KEY~combout\(0),
	datab => \DS1|currState~14_combout\,
	datac => \DS1|currState.Idle~regout\,
	datad => \DS1|currState~27_combout\,
	combout => \DS1|currState~28_combout\);

-- Location: LCFF_X64_Y12_N23
\DS1|currState.Idle\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \DS1|currState~28_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \DS1|currState.Idle~regout\);

-- Location: LCCOMB_X64_Y12_N24
\DS1|Selector4~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \DS1|Selector4~0_combout\ = (!\DS1|currState.Green~regout\ & (!\DS1|currState.Red~regout\ & (\SW~combout\(1) & \DS1|currState.Idle~regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DS1|currState.Green~regout\,
	datab => \DS1|currState.Red~regout\,
	datac => \SW~combout\(1),
	datad => \DS1|currState.Idle~regout\,
	combout => \DS1|Selector4~0_combout\);

-- Location: LCCOMB_X64_Y12_N28
\DS1|currState~17\ : cycloneii_lcell_comb
-- Equation(s):
-- \DS1|currState~17_combout\ = (\SW~combout\(1) & \DS1|currState.Red~regout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \SW~combout\(1),
	datac => \DS1|currState.Red~regout\,
	combout => \DS1|currState~17_combout\);

-- Location: LCCOMB_X64_Y12_N30
\DS1|currState~18\ : cycloneii_lcell_comb
-- Equation(s):
-- \DS1|currState~18_combout\ = (\DS1|currState.Am2~regout\ & (((\DS1|currState~17_combout\ & \DS1|currState.Am1~regout\)) # (!\DS1|Selector2~1_combout\))) # (!\DS1|currState.Am2~regout\ & (\DS1|currState~17_combout\ & ((\DS1|currState.Am1~regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DS1|currState.Am2~regout\,
	datab => \DS1|currState~17_combout\,
	datac => \DS1|Selector2~1_combout\,
	datad => \DS1|currState.Am1~regout\,
	combout => \DS1|currState~18_combout\);

-- Location: LCCOMB_X63_Y12_N16
\DS1|currState~20\ : cycloneii_lcell_comb
-- Equation(s):
-- \DS1|currState~20_combout\ = (\DS1|currState~19_combout\ & ((\DS1|currState.Am1~regout\) # ((\DS1|currState~16_combout\ & \DS1|currState~18_combout\)))) # (!\DS1|currState~19_combout\ & (\DS1|currState~16_combout\ & ((\DS1|currState~18_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DS1|currState~19_combout\,
	datab => \DS1|currState~16_combout\,
	datac => \DS1|currState.Am1~regout\,
	datad => \DS1|currState~18_combout\,
	combout => \DS1|currState~20_combout\);

-- Location: LCFF_X63_Y12_N17
\DS1|currState.Am2\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \DS1|currState~20_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \DS1|currState.Am2~regout\);

-- Location: LCCOMB_X64_Y12_N16
\DS1|currState~21\ : cycloneii_lcell_comb
-- Equation(s):
-- \DS1|currState~21_combout\ = (\DS1|currState.Am3~regout\ & (((\DS1|currState.Am2~regout\ & \DS1|currState~17_combout\)) # (!\DS1|Selector2~1_combout\))) # (!\DS1|currState.Am3~regout\ & (\DS1|currState.Am2~regout\ & ((\DS1|currState~17_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DS1|currState.Am3~regout\,
	datab => \DS1|currState.Am2~regout\,
	datac => \DS1|Selector2~1_combout\,
	datad => \DS1|currState~17_combout\,
	combout => \DS1|currState~21_combout\);

-- Location: LCCOMB_X63_Y12_N20
\DS1|currState~19\ : cycloneii_lcell_comb
-- Equation(s):
-- \DS1|currState~19_combout\ = (\DS1|always1~11_combout\ & (\DS1|always1~4_combout\ & \SW~combout\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \DS1|always1~11_combout\,
	datac => \DS1|always1~4_combout\,
	datad => \SW~combout\(1),
	combout => \DS1|currState~19_combout\);

-- Location: LCCOMB_X63_Y12_N26
\DS1|currState~22\ : cycloneii_lcell_comb
-- Equation(s):
-- \DS1|currState~22_combout\ = (\DS1|currState.Am2~regout\ & ((\DS1|currState~19_combout\) # ((\DS1|currState~16_combout\ & \DS1|currState~21_combout\)))) # (!\DS1|currState.Am2~regout\ & (\DS1|currState~16_combout\ & (\DS1|currState~21_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DS1|currState.Am2~regout\,
	datab => \DS1|currState~16_combout\,
	datac => \DS1|currState~21_combout\,
	datad => \DS1|currState~19_combout\,
	combout => \DS1|currState~22_combout\);

-- Location: LCFF_X63_Y12_N27
\DS1|currState.Am3\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \DS1|currState~22_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \DS1|currState.Am3~regout\);

-- Location: LCCOMB_X63_Y12_N24
\DS1|Selector3~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \DS1|Selector3~0_combout\ = (\SW~combout\(1) & ((\DS1|currState.Am2~regout\) # ((\DS1|currState.Am3~regout\) # (\DS1|currState.Am1~regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DS1|currState.Am2~regout\,
	datab => \DS1|currState.Am3~regout\,
	datac => \DS1|currState.Am1~regout\,
	datad => \SW~combout\(1),
	combout => \DS1|Selector3~0_combout\);

-- Location: LCCOMB_X62_Y12_N12
\DS1|C1|out[19]~64\ : cycloneii_lcell_comb
-- Equation(s):
-- \DS1|C1|out[19]~64_combout\ = (\DS1|C1|out\(19) & (!\DS1|C1|out[18]~63\)) # (!\DS1|C1|out\(19) & ((\DS1|C1|out[18]~63\) # (GND)))
-- \DS1|C1|out[19]~65\ = CARRY((!\DS1|C1|out[18]~63\) # (!\DS1|C1|out\(19)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \DS1|C1|out\(19),
	datad => VCC,
	cin => \DS1|C1|out[18]~63\,
	combout => \DS1|C1|out[19]~64_combout\,
	cout => \DS1|C1|out[19]~65\);

-- Location: LCFF_X62_Y12_N13
\DS1|C1|out[19]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \DS1|C1|out[19]~64_combout\,
	sclr => \DS1|ACLR~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \DS1|C1|out\(19));

-- Location: LCCOMB_X63_Y12_N4
\DS1|always1~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \DS1|always1~2_combout\ = (\DS1|C1|out\(18) & (\DS1|Selector3~0_combout\ & (\DS1|Selector4~0_combout\ $ (!\DS1|C1|out\(19))))) # (!\DS1|C1|out\(18) & (!\DS1|Selector3~0_combout\ & (\DS1|Selector4~0_combout\ $ (!\DS1|C1|out\(19)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000010000100001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DS1|C1|out\(18),
	datab => \DS1|Selector4~0_combout\,
	datac => \DS1|Selector3~0_combout\,
	datad => \DS1|C1|out\(19),
	combout => \DS1|always1~2_combout\);

-- Location: LCCOMB_X62_Y12_N6
\DS1|C1|out[16]~58\ : cycloneii_lcell_comb
-- Equation(s):
-- \DS1|C1|out[16]~58_combout\ = (\DS1|C1|out\(16) & (\DS1|C1|out[15]~57\ $ (GND))) # (!\DS1|C1|out\(16) & (!\DS1|C1|out[15]~57\ & VCC))
-- \DS1|C1|out[16]~59\ = CARRY((\DS1|C1|out\(16) & !\DS1|C1|out[15]~57\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \DS1|C1|out\(16),
	datad => VCC,
	cin => \DS1|C1|out[15]~57\,
	combout => \DS1|C1|out[16]~58_combout\,
	cout => \DS1|C1|out[16]~59\);

-- Location: LCFF_X62_Y12_N7
\DS1|C1|out[16]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \DS1|C1|out[16]~58_combout\,
	sclr => \DS1|ACLR~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \DS1|C1|out\(16));

-- Location: LCCOMB_X63_Y12_N2
\DS1|always1~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \DS1|always1~0_combout\ = (\DS1|Selector3~0_combout\ & (\DS1|C1|out\(6) & (\DS1|C1|out\(16) & \DS1|C1|out\(11)))) # (!\DS1|Selector3~0_combout\ & (!\DS1|C1|out\(6) & (!\DS1|C1|out\(16) & !\DS1|C1|out\(11))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DS1|Selector3~0_combout\,
	datab => \DS1|C1|out\(6),
	datac => \DS1|C1|out\(16),
	datad => \DS1|C1|out\(11),
	combout => \DS1|always1~0_combout\);

-- Location: LCCOMB_X63_Y12_N14
\DS1|always1~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \DS1|always1~4_combout\ = (\DS1|always1~1_combout\ & (\DS1|always1~3_combout\ & (\DS1|always1~2_combout\ & \DS1|always1~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DS1|always1~1_combout\,
	datab => \DS1|always1~3_combout\,
	datac => \DS1|always1~2_combout\,
	datad => \DS1|always1~0_combout\,
	combout => \DS1|always1~4_combout\);

-- Location: LCCOMB_X63_Y12_N22
\DS1|always1~12\ : cycloneii_lcell_comb
-- Equation(s):
-- \DS1|always1~12_combout\ = (\DS1|always1~11_combout\ & \DS1|always1~4_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \DS1|always1~11_combout\,
	datac => \DS1|always1~4_combout\,
	combout => \DS1|always1~12_combout\);

-- Location: LCCOMB_X63_Y12_N6
\DS1|currState~29\ : cycloneii_lcell_comb
-- Equation(s):
-- \DS1|currState~29_combout\ = (\DS1|Selector2~0_combout\ & ((\DS1|always1~12_combout\) # ((\DS1|currState~16_combout\)))) # (!\DS1|Selector2~0_combout\ & (\DS1|currState.Red~regout\ & ((\DS1|always1~12_combout\) # (\DS1|currState~16_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101011001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DS1|Selector2~0_combout\,
	datab => \DS1|always1~12_combout\,
	datac => \DS1|currState.Red~regout\,
	datad => \DS1|currState~16_combout\,
	combout => \DS1|currState~29_combout\);

-- Location: LCFF_X63_Y12_N7
\DS1|currState.Red\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \DS1|currState~29_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \DS1|currState.Red~regout\);

-- Location: LCCOMB_X64_Y12_N6
\DS1|Selector2~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \DS1|Selector2~0_combout\ = (!\SW~combout\(1) & ((\DS1|currState.Am3~regout\) # ((\DS1|currState.Am2~regout\) # (\DS1|currState.Am1~regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DS1|currState.Am3~regout\,
	datab => \DS1|currState.Am2~regout\,
	datac => \SW~combout\(1),
	datad => \DS1|currState.Am1~regout\,
	combout => \DS1|Selector2~0_combout\);

-- Location: LCCOMB_X64_Y12_N8
\DS1|Selector2~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \DS1|Selector2~1_combout\ = (\DS1|currState.Red~regout\) # (\DS1|Selector2~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \DS1|currState.Red~regout\,
	datad => \DS1|Selector2~0_combout\,
	combout => \DS1|Selector2~1_combout\);

-- Location: LCCOMB_X63_Y12_N10
\DS1|ACLR~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \DS1|ACLR~0_combout\ = (\DS1|ACLR~regout\ & (((\DS1|Selector2~1_combout\) # (!\DS1|currState~16_combout\)))) # (!\DS1|ACLR~regout\ & (\KEY~combout\(0) & ((!\DS1|currState~16_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \KEY~combout\(0),
	datab => \DS1|Selector2~1_combout\,
	datac => \DS1|ACLR~regout\,
	datad => \DS1|currState~16_combout\,
	combout => \DS1|ACLR~0_combout\);

-- Location: LCFF_X63_Y12_N11
\DS1|ACLR\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \DS1|ACLR~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \DS1|ACLR~regout\);

-- Location: LCFF_X62_Y13_N9
\DS1|C1|out[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \DS1|C1|out[1]~28_combout\,
	sclr => \DS1|ACLR~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \DS1|C1|out\(1));

-- Location: LCCOMB_X62_Y13_N14
\DS1|C1|out[4]~34\ : cycloneii_lcell_comb
-- Equation(s):
-- \DS1|C1|out[4]~34_combout\ = (\DS1|C1|out\(4) & (\DS1|C1|out[3]~33\ $ (GND))) # (!\DS1|C1|out\(4) & (!\DS1|C1|out[3]~33\ & VCC))
-- \DS1|C1|out[4]~35\ = CARRY((\DS1|C1|out\(4) & !\DS1|C1|out[3]~33\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \DS1|C1|out\(4),
	datad => VCC,
	cin => \DS1|C1|out[3]~33\,
	combout => \DS1|C1|out[4]~34_combout\,
	cout => \DS1|C1|out[4]~35\);

-- Location: LCFF_X62_Y13_N15
\DS1|C1|out[4]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \DS1|C1|out[4]~34_combout\,
	sclr => \DS1|ACLR~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \DS1|C1|out\(4));

-- Location: LCCOMB_X62_Y13_N18
\DS1|C1|out[6]~38\ : cycloneii_lcell_comb
-- Equation(s):
-- \DS1|C1|out[6]~38_combout\ = (\DS1|C1|out\(6) & (\DS1|C1|out[5]~37\ $ (GND))) # (!\DS1|C1|out\(6) & (!\DS1|C1|out[5]~37\ & VCC))
-- \DS1|C1|out[6]~39\ = CARRY((\DS1|C1|out\(6) & !\DS1|C1|out[5]~37\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \DS1|C1|out\(6),
	datad => VCC,
	cin => \DS1|C1|out[5]~37\,
	combout => \DS1|C1|out[6]~38_combout\,
	cout => \DS1|C1|out[6]~39\);

-- Location: LCFF_X62_Y13_N19
\DS1|C1|out[6]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \DS1|C1|out[6]~38_combout\,
	sclr => \DS1|ACLR~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \DS1|C1|out\(6));

-- Location: LCCOMB_X62_Y13_N20
\DS1|C1|out[7]~40\ : cycloneii_lcell_comb
-- Equation(s):
-- \DS1|C1|out[7]~40_combout\ = (\DS1|C1|out\(7) & (!\DS1|C1|out[6]~39\)) # (!\DS1|C1|out\(7) & ((\DS1|C1|out[6]~39\) # (GND)))
-- \DS1|C1|out[7]~41\ = CARRY((!\DS1|C1|out[6]~39\) # (!\DS1|C1|out\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \DS1|C1|out\(7),
	datad => VCC,
	cin => \DS1|C1|out[6]~39\,
	combout => \DS1|C1|out[7]~40_combout\,
	cout => \DS1|C1|out[7]~41\);

-- Location: LCCOMB_X62_Y13_N22
\DS1|C1|out[8]~42\ : cycloneii_lcell_comb
-- Equation(s):
-- \DS1|C1|out[8]~42_combout\ = (\DS1|C1|out\(8) & (\DS1|C1|out[7]~41\ $ (GND))) # (!\DS1|C1|out\(8) & (!\DS1|C1|out[7]~41\ & VCC))
-- \DS1|C1|out[8]~43\ = CARRY((\DS1|C1|out\(8) & !\DS1|C1|out[7]~41\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \DS1|C1|out\(8),
	datad => VCC,
	cin => \DS1|C1|out[7]~41\,
	combout => \DS1|C1|out[8]~42_combout\,
	cout => \DS1|C1|out[8]~43\);

-- Location: LCFF_X62_Y13_N23
\DS1|C1|out[8]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \DS1|C1|out[8]~42_combout\,
	sclr => \DS1|ACLR~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \DS1|C1|out\(8));

-- Location: LCCOMB_X62_Y13_N26
\DS1|C1|out[10]~46\ : cycloneii_lcell_comb
-- Equation(s):
-- \DS1|C1|out[10]~46_combout\ = (\DS1|C1|out\(10) & (\DS1|C1|out[9]~45\ $ (GND))) # (!\DS1|C1|out\(10) & (!\DS1|C1|out[9]~45\ & VCC))
-- \DS1|C1|out[10]~47\ = CARRY((\DS1|C1|out\(10) & !\DS1|C1|out[9]~45\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \DS1|C1|out\(10),
	datad => VCC,
	cin => \DS1|C1|out[9]~45\,
	combout => \DS1|C1|out[10]~46_combout\,
	cout => \DS1|C1|out[10]~47\);

-- Location: LCFF_X62_Y13_N27
\DS1|C1|out[10]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \DS1|C1|out[10]~46_combout\,
	sclr => \DS1|ACLR~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \DS1|C1|out\(10));

-- Location: LCCOMB_X62_Y13_N28
\DS1|C1|out[11]~48\ : cycloneii_lcell_comb
-- Equation(s):
-- \DS1|C1|out[11]~48_combout\ = (\DS1|C1|out\(11) & (!\DS1|C1|out[10]~47\)) # (!\DS1|C1|out\(11) & ((\DS1|C1|out[10]~47\) # (GND)))
-- \DS1|C1|out[11]~49\ = CARRY((!\DS1|C1|out[10]~47\) # (!\DS1|C1|out\(11)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \DS1|C1|out\(11),
	datad => VCC,
	cin => \DS1|C1|out[10]~47\,
	combout => \DS1|C1|out[11]~48_combout\,
	cout => \DS1|C1|out[11]~49\);

-- Location: LCFF_X62_Y13_N29
\DS1|C1|out[11]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \DS1|C1|out[11]~48_combout\,
	sclr => \DS1|ACLR~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \DS1|C1|out\(11));

-- Location: LCCOMB_X62_Y13_N30
\DS1|C1|out[12]~50\ : cycloneii_lcell_comb
-- Equation(s):
-- \DS1|C1|out[12]~50_combout\ = (\DS1|C1|out\(12) & (\DS1|C1|out[11]~49\ $ (GND))) # (!\DS1|C1|out\(12) & (!\DS1|C1|out[11]~49\ & VCC))
-- \DS1|C1|out[12]~51\ = CARRY((\DS1|C1|out\(12) & !\DS1|C1|out[11]~49\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \DS1|C1|out\(12),
	datad => VCC,
	cin => \DS1|C1|out[11]~49\,
	combout => \DS1|C1|out[12]~50_combout\,
	cout => \DS1|C1|out[12]~51\);

-- Location: LCFF_X62_Y13_N31
\DS1|C1|out[12]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \DS1|C1|out[12]~50_combout\,
	sclr => \DS1|ACLR~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \DS1|C1|out\(12));

-- Location: LCCOMB_X62_Y12_N0
\DS1|C1|out[13]~52\ : cycloneii_lcell_comb
-- Equation(s):
-- \DS1|C1|out[13]~52_combout\ = (\DS1|C1|out\(13) & (!\DS1|C1|out[12]~51\)) # (!\DS1|C1|out\(13) & ((\DS1|C1|out[12]~51\) # (GND)))
-- \DS1|C1|out[13]~53\ = CARRY((!\DS1|C1|out[12]~51\) # (!\DS1|C1|out\(13)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \DS1|C1|out\(13),
	datad => VCC,
	cin => \DS1|C1|out[12]~51\,
	combout => \DS1|C1|out[13]~52_combout\,
	cout => \DS1|C1|out[13]~53\);

-- Location: LCFF_X62_Y12_N1
\DS1|C1|out[13]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \DS1|C1|out[13]~52_combout\,
	sclr => \DS1|ACLR~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \DS1|C1|out\(13));

-- Location: LCCOMB_X62_Y12_N2
\DS1|C1|out[14]~54\ : cycloneii_lcell_comb
-- Equation(s):
-- \DS1|C1|out[14]~54_combout\ = (\DS1|C1|out\(14) & (\DS1|C1|out[13]~53\ $ (GND))) # (!\DS1|C1|out\(14) & (!\DS1|C1|out[13]~53\ & VCC))
-- \DS1|C1|out[14]~55\ = CARRY((\DS1|C1|out\(14) & !\DS1|C1|out[13]~53\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \DS1|C1|out\(14),
	datad => VCC,
	cin => \DS1|C1|out[13]~53\,
	combout => \DS1|C1|out[14]~54_combout\,
	cout => \DS1|C1|out[14]~55\);

-- Location: LCFF_X62_Y12_N3
\DS1|C1|out[14]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \DS1|C1|out[14]~54_combout\,
	sclr => \DS1|ACLR~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \DS1|C1|out\(14));

-- Location: LCCOMB_X62_Y12_N4
\DS1|C1|out[15]~56\ : cycloneii_lcell_comb
-- Equation(s):
-- \DS1|C1|out[15]~56_combout\ = (\DS1|C1|out\(15) & (!\DS1|C1|out[14]~55\)) # (!\DS1|C1|out\(15) & ((\DS1|C1|out[14]~55\) # (GND)))
-- \DS1|C1|out[15]~57\ = CARRY((!\DS1|C1|out[14]~55\) # (!\DS1|C1|out\(15)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \DS1|C1|out\(15),
	datad => VCC,
	cin => \DS1|C1|out[14]~55\,
	combout => \DS1|C1|out[15]~56_combout\,
	cout => \DS1|C1|out[15]~57\);

-- Location: LCFF_X62_Y12_N5
\DS1|C1|out[15]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \DS1|C1|out[15]~56_combout\,
	sclr => \DS1|ACLR~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \DS1|C1|out\(15));

-- Location: LCCOMB_X62_Y12_N8
\DS1|C1|out[17]~60\ : cycloneii_lcell_comb
-- Equation(s):
-- \DS1|C1|out[17]~60_combout\ = (\DS1|C1|out\(17) & (!\DS1|C1|out[16]~59\)) # (!\DS1|C1|out\(17) & ((\DS1|C1|out[16]~59\) # (GND)))
-- \DS1|C1|out[17]~61\ = CARRY((!\DS1|C1|out[16]~59\) # (!\DS1|C1|out\(17)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \DS1|C1|out\(17),
	datad => VCC,
	cin => \DS1|C1|out[16]~59\,
	combout => \DS1|C1|out[17]~60_combout\,
	cout => \DS1|C1|out[17]~61\);

-- Location: LCFF_X62_Y12_N9
\DS1|C1|out[17]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \DS1|C1|out[17]~60_combout\,
	sclr => \DS1|ACLR~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \DS1|C1|out\(17));

-- Location: LCCOMB_X62_Y12_N14
\DS1|C1|out[20]~66\ : cycloneii_lcell_comb
-- Equation(s):
-- \DS1|C1|out[20]~66_combout\ = (\DS1|C1|out\(20) & (\DS1|C1|out[19]~65\ $ (GND))) # (!\DS1|C1|out\(20) & (!\DS1|C1|out[19]~65\ & VCC))
-- \DS1|C1|out[20]~67\ = CARRY((\DS1|C1|out\(20) & !\DS1|C1|out[19]~65\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \DS1|C1|out\(20),
	datad => VCC,
	cin => \DS1|C1|out[19]~65\,
	combout => \DS1|C1|out[20]~66_combout\,
	cout => \DS1|C1|out[20]~67\);

-- Location: LCFF_X62_Y12_N15
\DS1|C1|out[20]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \DS1|C1|out[20]~66_combout\,
	sclr => \DS1|ACLR~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \DS1|C1|out\(20));

-- Location: LCCOMB_X62_Y12_N18
\DS1|C1|out[22]~70\ : cycloneii_lcell_comb
-- Equation(s):
-- \DS1|C1|out[22]~70_combout\ = (\DS1|C1|out\(22) & (\DS1|C1|out[21]~69\ $ (GND))) # (!\DS1|C1|out\(22) & (!\DS1|C1|out[21]~69\ & VCC))
-- \DS1|C1|out[22]~71\ = CARRY((\DS1|C1|out\(22) & !\DS1|C1|out[21]~69\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \DS1|C1|out\(22),
	datad => VCC,
	cin => \DS1|C1|out[21]~69\,
	combout => \DS1|C1|out[22]~70_combout\,
	cout => \DS1|C1|out[22]~71\);

-- Location: LCFF_X62_Y12_N19
\DS1|C1|out[22]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \DS1|C1|out[22]~70_combout\,
	sclr => \DS1|ACLR~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \DS1|C1|out\(22));

-- Location: LCFF_X62_Y12_N23
\DS1|C1|out[24]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \DS1|C1|out[24]~74_combout\,
	sclr => \DS1|ACLR~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \DS1|C1|out\(24));

-- Location: LCFF_X62_Y13_N21
\DS1|C1|out[7]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \DS1|C1|out[7]~40_combout\,
	sclr => \DS1|ACLR~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \DS1|C1|out\(7));

-- Location: LCCOMB_X64_Y12_N10
\DS1|always1~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \DS1|always1~5_combout\ = (\DS1|C1|out\(15) & (\DS1|C1|out\(7) & (\SW~combout\(1) & \DS1|currState.Stage~regout\))) # (!\DS1|C1|out\(15) & (!\DS1|C1|out\(7) & ((!\DS1|currState.Stage~regout\) # (!\SW~combout\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000100010001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DS1|C1|out\(15),
	datab => \DS1|C1|out\(7),
	datac => \SW~combout\(1),
	datad => \DS1|currState.Stage~regout\,
	combout => \DS1|always1~5_combout\);

-- Location: LCCOMB_X62_Y12_N30
\DS1|always1~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \DS1|always1~6_combout\ = (\DS1|always1~5_combout\ & ((\DS1|C1|out\(23) & (\DS1|C1|out\(17) & \DS1|C1|out\(15))) # (!\DS1|C1|out\(23) & (!\DS1|C1|out\(17) & !\DS1|C1|out\(15)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DS1|C1|out\(23),
	datab => \DS1|C1|out\(17),
	datac => \DS1|C1|out\(15),
	datad => \DS1|always1~5_combout\,
	combout => \DS1|always1~6_combout\);

-- Location: LCCOMB_X63_Y12_N0
\DS1|always1~11\ : cycloneii_lcell_comb
-- Equation(s):
-- \DS1|always1~11_combout\ = (\DS1|always1~10_combout\ & (\DS1|always1~6_combout\ & (\DS1|C1|out\(24) $ (!\DS1|Selector3~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DS1|always1~10_combout\,
	datab => \DS1|C1|out\(24),
	datac => \DS1|Selector3~0_combout\,
	datad => \DS1|always1~6_combout\,
	combout => \DS1|always1~11_combout\);

-- Location: LCCOMB_X63_Y12_N18
\DS1|currState~16\ : cycloneii_lcell_comb
-- Equation(s):
-- \DS1|currState~16_combout\ = (\KEY~combout\(0) & ((!\DS1|always1~4_combout\) # (!\DS1|always1~11_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010101000101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \KEY~combout\(0),
	datab => \DS1|always1~11_combout\,
	datac => \DS1|always1~4_combout\,
	combout => \DS1|currState~16_combout\);

-- Location: LCCOMB_X64_Y12_N26
\DS1|currState~26\ : cycloneii_lcell_comb
-- Equation(s):
-- \DS1|currState~26_combout\ = (\DS1|currState~25_combout\ & ((\DS1|currState~16_combout\) # ((\DS1|currState~19_combout\ & !\DS1|currState.Idle~regout\)))) # (!\DS1|currState~25_combout\ & (((\DS1|currState~19_combout\ & !\DS1|currState.Idle~regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100011111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DS1|currState~25_combout\,
	datab => \DS1|currState~16_combout\,
	datac => \DS1|currState~19_combout\,
	datad => \DS1|currState.Idle~regout\,
	combout => \DS1|currState~26_combout\);

-- Location: LCFF_X64_Y12_N27
\DS1|currState.Stage\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \DS1|currState~26_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \DS1|currState.Stage~regout\);

-- Location: LCCOMB_X64_Y12_N4
\DS1|Delay[25]~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \DS1|Delay[25]~0_combout\ = (\DS1|currState.Stage~regout\ & \SW~combout\(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \DS1|currState.Stage~regout\,
	datac => \SW~combout\(1),
	combout => \DS1|Delay[25]~0_combout\);

-- Location: LCCOMB_X64_Y12_N0
\DS1|currState~15\ : cycloneii_lcell_comb
-- Equation(s):
-- \DS1|currState~15_combout\ = (\KEY~combout\(0) & ((\DS1|currState~14_combout\ & ((\DS1|currState.Am1~regout\))) # (!\DS1|currState~14_combout\ & (\DS1|Delay[25]~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \KEY~combout\(0),
	datab => \DS1|Delay[25]~0_combout\,
	datac => \DS1|currState.Am1~regout\,
	datad => \DS1|currState~14_combout\,
	combout => \DS1|currState~15_combout\);

-- Location: LCFF_X64_Y12_N1
\DS1|currState.Am1\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \DS1|currState~15_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \DS1|currState.Am1~regout\);

-- Location: LCCOMB_X63_Y12_N12
\DS1|currState~24\ : cycloneii_lcell_comb
-- Equation(s):
-- \DS1|currState~24_combout\ = (\DS1|currState~23_combout\ & ((\DS1|always1~12_combout\) # ((\DS1|currState.Green~regout\ & \DS1|currState~16_combout\)))) # (!\DS1|currState~23_combout\ & (((\DS1|currState.Green~regout\ & \DS1|currState~16_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DS1|currState~23_combout\,
	datab => \DS1|always1~12_combout\,
	datac => \DS1|currState.Green~regout\,
	datad => \DS1|currState~16_combout\,
	combout => \DS1|currState~24_combout\);

-- Location: LCFF_X63_Y12_N13
\DS1|currState.Green\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \DS1|currState~24_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \DS1|currState.Green~regout\);

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
	datain => \ALT_INV_SW~combout\(0),
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
	datain => \ALT_INV_SW~combout\(0),
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
	datain => \ALT_INV_SW~combout\(0),
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
	datain => \ALT_INV_SW~combout\(0),
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
	datain => \ALT_INV_SW~combout\(0),
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
	datain => \ALT_INV_SW~combout\(0),
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
	datain => \ALT_INV_SW~combout\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_HEX7(0));

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
	datain => \ALT_INV_SW~combout\(1),
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
	datain => \ALT_INV_SW~combout\(1),
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
	datain => \ALT_INV_SW~combout\(1),
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
	datain => \ALT_INV_SW~combout\(1),
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
	datain => \ALT_INV_SW~combout\(1),
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
	datain => \ALT_INV_SW~combout\(1),
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
	datain => \ALT_INV_SW~combout\(1),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_HEX6(0));

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
	datain => \DS1|ALT_INV_currState.Am1~regout\,
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
	datain => \DS1|ALT_INV_currState.Am1~regout\,
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
	datain => \DS1|ALT_INV_currState.Am1~regout\,
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
	datain => \DS1|ALT_INV_currState.Am1~regout\,
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
	datain => \DS1|ALT_INV_currState.Am1~regout\,
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
	datain => \DS1|ALT_INV_currState.Am1~regout\,
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
	datain => \DS1|ALT_INV_currState.Am1~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_HEX5(0));

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
	datain => \DS1|ALT_INV_currState.Am2~regout\,
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
	datain => \DS1|ALT_INV_currState.Am2~regout\,
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
	datain => \DS1|ALT_INV_currState.Am2~regout\,
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
	datain => \DS1|ALT_INV_currState.Am2~regout\,
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
	datain => \DS1|ALT_INV_currState.Am2~regout\,
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
	datain => \DS1|ALT_INV_currState.Am2~regout\,
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
	datain => \DS1|ALT_INV_currState.Am2~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_HEX4(0));

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
	datain => \DS1|ALT_INV_currState.Am3~regout\,
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
	datain => \DS1|ALT_INV_currState.Am3~regout\,
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
	datain => \DS1|ALT_INV_currState.Am3~regout\,
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
	datain => \DS1|ALT_INV_currState.Am3~regout\,
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
	datain => \DS1|ALT_INV_currState.Am3~regout\,
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
	datain => \DS1|ALT_INV_currState.Am3~regout\,
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
	datain => \DS1|ALT_INV_currState.Am3~regout\,
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
	datain => \DS1|ALT_INV_currState.Green~regout\,
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
	datain => \DS1|ALT_INV_currState.Green~regout\,
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
	datain => \DS1|ALT_INV_currState.Green~regout\,
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
	datain => \DS1|ALT_INV_currState.Green~regout\,
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
	datain => \DS1|ALT_INV_currState.Green~regout\,
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
	datain => \DS1|ALT_INV_currState.Green~regout\,
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
	datain => \DS1|ALT_INV_currState.Green~regout\,
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
	datain => \DS1|ALT_INV_currState.Red~regout\,
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
	datain => \DS1|ALT_INV_currState.Red~regout\,
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
	datain => \DS1|ALT_INV_currState.Red~regout\,
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
	datain => \DS1|ALT_INV_currState.Red~regout\,
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
	datain => \DS1|ALT_INV_currState.Red~regout\,
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
	datain => \DS1|ALT_INV_currState.Red~regout\,
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
	datain => \DS1|ALT_INV_currState.Red~regout\,
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
	datain => \DS1|ALT_INV_currState.Red~regout\,
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
	datain => \DS1|ALT_INV_currState.Red~regout\,
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
	datain => \DS1|ALT_INV_currState.Red~regout\,
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
	datain => \DS1|ALT_INV_currState.Red~regout\,
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
	datain => \DS1|ALT_INV_currState.Red~regout\,
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
	datain => \DS1|ALT_INV_currState.Red~regout\,
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
	datain => \DS1|ALT_INV_currState.Red~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_HEX0(0));
END structure;


