library ieee;
use ieee.std_logic_1164.all;

entity display_7seg is
    port (
        input : in std_logic_vector(3 downto 0);
        seg_out : out std_logic_vector(6 downto 0)
    );
end entity display_7seg;

architecture behavior of display_7seg is
begin
    process (input)
    begin
        case input is
            when "0000" =>
                seg_out <= "1000000"; -- Display 0
            when "0001" =>
                seg_out <= "1111001"; -- Display 1
            when "0010" =>
                seg_out <= "0100100"; -- Display 2
            when "0011" =>
                seg_out <= "0110000"; -- Display 3
            when "0100" =>
                seg_out <= "0011001"; -- Display 4
            when "0101" =>
                seg_out <= "0010010"; -- Display 5
            when "0110" =>
                seg_out <= "0000010"; -- Display 6
            when "0111" =>
                seg_out <= "1111000"; -- Display 7
            when "1000" =>
                seg_out <= "0000000"; -- Display 8
            when "1001" =>
                seg_out <= "0010000"; -- Display 9
            when others =>
                seg_out <= "1111111"; -- Display off
        end case;
    end process;

end architecture behavior;