Library ieee;
use ieee.std_logic_1164.all;

entity motor is
	port(	clk : in std_logic;
			speed_left : in integer;
			speed_right : in integer;
			motor_left : out std_logic;
			motor_right : out std_logic;
			run : in std_logic
	);
end motor;

architecture design of motor is
signal carry_cnt : integer range 0 to 50000 := 0;
begin

	process(clk)
	begin
		if(clk'event and clk ='1' and run = '1') then
			carry_cnt <= carry_cnt + 1;
			if(carry_cnt >= 49998) then
				carry_cnt <= 0;
			end if;
		end if;
	end process;
	
	process(carry_cnt)
	begin
		if(run = '1') then
			if(carry_cnt >= speed_left) then
				motor_left <= '0';
			elsif(carry_cnt < speed_left) then
				motor_left <= '1';
			end if;
			
			if(carry_cnt >= speed_right) then
				motor_right <= '0';
			elsif(carry_cnt < speed_right) then
				motor_right <= '1';
			end if;
		else
			motor_left <= '0';
			motor_right <= '0';
		end if;
	end process;
end design;
