library ieee;
use ieee.std_logic_1164.all;

entity rush_toggle is
	port(	rush : out boolean;
			line_status: in std_logic_vector(2 downto 0);
			clk : in bit;
			use_rush : in boolean;
			threshold : in integer
	);
end rush_toggle;

architecture design of rush_toggle is
component counter
	port( using : in std_logic;
			flag : out std_logic;
			threshold : in integer;
			clk : in bit
	);
end component;

signal short_timer_on : std_logic := '1';
signal short_timer_flag : std_logic := '0';
signal rush_timer_on : std_logic := '1';
signal rush_flag : std_logic := '0';

begin
	process(clk, line_status, rush_flag, short_timer_flag)
	begin
		if use_rush then
			if short_timer_flag = '1' then
				rush_timer_on <= '1'; -- rush timer on
				short_timer_on <= '0'; --short timer off
			end if;
		
			if (line_status = "110") or (line_status = "011") then -- when detected strong, reset rush
				rush_timer_on <= '0'; --Rush Timer off
				short_timer_on <= '1'; --short timer on <- when flagged, turn rush timer on again
				rush <= false;
			end if;
			
			if rush_flag = '1' then
				rush <= true;
			end if;
		end if;
	end process;
	
	r : counter port map(using=>rush_timer_on, flag=>rush_flag, threshold=>threshold, clk=>clk); --1 second after last strong detection
	st : counter port map(using=>short_timer_on, flag=>short_timer_flag, threshold=>10, clk=>clk);
end design;