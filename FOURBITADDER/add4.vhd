library ieee;
use ieee.std_logic_1164.all;
library work;
use work.Gates.all;

entity add4 is
 port(a3,a2,a1,a0,b3,b2,b1,b0,M:in std_logic;
		C, s3,s2,s1,s0:out std_logic);
 end entity;
 
architecture struct of add4 is
 
 component f_add is
 port(in1,in2,in3:in std_logic;
 out1,out2 :out std_logic);
 end component;
 signal sig7,sig6,sig5,sig4,sig3, sig2, sig1: std_logic;

begin
	inst7:XOR_2 port map(A=>b3, B=>M, Y=>sig7);
	inst5:XOR_2 port map(A=>b2, B=>M, Y=>sig5);
	inst3:XOR_2 port map(A=>b1, B=>M, Y=>sig3);
	inst1:XOR_2 port map(A=>b0, B=>M, Y=>sig1);
	
	inst2 : f_add port map(in1=>sig1, in2=>a0, in3=>M,   out1=>S0, out2=>sig2);
	inst4 : f_add port map(in1=>sig3, in2=>a1, in3=>sig2, out1=>S1, out2=>sig4);
	inst6 : f_add port map(in1=>sig5, in2=>a2, in3=>sig4, out1=>S2, out2=>sig6);
	inst8 : f_add port map(in1=>sig7, in2=>a3, in3=>sig6, out1=>S3, out2=> C);


end architecture;