Library ieee;
use ieee.std_logic_1164.all;

entity main is
	port(	clk : in std_logic;
			line_sensor : in std_logic_vector(7 downto 0);
			motor_left : out std_logic;
			motor_right : out std_logic;
			led : out std_logic_vector(9 downto 0);
			sw : in std_logic_vector(9 downto 0);
			seg0 : out std_logic_vector(6 downto 0);
			seg1 : out std_logic_vector(6 downto 0);
			seg2 : out std_logic_vector(6 downto 0);
			seg3 : out std_logic_vector(6 downto 0)
	);
end main;

architecture design of main is

signal debug : boolean := false;
signal led_type : integer range 0 to 20 := 0;
signal run : std_logic := '0';

signal Phase : integer range 0 to 10 := 0; --Phase
signal Phase_new : integer range 0 to 10 := 0;

--signal light_type : integer range 0 to 1 := 0; -- 0: sensor, 1: phase

signal full_line : integer range 0 to 8 := 0;
signal soft_left : integer range 0 to 3 := 0;
signal soft_right : integer range 0 to 3 := 0;
signal strong_left : integer range 0 to 4 := 0;
signal strong_right : integer range 0 to 4 := 0;
signal middle : integer range 0 to 2 := 0;

signal line_status : std_logic_vector(2 downto 0) := "000";

signal flash : std_logic := '0';
signal flash_debug : std_logic := '0';
signal flash_from_speed_selector : std_logic := '0';

signal use_rush : boolean := false;
signal rush : boolean := false;

signal speed_left : integer range 0 to 50000 := 0;
signal speed_right : integer range 0 to 50000 := 0;

signal faster : boolean := false;

signal info : integer := 0;

signal rush_threshold : integer range 0 to 50000 := 50000;

signal use_motor: std_logic := '0';

component light
	port( clk : in std_logic;
			line_sensor : in std_logic_vector(7 downto 0);
			led : out std_logic_vector(9 downto 0);
			led_type : integer;
			line_status : in std_logic_vector(2 downto 0);
			flash : in std_logic;
			phase : in integer;
			run : std_logic;
			info : in integer
			);
end component;

component phase_changer
	port( line_status : in std_logic_vector(2 downto 0);
			debug : boolean;
			phase_selector : in std_logic_vector(9 downto 7);
			phase : in integer;
			phase_new : out integer;
			info : out integer;
			run : std_logic;
			clk : in std_logic
	);
end component;

component sensor_counter
	port(	line_sensor : in std_logic_vector(7 downto 0);
			ridx : in integer;
			lidx : in integer;
			cnt : out integer
	);
end component;

component speed_selector
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
end component;

component motor
	port(	clk : in std_logic;
			speed_left : in integer; speed_right : in integer;
			motor_left : out std_logic; motor_right : out std_logic;
			run : in std_logic
	);
end component;
component rush_toggle
	port(	rush : out boolean;
			line_status: in std_logic_vector(2 downto 0);
			clk : in bit;
			use_rush : in boolean;
			threshold : in integer
	);
end component;

component sensor_status_detector
	port(	line_status : out std_logic_vector(2 downto 0);
			phase : in integer;
			
			full_line : in integer;
			soft_left : in integer;
			soft_right : in integer;
			strong_left : in integer;
			strong_right : in integer;
			middle : in integer;
			clk : in std_logic
	);
end component;

component segment
	port(	num: in	integer;
		  seg: out	std_logic_vector(6 downto 0);
		  clk : in std_logic
	);
end component;

component counter
	port( using : in std_logic;
			flag : out std_logic;
			threshold : in integer;
			clk : in std_logic
	);
end component;

component laptime
	port(clk : in std_logic;
		  t0 : out integer;
		  t1 : out integer;
		  t2 : out integer;
		  t3 : out integer;
		  run : in std_logic;
		  done_flag : boolean
	);
		
end component;

signal cnt : integer range 0 to 100 := 0;

signal valid : boolean := true;
signal valid_counter : integer range 0 to 500000100:= 0;
signal threshold : integer := 0;
signal phase_selector : std_logic_vector(9 downto 7);

type int_array is array(3 downto 0) of integer;
signal speed_indicator : int_array;

--signal line_status_new : std_logic_vector(2 downto 0);


signal carry_cnt : integer range 0 to 50000 := 0;
signal force_move : boolean := false;
signal done_flag : boolean := false;
signal n3 : integer range 0 to 10 := 0;
signal n2 : integer range 0 to 10 := 0;
signal n1 : integer range 0 to 10 := 0;
signal n0 : integer range 0 to 10 := 0;
begin

