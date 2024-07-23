Library ieee;
use ieee.std_logic_1164.all;

entity Turn is
	port( clk: in bit;
			line_sensor : in std_logic_vector(7 downto 0);
			motor_left : out std_logic;
			motor_right : out std_logic
	);
	
end Turn;

architecture design of Turn is
	signal carry_cnt : integer range 0 to 50000 :=0;
	signal speed_left : integer range 0 to 50000 := 15000;
	signal speed_right : integer range 0 to 50000 := 15000;
begin
	process(clk)
	begin
		if (clk'event and clk='1') then
			carry_cnt <= carry_cnt + 1;
			if (carry_cnt >= 49998) then
				carry_cnt <= 0;
			end if;
		end if;
	end process;
	
	process(line_sensor)
	begin
		case 0 is
			when 0 =>
				speed_left <= 0;
				speed_right <= 0;
			when 1 =>
				if (line_sensor(1) ='0' and line_sensor(6) ='0') then
					speed_left <= 15000;
					speed_right <= 15000;
				elsif (line_sensor(2) = '0') then -- left bias
					if (line_sensor(1) = '0') then --strong bias
						speed_left <= 35000;
						speed_right <= 0;
					else
						speed_left <= 20000;
						speed_right <= 0;
					end if;
				elsif(line_sensor(5) = '0') then --right bias
					if(line_sensor(6) = '0') then --strong bias
						speed_left <= 0;
						speed_right <= 35000;
					else
						speed_left <= 0;
						speed_right <= 20000;
					end if;
				else
					speed_left <= 15000;
					speed_right <= 15000;
				end if;
			when others =>
				null;
		end case;
	end process;
	
	process(carry_cnt)
	begin
		if (carry_cnt >= speed_left) then
			motor_left <= '0';
		elsif (carry_cnt < speed_left) then
			motor_left <= '1';
		end if;
		
		if (carry_cnt >= speed_right) then
			motor_right <= '0';
		elsif (carry_cnt < speed_right) then
			motor_right <= '1';
		end if;
	end process;
end design;