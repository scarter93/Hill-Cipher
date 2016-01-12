-- entity name: key_loader

library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;
use ieee.std_logic_unsigned.all;	-- Treat vectors as unsigned


entity key_loader is

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
end key_loader;

architecture implementation of key_loader is

Signal	state	:	integer range 0 to 3 := 0;

begin

	load : process(clk, load_key)
		Begin
				if load_key = '1' AND rising_edge(clk) then
					case state is
					when 0 =>
						k11 <= p1;
						k21 <= p2;
						k31 <= p3;
						state <= 1;
					when 1 =>
						k12 <= p1;
						k22 <= p2;
						k32 <= p3;
						state <= 2;
					when 2 =>
						k13 <= p1;
						k23 <= p2;
						k33 <= p3;
						state <= 3;
					when 3 =>
						state <= 0;
					end case;
				elsif load_key = '0' AND rising_edge(clk) then
					state <= 0;
				end if;
	end process;

end implementation;