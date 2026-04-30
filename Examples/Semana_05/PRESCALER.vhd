library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.std_logic_arith.all;
use IEEE.std_logic_unsigned.all;

entity PRESCALER is
	port(	in_clk:	in std_logic;
			S:			in std_logic_vector(2 downto 0);
			X:			out std_logic);
end PRESCALER;

architecture estructura of PRESCALER is
signal conexion: std_logic_vector(7 downto 0);

component CONT_8B is
	port(	in_clk:	in std_logic;
			Q:			out std_logic_vector(7 downto 0));
end component;

component MUX8A1 is
	port(	I:	in std_logic_vector(7 downto 0);
			S:		in std_logic_vector(2 downto 0);
			X:		out std_logic);
end component;

begin
	u1:	CONT_8B port map (	in_clk => in_clk,
									Q => conexion);
	u2:	MUX8A1 port map (	I => conexion,
									S => S,
									X => X);
end estructura;