entity PortaOr4Ent is
port(in1, in2, in3, in4 : in bit;
	saida_or : out bit);
end PortaOr4Ent;

architecture behav of PortaOr4Ent is
begin
saida_or <= in1 or in2 or in3 or in4;
end architecture behav;