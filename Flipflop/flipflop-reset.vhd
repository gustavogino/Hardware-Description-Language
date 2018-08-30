library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;
use ieee.std_logic_unsigned.all;
use ieee.std_logic_arith.all;

entity flipflop IS
	PORT(
		i_clk : in std_LOGIC;
		i_reset : in std_LOGIC;
		i_D : IN STD_LOGIC;
		o_Q : OUT STD_LOGIC		
	);
END flipflop;

ARCHITECTURE BEHAVIORAL OF flipflop IS

begin
	--
	-- reset sincrono
	--
	process (i_clk)
	begin	
		if falling_edge(i_clk) then
			if (i_reset = '0') then
				o_q <= '0';
			else
				o_q <= i_d;
			end if;	
		end if;
	end process;	
	--
	-- reset assincrono
	--
	process (i_clk, i_reset)
	begin	
		if (i_reset = '0') then
			o_Q <= '0';
		elsif falling_edge(i_clk) then
			o_Q <= i_D;
		end if;			
	
		if falling_edge(i_clk) then
			if (i_reset = '0') then
				o_Q <= '0';
			else
				o_Q <= i_D;
			end if;	
		end if;
	end process;
end BEHAVIORAL;				
	