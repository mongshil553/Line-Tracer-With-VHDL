library ieee;
use ieee.std_logic_1164.all;

entity sensor_counter is
	port(	line_sensor : in std_logic_vector(7 downto 0);
			ridx : in integer;
			lidx : in integer;
			cnt : out integer;
			clk : in std_logic
	);
end sensor_counter;

architecture design of sensor_counter is

component counter
	port( using : in std_logic;
			flag : out std_logic;
			threshold : in integer
	);
end component;

begin

	--Async:process(line_sensor(ridx downto lidx))
	process(line_sensor(ridx downto lidx))
		variable count : integer range 0 to 10 := 0;
		begin

			count:=0;
			for i in 0 to 7 loop
				if (i >= lidx) and (i <= ridx) then
					if(line_sensor(i) = '0') then
						count := count + 1;
					end if;
				end if;
			end loop;
			
			cnt <= count;
			
	end process;

end design;

--library ieee;
--use ieee.std_logic_1164.all;
--
--entity sensor_counter is
--	port(	line_sensor : in std_logic_vector(7 downto 0);
--			ridx : in integer;
--			lidx : in integer;
--			cnt : out integer;
--			clk : in std_logic
--	);
--end sensor_counter;
--
--architecture design of sensor_counter is
--
--component counter
--	port( using : in std_logic;
--			flag : out std_logic;
--			threshold : in integer
--	);
--end component;
--
--begin
--
--	--Async:process(line_sensor(ridx downto lidx))
--	--process(line_sensor(ridx downto lidx))
--	process(clk)
--		variable count : integer range 0 to 10 := 0;
--		variable count_before : integer range 0 to 10 := 1;
--		variable it : integer range 0 to 50000000 := 0;
--		variable it_threshold : integer range 0 to 50000000 := 50000000 * 1; --1sec reject
--		begin
--
--			count:=0;
--			for i in 0 to 7 loop
--				if (i >= lidx) and (i <= ridx) then
--					if(line_sensor(i) = '0') then
--						count := count + 1;
--					end if;
--				end if;
--			end loop;
--			
--			it := it + 1;
--			if it >= it_threshold then
--			
--			elsif not(count_before = count) then
--				
--			end if;
--			
--			if not (count_before = count) then
--				it := 0;
--				count_before := count;
--			elsif it >= it_threshold then
--				cnt <= count_before;
--			end if;
--			
--	end process;
--
--end design;