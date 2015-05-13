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

-- DATE "05/09/2014 13:42:09"

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

ENTITY 	EC1 IS
    PORT (
	SW : IN std_logic_vector(1 DOWNTO 0);
	LEDR : OUT std_logic_vector(1 DOWNTO 0);
	HEX0 : OUT std_logic_vector(0 TO 6);
	HEX1 : OUT std_logic_vector(0 TO 6);
	HEX2 : OUT std_logic_vector(0 TO 6);
	HEX3 : OUT std_logic_vector(0 TO 6);
	HEX4 : OUT std_logic_vector(0 TO 6);
	HEX5 : OUT std_logic_vector(0 TO 6);
	HEX6 : OUT std_logic_vector(0 TO 6);
	HEX7 : OUT std_logic_vector(0 TO 6);
	CLOCK_50 : IN std_logic
	);
END EC1;

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
-- SW[0]	=>  Location: PIN_N25,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- SW[1]	=>  Location: PIN_N26,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- CLOCK_50	=>  Location: PIN_N2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default


ARCHITECTURE structure OF EC1 IS
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
SIGNAL ww_LEDR : std_logic_vector(1 DOWNTO 0);
SIGNAL ww_HEX0 : std_logic_vector(0 TO 6);
SIGNAL ww_HEX1 : std_logic_vector(0 TO 6);
SIGNAL ww_HEX2 : std_logic_vector(0 TO 6);
SIGNAL ww_HEX3 : std_logic_vector(0 TO 6);
SIGNAL ww_HEX4 : std_logic_vector(0 TO 6);
SIGNAL ww_HEX5 : std_logic_vector(0 TO 6);
SIGNAL ww_HEX6 : std_logic_vector(0 TO 6);
SIGNAL ww_HEX7 : std_logic_vector(0 TO 6);
SIGNAL ww_CLOCK_50 : std_logic;
SIGNAL \CLOCK_50~clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \U1|auto_generated|counter_comb_bita2~combout\ : std_logic;
SIGNAL \U1|auto_generated|counter_comb_bita3~combout\ : std_logic;
SIGNAL \U1|auto_generated|counter_comb_bita5~combout\ : std_logic;
SIGNAL \U1|auto_generated|counter_comb_bita7~combout\ : std_logic;
SIGNAL \U1|auto_generated|counter_comb_bita16~combout\ : std_logic;
SIGNAL \U1|auto_generated|counter_comb_bita18~combout\ : std_logic;
SIGNAL \U1|auto_generated|counter_comb_bita21~combout\ : std_logic;
SIGNAL \U1|auto_generated|counter_comb_bita23~COUT\ : std_logic;
SIGNAL \U1|auto_generated|counter_comb_bita24~combout\ : std_logic;
SIGNAL \U1|auto_generated|counter_comb_bita24~COUT\ : std_logic;
SIGNAL \U1|auto_generated|counter_comb_bita25~combout\ : std_logic;
SIGNAL \Equal0~3_combout\ : std_logic;
SIGNAL \Equal0~5_combout\ : std_logic;
SIGNAL \Equal0~6_combout\ : std_logic;
SIGNAL \Equal0~7_combout\ : std_logic;
SIGNAL \Equal0~8_combout\ : std_logic;
SIGNAL \Equal0~9_combout\ : std_logic;
SIGNAL \CLOCK_50~combout\ : std_logic;
SIGNAL \CLOCK_50~clkctrl_outclk\ : std_logic;
SIGNAL \A7[0]~0_combout\ : std_logic;
SIGNAL \U1|auto_generated|counter_comb_bita0~COUT\ : std_logic;
SIGNAL \U1|auto_generated|counter_comb_bita1~combout\ : std_logic;
SIGNAL \ACLR~regout\ : std_logic;
SIGNAL \U1|auto_generated|counter_comb_bita1~COUT\ : std_logic;
SIGNAL \U1|auto_generated|counter_comb_bita2~COUT\ : std_logic;
SIGNAL \U1|auto_generated|counter_comb_bita3~COUT\ : std_logic;
SIGNAL \U1|auto_generated|counter_comb_bita4~combout\ : std_logic;
SIGNAL \U1|auto_generated|counter_comb_bita4~COUT\ : std_logic;
SIGNAL \U1|auto_generated|counter_comb_bita5~COUT\ : std_logic;
SIGNAL \U1|auto_generated|counter_comb_bita6~combout\ : std_logic;
SIGNAL \U1|auto_generated|counter_comb_bita6~COUT\ : std_logic;
SIGNAL \U1|auto_generated|counter_comb_bita7~COUT\ : std_logic;
SIGNAL \U1|auto_generated|counter_comb_bita8~combout\ : std_logic;
SIGNAL \U1|auto_generated|counter_comb_bita8~COUT\ : std_logic;
SIGNAL \U1|auto_generated|counter_comb_bita9~COUT\ : std_logic;
SIGNAL \U1|auto_generated|counter_comb_bita10~combout\ : std_logic;
SIGNAL \U1|auto_generated|counter_comb_bita10~COUT\ : std_logic;
SIGNAL \U1|auto_generated|counter_comb_bita11~combout\ : std_logic;
SIGNAL \U1|auto_generated|counter_comb_bita11~COUT\ : std_logic;
SIGNAL \U1|auto_generated|counter_comb_bita12~combout\ : std_logic;
SIGNAL \U1|auto_generated|counter_comb_bita12~COUT\ : std_logic;
SIGNAL \U1|auto_generated|counter_comb_bita13~combout\ : std_logic;
SIGNAL \U1|auto_generated|counter_comb_bita13~COUT\ : std_logic;
SIGNAL \U1|auto_generated|counter_comb_bita14~combout\ : std_logic;
SIGNAL \U1|auto_generated|counter_comb_bita14~COUT\ : std_logic;
SIGNAL \U1|auto_generated|counter_comb_bita15~combout\ : std_logic;
SIGNAL \U1|auto_generated|counter_comb_bita15~COUT\ : std_logic;
SIGNAL \U1|auto_generated|counter_comb_bita16~COUT\ : std_logic;
SIGNAL \U1|auto_generated|counter_comb_bita17~combout\ : std_logic;
SIGNAL \U1|auto_generated|counter_comb_bita17~COUT\ : std_logic;
SIGNAL \U1|auto_generated|counter_comb_bita18~COUT\ : std_logic;
SIGNAL \U1|auto_generated|counter_comb_bita19~COUT\ : std_logic;
SIGNAL \U1|auto_generated|counter_comb_bita20~combout\ : std_logic;
SIGNAL \U1|auto_generated|counter_comb_bita20~COUT\ : std_logic;
SIGNAL \U1|auto_generated|counter_comb_bita21~COUT\ : std_logic;
SIGNAL \U1|auto_generated|counter_comb_bita22~combout\ : std_logic;
SIGNAL \U1|auto_generated|counter_comb_bita22~COUT\ : std_logic;
SIGNAL \U1|auto_generated|counter_comb_bita23~combout\ : std_logic;
SIGNAL \Equal0~10_combout\ : std_logic;
SIGNAL \U1|auto_generated|counter_comb_bita19~combout\ : std_logic;
SIGNAL \Equal0~11_combout\ : std_logic;
SIGNAL \U1|auto_generated|counter_comb_bita0~combout\ : std_logic;
SIGNAL \Equal0~12_combout\ : std_logic;
SIGNAL \Equal0~1_combout\ : std_logic;
SIGNAL \U1|auto_generated|counter_comb_bita9~combout\ : std_logic;
SIGNAL \Equal0~2_combout\ : std_logic;
SIGNAL \Equal0~0_combout\ : std_logic;
SIGNAL \Equal0~4_combout\ : std_logic;
SIGNAL \Equal0~13_combout\ : std_logic;
SIGNAL \Add0~0_combout\ : std_logic;
SIGNAL \Add0~1_combout\ : std_logic;
SIGNAL \A6[1]~0_combout\ : std_logic;
SIGNAL \H0|Decoder2~0_combout\ : std_logic;
SIGNAL \H0|WideOr1~0_combout\ : std_logic;
SIGNAL \H0|WideOr0~0_combout\ : std_logic;
SIGNAL \H0|WideOr1~1_combout\ : std_logic;
SIGNAL \H0|D~0_combout\ : std_logic;
SIGNAL \H3|WideOr0~0_combout\ : std_logic;
SIGNAL \A1[2]~0_combout\ : std_logic;
SIGNAL \H1|Decoder2~0_combout\ : std_logic;
SIGNAL \H1|WideOr1~0_combout\ : std_logic;
SIGNAL \H1|WideOr0~0_combout\ : std_logic;
SIGNAL \H1|WideOr1~1_combout\ : std_logic;
SIGNAL \H1|D~0_combout\ : std_logic;
SIGNAL \Add5~0_combout\ : std_logic;
SIGNAL \H2|Decoder2~0_combout\ : std_logic;
SIGNAL \H2|WideOr1~0_combout\ : std_logic;
SIGNAL \H2|WideOr0~0_combout\ : std_logic;
SIGNAL \H2|WideOr1~1_combout\ : std_logic;
SIGNAL \H2|D~0_combout\ : std_logic;
SIGNAL \H3|Decoder2~0_combout\ : std_logic;
SIGNAL \H3|WideOr1~0_combout\ : std_logic;
SIGNAL \H3|WideOr1~1_combout\ : std_logic;
SIGNAL \H3|D~0_combout\ : std_logic;
SIGNAL \H4|Decoder2~0_combout\ : std_logic;
SIGNAL \H4|WideOr1~0_combout\ : std_logic;
SIGNAL \H4|D~0_combout\ : std_logic;
SIGNAL \H5|Decoder2~0_combout\ : std_logic;
SIGNAL \H5|WideOr1~0_combout\ : std_logic;
SIGNAL \H5|D~0_combout\ : std_logic;
SIGNAL \H6|Decoder2~0_combout\ : std_logic;
SIGNAL \H6|WideOr1~0_combout\ : std_logic;
SIGNAL \H6|D~0_combout\ : std_logic;
SIGNAL \H7|Decoder2~0_combout\ : std_logic;
SIGNAL \H7|WideOr1~0_combout\ : std_logic;
SIGNAL \H7|D~0_combout\ : std_logic;
SIGNAL A7 : std_logic_vector(3 DOWNTO 0);
SIGNAL A6 : std_logic_vector(3 DOWNTO 0);
SIGNAL A2 : std_logic_vector(3 DOWNTO 0);
SIGNAL A1 : std_logic_vector(3 DOWNTO 0);
SIGNAL A0 : std_logic_vector(3 DOWNTO 0);
SIGNAL \U1|auto_generated|safe_q\ : std_logic_vector(25 DOWNTO 0);
SIGNAL \SW~combout\ : std_logic_vector(1 DOWNTO 0);
SIGNAL \H7|ALT_INV_WideOr1~0_combout\ : std_logic;
SIGNAL \H6|ALT_INV_WideOr1~0_combout\ : std_logic;
SIGNAL \H5|ALT_INV_WideOr1~0_combout\ : std_logic;
SIGNAL \H5|ALT_INV_Decoder2~0_combout\ : std_logic;
SIGNAL \H4|ALT_INV_WideOr1~0_combout\ : std_logic;
SIGNAL \H3|ALT_INV_WideOr0~0_combout\ : std_logic;
SIGNAL \H3|ALT_INV_WideOr1~0_combout\ : std_logic;
SIGNAL \H3|ALT_INV_Decoder2~0_combout\ : std_logic;
SIGNAL \H2|ALT_INV_WideOr1~1_combout\ : std_logic;
SIGNAL \H2|ALT_INV_WideOr0~0_combout\ : std_logic;
SIGNAL \H2|ALT_INV_WideOr1~0_combout\ : std_logic;
SIGNAL \H1|ALT_INV_WideOr1~1_combout\ : std_logic;
SIGNAL \H1|ALT_INV_WideOr0~0_combout\ : std_logic;
SIGNAL \H1|ALT_INV_WideOr1~0_combout\ : std_logic;
SIGNAL \H1|ALT_INV_Decoder2~0_combout\ : std_logic;
SIGNAL \H0|ALT_INV_WideOr1~1_combout\ : std_logic;
SIGNAL \H0|ALT_INV_WideOr0~0_combout\ : std_logic;
SIGNAL \H0|ALT_INV_WideOr1~0_combout\ : std_logic;

