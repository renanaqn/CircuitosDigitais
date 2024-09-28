-- contador decrescente de 4 bits
ENTITY contador_decres IS
PORT(
clk: IN BIT; --entrada de clock
rst: IN BIT;
q: OUT BIT;
q2 : out integer range 5 downto 0);
END contador_decres;

ARCHITECTURE comportamento OF contador_decres IS
	BEGIN PROCESS(clk)
		VARIABLE qv: INTEGER RANGE 5 DOWNTO 0; --variável para a saida
		VARIABLE tc: INTEGER RANGE 5 DOWNTO 0; --variável para a saida
		BEGIN
			IF (rst = '1') THEN
				tc:=0;
			ELSIF(tc <= 1) THEN
				qv := 5;
				tc := 5;
			ELSIF(clk ' event and clk = '1') THEN
				IF(qv <= 0) THEN
					tc:= 0;
					q <= '1';
				ELSE
					q <= '0';	
					qv := qv - 1;
				END IF;
			END IF;
			q2 <= qv;
--			IF (tc <= 1) THEN
	--		q <= '1';
		--	END IF;
	END PROCESS;
END;