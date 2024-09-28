library ieee;
use ieee.std_logic_1164.all;
-- Flipflop D em forma de componente
ENTITY flipflop_D IS
PORT(D, clk, EN : IN BIT;
                Q : OUT BIT);
END;
ARCHITECTURE behav OF flipflop_D IS
BEGIN
PROCESS (clk)
BEGIN
    IF (rising_edge(clk)) THEN
            IF (EN = '1') THEN
                Q <= D;
            END IF;
        END IF;
END PROCESS ;
END;