BEGIN

ww_SW <= SW;
LEDR <= ww_LEDR;
HEX0 <= ww_HEX0;
HEX1 <= ww_HEX1;
HEX2 <= ww_HEX2;
HEX3 <= ww_HEX3;
HEX4 <= ww_HEX4;
HEX5 <= ww_HEX5;
HEX6 <= ww_HEX6;
HEX7 <= ww_HEX7;
ww_CLOCK_50 <= CLOCK_50;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\CLOCK_50~clkctrl_INCLK_bus\ <= (gnd & gnd & gnd & \CLOCK_50~combout\);
\H7|ALT_INV_WideOr1~0_combout\ <= NOT \H7|WideOr1~0_combout\;
\H6|ALT_INV_WideOr1~0_combout\ <= NOT \H6|WideOr1~0_combout\;
\H5|ALT_INV_WideOr1~0_combout\ <= NOT \H5|WideOr1~0_combout\;
\H5|ALT_INV_Decoder2~0_combout\ <= NOT \H5|Decoder2~0_combout\;
\H4|ALT_INV_WideOr1~0_combout\ <= NOT \H4|WideOr1~0_combout\;
\H3|ALT_INV_WideOr0~0_combout\ <= NOT \H3|WideOr0~0_combout\;
\H3|ALT_INV_WideOr1~0_combout\ <= NOT \H3|WideOr1~0_combout\;
\H3|ALT_INV_Decoder2~0_combout\ <= NOT \H3|Decoder2~0_combout\;
\H2|ALT_INV_WideOr1~1_combout\ <= NOT \H2|WideOr1~1_combout\;
\H2|ALT_INV_WideOr0~0_combout\ <= NOT \H2|WideOr0~0_combout\;
\H2|ALT_INV_WideOr1~0_combout\ <= NOT \H2|WideOr1~0_combout\;
\H1|ALT_INV_WideOr1~1_combout\ <= NOT \H1|WideOr1~1_combout\;
\H1|ALT_INV_WideOr0~0_combout\ <= NOT \H1|WideOr0~0_combout\;
\H1|ALT_INV_WideOr1~0_combout\ <= NOT \H1|WideOr1~0_combout\;
\H1|ALT_INV_Decoder2~0_combout\ <= NOT \H1|Decoder2~0_combout\;
\H0|ALT_INV_WideOr1~1_combout\ <= NOT \H0|WideOr1~1_combout\;
\H0|ALT_INV_WideOr0~0_combout\ <= NOT \H0|WideOr0~0_combout\;
\H0|ALT_INV_WideOr1~0_combout\ <= NOT \H0|WideOr1~0_combout\;

-- Location: LCFF_X30_Y12_N17
\U1|auto_generated|counter_reg_bit1a[5]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \U1|auto_generated|counter_comb_bita5~combout\,
	aclr => \ACLR~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \U1|auto_generated|safe_q\(5));

-- Location: LCFF_X30_Y12_N21
\U1|auto_generated|counter_reg_bit1a[7]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \U1|auto_generated|counter_comb_bita7~combout\,
	aclr => \ACLR~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \U1|auto_generated|safe_q\(7));

-- Location: LCFF_X30_Y11_N11
\U1|auto_generated|counter_reg_bit1a[18]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \U1|auto_generated|counter_comb_bita18~combout\,
	aclr => \ACLR~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \U1|auto_generated|safe_q\(18));