--	process(phase_new)
--	begin
--		phase <= phase_new; --update phase
--		case phase is
--			when 1 => 
--				rush_threshold <= 10000; --0.2s
--			when 2 =>
--				rush_threshold <= 10000;
--			when 3 =>
--				rush_threshold <= 10000;
--			when 4 =>
--				rush_threshold <= 10000;
--			when others =>
--				rush_threshold <= 10000;
--		end case;
--	end process;
	
	process(sw(1)) --debug select
	begin
		if(sw(1) = '1') then
			debug <= true;
		else
			debug <= false;
		end if;
	end process;
	
	process(sw(0)) --run
	begin
		if sw(0) = '1' then
			run <= '1';
		else
			run <= '0';
		end if;
	end process;
	
	process(sw(4), debug) --speed faster
	begin
		if sw(4) = '1' then
			faster <= true;
		else
			faster <= false;
		end if;
	end process;
	
	process(sw(5), debug) --use rush
	begin
		if sw(5) = '1' then
			use_rush <= true; 
		else
			use_rush <= false;
		end if;
	end process;
	
	process(sw(6), debug) --use motor
	begin
		if sw(6) = '1' then
			use_motor <= '1';
		else
			use_motor <= '0';
		end if;
	end process;
	
	process(sw(9 downto 7))
	begin
		phase_selector <= sw(9 downto 7);
	end process;
	
	process(sw(3 downto 2)) --led type
	begin
		if sw(3 downto 2) = "00" then
			led_type <= 4; --phase
			flash_debug <= '0';
		elsif sw(3 downto 2) = "01" then
			led_type <= 1; --show sensor
			flash_debug <= '0';
		elsif sw(3 downto 2) = "11" then
			led_type <= 2; --show strong_soft_middle
			flash_debug <= '0';
		elsif sw(3 downto 2) = "10" then
			led_type <= 3; --flash
			flash_debug <= '1';
		else
			led_type <= 0;
			flash_debug <= '0';
		end if;
	end process;
	
	process(flash_debug, flash_from_speed_selector)
	begin
		flash <= flash_debug or flash_from_speed_selector;
	end process;
	
	-------------------------------------------
	process(cnt)
	begin
		info <= cnt mod 10;
	end process;

	process(valid_counter)
	begin
		if valid_counter >= threshold - 2 then
			valid <= true;
		else
			valid <= false;
		end if;
	end process;

	process(clk)
	--variable line_status_before : std_logic_vector(2 downto 0);
	variable carry_cnt : integer := 0;
	begin
		
		if clk'event and clk = '1' then
			if run = '0' then
				carry_cnt := 0;
				force_move <= false;
				done_flag <= false;
				
				if debug then
					case phase_selector is
						when "100" =>
							phase <= 1;
							threshold <= 50000000;
						when "010" =>
							phase <= 2;
							threshold <= 50000000;
						when "110" =>
							phase <= 3;
							threshold <= 50000000;
						when "001" =>
							phase <= 4;
							threshold <= 50000000;
						when "101" =>
							phase <= 5;
							threshold <= 50000000;
						when "111" =>
							phase <= 9;
							threshold <= 50000000;
						when others=>
							null;
					end case;
				end if;
				
				cnt <= 0;
				valid_counter <= 50000010;
			else
				valid_counter <= valid_counter + 1;
				--------------------------------------- main
				case phase is
					when 1 => --loop
						if valid then
							threshold <= 50000000;
							if line_status = "111" then
								valid_counter <= 0;
								cnt <= cnt + 1;
								if cnt >= 10 then -- meet full line 3 times

									phase <= 2; --move to 2nd phase
									cnt <= 0;
									threshold <= 50000000; --wait for 1s before meeting new line
									valid_counter <= 0;
								end if;
							end if;
						end if;

					when 2 => --stop and go
						if valid then
							if line_status = "111" then
								valid_counter <= 0;
								cnt <= cnt + 1;
								if cnt >= 6 then --force move for 1 second
									force_move <= false;
									phase <= 3; --move to 3rd phase
									cnt <= 0;
									threshold <= 50000000; --wait for 1s before meeting new line
									valid_counter <= 0;
								elsif cnt >= 5 then --wait for 2 second
									force_move <= true;
								end if;
							end if;
						end if;

					when 3 => --twist
						if valid then
							if line_status = "111" then
								valid_counter <= 0;
								cnt <= cnt + 1;
								if cnt >= 30 then --before 10, now 20
									phase <= 3; --move to 3rd phase
									cnt <= 0;
									threshold <= 50000000; --wait for 1s before meeting new line
									valid_counter <= 0;
								end if;
							end if;
						end if;
					when 4 => --faster
						if valid then
							if line_status = "111" then
								valid_counter <= 0;
								cnt <= cnt + 1;
								if cnt >= 2 then
									--phase <= 0; --stop
									cnt <= 0;
									threshold <= 50000000;
									valid_counter <= 0;
									done_flag <= true;
								end if;
							end if;
						end if;
					when 5 =>
						if valid then
							if line_status = "111" then
								valid_counter <= 0;
								cnt <= cnt + 1;
								if cnt >= 2 then
									phase <= 0; --stop
									cnt <= 0;
									threshold <= 50000000;
									valid_counter <= 0;
								end if;
							end if;
						end if;
					when 9 =>
						if valid then
							if line_status = "111" then
								valid_counter <= 0;
								cnt <= cnt + 1;
							end if;
						end if;
					when others =>
						phase <= 0;
				end case;
				
				--------------------------------------------------------------------line_status
