library ieee;
use ieee.std_logic_1164.all;

entity turn_checker is
	port(	line_sensor : in std_logic_vector(7 downto 0);
			turning : buffer boolean
	);
end turn_checker;

architecture design of turn_checker is
begin

	process(line_sensor)
	begin
		if (line_sensor(1 to 3) = "000") or (line_sensor(5 to 7) = "000") then
			turning <= true;
		else
			turning <= false;
		end if;
	end process;

end design;