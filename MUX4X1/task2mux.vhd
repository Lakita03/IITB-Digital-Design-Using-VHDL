library ieee;
use ieee.std_logic_1164.all;
library work;
use work.Gates.all;

entity task2mux is
port(A,B,C,D,s0,s1: in std_logic;
      out2 :out std_logic);
end entity;

architecture struct of task2mux is
	component muxtask is 
		port(in1,in2,s : in std_logic ;
        out1 : out std_logic);
	end component;
signal sig1,sig2:std_logic;
begin 
    inst0: muxtask port map (in1=>A,in2=>B,s=>s1,out1=>sig1); 
	 inst1: muxtask port map (in1=>C,in2=>D,s=>s1,out1=>sig2);
	 inst2: muxtask port map (in1=>sig1,in2=>sig2,s=>s0,out1=>out2);
end struct;