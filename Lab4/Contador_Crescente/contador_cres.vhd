ENTITY contador_cres IS
PORT(
clk: IN BIT; --entrada de clock
cnt: IN BIT; --incrementa o valor
q: OUT INTEGER RANGE 0 TO 15); --saída de dados que do qual delimita o tamanho do registrador
END contador_cres;

ARCHITECTURE comportamento OF contador_cres IS
	BEGIN PROCESS(clk)
		VARIABLE qv: INTEGER RANGE 0 TO 15; --variável para a saida
		VARIABLE tc: INTEGER RANGE 0 TO 15; --variável para a saida
		BEGIN
			IF(tc >= 1) THEN
				qv := 0;
				tc := 0;
			ELSIF(clk ' event and clk = '1') THEN
				IF(qv >= 15) THEN
					tc:= 1;
				ELSE
					IF(cnt >= '1') THEN
						qv := qv + 1;
					END IF;
				END IF;
			END IF;
			q <= qv;
	END PROCESS;
END;