ENTITY contador_decres IS
PORT(
clk: IN BIT; --entrada de clock
cnt: IN BIT; --incrementa o valor
q: OUT INTEGER RANGE 7 DOWNTO 0); --saída de dados
END contador_decres;

ARCHITECTURE comportamento OF contador_decres IS
	BEGIN PROCESS(clk)
		VARIABLE qv: INTEGER RANGE 7 DOWNTO 0; --variável para a saida
		VARIABLE tc: INTEGER RANGE 7 DOWNTO 0; --variável para a saida
		BEGIN
			IF(tc <= 1) THEN
				qv := 7;
				tc := 7;
			ELSIF(clk ' event and clk = '1') THEN
				IF(qv <= 0) THEN
					tc:= 0;
				ELSE
					IF(cnt >= '1') THEN
						qv := qv - 1;
					END IF;
				END IF;
			END IF;
			q <= qv;
	END PROCESS;
END;