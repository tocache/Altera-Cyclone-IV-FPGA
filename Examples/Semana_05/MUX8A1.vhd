library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.std_logic_arith.all;
use IEEE.std_logic_unsigned.all;

entity MUX8A1 is
	port(	I:in std_logic_vector(7 downto 0);
			S:		in std_logic_vector(2 downto 0);
			X:		out std_logic);
end MUX8A1;

architecture funcionamiento of MUX8A1 is
begin
	with S select
		x <=  I(0) when "000",
				I(1) when "001",
				I(2) when "010",
				I(3) when "011",
				I(4) when "100",
				I(5) when "101",
				I(6) when "110",
				I(7) when "111",
				'0' when others;
end funcionamiento;