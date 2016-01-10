-- entity name: matrix_mult_struct
-- Stephen Carter - 260500858

-- Copyright (C) 2015 Stephen Carter
-- Version 1.0 
-- Author: Stephen Carter; stephen.carter@mail.mcgill.ca
-- Date: Jan. 10, 2016

-- This circuit performs matrix multiplication of a 1x3 vector and a 3x3 matrix(key_loader)
-- This circuit is a structural implementation of matrix_mult
library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_arith.all;		-- arithmetic operators
use ieee.std_logic_unsigned.all;	-- Treat vectors as unsigned


LIBRARY lpm;
USE lpm.lpm_components.all;		-- used to peform required calculations

entity matrix_mult_struct is
	port(	p1	:	in std_logic_vector(3 downto 0);		-- inputs of 1x3 vector
			p2	:	in std_logic_vector(3 downto 0);
			p3	:	in std_logic_vector(3 downto 0);
			
			k11	:	in std_logic_vector(3 downto 0);	-- inputs of 3x3 key_loader
			k12	:	in std_logic_vector(3 downto 0);
			k13	:	in std_logic_vector(3 downto 0);
			
			k21	:	in std_logic_vector(3 downto 0);
			k22	:	in std_logic_vector(3 downto 0);
			k23	:	in std_logic_vector(3 downto 0);
			
			k31	:	in std_logic_vector(3 downto 0);
			k32	:	in std_logic_vector(3 downto 0);
			k33	:	in std_logic_vector(3 downto 0);
			
			clk	:	in std_logic;							-- clock for synch
			
			c1	:	out std_logic_vector(3 downto 0);	-- output vector
			c2 :	out std_logic_vector(3 downto 0);
			c3 :	out std_logic_vector(3 downto 0)
		);

end matrix_mult_struct;

architecture structural of matrix_mult_struct is

Signal p1_temp,p2_temp,p3_temp	:	std_logic_vector(3 downto 0);	--	temp signals for the input (registers)
Signal c1_temp,c2_temp,c3_temp	:	std_logic_vector(3 downto 0);	-- temp signals for the output (registers)

component vector_mult
	Port( p1		:	in std_logic_vector(3 downto 0);	-- inputs of 1x3 vector
			p2		:	in std_logic_vector(3 downto 0);
			p3		:	in std_logic_vector(3 downto 0);
			
			k1x	:	in std_logic_vector(3 downto 0);	-- inputs of keyloader column
			k2x	:	in std_logic_vector(3 downto 0);
			k3x	:	in std_logic_vector(3 downto 0);
			
			clk	:	in std_logic;							-- clock for synch
			
			cx 	:	out std_logic_vector(3 downto 0)	-- output
		);
end component;


begin
	p1_reg : lpm_ff			-- stores p1 in register
		GENERIC MAP (
			lpm_width => 4,
			lpm_fftype => "DFF"
		)
		PORT MAP (
			data => p1,
			clock => clk,
			q => p1_temp
		);
		
	p2_reg : lpm_ff			-- stores p2 in register
		GENERIC MAP (
			lpm_width => 4,
			lpm_fftype => "DFF"
		)
		PORT MAP (
			data => p2,
			clock => clk,
			q => p2_temp
		);

	p3_reg : lpm_ff			-- stores p3 in register
		GENERIC MAP (
			lpm_width => 4,
			lpm_fftype => "DFF"
		)
		PORT MAP (
			data => p3,
			clock => clk,
			q => p3_temp
		);

	c1_reg : lpm_ff			-- stores c1 in register
		GENERIC MAP (
			lpm_width => 4,
			lpm_fftype => "DFF"
		)
		PORT MAP (
			data => c1_temp,
			clock => clk,
			q => c1
		);
		
	c2_reg : lpm_ff			-- stores c2 in register
		GENERIC MAP (
			lpm_width => 4,
			lpm_fftype => "DFF"
		)
		PORT MAP (
			data => c2_temp,
			clock => clk,
			q => c2
		);
	c3_reg : lpm_ff			-- stores c3 in register
		GENERIC MAP (
			lpm_width => 4,
			lpm_fftype => "DFF"
		)
		PORT MAP (
			data => c3_temp,
			clock => clk,
			q => c3
		);
	
	-- performs calculations for first column of keyloader
	inst1 : vector_mult PORT MAP(p1	=> p1_temp,p2	=> p2_temp, p3 => p3_temp,
										  k1x => k11,
										  k2x => k21,
										  k3x => k31,
										  clk => clk,
										  cx => c1_temp);
	-- performs calculations for second column of keyloader									  
	inst2 : vector_mult PORT MAP(p1	=> p1_temp,p2	=> p2_temp, p3 => p3_temp,
										  k1x => k12,
										  k2x => k22,
										  k3x => k32,
										  clk => clk,
										  cx => c2_temp);
	-- performs calculations for third column of keyloader									  
	inst3 : vector_mult PORT MAP(p1	=> p1_temp,p2	=> p2_temp, p3 => p3_temp,
										  k1x => k13,
										  k2x => k23,
										  k3x => k33,
										  clk => clk,
										  cx => c3_temp);


end structural;
