library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.std_logic_arith.all;
use IEEE.std_logic_unsigned.all;

entity CLK_DIV1 is
	port(	in_clk:	in std_logic;
			Q:			out std_logic);
end CLK_DIV1;

architecture funcionamiento of CLK_DIV1 is
signal interno: std_logic_vector(25 downto 0);
signal salida: std_logic;
begin
	process(in_clk)
	begin
		if rising_edge(in_clk) then
			interno <= interno + 1;
			if interno = 50000000 then
				interno <= (others =>'0');
				salida <= not salida;
			end if;
		end if;
	end process;
	Q <= salida;
end funcionamiento;