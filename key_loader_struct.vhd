-- entity name: key_loader_struct
-- Stephen Carter - 260500858

-- Copyright (C) 2016 Stephen Carter
-- Version 1.0 
-- Author: Stephen Carter; stephen.carter@mail.mcgill.ca
-- Date: Jan. 14, 2016

-- This circuit loads an ecryption key, (stable after three clock cycles)
-- This circuit is a structural implementation using D flip flops
-- The circuit shifts values down and after 3 clock cycles is stable
library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_unsigned.all;	-- Treat vectors as unsigned

library lpm;
use lpm.lpm_components.all;

entity key_loader_struct is

	port( p1			:	in std_logic_vector(3 downto 0);	-- column to be loaded
			p2			:	in std_logic_vector(3 downto 0);
			p3			:	in std_logic_vector(3 downto 0);
			
			load_key	:	in std_logic;							-- used to load key columns (acts as enable)
			clk		:	in std_logic;							-- clock for synch
			
			k11		:	out std_logic_vector(3 downto 0);-- final encyrption key after 3 clock cycles		
			k12		:	out std_logic_vector(3 downto 0);
			k13		:	out std_logic_vector(3 downto 0);
			
			k21		:	out std_logic_vector(3 downto 0);
			k22		:	out std_logic_vector(3 downto 0);
			k23		:	out std_logic_vector(3 downto 0);
				
			k31		:	out std_logic_vector(3 downto 0);
			k32		:	out std_logic_vector(3 downto 0);
			k33		:	out std_logic_vector(3 downto 0)
		);
end key_loader_struct;

architecture implementation of key_loader_struct is

Signal	k11_reg,k12_reg,k13_reg	:	std_logic_vector(3 downto 0);	-- values for registers
Signal	k21_reg,k22_reg,k23_reg	:	std_logic_vector(3 downto 0); -- values for registers
Signal	k31_reg,k32_reg,k33_reg	:	std_logic_vector(3 downto 0); -- values for resgiters

begin
	k13_lpm_ff : lpm_ff			-- stores p1 in register (finally holds k13)
		GENERIC MAP (
			lpm_width => 4,
			lpm_fftype => "DFF"
		)
		PORT MAP (
			data => p1,
			clock => clk,
			enable => load_key,
			q => k13_reg
		);
		
	k23_lpm_ff : lpm_ff			-- stores p2 in register (finally holds k23)
		GENERIC MAP (
			lpm_width => 4,
			lpm_fftype => "DFF"
		)
		PORT MAP (
			data => p2,
			clock => clk,
			enable => load_key,
			q => k23_reg
		);

	k33_lpm_ff : lpm_ff			-- stores p3 in register (finally holds k33)
		GENERIC MAP (
			lpm_width => 4,
			lpm_fftype => "DFF"
		)
		PORT MAP (
			data => p3,
			clock => clk,
			enable => load_key,
			q => k33_reg
		);

	k12_lpm_ff : lpm_ff			-- stores previous p1 into next register (finally holds k12)
		GENERIC MAP (
			lpm_width => 4,
			lpm_fftype => "DFF"
		)
		PORT MAP (
			data => k13_reg,
			clock => clk,
			enable => load_key,
			q => k12_reg
		);
		
	k22_lpm_ff : lpm_ff			-- stores previous p2 into next register (finally holds k22)
		GENERIC MAP (
			lpm_width => 4,
			lpm_fftype => "DFF"
		)
		PORT MAP (
			data => k23_reg,
			clock => clk,
			enable => load_key,
			q => k22_reg
		);

	k32_lpm_ff : lpm_ff			-- stores previous p3 into next register (finally holds k32)
		GENERIC MAP (
			lpm_width => 4,
			lpm_fftype => "DFF"
		)
		PORT MAP (
			data => k33_reg,
			clock => clk,
			enable => load_key,
			q => k32_reg
		);
	k11_lpm_ff : lpm_ff			-- stores k11
		GENERIC MAP (
			lpm_width => 4,
			lpm_fftype => "DFF"
		)
		PORT MAP (
			data => k12_reg,
			clock => clk,
			enable => load_key,
			q => k11_reg
		);
		
	k21_lpm_ff : lpm_ff			-- stores k21
		GENERIC MAP (
			lpm_width => 4,
			lpm_fftype => "DFF"
		)
		PORT MAP (
			data => k22_reg,
			clock => clk,
			enable => load_key,
			q => k21_reg
		);

	k31_lpm_ff : lpm_ff			-- stores k31
		GENERIC MAP (
			lpm_width => 4,
			lpm_fftype => "DFF"
		)
		PORT MAP (
			data => k32_reg,
			clock => clk,
			enable => load_key,
			q => k31_reg
		);

	k11 <= k11_reg;				-- connect results to output
	k12 <= k12_reg;				-- correct values after 3 clock cycles
	k13 <= k13_reg;
	
	k21 <= k21_reg;
	k22 <= k22_reg;
	k23 <= k23_reg;
	
	k31 <= k31_reg;
	k32 <= k32_reg;
	k33 <= k33_reg;

end implementation;