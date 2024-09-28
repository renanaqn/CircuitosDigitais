library ieee ;
use ieee.std_logic_1164.all;

entity ALU is
	port (
		A , B : in std_logic_vector (5 DOWNTO 0) ;
		x , y , z : in std_logic ;
		S : out std_logic_vector (5 DOWNTO 0)
		);
	end;

architecture main OF ALU is
	component somador is
	port (
		a , b, ci : in std_logic;
		c, co : out std_logic
		);
	end component;

	component abext IS
	port (
		a , b , x , y , z : in std_logic;
		ia , ib : out std_logic
		);
	end component;

	component cinext is
	port (
		x , y , z : in std_logic;
		cin : out std_logic
		);
	end component;

signal Aaux , Baux, coaux : std_logic_vector (5 DOWNTO 0) ;
signal cinaux : std_logic;

begin
	extAB1 : abext port map (a => A(0) , b => B(0) , x => x , y => y , z => z , ia => Aaux (0) , ib => Baux (0));
	extAB2 : abext port map (a => A(1) , b => B(1) , x => x , y => y , z => z , ia => Aaux (1) , ib => Baux (1));
	extAB3 : abext port map (a => A(2) , b => B(2) , x => x , y => y , z => z , ia => Aaux (2) , ib => Baux (2));
	extAB4 : abext port map (a => A(3) , b => B(3) , x => x , y => y , z => z , ia => Aaux (3) , ib => Baux (3));
	extAB5 : abext port map (a => A(4) , b => B(4) , x => x , y => y , z => z , ia => Aaux (4) , ib => Baux (4));
	extAB6 : abext port map (a => A(5) , b => B(5) , x => x , y => y , z => z , ia => Aaux (5) , ib => Baux (5));

	extCin : cinext port map (x => x , y => y , z => z , cin => cinaux );

	soma1 : somador port map (a => Aaux(0) , b => Baux(0) , ci => cinaux, c => S(0), co => coaux(0));
	soma2 : somador port map (a => Aaux(1) , b => Baux(1) , ci => coaux(0) , c => S(1), co => coaux(1));
	soma3 : somador port map (a => Aaux(2) , b => Baux(2) , ci => coaux(1) , c => S(2), co => coaux(2));
	soma4 : somador port map (a => Aaux(3) , b => Baux(3) , ci => coaux(2) , c => S(3), co => coaux(3));
	soma5 : somador port map (a => Aaux(4) , b => Baux(4) , ci => coaux(3) , c => S(4), co => coaux(4));
	soma6 : somador port map (a => Aaux(5) , b => Baux(5) , ci => coaux(4) , c => S(5));


end;