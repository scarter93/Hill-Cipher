-- entity: key_inverter
-- Stephen Carter

-- Copyright (C) 2016 Stephen Carter
-- Version 1.1 
-- Author: Stephen Carter; stephen.carter@mail.mcgill.ca
-- Date: Jan. 19, 2016

-- This circuit generates a decryption key from the ecryption key
-- This circuit is a mixed structural and behavorial implementation (LPM ROM for modulo-16 inverse)
-- The circuit has a decent amount of delay as it has several operations
-- 
-- Pipelining was attempted and used to allow next set of values to be entered during operations
-- TODO: optimize to pipelining for all values (currently only works for final 3 entries)
library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_arith.all;		-- arithmetic operators
use ieee.std_logic_unsigned.all;	-- Treat vectors as unsigned

library lpm;
use lpm.lpm_components.all;		-- needed for LPM ROM

entity key_inverter is

	port(
			ek11	:	in std_logic_vector(3 downto 0);		--	encryption key to use
			ek12	:	in std_logic_vector(3 downto 0);	
			ek13	:	in std_logic_vector(3 downto 0);
			
			ek21	:	in std_logic_vector(3 downto 0);
			ek22	:	in std_logic_vector(3 downto 0);
			ek23	:	in std_logic_vector(3 downto 0);
			
			ek31	:	in std_logic_vector(3 downto 0);
			ek32	:	in std_logic_vector(3 downto 0);
			ek33	:	in std_logic_vector(3 downto 0);
			
			clk	: 	in std_logic;								-- clock for synch
			
			dk11	:	out std_logic_vector(3 downto 0);	-- decryption key to be generated
			dk12	:	out std_logic_vector(3 downto 0);
			dk13	:	out std_logic_vector(3 downto 0);
			
			dk21	:	out std_logic_vector(3 downto 0);
			dk22	:	out std_logic_vector(3 downto 0);
			dk23	:	out std_logic_vector(3 downto 0);
			
			dk31	:	out std_logic_vector(3 downto 0);
			dk32	:	out std_logic_vector(3 downto 0);
			dk33	:	out std_logic_vector(3 downto 0)
	);
end key_inverter;

architecture implementation of key_inverter is

Signal 	ek11_temp,ek12_temp,ek13_temp			:	std_logic_vector(3 downto 0);	-- temp values to hold encryption key for calculating determinant
Signal 	ek11_temp2,ek12_temp2,ek13_temp2		:	std_logic_vector(3 downto 0);

Signal 	cof11,cof12,cof13			:	std_logic_vector(3 downto 0);	-- signals for coefficients (also used for adjoint)
Signal	cof21,cof22,cof23			:	std_logic_vector(3 downto 0);
Signal	cof31,cof32,cof33			:	std_logic_vector(3 downto 0);

Signal 	cof11t,cof12t,cof13t		:	std_logic_vector(3 downto 0);	-- signals for coefficients (also used for adjoint)
Signal	cof21t,cof22t,cof23t		:	std_logic_vector(3 downto 0);
Signal	cof31t,cof32t,cof33t		:	std_logic_vector(3 downto 0);

Signal 	pipe1,pipe2,pipe3		:	std_logic_vector(7 downto 0);	-- values used for operations for pipelining
Signal	pipe4,pipe5,pipe6		:	std_logic_vector(7 downto 0);
Signal	pipe7,pipe8,pipe9		:	std_logic_vector(7 downto 0);
Signal 	pipe10,pipe11,pipe12	:	std_logic_vector(7 downto 0);
Signal	pipe13,pipe14,pipe15	:	std_logic_vector(7 downto 0);
Signal	pipe16,pipe17,pipe18	:	std_logic_vector(7 downto 0);
Signal	pipe19,pipe20,pipe21	:	std_logic_vector(7 downto 0);
Signal	pipe22					:	std_logic_vector(7 downto 0);

Signal 	dk11_t,dk12_t,dk13_t	:	std_logic_vector(7 downto 0);	-- temporary decryption key signals
Signal	dk21_t,dk22_t,dk23_t	:	std_logic_vector(7 downto 0);
Signal	dk31_t,dk32_t,dk33_t	:	std_logic_vector(7 downto 0);

