library ieee;
use ieee.std_logic_1164.all;
library work;
use work.gates.all;
entity bcdadd is
port (a0,a1,a2,a3,b0,b1,b2,b3: in std_logic;
 y0,y1,y2,y3,y4 :out std_logic);
end entity;

architecture struct of bcdadd is
signal s0,s1,s2,s3, sig1,sig2,sig3,sig4, out1,out2,out3, sig5,sig6,sig7,sig8,sig9:std_logic;
component addfulltask is
 port(in1,in2,in3:in std_logic;
 sum, carry :out std_logic);
 end component;
component add_half is
port(in1, in2:in std_logic;
sum, carry:out std_logic);
end component;
begin

inst1 : add_half port map(in1 => a0, in2 => b0, sum => s0,carry => sig1);
inst2 : addfulltask port map(in1 => a1, in2 => b1, in3 => sig1, sum => s1,carry => sig2);
inst3 : addfulltask port map(in1 => a2, in2 => b2, in3 => sig2, sum => s2,carry => sig3);
inst4 : addfulltask port map(in1 => a3, in2 => b3, in3 => sig3, sum => s3,carry => sig4);

inst5 : add_half port map(in1 => s0, in2 => '0', sum => y0,carry =>sig5 );
inst6 : addfulltask port map(in1 => s1, in2 => sig8, in3 => sig5, sum => y1,carry => sig6 );
inst7 : addfulltask port map(in1 => s2, in2 => sig8, in3 => sig6, sum => y2,carry => sig7 );
inst8 : addfulltask port map(in1 => s3, in2 => '0', in3 => sig7, sum=> y3,carry => sig9);

inst9 : AND_2 port map(A => s3, B => s2, Y => out1);
inst10 : AND_2 port map(A => s3, B => s1, Y => out2);

inst11 : OR_2 port map(A => out1, B => out2, Y => out3);
inst12 : OR_2 port map(A => sig4, B => out3, Y => sig8);

inst13 : OR_2 port map(A => sig8, B => '0', Y => y4);

end architecture;