library ieee;
use ieee.std_logic_1164.all;

entity Reg_8bit is
    port (
        clock   : in  std_logic;
        reset   : in  std_logic;
        enable  : in  std_logic;
        data_in : in  std_logic_vector(7 downto 0);
        ler    : in  std_logic;
        data_out: out std_logic_vector(7 downto 0)
    );
end Reg_8bit;

architecture Behavioral of Reg_8bit is
    signal reg : std_logic_vector(7 downto 0);
begin
    process (clock, reset)
    begin
        if reset = '1' then
            reg <= (others => '0');
        elsif rising_edge(clock) then
            if enable = '1' then
                reg <= data_in;
            end if;
        end if;
    end process;

    process (ler)
    begin
        if ler = '1' then
            data_out <= reg;
        end if;
    end process;
end Behavioral;
