library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.std_logic_arith.all;
use IEEE.std_logic_unsigned.all;

entity CONT_8B is
	port(	in_clk:	in std_logic;
			Q:			out std_logic_vector(7 downto 0));
end CONT_8B;

architecture funcionamiento of CONT_8B is
signal interno: std_logic_vector(7 downto 0);
begin
	process(in_clk)
	begin
		if rising_edge(in_clk) then
			interno <= interno + 1;
		end if;
	end process;
	Q <= interno;

	
end funcionamiento;