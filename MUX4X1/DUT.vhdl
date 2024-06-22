-- A DUT entity is used to wrap your design.
--  This example shows how you can do this for the
--  Full-adder.

library ieee;
use ieee.std_logic_1164.all;

entity DUT is
   port(input_vector: in std_logic_vector(5 downto 0);
       	output_vector: out std_logic_vector(0 downto 0));
end entity;

architecture DutWrap of DUT is
	-- Instantiate your own top Module component in place of ALU_1
	
component task2mux is
port(A,B,C,D,s0,s1 : in std_logic; out2 : out std_logic);
end component;

begin

   -- input/output vector element ordering is critical,
   -- and must match the ordering in the trace file!
   add_instance: task2mux port map (D => input_vector(5), C=> input_vector(4),B=> input_vector(3),A=> input_vector(2),s0=> input_vector(1),s1=> input_vector(0),
											out2=> output_vector(0));

end DutWrap;

