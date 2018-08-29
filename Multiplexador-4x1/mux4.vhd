library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;
use ieee.std_logic_unsigned.all;
use ieee.std_logic_arith.all;

entity mux4 IS
	PORT(
		i_A : IN STD_LOGIC_VECTOR(7 DOWNTO 0);
		i_b : IN STD_LOGIC_VECTOR(7 DOWNTO 0);
		i_c : IN STD_LOGIC_VECTOR(7 DOWNTO 0);
		i_d : IN STD_LOGIC_VECTOR(7 DOWNTO 0);
		o_s : OUT STD_LOGIC_VECTOR(7 DOWNTO 0);
		i_sel : in std_LOGIC_VECTOR(1 downto 0)
	);
END mux4;

ARCHITECTURE BEHAVIORAL OF mux4 IS

begin

		o_s <=   i_A when I_sel="00" else
					i_B when i_sel="01" else
					I_C when i_sel="10" else
					I_d when i_sel="11";


end behAVIORAL;				
	