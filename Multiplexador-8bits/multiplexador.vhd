library IEEE;
use IEEE.STD_LOGIC_1164.all;
use ieee.std_logic_arith.all;
use ieee.std_logic_unsigned.all;

	port (
		i_A : in std_logic_vector(7 downto 0);
		i_B : in std_logic_vector(7 downto 0);
		i_C : in std_logic_vector(7 downto 0);
		i_D : in std_logic_vector(7 downto 0);
		i_sel : in std_logic_vector(1 downto 0);
		o_S : out std_logic_vector(7 downto 0)
	);
	end multiplexador;
	
	architecture behavioral of multiplexador is
	
	begin 
	--o_s <= i_A when (i_sel = "00") else
	--		 i_b when (i_sel = "01") else
	--		 i_c when (i_sel = "10") else
	--		 i_d when (i_sel = "11");
	
	--with i_sel select o_s <=
	--i_a when "00",
	--i_b when "01",
	--i_c when "10",
	--i_d when "11";
	
	process (i_sel,i_a,i_b,i_c,i_d)
	begin
		case i_sel is
			when "00" => o_s <= i_a;
			when "01" => o_s <= i_b;
			when "10" => o_s <= i_c;
			when others => o_s <= i_d;
		end case;
	end process;	
	
	end behavioral;
	