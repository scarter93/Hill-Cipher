-- Current top-level design entity for tests
library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_arith.all;		-- arithmetic operators
use ieee.std_logic_unsigned.all;	-- Treat vectors as unsigned



entity HillCipher is
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

end HillCipher;

architecture implementation of HillCipher is

component matrix_mult_struct
	Port( p1	:	in std_logic_vector(3 downto 0);
			p2	:	in std_logic_vector(3 downto 0);
			p3	:	in std_logic_vector(3 downto 0);
			
			k11	:	in std_logic_vector(3 downto 0);
			k12	:	in std_logic_vector(3 downto 0);
			k13	:	in std_logic_vector(3 downto 0);
			
			k21	:	in std_logic_vector(3 downto 0);
			k22	:	in std_logic_vector(3 downto 0);
			k23	:	in std_logic_vector(3 downto 0);
			
			k31	:	in std_logic_vector(3 downto 0);
			k32	:	in std_logic_vector(3 downto 0);
			k33	:	in std_logic_vector(3 downto 0);
			
			clk	:	in std_logic;
			
			c1	:	out std_logic_vector(3 downto 0);
			c2 :	out std_logic_vector(3 downto 0);
			c3 :	out std_logic_vector(3 downto 0)
		);
end component;

begin
	
	inst1 : matrix_mult_struct PORT MAP(p1	=> p1,p2	=> p2, p3 => p3,
										  k11 => k11, k12 => k12, k13 => k13,
										  k21 => k21, k22 => k22, k23 => k23,
										  k31 => k31, k32 => k32, k33 => k33,
										  clk => clk,
										  c1 => c1, c2 => c2, c3 => c3);
	
end implementation;
