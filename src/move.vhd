Library ieee;
use ieee.std_logic_1164.all;

entity Move is
	port( clk: in bit;
			line_sensor : in std_logic_vector(7 downto 0);
			motor_left : out std_logic;
			motor_right : out std_logic;	
			phase : integer
	);
end Move;

architecture design of Move is
signal move_type : integer range 0 to 1 := 0;
component Turn
	port(	clk: in bit;
			line_sensor : in std_logic_vector(7 downto 0);
			motor_left : out std_logic;
			motor_right : out std_logic;	
			move_type : integer);
end component;

begin
	
	process(phase)
	begin
		if (Phase = 0) then
			move_type <= 0; -- When Phase 0 Stop
		else --When Other Phases
			move_type <= 1; --move
		end if;
	end process;
	
	T: Turn port map(clk=>clk, line_sensor=>line_sensor, motor_left=>motor_left, motor_right=>motor_right, move_type=>move_type);
end design;