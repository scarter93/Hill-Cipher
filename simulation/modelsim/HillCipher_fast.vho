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

-- DATE "01/11/2016 16:05:07"

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

ENTITY 	HillCipher IS
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
END HillCipher;

-- Design Ports Information
-- c1[0]	=>  Location: PIN_J11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- c1[1]	=>  Location: PIN_G12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- c1[2]	=>  Location: PIN_F16,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- c1[3]	=>  Location: PIN_A13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- c2[0]	=>  Location: PIN_F7,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- c2[1]	=>  Location: PIN_D10,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- c2[2]	=>  Location: PIN_R10,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- c2[3]	=>  Location: PIN_C13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- c3[0]	=>  Location: PIN_C11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- c3[1]	=>  Location: PIN_A7,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- c3[2]	=>  Location: PIN_G11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- c3[3]	=>  Location: PIN_D13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- clk	=>  Location: PIN_H2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- k31[1]	=>  Location: PIN_B10,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- k31[0]	=>  Location: PIN_A10,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- k31[3]	=>  Location: PIN_B7,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- k31[2]	=>  Location: PIN_H1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- k32[1]	=>  Location: PIN_J2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- k32[0]	=>  Location: PIN_J1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- k32[3]	=>  Location: PIN_E14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- k32[2]	=>  Location: PIN_C14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- k33[1]	=>  Location: PIN_E16,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- k33[0]	=>  Location: PIN_D14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- k33[3]	=>  Location: PIN_B11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- k33[2]	=>  Location: PIN_B14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- p3[0]	=>  Location: PIN_F9,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- k11[1]	=>  Location: PIN_A9,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- k11[0]	=>  Location: PIN_A6,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- k21[1]	=>  Location: PIN_C4,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- k21[0]	=>  Location: PIN_R11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- p3[1]	=>  Location: PIN_F8,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- p3[2]	=>  Location: PIN_D8,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- k11[3]	=>  Location: PIN_B6,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- k11[2]	=>  Location: PIN_G6,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- k21[3]	=>  Location: PIN_G7,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- k21[2]	=>  Location: PIN_D6,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- p3[3]	=>  Location: PIN_F10,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- k12[1]	=>  Location: PIN_G13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- k12[0]	=>  Location: PIN_G10,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- k22[1]	=>  Location: PIN_D15,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- k22[0]	=>  Location: PIN_J12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- k12[3]	=>  Location: PIN_H13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- k12[2]	=>  Location: PIN_L16,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- k22[3]	=>  Location: PIN_D16,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- k22[2]	=>  Location: PIN_B12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- k13[1]	=>  Location: PIN_G16,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- k13[0]	=>  Location: PIN_B13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- k23[1]	=>  Location: PIN_A12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- k23[0]	=>  Location: PIN_A11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- k13[3]	=>  Location: PIN_C12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- k13[2]	=>  Location: PIN_G15,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- k23[3]	=>  Location: PIN_L14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- k23[2]	=>  Location: PIN_H12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- p1[0]	=>  Location: PIN_K15,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- p2[0]	=>  Location: PIN_D11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- p1[1]	=>  Location: PIN_A14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- p2[1]	=>  Location: PIN_H11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- p1[2]	=>  Location: PIN_B9,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- p2[2]	=>  Location: PIN_K16,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- p1[3]	=>  Location: PIN_A8,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- p2[3]	=>  Location: PIN_F15,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default


ARCHITECTURE structure OF HillCipher IS
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
SIGNAL \inst1|inst1|lpm_mult_component3|auto_generated|op_1~0_combout\ : std_logic;
SIGNAL \inst1|inst2|lpm_mult_component3|auto_generated|op_1~4_combout\ : std_logic;
SIGNAL \inst1|inst3|lpm_mult_component3|auto_generated|op_1~0_combout\ : std_logic;
SIGNAL \inst1|inst3|lpm_mult_component3|auto_generated|op_1~2_combout\ : std_logic;
SIGNAL \inst1|inst1|lpm_mult_component2|auto_generated|op_1~0_combout\ : std_logic;
SIGNAL \inst1|inst1|lpm_mult_component2|auto_generated|op_1~1\ : std_logic;
SIGNAL \inst1|inst1|lpm_mult_component2|auto_generated|op_1~2_combout\ : std_logic;
SIGNAL \inst1|inst1|lpm_mult_component2|auto_generated|op_1~3\ : std_logic;
SIGNAL \inst1|inst1|lpm_add_compontent1|auto_generated|pipeline_dffe[1]~6_combout\ : std_logic;
SIGNAL \inst1|inst1|lpm_mult_component2|auto_generated|op_1~4_combout\ : std_logic;
SIGNAL \inst1|inst1|lpm_mult_component2|auto_generated|op_1~5\ : std_logic;
SIGNAL \inst1|inst1|lpm_add_compontent1|auto_generated|pipeline_dffe[2]~8_combout\ : std_logic;
SIGNAL \inst1|inst1|lpm_mult_component2|auto_generated|op_1~6_combout\ : std_logic;
SIGNAL \inst1|inst2|lpm_mult_component1|auto_generated|op_1~0_combout\ : std_logic;
SIGNAL \inst1|inst2|lpm_add_compontent1|auto_generated|pipeline_dffe[0]~4_combout\ : std_logic;
SIGNAL \inst1|inst2|lpm_mult_component1|auto_generated|op_1~2_combout\ : std_logic;
SIGNAL \inst1|inst2|lpm_mult_component2|auto_generated|op_1~3\ : std_logic;
SIGNAL \inst1|inst2|lpm_add_compontent1|auto_generated|pipeline_dffe[1]~6_combout\ : std_logic;
SIGNAL \inst1|inst2|lpm_mult_component1|auto_generated|op_1~5\ : std_logic;
SIGNAL \inst1|inst2|lpm_mult_component2|auto_generated|op_1~4_combout\ : std_logic;
SIGNAL \inst1|inst2|lpm_mult_component2|auto_generated|op_1~5\ : std_logic;
SIGNAL \inst1|inst2|lpm_add_compontent1|auto_generated|pipeline_dffe[2]~9\ : std_logic;
SIGNAL \inst1|inst2|lpm_mult_component1|auto_generated|op_1~6_combout\ : std_logic;
SIGNAL \inst1|inst2|lpm_mult_component2|auto_generated|op_1~6_combout\ : std_logic;
SIGNAL \inst1|inst2|lpm_add_compontent1|auto_generated|pipeline_dffe[3]~10_combout\ : std_logic;
SIGNAL \inst1|inst3|lpm_mult_component2|auto_generated|op_1~0_combout\ : std_logic;
SIGNAL \inst1|inst3|lpm_mult_component2|auto_generated|op_1~2_combout\ : std_logic;
SIGNAL \inst1|inst3|lpm_mult_component2|auto_generated|op_1~4_combout\ : std_logic;
SIGNAL \inst1|inst3|lpm_add_compontent1|auto_generated|pipeline_dffe[2]~8_combout\ : std_logic;
SIGNAL \inst1|inst1|lpm_mult_component3|auto_generated|dffe3~regout\ : std_logic;
SIGNAL \inst1|inst1|lpm_mult_component3|auto_generated|dffe6~regout\ : std_logic;
SIGNAL \inst1|inst2|lpm_mult_component3|auto_generated|dffe4~regout\ : std_logic;
SIGNAL \inst1|inst2|lpm_mult_component3|auto_generated|dffe7~regout\ : std_logic;
SIGNAL \inst1|inst3|lpm_mult_component3|auto_generated|dffe3~regout\ : std_logic;
SIGNAL \inst1|inst3|lpm_mult_component3|auto_generated|dffe6~regout\ : std_logic;
SIGNAL \inst1|inst3|lpm_mult_component3|auto_generated|dffe9~regout\ : std_logic;
SIGNAL \inst1|inst1|lpm_mult_component3|auto_generated|w70w[0]~0_combout\ : std_logic;
SIGNAL \inst1|inst1|lpm_mult_component1|auto_generated|dffe4~regout\ : std_logic;
SIGNAL \inst1|inst1|lpm_mult_component2|auto_generated|dffe4~regout\ : std_logic;
SIGNAL \inst1|inst1|lpm_mult_component2|auto_generated|dffe3~regout\ : std_logic;
SIGNAL \inst1|inst1|lpm_mult_component2|auto_generated|dffe5~regout\ : std_logic;
SIGNAL \inst1|inst1|lpm_mult_component3|auto_generated|w117w[0]~0_combout\ : std_logic;
SIGNAL \inst1|inst1|lpm_mult_component1|auto_generated|dffe6~regout\ : std_logic;
SIGNAL \inst1|inst1|lpm_mult_component2|auto_generated|dffe7~regout\ : std_logic;
SIGNAL \inst1|inst1|lpm_mult_component2|auto_generated|dffe6~regout\ : std_logic;
SIGNAL \inst1|inst1|lpm_mult_component3|auto_generated|cs2a[1]~0_combout\ : std_logic;
SIGNAL \inst1|inst1|lpm_mult_component2|auto_generated|dffe9~regout\ : std_logic;
SIGNAL \inst1|inst1|lpm_mult_component2|auto_generated|dffe8~regout\ : std_logic;
SIGNAL \inst1|inst2|lpm_mult_component1|auto_generated|dffe3~regout\ : std_logic;
SIGNAL \inst1|inst2|lpm_mult_component2|auto_generated|dffe3~regout\ : std_logic;
SIGNAL \inst1|inst2|lpm_mult_component1|auto_generated|dffe6~regout\ : std_logic;
SIGNAL \inst1|inst2|lpm_mult_component2|auto_generated|dffe7~regout\ : std_logic;
SIGNAL \inst1|inst2|lpm_mult_component2|auto_generated|dffe6~regout\ : std_logic;
SIGNAL \inst1|inst2|lpm_mult_component3|auto_generated|cs2a[1]~0_combout\ : std_logic;
SIGNAL \inst1|inst2|lpm_mult_component1|auto_generated|dffe9~regout\ : std_logic;
SIGNAL \inst1|inst2|lpm_mult_component1|auto_generated|dffe8~regout\ : std_logic;
SIGNAL \inst1|inst2|lpm_mult_component2|auto_generated|dffe9~regout\ : std_logic;
SIGNAL \inst1|inst2|lpm_mult_component2|auto_generated|dffe8~regout\ : std_logic;
SIGNAL \inst1|inst3|lpm_mult_component3|auto_generated|w70w[0]~0_combout\ : std_logic;
SIGNAL \inst1|inst3|lpm_mult_component1|auto_generated|dffe4~regout\ : std_logic;
SIGNAL \inst1|inst3|lpm_mult_component2|auto_generated|dffe3~regout\ : std_logic;
SIGNAL \inst1|inst3|lpm_mult_component1|auto_generated|dffe5~regout\ : std_logic;
SIGNAL \inst1|inst3|lpm_mult_component2|auto_generated|dffe5~regout\ : std_logic;
SIGNAL \inst1|inst3|lpm_mult_component3|auto_generated|w117w[0]~0_combout\ : std_logic;
SIGNAL \inst1|inst3|lpm_mult_component1|auto_generated|dffe6~regout\ : std_logic;
SIGNAL \inst1|inst3|lpm_mult_component2|auto_generated|dffe6~regout\ : std_logic;
SIGNAL \inst1|inst3|lpm_mult_component3|auto_generated|w70w[3]~3_combout\ : std_logic;
SIGNAL \inst1|inst3|lpm_mult_component3|auto_generated|op_2~2_combout\ : std_logic;
SIGNAL \inst1|inst3|lpm_mult_component3|auto_generated|cs2a[1]~0_combout\ : std_logic;
SIGNAL \inst1|inst1|lpm_mult_component2|auto_generated|w70w[0]~0_combout\ : std_logic;
SIGNAL \inst1|inst1|lpm_mult_component2|auto_generated|w70w[1]~1_combout\ : std_logic;
SIGNAL \inst1|inst1|lpm_mult_component1|auto_generated|w117w[0]~0_combout\ : std_logic;
SIGNAL \inst1|inst1|lpm_mult_component2|auto_generated|w70w[2]~2_combout\ : std_logic;
SIGNAL \inst1|inst1|lpm_mult_component2|auto_generated|cs1a[1]~0_combout\ : std_logic;
SIGNAL \inst1|inst1|lpm_mult_component2|auto_generated|w117w[0]~0_combout\ : std_logic;
SIGNAL \inst1|inst1|lpm_mult_component1|auto_generated|cs2a[1]~0_combout\ : std_logic;
SIGNAL \inst1|inst1|lpm_mult_component2|auto_generated|w70w[3]~3_combout\ : std_logic;
SIGNAL \inst1|inst1|lpm_mult_component2|auto_generated|op_2~2_combout\ : std_logic;
SIGNAL \inst1|inst1|lpm_mult_component2|auto_generated|cs2a[1]~0_combout\ : std_logic;
SIGNAL \inst1|inst1|lpm_mult_component2|auto_generated|w117w[1]~1_combout\ : std_logic;
SIGNAL \inst1|inst2|lpm_mult_component1|auto_generated|w70w[0]~0_combout\ : std_logic;
SIGNAL \inst1|inst2|lpm_mult_component2|auto_generated|w70w[0]~0_combout\ : std_logic;
SIGNAL \inst1|inst2|lpm_mult_component1|auto_generated|cs1a[1]~0_combout\ : std_logic;
SIGNAL \inst1|inst2|lpm_mult_component1|auto_generated|w117w[0]~0_combout\ : std_logic;
SIGNAL \inst1|inst2|lpm_mult_component2|auto_generated|w70w[2]~2_combout\ : std_logic;
SIGNAL \inst1|inst2|lpm_mult_component2|auto_generated|cs1a[1]~0_combout\ : std_logic;
SIGNAL \inst1|inst2|lpm_mult_component2|auto_generated|w117w[0]~0_combout\ : std_logic;
SIGNAL \inst1|inst2|lpm_mult_component1|auto_generated|w70w[3]~3_combout\ : std_logic;
SIGNAL \inst1|inst2|lpm_mult_component1|auto_generated|op_2~2_combout\ : std_logic;
SIGNAL \inst1|inst2|lpm_mult_component1|auto_generated|cs2a[1]~0_combout\ : std_logic;
SIGNAL \inst1|inst2|lpm_mult_component1|auto_generated|w117w[1]~1_combout\ : std_logic;
SIGNAL \inst1|inst2|lpm_mult_component2|auto_generated|w70w[3]~3_combout\ : std_logic;
SIGNAL \inst1|inst2|lpm_mult_component2|auto_generated|op_2~2_combout\ : std_logic;
SIGNAL \inst1|inst2|lpm_mult_component2|auto_generated|cs2a[1]~0_combout\ : std_logic;
SIGNAL \inst1|inst2|lpm_mult_component2|auto_generated|w117w[1]~1_combout\ : std_logic;
SIGNAL \inst1|inst3|lpm_mult_component2|auto_generated|w70w[0]~0_combout\ : std_logic;
SIGNAL \inst1|inst3|lpm_mult_component1|auto_generated|w70w[1]~1_combout\ : std_logic;
SIGNAL \inst1|inst3|lpm_mult_component2|auto_generated|w70w[1]~1_combout\ : std_logic;
SIGNAL \inst1|inst3|lpm_mult_component1|auto_generated|w117w[0]~0_combout\ : std_logic;
SIGNAL \inst1|inst3|lpm_mult_component2|auto_generated|w117w[0]~0_combout\ : std_logic;
SIGNAL \inst1|inst3|lpm_mult_component1|auto_generated|cs2a[1]~0_combout\ : std_logic;
SIGNAL \inst1|inst2|lpm_mult_component3|auto_generated|op_2~3_combout\ : std_logic;
SIGNAL \inst1|inst1|lpm_mult_component2|auto_generated|op_2~3_combout\ : std_logic;
SIGNAL \inst1|inst2|lpm_mult_component2|auto_generated|op_2~3_combout\ : std_logic;
SIGNAL \inst1|p2_reg|dffs[3]~feeder_combout\ : std_logic;
SIGNAL \clk~combout\ : std_logic;
SIGNAL \clk~clkctrl_outclk\ : std_logic;
SIGNAL \inst1|p1_reg|dffs[0]~feeder_combout\ : std_logic;
SIGNAL \inst1|inst1|lpm_mult_component1|auto_generated|w70w[0]~0_combout\ : std_logic;
SIGNAL \inst1|inst1|lpm_mult_component1|auto_generated|dffe3~regout\ : std_logic;
SIGNAL \inst1|inst1|lpm_mult_component1|auto_generated|op_1~0_combout\ : std_logic;
SIGNAL \inst1|inst1|lpm_add_compontent1|auto_generated|pipeline_dffe[0]~4_combout\ : std_logic;
SIGNAL \inst1|inst1|lpm_add_compontent2|auto_generated|pipeline_dffe[0]~4_combout\ : std_logic;
SIGNAL \inst1|c1_reg|dffs[0]~feeder_combout\ : std_logic;
SIGNAL \inst1|inst1|lpm_mult_component3|auto_generated|w70w[1]~1_combout\ : std_logic;
SIGNAL \inst1|inst1|lpm_mult_component3|auto_generated|dffe5~regout\ : std_logic;
SIGNAL \inst1|inst1|lpm_mult_component3|auto_generated|dffe4~regout\ : std_logic;
SIGNAL \inst1|inst1|lpm_mult_component3|auto_generated|op_1~1\ : std_logic;
SIGNAL \inst1|inst1|lpm_mult_component3|auto_generated|op_1~2_combout\ : std_logic;
SIGNAL \inst1|inst1|lpm_add_compontent2|auto_generated|pipeline_dffe[0]~5\ : std_logic;
SIGNAL \inst1|inst1|lpm_add_compontent2|auto_generated|pipeline_dffe[1]~6_combout\ : std_logic;
SIGNAL \inst1|c1_reg|dffs[1]~feeder_combout\ : std_logic;
SIGNAL \inst1|p3_reg|dffs[2]~feeder_combout\ : std_logic;
SIGNAL \inst1|inst1|lpm_mult_component3|auto_generated|w70w[2]~2_combout\ : std_logic;
SIGNAL \inst1|inst1|lpm_mult_component3|auto_generated|op_2~3_combout\ : std_logic;
SIGNAL \inst1|inst1|lpm_mult_component3|auto_generated|dffe7~regout\ : std_logic;
SIGNAL \inst1|inst1|lpm_mult_component3|auto_generated|op_1~3\ : std_logic;
SIGNAL \inst1|inst1|lpm_mult_component3|auto_generated|op_1~4_combout\ : std_logic;
SIGNAL \inst1|inst1|lpm_add_compontent2|auto_generated|pipeline_dffe[1]~7\ : std_logic;
SIGNAL \inst1|inst1|lpm_add_compontent2|auto_generated|pipeline_dffe[2]~8_combout\ : std_logic;
SIGNAL \inst1|inst1|lpm_mult_component1|auto_generated|cs1a[1]~0_combout\ : std_logic;
SIGNAL \inst1|p1_reg|dffs[1]~feeder_combout\ : std_logic;
SIGNAL \inst1|inst1|lpm_mult_component1|auto_generated|w117w[1]~1_combout\ : std_logic;
SIGNAL \inst1|inst1|lpm_mult_component1|auto_generated|dffe8~regout\ : std_logic;
SIGNAL \inst1|p1_reg|dffs[2]~feeder_combout\ : std_logic;
SIGNAL \inst1|p1_reg|dffs[3]~feeder_combout\ : std_logic;
SIGNAL \inst1|inst1|lpm_mult_component1|auto_generated|w70w[3]~3_combout\ : std_logic;
SIGNAL \inst1|inst1|lpm_mult_component1|auto_generated|w70w[2]~2_combout\ : std_logic;
SIGNAL \inst1|inst1|lpm_mult_component1|auto_generated|op_2~2_combout\ : std_logic;
SIGNAL \inst1|inst1|lpm_mult_component1|auto_generated|dffe9~regout\ : std_logic;
SIGNAL \inst1|inst1|lpm_mult_component1|auto_generated|op_2~3_combout\ : std_logic;
SIGNAL \inst1|inst1|lpm_mult_component1|auto_generated|dffe7~regout\ : std_logic;
SIGNAL \inst1|inst1|lpm_mult_component1|auto_generated|w70w[1]~1_combout\ : std_logic;
SIGNAL \inst1|inst1|lpm_mult_component1|auto_generated|dffe5~regout\ : std_logic;
SIGNAL \inst1|inst1|lpm_mult_component1|auto_generated|op_1~1\ : std_logic;
SIGNAL \inst1|inst1|lpm_mult_component1|auto_generated|op_1~3\ : std_logic;
SIGNAL \inst1|inst1|lpm_mult_component1|auto_generated|op_1~5\ : std_logic;
SIGNAL \inst1|inst1|lpm_mult_component1|auto_generated|op_1~6_combout\ : std_logic;
SIGNAL \inst1|inst1|lpm_mult_component1|auto_generated|op_1~4_combout\ : std_logic;
SIGNAL \inst1|inst1|lpm_mult_component1|auto_generated|op_1~2_combout\ : std_logic;
SIGNAL \inst1|inst1|lpm_add_compontent1|auto_generated|pipeline_dffe[0]~5\ : std_logic;
SIGNAL \inst1|inst1|lpm_add_compontent1|auto_generated|pipeline_dffe[1]~7\ : std_logic;
SIGNAL \inst1|inst1|lpm_add_compontent1|auto_generated|pipeline_dffe[2]~9\ : std_logic;
SIGNAL \inst1|inst1|lpm_add_compontent1|auto_generated|pipeline_dffe[3]~10_combout\ : std_logic;
SIGNAL \inst1|inst1|lpm_mult_component3|auto_generated|cs1a[1]~0_combout\ : std_logic;
SIGNAL \inst1|inst1|lpm_mult_component3|auto_generated|w117w[1]~1_combout\ : std_logic;
SIGNAL \inst1|inst1|lpm_mult_component3|auto_generated|dffe8~regout\ : std_logic;
SIGNAL \inst1|inst1|lpm_mult_component3|auto_generated|w70w[3]~3_combout\ : std_logic;
SIGNAL \inst1|inst1|lpm_mult_component3|auto_generated|op_2~2_combout\ : std_logic;
SIGNAL \inst1|inst1|lpm_mult_component3|auto_generated|dffe9~regout\ : std_logic;
SIGNAL \inst1|inst1|lpm_mult_component3|auto_generated|op_1~5\ : std_logic;
SIGNAL \inst1|inst1|lpm_mult_component3|auto_generated|op_1~6_combout\ : std_logic;
SIGNAL \inst1|inst1|lpm_add_compontent2|auto_generated|pipeline_dffe[2]~9\ : std_logic;
SIGNAL \inst1|inst1|lpm_add_compontent2|auto_generated|pipeline_dffe[3]~10_combout\ : std_logic;
SIGNAL \inst1|inst2|lpm_mult_component3|auto_generated|w70w[0]~0_combout\ : std_logic;
SIGNAL \inst1|inst2|lpm_mult_component3|auto_generated|dffe3~regout\ : std_logic;
SIGNAL \inst1|inst2|lpm_mult_component3|auto_generated|op_1~0_combout\ : std_logic;
SIGNAL \inst1|inst2|lpm_add_compontent2|auto_generated|pipeline_dffe[0]~4_combout\ : std_logic;
SIGNAL \inst1|inst2|lpm_mult_component3|auto_generated|w70w[1]~1_combout\ : std_logic;
SIGNAL \inst1|inst2|lpm_mult_component3|auto_generated|dffe5~regout\ : std_logic;
SIGNAL \inst1|inst2|lpm_mult_component3|auto_generated|op_1~1\ : std_logic;
SIGNAL \inst1|inst2|lpm_mult_component3|auto_generated|op_1~2_combout\ : std_logic;
SIGNAL \inst1|inst2|lpm_add_compontent2|auto_generated|pipeline_dffe[0]~5\ : std_logic;
SIGNAL \inst1|inst2|lpm_add_compontent2|auto_generated|pipeline_dffe[1]~6_combout\ : std_logic;
SIGNAL \inst1|inst2|lpm_mult_component1|auto_generated|w70w[2]~2_combout\ : std_logic;
SIGNAL \inst1|inst2|lpm_mult_component1|auto_generated|op_2~3_combout\ : std_logic;
SIGNAL \inst1|inst2|lpm_mult_component1|auto_generated|dffe7~regout\ : std_logic;
SIGNAL \inst1|inst2|lpm_mult_component1|auto_generated|w70w[1]~1_combout\ : std_logic;
SIGNAL \inst1|inst2|lpm_mult_component1|auto_generated|dffe5~regout\ : std_logic;
SIGNAL \inst1|inst2|lpm_mult_component1|auto_generated|dffe4~regout\ : std_logic;
SIGNAL \inst1|inst2|lpm_mult_component1|auto_generated|op_1~1\ : std_logic;
SIGNAL \inst1|inst2|lpm_mult_component1|auto_generated|op_1~3\ : std_logic;
SIGNAL \inst1|inst2|lpm_mult_component1|auto_generated|op_1~4_combout\ : std_logic;
SIGNAL \inst1|p2_reg|dffs[1]~feeder_combout\ : std_logic;
SIGNAL \inst1|inst2|lpm_mult_component2|auto_generated|w70w[1]~1_combout\ : std_logic;
SIGNAL \inst1|inst2|lpm_mult_component2|auto_generated|dffe5~regout\ : std_logic;
SIGNAL \inst1|inst2|lpm_mult_component2|auto_generated|dffe4~regout\ : std_logic;
SIGNAL \inst1|inst2|lpm_mult_component2|auto_generated|op_1~1\ : std_logic;
SIGNAL \inst1|inst2|lpm_mult_component2|auto_generated|op_1~2_combout\ : std_logic;
SIGNAL \inst1|inst2|lpm_mult_component2|auto_generated|op_1~0_combout\ : std_logic;
SIGNAL \inst1|inst2|lpm_add_compontent1|auto_generated|pipeline_dffe[0]~5\ : std_logic;
SIGNAL \inst1|inst2|lpm_add_compontent1|auto_generated|pipeline_dffe[1]~7\ : std_logic;
SIGNAL \inst1|inst2|lpm_add_compontent1|auto_generated|pipeline_dffe[2]~8_combout\ : std_logic;
SIGNAL \inst1|inst2|lpm_add_compontent2|auto_generated|pipeline_dffe[1]~7\ : std_logic;
SIGNAL \inst1|inst2|lpm_add_compontent2|auto_generated|pipeline_dffe[2]~8_combout\ : std_logic;
SIGNAL \inst1|c2_reg|dffs[2]~feeder_combout\ : std_logic;
SIGNAL \inst1|inst2|lpm_mult_component3|auto_generated|cs1a[1]~0_combout\ : std_logic;
SIGNAL \inst1|inst2|lpm_mult_component3|auto_generated|w117w[1]~1_combout\ : std_logic;
SIGNAL \inst1|inst2|lpm_mult_component3|auto_generated|dffe8~regout\ : std_logic;
SIGNAL \inst1|inst2|lpm_mult_component3|auto_generated|w70w[2]~2_combout\ : std_logic;
SIGNAL \inst1|inst2|lpm_mult_component3|auto_generated|w70w[3]~3_combout\ : std_logic;
SIGNAL \inst1|inst2|lpm_mult_component3|auto_generated|op_2~2_combout\ : std_logic;
SIGNAL \inst1|inst2|lpm_mult_component3|auto_generated|dffe9~regout\ : std_logic;
SIGNAL \inst1|inst2|lpm_mult_component3|auto_generated|w117w[0]~0_combout\ : std_logic;
SIGNAL \inst1|inst2|lpm_mult_component3|auto_generated|dffe6~regout\ : std_logic;
SIGNAL \inst1|inst2|lpm_mult_component3|auto_generated|op_1~3\ : std_logic;
SIGNAL \inst1|inst2|lpm_mult_component3|auto_generated|op_1~5\ : std_logic;
SIGNAL \inst1|inst2|lpm_mult_component3|auto_generated|op_1~6_combout\ : std_logic;
SIGNAL \inst1|inst2|lpm_add_compontent2|auto_generated|pipeline_dffe[2]~9\ : std_logic;
SIGNAL \inst1|inst2|lpm_add_compontent2|auto_generated|pipeline_dffe[3]~10_combout\ : std_logic;
SIGNAL \inst1|inst3|lpm_mult_component1|auto_generated|w70w[0]~0_combout\ : std_logic;
SIGNAL \inst1|inst3|lpm_mult_component1|auto_generated|dffe3~regout\ : std_logic;
SIGNAL \inst1|inst3|lpm_mult_component1|auto_generated|op_1~0_combout\ : std_logic;
SIGNAL \inst1|inst3|lpm_add_compontent1|auto_generated|pipeline_dffe[0]~4_combout\ : std_logic;
SIGNAL \inst1|inst3|lpm_add_compontent2|auto_generated|pipeline_dffe[0]~4_combout\ : std_logic;
SIGNAL \inst1|inst3|lpm_mult_component1|auto_generated|op_1~1\ : std_logic;
SIGNAL \inst1|inst3|lpm_mult_component1|auto_generated|op_1~2_combout\ : std_logic;
SIGNAL \inst1|inst3|lpm_add_compontent1|auto_generated|pipeline_dffe[0]~5\ : std_logic;
SIGNAL \inst1|inst3|lpm_add_compontent1|auto_generated|pipeline_dffe[1]~6_combout\ : std_logic;
SIGNAL \inst1|inst3|lpm_add_compontent2|auto_generated|pipeline_dffe[0]~5\ : std_logic;
SIGNAL \inst1|inst3|lpm_add_compontent2|auto_generated|pipeline_dffe[1]~6_combout\ : std_logic;
SIGNAL \inst1|inst3|lpm_mult_component3|auto_generated|w70w[2]~2_combout\ : std_logic;
SIGNAL \inst1|inst3|lpm_mult_component3|auto_generated|op_2~3_combout\ : std_logic;
SIGNAL \inst1|inst3|lpm_mult_component3|auto_generated|dffe7~regout\ : std_logic;
SIGNAL \inst1|inst3|lpm_mult_component3|auto_generated|w70w[1]~1_combout\ : std_logic;
SIGNAL \inst1|inst3|lpm_mult_component3|auto_generated|dffe5~regout\ : std_logic;
SIGNAL \inst1|inst3|lpm_mult_component3|auto_generated|dffe4~regout\ : std_logic;
SIGNAL \inst1|inst3|lpm_mult_component3|auto_generated|op_1~1\ : std_logic;
SIGNAL \inst1|inst3|lpm_mult_component3|auto_generated|op_1~3\ : std_logic;
SIGNAL \inst1|inst3|lpm_mult_component3|auto_generated|op_1~4_combout\ : std_logic;
SIGNAL \inst1|inst3|lpm_add_compontent2|auto_generated|pipeline_dffe[1]~7\ : std_logic;
SIGNAL \inst1|inst3|lpm_add_compontent2|auto_generated|pipeline_dffe[2]~8_combout\ : std_logic;
SIGNAL \inst1|c3_reg|dffs[2]~feeder_combout\ : std_logic;
SIGNAL \inst1|inst3|lpm_mult_component2|auto_generated|cs2a[1]~0_combout\ : std_logic;
SIGNAL \inst1|inst3|lpm_mult_component2|auto_generated|cs1a[1]~0_combout\ : std_logic;
SIGNAL \inst1|inst3|lpm_mult_component2|auto_generated|w117w[1]~1_combout\ : std_logic;
SIGNAL \inst1|inst3|lpm_mult_component2|auto_generated|dffe8~regout\ : std_logic;
SIGNAL \inst1|inst3|lpm_mult_component2|auto_generated|w70w[2]~2_combout\ : std_logic;
SIGNAL \inst1|inst3|lpm_mult_component2|auto_generated|w70w[3]~3_combout\ : std_logic;
SIGNAL \inst1|inst3|lpm_mult_component2|auto_generated|op_2~2_combout\ : std_logic;
SIGNAL \inst1|inst3|lpm_mult_component2|auto_generated|dffe9~regout\ : std_logic;
SIGNAL \inst1|inst3|lpm_mult_component2|auto_generated|op_2~3_combout\ : std_logic;
SIGNAL \inst1|inst3|lpm_mult_component2|auto_generated|dffe7~regout\ : std_logic;
SIGNAL \inst1|inst3|lpm_mult_component2|auto_generated|dffe4~regout\ : std_logic;
SIGNAL \inst1|inst3|lpm_mult_component2|auto_generated|op_1~1\ : std_logic;
SIGNAL \inst1|inst3|lpm_mult_component2|auto_generated|op_1~3\ : std_logic;
SIGNAL \inst1|inst3|lpm_mult_component2|auto_generated|op_1~5\ : std_logic;
SIGNAL \inst1|inst3|lpm_mult_component2|auto_generated|op_1~6_combout\ : std_logic;
SIGNAL \inst1|inst3|lpm_mult_component1|auto_generated|cs1a[1]~0_combout\ : std_logic;
SIGNAL \inst1|inst3|lpm_mult_component1|auto_generated|w117w[1]~1_combout\ : std_logic;
SIGNAL \inst1|inst3|lpm_mult_component1|auto_generated|dffe8~regout\ : std_logic;
SIGNAL \inst1|inst3|lpm_mult_component1|auto_generated|w70w[2]~2_combout\ : std_logic;
SIGNAL \inst1|inst3|lpm_mult_component1|auto_generated|w70w[3]~3_combout\ : std_logic;
SIGNAL \inst1|inst3|lpm_mult_component1|auto_generated|op_2~2_combout\ : std_logic;
SIGNAL \inst1|inst3|lpm_mult_component1|auto_generated|dffe9~regout\ : std_logic;
SIGNAL \inst1|inst3|lpm_mult_component1|auto_generated|op_2~3_combout\ : std_logic;
SIGNAL \inst1|inst3|lpm_mult_component1|auto_generated|dffe7~regout\ : std_logic;
SIGNAL \inst1|inst3|lpm_mult_component1|auto_generated|op_1~3\ : std_logic;
SIGNAL \inst1|inst3|lpm_mult_component1|auto_generated|op_1~5\ : std_logic;
SIGNAL \inst1|inst3|lpm_mult_component1|auto_generated|op_1~6_combout\ : std_logic;
SIGNAL \inst1|inst3|lpm_mult_component1|auto_generated|op_1~4_combout\ : std_logic;
SIGNAL \inst1|inst3|lpm_add_compontent1|auto_generated|pipeline_dffe[1]~7\ : std_logic;
SIGNAL \inst1|inst3|lpm_add_compontent1|auto_generated|pipeline_dffe[2]~9\ : std_logic;
SIGNAL \inst1|inst3|lpm_add_compontent1|auto_generated|pipeline_dffe[3]~10_combout\ : std_logic;
SIGNAL \inst1|inst3|lpm_mult_component3|auto_generated|cs1a[1]~0_combout\ : std_logic;
SIGNAL \inst1|inst3|lpm_mult_component3|auto_generated|w117w[1]~1_combout\ : std_logic;
SIGNAL \inst1|inst3|lpm_mult_component3|auto_generated|dffe8~regout\ : std_logic;
SIGNAL \inst1|inst3|lpm_mult_component3|auto_generated|op_1~5\ : std_logic;
SIGNAL \inst1|inst3|lpm_mult_component3|auto_generated|op_1~6_combout\ : std_logic;
SIGNAL \inst1|inst3|lpm_add_compontent2|auto_generated|pipeline_dffe[2]~9\ : std_logic;
SIGNAL \inst1|inst3|lpm_add_compontent2|auto_generated|pipeline_dffe[3]~10_combout\ : std_logic;
SIGNAL \inst1|c3_reg|dffs[3]~feeder_combout\ : std_logic;
SIGNAL \k31~combout\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \k33~combout\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \inst1|inst3|lpm_add_compontent1|auto_generated|pipeline_dffe\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \k13~combout\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \k32~combout\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \p3~combout\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \k23~combout\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \k21~combout\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \inst1|p1_reg|dffs\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \inst1|inst3|lpm_add_compontent2|auto_generated|pipeline_dffe\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \k11~combout\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \k12~combout\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \p1~combout\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \p2~combout\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \k22~combout\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \inst1|inst1|lpm_add_compontent1|auto_generated|pipeline_dffe\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \inst1|p2_reg|dffs\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \inst1|p3_reg|dffs\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \inst1|c1_reg|dffs\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \inst1|c2_reg|dffs\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \inst1|c3_reg|dffs\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \inst1|inst1|lpm_add_compontent2|auto_generated|pipeline_dffe\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \inst1|inst2|lpm_add_compontent1|auto_generated|pipeline_dffe\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \inst1|inst2|lpm_add_compontent2|auto_generated|pipeline_dffe\ : std_logic_vector(3 DOWNTO 0);

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

