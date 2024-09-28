library ieee;
use ieee.std_logic_1164.all;

entity circ_comb is
port(s1, z1, c, current1, current0 : in bit;
			next1, next0, timer, contr : out bit);
end circ_comb;

architecture behav of circ_comb is
	begin
		contr <= current1 AND NOT(current0);
		timer <= NOT(current1) AND NOT(current0);
		
		next1 <= NOT(current1) AND current0 AND NOT(s1) AND z1;
		next0 <= (NOT(current1) AND NOT(current0)) OR (NOT(current1) AND current0 AND NOT(s1) AND NOT(z1));
end architecture behav;