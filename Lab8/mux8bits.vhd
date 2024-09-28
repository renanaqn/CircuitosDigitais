library ieee;
use ieee.std_logic_1164.all;

entity mux8bits is
port(
    A,B,C,D : in std_logic_vector(7 downto 0);
    s          : in std_logic_vector(1 downto 0);
    O       : out std_logic_vector(7 downto 0));
end mux8bits;

architecture hardware of mux8bits is
begin
    process(s)
    begin
        case s is
            when "00" =>
                O <= A;
            when "01" =>
                O <= B;
            when "10" =>
                O <= C;
            when "11" =>
                O <= D;
        end case;
    end process;
end hardware;