-- Location: LCCOMB_X17_Y10_N0
\inst1|inst1|lpm_mult_component3|auto_generated|op_1~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst1|inst1|lpm_mult_component3|auto_generated|op_1~0_combout\ = (\inst1|inst1|lpm_mult_component3|auto_generated|dffe3~regout\ & (\inst1|inst1|lpm_mult_component3|auto_generated|dffe4~regout\ $ (VCC))) # 
-- (!\inst1|inst1|lpm_mult_component3|auto_generated|dffe3~regout\ & (\inst1|inst1|lpm_mult_component3|auto_generated|dffe4~regout\ & VCC))
-- \inst1|inst1|lpm_mult_component3|auto_generated|op_1~1\ = CARRY((\inst1|inst1|lpm_mult_component3|auto_generated|dffe3~regout\ & \inst1|inst1|lpm_mult_component3|auto_generated|dffe4~regout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|inst1|lpm_mult_component3|auto_generated|dffe3~regout\,
	datab => \inst1|inst1|lpm_mult_component3|auto_generated|dffe4~regout\,
	datad => VCC,
	combout => \inst1|inst1|lpm_mult_component3|auto_generated|op_1~0_combout\,
	cout => \inst1|inst1|lpm_mult_component3|auto_generated|op_1~1\);

-- Location: LCFF_X14_Y10_N25
\inst1|inst1|lpm_add_compontent1|auto_generated|pipeline_dffe[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \inst1|inst1|lpm_add_compontent1|auto_generated|pipeline_dffe[1]~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst1|inst1|lpm_add_compontent1|auto_generated|pipeline_dffe\(1));

-- Location: LCFF_X14_Y10_N27
\inst1|inst1|lpm_add_compontent1|auto_generated|pipeline_dffe[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \inst1|inst1|lpm_add_compontent1|auto_generated|pipeline_dffe[2]~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst1|inst1|lpm_add_compontent1|auto_generated|pipeline_dffe\(2));

-- Location: LCFF_X18_Y11_N25
\inst1|inst2|lpm_add_compontent1|auto_generated|pipeline_dffe[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \inst1|inst2|lpm_add_compontent1|auto_generated|pipeline_dffe[0]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst1|inst2|lpm_add_compontent1|auto_generated|pipeline_dffe\(0));

-- Location: LCFF_X18_Y11_N27
\inst1|inst2|lpm_add_compontent1|auto_generated|pipeline_dffe[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \inst1|inst2|lpm_add_compontent1|auto_generated|pipeline_dffe[1]~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst1|inst2|lpm_add_compontent1|auto_generated|pipeline_dffe\(1));

-- Location: LCCOMB_X18_Y12_N10
\inst1|inst2|lpm_mult_component3|auto_generated|op_1~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst1|inst2|lpm_mult_component3|auto_generated|op_1~4_combout\ = ((\inst1|inst2|lpm_mult_component3|auto_generated|dffe7~regout\ $ (\inst1|inst2|lpm_mult_component3|auto_generated|dffe6~regout\ $ 
-- (!\inst1|inst2|lpm_mult_component3|auto_generated|op_1~3\)))) # (GND)
-- \inst1|inst2|lpm_mult_component3|auto_generated|op_1~5\ = CARRY((\inst1|inst2|lpm_mult_component3|auto_generated|dffe7~regout\ & ((\inst1|inst2|lpm_mult_component3|auto_generated|dffe6~regout\) # 
-- (!\inst1|inst2|lpm_mult_component3|auto_generated|op_1~3\))) # (!\inst1|inst2|lpm_mult_component3|auto_generated|dffe7~regout\ & (\inst1|inst2|lpm_mult_component3|auto_generated|dffe6~regout\ & !\inst1|inst2|lpm_mult_component3|auto_generated|op_1~3\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|inst2|lpm_mult_component3|auto_generated|dffe7~regout\,
	datab => \inst1|inst2|lpm_mult_component3|auto_generated|dffe6~regout\,
	datad => VCC,
	cin => \inst1|inst2|lpm_mult_component3|auto_generated|op_1~3\,
	combout => \inst1|inst2|lpm_mult_component3|auto_generated|op_1~4_combout\,
	cout => \inst1|inst2|lpm_mult_component3|auto_generated|op_1~5\);

-- Location: LCFF_X18_Y11_N31
\inst1|inst2|lpm_add_compontent1|auto_generated|pipeline_dffe[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \inst1|inst2|lpm_add_compontent1|auto_generated|pipeline_dffe[3]~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst1|inst2|lpm_add_compontent1|auto_generated|pipeline_dffe\(3));

-- Location: LCCOMB_X19_Y12_N4
\inst1|inst3|lpm_mult_component3|auto_generated|op_1~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst1|inst3|lpm_mult_component3|auto_generated|op_1~0_combout\ = (\inst1|inst3|lpm_mult_component3|auto_generated|dffe3~regout\ & (\inst1|inst3|lpm_mult_component3|auto_generated|dffe4~regout\ $ (VCC))) # 
-- (!\inst1|inst3|lpm_mult_component3|auto_generated|dffe3~regout\ & (\inst1|inst3|lpm_mult_component3|auto_generated|dffe4~regout\ & VCC))
-- \inst1|inst3|lpm_mult_component3|auto_generated|op_1~1\ = CARRY((\inst1|inst3|lpm_mult_component3|auto_generated|dffe3~regout\ & \inst1|inst3|lpm_mult_component3|auto_generated|dffe4~regout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|inst3|lpm_mult_component3|auto_generated|dffe3~regout\,
	datab => \inst1|inst3|lpm_mult_component3|auto_generated|dffe4~regout\,
	datad => VCC,
	combout => \inst1|inst3|lpm_mult_component3|auto_generated|op_1~0_combout\,
	cout => \inst1|inst3|lpm_mult_component3|auto_generated|op_1~1\);

-- Location: LCCOMB_X19_Y12_N6
\inst1|inst3|lpm_mult_component3|auto_generated|op_1~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst1|inst3|lpm_mult_component3|auto_generated|op_1~2_combout\ = (\inst1|inst3|lpm_mult_component3|auto_generated|dffe5~regout\ & (!\inst1|inst3|lpm_mult_component3|auto_generated|op_1~1\)) # 
-- (!\inst1|inst3|lpm_mult_component3|auto_generated|dffe5~regout\ & ((\inst1|inst3|lpm_mult_component3|auto_generated|op_1~1\) # (GND)))
-- \inst1|inst3|lpm_mult_component3|auto_generated|op_1~3\ = CARRY((!\inst1|inst3|lpm_mult_component3|auto_generated|op_1~1\) # (!\inst1|inst3|lpm_mult_component3|auto_generated|dffe5~regout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst1|inst3|lpm_mult_component3|auto_generated|dffe5~regout\,
	datad => VCC,
	cin => \inst1|inst3|lpm_mult_component3|auto_generated|op_1~1\,
	combout => \inst1|inst3|lpm_mult_component3|auto_generated|op_1~2_combout\,
	cout => \inst1|inst3|lpm_mult_component3|auto_generated|op_1~3\);

-- Location: LCFF_X20_Y11_N19
\inst1|inst3|lpm_add_compontent1|auto_generated|pipeline_dffe[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \inst1|inst3|lpm_add_compontent1|auto_generated|pipeline_dffe[2]~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst1|inst3|lpm_add_compontent1|auto_generated|pipeline_dffe\(2));

-- Location: LCCOMB_X14_Y10_N14
\inst1|inst1|lpm_mult_component2|auto_generated|op_1~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst1|inst1|lpm_mult_component2|auto_generated|op_1~0_combout\ = (\inst1|inst1|lpm_mult_component2|auto_generated|dffe3~regout\ & (\inst1|inst1|lpm_mult_component2|auto_generated|dffe4~regout\ $ (VCC))) # 
-- (!\inst1|inst1|lpm_mult_component2|auto_generated|dffe3~regout\ & (\inst1|inst1|lpm_mult_component2|auto_generated|dffe4~regout\ & VCC))
-- \inst1|inst1|lpm_mult_component2|auto_generated|op_1~1\ = CARRY((\inst1|inst1|lpm_mult_component2|auto_generated|dffe3~regout\ & \inst1|inst1|lpm_mult_component2|auto_generated|dffe4~regout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|inst1|lpm_mult_component2|auto_generated|dffe3~regout\,
	datab => \inst1|inst1|lpm_mult_component2|auto_generated|dffe4~regout\,
	datad => VCC,
	combout => \inst1|inst1|lpm_mult_component2|auto_generated|op_1~0_combout\,
	cout => \inst1|inst1|lpm_mult_component2|auto_generated|op_1~1\);

-- Location: LCCOMB_X14_Y10_N16
\inst1|inst1|lpm_mult_component2|auto_generated|op_1~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst1|inst1|lpm_mult_component2|auto_generated|op_1~2_combout\ = (\inst1|inst1|lpm_mult_component2|auto_generated|dffe5~regout\ & (!\inst1|inst1|lpm_mult_component2|auto_generated|op_1~1\)) # 
-- (!\inst1|inst1|lpm_mult_component2|auto_generated|dffe5~regout\ & ((\inst1|inst1|lpm_mult_component2|auto_generated|op_1~1\) # (GND)))
-- \inst1|inst1|lpm_mult_component2|auto_generated|op_1~3\ = CARRY((!\inst1|inst1|lpm_mult_component2|auto_generated|op_1~1\) # (!\inst1|inst1|lpm_mult_component2|auto_generated|dffe5~regout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst1|inst1|lpm_mult_component2|auto_generated|dffe5~regout\,
	datad => VCC,
	cin => \inst1|inst1|lpm_mult_component2|auto_generated|op_1~1\,
	combout => \inst1|inst1|lpm_mult_component2|auto_generated|op_1~2_combout\,
	cout => \inst1|inst1|lpm_mult_component2|auto_generated|op_1~3\);

-- Location: LCCOMB_X14_Y10_N24
\inst1|inst1|lpm_add_compontent1|auto_generated|pipeline_dffe[1]~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst1|inst1|lpm_add_compontent1|auto_generated|pipeline_dffe[1]~6_combout\ = (\inst1|inst1|lpm_mult_component2|auto_generated|op_1~2_combout\ & ((\inst1|inst1|lpm_mult_component1|auto_generated|op_1~2_combout\ & 
-- (\inst1|inst1|lpm_add_compontent1|auto_generated|pipeline_dffe[0]~5\ & VCC)) # (!\inst1|inst1|lpm_mult_component1|auto_generated|op_1~2_combout\ & (!\inst1|inst1|lpm_add_compontent1|auto_generated|pipeline_dffe[0]~5\)))) # 
-- (!\inst1|inst1|lpm_mult_component2|auto_generated|op_1~2_combout\ & ((\inst1|inst1|lpm_mult_component1|auto_generated|op_1~2_combout\ & (!\inst1|inst1|lpm_add_compontent1|auto_generated|pipeline_dffe[0]~5\)) # 
-- (!\inst1|inst1|lpm_mult_component1|auto_generated|op_1~2_combout\ & ((\inst1|inst1|lpm_add_compontent1|auto_generated|pipeline_dffe[0]~5\) # (GND)))))
-- \inst1|inst1|lpm_add_compontent1|auto_generated|pipeline_dffe[1]~7\ = CARRY((\inst1|inst1|lpm_mult_component2|auto_generated|op_1~2_combout\ & (!\inst1|inst1|lpm_mult_component1|auto_generated|op_1~2_combout\ & 
-- !\inst1|inst1|lpm_add_compontent1|auto_generated|pipeline_dffe[0]~5\)) # (!\inst1|inst1|lpm_mult_component2|auto_generated|op_1~2_combout\ & ((!\inst1|inst1|lpm_add_compontent1|auto_generated|pipeline_dffe[0]~5\) # 
-- (!\inst1|inst1|lpm_mult_component1|auto_generated|op_1~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|inst1|lpm_mult_component2|auto_generated|op_1~2_combout\,
	datab => \inst1|inst1|lpm_mult_component1|auto_generated|op_1~2_combout\,
	datad => VCC,
	cin => \inst1|inst1|lpm_add_compontent1|auto_generated|pipeline_dffe[0]~5\,
	combout => \inst1|inst1|lpm_add_compontent1|auto_generated|pipeline_dffe[1]~6_combout\,
	cout => \inst1|inst1|lpm_add_compontent1|auto_generated|pipeline_dffe[1]~7\);

-- Location: LCCOMB_X14_Y10_N18
\inst1|inst1|lpm_mult_component2|auto_generated|op_1~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst1|inst1|lpm_mult_component2|auto_generated|op_1~4_combout\ = ((\inst1|inst1|lpm_mult_component2|auto_generated|dffe6~regout\ $ (\inst1|inst1|lpm_mult_component2|auto_generated|dffe7~regout\ $ 
-- (!\inst1|inst1|lpm_mult_component2|auto_generated|op_1~3\)))) # (GND)
-- \inst1|inst1|lpm_mult_component2|auto_generated|op_1~5\ = CARRY((\inst1|inst1|lpm_mult_component2|auto_generated|dffe6~regout\ & ((\inst1|inst1|lpm_mult_component2|auto_generated|dffe7~regout\) # 
-- (!\inst1|inst1|lpm_mult_component2|auto_generated|op_1~3\))) # (!\inst1|inst1|lpm_mult_component2|auto_generated|dffe6~regout\ & (\inst1|inst1|lpm_mult_component2|auto_generated|dffe7~regout\ & !\inst1|inst1|lpm_mult_component2|auto_generated|op_1~3\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|inst1|lpm_mult_component2|auto_generated|dffe6~regout\,
	datab => \inst1|inst1|lpm_mult_component2|auto_generated|dffe7~regout\,
	datad => VCC,
	cin => \inst1|inst1|lpm_mult_component2|auto_generated|op_1~3\,
	combout => \inst1|inst1|lpm_mult_component2|auto_generated|op_1~4_combout\,
	cout => \inst1|inst1|lpm_mult_component2|auto_generated|op_1~5\);

-- Location: LCCOMB_X14_Y10_N26
\inst1|inst1|lpm_add_compontent1|auto_generated|pipeline_dffe[2]~8\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst1|inst1|lpm_add_compontent1|auto_generated|pipeline_dffe[2]~8_combout\ = ((\inst1|inst1|lpm_mult_component2|auto_generated|op_1~4_combout\ $ (\inst1|inst1|lpm_mult_component1|auto_generated|op_1~4_combout\ $ 
-- (!\inst1|inst1|lpm_add_compontent1|auto_generated|pipeline_dffe[1]~7\)))) # (GND)
-- \inst1|inst1|lpm_add_compontent1|auto_generated|pipeline_dffe[2]~9\ = CARRY((\inst1|inst1|lpm_mult_component2|auto_generated|op_1~4_combout\ & ((\inst1|inst1|lpm_mult_component1|auto_generated|op_1~4_combout\) # 
-- (!\inst1|inst1|lpm_add_compontent1|auto_generated|pipeline_dffe[1]~7\))) # (!\inst1|inst1|lpm_mult_component2|auto_generated|op_1~4_combout\ & (\inst1|inst1|lpm_mult_component1|auto_generated|op_1~4_combout\ & 
-- !\inst1|inst1|lpm_add_compontent1|auto_generated|pipeline_dffe[1]~7\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|inst1|lpm_mult_component2|auto_generated|op_1~4_combout\,
	datab => \inst1|inst1|lpm_mult_component1|auto_generated|op_1~4_combout\,
	datad => VCC,
	cin => \inst1|inst1|lpm_add_compontent1|auto_generated|pipeline_dffe[1]~7\,
	combout => \inst1|inst1|lpm_add_compontent1|auto_generated|pipeline_dffe[2]~8_combout\,
	cout => \inst1|inst1|lpm_add_compontent1|auto_generated|pipeline_dffe[2]~9\);

-- Location: LCCOMB_X14_Y10_N20
\inst1|inst1|lpm_mult_component2|auto_generated|op_1~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst1|inst1|lpm_mult_component2|auto_generated|op_1~6_combout\ = \inst1|inst1|lpm_mult_component2|auto_generated|dffe8~regout\ $ (\inst1|inst1|lpm_mult_component2|auto_generated|op_1~5\ $ (\inst1|inst1|lpm_mult_component2|auto_generated|dffe9~regout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100111100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst1|inst1|lpm_mult_component2|auto_generated|dffe8~regout\,
	datad => \inst1|inst1|lpm_mult_component2|auto_generated|dffe9~regout\,
	cin => \inst1|inst1|lpm_mult_component2|auto_generated|op_1~5\,
	combout => \inst1|inst1|lpm_mult_component2|auto_generated|op_1~6_combout\);

-- Location: LCCOMB_X18_Y11_N14
\inst1|inst2|lpm_mult_component1|auto_generated|op_1~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst1|inst2|lpm_mult_component1|auto_generated|op_1~0_combout\ = (\inst1|inst2|lpm_mult_component1|auto_generated|dffe3~regout\ & (\inst1|inst2|lpm_mult_component1|auto_generated|dffe4~regout\ $ (VCC))) # 
-- (!\inst1|inst2|lpm_mult_component1|auto_generated|dffe3~regout\ & (\inst1|inst2|lpm_mult_component1|auto_generated|dffe4~regout\ & VCC))
-- \inst1|inst2|lpm_mult_component1|auto_generated|op_1~1\ = CARRY((\inst1|inst2|lpm_mult_component1|auto_generated|dffe3~regout\ & \inst1|inst2|lpm_mult_component1|auto_generated|dffe4~regout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|inst2|lpm_mult_component1|auto_generated|dffe3~regout\,
	datab => \inst1|inst2|lpm_mult_component1|auto_generated|dffe4~regout\,
	datad => VCC,
	combout => \inst1|inst2|lpm_mult_component1|auto_generated|op_1~0_combout\,
	cout => \inst1|inst2|lpm_mult_component1|auto_generated|op_1~1\);

-- Location: LCCOMB_X18_Y11_N24
\inst1|inst2|lpm_add_compontent1|auto_generated|pipeline_dffe[0]~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst1|inst2|lpm_add_compontent1|auto_generated|pipeline_dffe[0]~4_combout\ = (\inst1|inst2|lpm_mult_component1|auto_generated|op_1~0_combout\ & (\inst1|inst2|lpm_mult_component2|auto_generated|op_1~0_combout\ $ (VCC))) # 
-- (!\inst1|inst2|lpm_mult_component1|auto_generated|op_1~0_combout\ & (\inst1|inst2|lpm_mult_component2|auto_generated|op_1~0_combout\ & VCC))
-- \inst1|inst2|lpm_add_compontent1|auto_generated|pipeline_dffe[0]~5\ = CARRY((\inst1|inst2|lpm_mult_component1|auto_generated|op_1~0_combout\ & \inst1|inst2|lpm_mult_component2|auto_generated|op_1~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|inst2|lpm_mult_component1|auto_generated|op_1~0_combout\,
	datab => \inst1|inst2|lpm_mult_component2|auto_generated|op_1~0_combout\,
	datad => VCC,
	combout => \inst1|inst2|lpm_add_compontent1|auto_generated|pipeline_dffe[0]~4_combout\,
	cout => \inst1|inst2|lpm_add_compontent1|auto_generated|pipeline_dffe[0]~5\);

-- Location: LCCOMB_X18_Y11_N16
\inst1|inst2|lpm_mult_component1|auto_generated|op_1~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst1|inst2|lpm_mult_component1|auto_generated|op_1~2_combout\ = (\inst1|inst2|lpm_mult_component1|auto_generated|dffe5~regout\ & (!\inst1|inst2|lpm_mult_component1|auto_generated|op_1~1\)) # 
-- (!\inst1|inst2|lpm_mult_component1|auto_generated|dffe5~regout\ & ((\inst1|inst2|lpm_mult_component1|auto_generated|op_1~1\) # (GND)))
-- \inst1|inst2|lpm_mult_component1|auto_generated|op_1~3\ = CARRY((!\inst1|inst2|lpm_mult_component1|auto_generated|op_1~1\) # (!\inst1|inst2|lpm_mult_component1|auto_generated|dffe5~regout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst1|inst2|lpm_mult_component1|auto_generated|dffe5~regout\,
	datad => VCC,
	cin => \inst1|inst2|lpm_mult_component1|auto_generated|op_1~1\,
	combout => \inst1|inst2|lpm_mult_component1|auto_generated|op_1~2_combout\,
	cout => \inst1|inst2|lpm_mult_component1|auto_generated|op_1~3\);

-- Location: LCCOMB_X18_Y11_N2
\inst1|inst2|lpm_mult_component2|auto_generated|op_1~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst1|inst2|lpm_mult_component2|auto_generated|op_1~2_combout\ = (\inst1|inst2|lpm_mult_component2|auto_generated|dffe5~regout\ & (!\inst1|inst2|lpm_mult_component2|auto_generated|op_1~1\)) # 
-- (!\inst1|inst2|lpm_mult_component2|auto_generated|dffe5~regout\ & ((\inst1|inst2|lpm_mult_component2|auto_generated|op_1~1\) # (GND)))
-- \inst1|inst2|lpm_mult_component2|auto_generated|op_1~3\ = CARRY((!\inst1|inst2|lpm_mult_component2|auto_generated|op_1~1\) # (!\inst1|inst2|lpm_mult_component2|auto_generated|dffe5~regout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst1|inst2|lpm_mult_component2|auto_generated|dffe5~regout\,
	datad => VCC,
	cin => \inst1|inst2|lpm_mult_component2|auto_generated|op_1~1\,
	combout => \inst1|inst2|lpm_mult_component2|auto_generated|op_1~2_combout\,
	cout => \inst1|inst2|lpm_mult_component2|auto_generated|op_1~3\);

-- Location: LCCOMB_X18_Y11_N26
\inst1|inst2|lpm_add_compontent1|auto_generated|pipeline_dffe[1]~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst1|inst2|lpm_add_compontent1|auto_generated|pipeline_dffe[1]~6_combout\ = (\inst1|inst2|lpm_mult_component1|auto_generated|op_1~2_combout\ & ((\inst1|inst2|lpm_mult_component2|auto_generated|op_1~2_combout\ & 
-- (\inst1|inst2|lpm_add_compontent1|auto_generated|pipeline_dffe[0]~5\ & VCC)) # (!\inst1|inst2|lpm_mult_component2|auto_generated|op_1~2_combout\ & (!\inst1|inst2|lpm_add_compontent1|auto_generated|pipeline_dffe[0]~5\)))) # 
-- (!\inst1|inst2|lpm_mult_component1|auto_generated|op_1~2_combout\ & ((\inst1|inst2|lpm_mult_component2|auto_generated|op_1~2_combout\ & (!\inst1|inst2|lpm_add_compontent1|auto_generated|pipeline_dffe[0]~5\)) # 
-- (!\inst1|inst2|lpm_mult_component2|auto_generated|op_1~2_combout\ & ((\inst1|inst2|lpm_add_compontent1|auto_generated|pipeline_dffe[0]~5\) # (GND)))))
-- \inst1|inst2|lpm_add_compontent1|auto_generated|pipeline_dffe[1]~7\ = CARRY((\inst1|inst2|lpm_mult_component1|auto_generated|op_1~2_combout\ & (!\inst1|inst2|lpm_mult_component2|auto_generated|op_1~2_combout\ & 
-- !\inst1|inst2|lpm_add_compontent1|auto_generated|pipeline_dffe[0]~5\)) # (!\inst1|inst2|lpm_mult_component1|auto_generated|op_1~2_combout\ & ((!\inst1|inst2|lpm_add_compontent1|auto_generated|pipeline_dffe[0]~5\) # 
-- (!\inst1|inst2|lpm_mult_component2|auto_generated|op_1~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|inst2|lpm_mult_component1|auto_generated|op_1~2_combout\,
	datab => \inst1|inst2|lpm_mult_component2|auto_generated|op_1~2_combout\,
	datad => VCC,
	cin => \inst1|inst2|lpm_add_compontent1|auto_generated|pipeline_dffe[0]~5\,
	combout => \inst1|inst2|lpm_add_compontent1|auto_generated|pipeline_dffe[1]~6_combout\,
	cout => \inst1|inst2|lpm_add_compontent1|auto_generated|pipeline_dffe[1]~7\);

-- Location: LCCOMB_X18_Y11_N18
\inst1|inst2|lpm_mult_component1|auto_generated|op_1~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst1|inst2|lpm_mult_component1|auto_generated|op_1~4_combout\ = ((\inst1|inst2|lpm_mult_component1|auto_generated|dffe6~regout\ $ (\inst1|inst2|lpm_mult_component1|auto_generated|dffe7~regout\ $ 
-- (!\inst1|inst2|lpm_mult_component1|auto_generated|op_1~3\)))) # (GND)
-- \inst1|inst2|lpm_mult_component1|auto_generated|op_1~5\ = CARRY((\inst1|inst2|lpm_mult_component1|auto_generated|dffe6~regout\ & ((\inst1|inst2|lpm_mult_component1|auto_generated|dffe7~regout\) # 
-- (!\inst1|inst2|lpm_mult_component1|auto_generated|op_1~3\))) # (!\inst1|inst2|lpm_mult_component1|auto_generated|dffe6~regout\ & (\inst1|inst2|lpm_mult_component1|auto_generated|dffe7~regout\ & !\inst1|inst2|lpm_mult_component1|auto_generated|op_1~3\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|inst2|lpm_mult_component1|auto_generated|dffe6~regout\,
	datab => \inst1|inst2|lpm_mult_component1|auto_generated|dffe7~regout\,
	datad => VCC,
	cin => \inst1|inst2|lpm_mult_component1|auto_generated|op_1~3\,
	combout => \inst1|inst2|lpm_mult_component1|auto_generated|op_1~4_combout\,
	cout => \inst1|inst2|lpm_mult_component1|auto_generated|op_1~5\);

-- Location: LCCOMB_X18_Y11_N4
\inst1|inst2|lpm_mult_component2|auto_generated|op_1~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst1|inst2|lpm_mult_component2|auto_generated|op_1~4_combout\ = ((\inst1|inst2|lpm_mult_component2|auto_generated|dffe6~regout\ $ (\inst1|inst2|lpm_mult_component2|auto_generated|dffe7~regout\ $ 
-- (!\inst1|inst2|lpm_mult_component2|auto_generated|op_1~3\)))) # (GND)
-- \inst1|inst2|lpm_mult_component2|auto_generated|op_1~5\ = CARRY((\inst1|inst2|lpm_mult_component2|auto_generated|dffe6~regout\ & ((\inst1|inst2|lpm_mult_component2|auto_generated|dffe7~regout\) # 
-- (!\inst1|inst2|lpm_mult_component2|auto_generated|op_1~3\))) # (!\inst1|inst2|lpm_mult_component2|auto_generated|dffe6~regout\ & (\inst1|inst2|lpm_mult_component2|auto_generated|dffe7~regout\ & !\inst1|inst2|lpm_mult_component2|auto_generated|op_1~3\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|inst2|lpm_mult_component2|auto_generated|dffe6~regout\,
	datab => \inst1|inst2|lpm_mult_component2|auto_generated|dffe7~regout\,
	datad => VCC,
	cin => \inst1|inst2|lpm_mult_component2|auto_generated|op_1~3\,
	combout => \inst1|inst2|lpm_mult_component2|auto_generated|op_1~4_combout\,
	cout => \inst1|inst2|lpm_mult_component2|auto_generated|op_1~5\);

-- Location: LCCOMB_X18_Y11_N28
\inst1|inst2|lpm_add_compontent1|auto_generated|pipeline_dffe[2]~8\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst1|inst2|lpm_add_compontent1|auto_generated|pipeline_dffe[2]~8_combout\ = ((\inst1|inst2|lpm_mult_component2|auto_generated|op_1~4_combout\ $ (\inst1|inst2|lpm_mult_component1|auto_generated|op_1~4_combout\ $ 
-- (!\inst1|inst2|lpm_add_compontent1|auto_generated|pipeline_dffe[1]~7\)))) # (GND)
-- \inst1|inst2|lpm_add_compontent1|auto_generated|pipeline_dffe[2]~9\ = CARRY((\inst1|inst2|lpm_mult_component2|auto_generated|op_1~4_combout\ & ((\inst1|inst2|lpm_mult_component1|auto_generated|op_1~4_combout\) # 
-- (!\inst1|inst2|lpm_add_compontent1|auto_generated|pipeline_dffe[1]~7\))) # (!\inst1|inst2|lpm_mult_component2|auto_generated|op_1~4_combout\ & (\inst1|inst2|lpm_mult_component1|auto_generated|op_1~4_combout\ & 
-- !\inst1|inst2|lpm_add_compontent1|auto_generated|pipeline_dffe[1]~7\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|inst2|lpm_mult_component2|auto_generated|op_1~4_combout\,
	datab => \inst1|inst2|lpm_mult_component1|auto_generated|op_1~4_combout\,
	datad => VCC,
	cin => \inst1|inst2|lpm_add_compontent1|auto_generated|pipeline_dffe[1]~7\,
	combout => \inst1|inst2|lpm_add_compontent1|auto_generated|pipeline_dffe[2]~8_combout\,
	cout => \inst1|inst2|lpm_add_compontent1|auto_generated|pipeline_dffe[2]~9\);

-- Location: LCCOMB_X18_Y11_N20
\inst1|inst2|lpm_mult_component1|auto_generated|op_1~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst1|inst2|lpm_mult_component1|auto_generated|op_1~6_combout\ = \inst1|inst2|lpm_mult_component1|auto_generated|dffe8~regout\ $ (\inst1|inst2|lpm_mult_component1|auto_generated|op_1~5\ $ (\inst1|inst2|lpm_mult_component1|auto_generated|dffe9~regout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100111100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst1|inst2|lpm_mult_component1|auto_generated|dffe8~regout\,
	datad => \inst1|inst2|lpm_mult_component1|auto_generated|dffe9~regout\,
	cin => \inst1|inst2|lpm_mult_component1|auto_generated|op_1~5\,
	combout => \inst1|inst2|lpm_mult_component1|auto_generated|op_1~6_combout\);

-- Location: LCCOMB_X18_Y11_N6
\inst1|inst2|lpm_mult_component2|auto_generated|op_1~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst1|inst2|lpm_mult_component2|auto_generated|op_1~6_combout\ = \inst1|inst2|lpm_mult_component2|auto_generated|dffe9~regout\ $ (\inst1|inst2|lpm_mult_component2|auto_generated|op_1~5\ $ (\inst1|inst2|lpm_mult_component2|auto_generated|dffe8~regout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010101011010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|inst2|lpm_mult_component2|auto_generated|dffe9~regout\,
	datad => \inst1|inst2|lpm_mult_component2|auto_generated|dffe8~regout\,
	cin => \inst1|inst2|lpm_mult_component2|auto_generated|op_1~5\,
	combout => \inst1|inst2|lpm_mult_component2|auto_generated|op_1~6_combout\);

-- Location: LCCOMB_X18_Y11_N30
\inst1|inst2|lpm_add_compontent1|auto_generated|pipeline_dffe[3]~10\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst1|inst2|lpm_add_compontent1|auto_generated|pipeline_dffe[3]~10_combout\ = \inst1|inst2|lpm_mult_component2|auto_generated|op_1~6_combout\ $ (\inst1|inst2|lpm_add_compontent1|auto_generated|pipeline_dffe[2]~9\ $ 
-- (\inst1|inst2|lpm_mult_component1|auto_generated|op_1~6_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010101011010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|inst2|lpm_mult_component2|auto_generated|op_1~6_combout\,
	datad => \inst1|inst2|lpm_mult_component1|auto_generated|op_1~6_combout\,
	cin => \inst1|inst2|lpm_add_compontent1|auto_generated|pipeline_dffe[2]~9\,
	combout => \inst1|inst2|lpm_add_compontent1|auto_generated|pipeline_dffe[3]~10_combout\);

-- Location: LCCOMB_X20_Y11_N0
\inst1|inst3|lpm_mult_component2|auto_generated|op_1~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst1|inst3|lpm_mult_component2|auto_generated|op_1~0_combout\ = (\inst1|inst3|lpm_mult_component2|auto_generated|dffe3~regout\ & (\inst1|inst3|lpm_mult_component2|auto_generated|dffe4~regout\ $ (VCC))) # 
-- (!\inst1|inst3|lpm_mult_component2|auto_generated|dffe3~regout\ & (\inst1|inst3|lpm_mult_component2|auto_generated|dffe4~regout\ & VCC))
-- \inst1|inst3|lpm_mult_component2|auto_generated|op_1~1\ = CARRY((\inst1|inst3|lpm_mult_component2|auto_generated|dffe3~regout\ & \inst1|inst3|lpm_mult_component2|auto_generated|dffe4~regout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|inst3|lpm_mult_component2|auto_generated|dffe3~regout\,
	datab => \inst1|inst3|lpm_mult_component2|auto_generated|dffe4~regout\,
	datad => VCC,
	combout => \inst1|inst3|lpm_mult_component2|auto_generated|op_1~0_combout\,
	cout => \inst1|inst3|lpm_mult_component2|auto_generated|op_1~1\);

-- Location: LCCOMB_X20_Y11_N2
\inst1|inst3|lpm_mult_component2|auto_generated|op_1~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst1|inst3|lpm_mult_component2|auto_generated|op_1~2_combout\ = (\inst1|inst3|lpm_mult_component2|auto_generated|dffe5~regout\ & (!\inst1|inst3|lpm_mult_component2|auto_generated|op_1~1\)) # 
-- (!\inst1|inst3|lpm_mult_component2|auto_generated|dffe5~regout\ & ((\inst1|inst3|lpm_mult_component2|auto_generated|op_1~1\) # (GND)))
-- \inst1|inst3|lpm_mult_component2|auto_generated|op_1~3\ = CARRY((!\inst1|inst3|lpm_mult_component2|auto_generated|op_1~1\) # (!\inst1|inst3|lpm_mult_component2|auto_generated|dffe5~regout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|inst3|lpm_mult_component2|auto_generated|dffe5~regout\,
	datad => VCC,
	cin => \inst1|inst3|lpm_mult_component2|auto_generated|op_1~1\,
	combout => \inst1|inst3|lpm_mult_component2|auto_generated|op_1~2_combout\,
	cout => \inst1|inst3|lpm_mult_component2|auto_generated|op_1~3\);

-- Location: LCCOMB_X20_Y11_N4
\inst1|inst3|lpm_mult_component2|auto_generated|op_1~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst1|inst3|lpm_mult_component2|auto_generated|op_1~4_combout\ = ((\inst1|inst3|lpm_mult_component2|auto_generated|dffe6~regout\ $ (\inst1|inst3|lpm_mult_component2|auto_generated|dffe7~regout\ $ 
-- (!\inst1|inst3|lpm_mult_component2|auto_generated|op_1~3\)))) # (GND)
-- \inst1|inst3|lpm_mult_component2|auto_generated|op_1~5\ = CARRY((\inst1|inst3|lpm_mult_component2|auto_generated|dffe6~regout\ & ((\inst1|inst3|lpm_mult_component2|auto_generated|dffe7~regout\) # 
-- (!\inst1|inst3|lpm_mult_component2|auto_generated|op_1~3\))) # (!\inst1|inst3|lpm_mult_component2|auto_generated|dffe6~regout\ & (\inst1|inst3|lpm_mult_component2|auto_generated|dffe7~regout\ & !\inst1|inst3|lpm_mult_component2|auto_generated|op_1~3\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|inst3|lpm_mult_component2|auto_generated|dffe6~regout\,
	datab => \inst1|inst3|lpm_mult_component2|auto_generated|dffe7~regout\,
	datad => VCC,
	cin => \inst1|inst3|lpm_mult_component2|auto_generated|op_1~3\,
	combout => \inst1|inst3|lpm_mult_component2|auto_generated|op_1~4_combout\,
	cout => \inst1|inst3|lpm_mult_component2|auto_generated|op_1~5\);

-- Location: LCCOMB_X20_Y11_N18
\inst1|inst3|lpm_add_compontent1|auto_generated|pipeline_dffe[2]~8\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst1|inst3|lpm_add_compontent1|auto_generated|pipeline_dffe[2]~8_combout\ = ((\inst1|inst3|lpm_mult_component2|auto_generated|op_1~4_combout\ $ (\inst1|inst3|lpm_mult_component1|auto_generated|op_1~4_combout\ $ 
-- (!\inst1|inst3|lpm_add_compontent1|auto_generated|pipeline_dffe[1]~7\)))) # (GND)
-- \inst1|inst3|lpm_add_compontent1|auto_generated|pipeline_dffe[2]~9\ = CARRY((\inst1|inst3|lpm_mult_component2|auto_generated|op_1~4_combout\ & ((\inst1|inst3|lpm_mult_component1|auto_generated|op_1~4_combout\) # 
-- (!\inst1|inst3|lpm_add_compontent1|auto_generated|pipeline_dffe[1]~7\))) # (!\inst1|inst3|lpm_mult_component2|auto_generated|op_1~4_combout\ & (\inst1|inst3|lpm_mult_component1|auto_generated|op_1~4_combout\ & 
-- !\inst1|inst3|lpm_add_compontent1|auto_generated|pipeline_dffe[1]~7\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|inst3|lpm_mult_component2|auto_generated|op_1~4_combout\,
	datab => \inst1|inst3|lpm_mult_component1|auto_generated|op_1~4_combout\,
	datad => VCC,
	cin => \inst1|inst3|lpm_add_compontent1|auto_generated|pipeline_dffe[1]~7\,
	combout => \inst1|inst3|lpm_add_compontent1|auto_generated|pipeline_dffe[2]~8_combout\,
	cout => \inst1|inst3|lpm_add_compontent1|auto_generated|pipeline_dffe[2]~9\);

-- Location: LCFF_X17_Y10_N17
\inst1|inst1|lpm_mult_component3|auto_generated|dffe3\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \inst1|inst1|lpm_mult_component3|auto_generated|w70w[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst1|inst1|lpm_mult_component3|auto_generated|dffe3~regout\);

-- Location: LCFF_X17_Y10_N11
\inst1|inst1|lpm_mult_component3|auto_generated|dffe6\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \inst1|inst1|lpm_mult_component3|auto_generated|w117w[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst1|inst1|lpm_mult_component3|auto_generated|dffe6~regout\);

-- Location: LCFF_X18_Y12_N7
\inst1|inst2|lpm_mult_component3|auto_generated|dffe4\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \k32~combout\(1),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst1|inst2|lpm_mult_component3|auto_generated|dffe4~regout\);

-- Location: LCFF_X18_Y12_N25
\inst1|inst2|lpm_mult_component3|auto_generated|dffe7\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \inst1|inst2|lpm_mult_component3|auto_generated|op_2~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst1|inst2|lpm_mult_component3|auto_generated|dffe7~regout\);

-- Location: LCFF_X19_Y12_N17
\inst1|inst3|lpm_mult_component3|auto_generated|dffe3\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \inst1|inst3|lpm_mult_component3|auto_generated|w70w[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst1|inst3|lpm_mult_component3|auto_generated|dffe3~regout\);

-- Location: LCFF_X19_Y12_N21
\inst1|inst3|lpm_mult_component3|auto_generated|dffe6\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \inst1|inst3|lpm_mult_component3|auto_generated|w117w[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst1|inst3|lpm_mult_component3|auto_generated|dffe6~regout\);

-- Location: LCFF_X18_Y12_N3
\inst1|inst3|lpm_mult_component3|auto_generated|dffe9\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \inst1|inst3|lpm_mult_component3|auto_generated|op_2~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst1|inst3|lpm_mult_component3|auto_generated|dffe9~regout\);

-- Location: LCCOMB_X17_Y10_N16
\inst1|inst1|lpm_mult_component3|auto_generated|w70w[0]~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst1|inst1|lpm_mult_component3|auto_generated|w70w[0]~0_combout\ = \k31~combout\(1) $ (((\k31~combout\(0) & \inst1|p3_reg|dffs\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \k31~combout\(0),
	datac => \k31~combout\(1),
	datad => \inst1|p3_reg|dffs\(0),
	combout => \inst1|inst1|lpm_mult_component3|auto_generated|w70w[0]~0_combout\);

-- Location: LCFF_X14_Y10_N1
\inst1|inst1|lpm_mult_component1|auto_generated|dffe4\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \k11~combout\(1),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst1|inst1|lpm_mult_component1|auto_generated|dffe4~regout\);

-- Location: LCFF_X14_Y10_N15
\inst1|inst1|lpm_mult_component2|auto_generated|dffe4\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \k21~combout\(1),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst1|inst1|lpm_mult_component2|auto_generated|dffe4~regout\);

-- Location: LCFF_X14_Y10_N13
\inst1|inst1|lpm_mult_component2|auto_generated|dffe3\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \inst1|inst1|lpm_mult_component2|auto_generated|w70w[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst1|inst1|lpm_mult_component2|auto_generated|dffe3~regout\);

-- Location: LCFF_X14_Y10_N31
\inst1|inst1|lpm_mult_component2|auto_generated|dffe5\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \inst1|inst1|lpm_mult_component2|auto_generated|w70w[1]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst1|inst1|lpm_mult_component2|auto_generated|dffe5~regout\);

-- Location: LCCOMB_X17_Y10_N10
\inst1|inst1|lpm_mult_component3|auto_generated|w117w[0]~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst1|inst1|lpm_mult_component3|auto_generated|w117w[0]~0_combout\ = \k31~combout\(3) $ (((\k31~combout\(2) & ((\k31~combout\(1)) # (\inst1|p3_reg|dffs\(0)))) # (!\k31~combout\(2) & (\k31~combout\(1) & \inst1|p3_reg|dffs\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001111001111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \k31~combout\(2),
	datab => \k31~combout\(1),
	datac => \k31~combout\(3),
	datad => \inst1|p3_reg|dffs\(0),
	combout => \inst1|inst1|lpm_mult_component3|auto_generated|w117w[0]~0_combout\);

-- Location: LCFF_X14_Y10_N5
\inst1|inst1|lpm_mult_component1|auto_generated|dffe6\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \inst1|inst1|lpm_mult_component1|auto_generated|w117w[0]~0_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst1|inst1|lpm_mult_component1|auto_generated|dffe6~regout\);

-- Location: LCFF_X14_Y10_N9
\inst1|inst1|lpm_mult_component2|auto_generated|dffe7\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \inst1|inst1|lpm_mult_component2|auto_generated|op_2~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst1|inst1|lpm_mult_component2|auto_generated|dffe7~regout\);

-- Location: LCFF_X14_Y10_N11
\inst1|inst1|lpm_mult_component2|auto_generated|dffe6\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \inst1|inst1|lpm_mult_component2|auto_generated|w117w[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst1|inst1|lpm_mult_component2|auto_generated|dffe6~regout\);

-- Location: LCCOMB_X17_Y10_N12
\inst1|inst1|lpm_mult_component3|auto_generated|cs2a[1]~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst1|inst1|lpm_mult_component3|auto_generated|cs2a[1]~0_combout\ = \k31~combout\(2) $ (\k31~combout\(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \k31~combout\(2),
	datad => \k31~combout\(1),
	combout => \inst1|inst1|lpm_mult_component3|auto_generated|cs2a[1]~0_combout\);

-- Location: LCFF_X13_Y10_N25
\inst1|inst1|lpm_mult_component2|auto_generated|dffe9\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \inst1|inst1|lpm_mult_component2|auto_generated|op_2~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst1|inst1|lpm_mult_component2|auto_generated|dffe9~regout\);

-- Location: LCFF_X13_Y10_N19
\inst1|inst1|lpm_mult_component2|auto_generated|dffe8\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \inst1|inst1|lpm_mult_component2|auto_generated|w117w[1]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst1|inst1|lpm_mult_component2|auto_generated|dffe8~regout\);

-- Location: LCFF_X18_Y11_N13
\inst1|inst2|lpm_mult_component1|auto_generated|dffe3\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \inst1|inst2|lpm_mult_component1|auto_generated|w70w[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst1|inst2|lpm_mult_component1|auto_generated|dffe3~regout\);

-- Location: LCFF_X18_Y11_N11
\inst1|inst2|lpm_mult_component2|auto_generated|dffe3\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \inst1|inst2|lpm_mult_component2|auto_generated|w70w[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst1|inst2|lpm_mult_component2|auto_generated|dffe3~regout\);

-- Location: LCFF_X18_Y11_N21
\inst1|inst2|lpm_mult_component1|auto_generated|dffe6\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \inst1|inst2|lpm_mult_component1|auto_generated|w117w[0]~0_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst1|inst2|lpm_mult_component1|auto_generated|dffe6~regout\);

-- Location: LCFF_X18_Y11_N23
\inst1|inst2|lpm_mult_component2|auto_generated|dffe7\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \inst1|inst2|lpm_mult_component2|auto_generated|op_2~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst1|inst2|lpm_mult_component2|auto_generated|dffe7~regout\);

-- Location: LCFF_X18_Y11_N19
\inst1|inst2|lpm_mult_component2|auto_generated|dffe6\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \inst1|inst2|lpm_mult_component2|auto_generated|w117w[0]~0_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst1|inst2|lpm_mult_component2|auto_generated|dffe6~regout\);

-- Location: LCCOMB_X17_Y12_N30
\inst1|inst2|lpm_mult_component3|auto_generated|cs2a[1]~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst1|inst2|lpm_mult_component3|auto_generated|cs2a[1]~0_combout\ = \k32~combout\(1) $ (\k32~combout\(2))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \k32~combout\(1),
	datad => \k32~combout\(2),
	combout => \inst1|inst2|lpm_mult_component3|auto_generated|cs2a[1]~0_combout\);

-- Location: LCFF_X19_Y11_N23
\inst1|inst2|lpm_mult_component1|auto_generated|dffe9\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \inst1|inst2|lpm_mult_component1|auto_generated|op_2~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst1|inst2|lpm_mult_component1|auto_generated|dffe9~regout\);

-- Location: LCFF_X19_Y11_N25
\inst1|inst2|lpm_mult_component1|auto_generated|dffe8\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \inst1|inst2|lpm_mult_component1|auto_generated|w117w[1]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst1|inst2|lpm_mult_component1|auto_generated|dffe8~regout\);

-- Location: LCFF_X21_Y10_N1
\inst1|inst2|lpm_mult_component2|auto_generated|dffe9\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \inst1|inst2|lpm_mult_component2|auto_generated|op_2~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst1|inst2|lpm_mult_component2|auto_generated|dffe9~regout\);

-- Location: LCFF_X21_Y11_N21
\inst1|inst2|lpm_mult_component2|auto_generated|dffe8\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \inst1|inst2|lpm_mult_component2|auto_generated|w117w[1]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst1|inst2|lpm_mult_component2|auto_generated|dffe8~regout\);

-- Location: LCCOMB_X19_Y12_N16
\inst1|inst3|lpm_mult_component3|auto_generated|w70w[0]~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst1|inst3|lpm_mult_component3|auto_generated|w70w[0]~0_combout\ = \k33~combout\(1) $ (((\k33~combout\(0) & \inst1|p3_reg|dffs\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \k33~combout\(0),
	datac => \k33~combout\(1),
	datad => \inst1|p3_reg|dffs\(0),
	combout => \inst1|inst3|lpm_mult_component3|auto_generated|w70w[0]~0_combout\);

-- Location: LCFF_X20_Y11_N25
\inst1|inst3|lpm_mult_component1|auto_generated|dffe4\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \k13~combout\(1),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst1|inst3|lpm_mult_component1|auto_generated|dffe4~regout\);

-- Location: LCFF_X20_Y11_N11
\inst1|inst3|lpm_mult_component2|auto_generated|dffe3\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \inst1|inst3|lpm_mult_component2|auto_generated|w70w[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst1|inst3|lpm_mult_component2|auto_generated|dffe3~regout\);

-- Location: LCFF_X20_Y11_N7
\inst1|inst3|lpm_mult_component1|auto_generated|dffe5\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \inst1|inst3|lpm_mult_component1|auto_generated|w70w[1]~1_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst1|inst3|lpm_mult_component1|auto_generated|dffe5~regout\);

-- Location: LCFF_X20_Y11_N13
\inst1|inst3|lpm_mult_component2|auto_generated|dffe5\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \inst1|inst3|lpm_mult_component2|auto_generated|w70w[1]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst1|inst3|lpm_mult_component2|auto_generated|dffe5~regout\);

-- Location: LCCOMB_X19_Y12_N20
\inst1|inst3|lpm_mult_component3|auto_generated|w117w[0]~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst1|inst3|lpm_mult_component3|auto_generated|w117w[0]~0_combout\ = \k33~combout\(3) $ (((\k33~combout\(1) & ((\inst1|p3_reg|dffs\(0)) # (\k33~combout\(2)))) # (!\k33~combout\(1) & (\inst1|p3_reg|dffs\(0) & \k33~combout\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001111001111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \k33~combout\(1),
	datab => \inst1|p3_reg|dffs\(0),
	datac => \k33~combout\(3),
	datad => \k33~combout\(2),
	combout => \inst1|inst3|lpm_mult_component3|auto_generated|w117w[0]~0_combout\);

-- Location: LCFF_X20_Y11_N27
\inst1|inst3|lpm_mult_component1|auto_generated|dffe6\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \inst1|inst3|lpm_mult_component1|auto_generated|w117w[0]~0_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst1|inst3|lpm_mult_component1|auto_generated|dffe6~regout\);

-- Location: LCFF_X20_Y11_N29
\inst1|inst3|lpm_mult_component2|auto_generated|dffe6\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \inst1|inst3|lpm_mult_component2|auto_generated|w117w[0]~0_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst1|inst3|lpm_mult_component2|auto_generated|dffe6~regout\);

-- Location: LCCOMB_X17_Y12_N22
\inst1|inst3|lpm_mult_component3|auto_generated|w70w[3]~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst1|inst3|lpm_mult_component3|auto_generated|w70w[3]~3_combout\ = (\k33~combout\(0) & (\inst1|p3_reg|dffs\(3) $ ((\k33~combout\(1))))) # (!\k33~combout\(0) & (((\k33~combout\(1) & !\inst1|p3_reg|dffs\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110000001101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|p3_reg|dffs\(3),
	datab => \k33~combout\(1),
	datac => \k33~combout\(0),
	datad => \inst1|p3_reg|dffs\(2),
	combout => \inst1|inst3|lpm_mult_component3|auto_generated|w70w[3]~3_combout\);

-- Location: LCCOMB_X18_Y12_N2
\inst1|inst3|lpm_mult_component3|auto_generated|op_2~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst1|inst3|lpm_mult_component3|auto_generated|op_2~2_combout\ = \inst1|inst3|lpm_mult_component3|auto_generated|w70w[3]~3_combout\ $ (((\inst1|inst3|lpm_mult_component3|auto_generated|cs1a[1]~0_combout\ & 
-- \inst1|inst3|lpm_mult_component3|auto_generated|w70w[2]~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst1|inst3|lpm_mult_component3|auto_generated|cs1a[1]~0_combout\,
	datac => \inst1|inst3|lpm_mult_component3|auto_generated|w70w[2]~2_combout\,
	datad => \inst1|inst3|lpm_mult_component3|auto_generated|w70w[3]~3_combout\,
	combout => \inst1|inst3|lpm_mult_component3|auto_generated|op_2~2_combout\);

-- Location: LCCOMB_X19_Y12_N12
\inst1|inst3|lpm_mult_component3|auto_generated|cs2a[1]~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst1|inst3|lpm_mult_component3|auto_generated|cs2a[1]~0_combout\ = \k33~combout\(2) $ (\k33~combout\(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \k33~combout\(2),
	datac => \k33~combout\(1),
	combout => \inst1|inst3|lpm_mult_component3|auto_generated|cs2a[1]~0_combout\);

-- Location: LCCOMB_X14_Y10_N12
\inst1|inst1|lpm_mult_component2|auto_generated|w70w[0]~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst1|inst1|lpm_mult_component2|auto_generated|w70w[0]~0_combout\ = \k21~combout\(1) $ (((\inst1|p2_reg|dffs\(0) & \k21~combout\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|p2_reg|dffs\(0),
	datab => \k21~combout\(1),
	datad => \k21~combout\(0),
	combout => \inst1|inst1|lpm_mult_component2|auto_generated|w70w[0]~0_combout\);

-- Location: LCCOMB_X14_Y10_N30
\inst1|inst1|lpm_mult_component2|auto_generated|w70w[1]~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst1|inst1|lpm_mult_component2|auto_generated|w70w[1]~1_combout\ = (\k21~combout\(0) & ((\k21~combout\(1) $ (\inst1|p2_reg|dffs\(1))))) # (!\k21~combout\(0) & (!\inst1|p2_reg|dffs\(0) & (\k21~combout\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001110011010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|p2_reg|dffs\(0),
	datab => \k21~combout\(0),
	datac => \k21~combout\(1),
	datad => \inst1|p2_reg|dffs\(1),
	combout => \inst1|inst1|lpm_mult_component2|auto_generated|w70w[1]~1_combout\);

-- Location: LCCOMB_X15_Y10_N14
\inst1|inst1|lpm_mult_component1|auto_generated|w117w[0]~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst1|inst1|lpm_mult_component1|auto_generated|w117w[0]~0_combout\ = \k11~combout\(3) $ (((\k11~combout\(1) & ((\inst1|p1_reg|dffs\(0)) # (\k11~combout\(2)))) # (!\k11~combout\(1) & (\inst1|p1_reg|dffs\(0) & \k11~combout\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011011001101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \k11~combout\(1),
	datab => \k11~combout\(3),
	datac => \inst1|p1_reg|dffs\(0),
	datad => \k11~combout\(2),
	combout => \inst1|inst1|lpm_mult_component1|auto_generated|w117w[0]~0_combout\);

-- Location: LCCOMB_X13_Y10_N12
\inst1|inst1|lpm_mult_component2|auto_generated|w70w[2]~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst1|inst1|lpm_mult_component2|auto_generated|w70w[2]~2_combout\ = (\k21~combout\(0) & (\k21~combout\(1) $ ((\inst1|p2_reg|dffs\(2))))) # (!\k21~combout\(0) & (\k21~combout\(1) & ((!\inst1|p2_reg|dffs\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010100001101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \k21~combout\(0),
	datab => \k21~combout\(1),
	datac => \inst1|p2_reg|dffs\(2),
	datad => \inst1|p2_reg|dffs\(1),
	combout => \inst1|inst1|lpm_mult_component2|auto_generated|w70w[2]~2_combout\);

-- Location: LCCOMB_X13_Y10_N2
\inst1|inst1|lpm_mult_component2|auto_generated|cs1a[1]~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst1|inst1|lpm_mult_component2|auto_generated|cs1a[1]~0_combout\ = \k21~combout\(3) $ (((\k21~combout\(1) & \k21~combout\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \k21~combout\(1),
	datac => \k21~combout\(2),
	datad => \k21~combout\(3),
	combout => \inst1|inst1|lpm_mult_component2|auto_generated|cs1a[1]~0_combout\);

-- Location: LCCOMB_X14_Y10_N10
\inst1|inst1|lpm_mult_component2|auto_generated|w117w[0]~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst1|inst1|lpm_mult_component2|auto_generated|w117w[0]~0_combout\ = \k21~combout\(3) $ (((\k21~combout\(2) & ((\k21~combout\(1)) # (\inst1|p2_reg|dffs\(0)))) # (!\k21~combout\(2) & (\k21~combout\(1) & \inst1|p2_reg|dffs\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101011001101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \k21~combout\(3),
	datab => \k21~combout\(2),
	datac => \k21~combout\(1),
	datad => \inst1|p2_reg|dffs\(0),
	combout => \inst1|inst1|lpm_mult_component2|auto_generated|w117w[0]~0_combout\);

-- Location: LCCOMB_X15_Y10_N6
\inst1|inst1|lpm_mult_component1|auto_generated|cs2a[1]~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst1|inst1|lpm_mult_component1|auto_generated|cs2a[1]~0_combout\ = \k11~combout\(2) $ (\k11~combout\(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \k11~combout\(2),
	datad => \k11~combout\(1),
	combout => \inst1|inst1|lpm_mult_component1|auto_generated|cs2a[1]~0_combout\);

-- Location: LCFF_X21_Y10_N27
\inst1|p2_reg|dffs[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \inst1|p2_reg|dffs[3]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst1|p2_reg|dffs\(3));

-- Location: LCCOMB_X13_Y10_N20
\inst1|inst1|lpm_mult_component2|auto_generated|w70w[3]~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst1|inst1|lpm_mult_component2|auto_generated|w70w[3]~3_combout\ = (\k21~combout\(0) & (\k21~combout\(1) $ ((\inst1|p2_reg|dffs\(3))))) # (!\k21~combout\(0) & (\k21~combout\(1) & ((!\inst1|p2_reg|dffs\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010100001101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \k21~combout\(0),
	datab => \k21~combout\(1),
	datac => \inst1|p2_reg|dffs\(3),
	datad => \inst1|p2_reg|dffs\(2),
	combout => \inst1|inst1|lpm_mult_component2|auto_generated|w70w[3]~3_combout\);

-- Location: LCCOMB_X13_Y10_N24
\inst1|inst1|lpm_mult_component2|auto_generated|op_2~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst1|inst1|lpm_mult_component2|auto_generated|op_2~2_combout\ = \inst1|inst1|lpm_mult_component2|auto_generated|w70w[3]~3_combout\ $ (((\inst1|inst1|lpm_mult_component2|auto_generated|cs1a[1]~0_combout\ & 
-- \inst1|inst1|lpm_mult_component2|auto_generated|w70w[2]~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst1|inst1|lpm_mult_component2|auto_generated|cs1a[1]~0_combout\,
	datac => \inst1|inst1|lpm_mult_component2|auto_generated|w70w[3]~3_combout\,
	datad => \inst1|inst1|lpm_mult_component2|auto_generated|w70w[2]~2_combout\,
	combout => \inst1|inst1|lpm_mult_component2|auto_generated|op_2~2_combout\);

-- Location: LCCOMB_X13_Y10_N6
\inst1|inst1|lpm_mult_component2|auto_generated|cs2a[1]~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst1|inst1|lpm_mult_component2|auto_generated|cs2a[1]~0_combout\ = \k21~combout\(2) $ (\k21~combout\(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \k21~combout\(2),
	datad => \k21~combout\(1),
	combout => \inst1|inst1|lpm_mult_component2|auto_generated|cs2a[1]~0_combout\);

-- Location: LCCOMB_X13_Y10_N18
\inst1|inst1|lpm_mult_component2|auto_generated|w117w[1]~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst1|inst1|lpm_mult_component2|auto_generated|w117w[1]~1_combout\ = (\inst1|inst1|lpm_mult_component2|auto_generated|cs2a[1]~0_combout\ & (\inst1|inst1|lpm_mult_component2|auto_generated|cs1a[1]~0_combout\ $ (((\inst1|p2_reg|dffs\(1)))))) # 
-- (!\inst1|inst1|lpm_mult_component2|auto_generated|cs2a[1]~0_combout\ & (\inst1|inst1|lpm_mult_component2|auto_generated|cs1a[1]~0_combout\ & (!\inst1|p2_reg|dffs\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010011010001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|inst1|lpm_mult_component2|auto_generated|cs2a[1]~0_combout\,
	datab => \inst1|inst1|lpm_mult_component2|auto_generated|cs1a[1]~0_combout\,
	datac => \inst1|p2_reg|dffs\(0),
	datad => \inst1|p2_reg|dffs\(1),
	combout => \inst1|inst1|lpm_mult_component2|auto_generated|w117w[1]~1_combout\);

-- Location: LCCOMB_X18_Y11_N12
\inst1|inst2|lpm_mult_component1|auto_generated|w70w[0]~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst1|inst2|lpm_mult_component1|auto_generated|w70w[0]~0_combout\ = \k12~combout\(1) $ (((\k12~combout\(0) & \inst1|p1_reg|dffs\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \k12~combout\(0),
	datac => \inst1|p1_reg|dffs\(0),
	datad => \k12~combout\(1),
	combout => \inst1|inst2|lpm_mult_component1|auto_generated|w70w[0]~0_combout\);

-- Location: LCCOMB_X18_Y11_N10
\inst1|inst2|lpm_mult_component2|auto_generated|w70w[0]~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst1|inst2|lpm_mult_component2|auto_generated|w70w[0]~0_combout\ = \k22~combout\(1) $ (((\k22~combout\(0) & \inst1|p2_reg|dffs\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \k22~combout\(0),
	datac => \k22~combout\(1),
	datad => \inst1|p2_reg|dffs\(0),
	combout => \inst1|inst2|lpm_mult_component2|auto_generated|w70w[0]~0_combout\);

-- Location: LCCOMB_X21_Y11_N12
\inst1|inst2|lpm_mult_component1|auto_generated|cs1a[1]~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst1|inst2|lpm_mult_component1|auto_generated|cs1a[1]~0_combout\ = \k12~combout\(3) $ (((\k12~combout\(2) & \k12~combout\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \k12~combout\(3),
	datac => \k12~combout\(2),
	datad => \k12~combout\(1),
	combout => \inst1|inst2|lpm_mult_component1|auto_generated|cs1a[1]~0_combout\);

-- Location: LCCOMB_X19_Y11_N26
\inst1|inst2|lpm_mult_component1|auto_generated|w117w[0]~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst1|inst2|lpm_mult_component1|auto_generated|w117w[0]~0_combout\ = \k12~combout\(3) $ (((\k12~combout\(1) & ((\k12~combout\(2)) # (\inst1|p1_reg|dffs\(0)))) # (!\k12~combout\(1) & (\k12~combout\(2) & \inst1|p1_reg|dffs\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101011001101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \k12~combout\(3),
	datab => \k12~combout\(1),
	datac => \k12~combout\(2),
	datad => \inst1|p1_reg|dffs\(0),
	combout => \inst1|inst2|lpm_mult_component1|auto_generated|w117w[0]~0_combout\);

-- Location: LCCOMB_X21_Y10_N24
\inst1|inst2|lpm_mult_component2|auto_generated|w70w[2]~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst1|inst2|lpm_mult_component2|auto_generated|w70w[2]~2_combout\ = (\k22~combout\(0) & (\k22~combout\(1) $ ((\inst1|p2_reg|dffs\(2))))) # (!\k22~combout\(0) & (\k22~combout\(1) & ((!\inst1|p2_reg|dffs\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110000001101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \k22~combout\(1),
	datab => \inst1|p2_reg|dffs\(2),
	datac => \k22~combout\(0),
	datad => \inst1|p2_reg|dffs\(1),
	combout => \inst1|inst2|lpm_mult_component2|auto_generated|w70w[2]~2_combout\);

-- Location: LCCOMB_X21_Y11_N18
\inst1|inst2|lpm_mult_component2|auto_generated|cs1a[1]~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst1|inst2|lpm_mult_component2|auto_generated|cs1a[1]~0_combout\ = \k22~combout\(3) $ (((\k22~combout\(2) & \k22~combout\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \k22~combout\(3),
	datac => \k22~combout\(2),
	datad => \k22~combout\(1),
	combout => \inst1|inst2|lpm_mult_component2|auto_generated|cs1a[1]~0_combout\);

-- Location: LCCOMB_X19_Y11_N0
\inst1|inst2|lpm_mult_component2|auto_generated|w117w[0]~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst1|inst2|lpm_mult_component2|auto_generated|w117w[0]~0_combout\ = \k22~combout\(3) $ (((\inst1|p2_reg|dffs\(0) & ((\k22~combout\(2)) # (\k22~combout\(1)))) # (!\inst1|p2_reg|dffs\(0) & (\k22~combout\(2) & \k22~combout\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101011001101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \k22~combout\(3),
	datab => \inst1|p2_reg|dffs\(0),
	datac => \k22~combout\(2),
	datad => \k22~combout\(1),
	combout => \inst1|inst2|lpm_mult_component2|auto_generated|w117w[0]~0_combout\);

-- Location: LCCOMB_X19_Y11_N2
\inst1|inst2|lpm_mult_component1|auto_generated|w70w[3]~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst1|inst2|lpm_mult_component1|auto_generated|w70w[3]~3_combout\ = (\k12~combout\(0) & (\inst1|p1_reg|dffs\(3) $ ((\k12~combout\(1))))) # (!\k12~combout\(0) & (((\k12~combout\(1) & !\inst1|p1_reg|dffs\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110000001101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|p1_reg|dffs\(3),
	datab => \k12~combout\(1),
	datac => \k12~combout\(0),
	datad => \inst1|p1_reg|dffs\(2),
	combout => \inst1|inst2|lpm_mult_component1|auto_generated|w70w[3]~3_combout\);

-- Location: LCCOMB_X19_Y11_N22
\inst1|inst2|lpm_mult_component1|auto_generated|op_2~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst1|inst2|lpm_mult_component1|auto_generated|op_2~2_combout\ = \inst1|inst2|lpm_mult_component1|auto_generated|w70w[3]~3_combout\ $ (((\inst1|inst2|lpm_mult_component1|auto_generated|cs1a[1]~0_combout\ & 
-- \inst1|inst2|lpm_mult_component1|auto_generated|w70w[2]~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst1|inst2|lpm_mult_component1|auto_generated|cs1a[1]~0_combout\,
	datac => \inst1|inst2|lpm_mult_component1|auto_generated|w70w[2]~2_combout\,
	datad => \inst1|inst2|lpm_mult_component1|auto_generated|w70w[3]~3_combout\,
	combout => \inst1|inst2|lpm_mult_component1|auto_generated|op_2~2_combout\);

-- Location: LCCOMB_X19_Y11_N12
\inst1|inst2|lpm_mult_component1|auto_generated|cs2a[1]~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst1|inst2|lpm_mult_component1|auto_generated|cs2a[1]~0_combout\ = \k12~combout\(2) $ (\k12~combout\(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \k12~combout\(2),
	datad => \k12~combout\(1),
	combout => \inst1|inst2|lpm_mult_component1|auto_generated|cs2a[1]~0_combout\);

-- Location: LCCOMB_X19_Y11_N24
\inst1|inst2|lpm_mult_component1|auto_generated|w117w[1]~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst1|inst2|lpm_mult_component1|auto_generated|w117w[1]~1_combout\ = (\inst1|inst2|lpm_mult_component1|auto_generated|cs2a[1]~0_combout\ & (\inst1|p1_reg|dffs\(1) $ ((\inst1|inst2|lpm_mult_component1|auto_generated|cs1a[1]~0_combout\)))) # 
-- (!\inst1|inst2|lpm_mult_component1|auto_generated|cs2a[1]~0_combout\ & (((\inst1|inst2|lpm_mult_component1|auto_generated|cs1a[1]~0_combout\ & !\inst1|p1_reg|dffs\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010100001111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|inst2|lpm_mult_component1|auto_generated|cs2a[1]~0_combout\,
	datab => \inst1|p1_reg|dffs\(1),
	datac => \inst1|inst2|lpm_mult_component1|auto_generated|cs1a[1]~0_combout\,
	datad => \inst1|p1_reg|dffs\(0),
	combout => \inst1|inst2|lpm_mult_component1|auto_generated|w117w[1]~1_combout\);

-- Location: LCCOMB_X21_Y10_N28
\inst1|inst2|lpm_mult_component2|auto_generated|w70w[3]~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst1|inst2|lpm_mult_component2|auto_generated|w70w[3]~3_combout\ = (\k22~combout\(0) & (\k22~combout\(1) $ (((\inst1|p2_reg|dffs\(3)))))) # (!\k22~combout\(0) & (\k22~combout\(1) & (!\inst1|p2_reg|dffs\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100011010001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \k22~combout\(1),
	datab => \k22~combout\(0),
	datac => \inst1|p2_reg|dffs\(2),
	datad => \inst1|p2_reg|dffs\(3),
	combout => \inst1|inst2|lpm_mult_component2|auto_generated|w70w[3]~3_combout\);

-- Location: LCCOMB_X21_Y10_N0
\inst1|inst2|lpm_mult_component2|auto_generated|op_2~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst1|inst2|lpm_mult_component2|auto_generated|op_2~2_combout\ = \inst1|inst2|lpm_mult_component2|auto_generated|w70w[3]~3_combout\ $ (((\inst1|inst2|lpm_mult_component2|auto_generated|cs1a[1]~0_combout\ & 
-- \inst1|inst2|lpm_mult_component2|auto_generated|w70w[2]~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110101001101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|inst2|lpm_mult_component2|auto_generated|w70w[3]~3_combout\,
	datab => \inst1|inst2|lpm_mult_component2|auto_generated|cs1a[1]~0_combout\,
	datac => \inst1|inst2|lpm_mult_component2|auto_generated|w70w[2]~2_combout\,
	combout => \inst1|inst2|lpm_mult_component2|auto_generated|op_2~2_combout\);

-- Location: LCCOMB_X21_Y11_N8
\inst1|inst2|lpm_mult_component2|auto_generated|cs2a[1]~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst1|inst2|lpm_mult_component2|auto_generated|cs2a[1]~0_combout\ = \k22~combout\(2) $ (\k22~combout\(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \k22~combout\(2),
	datad => \k22~combout\(1),
	combout => \inst1|inst2|lpm_mult_component2|auto_generated|cs2a[1]~0_combout\);

-- Location: LCCOMB_X21_Y11_N20
\inst1|inst2|lpm_mult_component2|auto_generated|w117w[1]~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst1|inst2|lpm_mult_component2|auto_generated|w117w[1]~1_combout\ = (\inst1|inst2|lpm_mult_component2|auto_generated|cs2a[1]~0_combout\ & ((\inst1|p2_reg|dffs\(1) $ (\inst1|inst2|lpm_mult_component2|auto_generated|cs1a[1]~0_combout\)))) # 
-- (!\inst1|inst2|lpm_mult_component2|auto_generated|cs2a[1]~0_combout\ & (!\inst1|p2_reg|dffs\(0) & ((\inst1|inst2|lpm_mult_component2|auto_generated|cs1a[1]~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001110111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|p2_reg|dffs\(0),
	datab => \inst1|inst2|lpm_mult_component2|auto_generated|cs2a[1]~0_combout\,
	datac => \inst1|p2_reg|dffs\(1),
	datad => \inst1|inst2|lpm_mult_component2|auto_generated|cs1a[1]~0_combout\,
	combout => \inst1|inst2|lpm_mult_component2|auto_generated|w117w[1]~1_combout\);

-- Location: LCCOMB_X20_Y11_N10
\inst1|inst3|lpm_mult_component2|auto_generated|w70w[0]~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst1|inst3|lpm_mult_component2|auto_generated|w70w[0]~0_combout\ = \k23~combout\(1) $ (((\inst1|p2_reg|dffs\(0) & \k23~combout\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \k23~combout\(1),
	datac => \inst1|p2_reg|dffs\(0),
	datad => \k23~combout\(0),
	combout => \inst1|inst3|lpm_mult_component2|auto_generated|w70w[0]~0_combout\);

-- Location: LCCOMB_X19_Y11_N30
\inst1|inst3|lpm_mult_component1|auto_generated|w70w[1]~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst1|inst3|lpm_mult_component1|auto_generated|w70w[1]~1_combout\ = (\k13~combout\(0) & (\k13~combout\(1) $ ((\inst1|p1_reg|dffs\(1))))) # (!\k13~combout\(0) & (\k13~combout\(1) & ((!\inst1|p1_reg|dffs\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100100001101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \k13~combout\(1),
	datab => \k13~combout\(0),
	datac => \inst1|p1_reg|dffs\(1),
	datad => \inst1|p1_reg|dffs\(0),
	combout => \inst1|inst3|lpm_mult_component1|auto_generated|w70w[1]~1_combout\);

-- Location: LCCOMB_X20_Y11_N12
\inst1|inst3|lpm_mult_component2|auto_generated|w70w[1]~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst1|inst3|lpm_mult_component2|auto_generated|w70w[1]~1_combout\ = (\k23~combout\(0) & (\k23~combout\(1) $ (((\inst1|p2_reg|dffs\(1)))))) # (!\k23~combout\(0) & (\k23~combout\(1) & (!\inst1|p2_reg|dffs\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100011010001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \k23~combout\(1),
	datab => \k23~combout\(0),
	datac => \inst1|p2_reg|dffs\(0),
	datad => \inst1|p2_reg|dffs\(1),
	combout => \inst1|inst3|lpm_mult_component2|auto_generated|w70w[1]~1_combout\);

-- Location: LCCOMB_X19_Y11_N4
\inst1|inst3|lpm_mult_component1|auto_generated|w117w[0]~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst1|inst3|lpm_mult_component1|auto_generated|w117w[0]~0_combout\ = \k13~combout\(3) $ (((\k13~combout\(1) & ((\k13~combout\(2)) # (\inst1|p1_reg|dffs\(0)))) # (!\k13~combout\(1) & (\k13~combout\(2) & \inst1|p1_reg|dffs\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001111001111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \k13~combout\(1),
	datab => \k13~combout\(2),
	datac => \k13~combout\(3),
	datad => \inst1|p1_reg|dffs\(0),
	combout => \inst1|inst3|lpm_mult_component1|auto_generated|w117w[0]~0_combout\);

-- Location: LCCOMB_X21_Y11_N10
\inst1|inst3|lpm_mult_component2|auto_generated|w117w[0]~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst1|inst3|lpm_mult_component2|auto_generated|w117w[0]~0_combout\ = \k23~combout\(3) $ (((\k23~combout\(1) & ((\inst1|p2_reg|dffs\(0)) # (\k23~combout\(2)))) # (!\k23~combout\(1) & (\inst1|p2_reg|dffs\(0) & \k23~combout\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011011001101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \k23~combout\(1),
	datab => \k23~combout\(3),
	datac => \inst1|p2_reg|dffs\(0),
	datad => \k23~combout\(2),
	combout => \inst1|inst3|lpm_mult_component2|auto_generated|w117w[0]~0_combout\);

-- Location: LCCOMB_X21_Y11_N16
\inst1|inst3|lpm_mult_component1|auto_generated|cs2a[1]~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst1|inst3|lpm_mult_component1|auto_generated|cs2a[1]~0_combout\ = \k13~combout\(2) $ (\k13~combout\(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \k13~combout\(2),
	datac => \k13~combout\(1),
	combout => \inst1|inst3|lpm_mult_component1|auto_generated|cs2a[1]~0_combout\);

-- Location: LCCOMB_X18_Y12_N24
\inst1|inst2|lpm_mult_component3|auto_generated|op_2~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst1|inst2|lpm_mult_component3|auto_generated|op_2~3_combout\ = \k32~combout\(3) $ (\inst1|inst2|lpm_mult_component3|auto_generated|w70w[2]~2_combout\ $ (((\k32~combout\(1) & \k32~combout\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001010101101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \k32~combout\(3),
	datab => \k32~combout\(1),
	datac => \k32~combout\(2),
	datad => \inst1|inst2|lpm_mult_component3|auto_generated|w70w[2]~2_combout\,
	combout => \inst1|inst2|lpm_mult_component3|auto_generated|op_2~3_combout\);

-- Location: LCCOMB_X14_Y10_N8
\inst1|inst1|lpm_mult_component2|auto_generated|op_2~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst1|inst1|lpm_mult_component2|auto_generated|op_2~3_combout\ = \k21~combout\(3) $ (\inst1|inst1|lpm_mult_component2|auto_generated|w70w[2]~2_combout\ $ (((\k21~combout\(1) & \k21~combout\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001010101101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \k21~combout\(3),
	datab => \k21~combout\(1),
	datac => \k21~combout\(2),
	datad => \inst1|inst1|lpm_mult_component2|auto_generated|w70w[2]~2_combout\,
	combout => \inst1|inst1|lpm_mult_component2|auto_generated|op_2~3_combout\);

-- Location: LCCOMB_X18_Y11_N22
\inst1|inst2|lpm_mult_component2|auto_generated|op_2~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst1|inst2|lpm_mult_component2|auto_generated|op_2~3_combout\ = \k22~combout\(3) $ (\inst1|inst2|lpm_mult_component2|auto_generated|w70w[2]~2_combout\ $ (((\k22~combout\(2) & \k22~combout\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011001100110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \k22~combout\(3),
	datab => \inst1|inst2|lpm_mult_component2|auto_generated|w70w[2]~2_combout\,
	datac => \k22~combout\(2),
	datad => \k22~combout\(1),
	combout => \inst1|inst2|lpm_mult_component2|auto_generated|op_2~3_combout\);

-- Location: PIN_H1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
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

-- Location: PIN_E14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
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

-- Location: PIN_C4,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
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

-- Location: PIN_R11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
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

-- Location: PIN_G7,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
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

-- Location: PIN_D6,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
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

-- Location: PIN_H13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
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

-- Location: PIN_D16,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
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

-- Location: PIN_B12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
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

-- Location: PIN_F15,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
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

-- Location: LCCOMB_X21_Y10_N26
\inst1|p2_reg|dffs[3]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst1|p2_reg|dffs[3]~feeder_combout\ = \p2~combout\(3)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \p2~combout\(3),
	combout => \inst1|p2_reg|dffs[3]~feeder_combout\);

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

-- Location: PIN_A6,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
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

-- Location: PIN_K15,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
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

-- Location: LCCOMB_X20_Y10_N2
\inst1|p1_reg|dffs[0]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst1|p1_reg|dffs[0]~feeder_combout\ = \p1~combout\(0)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \p1~combout\(0),
	combout => \inst1|p1_reg|dffs[0]~feeder_combout\);

-- Location: LCFF_X20_Y10_N3
\inst1|p1_reg|dffs[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \inst1|p1_reg|dffs[0]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst1|p1_reg|dffs\(0));

-- Location: PIN_A9,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
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

-- Location: LCCOMB_X15_Y10_N26
\inst1|inst1|lpm_mult_component1|auto_generated|w70w[0]~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst1|inst1|lpm_mult_component1|auto_generated|w70w[0]~0_combout\ = \k11~combout\(1) $ (((\k11~combout\(0) & \inst1|p1_reg|dffs\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \k11~combout\(0),
	datac => \inst1|p1_reg|dffs\(0),
	datad => \k11~combout\(1),
	combout => \inst1|inst1|lpm_mult_component1|auto_generated|w70w[0]~0_combout\);

-- Location: LCFF_X14_Y10_N19
\inst1|inst1|lpm_mult_component1|auto_generated|dffe3\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \inst1|inst1|lpm_mult_component1|auto_generated|w70w[0]~0_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst1|inst1|lpm_mult_component1|auto_generated|dffe3~regout\);

-- Location: LCCOMB_X14_Y10_N0
\inst1|inst1|lpm_mult_component1|auto_generated|op_1~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst1|inst1|lpm_mult_component1|auto_generated|op_1~0_combout\ = (\inst1|inst1|lpm_mult_component1|auto_generated|dffe4~regout\ & (\inst1|inst1|lpm_mult_component1|auto_generated|dffe3~regout\ $ (VCC))) # 
-- (!\inst1|inst1|lpm_mult_component1|auto_generated|dffe4~regout\ & (\inst1|inst1|lpm_mult_component1|auto_generated|dffe3~regout\ & VCC))
-- \inst1|inst1|lpm_mult_component1|auto_generated|op_1~1\ = CARRY((\inst1|inst1|lpm_mult_component1|auto_generated|dffe4~regout\ & \inst1|inst1|lpm_mult_component1|auto_generated|dffe3~regout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|inst1|lpm_mult_component1|auto_generated|dffe4~regout\,
	datab => \inst1|inst1|lpm_mult_component1|auto_generated|dffe3~regout\,
	datad => VCC,
	combout => \inst1|inst1|lpm_mult_component1|auto_generated|op_1~0_combout\,
	cout => \inst1|inst1|lpm_mult_component1|auto_generated|op_1~1\);

-- Location: LCCOMB_X14_Y10_N22
\inst1|inst1|lpm_add_compontent1|auto_generated|pipeline_dffe[0]~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst1|inst1|lpm_add_compontent1|auto_generated|pipeline_dffe[0]~4_combout\ = (\inst1|inst1|lpm_mult_component2|auto_generated|op_1~0_combout\ & (\inst1|inst1|lpm_mult_component1|auto_generated|op_1~0_combout\ $ (VCC))) # 
-- (!\inst1|inst1|lpm_mult_component2|auto_generated|op_1~0_combout\ & (\inst1|inst1|lpm_mult_component1|auto_generated|op_1~0_combout\ & VCC))
-- \inst1|inst1|lpm_add_compontent1|auto_generated|pipeline_dffe[0]~5\ = CARRY((\inst1|inst1|lpm_mult_component2|auto_generated|op_1~0_combout\ & \inst1|inst1|lpm_mult_component1|auto_generated|op_1~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|inst1|lpm_mult_component2|auto_generated|op_1~0_combout\,
	datab => \inst1|inst1|lpm_mult_component1|auto_generated|op_1~0_combout\,
	datad => VCC,
	combout => \inst1|inst1|lpm_add_compontent1|auto_generated|pipeline_dffe[0]~4_combout\,
	cout => \inst1|inst1|lpm_add_compontent1|auto_generated|pipeline_dffe[0]~5\);

-- Location: LCFF_X14_Y10_N23
\inst1|inst1|lpm_add_compontent1|auto_generated|pipeline_dffe[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \inst1|inst1|lpm_add_compontent1|auto_generated|pipeline_dffe[0]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst1|inst1|lpm_add_compontent1|auto_generated|pipeline_dffe\(0));

-- Location: LCCOMB_X17_Y10_N18
\inst1|inst1|lpm_add_compontent2|auto_generated|pipeline_dffe[0]~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst1|inst1|lpm_add_compontent2|auto_generated|pipeline_dffe[0]~4_combout\ = (\inst1|inst1|lpm_mult_component3|auto_generated|op_1~0_combout\ & (\inst1|inst1|lpm_add_compontent1|auto_generated|pipeline_dffe\(0) $ (VCC))) # 
-- (!\inst1|inst1|lpm_mult_component3|auto_generated|op_1~0_combout\ & (\inst1|inst1|lpm_add_compontent1|auto_generated|pipeline_dffe\(0) & VCC))
-- \inst1|inst1|lpm_add_compontent2|auto_generated|pipeline_dffe[0]~5\ = CARRY((\inst1|inst1|lpm_mult_component3|auto_generated|op_1~0_combout\ & \inst1|inst1|lpm_add_compontent1|auto_generated|pipeline_dffe\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|inst1|lpm_mult_component3|auto_generated|op_1~0_combout\,
	datab => \inst1|inst1|lpm_add_compontent1|auto_generated|pipeline_dffe\(0),
	datad => VCC,
	combout => \inst1|inst1|lpm_add_compontent2|auto_generated|pipeline_dffe[0]~4_combout\,
	cout => \inst1|inst1|lpm_add_compontent2|auto_generated|pipeline_dffe[0]~5\);

-- Location: LCFF_X17_Y10_N19
\inst1|inst1|lpm_add_compontent2|auto_generated|pipeline_dffe[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \inst1|inst1|lpm_add_compontent2|auto_generated|pipeline_dffe[0]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst1|inst1|lpm_add_compontent2|auto_generated|pipeline_dffe\(0));

-- Location: LCCOMB_X18_Y10_N20
\inst1|c1_reg|dffs[0]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst1|c1_reg|dffs[0]~feeder_combout\ = \inst1|inst1|lpm_add_compontent2|auto_generated|pipeline_dffe\(0)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst1|inst1|lpm_add_compontent2|auto_generated|pipeline_dffe\(0),
	combout => \inst1|c1_reg|dffs[0]~feeder_combout\);

-- Location: LCFF_X18_Y10_N21
\inst1|c1_reg|dffs[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \inst1|c1_reg|dffs[0]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst1|c1_reg|dffs\(0));

-- Location: PIN_B10,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
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

-- Location: PIN_F8,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
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

-- Location: LCFF_X17_Y12_N17
\inst1|p3_reg|dffs[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \p3~combout\(1),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst1|p3_reg|dffs\(1));

-- Location: PIN_F9,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
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

-- Location: LCFF_X18_Y11_N7
\inst1|p3_reg|dffs[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \p3~combout\(0),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst1|p3_reg|dffs\(0));

-- Location: LCCOMB_X17_Y10_N28
\inst1|inst1|lpm_mult_component3|auto_generated|w70w[1]~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst1|inst1|lpm_mult_component3|auto_generated|w70w[1]~1_combout\ = (\k31~combout\(0) & (\k31~combout\(1) $ ((\inst1|p3_reg|dffs\(1))))) # (!\k31~combout\(0) & (\k31~combout\(1) & ((!\inst1|p3_reg|dffs\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010100001101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \k31~combout\(0),
	datab => \k31~combout\(1),
	datac => \inst1|p3_reg|dffs\(1),
	datad => \inst1|p3_reg|dffs\(0),
	combout => \inst1|inst1|lpm_mult_component3|auto_generated|w70w[1]~1_combout\);

-- Location: LCFF_X17_Y10_N29
\inst1|inst1|lpm_mult_component3|auto_generated|dffe5\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \inst1|inst1|lpm_mult_component3|auto_generated|w70w[1]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst1|inst1|lpm_mult_component3|auto_generated|dffe5~regout\);

-- Location: LCFF_X17_Y10_N1
\inst1|inst1|lpm_mult_component3|auto_generated|dffe4\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \k31~combout\(1),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst1|inst1|lpm_mult_component3|auto_generated|dffe4~regout\);

-- Location: LCCOMB_X17_Y10_N2
\inst1|inst1|lpm_mult_component3|auto_generated|op_1~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst1|inst1|lpm_mult_component3|auto_generated|op_1~2_combout\ = (\inst1|inst1|lpm_mult_component3|auto_generated|dffe5~regout\ & (!\inst1|inst1|lpm_mult_component3|auto_generated|op_1~1\)) # 
-- (!\inst1|inst1|lpm_mult_component3|auto_generated|dffe5~regout\ & ((\inst1|inst1|lpm_mult_component3|auto_generated|op_1~1\) # (GND)))
-- \inst1|inst1|lpm_mult_component3|auto_generated|op_1~3\ = CARRY((!\inst1|inst1|lpm_mult_component3|auto_generated|op_1~1\) # (!\inst1|inst1|lpm_mult_component3|auto_generated|dffe5~regout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst1|inst1|lpm_mult_component3|auto_generated|dffe5~regout\,
	datad => VCC,
	cin => \inst1|inst1|lpm_mult_component3|auto_generated|op_1~1\,
	combout => \inst1|inst1|lpm_mult_component3|auto_generated|op_1~2_combout\,
	cout => \inst1|inst1|lpm_mult_component3|auto_generated|op_1~3\);

-- Location: LCCOMB_X17_Y10_N20
\inst1|inst1|lpm_add_compontent2|auto_generated|pipeline_dffe[1]~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst1|inst1|lpm_add_compontent2|auto_generated|pipeline_dffe[1]~6_combout\ = (\inst1|inst1|lpm_add_compontent1|auto_generated|pipeline_dffe\(1) & ((\inst1|inst1|lpm_mult_component3|auto_generated|op_1~2_combout\ & 
-- (\inst1|inst1|lpm_add_compontent2|auto_generated|pipeline_dffe[0]~5\ & VCC)) # (!\inst1|inst1|lpm_mult_component3|auto_generated|op_1~2_combout\ & (!\inst1|inst1|lpm_add_compontent2|auto_generated|pipeline_dffe[0]~5\)))) # 
-- (!\inst1|inst1|lpm_add_compontent1|auto_generated|pipeline_dffe\(1) & ((\inst1|inst1|lpm_mult_component3|auto_generated|op_1~2_combout\ & (!\inst1|inst1|lpm_add_compontent2|auto_generated|pipeline_dffe[0]~5\)) # 
-- (!\inst1|inst1|lpm_mult_component3|auto_generated|op_1~2_combout\ & ((\inst1|inst1|lpm_add_compontent2|auto_generated|pipeline_dffe[0]~5\) # (GND)))))
-- \inst1|inst1|lpm_add_compontent2|auto_generated|pipeline_dffe[1]~7\ = CARRY((\inst1|inst1|lpm_add_compontent1|auto_generated|pipeline_dffe\(1) & (!\inst1|inst1|lpm_mult_component3|auto_generated|op_1~2_combout\ & 
-- !\inst1|inst1|lpm_add_compontent2|auto_generated|pipeline_dffe[0]~5\)) # (!\inst1|inst1|lpm_add_compontent1|auto_generated|pipeline_dffe\(1) & ((!\inst1|inst1|lpm_add_compontent2|auto_generated|pipeline_dffe[0]~5\) # 
-- (!\inst1|inst1|lpm_mult_component3|auto_generated|op_1~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|inst1|lpm_add_compontent1|auto_generated|pipeline_dffe\(1),
	datab => \inst1|inst1|lpm_mult_component3|auto_generated|op_1~2_combout\,
	datad => VCC,
	cin => \inst1|inst1|lpm_add_compontent2|auto_generated|pipeline_dffe[0]~5\,
	combout => \inst1|inst1|lpm_add_compontent2|auto_generated|pipeline_dffe[1]~6_combout\,
	cout => \inst1|inst1|lpm_add_compontent2|auto_generated|pipeline_dffe[1]~7\);

-- Location: LCFF_X17_Y10_N21
\inst1|inst1|lpm_add_compontent2|auto_generated|pipeline_dffe[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \inst1|inst1|lpm_add_compontent2|auto_generated|pipeline_dffe[1]~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst1|inst1|lpm_add_compontent2|auto_generated|pipeline_dffe\(1));

-- Location: LCCOMB_X20_Y10_N4
\inst1|c1_reg|dffs[1]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst1|c1_reg|dffs[1]~feeder_combout\ = \inst1|inst1|lpm_add_compontent2|auto_generated|pipeline_dffe\(1)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst1|inst1|lpm_add_compontent2|auto_generated|pipeline_dffe\(1),
	combout => \inst1|c1_reg|dffs[1]~feeder_combout\);

-- Location: LCFF_X20_Y10_N5
\inst1|c1_reg|dffs[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \inst1|c1_reg|dffs[1]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst1|c1_reg|dffs\(1));

-- Location: PIN_B7,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
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

-- Location: PIN_D8,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
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

-- Location: LCCOMB_X17_Y12_N18
\inst1|p3_reg|dffs[2]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst1|p3_reg|dffs[2]~feeder_combout\ = \p3~combout\(2)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \p3~combout\(2),
	combout => \inst1|p3_reg|dffs[2]~feeder_combout\);

-- Location: LCFF_X17_Y12_N19
\inst1|p3_reg|dffs[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \inst1|p3_reg|dffs[2]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst1|p3_reg|dffs\(2));

-- Location: PIN_A10,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
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

-- Location: LCCOMB_X17_Y12_N20
\inst1|inst1|lpm_mult_component3|auto_generated|w70w[2]~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst1|inst1|lpm_mult_component3|auto_generated|w70w[2]~2_combout\ = (\k31~combout\(0) & (\k31~combout\(1) $ ((\inst1|p3_reg|dffs\(2))))) # (!\k31~combout\(0) & (\k31~combout\(1) & ((!\inst1|p3_reg|dffs\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110000001101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \k31~combout\(1),
	datab => \inst1|p3_reg|dffs\(2),
	datac => \k31~combout\(0),
	datad => \inst1|p3_reg|dffs\(1),
	combout => \inst1|inst1|lpm_mult_component3|auto_generated|w70w[2]~2_combout\);

-- Location: LCCOMB_X17_Y10_N26
\inst1|inst1|lpm_mult_component3|auto_generated|op_2~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst1|inst1|lpm_mult_component3|auto_generated|op_2~3_combout\ = \k31~combout\(3) $ (\inst1|inst1|lpm_mult_component3|auto_generated|w70w[2]~2_combout\ $ (((\k31~combout\(2) & \k31~combout\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000011101111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \k31~combout\(2),
	datab => \k31~combout\(1),
	datac => \k31~combout\(3),
	datad => \inst1|inst1|lpm_mult_component3|auto_generated|w70w[2]~2_combout\,
	combout => \inst1|inst1|lpm_mult_component3|auto_generated|op_2~3_combout\);

-- Location: LCFF_X17_Y10_N27
\inst1|inst1|lpm_mult_component3|auto_generated|dffe7\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \inst1|inst1|lpm_mult_component3|auto_generated|op_2~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst1|inst1|lpm_mult_component3|auto_generated|dffe7~regout\);

-- Location: LCCOMB_X17_Y10_N4
\inst1|inst1|lpm_mult_component3|auto_generated|op_1~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst1|inst1|lpm_mult_component3|auto_generated|op_1~4_combout\ = ((\inst1|inst1|lpm_mult_component3|auto_generated|dffe6~regout\ $ (\inst1|inst1|lpm_mult_component3|auto_generated|dffe7~regout\ $ 
-- (!\inst1|inst1|lpm_mult_component3|auto_generated|op_1~3\)))) # (GND)
-- \inst1|inst1|lpm_mult_component3|auto_generated|op_1~5\ = CARRY((\inst1|inst1|lpm_mult_component3|auto_generated|dffe6~regout\ & ((\inst1|inst1|lpm_mult_component3|auto_generated|dffe7~regout\) # 
-- (!\inst1|inst1|lpm_mult_component3|auto_generated|op_1~3\))) # (!\inst1|inst1|lpm_mult_component3|auto_generated|dffe6~regout\ & (\inst1|inst1|lpm_mult_component3|auto_generated|dffe7~regout\ & !\inst1|inst1|lpm_mult_component3|auto_generated|op_1~3\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|inst1|lpm_mult_component3|auto_generated|dffe6~regout\,
	datab => \inst1|inst1|lpm_mult_component3|auto_generated|dffe7~regout\,
	datad => VCC,
	cin => \inst1|inst1|lpm_mult_component3|auto_generated|op_1~3\,
	combout => \inst1|inst1|lpm_mult_component3|auto_generated|op_1~4_combout\,
	cout => \inst1|inst1|lpm_mult_component3|auto_generated|op_1~5\);

-- Location: LCCOMB_X17_Y10_N22
\inst1|inst1|lpm_add_compontent2|auto_generated|pipeline_dffe[2]~8\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst1|inst1|lpm_add_compontent2|auto_generated|pipeline_dffe[2]~8_combout\ = ((\inst1|inst1|lpm_add_compontent1|auto_generated|pipeline_dffe\(2) $ (\inst1|inst1|lpm_mult_component3|auto_generated|op_1~4_combout\ $ 
-- (!\inst1|inst1|lpm_add_compontent2|auto_generated|pipeline_dffe[1]~7\)))) # (GND)
-- \inst1|inst1|lpm_add_compontent2|auto_generated|pipeline_dffe[2]~9\ = CARRY((\inst1|inst1|lpm_add_compontent1|auto_generated|pipeline_dffe\(2) & ((\inst1|inst1|lpm_mult_component3|auto_generated|op_1~4_combout\) # 
-- (!\inst1|inst1|lpm_add_compontent2|auto_generated|pipeline_dffe[1]~7\))) # (!\inst1|inst1|lpm_add_compontent1|auto_generated|pipeline_dffe\(2) & (\inst1|inst1|lpm_mult_component3|auto_generated|op_1~4_combout\ & 
-- !\inst1|inst1|lpm_add_compontent2|auto_generated|pipeline_dffe[1]~7\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|inst1|lpm_add_compontent1|auto_generated|pipeline_dffe\(2),
	datab => \inst1|inst1|lpm_mult_component3|auto_generated|op_1~4_combout\,
	datad => VCC,
	cin => \inst1|inst1|lpm_add_compontent2|auto_generated|pipeline_dffe[1]~7\,
	combout => \inst1|inst1|lpm_add_compontent2|auto_generated|pipeline_dffe[2]~8_combout\,
	cout => \inst1|inst1|lpm_add_compontent2|auto_generated|pipeline_dffe[2]~9\);

-- Location: LCFF_X17_Y10_N23
\inst1|inst1|lpm_add_compontent2|auto_generated|pipeline_dffe[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \inst1|inst1|lpm_add_compontent2|auto_generated|pipeline_dffe[2]~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst1|inst1|lpm_add_compontent2|auto_generated|pipeline_dffe\(2));

-- Location: LCFF_X17_Y10_N9
\inst1|c1_reg|dffs[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \inst1|inst1|lpm_add_compontent2|auto_generated|pipeline_dffe\(2),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst1|c1_reg|dffs\(2));

-- Location: PIN_G6,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
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

-- Location: PIN_B6,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
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

-- Location: LCCOMB_X15_Y10_N0
\inst1|inst1|lpm_mult_component1|auto_generated|cs1a[1]~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst1|inst1|lpm_mult_component1|auto_generated|cs1a[1]~0_combout\ = \k11~combout\(3) $ (((\k11~combout\(2) & \k11~combout\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \k11~combout\(2),
	datac => \k11~combout\(3),
	datad => \k11~combout\(1),
	combout => \inst1|inst1|lpm_mult_component1|auto_generated|cs1a[1]~0_combout\);

-- Location: PIN_A14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
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

-- Location: LCCOMB_X18_Y10_N2
\inst1|p1_reg|dffs[1]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst1|p1_reg|dffs[1]~feeder_combout\ = \p1~combout\(1)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \p1~combout\(1),
	combout => \inst1|p1_reg|dffs[1]~feeder_combout\);

-- Location: LCFF_X18_Y10_N3
\inst1|p1_reg|dffs[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \inst1|p1_reg|dffs[1]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst1|p1_reg|dffs\(1));

-- Location: LCCOMB_X15_Y10_N12
\inst1|inst1|lpm_mult_component1|auto_generated|w117w[1]~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst1|inst1|lpm_mult_component1|auto_generated|w117w[1]~1_combout\ = (\inst1|inst1|lpm_mult_component1|auto_generated|cs2a[1]~0_combout\ & (\inst1|inst1|lpm_mult_component1|auto_generated|cs1a[1]~0_combout\ $ (((\inst1|p1_reg|dffs\(1)))))) # 
-- (!\inst1|inst1|lpm_mult_component1|auto_generated|cs2a[1]~0_combout\ & (\inst1|inst1|lpm_mult_component1|auto_generated|cs1a[1]~0_combout\ & (!\inst1|p1_reg|dffs\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010011010001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|inst1|lpm_mult_component1|auto_generated|cs2a[1]~0_combout\,
	datab => \inst1|inst1|lpm_mult_component1|auto_generated|cs1a[1]~0_combout\,
	datac => \inst1|p1_reg|dffs\(0),
	datad => \inst1|p1_reg|dffs\(1),
	combout => \inst1|inst1|lpm_mult_component1|auto_generated|w117w[1]~1_combout\);

-- Location: LCFF_X15_Y10_N13
\inst1|inst1|lpm_mult_component1|auto_generated|dffe8\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \inst1|inst1|lpm_mult_component1|auto_generated|w117w[1]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst1|inst1|lpm_mult_component1|auto_generated|dffe8~regout\);

-- Location: PIN_B9,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
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

-- Location: LCCOMB_X15_Y11_N20
\inst1|p1_reg|dffs[2]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst1|p1_reg|dffs[2]~feeder_combout\ = \p1~combout\(2)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \p1~combout\(2),
	combout => \inst1|p1_reg|dffs[2]~feeder_combout\);

-- Location: LCFF_X15_Y11_N21
\inst1|p1_reg|dffs[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \inst1|p1_reg|dffs[2]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst1|p1_reg|dffs\(2));

-- Location: PIN_A8,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
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

-- Location: LCCOMB_X15_Y11_N18
\inst1|p1_reg|dffs[3]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst1|p1_reg|dffs[3]~feeder_combout\ = \p1~combout\(3)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \p1~combout\(3),
	combout => \inst1|p1_reg|dffs[3]~feeder_combout\);

-- Location: LCFF_X15_Y11_N19
\inst1|p1_reg|dffs[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \inst1|p1_reg|dffs[3]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst1|p1_reg|dffs\(3));

-- Location: LCCOMB_X15_Y10_N8
\inst1|inst1|lpm_mult_component1|auto_generated|w70w[3]~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst1|inst1|lpm_mult_component1|auto_generated|w70w[3]~3_combout\ = (\k11~combout\(0) & (\k11~combout\(1) $ (((\inst1|p1_reg|dffs\(3)))))) # (!\k11~combout\(0) & (\k11~combout\(1) & (!\inst1|p1_reg|dffs\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100011010001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \k11~combout\(1),
	datab => \k11~combout\(0),
	datac => \inst1|p1_reg|dffs\(2),
	datad => \inst1|p1_reg|dffs\(3),
	combout => \inst1|inst1|lpm_mult_component1|auto_generated|w70w[3]~3_combout\);

-- Location: LCCOMB_X15_Y10_N10
\inst1|inst1|lpm_mult_component1|auto_generated|w70w[2]~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst1|inst1|lpm_mult_component1|auto_generated|w70w[2]~2_combout\ = (\k11~combout\(0) & (\k11~combout\(1) $ ((\inst1|p1_reg|dffs\(2))))) # (!\k11~combout\(0) & (\k11~combout\(1) & ((!\inst1|p1_reg|dffs\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100100001101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \k11~combout\(1),
	datab => \k11~combout\(0),
	datac => \inst1|p1_reg|dffs\(2),
	datad => \inst1|p1_reg|dffs\(1),
	combout => \inst1|inst1|lpm_mult_component1|auto_generated|w70w[2]~2_combout\);

-- Location: LCCOMB_X15_Y10_N30
\inst1|inst1|lpm_mult_component1|auto_generated|op_2~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst1|inst1|lpm_mult_component1|auto_generated|op_2~2_combout\ = \inst1|inst1|lpm_mult_component1|auto_generated|w70w[3]~3_combout\ $ (((\inst1|inst1|lpm_mult_component1|auto_generated|cs1a[1]~0_combout\ & 
-- \inst1|inst1|lpm_mult_component1|auto_generated|w70w[2]~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst1|inst1|lpm_mult_component1|auto_generated|cs1a[1]~0_combout\,
	datac => \inst1|inst1|lpm_mult_component1|auto_generated|w70w[3]~3_combout\,
	datad => \inst1|inst1|lpm_mult_component1|auto_generated|w70w[2]~2_combout\,
	combout => \inst1|inst1|lpm_mult_component1|auto_generated|op_2~2_combout\);

-- Location: LCFF_X15_Y10_N31
\inst1|inst1|lpm_mult_component1|auto_generated|dffe9\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \inst1|inst1|lpm_mult_component1|auto_generated|op_2~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst1|inst1|lpm_mult_component1|auto_generated|dffe9~regout\);

-- Location: LCCOMB_X15_Y10_N24
\inst1|inst1|lpm_mult_component1|auto_generated|op_2~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst1|inst1|lpm_mult_component1|auto_generated|op_2~3_combout\ = \k11~combout\(3) $ (\inst1|inst1|lpm_mult_component1|auto_generated|w70w[2]~2_combout\ $ (((\k11~combout\(1) & \k11~combout\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000011101111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \k11~combout\(1),
	datab => \k11~combout\(2),
	datac => \k11~combout\(3),
	datad => \inst1|inst1|lpm_mult_component1|auto_generated|w70w[2]~2_combout\,
	combout => \inst1|inst1|lpm_mult_component1|auto_generated|op_2~3_combout\);

-- Location: LCFF_X15_Y10_N25
\inst1|inst1|lpm_mult_component1|auto_generated|dffe7\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \inst1|inst1|lpm_mult_component1|auto_generated|op_2~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst1|inst1|lpm_mult_component1|auto_generated|dffe7~regout\);

-- Location: LCCOMB_X15_Y10_N16
\inst1|inst1|lpm_mult_component1|auto_generated|w70w[1]~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst1|inst1|lpm_mult_component1|auto_generated|w70w[1]~1_combout\ = (\k11~combout\(0) & (\k11~combout\(1) $ (((\inst1|p1_reg|dffs\(1)))))) # (!\k11~combout\(0) & (\k11~combout\(1) & (!\inst1|p1_reg|dffs\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100011010001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \k11~combout\(1),
	datab => \k11~combout\(0),
	datac => \inst1|p1_reg|dffs\(0),
	datad => \inst1|p1_reg|dffs\(1),
	combout => \inst1|inst1|lpm_mult_component1|auto_generated|w70w[1]~1_combout\);

-- Location: LCFF_X14_Y10_N3
\inst1|inst1|lpm_mult_component1|auto_generated|dffe5\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \inst1|inst1|lpm_mult_component1|auto_generated|w70w[1]~1_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst1|inst1|lpm_mult_component1|auto_generated|dffe5~regout\);

-- Location: LCCOMB_X14_Y10_N2
\inst1|inst1|lpm_mult_component1|auto_generated|op_1~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst1|inst1|lpm_mult_component1|auto_generated|op_1~2_combout\ = (\inst1|inst1|lpm_mult_component1|auto_generated|dffe5~regout\ & (!\inst1|inst1|lpm_mult_component1|auto_generated|op_1~1\)) # 
-- (!\inst1|inst1|lpm_mult_component1|auto_generated|dffe5~regout\ & ((\inst1|inst1|lpm_mult_component1|auto_generated|op_1~1\) # (GND)))
-- \inst1|inst1|lpm_mult_component1|auto_generated|op_1~3\ = CARRY((!\inst1|inst1|lpm_mult_component1|auto_generated|op_1~1\) # (!\inst1|inst1|lpm_mult_component1|auto_generated|dffe5~regout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst1|inst1|lpm_mult_component1|auto_generated|dffe5~regout\,
	datad => VCC,
	cin => \inst1|inst1|lpm_mult_component1|auto_generated|op_1~1\,
	combout => \inst1|inst1|lpm_mult_component1|auto_generated|op_1~2_combout\,
	cout => \inst1|inst1|lpm_mult_component1|auto_generated|op_1~3\);

-- Location: LCCOMB_X14_Y10_N4
\inst1|inst1|lpm_mult_component1|auto_generated|op_1~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst1|inst1|lpm_mult_component1|auto_generated|op_1~4_combout\ = ((\inst1|inst1|lpm_mult_component1|auto_generated|dffe6~regout\ $ (\inst1|inst1|lpm_mult_component1|auto_generated|dffe7~regout\ $ 
-- (!\inst1|inst1|lpm_mult_component1|auto_generated|op_1~3\)))) # (GND)
-- \inst1|inst1|lpm_mult_component1|auto_generated|op_1~5\ = CARRY((\inst1|inst1|lpm_mult_component1|auto_generated|dffe6~regout\ & ((\inst1|inst1|lpm_mult_component1|auto_generated|dffe7~regout\) # 
-- (!\inst1|inst1|lpm_mult_component1|auto_generated|op_1~3\))) # (!\inst1|inst1|lpm_mult_component1|auto_generated|dffe6~regout\ & (\inst1|inst1|lpm_mult_component1|auto_generated|dffe7~regout\ & !\inst1|inst1|lpm_mult_component1|auto_generated|op_1~3\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|inst1|lpm_mult_component1|auto_generated|dffe6~regout\,
	datab => \inst1|inst1|lpm_mult_component1|auto_generated|dffe7~regout\,
	datad => VCC,
	cin => \inst1|inst1|lpm_mult_component1|auto_generated|op_1~3\,
	combout => \inst1|inst1|lpm_mult_component1|auto_generated|op_1~4_combout\,
	cout => \inst1|inst1|lpm_mult_component1|auto_generated|op_1~5\);

-- Location: LCCOMB_X14_Y10_N6
\inst1|inst1|lpm_mult_component1|auto_generated|op_1~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst1|inst1|lpm_mult_component1|auto_generated|op_1~6_combout\ = \inst1|inst1|lpm_mult_component1|auto_generated|dffe8~regout\ $ (\inst1|inst1|lpm_mult_component1|auto_generated|op_1~5\ $ (\inst1|inst1|lpm_mult_component1|auto_generated|dffe9~regout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100111100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst1|inst1|lpm_mult_component1|auto_generated|dffe8~regout\,
	datad => \inst1|inst1|lpm_mult_component1|auto_generated|dffe9~regout\,
	cin => \inst1|inst1|lpm_mult_component1|auto_generated|op_1~5\,
	combout => \inst1|inst1|lpm_mult_component1|auto_generated|op_1~6_combout\);

-- Location: LCCOMB_X14_Y10_N28
\inst1|inst1|lpm_add_compontent1|auto_generated|pipeline_dffe[3]~10\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst1|inst1|lpm_add_compontent1|auto_generated|pipeline_dffe[3]~10_combout\ = \inst1|inst1|lpm_mult_component2|auto_generated|op_1~6_combout\ $ (\inst1|inst1|lpm_add_compontent1|auto_generated|pipeline_dffe[2]~9\ $ 
-- (\inst1|inst1|lpm_mult_component1|auto_generated|op_1~6_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010101011010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|inst1|lpm_mult_component2|auto_generated|op_1~6_combout\,
	datad => \inst1|inst1|lpm_mult_component1|auto_generated|op_1~6_combout\,
	cin => \inst1|inst1|lpm_add_compontent1|auto_generated|pipeline_dffe[2]~9\,
	combout => \inst1|inst1|lpm_add_compontent1|auto_generated|pipeline_dffe[3]~10_combout\);

-- Location: LCFF_X14_Y10_N29
\inst1|inst1|lpm_add_compontent1|auto_generated|pipeline_dffe[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \inst1|inst1|lpm_add_compontent1|auto_generated|pipeline_dffe[3]~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst1|inst1|lpm_add_compontent1|auto_generated|pipeline_dffe\(3));

-- Location: LCCOMB_X17_Y10_N8
\inst1|inst1|lpm_mult_component3|auto_generated|cs1a[1]~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst1|inst1|lpm_mult_component3|auto_generated|cs1a[1]~0_combout\ = \k31~combout\(3) $ (((\k31~combout\(2) & \k31~combout\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \k31~combout\(2),
	datab => \k31~combout\(3),
	datad => \k31~combout\(1),
	combout => \inst1|inst1|lpm_mult_component3|auto_generated|cs1a[1]~0_combout\);

-- Location: LCCOMB_X17_Y10_N14
\inst1|inst1|lpm_mult_component3|auto_generated|w117w[1]~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst1|inst1|lpm_mult_component3|auto_generated|w117w[1]~1_combout\ = (\inst1|inst1|lpm_mult_component3|auto_generated|cs2a[1]~0_combout\ & (\inst1|inst1|lpm_mult_component3|auto_generated|cs1a[1]~0_combout\ $ ((\inst1|p3_reg|dffs\(1))))) # 
-- (!\inst1|inst1|lpm_mult_component3|auto_generated|cs2a[1]~0_combout\ & (\inst1|inst1|lpm_mult_component3|auto_generated|cs1a[1]~0_combout\ & ((!\inst1|p3_reg|dffs\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010100001101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|inst1|lpm_mult_component3|auto_generated|cs2a[1]~0_combout\,
	datab => \inst1|inst1|lpm_mult_component3|auto_generated|cs1a[1]~0_combout\,
	datac => \inst1|p3_reg|dffs\(1),
	datad => \inst1|p3_reg|dffs\(0),
	combout => \inst1|inst1|lpm_mult_component3|auto_generated|w117w[1]~1_combout\);

-- Location: LCFF_X17_Y10_N15
\inst1|inst1|lpm_mult_component3|auto_generated|dffe8\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \inst1|inst1|lpm_mult_component3|auto_generated|w117w[1]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst1|inst1|lpm_mult_component3|auto_generated|dffe8~regout\);

-- Location: LCCOMB_X17_Y12_N12
\inst1|inst1|lpm_mult_component3|auto_generated|w70w[3]~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst1|inst1|lpm_mult_component3|auto_generated|w70w[3]~3_combout\ = (\k31~combout\(0) & (\inst1|p3_reg|dffs\(3) $ ((\k31~combout\(1))))) # (!\k31~combout\(0) & (((\k31~combout\(1) & !\inst1|p3_reg|dffs\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100100001111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|p3_reg|dffs\(3),
	datab => \k31~combout\(0),
	datac => \k31~combout\(1),
	datad => \inst1|p3_reg|dffs\(2),
	combout => \inst1|inst1|lpm_mult_component3|auto_generated|w70w[3]~3_combout\);

-- Location: LCCOMB_X17_Y10_N30
\inst1|inst1|lpm_mult_component3|auto_generated|op_2~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst1|inst1|lpm_mult_component3|auto_generated|op_2~2_combout\ = \inst1|inst1|lpm_mult_component3|auto_generated|w70w[3]~3_combout\ $ (((\inst1|inst1|lpm_mult_component3|auto_generated|cs1a[1]~0_combout\ & 
-- \inst1|inst1|lpm_mult_component3|auto_generated|w70w[2]~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst1|inst1|lpm_mult_component3|auto_generated|cs1a[1]~0_combout\,
	datac => \inst1|inst1|lpm_mult_component3|auto_generated|w70w[3]~3_combout\,
	datad => \inst1|inst1|lpm_mult_component3|auto_generated|w70w[2]~2_combout\,
	combout => \inst1|inst1|lpm_mult_component3|auto_generated|op_2~2_combout\);

-- Location: LCFF_X17_Y10_N31
\inst1|inst1|lpm_mult_component3|auto_generated|dffe9\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \inst1|inst1|lpm_mult_component3|auto_generated|op_2~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst1|inst1|lpm_mult_component3|auto_generated|dffe9~regout\);

-- Location: LCCOMB_X17_Y10_N6
\inst1|inst1|lpm_mult_component3|auto_generated|op_1~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst1|inst1|lpm_mult_component3|auto_generated|op_1~6_combout\ = \inst1|inst1|lpm_mult_component3|auto_generated|dffe8~regout\ $ (\inst1|inst1|lpm_mult_component3|auto_generated|op_1~5\ $ (\inst1|inst1|lpm_mult_component3|auto_generated|dffe9~regout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100111100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst1|inst1|lpm_mult_component3|auto_generated|dffe8~regout\,
	datad => \inst1|inst1|lpm_mult_component3|auto_generated|dffe9~regout\,
	cin => \inst1|inst1|lpm_mult_component3|auto_generated|op_1~5\,
	combout => \inst1|inst1|lpm_mult_component3|auto_generated|op_1~6_combout\);

-- Location: LCCOMB_X17_Y10_N24
\inst1|inst1|lpm_add_compontent2|auto_generated|pipeline_dffe[3]~10\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst1|inst1|lpm_add_compontent2|auto_generated|pipeline_dffe[3]~10_combout\ = \inst1|inst1|lpm_add_compontent1|auto_generated|pipeline_dffe\(3) $ (\inst1|inst1|lpm_add_compontent2|auto_generated|pipeline_dffe[2]~9\ $ 
-- (\inst1|inst1|lpm_mult_component3|auto_generated|op_1~6_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100111100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst1|inst1|lpm_add_compontent1|auto_generated|pipeline_dffe\(3),
	datad => \inst1|inst1|lpm_mult_component3|auto_generated|op_1~6_combout\,
	cin => \inst1|inst1|lpm_add_compontent2|auto_generated|pipeline_dffe[2]~9\,
	combout => \inst1|inst1|lpm_add_compontent2|auto_generated|pipeline_dffe[3]~10_combout\);

-- Location: LCFF_X17_Y10_N25
\inst1|inst1|lpm_add_compontent2|auto_generated|pipeline_dffe[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \inst1|inst1|lpm_add_compontent2|auto_generated|pipeline_dffe[3]~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst1|inst1|lpm_add_compontent2|auto_generated|pipeline_dffe\(3));

-- Location: LCFF_X17_Y10_N13
\inst1|c1_reg|dffs[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \inst1|inst1|lpm_add_compontent2|auto_generated|pipeline_dffe\(3),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst1|c1_reg|dffs\(3));

-- Location: PIN_J1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
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

-- Location: PIN_J2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
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

-- Location: LCCOMB_X18_Y12_N22
\inst1|inst2|lpm_mult_component3|auto_generated|w70w[0]~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst1|inst2|lpm_mult_component3|auto_generated|w70w[0]~0_combout\ = \k32~combout\(1) $ (((\inst1|p3_reg|dffs\(0) & \k32~combout\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111100001111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|p3_reg|dffs\(0),
	datab => \k32~combout\(0),
	datac => \k32~combout\(1),
	combout => \inst1|inst2|lpm_mult_component3|auto_generated|w70w[0]~0_combout\);

-- Location: LCFF_X18_Y12_N23
\inst1|inst2|lpm_mult_component3|auto_generated|dffe3\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \inst1|inst2|lpm_mult_component3|auto_generated|w70w[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst1|inst2|lpm_mult_component3|auto_generated|dffe3~regout\);

-- Location: LCCOMB_X18_Y12_N6
\inst1|inst2|lpm_mult_component3|auto_generated|op_1~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst1|inst2|lpm_mult_component3|auto_generated|op_1~0_combout\ = (\inst1|inst2|lpm_mult_component3|auto_generated|dffe4~regout\ & (\inst1|inst2|lpm_mult_component3|auto_generated|dffe3~regout\ $ (VCC))) # 
-- (!\inst1|inst2|lpm_mult_component3|auto_generated|dffe4~regout\ & (\inst1|inst2|lpm_mult_component3|auto_generated|dffe3~regout\ & VCC))
-- \inst1|inst2|lpm_mult_component3|auto_generated|op_1~1\ = CARRY((\inst1|inst2|lpm_mult_component3|auto_generated|dffe4~regout\ & \inst1|inst2|lpm_mult_component3|auto_generated|dffe3~regout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|inst2|lpm_mult_component3|auto_generated|dffe4~regout\,
	datab => \inst1|inst2|lpm_mult_component3|auto_generated|dffe3~regout\,
	datad => VCC,
	combout => \inst1|inst2|lpm_mult_component3|auto_generated|op_1~0_combout\,
	cout => \inst1|inst2|lpm_mult_component3|auto_generated|op_1~1\);

-- Location: LCCOMB_X18_Y12_N14
\inst1|inst2|lpm_add_compontent2|auto_generated|pipeline_dffe[0]~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst1|inst2|lpm_add_compontent2|auto_generated|pipeline_dffe[0]~4_combout\ = (\inst1|inst2|lpm_add_compontent1|auto_generated|pipeline_dffe\(0) & (\inst1|inst2|lpm_mult_component3|auto_generated|op_1~0_combout\ $ (VCC))) # 
-- (!\inst1|inst2|lpm_add_compontent1|auto_generated|pipeline_dffe\(0) & (\inst1|inst2|lpm_mult_component3|auto_generated|op_1~0_combout\ & VCC))
-- \inst1|inst2|lpm_add_compontent2|auto_generated|pipeline_dffe[0]~5\ = CARRY((\inst1|inst2|lpm_add_compontent1|auto_generated|pipeline_dffe\(0) & \inst1|inst2|lpm_mult_component3|auto_generated|op_1~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|inst2|lpm_add_compontent1|auto_generated|pipeline_dffe\(0),
	datab => \inst1|inst2|lpm_mult_component3|auto_generated|op_1~0_combout\,
	datad => VCC,
	combout => \inst1|inst2|lpm_add_compontent2|auto_generated|pipeline_dffe[0]~4_combout\,
	cout => \inst1|inst2|lpm_add_compontent2|auto_generated|pipeline_dffe[0]~5\);

-- Location: LCFF_X18_Y12_N15
\inst1|inst2|lpm_add_compontent2|auto_generated|pipeline_dffe[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \inst1|inst2|lpm_add_compontent2|auto_generated|pipeline_dffe[0]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst1|inst2|lpm_add_compontent2|auto_generated|pipeline_dffe\(0));

-- Location: LCFF_X18_Y12_N31
\inst1|c2_reg|dffs[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \inst1|inst2|lpm_add_compontent2|auto_generated|pipeline_dffe\(0),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst1|c2_reg|dffs\(0));

-- Location: LCCOMB_X18_Y12_N4
\inst1|inst2|lpm_mult_component3|auto_generated|w70w[1]~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst1|inst2|lpm_mult_component3|auto_generated|w70w[1]~1_combout\ = (\k32~combout\(0) & ((\k32~combout\(1) $ (\inst1|p3_reg|dffs\(1))))) # (!\k32~combout\(0) & (!\inst1|p3_reg|dffs\(0) & (\k32~combout\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001110011010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|p3_reg|dffs\(0),
	datab => \k32~combout\(0),
	datac => \k32~combout\(1),
	datad => \inst1|p3_reg|dffs\(1),
	combout => \inst1|inst2|lpm_mult_component3|auto_generated|w70w[1]~1_combout\);

-- Location: LCFF_X18_Y12_N5
\inst1|inst2|lpm_mult_component3|auto_generated|dffe5\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \inst1|inst2|lpm_mult_component3|auto_generated|w70w[1]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst1|inst2|lpm_mult_component3|auto_generated|dffe5~regout\);

-- Location: LCCOMB_X18_Y12_N8
\inst1|inst2|lpm_mult_component3|auto_generated|op_1~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst1|inst2|lpm_mult_component3|auto_generated|op_1~2_combout\ = (\inst1|inst2|lpm_mult_component3|auto_generated|dffe5~regout\ & (!\inst1|inst2|lpm_mult_component3|auto_generated|op_1~1\)) # 
-- (!\inst1|inst2|lpm_mult_component3|auto_generated|dffe5~regout\ & ((\inst1|inst2|lpm_mult_component3|auto_generated|op_1~1\) # (GND)))
-- \inst1|inst2|lpm_mult_component3|auto_generated|op_1~3\ = CARRY((!\inst1|inst2|lpm_mult_component3|auto_generated|op_1~1\) # (!\inst1|inst2|lpm_mult_component3|auto_generated|dffe5~regout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst1|inst2|lpm_mult_component3|auto_generated|dffe5~regout\,
	datad => VCC,
	cin => \inst1|inst2|lpm_mult_component3|auto_generated|op_1~1\,
	combout => \inst1|inst2|lpm_mult_component3|auto_generated|op_1~2_combout\,
	cout => \inst1|inst2|lpm_mult_component3|auto_generated|op_1~3\);

-- Location: LCCOMB_X18_Y12_N16
\inst1|inst2|lpm_add_compontent2|auto_generated|pipeline_dffe[1]~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst1|inst2|lpm_add_compontent2|auto_generated|pipeline_dffe[1]~6_combout\ = (\inst1|inst2|lpm_add_compontent1|auto_generated|pipeline_dffe\(1) & ((\inst1|inst2|lpm_mult_component3|auto_generated|op_1~2_combout\ & 
-- (\inst1|inst2|lpm_add_compontent2|auto_generated|pipeline_dffe[0]~5\ & VCC)) # (!\inst1|inst2|lpm_mult_component3|auto_generated|op_1~2_combout\ & (!\inst1|inst2|lpm_add_compontent2|auto_generated|pipeline_dffe[0]~5\)))) # 
-- (!\inst1|inst2|lpm_add_compontent1|auto_generated|pipeline_dffe\(1) & ((\inst1|inst2|lpm_mult_component3|auto_generated|op_1~2_combout\ & (!\inst1|inst2|lpm_add_compontent2|auto_generated|pipeline_dffe[0]~5\)) # 
-- (!\inst1|inst2|lpm_mult_component3|auto_generated|op_1~2_combout\ & ((\inst1|inst2|lpm_add_compontent2|auto_generated|pipeline_dffe[0]~5\) # (GND)))))
-- \inst1|inst2|lpm_add_compontent2|auto_generated|pipeline_dffe[1]~7\ = CARRY((\inst1|inst2|lpm_add_compontent1|auto_generated|pipeline_dffe\(1) & (!\inst1|inst2|lpm_mult_component3|auto_generated|op_1~2_combout\ & 
-- !\inst1|inst2|lpm_add_compontent2|auto_generated|pipeline_dffe[0]~5\)) # (!\inst1|inst2|lpm_add_compontent1|auto_generated|pipeline_dffe\(1) & ((!\inst1|inst2|lpm_add_compontent2|auto_generated|pipeline_dffe[0]~5\) # 
-- (!\inst1|inst2|lpm_mult_component3|auto_generated|op_1~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|inst2|lpm_add_compontent1|auto_generated|pipeline_dffe\(1),
	datab => \inst1|inst2|lpm_mult_component3|auto_generated|op_1~2_combout\,
	datad => VCC,
	cin => \inst1|inst2|lpm_add_compontent2|auto_generated|pipeline_dffe[0]~5\,
	combout => \inst1|inst2|lpm_add_compontent2|auto_generated|pipeline_dffe[1]~6_combout\,
	cout => \inst1|inst2|lpm_add_compontent2|auto_generated|pipeline_dffe[1]~7\);

-- Location: LCFF_X18_Y12_N17
\inst1|inst2|lpm_add_compontent2|auto_generated|pipeline_dffe[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \inst1|inst2|lpm_add_compontent2|auto_generated|pipeline_dffe[1]~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst1|inst2|lpm_add_compontent2|auto_generated|pipeline_dffe\(1));

-- Location: LCFF_X18_Y12_N9
\inst1|c2_reg|dffs[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \inst1|inst2|lpm_add_compontent2|auto_generated|pipeline_dffe\(1),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst1|c2_reg|dffs\(1));

-- Location: PIN_L16,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
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

-- Location: PIN_G10,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
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

-- Location: PIN_G13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
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

-- Location: LCCOMB_X19_Y11_N20
\inst1|inst2|lpm_mult_component1|auto_generated|w70w[2]~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst1|inst2|lpm_mult_component1|auto_generated|w70w[2]~2_combout\ = (\k12~combout\(0) & (\inst1|p1_reg|dffs\(2) $ (((\k12~combout\(1)))))) # (!\k12~combout\(0) & (((!\inst1|p1_reg|dffs\(1) & \k12~combout\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101001110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|p1_reg|dffs\(2),
	datab => \inst1|p1_reg|dffs\(1),
	datac => \k12~combout\(0),
	datad => \k12~combout\(1),
	combout => \inst1|inst2|lpm_mult_component1|auto_generated|w70w[2]~2_combout\);

-- Location: LCCOMB_X19_Y11_N28
\inst1|inst2|lpm_mult_component1|auto_generated|op_2~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst1|inst2|lpm_mult_component1|auto_generated|op_2~3_combout\ = \k12~combout\(3) $ (\inst1|inst2|lpm_mult_component1|auto_generated|w70w[2]~2_combout\ $ (((\k12~combout\(2) & \k12~combout\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011001011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \k12~combout\(3),
	datab => \k12~combout\(2),
	datac => \inst1|inst2|lpm_mult_component1|auto_generated|w70w[2]~2_combout\,
	datad => \k12~combout\(1),
	combout => \inst1|inst2|lpm_mult_component1|auto_generated|op_2~3_combout\);

-- Location: LCFF_X19_Y11_N29
\inst1|inst2|lpm_mult_component1|auto_generated|dffe7\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \inst1|inst2|lpm_mult_component1|auto_generated|op_2~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst1|inst2|lpm_mult_component1|auto_generated|dffe7~regout\);

-- Location: LCCOMB_X19_Y11_N14
\inst1|inst2|lpm_mult_component1|auto_generated|w70w[1]~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst1|inst2|lpm_mult_component1|auto_generated|w70w[1]~1_combout\ = (\k12~combout\(0) & (\k12~combout\(1) $ ((\inst1|p1_reg|dffs\(1))))) # (!\k12~combout\(0) & (\k12~combout\(1) & ((!\inst1|p1_reg|dffs\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010100001101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \k12~combout\(0),
	datab => \k12~combout\(1),
	datac => \inst1|p1_reg|dffs\(1),
	datad => \inst1|p1_reg|dffs\(0),
	combout => \inst1|inst2|lpm_mult_component1|auto_generated|w70w[1]~1_combout\);

-- Location: LCFF_X18_Y11_N5
\inst1|inst2|lpm_mult_component1|auto_generated|dffe5\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \inst1|inst2|lpm_mult_component1|auto_generated|w70w[1]~1_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst1|inst2|lpm_mult_component1|auto_generated|dffe5~regout\);

-- Location: LCFF_X18_Y11_N15
\inst1|inst2|lpm_mult_component1|auto_generated|dffe4\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \k12~combout\(1),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst1|inst2|lpm_mult_component1|auto_generated|dffe4~regout\);

-- Location: PIN_D11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
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

-- Location: LCFF_X18_Y11_N17
\inst1|p2_reg|dffs[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \p2~combout\(0),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst1|p2_reg|dffs\(0));

-- Location: PIN_J12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
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

-- Location: PIN_H11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
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

-- Location: LCCOMB_X21_Y10_N22
\inst1|p2_reg|dffs[1]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst1|p2_reg|dffs[1]~feeder_combout\ = \p2~combout\(1)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \p2~combout\(1),
	combout => \inst1|p2_reg|dffs[1]~feeder_combout\);

-- Location: LCFF_X21_Y10_N23
\inst1|p2_reg|dffs[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \inst1|p2_reg|dffs[1]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst1|p2_reg|dffs\(1));

-- Location: LCCOMB_X18_Y11_N8
\inst1|inst2|lpm_mult_component2|auto_generated|w70w[1]~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst1|inst2|lpm_mult_component2|auto_generated|w70w[1]~1_combout\ = (\k22~combout\(0) & (\k22~combout\(1) $ (((\inst1|p2_reg|dffs\(1)))))) # (!\k22~combout\(0) & (\k22~combout\(1) & (!\inst1|p2_reg|dffs\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101001010100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \k22~combout\(1),
	datab => \inst1|p2_reg|dffs\(0),
	datac => \k22~combout\(0),
	datad => \inst1|p2_reg|dffs\(1),
	combout => \inst1|inst2|lpm_mult_component2|auto_generated|w70w[1]~1_combout\);

-- Location: LCFF_X18_Y11_N9
\inst1|inst2|lpm_mult_component2|auto_generated|dffe5\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \inst1|inst2|lpm_mult_component2|auto_generated|w70w[1]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst1|inst2|lpm_mult_component2|auto_generated|dffe5~regout\);

-- Location: PIN_D15,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
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

-- Location: LCFF_X18_Y11_N1
\inst1|inst2|lpm_mult_component2|auto_generated|dffe4\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \k22~combout\(1),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst1|inst2|lpm_mult_component2|auto_generated|dffe4~regout\);

-- Location: LCCOMB_X18_Y11_N0
\inst1|inst2|lpm_mult_component2|auto_generated|op_1~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst1|inst2|lpm_mult_component2|auto_generated|op_1~0_combout\ = (\inst1|inst2|lpm_mult_component2|auto_generated|dffe3~regout\ & (\inst1|inst2|lpm_mult_component2|auto_generated|dffe4~regout\ $ (VCC))) # 
-- (!\inst1|inst2|lpm_mult_component2|auto_generated|dffe3~regout\ & (\inst1|inst2|lpm_mult_component2|auto_generated|dffe4~regout\ & VCC))
-- \inst1|inst2|lpm_mult_component2|auto_generated|op_1~1\ = CARRY((\inst1|inst2|lpm_mult_component2|auto_generated|dffe3~regout\ & \inst1|inst2|lpm_mult_component2|auto_generated|dffe4~regout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|inst2|lpm_mult_component2|auto_generated|dffe3~regout\,
	datab => \inst1|inst2|lpm_mult_component2|auto_generated|dffe4~regout\,
	datad => VCC,
	combout => \inst1|inst2|lpm_mult_component2|auto_generated|op_1~0_combout\,
	cout => \inst1|inst2|lpm_mult_component2|auto_generated|op_1~1\);

-- Location: LCFF_X18_Y11_N29
\inst1|inst2|lpm_add_compontent1|auto_generated|pipeline_dffe[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \inst1|inst2|lpm_add_compontent1|auto_generated|pipeline_dffe[2]~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst1|inst2|lpm_add_compontent1|auto_generated|pipeline_dffe\(2));

-- Location: LCCOMB_X18_Y12_N18
\inst1|inst2|lpm_add_compontent2|auto_generated|pipeline_dffe[2]~8\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst1|inst2|lpm_add_compontent2|auto_generated|pipeline_dffe[2]~8_combout\ = ((\inst1|inst2|lpm_mult_component3|auto_generated|op_1~4_combout\ $ (\inst1|inst2|lpm_add_compontent1|auto_generated|pipeline_dffe\(2) $ 
-- (!\inst1|inst2|lpm_add_compontent2|auto_generated|pipeline_dffe[1]~7\)))) # (GND)
-- \inst1|inst2|lpm_add_compontent2|auto_generated|pipeline_dffe[2]~9\ = CARRY((\inst1|inst2|lpm_mult_component3|auto_generated|op_1~4_combout\ & ((\inst1|inst2|lpm_add_compontent1|auto_generated|pipeline_dffe\(2)) # 
-- (!\inst1|inst2|lpm_add_compontent2|auto_generated|pipeline_dffe[1]~7\))) # (!\inst1|inst2|lpm_mult_component3|auto_generated|op_1~4_combout\ & (\inst1|inst2|lpm_add_compontent1|auto_generated|pipeline_dffe\(2) & 
-- !\inst1|inst2|lpm_add_compontent2|auto_generated|pipeline_dffe[1]~7\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|inst2|lpm_mult_component3|auto_generated|op_1~4_combout\,
	datab => \inst1|inst2|lpm_add_compontent1|auto_generated|pipeline_dffe\(2),
	datad => VCC,
	cin => \inst1|inst2|lpm_add_compontent2|auto_generated|pipeline_dffe[1]~7\,
	combout => \inst1|inst2|lpm_add_compontent2|auto_generated|pipeline_dffe[2]~8_combout\,
	cout => \inst1|inst2|lpm_add_compontent2|auto_generated|pipeline_dffe[2]~9\);

-- Location: LCFF_X18_Y12_N19
\inst1|inst2|lpm_add_compontent2|auto_generated|pipeline_dffe[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \inst1|inst2|lpm_add_compontent2|auto_generated|pipeline_dffe[2]~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst1|inst2|lpm_add_compontent2|auto_generated|pipeline_dffe\(2));

-- Location: LCCOMB_X18_Y12_N28
\inst1|c2_reg|dffs[2]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst1|c2_reg|dffs[2]~feeder_combout\ = \inst1|inst2|lpm_add_compontent2|auto_generated|pipeline_dffe\(2)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst1|inst2|lpm_add_compontent2|auto_generated|pipeline_dffe\(2),
	combout => \inst1|c2_reg|dffs[2]~feeder_combout\);

-- Location: LCFF_X18_Y12_N29
\inst1|c2_reg|dffs[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \inst1|c2_reg|dffs[2]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst1|c2_reg|dffs\(2));

-- Location: PIN_C14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
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

-- Location: LCCOMB_X17_Y12_N16
\inst1|inst2|lpm_mult_component3|auto_generated|cs1a[1]~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst1|inst2|lpm_mult_component3|auto_generated|cs1a[1]~0_combout\ = \k32~combout\(3) $ (((\k32~combout\(1) & \k32~combout\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \k32~combout\(3),
	datab => \k32~combout\(1),
	datad => \k32~combout\(2),
	combout => \inst1|inst2|lpm_mult_component3|auto_generated|cs1a[1]~0_combout\);

-- Location: LCCOMB_X17_Y12_N26
\inst1|inst2|lpm_mult_component3|auto_generated|w117w[1]~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst1|inst2|lpm_mult_component3|auto_generated|w117w[1]~1_combout\ = (\inst1|inst2|lpm_mult_component3|auto_generated|cs2a[1]~0_combout\ & (\inst1|p3_reg|dffs\(1) $ ((\inst1|inst2|lpm_mult_component3|auto_generated|cs1a[1]~0_combout\)))) # 
-- (!\inst1|inst2|lpm_mult_component3|auto_generated|cs2a[1]~0_combout\ & (((\inst1|inst2|lpm_mult_component3|auto_generated|cs1a[1]~0_combout\ & !\inst1|p3_reg|dffs\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010100001111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|inst2|lpm_mult_component3|auto_generated|cs2a[1]~0_combout\,
	datab => \inst1|p3_reg|dffs\(1),
	datac => \inst1|inst2|lpm_mult_component3|auto_generated|cs1a[1]~0_combout\,
	datad => \inst1|p3_reg|dffs\(0),
	combout => \inst1|inst2|lpm_mult_component3|auto_generated|w117w[1]~1_combout\);

-- Location: LCFF_X17_Y12_N27
\inst1|inst2|lpm_mult_component3|auto_generated|dffe8\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \inst1|inst2|lpm_mult_component3|auto_generated|w117w[1]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst1|inst2|lpm_mult_component3|auto_generated|dffe8~regout\);

-- Location: LCCOMB_X17_Y12_N14
\inst1|inst2|lpm_mult_component3|auto_generated|w70w[2]~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst1|inst2|lpm_mult_component3|auto_generated|w70w[2]~2_combout\ = (\k32~combout\(0) & (\k32~combout\(1) $ ((\inst1|p3_reg|dffs\(2))))) # (!\k32~combout\(0) & (\k32~combout\(1) & ((!\inst1|p3_reg|dffs\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110000001101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \k32~combout\(1),
	datab => \inst1|p3_reg|dffs\(2),
	datac => \k32~combout\(0),
	datad => \inst1|p3_reg|dffs\(1),
	combout => \inst1|inst2|lpm_mult_component3|auto_generated|w70w[2]~2_combout\);

-- Location: PIN_F10,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
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

-- Location: LCFF_X17_Y12_N11
\inst1|p3_reg|dffs[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \p3~combout\(3),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst1|p3_reg|dffs\(3));

-- Location: LCCOMB_X17_Y12_N10
\inst1|inst2|lpm_mult_component3|auto_generated|w70w[3]~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst1|inst2|lpm_mult_component3|auto_generated|w70w[3]~3_combout\ = (\k32~combout\(0) & (\k32~combout\(1) $ ((\inst1|p3_reg|dffs\(3))))) # (!\k32~combout\(0) & (\k32~combout\(1) & ((!\inst1|p3_reg|dffs\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100100001101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \k32~combout\(1),
	datab => \k32~combout\(0),
	datac => \inst1|p3_reg|dffs\(3),
	datad => \inst1|p3_reg|dffs\(2),
	combout => \inst1|inst2|lpm_mult_component3|auto_generated|w70w[3]~3_combout\);

-- Location: LCCOMB_X17_Y12_N8
\inst1|inst2|lpm_mult_component3|auto_generated|op_2~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst1|inst2|lpm_mult_component3|auto_generated|op_2~2_combout\ = \inst1|inst2|lpm_mult_component3|auto_generated|w70w[3]~3_combout\ $ (((\inst1|inst2|lpm_mult_component3|auto_generated|cs1a[1]~0_combout\ & 
-- \inst1|inst2|lpm_mult_component3|auto_generated|w70w[2]~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|inst2|lpm_mult_component3|auto_generated|cs1a[1]~0_combout\,
	datac => \inst1|inst2|lpm_mult_component3|auto_generated|w70w[2]~2_combout\,
	datad => \inst1|inst2|lpm_mult_component3|auto_generated|w70w[3]~3_combout\,
	combout => \inst1|inst2|lpm_mult_component3|auto_generated|op_2~2_combout\);

-- Location: LCFF_X17_Y12_N9
\inst1|inst2|lpm_mult_component3|auto_generated|dffe9\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \inst1|inst2|lpm_mult_component3|auto_generated|op_2~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst1|inst2|lpm_mult_component3|auto_generated|dffe9~regout\);

-- Location: LCCOMB_X17_Y12_N0
\inst1|inst2|lpm_mult_component3|auto_generated|w117w[0]~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst1|inst2|lpm_mult_component3|auto_generated|w117w[0]~0_combout\ = \k32~combout\(3) $ (((\k32~combout\(2) & ((\k32~combout\(1)) # (\inst1|p3_reg|dffs\(0)))) # (!\k32~combout\(2) & (\k32~combout\(1) & \inst1|p3_reg|dffs\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101011001101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \k32~combout\(3),
	datab => \k32~combout\(2),
	datac => \k32~combout\(1),
	datad => \inst1|p3_reg|dffs\(0),
	combout => \inst1|inst2|lpm_mult_component3|auto_generated|w117w[0]~0_combout\);

-- Location: LCFF_X18_Y12_N11
\inst1|inst2|lpm_mult_component3|auto_generated|dffe6\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \inst1|inst2|lpm_mult_component3|auto_generated|w117w[0]~0_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst1|inst2|lpm_mult_component3|auto_generated|dffe6~regout\);

-- Location: LCCOMB_X18_Y12_N12
\inst1|inst2|lpm_mult_component3|auto_generated|op_1~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst1|inst2|lpm_mult_component3|auto_generated|op_1~6_combout\ = \inst1|inst2|lpm_mult_component3|auto_generated|dffe8~regout\ $ (\inst1|inst2|lpm_mult_component3|auto_generated|op_1~5\ $ (\inst1|inst2|lpm_mult_component3|auto_generated|dffe9~regout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100111100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst1|inst2|lpm_mult_component3|auto_generated|dffe8~regout\,
	datad => \inst1|inst2|lpm_mult_component3|auto_generated|dffe9~regout\,
	cin => \inst1|inst2|lpm_mult_component3|auto_generated|op_1~5\,
	combout => \inst1|inst2|lpm_mult_component3|auto_generated|op_1~6_combout\);

-- Location: LCCOMB_X18_Y12_N20
\inst1|inst2|lpm_add_compontent2|auto_generated|pipeline_dffe[3]~10\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst1|inst2|lpm_add_compontent2|auto_generated|pipeline_dffe[3]~10_combout\ = \inst1|inst2|lpm_add_compontent1|auto_generated|pipeline_dffe\(3) $ (\inst1|inst2|lpm_add_compontent2|auto_generated|pipeline_dffe[2]~9\ $ 
-- (\inst1|inst2|lpm_mult_component3|auto_generated|op_1~6_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010101011010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|inst2|lpm_add_compontent1|auto_generated|pipeline_dffe\(3),
	datad => \inst1|inst2|lpm_mult_component3|auto_generated|op_1~6_combout\,
	cin => \inst1|inst2|lpm_add_compontent2|auto_generated|pipeline_dffe[2]~9\,
	combout => \inst1|inst2|lpm_add_compontent2|auto_generated|pipeline_dffe[3]~10_combout\);

-- Location: LCFF_X18_Y12_N21
\inst1|inst2|lpm_add_compontent2|auto_generated|pipeline_dffe[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \inst1|inst2|lpm_add_compontent2|auto_generated|pipeline_dffe[3]~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst1|inst2|lpm_add_compontent2|auto_generated|pipeline_dffe\(3));

-- Location: LCFF_X18_Y12_N27
\inst1|c2_reg|dffs[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \inst1|inst2|lpm_add_compontent2|auto_generated|pipeline_dffe\(3),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst1|c2_reg|dffs\(3));

-- Location: PIN_G16,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
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

-- Location: PIN_B13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
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

-- Location: LCCOMB_X20_Y11_N8
\inst1|inst3|lpm_mult_component1|auto_generated|w70w[0]~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst1|inst3|lpm_mult_component1|auto_generated|w70w[0]~0_combout\ = \k13~combout\(1) $ (((\inst1|p1_reg|dffs\(0) & \k13~combout\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst1|p1_reg|dffs\(0),
	datac => \k13~combout\(1),
	datad => \k13~combout\(0),
	combout => \inst1|inst3|lpm_mult_component1|auto_generated|w70w[0]~0_combout\);

-- Location: LCFF_X20_Y11_N9
\inst1|inst3|lpm_mult_component1|auto_generated|dffe3\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \inst1|inst3|lpm_mult_component1|auto_generated|w70w[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst1|inst3|lpm_mult_component1|auto_generated|dffe3~regout\);

-- Location: LCCOMB_X20_Y11_N24
\inst1|inst3|lpm_mult_component1|auto_generated|op_1~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst1|inst3|lpm_mult_component1|auto_generated|op_1~0_combout\ = (\inst1|inst3|lpm_mult_component1|auto_generated|dffe4~regout\ & (\inst1|inst3|lpm_mult_component1|auto_generated|dffe3~regout\ $ (VCC))) # 
-- (!\inst1|inst3|lpm_mult_component1|auto_generated|dffe4~regout\ & (\inst1|inst3|lpm_mult_component1|auto_generated|dffe3~regout\ & VCC))
-- \inst1|inst3|lpm_mult_component1|auto_generated|op_1~1\ = CARRY((\inst1|inst3|lpm_mult_component1|auto_generated|dffe4~regout\ & \inst1|inst3|lpm_mult_component1|auto_generated|dffe3~regout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|inst3|lpm_mult_component1|auto_generated|dffe4~regout\,
	datab => \inst1|inst3|lpm_mult_component1|auto_generated|dffe3~regout\,
	datad => VCC,
	combout => \inst1|inst3|lpm_mult_component1|auto_generated|op_1~0_combout\,
	cout => \inst1|inst3|lpm_mult_component1|auto_generated|op_1~1\);

-- Location: LCCOMB_X20_Y11_N14
\inst1|inst3|lpm_add_compontent1|auto_generated|pipeline_dffe[0]~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst1|inst3|lpm_add_compontent1|auto_generated|pipeline_dffe[0]~4_combout\ = (\inst1|inst3|lpm_mult_component2|auto_generated|op_1~0_combout\ & (\inst1|inst3|lpm_mult_component1|auto_generated|op_1~0_combout\ $ (VCC))) # 
-- (!\inst1|inst3|lpm_mult_component2|auto_generated|op_1~0_combout\ & (\inst1|inst3|lpm_mult_component1|auto_generated|op_1~0_combout\ & VCC))
-- \inst1|inst3|lpm_add_compontent1|auto_generated|pipeline_dffe[0]~5\ = CARRY((\inst1|inst3|lpm_mult_component2|auto_generated|op_1~0_combout\ & \inst1|inst3|lpm_mult_component1|auto_generated|op_1~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|inst3|lpm_mult_component2|auto_generated|op_1~0_combout\,
	datab => \inst1|inst3|lpm_mult_component1|auto_generated|op_1~0_combout\,
	datad => VCC,
	combout => \inst1|inst3|lpm_add_compontent1|auto_generated|pipeline_dffe[0]~4_combout\,
	cout => \inst1|inst3|lpm_add_compontent1|auto_generated|pipeline_dffe[0]~5\);

-- Location: LCFF_X20_Y11_N15
\inst1|inst3|lpm_add_compontent1|auto_generated|pipeline_dffe[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \inst1|inst3|lpm_add_compontent1|auto_generated|pipeline_dffe[0]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst1|inst3|lpm_add_compontent1|auto_generated|pipeline_dffe\(0));

-- Location: LCCOMB_X19_Y12_N24
\inst1|inst3|lpm_add_compontent2|auto_generated|pipeline_dffe[0]~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst1|inst3|lpm_add_compontent2|auto_generated|pipeline_dffe[0]~4_combout\ = (\inst1|inst3|lpm_mult_component3|auto_generated|op_1~0_combout\ & (\inst1|inst3|lpm_add_compontent1|auto_generated|pipeline_dffe\(0) $ (VCC))) # 
-- (!\inst1|inst3|lpm_mult_component3|auto_generated|op_1~0_combout\ & (\inst1|inst3|lpm_add_compontent1|auto_generated|pipeline_dffe\(0) & VCC))
-- \inst1|inst3|lpm_add_compontent2|auto_generated|pipeline_dffe[0]~5\ = CARRY((\inst1|inst3|lpm_mult_component3|auto_generated|op_1~0_combout\ & \inst1|inst3|lpm_add_compontent1|auto_generated|pipeline_dffe\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|inst3|lpm_mult_component3|auto_generated|op_1~0_combout\,
	datab => \inst1|inst3|lpm_add_compontent1|auto_generated|pipeline_dffe\(0),
	datad => VCC,
	combout => \inst1|inst3|lpm_add_compontent2|auto_generated|pipeline_dffe[0]~4_combout\,
	cout => \inst1|inst3|lpm_add_compontent2|auto_generated|pipeline_dffe[0]~5\);

-- Location: LCFF_X19_Y12_N25
\inst1|inst3|lpm_add_compontent2|auto_generated|pipeline_dffe[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \inst1|inst3|lpm_add_compontent2|auto_generated|pipeline_dffe[0]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst1|inst3|lpm_add_compontent2|auto_generated|pipeline_dffe\(0));

-- Location: LCFF_X19_Y12_N9
\inst1|c3_reg|dffs[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \inst1|inst3|lpm_add_compontent2|auto_generated|pipeline_dffe\(0),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst1|c3_reg|dffs\(0));

-- Location: LCCOMB_X20_Y11_N26
\inst1|inst3|lpm_mult_component1|auto_generated|op_1~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst1|inst3|lpm_mult_component1|auto_generated|op_1~2_combout\ = (\inst1|inst3|lpm_mult_component1|auto_generated|dffe5~regout\ & (!\inst1|inst3|lpm_mult_component1|auto_generated|op_1~1\)) # 
-- (!\inst1|inst3|lpm_mult_component1|auto_generated|dffe5~regout\ & ((\inst1|inst3|lpm_mult_component1|auto_generated|op_1~1\) # (GND)))
-- \inst1|inst3|lpm_mult_component1|auto_generated|op_1~3\ = CARRY((!\inst1|inst3|lpm_mult_component1|auto_generated|op_1~1\) # (!\inst1|inst3|lpm_mult_component1|auto_generated|dffe5~regout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|inst3|lpm_mult_component1|auto_generated|dffe5~regout\,
	datad => VCC,
	cin => \inst1|inst3|lpm_mult_component1|auto_generated|op_1~1\,
	combout => \inst1|inst3|lpm_mult_component1|auto_generated|op_1~2_combout\,
	cout => \inst1|inst3|lpm_mult_component1|auto_generated|op_1~3\);

-- Location: LCCOMB_X20_Y11_N16
\inst1|inst3|lpm_add_compontent1|auto_generated|pipeline_dffe[1]~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst1|inst3|lpm_add_compontent1|auto_generated|pipeline_dffe[1]~6_combout\ = (\inst1|inst3|lpm_mult_component2|auto_generated|op_1~2_combout\ & ((\inst1|inst3|lpm_mult_component1|auto_generated|op_1~2_combout\ & 
-- (\inst1|inst3|lpm_add_compontent1|auto_generated|pipeline_dffe[0]~5\ & VCC)) # (!\inst1|inst3|lpm_mult_component1|auto_generated|op_1~2_combout\ & (!\inst1|inst3|lpm_add_compontent1|auto_generated|pipeline_dffe[0]~5\)))) # 
-- (!\inst1|inst3|lpm_mult_component2|auto_generated|op_1~2_combout\ & ((\inst1|inst3|lpm_mult_component1|auto_generated|op_1~2_combout\ & (!\inst1|inst3|lpm_add_compontent1|auto_generated|pipeline_dffe[0]~5\)) # 
-- (!\inst1|inst3|lpm_mult_component1|auto_generated|op_1~2_combout\ & ((\inst1|inst3|lpm_add_compontent1|auto_generated|pipeline_dffe[0]~5\) # (GND)))))
-- \inst1|inst3|lpm_add_compontent1|auto_generated|pipeline_dffe[1]~7\ = CARRY((\inst1|inst3|lpm_mult_component2|auto_generated|op_1~2_combout\ & (!\inst1|inst3|lpm_mult_component1|auto_generated|op_1~2_combout\ & 
-- !\inst1|inst3|lpm_add_compontent1|auto_generated|pipeline_dffe[0]~5\)) # (!\inst1|inst3|lpm_mult_component2|auto_generated|op_1~2_combout\ & ((!\inst1|inst3|lpm_add_compontent1|auto_generated|pipeline_dffe[0]~5\) # 
-- (!\inst1|inst3|lpm_mult_component1|auto_generated|op_1~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|inst3|lpm_mult_component2|auto_generated|op_1~2_combout\,
	datab => \inst1|inst3|lpm_mult_component1|auto_generated|op_1~2_combout\,
	datad => VCC,
	cin => \inst1|inst3|lpm_add_compontent1|auto_generated|pipeline_dffe[0]~5\,
	combout => \inst1|inst3|lpm_add_compontent1|auto_generated|pipeline_dffe[1]~6_combout\,
	cout => \inst1|inst3|lpm_add_compontent1|auto_generated|pipeline_dffe[1]~7\);

-- Location: LCFF_X20_Y11_N17
\inst1|inst3|lpm_add_compontent1|auto_generated|pipeline_dffe[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \inst1|inst3|lpm_add_compontent1|auto_generated|pipeline_dffe[1]~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst1|inst3|lpm_add_compontent1|auto_generated|pipeline_dffe\(1));

-- Location: LCCOMB_X19_Y12_N26
\inst1|inst3|lpm_add_compontent2|auto_generated|pipeline_dffe[1]~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst1|inst3|lpm_add_compontent2|auto_generated|pipeline_dffe[1]~6_combout\ = (\inst1|inst3|lpm_mult_component3|auto_generated|op_1~2_combout\ & ((\inst1|inst3|lpm_add_compontent1|auto_generated|pipeline_dffe\(1) & 
-- (\inst1|inst3|lpm_add_compontent2|auto_generated|pipeline_dffe[0]~5\ & VCC)) # (!\inst1|inst3|lpm_add_compontent1|auto_generated|pipeline_dffe\(1) & (!\inst1|inst3|lpm_add_compontent2|auto_generated|pipeline_dffe[0]~5\)))) # 
-- (!\inst1|inst3|lpm_mult_component3|auto_generated|op_1~2_combout\ & ((\inst1|inst3|lpm_add_compontent1|auto_generated|pipeline_dffe\(1) & (!\inst1|inst3|lpm_add_compontent2|auto_generated|pipeline_dffe[0]~5\)) # 
-- (!\inst1|inst3|lpm_add_compontent1|auto_generated|pipeline_dffe\(1) & ((\inst1|inst3|lpm_add_compontent2|auto_generated|pipeline_dffe[0]~5\) # (GND)))))
-- \inst1|inst3|lpm_add_compontent2|auto_generated|pipeline_dffe[1]~7\ = CARRY((\inst1|inst3|lpm_mult_component3|auto_generated|op_1~2_combout\ & (!\inst1|inst3|lpm_add_compontent1|auto_generated|pipeline_dffe\(1) & 
-- !\inst1|inst3|lpm_add_compontent2|auto_generated|pipeline_dffe[0]~5\)) # (!\inst1|inst3|lpm_mult_component3|auto_generated|op_1~2_combout\ & ((!\inst1|inst3|lpm_add_compontent2|auto_generated|pipeline_dffe[0]~5\) # 
-- (!\inst1|inst3|lpm_add_compontent1|auto_generated|pipeline_dffe\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|inst3|lpm_mult_component3|auto_generated|op_1~2_combout\,
	datab => \inst1|inst3|lpm_add_compontent1|auto_generated|pipeline_dffe\(1),
	datad => VCC,
	cin => \inst1|inst3|lpm_add_compontent2|auto_generated|pipeline_dffe[0]~5\,
	combout => \inst1|inst3|lpm_add_compontent2|auto_generated|pipeline_dffe[1]~6_combout\,
	cout => \inst1|inst3|lpm_add_compontent2|auto_generated|pipeline_dffe[1]~7\);

-- Location: LCFF_X19_Y12_N27
\inst1|inst3|lpm_add_compontent2|auto_generated|pipeline_dffe[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \inst1|inst3|lpm_add_compontent2|auto_generated|pipeline_dffe[1]~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst1|inst3|lpm_add_compontent2|auto_generated|pipeline_dffe\(1));

-- Location: LCFF_X18_Y12_N1
\inst1|c3_reg|dffs[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \inst1|inst3|lpm_add_compontent2|auto_generated|pipeline_dffe\(1),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst1|c3_reg|dffs\(1));

-- Location: PIN_B11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
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

-- Location: PIN_D14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
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

-- Location: LCCOMB_X17_Y12_N28
\inst1|inst3|lpm_mult_component3|auto_generated|w70w[2]~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst1|inst3|lpm_mult_component3|auto_generated|w70w[2]~2_combout\ = (\k33~combout\(0) & (\k33~combout\(1) $ ((\inst1|p3_reg|dffs\(2))))) # (!\k33~combout\(0) & (\k33~combout\(1) & ((!\inst1|p3_reg|dffs\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110000001101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \k33~combout\(1),
	datab => \inst1|p3_reg|dffs\(2),
	datac => \k33~combout\(0),
	datad => \inst1|p3_reg|dffs\(1),
	combout => \inst1|inst3|lpm_mult_component3|auto_generated|w70w[2]~2_combout\);

-- Location: PIN_B14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
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

-- Location: LCCOMB_X19_Y12_N22
\inst1|inst3|lpm_mult_component3|auto_generated|op_2~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst1|inst3|lpm_mult_component3|auto_generated|op_2~3_combout\ = \k33~combout\(3) $ (\inst1|inst3|lpm_mult_component3|auto_generated|w70w[2]~2_combout\ $ (((\k33~combout\(1) & \k33~combout\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \k33~combout\(1),
	datab => \k33~combout\(3),
	datac => \inst1|inst3|lpm_mult_component3|auto_generated|w70w[2]~2_combout\,
	datad => \k33~combout\(2),
	combout => \inst1|inst3|lpm_mult_component3|auto_generated|op_2~3_combout\);

-- Location: LCFF_X19_Y12_N23
\inst1|inst3|lpm_mult_component3|auto_generated|dffe7\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \inst1|inst3|lpm_mult_component3|auto_generated|op_2~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst1|inst3|lpm_mult_component3|auto_generated|dffe7~regout\);

-- Location: PIN_E16,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
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

-- Location: LCCOMB_X19_Y12_N2
\inst1|inst3|lpm_mult_component3|auto_generated|w70w[1]~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst1|inst3|lpm_mult_component3|auto_generated|w70w[1]~1_combout\ = (\k33~combout\(0) & ((\k33~combout\(1) $ (\inst1|p3_reg|dffs\(1))))) # (!\k33~combout\(0) & (!\inst1|p3_reg|dffs\(0) & (\k33~combout\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001101010110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \k33~combout\(0),
	datab => \inst1|p3_reg|dffs\(0),
	datac => \k33~combout\(1),
	datad => \inst1|p3_reg|dffs\(1),
	combout => \inst1|inst3|lpm_mult_component3|auto_generated|w70w[1]~1_combout\);

-- Location: LCFF_X19_Y12_N3
\inst1|inst3|lpm_mult_component3|auto_generated|dffe5\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \inst1|inst3|lpm_mult_component3|auto_generated|w70w[1]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst1|inst3|lpm_mult_component3|auto_generated|dffe5~regout\);

-- Location: LCFF_X19_Y12_N5
\inst1|inst3|lpm_mult_component3|auto_generated|dffe4\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \k33~combout\(1),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst1|inst3|lpm_mult_component3|auto_generated|dffe4~regout\);

-- Location: LCCOMB_X19_Y12_N8
\inst1|inst3|lpm_mult_component3|auto_generated|op_1~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst1|inst3|lpm_mult_component3|auto_generated|op_1~4_combout\ = ((\inst1|inst3|lpm_mult_component3|auto_generated|dffe6~regout\ $ (\inst1|inst3|lpm_mult_component3|auto_generated|dffe7~regout\ $ 
-- (!\inst1|inst3|lpm_mult_component3|auto_generated|op_1~3\)))) # (GND)
-- \inst1|inst3|lpm_mult_component3|auto_generated|op_1~5\ = CARRY((\inst1|inst3|lpm_mult_component3|auto_generated|dffe6~regout\ & ((\inst1|inst3|lpm_mult_component3|auto_generated|dffe7~regout\) # 
-- (!\inst1|inst3|lpm_mult_component3|auto_generated|op_1~3\))) # (!\inst1|inst3|lpm_mult_component3|auto_generated|dffe6~regout\ & (\inst1|inst3|lpm_mult_component3|auto_generated|dffe7~regout\ & !\inst1|inst3|lpm_mult_component3|auto_generated|op_1~3\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|inst3|lpm_mult_component3|auto_generated|dffe6~regout\,
	datab => \inst1|inst3|lpm_mult_component3|auto_generated|dffe7~regout\,
	datad => VCC,
	cin => \inst1|inst3|lpm_mult_component3|auto_generated|op_1~3\,
	combout => \inst1|inst3|lpm_mult_component3|auto_generated|op_1~4_combout\,
	cout => \inst1|inst3|lpm_mult_component3|auto_generated|op_1~5\);

-- Location: LCCOMB_X19_Y12_N28
\inst1|inst3|lpm_add_compontent2|auto_generated|pipeline_dffe[2]~8\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst1|inst3|lpm_add_compontent2|auto_generated|pipeline_dffe[2]~8_combout\ = ((\inst1|inst3|lpm_add_compontent1|auto_generated|pipeline_dffe\(2) $ (\inst1|inst3|lpm_mult_component3|auto_generated|op_1~4_combout\ $ 
-- (!\inst1|inst3|lpm_add_compontent2|auto_generated|pipeline_dffe[1]~7\)))) # (GND)
-- \inst1|inst3|lpm_add_compontent2|auto_generated|pipeline_dffe[2]~9\ = CARRY((\inst1|inst3|lpm_add_compontent1|auto_generated|pipeline_dffe\(2) & ((\inst1|inst3|lpm_mult_component3|auto_generated|op_1~4_combout\) # 
-- (!\inst1|inst3|lpm_add_compontent2|auto_generated|pipeline_dffe[1]~7\))) # (!\inst1|inst3|lpm_add_compontent1|auto_generated|pipeline_dffe\(2) & (\inst1|inst3|lpm_mult_component3|auto_generated|op_1~4_combout\ & 
-- !\inst1|inst3|lpm_add_compontent2|auto_generated|pipeline_dffe[1]~7\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|inst3|lpm_add_compontent1|auto_generated|pipeline_dffe\(2),
	datab => \inst1|inst3|lpm_mult_component3|auto_generated|op_1~4_combout\,
	datad => VCC,
	cin => \inst1|inst3|lpm_add_compontent2|auto_generated|pipeline_dffe[1]~7\,
	combout => \inst1|inst3|lpm_add_compontent2|auto_generated|pipeline_dffe[2]~8_combout\,
	cout => \inst1|inst3|lpm_add_compontent2|auto_generated|pipeline_dffe[2]~9\);

-- Location: LCFF_X19_Y12_N29
\inst1|inst3|lpm_add_compontent2|auto_generated|pipeline_dffe[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \inst1|inst3|lpm_add_compontent2|auto_generated|pipeline_dffe[2]~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst1|inst3|lpm_add_compontent2|auto_generated|pipeline_dffe\(2));

-- Location: LCCOMB_X19_Y12_N18
\inst1|c3_reg|dffs[2]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst1|c3_reg|dffs[2]~feeder_combout\ = \inst1|inst3|lpm_add_compontent2|auto_generated|pipeline_dffe\(2)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst1|inst3|lpm_add_compontent2|auto_generated|pipeline_dffe\(2),
	combout => \inst1|c3_reg|dffs[2]~feeder_combout\);

-- Location: LCFF_X19_Y12_N19
\inst1|c3_reg|dffs[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \inst1|c3_reg|dffs[2]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst1|c3_reg|dffs\(2));

-- Location: PIN_A12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
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

-- Location: PIN_H12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
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

-- Location: LCCOMB_X21_Y11_N0
\inst1|inst3|lpm_mult_component2|auto_generated|cs2a[1]~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst1|inst3|lpm_mult_component2|auto_generated|cs2a[1]~0_combout\ = \k23~combout\(1) $ (\k23~combout\(2))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \k23~combout\(1),
	datad => \k23~combout\(2),
	combout => \inst1|inst3|lpm_mult_component2|auto_generated|cs2a[1]~0_combout\);

-- Location: PIN_L14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
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

-- Location: LCCOMB_X21_Y11_N28
\inst1|inst3|lpm_mult_component2|auto_generated|cs1a[1]~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst1|inst3|lpm_mult_component2|auto_generated|cs1a[1]~0_combout\ = \k23~combout\(3) $ (((\k23~combout\(1) & \k23~combout\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \k23~combout\(3),
	datac => \k23~combout\(1),
	datad => \k23~combout\(2),
	combout => \inst1|inst3|lpm_mult_component2|auto_generated|cs1a[1]~0_combout\);

-- Location: LCCOMB_X21_Y11_N30
\inst1|inst3|lpm_mult_component2|auto_generated|w117w[1]~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst1|inst3|lpm_mult_component2|auto_generated|w117w[1]~1_combout\ = (\inst1|inst3|lpm_mult_component2|auto_generated|cs2a[1]~0_combout\ & ((\inst1|p2_reg|dffs\(1) $ (\inst1|inst3|lpm_mult_component2|auto_generated|cs1a[1]~0_combout\)))) # 
-- (!\inst1|inst3|lpm_mult_component2|auto_generated|cs2a[1]~0_combout\ & (!\inst1|p2_reg|dffs\(0) & ((\inst1|inst3|lpm_mult_component2|auto_generated|cs1a[1]~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001110111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|p2_reg|dffs\(0),
	datab => \inst1|inst3|lpm_mult_component2|auto_generated|cs2a[1]~0_combout\,
	datac => \inst1|p2_reg|dffs\(1),
	datad => \inst1|inst3|lpm_mult_component2|auto_generated|cs1a[1]~0_combout\,
	combout => \inst1|inst3|lpm_mult_component2|auto_generated|w117w[1]~1_combout\);

-- Location: LCFF_X21_Y11_N31
\inst1|inst3|lpm_mult_component2|auto_generated|dffe8\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \inst1|inst3|lpm_mult_component2|auto_generated|w117w[1]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst1|inst3|lpm_mult_component2|auto_generated|dffe8~regout\);

-- Location: PIN_A11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
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

-- Location: PIN_K16,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
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

-- Location: LCFF_X21_Y10_N29
\inst1|p2_reg|dffs[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \p2~combout\(2),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst1|p2_reg|dffs\(2));

-- Location: LCCOMB_X21_Y11_N14
\inst1|inst3|lpm_mult_component2|auto_generated|w70w[2]~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst1|inst3|lpm_mult_component2|auto_generated|w70w[2]~2_combout\ = (\k23~combout\(0) & (\k23~combout\(1) $ (((\inst1|p2_reg|dffs\(2)))))) # (!\k23~combout\(0) & (\k23~combout\(1) & (!\inst1|p2_reg|dffs\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100011010001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \k23~combout\(1),
	datab => \k23~combout\(0),
	datac => \inst1|p2_reg|dffs\(1),
	datad => \inst1|p2_reg|dffs\(2),
	combout => \inst1|inst3|lpm_mult_component2|auto_generated|w70w[2]~2_combout\);

-- Location: LCCOMB_X21_Y11_N26
\inst1|inst3|lpm_mult_component2|auto_generated|w70w[3]~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst1|inst3|lpm_mult_component2|auto_generated|w70w[3]~3_combout\ = (\k23~combout\(0) & (\inst1|p2_reg|dffs\(3) $ ((\k23~combout\(1))))) # (!\k23~combout\(0) & (((\k23~combout\(1) & !\inst1|p2_reg|dffs\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100100001111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|p2_reg|dffs\(3),
	datab => \k23~combout\(0),
	datac => \k23~combout\(1),
	datad => \inst1|p2_reg|dffs\(2),
	combout => \inst1|inst3|lpm_mult_component2|auto_generated|w70w[3]~3_combout\);

-- Location: LCCOMB_X21_Y11_N24
\inst1|inst3|lpm_mult_component2|auto_generated|op_2~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst1|inst3|lpm_mult_component2|auto_generated|op_2~2_combout\ = \inst1|inst3|lpm_mult_component2|auto_generated|w70w[3]~3_combout\ $ (((\inst1|inst3|lpm_mult_component2|auto_generated|cs1a[1]~0_combout\ & 
-- \inst1|inst3|lpm_mult_component2|auto_generated|w70w[2]~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst1|inst3|lpm_mult_component2|auto_generated|cs1a[1]~0_combout\,
	datac => \inst1|inst3|lpm_mult_component2|auto_generated|w70w[2]~2_combout\,
	datad => \inst1|inst3|lpm_mult_component2|auto_generated|w70w[3]~3_combout\,
	combout => \inst1|inst3|lpm_mult_component2|auto_generated|op_2~2_combout\);

-- Location: LCFF_X21_Y11_N25
\inst1|inst3|lpm_mult_component2|auto_generated|dffe9\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \inst1|inst3|lpm_mult_component2|auto_generated|op_2~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst1|inst3|lpm_mult_component2|auto_generated|dffe9~regout\);

-- Location: LCCOMB_X21_Y11_N22
\inst1|inst3|lpm_mult_component2|auto_generated|op_2~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst1|inst3|lpm_mult_component2|auto_generated|op_2~3_combout\ = \k23~combout\(3) $ (\inst1|inst3|lpm_mult_component2|auto_generated|w70w[2]~2_combout\ $ (((\k23~combout\(1) & \k23~combout\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \k23~combout\(1),
	datab => \k23~combout\(3),
	datac => \inst1|inst3|lpm_mult_component2|auto_generated|w70w[2]~2_combout\,
	datad => \k23~combout\(2),
	combout => \inst1|inst3|lpm_mult_component2|auto_generated|op_2~3_combout\);

-- Location: LCFF_X21_Y11_N23
\inst1|inst3|lpm_mult_component2|auto_generated|dffe7\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \inst1|inst3|lpm_mult_component2|auto_generated|op_2~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst1|inst3|lpm_mult_component2|auto_generated|dffe7~regout\);

-- Location: LCFF_X20_Y11_N1
\inst1|inst3|lpm_mult_component2|auto_generated|dffe4\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \k23~combout\(1),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst1|inst3|lpm_mult_component2|auto_generated|dffe4~regout\);

-- Location: LCCOMB_X20_Y11_N6
\inst1|inst3|lpm_mult_component2|auto_generated|op_1~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst1|inst3|lpm_mult_component2|auto_generated|op_1~6_combout\ = \inst1|inst3|lpm_mult_component2|auto_generated|dffe8~regout\ $ (\inst1|inst3|lpm_mult_component2|auto_generated|op_1~5\ $ (\inst1|inst3|lpm_mult_component2|auto_generated|dffe9~regout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100111100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst1|inst3|lpm_mult_component2|auto_generated|dffe8~regout\,
	datad => \inst1|inst3|lpm_mult_component2|auto_generated|dffe9~regout\,
	cin => \inst1|inst3|lpm_mult_component2|auto_generated|op_1~5\,
	combout => \inst1|inst3|lpm_mult_component2|auto_generated|op_1~6_combout\);

-- Location: PIN_C12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
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

-- Location: PIN_G15,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
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

-- Location: LCCOMB_X19_Y11_N6
\inst1|inst3|lpm_mult_component1|auto_generated|cs1a[1]~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst1|inst3|lpm_mult_component1|auto_generated|cs1a[1]~0_combout\ = \k13~combout\(3) $ (((\k13~combout\(1) & \k13~combout\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \k13~combout\(1),
	datab => \k13~combout\(3),
	datad => \k13~combout\(2),
	combout => \inst1|inst3|lpm_mult_component1|auto_generated|cs1a[1]~0_combout\);

-- Location: LCCOMB_X19_Y11_N16
\inst1|inst3|lpm_mult_component1|auto_generated|w117w[1]~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst1|inst3|lpm_mult_component1|auto_generated|w117w[1]~1_combout\ = (\inst1|inst3|lpm_mult_component1|auto_generated|cs2a[1]~0_combout\ & ((\inst1|p1_reg|dffs\(1) $ (\inst1|inst3|lpm_mult_component1|auto_generated|cs1a[1]~0_combout\)))) # 
-- (!\inst1|inst3|lpm_mult_component1|auto_generated|cs2a[1]~0_combout\ & (!\inst1|p1_reg|dffs\(0) & ((\inst1|inst3|lpm_mult_component1|auto_generated|cs1a[1]~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001101110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|inst3|lpm_mult_component1|auto_generated|cs2a[1]~0_combout\,
	datab => \inst1|p1_reg|dffs\(0),
	datac => \inst1|p1_reg|dffs\(1),
	datad => \inst1|inst3|lpm_mult_component1|auto_generated|cs1a[1]~0_combout\,
	combout => \inst1|inst3|lpm_mult_component1|auto_generated|w117w[1]~1_combout\);

-- Location: LCFF_X19_Y11_N17
\inst1|inst3|lpm_mult_component1|auto_generated|dffe8\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \inst1|inst3|lpm_mult_component1|auto_generated|w117w[1]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst1|inst3|lpm_mult_component1|auto_generated|dffe8~regout\);

-- Location: LCCOMB_X19_Y11_N8
\inst1|inst3|lpm_mult_component1|auto_generated|w70w[2]~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst1|inst3|lpm_mult_component1|auto_generated|w70w[2]~2_combout\ = (\k13~combout\(0) & (\k13~combout\(1) $ (((\inst1|p1_reg|dffs\(2)))))) # (!\k13~combout\(0) & (\k13~combout\(1) & (!\inst1|p1_reg|dffs\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100011010001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \k13~combout\(1),
	datab => \k13~combout\(0),
	datac => \inst1|p1_reg|dffs\(1),
	datad => \inst1|p1_reg|dffs\(2),
	combout => \inst1|inst3|lpm_mult_component1|auto_generated|w70w[2]~2_combout\);

-- Location: LCCOMB_X19_Y11_N10
\inst1|inst3|lpm_mult_component1|auto_generated|w70w[3]~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst1|inst3|lpm_mult_component1|auto_generated|w70w[3]~3_combout\ = (\k13~combout\(0) & (\k13~combout\(1) $ ((\inst1|p1_reg|dffs\(3))))) # (!\k13~combout\(0) & (\k13~combout\(1) & ((!\inst1|p1_reg|dffs\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100100001101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \k13~combout\(1),
	datab => \k13~combout\(0),
	datac => \inst1|p1_reg|dffs\(3),
	datad => \inst1|p1_reg|dffs\(2),
	combout => \inst1|inst3|lpm_mult_component1|auto_generated|w70w[3]~3_combout\);

-- Location: LCCOMB_X19_Y11_N18
\inst1|inst3|lpm_mult_component1|auto_generated|op_2~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst1|inst3|lpm_mult_component1|auto_generated|op_2~2_combout\ = \inst1|inst3|lpm_mult_component1|auto_generated|w70w[3]~3_combout\ $ (((\inst1|inst3|lpm_mult_component1|auto_generated|cs1a[1]~0_combout\ & 
-- \inst1|inst3|lpm_mult_component1|auto_generated|w70w[2]~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|inst3|lpm_mult_component1|auto_generated|cs1a[1]~0_combout\,
	datac => \inst1|inst3|lpm_mult_component1|auto_generated|w70w[2]~2_combout\,
	datad => \inst1|inst3|lpm_mult_component1|auto_generated|w70w[3]~3_combout\,
	combout => \inst1|inst3|lpm_mult_component1|auto_generated|op_2~2_combout\);

-- Location: LCFF_X19_Y11_N19
\inst1|inst3|lpm_mult_component1|auto_generated|dffe9\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \inst1|inst3|lpm_mult_component1|auto_generated|op_2~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst1|inst3|lpm_mult_component1|auto_generated|dffe9~regout\);

-- Location: LCCOMB_X20_Y11_N22
\inst1|inst3|lpm_mult_component1|auto_generated|op_2~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst1|inst3|lpm_mult_component1|auto_generated|op_2~3_combout\ = \k13~combout\(3) $ (\inst1|inst3|lpm_mult_component1|auto_generated|w70w[2]~2_combout\ $ (((\k13~combout\(2) & \k13~combout\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000011101111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \k13~combout\(2),
	datab => \k13~combout\(1),
	datac => \k13~combout\(3),
	datad => \inst1|inst3|lpm_mult_component1|auto_generated|w70w[2]~2_combout\,
	combout => \inst1|inst3|lpm_mult_component1|auto_generated|op_2~3_combout\);

-- Location: LCFF_X20_Y11_N23
\inst1|inst3|lpm_mult_component1|auto_generated|dffe7\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \inst1|inst3|lpm_mult_component1|auto_generated|op_2~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst1|inst3|lpm_mult_component1|auto_generated|dffe7~regout\);

-- Location: LCCOMB_X20_Y11_N28
\inst1|inst3|lpm_mult_component1|auto_generated|op_1~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst1|inst3|lpm_mult_component1|auto_generated|op_1~4_combout\ = ((\inst1|inst3|lpm_mult_component1|auto_generated|dffe6~regout\ $ (\inst1|inst3|lpm_mult_component1|auto_generated|dffe7~regout\ $ 
-- (!\inst1|inst3|lpm_mult_component1|auto_generated|op_1~3\)))) # (GND)
-- \inst1|inst3|lpm_mult_component1|auto_generated|op_1~5\ = CARRY((\inst1|inst3|lpm_mult_component1|auto_generated|dffe6~regout\ & ((\inst1|inst3|lpm_mult_component1|auto_generated|dffe7~regout\) # 
-- (!\inst1|inst3|lpm_mult_component1|auto_generated|op_1~3\))) # (!\inst1|inst3|lpm_mult_component1|auto_generated|dffe6~regout\ & (\inst1|inst3|lpm_mult_component1|auto_generated|dffe7~regout\ & !\inst1|inst3|lpm_mult_component1|auto_generated|op_1~3\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|inst3|lpm_mult_component1|auto_generated|dffe6~regout\,
	datab => \inst1|inst3|lpm_mult_component1|auto_generated|dffe7~regout\,
	datad => VCC,
	cin => \inst1|inst3|lpm_mult_component1|auto_generated|op_1~3\,
	combout => \inst1|inst3|lpm_mult_component1|auto_generated|op_1~4_combout\,
	cout => \inst1|inst3|lpm_mult_component1|auto_generated|op_1~5\);

-- Location: LCCOMB_X20_Y11_N30
\inst1|inst3|lpm_mult_component1|auto_generated|op_1~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst1|inst3|lpm_mult_component1|auto_generated|op_1~6_combout\ = \inst1|inst3|lpm_mult_component1|auto_generated|dffe8~regout\ $ (\inst1|inst3|lpm_mult_component1|auto_generated|op_1~5\ $ (\inst1|inst3|lpm_mult_component1|auto_generated|dffe9~regout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100111100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst1|inst3|lpm_mult_component1|auto_generated|dffe8~regout\,
	datad => \inst1|inst3|lpm_mult_component1|auto_generated|dffe9~regout\,
	cin => \inst1|inst3|lpm_mult_component1|auto_generated|op_1~5\,
	combout => \inst1|inst3|lpm_mult_component1|auto_generated|op_1~6_combout\);

-- Location: LCCOMB_X20_Y11_N20
\inst1|inst3|lpm_add_compontent1|auto_generated|pipeline_dffe[3]~10\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst1|inst3|lpm_add_compontent1|auto_generated|pipeline_dffe[3]~10_combout\ = \inst1|inst3|lpm_mult_component2|auto_generated|op_1~6_combout\ $ (\inst1|inst3|lpm_add_compontent1|auto_generated|pipeline_dffe[2]~9\ $ 
-- (\inst1|inst3|lpm_mult_component1|auto_generated|op_1~6_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100111100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst1|inst3|lpm_mult_component2|auto_generated|op_1~6_combout\,
	datad => \inst1|inst3|lpm_mult_component1|auto_generated|op_1~6_combout\,
	cin => \inst1|inst3|lpm_add_compontent1|auto_generated|pipeline_dffe[2]~9\,
	combout => \inst1|inst3|lpm_add_compontent1|auto_generated|pipeline_dffe[3]~10_combout\);

-- Location: LCFF_X20_Y11_N21
\inst1|inst3|lpm_add_compontent1|auto_generated|pipeline_dffe[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \inst1|inst3|lpm_add_compontent1|auto_generated|pipeline_dffe[3]~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst1|inst3|lpm_add_compontent1|auto_generated|pipeline_dffe\(3));

-- Location: LCCOMB_X19_Y12_N14
\inst1|inst3|lpm_mult_component3|auto_generated|cs1a[1]~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst1|inst3|lpm_mult_component3|auto_generated|cs1a[1]~0_combout\ = \k33~combout\(3) $ (((\k33~combout\(1) & \k33~combout\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111100001111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \k33~combout\(1),
	datab => \k33~combout\(2),
	datac => \k33~combout\(3),
	combout => \inst1|inst3|lpm_mult_component3|auto_generated|cs1a[1]~0_combout\);

-- Location: LCCOMB_X19_Y12_N0
\inst1|inst3|lpm_mult_component3|auto_generated|w117w[1]~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst1|inst3|lpm_mult_component3|auto_generated|w117w[1]~1_combout\ = (\inst1|inst3|lpm_mult_component3|auto_generated|cs2a[1]~0_combout\ & ((\inst1|inst3|lpm_mult_component3|auto_generated|cs1a[1]~0_combout\ $ (\inst1|p3_reg|dffs\(1))))) # 
-- (!\inst1|inst3|lpm_mult_component3|auto_generated|cs2a[1]~0_combout\ & (!\inst1|p3_reg|dffs\(0) & (\inst1|inst3|lpm_mult_component3|auto_generated|cs1a[1]~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001101010110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|inst3|lpm_mult_component3|auto_generated|cs2a[1]~0_combout\,
	datab => \inst1|p3_reg|dffs\(0),
	datac => \inst1|inst3|lpm_mult_component3|auto_generated|cs1a[1]~0_combout\,
	datad => \inst1|p3_reg|dffs\(1),
	combout => \inst1|inst3|lpm_mult_component3|auto_generated|w117w[1]~1_combout\);

-- Location: LCFF_X19_Y12_N1
\inst1|inst3|lpm_mult_component3|auto_generated|dffe8\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \inst1|inst3|lpm_mult_component3|auto_generated|w117w[1]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst1|inst3|lpm_mult_component3|auto_generated|dffe8~regout\);

-- Location: LCCOMB_X19_Y12_N10
\inst1|inst3|lpm_mult_component3|auto_generated|op_1~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst1|inst3|lpm_mult_component3|auto_generated|op_1~6_combout\ = \inst1|inst3|lpm_mult_component3|auto_generated|dffe9~regout\ $ (\inst1|inst3|lpm_mult_component3|auto_generated|op_1~5\ $ (\inst1|inst3|lpm_mult_component3|auto_generated|dffe8~regout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010101011010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|inst3|lpm_mult_component3|auto_generated|dffe9~regout\,
	datad => \inst1|inst3|lpm_mult_component3|auto_generated|dffe8~regout\,
	cin => \inst1|inst3|lpm_mult_component3|auto_generated|op_1~5\,
	combout => \inst1|inst3|lpm_mult_component3|auto_generated|op_1~6_combout\);

-- Location: LCCOMB_X19_Y12_N30
\inst1|inst3|lpm_add_compontent2|auto_generated|pipeline_dffe[3]~10\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst1|inst3|lpm_add_compontent2|auto_generated|pipeline_dffe[3]~10_combout\ = \inst1|inst3|lpm_add_compontent1|auto_generated|pipeline_dffe\(3) $ (\inst1|inst3|lpm_add_compontent2|auto_generated|pipeline_dffe[2]~9\ $ 
-- (\inst1|inst3|lpm_mult_component3|auto_generated|op_1~6_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100111100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst1|inst3|lpm_add_compontent1|auto_generated|pipeline_dffe\(3),
	datad => \inst1|inst3|lpm_mult_component3|auto_generated|op_1~6_combout\,
	cin => \inst1|inst3|lpm_add_compontent2|auto_generated|pipeline_dffe[2]~9\,
	combout => \inst1|inst3|lpm_add_compontent2|auto_generated|pipeline_dffe[3]~10_combout\);

-- Location: LCFF_X19_Y12_N31
\inst1|inst3|lpm_add_compontent2|auto_generated|pipeline_dffe[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \inst1|inst3|lpm_add_compontent2|auto_generated|pipeline_dffe[3]~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst1|inst3|lpm_add_compontent2|auto_generated|pipeline_dffe\(3));

-- Location: LCCOMB_X27_Y12_N4
\inst1|c3_reg|dffs[3]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst1|c3_reg|dffs[3]~feeder_combout\ = \inst1|inst3|lpm_add_compontent2|auto_generated|pipeline_dffe\(3)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst1|inst3|lpm_add_compontent2|auto_generated|pipeline_dffe\(3),
	combout => \inst1|c3_reg|dffs[3]~feeder_combout\);

-- Location: LCFF_X27_Y12_N5
\inst1|c3_reg|dffs[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \inst1|c3_reg|dffs[3]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst1|c3_reg|dffs\(3));

-- Location: PIN_J11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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
	datain => \inst1|c1_reg|dffs\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_c1(0));

-- Location: PIN_G12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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
	datain => \inst1|c1_reg|dffs\(1),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_c1(1));

-- Location: PIN_F16,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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
	datain => \inst1|c1_reg|dffs\(2),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_c1(2));

-- Location: PIN_A13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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
	datain => \inst1|c1_reg|dffs\(3),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_c1(3));

-- Location: PIN_F7,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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
	datain => \inst1|c2_reg|dffs\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_c2(0));

-- Location: PIN_D10,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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
	datain => \inst1|c2_reg|dffs\(1),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_c2(1));

-- Location: PIN_R10,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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
	datain => \inst1|c2_reg|dffs\(2),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_c2(2));

-- Location: PIN_C13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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
	datain => \inst1|c2_reg|dffs\(3),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_c2(3));

-- Location: PIN_C11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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
	datain => \inst1|c3_reg|dffs\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_c3(0));

-- Location: PIN_A7,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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
	datain => \inst1|c3_reg|dffs\(1),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_c3(1));

-- Location: PIN_G11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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
	datain => \inst1|c3_reg|dffs\(2),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_c3(2));

-- Location: PIN_D13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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
	datain => \inst1|c3_reg|dffs\(3),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_c3(3));
END structure;


