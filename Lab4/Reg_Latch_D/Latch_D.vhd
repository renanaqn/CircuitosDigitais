-- Latch D em forma de componente
entity Latch_D is
	port(D, C: in bit;
	Q : out bit);
end Latch_D;

ARCHITECTURE behav OF latch_D IS
BEGIN
PROCESS (D, C)
BEGIN
	IF (c = '1' AND D = '1') THEN
		Q<='1';
	ELSIF (c = '1' AND D = '0') THEN
		Q<='0';
	END IF;
END PROCESS ;
END;