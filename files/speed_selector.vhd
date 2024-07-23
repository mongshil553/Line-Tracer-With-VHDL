library ieee;
use ieee.std_logic_1164.all;

entity speed_selector is
	port(	phase : integer;
			
			speed_left : out integer;
			speed_right : out integer;
			
			line_status: in std_logic_vector(2 downto 0);
			rush : in boolean;
			clk : in std_logic;
			info : in integer;
			flash: out std_logic;
			force_move: boolean
	);
end speed_selector;

architecture design of speed_selector is
signal cur_status : std_logic_vector(2 downto 0);
signal timer_on : std_logic := '0';
signal sec : integer range 0 to 500000 := 0;
signal flag : std_logic := '0';
signal passed : boolean := false;
component counter
	port( using : in std_logic;
			flag : out std_logic;
			threshold : in integer;
			clk : in bit
	);
end component;
signal valid : boolean := true;
signal valid_counter : integer range 0 to 500000100:= 0;
signal threshold : integer := 0;
signal boost_speed : integer := 20000;
begin

	process(valid_counter)
	begin
		if valid_counter >= threshold - 2 then
			valid <= true;
		else
			valid <= false;
		end if;
	end process;

	--process(phase, line_status, rush)
	process(clk)
	
	begin
	
		if force_move then
			speed_left <= 13500; speed_right <= 12000;
		else
			case phase is
			when 0 =>
				speed_left <= 0; speed_right <= 0;
			when 1 => --loop
				boost_speed <= 20000;
				
				if line_status = "100" then
					speed_left <= 10000; speed_right <= 20000;
				elsif line_status = "001" then
					speed_left <= 20000; speed_right <= 10000;
				elsif line_status = "110" then
					speed_left <= 0; speed_right <= 30000;
				elsif line_status = "011" then
					speed_left <= 30000; speed_right <= 0;
				elsif line_status = "010" then
					speed_left <= 25000; speed_right <= 25000;
				else
					null;
				end if;
			when 2 => --stop and go
				if line_status = "111" then
					speed_left <= 0; speed_right <= 0;
				elsif line_status = "100" then
					speed_left <= 0; speed_right <= 15000;
				elsif line_status = "001" then
					speed_left <= 15000; speed_right <= 0;
				elsif line_status = "110" then
					speed_left <= 0; speed_right <= 15000;
				elsif line_status = "011" then
					speed_left <= 15000; speed_right <= 0;
				elsif line_status = "010" then
					speed_left <= 15000; speed_right <= 15000;
				else
					null;
				end if;
				
			when 3 => --twist
				boost_speed <= 20000;
				if line_status = "100" then --soft left
					speed_left <= 0; speed_right <= 13000;
				elsif line_status = "110" then --strong left
					speed_left <= 0; speed_right <= 13000;
				elsif line_status = "001" then --soft right
					speed_left <= 25000; speed_right <= 0;
				elsif line_status = "011" then --strong right
					speed_left <= 35000; speed_right <= 0;
				elsif line_status = "010" then --middle
					if rush then
						speed_left <= 20000; speed_right <= 20000;
					else
						speed_left <= 13000; speed_right <= 13000;
					end if;
				else
					speed_left <= 13000; speed_right <= 13000;
					--speed_left <= 5000; speed_right <= 5000;
					--null;
				end if;
			
			when 4 => --full throttle
				if line_status = "111" then
					boost_speed <= 35000;
				elsif line_status = "100" then --soft left
					speed_left <= 10000; speed_right <= boost_speed;
				elsif line_status = "110" then --strong left
					speed_left <= 0; speed_right <= boost_speed;
				elsif line_status = "001" then --soft right
					speed_left <= boost_speed ; speed_right <= 10000;
				elsif line_status = "011" then --strong right
					speed_left <= boost_speed; speed_right <= 0;
				elsif line_status = "010" then --middle
					speed_left <= boost_speed; speed_right <= boost_speed;
				else
					null;
				end if;
				
			when 5 => --finish
				speed_left <= 0; speed_right <= 0;
				flash <= '1';
			
			when 9 => --debugging
				if line_status = "111" then --stop
					speed_left <= 0; speed_right <= 0;
				elsif line_status = "100" then --soft left
					if rush then
						speed_left <= 10000; speed_right <= 30000;
					else
						speed_left <= 0; speed_right <= 20000;
					end if;
				elsif line_status = "110" then --strong left
					speed_left <= 0; speed_right <= 30000;
				elsif line_status = "001" then --soft right
					if rush then
						speed_left <= 30000; speed_right <= 10000;
					else
						speed_left <= 20000; speed_right <= 0;
					end if;
				elsif line_status = "011" then --strong right
					speed_left <= 30000; speed_right <= 0;
				elsif line_status = "010" then --middle
					if rush then
						speed_left <= 40000; speed_right <= 40000;
					else
						speed_left <= 20000; speed_right <= 20000;
					end if;
				else
					speed_left <= 0; speed_right <= 0;
				end if;
			when others =>
				null;	
		end case;
		end if;
		
	end process;

end design;