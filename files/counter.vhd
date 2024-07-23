library ieee;
use ieee.std_logic_1164.all;

entity counter is
	port( using : in std_logic;
			flag : out std_logic;
			threshold : in integer;
			clk : in std_logic
	);
end counter;

architecture design of counter is

signal run_state0 : boolean := false;
signal run_state1 : boolean := false;
begin
	
	process(using)
	begin
		if using = '1' then
			run_state1 <= true;
		else
			run_state1 <= false;
		end if;
	end process;
	
	process(clk)
	variable cnt : integer range 0 to 500000000 := 0; --max 10sec

	begin
		if rising_edge(clk) then
			if cnt <= threshold then
				cnt := cnt + 1;
			end if;
		end if;
		
		if not (run_state0 = run_state1) then
			cnt := 0;
			run_state0 <= run_state1;
			flag <= '0';
		end if;
		
		if run_state0 then
			if(cnt >= threshold - 10) then
				flag <= '1';
			else
				flag <= '0';
			end if;
		else
			flag <= '0';
		end if;
	end process;
	
end design;