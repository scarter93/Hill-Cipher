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
-- PROGRAM "Quartus II 64-Bit"
-- VERSION "Version 13.0.1 Build 232 06/12/2013 Service Pack 1 SJ Full Version"

-- DATE "01/12/2016 11:00:26"

-- 
-- Device: Altera EP2C5F256C6 Package FBGA256
-- 

-- 
-- This VHDL file should be used for ModelSim-Altera (VHDL) only
-- 

LIBRARY CYCLONEII;
LIBRARY IEEE;
USE CYCLONEII.CYCLONEII_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	matrix_mult IS
    PORT (
	p1 : IN std_logic_vector(3 DOWNTO 0);
	p2 : IN std_logic_vector(3 DOWNTO 0);
	p3 : IN std_logic_vector(3 DOWNTO 0);
	k11 : IN std_logic_vector(3 DOWNTO 0);
	k12 : IN std_logic_vector(3 DOWNTO 0);
	k13 : IN std_logic_vector(3 DOWNTO 0);
	k21 : IN std_logic_vector(3 DOWNTO 0);
	k22 : IN std_logic_vector(3 DOWNTO 0);
	k23 : IN std_logic_vector(3 DOWNTO 0);
	k31 : IN std_logic_vector(3 DOWNTO 0);
	k32 : IN std_logic_vector(3 DOWNTO 0);
	k33 : IN std_logic_vector(3 DOWNTO 0);
	clk : IN std_logic;
	c1 : OUT std_logic_vector(3 DOWNTO 0);
	c2 : OUT std_logic_vector(3 DOWNTO 0);
	c3 : OUT std_logic_vector(3 DOWNTO 0)
	);
END matrix_mult;

-- Design Ports Information
-- c1[0]	=>  Location: PIN_D6,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- c1[1]	=>  Location: PIN_C5,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- c1[2]	=>  Location: PIN_A3,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- c1[3]	=>  Location: PIN_B3,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- c2[0]	=>  Location: PIN_E6,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- c2[1]	=>  Location: PIN_B5,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- c2[2]	=>  Location: PIN_L8,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- c2[3]	=>  Location: PIN_C6,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- c3[0]	=>  Location: PIN_G11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- c3[1]	=>  Location: PIN_C11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- c3[2]	=>  Location: PIN_A11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- c3[3]	=>  Location: PIN_B7,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- clk	=>  Location: PIN_H2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- k31[1]	=>  Location: PIN_E2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- k11[1]	=>  Location: PIN_C2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- k21[1]	=>  Location: PIN_A4,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- k31[3]	=>  Location: PIN_H1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- k31[2]	=>  Location: PIN_J2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- k11[3]	=>  Location: PIN_J1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- k11[2]	=>  Location: PIN_D10,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- k21[3]	=>  Location: PIN_K1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- k21[2]	=>  Location: PIN_A5,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- k32[1]	=>  Location: PIN_L2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- k12[1]	=>  Location: PIN_A8,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- k22[1]	=>  Location: PIN_D5,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- k32[3]	=>  Location: PIN_M1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- k32[2]	=>  Location: PIN_L1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- k12[3]	=>  Location: PIN_D11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- k12[2]	=>  Location: PIN_A9,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- k22[3]	=>  Location: PIN_K4,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- k22[2]	=>  Location: PIN_F6,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- k33[1]	=>  Location: PIN_A6,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- k13[1]	=>  Location: PIN_B9,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- k23[1]	=>  Location: PIN_C1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- k33[3]	=>  Location: PIN_A7,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- k33[2]	=>  Location: PIN_G10,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- k13[3]	=>  Location: PIN_A12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- k13[2]	=>  Location: PIN_B10,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- k23[3]	=>  Location: PIN_F3,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- k23[2]	=>  Location: PIN_C4,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- k31[0]	=>  Location: PIN_D4,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- k11[0]	=>  Location: PIN_D8,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- k21[0]	=>  Location: PIN_G7,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- k32[0]	=>  Location: PIN_E4,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- k12[0]	=>  Location: PIN_F9,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- k22[0]	=>  Location: PIN_G6,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- k33[0]	=>  Location: PIN_E5,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- k13[0]	=>  Location: PIN_B12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- k23[0]	=>  Location: PIN_B6,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- p3[0]	=>  Location: PIN_E3,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- p1[0]	=>  Location: PIN_F7,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- p2[0]	=>  Location: PIN_K5,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- p3[1]	=>  Location: PIN_M2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- p1[1]	=>  Location: PIN_F8,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- p2[1]	=>  Location: PIN_E1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- p3[2]	=>  Location: PIN_T6,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- p1[2]	=>  Location: PIN_A10,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- p2[2]	=>  Location: PIN_B4,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- p3[3]	=>  Location: PIN_D3,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- p1[3]	=>  Location: PIN_F10,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- p2[3]	=>  Location: PIN_K2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default


ARCHITECTURE structure OF matrix_mult IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_p1 : std_logic_vector(3 DOWNTO 0);
SIGNAL ww_p2 : std_logic_vector(3 DOWNTO 0);
SIGNAL ww_p3 : std_logic_vector(3 DOWNTO 0);
SIGNAL ww_k11 : std_logic_vector(3 DOWNTO 0);
SIGNAL ww_k12 : std_logic_vector(3 DOWNTO 0);
SIGNAL ww_k13 : std_logic_vector(3 DOWNTO 0);
SIGNAL ww_k21 : std_logic_vector(3 DOWNTO 0);
SIGNAL ww_k22 : std_logic_vector(3 DOWNTO 0);
SIGNAL ww_k23 : std_logic_vector(3 DOWNTO 0);
SIGNAL ww_k31 : std_logic_vector(3 DOWNTO 0);
SIGNAL ww_k32 : std_logic_vector(3 DOWNTO 0);
SIGNAL ww_k33 : std_logic_vector(3 DOWNTO 0);
SIGNAL ww_clk : std_logic;
SIGNAL ww_c1 : std_logic_vector(3 DOWNTO 0);
SIGNAL ww_c2 : std_logic_vector(3 DOWNTO 0);
SIGNAL ww_c3 : std_logic_vector(3 DOWNTO 0);
SIGNAL \clk~clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \Mult1|auto_generated|op_3~0_combout\ : std_logic;
SIGNAL \Add0~0_combout\ : std_logic;
SIGNAL \Mult2|auto_generated|op_3~2_combout\ : std_logic;
SIGNAL \Mult1|auto_generated|op_3~2_combout\ : std_logic;
SIGNAL \Mult2|auto_generated|op_1~1\ : std_logic;
SIGNAL \Mult2|auto_generated|op_3~4_combout\ : std_logic;
SIGNAL \Mult0|auto_generated|op_1~0_combout\ : std_logic;
SIGNAL \Mult1|auto_generated|op_1~0_combout\ : std_logic;
SIGNAL \Mult1|auto_generated|op_3~4_combout\ : std_logic;
SIGNAL \Mult2|auto_generated|op_1~2_combout\ : std_logic;
SIGNAL \Mult4|auto_generated|op_3~0_combout\ : std_logic;
SIGNAL \Add2~0_combout\ : std_logic;
SIGNAL \Mult5|auto_generated|op_3~2_combout\ : std_logic;
SIGNAL \Mult3|auto_generated|op_3~2_combout\ : std_logic;
SIGNAL \Mult5|auto_generated|op_1~1\ : std_logic;
SIGNAL \Mult5|auto_generated|op_3~5\ : std_logic;
SIGNAL \Mult3|auto_generated|op_1~0_combout\ : std_logic;
SIGNAL \Mult3|auto_generated|op_3~4_combout\ : std_logic;
SIGNAL \Add2~4_combout\ : std_logic;
SIGNAL \Mult5|auto_generated|op_1~2_combout\ : std_logic;
SIGNAL \Mult5|auto_generated|op_3~6_combout\ : std_logic;
SIGNAL \Mult8|auto_generated|op_3~0_combout\ : std_logic;
SIGNAL \Mult7|auto_generated|op_3~0_combout\ : std_logic;
SIGNAL \Mult8|auto_generated|op_3~3\ : std_logic;
SIGNAL \Mult7|auto_generated|op_3~2_combout\ : std_logic;
SIGNAL \Add4~2_combout\ : std_logic;
SIGNAL \Mult8|auto_generated|op_1~0_combout\ : std_logic;
SIGNAL \Mult8|auto_generated|op_1~1\ : std_logic;
SIGNAL \Mult8|auto_generated|op_3~4_combout\ : std_logic;
SIGNAL \Mult8|auto_generated|op_3~5\ : std_logic;
SIGNAL \Mult6|auto_generated|op_3~4_combout\ : std_logic;
SIGNAL \Mult7|auto_generated|op_1~0_combout\ : std_logic;
SIGNAL \Mult8|auto_generated|op_1~2_combout\ : std_logic;
SIGNAL \Mult8|auto_generated|op_3~6_combout\ : std_logic;
SIGNAL \Mult2|auto_generated|cs1a[1]~0_combout\ : std_logic;
SIGNAL \Mult5|auto_generated|cs1a[1]~0_combout\ : std_logic;
SIGNAL \Mult8|auto_generated|cs1a[1]~0_combout\ : std_logic;
SIGNAL \Mult7|auto_generated|cs1a[1]~0_combout\ : std_logic;
SIGNAL \Mult0|auto_generated|cs2a[1]~0_combout\ : std_logic;
SIGNAL \Mult5|auto_generated|cs2a[1]~0_combout\ : std_logic;
SIGNAL \Mult3|auto_generated|cs2a[1]~0_combout\ : std_logic;
SIGNAL \Mult4|auto_generated|cs2a[1]~0_combout\ : std_logic;
SIGNAL \Mult8|auto_generated|cs2a[1]~0_combout\ : std_logic;
SIGNAL \Mult6|auto_generated|cs2a[1]~0_combout\ : std_logic;
SIGNAL \Mult7|auto_generated|cs2a[1]~0_combout\ : std_logic;
SIGNAL \clk~combout\ : std_logic;
SIGNAL \clk~clkctrl_outclk\ : std_logic;
SIGNAL \Mult2|auto_generated|op_3~0_combout\ : std_logic;
SIGNAL \c1[0]~4_combout\ : std_logic;
SIGNAL \c1[0]~reg0_regout\ : std_logic;
SIGNAL \Mult0|auto_generated|op_3~1\ : std_logic;
SIGNAL \Mult0|auto_generated|op_3~2_combout\ : std_logic;
SIGNAL \Mult0|auto_generated|op_3~0_combout\ : std_logic;
SIGNAL \Add0~1\ : std_logic;
SIGNAL \Add0~2_combout\ : std_logic;
SIGNAL \c1[0]~5\ : std_logic;
SIGNAL \c1[1]~6_combout\ : std_logic;
SIGNAL \c1[1]~reg0_regout\ : std_logic;
SIGNAL \Mult0|auto_generated|op_3~3\ : std_logic;
SIGNAL \Mult0|auto_generated|op_3~4_combout\ : std_logic;
SIGNAL \Add0~3\ : std_logic;
SIGNAL \Add0~4_combout\ : std_logic;
SIGNAL \c1[1]~7\ : std_logic;
SIGNAL \c1[2]~8_combout\ : std_logic;
SIGNAL \c1[2]~reg0_regout\ : std_logic;
SIGNAL \Mult2|auto_generated|cs2a[1]~0_combout\ : std_logic;
SIGNAL \Mult2|auto_generated|op_1~0_combout\ : std_logic;
SIGNAL \Mult2|auto_generated|op_3~1\ : std_logic;
SIGNAL \Mult2|auto_generated|op_3~3\ : std_logic;
SIGNAL \Mult2|auto_generated|op_3~5\ : std_logic;
SIGNAL \Mult2|auto_generated|op_3~6_combout\ : std_logic;
SIGNAL \Mult1|auto_generated|cs1a[1]~0_combout\ : std_logic;
SIGNAL \Mult1|auto_generated|cs2a[1]~0_combout\ : std_logic;
SIGNAL \Mult1|auto_generated|op_1~1\ : std_logic;
SIGNAL \Mult1|auto_generated|op_1~2_combout\ : std_logic;
SIGNAL \Mult1|auto_generated|op_3~1\ : std_logic;
SIGNAL \Mult1|auto_generated|op_3~3\ : std_logic;
SIGNAL \Mult1|auto_generated|op_3~5\ : std_logic;
SIGNAL \Mult1|auto_generated|op_3~6_combout\ : std_logic;
SIGNAL \Mult0|auto_generated|cs1a[1]~0_combout\ : std_logic;
SIGNAL \Mult0|auto_generated|op_1~1\ : std_logic;
SIGNAL \Mult0|auto_generated|op_1~2_combout\ : std_logic;
SIGNAL \Mult0|auto_generated|op_3~5\ : std_logic;
SIGNAL \Mult0|auto_generated|op_3~6_combout\ : std_logic;
SIGNAL \Add0~5\ : std_logic;
SIGNAL \Add0~6_combout\ : std_logic;
SIGNAL \c1[2]~9\ : std_logic;
SIGNAL \c1[3]~10_combout\ : std_logic;
SIGNAL \c1[3]~reg0_regout\ : std_logic;
SIGNAL \Mult5|auto_generated|op_3~0_combout\ : std_logic;
SIGNAL \c2[0]~4_combout\ : std_logic;
SIGNAL \c2[0]~reg0_regout\ : std_logic;
SIGNAL \Mult4|auto_generated|op_3~1\ : std_logic;
SIGNAL \Mult4|auto_generated|op_3~2_combout\ : std_logic;
SIGNAL \Mult3|auto_generated|op_3~0_combout\ : std_logic;
SIGNAL \Add2~1\ : std_logic;
SIGNAL \Add2~2_combout\ : std_logic;
SIGNAL \c2[0]~5\ : std_logic;
SIGNAL \c2[1]~6_combout\ : std_logic;
SIGNAL \c2[1]~reg0_regout\ : std_logic;
SIGNAL \Mult5|auto_generated|op_1~0_combout\ : std_logic;
SIGNAL \Mult5|auto_generated|op_3~1\ : std_logic;
SIGNAL \Mult5|auto_generated|op_3~3\ : std_logic;
SIGNAL \Mult5|auto_generated|op_3~4_combout\ : std_logic;
SIGNAL \c2[1]~7\ : std_logic;
SIGNAL \c2[2]~8_combout\ : std_logic;
SIGNAL \c2[2]~reg0_regout\ : std_logic;
SIGNAL \Mult3|auto_generated|cs1a[1]~0_combout\ : std_logic;
SIGNAL \Mult3|auto_generated|op_1~1\ : std_logic;
SIGNAL \Mult3|auto_generated|op_1~2_combout\ : std_logic;
SIGNAL \Mult3|auto_generated|op_3~1\ : std_logic;
SIGNAL \Mult3|auto_generated|op_3~3\ : std_logic;
SIGNAL \Mult3|auto_generated|op_3~5\ : std_logic;
SIGNAL \Mult3|auto_generated|op_3~6_combout\ : std_logic;
SIGNAL \Mult4|auto_generated|cs1a[1]~0_combout\ : std_logic;
SIGNAL \Mult4|auto_generated|op_1~1\ : std_logic;
SIGNAL \Mult4|auto_generated|op_1~2_combout\ : std_logic;
SIGNAL \Mult4|auto_generated|op_1~0_combout\ : std_logic;
SIGNAL \Mult4|auto_generated|op_3~3\ : std_logic;
SIGNAL \Mult4|auto_generated|op_3~5\ : std_logic;
SIGNAL \Mult4|auto_generated|op_3~6_combout\ : std_logic;
SIGNAL \Mult4|auto_generated|op_3~4_combout\ : std_logic;
SIGNAL \Add2~3\ : std_logic;
SIGNAL \Add2~5\ : std_logic;
SIGNAL \Add2~6_combout\ : std_logic;
SIGNAL \c2[2]~9\ : std_logic;
SIGNAL \c2[3]~10_combout\ : std_logic;
SIGNAL \c2[3]~reg0_regout\ : std_logic;
SIGNAL \Mult6|auto_generated|op_3~0_combout\ : std_logic;
SIGNAL \Add4~0_combout\ : std_logic;
SIGNAL \c3[0]~4_combout\ : std_logic;
SIGNAL \c3[0]~reg0_regout\ : std_logic;
SIGNAL \Mult8|auto_generated|op_3~1\ : std_logic;
SIGNAL \Mult8|auto_generated|op_3~2_combout\ : std_logic;
SIGNAL \c3[0]~5\ : std_logic;
SIGNAL \c3[1]~6_combout\ : std_logic;
SIGNAL \c3[1]~reg0_regout\ : std_logic;
SIGNAL \Mult7|auto_generated|op_3~1\ : std_logic;
SIGNAL \Mult7|auto_generated|op_3~3\ : std_logic;
SIGNAL \Mult7|auto_generated|op_3~4_combout\ : std_logic;
SIGNAL \Mult6|auto_generated|op_3~1\ : std_logic;
SIGNAL \Mult6|auto_generated|op_3~2_combout\ : std_logic;
SIGNAL \Add4~1\ : std_logic;
SIGNAL \Add4~3\ : std_logic;
SIGNAL \Add4~4_combout\ : std_logic;
SIGNAL \c3[1]~7\ : std_logic;
SIGNAL \c3[2]~8_combout\ : std_logic;
SIGNAL \c3[2]~reg0_regout\ : std_logic;
SIGNAL \Mult6|auto_generated|cs1a[1]~0_combout\ : std_logic;
SIGNAL \Mult6|auto_generated|op_1~1\ : std_logic;
SIGNAL \Mult6|auto_generated|op_1~2_combout\ : std_logic;
SIGNAL \Mult6|auto_generated|op_1~0_combout\ : std_logic;
SIGNAL \Mult6|auto_generated|op_3~3\ : std_logic;
SIGNAL \Mult6|auto_generated|op_3~5\ : std_logic;
SIGNAL \Mult6|auto_generated|op_3~6_combout\ : std_logic;
SIGNAL \Mult7|auto_generated|op_1~1\ : std_logic;
SIGNAL \Mult7|auto_generated|op_1~2_combout\ : std_logic;
SIGNAL \Mult7|auto_generated|op_3~5\ : std_logic;
SIGNAL \Mult7|auto_generated|op_3~6_combout\ : std_logic;
SIGNAL \Add4~5\ : std_logic;
SIGNAL \Add4~6_combout\ : std_logic;
SIGNAL \c3[2]~9\ : std_logic;
SIGNAL \c3[3]~10_combout\ : std_logic;
SIGNAL \c3[3]~reg0_regout\ : std_logic;
SIGNAL p3_reg : std_logic_vector(3 DOWNTO 0);
SIGNAL p2_reg : std_logic_vector(3 DOWNTO 0);
SIGNAL p1_reg : std_logic_vector(3 DOWNTO 0);
SIGNAL \p3~combout\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \p2~combout\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \p1~combout\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \k33~combout\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \k32~combout\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \k31~combout\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \k23~combout\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \k22~combout\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \k21~combout\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \k13~combout\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \k12~combout\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \k11~combout\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \Mult6|auto_generated|le4a\ : std_logic_vector(5 DOWNTO 0);
SIGNAL \Mult1|auto_generated|le4a\ : std_logic_vector(5 DOWNTO 0);
SIGNAL \Mult2|auto_generated|le4a\ : std_logic_vector(5 DOWNTO 0);
SIGNAL \Mult5|auto_generated|le3a\ : std_logic_vector(5 DOWNTO 0);
SIGNAL \Mult6|auto_generated|le3a\ : std_logic_vector(5 DOWNTO 0);
SIGNAL \Mult1|auto_generated|le3a\ : std_logic_vector(5 DOWNTO 0);
SIGNAL \Mult0|auto_generated|le4a\ : std_logic_vector(5 DOWNTO 0);
SIGNAL \Mult5|auto_generated|le4a\ : std_logic_vector(5 DOWNTO 0);
SIGNAL \Mult3|auto_generated|le4a\ : std_logic_vector(5 DOWNTO 0);
SIGNAL \Mult4|auto_generated|le3a\ : std_logic_vector(5 DOWNTO 0);
SIGNAL \Mult2|auto_generated|le3a\ : std_logic_vector(5 DOWNTO 0);
SIGNAL \Mult0|auto_generated|le3a\ : std_logic_vector(5 DOWNTO 0);
SIGNAL \Mult3|auto_generated|le3a\ : std_logic_vector(5 DOWNTO 0);
SIGNAL \Mult8|auto_generated|le3a\ : std_logic_vector(5 DOWNTO 0);
SIGNAL \Mult8|auto_generated|le4a\ : std_logic_vector(5 DOWNTO 0);
SIGNAL \Mult7|auto_generated|le4a\ : std_logic_vector(5 DOWNTO 0);
SIGNAL \Mult4|auto_generated|le4a\ : std_logic_vector(5 DOWNTO 0);
SIGNAL \Mult7|auto_generated|le3a\ : std_logic_vector(5 DOWNTO 0);

