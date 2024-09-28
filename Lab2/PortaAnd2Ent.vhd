entity PortaAnd2Ent is
	port(en1,en2: in bit;
	saida_and : out bit);
end PortaAnd2Ent;

architecture behav of PortaAnd2Ent is
begin
	saida_and <= en1 and en2;
end architecture behav;