-- Location: LCFF_X30_Y11_N17
\U1|auto_generated|counter_reg_bit1a[21]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \U1|auto_generated|counter_comb_bita21~combout\,
	aclr => \ACLR~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \U1|auto_generated|safe_q\(21));

-- Location: LCFF_X30_Y11_N23
\U1|auto_generated|counter_reg_bit1a[24]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \U1|auto_generated|counter_comb_bita24~combout\,
	aclr => \ACLR~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \U1|auto_generated|safe_q\(24));

-- Location: LCFF_X30_Y11_N25
\U1|auto_generated|counter_reg_bit1a[25]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \U1|auto_generated|counter_comb_bita25~combout\,
	aclr => \ACLR~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \U1|auto_generated|safe_q\(25));

-- Location: LCFF_X30_Y11_N7
\U1|auto_generated|counter_reg_bit1a[16]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \U1|auto_generated|counter_comb_bita16~combout\,
	aclr => \ACLR~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \U1|auto_generated|safe_q\(16));

-- Location: LCFF_X30_Y12_N13
\U1|auto_generated|counter_reg_bit1a[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \U1|auto_generated|counter_comb_bita3~combout\,
	aclr => \ACLR~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \U1|auto_generated|safe_q\(3));

-- Location: LCFF_X30_Y12_N11
\U1|auto_generated|counter_reg_bit1a[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \U1|auto_generated|counter_comb_bita2~combout\,
	aclr => \ACLR~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \U1|auto_generated|safe_q\(2));

-- Location: LCCOMB_X30_Y12_N10
\U1|auto_generated|counter_comb_bita2\ : cycloneii_lcell_comb
-- Equation(s):
-- \U1|auto_generated|counter_comb_bita2~combout\ = (\U1|auto_generated|safe_q\(2) & (\U1|auto_generated|counter_comb_bita1~COUT\ $ (GND))) # (!\U1|auto_generated|safe_q\(2) & (!\U1|auto_generated|counter_comb_bita1~COUT\ & VCC))
-- \U1|auto_generated|counter_comb_bita2~COUT\ = CARRY((\U1|auto_generated|safe_q\(2) & !\U1|auto_generated|counter_comb_bita1~COUT\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U1|auto_generated|safe_q\(2),
	datad => VCC,
	cin => \U1|auto_generated|counter_comb_bita1~COUT\,
	combout => \U1|auto_generated|counter_comb_bita2~combout\,
	cout => \U1|auto_generated|counter_comb_bita2~COUT\);

-- Location: LCCOMB_X30_Y12_N12
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

-- Location: LCCOMB_X30_Y12_N16
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

-- Location: LCCOMB_X30_Y12_N20
\U1|auto_generated|counter_comb_bita7\ : cycloneii_lcell_comb
-- Equation(s):
-- \U1|auto_generated|counter_comb_bita7~combout\ = (\U1|auto_generated|safe_q\(7) & (!\U1|auto_generated|counter_comb_bita6~COUT\)) # (!\U1|auto_generated|safe_q\(7) & ((\U1|auto_generated|counter_comb_bita6~COUT\) # (GND)))
-- \U1|auto_generated|counter_comb_bita7~COUT\ = CARRY((!\U1|auto_generated|counter_comb_bita6~COUT\) # (!\U1|auto_generated|safe_q\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U1|auto_generated|safe_q\(7),
	datad => VCC,
	cin => \U1|auto_generated|counter_comb_bita6~COUT\,
	combout => \U1|auto_generated|counter_comb_bita7~combout\,
	cout => \U1|auto_generated|counter_comb_bita7~COUT\);

-- Location: LCCOMB_X30_Y11_N6
\U1|auto_generated|counter_comb_bita16\ : cycloneii_lcell_comb
-- Equation(s):
-- \U1|auto_generated|counter_comb_bita16~combout\ = (\U1|auto_generated|safe_q\(16) & (\U1|auto_generated|counter_comb_bita15~COUT\ $ (GND))) # (!\U1|auto_generated|safe_q\(16) & (!\U1|auto_generated|counter_comb_bita15~COUT\ & VCC))
-- \U1|auto_generated|counter_comb_bita16~COUT\ = CARRY((\U1|auto_generated|safe_q\(16) & !\U1|auto_generated|counter_comb_bita15~COUT\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U1|auto_generated|safe_q\(16),
	datad => VCC,
	cin => \U1|auto_generated|counter_comb_bita15~COUT\,
	combout => \U1|auto_generated|counter_comb_bita16~combout\,
	cout => \U1|auto_generated|counter_comb_bita16~COUT\);

-- Location: LCCOMB_X30_Y11_N10
\U1|auto_generated|counter_comb_bita18\ : cycloneii_lcell_comb
-- Equation(s):
-- \U1|auto_generated|counter_comb_bita18~combout\ = (\U1|auto_generated|safe_q\(18) & (\U1|auto_generated|counter_comb_bita17~COUT\ $ (GND))) # (!\U1|auto_generated|safe_q\(18) & (!\U1|auto_generated|counter_comb_bita17~COUT\ & VCC))
-- \U1|auto_generated|counter_comb_bita18~COUT\ = CARRY((\U1|auto_generated|safe_q\(18) & !\U1|auto_generated|counter_comb_bita17~COUT\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U1|auto_generated|safe_q\(18),
	datad => VCC,
	cin => \U1|auto_generated|counter_comb_bita17~COUT\,
	combout => \U1|auto_generated|counter_comb_bita18~combout\,
	cout => \U1|auto_generated|counter_comb_bita18~COUT\);

-- Location: LCCOMB_X30_Y11_N16
\U1|auto_generated|counter_comb_bita21\ : cycloneii_lcell_comb
-- Equation(s):
-- \U1|auto_generated|counter_comb_bita21~combout\ = (\U1|auto_generated|safe_q\(21) & (!\U1|auto_generated|counter_comb_bita20~COUT\)) # (!\U1|auto_generated|safe_q\(21) & ((\U1|auto_generated|counter_comb_bita20~COUT\) # (GND)))
-- \U1|auto_generated|counter_comb_bita21~COUT\ = CARRY((!\U1|auto_generated|counter_comb_bita20~COUT\) # (!\U1|auto_generated|safe_q\(21)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U1|auto_generated|safe_q\(21),
	datad => VCC,
	cin => \U1|auto_generated|counter_comb_bita20~COUT\,
	combout => \U1|auto_generated|counter_comb_bita21~combout\,
	cout => \U1|auto_generated|counter_comb_bita21~COUT\);

-- Location: LCCOMB_X30_Y11_N20
\U1|auto_generated|counter_comb_bita23\ : cycloneii_lcell_comb
-- Equation(s):
-- \U1|auto_generated|counter_comb_bita23~combout\ = (\U1|auto_generated|safe_q\(23) & (!\U1|auto_generated|counter_comb_bita22~COUT\)) # (!\U1|auto_generated|safe_q\(23) & ((\U1|auto_generated|counter_comb_bita22~COUT\) # (GND)))
-- \U1|auto_generated|counter_comb_bita23~COUT\ = CARRY((!\U1|auto_generated|counter_comb_bita22~COUT\) # (!\U1|auto_generated|safe_q\(23)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U1|auto_generated|safe_q\(23),
	datad => VCC,
	cin => \U1|auto_generated|counter_comb_bita22~COUT\,
	combout => \U1|auto_generated|counter_comb_bita23~combout\,
	cout => \U1|auto_generated|counter_comb_bita23~COUT\);

-- Location: LCCOMB_X30_Y11_N22
\U1|auto_generated|counter_comb_bita24\ : cycloneii_lcell_comb
-- Equation(s):
-- \U1|auto_generated|counter_comb_bita24~combout\ = (\U1|auto_generated|safe_q\(24) & (\U1|auto_generated|counter_comb_bita23~COUT\ $ (GND))) # (!\U1|auto_generated|safe_q\(24) & (!\U1|auto_generated|counter_comb_bita23~COUT\ & VCC))
-- \U1|auto_generated|counter_comb_bita24~COUT\ = CARRY((\U1|auto_generated|safe_q\(24) & !\U1|auto_generated|counter_comb_bita23~COUT\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \U1|auto_generated|safe_q\(24),
	datad => VCC,
	cin => \U1|auto_generated|counter_comb_bita23~COUT\,
	combout => \U1|auto_generated|counter_comb_bita24~combout\,
	cout => \U1|auto_generated|counter_comb_bita24~COUT\);

-- Location: LCCOMB_X30_Y11_N24
\U1|auto_generated|counter_comb_bita25\ : cycloneii_lcell_comb
-- Equation(s):
-- \U1|auto_generated|counter_comb_bita25~combout\ = \U1|auto_generated|safe_q\(25) $ (\U1|auto_generated|counter_comb_bita24~COUT\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U1|auto_generated|safe_q\(25),
	cin => \U1|auto_generated|counter_comb_bita24~COUT\,
	combout => \U1|auto_generated|counter_comb_bita25~combout\);

-- Location: LCCOMB_X31_Y11_N12
\Equal0~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \Equal0~3_combout\ = (\SW~combout\(0) & (\U1|auto_generated|safe_q\(14) & (\U1|auto_generated|safe_q\(13) $ (\SW~combout\(1))))) # (!\SW~combout\(0) & (\U1|auto_generated|safe_q\(13) & (\SW~combout\(1) $ (\U1|auto_generated|safe_q\(14)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100101000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U1|auto_generated|safe_q\(13),
	datab => \SW~combout\(0),
	datac => \SW~combout\(1),
	datad => \U1|auto_generated|safe_q\(14),
	combout => \Equal0~3_combout\);

-- Location: LCCOMB_X30_Y11_N26
\Equal0~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \Equal0~5_combout\ = (\SW~combout\(0) & (\U1|auto_generated|safe_q\(18) & (\U1|auto_generated|safe_q\(17) $ (!\SW~combout\(1))))) # (!\SW~combout\(0) & (\U1|auto_generated|safe_q\(17) & (\U1|auto_generated|safe_q\(18) $ (!\SW~combout\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000000011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U1|auto_generated|safe_q\(18),
	datab => \SW~combout\(0),
	datac => \U1|auto_generated|safe_q\(17),
	datad => \SW~combout\(1),
	combout => \Equal0~5_combout\);

-- Location: LCCOMB_X30_Y11_N28
\Equal0~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \Equal0~6_combout\ = (\SW~combout\(0) & (\U1|auto_generated|safe_q\(22) & (\SW~combout\(1) $ (\U1|auto_generated|safe_q\(21))))) # (!\SW~combout\(0) & (\U1|auto_generated|safe_q\(21) & (\SW~combout\(1) $ (\U1|auto_generated|safe_q\(22)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100100001100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW~combout\(1),
	datab => \U1|auto_generated|safe_q\(22),
	datac => \U1|auto_generated|safe_q\(21),
	datad => \SW~combout\(0),
	combout => \Equal0~6_combout\);

-- Location: LCCOMB_X31_Y11_N8
\Equal0~7\ : cycloneii_lcell_comb
-- Equation(s):
-- \Equal0~7_combout\ = (\SW~combout\(0) & (!\U1|auto_generated|safe_q\(25) & (\U1|auto_generated|safe_q\(24) $ (\SW~combout\(1))))) # (!\SW~combout\(0) & (!\U1|auto_generated|safe_q\(24) & (\U1|auto_generated|safe_q\(25) $ (\SW~combout\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001010000010010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U1|auto_generated|safe_q\(25),
	datab => \U1|auto_generated|safe_q\(24),
	datac => \SW~combout\(1),
	datad => \SW~combout\(0),
	combout => \Equal0~7_combout\);

