-- Biblioteca e pacotes
library ieee;
use ieee.std_logic_1164.all;

-- Entidade Portas
entity Lab1_Portas is
port(
	a, b, c, d: in bit;
	x, y, x1, x2, y1, y2: out bit
);
end Lab1_Portas;

-- Arquitetura
architecture main of Lab1_Portas is
begin 
x<= a and b; -- Porta AND
y<= a or b; -- Porta OR
x1 <= not(c and d); -- Lado esquerdo 1ª Lei de Morgan
x2 <= not(c) or not(d); -- Lado direito 1ª Lei de Morgan
y1 <= not (c or d); -- Lado esquerdo 2ª Lei de Morgan
y2 <= not(c) and not(d); --Lado esquerdo 2ª Lei de Morgan
end architecture main; 