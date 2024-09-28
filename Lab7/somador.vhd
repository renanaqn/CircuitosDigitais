library ieee ;
use ieee.std_logic_1164.all;

entity somador is
	port (
		a , b , ci : in bit ;	
		c , co : out bit
		);
	end somador;

architecture main of somador is
	begin
		c <= a xor b xor ci ;
		co <= (b and ci ) or ( a and ( b or ci ));
	end main;