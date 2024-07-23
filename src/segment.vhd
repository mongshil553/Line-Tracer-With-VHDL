Library ieee;
Use ieee.std_logic_1164.all;

entity segment is
	port(	num: in	integer;
		  seg: out	std_logic_vector(6 downto 0);
		  clk : in std_logic);
end segment;

architecture design of segment is
begin
	process(clk)
	begin
			case num mod 10 is
				when 0 => seg <= "1000000"; -- 0
				when 1 => seg <= "1111001"; -- 1
				when 2 => seg <= "0100100"; -- 2
				when 3 => seg <= "0110000"; -- 3
				when 4 => seg <= "0011001"; -- 4
				when 5 => seg <= "0010010"; -- 5
				when 6 => seg <= "0000010"; -- 6
				when 7 => seg <= "1111000"; -- 7
				when 8 => seg <= "0000000"; -- 8
				when 9 => seg <= "0010000"; -- 9
				
				when others => seg <= "1111110";
			end case;
	end process;
end design;