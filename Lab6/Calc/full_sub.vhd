library IEEE;
use IEEE.STD_LOGIC_1164.ALL;


entity full_sub is
   port(a,b,cin: in std_logic; 
		s, cout:out std_logic); 
end full_sub; 
 
architecture data of full_sub is
begin
   s<= (a xor b) xor cin;
	cout <= ((not a) and (b or cin)) or (b and cin);
end data;