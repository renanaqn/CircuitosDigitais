library ieee;
use ieee.std_logic_1164.all;

entity Reg_FlipFlop_D is
    port(I7,I6,I5,I4,I3,I2,I1,I0, CLK: in bit; 
	 LOAD : std_logic_vector(3 downto 0);
    Q7,Q6,Q5,Q4,Q3,Q2,Q1,Q0: out bit);
    end Reg_FlipFlop_D;

architecture main of Reg_FlipFlop_D is
    component flipflop_D is
        port(D, clk, EN : in bit;
            Q : out bit);
    end component;
begin
    -- mapa das portas 
    u0 : flipflop_D port map(D => I0, clk => CLK, Q => Q0, EN => LOAD); 
    u1 : flipflop_D port map(D => I1, clk => CLK, Q => Q1, EN => LOAD); 
    u2 : flipflop_D port map(D => I2, clk => CLK, Q => Q2, EN => LOAD); 
    u3 : flipflop_D port map(D => I3, clk => CLK, Q => Q3, EN => LOAD);
	 u4 : flipflop_D port map(D => I4, clk => CLK, Q => Q4, EN => LOAD); 
	 u5 : flipflop_D port map(D => I5, clk => CLK, Q => Q5, EN => LOAD); 
    u6 : flipflop_D port map(D => I6, clk => CLK, Q => Q6, EN => LOAD); 
	 u7 : flipflop_D port map(D => I7, clk => CLK, Q => Q7, EN => LOAD); 

end architecture main;