--				case phase is
--					when 0 => --stop
--						line_status <= "000"; line_status_before := line_status;
--					when 1 => --loop
--						if full_line >= 6 then
--							line_status <= "111";line_status_before := line_status;
--						elsif soft_left >= 2 then
--							line_status <= "100";line_status_before := line_status;
--						elsif soft_right >= 2 then
--							line_status <= "001";line_status_before := line_status;
--						elsif strong_left >= 1 then
--							line_status <= "110";line_status_before := line_status;
--						elsif strong_right >= 1 then
--							line_status <= "011";line_status_before := line_status;
--						elsif middle = 2 then
--							line_status <= "010";line_status_before := line_status;
--						else
--							line_status <= line_status_before;
--						end if;
--					when 2 => --stop and go
--						if full_line >= 6 then
--							line_status <= "111";line_status_before := line_status;
--						elsif soft_left >= 2 then
--							line_status <= "100";line_status_before := line_status;
--						elsif soft_right >= 2 then
--							line_status <= "001";line_status_before := line_status;
--						elsif strong_left >= 1 then
--							line_status <= "110";line_status_before := line_status;
--						elsif strong_right >= 1 then
--							line_status <= "011";line_status_before := line_status;
--						elsif middle = 2 then
--							line_status <= "010";line_status_before := line_status;
--						else
--							line_status <= line_status_before;
--						end if;
--					when 3 =>
--						if full_line >= 6 then
--							line_status <= "111";line_status_before := line_status;
--						elsif soft_left >= 2 then
--							line_status <= "100";line_status_before := line_status;
--						elsif soft_right >= 2 then
--							line_status <= "001";line_status_before := line_status;
--						elsif strong_left >= 1 then
--							line_status <= "110";line_status_before := line_status;
--						elsif strong_right >= 1 then
--							line_status <= "011";line_status_before := line_status;
--						elsif middle = 2 then
--							line_status <= "010";line_status_before := line_status;
--						else
--							line_status <= line_status_before;
--						end if;
--					
--					when 9 =>
--						-- 7 6 5 4 3 2 1 0
--						if full_line >= 6 then --full line
--							line_status <= "111";line_status_before := line_status;
--						elsif soft_left >= 2 then --soft left
--							line_status <= "100";line_status_before := line_status;
--						elsif soft_right >= 2 then --soft right
--							line_status <= "001";line_status_before := line_status;
--						elsif strong_left >= 1 then --strong left
--							line_status <= "110";line_status_before := line_status;
--						elsif strong_right >= 1 then --strong right
--							line_status <= "011";line_status_before := line_status;
--						elsif middle = 2 then --middle
--							line_status <= "010";line_status_before := line_status;
--						else
--							line_status <= line_status_before;
--						end if;
--					when others =>
--						null;
--				end case;
				--------------------------------------------------------------- motor
				
				carry_cnt := carry_cnt + 1;
				
				if(carry_cnt = 49998) then
					carry_cnt := 0;
				end if;
				
				if use_motor = '1' then
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
				
			end if;
			
		end if;
		
		
	end process;
	
