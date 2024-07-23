library ieee;
use ieee.std_logic_1164.all;

entity laptime is
	port(clk : in std_logic;
		  t0 : out integer;
		  t1 : out integer;
		  t2 : out integer;
		  t3 : out integer;
		  run : in std_logic;
		  done_flag : boolean
	);
		
end laptime;

architecture design of laptime is
signal current_second : integer range 0 to 500;
begin

	process(clk)
	variable count : integer range 0 to 50000000 := 0;
	begin

		if rising_edge(clk) then
			if (run = '0') or done_flag then
				count := 0;
				--t0 <= 0; t1 <= 0; t2 <= 0; t3 <= 0;
				current_second <= 0;
			else
				t0 <= current_second mod 10;
				t1 <= (current_second mod 60) / 10;
				t2 <= 0;
				t3 <= 0;
				count := count + 1;
				if count = 49999999 then
					count := 0;
					current_second <= current_second + 1;
				end if;
			end if;
		end if;
	end process;
end design;