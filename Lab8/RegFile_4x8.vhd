library ieee;
use ieee.std_logic_1164.all;

entity RegFile_4x8 is
    port(I : in std_logic_vector(7 downto 0);
                 CLK, LOAD : in bit;
                 Addr_R, Addr_W : in std_logic_vector(1 downto 0);
             O: out std_logic_vector(7 downto 0));
    end RegFile_4x8;

architecture main of RegFile_4x8 is
        signal r0_out, r1_out, r2_out, r3_out : std_logic_vector(7 downto 0);
        signal d_load : std_logic_vector(3 downto 0);

    component mux8bits is
        port(
            A,B,C,D : in std_logic_vector(7 downto 0);
            s          : in std_logic_vector(1 downto 0);
            O       : out std_logic_vector(7 downto 0));
    end component;

        component decod is
        port(
        I : in std_logic_vector(1 downto 0);
        E, CLK          : in bit;
        D       : out std_logic_vector(3 downto 0));
        end component;

        component Reg_FlipFlop_D is
        port(I : in std_logic_vector(7 downto 0);
         CLK: in bit;
			LOAD : std_logic_vector(3 downto 0);
         Q: out std_logic_vector(7 downto 0));
        end component;

begin
		  -- mapa das portas
        mux_out: mux8bits port map (A => r0_out, B => r1_out, C => r2_out, D => r3_out, s => Addr_R, O => O);
        dec: decod port map (I => Addr_W, CLK => CLK, E => LOAD, D => d_load);
        r0: Reg_FlipFlop_D port map (I => I, CLK => CLK, LOAD => d_load(0), Q => r0_out);
        r1: Reg_FlipFlop_D port map (I => I, CLK => CLK, LOAD => d_load(1), Q => r1_out);
        r2: Reg_FlipFlop_D port map (I => I, CLK => CLK, LOAD => d_load(2), Q => r2_out);
        r3: Reg_FlipFlop_D port map (I => I, CLK => CLK, LOAD => d_load(3), Q => r3_out);

end architecture main;