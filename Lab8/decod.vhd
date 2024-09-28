library ieee;
use ieee.std_logic_1164.all;

entity decod is
port(
    I : in std_logic_vector(1 downto 0);
    E, CLK          : in bit;
    D       : out std_logic_vector(3 downto 0));
end decod;

architecture hardware of decod is
begin
    process(s)
    begin
        IF (E = '1') THEN
            case I is
                when "00" =>
                    D <= "0001";
                when "01" =>
                    D <= "0010";
                when "10" =>
                    D <= "0100";
                when "11" =>
                    D <= "1000";
            end case;
        ELSE
            D <= "0000";
        END IF;
    end process;
end hardware;