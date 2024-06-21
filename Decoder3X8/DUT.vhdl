library ieee;
use ieee.std_logic_1164.all;

entity DUT is
   port(input_vector: in std_logic_vector(3 downto 0);
       	output_vector: out std_logic_vector(7 downto 0));
end entity;

architecture Dutwrap of DUT is
	-- Instantiate your own top Module component in place of ALU_1
	
component dec3_8 is
port(A1,A2,A3,E: in std_logic;
     Y0,Y1,Y2,Y3,Y4,Y5,Y6,Y7: out std_logic);
end component;

begin

   -- input/output vector element ordering is critical,
   -- and must match the ordering in the trace file!
   add_instance:dec3_8 PORT map (A1 => input_vector(1), A2 => input_vector(2),
	                              A3=> input_vector(3), E=> input_vector(0),
											Y0 => output_vector(0),Y1 => output_vector(1),
											Y2 => output_vector(2),Y3 => output_vector(3),
	                              Y4 => output_vector(4),Y5 => output_vector(5),
                                 Y6 => output_vector(6),Y7 => output_vector(7));

end Dutwrap;