BEGIN

ww_p1 <= p1;
ww_p2 <= p2;
ww_p3 <= p3;
ww_k11 <= k11;
ww_k12 <= k12;
ww_k13 <= k13;
ww_k21 <= k21;
ww_k22 <= k22;
ww_k23 <= k23;
ww_k31 <= k31;
ww_k32 <= k32;
ww_k33 <= k33;
ww_clk <= clk;
c1 <= ww_c1;
c2 <= ww_c2;
c3 <= ww_c3;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\clk~clkctrl_INCLK_bus\ <= (gnd & gnd & gnd & \clk~combout\);

-- Location: LCCOMB_X6_Y13_N8
\Mult1|auto_generated|op_3~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mult1|auto_generated|op_3~0_combout\ = (\k21~combout\(1) & (\Mult1|auto_generated|le3a\(0) $ (VCC))) # (!\k21~combout\(1) & (\Mult1|auto_generated|le3a\(0) & VCC))
-- \Mult1|auto_generated|op_3~1\ = CARRY((\k21~combout\(1) & \Mult1|auto_generated|le3a\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \k21~combout\(1),
	datab => \Mult1|auto_generated|le3a\(0),
	datad => VCC,
	combout => \Mult1|auto_generated|op_3~0_combout\,
	cout => \Mult1|auto_generated|op_3~1\);

-- Location: LCCOMB_X6_Y13_N24
\Add0~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add0~0_combout\ = (\Mult1|auto_generated|op_3~0_combout\ & (\Mult0|auto_generated|op_3~0_combout\ $ (VCC))) # (!\Mult1|auto_generated|op_3~0_combout\ & (\Mult0|auto_generated|op_3~0_combout\ & VCC))
-- \Add0~1\ = CARRY((\Mult1|auto_generated|op_3~0_combout\ & \Mult0|auto_generated|op_3~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mult1|auto_generated|op_3~0_combout\,
	datab => \Mult0|auto_generated|op_3~0_combout\,
	datad => VCC,
	combout => \Add0~0_combout\,
	cout => \Add0~1\);

-- Location: LCCOMB_X7_Y12_N2
\Mult2|auto_generated|op_3~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mult2|auto_generated|op_3~2_combout\ = (\Mult2|auto_generated|le3a\(1) & (!\Mult2|auto_generated|op_3~1\)) # (!\Mult2|auto_generated|le3a\(1) & ((\Mult2|auto_generated|op_3~1\) # (GND)))
-- \Mult2|auto_generated|op_3~3\ = CARRY((!\Mult2|auto_generated|op_3~1\) # (!\Mult2|auto_generated|le3a\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \Mult2|auto_generated|le3a\(1),
	datad => VCC,
	cin => \Mult2|auto_generated|op_3~1\,
	combout => \Mult2|auto_generated|op_3~2_combout\,
	cout => \Mult2|auto_generated|op_3~3\);

-- Location: LCCOMB_X6_Y13_N10
\Mult1|auto_generated|op_3~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mult1|auto_generated|op_3~2_combout\ = (\Mult1|auto_generated|le3a\(1) & (!\Mult1|auto_generated|op_3~1\)) # (!\Mult1|auto_generated|le3a\(1) & ((\Mult1|auto_generated|op_3~1\) # (GND)))
-- \Mult1|auto_generated|op_3~3\ = CARRY((!\Mult1|auto_generated|op_3~1\) # (!\Mult1|auto_generated|le3a\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \Mult1|auto_generated|le3a\(1),
	datad => VCC,
	cin => \Mult1|auto_generated|op_3~1\,
	combout => \Mult1|auto_generated|op_3~2_combout\,
	cout => \Mult1|auto_generated|op_3~3\);

-- Location: LCCOMB_X7_Y12_N22
\Mult2|auto_generated|op_1~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mult2|auto_generated|op_1~0_combout\ = (\Mult2|auto_generated|cs1a[1]~0_combout\ & (\Mult2|auto_generated|le3a\(2) $ (VCC))) # (!\Mult2|auto_generated|cs1a[1]~0_combout\ & (\Mult2|auto_generated|le3a\(2) & VCC))
-- \Mult2|auto_generated|op_1~1\ = CARRY((\Mult2|auto_generated|cs1a[1]~0_combout\ & \Mult2|auto_generated|le3a\(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mult2|auto_generated|cs1a[1]~0_combout\,
	datab => \Mult2|auto_generated|le3a\(2),
	datad => VCC,
	combout => \Mult2|auto_generated|op_1~0_combout\,
	cout => \Mult2|auto_generated|op_1~1\);

-- Location: LCCOMB_X7_Y12_N4
\Mult2|auto_generated|op_3~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mult2|auto_generated|op_3~4_combout\ = ((\Mult2|auto_generated|le4a\(0) $ (\Mult2|auto_generated|op_1~0_combout\ $ (!\Mult2|auto_generated|op_3~3\)))) # (GND)
-- \Mult2|auto_generated|op_3~5\ = CARRY((\Mult2|auto_generated|le4a\(0) & ((\Mult2|auto_generated|op_1~0_combout\) # (!\Mult2|auto_generated|op_3~3\))) # (!\Mult2|auto_generated|le4a\(0) & (\Mult2|auto_generated|op_1~0_combout\ & 
-- !\Mult2|auto_generated|op_3~3\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Mult2|auto_generated|le4a\(0),
	datab => \Mult2|auto_generated|op_1~0_combout\,
	datad => VCC,
	cin => \Mult2|auto_generated|op_3~3\,
	combout => \Mult2|auto_generated|op_3~4_combout\,
	cout => \Mult2|auto_generated|op_3~5\);

-- Location: LCCOMB_X10_Y13_N16
\Mult0|auto_generated|op_1~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mult0|auto_generated|op_1~0_combout\ = (\Mult0|auto_generated|cs1a[1]~0_combout\ & (\Mult0|auto_generated|le3a\(2) $ (VCC))) # (!\Mult0|auto_generated|cs1a[1]~0_combout\ & (\Mult0|auto_generated|le3a\(2) & VCC))
-- \Mult0|auto_generated|op_1~1\ = CARRY((\Mult0|auto_generated|cs1a[1]~0_combout\ & \Mult0|auto_generated|le3a\(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mult0|auto_generated|cs1a[1]~0_combout\,
	datab => \Mult0|auto_generated|le3a\(2),
	datad => VCC,
	combout => \Mult0|auto_generated|op_1~0_combout\,
	cout => \Mult0|auto_generated|op_1~1\);

-- Location: LCCOMB_X7_Y13_N26
\Mult1|auto_generated|op_1~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mult1|auto_generated|op_1~0_combout\ = (\Mult1|auto_generated|cs1a[1]~0_combout\ & (\Mult1|auto_generated|le3a\(2) $ (VCC))) # (!\Mult1|auto_generated|cs1a[1]~0_combout\ & (\Mult1|auto_generated|le3a\(2) & VCC))
-- \Mult1|auto_generated|op_1~1\ = CARRY((\Mult1|auto_generated|cs1a[1]~0_combout\ & \Mult1|auto_generated|le3a\(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mult1|auto_generated|cs1a[1]~0_combout\,
	datab => \Mult1|auto_generated|le3a\(2),
	datad => VCC,
	combout => \Mult1|auto_generated|op_1~0_combout\,
	cout => \Mult1|auto_generated|op_1~1\);

-- Location: LCCOMB_X6_Y13_N12
\Mult1|auto_generated|op_3~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mult1|auto_generated|op_3~4_combout\ = ((\Mult1|auto_generated|op_1~0_combout\ $ (\Mult1|auto_generated|le4a\(0) $ (!\Mult1|auto_generated|op_3~3\)))) # (GND)
-- \Mult1|auto_generated|op_3~5\ = CARRY((\Mult1|auto_generated|op_1~0_combout\ & ((\Mult1|auto_generated|le4a\(0)) # (!\Mult1|auto_generated|op_3~3\))) # (!\Mult1|auto_generated|op_1~0_combout\ & (\Mult1|auto_generated|le4a\(0) & 
-- !\Mult1|auto_generated|op_3~3\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Mult1|auto_generated|op_1~0_combout\,
	datab => \Mult1|auto_generated|le4a\(0),
	datad => VCC,
	cin => \Mult1|auto_generated|op_3~3\,
	combout => \Mult1|auto_generated|op_3~4_combout\,
	cout => \Mult1|auto_generated|op_3~5\);

-- Location: LCCOMB_X7_Y12_N24
\Mult2|auto_generated|op_1~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mult2|auto_generated|op_1~2_combout\ = \Mult2|auto_generated|op_1~1\ $ (\Mult2|auto_generated|le3a\(3))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \Mult2|auto_generated|le3a\(3),
	cin => \Mult2|auto_generated|op_1~1\,
	combout => \Mult2|auto_generated|op_1~2_combout\);

-- Location: LCCOMB_X9_Y13_N0
\Mult4|auto_generated|op_3~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mult4|auto_generated|op_3~0_combout\ = (\k22~combout\(1) & (\Mult4|auto_generated|le3a\(0) $ (VCC))) # (!\k22~combout\(1) & (\Mult4|auto_generated|le3a\(0) & VCC))
-- \Mult4|auto_generated|op_3~1\ = CARRY((\k22~combout\(1) & \Mult4|auto_generated|le3a\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \k22~combout\(1),
	datab => \Mult4|auto_generated|le3a\(0),
	datad => VCC,
	combout => \Mult4|auto_generated|op_3~0_combout\,
	cout => \Mult4|auto_generated|op_3~1\);

-- Location: LCCOMB_X9_Y13_N16
\Add2~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add2~0_combout\ = (\Mult4|auto_generated|op_3~0_combout\ & (\Mult3|auto_generated|op_3~0_combout\ $ (VCC))) # (!\Mult4|auto_generated|op_3~0_combout\ & (\Mult3|auto_generated|op_3~0_combout\ & VCC))
-- \Add2~1\ = CARRY((\Mult4|auto_generated|op_3~0_combout\ & \Mult3|auto_generated|op_3~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mult4|auto_generated|op_3~0_combout\,
	datab => \Mult3|auto_generated|op_3~0_combout\,
	datad => VCC,
	combout => \Add2~0_combout\,
	cout => \Add2~1\);

-- Location: LCCOMB_X8_Y12_N20
\Mult5|auto_generated|op_3~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mult5|auto_generated|op_3~2_combout\ = (\Mult5|auto_generated|le3a\(1) & (!\Mult5|auto_generated|op_3~1\)) # (!\Mult5|auto_generated|le3a\(1) & ((\Mult5|auto_generated|op_3~1\) # (GND)))
-- \Mult5|auto_generated|op_3~3\ = CARRY((!\Mult5|auto_generated|op_3~1\) # (!\Mult5|auto_generated|le3a\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \Mult5|auto_generated|le3a\(1),
	datad => VCC,
	cin => \Mult5|auto_generated|op_3~1\,
	combout => \Mult5|auto_generated|op_3~2_combout\,
	cout => \Mult5|auto_generated|op_3~3\);

-- Location: LCCOMB_X9_Y13_N10
\Mult3|auto_generated|op_3~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mult3|auto_generated|op_3~2_combout\ = (\Mult3|auto_generated|le3a\(1) & (!\Mult3|auto_generated|op_3~1\)) # (!\Mult3|auto_generated|le3a\(1) & ((\Mult3|auto_generated|op_3~1\) # (GND)))
-- \Mult3|auto_generated|op_3~3\ = CARRY((!\Mult3|auto_generated|op_3~1\) # (!\Mult3|auto_generated|le3a\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \Mult3|auto_generated|le3a\(1),
	datad => VCC,
	cin => \Mult3|auto_generated|op_3~1\,
	combout => \Mult3|auto_generated|op_3~2_combout\,
	cout => \Mult3|auto_generated|op_3~3\);

-- Location: LCCOMB_X8_Y12_N26
\Mult5|auto_generated|op_1~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mult5|auto_generated|op_1~0_combout\ = (\Mult5|auto_generated|cs1a[1]~0_combout\ & (\Mult5|auto_generated|le3a\(2) $ (VCC))) # (!\Mult5|auto_generated|cs1a[1]~0_combout\ & (\Mult5|auto_generated|le3a\(2) & VCC))
-- \Mult5|auto_generated|op_1~1\ = CARRY((\Mult5|auto_generated|cs1a[1]~0_combout\ & \Mult5|auto_generated|le3a\(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mult5|auto_generated|cs1a[1]~0_combout\,
	datab => \Mult5|auto_generated|le3a\(2),
	datad => VCC,
	combout => \Mult5|auto_generated|op_1~0_combout\,
	cout => \Mult5|auto_generated|op_1~1\);

-- Location: LCCOMB_X8_Y12_N22
\Mult5|auto_generated|op_3~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mult5|auto_generated|op_3~4_combout\ = ((\Mult5|auto_generated|le4a\(0) $ (\Mult5|auto_generated|op_1~0_combout\ $ (!\Mult5|auto_generated|op_3~3\)))) # (GND)
-- \Mult5|auto_generated|op_3~5\ = CARRY((\Mult5|auto_generated|le4a\(0) & ((\Mult5|auto_generated|op_1~0_combout\) # (!\Mult5|auto_generated|op_3~3\))) # (!\Mult5|auto_generated|le4a\(0) & (\Mult5|auto_generated|op_1~0_combout\ & 
-- !\Mult5|auto_generated|op_3~3\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Mult5|auto_generated|le4a\(0),
	datab => \Mult5|auto_generated|op_1~0_combout\,
	datad => VCC,
	cin => \Mult5|auto_generated|op_3~3\,
	combout => \Mult5|auto_generated|op_3~4_combout\,
	cout => \Mult5|auto_generated|op_3~5\);

-- Location: LCCOMB_X10_Y13_N4
\Mult3|auto_generated|op_1~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mult3|auto_generated|op_1~0_combout\ = (\Mult3|auto_generated|le3a\(2) & (\Mult3|auto_generated|cs1a[1]~0_combout\ $ (VCC))) # (!\Mult3|auto_generated|le3a\(2) & (\Mult3|auto_generated|cs1a[1]~0_combout\ & VCC))
-- \Mult3|auto_generated|op_1~1\ = CARRY((\Mult3|auto_generated|le3a\(2) & \Mult3|auto_generated|cs1a[1]~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mult3|auto_generated|le3a\(2),
	datab => \Mult3|auto_generated|cs1a[1]~0_combout\,
	datad => VCC,
	combout => \Mult3|auto_generated|op_1~0_combout\,
	cout => \Mult3|auto_generated|op_1~1\);

-- Location: LCCOMB_X9_Y13_N12
\Mult3|auto_generated|op_3~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mult3|auto_generated|op_3~4_combout\ = ((\Mult3|auto_generated|op_1~0_combout\ $ (\Mult3|auto_generated|le4a\(0) $ (!\Mult3|auto_generated|op_3~3\)))) # (GND)
-- \Mult3|auto_generated|op_3~5\ = CARRY((\Mult3|auto_generated|op_1~0_combout\ & ((\Mult3|auto_generated|le4a\(0)) # (!\Mult3|auto_generated|op_3~3\))) # (!\Mult3|auto_generated|op_1~0_combout\ & (\Mult3|auto_generated|le4a\(0) & 
-- !\Mult3|auto_generated|op_3~3\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Mult3|auto_generated|op_1~0_combout\,
	datab => \Mult3|auto_generated|le4a\(0),
	datad => VCC,
	cin => \Mult3|auto_generated|op_3~3\,
	combout => \Mult3|auto_generated|op_3~4_combout\,
	cout => \Mult3|auto_generated|op_3~5\);

-- Location: LCCOMB_X9_Y13_N20
\Add2~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add2~4_combout\ = ((\Mult3|auto_generated|op_3~4_combout\ $ (\Mult4|auto_generated|op_3~4_combout\ $ (!\Add2~3\)))) # (GND)
-- \Add2~5\ = CARRY((\Mult3|auto_generated|op_3~4_combout\ & ((\Mult4|auto_generated|op_3~4_combout\) # (!\Add2~3\))) # (!\Mult3|auto_generated|op_3~4_combout\ & (\Mult4|auto_generated|op_3~4_combout\ & !\Add2~3\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Mult3|auto_generated|op_3~4_combout\,
	datab => \Mult4|auto_generated|op_3~4_combout\,
	datad => VCC,
	cin => \Add2~3\,
	combout => \Add2~4_combout\,
	cout => \Add2~5\);

-- Location: LCCOMB_X8_Y12_N28
\Mult5|auto_generated|op_1~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mult5|auto_generated|op_1~2_combout\ = \Mult5|auto_generated|op_1~1\ $ (\Mult5|auto_generated|le3a\(3))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \Mult5|auto_generated|le3a\(3),
	cin => \Mult5|auto_generated|op_1~1\,
	combout => \Mult5|auto_generated|op_1~2_combout\);

-- Location: LCCOMB_X8_Y12_N24
\Mult5|auto_generated|op_3~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mult5|auto_generated|op_3~6_combout\ = \Mult5|auto_generated|le4a\(1) $ (\Mult5|auto_generated|op_3~5\ $ (\Mult5|auto_generated|op_1~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010101011010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Mult5|auto_generated|le4a\(1),
	datad => \Mult5|auto_generated|op_1~2_combout\,
	cin => \Mult5|auto_generated|op_3~5\,
	combout => \Mult5|auto_generated|op_3~6_combout\);

-- Location: LCCOMB_X12_Y13_N4
\Mult8|auto_generated|op_3~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mult8|auto_generated|op_3~0_combout\ = (\k33~combout\(1) & (\Mult8|auto_generated|le3a\(0) $ (VCC))) # (!\k33~combout\(1) & (\Mult8|auto_generated|le3a\(0) & VCC))
-- \Mult8|auto_generated|op_3~1\ = CARRY((\k33~combout\(1) & \Mult8|auto_generated|le3a\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \k33~combout\(1),
	datab => \Mult8|auto_generated|le3a\(0),
	datad => VCC,
	combout => \Mult8|auto_generated|op_3~0_combout\,
	cout => \Mult8|auto_generated|op_3~1\);

-- Location: LCCOMB_X8_Y13_N24
\Mult7|auto_generated|op_3~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mult7|auto_generated|op_3~0_combout\ = (\Mult7|auto_generated|le3a\(0) & (\k23~combout\(1) $ (VCC))) # (!\Mult7|auto_generated|le3a\(0) & (\k23~combout\(1) & VCC))
-- \Mult7|auto_generated|op_3~1\ = CARRY((\Mult7|auto_generated|le3a\(0) & \k23~combout\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mult7|auto_generated|le3a\(0),
	datab => \k23~combout\(1),
	datad => VCC,
	combout => \Mult7|auto_generated|op_3~0_combout\,
	cout => \Mult7|auto_generated|op_3~1\);

-- Location: LCCOMB_X12_Y13_N6
\Mult8|auto_generated|op_3~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mult8|auto_generated|op_3~2_combout\ = (\Mult8|auto_generated|le3a\(1) & (!\Mult8|auto_generated|op_3~1\)) # (!\Mult8|auto_generated|le3a\(1) & ((\Mult8|auto_generated|op_3~1\) # (GND)))
-- \Mult8|auto_generated|op_3~3\ = CARRY((!\Mult8|auto_generated|op_3~1\) # (!\Mult8|auto_generated|le3a\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \Mult8|auto_generated|le3a\(1),
	datad => VCC,
	cin => \Mult8|auto_generated|op_3~1\,
	combout => \Mult8|auto_generated|op_3~2_combout\,
	cout => \Mult8|auto_generated|op_3~3\);

-- Location: LCCOMB_X8_Y13_N26
\Mult7|auto_generated|op_3~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mult7|auto_generated|op_3~2_combout\ = (\Mult7|auto_generated|le3a\(1) & (!\Mult7|auto_generated|op_3~1\)) # (!\Mult7|auto_generated|le3a\(1) & ((\Mult7|auto_generated|op_3~1\) # (GND)))
-- \Mult7|auto_generated|op_3~3\ = CARRY((!\Mult7|auto_generated|op_3~1\) # (!\Mult7|auto_generated|le3a\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \Mult7|auto_generated|le3a\(1),
	datad => VCC,
	cin => \Mult7|auto_generated|op_3~1\,
	combout => \Mult7|auto_generated|op_3~2_combout\,
	cout => \Mult7|auto_generated|op_3~3\);

-- Location: LCCOMB_X12_Y13_N24
\Add4~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add4~2_combout\ = (\Mult7|auto_generated|op_3~2_combout\ & ((\Mult6|auto_generated|op_3~2_combout\ & (\Add4~1\ & VCC)) # (!\Mult6|auto_generated|op_3~2_combout\ & (!\Add4~1\)))) # (!\Mult7|auto_generated|op_3~2_combout\ & 
-- ((\Mult6|auto_generated|op_3~2_combout\ & (!\Add4~1\)) # (!\Mult6|auto_generated|op_3~2_combout\ & ((\Add4~1\) # (GND)))))
-- \Add4~3\ = CARRY((\Mult7|auto_generated|op_3~2_combout\ & (!\Mult6|auto_generated|op_3~2_combout\ & !\Add4~1\)) # (!\Mult7|auto_generated|op_3~2_combout\ & ((!\Add4~1\) # (!\Mult6|auto_generated|op_3~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Mult7|auto_generated|op_3~2_combout\,
	datab => \Mult6|auto_generated|op_3~2_combout\,
	datad => VCC,
	cin => \Add4~1\,
	combout => \Add4~2_combout\,
	cout => \Add4~3\);

-- Location: LCCOMB_X12_Y13_N0
\Mult8|auto_generated|op_1~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mult8|auto_generated|op_1~0_combout\ = (\Mult8|auto_generated|le3a\(2) & (\Mult8|auto_generated|cs1a[1]~0_combout\ $ (VCC))) # (!\Mult8|auto_generated|le3a\(2) & (\Mult8|auto_generated|cs1a[1]~0_combout\ & VCC))
-- \Mult8|auto_generated|op_1~1\ = CARRY((\Mult8|auto_generated|le3a\(2) & \Mult8|auto_generated|cs1a[1]~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mult8|auto_generated|le3a\(2),
	datab => \Mult8|auto_generated|cs1a[1]~0_combout\,
	datad => VCC,
	combout => \Mult8|auto_generated|op_1~0_combout\,
	cout => \Mult8|auto_generated|op_1~1\);

-- Location: LCCOMB_X12_Y13_N8
\Mult8|auto_generated|op_3~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mult8|auto_generated|op_3~4_combout\ = ((\Mult8|auto_generated|le4a\(0) $ (\Mult8|auto_generated|op_1~0_combout\ $ (!\Mult8|auto_generated|op_3~3\)))) # (GND)
-- \Mult8|auto_generated|op_3~5\ = CARRY((\Mult8|auto_generated|le4a\(0) & ((\Mult8|auto_generated|op_1~0_combout\) # (!\Mult8|auto_generated|op_3~3\))) # (!\Mult8|auto_generated|le4a\(0) & (\Mult8|auto_generated|op_1~0_combout\ & 
-- !\Mult8|auto_generated|op_3~3\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Mult8|auto_generated|le4a\(0),
	datab => \Mult8|auto_generated|op_1~0_combout\,
	datad => VCC,
	cin => \Mult8|auto_generated|op_3~3\,
	combout => \Mult8|auto_generated|op_3~4_combout\,
	cout => \Mult8|auto_generated|op_3~5\);

-- Location: LCCOMB_X13_Y13_N26
\Mult6|auto_generated|op_3~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mult6|auto_generated|op_3~4_combout\ = ((\Mult6|auto_generated|le4a\(0) $ (\Mult6|auto_generated|op_1~0_combout\ $ (!\Mult6|auto_generated|op_3~3\)))) # (GND)
-- \Mult6|auto_generated|op_3~5\ = CARRY((\Mult6|auto_generated|le4a\(0) & ((\Mult6|auto_generated|op_1~0_combout\) # (!\Mult6|auto_generated|op_3~3\))) # (!\Mult6|auto_generated|le4a\(0) & (\Mult6|auto_generated|op_1~0_combout\ & 
-- !\Mult6|auto_generated|op_3~3\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Mult6|auto_generated|le4a\(0),
	datab => \Mult6|auto_generated|op_1~0_combout\,
	datad => VCC,
	cin => \Mult6|auto_generated|op_3~3\,
	combout => \Mult6|auto_generated|op_3~4_combout\,
	cout => \Mult6|auto_generated|op_3~5\);

-- Location: LCCOMB_X8_Y13_N10
\Mult7|auto_generated|op_1~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mult7|auto_generated|op_1~0_combout\ = (\Mult7|auto_generated|cs1a[1]~0_combout\ & (\Mult7|auto_generated|le3a\(2) $ (VCC))) # (!\Mult7|auto_generated|cs1a[1]~0_combout\ & (\Mult7|auto_generated|le3a\(2) & VCC))
-- \Mult7|auto_generated|op_1~1\ = CARRY((\Mult7|auto_generated|cs1a[1]~0_combout\ & \Mult7|auto_generated|le3a\(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mult7|auto_generated|cs1a[1]~0_combout\,
	datab => \Mult7|auto_generated|le3a\(2),
	datad => VCC,
	combout => \Mult7|auto_generated|op_1~0_combout\,
	cout => \Mult7|auto_generated|op_1~1\);

-- Location: LCCOMB_X12_Y13_N2
\Mult8|auto_generated|op_1~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mult8|auto_generated|op_1~2_combout\ = \Mult8|auto_generated|op_1~1\ $ (\Mult8|auto_generated|le3a\(3))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \Mult8|auto_generated|le3a\(3),
	cin => \Mult8|auto_generated|op_1~1\,
	combout => \Mult8|auto_generated|op_1~2_combout\);

-- Location: LCCOMB_X12_Y13_N10
\Mult8|auto_generated|op_3~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mult8|auto_generated|op_3~6_combout\ = \Mult8|auto_generated|le4a\(1) $ (\Mult8|auto_generated|op_3~5\ $ (\Mult8|auto_generated|op_1~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100111100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \Mult8|auto_generated|le4a\(1),
	datad => \Mult8|auto_generated|op_1~2_combout\,
	cin => \Mult8|auto_generated|op_3~5\,
	combout => \Mult8|auto_generated|op_3~6_combout\);

-- Location: LCCOMB_X7_Y12_N12
\Mult2|auto_generated|cs1a[1]~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mult2|auto_generated|cs1a[1]~0_combout\ = \k31~combout\(3) $ (((\k31~combout\(1) & \k31~combout\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \k31~combout\(3),
	datac => \k31~combout\(1),
	datad => \k31~combout\(2),
	combout => \Mult2|auto_generated|cs1a[1]~0_combout\);

-- Location: LCCOMB_X8_Y12_N4
\Mult5|auto_generated|cs1a[1]~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mult5|auto_generated|cs1a[1]~0_combout\ = \k32~combout\(3) $ (((\k32~combout\(2) & \k32~combout\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111011110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \k32~combout\(2),
	datab => \k32~combout\(1),
	datad => \k32~combout\(3),
	combout => \Mult5|auto_generated|cs1a[1]~0_combout\);

-- Location: LCCOMB_X12_Y12_N0
\Mult8|auto_generated|cs1a[1]~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mult8|auto_generated|cs1a[1]~0_combout\ = \k33~combout\(3) $ (((\k33~combout\(1) & \k33~combout\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \k33~combout\(3),
	datac => \k33~combout\(1),
	datad => \k33~combout\(2),
	combout => \Mult8|auto_generated|cs1a[1]~0_combout\);

-- Location: LCCOMB_X5_Y13_N8
\Mult7|auto_generated|cs1a[1]~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mult7|auto_generated|cs1a[1]~0_combout\ = \k23~combout\(3) $ (((\k23~combout\(1) & \k23~combout\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \k23~combout\(1),
	datac => \k23~combout\(3),
	datad => \k23~combout\(2),
	combout => \Mult7|auto_generated|cs1a[1]~0_combout\);

-- Location: LCCOMB_X10_Y13_N24
\Mult0|auto_generated|le3a[0]\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mult0|auto_generated|le3a\(0) = LCELL(\k11~combout\(1) $ (((\k11~combout\(0) & p1_reg(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \k11~combout\(0),
	datab => \k11~combout\(1),
	datad => p1_reg(0),
	combout => \Mult0|auto_generated|le3a\(0));

-- Location: LCCOMB_X7_Y12_N20
\Mult2|auto_generated|le4a[0]\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mult2|auto_generated|le4a\(0) = LCELL(\k31~combout\(3) $ (((\k31~combout\(2) & ((\k31~combout\(1)) # (p3_reg(0)))) # (!\k31~combout\(2) & (\k31~combout\(1) & p3_reg(0))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011011001101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \k31~combout\(2),
	datab => \k31~combout\(3),
	datac => \k31~combout\(1),
	datad => p3_reg(0),
	combout => \Mult2|auto_generated|le4a\(0));

-- Location: LCFF_X8_Y12_N3
\p3_reg[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \p3~combout\(3),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => p3_reg(3));

-- Location: LCCOMB_X7_Y12_N18
\Mult2|auto_generated|le3a[3]\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mult2|auto_generated|le3a\(3) = LCELL((\k31~combout\(0) & (\k31~combout\(1) $ (((p3_reg(3)))))) # (!\k31~combout\(0) & (\k31~combout\(1) & (!p3_reg(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100011010001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \k31~combout\(1),
	datab => \k31~combout\(0),
	datac => p3_reg(2),
	datad => p3_reg(3),
	combout => \Mult2|auto_generated|le3a\(3));

-- Location: LCCOMB_X12_Y13_N20
\Mult0|auto_generated|cs2a[1]~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mult0|auto_generated|cs2a[1]~0_combout\ = \k11~combout\(1) $ (\k11~combout\(2))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \k11~combout\(1),
	datad => \k11~combout\(2),
	combout => \Mult0|auto_generated|cs2a[1]~0_combout\);

-- Location: LCCOMB_X8_Y13_N20
\Mult4|auto_generated|le3a[1]\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mult4|auto_generated|le3a\(1) = LCELL((\k22~combout\(0) & (\k22~combout\(1) $ (((p2_reg(1)))))) # (!\k22~combout\(0) & (\k22~combout\(1) & (!p2_reg(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010011010001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \k22~combout\(0),
	datab => \k22~combout\(1),
	datac => p2_reg(0),
	datad => p2_reg(1),
	combout => \Mult4|auto_generated|le3a\(1));

-- Location: LCCOMB_X8_Y12_N30
\Mult5|auto_generated|le4a[0]\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mult5|auto_generated|le4a\(0) = LCELL(\k32~combout\(3) $ (((\k32~combout\(2) & ((\k32~combout\(1)) # (p3_reg(0)))) # (!\k32~combout\(2) & (\k32~combout\(1) & p3_reg(0))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001011111101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \k32~combout\(2),
	datab => \k32~combout\(1),
	datac => p3_reg(0),
	datad => \k32~combout\(3),
	combout => \Mult5|auto_generated|le4a\(0));

-- Location: LCCOMB_X10_Y13_N20
\Mult3|auto_generated|le3a[2]\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mult3|auto_generated|le3a\(2) = LCELL((\k12~combout\(0) & (\k12~combout\(1) $ (((p1_reg(2)))))) # (!\k12~combout\(0) & (\k12~combout\(1) & (!p1_reg(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100011010001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \k12~combout\(1),
	datab => \k12~combout\(0),
	datac => p1_reg(1),
	datad => p1_reg(2),
	combout => \Mult3|auto_generated|le3a\(2));

-- Location: LCCOMB_X7_Y13_N20
\Mult4|auto_generated|le3a[2]\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mult4|auto_generated|le3a\(2) = LCELL((\k22~combout\(0) & (\k22~combout\(1) $ (((p2_reg(2)))))) # (!\k22~combout\(0) & (\k22~combout\(1) & (!p2_reg(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010011010001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \k22~combout\(0),
	datab => \k22~combout\(1),
	datac => p2_reg(1),
	datad => p2_reg(2),
	combout => \Mult4|auto_generated|le3a\(2));

-- Location: LCCOMB_X8_Y13_N14
\Mult4|auto_generated|le4a[0]\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mult4|auto_generated|le4a\(0) = LCELL(\k22~combout\(3) $ (((\k22~combout\(2) & ((p2_reg(0)) # (\k22~combout\(1)))) # (!\k22~combout\(2) & (p2_reg(0) & \k22~combout\(1))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101011001101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \k22~combout\(3),
	datab => \k22~combout\(2),
	datac => p2_reg(0),
	datad => \k22~combout\(1),
	combout => \Mult4|auto_generated|le4a\(0));

-- Location: LCCOMB_X7_Y12_N16
\Mult5|auto_generated|le3a[3]\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mult5|auto_generated|le3a\(3) = LCELL((\k32~combout\(0) & ((\k32~combout\(1) $ (p3_reg(3))))) # (!\k32~combout\(0) & (!p3_reg(2) & (\k32~combout\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001101010110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \k32~combout\(0),
	datab => p3_reg(2),
	datac => \k32~combout\(1),
	datad => p3_reg(3),
	combout => \Mult5|auto_generated|le3a\(3));

-- Location: LCCOMB_X8_Y12_N12
\Mult5|auto_generated|cs2a[1]~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mult5|auto_generated|cs2a[1]~0_combout\ = \k32~combout\(2) $ (\k32~combout\(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \k32~combout\(2),
	datad => \k32~combout\(1),
	combout => \Mult5|auto_generated|cs2a[1]~0_combout\);

-- Location: LCCOMB_X7_Y12_N10
\Mult5|auto_generated|le4a[1]\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mult5|auto_generated|le4a\(1) = LCELL((\Mult5|auto_generated|cs2a[1]~0_combout\ & ((\Mult5|auto_generated|cs1a[1]~0_combout\ $ (p3_reg(1))))) # (!\Mult5|auto_generated|cs2a[1]~0_combout\ & (!p3_reg(0) & (\Mult5|auto_generated|cs1a[1]~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001101010110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mult5|auto_generated|cs2a[1]~0_combout\,
	datab => p3_reg(0),
	datac => \Mult5|auto_generated|cs1a[1]~0_combout\,
	datad => p3_reg(1),
	combout => \Mult5|auto_generated|le4a\(1));

-- Location: LCCOMB_X13_Y13_N8
\Mult3|auto_generated|cs2a[1]~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mult3|auto_generated|cs2a[1]~0_combout\ = \k12~combout\(2) $ (\k12~combout\(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \k12~combout\(2),
	datac => \k12~combout\(1),
	combout => \Mult3|auto_generated|cs2a[1]~0_combout\);

-- Location: LCCOMB_X13_Y13_N10
\Mult3|auto_generated|le4a[1]\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mult3|auto_generated|le4a\(1) = LCELL((\Mult3|auto_generated|cs2a[1]~0_combout\ & (\Mult3|auto_generated|cs1a[1]~0_combout\ $ ((p1_reg(1))))) # (!\Mult3|auto_generated|cs2a[1]~0_combout\ & (\Mult3|auto_generated|cs1a[1]~0_combout\ & ((!p1_reg(0))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100100001101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mult3|auto_generated|cs1a[1]~0_combout\,
	datab => \Mult3|auto_generated|cs2a[1]~0_combout\,
	datac => p1_reg(1),
	datad => p1_reg(0),
	combout => \Mult3|auto_generated|le4a\(1));

-- Location: LCCOMB_X8_Y13_N8
\Mult4|auto_generated|cs2a[1]~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mult4|auto_generated|cs2a[1]~0_combout\ = \k22~combout\(1) $ (\k22~combout\(2))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \k22~combout\(1),
	datad => \k22~combout\(2),
	combout => \Mult4|auto_generated|cs2a[1]~0_combout\);

-- Location: LCCOMB_X8_Y13_N16
\Mult7|auto_generated|le3a[0]\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mult7|auto_generated|le3a\(0) = LCELL(\k23~combout\(1) $ (((\k23~combout\(0) & p2_reg(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \k23~combout\(0),
	datac => \k23~combout\(1),
	datad => p2_reg(0),
	combout => \Mult7|auto_generated|le3a\(0));

-- Location: LCCOMB_X8_Y12_N0
\Mult8|auto_generated|le3a[2]\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mult8|auto_generated|le3a\(2) = LCELL((\k33~combout\(0) & (\k33~combout\(1) $ (((p3_reg(2)))))) # (!\k33~combout\(0) & (\k33~combout\(1) & (!p3_reg(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010011010001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \k33~combout\(0),
	datab => \k33~combout\(1),
	datac => p3_reg(1),
	datad => p3_reg(2),
	combout => \Mult8|auto_generated|le3a\(2));

-- Location: LCCOMB_X12_Y12_N2
\Mult8|auto_generated|le4a[0]\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mult8|auto_generated|le4a\(0) = LCELL(\k33~combout\(3) $ (((\k33~combout\(2) & ((\k33~combout\(1)) # (p3_reg(0)))) # (!\k33~combout\(2) & (\k33~combout\(1) & p3_reg(0))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011011001101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \k33~combout\(2),
	datab => \k33~combout\(3),
	datac => \k33~combout\(1),
	datad => p3_reg(0),
	combout => \Mult8|auto_generated|le4a\(0));

-- Location: LCCOMB_X13_Y13_N12
\Mult6|auto_generated|le4a[0]\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mult6|auto_generated|le4a\(0) = LCELL(\k13~combout\(3) $ (((\k13~combout\(2) & ((\k13~combout\(1)) # (p1_reg(0)))) # (!\k13~combout\(2) & (\k13~combout\(1) & p1_reg(0))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001111001111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \k13~combout\(2),
	datab => \k13~combout\(1),
	datac => \k13~combout\(3),
	datad => p1_reg(0),
	combout => \Mult6|auto_generated|le4a\(0));

-- Location: LCCOMB_X8_Y12_N6
\Mult8|auto_generated|le3a[3]\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mult8|auto_generated|le3a\(3) = LCELL((\k33~combout\(0) & (\k33~combout\(1) $ ((p3_reg(3))))) # (!\k33~combout\(0) & (\k33~combout\(1) & ((!p3_reg(2))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010100001101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \k33~combout\(0),
	datab => \k33~combout\(1),
	datac => p3_reg(3),
	datad => p3_reg(2),
	combout => \Mult8|auto_generated|le3a\(3));

-- Location: LCCOMB_X12_Y12_N12
\Mult8|auto_generated|cs2a[1]~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mult8|auto_generated|cs2a[1]~0_combout\ = \k33~combout\(1) $ (\k33~combout\(2))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \k33~combout\(1),
	datad => \k33~combout\(2),
	combout => \Mult8|auto_generated|cs2a[1]~0_combout\);

-- Location: LCCOMB_X12_Y12_N10
\Mult8|auto_generated|le4a[1]\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mult8|auto_generated|le4a\(1) = LCELL((\Mult8|auto_generated|cs2a[1]~0_combout\ & ((p3_reg(1) $ (\Mult8|auto_generated|cs1a[1]~0_combout\)))) # (!\Mult8|auto_generated|cs2a[1]~0_combout\ & (!p3_reg(0) & ((\Mult8|auto_generated|cs1a[1]~0_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001101110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mult8|auto_generated|cs2a[1]~0_combout\,
	datab => p3_reg(0),
	datac => p3_reg(1),
	datad => \Mult8|auto_generated|cs1a[1]~0_combout\,
	combout => \Mult8|auto_generated|le4a\(1));

-- Location: LCCOMB_X13_Y13_N16
\Mult6|auto_generated|cs2a[1]~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mult6|auto_generated|cs2a[1]~0_combout\ = \k13~combout\(1) $ (\k13~combout\(2))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \k13~combout\(1),
	datad => \k13~combout\(2),
	combout => \Mult6|auto_generated|cs2a[1]~0_combout\);

-- Location: LCCOMB_X5_Y13_N18
\Mult7|auto_generated|cs2a[1]~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mult7|auto_generated|cs2a[1]~0_combout\ = \k23~combout\(1) $ (\k23~combout\(2))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \k23~combout\(1),
	datad => \k23~combout\(2),
	combout => \Mult7|auto_generated|cs2a[1]~0_combout\);

-- Location: LCCOMB_X8_Y13_N6
\Mult7|auto_generated|le4a[1]\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mult7|auto_generated|le4a\(1) = LCELL((\Mult7|auto_generated|cs2a[1]~0_combout\ & (\Mult7|auto_generated|cs1a[1]~0_combout\ $ (((p2_reg(1)))))) # (!\Mult7|auto_generated|cs2a[1]~0_combout\ & (\Mult7|auto_generated|cs1a[1]~0_combout\ & (!p2_reg(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100011010001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mult7|auto_generated|cs1a[1]~0_combout\,
	datab => \Mult7|auto_generated|cs2a[1]~0_combout\,
	datac => p2_reg(0),
	datad => p2_reg(1),
	combout => \Mult7|auto_generated|le4a\(1));

-- Location: PIN_A4,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\k21[1]~I\ : cycloneii_io
-- pragma translate_off
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
	padio => ww_k21(1),
	combout => \k21~combout\(1));

-- Location: PIN_H1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\k31[3]~I\ : cycloneii_io
-- pragma translate_off
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
	padio => ww_k31(3),
	combout => \k31~combout\(3));

-- Location: PIN_L2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\k32[1]~I\ : cycloneii_io
-- pragma translate_off
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
	padio => ww_k32(1),
	combout => \k32~combout\(1));

-- Location: PIN_M1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\k32[3]~I\ : cycloneii_io
-- pragma translate_off
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
	padio => ww_k32(3),
	combout => \k32~combout\(3));

-- Location: PIN_L1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\k32[2]~I\ : cycloneii_io
-- pragma translate_off
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
	padio => ww_k32(2),
	combout => \k32~combout\(2));

-- Location: PIN_K4,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\k22[3]~I\ : cycloneii_io
-- pragma translate_off
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
	padio => ww_k22(3),
	combout => \k22~combout\(3));

-- Location: PIN_A7,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\k33[3]~I\ : cycloneii_io
-- pragma translate_off
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
	padio => ww_k33(3),
	combout => \k33~combout\(3));

-- Location: PIN_G10,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\k33[2]~I\ : cycloneii_io
-- pragma translate_off
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
	padio => ww_k33(2),
	combout => \k33~combout\(2));

-- Location: PIN_B10,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\k13[2]~I\ : cycloneii_io
-- pragma translate_off
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
	padio => ww_k13(2),
	combout => \k13~combout\(2));

-- Location: PIN_D8,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\k11[0]~I\ : cycloneii_io
-- pragma translate_off
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
	padio => ww_k11(0),
	combout => \k11~combout\(0));

-- Location: PIN_D3,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\p3[3]~I\ : cycloneii_io
-- pragma translate_off
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
	padio => ww_p3(3),
	combout => \p3~combout\(3));

-- Location: PIN_H2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\clk~I\ : cycloneii_io
-- pragma translate_off
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
	padio => ww_clk,
	combout => \clk~combout\);

-- Location: CLKCTRL_G2
\clk~clkctrl\ : cycloneii_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \clk~clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \clk~clkctrl_outclk\);

-- Location: PIN_D4,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\k31[0]~I\ : cycloneii_io
-- pragma translate_off
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
	padio => ww_k31(0),
	combout => \k31~combout\(0));

-- Location: PIN_E2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\k31[1]~I\ : cycloneii_io
-- pragma translate_off
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
	padio => ww_k31(1),
	combout => \k31~combout\(1));

-- Location: PIN_E3,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\p3[0]~I\ : cycloneii_io
-- pragma translate_off
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
	padio => ww_p3(0),
	combout => \p3~combout\(0));

-- Location: LCFF_X8_Y12_N31
\p3_reg[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \p3~combout\(0),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => p3_reg(0));

-- Location: LCCOMB_X7_Y12_N14
\Mult2|auto_generated|le3a[0]\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mult2|auto_generated|le3a\(0) = LCELL(\k31~combout\(1) $ (((\k31~combout\(0) & p3_reg(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \k31~combout\(0),
	datac => \k31~combout\(1),
	datad => p3_reg(0),
	combout => \Mult2|auto_generated|le3a\(0));

-- Location: LCCOMB_X7_Y12_N0
\Mult2|auto_generated|op_3~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mult2|auto_generated|op_3~0_combout\ = (\k31~combout\(1) & (\Mult2|auto_generated|le3a\(0) $ (VCC))) # (!\k31~combout\(1) & (\Mult2|auto_generated|le3a\(0) & VCC))
-- \Mult2|auto_generated|op_3~1\ = CARRY((\k31~combout\(1) & \Mult2|auto_generated|le3a\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \k31~combout\(1),
	datab => \Mult2|auto_generated|le3a\(0),
	datad => VCC,
	combout => \Mult2|auto_generated|op_3~0_combout\,
	cout => \Mult2|auto_generated|op_3~1\);

-- Location: LCCOMB_X6_Y13_N16
\c1[0]~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \c1[0]~4_combout\ = (\Add0~0_combout\ & (\Mult2|auto_generated|op_3~0_combout\ $ (VCC))) # (!\Add0~0_combout\ & (\Mult2|auto_generated|op_3~0_combout\ & VCC))
-- \c1[0]~5\ = CARRY((\Add0~0_combout\ & \Mult2|auto_generated|op_3~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add0~0_combout\,
	datab => \Mult2|auto_generated|op_3~0_combout\,
	datad => VCC,
	combout => \c1[0]~4_combout\,
	cout => \c1[0]~5\);

-- Location: LCFF_X6_Y13_N17
\c1[0]~reg0\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \c1[0]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \c1[0]~reg0_regout\);

-- Location: PIN_F7,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\p1[0]~I\ : cycloneii_io
-- pragma translate_off
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
	padio => ww_p1(0),
	combout => \p1~combout\(0));

-- Location: LCFF_X10_Y13_N23
\p1_reg[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \p1~combout\(0),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => p1_reg(0));

-- Location: PIN_F8,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\p1[1]~I\ : cycloneii_io
-- pragma translate_off
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
	padio => ww_p1(1),
	combout => \p1~combout\(1));

-- Location: LCFF_X10_Y13_N15
\p1_reg[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \p1~combout\(1),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => p1_reg(1));

-- Location: PIN_C2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\k11[1]~I\ : cycloneii_io
-- pragma translate_off
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
	padio => ww_k11(1),
	combout => \k11~combout\(1));

-- Location: LCCOMB_X10_Y13_N28
\Mult0|auto_generated|le3a[1]\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mult0|auto_generated|le3a\(1) = LCELL((\k11~combout\(0) & ((p1_reg(1) $ (\k11~combout\(1))))) # (!\k11~combout\(0) & (!p1_reg(0) & ((\k11~combout\(1))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001101110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \k11~combout\(0),
	datab => p1_reg(0),
	datac => p1_reg(1),
	datad => \k11~combout\(1),
	combout => \Mult0|auto_generated|le3a\(1));

-- Location: LCCOMB_X6_Y13_N0
\Mult0|auto_generated|op_3~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mult0|auto_generated|op_3~0_combout\ = (\Mult0|auto_generated|le3a\(0) & (\k11~combout\(1) $ (VCC))) # (!\Mult0|auto_generated|le3a\(0) & (\k11~combout\(1) & VCC))
-- \Mult0|auto_generated|op_3~1\ = CARRY((\Mult0|auto_generated|le3a\(0) & \k11~combout\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mult0|auto_generated|le3a\(0),
	datab => \k11~combout\(1),
	datad => VCC,
	combout => \Mult0|auto_generated|op_3~0_combout\,
	cout => \Mult0|auto_generated|op_3~1\);

-- Location: LCCOMB_X6_Y13_N2
\Mult0|auto_generated|op_3~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mult0|auto_generated|op_3~2_combout\ = (\Mult0|auto_generated|le3a\(1) & (!\Mult0|auto_generated|op_3~1\)) # (!\Mult0|auto_generated|le3a\(1) & ((\Mult0|auto_generated|op_3~1\) # (GND)))
-- \Mult0|auto_generated|op_3~3\ = CARRY((!\Mult0|auto_generated|op_3~1\) # (!\Mult0|auto_generated|le3a\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \Mult0|auto_generated|le3a\(1),
	datad => VCC,
	cin => \Mult0|auto_generated|op_3~1\,
	combout => \Mult0|auto_generated|op_3~2_combout\,
	cout => \Mult0|auto_generated|op_3~3\);

-- Location: LCCOMB_X6_Y13_N26
\Add0~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add0~2_combout\ = (\Mult1|auto_generated|op_3~2_combout\ & ((\Mult0|auto_generated|op_3~2_combout\ & (\Add0~1\ & VCC)) # (!\Mult0|auto_generated|op_3~2_combout\ & (!\Add0~1\)))) # (!\Mult1|auto_generated|op_3~2_combout\ & 
-- ((\Mult0|auto_generated|op_3~2_combout\ & (!\Add0~1\)) # (!\Mult0|auto_generated|op_3~2_combout\ & ((\Add0~1\) # (GND)))))
-- \Add0~3\ = CARRY((\Mult1|auto_generated|op_3~2_combout\ & (!\Mult0|auto_generated|op_3~2_combout\ & !\Add0~1\)) # (!\Mult1|auto_generated|op_3~2_combout\ & ((!\Add0~1\) # (!\Mult0|auto_generated|op_3~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Mult1|auto_generated|op_3~2_combout\,
	datab => \Mult0|auto_generated|op_3~2_combout\,
	datad => VCC,
	cin => \Add0~1\,
	combout => \Add0~2_combout\,
	cout => \Add0~3\);

-- Location: LCCOMB_X6_Y13_N18
\c1[1]~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \c1[1]~6_combout\ = (\Mult2|auto_generated|op_3~2_combout\ & ((\Add0~2_combout\ & (\c1[0]~5\ & VCC)) # (!\Add0~2_combout\ & (!\c1[0]~5\)))) # (!\Mult2|auto_generated|op_3~2_combout\ & ((\Add0~2_combout\ & (!\c1[0]~5\)) # (!\Add0~2_combout\ & ((\c1[0]~5\) 
-- # (GND)))))
-- \c1[1]~7\ = CARRY((\Mult2|auto_generated|op_3~2_combout\ & (!\Add0~2_combout\ & !\c1[0]~5\)) # (!\Mult2|auto_generated|op_3~2_combout\ & ((!\c1[0]~5\) # (!\Add0~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Mult2|auto_generated|op_3~2_combout\,
	datab => \Add0~2_combout\,
	datad => VCC,
	cin => \c1[0]~5\,
	combout => \c1[1]~6_combout\,
	cout => \c1[1]~7\);

-- Location: LCFF_X6_Y13_N19
\c1[1]~reg0\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \c1[1]~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \c1[1]~reg0_regout\);

-- Location: PIN_D10,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\k11[2]~I\ : cycloneii_io
-- pragma translate_off
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
	padio => ww_k11(2),
	combout => \k11~combout\(2));

-- Location: PIN_J1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\k11[3]~I\ : cycloneii_io
-- pragma translate_off
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
	padio => ww_k11(3),
	combout => \k11~combout\(3));

-- Location: LCCOMB_X10_Y13_N8
\Mult0|auto_generated|le4a[0]\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mult0|auto_generated|le4a\(0) = LCELL(\k11~combout\(3) $ (((\k11~combout\(1) & ((\k11~combout\(2)) # (p1_reg(0)))) # (!\k11~combout\(1) & (\k11~combout\(2) & p1_reg(0))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001111001111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \k11~combout\(1),
	datab => \k11~combout\(2),
	datac => \k11~combout\(3),
	datad => p1_reg(0),
	combout => \Mult0|auto_generated|le4a\(0));

-- Location: LCCOMB_X6_Y13_N4
\Mult0|auto_generated|op_3~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mult0|auto_generated|op_3~4_combout\ = ((\Mult0|auto_generated|op_1~0_combout\ $ (\Mult0|auto_generated|le4a\(0) $ (!\Mult0|auto_generated|op_3~3\)))) # (GND)
-- \Mult0|auto_generated|op_3~5\ = CARRY((\Mult0|auto_generated|op_1~0_combout\ & ((\Mult0|auto_generated|le4a\(0)) # (!\Mult0|auto_generated|op_3~3\))) # (!\Mult0|auto_generated|op_1~0_combout\ & (\Mult0|auto_generated|le4a\(0) & 
-- !\Mult0|auto_generated|op_3~3\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Mult0|auto_generated|op_1~0_combout\,
	datab => \Mult0|auto_generated|le4a\(0),
	datad => VCC,
	cin => \Mult0|auto_generated|op_3~3\,
	combout => \Mult0|auto_generated|op_3~4_combout\,
	cout => \Mult0|auto_generated|op_3~5\);

-- Location: LCCOMB_X6_Y13_N28
\Add0~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add0~4_combout\ = ((\Mult1|auto_generated|op_3~4_combout\ $ (\Mult0|auto_generated|op_3~4_combout\ $ (!\Add0~3\)))) # (GND)
-- \Add0~5\ = CARRY((\Mult1|auto_generated|op_3~4_combout\ & ((\Mult0|auto_generated|op_3~4_combout\) # (!\Add0~3\))) # (!\Mult1|auto_generated|op_3~4_combout\ & (\Mult0|auto_generated|op_3~4_combout\ & !\Add0~3\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Mult1|auto_generated|op_3~4_combout\,
	datab => \Mult0|auto_generated|op_3~4_combout\,
	datad => VCC,
	cin => \Add0~3\,
	combout => \Add0~4_combout\,
	cout => \Add0~5\);

-- Location: LCCOMB_X6_Y13_N20
\c1[2]~8\ : cycloneii_lcell_comb
-- Equation(s):
-- \c1[2]~8_combout\ = ((\Mult2|auto_generated|op_3~4_combout\ $ (\Add0~4_combout\ $ (!\c1[1]~7\)))) # (GND)
-- \c1[2]~9\ = CARRY((\Mult2|auto_generated|op_3~4_combout\ & ((\Add0~4_combout\) # (!\c1[1]~7\))) # (!\Mult2|auto_generated|op_3~4_combout\ & (\Add0~4_combout\ & !\c1[1]~7\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Mult2|auto_generated|op_3~4_combout\,
	datab => \Add0~4_combout\,
	datad => VCC,
	cin => \c1[1]~7\,
	combout => \c1[2]~8_combout\,
	cout => \c1[2]~9\);

-- Location: LCFF_X6_Y13_N21
\c1[2]~reg0\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \c1[2]~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \c1[2]~reg0_regout\);

-- Location: PIN_J2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\k31[2]~I\ : cycloneii_io
-- pragma translate_off
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
	padio => ww_k31(2),
	combout => \k31~combout\(2));

-- Location: LCCOMB_X7_Y12_N8
\Mult2|auto_generated|cs2a[1]~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mult2|auto_generated|cs2a[1]~0_combout\ = \k31~combout\(1) $ (\k31~combout\(2))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \k31~combout\(1),
	datad => \k31~combout\(2),
	combout => \Mult2|auto_generated|cs2a[1]~0_combout\);

-- Location: PIN_M2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\p3[1]~I\ : cycloneii_io
-- pragma translate_off
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
	padio => ww_p3(1),
	combout => \p3~combout\(1));

-- Location: LCFF_X8_Y12_N5
\p3_reg[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \p3~combout\(1),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => p3_reg(1));

-- Location: LCCOMB_X7_Y12_N30
\Mult2|auto_generated|le4a[1]\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mult2|auto_generated|le4a\(1) = LCELL((\Mult2|auto_generated|cs2a[1]~0_combout\ & (\Mult2|auto_generated|cs1a[1]~0_combout\ $ (((p3_reg(1)))))) # (!\Mult2|auto_generated|cs2a[1]~0_combout\ & (\Mult2|auto_generated|cs1a[1]~0_combout\ & (!p3_reg(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101001010100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mult2|auto_generated|cs1a[1]~0_combout\,
	datab => p3_reg(0),
	datac => \Mult2|auto_generated|cs2a[1]~0_combout\,
	datad => p3_reg(1),
	combout => \Mult2|auto_generated|le4a\(1));

-- Location: PIN_T6,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\p3[2]~I\ : cycloneii_io
-- pragma translate_off
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
	padio => ww_p3(2),
	combout => \p3~combout\(2));

-- Location: LCFF_X8_Y12_N13
\p3_reg[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \p3~combout\(2),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => p3_reg(2));

-- Location: LCCOMB_X7_Y12_N26
\Mult2|auto_generated|le3a[2]\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mult2|auto_generated|le3a\(2) = LCELL((\k31~combout\(0) & (\k31~combout\(1) $ ((p3_reg(2))))) # (!\k31~combout\(0) & (\k31~combout\(1) & ((!p3_reg(1))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100100001101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \k31~combout\(1),
	datab => \k31~combout\(0),
	datac => p3_reg(2),
	datad => p3_reg(1),
	combout => \Mult2|auto_generated|le3a\(2));

-- Location: LCCOMB_X7_Y12_N28
\Mult2|auto_generated|le3a[1]\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mult2|auto_generated|le3a\(1) = LCELL((\k31~combout\(0) & (p3_reg(1) $ ((\k31~combout\(1))))) # (!\k31~combout\(0) & (((\k31~combout\(1) & !p3_reg(0))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100100001111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => p3_reg(1),
	datab => \k31~combout\(0),
	datac => \k31~combout\(1),
	datad => p3_reg(0),
	combout => \Mult2|auto_generated|le3a\(1));

-- Location: LCCOMB_X7_Y12_N6
\Mult2|auto_generated|op_3~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mult2|auto_generated|op_3~6_combout\ = \Mult2|auto_generated|op_1~2_combout\ $ (\Mult2|auto_generated|op_3~5\ $ (\Mult2|auto_generated|le4a\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010101011010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Mult2|auto_generated|op_1~2_combout\,
	datad => \Mult2|auto_generated|le4a\(1),
	cin => \Mult2|auto_generated|op_3~5\,
	combout => \Mult2|auto_generated|op_3~6_combout\);

-- Location: PIN_K1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\k21[3]~I\ : cycloneii_io
-- pragma translate_off
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
	padio => ww_k21(3),
	combout => \k21~combout\(3));

-- Location: PIN_A5,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\k21[2]~I\ : cycloneii_io
-- pragma translate_off
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
	padio => ww_k21(2),
	combout => \k21~combout\(2));

-- Location: LCCOMB_X7_Y13_N16
\Mult1|auto_generated|cs1a[1]~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mult1|auto_generated|cs1a[1]~0_combout\ = \k21~combout\(3) $ (((\k21~combout\(1) & \k21~combout\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \k21~combout\(1),
	datab => \k21~combout\(3),
	datad => \k21~combout\(2),
	combout => \Mult1|auto_generated|cs1a[1]~0_combout\);

-- Location: PIN_K5,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\p2[0]~I\ : cycloneii_io
-- pragma translate_off
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
	padio => ww_p2(0),
	combout => \p2~combout\(0));

-- Location: LCFF_X8_Y13_N1
\p2_reg[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \p2~combout\(0),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => p2_reg(0));

-- Location: LCCOMB_X7_Y13_N0
\Mult1|auto_generated|cs2a[1]~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mult1|auto_generated|cs2a[1]~0_combout\ = \k21~combout\(1) $ (\k21~combout\(2))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011001100110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \k21~combout\(1),
	datab => \k21~combout\(2),
	combout => \Mult1|auto_generated|cs2a[1]~0_combout\);

-- Location: LCCOMB_X7_Y13_N6
\Mult1|auto_generated|le4a[1]\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mult1|auto_generated|le4a\(1) = LCELL((\Mult1|auto_generated|cs2a[1]~0_combout\ & (p2_reg(1) $ ((\Mult1|auto_generated|cs1a[1]~0_combout\)))) # (!\Mult1|auto_generated|cs2a[1]~0_combout\ & (((\Mult1|auto_generated|cs1a[1]~0_combout\ & !p2_reg(0))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => p2_reg(1),
	datab => \Mult1|auto_generated|cs1a[1]~0_combout\,
	datac => p2_reg(0),
	datad => \Mult1|auto_generated|cs2a[1]~0_combout\,
	combout => \Mult1|auto_generated|le4a\(1));

-- Location: PIN_G7,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\k21[0]~I\ : cycloneii_io
-- pragma translate_off
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
	padio => ww_k21(0),
	combout => \k21~combout\(0));

-- Location: PIN_B4,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\p2[2]~I\ : cycloneii_io
-- pragma translate_off
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
	padio => ww_p2(2),
	combout => \p2~combout\(2));

-- Location: LCFF_X7_Y13_N23
\p2_reg[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \p2~combout\(2),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => p2_reg(2));

-- Location: PIN_K2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\p2[3]~I\ : cycloneii_io
-- pragma translate_off
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
	padio => ww_p2(3),
	combout => \p2~combout\(3));

-- Location: LCFF_X7_Y13_N1
\p2_reg[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \p2~combout\(3),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => p2_reg(3));

-- Location: LCCOMB_X7_Y13_N22
\Mult1|auto_generated|le3a[3]\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mult1|auto_generated|le3a\(3) = LCELL((\k21~combout\(0) & (\k21~combout\(1) $ (((p2_reg(3)))))) # (!\k21~combout\(0) & (\k21~combout\(1) & (!p2_reg(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100011010001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \k21~combout\(1),
	datab => \k21~combout\(0),
	datac => p2_reg(2),
	datad => p2_reg(3),
	combout => \Mult1|auto_generated|le3a\(3));

-- Location: PIN_E1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\p2[1]~I\ : cycloneii_io
-- pragma translate_off
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
	padio => ww_p2(1),
	combout => \p2~combout\(1));

-- Location: LCFF_X7_Y13_N17
\p2_reg[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \p2~combout\(1),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => p2_reg(1));

-- Location: LCCOMB_X7_Y13_N8
\Mult1|auto_generated|le3a[2]\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mult1|auto_generated|le3a\(2) = LCELL((\k21~combout\(0) & (\k21~combout\(1) $ (((p2_reg(2)))))) # (!\k21~combout\(0) & (\k21~combout\(1) & (!p2_reg(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100011010001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \k21~combout\(1),
	datab => \k21~combout\(0),
	datac => p2_reg(1),
	datad => p2_reg(2),
	combout => \Mult1|auto_generated|le3a\(2));

-- Location: LCCOMB_X7_Y13_N28
\Mult1|auto_generated|op_1~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mult1|auto_generated|op_1~2_combout\ = \Mult1|auto_generated|op_1~1\ $ (\Mult1|auto_generated|le3a\(3))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \Mult1|auto_generated|le3a\(3),
	cin => \Mult1|auto_generated|op_1~1\,
	combout => \Mult1|auto_generated|op_1~2_combout\);

-- Location: LCCOMB_X7_Y13_N10
\Mult1|auto_generated|le4a[0]\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mult1|auto_generated|le4a\(0) = LCELL(\k21~combout\(3) $ (((\k21~combout\(1) & ((p2_reg(0)) # (\k21~combout\(2)))) # (!\k21~combout\(1) & (p2_reg(0) & \k21~combout\(2))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011011001101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \k21~combout\(1),
	datab => \k21~combout\(3),
	datac => p2_reg(0),
	datad => \k21~combout\(2),
	combout => \Mult1|auto_generated|le4a\(0));

-- Location: LCCOMB_X7_Y13_N12
\Mult1|auto_generated|le3a[1]\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mult1|auto_generated|le3a\(1) = LCELL((\k21~combout\(0) & (\k21~combout\(1) $ (((p2_reg(1)))))) # (!\k21~combout\(0) & (\k21~combout\(1) & (!p2_reg(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100011010001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \k21~combout\(1),
	datab => \k21~combout\(0),
	datac => p2_reg(0),
	datad => p2_reg(1),
	combout => \Mult1|auto_generated|le3a\(1));

-- Location: LCCOMB_X7_Y13_N30
\Mult1|auto_generated|le3a[0]\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mult1|auto_generated|le3a\(0) = LCELL(\k21~combout\(1) $ (((\k21~combout\(0) & p2_reg(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110101001101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \k21~combout\(1),
	datab => \k21~combout\(0),
	datac => p2_reg(0),
	combout => \Mult1|auto_generated|le3a\(0));

-- Location: LCCOMB_X6_Y13_N14
\Mult1|auto_generated|op_3~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mult1|auto_generated|op_3~6_combout\ = \Mult1|auto_generated|le4a\(1) $ (\Mult1|auto_generated|op_3~5\ $ (\Mult1|auto_generated|op_1~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100111100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \Mult1|auto_generated|le4a\(1),
	datad => \Mult1|auto_generated|op_1~2_combout\,
	cin => \Mult1|auto_generated|op_3~5\,
	combout => \Mult1|auto_generated|op_3~6_combout\);

-- Location: LCCOMB_X10_Y13_N0
\Mult0|auto_generated|cs1a[1]~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mult0|auto_generated|cs1a[1]~0_combout\ = \k11~combout\(3) $ (((\k11~combout\(1) & \k11~combout\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \k11~combout\(1),
	datab => \k11~combout\(3),
	datad => \k11~combout\(2),
	combout => \Mult0|auto_generated|cs1a[1]~0_combout\);

-- Location: LCCOMB_X12_Y13_N30
\Mult0|auto_generated|le4a[1]\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mult0|auto_generated|le4a\(1) = LCELL((\Mult0|auto_generated|cs2a[1]~0_combout\ & (\Mult0|auto_generated|cs1a[1]~0_combout\ $ ((p1_reg(1))))) # (!\Mult0|auto_generated|cs2a[1]~0_combout\ & (\Mult0|auto_generated|cs1a[1]~0_combout\ & ((!p1_reg(0))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010100001101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mult0|auto_generated|cs2a[1]~0_combout\,
	datab => \Mult0|auto_generated|cs1a[1]~0_combout\,
	datac => p1_reg(1),
	datad => p1_reg(0),
	combout => \Mult0|auto_generated|le4a\(1));

-- Location: PIN_F10,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\p1[3]~I\ : cycloneii_io
-- pragma translate_off
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
	padio => ww_p1(3),
	combout => \p1~combout\(3));

-- Location: LCFF_X10_Y13_N31
\p1_reg[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \p1~combout\(3),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => p1_reg(3));

-- Location: PIN_A10,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\p1[2]~I\ : cycloneii_io
-- pragma translate_off
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
	padio => ww_p1(2),
	combout => \p1~combout\(2));

-- Location: LCFF_X10_Y13_N1
\p1_reg[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \p1~combout\(2),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => p1_reg(2));

-- Location: LCCOMB_X10_Y13_N12
\Mult0|auto_generated|le3a[3]\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mult0|auto_generated|le3a\(3) = LCELL((\k11~combout\(0) & (\k11~combout\(1) $ ((p1_reg(3))))) # (!\k11~combout\(0) & (\k11~combout\(1) & ((!p1_reg(2))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010100001101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \k11~combout\(0),
	datab => \k11~combout\(1),
	datac => p1_reg(3),
	datad => p1_reg(2),
	combout => \Mult0|auto_generated|le3a\(3));

-- Location: LCCOMB_X10_Y13_N26
\Mult0|auto_generated|le3a[2]\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mult0|auto_generated|le3a\(2) = LCELL((\k11~combout\(0) & (\k11~combout\(1) $ (((p1_reg(2)))))) # (!\k11~combout\(0) & (\k11~combout\(1) & (!p1_reg(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010011010001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \k11~combout\(0),
	datab => \k11~combout\(1),
	datac => p1_reg(1),
	datad => p1_reg(2),
	combout => \Mult0|auto_generated|le3a\(2));

-- Location: LCCOMB_X10_Y13_N18
\Mult0|auto_generated|op_1~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mult0|auto_generated|op_1~2_combout\ = \Mult0|auto_generated|le3a\(3) $ (\Mult0|auto_generated|op_1~1\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \Mult0|auto_generated|le3a\(3),
	cin => \Mult0|auto_generated|op_1~1\,
	combout => \Mult0|auto_generated|op_1~2_combout\);

-- Location: LCCOMB_X6_Y13_N6
\Mult0|auto_generated|op_3~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mult0|auto_generated|op_3~6_combout\ = \Mult0|auto_generated|le4a\(1) $ (\Mult0|auto_generated|op_3~5\ $ (\Mult0|auto_generated|op_1~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100111100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \Mult0|auto_generated|le4a\(1),
	datad => \Mult0|auto_generated|op_1~2_combout\,
	cin => \Mult0|auto_generated|op_3~5\,
	combout => \Mult0|auto_generated|op_3~6_combout\);

-- Location: LCCOMB_X6_Y13_N30
\Add0~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add0~6_combout\ = \Mult1|auto_generated|op_3~6_combout\ $ (\Add0~5\ $ (\Mult0|auto_generated|op_3~6_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100111100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \Mult1|auto_generated|op_3~6_combout\,
	datad => \Mult0|auto_generated|op_3~6_combout\,
	cin => \Add0~5\,
	combout => \Add0~6_combout\);

-- Location: LCCOMB_X6_Y13_N22
\c1[3]~10\ : cycloneii_lcell_comb
-- Equation(s):
-- \c1[3]~10_combout\ = \Mult2|auto_generated|op_3~6_combout\ $ (\c1[2]~9\ $ (\Add0~6_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100111100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \Mult2|auto_generated|op_3~6_combout\,
	datad => \Add0~6_combout\,
	cin => \c1[2]~9\,
	combout => \c1[3]~10_combout\);

-- Location: LCFF_X6_Y13_N23
\c1[3]~reg0\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \c1[3]~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \c1[3]~reg0_regout\);

-- Location: PIN_E4,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\k32[0]~I\ : cycloneii_io
-- pragma translate_off
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
	padio => ww_k32(0),
	combout => \k32~combout\(0));

-- Location: LCCOMB_X8_Y12_N2
\Mult5|auto_generated|le3a[0]\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mult5|auto_generated|le3a\(0) = LCELL(\k32~combout\(1) $ (((\k32~combout\(0) & p3_reg(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \k32~combout\(1),
	datab => \k32~combout\(0),
	datad => p3_reg(0),
	combout => \Mult5|auto_generated|le3a\(0));

-- Location: LCCOMB_X8_Y12_N18
\Mult5|auto_generated|op_3~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mult5|auto_generated|op_3~0_combout\ = (\k32~combout\(1) & (\Mult5|auto_generated|le3a\(0) $ (VCC))) # (!\k32~combout\(1) & (\Mult5|auto_generated|le3a\(0) & VCC))
-- \Mult5|auto_generated|op_3~1\ = CARRY((\k32~combout\(1) & \Mult5|auto_generated|le3a\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \k32~combout\(1),
	datab => \Mult5|auto_generated|le3a\(0),
	datad => VCC,
	combout => \Mult5|auto_generated|op_3~0_combout\,
	cout => \Mult5|auto_generated|op_3~1\);

-- Location: LCCOMB_X9_Y13_N24
\c2[0]~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \c2[0]~4_combout\ = (\Add2~0_combout\ & (\Mult5|auto_generated|op_3~0_combout\ $ (VCC))) # (!\Add2~0_combout\ & (\Mult5|auto_generated|op_3~0_combout\ & VCC))
-- \c2[0]~5\ = CARRY((\Add2~0_combout\ & \Mult5|auto_generated|op_3~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add2~0_combout\,
	datab => \Mult5|auto_generated|op_3~0_combout\,
	datad => VCC,
	combout => \c2[0]~4_combout\,
	cout => \c2[0]~5\);

-- Location: LCFF_X9_Y13_N25
\c2[0]~reg0\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \c2[0]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \c2[0]~reg0_regout\);

-- Location: PIN_D5,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\k22[1]~I\ : cycloneii_io
-- pragma translate_off
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
	padio => ww_k22(1),
	combout => \k22~combout\(1));

-- Location: PIN_G6,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\k22[0]~I\ : cycloneii_io
-- pragma translate_off
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
	padio => ww_k22(0),
	combout => \k22~combout\(0));

-- Location: LCCOMB_X8_Y13_N18
\Mult4|auto_generated|le3a[0]\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mult4|auto_generated|le3a\(0) = LCELL(\k22~combout\(1) $ (((\k22~combout\(0) & p2_reg(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \k22~combout\(1),
	datac => \k22~combout\(0),
	datad => p2_reg(0),
	combout => \Mult4|auto_generated|le3a\(0));

-- Location: LCCOMB_X9_Y13_N2
\Mult4|auto_generated|op_3~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mult4|auto_generated|op_3~2_combout\ = (\Mult4|auto_generated|le3a\(1) & (!\Mult4|auto_generated|op_3~1\)) # (!\Mult4|auto_generated|le3a\(1) & ((\Mult4|auto_generated|op_3~1\) # (GND)))
-- \Mult4|auto_generated|op_3~3\ = CARRY((!\Mult4|auto_generated|op_3~1\) # (!\Mult4|auto_generated|le3a\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Mult4|auto_generated|le3a\(1),
	datad => VCC,
	cin => \Mult4|auto_generated|op_3~1\,
	combout => \Mult4|auto_generated|op_3~2_combout\,
	cout => \Mult4|auto_generated|op_3~3\);

-- Location: PIN_F9,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\k12[0]~I\ : cycloneii_io
-- pragma translate_off
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
	padio => ww_k12(0),
	combout => \k12~combout\(0));

-- Location: LCCOMB_X10_Y13_N10
\Mult3|auto_generated|le3a[0]\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mult3|auto_generated|le3a\(0) = LCELL(\k12~combout\(1) $ (((\k12~combout\(0) & p1_reg(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \k12~combout\(1),
	datab => \k12~combout\(0),
	datad => p1_reg(0),
	combout => \Mult3|auto_generated|le3a\(0));

-- Location: LCCOMB_X9_Y13_N8
\Mult3|auto_generated|op_3~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mult3|auto_generated|op_3~0_combout\ = (\k12~combout\(1) & (\Mult3|auto_generated|le3a\(0) $ (VCC))) # (!\k12~combout\(1) & (\Mult3|auto_generated|le3a\(0) & VCC))
-- \Mult3|auto_generated|op_3~1\ = CARRY((\k12~combout\(1) & \Mult3|auto_generated|le3a\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \k12~combout\(1),
	datab => \Mult3|auto_generated|le3a\(0),
	datad => VCC,
	combout => \Mult3|auto_generated|op_3~0_combout\,
	cout => \Mult3|auto_generated|op_3~1\);

-- Location: LCCOMB_X9_Y13_N18
\Add2~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add2~2_combout\ = (\Mult3|auto_generated|op_3~2_combout\ & ((\Mult4|auto_generated|op_3~2_combout\ & (\Add2~1\ & VCC)) # (!\Mult4|auto_generated|op_3~2_combout\ & (!\Add2~1\)))) # (!\Mult3|auto_generated|op_3~2_combout\ & 
-- ((\Mult4|auto_generated|op_3~2_combout\ & (!\Add2~1\)) # (!\Mult4|auto_generated|op_3~2_combout\ & ((\Add2~1\) # (GND)))))
-- \Add2~3\ = CARRY((\Mult3|auto_generated|op_3~2_combout\ & (!\Mult4|auto_generated|op_3~2_combout\ & !\Add2~1\)) # (!\Mult3|auto_generated|op_3~2_combout\ & ((!\Add2~1\) # (!\Mult4|auto_generated|op_3~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Mult3|auto_generated|op_3~2_combout\,
	datab => \Mult4|auto_generated|op_3~2_combout\,
	datad => VCC,
	cin => \Add2~1\,
	combout => \Add2~2_combout\,
	cout => \Add2~3\);

-- Location: LCCOMB_X9_Y13_N26
\c2[1]~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \c2[1]~6_combout\ = (\Mult5|auto_generated|op_3~2_combout\ & ((\Add2~2_combout\ & (\c2[0]~5\ & VCC)) # (!\Add2~2_combout\ & (!\c2[0]~5\)))) # (!\Mult5|auto_generated|op_3~2_combout\ & ((\Add2~2_combout\ & (!\c2[0]~5\)) # (!\Add2~2_combout\ & ((\c2[0]~5\) 
-- # (GND)))))
-- \c2[1]~7\ = CARRY((\Mult5|auto_generated|op_3~2_combout\ & (!\Add2~2_combout\ & !\c2[0]~5\)) # (!\Mult5|auto_generated|op_3~2_combout\ & ((!\c2[0]~5\) # (!\Add2~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Mult5|auto_generated|op_3~2_combout\,
	datab => \Add2~2_combout\,
	datad => VCC,
	cin => \c2[0]~5\,
	combout => \c2[1]~6_combout\,
	cout => \c2[1]~7\);

-- Location: LCFF_X9_Y13_N27
\c2[1]~reg0\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \c2[1]~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \c2[1]~reg0_regout\);

-- Location: LCCOMB_X8_Y12_N14
\Mult5|auto_generated|le3a[2]\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mult5|auto_generated|le3a\(2) = LCELL((\k32~combout\(0) & (\k32~combout\(1) $ (((p3_reg(2)))))) # (!\k32~combout\(0) & (\k32~combout\(1) & (!p3_reg(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100011010001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \k32~combout\(1),
	datab => \k32~combout\(0),
	datac => p3_reg(1),
	datad => p3_reg(2),
	combout => \Mult5|auto_generated|le3a\(2));

-- Location: LCCOMB_X8_Y12_N8
\Mult5|auto_generated|le3a[1]\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mult5|auto_generated|le3a\(1) = LCELL((\k32~combout\(0) & (\k32~combout\(1) $ ((p3_reg(1))))) # (!\k32~combout\(0) & (\k32~combout\(1) & ((!p3_reg(0))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100100001101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \k32~combout\(1),
	datab => \k32~combout\(0),
	datac => p3_reg(1),
	datad => p3_reg(0),
	combout => \Mult5|auto_generated|le3a\(1));

-- Location: LCCOMB_X9_Y13_N28
\c2[2]~8\ : cycloneii_lcell_comb
-- Equation(s):
-- \c2[2]~8_combout\ = ((\Add2~4_combout\ $ (\Mult5|auto_generated|op_3~4_combout\ $ (!\c2[1]~7\)))) # (GND)
-- \c2[2]~9\ = CARRY((\Add2~4_combout\ & ((\Mult5|auto_generated|op_3~4_combout\) # (!\c2[1]~7\))) # (!\Add2~4_combout\ & (\Mult5|auto_generated|op_3~4_combout\ & !\c2[1]~7\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Add2~4_combout\,
	datab => \Mult5|auto_generated|op_3~4_combout\,
	datad => VCC,
	cin => \c2[1]~7\,
	combout => \c2[2]~8_combout\,
	cout => \c2[2]~9\);

-- Location: LCFF_X9_Y13_N29
\c2[2]~reg0\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \c2[2]~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \c2[2]~reg0_regout\);

-- Location: LCCOMB_X10_Y13_N30
\Mult3|auto_generated|le3a[3]\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mult3|auto_generated|le3a\(3) = LCELL((\k12~combout\(0) & (\k12~combout\(1) $ (((p1_reg(3)))))) # (!\k12~combout\(0) & (\k12~combout\(1) & (!p1_reg(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \k12~combout\(1),
	datab => p1_reg(2),
	datac => p1_reg(3),
	datad => \k12~combout\(0),
	combout => \Mult3|auto_generated|le3a\(3));

-- Location: PIN_A9,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\k12[2]~I\ : cycloneii_io
-- pragma translate_off
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
	padio => ww_k12(2),
	combout => \k12~combout\(2));

-- Location: PIN_A8,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\k12[1]~I\ : cycloneii_io
-- pragma translate_off
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
	padio => ww_k12(1),
	combout => \k12~combout\(1));

-- Location: LCCOMB_X13_Y13_N20
\Mult3|auto_generated|cs1a[1]~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mult3|auto_generated|cs1a[1]~0_combout\ = \k12~combout\(3) $ (((\k12~combout\(2) & \k12~combout\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110101001101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \k12~combout\(3),
	datab => \k12~combout\(2),
	datac => \k12~combout\(1),
	combout => \Mult3|auto_generated|cs1a[1]~0_combout\);

-- Location: LCCOMB_X10_Y13_N6
\Mult3|auto_generated|op_1~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mult3|auto_generated|op_1~2_combout\ = \Mult3|auto_generated|op_1~1\ $ (\Mult3|auto_generated|le3a\(3))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \Mult3|auto_generated|le3a\(3),
	cin => \Mult3|auto_generated|op_1~1\,
	combout => \Mult3|auto_generated|op_1~2_combout\);

-- Location: PIN_D11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\k12[3]~I\ : cycloneii_io
-- pragma translate_off
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
	padio => ww_k12(3),
	combout => \k12~combout\(3));

-- Location: LCCOMB_X10_Y13_N22
\Mult3|auto_generated|le4a[0]\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mult3|auto_generated|le4a\(0) = LCELL(\k12~combout\(3) $ (((\k12~combout\(2) & ((p1_reg(0)) # (\k12~combout\(1)))) # (!\k12~combout\(2) & (p1_reg(0) & \k12~combout\(1))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011011001101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \k12~combout\(2),
	datab => \k12~combout\(3),
	datac => p1_reg(0),
	datad => \k12~combout\(1),
	combout => \Mult3|auto_generated|le4a\(0));

-- Location: LCCOMB_X10_Y13_N14
\Mult3|auto_generated|le3a[1]\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mult3|auto_generated|le3a\(1) = LCELL((\k12~combout\(0) & (\k12~combout\(1) $ ((p1_reg(1))))) # (!\k12~combout\(0) & (\k12~combout\(1) & ((!p1_reg(0))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100100001101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \k12~combout\(1),
	datab => \k12~combout\(0),
	datac => p1_reg(1),
	datad => p1_reg(0),
	combout => \Mult3|auto_generated|le3a\(1));

-- Location: LCCOMB_X9_Y13_N14
\Mult3|auto_generated|op_3~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mult3|auto_generated|op_3~6_combout\ = \Mult3|auto_generated|le4a\(1) $ (\Mult3|auto_generated|op_3~5\ $ (\Mult3|auto_generated|op_1~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010101011010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Mult3|auto_generated|le4a\(1),
	datad => \Mult3|auto_generated|op_1~2_combout\,
	cin => \Mult3|auto_generated|op_3~5\,
	combout => \Mult3|auto_generated|op_3~6_combout\);

-- Location: LCCOMB_X7_Y13_N18
\Mult4|auto_generated|le3a[3]\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mult4|auto_generated|le3a\(3) = LCELL((\k22~combout\(0) & (\k22~combout\(1) $ (((p2_reg(3)))))) # (!\k22~combout\(0) & (\k22~combout\(1) & (!p2_reg(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010011010001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \k22~combout\(0),
	datab => \k22~combout\(1),
	datac => p2_reg(2),
	datad => p2_reg(3),
	combout => \Mult4|auto_generated|le3a\(3));

-- Location: PIN_F6,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\k22[2]~I\ : cycloneii_io
-- pragma translate_off
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
	padio => ww_k22(2),
	combout => \k22~combout\(2));

-- Location: LCCOMB_X8_Y13_N0
\Mult4|auto_generated|cs1a[1]~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mult4|auto_generated|cs1a[1]~0_combout\ = \k22~combout\(3) $ (((\k22~combout\(1) & \k22~combout\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \k22~combout\(3),
	datab => \k22~combout\(1),
	datad => \k22~combout\(2),
	combout => \Mult4|auto_generated|cs1a[1]~0_combout\);

-- Location: LCCOMB_X7_Y13_N2
\Mult4|auto_generated|op_1~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mult4|auto_generated|op_1~0_combout\ = (\Mult4|auto_generated|le3a\(2) & (\Mult4|auto_generated|cs1a[1]~0_combout\ $ (VCC))) # (!\Mult4|auto_generated|le3a\(2) & (\Mult4|auto_generated|cs1a[1]~0_combout\ & VCC))
-- \Mult4|auto_generated|op_1~1\ = CARRY((\Mult4|auto_generated|le3a\(2) & \Mult4|auto_generated|cs1a[1]~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mult4|auto_generated|le3a\(2),
	datab => \Mult4|auto_generated|cs1a[1]~0_combout\,
	datad => VCC,
	combout => \Mult4|auto_generated|op_1~0_combout\,
	cout => \Mult4|auto_generated|op_1~1\);

-- Location: LCCOMB_X7_Y13_N4
\Mult4|auto_generated|op_1~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mult4|auto_generated|op_1~2_combout\ = \Mult4|auto_generated|op_1~1\ $ (\Mult4|auto_generated|le3a\(3))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \Mult4|auto_generated|le3a\(3),
	cin => \Mult4|auto_generated|op_1~1\,
	combout => \Mult4|auto_generated|op_1~2_combout\);

-- Location: LCCOMB_X8_Y13_N22
\Mult4|auto_generated|le4a[1]\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mult4|auto_generated|le4a\(1) = LCELL((\Mult4|auto_generated|cs2a[1]~0_combout\ & ((\Mult4|auto_generated|cs1a[1]~0_combout\ $ (p2_reg(1))))) # (!\Mult4|auto_generated|cs2a[1]~0_combout\ & (!p2_reg(0) & (\Mult4|auto_generated|cs1a[1]~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001101010110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mult4|auto_generated|cs2a[1]~0_combout\,
	datab => p2_reg(0),
	datac => \Mult4|auto_generated|cs1a[1]~0_combout\,
	datad => p2_reg(1),
	combout => \Mult4|auto_generated|le4a\(1));

-- Location: LCCOMB_X9_Y13_N4
\Mult4|auto_generated|op_3~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mult4|auto_generated|op_3~4_combout\ = ((\Mult4|auto_generated|le4a\(0) $ (\Mult4|auto_generated|op_1~0_combout\ $ (!\Mult4|auto_generated|op_3~3\)))) # (GND)
-- \Mult4|auto_generated|op_3~5\ = CARRY((\Mult4|auto_generated|le4a\(0) & ((\Mult4|auto_generated|op_1~0_combout\) # (!\Mult4|auto_generated|op_3~3\))) # (!\Mult4|auto_generated|le4a\(0) & (\Mult4|auto_generated|op_1~0_combout\ & 
-- !\Mult4|auto_generated|op_3~3\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Mult4|auto_generated|le4a\(0),
	datab => \Mult4|auto_generated|op_1~0_combout\,
	datad => VCC,
	cin => \Mult4|auto_generated|op_3~3\,
	combout => \Mult4|auto_generated|op_3~4_combout\,
	cout => \Mult4|auto_generated|op_3~5\);

-- Location: LCCOMB_X9_Y13_N6
\Mult4|auto_generated|op_3~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mult4|auto_generated|op_3~6_combout\ = \Mult4|auto_generated|op_1~2_combout\ $ (\Mult4|auto_generated|op_3~5\ $ (\Mult4|auto_generated|le4a\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100111100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \Mult4|auto_generated|op_1~2_combout\,
	datad => \Mult4|auto_generated|le4a\(1),
	cin => \Mult4|auto_generated|op_3~5\,
	combout => \Mult4|auto_generated|op_3~6_combout\);

-- Location: LCCOMB_X9_Y13_N22
\Add2~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add2~6_combout\ = \Mult3|auto_generated|op_3~6_combout\ $ (\Add2~5\ $ (\Mult4|auto_generated|op_3~6_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100111100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \Mult3|auto_generated|op_3~6_combout\,
	datad => \Mult4|auto_generated|op_3~6_combout\,
	cin => \Add2~5\,
	combout => \Add2~6_combout\);

-- Location: LCCOMB_X9_Y13_N30
\c2[3]~10\ : cycloneii_lcell_comb
-- Equation(s):
-- \c2[3]~10_combout\ = \Mult5|auto_generated|op_3~6_combout\ $ (\c2[2]~9\ $ (\Add2~6_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010101011010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Mult5|auto_generated|op_3~6_combout\,
	datad => \Add2~6_combout\,
	cin => \c2[2]~9\,
	combout => \c2[3]~10_combout\);

-- Location: LCFF_X9_Y13_N31
\c2[3]~reg0\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \c2[3]~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \c2[3]~reg0_regout\);

-- Location: PIN_B9,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\k13[1]~I\ : cycloneii_io
-- pragma translate_off
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
	padio => ww_k13(1),
	combout => \k13~combout\(1));

-- Location: PIN_B12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\k13[0]~I\ : cycloneii_io
-- pragma translate_off
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
	padio => ww_k13(0),
	combout => \k13~combout\(0));

-- Location: LCCOMB_X13_Y13_N4
\Mult6|auto_generated|le3a[0]\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mult6|auto_generated|le3a\(0) = LCELL(\k13~combout\(1) $ (((\k13~combout\(0) & p1_reg(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \k13~combout\(1),
	datac => \k13~combout\(0),
	datad => p1_reg(0),
	combout => \Mult6|auto_generated|le3a\(0));

-- Location: LCCOMB_X13_Y13_N22
\Mult6|auto_generated|op_3~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mult6|auto_generated|op_3~0_combout\ = (\k13~combout\(1) & (\Mult6|auto_generated|le3a\(0) $ (VCC))) # (!\k13~combout\(1) & (\Mult6|auto_generated|le3a\(0) & VCC))
-- \Mult6|auto_generated|op_3~1\ = CARRY((\k13~combout\(1) & \Mult6|auto_generated|le3a\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \k13~combout\(1),
	datab => \Mult6|auto_generated|le3a\(0),
	datad => VCC,
	combout => \Mult6|auto_generated|op_3~0_combout\,
	cout => \Mult6|auto_generated|op_3~1\);

-- Location: LCCOMB_X12_Y13_N22
\Add4~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add4~0_combout\ = (\Mult7|auto_generated|op_3~0_combout\ & (\Mult6|auto_generated|op_3~0_combout\ $ (VCC))) # (!\Mult7|auto_generated|op_3~0_combout\ & (\Mult6|auto_generated|op_3~0_combout\ & VCC))
-- \Add4~1\ = CARRY((\Mult7|auto_generated|op_3~0_combout\ & \Mult6|auto_generated|op_3~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mult7|auto_generated|op_3~0_combout\,
	datab => \Mult6|auto_generated|op_3~0_combout\,
	datad => VCC,
	combout => \Add4~0_combout\,
	cout => \Add4~1\);

-- Location: LCCOMB_X12_Y13_N12
\c3[0]~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \c3[0]~4_combout\ = (\Mult8|auto_generated|op_3~0_combout\ & (\Add4~0_combout\ $ (VCC))) # (!\Mult8|auto_generated|op_3~0_combout\ & (\Add4~0_combout\ & VCC))
-- \c3[0]~5\ = CARRY((\Mult8|auto_generated|op_3~0_combout\ & \Add4~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mult8|auto_generated|op_3~0_combout\,
	datab => \Add4~0_combout\,
	datad => VCC,
	combout => \c3[0]~4_combout\,
	cout => \c3[0]~5\);

-- Location: LCFF_X12_Y13_N13
\c3[0]~reg0\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \c3[0]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \c3[0]~reg0_regout\);

-- Location: PIN_A6,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\k33[1]~I\ : cycloneii_io
-- pragma translate_off
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
	padio => ww_k33(1),
	combout => \k33~combout\(1));

-- Location: LCCOMB_X8_Y12_N10
\Mult8|auto_generated|le3a[1]\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mult8|auto_generated|le3a\(1) = LCELL((\k33~combout\(0) & (\k33~combout\(1) $ ((p3_reg(1))))) # (!\k33~combout\(0) & (\k33~combout\(1) & ((!p3_reg(0))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010100001101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \k33~combout\(0),
	datab => \k33~combout\(1),
	datac => p3_reg(1),
	datad => p3_reg(0),
	combout => \Mult8|auto_generated|le3a\(1));

-- Location: PIN_E5,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\k33[0]~I\ : cycloneii_io
-- pragma translate_off
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
	padio => ww_k33(0),
	combout => \k33~combout\(0));

-- Location: LCCOMB_X8_Y12_N16
\Mult8|auto_generated|le3a[0]\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mult8|auto_generated|le3a\(0) = LCELL(\k33~combout\(1) $ (((\k33~combout\(0) & p3_reg(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \k33~combout\(1),
	datac => \k33~combout\(0),
	datad => p3_reg(0),
	combout => \Mult8|auto_generated|le3a\(0));

-- Location: LCCOMB_X12_Y13_N14
\c3[1]~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \c3[1]~6_combout\ = (\Add4~2_combout\ & ((\Mult8|auto_generated|op_3~2_combout\ & (\c3[0]~5\ & VCC)) # (!\Mult8|auto_generated|op_3~2_combout\ & (!\c3[0]~5\)))) # (!\Add4~2_combout\ & ((\Mult8|auto_generated|op_3~2_combout\ & (!\c3[0]~5\)) # 
-- (!\Mult8|auto_generated|op_3~2_combout\ & ((\c3[0]~5\) # (GND)))))
-- \c3[1]~7\ = CARRY((\Add4~2_combout\ & (!\Mult8|auto_generated|op_3~2_combout\ & !\c3[0]~5\)) # (!\Add4~2_combout\ & ((!\c3[0]~5\) # (!\Mult8|auto_generated|op_3~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Add4~2_combout\,
	datab => \Mult8|auto_generated|op_3~2_combout\,
	datad => VCC,
	cin => \c3[0]~5\,
	combout => \c3[1]~6_combout\,
	cout => \c3[1]~7\);

-- Location: LCFF_X12_Y13_N15
\c3[1]~reg0\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \c3[1]~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \c3[1]~reg0_regout\);

-- Location: PIN_C4,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\k23[2]~I\ : cycloneii_io
-- pragma translate_off
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
	padio => ww_k23(2),
	combout => \k23~combout\(2));

-- Location: PIN_F3,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\k23[3]~I\ : cycloneii_io
-- pragma translate_off
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
	padio => ww_k23(3),
	combout => \k23~combout\(3));

-- Location: LCCOMB_X8_Y13_N4
\Mult7|auto_generated|le4a[0]\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mult7|auto_generated|le4a\(0) = LCELL(\k23~combout\(3) $ (((\k23~combout\(1) & ((\k23~combout\(2)) # (p2_reg(0)))) # (!\k23~combout\(1) & (\k23~combout\(2) & p2_reg(0))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001111001111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \k23~combout\(1),
	datab => \k23~combout\(2),
	datac => \k23~combout\(3),
	datad => p2_reg(0),
	combout => \Mult7|auto_generated|le4a\(0));

-- Location: PIN_B6,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\k23[0]~I\ : cycloneii_io
-- pragma translate_off
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
	padio => ww_k23(0),
	combout => \k23~combout\(0));

-- Location: LCCOMB_X8_Y13_N2
\Mult7|auto_generated|le3a[1]\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mult7|auto_generated|le3a\(1) = LCELL((\k23~combout\(0) & (\k23~combout\(1) $ (((p2_reg(1)))))) # (!\k23~combout\(0) & (\k23~combout\(1) & (!p2_reg(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101001010100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \k23~combout\(1),
	datab => p2_reg(0),
	datac => \k23~combout\(0),
	datad => p2_reg(1),
	combout => \Mult7|auto_generated|le3a\(1));

-- Location: PIN_C1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\k23[1]~I\ : cycloneii_io
-- pragma translate_off
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
	padio => ww_k23(1),
	combout => \k23~combout\(1));

-- Location: LCCOMB_X8_Y13_N28
\Mult7|auto_generated|op_3~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mult7|auto_generated|op_3~4_combout\ = ((\Mult7|auto_generated|op_1~0_combout\ $ (\Mult7|auto_generated|le4a\(0) $ (!\Mult7|auto_generated|op_3~3\)))) # (GND)
-- \Mult7|auto_generated|op_3~5\ = CARRY((\Mult7|auto_generated|op_1~0_combout\ & ((\Mult7|auto_generated|le4a\(0)) # (!\Mult7|auto_generated|op_3~3\))) # (!\Mult7|auto_generated|op_1~0_combout\ & (\Mult7|auto_generated|le4a\(0) & 
-- !\Mult7|auto_generated|op_3~3\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Mult7|auto_generated|op_1~0_combout\,
	datab => \Mult7|auto_generated|le4a\(0),
	datad => VCC,
	cin => \Mult7|auto_generated|op_3~3\,
	combout => \Mult7|auto_generated|op_3~4_combout\,
	cout => \Mult7|auto_generated|op_3~5\);

-- Location: LCCOMB_X13_Y13_N18
\Mult6|auto_generated|le3a[1]\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mult6|auto_generated|le3a\(1) = LCELL((\k13~combout\(0) & (\k13~combout\(1) $ ((p1_reg(1))))) # (!\k13~combout\(0) & (\k13~combout\(1) & ((!p1_reg(0))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100100001101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \k13~combout\(1),
	datab => \k13~combout\(0),
	datac => p1_reg(1),
	datad => p1_reg(0),
	combout => \Mult6|auto_generated|le3a\(1));

-- Location: LCCOMB_X13_Y13_N24
\Mult6|auto_generated|op_3~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mult6|auto_generated|op_3~2_combout\ = (\Mult6|auto_generated|le3a\(1) & (!\Mult6|auto_generated|op_3~1\)) # (!\Mult6|auto_generated|le3a\(1) & ((\Mult6|auto_generated|op_3~1\) # (GND)))
-- \Mult6|auto_generated|op_3~3\ = CARRY((!\Mult6|auto_generated|op_3~1\) # (!\Mult6|auto_generated|le3a\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \Mult6|auto_generated|le3a\(1),
	datad => VCC,
	cin => \Mult6|auto_generated|op_3~1\,
	combout => \Mult6|auto_generated|op_3~2_combout\,
	cout => \Mult6|auto_generated|op_3~3\);

-- Location: LCCOMB_X12_Y13_N26
\Add4~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add4~4_combout\ = ((\Mult6|auto_generated|op_3~4_combout\ $ (\Mult7|auto_generated|op_3~4_combout\ $ (!\Add4~3\)))) # (GND)
-- \Add4~5\ = CARRY((\Mult6|auto_generated|op_3~4_combout\ & ((\Mult7|auto_generated|op_3~4_combout\) # (!\Add4~3\))) # (!\Mult6|auto_generated|op_3~4_combout\ & (\Mult7|auto_generated|op_3~4_combout\ & !\Add4~3\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Mult6|auto_generated|op_3~4_combout\,
	datab => \Mult7|auto_generated|op_3~4_combout\,
	datad => VCC,
	cin => \Add4~3\,
	combout => \Add4~4_combout\,
	cout => \Add4~5\);

-- Location: LCCOMB_X12_Y13_N16
\c3[2]~8\ : cycloneii_lcell_comb
-- Equation(s):
-- \c3[2]~8_combout\ = ((\Mult8|auto_generated|op_3~4_combout\ $ (\Add4~4_combout\ $ (!\c3[1]~7\)))) # (GND)
-- \c3[2]~9\ = CARRY((\Mult8|auto_generated|op_3~4_combout\ & ((\Add4~4_combout\) # (!\c3[1]~7\))) # (!\Mult8|auto_generated|op_3~4_combout\ & (\Add4~4_combout\ & !\c3[1]~7\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Mult8|auto_generated|op_3~4_combout\,
	datab => \Add4~4_combout\,
	datad => VCC,
	cin => \c3[1]~7\,
	combout => \c3[2]~8_combout\,
	cout => \c3[2]~9\);

-- Location: LCFF_X12_Y13_N17
\c3[2]~reg0\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \c3[2]~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \c3[2]~reg0_regout\);

-- Location: PIN_A12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\k13[3]~I\ : cycloneii_io
-- pragma translate_off
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
	padio => ww_k13(3),
	combout => \k13~combout\(3));

-- Location: LCCOMB_X13_Y13_N14
\Mult6|auto_generated|cs1a[1]~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mult6|auto_generated|cs1a[1]~0_combout\ = \k13~combout\(3) $ (((\k13~combout\(2) & \k13~combout\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \k13~combout\(2),
	datac => \k13~combout\(3),
	datad => \k13~combout\(1),
	combout => \Mult6|auto_generated|cs1a[1]~0_combout\);

-- Location: LCCOMB_X13_Y13_N30
\Mult6|auto_generated|le4a[1]\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mult6|auto_generated|le4a\(1) = LCELL((\Mult6|auto_generated|cs2a[1]~0_combout\ & ((\Mult6|auto_generated|cs1a[1]~0_combout\ $ (p1_reg(1))))) # (!\Mult6|auto_generated|cs2a[1]~0_combout\ & (!p1_reg(0) & (\Mult6|auto_generated|cs1a[1]~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001101010110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mult6|auto_generated|cs2a[1]~0_combout\,
	datab => p1_reg(0),
	datac => \Mult6|auto_generated|cs1a[1]~0_combout\,
	datad => p1_reg(1),
	combout => \Mult6|auto_generated|le4a\(1));

-- Location: LCCOMB_X13_Y13_N6
\Mult6|auto_generated|le3a[3]\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mult6|auto_generated|le3a\(3) = LCELL((\k13~combout\(0) & (p1_reg(3) $ (((\k13~combout\(1)))))) # (!\k13~combout\(0) & (((!p1_reg(2) & \k13~combout\(1))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100011110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => p1_reg(3),
	datab => \k13~combout\(0),
	datac => p1_reg(2),
	datad => \k13~combout\(1),
	combout => \Mult6|auto_generated|le3a\(3));

-- Location: LCCOMB_X10_Y13_N2
\Mult6|auto_generated|le3a[2]\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mult6|auto_generated|le3a\(2) = LCELL((\k13~combout\(0) & (\k13~combout\(1) $ (((p1_reg(2)))))) # (!\k13~combout\(0) & (\k13~combout\(1) & (!p1_reg(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100011010001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \k13~combout\(1),
	datab => \k13~combout\(0),
	datac => p1_reg(1),
	datad => p1_reg(2),
	combout => \Mult6|auto_generated|le3a\(2));

-- Location: LCCOMB_X13_Y13_N0
\Mult6|auto_generated|op_1~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mult6|auto_generated|op_1~0_combout\ = (\Mult6|auto_generated|cs1a[1]~0_combout\ & (\Mult6|auto_generated|le3a\(2) $ (VCC))) # (!\Mult6|auto_generated|cs1a[1]~0_combout\ & (\Mult6|auto_generated|le3a\(2) & VCC))
-- \Mult6|auto_generated|op_1~1\ = CARRY((\Mult6|auto_generated|cs1a[1]~0_combout\ & \Mult6|auto_generated|le3a\(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mult6|auto_generated|cs1a[1]~0_combout\,
	datab => \Mult6|auto_generated|le3a\(2),
	datad => VCC,
	combout => \Mult6|auto_generated|op_1~0_combout\,
	cout => \Mult6|auto_generated|op_1~1\);

-- Location: LCCOMB_X13_Y13_N2
\Mult6|auto_generated|op_1~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mult6|auto_generated|op_1~2_combout\ = \Mult6|auto_generated|op_1~1\ $ (\Mult6|auto_generated|le3a\(3))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \Mult6|auto_generated|le3a\(3),
	cin => \Mult6|auto_generated|op_1~1\,
	combout => \Mult6|auto_generated|op_1~2_combout\);

-- Location: LCCOMB_X13_Y13_N28
\Mult6|auto_generated|op_3~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mult6|auto_generated|op_3~6_combout\ = \Mult6|auto_generated|le4a\(1) $ (\Mult6|auto_generated|op_3~5\ $ (\Mult6|auto_generated|op_1~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100111100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \Mult6|auto_generated|le4a\(1),
	datad => \Mult6|auto_generated|op_1~2_combout\,
	cin => \Mult6|auto_generated|op_3~5\,
	combout => \Mult6|auto_generated|op_3~6_combout\);

-- Location: LCCOMB_X7_Y13_N14
\Mult7|auto_generated|le3a[3]\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mult7|auto_generated|le3a\(3) = LCELL((\k23~combout\(0) & (\k23~combout\(1) $ (((p2_reg(3)))))) # (!\k23~combout\(0) & (\k23~combout\(1) & (!p2_reg(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100011010001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \k23~combout\(1),
	datab => \k23~combout\(0),
	datac => p2_reg(2),
	datad => p2_reg(3),
	combout => \Mult7|auto_generated|le3a\(3));

-- Location: LCCOMB_X7_Y13_N24
\Mult7|auto_generated|le3a[2]\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mult7|auto_generated|le3a\(2) = LCELL((\k23~combout\(0) & (\k23~combout\(1) $ (((p2_reg(2)))))) # (!\k23~combout\(0) & (\k23~combout\(1) & (!p2_reg(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100011010001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \k23~combout\(1),
	datab => \k23~combout\(0),
	datac => p2_reg(1),
	datad => p2_reg(2),
	combout => \Mult7|auto_generated|le3a\(2));

-- Location: LCCOMB_X8_Y13_N12
\Mult7|auto_generated|op_1~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mult7|auto_generated|op_1~2_combout\ = \Mult7|auto_generated|op_1~1\ $ (\Mult7|auto_generated|le3a\(3))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \Mult7|auto_generated|le3a\(3),
	cin => \Mult7|auto_generated|op_1~1\,
	combout => \Mult7|auto_generated|op_1~2_combout\);

-- Location: LCCOMB_X8_Y13_N30
\Mult7|auto_generated|op_3~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mult7|auto_generated|op_3~6_combout\ = \Mult7|auto_generated|le4a\(1) $ (\Mult7|auto_generated|op_3~5\ $ (\Mult7|auto_generated|op_1~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010101011010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Mult7|auto_generated|le4a\(1),
	datad => \Mult7|auto_generated|op_1~2_combout\,
	cin => \Mult7|auto_generated|op_3~5\,
	combout => \Mult7|auto_generated|op_3~6_combout\);

-- Location: LCCOMB_X12_Y13_N28
\Add4~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add4~6_combout\ = \Mult6|auto_generated|op_3~6_combout\ $ (\Add4~5\ $ (\Mult7|auto_generated|op_3~6_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100111100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \Mult6|auto_generated|op_3~6_combout\,
	datad => \Mult7|auto_generated|op_3~6_combout\,
	cin => \Add4~5\,
	combout => \Add4~6_combout\);

-- Location: LCCOMB_X12_Y13_N18
\c3[3]~10\ : cycloneii_lcell_comb
-- Equation(s):
-- \c3[3]~10_combout\ = \Mult8|auto_generated|op_3~6_combout\ $ (\c3[2]~9\ $ (\Add4~6_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010101011010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Mult8|auto_generated|op_3~6_combout\,
	datad => \Add4~6_combout\,
	cin => \c3[2]~9\,
	combout => \c3[3]~10_combout\);

-- Location: LCFF_X12_Y13_N19
\c3[3]~reg0\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \c3[3]~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \c3[3]~reg0_regout\);

-- Location: PIN_D6,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\c1[0]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \c1[0]~reg0_regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_c1(0));

-- Location: PIN_C5,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\c1[1]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \c1[1]~reg0_regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_c1(1));

-- Location: PIN_A3,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\c1[2]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \c1[2]~reg0_regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_c1(2));

-- Location: PIN_B3,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\c1[3]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \c1[3]~reg0_regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_c1(3));

-- Location: PIN_E6,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\c2[0]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \c2[0]~reg0_regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_c2(0));

-- Location: PIN_B5,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\c2[1]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \c2[1]~reg0_regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_c2(1));

-- Location: PIN_L8,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\c2[2]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \c2[2]~reg0_regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_c2(2));

-- Location: PIN_C6,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\c2[3]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \c2[3]~reg0_regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_c2(3));

-- Location: PIN_G11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\c3[0]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \c3[0]~reg0_regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_c3(0));

-- Location: PIN_C11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\c3[1]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \c3[1]~reg0_regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_c3(1));

-- Location: PIN_A11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\c3[2]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \c3[2]~reg0_regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_c3(2));

-- Location: PIN_B7,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\c3[3]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \c3[3]~reg0_regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_c3(3));
END structure;


