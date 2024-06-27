library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;


entity SEQDET_2 is
	port( inp:in std_logic_vector(4 downto 0);
	reset,clock:in std_logic;
	outp: out std_logic);
end entity;


architecture bhv of SEQDET_2 is
	signal outp_1 : std_logic ;
	signal outp_2 : std_logic ;
	type state_1 is (rst_1,s1_1,s2_1,s3_1); 
	signal y_present_1,y_next_1: state_1;
	
	type state_2 is (rst_2,s1_2,s2_2,s3_2); 
	signal y_present_2,y_next_2: state_2;
	begin


	clock_proc:process(clock,reset)
	begin
		
	if(clock='1' and clock' event) then
		if(reset='1') then
			y_present_1<= rst_1;
			y_present_2<= rst_2;
		elsif(rising_edge(clock)) then
			y_present_1 <= y_next_1;
			y_present_2 <= y_next_2;
		end if;
	end if;
	end process;


	state_transition_proc:process(inp,y_present_1)

	begin


		case y_present_1 is
			when rst_1=>
				if(unsigned(inp)=2 ) then 
					y_next_1 <= s1_1;
					outp_1 <= '0';
				else
					y_next_1 <= rst_1;
					outp_1 <= '0';
				end if;
				
			when s1_1=>
				if(unsigned(inp) = 15) then
					y_next_1 <= s2_1;
					outp_1 <= '0';
				else
					y_next_1 <= s1_1;
					outp_1 <= '0';
				end if;

			when s2_1=>
				if(unsigned(inp) = 13) then
					y_next_1 <= s3_1;
					outp_1 <= '0';
					
				else
					y_next_1 <= s2_1;
					outp_1 <= '0';
				end if;

				
			when s3_1=>
				if(unsigned(inp) = 2) then
					y_next_1 <= s1_1;
					outp_1 <= '1';
				else
					y_next_1 <= s3_1;
					outp_1 <= '0';
				end if;
				
	
			when others => null;

		end case;
	end process;
	

state_transition_proc_2:process(inp,y_present_2)
	begin
		
		
		case y_present_2 is
			when rst_2=>
				if(unsigned(inp)=7) then 
					y_next_2 <= s1_2;
					outp_2 <= '0';
				else
					y_next_2 <= rst_2;
					outp_2 <= '0';
				end if;
				
			when s1_2=>
				if(unsigned(inp) = 21) then
					y_next_2 <= s2_2;
					outp_2 <= '0';
				else
					y_next_2 <= s1_2;
					outp_2 <= '0';
				end if;

			when s2_2=>
				if(unsigned(inp) = 14) then
					y_next_2 <= s3_2;
					outp_2 <= '1';
				else
					y_next_2 <= s2_2;
					outp_2 <= '0';
				end if;
				
			when s3_2=>
				if(unsigned(inp) = 7) then
					y_next_2 <= s1_2;
					outp_2 <= '0';
				else
					y_next_2 <= s3_2;
					outp_2 <= '0';
				end if;

				
			when others => null;

		end case;

		

end process;
	outp <= outp_1 or outp_2;





end bhv;






