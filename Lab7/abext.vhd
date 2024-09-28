library ieee ;
use ieee.std_logic_1164.all;

entity abext is
	port (
		a , b , x , y , z : in std_logic ;
		ia , ib : out std_logic
		);
	end abext;

architecture main of abext is
begin
	ia <= (( NOT x) AND a) OR
	(x AND ( NOT y ) AND b AND ( z XOR a)) OR
	(x AND ( NOT y ) AND z AND a ) OR
	(x AND y AND ( NOT z ) AND ( a XOR b)) OR
	(x AND y AND z AND ( NOT a) );
	
	ib <= (x NOR y) AND ( z XOR b );
end main;