-- Location: LCCOMB_X31_Y11_N2
\Equal0~8\ : cycloneii_lcell_comb
-- Equation(s):
-- \Equal0~8_combout\ = (\U1|auto_generated|safe_q\(10) & (\SW~combout\(1) & (\U1|auto_generated|safe_q\(15) $ (\SW~combout\(0))))) # (!\U1|auto_generated|safe_q\(10) & (!\SW~combout\(1) & (\U1|auto_generated|safe_q\(15) $ (\SW~combout\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000110000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U1|auto_generated|safe_q\(10),
	datab => \U1|auto_generated|safe_q\(15),
	datac => \SW~combout\(1),
	datad => \SW~combout\(0),
	combout => \Equal0~8_combout\);

-- Location: LCCOMB_X31_Y11_N28
\Equal0~9\ : cycloneii_lcell_comb
-- Equation(s):
-- \Equal0~9_combout\ = (\Equal0~6_combout\ & (\Equal0~5_combout\ & (\Equal0~7_combout\ & \Equal0~8_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal0~6_combout\,
	datab => \Equal0~5_combout\,
	datac => \Equal0~7_combout\,
	datad => \Equal0~8_combout\,
	combout => \Equal0~9_combout\);

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

-- Location: LCCOMB_X29_Y11_N28
\A7[0]~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \A7[0]~0_combout\ = !A7(0)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => A7(0),
	combout => \A7[0]~0_combout\);

-- Location: LCCOMB_X30_Y12_N6
\U1|auto_generated|counter_comb_bita0\ : cycloneii_lcell_comb
-- Equation(s):
-- \U1|auto_generated|counter_comb_bita0~combout\ = \U1|auto_generated|safe_q\(0) $ (VCC)
-- \U1|auto_generated|counter_comb_bita0~COUT\ = CARRY(\U1|auto_generated|safe_q\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U1|auto_generated|safe_q\(0),
	datad => VCC,
	combout => \U1|auto_generated|counter_comb_bita0~combout\,
	cout => \U1|auto_generated|counter_comb_bita0~COUT\);

-- Location: LCCOMB_X30_Y12_N8
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

-- Location: LCFF_X29_Y11_N13
ACLR : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \Equal0~13_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \ACLR~regout\);

-- Location: LCFF_X30_Y12_N9
\U1|auto_generated|counter_reg_bit1a[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \U1|auto_generated|counter_comb_bita1~combout\,
	aclr => \ACLR~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \U1|auto_generated|safe_q\(1));

-- Location: LCCOMB_X30_Y12_N14
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

-- Location: LCFF_X30_Y12_N15
\U1|auto_generated|counter_reg_bit1a[4]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \U1|auto_generated|counter_comb_bita4~combout\,
	aclr => \ACLR~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \U1|auto_generated|safe_q\(4));

-- Location: LCCOMB_X30_Y12_N18
\U1|auto_generated|counter_comb_bita6\ : cycloneii_lcell_comb
-- Equation(s):
-- \U1|auto_generated|counter_comb_bita6~combout\ = (\U1|auto_generated|safe_q\(6) & (\U1|auto_generated|counter_comb_bita5~COUT\ $ (GND))) # (!\U1|auto_generated|safe_q\(6) & (!\U1|auto_generated|counter_comb_bita5~COUT\ & VCC))
-- \U1|auto_generated|counter_comb_bita6~COUT\ = CARRY((\U1|auto_generated|safe_q\(6) & !\U1|auto_generated|counter_comb_bita5~COUT\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \U1|auto_generated|safe_q\(6),
	datad => VCC,
	cin => \U1|auto_generated|counter_comb_bita5~COUT\,
	combout => \U1|auto_generated|counter_comb_bita6~combout\,
	cout => \U1|auto_generated|counter_comb_bita6~COUT\);

-- Location: LCFF_X30_Y12_N19
\U1|auto_generated|counter_reg_bit1a[6]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \U1|auto_generated|counter_comb_bita6~combout\,
	aclr => \ACLR~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \U1|auto_generated|safe_q\(6));

