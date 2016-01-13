-- entity: key_inverter
-- author: Stephen Carter

library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_arith.all;		-- arithmetic operators
use ieee.std_logic_unsigned.all;	-- Treat vectors as unsigned

library lpm;
use lpm.lpm_components.all;

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

Signal 	cof11,cof12,cof13		:	std_logic_vector(3 downto 0);
Signal	cof21,cof22,cof23		:	std_logic_vector(3 downto 0);
Signal	cof31,cof32,cof33		:	std_logic_vector(3 downto 0);

Signal 	pipe1,pipe2,pipe3		:	std_logic_vector(7 downto 0);
Signal	pipe4,pipe5,pipe6		:	std_logic_vector(7 downto 0);
Signal	pipe7,pipe8,pipe9		:	std_logic_vector(7 downto 0);
Signal 	pipe10,pipe11,pipe12	:	std_logic_vector(7 downto 0);
Signal	pipe13,pipe14,pipe15	:	std_logic_vector(7 downto 0);
Signal	pipe16,pipe17,pipe18	:	std_logic_vector(7 downto 0);
Signal	pipe19,pipe20,pipe21	:	std_logic_vector(7 downto 0);
Signal	pipe22					:	std_logic_vector(7 downto 0);

Signal 	dk11_t,dk12_t,dk13_t	:	std_logic_vector(7 downto 0);
Signal	dk21_t,dk22_t,dk23_t	:	std_logic_vector(7 downto 0);
Signal	dk31_t,dk32_t,dk33_t	:	std_logic_vector(7 downto 0);

Signal	det,det_minv			:	std_logic_vector(3 downto 0);
Signal	det_temp					:	std_logic_vector(7 downto 0);


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
			address => det,
			inclock => clk,
			q => det_minv
		);
		
		det <= det_temp(3 downto 0);
		
	
		dk11 <= dk11_t(3 downto 0);
		dk12 <= dk12_t(3 downto 0);
		dk13 <= dk13_t(3 downto 0);
		
		dk21 <= dk21_t(3 downto 0);
		dk22 <= dk22_t(3 downto 0);
		dk23 <= dk23_t(3 downto 0);
		
		dk31 <= dk31_t(3 downto 0);
		dk32 <= dk32_t(3 downto 0);
		dk33 <= dk33_t(3 downto 0);
	
	pipeline : process(clk)
		begin
		
			if rising_edge(clk) then
				
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
				
				cof11 <= pipe1(3 downto 0) + pipe2(3 downto 0);
				cof12 <= pipe3(3 downto 0) + pipe4(3 downto 0);
				cof13 <= pipe5(3 downto 0) + pipe6(3 downto 0);
				cof21 <= pipe7(3 downto 0) + pipe8(3 downto 0);
				cof22 <= pipe9(3 downto 0) + pipe10(3 downto 0);
				cof23 <= pipe11(3 downto 0) + pipe12(3 downto 0);
				cof31 <= pipe13(3 downto 0) + pipe14(3 downto 0);
				cof32 <= pipe15(3 downto 0) + pipe16(3 downto 0);
				cof33 <= pipe17(3 downto 0) + pipe18(3 downto 0);
				
				pipe19 <= ek11*cof11;
				pipe20 <= ek12*cof12;
				pipe21 <= ek13*cof13;
				
				pipe22 <= pipe19 + pipe20;
				
				det_temp <= pipe22 + pipe21;
				
				--adj11 <= cof11;
				--adj22 <= cof22;
				--adj33 <= cof33;
				
				--adj12 <= cof21;
				--adj13 <= cof31;
				
				--adj21 <= cof12;
				--adj23 <= cof32;
				
				--adj31 <= cof13;
				--adj32 <= cof23;
				
				dk11_t <=det_minv*cof11;
				dk12_t <=det_minv*cof21;
				dk13_t <=det_minv*cof31;
				
				dk21_t <=det_minv*cof12;
				dk22_t <=det_minv*cof22;
				dk23_t <=det_minv*cof32;
				
				dk31_t <=det_minv*cof13;
				dk32_t <=det_minv*cof23;
				dk33_t <=det_minv*cof33;
				
			end if;
	end process;
end implementation;