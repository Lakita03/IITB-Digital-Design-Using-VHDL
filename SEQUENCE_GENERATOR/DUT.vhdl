

library ieee;
use ieee.std_logic_1164.all;

entity DUT is
   port(input_vector: in std_logic_vector(1 downto 0);
       	output_vector: out std_logic_vector(0 downto 0));
end entity;


architecture DutWrap of DUT is
	-- Instantiate your own top Module component in place of ALU_1
	component seq_generate is
port (reset,clock: in std_logic;
y:out std_logic);
end component ;

begin

   -- input/output vector element ordering is critical,
   -- and must match the ordering in the trace file!
   add_instance: seq_generate port map (reset => input_vector(1), clock => input_vector(0),
											y => output_vector(0));

end DutWrap;