-- Location: LCCOMB_X30_Y12_N22
\U1|auto_generated|counter_comb_bita8\ : cycloneii_lcell_comb
-- Equation(s):
-- \U1|auto_generated|counter_comb_bita8~combout\ = (\U1|auto_generated|safe_q\(8) & (\U1|auto_generated|counter_comb_bita7~COUT\ $ (GND))) # (!\U1|auto_generated|safe_q\(8) & (!\U1|auto_generated|counter_comb_bita7~COUT\ & VCC))
-- \U1|auto_generated|counter_comb_bita8~COUT\ = CARRY((\U1|auto_generated|safe_q\(8) & !\U1|auto_generated|counter_comb_bita7~COUT\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \U1|auto_generated|safe_q\(8),
	datad => VCC,
	cin => \U1|auto_generated|counter_comb_bita7~COUT\,
	combout => \U1|auto_generated|counter_comb_bita8~combout\,
	cout => \U1|auto_generated|counter_comb_bita8~COUT\);

-- Location: LCFF_X30_Y12_N23
\U1|auto_generated|counter_reg_bit1a[8]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \U1|auto_generated|counter_comb_bita8~combout\,
	aclr => \ACLR~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \U1|auto_generated|safe_q\(8));

-- Location: LCCOMB_X30_Y12_N24
\U1|auto_generated|counter_comb_bita9\ : cycloneii_lcell_comb
-- Equation(s):
-- \U1|auto_generated|counter_comb_bita9~combout\ = (\U1|auto_generated|safe_q\(9) & (!\U1|auto_generated|counter_comb_bita8~COUT\)) # (!\U1|auto_generated|safe_q\(9) & ((\U1|auto_generated|counter_comb_bita8~COUT\) # (GND)))
-- \U1|auto_generated|counter_comb_bita9~COUT\ = CARRY((!\U1|auto_generated|counter_comb_bita8~COUT\) # (!\U1|auto_generated|safe_q\(9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U1|auto_generated|safe_q\(9),
	datad => VCC,
	cin => \U1|auto_generated|counter_comb_bita8~COUT\,
	combout => \U1|auto_generated|counter_comb_bita9~combout\,
	cout => \U1|auto_generated|counter_comb_bita9~COUT\);

-- Location: LCCOMB_X30_Y12_N26
\U1|auto_generated|counter_comb_bita10\ : cycloneii_lcell_comb
-- Equation(s):
-- \U1|auto_generated|counter_comb_bita10~combout\ = (\U1|auto_generated|safe_q\(10) & (\U1|auto_generated|counter_comb_bita9~COUT\ $ (GND))) # (!\U1|auto_generated|safe_q\(10) & (!\U1|auto_generated|counter_comb_bita9~COUT\ & VCC))
-- \U1|auto_generated|counter_comb_bita10~COUT\ = CARRY((\U1|auto_generated|safe_q\(10) & !\U1|auto_generated|counter_comb_bita9~COUT\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \U1|auto_generated|safe_q\(10),
	datad => VCC,
	cin => \U1|auto_generated|counter_comb_bita9~COUT\,
	combout => \U1|auto_generated|counter_comb_bita10~combout\,
	cout => \U1|auto_generated|counter_comb_bita10~COUT\);

-- Location: LCFF_X30_Y12_N27
\U1|auto_generated|counter_reg_bit1a[10]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \U1|auto_generated|counter_comb_bita10~combout\,
	aclr => \ACLR~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \U1|auto_generated|safe_q\(10));

-- Location: LCCOMB_X30_Y12_N28
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

-- Location: LCFF_X30_Y12_N29
\U1|auto_generated|counter_reg_bit1a[11]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \U1|auto_generated|counter_comb_bita11~combout\,
	aclr => \ACLR~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \U1|auto_generated|safe_q\(11));

-- Location: LCCOMB_X30_Y12_N30
\U1|auto_generated|counter_comb_bita12\ : cycloneii_lcell_comb
-- Equation(s):
-- \U1|auto_generated|counter_comb_bita12~combout\ = (\U1|auto_generated|safe_q\(12) & (\U1|auto_generated|counter_comb_bita11~COUT\ $ (GND))) # (!\U1|auto_generated|safe_q\(12) & (!\U1|auto_generated|counter_comb_bita11~COUT\ & VCC))
-- \U1|auto_generated|counter_comb_bita12~COUT\ = CARRY((\U1|auto_generated|safe_q\(12) & !\U1|auto_generated|counter_comb_bita11~COUT\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \U1|auto_generated|safe_q\(12),
	datad => VCC,
	cin => \U1|auto_generated|counter_comb_bita11~COUT\,
	combout => \U1|auto_generated|counter_comb_bita12~combout\,
	cout => \U1|auto_generated|counter_comb_bita12~COUT\);

-- Location: LCFF_X30_Y12_N31
\U1|auto_generated|counter_reg_bit1a[12]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \U1|auto_generated|counter_comb_bita12~combout\,
	aclr => \ACLR~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \U1|auto_generated|safe_q\(12));

-- Location: LCCOMB_X30_Y11_N0
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

-- Location: LCFF_X30_Y11_N1
\U1|auto_generated|counter_reg_bit1a[13]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \U1|auto_generated|counter_comb_bita13~combout\,
	aclr => \ACLR~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \U1|auto_generated|safe_q\(13));

-- Location: LCCOMB_X30_Y11_N2
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

-- Location: LCFF_X30_Y11_N3
\U1|auto_generated|counter_reg_bit1a[14]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \U1|auto_generated|counter_comb_bita14~combout\,
	aclr => \ACLR~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \U1|auto_generated|safe_q\(14));

-- Location: LCCOMB_X30_Y11_N4
\U1|auto_generated|counter_comb_bita15\ : cycloneii_lcell_comb
-- Equation(s):
-- \U1|auto_generated|counter_comb_bita15~combout\ = (\U1|auto_generated|safe_q\(15) & (!\U1|auto_generated|counter_comb_bita14~COUT\)) # (!\U1|auto_generated|safe_q\(15) & ((\U1|auto_generated|counter_comb_bita14~COUT\) # (GND)))
-- \U1|auto_generated|counter_comb_bita15~COUT\ = CARRY((!\U1|auto_generated|counter_comb_bita14~COUT\) # (!\U1|auto_generated|safe_q\(15)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \U1|auto_generated|safe_q\(15),
	datad => VCC,
	cin => \U1|auto_generated|counter_comb_bita14~COUT\,
	combout => \U1|auto_generated|counter_comb_bita15~combout\,
	cout => \U1|auto_generated|counter_comb_bita15~COUT\);

-- Location: LCFF_X30_Y11_N5
\U1|auto_generated|counter_reg_bit1a[15]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \U1|auto_generated|counter_comb_bita15~combout\,
	aclr => \ACLR~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \U1|auto_generated|safe_q\(15));

-- Location: LCCOMB_X30_Y11_N8
\U1|auto_generated|counter_comb_bita17\ : cycloneii_lcell_comb
-- Equation(s):
-- \U1|auto_generated|counter_comb_bita17~combout\ = (\U1|auto_generated|safe_q\(17) & (!\U1|auto_generated|counter_comb_bita16~COUT\)) # (!\U1|auto_generated|safe_q\(17) & ((\U1|auto_generated|counter_comb_bita16~COUT\) # (GND)))
-- \U1|auto_generated|counter_comb_bita17~COUT\ = CARRY((!\U1|auto_generated|counter_comb_bita16~COUT\) # (!\U1|auto_generated|safe_q\(17)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \U1|auto_generated|safe_q\(17),
	datad => VCC,
	cin => \U1|auto_generated|counter_comb_bita16~COUT\,
	combout => \U1|auto_generated|counter_comb_bita17~combout\,
	cout => \U1|auto_generated|counter_comb_bita17~COUT\);

-- Location: LCFF_X30_Y11_N9
\U1|auto_generated|counter_reg_bit1a[17]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \U1|auto_generated|counter_comb_bita17~combout\,
	aclr => \ACLR~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \U1|auto_generated|safe_q\(17));

