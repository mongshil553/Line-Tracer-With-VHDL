library ieee;
use ieee.std_logic_1164.all;

entity light is
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
end light;

architecture design of light is
--signal cur_debug_type : integer range -1 to 5 := -1;
signal flash_toggle : std_logic := '0';
signal flash_led : std_logic_vector(9 downto 0);
signal flash_flag : std_logic := '0';

signal flash_state0 : boolean := false;
signal flash_state1 : boolean := false;

component counter
	port( using : in std_logic;
			flag : out std_logic;
			threshold : in integer;
			clk : in std_logic
	);
end component;

signal led1 : std_logic_vector(9 downto 0) := "0000000000";
begin

	process(led1)
	begin
		led <= "0000000000" or led1;
	end process;
	
--	process(flash)
--	begin
--		if flash = '1' then
--			flash_state1 <= true;
--		else
--			flash_state1 <= false;
--		end if;
--	end process;
	
	process(flash_state1, clk)
	variable it : integer;
	variable info_led : std_logic_vector(9 downto 0);
	begin
		
--		if flash_flag = '1' then
--			flash_led <= not flash_led;
--			flash_toggle <= '0';
--		end if;
--		
--		if not (flash_state0 = flash_state1) then
--			flash_state0 <= flash_state1;
--			flash_led <= "1111111111";
--			flash_toggle <= '1';
--		end if;

		case led_type is
			when 0 => -- flash or line
				if flash = '0' then
				  led1 <= not ('1' & line_sensor & '1');
				else
				  led1 <= flash_led;
				end if;
			when 1 => --show sensor
				led1(8 downto 1) <= not line_sensor;

			when 2 => --full, soft, strong detection
				
				if line_status = "010" then --middle
					led1 <= "0001111000";
					
				elsif line_status = "111" then --full_line
					led1 <= "1111111111";
					
				elsif line_status = "100" then --soft left
					led1 <= "1100000000";
					
				elsif line_status = "001" then --soft right
					led1 <= "0000000011";
					
				elsif line_status = "110" then --strong left
					led1 <= "1111000000";
					
				elsif line_status = "011" then --strong right
					led1 <= "0000001111";
					
				else --unknown
					led1 <= "0101010101";
				end if;
				
			when 3 => --flash
				led1 <= flash_led;
				
			when 4 => --show phase
				info_led := "0000000000";
					if info >= 1 then
					for i in 0 to 5 loop
						if i <= info - 1 then
							info_led(i) := '1';
						end if;
					end loop;
				end if;
				
			
				if phase = 0 then
					led1 <= "0000000000" or info_led;
				elsif phase = 1 then
					led1 <= "1000000000" or info_led;
				elsif phase = 2 then
					led1 <= "0100000000" or info_led;
				elsif phase = 3 then
					led1 <= "1100000000" or info_led;
				elsif phase = 4 then
					led1 <= "0010000000" or info_led;
				elsif phase = 5 then
					led1 <= "1010000000" or info_led;
				elsif phase = 9 then
					led1 <= "1110000000" or info_led;
				else
					led1 <= "1010101111" or info_led;
				end if;
			when others =>
				led1 <= "0101010101";
		end case;
	end process;
	
--	
--	c : counter port map(using=>flash_toggle, flag=>flash_flag, threshold=>50000000, clk=>clk);

end design;