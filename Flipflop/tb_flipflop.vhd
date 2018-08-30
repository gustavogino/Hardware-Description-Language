library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;
use ieee.std_logic_unsigned.all;
use ieee.std_logic_arith.all;

entity tb_flipflop IS
END tb_flipflop;

ARCHITECTURE BEHAVIORAL OF tb_flipflop IS

COMPONENT flipflop IS
	PORT(
		i_D : IN STD_LOGIC;
		o_Q : OUT STD_LOGIC;
		i_clk : in std_LOGIC
	);
END COMPONENT;
	
	SIGNAL W_CLK : STD_LOGIC;
	SIGNAL W_D : STD_LOGIC;
	SIGNAL W_Q : STD_LOGIC;

begin
	
	UTT: FLIPFLOP
	PORT MAP(	
		I_Clk => W_CLK,
		I_D => W_D,
		o_Q => W_Q
	);	
	
	PROCESS
	BEGin
		W_CLK <= '1';
		WAIT FOR 10 ns;
		w_clk <= '0';
		wait for 10 ns;
	end process;	
	
	PROCESS
	BEGin
		W_d<= '1';
		WAIT FOR 35 ns;
		w_d <= '0';
		wait for 35 ns;
		W_d<= '1';
		WAIT FOR 35 ns;
	end process;
end BEHAVIORAL;				