library ieee;
use ieee.std_logic_1164.all;
library work;
use work.Gates.all;

entity dec3_8 is
 port(A1,A2,A3,E:in std_logic;
      Y0,Y1,Y2,Y3,Y4,Y5,Y6,Y7 :out std_logic);
      end entity;
 
architecture struct of dec3_8 is
 signal sig1, sig2, sig3, sig4,sig5, sig6: std_logic;
 component decode is
 port(A1,A2,E:in std_logic;
      Y0,Y1,Y2,Y3 :out std_logic);
      end component;
begin
	inst1:INVERTER PORT map(A=>A3,Y=>sig1);
	
	inst2:AND_2  PORT map(A=>E,B=>A3, Y=>sig2);
	
	inst3:AND_2  PORT map(A=>E, B=>sig1,Y=> sig3);
	inst4:decode  PORT map(A1=>A1,A2=>A2,E=>sig2,Y0=>Y4,Y1=>Y5,Y2=>Y6,Y3=>Y7);
	
	inst5:decode  PORT map(A1=>A1, A2=>A2, E=>sig3,Y0=>Y0,Y1=>Y1,Y2=>Y2,Y3=>Y3);
	
end struct;