--	
--	process(carry_cnt)
--	begin
--		if(run = '1') and (use_motor = '1')then
--			if(carry_cnt >= speed_left) then
--				motor_left <= '0';
--			elsif(carry_cnt < speed_left) then
--				motor_left <= '1';
--			end if;
--			
--			if(carry_cnt >= speed_right) then
--				motor_right <= '0';
--			elsif(carry_cnt < speed_right) then
--				motor_right <= '1';
--			end if;
--		else
--			motor_left <= '0';
--			motor_right <= '0';
--		end if;
--	end process;

--	process(clk)
--	variable mycnt : integer range 0 to 50000000:= 0;
--	begin
--		if clk'event and clk = '1' then
--			if(sw(0) = '0') then
--				mycnt := 0;
--				info <= 0;
--			else
--				mycnt := mycnt + 1;
--				if mycnt >= 49999990 then
--					mycnt := 0;
--					info <= info + 1;
--				end if;
--			end if;
--		end if;
--	end process;
	

	process(speed_left, speed_right)
	begin
		speed_indicator(3) <= speed_left / 10000;
		speed_indicator(2) <= (speed_left / 1000) mod 10;
		speed_indicator(1) <= speed_right / 10000;
		speed_indicator(0) <= (speed_right / 1000) mod 10;
	end process;
	

	----------------------------------------------------
	
	SD : sensor_status_detector port map(line_status=>line_status, phase=>phase, full_line=>full_line, soft_left=>soft_left, soft_right=>soft_right,
	strong_left=>strong_left, strong_right=>strong_right, middle=>middle, clk=>clk);

	SS: speed_selector port map(phase=>phase, speed_left=>speed_left, speed_right=>speed_right, line_status=>line_status, rush=>rush, clk=>clk, info=>info, flash=>flash_from_speed_selector, force_move=>force_move);
	
	L: light port map(clk=>clk, line_sensor=>line_sensor, led=>led, led_type=>led_type, line_status=>line_status, flash=>flash, phase=>Phase, run=>run, info=>info);
--	P: phase_changer port map(line_status=>line_status, debug=>debug, phase_selector=>sw(9 downto 7), phase=>phase, phase_new=>phase_new, info=>info, run=>run, clk=>clk);

	-- 7 6 5 4 3 2 1 0
	full_line_detector: 		sensor_counter port map(line_sensor=>line_sensor, ridx=>7, lidx=>0, cnt=>full_line); --All 8 Sensor detection count
	soft_left_detector: 		sensor_counter port map(line_sensor=>line_sensor, ridx=>6, lidx=>4, cnt=>soft_left);
	soft_right_detector: 	sensor_counter port map(line_sensor=>line_sensor, ridx=>3, lidx=>1, cnt=>soft_right);
	strong_left_detector: 	sensor_counter port map(line_sensor=>line_sensor, ridx=>7, lidx=>5, cnt=>strong_left);
	strong_right_detector: 	sensor_counter port map(line_sensor=>line_sensor, ridx=>2, lidx=>0, cnt=>strong_right);
	middle_line_detector:	sensor_counter port map(line_sensor=>line_sensor, ridx=>4, lidx=>3, cnt=>middle);
	
	--motor_drive: 	motor port map(clk=>clk, speed_left=>speed_left, speed_right=>speed_right, motor_left=>motor_left, motor_right=>motor_right, run=>use_motor and run);
	--rush_mode: rush_toggle port map(clk=>clk, line_status=>line_status, rush=>rush, use_rush=>use_rush, threshold=>rush_threshold);
	
	--sg: segment port map(num=>info, seg=>seg, clk => clk);
	--ft : counter port map(using=>flag_test, flag=>myflag, threshold=>test_th, clk=>clk);
	
	--leftspeed1: segment port map(num => speed_indicator(3), seg=>seg3, clk=>clk);
	--leftspeed2: segment port map(num => speed_indicator(2), seg=>seg2, clk=>clk);
	--rightspeed1: segment port map(num => speed_indicator(1), seg=>seg1, clk=>clk);
	--rightspeed2: segment port map(num => speed_indicator(0), seg=>seg0, clk=>clk);
	
	leftspeed1: segment port map(num => n3, seg=>seg3, clk=>clk);
	leftspeed2: segment port map(num => n2, seg=>seg2, clk=>clk);
	rightspeed1: segment port map(num => n1, seg=>seg1, clk=>clk);
	rightspeed2: segment port map(num => n0, seg=>seg0, clk=>clk);
	
	lp : laptime port map(clk=>clk, t0=>n0, t1=>n1, t2=>n2, t3=>n3, run=>run, done_flag=>done_flag);
end design;