-- Location: LCCOMB_X30_Y11_N12
\U1|auto_generated|counter_comb_bita19\ : cycloneii_lcell_comb
-- Equation(s):
-- \U1|auto_generated|counter_comb_bita19~combout\ = (\U1|auto_generated|safe_q\(19) & (!\U1|auto_generated|counter_comb_bita18~COUT\)) # (!\U1|auto_generated|safe_q\(19) & ((\U1|auto_generated|counter_comb_bita18~COUT\) # (GND)))
-- \U1|auto_generated|counter_comb_bita19~COUT\ = CARRY((!\U1|auto_generated|counter_comb_bita18~COUT\) # (!\U1|auto_generated|safe_q\(19)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U1|auto_generated|safe_q\(19),
	datad => VCC,
	cin => \U1|auto_generated|counter_comb_bita18~COUT\,
	combout => \U1|auto_generated|counter_comb_bita19~combout\,
	cout => \U1|auto_generated|counter_comb_bita19~COUT\);

-- Location: LCCOMB_X30_Y11_N14
\U1|auto_generated|counter_comb_bita20\ : cycloneii_lcell_comb
-- Equation(s):
-- \U1|auto_generated|counter_comb_bita20~combout\ = (\U1|auto_generated|safe_q\(20) & (\U1|auto_generated|counter_comb_bita19~COUT\ $ (GND))) # (!\U1|auto_generated|safe_q\(20) & (!\U1|auto_generated|counter_comb_bita19~COUT\ & VCC))
-- \U1|auto_generated|counter_comb_bita20~COUT\ = CARRY((\U1|auto_generated|safe_q\(20) & !\U1|auto_generated|counter_comb_bita19~COUT\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \U1|auto_generated|safe_q\(20),
	datad => VCC,
	cin => \U1|auto_generated|counter_comb_bita19~COUT\,
	combout => \U1|auto_generated|counter_comb_bita20~combout\,
	cout => \U1|auto_generated|counter_comb_bita20~COUT\);

-- Location: LCFF_X30_Y11_N15
\U1|auto_generated|counter_reg_bit1a[20]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \U1|auto_generated|counter_comb_bita20~combout\,
	aclr => \ACLR~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \U1|auto_generated|safe_q\(20));

-- Location: LCCOMB_X30_Y11_N18
\U1|auto_generated|counter_comb_bita22\ : cycloneii_lcell_comb
-- Equation(s):
-- \U1|auto_generated|counter_comb_bita22~combout\ = (\U1|auto_generated|safe_q\(22) & (\U1|auto_generated|counter_comb_bita21~COUT\ $ (GND))) # (!\U1|auto_generated|safe_q\(22) & (!\U1|auto_generated|counter_comb_bita21~COUT\ & VCC))
-- \U1|auto_generated|counter_comb_bita22~COUT\ = CARRY((\U1|auto_generated|safe_q\(22) & !\U1|auto_generated|counter_comb_bita21~COUT\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \U1|auto_generated|safe_q\(22),
	datad => VCC,
	cin => \U1|auto_generated|counter_comb_bita21~COUT\,
	combout => \U1|auto_generated|counter_comb_bita22~combout\,
	cout => \U1|auto_generated|counter_comb_bita22~COUT\);

-- Location: LCFF_X30_Y11_N19
\U1|auto_generated|counter_reg_bit1a[22]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \U1|auto_generated|counter_comb_bita22~combout\,
	aclr => \ACLR~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \U1|auto_generated|safe_q\(22));

-- Location: LCFF_X30_Y11_N21
\U1|auto_generated|counter_reg_bit1a[23]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \U1|auto_generated|counter_comb_bita23~combout\,
	aclr => \ACLR~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \U1|auto_generated|safe_q\(23));

-- Location: LCCOMB_X30_Y11_N30
\Equal0~10\ : cycloneii_lcell_comb
-- Equation(s):
-- \Equal0~10_combout\ = (\U1|auto_generated|safe_q\(20) & ((\U1|auto_generated|safe_q\(16) & (!\U1|auto_generated|safe_q\(23) & \SW~combout\(0))) # (!\U1|auto_generated|safe_q\(16) & (\U1|auto_generated|safe_q\(23) & !\SW~combout\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U1|auto_generated|safe_q\(16),
	datab => \U1|auto_generated|safe_q\(20),
	datac => \U1|auto_generated|safe_q\(23),
	datad => \SW~combout\(0),
	combout => \Equal0~10_combout\);

-- Location: LCFF_X30_Y11_N13
\U1|auto_generated|counter_reg_bit1a[19]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \U1|auto_generated|counter_comb_bita19~combout\,
	aclr => \ACLR~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \U1|auto_generated|safe_q\(19));

-- Location: LCCOMB_X30_Y12_N2
\Equal0~11\ : cycloneii_lcell_comb
-- Equation(s):
-- \Equal0~11_combout\ = (!\U1|auto_generated|safe_q\(3) & (\U1|auto_generated|safe_q\(12) & (\U1|auto_generated|safe_q\(19) & !\U1|auto_generated|safe_q\(8))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U1|auto_generated|safe_q\(3),
	datab => \U1|auto_generated|safe_q\(12),
	datac => \U1|auto_generated|safe_q\(19),
	datad => \U1|auto_generated|safe_q\(8),
	combout => \Equal0~11_combout\);

-- Location: LCFF_X30_Y12_N7
\U1|auto_generated|counter_reg_bit1a[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \U1|auto_generated|counter_comb_bita0~combout\,
	aclr => \ACLR~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \U1|auto_generated|safe_q\(0));

-- Location: LCCOMB_X30_Y12_N4
\Equal0~12\ : cycloneii_lcell_comb
-- Equation(s):
-- \Equal0~12_combout\ = (!\U1|auto_generated|safe_q\(2) & (\Equal0~11_combout\ & (!\U1|auto_generated|safe_q\(1) & !\U1|auto_generated|safe_q\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U1|auto_generated|safe_q\(2),
	datab => \Equal0~11_combout\,
	datac => \U1|auto_generated|safe_q\(1),
	datad => \U1|auto_generated|safe_q\(0),
	combout => \Equal0~12_combout\);

-- Location: LCCOMB_X31_Y11_N26
\Equal0~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \Equal0~1_combout\ = (\SW~combout\(0) & (!\U1|auto_generated|safe_q\(7) & (\SW~combout\(1) $ (\U1|auto_generated|safe_q\(6))))) # (!\SW~combout\(0) & (!\U1|auto_generated|safe_q\(6) & (\U1|auto_generated|safe_q\(7) $ (\SW~combout\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010001010010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U1|auto_generated|safe_q\(7),
	datab => \SW~combout\(0),
	datac => \SW~combout\(1),
	datad => \U1|auto_generated|safe_q\(6),
	combout => \Equal0~1_combout\);

-- Location: LCFF_X30_Y12_N25
\U1|auto_generated|counter_reg_bit1a[9]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \U1|auto_generated|counter_comb_bita9~combout\,
	aclr => \ACLR~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \U1|auto_generated|safe_q\(9));

-- Location: LCCOMB_X30_Y12_N0
\Equal0~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \Equal0~2_combout\ = (\SW~combout\(1) & (\U1|auto_generated|safe_q\(11) & (\U1|auto_generated|safe_q\(9) $ (!\SW~combout\(0))))) # (!\SW~combout\(1) & (!\U1|auto_generated|safe_q\(9) & (\U1|auto_generated|safe_q\(11) $ (!\SW~combout\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000010000001001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW~combout\(1),
	datab => \U1|auto_generated|safe_q\(11),
	datac => \U1|auto_generated|safe_q\(9),
	datad => \SW~combout\(0),
	combout => \Equal0~2_combout\);

-- Location: LCCOMB_X31_Y11_N0
\Equal0~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Equal0~0_combout\ = (\SW~combout\(0) & (!\U1|auto_generated|safe_q\(5) & (\U1|auto_generated|safe_q\(4) $ (!\SW~combout\(1))))) # (!\SW~combout\(0) & (!\U1|auto_generated|safe_q\(4) & (\U1|auto_generated|safe_q\(5) $ (!\SW~combout\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000100100001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U1|auto_generated|safe_q\(5),
	datab => \U1|auto_generated|safe_q\(4),
	datac => \SW~combout\(1),
	datad => \SW~combout\(0),
	combout => \Equal0~0_combout\);

