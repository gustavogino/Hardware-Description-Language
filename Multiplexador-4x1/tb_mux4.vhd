library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;
use ieee.std_logic_unsigned.all;
use ieee.std_logic_arith.all;

entity TB_mux4 IS
END TB_mux4;

ARCHITECTURE BEHAVIORAL OF TB_mux4 IS

component mux4
	PORT(
		i_A : IN STD_LOGIC_VECTOR(7 DOWNTO 0);
		i_b : IN STD_LOGIC_VECTOR(7 DOWNTO 0);
		i_c : IN STD_LOGIC_VECTOR(7 DOWNTO 0);
		i_d : IN STD_LOGIC_VECTOR(7 DOWNTO 0);
		o_s : OUT STD_LOGIC_VECTOR(7 DOWNTO 0);
		i_sel : in std_LOGIC_VECTOR(1 downto 0)
	);
END component;

	signal w_ia: std_LOGIC_VECTOR(7 downto 0);
	signal w_ib: std_LOGIC_VECTOR(7 downto 0);
	signal w_ic: std_LOGIC_VECTOR(7 downto 0);
	signal w_id: std_LOGIC_VECTOR(7 downto 0);
	signal w_os: std_LOGIC_VECTOR(7 downto 0);
	signal w_sel: std_LOGIC_VECTOR(1 downto 0);
	
begin

UUT : mux4
	port map( 
				i_A=> w_ia,
				i_B=> w_ib,
				i_c=> w_ic,
				i_D=> w_id,
				i_sel => w_sel,
				o_s => w_os
	);
	
	process
	begin	
		
		w_ia<= x"5F";
		w_ib<= x"FF";
		w_ic<= x"07";
		w_id<= x"CA";
		
		w_sel<= "00";
		wait for 10 ns;
		W_sel<= "01";
		wait for 10 ns;
		W_sel<= "10";
		wait for 10 ns;
		W_sel<= "11";
		wait for 10 ns;
	end process;	
	
	
end behAVIORAL;				
	