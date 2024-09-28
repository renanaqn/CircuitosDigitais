-- Registradores B)
-- flip-flop D

LIBRARY ieee;
USE ieee.std_logic_1164.all;
ENTITY flipflop_D IS
PORT(D, clk : IN BIT;
				Q : OUT BIT);
END;
ARCHITECTURE behav OF flipflop_D IS
BEGIN
PROCESS (D, clk)
BEGIN
	IF (clk ' EVENT AND clk = '1' AND D = '1') THEN
		Q<='1';
	ELSIF (clk ' EVENT AND clk = '1' AND D = '0') THEN
		Q<='0';
	END IF;
END PROCESS ;
END;