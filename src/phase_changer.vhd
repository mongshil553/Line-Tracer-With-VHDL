library ieee;
use ieee.std_logic_1164.all;

entity phase_changer is
	port( line_status : in std_logic_vector(2 downto 0);
			debug : boolean;
			phase_selector : in std_logic_vector(9 downto 7);
			phase : in integer;
			phase_new : out integer;
			info : out integer;
			run : std_logic;
			clk : in std_logic
	);
end phase_changer;

architecture design of phase_changer is
signal cnt : integer range 0 to 100 := 0;
signal run_state0 : boolean := false;
signal run_state1 : boolean := false;
signal passed : boolean := true;

component counter
	port( using : in std_logic;
			flag : out std_logic;
			threshold : in integer;
			clk : in std_logic
	);
end component;
signal timer_on : std_logic := '0';
signal timer_flag : std_logic := '1';
signal valid : boolean := true;
signal valid_counter : integer range 0 to 500000100:= 0;
signal threshold : integer := 0;

begin
	
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
	variable octave : integer := 0;
	begin
		if clk'event and clk = '1' then
			if run ='0' then
				cnt <= 0;
				valid_counter <= 50000010;
				threshold <= 50000000;
				phase_new <= 1;
				octave := 0;
			else
				valid_counter <= valid_counter + 1;
				if valid then
					valid_counter <= 0;
					cnt <= cnt + 1;
					if cnt >= 9 then
						octave:= octave + 1;
					end if;
					
					if octave = 0 then
						threshold <= 10000000;
						phase_new <= 1;
					elsif octave = 1 then
						threshold <= 20000000;
					elsif octave = 2 then
						threshold <= 30000000;
					elsif octave = 3 then
						threshold <= 40000000;
					elsif octave = 4 then
						phase_new <= 2;
						threshold <= 50000000;
					elsif octave = 5 then
						threshold <= 60000000;
					elsif octave = 6 then
						threshold <= 70000000;
					elsif octave = 7 then
						phase_new <= 3;
						threshold <= 80000000;
					elsif octave = 9 then
						threshold <= 90000000;
					else
						threshold <= 90000000;
					end if;
				end if;
			end if;
		end if;
	end process;
	
--	process(clk)
--	begin
--		
--		if clk'event and clk = '1' then
--			if debug then
--				case phase_selector is
--					when "100" =>
--						phase_new <= 1;
--					when "010" =>
--						phase_new <= 2;
--					when "110" =>
--						phase_new <= 3;
--					when "001" =>
--						phase_new <= 4;
--					when "101" =>
--						phase_new <= 5;
--					when "111" =>
--						phase_new <= 9;
--					when others=>
--						null;
--				end case;
--			end if;
--		
--			if run = '0' then
--				cnt <= 0;
--				valid_counter <= 10;
--				threshold <= 5;
--			else
--				valid_counter <= valid_counter + 1;
--				
--				case phase is
--					when 1 =>
--						threshold <= 50000000; -- 1 second valid threshold
--						if(line_status = "111") then
--							if (cnt <= 10) and valid then
--								valid_counter <= 0;
--								cnt <= cnt + 1;
--							else
--								valid_counter <= 50000010;
--								cnt <= 0;
--								phase_new <= phase + 1;
--							end if;
--						end if;
--					when 2 =>
--						threshold <= 50000000; -- 1 second valid threshold
--						if(line_status = "111") then
--							if (cnt <= 10) and valid then
--								valid_counter <= 0;
--								cnt <= cnt + 1;
--							else
--								valid_counter <= 500000010;
--								cnt <= 0;
--								phase_new <= phase + 1;
--							end if;
--						end if;
--					when others =>
--						null;
--				end case;
--				
--			end if;
--			
--		end if;

		
--		if run = '1' then
--			case phase is
--				when 1 =>
--					threshold <= 50000000; --1second valid threshold
--					if(line_status = "111") then
--						if valid then
--							valid_counter <= 0;
--							if (cnt < 8) then
--								cnt <= cnt + 1;
--							else
--								if not debug then
--									phase_new <= phase + 1; --next phase
--									cnt <= 0;
--								else
--									phase_new <= 0;
--								end if;
--							end if;
--							
--						else
--							valid_counter <= valid_counter + 1;
--						end if;
--							
--					else
--						null;
--						--passed <= true;
--					end if;
--				when 2 =>
--					cnt <= 5;
--				when others =>
--					cnt <= 8;
--			end case;
--		end if;
		
--		if run = '1' then
--			if (phase = 1) then
--				if(line_status = "111") then
--					if (cnt < 3) then --meet full line 3 times
--						if passed then
--							cnt <= cnt + 1;
--							passed <= false;
--						end if;
--					else
--						if not debug then
--							phase_new <= phase + 1; --next phase
--							cnt <= 0;
--						else
--							phase_new <= 0;
--						end if;
--					end if;
--				else
--					passed <= true;
--				end if;
--				
--			elsif (phase = 2) then
--				if(line_status = "111") then
--					if (cnt < 2) then -- meet full line 2 times
--						cnt <= cnt + 1;
--					else
--						if not debug then
--							phase_new <= phase + 1; --next phase
--							cnt <= 0;
--						else
--							phase_new <= 0;
--						end if;
--					end if;
--				end if;
--			elsif (phase = 3) then -- twist
--				if(line_status = "111") then
--					if (cnt < 2) then -- meet full line 2 times
--						cnt <= cnt + 1;
--					else
--						if not debug then
--							phase_new <= phase + 1; --next phase
--							cnt <= 0;
--						else
--							phase_new <= 0;
--						end if;
--					end if;
--				end if;
--			elsif (phase = 4) then --full throttle
--				if(line_status = "111") then
--					if not debug then
--							phase_new <= phase + 1; --next phase
--							cnt <= 0;
--						else
--							phase_new <= 0;
--						end if;
--				end if;
--			else
--				null;
--			end if;
--		end if;
--	end process;

	--validator : counter port map(using=>timer_on, flag=>timer_flag, threshold=>threshold, clk=>clk);
end design;