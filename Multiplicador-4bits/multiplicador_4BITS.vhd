library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;
use ieee.std_logic_unsigned.all;
use ieee.std_logic_arith.all;


entity multiplicador_4BITS IS
	PORT(
			i_x 	: in  std_logic_vector(3 downto 0);
			i_y   : in  std_logic_vector(3 downto 0);
			o_z	: out std_logic_vector(7 downto 0)
	);
END multiplicador_4BITS;

architecture behavioral of multiplicador_4BITS is

	component FULL_ADDER IS
	PORT(
			i_A 	: in std_logic;
			i_B  	: in std_logic;
			i_C  	: in std_logic;
			o_S	: out std_logic;
			o_C   : out std_logic
	);
	END component;
	
	component HALF_ADDER IS
	PORT(
			i_A 	: in std_logic;
			i_B  	: in std_logic;
			o_S	: out std_logic;
			o_C   : out std_logic
	);
END component;
	
	SIGNAL w_C	: STD_logic_vector(10 downto 0);
	SIGNAL w_S : STD_logic_vector(20 downto 0);

begin
	-- =========================================================
	o_z(0) <= i_x(0) and i_y(0); -- 1
	w_s(0) <= i_x(1) and i_y(0); -- 2
	w_s(1) <= i_x(2) and i_y(0); -- 3
	w_s(2) <= i_x(3) and i_y(0); -- 4
	
	w_s(3) <= i_x(0) and i_y(1); --5
	w_s(4) <= i_x(1) and i_y(1); --6
	w_s(5) <= i_x(2) and i_y(1); --7
	w_s(6) <= i_x(3) and i_y(1); --8
	
	HA1: HALF_ADDER
PORT map(
			i_A 	=> w_s(3),
			i_B  	=> w_s(0),
			o_S	=> o_z(1),
			o_C   => w_c(0)
	);
	
	FA1 :FULL_ADDER
	PORT map(
			i_A 	=> w_s(4),
			i_B  	=> w_s(1),
			i_C  	=> w_c(0),
			o_S	=> w_s(7),
			o_C   => w_c(1)
	);
	
	FA2: FULL_ADDER
	PORT map(
			i_A 	=> w_s(5),
			i_B  	=> w_s(2),
			i_C  	=> w_c(1),
			o_S	=> w_s(8),
			o_C   => w_c(2)
	);
	
	HA2: HALF_ADDER
	PORT map(
			i_A 	=> w_s(6),
			i_B  	=> w_c(2),
			o_S	=> w_s(9),
			o_C   => w_c(3)
	);

	w_s(10) <= i_x(0) and i_y(2); --1A
	w_s(11) <= i_x(1) and i_y(2); --2A
	w_s(12) <= i_x(2) and i_y(2); --3A
	w_s(13) <= i_x(3) and i_y(2); --4A	

	HA3: HALF_ADDER
	PORT map(
			i_A 	=> w_s(10),
			i_B  	=> w_S(11),
			o_S	=> O_Z(2),
			o_C   => w_c(4)
	);	
	
		FA3: FULL_ADDER
	PORT map(
			i_A 	=> w_s(11),
			i_B  	=> w_s(8),
			i_C  	=> w_c(4),
			o_S	=> w_s(14),
			o_C   => w_c(5)
	);
	
		FA4: FULL_ADDER
	PORT map(
			i_A 	=> w_s(9),
			i_B  	=> w_s(12),
			i_C  	=> w_c(5),
			o_S	=> w_s(15),
			o_C   => w_c(6)
	);
	
	FA5: FULL_ADDER
	PORT map(
			i_A 	=> w_C(3),
			i_B  	=> w_s(13),
			i_C  	=> w_c(6),
			o_S	=> w_s(16),
			o_C   => w_c(7)
	);

	w_s(17) <= i_x(0) and i_y(3); --1B
	w_s(18) <= i_x(1) and i_y(3); --2B
	w_s(19) <= i_x(2) and i_y(3); --3B
	w_s(20) <= i_x(3) and i_y(3); --4B	
	
	
	HA4: HALF_ADDER
	PORT map(
			i_A 	=> w_s(17),
			i_B  	=> w_S(14),
			o_S	=> O_Z(3),
			o_C   => w_c(8)
	);
	
		FA6: FULL_ADDER
	PORT map(
			i_A 	=> w_S(18),
			i_B  	=> w_s(15),
			i_C  	=> w_c(8),
			o_S	=> O_Z(4),
			o_C   => w_c(9)
	);
	
			FA7: FULL_ADDER
	PORT map(
			i_A 	=> w_S(19),
			i_B  	=> w_s(16),
			i_C  	=> w_c(9),
			o_S	=> O_Z(5),
			o_C   => w_c(10)
	);
	
	FA8: FULL_ADDER
	PORT map(
			i_A 	=> w_C(7),
			i_B  	=> w_s(20),
			i_C  	=> w_c(10),
			o_S	=> O_Z(6),
			o_C   => O_Z(7)
	);
	
end behavioral;
