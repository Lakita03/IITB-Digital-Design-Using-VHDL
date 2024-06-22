library ieee;
use ieee.std_logic_1164.all;
library work;
use work.Gates.all;

entity f_add is
 port(in1,in2,in3:in std_logic;
 out1,out2 :out std_logic
 );
 end entity;
 
architecture struct of f_add is
 signal sig1, sig2, sig3, sig4,sig5, sig6, sig7: std_logic;
begin
	inst1 : NAND_2 PORT map(A => in1, B => in2,Y => sig1); -- AB (bar)
	inst2 : NAND_2 PORT map(A => sig1, B=>in1,Y=> sig2);   -- (AB (bar)*A)bar
	inst3 : NAND_2 PORT map(A => sig1, B=>in2,Y=> sig3);   --(AB (bar)*B)bar
	inst4 : NAND_2 PORT map(A => sig2, B=>sig3,Y=> sig4); --half_addsum
	
	inst5 : NAND_2 PORT map(A => sig4, B=>in3,Y=> sig5); --
	inst6 : NAND_2 PORT map(A => sig4, B=>sig5,Y=> sig6);
	inst7 : NAND_2 PORT map(A => sig5, B=>in3,Y=> sig7);
	inst8 : NAND_2 PORT map(A => sig7, B=>sig6,Y=> out1);
	inst9 : NAND_2 PORT map(A => sig5, B=>sig1,Y=> out2);

end architecture;