Signal	det_minv					:	std_logic_vector(3 downto 0);	-- multiplicative inverse of determinant
Signal	det,det_temp			:	std_logic_vector(7 downto 0); -- determinant and determinant temp signals


begin

	mult_inv : lpm_rom			-- calculates multiplicative inverse modulo-16
		GENERIC MAP (
			lpm_width => 4,
			lpm_widthad => 4,
			lpm_numwords => 16,
			lpm_file => "mult_inv_16.mif",
			lpm_address_control => "REGISTERED",
			lpm_outdata => "UNREGISTERED"
		)
		PORT MAP (
			address => det(3 downto 0),	-- input the determinant
			inclock => clk,
			q => det_minv						-- output the multaplicative inverse (modulo-16)
		);
	
	pipeline : process(clk)
		begin
			if rising_edge(clk) then			
				-- preform first set of operations
				ek11_temp <= ek11;
				ek12_temp <= ek12;
				ek13_temp <= ek13;
				
				pipe1 <= ek22*ek33;
				pipe2 <= ek23*ek32;
				pipe3 <= ek23*ek31;
				pipe4 <= ek21*ek33;
				pipe5 <= ek21*ek32;
				pipe6 <= ek22*ek31;
				pipe7 <= ek13*ek32;
				pipe8 <= ek12*ek33;
				pipe9 <= ek11*ek33;
				pipe10 <= ek13*ek31;
				pipe11 <= ek12*ek31;
				pipe12 <= ek11*ek32;
				pipe13 <= ek12*ek23;
				pipe14 <= ek22*ek13;
				pipe15 <= ek13*ek21;
				pipe16 <= ek11*ek23;
				pipe17 <= ek11*ek22;
				pipe18 <= ek12*ek21;
				--use previously piped values to calculate the coefficients
				cof11 <= pipe1(3 downto 0) - pipe2(3 downto 0);
				cof12 <= pipe3(3 downto 0) - pipe4(3 downto 0);
				cof13 <= pipe5(3 downto 0) - pipe6(3 downto 0);
				cof21 <= pipe7(3 downto 0) - pipe8(3 downto 0);
				cof22 <= pipe9(3 downto 0) - pipe10(3 downto 0);
				cof23 <= pipe11(3 downto 0) - pipe12(3 downto 0);
				cof31 <= pipe13(3 downto 0) - pipe14(3 downto 0);
				cof32 <= pipe15(3 downto 0) - pipe16(3 downto 0);
				cof33 <= pipe17(3 downto 0) - pipe18(3 downto 0);
				
				ek11_temp2 <= ek11_temp;
				ek12_temp2 <= ek12_temp;
				ek13_temp2 <= ek13_temp;
				
				-- use the coefficients to calculate the determinant
				det <= ek11_temp2*cof11 + ek12_temp2*cof12 + ek13_temp2*cof13;
				
				cof11t <= cof11;
				cof12t <= cof12;
				cof13t <= cof13;
				cof21t <= cof21;
				cof22t <= cof22;
				cof23t <= cof23;
				cof31t <= cof31;
				cof32t <= cof32;
				cof33t <= cof33;
				-- use the adjoint(inverse coefficients) and multiplicative inverse
				-- to calculate the decryption key
				dk11_t <=det_minv*cof11t;
				dk12_t <=det_minv*cof21t;
				dk13_t <=det_minv*cof31t;
				
				dk21_t <=det_minv*cof12t;
				dk22_t <=det_minv*cof22t;
				dk23_t <=det_minv*cof32t;
				
				dk31_t <=det_minv*cof13t;
				dk32_t <=det_minv*cof23t;
				dk33_t <=det_minv*cof33t;
				-- remove the extra bits and output the decryption key
				dk11 <= dk11_t(3 downto 0);
				dk12 <= dk12_t(3 downto 0);
				dk13 <= dk13_t(3 downto 0);
				
				dk21 <= dk21_t(3 downto 0);
				dk22 <= dk22_t(3 downto 0);
				dk23 <= dk23_t(3 downto 0);
				
				dk31 <= dk31_t(3 downto 0);
				dk32 <= dk32_t(3 downto 0);
				dk33 <= dk33_t(3 downto 0);	
			end if;
	end process;
end implementation;