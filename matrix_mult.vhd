-- entity name: matrix_mult
-- Stephen Carter - 260500858

-- Copyright (C) 2016 Stephen Carter
-- Version 1.0 
-- Author: Stephen Carter; stephen.carter@mail.mcgill.ca
-- Date: Jan. 07, 2016

-- This circuit performs matrix multiplication of a 1x3 vector and a 3x3 matrix(key_loader)
-- This implementation is behavioral
library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_arith.all;		-- arithmetic operators
use ieee.std_logic_unsigned.all;	-- Treat vectors as unsigned

entity matrix_mult is
	port(	p1	:	in std_logic_vector(3 downto 0);		-- inputs of 1x3 vector (plaintext)
			p2	:	in std_logic_vector(3 downto 0);
			p3	:	in std_logic_vector(3 downto 0);
			
			k11	:	in std_logic_vector(3 downto 0);	-- inputs of 3x3 key_loader (encryption key)
			k12	:	in std_logic_vector(3 downto 0);
			k13	:	in std_logic_vector(3 downto 0);
			
			k21	:	in std_logic_vector(3 downto 0);
			k22	:	in std_logic_vector(3 downto 0);
			k23	:	in std_logic_vector(3 downto 0);
			
			k31	:	in std_logic_vector(3 downto 0);
			k32	:	in std_logic_vector(3 downto 0);
			k33	:	in std_logic_vector(3 downto 0);
			
			clk	:	in std_logic;							-- clock for synch
			
			c1	:	out std_logic_vector(3 downto 0);	-- output vector (ciphertext)
			c2 :	out std_logic_vector(3 downto 0);
			c3 :	out std_logic_vector(3 downto 0)
		);

end matrix_mult;

architecture implementation of matrix_mult is
	Signal p1_reg,p2_reg,p3_reg	:	std_logic_vector(3 downto 0);	-- register values for inputs
	Signal c1_reg,c2_reg,c3_reg 	: 	std_logic_vector(7 downto 0);	-- register values for outputs
begin

	c1_reg <= (p1_reg*k11) + (p2_reg*k21) + (p3_reg*k31);				-- preform calculations
	c2_reg <= (p1_reg*k12) + (p2_reg*k22) + (p3_reg*k32);
	c3_reg <= (p1_reg*k13) + (p2_reg*k23) + (p3_reg*k33);
	

	
	compute_output : process(clk) begin			-- process used to store inputs and outputs to registers on rising edge
		if(rising_edge(clk)) then
			p1_reg <= p1;
			p2_reg <= p2;
			p3_reg <= p3;
			
			c1 <= c1_reg(3 downto 0);
			c2 <= c2_reg(3 downto 0);
			c3 <= c3_reg(3 downto 0);		
		end if;
	end process;

end implementation;
