library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;
use ieee.std_logic_unsigned.all;
use ieee.std_logic_arith.all;

entity registrador8bit is

generic (
	p_data : integer := 8 --Define quantidade de bits do registrador
);

	port (
		i_data : in std_logic_vector(p_data-1 downto 0);
		o_data : out std_logic_vector(p_data-1 downto 0);
		i_Clk : in std_logic;
		i_rst : in std_logic;
		i_en : in std_logic
	);
end registrador8bit;

architecture behavioral of registrador8bit is

begin

		process(i_clk)
		begin
			if rising_edge(i_clk) then
				if (i_rst = '0') then -- Se reset ativado, saida recebe todos 0
					o_data <= (others => '0');
				else
					if (i_en = '0') then -- Se enable ativado, saida recebe a entrada
					o_data <= i_data;
					end if;
				end if;
			end if;
		end process;	
end behavioral;		
	