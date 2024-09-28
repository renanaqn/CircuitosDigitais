-- Biblioteca e pacotes
library ieee;
use ieee.std_logic_1164.all;

-- Entidade 
entity Vhdl1 is
port(
	a, b, c, d: in bit;
	x1, x2, y1, y2: out bit
);
end Vhdl1;

-- Arquitetura 
architecture main of Vhdl1 is
begin 
x1 <= not(a and b); -- Lado esquerdo 1ª Lei de Morgan
x2 <= not(a) or not(b); -- Lado direito 1ª Lei de Morgan
y1 <= not (a or b); -- Lado esquerdo 2ª Lei de Morgan
y2 <= not(a) and not(b); --Lado esquerdo 2ª Lei de Morgan
end architecture main; 