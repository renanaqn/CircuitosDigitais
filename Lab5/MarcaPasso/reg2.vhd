library ieee;
use ieee.std_logic_1164.all;

entity reg2 is
		port(c, i1, i0 : in bit;
				q1, q0 : out bit);
end reg2;

architecture behav of reg2 is
begin
	process(c)
		begin
		if (c ' event AND c = '1') then
			q1 <= i1;
			q0 <= i0;
		end if;
	end process;
end architecture behav;