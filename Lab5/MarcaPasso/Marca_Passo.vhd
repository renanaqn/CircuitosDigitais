library ieee;
use ieee.std_logic_1164.all;

entity Marca_Passo is
port(s, clk : in bit;
			contracao : out bit);
end Marca_Passo;

architecture behavior of Marca_Passo is
	signal n1, n0: bit; -- Proximo estado
	signal s1, s0: bit; -- Estado atual
	signal z, t: bit; -- comunicadores entre os circuitos
	
		component reg2 is
			port(c, i1, i0 : in bit;
						q1, q0 : out bit);
		end component;
		component circ_comb is
				port(s1, z1, c, current1, current0 : in bit;
							next1, next0, timer, contr : out bit);
		end component;
		component contador_decres is
			port(clk, rst : in bit;
						q : out bit);
		end component;
begin
		u1 : reg2 port map(c => clk, i1 => n1, i0 => n0, q1 => s1, q0 => s0);
		u2 : circ_comb port map(s1 => s, z1 => z, c => clk, current1 => s1, current0 => s0, next1 => n1, next0 => n0, timer => t, contr => contracao);
		u3 : contador_decres port map (clk=> clk, rst => t, q => z);
		
		
end architecture behavior;

-- deveria ter so s e p na entidade topo do MP
-- 