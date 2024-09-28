-- codigo v2
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
 
-- ver se fazer variáveis para cada bit do resultado funciona
entity Calc is
Port ( A : in STD_LOGIC_VECTOR (5 downto 0); -- 6 bits
B : in STD_LOGIC_VECTOR (5 downto 0);
F : in bit;
Res: out STD_LOGIC_VECTOR (5 downto 0));
end Calc;
 
architecture Behavioral of Calc is
 
component full_adder
	Port ( A : in STD_LOGIC;
			B : in STD_LOGIC;
			Cin : in STD_LOGIC;
			S : out STD_LOGIC;
			Cout : out STD_LOGIC);
end component;
 
component full_sub
	Port ( a : in STD_LOGIC;
			b : in STD_LOGIC;
			cin : in STD_LOGIC;
			s : out STD_LOGIC;
			cout : out STD_LOGIC);
end component;
 
signal c1_soma, c2_soma, c3_soma, c4_soma, c5_soma, Cin_soma, Cout_soma: STD_LOGIC;
signal c1_sub, c2_sub, c3_sub, c4_sub, c5_sub, Cin_sub, Cout_sub: STD_LOGIC;
signal Res_Soma, Res_Sub : STD_LOGIC_VECTOR (5 downto 0);
 
begin
 
-- Port Mapping dos Full Adder e Full Sub
FA1: full_adder port map( A(0), B(0), Cin_soma, Res_Soma(0), c1_soma);
FA2: full_adder port map( A(1), B(1), c1_soma, Res_Soma(1), c2_soma);
FA3: full_adder port map( A(2), B(2), c2_soma, Res_Soma(2), c3_soma);
FA4: full_adder port map( A(3), B(3), c3_soma, Res_Soma(3), c4_soma);
FA5: full_adder port map( A(4), B(4), c4_soma, Res_Soma(4), c5_soma);
FA6: full_adder port map( A(5), B(5), c5_soma, Res_Soma(5), Cout_soma);

FS1: full_sub port map( a(0), b(0), Cin_sub, Res_Sub(0), c1_sub);
FS2: full_sub port map( a(1), b(1), c1_sub, Res_Sub(1), c2_sub);
FS3: full_sub port map( a(2), b(2), c2_sub, Res_Sub(2), c3_sub);
FS4: full_sub port map( a(3), b(3), c3_sub, Res_Sub(3), c4_sub);
FS5: full_sub port map( a(4), b(4), c4_sub, Res_Sub(4), c5_sub);
FS6: full_sub port map( a(5), b(5), c5_sub, Res_Sub(5), Cout_sub);

    process (F)
    begin
        case F is
            when '1' =>
                Res <= Res_Soma;
            when '0' =>
                Res <= Res_Sub;
		  end case;
    end process;
 
end Behavioral;