-- Location: LCCOMB_X31_Y11_N6
\Equal0~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \Equal0~4_combout\ = (\Equal0~3_combout\ & (\Equal0~1_combout\ & (\Equal0~2_combout\ & \Equal0~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal0~3_combout\,
	datab => \Equal0~1_combout\,
	datac => \Equal0~2_combout\,
	datad => \Equal0~0_combout\,
	combout => \Equal0~4_combout\);

-- Location: LCCOMB_X29_Y11_N12
\Equal0~13\ : cycloneii_lcell_comb
-- Equation(s):
-- \Equal0~13_combout\ = (\Equal0~9_combout\ & (\Equal0~10_combout\ & (\Equal0~12_combout\ & \Equal0~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal0~9_combout\,
	datab => \Equal0~10_combout\,
	datac => \Equal0~12_combout\,
	datad => \Equal0~4_combout\,
	combout => \Equal0~13_combout\);

-- Location: LCFF_X29_Y11_N29
\A7[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \A7[0]~0_combout\,
	ena => \Equal0~13_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => A7(0));

-- Location: LCCOMB_X29_Y11_N30
\Add0~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add0~0_combout\ = A7(1) $ (A7(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => A7(1),
	datad => A7(0),
	combout => \Add0~0_combout\);

-- Location: LCFF_X29_Y11_N31
\A7[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \Add0~0_combout\,
	ena => \Equal0~13_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => A7(1));

-- Location: LCCOMB_X29_Y11_N4
\Add0~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add0~1_combout\ = A7(2) $ (((A7(0) & A7(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => A7(0),
	datac => A7(2),
	datad => A7(1),
	combout => \Add0~1_combout\);

-- Location: LCFF_X29_Y11_N5
\A7[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \Add0~1_combout\,
	ena => \Equal0~13_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => A7(2));

-- Location: LCFF_X29_Y11_N1
\A0[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	sdata => A7(2),
	sload => VCC,
	ena => \Equal0~13_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => A0(2));

-- Location: LCCOMB_X29_Y11_N26
\A6[1]~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \A6[1]~0_combout\ = !A7(1)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => A7(1),
	combout => \A6[1]~0_combout\);

-- Location: LCFF_X29_Y11_N27
\A6[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \A6[1]~0_combout\,
	ena => \Equal0~13_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => A6(1));

-- Location: LCCOMB_X29_Y11_N0
\H0|Decoder2~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \H0|Decoder2~0_combout\ = (A0(2)) # (!A6(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => A0(2),
	datad => A6(1),
	combout => \H0|Decoder2~0_combout\);

-- Location: LCCOMB_X25_Y11_N16
\H0|WideOr1~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \H0|WideOr1~0_combout\ = ((A7(0) & A6(1))) # (!A0(2))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101010111010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => A0(2),
	datab => A7(0),
	datac => A6(1),
	combout => \H0|WideOr1~0_combout\);

-- Location: LCCOMB_X25_Y11_N18
\H0|WideOr0~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \H0|WideOr0~0_combout\ = A0(2) $ (((A7(0) & A6(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110101001101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => A0(2),
	datab => A7(0),
	datac => A6(1),
	combout => \H0|WideOr0~0_combout\);

-- Location: LCCOMB_X25_Y11_N28
\H0|WideOr1~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \H0|WideOr1~1_combout\ = (A7(0) & A6(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => A7(0),
	datac => A6(1),
	combout => \H0|WideOr1~1_combout\);

-- Location: LCCOMB_X25_Y11_N30
\H0|D~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \H0|D~0_combout\ = (A0(2) $ (A7(0))) # (!A6(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110111101101111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => A0(2),
	datab => A7(0),
	datac => A6(1),
	combout => \H0|D~0_combout\);

-- Location: LCCOMB_X29_Y11_N10
\H3|WideOr0~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \H3|WideOr0~0_combout\ = A7(2) $ (((A7(0)) # (A7(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => A7(0),
	datac => A7(2),
	datad => A7(1),
	combout => \H3|WideOr0~0_combout\);

-- Location: LCCOMB_X29_Y11_N24
\A1[2]~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \A1[2]~0_combout\ = !\H3|WideOr0~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \H3|WideOr0~0_combout\,
	combout => \A1[2]~0_combout\);

-- Location: LCFF_X29_Y11_N25
\A1[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \A1[2]~0_combout\,
	ena => \Equal0~13_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => A1(2));

-- Location: LCCOMB_X28_Y11_N0
\H1|Decoder2~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \H1|Decoder2~0_combout\ = (!A1(2) & A7(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => A1(2),
	datad => A7(1),
	combout => \H1|Decoder2~0_combout\);

-- Location: LCCOMB_X28_Y11_N18
\H1|WideOr1~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \H1|WideOr1~0_combout\ = ((!A7(0) & A7(1))) # (!A1(2))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011111100110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => A1(2),
	datac => A7(0),
	datad => A7(1),
	combout => \H1|WideOr1~0_combout\);

-- Location: LCCOMB_X28_Y11_N4
\H1|WideOr0~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \H1|WideOr0~0_combout\ = A1(2) $ (((!A7(0) & A7(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => A1(2),
	datac => A7(0),
	datad => A7(1),
	combout => \H1|WideOr0~0_combout\);

-- Location: LCCOMB_X28_Y11_N6
\H1|WideOr1~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \H1|WideOr1~1_combout\ = (!A7(0) & A7(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => A7(0),
	datad => A7(1),
	combout => \H1|WideOr1~1_combout\);

-- Location: LCCOMB_X28_Y11_N24
\H1|D~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \H1|D~0_combout\ = (A1(2) $ (!A7(0))) # (!A7(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => A1(2),
	datac => A7(0),
	datad => A7(1),
	combout => \H1|D~0_combout\);

-- Location: LCCOMB_X29_Y11_N2
\Add5~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add5~0_combout\ = A7(2) $ (!A7(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => A7(2),
	datad => A7(1),
	combout => \Add5~0_combout\);

-- Location: LCFF_X29_Y11_N3
\A2[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \Add5~0_combout\,
	ena => \Equal0~13_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => A2(2));

-- Location: LCCOMB_X25_Y11_N24
\H2|Decoder2~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \H2|Decoder2~0_combout\ = (A6(1)) # (A2(2))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101011111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => A6(1),
	datac => A2(2),
	combout => \H2|Decoder2~0_combout\);

-- Location: LCCOMB_X25_Y11_N26
\H2|WideOr1~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \H2|WideOr1~0_combout\ = ((!A6(1) & A7(0))) # (!A2(2))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100111101001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => A6(1),
	datab => A7(0),
	datac => A2(2),
	combout => \H2|WideOr1~0_combout\);

-- Location: LCCOMB_X25_Y11_N4
\H2|WideOr0~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \H2|WideOr0~0_combout\ = A2(2) $ (((!A6(1) & A7(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011010010110100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => A6(1),
	datab => A7(0),
	datac => A2(2),
	combout => \H2|WideOr0~0_combout\);

-- Location: LCCOMB_X25_Y11_N22
\H2|WideOr1~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \H2|WideOr1~1_combout\ = (A7(0) & !A6(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => A7(0),
	datac => A6(1),
	combout => \H2|WideOr1~1_combout\);

-- Location: LCCOMB_X25_Y11_N8
\H2|D~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \H2|D~0_combout\ = (A6(1)) # (A7(0) $ (A2(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011111010111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => A6(1),
	datab => A7(0),
	datac => A2(2),
	combout => \H2|D~0_combout\);

-- Location: LCCOMB_X29_Y11_N6
\H3|Decoder2~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \H3|Decoder2~0_combout\ = (A7(2) & !A7(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => A7(2),
	datad => A7(1),
	combout => \H3|Decoder2~0_combout\);

-- Location: LCCOMB_X29_Y11_N16
\H3|WideOr1~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \H3|WideOr1~0_combout\ = (A7(2)) # ((!A7(0) & !A7(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => A7(0),
	datac => A7(2),
	datad => A7(1),
	combout => \H3|WideOr1~0_combout\);

-- Location: LCCOMB_X28_Y11_N2
\H3|WideOr1~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \H3|WideOr1~1_combout\ = (A7(0)) # (A7(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => A7(0),
	datad => A7(1),
	combout => \H3|WideOr1~1_combout\);

-- Location: LCCOMB_X29_Y11_N20
\H3|D~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \H3|D~0_combout\ = (A7(1)) # (A7(0) $ (A7(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => A7(0),
	datac => A7(2),
	datad => A7(1),
	combout => \H3|D~0_combout\);

-- Location: LCCOMB_X25_Y11_N2
\H4|Decoder2~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \H4|Decoder2~0_combout\ = (!A6(1)) # (!A0(2))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101111101011111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => A0(2),
	datac => A6(1),
	combout => \H4|Decoder2~0_combout\);

-- Location: LCCOMB_X25_Y11_N20
\H4|WideOr1~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \H4|WideOr1~0_combout\ = (A0(2)) # ((A7(0) & A6(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => A0(2),
	datab => A7(0),
	datac => A6(1),
	combout => \H4|WideOr1~0_combout\);

-- Location: LCCOMB_X25_Y11_N6
\H4|D~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \H4|D~0_combout\ = (A0(2) $ (!A7(0))) # (!A6(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001111110011111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => A0(2),
	datab => A7(0),
	datac => A6(1),
	combout => \H4|D~0_combout\);

-- Location: LCCOMB_X28_Y11_N12
\H5|Decoder2~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \H5|Decoder2~0_combout\ = (A1(2) & A7(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => A1(2),
	datad => A7(1),
	combout => \H5|Decoder2~0_combout\);

-- Location: LCCOMB_X28_Y11_N22
\H5|WideOr1~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \H5|WideOr1~0_combout\ = (A1(2)) # ((!A7(0) & A7(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => A1(2),
	datac => A7(0),
	datad => A7(1),
	combout => \H5|WideOr1~0_combout\);

-- Location: LCCOMB_X28_Y11_N8
\H5|D~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \H5|D~0_combout\ = (A1(2) $ (A7(0))) # (!A7(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => A1(2),
	datac => A7(0),
	datad => A7(1),
	combout => \H5|D~0_combout\);

-- Location: LCCOMB_X25_Y11_N0
\H6|Decoder2~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \H6|Decoder2~0_combout\ = (A6(1)) # (!A2(2))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110101111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => A6(1),
	datac => A2(2),
	combout => \H6|Decoder2~0_combout\);

-- Location: LCCOMB_X25_Y11_N10
\H6|WideOr1~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \H6|WideOr1~0_combout\ = (A2(2)) # ((!A6(1) & A7(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010011110100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => A6(1),
	datab => A7(0),
	datac => A2(2),
	combout => \H6|WideOr1~0_combout\);

-- Location: LCCOMB_X25_Y11_N12
\H6|D~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \H6|D~0_combout\ = (A6(1)) # (A7(0) $ (!A2(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101111101011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => A6(1),
	datab => A7(0),
	datac => A2(2),
	combout => \H6|D~0_combout\);

-- Location: LCCOMB_X29_Y11_N22
\H7|Decoder2~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \H7|Decoder2~0_combout\ = (A7(2)) # (A7(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => A7(2),
	datad => A7(1),
	combout => \H7|Decoder2~0_combout\);

-- Location: LCCOMB_X29_Y11_N8
\H7|WideOr1~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \H7|WideOr1~0_combout\ = ((!A7(0) & !A7(1))) # (!A7(2))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => A7(0),
	datac => A7(2),
	datad => A7(1),
	combout => \H7|WideOr1~0_combout\);

-- Location: LCCOMB_X29_Y11_N18
\H7|D~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \H7|D~0_combout\ = (A7(1)) # (A7(0) $ (!A7(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => A7(0),
	datac => A7(2),
	datad => A7(1),
	combout => \H7|D~0_combout\);

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
	datain => \H0|Decoder2~0_combout\,
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
	datain => \H0|ALT_INV_WideOr1~0_combout\,
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
	datain => \H0|ALT_INV_WideOr1~0_combout\,
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
	datain => \H0|ALT_INV_WideOr1~1_combout\,
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
	datain => \H0|ALT_INV_WideOr1~1_combout\,
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
	datain => \H0|D~0_combout\,
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
	datain => \H1|ALT_INV_Decoder2~0_combout\,
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
	datain => \H1|ALT_INV_WideOr1~0_combout\,
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
	datain => \H1|ALT_INV_WideOr1~0_combout\,
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
	datain => \H1|WideOr0~0_combout\,
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
	datain => \H1|ALT_INV_WideOr1~1_combout\,
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
	datain => \H1|ALT_INV_WideOr1~1_combout\,
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
	datain => \H1|D~0_combout\,
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
	datain => \H2|Decoder2~0_combout\,
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
	datain => \H2|ALT_INV_WideOr1~0_combout\,
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
	datain => \H2|ALT_INV_WideOr1~0_combout\,
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
	datain => \H2|WideOr0~0_combout\,
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
	datain => \H2|ALT_INV_WideOr1~1_combout\,
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
	datain => \H2|ALT_INV_WideOr1~1_combout\,
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
	datain => \H2|D~0_combout\,
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
	datain => \H3|ALT_INV_Decoder2~0_combout\,
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
	datain => \H3|ALT_INV_WideOr1~0_combout\,
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
	datain => \H3|ALT_INV_WideOr1~0_combout\,
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
	datain => \H3|WideOr0~0_combout\,
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
	datain => \H3|WideOr1~1_combout\,
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
	datain => \H3|WideOr1~1_combout\,
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
	datain => \H3|D~0_combout\,
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
	datain => \H4|Decoder2~0_combout\,
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
	datain => \H4|ALT_INV_WideOr1~0_combout\,
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
	datain => \H4|ALT_INV_WideOr1~0_combout\,
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
	datain => \H0|ALT_INV_WideOr0~0_combout\,
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
	datain => \H0|ALT_INV_WideOr1~1_combout\,
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
	datain => \H0|ALT_INV_WideOr1~1_combout\,
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
	datain => \H4|D~0_combout\,
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
	datain => \H5|ALT_INV_Decoder2~0_combout\,
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
	datain => \H5|ALT_INV_WideOr1~0_combout\,
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
	datain => \H5|ALT_INV_WideOr1~0_combout\,
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
	datain => \H1|ALT_INV_WideOr0~0_combout\,
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
	datain => \H1|ALT_INV_WideOr1~1_combout\,
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
	datain => \H1|ALT_INV_WideOr1~1_combout\,
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
	datain => \H5|D~0_combout\,
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
	datain => \H6|Decoder2~0_combout\,
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
	datain => \H6|ALT_INV_WideOr1~0_combout\,
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
	datain => \H6|ALT_INV_WideOr1~0_combout\,
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
	datain => \H2|ALT_INV_WideOr0~0_combout\,
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
	datain => \H2|ALT_INV_WideOr1~1_combout\,
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
	datain => \H2|ALT_INV_WideOr1~1_combout\,
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
	datain => \H6|D~0_combout\,
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
	datain => \H7|Decoder2~0_combout\,
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
	datain => \H7|ALT_INV_WideOr1~0_combout\,
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
	datain => \H7|ALT_INV_WideOr1~0_combout\,
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
	datain => \H3|ALT_INV_WideOr0~0_combout\,
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
	datain => \H3|WideOr1~1_combout\,
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
	datain => \H3|WideOr1~1_combout\,
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
	datain => \H7|D~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_HEX7(0));
END structure;


