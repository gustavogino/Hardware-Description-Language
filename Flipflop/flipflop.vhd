library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;
use ieee.std_logic_unsigned.all;
use ieee.std_logic_arith.all;

entity flipflop IS
	PORT(
		i_D : IN STD_LOGIC;
		o_Q : OUT STD_LOGIC;
		i_clk : in std_LOGIC
	);
END flipflop;

ARCHITECTURE BEHAVIORAL OF flipflop IS

begin
	process (i_clk)
	begin	
	-- if (i_clk' event and i_clk ='1') then
		if rising_edge(i_clk) then
			o_q <= i_d;
		end if;
	end process;		
			


end BEHAVIORAL;				
	