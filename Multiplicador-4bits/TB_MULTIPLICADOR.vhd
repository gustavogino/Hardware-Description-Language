library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;
use ieee.std_logic_unsigned.all;
use ieee.std_logic_arith.all;


entity tb_multiplicador_4BITS IS

END tb_multiplicador_4BITS;

architecture behavioral of tb_multiplicador_4BITS is

	component multiplicador_4BITS IS
	PORT(
			i_x 	: in  std_logic_vector(3 downto 0);
			i_y   : in  std_logic_vector(3 downto 0);
			o_z	: out std_logic_vector(7 downto 0)
	);
	END component;
	
		signal W_x 	: std_logic_vector(3 downto 0);
		signal W_y   : std_logic_vector(3 downto 0);
		signal W_z	: std_logic_vector(7 downto 0);

begin
	UTT: multiplicador_4BITS
	PORT MAP(
		I_X => W_X,
		I_y => W_Y,
		o_z => W_Z
	);
	
	PROCESS
		BEGin	
		
			w_x <= x"2";
			w_y <= x"3";
			
			
	end process;
	
end behavioral;
