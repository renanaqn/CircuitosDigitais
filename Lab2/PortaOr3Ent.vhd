entity PortaOr3Ent is
port(in1, in2, in3: in bit;
	saida_or : out bit);
end PortaOr3Ent;

architecture behav of PortaOr3Ent is
begin
saida_or <= in1 or in2 or in3;
end architecture behav;