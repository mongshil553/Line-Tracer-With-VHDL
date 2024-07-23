library ieee;
use ieee.std_logic_1164.all;

entity sensor_status_detector is
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
end sensor_status_detector;

architecture design of sensor_status_detector is
--signal line_status_before : std_logic_vector(2 downto 0);
signal line_status_new : std_logic_vector(2 downto 0);

begin

	process(line_status_new)
	begin
		line_status <= line_status_new;
--		line_status_before := line_status_new;
	end process;
	
	process(phase, full_line, soft_left, soft_right, strong_left, strong_right,middle)
	variable line_status_before : std_logic_vector(2 downto 0);
	variable myflag : boolean := true;
	begin
		case phase is
			when 0 => --stop
				line_status_new <= "000"; line_status_before := line_status_new;
			when 1 => --loop
				if full_line >= 6 then
					line_status_new <= "111";line_status_before := line_status_new;
				elsif soft_left >= 2 then
					line_status_new <= "100";line_status_before := line_status_new;
				elsif soft_right >= 2 then
					line_status_new <= "001";line_status_before := line_status_new;
				elsif strong_left >= 1 then
					line_status_new <= "110";line_status_before := line_status_new;
				elsif strong_right >= 1 then
					line_status_new <= "011";line_status_before := line_status_new;
				elsif middle = 2 then
					line_status_new <= "010";line_status_before := line_status_new;
				else
					line_status_new <= "110";
					--null;
				end if;
			when 2 => --stop and go
				if full_line >= 6 then
					line_status_new <= "111";line_status_before := line_status_new;
				elsif soft_left >= 2 then
					line_status_new <= "100";line_status_before := line_status_new;
				elsif soft_right >= 2 then
					line_status_new <= "001";line_status_before := line_status_new;
				elsif strong_left >= 1 then
					line_status_new <= "110";line_status_before := line_status_new;
				elsif strong_right >= 1 then
					line_status_new <= "011";line_status_before := line_status_new;
				elsif middle = 2 then
					line_status_new <= "010";line_status_before := line_status_new;
				else
					line_status_new <= line_status_before;
				end if;
				myflag := true;
			when 3 =>
				
				if full_line >= 6 then
					if myflag then
					line_status_new <= "111";line_status_before := line_status_new;
					end if;
				elsif soft_left >= 2 then
					if myflag then
					line_status_new <= "100";line_status_before := line_status_new;
					end if;
				elsif soft_right >= 2 then
				if myflag then
					line_status_new <= "001";line_status_before := line_status_new;
					
				end if;
				myflag := true;
				elsif strong_left >= 1 then
				if myflag then
					line_status_new <= "110";line_status_before := line_status_new;
					
					end if;
					myflag := true;
				elsif strong_right >= 1 then
				if myflag then
					line_status_new <= "011";line_status_before := line_status_new;
				end if;
				elsif middle = 2 then
				if myflag then
					line_status_new <= "010";line_status_before := line_status_new;
				end if;
				else
					myflag := false;
					line_status_new <= "011";
				end if;
			when 4 => --faster
				if full_line >= 6 then
					line_status_new <= "111";line_status_before := line_status_new;
				elsif soft_left >= 2 then
					line_status_new <= "100";line_status_before := line_status_new;
				elsif soft_right >= 2 then
					line_status_new <= "001";line_status_before := line_status_new;
				elsif strong_left >= 1 then
					line_status_new <= "110";line_status_before := line_status_new;
				elsif strong_right >= 1 then
					line_status_new <= "011";line_status_before := line_status_new;
				elsif middle = 2 then
					line_status_new <= "010";line_status_before := line_status_new;
				else
					null;
				end if;
			when 5 => --stop
				if full_line >= 6 then
					line_status_new <= "111"; line_status_before := line_status_new;
				end if;
			
			when 9 =>
				-- 7 6 5 4 3 2 1 0
				if full_line >= 6 then --full line
					line_status_new <= "111";line_status_before := line_status_new;
				elsif soft_left >= 2 then --soft left
					line_status_new <= "100";line_status_before := line_status_new;
				elsif soft_right >= 2 then --soft right
					line_status_new <= "001";line_status_before := line_status_new;
				elsif strong_left >= 1 then --strong left
					line_status_new <= "110";line_status_before := line_status_new;
				elsif strong_right >= 1 then --strong right
					line_status_new <= "011";line_status_before := line_status_new;
				elsif middle = 2 then --middle
					line_status_new <= "010";line_status_before := line_status_new;
				else
					line_status_new <= line_status_before;
				end if;
			when others =>
				null;
		end case;
	end process;

end design;