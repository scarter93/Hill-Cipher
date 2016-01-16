-- Current top-level design entity for tests
library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_arith.all;		-- arithmetic operators
use ieee.std_logic_unsigned.all;	-- Treat vectors as unsigned

LIBRARY lpm;
USE lpm.lpm_components.all;

entity hill_cipher is
	port(	p1			:	in std_logic_vector(3 downto 0);		-- inputs of 1x3 vector
			p2			:	in std_logic_vector(3 downto 0);
			p3			:	in std_logic_vector(3 downto 0);
			
			clk		:	in std_logic;							-- clock for synch
			load_key	: 	in std_logic;
			encrypt	:	in std_logic;
			
			c1			:	out std_logic_vector(3 downto 0);	-- output vector
			c2 		:	out std_logic_vector(3 downto 0);
			c3 		:	out std_logic_vector(3 downto 0)
		);

end hill_cipher;

architecture implementation of hill_cipher is

Signal	k11_t,k12_t,k13_t	:	std_logic_vector(3 downto 0);
Signal	k21_t,k22_t,k23_t	:	std_logic_vector(3 downto 0);
Signal	k31_t,k32_t,k33_t	:	std_logic_vector(3 downto 0);

Signal	dk11_t,dk12_t,dk13_t	:	std_logic_vector(3 downto 0);
Signal	dk21_t,dk22_t,dk23_t	:	std_logic_vector(3 downto 0);
Signal	dk31_t,dk32_t,dk33_t	:	std_logic_vector(3 downto 0);

Signal	s11,s12,s13	:	std_logic_vector(3 downto 0);
Signal	s21,s22,s23	:	std_logic_vector(3 downto 0);
Signal	s31,s32,s33	:	std_logic_vector(3 downto 0);


component key_inverter
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
end component;
	
component key_loader
	port( p1			:	in std_logic_vector(3 downto 0);	-- inputs of 1x3 vector
			p2			:	in std_logic_vector(3 downto 0);
			p3			:	in std_logic_vector(3 downto 0);
			
			load_key	:	in std_logic;
			clk		:	in std_logic;							-- clock for synch
			
			k11		:	out std_logic_vector(3 downto 0);	
			k12		:	out std_logic_vector(3 downto 0);
			k13		:	out std_logic_vector(3 downto 0);
			
			k21		:	out std_logic_vector(3 downto 0);
			k22		:	out std_logic_vector(3 downto 0);
			k23		:	out std_logic_vector(3 downto 0);
				
			k31		:	out std_logic_vector(3 downto 0);
			k32		:	out std_logic_vector(3 downto 0);
			k33		:	out std_logic_vector(3 downto 0)
		);
end component;

component mux_loader
	port(	encrypt	:	in std_logic;
	
			ek11		:	in std_logic_vector(3 downto 0);
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
			
			s11		:	out std_logic_vector(3 downto 0);
			s12		:	out std_logic_vector(3 downto 0);
			s13		:	out std_logic_vector(3 downto 0);
			
			s21		:	out std_logic_vector(3 downto 0);
			s22		:	out std_logic_vector(3 downto 0);
			s23		:	out std_logic_vector(3 downto 0);
			
			s31		:	out std_logic_vector(3 downto 0);
			s32		:	out std_logic_vector(3 downto 0);
			s33		:	out std_logic_vector(3 downto 0)			
		);
end component;
		
component matrix_mult
	port( p1	:	in std_logic_vector(3 downto 0);
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

Signal encrypt_reg	: std_logic;

begin
	
	latch : process(clk)
		begin
			if rising_edge(clk) then
				encrypt_reg <= encrypt;
			end if;
	end process;
	
	key_load : key_loader PORT MAP(	p1 => p1,p2 => p2, p3 => p3,
												load_key => load_key, clk => clk,
												k11 => k11_t, k12 => k12_t, k13 => k13_t,
												k21 => k21_t, k22 => k22_t, k23 => k23_t,
												k31 => k31_t, k32 => k32_t, k33 => k33_t);

	key_decrypt	: key_inverter PORT MAP(ek11 => k11_t, ek12 => k12_t, ek13 => k13_t,
													ek21 => k21_t, ek22 => k22_t, ek23 => k23_t,
													ek31 => k31_t, ek32 => k32_t, ek33 => k33_t,
													clk => clk,
													dk11 => dk11_t, dk12 => dk12_t, dk13 => dk13_t,
													dk21 => dk21_t, dk22 => dk22_t, dk23 => dk23_t,
													dk31 => dk31_t, dk32 => dk32_t, dk33 => dk33_t);
	
	mux : mux_loader PORT MAP( encrypt => encrypt_reg,
										ek11 => k11_t, ek12 => k12_t, ek13 => k13_t,
										ek21 => k21_t, ek22 => k22_t, ek23 => k23_t,
										ek31 => k31_t, ek32 => k32_t, ek33 => k33_t,
										dk11 => dk11_t, dk12 => dk12_t, dk13 => dk13_t,
										dk21 => dk21_t, dk22 => dk22_t, dk23 => dk23_t,
										dk31 => dk31_t, dk32 => dk32_t, dk33 => dk33_t,
										clk => clk,
										s11 => s11, s12 => s12, s13 => s13,
										s21 => s21, s22 => s22, s23 => s23,
										s31 => s31, s32 => s32, s33 => s33);
	
	mult : matrix_mult PORT MAP(p1	=> p1,p2	=> p2, p3 => p3,
										 k11 => s11, k12 => s12, k13 => s13,
										 k21 => s21, k22 => s22, k23 => s23,
										 k31 => s31, k32 => s32, k33 => s33,
										 clk => clk,
										 c1 => c1, c2 => c2, c3 => c3);
end implementation;
