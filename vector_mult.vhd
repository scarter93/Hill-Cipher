-- entity name: vector_mult
-- Stephen Carter - 260500858

-- Copyright (C) 2015 Stephen Carter
-- Version 1.0 
-- Author: Stephen Carter; stephen.carter@mail.mcgill.ca
-- Date: Jan. 10, 2016

-- This circuit performs vector multiplication of a 1x3 vector and a 3x1 vector(key_loader column)
-- This circuit is a structural submodule for the matrix_mult_struct entity
library lpm;
use lpm.lpm_components.all;		-- used to preform calculations

library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_unsigned.all;	-- Treat vectors as unsigned

entity vector_mult is
	port(	p1		:	in std_logic_vector(3 downto 0);	-- inputs of 1x3 vector
			p2		:	in std_logic_vector(3 downto 0);
			p3		:	in std_logic_vector(3 downto 0);
			
			k1x	:	in std_logic_vector(3 downto 0);	-- inputs of keyloader column
			k2x	:	in std_logic_vector(3 downto 0);
			k3x	:	in std_logic_vector(3 downto 0);
			
			clk	:	in std_logic;							-- clock for synch
			
			cx		:	out std_logic_vector(3 downto 0)	-- output
		);

end vector_mult;

architecture structural of vector_mult is

Signal add_temp				:	std_logic_vector(3 downto 0);	-- temporary add signal used for intermediate add
Signal mult1,mult2,mult3	:	std_logic_vector(7 downto 0);	-- temporary mult signals used for intermediate mults

begin

lpm_mult_component1 : lpm_mult		-- peforms the first mult (p1*k1x) stored in mult1
	GENERIC MAP (
		lpm_widtha => 4,
		lpm_widthb => 4,
		lpm_type => "LPM_MULT",
		lpm_pipeline => 1,
		lpm_widthp => 8
	)
	PORT MAP (
		dataa => p1,
		datab => k1x,
		clock => clk,
		result => mult1
	);

lpm_mult_component2 : lpm_mult		-- peforms the mult (p2*k2x) stored in mult2
	GENERIC MAP (
		lpm_widtha => 4,
		lpm_widthb => 4,
		lpm_type => "LPM_MULT",
		lpm_pipeline => 1,
		lpm_widthp => 8
	)
	PORT MAP (
		dataa => p2,
		datab => k2x,
		clock => clk,
		result => mult2
	);	
	
lpm_mult_component3 : lpm_mult		-- peforms the mult (p3*k3x) stored in mult3
	GENERIC MAP (
		lpm_widtha => 4,
		lpm_widthb => 4,
		lpm_type => "LPM_MULT",
		lpm_pipeline => 1,
		lpm_widthp => 8
	)
	PORT MAP (
		dataa => p3,
		datab => k3x,
		clock => clk,
		result => mult3
	);	

lpm_add_compontent1 : lpm_add_sub		-- peforms the add (p1*k1x + p2*k2x) stored in add_temp
	GENERIC MAP (
		lpm_width => 4,
		lpm_direction => "ADD",
		lpm_representation => "UNSIGNED",
		lpm_pipeline => 1,
		lpm_type => "LPM_ADD_SUB"
	)
	PORT MAP (
		dataa => mult1(3 downto 0),
		datab => mult2(3 downto 0),
		clock => clk,
		result => add_temp
	);	

lpm_add_compontent2 : lpm_add_sub		-- performs	the add ((p1*k1x + p2*k2x) + p3*k3x) stored in output
	GENERIC MAP (
		lpm_width => 4,
		lpm_direction => "ADD",
		lpm_representation => "UNSIGNED",
		lpm_pipeline => 1,
		lpm_type => "LPM_ADD_SUB"
	)
	PORT MAP (
		dataa => add_temp,
		datab => mult3(3 downto 0),
		clock => clk,
		result => cx
	);	


end structural;