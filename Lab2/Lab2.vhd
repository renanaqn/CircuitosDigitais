library ieee;
use ieee.std_logic_1164.all;

entity Lab2 is
	port(A, B, C : in bit;
	S1, S2 : out bit);
	end Lab2;

architecture main of Lab2 is
	signal Si1: bit; -- Linha que recebe a saída da porta1 and do y
	signal Si2: bit; -- Linha que recebe a saída da porta2 and do y
	signal Si3: bit; -- Linha que recebe a saída da porta3 and do y
	signal Si4: bit; -- Linha que recebe a saída da porta1 and do z
	signal Si5: bit; -- Linha que recebe a saída da porta2 and do z
	signal Si6: bit; -- Linha que recebe a saída da porta3 and do z
	signal Si7: bit; -- Linha que recebe a saída da porta4 and do z
	
	component PortaAnd3Ent is
		port(en1, en2, en3 : in bit;
			saida_and : out bit);
	end component;
	
	component PortaAnd2Ent is
		port(en1, en2: in bit;
			saida_and : out bit);
	end component;
	
	component PortaOR4Ent is
		port(in1, in2, in3, in4: in bit;
			saida_or: out bit);
	end component;
	
	component PortaOR3Ent is
		port(in1, in2, in3: in bit;
			saida_or: out bit);
	end component;
	
begin
	-- mapa das portas do Y
	u1 : PortaAnd3Ent port map(en1 => not A, en2 => B, en3 => C, saida_and => Si1); 
	u2 : PortaAnd3Ent port map(en1 => A, en2 => not B, en3 => C, saida_and => Si2); 
	u3 : PortaAnd2Ent port map(en1 => A, en2 => B, saida_and => Si3); 
	-- mapa das portas do Z
	u4 : PortaAnd3Ent port map(en1 => not A, en2 => not B, en3 => C, saida_and => Si4); 
	u5 : PortaAnd3Ent port map(en1 => not A, en2 => B, en3 => not C, saida_and => Si5); 
	u6 : PortaAnd3Ent port map(en1 => A, en2 => not B, en3 => not C, saida_and => Si6); 
	u7 : PortaAnd3Ent port map(en1 => A, en2 => B, en3 => C, saida_and => Si7); 
	
	-- saída dos sinais
	u8 : PortaOr3Ent port map(in1 => Si1, in2 => Si2, in3 => Si3, saida_or => S1); 
	u9 : PortaOr4Ent port map(in1 => Si4, in2 => Si5, in3 => Si6, in4 => Si7, saida_or => S2); 
	
end architecture main;