
-- é possível utilizar componentes e o portmap para associar com cada caso
-- essa ideia funciona para o de flip-flop D tbm
library ieee;
use ieee.std_logic_1164.all;

entity Reg_Latch_D is
	port(I3,I2,I1,I0, CLK : in bit; -- melhor mudar o nome da entrada C para CLK
	Q3,Q2,Q1,Q0: out bit);
	end Reg_Latch_D;

architecture main of Reg_Latch_D is	
	component latch_D is
		port(D, C: in bit;
			Q : out bit);
	end component;
begin
	-- mapa das portas 
	u1 : latch_D port map(D => I3, C => CLK, Q => Q3); 
	u2 : latch_D port map(D => I2, C => CLK, Q => Q2); 
	u3 : latch_D port map(D => I1, C => CLK, Q => Q1); 
	u4 : latch_D port map(D => I0, C => CLK, Q => Q0); 

end architecture main;