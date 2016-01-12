-- entity: key_inverter
-- author: Stephen Carter

library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_arith.all;		-- arithmetic operators
use ieee.std_logic_unsigned.all;	-- Treat vectors as unsigned

entity key_inverter is

	port(
			ek11	:	in std_logic_vector(3 downto 0);
			ek12	:	in std_logic_vector(3 downto 0);
			ek13	:	in std_logic_vector(3 downto 0);
			
			ek21	:	in std_logic_vector(3 downto 0);
			ek22	:	in std_logic_vector(3 downto 0);
			ek23	:	in std_logic_vector(3 downto 0);
			
			ek31	:	in std_logic_vector(3 downto 0);
			ek32	:	in std_logic_vector(3 downto 0);
			ek33	:	in std_logic_vector(3 downto 0);
			
			clk	: 	in std_logic;
			
			dk11	:	out std_logic_vector(3 downto 0);
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

Signal 	cof11,cof12,cof13	:	std_logic_vector(3 downto 0);
Signal	cof21,cof22,cof23	:	std_logic_vector(3 downto 0);
Signal	cof31,cof32,cof33	:	std_logic_vector(3 downto 0);

Signal 	adj11,adj12,adj13	:	std_logic_vector(3 downto 0);
Signal	adj21,adj22,adj23	:	std_logic_vector(3 downto 0);
Signal	adj31,adj32,adj33	:	std_logic_vector(3 downto 0);


begin

	cof11 <= ek22*ek33 - ek23*ek32;
	cof12 <= ek23*ek31 - ek21*ek33;
	cof13 <= ek21*ek32 - ek22*ek31;
	cof21 <= ek13*ek32 - ek12*ek33;
	cof22 <= ek11*ek33 - ek13*ek31;
	cof23 <= ek12*ek31 - ek11*ek32;
	cof31 <= ek12*ek23 - ek22*ek13;
	cof32 <= ek13*ek21 - ek11*ek23;
	cof33 <= ek11*ek22 - ek12*ek21;
	
	adj11 <= cof11;
	adj22 <= cof22;
	adj33 <= cof33;
	
	adj12 <= cof21;
	adj13 <= cof31;
	
	adj21 <= cof12;
	adj23 <= cof32;
	
	adj31 <= cof13;
	adj32 <= cof23;


end implementation;