--entity name: mux_loader
-- Stephen Carter

-- Copyright (C) 2016 Stephen Carter
-- Version 1.0 
-- Author: Stephen Carter; stephen.carter@mail.mcgill.ca
-- Date: Jan. 17, 2016

-- This selects either the decryption or encryption key to be used

library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_arith.all;		-- arithmetic operators
use ieee.std_logic_unsigned.all;	-- Treat vectors as unsigned

entity mux_loader is
	port(	encrypt	:	in std_logic;	-- acts as a select (encryption when high)
	
			ek11		:	in std_logic_vector(3 downto 0);		--encryption key values
			ek12		:	in std_logic_vector(3 downto 0);
			ek13		:	in std_logic_vector(3 downto 0);
			
			ek21		:	in std_logic_vector(3 downto 0);
			ek22		:	in std_logic_vector(3 downto 0);
			ek23		:	in std_logic_vector(3 downto 0);
			
			ek31		:	in std_logic_vector(3 downto 0);
			ek32		:	in std_logic_vector(3 downto 0);
			ek33		:	in std_logic_vector(3 downto 0);
			
			dk11		:	in std_logic_vector(3 downto 0);
			dk12		:	in std_logic_vector(3 downto 0);
			dk13		:	in std_logic_vector(3 downto 0);
			
			dk21		:	in std_logic_vector(3 downto 0);
			dk22		:	in std_logic_vector(3 downto 0);
			dk23		:	in std_logic_vector(3 downto 0);
			
			dk31		:	in std_logic_vector(3 downto 0);
			dk32		:	in std_logic_vector(3 downto 0);
			dk33		:	in std_logic_vector(3 downto 0);
			
			clk		:	in std_logic;
			
			s11		:	out std_logic_vector(3 downto 0);	-- decryption key values
			s12		:	out std_logic_vector(3 downto 0);
			s13		:	out std_logic_vector(3 downto 0);
			
			s21		:	out std_logic_vector(3 downto 0);
			s22		:	out std_logic_vector(3 downto 0);
			s23		:	out std_logic_vector(3 downto 0);
			
			s31		:	out std_logic_vector(3 downto 0);
			s32		:	out std_logic_vector(3 downto 0);
			s33		:	out std_logic_vector(3 downto 0)
			
		);
end mux_loader;
		
architecture implementation of mux_loader is

begin
	select_matrix : process(clk)
		begin
			case encrypt is	-- if encrypt is high select encryption key
				when '1' =>
					s11 <= ek11;
					s12 <= ek12;
					s13 <= ek13;
					
					s21 <= ek21;
					s22 <= ek22;
					s23 <= ek23;
					
					s31 <= ek31;
					s32 <= ek32;
					s33 <= ek33;
				when '0' =>		-- if encrypt is low select decryption key
					s11 <= dk11;
					s12 <= dk12;
					s13 <= dk13;
					
					s21 <= dk21;
					s22 <= dk22;
					s23 <= dk23;
					
					s31 <= dk31;
					s32 <= dk32;
					s33 <= dk33;
			end case;
	end process;

end implementation;