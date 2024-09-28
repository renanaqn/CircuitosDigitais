library ieee ;
use ieee.std_logic_1164.all;

entity Calc_ALU is
	port (
		x ,y ,z , e , clk : in std_logic;
		A , B : in std_logic_vector (5 DOWNTO 0);
		S : out std_logic_vector (5 DOWNTO 0)
		);
end Calc_ALU;

architecture main of Calc_ALU is
	component ALU is
		port (
			A , B : in std_logic_vector (5 DOWNTO 0);
			x , y , z : in std_logic;
			S : out std_logic_vector (5 DOWNTO 0)
			);
	end component;

	signal Sreg : std_logic_vector (5 DOWNTO 0) ;

	begin
		ula : ALU port map (A => A , B => B , x => x , y => y , z => z , S => Sreg);
		process ( clk )
		begin
			if (clk ' event AND clk = '1' AND e = '1') then 
				S <= Sreg;
			end if;
		end process;
end main;