--este es un comentario
--declaracion de las librerias
library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.std_logic_arith.all;
use IEEE.std_logic_unsigned.all;

--delcaracion de la entidad
entity Semana_03 is
	port(	BTN:	in	std_logic;
			Q_out:	out std_logic_vector(3 downto 0));
end Semana_03;

--declaracion de la arquitectura
architecture Funcionamiento of Semana_03 is
signal interno:	std_logic_vector(25 downto 0):=(others=>'0');
signal cuenta: std_logic_vector(3 downto 0):=(others=>'0');

begin
	process(BTN)
	begin
		if rising_edge(BTN) then
			if interno = 50000000 then
				interno <= (others =>'0');
				cuenta <= cuenta + 1;
			else
				interno <= interno + 1;
			end if;
		end if;
	end process;
	Q_out <= cuenta;
end Funcionamiento;


		
			