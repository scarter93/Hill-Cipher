LIBRARY lpm;
USE lpm.lpm_components.all;

-- entity name: matrix_mult
-- Stephen Carter - 260500858

-- Copyright (C) 2015 Stephen Carter
-- Version 1.0 
-- Author: Stephen Carter; stephen.carter@mail.mcgill.ca
-- Date: Jan. 07, 2016

-- This circuit performs matrix multiplication of a 1x3 vector and a 3x1 vector(key_loader column:)
library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_unsigned.all;	-- Treat vectors as unsigned

entity vector_mult is
	port(	p1	:	in std_logic_vector(3 downto 0);
			p2	:	in std_logic_vector(3 downto 0);
			p3	:	in std_logic_vector(3 downto 0);
			
			k1x	:	in std_logic_vector(3 downto 0);
			k2x	:	in std_logic_vector(3 downto 0);
			k3x	:	in std_logic_vector(3 downto 0);
			
			clk	:	in std_logic;
			
			cx	:	out std_logic_vector(3 downto 0)
		);

end vector_mult;

architecture structural of vector_mult is

Signal p1_temp,p2_temp,p3_temp	:	std_logic_vector(3 downto 0);
Signal cx_temp, add_temp			:	std_logic_vector(7 downto 0);
Signal mult1,mult2,mult3			:	std_logic_vector(7 downto 0);

begin

lpm_mult_component1 : lpm_mult
	GENERIC MAP (
		lpm_widtha => 4,
		lpm_widthb => 4,
		lpm_type => "LPM_MULT",
		lpm_widthp => 8
	)
	PORT MAP (
		dataa => p1_temp,
		datab => k1x,
		clock => clk,
		result => mult1
	);

lpm_mult_component2 : lpm_mult
	GENERIC MAP (
		lpm_widtha => 4,
		lpm_widthb => 4,
		lpm_type => "LPM_MULT",
		lpm_widthp => 8
	)
	PORT MAP (
		dataa => p2_temp,
		datab => k2x,
		clock => clk,
		result => mult2
	);	
	
lpm_mult_component3 : lpm_mult
	GENERIC MAP (
		lpm_widtha => 4,
		lpm_widthb => 4,
		lpm_type => "LPM_MULT",
		lpm_widthp => 8
	)
	PORT MAP (
		dataa => p3_temp,
		datab => k3x,
		clock => clk,
		result => mult3
	);	

lpm_add_compontent1 : lpm_add_sub
	GENERIC MAP (
		lpm_width => 4,
		lpm_direction => "ADD",
		lpm_representation => "UNSIGNED",
		lpm_type => "LPM_ADD_SUB"
	)
	PORT MAP (
		dataa => mult1,
		datab => mult2,
		clock => clk,
		result => add_temp
	);	

lpm_add_compontent2 : lpm_add_sub
	GENERIC MAP (
		lpm_width => 4,
		lpm_direction => "ADD",
		lpm_representation => "UNSIGNED",
		lpm_type => "LPM_ADD_SUB"
	)
	PORT MAP (
		dataa => add_temp,
		datab => mult3,
		clock => clk,
		result => cx_temp
	);	

	
p1_reg : lpm_ff
	GENERIC MAP (
		lpm_width => 4,
		lpm_fftype => "DFF"
	)
	PORT MAP (
		data => p1,
		clock => clk,
		q => p1_temp
	);
	
p2_reg : lpm_ff
	GENERIC MAP (
		lpm_width => 4,
		lpm_fftype => "DFF"
	)
	PORT MAP (
		data => p2,
		clock => clk,
		q => p2_temp
	);

p3_reg : lpm_ff
	GENERIC MAP (
		lpm_width => 4,
		lpm_fftype => "DFF"
	)
	PORT MAP (
		data => p3,
		clock => clk,
		q => p3_temp
	);

cx_reg : lpm_ff
	GENERIC MAP (
		lpm_width => 4,
		lpm_fftype => "DFF"
	)
	PORT MAP (
		data => cx_temp(3 downto 0),
		clock => clk,
		q => cx
	);

end structural;