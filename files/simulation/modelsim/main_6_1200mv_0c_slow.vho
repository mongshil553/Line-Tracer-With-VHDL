-- Copyright (C) 1991-2013 Altera Corporation
-- Your use of Altera Corporation's design tools, logic functions 
-- and other software and tools, and its AMPP partner logic 
-- functions, and any output files from any of the foregoing 
-- (including device programming or simulation files), and any 
-- associated documentation or information are expressly subject 
-- to the terms and conditions of the Altera Program License 
-- Subscription Agreement, Altera MegaCore Function License 
-- Agreement, or other applicable license agreement, including, 
-- without limitation, that your use is for the sole purpose of 
-- programming logic devices manufactured by Altera and sold by 
-- Altera or its authorized distributors.  Please refer to the 
-- applicable agreement for further details.

-- VENDOR "Altera"
-- PROGRAM "Quartus II 64-Bit"
-- VERSION "Version 13.1.0 Build 162 10/23/2013 SJ Web Edition"

-- DATE "12/07/2023 20:13:13"

-- 
-- Device: Altera EP3C16F484C6 Package FBGA484
-- 

-- 
-- This VHDL file should be used for ModelSim-Altera (VHDL) only
-- 

LIBRARY ALTERA;
LIBRARY CYCLONEIII;
LIBRARY IEEE;
USE ALTERA.ALTERA_PRIMITIVES_COMPONENTS.ALL;
USE CYCLONEIII.CYCLONEIII_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	main IS
    PORT (
	clk : IN std_logic;
	line_sensor : IN std_logic_vector(7 DOWNTO 0);
	motor_left : BUFFER std_logic;
	motor_right : BUFFER std_logic;
	led : BUFFER std_logic_vector(9 DOWNTO 0);
	sw : IN std_logic_vector(9 DOWNTO 0);
	seg0 : BUFFER std_logic_vector(6 DOWNTO 0);
	seg1 : BUFFER std_logic_vector(6 DOWNTO 0);
	seg2 : BUFFER std_logic_vector(6 DOWNTO 0);
	seg3 : BUFFER std_logic_vector(6 DOWNTO 0)
	);
END main;

-- Design Ports Information
-- motor_left	=>  Location: PIN_U10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- motor_right	=>  Location: PIN_R11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- led[0]	=>  Location: PIN_J1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- led[1]	=>  Location: PIN_J2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- led[2]	=>  Location: PIN_J3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- led[3]	=>  Location: PIN_H1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- led[4]	=>  Location: PIN_F2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- led[5]	=>  Location: PIN_E1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- led[6]	=>  Location: PIN_C1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- led[7]	=>  Location: PIN_C2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- led[8]	=>  Location: PIN_B2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- led[9]	=>  Location: PIN_B1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sw[4]	=>  Location: PIN_G5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sw[5]	=>  Location: PIN_J7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- seg0[0]	=>  Location: PIN_E11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- seg0[1]	=>  Location: PIN_F11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- seg0[2]	=>  Location: PIN_H12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- seg0[3]	=>  Location: PIN_H13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- seg0[4]	=>  Location: PIN_G12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- seg0[5]	=>  Location: PIN_F12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- seg0[6]	=>  Location: PIN_F13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- seg1[0]	=>  Location: PIN_A13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- seg1[1]	=>  Location: PIN_B13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- seg1[2]	=>  Location: PIN_C13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- seg1[3]	=>  Location: PIN_A14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- seg1[4]	=>  Location: PIN_B14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- seg1[5]	=>  Location: PIN_E14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- seg1[6]	=>  Location: PIN_A15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- seg2[0]	=>  Location: PIN_D15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- seg2[1]	=>  Location: PIN_A16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- seg2[2]	=>  Location: PIN_B16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- seg2[3]	=>  Location: PIN_E15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- seg2[4]	=>  Location: PIN_A17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- seg2[5]	=>  Location: PIN_B17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- seg2[6]	=>  Location: PIN_F14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- seg3[0]	=>  Location: PIN_B18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- seg3[1]	=>  Location: PIN_F15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- seg3[2]	=>  Location: PIN_A19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- seg3[3]	=>  Location: PIN_B19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- seg3[4]	=>  Location: PIN_C19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- seg3[5]	=>  Location: PIN_D19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- seg3[6]	=>  Location: PIN_G15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sw[2]	=>  Location: PIN_H6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sw[3]	=>  Location: PIN_G4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- line_sensor[0]	=>  Location: PIN_AA20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- line_sensor[1]	=>  Location: PIN_AB20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- line_sensor[2]	=>  Location: PIN_AA19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- line_sensor[3]	=>  Location: PIN_AB19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- line_sensor[4]	=>  Location: PIN_AB18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- line_sensor[5]	=>  Location: PIN_AA18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- line_sensor[6]	=>  Location: PIN_AA17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- line_sensor[7]	=>  Location: PIN_AB17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sw[6]	=>  Location: PIN_H7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- clk	=>  Location: PIN_G21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sw[0]	=>  Location: PIN_J6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sw[8]	=>  Location: PIN_E4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sw[7]	=>  Location: PIN_E3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sw[9]	=>  Location: PIN_D2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sw[1]	=>  Location: PIN_H5,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF main IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_clk : std_logic;
SIGNAL ww_line_sensor : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_motor_left : std_logic;
SIGNAL ww_motor_right : std_logic;
SIGNAL ww_led : std_logic_vector(9 DOWNTO 0);
SIGNAL ww_sw : std_logic_vector(9 DOWNTO 0);
SIGNAL ww_seg0 : std_logic_vector(6 DOWNTO 0);
SIGNAL ww_seg1 : std_logic_vector(6 DOWNTO 0);
SIGNAL ww_seg2 : std_logic_vector(6 DOWNTO 0);
SIGNAL ww_seg3 : std_logic_vector(6 DOWNTO 0);
SIGNAL \SD|Selector7~2clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \SS|Selector71~3clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \SS|boost_speed[8]~1clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \L|Equal17~0clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \clk~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \sw[4]~input_o\ : std_logic;
SIGNAL \sw[5]~input_o\ : std_logic;
SIGNAL \motor_left~output_o\ : std_logic;
SIGNAL \motor_right~output_o\ : std_logic;
SIGNAL \led[0]~output_o\ : std_logic;
SIGNAL \led[1]~output_o\ : std_logic;
SIGNAL \led[2]~output_o\ : std_logic;
SIGNAL \led[3]~output_o\ : std_logic;
SIGNAL \led[4]~output_o\ : std_logic;
SIGNAL \led[5]~output_o\ : std_logic;
SIGNAL \led[6]~output_o\ : std_logic;
SIGNAL \led[7]~output_o\ : std_logic;
SIGNAL \led[8]~output_o\ : std_logic;
SIGNAL \led[9]~output_o\ : std_logic;
SIGNAL \seg0[0]~output_o\ : std_logic;
SIGNAL \seg0[1]~output_o\ : std_logic;
SIGNAL \seg0[2]~output_o\ : std_logic;
SIGNAL \seg0[3]~output_o\ : std_logic;
SIGNAL \seg0[4]~output_o\ : std_logic;
SIGNAL \seg0[5]~output_o\ : std_logic;
SIGNAL \seg0[6]~output_o\ : std_logic;
SIGNAL \seg1[0]~output_o\ : std_logic;
SIGNAL \seg1[1]~output_o\ : std_logic;
SIGNAL \seg1[2]~output_o\ : std_logic;
SIGNAL \seg1[3]~output_o\ : std_logic;
SIGNAL \seg1[4]~output_o\ : std_logic;
SIGNAL \seg1[5]~output_o\ : std_logic;
SIGNAL \seg1[6]~output_o\ : std_logic;
SIGNAL \seg2[0]~output_o\ : std_logic;
SIGNAL \seg2[1]~output_o\ : std_logic;
SIGNAL \seg2[2]~output_o\ : std_logic;
SIGNAL \seg2[3]~output_o\ : std_logic;
SIGNAL \seg2[4]~output_o\ : std_logic;
SIGNAL \seg2[5]~output_o\ : std_logic;
SIGNAL \seg2[6]~output_o\ : std_logic;
SIGNAL \seg3[0]~output_o\ : std_logic;
SIGNAL \seg3[1]~output_o\ : std_logic;
SIGNAL \seg3[2]~output_o\ : std_logic;
SIGNAL \seg3[3]~output_o\ : std_logic;
SIGNAL \seg3[4]~output_o\ : std_logic;
SIGNAL \seg3[5]~output_o\ : std_logic;
SIGNAL \seg3[6]~output_o\ : std_logic;
SIGNAL \clk~input_o\ : std_logic;
SIGNAL \clk~inputclkctrl_outclk\ : std_logic;
SIGNAL \sw[0]~input_o\ : std_logic;
SIGNAL \carry_cnt~9_combout\ : std_logic;
SIGNAL \carry_cnt~7_combout\ : std_logic;
SIGNAL \Add3~59\ : std_logic;
SIGNAL \Add3~60_combout\ : std_logic;
SIGNAL \carry_cnt~8_combout\ : std_logic;
SIGNAL \Add3~61\ : std_logic;
SIGNAL \Add3~62_combout\ : std_logic;
SIGNAL \carry_cnt~4_combout\ : std_logic;
SIGNAL \carry_cnt~32_combout\ : std_logic;
SIGNAL \Add3~0_combout\ : std_logic;
SIGNAL \carry_cnt~39_combout\ : std_logic;
SIGNAL \Add3~1\ : std_logic;
SIGNAL \Add3~2_combout\ : std_logic;
SIGNAL \carry_cnt~37_combout\ : std_logic;
SIGNAL \carry_cnt~38_combout\ : std_logic;
SIGNAL \Add3~3\ : std_logic;
SIGNAL \Add3~4_combout\ : std_logic;
SIGNAL \carry_cnt~6_combout\ : std_logic;
SIGNAL \carry_cnt~36_combout\ : std_logic;
SIGNAL \Add3~5\ : std_logic;
SIGNAL \Add3~6_combout\ : std_logic;
SIGNAL \carry_cnt~5_combout\ : std_logic;
SIGNAL \carry_cnt~35_combout\ : std_logic;
SIGNAL \Add3~7\ : std_logic;
SIGNAL \Add3~8_combout\ : std_logic;
SIGNAL \carry_cnt~34_combout\ : std_logic;
SIGNAL \Add3~9\ : std_logic;
SIGNAL \Add3~10_combout\ : std_logic;
SIGNAL \carry_cnt~33_combout\ : std_logic;
SIGNAL \Add3~11\ : std_logic;
SIGNAL \Add3~12_combout\ : std_logic;
SIGNAL \carry_cnt~31_combout\ : std_logic;
SIGNAL \Add3~13\ : std_logic;
SIGNAL \Add3~14_combout\ : std_logic;
SIGNAL \Equal5~6_combout\ : std_logic;
SIGNAL \Equal5~5_combout\ : std_logic;
SIGNAL \carry_cnt~3_combout\ : std_logic;
SIGNAL \carry_cnt~30_combout\ : std_logic;
SIGNAL \Add3~15\ : std_logic;
SIGNAL \Add3~16_combout\ : std_logic;
SIGNAL \carry_cnt~27_combout\ : std_logic;
SIGNAL \Add3~17\ : std_logic;
SIGNAL \Add3~18_combout\ : std_logic;
SIGNAL \carry_cnt~2_combout\ : std_logic;
SIGNAL \carry_cnt~29_combout\ : std_logic;
SIGNAL \Add3~19\ : std_logic;
SIGNAL \Add3~20_combout\ : std_logic;
SIGNAL \carry_cnt~28_combout\ : std_logic;
SIGNAL \Add3~21\ : std_logic;
SIGNAL \Add3~22_combout\ : std_logic;
SIGNAL \Equal5~7_combout\ : std_logic;
SIGNAL \carry_cnt~25_combout\ : std_logic;
SIGNAL \Add3~23\ : std_logic;
SIGNAL \Add3~24_combout\ : std_logic;
SIGNAL \carry_cnt~26_combout\ : std_logic;
SIGNAL \Add3~25\ : std_logic;
SIGNAL \Add3~26_combout\ : std_logic;
SIGNAL \Add3~27\ : std_logic;
SIGNAL \Add3~28_combout\ : std_logic;
SIGNAL \Equal5~8_combout\ : std_logic;
SIGNAL \Equal5~9_combout\ : std_logic;
SIGNAL \carry_cnt~1_combout\ : std_logic;
SIGNAL \carry_cnt~24_combout\ : std_logic;
SIGNAL \Add3~29\ : std_logic;
SIGNAL \Add3~30_combout\ : std_logic;
SIGNAL \carry_cnt~0_combout\ : std_logic;
SIGNAL \carry_cnt~23_combout\ : std_logic;
SIGNAL \Add3~31\ : std_logic;
SIGNAL \Add3~32_combout\ : std_logic;
SIGNAL \carry_cnt~22_combout\ : std_logic;
SIGNAL \Add3~33\ : std_logic;
SIGNAL \Add3~34_combout\ : std_logic;
SIGNAL \carry_cnt~21_combout\ : std_logic;
SIGNAL \Add3~35\ : std_logic;
SIGNAL \Add3~36_combout\ : std_logic;
SIGNAL \carry_cnt~20_combout\ : std_logic;
SIGNAL \Add3~37\ : std_logic;
SIGNAL \Add3~38_combout\ : std_logic;
SIGNAL \carry_cnt~19_combout\ : std_logic;
SIGNAL \Add3~39\ : std_logic;
SIGNAL \Add3~40_combout\ : std_logic;
SIGNAL \carry_cnt~18_combout\ : std_logic;
SIGNAL \Add3~41\ : std_logic;
SIGNAL \Add3~42_combout\ : std_logic;
SIGNAL \carry_cnt~17_combout\ : std_logic;
SIGNAL \Add3~43\ : std_logic;
SIGNAL \Add3~44_combout\ : std_logic;
SIGNAL \carry_cnt~16_combout\ : std_logic;
SIGNAL \Add3~45\ : std_logic;
SIGNAL \Add3~46_combout\ : std_logic;
SIGNAL \carry_cnt~15_combout\ : std_logic;
SIGNAL \Add3~47\ : std_logic;
SIGNAL \Add3~48_combout\ : std_logic;
SIGNAL \carry_cnt~14_combout\ : std_logic;
SIGNAL \Add3~49\ : std_logic;
SIGNAL \Add3~50_combout\ : std_logic;
SIGNAL \carry_cnt~13_combout\ : std_logic;
SIGNAL \Add3~51\ : std_logic;
SIGNAL \Add3~52_combout\ : std_logic;
SIGNAL \carry_cnt~12_combout\ : std_logic;
SIGNAL \Add3~53\ : std_logic;
SIGNAL \Add3~54_combout\ : std_logic;
SIGNAL \carry_cnt~11_combout\ : std_logic;
SIGNAL \Add3~55\ : std_logic;
SIGNAL \Add3~56_combout\ : std_logic;
SIGNAL \carry_cnt~10_combout\ : std_logic;
SIGNAL \Add3~57\ : std_logic;
SIGNAL \Add3~58_combout\ : std_logic;
SIGNAL \Equal5~0_combout\ : std_logic;
SIGNAL \Equal5~1_combout\ : std_logic;
SIGNAL \Equal5~2_combout\ : std_logic;
SIGNAL \Equal5~3_combout\ : std_logic;
SIGNAL \Equal5~4_combout\ : std_logic;
SIGNAL \sw[6]~input_o\ : std_logic;
SIGNAL \sw[9]~input_o\ : std_logic;
SIGNAL \sw[7]~input_o\ : std_logic;
SIGNAL \sw[1]~input_o\ : std_logic;
SIGNAL \sw[8]~input_o\ : std_logic;
SIGNAL \threshold[0]~2_combout\ : std_logic;
SIGNAL \Phase~1_combout\ : std_logic;
SIGNAL \Phase[3]~0_combout\ : std_logic;
SIGNAL \L|Equal6~0_combout\ : std_logic;
SIGNAL \Phase[1]~11_combout\ : std_logic;
SIGNAL \threshold[0]~3_combout\ : std_logic;
SIGNAL \Phase[0]~4_combout\ : std_logic;
SIGNAL \Phase[0]~5_combout\ : std_logic;
SIGNAL \cnt[0]~8_combout\ : std_logic;
SIGNAL \LessThan4~0_combout\ : std_logic;
SIGNAL \cnt[2]~22_combout\ : std_logic;
SIGNAL \cnt[2]~23_combout\ : std_logic;
SIGNAL \cnt[2]~25_combout\ : std_logic;
SIGNAL \cnt[2]~24_combout\ : std_logic;
SIGNAL \cnt[2]~26_combout\ : std_logic;
SIGNAL \cnt[2]~27_combout\ : std_logic;
SIGNAL \cnt[2]~28_combout\ : std_logic;
SIGNAL \cnt[2]~29_combout\ : std_logic;
SIGNAL \valid_counter[0]~29_combout\ : std_logic;
SIGNAL \~GND~combout\ : std_logic;
SIGNAL \valid_counter[0]~30\ : std_logic;
SIGNAL \valid_counter[1]~31_combout\ : std_logic;
SIGNAL \sw[0]~_wirecell_combout\ : std_logic;
SIGNAL \valid_counter[1]~32\ : std_logic;
SIGNAL \valid_counter[2]~33_combout\ : std_logic;
SIGNAL \valid_counter[2]~34\ : std_logic;
SIGNAL \valid_counter[3]~35_combout\ : std_logic;
SIGNAL \valid_counter[3]~36\ : std_logic;
SIGNAL \valid_counter[4]~37_combout\ : std_logic;
SIGNAL \valid_counter[4]~38\ : std_logic;
SIGNAL \valid_counter[5]~39_combout\ : std_logic;
SIGNAL \valid_counter[5]~40\ : std_logic;
SIGNAL \valid_counter[6]~41_combout\ : std_logic;
SIGNAL \valid_counter[6]~42\ : std_logic;
SIGNAL \valid_counter[7]~43_combout\ : std_logic;
SIGNAL \valid_counter[7]~44\ : std_logic;
SIGNAL \valid_counter[8]~45_combout\ : std_logic;
SIGNAL \valid_counter[8]~46\ : std_logic;
SIGNAL \valid_counter[9]~47_combout\ : std_logic;
SIGNAL \valid_counter[9]~48\ : std_logic;
SIGNAL \valid_counter[10]~49_combout\ : std_logic;
SIGNAL \valid_counter[10]~50\ : std_logic;
SIGNAL \valid_counter[11]~51_combout\ : std_logic;
SIGNAL \valid_counter[11]~52\ : std_logic;
SIGNAL \valid_counter[12]~53_combout\ : std_logic;
SIGNAL \valid_counter[12]~54\ : std_logic;
SIGNAL \valid_counter[13]~55_combout\ : std_logic;
SIGNAL \valid_counter[13]~56\ : std_logic;
SIGNAL \valid_counter[14]~57_combout\ : std_logic;
SIGNAL \valid_counter[14]~58\ : std_logic;
SIGNAL \valid_counter[15]~59_combout\ : std_logic;
SIGNAL \valid_counter[15]~60\ : std_logic;
SIGNAL \valid_counter[16]~61_combout\ : std_logic;
SIGNAL \valid_counter[16]~62\ : std_logic;
SIGNAL \valid_counter[17]~63_combout\ : std_logic;
SIGNAL \valid_counter[17]~64\ : std_logic;
SIGNAL \valid_counter[18]~65_combout\ : std_logic;
SIGNAL \valid_counter[18]~66\ : std_logic;
SIGNAL \valid_counter[19]~67_combout\ : std_logic;
SIGNAL \valid_counter[19]~68\ : std_logic;
SIGNAL \valid_counter[20]~69_combout\ : std_logic;
SIGNAL \valid_counter[20]~70\ : std_logic;
SIGNAL \valid_counter[21]~71_combout\ : std_logic;
SIGNAL \valid_counter[21]~72\ : std_logic;
SIGNAL \valid_counter[22]~73_combout\ : std_logic;
SIGNAL \valid_counter[22]~74\ : std_logic;
SIGNAL \valid_counter[23]~75_combout\ : std_logic;
SIGNAL \valid_counter[23]~76\ : std_logic;
SIGNAL \valid_counter[24]~77_combout\ : std_logic;
SIGNAL \valid_counter[24]~78\ : std_logic;
SIGNAL \valid_counter[25]~79_combout\ : std_logic;
SIGNAL \valid_counter[25]~80\ : std_logic;
SIGNAL \valid_counter[26]~81_combout\ : std_logic;
SIGNAL \valid_counter[26]~82\ : std_logic;
SIGNAL \valid_counter[27]~83_combout\ : std_logic;
SIGNAL \valid_counter[27]~84\ : std_logic;
SIGNAL \valid_counter[28]~85_combout\ : std_logic;
SIGNAL \Mux108~5_combout\ : std_logic;
SIGNAL \cnt[2]~7_combout\ : std_logic;
SIGNAL \cnt[2]~31_combout\ : std_logic;
SIGNAL \threshold[0]~6_combout\ : std_logic;
SIGNAL \Phase[0]~14_combout\ : std_logic;
SIGNAL \threshold[0]~4_combout\ : std_logic;
SIGNAL \threshold[0]~5_combout\ : std_logic;
SIGNAL \threshold[0]~7_combout\ : std_logic;
SIGNAL \threshold[12]~8_combout\ : std_logic;
SIGNAL \Mux108~0_combout\ : std_logic;
SIGNAL \LessThan0~0_combout\ : std_logic;
SIGNAL \LessThan0~4_combout\ : std_logic;
SIGNAL \LessThan0~2_combout\ : std_logic;
SIGNAL \LessThan0~3_combout\ : std_logic;
SIGNAL \LessThan0~1_combout\ : std_logic;
SIGNAL \LessThan0~5_combout\ : std_logic;
SIGNAL \Mux108~1_combout\ : std_logic;
SIGNAL \Mux108~2_combout\ : std_logic;
SIGNAL \Mux108~3_combout\ : std_logic;
SIGNAL \SD|Selector3~0_combout\ : std_logic;
SIGNAL \line_sensor[6]~input_o\ : std_logic;
SIGNAL \line_sensor[4]~input_o\ : std_logic;
SIGNAL \line_sensor[5]~input_o\ : std_logic;
SIGNAL \soft_left_detector|count~0_combout\ : std_logic;
SIGNAL \line_sensor[7]~input_o\ : std_logic;
SIGNAL \line_sensor[3]~input_o\ : std_logic;
SIGNAL \line_sensor[1]~input_o\ : std_logic;
SIGNAL \SD|LessThan0~0_combout\ : std_logic;
SIGNAL \SD|LessThan0~1_combout\ : std_logic;
SIGNAL \line_sensor[2]~input_o\ : std_logic;
SIGNAL \line_sensor[0]~input_o\ : std_logic;
SIGNAL \SD|LessThan0~3_combout\ : std_logic;
SIGNAL \SD|LessThan0~2_combout\ : std_logic;
SIGNAL \SD|LessThan0~4_combout\ : std_logic;
SIGNAL \soft_right_detector|count~0_combout\ : std_logic;
SIGNAL \SD|Selector3~1_combout\ : std_logic;
SIGNAL \SD|Selector3~2_combout\ : std_logic;
SIGNAL \SD|line_status_new~2_combout\ : std_logic;
SIGNAL \middle_line_detector|count~0_combout\ : std_logic;
SIGNAL \SD|LessThan4~0_combout\ : std_logic;
SIGNAL \SD|line_status_new[2]~6_combout\ : std_logic;
SIGNAL \L|Equal8~0_combout\ : std_logic;
SIGNAL \SD|Selector4~0_combout\ : std_logic;
SIGNAL \SD|line_status_new~10_combout\ : std_logic;
SIGNAL \SD|Selector5~0_combout\ : std_logic;
SIGNAL \SD|Selector5~1_combout\ : std_logic;
SIGNAL \SD|myflag~combout\ : std_logic;
SIGNAL \SD|Selector7~0_combout\ : std_logic;
SIGNAL \SD|Selector7~1_combout\ : std_logic;
SIGNAL \L|Equal10~0_combout\ : std_logic;
SIGNAL \SD|Selector9~0_combout\ : std_logic;
SIGNAL \SD|Selector7~2_combout\ : std_logic;
SIGNAL \SD|Selector7~2clkctrl_outclk\ : std_logic;
SIGNAL \SD|line_status_new~7_combout\ : std_logic;
SIGNAL \SD|line_status_new~8_combout\ : std_logic;
SIGNAL \SD|Selector3~3_combout\ : std_logic;
SIGNAL \SS|Selector26~0_combout\ : std_logic;
SIGNAL \SD|line_status_new~4_combout\ : std_logic;
SIGNAL \SD|line_status_new~5_combout\ : std_logic;
SIGNAL \SD|Selector0~7_combout\ : std_logic;
SIGNAL \SD|line_status_new~3_combout\ : std_logic;
SIGNAL \SD|Selector0~2_combout\ : std_logic;
SIGNAL \SD|Selector0~4_combout\ : std_logic;
SIGNAL \SD|Selector0~5_combout\ : std_logic;
SIGNAL \SD|Selector0~9_combout\ : std_logic;
SIGNAL \SD|Selector0~6_combout\ : std_logic;
SIGNAL \SD|Selector0~8_combout\ : std_logic;
SIGNAL \Mux108~4_combout\ : std_logic;
SIGNAL \cnt[2]~30_combout\ : std_logic;
SIGNAL \cnt[0]~9\ : std_logic;
SIGNAL \cnt[1]~10_combout\ : std_logic;
SIGNAL \cnt[1]~11\ : std_logic;
SIGNAL \cnt[2]~12_combout\ : std_logic;
SIGNAL \cnt[2]~13\ : std_logic;
SIGNAL \cnt[3]~14_combout\ : std_logic;
SIGNAL \cnt[3]~15\ : std_logic;
SIGNAL \cnt[4]~16_combout\ : std_logic;
SIGNAL \cnt[4]~17\ : std_logic;
SIGNAL \cnt[5]~18_combout\ : std_logic;
SIGNAL \cnt[5]~19\ : std_logic;
SIGNAL \cnt[6]~20_combout\ : std_logic;
SIGNAL \Mux108~6_combout\ : std_logic;
SIGNAL \Phase[0]~7_combout\ : std_logic;
SIGNAL \Phase[0]~6_combout\ : std_logic;
SIGNAL \Phase[0]~8_combout\ : std_logic;
SIGNAL \Phase[0]~9_combout\ : std_logic;
SIGNAL \Phase[1]~12_combout\ : std_logic;
SIGNAL \Phase[1]~13_combout\ : std_logic;
SIGNAL \L|Equal12~0_combout\ : std_logic;
SIGNAL \L|Selector0~0_combout\ : std_logic;
SIGNAL \Phase[0]~feeder_combout\ : std_logic;
SIGNAL \L|Equal10~1_combout\ : std_logic;
SIGNAL \Phase[2]~2_combout\ : std_logic;
SIGNAL \Phase[2]~3_combout\ : std_logic;
SIGNAL \Phase[2]~10_combout\ : std_logic;
SIGNAL \L|Equal7~0_combout\ : std_logic;
SIGNAL \SD|Selector9~1_combout\ : std_logic;
SIGNAL \SD|Selector9~2_combout\ : std_logic;
SIGNAL \SD|Selector8~0_combout\ : std_logic;
SIGNAL \SD|Selector0~3_combout\ : std_logic;
SIGNAL \SD|line_status_new~9_combout\ : std_logic;
SIGNAL \SD|Selector8~2_combout\ : std_logic;
SIGNAL \SD|Selector8~3_combout\ : std_logic;
SIGNAL \SD|Selector8~4_combout\ : std_logic;
SIGNAL \SD|Selector8~1_combout\ : std_logic;
SIGNAL \SD|Selector8~5_combout\ : std_logic;
SIGNAL \SD|Selector8~6_combout\ : std_logic;
SIGNAL \L|Equal3~2_combout\ : std_logic;
SIGNAL \SS|speed_left[31]~0_combout\ : std_logic;
SIGNAL \SS|Selector71~2_combout\ : std_logic;
SIGNAL \SS|Selector71~0_combout\ : std_logic;
SIGNAL \SS|Selector71~1_combout\ : std_logic;
SIGNAL \SS|Selector71~3_combout\ : std_logic;
SIGNAL \SS|Selector71~3clkctrl_outclk\ : std_logic;
SIGNAL \L|Equal8~2_combout\ : std_logic;
SIGNAL \force_move~0_combout\ : std_logic;
SIGNAL \Mux108~7_combout\ : std_logic;
SIGNAL \Mux108~8_combout\ : std_logic;
SIGNAL \force_move~q\ : std_logic;
SIGNAL \L|Equal3~0_combout\ : std_logic;
SIGNAL \SS|Selector20~2_combout\ : std_logic;
SIGNAL \L|Equal3~1_combout\ : std_logic;
SIGNAL \SS|boost_speed[8]~0_combout\ : std_logic;
SIGNAL \SS|boost_speed[8]~1_combout\ : std_logic;
SIGNAL \SS|boost_speed[8]~1clkctrl_outclk\ : std_logic;
SIGNAL \SS|Selector20~3_combout\ : std_logic;
SIGNAL \SS|Selector20~4_combout\ : std_logic;
SIGNAL \SS|Selector20~5_combout\ : std_logic;
SIGNAL \SS|Selector25~0_combout\ : std_logic;
SIGNAL \L|Equal3~3_combout\ : std_logic;
SIGNAL \SS|Selector21~2_combout\ : std_logic;
SIGNAL \SS|Selector21~1_combout\ : std_logic;
SIGNAL \SS|Selector21~0_combout\ : std_logic;
SIGNAL \SS|Selector21~3_combout\ : std_logic;
SIGNAL \SS|Selector22~0_combout\ : std_logic;
SIGNAL \SS|Selector22~1_combout\ : std_logic;
SIGNAL \SS|Selector22~5_combout\ : std_logic;
SIGNAL \SS|Selector22~3_combout\ : std_logic;
SIGNAL \SS|Selector22~2_combout\ : std_logic;
SIGNAL \SS|Selector22~4_combout\ : std_logic;
SIGNAL \SS|Selector22~6_combout\ : std_logic;
SIGNAL \SS|Selector54~0_combout\ : std_logic;
SIGNAL \L|Equal3~4_combout\ : std_logic;
SIGNAL \SS|Selector54~1_combout\ : std_logic;
SIGNAL \SS|Selector23~5_combout\ : std_logic;
SIGNAL \SS|Selector23~4_combout\ : std_logic;
SIGNAL \SS|Selector24~2_combout\ : std_logic;
SIGNAL \SS|speed_left~1_combout\ : std_logic;
SIGNAL \SS|Selector24~3_combout\ : std_logic;
SIGNAL \SS|Selector24~0_combout\ : std_logic;
SIGNAL \SS|Selector24~1_combout\ : std_logic;
SIGNAL \SS|Selector24~4_combout\ : std_logic;
SIGNAL \SS|Selector25~3_combout\ : std_logic;
SIGNAL \SS|Selector25~1_combout\ : std_logic;
SIGNAL \SS|Selector25~2_combout\ : std_logic;
SIGNAL \SS|Selector25~4_combout\ : std_logic;
SIGNAL \SS|Selector58~0_combout\ : std_logic;
SIGNAL \SS|Selector26~1_combout\ : std_logic;
SIGNAL \SS|Selector26~2_combout\ : std_logic;
SIGNAL \SS|Selector26~3_combout\ : std_logic;
SIGNAL \SS|Selector26~4_combout\ : std_logic;
SIGNAL \SS|Selector26~5_combout\ : std_logic;
SIGNAL \SS|Selector27~2_combout\ : std_logic;
SIGNAL \SS|Selector27~3_combout\ : std_logic;
SIGNAL \L|Equal7~1_combout\ : std_logic;
SIGNAL \SS|Selector28~1_combout\ : std_logic;
SIGNAL \SS|Selector28~0_combout\ : std_logic;
SIGNAL \SS|Selector28~2_combout\ : std_logic;
SIGNAL \SS|Selector29~0_combout\ : std_logic;
SIGNAL \SS|Selector30~0_combout\ : std_logic;
SIGNAL \SS|Selector30~1_combout\ : std_logic;
SIGNAL \L|Equal8~1_combout\ : std_logic;
SIGNAL \SS|Selector30~2_combout\ : std_logic;
SIGNAL \SS|Selector31~4_combout\ : std_logic;
SIGNAL \SS|Selector22~7_combout\ : std_logic;
SIGNAL \SS|Selector31~5_combout\ : std_logic;
SIGNAL \SS|Selector31~7_combout\ : std_logic;
SIGNAL \SS|Selector31~6_combout\ : std_logic;
SIGNAL \L|Selector11~3_combout\ : std_logic;
SIGNAL \L|Selector11~2_combout\ : std_logic;
SIGNAL \SS|Selector72~0_combout\ : std_logic;
SIGNAL \SS|Selector72~1_combout\ : std_logic;
SIGNAL \LessThan7~1_cout\ : std_logic;
SIGNAL \LessThan7~3_cout\ : std_logic;
SIGNAL \LessThan7~5_cout\ : std_logic;
SIGNAL \LessThan7~7_cout\ : std_logic;
SIGNAL \LessThan7~9_cout\ : std_logic;
SIGNAL \LessThan7~11_cout\ : std_logic;
SIGNAL \LessThan7~13_cout\ : std_logic;
SIGNAL \LessThan7~15_cout\ : std_logic;
SIGNAL \LessThan7~17_cout\ : std_logic;
SIGNAL \LessThan7~19_cout\ : std_logic;
SIGNAL \LessThan7~21_cout\ : std_logic;
SIGNAL \LessThan7~23_cout\ : std_logic;
SIGNAL \LessThan7~25_cout\ : std_logic;
SIGNAL \LessThan7~26_combout\ : std_logic;
SIGNAL \motor_left~0_combout\ : std_logic;
SIGNAL \motor_left~reg0_q\ : std_logic;
SIGNAL \SS|Selector52~2_combout\ : std_logic;
SIGNAL \SS|Selector53~2_combout\ : std_logic;
SIGNAL \SS|Selector53~4_combout\ : std_logic;
SIGNAL \SS|Selector53~3_combout\ : std_logic;
SIGNAL \L|Equal3~5_combout\ : std_logic;
SIGNAL \SS|Selector54~2_combout\ : std_logic;
SIGNAL \SS|Selector54~3_combout\ : std_logic;
SIGNAL \SS|Selector54~4_combout\ : std_logic;
SIGNAL \SS|Selector54~5_combout\ : std_logic;
SIGNAL \SS|Selector55~0_combout\ : std_logic;
SIGNAL \SS|Selector55~1_combout\ : std_logic;
SIGNAL \SS|Selector56~2_combout\ : std_logic;
SIGNAL \SS|Selector56~3_combout\ : std_logic;
SIGNAL \SS|Selector56~0_combout\ : std_logic;
SIGNAL \SS|Selector56~1_combout\ : std_logic;
SIGNAL \SS|Selector56~4_combout\ : std_logic;
SIGNAL \SS|Selector57~1_combout\ : std_logic;
SIGNAL \SS|Selector57~0_combout\ : std_logic;
SIGNAL \SS|Selector57~2_combout\ : std_logic;
SIGNAL \SS|Selector58~1_combout\ : std_logic;
SIGNAL \SS|Selector58~2_combout\ : std_logic;
SIGNAL \SS|Selector58~3_combout\ : std_logic;
SIGNAL \SS|Selector59~0_combout\ : std_logic;
SIGNAL \SS|Selector59~1_combout\ : std_logic;
SIGNAL \SS|Selector60~0_combout\ : std_logic;
SIGNAL \SS|Selector60~1_combout\ : std_logic;
SIGNAL \SS|Selector61~2_combout\ : std_logic;
SIGNAL \SS|Selector62~0_combout\ : std_logic;
SIGNAL \SS|Selector56~5_combout\ : std_logic;
SIGNAL \SS|Selector62~1_combout\ : std_logic;
SIGNAL \SS|Selector63~8_combout\ : std_logic;
SIGNAL \SS|Selector63~5_combout\ : std_logic;
SIGNAL \SS|Selector63~6_combout\ : std_logic;
SIGNAL \SS|Selector63~4_combout\ : std_logic;
SIGNAL \SS|Selector63~7_combout\ : std_logic;
SIGNAL \LessThan9~1_cout\ : std_logic;
SIGNAL \LessThan9~3_cout\ : std_logic;
SIGNAL \LessThan9~5_cout\ : std_logic;
SIGNAL \LessThan9~7_cout\ : std_logic;
SIGNAL \LessThan9~9_cout\ : std_logic;
SIGNAL \LessThan9~11_cout\ : std_logic;
SIGNAL \LessThan9~13_cout\ : std_logic;
SIGNAL \LessThan9~15_cout\ : std_logic;
SIGNAL \LessThan9~17_cout\ : std_logic;
SIGNAL \LessThan9~19_cout\ : std_logic;
SIGNAL \LessThan9~21_cout\ : std_logic;
SIGNAL \LessThan9~23_cout\ : std_logic;
SIGNAL \LessThan9~24_combout\ : std_logic;
SIGNAL \motor_right~0_combout\ : std_logic;
SIGNAL \motor_right~reg0_q\ : std_logic;
SIGNAL \sw[3]~input_o\ : std_logic;
SIGNAL \sw[2]~input_o\ : std_logic;
SIGNAL \L|Equal17~0_combout\ : std_logic;
SIGNAL \L|Equal17~0clkctrl_outclk\ : std_logic;
SIGNAL \L|led1~0_combout\ : std_logic;
SIGNAL \L|Selector7~4_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|add_sub_3_result_int[1]~1\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|add_sub_3_result_int[2]~3\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|add_sub_3_result_int[3]~5\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|add_sub_3_result_int[3]~4_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|StageOut[24]~39_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|StageOut[24]~38_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|StageOut[23]~40_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|add_sub_3_result_int[2]~2_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|StageOut[23]~41_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|StageOut[22]~42_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|add_sub_3_result_int[1]~0_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|StageOut[22]~43_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|StageOut[21]~45_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|StageOut[21]~44_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|add_sub_4_result_int[1]~1\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|add_sub_4_result_int[2]~3\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|add_sub_4_result_int[3]~5\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|add_sub_4_result_int[4]~7\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|StageOut[28]~51_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|StageOut[28]~52_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|add_sub_5_result_int[1]~0_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|StageOut[32]~70_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|add_sub_4_result_int[4]~6_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|StageOut[32]~46_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|add_sub_4_result_int[3]~4_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|StageOut[31]~47_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|StageOut[31]~71_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|add_sub_4_result_int[2]~2_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|StageOut[30]~48_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|StageOut[30]~72_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|StageOut[29]~49_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|add_sub_4_result_int[1]~0_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|StageOut[29]~50_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|add_sub_5_result_int[1]~1\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|add_sub_5_result_int[2]~3\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|add_sub_5_result_int[3]~5\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|add_sub_5_result_int[4]~7\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|add_sub_5_result_int[5]~9\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|StageOut[36]~58_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|StageOut[36]~57_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|StageOut[40]~53_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|StageOut[40]~67_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|StageOut[39]~68_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|add_sub_5_result_int[4]~6_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|StageOut[39]~54_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|add_sub_5_result_int[3]~4_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|StageOut[38]~55_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|StageOut[38]~69_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|add_sub_5_result_int[2]~2_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|StageOut[37]~56_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|StageOut[37]~73_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|StageOut[35]~59_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|StageOut[35]~60_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|add_sub_6_result_int[1]~1\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|add_sub_6_result_int[2]~3\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|add_sub_6_result_int[3]~5\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|add_sub_6_result_int[4]~7\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|add_sub_6_result_int[5]~9\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|add_sub_6_result_int[6]~11\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|add_sub_6_result_int[7]~12_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|add_sub_6_result_int[2]~2_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|StageOut[44]~65_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|StageOut[47]~62_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|add_sub_6_result_int[1]~0_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|StageOut[43]~66_combout\ : std_logic;
SIGNAL \L|LessThan0~1_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|add_sub_6_result_int[4]~6_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|StageOut[46]~63_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|add_sub_6_result_int[6]~10_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|StageOut[48]~61_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|add_sub_6_result_int[3]~4_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|StageOut[45]~64_combout\ : std_logic;
SIGNAL \L|Add0~1\ : std_logic;
SIGNAL \L|Add0~3\ : std_logic;
SIGNAL \L|Add0~5\ : std_logic;
SIGNAL \L|Add0~7\ : std_logic;
SIGNAL \L|Add0~9\ : std_logic;
SIGNAL \L|Add0~11\ : std_logic;
SIGNAL \L|Add0~13\ : std_logic;
SIGNAL \L|Add0~15\ : std_logic;
SIGNAL \L|Add0~16_combout\ : std_logic;
SIGNAL \L|LessThan0~0_combout\ : std_logic;
SIGNAL \L|Selector4~0_combout\ : std_logic;
SIGNAL \L|Selector11~0_combout\ : std_logic;
SIGNAL \L|Selector11~1_combout\ : std_logic;
SIGNAL \L|Selector7~0_combout\ : std_logic;
SIGNAL \L|Selector7~1_combout\ : std_logic;
SIGNAL \L|Add0~2_combout\ : std_logic;
SIGNAL \L|Add0~0_combout\ : std_logic;
SIGNAL \L|Add0~14_combout\ : std_logic;
SIGNAL \L|Add0~4_combout\ : std_logic;
SIGNAL \L|Add0~8_combout\ : std_logic;
SIGNAL \L|Add0~12_combout\ : std_logic;
SIGNAL \L|Add0~6_combout\ : std_logic;
SIGNAL \L|Add0~10_combout\ : std_logic;
SIGNAL \L|LessThan2~0_combout\ : std_logic;
SIGNAL \L|LessThan2~1_combout\ : std_logic;
SIGNAL \L|Selector7~2_combout\ : std_logic;
SIGNAL \L|Selector7~3_combout\ : std_logic;
SIGNAL \L|Selector6~0_combout\ : std_logic;
SIGNAL \L|Selector6~2_combout\ : std_logic;
SIGNAL \L|Selector6~1_combout\ : std_logic;
SIGNAL \L|Selector6~3_combout\ : std_logic;
SIGNAL \L|Selector5~0_combout\ : std_logic;
SIGNAL \L|Selector5~1_combout\ : std_logic;
SIGNAL \L|Selector5~2_combout\ : std_logic;
SIGNAL \L|Selector5~3_combout\ : std_logic;
SIGNAL \L|Selector4~1_combout\ : std_logic;
SIGNAL \L|Selector4~2_combout\ : std_logic;
SIGNAL \L|Selector3~0_combout\ : std_logic;
SIGNAL \L|Selector3~1_combout\ : std_logic;
SIGNAL \L|Selector3~2_combout\ : std_logic;
SIGNAL \L|Selector3~3_combout\ : std_logic;
SIGNAL \L|Selector3~4_combout\ : std_logic;
SIGNAL \L|Selector2~0_combout\ : std_logic;
SIGNAL \L|Selector2~1_combout\ : std_logic;
SIGNAL \L|Selector1~2_combout\ : std_logic;
SIGNAL \L|Selector1~3_combout\ : std_logic;
SIGNAL \L|Selector0~2_combout\ : std_logic;
SIGNAL \L|Selector0~1_combout\ : std_logic;
SIGNAL \L|Selector0~3_combout\ : std_logic;
SIGNAL \L|Selector9~0_combout\ : std_logic;
SIGNAL \L|Selector9~1_combout\ : std_logic;
SIGNAL \L|Selector9~2_combout\ : std_logic;
SIGNAL \lp|current_second[0]~9_combout\ : std_logic;
SIGNAL \LessThan5~2_combout\ : std_logic;
SIGNAL \Mux109~0_combout\ : std_logic;
SIGNAL \done_flag~q\ : std_logic;
SIGNAL \lp|process_0~0_combout\ : std_logic;
SIGNAL \lp|count~4_combout\ : std_logic;
SIGNAL \lp|Add0~0_combout\ : std_logic;
SIGNAL \lp|count~0_combout\ : std_logic;
SIGNAL \lp|Add0~1\ : std_logic;
SIGNAL \lp|Add0~2_combout\ : std_logic;
SIGNAL \lp|count~1_combout\ : std_logic;
SIGNAL \lp|Add0~3\ : std_logic;
SIGNAL \lp|Add0~4_combout\ : std_logic;
SIGNAL \lp|count~2_combout\ : std_logic;
SIGNAL \lp|Add0~5\ : std_logic;
SIGNAL \lp|Add0~6_combout\ : std_logic;
SIGNAL \lp|count~3_combout\ : std_logic;
SIGNAL \lp|Add0~7\ : std_logic;
SIGNAL \lp|Add0~8_combout\ : std_logic;
SIGNAL \lp|count~7_combout\ : std_logic;
SIGNAL \lp|Add0~9\ : std_logic;
SIGNAL \lp|Add0~10_combout\ : std_logic;
SIGNAL \lp|count~6_combout\ : std_logic;
SIGNAL \lp|Add0~11\ : std_logic;
SIGNAL \lp|Add0~12_combout\ : std_logic;
SIGNAL \lp|count~5_combout\ : std_logic;
SIGNAL \lp|Add0~13\ : std_logic;
SIGNAL \lp|Add0~14_combout\ : std_logic;
SIGNAL \lp|Equal0~1_combout\ : std_logic;
SIGNAL \lp|count~15_combout\ : std_logic;
SIGNAL \lp|Add0~15\ : std_logic;
SIGNAL \lp|Add0~16_combout\ : std_logic;
SIGNAL \lp|count~8_combout\ : std_logic;
SIGNAL \lp|Add0~17\ : std_logic;
SIGNAL \lp|Add0~18_combout\ : std_logic;
SIGNAL \lp|count~9_combout\ : std_logic;
SIGNAL \lp|Add0~19\ : std_logic;
SIGNAL \lp|Add0~20_combout\ : std_logic;
SIGNAL \lp|count~10_combout\ : std_logic;
SIGNAL \lp|Add0~21\ : std_logic;
SIGNAL \lp|Add0~22_combout\ : std_logic;
SIGNAL \lp|count~11_combout\ : std_logic;
SIGNAL \lp|Add0~23\ : std_logic;
SIGNAL \lp|Add0~24_combout\ : std_logic;
SIGNAL \lp|count~12_combout\ : std_logic;
SIGNAL \lp|Add0~25\ : std_logic;
SIGNAL \lp|Add0~26_combout\ : std_logic;
SIGNAL \lp|count~13_combout\ : std_logic;
SIGNAL \lp|Add0~27\ : std_logic;
SIGNAL \lp|Add0~28_combout\ : std_logic;
SIGNAL \lp|count~14_combout\ : std_logic;
SIGNAL \lp|Add0~29\ : std_logic;
SIGNAL \lp|Add0~30_combout\ : std_logic;
SIGNAL \lp|Equal0~3_combout\ : std_logic;
SIGNAL \lp|Equal0~0_combout\ : std_logic;
SIGNAL \lp|Equal0~2_combout\ : std_logic;
SIGNAL \lp|Equal0~4_combout\ : std_logic;
SIGNAL \lp|count~20_combout\ : std_logic;
SIGNAL \lp|Add0~31\ : std_logic;
SIGNAL \lp|Add0~32_combout\ : std_logic;
SIGNAL \lp|count~16_combout\ : std_logic;
SIGNAL \lp|Add0~33\ : std_logic;
SIGNAL \lp|Add0~34_combout\ : std_logic;
SIGNAL \lp|count~18_combout\ : std_logic;
SIGNAL \lp|Add0~35\ : std_logic;
SIGNAL \lp|Add0~36_combout\ : std_logic;
SIGNAL \lp|count~17_combout\ : std_logic;
SIGNAL \lp|Add0~37\ : std_logic;
SIGNAL \lp|Add0~38_combout\ : std_logic;
SIGNAL \lp|count~19_combout\ : std_logic;
SIGNAL \lp|Add0~39\ : std_logic;
SIGNAL \lp|Add0~40_combout\ : std_logic;
SIGNAL \lp|count~23_combout\ : std_logic;
SIGNAL \lp|Add0~41\ : std_logic;
SIGNAL \lp|Add0~42_combout\ : std_logic;
SIGNAL \lp|count~21_combout\ : std_logic;
SIGNAL \lp|Add0~43\ : std_logic;
SIGNAL \lp|Add0~44_combout\ : std_logic;
SIGNAL \lp|count~22_combout\ : std_logic;
SIGNAL \lp|Add0~45\ : std_logic;
SIGNAL \lp|Add0~46_combout\ : std_logic;
SIGNAL \lp|Equal0~6_combout\ : std_logic;
SIGNAL \lp|count~25_combout\ : std_logic;
SIGNAL \lp|Add0~47\ : std_logic;
SIGNAL \lp|Add0~48_combout\ : std_logic;
SIGNAL \lp|count~24_combout\ : std_logic;
SIGNAL \lp|Add0~49\ : std_logic;
SIGNAL \lp|Add0~50_combout\ : std_logic;
SIGNAL \lp|Equal0~5_combout\ : std_logic;
SIGNAL \lp|Equal0~7_combout\ : std_logic;
SIGNAL \lp|current_second[8]~27_combout\ : std_logic;
SIGNAL \lp|t0[0]~0_combout\ : std_logic;
SIGNAL \lp|current_second[0]~10\ : std_logic;
SIGNAL \lp|current_second[1]~11_combout\ : std_logic;
SIGNAL \lp|current_second[1]~12\ : std_logic;
SIGNAL \lp|current_second[2]~13_combout\ : std_logic;
SIGNAL \lp|current_second[2]~14\ : std_logic;
SIGNAL \lp|current_second[3]~15_combout\ : std_logic;
SIGNAL \lp|current_second[3]~feeder_combout\ : std_logic;
SIGNAL \lp|current_second[3]~16\ : std_logic;
SIGNAL \lp|current_second[4]~17_combout\ : std_logic;
SIGNAL \lp|current_second[4]~feeder_combout\ : std_logic;
SIGNAL \lp|current_second[4]~18\ : std_logic;
SIGNAL \lp|current_second[5]~19_combout\ : std_logic;
SIGNAL \lp|current_second[5]~20\ : std_logic;
SIGNAL \lp|current_second[6]~21_combout\ : std_logic;
SIGNAL \lp|current_second[6]~22\ : std_logic;
SIGNAL \lp|current_second[7]~23_combout\ : std_logic;
SIGNAL \lp|current_second[7]~24\ : std_logic;
SIGNAL \lp|current_second[8]~25_combout\ : std_logic;
SIGNAL \lp|Mod0|auto_generated|divider|divider|add_sub_3_result_int[1]~1\ : std_logic;
SIGNAL \lp|Mod0|auto_generated|divider|divider|add_sub_3_result_int[2]~3\ : std_logic;
SIGNAL \lp|Mod0|auto_generated|divider|divider|add_sub_3_result_int[3]~4_combout\ : std_logic;
SIGNAL \lp|Mod0|auto_generated|divider|divider|add_sub_3_result_int[3]~5\ : std_logic;
SIGNAL \lp|Mod0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\ : std_logic;
SIGNAL \lp|Mod0|auto_generated|divider|divider|StageOut[30]~73_combout\ : std_logic;
SIGNAL \lp|Mod0|auto_generated|divider|divider|StageOut[30]~72_combout\ : std_logic;
SIGNAL \lp|Mod0|auto_generated|divider|divider|StageOut[29]~74_combout\ : std_logic;
SIGNAL \lp|Mod0|auto_generated|divider|divider|add_sub_3_result_int[2]~2_combout\ : std_logic;
SIGNAL \lp|Mod0|auto_generated|divider|divider|StageOut[29]~75_combout\ : std_logic;
SIGNAL \lp|Mod0|auto_generated|divider|divider|add_sub_3_result_int[1]~0_combout\ : std_logic;
SIGNAL \lp|Mod0|auto_generated|divider|divider|StageOut[28]~77_combout\ : std_logic;
SIGNAL \lp|Mod0|auto_generated|divider|divider|StageOut[28]~76_combout\ : std_logic;
SIGNAL \lp|Mod0|auto_generated|divider|divider|StageOut[27]~79_combout\ : std_logic;
SIGNAL \lp|Mod0|auto_generated|divider|divider|StageOut[27]~78_combout\ : std_logic;
SIGNAL \lp|Mod0|auto_generated|divider|divider|add_sub_4_result_int[1]~1\ : std_logic;
SIGNAL \lp|Mod0|auto_generated|divider|divider|add_sub_4_result_int[2]~3\ : std_logic;
SIGNAL \lp|Mod0|auto_generated|divider|divider|add_sub_4_result_int[3]~5\ : std_logic;
SIGNAL \lp|Mod0|auto_generated|divider|divider|add_sub_4_result_int[4]~7\ : std_logic;
SIGNAL \lp|Mod0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\ : std_logic;
SIGNAL \lp|Mod0|auto_generated|divider|divider|StageOut[40]~129_combout\ : std_logic;
SIGNAL \lp|Mod0|auto_generated|divider|divider|add_sub_4_result_int[4]~6_combout\ : std_logic;
SIGNAL \lp|Mod0|auto_generated|divider|divider|StageOut[40]~80_combout\ : std_logic;
SIGNAL \lp|Mod0|auto_generated|divider|divider|StageOut[39]~130_combout\ : std_logic;
SIGNAL \lp|Mod0|auto_generated|divider|divider|add_sub_4_result_int[3]~4_combout\ : std_logic;
SIGNAL \lp|Mod0|auto_generated|divider|divider|StageOut[39]~81_combout\ : std_logic;
SIGNAL \lp|Mod0|auto_generated|divider|divider|StageOut[38]~131_combout\ : std_logic;
SIGNAL \lp|Mod0|auto_generated|divider|divider|add_sub_4_result_int[2]~2_combout\ : std_logic;
SIGNAL \lp|Mod0|auto_generated|divider|divider|StageOut[38]~82_combout\ : std_logic;
SIGNAL \lp|Mod0|auto_generated|divider|divider|StageOut[37]~83_combout\ : std_logic;
SIGNAL \lp|Mod0|auto_generated|divider|divider|add_sub_4_result_int[1]~0_combout\ : std_logic;
SIGNAL \lp|Mod0|auto_generated|divider|divider|StageOut[37]~84_combout\ : std_logic;
SIGNAL \lp|Mod0|auto_generated|divider|divider|StageOut[36]~85_combout\ : std_logic;
SIGNAL \lp|Mod0|auto_generated|divider|divider|StageOut[36]~86_combout\ : std_logic;
SIGNAL \lp|Mod0|auto_generated|divider|divider|add_sub_5_result_int[1]~1\ : std_logic;
SIGNAL \lp|Mod0|auto_generated|divider|divider|add_sub_5_result_int[2]~3\ : std_logic;
SIGNAL \lp|Mod0|auto_generated|divider|divider|add_sub_5_result_int[3]~5\ : std_logic;
SIGNAL \lp|Mod0|auto_generated|divider|divider|add_sub_5_result_int[4]~7\ : std_logic;
SIGNAL \lp|Mod0|auto_generated|divider|divider|add_sub_5_result_int[5]~9\ : std_logic;
SIGNAL \lp|Mod0|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\ : std_logic;
SIGNAL \lp|Mod0|auto_generated|divider|divider|StageOut[50]~117_combout\ : std_logic;
SIGNAL \lp|Mod0|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\ : std_logic;
SIGNAL \lp|Mod0|auto_generated|divider|divider|StageOut[50]~87_combout\ : std_logic;
SIGNAL \lp|Mod0|auto_generated|divider|divider|add_sub_5_result_int[4]~6_combout\ : std_logic;
SIGNAL \lp|Mod0|auto_generated|divider|divider|StageOut[49]~88_combout\ : std_logic;
SIGNAL \lp|Mod0|auto_generated|divider|divider|StageOut[49]~118_combout\ : std_logic;
SIGNAL \lp|Mod0|auto_generated|divider|divider|add_sub_5_result_int[3]~4_combout\ : std_logic;
SIGNAL \lp|Mod0|auto_generated|divider|divider|StageOut[48]~89_combout\ : std_logic;
SIGNAL \lp|Mod0|auto_generated|divider|divider|StageOut[48]~119_combout\ : std_logic;
SIGNAL \lp|Mod0|auto_generated|divider|divider|StageOut[47]~132_combout\ : std_logic;
SIGNAL \lp|Mod0|auto_generated|divider|divider|add_sub_5_result_int[2]~2_combout\ : std_logic;
SIGNAL \lp|Mod0|auto_generated|divider|divider|StageOut[47]~90_combout\ : std_logic;
SIGNAL \lp|Mod0|auto_generated|divider|divider|StageOut[46]~91_combout\ : std_logic;
SIGNAL \lp|Mod0|auto_generated|divider|divider|add_sub_5_result_int[1]~0_combout\ : std_logic;
SIGNAL \lp|Mod0|auto_generated|divider|divider|StageOut[46]~92_combout\ : std_logic;
SIGNAL \lp|Mod0|auto_generated|divider|divider|StageOut[45]~93_combout\ : std_logic;
SIGNAL \lp|Mod0|auto_generated|divider|divider|StageOut[45]~94_combout\ : std_logic;
SIGNAL \lp|Mod0|auto_generated|divider|divider|add_sub_6_result_int[1]~1\ : std_logic;
SIGNAL \lp|Mod0|auto_generated|divider|divider|add_sub_6_result_int[2]~3\ : std_logic;
SIGNAL \lp|Mod0|auto_generated|divider|divider|add_sub_6_result_int[3]~5\ : std_logic;
SIGNAL \lp|Mod0|auto_generated|divider|divider|add_sub_6_result_int[4]~7\ : std_logic;
SIGNAL \lp|Mod0|auto_generated|divider|divider|add_sub_6_result_int[5]~9\ : std_logic;
SIGNAL \lp|Mod0|auto_generated|divider|divider|add_sub_6_result_int[6]~11\ : std_logic;
SIGNAL \lp|Mod0|auto_generated|divider|divider|add_sub_6_result_int[7]~12_combout\ : std_logic;
SIGNAL \lp|Mod0|auto_generated|divider|divider|add_sub_6_result_int[6]~10_combout\ : std_logic;
SIGNAL \lp|Mod0|auto_generated|divider|divider|StageOut[60]~95_combout\ : std_logic;
SIGNAL \lp|Mod0|auto_generated|divider|divider|StageOut[60]~120_combout\ : std_logic;
SIGNAL \lp|Mod0|auto_generated|divider|divider|StageOut[59]~121_combout\ : std_logic;
SIGNAL \lp|Mod0|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\ : std_logic;
SIGNAL \lp|Mod0|auto_generated|divider|divider|StageOut[59]~96_combout\ : std_logic;
SIGNAL \lp|Mod0|auto_generated|divider|divider|StageOut[58]~122_combout\ : std_logic;
SIGNAL \lp|Mod0|auto_generated|divider|divider|add_sub_6_result_int[4]~6_combout\ : std_logic;
SIGNAL \lp|Mod0|auto_generated|divider|divider|StageOut[58]~97_combout\ : std_logic;
SIGNAL \lp|Mod0|auto_generated|divider|divider|StageOut[57]~123_combout\ : std_logic;
SIGNAL \lp|Mod0|auto_generated|divider|divider|add_sub_6_result_int[3]~4_combout\ : std_logic;
SIGNAL \lp|Mod0|auto_generated|divider|divider|StageOut[57]~98_combout\ : std_logic;
SIGNAL \lp|Mod0|auto_generated|divider|divider|StageOut[56]~133_combout\ : std_logic;
SIGNAL \lp|Mod0|auto_generated|divider|divider|add_sub_6_result_int[2]~2_combout\ : std_logic;
SIGNAL \lp|Mod0|auto_generated|divider|divider|StageOut[56]~99_combout\ : std_logic;
SIGNAL \lp|Mod0|auto_generated|divider|divider|StageOut[55]~100_combout\ : std_logic;
SIGNAL \lp|Mod0|auto_generated|divider|divider|add_sub_6_result_int[1]~0_combout\ : std_logic;
SIGNAL \lp|Mod0|auto_generated|divider|divider|StageOut[55]~101_combout\ : std_logic;
SIGNAL \lp|Mod0|auto_generated|divider|divider|StageOut[54]~103_combout\ : std_logic;
SIGNAL \lp|Mod0|auto_generated|divider|divider|StageOut[54]~102_combout\ : std_logic;
SIGNAL \lp|Mod0|auto_generated|divider|divider|add_sub_7_result_int[1]~1\ : std_logic;
SIGNAL \lp|Mod0|auto_generated|divider|divider|add_sub_7_result_int[2]~3\ : std_logic;
SIGNAL \lp|Mod0|auto_generated|divider|divider|add_sub_7_result_int[3]~5\ : std_logic;
SIGNAL \lp|Mod0|auto_generated|divider|divider|add_sub_7_result_int[4]~7\ : std_logic;
SIGNAL \lp|Mod0|auto_generated|divider|divider|add_sub_7_result_int[5]~9\ : std_logic;
SIGNAL \lp|Mod0|auto_generated|divider|divider|add_sub_7_result_int[6]~11\ : std_logic;
SIGNAL \lp|Mod0|auto_generated|divider|divider|add_sub_7_result_int[7]~13\ : std_logic;
SIGNAL \lp|Mod0|auto_generated|divider|divider|add_sub_7_result_int[8]~14_combout\ : std_logic;
SIGNAL \lp|Mod0|auto_generated|divider|divider|StageOut[65]~134_combout\ : std_logic;
SIGNAL \lp|Mod0|auto_generated|divider|divider|add_sub_7_result_int[2]~2_combout\ : std_logic;
SIGNAL \lp|Mod0|auto_generated|divider|divider|StageOut[65]~104_combout\ : std_logic;
SIGNAL \lp|Mod0|auto_generated|divider|divider|add_sub_7_result_int[1]~0_combout\ : std_logic;
SIGNAL \lp|Mod0|auto_generated|divider|divider|StageOut[64]~106_combout\ : std_logic;
SIGNAL \lp|Mod0|auto_generated|divider|divider|StageOut[64]~105_combout\ : std_logic;
SIGNAL \lp|Mod0|auto_generated|divider|divider|StageOut[63]~108_combout\ : std_logic;
SIGNAL \lp|Mod0|auto_generated|divider|divider|StageOut[63]~107_combout\ : std_logic;
SIGNAL \lp|Mod0|auto_generated|divider|divider|add_sub_8_result_int[1]~1\ : std_logic;
SIGNAL \lp|Mod0|auto_generated|divider|divider|add_sub_8_result_int[2]~3\ : std_logic;
SIGNAL \lp|Mod0|auto_generated|divider|divider|add_sub_8_result_int[3]~4_combout\ : std_logic;
SIGNAL \lp|Mod0|auto_generated|divider|divider|add_sub_7_result_int[7]~12_combout\ : std_logic;
SIGNAL \lp|Mod0|auto_generated|divider|divider|StageOut[70]~109_combout\ : std_logic;
SIGNAL \lp|Mod0|auto_generated|divider|divider|StageOut[70]~124_combout\ : std_logic;
SIGNAL \lp|Mod0|auto_generated|divider|divider|add_sub_7_result_int[6]~10_combout\ : std_logic;
SIGNAL \lp|Mod0|auto_generated|divider|divider|StageOut[69]~110_combout\ : std_logic;
SIGNAL \lp|Mod0|auto_generated|divider|divider|StageOut[69]~125_combout\ : std_logic;
SIGNAL \lp|Mod0|auto_generated|divider|divider|add_sub_7_result_int[5]~8_combout\ : std_logic;
SIGNAL \lp|Mod0|auto_generated|divider|divider|StageOut[68]~111_combout\ : std_logic;
SIGNAL \lp|Mod0|auto_generated|divider|divider|StageOut[68]~126_combout\ : std_logic;
SIGNAL \lp|Mod0|auto_generated|divider|divider|StageOut[67]~127_combout\ : std_logic;
SIGNAL \lp|Mod0|auto_generated|divider|divider|add_sub_7_result_int[4]~6_combout\ : std_logic;
SIGNAL \lp|Mod0|auto_generated|divider|divider|StageOut[67]~112_combout\ : std_logic;
SIGNAL \lp|Mod0|auto_generated|divider|divider|add_sub_7_result_int[3]~4_combout\ : std_logic;
SIGNAL \lp|Mod0|auto_generated|divider|divider|StageOut[66]~113_combout\ : std_logic;
SIGNAL \lp|Mod0|auto_generated|divider|divider|StageOut[66]~128_combout\ : std_logic;
SIGNAL \lp|Mod0|auto_generated|divider|divider|add_sub_8_result_int[3]~5\ : std_logic;
SIGNAL \lp|Mod0|auto_generated|divider|divider|add_sub_8_result_int[4]~7_cout\ : std_logic;
SIGNAL \lp|Mod0|auto_generated|divider|divider|add_sub_8_result_int[5]~9_cout\ : std_logic;
SIGNAL \lp|Mod0|auto_generated|divider|divider|add_sub_8_result_int[6]~11_cout\ : std_logic;
SIGNAL \lp|Mod0|auto_generated|divider|divider|add_sub_8_result_int[7]~13_cout\ : std_logic;
SIGNAL \lp|Mod0|auto_generated|divider|divider|add_sub_8_result_int[8]~15_cout\ : std_logic;
SIGNAL \lp|Mod0|auto_generated|divider|divider|add_sub_8_result_int[9]~16_combout\ : std_logic;
SIGNAL \lp|Mod0|auto_generated|divider|divider|StageOut[75]~114_combout\ : std_logic;
SIGNAL \lp|Mod0|auto_generated|divider|divider|add_sub_8_result_int[2]~2_combout\ : std_logic;
SIGNAL \lp|Mod0|auto_generated|divider|divider|StageOut[74]~115_combout\ : std_logic;
SIGNAL \lp|Mod0|auto_generated|divider|divider|add_sub_8_result_int[1]~0_combout\ : std_logic;
SIGNAL \lp|Mod0|auto_generated|divider|divider|StageOut[73]~116_combout\ : std_logic;
SIGNAL \rightspeed2|Mod0|auto_generated|divider|divider|op_24~1\ : std_logic;
SIGNAL \rightspeed2|Mod0|auto_generated|divider|divider|op_24~3\ : std_logic;
SIGNAL \rightspeed2|Mod0|auto_generated|divider|divider|op_24~5\ : std_logic;
SIGNAL \rightspeed2|Mod0|auto_generated|divider|divider|op_24~7\ : std_logic;
SIGNAL \rightspeed2|Mod0|auto_generated|divider|divider|op_24~9\ : std_logic;
SIGNAL \rightspeed2|Mod0|auto_generated|divider|divider|op_24~11\ : std_logic;
SIGNAL \rightspeed2|Mod0|auto_generated|divider|divider|op_24~13\ : std_logic;
SIGNAL \rightspeed2|Mod0|auto_generated|divider|divider|op_24~15\ : std_logic;
SIGNAL \rightspeed2|Mod0|auto_generated|divider|divider|op_24~16_combout\ : std_logic;
SIGNAL \rightspeed2|Mod0|auto_generated|divider|divider|op_24~8_combout\ : std_logic;
SIGNAL \rightspeed2|Mod0|auto_generated|divider|divider|op_24~12_combout\ : std_logic;
SIGNAL \rightspeed2|Mod0|auto_generated|divider|divider|op_24~14_combout\ : std_logic;
SIGNAL \rightspeed2|Mod0|auto_generated|divider|divider|op_24~10_combout\ : std_logic;
SIGNAL \rightspeed2|Equal9~0_combout\ : std_logic;
SIGNAL \rightspeed2|Mod0|auto_generated|divider|divider|op_24~6_combout\ : std_logic;
SIGNAL \rightspeed2|Equal9~1_combout\ : std_logic;
SIGNAL \rightspeed2|Mod0|auto_generated|divider|divider|op_24~4_combout\ : std_logic;
SIGNAL \rightspeed2|Equal1~0_combout\ : std_logic;
SIGNAL \rightspeed2|Mod0|auto_generated|divider|divider|op_24~2_combout\ : std_logic;
SIGNAL \rightspeed2|Mod0|auto_generated|divider|divider|StageOut[994]~0_combout\ : std_logic;
SIGNAL \rightspeed2|Mod0|auto_generated|divider|divider|op_24~0_combout\ : std_logic;
SIGNAL \rightspeed2|Mod0|auto_generated|divider|divider|StageOut[993]~1_combout\ : std_logic;
SIGNAL \rightspeed2|WideOr4~0_combout\ : std_logic;
SIGNAL \rightspeed2|WideNor0~0_combout\ : std_logic;
SIGNAL \rightspeed2|WideNor0~2_combout\ : std_logic;
SIGNAL \rightspeed2|WideNor0~1_combout\ : std_logic;
SIGNAL \rightspeed2|WideNor0~3_combout\ : std_logic;
SIGNAL \rightspeed2|WideOr4~combout\ : std_logic;
SIGNAL \rightspeed2|Equal1~1_combout\ : std_logic;
SIGNAL \rightspeed2|Equal2~0_combout\ : std_logic;
SIGNAL \rightspeed2|WideOr0~0_combout\ : std_logic;
SIGNAL \rightspeed2|WideOr3~combout\ : std_logic;
SIGNAL \rightspeed2|Equal9~2_combout\ : std_logic;
SIGNAL \rightspeed2|Equal9~3_combout\ : std_logic;
SIGNAL \rightspeed2|WideOr2~combout\ : std_logic;
SIGNAL \rightspeed2|WideOr1~0_combout\ : std_logic;
SIGNAL \rightspeed2|WideOr1~combout\ : std_logic;
SIGNAL \rightspeed2|WideOr0~combout\ : std_logic;
SIGNAL \lp|Mod1|auto_generated|divider|divider|add_sub_5_result_int[2]~1\ : std_logic;
SIGNAL \lp|Mod1|auto_generated|divider|divider|add_sub_5_result_int[3]~3\ : std_logic;
SIGNAL \lp|Mod1|auto_generated|divider|divider|add_sub_5_result_int[4]~5\ : std_logic;
SIGNAL \lp|Mod1|auto_generated|divider|divider|add_sub_5_result_int[5]~7\ : std_logic;
SIGNAL \lp|Mod1|auto_generated|divider|divider|add_sub_5_result_int[6]~8_combout\ : std_logic;
SIGNAL \lp|Mod1|auto_generated|divider|divider|add_sub_5_result_int[5]~6_combout\ : std_logic;
SIGNAL \lp|Mod1|auto_generated|divider|divider|StageOut[50]~79_combout\ : std_logic;
SIGNAL \lp|Mod1|auto_generated|divider|divider|StageOut[50]~78_combout\ : std_logic;
SIGNAL \lp|Mod1|auto_generated|divider|divider|StageOut[49]~80_combout\ : std_logic;
SIGNAL \lp|Mod1|auto_generated|divider|divider|add_sub_5_result_int[4]~4_combout\ : std_logic;
SIGNAL \lp|Mod1|auto_generated|divider|divider|StageOut[49]~81_combout\ : std_logic;
SIGNAL \lp|Mod1|auto_generated|divider|divider|add_sub_5_result_int[3]~2_combout\ : std_logic;
SIGNAL \lp|Mod1|auto_generated|divider|divider|StageOut[48]~83_combout\ : std_logic;
SIGNAL \lp|Mod1|auto_generated|divider|divider|StageOut[48]~82_combout\ : std_logic;
SIGNAL \lp|Mod1|auto_generated|divider|divider|StageOut[47]~84_combout\ : std_logic;
SIGNAL \lp|Mod1|auto_generated|divider|divider|add_sub_5_result_int[2]~0_combout\ : std_logic;
SIGNAL \lp|Mod1|auto_generated|divider|divider|StageOut[47]~85_combout\ : std_logic;
SIGNAL \lp|Mod1|auto_generated|divider|divider|StageOut[46]~87_combout\ : std_logic;
SIGNAL \lp|Mod1|auto_generated|divider|divider|StageOut[46]~86_combout\ : std_logic;
SIGNAL \lp|Mod1|auto_generated|divider|divider|add_sub_6_result_int[2]~1\ : std_logic;
SIGNAL \lp|Mod1|auto_generated|divider|divider|add_sub_6_result_int[3]~3\ : std_logic;
SIGNAL \lp|Mod1|auto_generated|divider|divider|add_sub_6_result_int[4]~5\ : std_logic;
SIGNAL \lp|Mod1|auto_generated|divider|divider|add_sub_6_result_int[5]~7\ : std_logic;
SIGNAL \lp|Mod1|auto_generated|divider|divider|add_sub_6_result_int[6]~9\ : std_logic;
SIGNAL \lp|Mod1|auto_generated|divider|divider|add_sub_6_result_int[7]~10_combout\ : std_logic;
SIGNAL \lp|Mod1|auto_generated|divider|divider|StageOut[60]~121_combout\ : std_logic;
SIGNAL \lp|Mod1|auto_generated|divider|divider|add_sub_6_result_int[6]~8_combout\ : std_logic;
SIGNAL \lp|Mod1|auto_generated|divider|divider|StageOut[60]~88_combout\ : std_logic;
SIGNAL \lp|Mod1|auto_generated|divider|divider|add_sub_6_result_int[5]~6_combout\ : std_logic;
SIGNAL \lp|Mod1|auto_generated|divider|divider|StageOut[59]~89_combout\ : std_logic;
SIGNAL \lp|Mod1|auto_generated|divider|divider|StageOut[59]~122_combout\ : std_logic;
SIGNAL \lp|Mod1|auto_generated|divider|divider|StageOut[58]~123_combout\ : std_logic;
SIGNAL \lp|Mod1|auto_generated|divider|divider|add_sub_6_result_int[4]~4_combout\ : std_logic;
SIGNAL \lp|Mod1|auto_generated|divider|divider|StageOut[58]~90_combout\ : std_logic;
SIGNAL \lp|Mod1|auto_generated|divider|divider|StageOut[57]~124_combout\ : std_logic;
SIGNAL \lp|Mod1|auto_generated|divider|divider|add_sub_6_result_int[3]~2_combout\ : std_logic;
SIGNAL \lp|Mod1|auto_generated|divider|divider|StageOut[57]~91_combout\ : std_logic;
SIGNAL \lp|Mod1|auto_generated|divider|divider|StageOut[56]~92_combout\ : std_logic;
SIGNAL \lp|Mod1|auto_generated|divider|divider|add_sub_6_result_int[2]~0_combout\ : std_logic;
SIGNAL \lp|Mod1|auto_generated|divider|divider|StageOut[56]~93_combout\ : std_logic;
SIGNAL \lp|Mod1|auto_generated|divider|divider|StageOut[55]~95_combout\ : std_logic;
SIGNAL \lp|Mod1|auto_generated|divider|divider|StageOut[55]~94_combout\ : std_logic;
SIGNAL \lp|Mod1|auto_generated|divider|divider|add_sub_7_result_int[2]~1\ : std_logic;
SIGNAL \lp|Mod1|auto_generated|divider|divider|add_sub_7_result_int[3]~3\ : std_logic;
SIGNAL \lp|Mod1|auto_generated|divider|divider|add_sub_7_result_int[4]~5\ : std_logic;
SIGNAL \lp|Mod1|auto_generated|divider|divider|add_sub_7_result_int[5]~7\ : std_logic;
SIGNAL \lp|Mod1|auto_generated|divider|divider|add_sub_7_result_int[6]~9\ : std_logic;
SIGNAL \lp|Mod1|auto_generated|divider|divider|add_sub_7_result_int[7]~11\ : std_logic;
SIGNAL \lp|Mod1|auto_generated|divider|divider|add_sub_7_result_int[8]~12_combout\ : std_logic;
SIGNAL \lp|Mod1|auto_generated|divider|divider|StageOut[69]~113_combout\ : std_logic;
SIGNAL \lp|Mod1|auto_generated|divider|divider|add_sub_7_result_int[6]~8_combout\ : std_logic;
SIGNAL \lp|Mod1|auto_generated|divider|divider|add_sub_7_result_int[7]~10_combout\ : std_logic;
SIGNAL \lp|Mod1|auto_generated|divider|divider|StageOut[70]~96_combout\ : std_logic;
SIGNAL \lp|Mod1|auto_generated|divider|divider|StageOut[70]~112_combout\ : std_logic;
SIGNAL \lp|Mod1|auto_generated|divider|divider|StageOut[69]~97_combout\ : std_logic;
SIGNAL \lp|Mod1|auto_generated|divider|divider|add_sub_7_result_int[5]~6_combout\ : std_logic;
SIGNAL \lp|Mod1|auto_generated|divider|divider|StageOut[68]~98_combout\ : std_logic;
SIGNAL \lp|Mod1|auto_generated|divider|divider|StageOut[68]~114_combout\ : std_logic;
SIGNAL \lp|Mod1|auto_generated|divider|divider|add_sub_7_result_int[4]~4_combout\ : std_logic;
SIGNAL \lp|Mod1|auto_generated|divider|divider|StageOut[67]~99_combout\ : std_logic;
SIGNAL \lp|Mod1|auto_generated|divider|divider|StageOut[67]~115_combout\ : std_logic;
SIGNAL \lp|Mod1|auto_generated|divider|divider|StageOut[66]~125_combout\ : std_logic;
SIGNAL \lp|Mod1|auto_generated|divider|divider|add_sub_7_result_int[3]~2_combout\ : std_logic;
SIGNAL \lp|Mod1|auto_generated|divider|divider|StageOut[66]~100_combout\ : std_logic;
SIGNAL \lp|Mod1|auto_generated|divider|divider|add_sub_7_result_int[2]~0_combout\ : std_logic;
SIGNAL \lp|Mod1|auto_generated|divider|divider|StageOut[65]~101_combout\ : std_logic;
SIGNAL \lp|Mod1|auto_generated|divider|divider|StageOut[65]~126_combout\ : std_logic;
SIGNAL \lp|Mod1|auto_generated|divider|divider|StageOut[64]~103_combout\ : std_logic;
SIGNAL \lp|Mod1|auto_generated|divider|divider|StageOut[64]~102_combout\ : std_logic;
SIGNAL \lp|Mod1|auto_generated|divider|divider|add_sub_8_result_int[2]~1\ : std_logic;
SIGNAL \lp|Mod1|auto_generated|divider|divider|add_sub_8_result_int[3]~3\ : std_logic;
SIGNAL \lp|Mod1|auto_generated|divider|divider|add_sub_8_result_int[4]~5\ : std_logic;
SIGNAL \lp|Mod1|auto_generated|divider|divider|add_sub_8_result_int[5]~7\ : std_logic;
SIGNAL \lp|Mod1|auto_generated|divider|divider|add_sub_8_result_int[6]~9\ : std_logic;
SIGNAL \lp|Mod1|auto_generated|divider|divider|add_sub_8_result_int[7]~11\ : std_logic;
SIGNAL \lp|Mod1|auto_generated|divider|divider|add_sub_8_result_int[8]~13\ : std_logic;
SIGNAL \lp|Mod1|auto_generated|divider|divider|add_sub_8_result_int[9]~14_combout\ : std_logic;
SIGNAL \lp|Mod1|auto_generated|divider|divider|StageOut[79]~117_combout\ : std_logic;
SIGNAL \lp|Mod1|auto_generated|divider|divider|add_sub_8_result_int[7]~10_combout\ : std_logic;
SIGNAL \lp|Mod1|auto_generated|divider|divider|StageOut[79]~105_combout\ : std_logic;
SIGNAL \lp|Mod1|auto_generated|divider|divider|StageOut[78]~118_combout\ : std_logic;
SIGNAL \lp|Mod1|auto_generated|divider|divider|add_sub_8_result_int[6]~8_combout\ : std_logic;
SIGNAL \lp|Mod1|auto_generated|divider|divider|StageOut[78]~106_combout\ : std_logic;
SIGNAL \lp|Div0|auto_generated|divider|divider|add_sub_3_result_int[1]~1\ : std_logic;
SIGNAL \lp|Div0|auto_generated|divider|divider|add_sub_3_result_int[2]~2_combout\ : std_logic;
SIGNAL \lp|Mod1|auto_generated|divider|divider|add_sub_8_result_int[8]~12_combout\ : std_logic;
SIGNAL \lp|Mod1|auto_generated|divider|divider|StageOut[80]~104_combout\ : std_logic;
SIGNAL \lp|Mod1|auto_generated|divider|divider|StageOut[80]~116_combout\ : std_logic;
SIGNAL \lp|Div0|auto_generated|divider|divider|add_sub_3_result_int[2]~3\ : std_logic;
SIGNAL \lp|Div0|auto_generated|divider|divider|add_sub_3_result_int[3]~5\ : std_logic;
SIGNAL \lp|Div0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\ : std_logic;
SIGNAL \lp|Div0|auto_generated|divider|divider|StageOut[17]~51_combout\ : std_logic;
SIGNAL \lp|Div0|auto_generated|divider|divider|StageOut[17]~71_combout\ : std_logic;
SIGNAL \lp|Div0|auto_generated|divider|divider|add_sub_3_result_int[1]~0_combout\ : std_logic;
SIGNAL \lp|Div0|auto_generated|divider|divider|StageOut[16]~52_combout\ : std_logic;
SIGNAL \lp|Div0|auto_generated|divider|divider|StageOut[16]~72_combout\ : std_logic;
SIGNAL \lp|Mod1|auto_generated|divider|divider|add_sub_8_result_int[5]~6_combout\ : std_logic;
SIGNAL \lp|Mod1|auto_generated|divider|divider|StageOut[77]~119_combout\ : std_logic;
SIGNAL \lp|Div0|auto_generated|divider|divider|StageOut[15]~74_combout\ : std_logic;
SIGNAL \lp|Div0|auto_generated|divider|divider|StageOut[15]~73_combout\ : std_logic;
SIGNAL \lp|Div0|auto_generated|divider|divider|add_sub_4_result_int[1]~1\ : std_logic;
SIGNAL \lp|Div0|auto_generated|divider|divider|add_sub_4_result_int[2]~3\ : std_logic;
SIGNAL \lp|Div0|auto_generated|divider|divider|add_sub_4_result_int[3]~4_combout\ : std_logic;
SIGNAL \lp|Div0|auto_generated|divider|divider|add_sub_3_result_int[3]~4_combout\ : std_logic;
SIGNAL \lp|Div0|auto_generated|divider|divider|StageOut[18]~50_combout\ : std_logic;
SIGNAL \lp|Div0|auto_generated|divider|divider|StageOut[18]~70_combout\ : std_logic;
SIGNAL \lp|Div0|auto_generated|divider|divider|add_sub_4_result_int[3]~5\ : std_logic;
SIGNAL \lp|Div0|auto_generated|divider|divider|add_sub_4_result_int[4]~7_cout\ : std_logic;
SIGNAL \lp|Div0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\ : std_logic;
SIGNAL \lp|Div0|auto_generated|divider|divider|StageOut[23]~53_combout\ : std_logic;
SIGNAL \lp|Div0|auto_generated|divider|divider|StageOut[23]~75_combout\ : std_logic;
SIGNAL \lp|Div0|auto_generated|divider|divider|StageOut[22]~76_combout\ : std_logic;
SIGNAL \lp|Div0|auto_generated|divider|divider|add_sub_4_result_int[2]~2_combout\ : std_logic;
SIGNAL \lp|Div0|auto_generated|divider|divider|StageOut[22]~54_combout\ : std_logic;
SIGNAL \lp|Div0|auto_generated|divider|divider|StageOut[21]~55_combout\ : std_logic;
SIGNAL \lp|Div0|auto_generated|divider|divider|add_sub_4_result_int[1]~0_combout\ : std_logic;
SIGNAL \lp|Div0|auto_generated|divider|divider|StageOut[21]~56_combout\ : std_logic;
SIGNAL \lp|Mod1|auto_generated|divider|divider|add_sub_8_result_int[4]~4_combout\ : std_logic;
SIGNAL \lp|Mod1|auto_generated|divider|divider|StageOut[76]~120_combout\ : std_logic;
SIGNAL \lp|Div0|auto_generated|divider|divider|StageOut[20]~78_combout\ : std_logic;
SIGNAL \lp|Div0|auto_generated|divider|divider|StageOut[20]~77_combout\ : std_logic;
SIGNAL \lp|Div0|auto_generated|divider|divider|add_sub_5_result_int[1]~1\ : std_logic;
SIGNAL \lp|Div0|auto_generated|divider|divider|add_sub_5_result_int[2]~3\ : std_logic;
SIGNAL \lp|Div0|auto_generated|divider|divider|add_sub_5_result_int[3]~5\ : std_logic;
SIGNAL \lp|Div0|auto_generated|divider|divider|add_sub_5_result_int[4]~7_cout\ : std_logic;
SIGNAL \lp|Div0|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\ : std_logic;
SIGNAL \lp|t1[3]~0_combout\ : std_logic;
SIGNAL \lp|Div0|auto_generated|divider|divider|add_sub_5_result_int[3]~4_combout\ : std_logic;
SIGNAL \lp|Div0|auto_generated|divider|divider|StageOut[28]~57_combout\ : std_logic;
SIGNAL \lp|Div0|auto_generated|divider|divider|StageOut[28]~79_combout\ : std_logic;
SIGNAL \lp|Div0|auto_generated|divider|divider|StageOut[27]~80_combout\ : std_logic;
SIGNAL \lp|Div0|auto_generated|divider|divider|add_sub_5_result_int[2]~2_combout\ : std_logic;
SIGNAL \lp|Div0|auto_generated|divider|divider|StageOut[27]~58_combout\ : std_logic;
SIGNAL \lp|Div0|auto_generated|divider|divider|add_sub_5_result_int[1]~0_combout\ : std_logic;
SIGNAL \lp|Div0|auto_generated|divider|divider|StageOut[26]~60_combout\ : std_logic;
SIGNAL \lp|Div0|auto_generated|divider|divider|StageOut[26]~59_combout\ : std_logic;
SIGNAL \lp|Mod1|auto_generated|divider|divider|StageOut[75]~127_combout\ : std_logic;
SIGNAL \lp|Mod1|auto_generated|divider|divider|add_sub_8_result_int[3]~2_combout\ : std_logic;
SIGNAL \lp|Div0|auto_generated|divider|divider|StageOut[25]~81_combout\ : std_logic;
SIGNAL \lp|Mod1|auto_generated|divider|divider|StageOut[75]~107_combout\ : std_logic;
SIGNAL \lp|Div0|auto_generated|divider|divider|add_sub_5_result_int[0]~10_combout\ : std_logic;
SIGNAL \lp|Div0|auto_generated|divider|divider|StageOut[25]~61_combout\ : std_logic;
SIGNAL \lp|Div0|auto_generated|divider|divider|add_sub_6_result_int[1]~1\ : std_logic;
SIGNAL \lp|Div0|auto_generated|divider|divider|add_sub_6_result_int[2]~3\ : std_logic;
SIGNAL \lp|Div0|auto_generated|divider|divider|add_sub_6_result_int[3]~5\ : std_logic;
SIGNAL \lp|Div0|auto_generated|divider|divider|add_sub_6_result_int[4]~7_cout\ : std_logic;
SIGNAL \lp|Div0|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\ : std_logic;
SIGNAL \lp|t1[2]~1_combout\ : std_logic;
SIGNAL \lp|Div0|auto_generated|divider|divider|StageOut[33]~82_combout\ : std_logic;
SIGNAL \lp|Div0|auto_generated|divider|divider|add_sub_6_result_int[3]~4_combout\ : std_logic;
SIGNAL \lp|Div0|auto_generated|divider|divider|StageOut[33]~62_combout\ : std_logic;
SIGNAL \lp|Div0|auto_generated|divider|divider|add_sub_6_result_int[2]~2_combout\ : std_logic;
SIGNAL \lp|Div0|auto_generated|divider|divider|StageOut[32]~63_combout\ : std_logic;
SIGNAL \lp|Div0|auto_generated|divider|divider|StageOut[32]~83_combout\ : std_logic;
SIGNAL \lp|Div0|auto_generated|divider|divider|add_sub_6_result_int[1]~0_combout\ : std_logic;
SIGNAL \lp|Div0|auto_generated|divider|divider|StageOut[31]~64_combout\ : std_logic;
SIGNAL \lp|Div0|auto_generated|divider|divider|StageOut[31]~84_combout\ : std_logic;
SIGNAL \lp|Mod1|auto_generated|divider|divider|add_sub_8_result_int[2]~0_combout\ : std_logic;
SIGNAL \lp|Div0|auto_generated|divider|divider|StageOut[30]~88_combout\ : std_logic;
SIGNAL \lp|Div0|auto_generated|divider|divider|StageOut[30]~89_combout\ : std_logic;
SIGNAL \lp|Div0|auto_generated|divider|divider|add_sub_7_result_int[1]~1\ : std_logic;
SIGNAL \lp|Div0|auto_generated|divider|divider|add_sub_7_result_int[2]~3\ : std_logic;
SIGNAL \lp|Div0|auto_generated|divider|divider|add_sub_7_result_int[3]~5\ : std_logic;
SIGNAL \lp|Div0|auto_generated|divider|divider|add_sub_7_result_int[4]~7_cout\ : std_logic;
SIGNAL \lp|Div0|auto_generated|divider|divider|add_sub_7_result_int[5]~8_combout\ : std_logic;
SIGNAL \lp|t1[1]~2_combout\ : std_logic;
SIGNAL \rightspeed1|Mod0|auto_generated|divider|divider|op_24~1\ : std_logic;
SIGNAL \rightspeed1|Mod0|auto_generated|divider|divider|op_24~3\ : std_logic;
SIGNAL \rightspeed1|Mod0|auto_generated|divider|divider|op_24~5\ : std_logic;
SIGNAL \rightspeed1|Mod0|auto_generated|divider|divider|op_24~7\ : std_logic;
SIGNAL \rightspeed1|Mod0|auto_generated|divider|divider|op_24~9\ : std_logic;
SIGNAL \rightspeed1|Mod0|auto_generated|divider|divider|op_24~10_combout\ : std_logic;
SIGNAL \rightspeed1|Mod0|auto_generated|divider|divider|op_24~11\ : std_logic;
SIGNAL \rightspeed1|Mod0|auto_generated|divider|divider|op_24~12_combout\ : std_logic;
SIGNAL \rightspeed1|Mod0|auto_generated|divider|divider|op_24~13\ : std_logic;
SIGNAL \rightspeed1|Mod0|auto_generated|divider|divider|op_24~14_combout\ : std_logic;
SIGNAL \rightspeed1|Mod0|auto_generated|divider|divider|op_24~15\ : std_logic;
SIGNAL \rightspeed1|Mod0|auto_generated|divider|divider|op_24~16_combout\ : std_logic;
SIGNAL \rightspeed1|Equal9~0_combout\ : std_logic;
SIGNAL \rightspeed1|Mod0|auto_generated|divider|divider|op_24~8_combout\ : std_logic;
SIGNAL \rightspeed1|Mod0|auto_generated|divider|divider|op_24~6_combout\ : std_logic;
SIGNAL \rightspeed1|Equal9~1_combout\ : std_logic;
SIGNAL \rightspeed1|Mod0|auto_generated|divider|divider|op_24~4_combout\ : std_logic;
SIGNAL \rightspeed1|Equal1~0_combout\ : std_logic;
SIGNAL \lp|Div0|auto_generated|divider|divider|StageOut[38]~85_combout\ : std_logic;
SIGNAL \lp|Div0|auto_generated|divider|divider|add_sub_7_result_int[3]~4_combout\ : std_logic;
SIGNAL \lp|Div0|auto_generated|divider|divider|StageOut[38]~65_combout\ : std_logic;
SIGNAL \lp|Div0|auto_generated|divider|divider|add_sub_7_result_int[2]~2_combout\ : std_logic;
SIGNAL \lp|Div0|auto_generated|divider|divider|StageOut[37]~66_combout\ : std_logic;
SIGNAL \lp|Div0|auto_generated|divider|divider|StageOut[37]~86_combout\ : std_logic;
SIGNAL \lp|Div0|auto_generated|divider|divider|add_sub_7_result_int[1]~0_combout\ : std_logic;
SIGNAL \lp|Div0|auto_generated|divider|divider|StageOut[36]~68_combout\ : std_logic;
SIGNAL \lp|Div0|auto_generated|divider|divider|StageOut[36]~67_combout\ : std_logic;
SIGNAL \lp|Mod1|auto_generated|divider|divider|StageOut[63]~110_combout\ : std_logic;
SIGNAL \lp|Mod1|auto_generated|divider|divider|StageOut[63]~109_combout\ : std_logic;
SIGNAL \lp|Mod1|auto_generated|divider|divider|add_sub_8_result_int[1]~16_combout\ : std_logic;
SIGNAL \lp|Div0|auto_generated|divider|divider|StageOut[35]~87_combout\ : std_logic;
SIGNAL \lp|Mod1|auto_generated|divider|divider|StageOut[73]~111_combout\ : std_logic;
SIGNAL \lp|Mod1|auto_generated|divider|divider|StageOut[73]~108_combout\ : std_logic;
SIGNAL \lp|Div0|auto_generated|divider|divider|add_sub_7_result_int[0]~10_combout\ : std_logic;
SIGNAL \lp|Div0|auto_generated|divider|divider|StageOut[35]~69_combout\ : std_logic;
SIGNAL \lp|Div0|auto_generated|divider|divider|add_sub_8_result_int[1]~1_cout\ : std_logic;
SIGNAL \lp|Div0|auto_generated|divider|divider|add_sub_8_result_int[2]~3_cout\ : std_logic;
SIGNAL \lp|Div0|auto_generated|divider|divider|add_sub_8_result_int[3]~5_cout\ : std_logic;
SIGNAL \lp|Div0|auto_generated|divider|divider|add_sub_8_result_int[4]~7_cout\ : std_logic;
SIGNAL \lp|Div0|auto_generated|divider|divider|add_sub_8_result_int[5]~8_combout\ : std_logic;
SIGNAL \rightspeed1|Mod0|auto_generated|divider|divider|op_24~2_combout\ : std_logic;
SIGNAL \rightspeed1|Mod0|auto_generated|divider|divider|StageOut[994]~0_combout\ : std_logic;
SIGNAL \rightspeed1|Mod0|auto_generated|divider|divider|op_24~0_combout\ : std_logic;
SIGNAL \rightspeed1|Mod0|auto_generated|divider|divider|StageOut[993]~1_combout\ : std_logic;
SIGNAL \rightspeed1|WideNor0~2_combout\ : std_logic;
SIGNAL \rightspeed1|WideNor0~1_combout\ : std_logic;
SIGNAL \rightspeed1|WideNor0~0_combout\ : std_logic;
SIGNAL \rightspeed1|WideNor0~3_combout\ : std_logic;
SIGNAL \rightspeed1|WideOr4~0_combout\ : std_logic;
SIGNAL \rightspeed1|WideOr4~combout\ : std_logic;
SIGNAL \rightspeed1|Equal1~1_combout\ : std_logic;
SIGNAL \rightspeed1|Equal2~0_combout\ : std_logic;
SIGNAL \rightspeed1|WideOr0~0_combout\ : std_logic;
SIGNAL \rightspeed1|WideOr3~combout\ : std_logic;
SIGNAL \rightspeed1|Equal9~2_combout\ : std_logic;
SIGNAL \rightspeed1|Equal9~3_combout\ : std_logic;
SIGNAL \rightspeed1|WideOr2~combout\ : std_logic;
SIGNAL \rightspeed1|WideOr1~0_combout\ : std_logic;
SIGNAL \rightspeed1|WideOr1~combout\ : std_logic;
SIGNAL \rightspeed1|WideOr0~combout\ : std_logic;
SIGNAL \lp|t2[0]~feeder_combout\ : std_logic;
SIGNAL \rightspeed1|seg\ : std_logic_vector(6 DOWNTO 0);
SIGNAL \rightspeed2|seg\ : std_logic_vector(6 DOWNTO 0);
SIGNAL valid_counter : std_logic_vector(28 DOWNTO 0);
SIGNAL threshold : std_logic_vector(31 DOWNTO 0);
SIGNAL cnt : std_logic_vector(6 DOWNTO 0);
SIGNAL carry_cnt : std_logic_vector(31 DOWNTO 0);
SIGNAL Phase : std_logic_vector(3 DOWNTO 0);
SIGNAL \SD|line_status_new\ : std_logic_vector(2 DOWNTO 0);
SIGNAL \SD|line_status_before\ : std_logic_vector(2 DOWNTO 0);
SIGNAL \SS|boost_speed\ : std_logic_vector(31 DOWNTO 0);
SIGNAL \SS|speed_right\ : std_logic_vector(31 DOWNTO 0);
SIGNAL \SS|speed_left\ : std_logic_vector(31 DOWNTO 0);
SIGNAL \lp|t0\ : std_logic_vector(31 DOWNTO 0);
SIGNAL \lp|t1\ : std_logic_vector(31 DOWNTO 0);
SIGNAL \lp|t2\ : std_logic_vector(31 DOWNTO 0);
SIGNAL \lp|current_second\ : std_logic_vector(8 DOWNTO 0);
SIGNAL \L|led1\ : std_logic_vector(9 DOWNTO 0);
SIGNAL \lp|count\ : std_logic_vector(25 DOWNTO 0);
SIGNAL \ALT_INV_sw[0]~input_o\ : std_logic;
SIGNAL \lp|ALT_INV_current_second[8]~27_combout\ : std_logic;
SIGNAL \lp|ALT_INV_process_0~0_combout\ : std_logic;
SIGNAL \ALT_INV_Phase[0]~9_combout\ : std_logic;
SIGNAL \lp|ALT_INV_t2\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \rightspeed1|ALT_INV_WideOr2~combout\ : std_logic;
SIGNAL \rightspeed2|ALT_INV_WideOr2~combout\ : std_logic;

BEGIN

ww_clk <= clk;
ww_line_sensor <= line_sensor;
motor_left <= ww_motor_left;
motor_right <= ww_motor_right;
led <= ww_led;
ww_sw <= sw;
seg0 <= ww_seg0;
seg1 <= ww_seg1;
seg2 <= ww_seg2;
seg3 <= ww_seg3;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\SD|Selector7~2clkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \SD|Selector7~2_combout\);

\SS|Selector71~3clkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \SS|Selector71~3_combout\);

\SS|boost_speed[8]~1clkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \SS|boost_speed[8]~1_combout\);

\L|Equal17~0clkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \L|Equal17~0_combout\);

\clk~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \clk~input_o\);
\ALT_INV_sw[0]~input_o\ <= NOT \sw[0]~input_o\;
\lp|ALT_INV_current_second[8]~27_combout\ <= NOT \lp|current_second[8]~27_combout\;
\lp|ALT_INV_process_0~0_combout\ <= NOT \lp|process_0~0_combout\;
\ALT_INV_Phase[0]~9_combout\ <= NOT \Phase[0]~9_combout\;
\lp|ALT_INV_t2\(0) <= NOT \lp|t2\(0);
\rightspeed1|ALT_INV_WideOr2~combout\ <= NOT \rightspeed1|WideOr2~combout\;
\rightspeed2|ALT_INV_WideOr2~combout\ <= NOT \rightspeed2|WideOr2~combout\;

-- Location: IOOBUF_X14_Y0_N2
\motor_left~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \motor_left~reg0_q\,
	devoe => ww_devoe,
	o => \motor_left~output_o\);

-- Location: IOOBUF_X3_Y0_N2
\motor_right~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \motor_right~reg0_q\,
	devoe => ww_devoe,
	o => \motor_right~output_o\);

-- Location: IOOBUF_X0_Y20_N9
\led[0]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \L|led1\(0),
	devoe => ww_devoe,
	o => \led[0]~output_o\);

-- Location: IOOBUF_X0_Y20_N2
\led[1]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \L|Selector7~3_combout\,
	devoe => ww_devoe,
	o => \led[1]~output_o\);

-- Location: IOOBUF_X0_Y21_N23
\led[2]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \L|Selector6~3_combout\,
	devoe => ww_devoe,
	o => \led[2]~output_o\);

-- Location: IOOBUF_X0_Y21_N16
\led[3]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \L|Selector5~3_combout\,
	devoe => ww_devoe,
	o => \led[3]~output_o\);

-- Location: IOOBUF_X0_Y24_N23
\led[4]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \L|Selector4~2_combout\,
	devoe => ww_devoe,
	o => \led[4]~output_o\);

-- Location: IOOBUF_X0_Y24_N16
\led[5]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \L|Selector3~4_combout\,
	devoe => ww_devoe,
	o => \led[5]~output_o\);

-- Location: IOOBUF_X0_Y26_N23
\led[6]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \L|Selector2~1_combout\,
	devoe => ww_devoe,
	o => \led[6]~output_o\);

-- Location: IOOBUF_X0_Y26_N16
\led[7]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \L|Selector1~3_combout\,
	devoe => ww_devoe,
	o => \led[7]~output_o\);

-- Location: IOOBUF_X0_Y27_N9
\led[8]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \L|Selector0~3_combout\,
	devoe => ww_devoe,
	o => \led[8]~output_o\);

-- Location: IOOBUF_X0_Y27_N16
\led[9]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \L|led1\(9),
	devoe => ww_devoe,
	o => \led[9]~output_o\);

-- Location: IOOBUF_X21_Y29_N23
\seg0[0]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \rightspeed2|seg\(0),
	devoe => ww_devoe,
	o => \seg0[0]~output_o\);

-- Location: IOOBUF_X21_Y29_N30
\seg0[1]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \rightspeed2|WideOr4~combout\,
	devoe => ww_devoe,
	o => \seg0[1]~output_o\);

-- Location: IOOBUF_X26_Y29_N2
\seg0[2]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \rightspeed2|seg\(2),
	devoe => ww_devoe,
	o => \seg0[2]~output_o\);

-- Location: IOOBUF_X28_Y29_N30
\seg0[3]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \rightspeed2|WideOr3~combout\,
	devoe => ww_devoe,
	o => \seg0[3]~output_o\);

-- Location: IOOBUF_X26_Y29_N9
\seg0[4]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \rightspeed2|ALT_INV_WideOr2~combout\,
	devoe => ww_devoe,
	o => \seg0[4]~output_o\);

-- Location: IOOBUF_X28_Y29_N23
\seg0[5]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \rightspeed2|WideOr1~combout\,
	devoe => ww_devoe,
	o => \seg0[5]~output_o\);

-- Location: IOOBUF_X26_Y29_N16
\seg0[6]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \rightspeed2|WideOr0~combout\,
	devoe => ww_devoe,
	o => \seg0[6]~output_o\);

-- Location: IOOBUF_X21_Y29_N2
\seg1[0]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \rightspeed1|seg\(0),
	devoe => ww_devoe,
	o => \seg1[0]~output_o\);

-- Location: IOOBUF_X21_Y29_N9
\seg1[1]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \rightspeed1|WideOr4~combout\,
	devoe => ww_devoe,
	o => \seg1[1]~output_o\);

-- Location: IOOBUF_X23_Y29_N2
\seg1[2]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \rightspeed1|seg\(2),
	devoe => ww_devoe,
	o => \seg1[2]~output_o\);

-- Location: IOOBUF_X23_Y29_N23
\seg1[3]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \rightspeed1|WideOr3~combout\,
	devoe => ww_devoe,
	o => \seg1[3]~output_o\);

-- Location: IOOBUF_X23_Y29_N30
\seg1[4]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \rightspeed1|ALT_INV_WideOr2~combout\,
	devoe => ww_devoe,
	o => \seg1[4]~output_o\);

-- Location: IOOBUF_X28_Y29_N16
\seg1[5]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \rightspeed1|WideOr1~combout\,
	devoe => ww_devoe,
	o => \seg1[5]~output_o\);

-- Location: IOOBUF_X26_Y29_N23
\seg1[6]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \rightspeed1|WideOr0~combout\,
	devoe => ww_devoe,
	o => \seg1[6]~output_o\);

-- Location: IOOBUF_X32_Y29_N30
\seg2[0]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \lp|ALT_INV_t2\(0),
	devoe => ww_devoe,
	o => \seg2[0]~output_o\);

-- Location: IOOBUF_X30_Y29_N30
\seg2[1]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \seg2[1]~output_o\);

-- Location: IOOBUF_X28_Y29_N2
\seg2[2]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \seg2[2]~output_o\);

-- Location: IOOBUF_X30_Y29_N2
\seg2[3]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \lp|ALT_INV_t2\(0),
	devoe => ww_devoe,
	o => \seg2[3]~output_o\);

-- Location: IOOBUF_X30_Y29_N16
\seg2[4]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \lp|ALT_INV_t2\(0),
	devoe => ww_devoe,
	o => \seg2[4]~output_o\);

-- Location: IOOBUF_X30_Y29_N23
\seg2[5]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \lp|ALT_INV_t2\(0),
	devoe => ww_devoe,
	o => \seg2[5]~output_o\);

-- Location: IOOBUF_X37_Y29_N2
\seg2[6]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => \seg2[6]~output_o\);

-- Location: IOOBUF_X32_Y29_N23
\seg3[0]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \lp|ALT_INV_t2\(0),
	devoe => ww_devoe,
	o => \seg3[0]~output_o\);

-- Location: IOOBUF_X39_Y29_N16
\seg3[1]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \seg3[1]~output_o\);

-- Location: IOOBUF_X32_Y29_N9
\seg3[2]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \seg3[2]~output_o\);

-- Location: IOOBUF_X32_Y29_N2
\seg3[3]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \lp|ALT_INV_t2\(0),
	devoe => ww_devoe,
	o => \seg3[3]~output_o\);

-- Location: IOOBUF_X37_Y29_N23
\seg3[4]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \lp|ALT_INV_t2\(0),
	devoe => ww_devoe,
	o => \seg3[4]~output_o\);

-- Location: IOOBUF_X37_Y29_N30
\seg3[5]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \lp|ALT_INV_t2\(0),
	devoe => ww_devoe,
	o => \seg3[5]~output_o\);

-- Location: IOOBUF_X39_Y29_N30
\seg3[6]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => \seg3[6]~output_o\);

-- Location: IOIBUF_X41_Y15_N1
\clk~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_clk,
	o => \clk~input_o\);

-- Location: CLKCTRL_G9
\clk~inputclkctrl\ : cycloneiii_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \clk~inputclkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \clk~inputclkctrl_outclk\);

-- Location: IOIBUF_X0_Y24_N1
\sw[0]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_sw(0),
	o => \sw[0]~input_o\);

-- Location: LCCOMB_X19_Y15_N12
\carry_cnt~9\ : cycloneiii_lcell_comb
-- Equation(s):
-- \carry_cnt~9_combout\ = (\Add3~58_combout\ & \sw[0]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add3~58_combout\,
	datac => \sw[0]~input_o\,
	combout => \carry_cnt~9_combout\);

-- Location: FF_X19_Y15_N13
\carry_cnt[29]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \carry_cnt~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => carry_cnt(29));

-- Location: LCCOMB_X19_Y15_N8
\carry_cnt~7\ : cycloneiii_lcell_comb
-- Equation(s):
-- \carry_cnt~7_combout\ = (\sw[0]~input_o\ & \Add3~62_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \sw[0]~input_o\,
	datac => \Add3~62_combout\,
	combout => \carry_cnt~7_combout\);

-- Location: FF_X19_Y15_N9
\carry_cnt[31]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \carry_cnt~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => carry_cnt(31));

-- Location: LCCOMB_X20_Y15_N26
\Add3~58\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add3~58_combout\ = (carry_cnt(29) & (!\Add3~57\)) # (!carry_cnt(29) & ((\Add3~57\) # (GND)))
-- \Add3~59\ = CARRY((!\Add3~57\) # (!carry_cnt(29)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => carry_cnt(29),
	datad => VCC,
	cin => \Add3~57\,
	combout => \Add3~58_combout\,
	cout => \Add3~59\);

-- Location: LCCOMB_X20_Y15_N28
\Add3~60\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add3~60_combout\ = (carry_cnt(30) & (\Add3~59\ $ (GND))) # (!carry_cnt(30) & (!\Add3~59\ & VCC))
-- \Add3~61\ = CARRY((carry_cnt(30) & !\Add3~59\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => carry_cnt(30),
	datad => VCC,
	cin => \Add3~59\,
	combout => \Add3~60_combout\,
	cout => \Add3~61\);

-- Location: LCCOMB_X19_Y15_N22
\carry_cnt~8\ : cycloneiii_lcell_comb
-- Equation(s):
-- \carry_cnt~8_combout\ = (\sw[0]~input_o\ & \Add3~60_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \sw[0]~input_o\,
	datad => \Add3~60_combout\,
	combout => \carry_cnt~8_combout\);

-- Location: FF_X19_Y15_N23
\carry_cnt[30]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \carry_cnt~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => carry_cnt(30));

-- Location: LCCOMB_X20_Y15_N30
\Add3~62\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add3~62_combout\ = \Add3~61\ $ (carry_cnt(31))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => carry_cnt(31),
	cin => \Add3~61\,
	combout => \Add3~62_combout\);

-- Location: LCCOMB_X21_Y15_N28
\carry_cnt~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \carry_cnt~4_combout\ = (\Add3~12_combout\ & ((\Add3~62_combout\) # ((\Equal5~9_combout\) # (!\Equal5~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010100010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add3~12_combout\,
	datab => \Add3~62_combout\,
	datac => \Equal5~9_combout\,
	datad => \Equal5~4_combout\,
	combout => \carry_cnt~4_combout\);

-- Location: LCCOMB_X21_Y15_N14
\carry_cnt~32\ : cycloneiii_lcell_comb
-- Equation(s):
-- \carry_cnt~32_combout\ = (\sw[0]~input_o\ & \carry_cnt~4_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \sw[0]~input_o\,
	datad => \carry_cnt~4_combout\,
	combout => \carry_cnt~32_combout\);

-- Location: FF_X21_Y15_N15
\carry_cnt[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \carry_cnt~32_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => carry_cnt(6));

-- Location: LCCOMB_X20_Y16_N0
\Add3~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add3~0_combout\ = carry_cnt(0) $ (VCC)
-- \Add3~1\ = CARRY(carry_cnt(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => carry_cnt(0),
	datad => VCC,
	combout => \Add3~0_combout\,
	cout => \Add3~1\);

-- Location: LCCOMB_X20_Y14_N0
\carry_cnt~39\ : cycloneiii_lcell_comb
-- Equation(s):
-- \carry_cnt~39_combout\ = (\sw[0]~input_o\ & \Add3~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sw[0]~input_o\,
	datad => \Add3~0_combout\,
	combout => \carry_cnt~39_combout\);

-- Location: FF_X20_Y16_N1
\carry_cnt[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \carry_cnt~39_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => carry_cnt(0));

-- Location: LCCOMB_X20_Y16_N2
\Add3~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add3~2_combout\ = (carry_cnt(1) & (!\Add3~1\)) # (!carry_cnt(1) & ((\Add3~1\) # (GND)))
-- \Add3~3\ = CARRY((!\Add3~1\) # (!carry_cnt(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => carry_cnt(1),
	datad => VCC,
	cin => \Add3~1\,
	combout => \Add3~2_combout\,
	cout => \Add3~3\);

-- Location: LCCOMB_X21_Y16_N10
\carry_cnt~37\ : cycloneiii_lcell_comb
-- Equation(s):
-- \carry_cnt~37_combout\ = (\sw[0]~input_o\ & \Add3~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \sw[0]~input_o\,
	datad => \Add3~2_combout\,
	combout => \carry_cnt~37_combout\);

-- Location: LCCOMB_X21_Y16_N6
\carry_cnt~38\ : cycloneiii_lcell_comb
-- Equation(s):
-- \carry_cnt~38_combout\ = (\carry_cnt~37_combout\ & (((\Equal5~9_combout\) # (\Add3~62_combout\)) # (!\Equal5~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \carry_cnt~37_combout\,
	datab => \Equal5~4_combout\,
	datac => \Equal5~9_combout\,
	datad => \Add3~62_combout\,
	combout => \carry_cnt~38_combout\);

-- Location: FF_X21_Y16_N7
\carry_cnt[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \carry_cnt~38_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => carry_cnt(1));

-- Location: LCCOMB_X20_Y16_N4
\Add3~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add3~4_combout\ = (carry_cnt(2) & (\Add3~3\ $ (GND))) # (!carry_cnt(2) & (!\Add3~3\ & VCC))
-- \Add3~5\ = CARRY((carry_cnt(2) & !\Add3~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => carry_cnt(2),
	datad => VCC,
	cin => \Add3~3\,
	combout => \Add3~4_combout\,
	cout => \Add3~5\);

-- Location: LCCOMB_X20_Y13_N30
\carry_cnt~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \carry_cnt~6_combout\ = (\Add3~4_combout\ & ((\Add3~62_combout\) # ((\Equal5~9_combout\) # (!\Equal5~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010100010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add3~4_combout\,
	datab => \Add3~62_combout\,
	datac => \Equal5~9_combout\,
	datad => \Equal5~4_combout\,
	combout => \carry_cnt~6_combout\);

-- Location: LCCOMB_X19_Y16_N12
\carry_cnt~36\ : cycloneiii_lcell_comb
-- Equation(s):
-- \carry_cnt~36_combout\ = (\sw[0]~input_o\ & \carry_cnt~6_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \sw[0]~input_o\,
	datac => \carry_cnt~6_combout\,
	combout => \carry_cnt~36_combout\);

-- Location: FF_X19_Y16_N13
\carry_cnt[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \carry_cnt~36_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => carry_cnt(2));

-- Location: LCCOMB_X20_Y16_N6
\Add3~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add3~6_combout\ = (carry_cnt(3) & (!\Add3~5\)) # (!carry_cnt(3) & ((\Add3~5\) # (GND)))
-- \Add3~7\ = CARRY((!\Add3~5\) # (!carry_cnt(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => carry_cnt(3),
	datad => VCC,
	cin => \Add3~5\,
	combout => \Add3~6_combout\,
	cout => \Add3~7\);

-- Location: LCCOMB_X21_Y15_N6
\carry_cnt~5\ : cycloneiii_lcell_comb
-- Equation(s):
-- \carry_cnt~5_combout\ = (\Add3~6_combout\ & ((\Add3~62_combout\) # ((\Equal5~9_combout\) # (!\Equal5~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010100010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add3~6_combout\,
	datab => \Add3~62_combout\,
	datac => \Equal5~9_combout\,
	datad => \Equal5~4_combout\,
	combout => \carry_cnt~5_combout\);

-- Location: LCCOMB_X19_Y16_N14
\carry_cnt~35\ : cycloneiii_lcell_comb
-- Equation(s):
-- \carry_cnt~35_combout\ = (\sw[0]~input_o\ & \carry_cnt~5_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \sw[0]~input_o\,
	datad => \carry_cnt~5_combout\,
	combout => \carry_cnt~35_combout\);

-- Location: FF_X19_Y16_N15
\carry_cnt[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \carry_cnt~35_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => carry_cnt(3));

-- Location: LCCOMB_X20_Y16_N8
\Add3~8\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add3~8_combout\ = (carry_cnt(4) & (\Add3~7\ $ (GND))) # (!carry_cnt(4) & (!\Add3~7\ & VCC))
-- \Add3~9\ = CARRY((carry_cnt(4) & !\Add3~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => carry_cnt(4),
	datad => VCC,
	cin => \Add3~7\,
	combout => \Add3~8_combout\,
	cout => \Add3~9\);

-- Location: LCCOMB_X20_Y14_N10
\carry_cnt~34\ : cycloneiii_lcell_comb
-- Equation(s):
-- \carry_cnt~34_combout\ = (\Add3~8_combout\ & \sw[0]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Add3~8_combout\,
	datad => \sw[0]~input_o\,
	combout => \carry_cnt~34_combout\);

-- Location: FF_X20_Y16_N9
\carry_cnt[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \carry_cnt~34_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => carry_cnt(4));

-- Location: LCCOMB_X20_Y16_N10
\Add3~10\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add3~10_combout\ = (carry_cnt(5) & (!\Add3~9\)) # (!carry_cnt(5) & ((\Add3~9\) # (GND)))
-- \Add3~11\ = CARRY((!\Add3~9\) # (!carry_cnt(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => carry_cnt(5),
	datad => VCC,
	cin => \Add3~9\,
	combout => \Add3~10_combout\,
	cout => \Add3~11\);

-- Location: LCCOMB_X19_Y16_N6
\carry_cnt~33\ : cycloneiii_lcell_comb
-- Equation(s):
-- \carry_cnt~33_combout\ = (\Add3~10_combout\ & \sw[0]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Add3~10_combout\,
	datad => \sw[0]~input_o\,
	combout => \carry_cnt~33_combout\);

-- Location: FF_X20_Y16_N11
\carry_cnt[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \carry_cnt~33_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => carry_cnt(5));

-- Location: LCCOMB_X20_Y16_N12
\Add3~12\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add3~12_combout\ = (carry_cnt(6) & (\Add3~11\ $ (GND))) # (!carry_cnt(6) & (!\Add3~11\ & VCC))
-- \Add3~13\ = CARRY((carry_cnt(6) & !\Add3~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => carry_cnt(6),
	datad => VCC,
	cin => \Add3~11\,
	combout => \Add3~12_combout\,
	cout => \Add3~13\);

-- Location: LCCOMB_X19_Y16_N0
\carry_cnt~31\ : cycloneiii_lcell_comb
-- Equation(s):
-- \carry_cnt~31_combout\ = (\Add3~14_combout\ & \sw[0]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Add3~14_combout\,
	datad => \sw[0]~input_o\,
	combout => \carry_cnt~31_combout\);

-- Location: FF_X20_Y16_N23
\carry_cnt[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \carry_cnt~31_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => carry_cnt(7));

-- Location: LCCOMB_X20_Y16_N14
\Add3~14\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add3~14_combout\ = (carry_cnt(7) & (!\Add3~13\)) # (!carry_cnt(7) & ((\Add3~13\) # (GND)))
-- \Add3~15\ = CARRY((!\Add3~13\) # (!carry_cnt(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => carry_cnt(7),
	datad => VCC,
	cin => \Add3~13\,
	combout => \Add3~14_combout\,
	cout => \Add3~15\);

-- Location: LCCOMB_X19_Y16_N30
\Equal5~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Equal5~6_combout\ = ((\Add3~8_combout\) # ((\Add3~14_combout\) # (\Add3~10_combout\))) # (!\Add3~12_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add3~12_combout\,
	datab => \Add3~8_combout\,
	datac => \Add3~14_combout\,
	datad => \Add3~10_combout\,
	combout => \Equal5~6_combout\);

-- Location: LCCOMB_X20_Y14_N28
\Equal5~5\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Equal5~5_combout\ = ((\Add3~0_combout\) # ((!\Add3~6_combout\) # (!\Add3~4_combout\))) # (!\Add3~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add3~2_combout\,
	datab => \Add3~0_combout\,
	datac => \Add3~4_combout\,
	datad => \Add3~6_combout\,
	combout => \Equal5~5_combout\);

-- Location: LCCOMB_X21_Y15_N10
\carry_cnt~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \carry_cnt~3_combout\ = (\Add3~16_combout\ & ((\Add3~62_combout\) # ((\Equal5~9_combout\) # (!\Equal5~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010100010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add3~16_combout\,
	datab => \Add3~62_combout\,
	datac => \Equal5~9_combout\,
	datad => \Equal5~4_combout\,
	combout => \carry_cnt~3_combout\);

-- Location: LCCOMB_X21_Y15_N0
\carry_cnt~30\ : cycloneiii_lcell_comb
-- Equation(s):
-- \carry_cnt~30_combout\ = (\sw[0]~input_o\ & \carry_cnt~3_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \sw[0]~input_o\,
	datad => \carry_cnt~3_combout\,
	combout => \carry_cnt~30_combout\);

-- Location: FF_X21_Y15_N1
\carry_cnt[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \carry_cnt~30_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => carry_cnt(8));

-- Location: LCCOMB_X20_Y16_N16
\Add3~16\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add3~16_combout\ = (carry_cnt(8) & (\Add3~15\ $ (GND))) # (!carry_cnt(8) & (!\Add3~15\ & VCC))
-- \Add3~17\ = CARRY((carry_cnt(8) & !\Add3~15\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => carry_cnt(8),
	datad => VCC,
	cin => \Add3~15\,
	combout => \Add3~16_combout\,
	cout => \Add3~17\);

-- Location: LCCOMB_X21_Y16_N14
\carry_cnt~27\ : cycloneiii_lcell_comb
-- Equation(s):
-- \carry_cnt~27_combout\ = (\sw[0]~input_o\ & \Add3~22_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \sw[0]~input_o\,
	datad => \Add3~22_combout\,
	combout => \carry_cnt~27_combout\);

-- Location: FF_X20_Y16_N31
\carry_cnt[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \carry_cnt~27_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => carry_cnt(11));

-- Location: LCCOMB_X20_Y16_N18
\Add3~18\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add3~18_combout\ = (carry_cnt(9) & (!\Add3~17\)) # (!carry_cnt(9) & ((\Add3~17\) # (GND)))
-- \Add3~19\ = CARRY((!\Add3~17\) # (!carry_cnt(9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => carry_cnt(9),
	datad => VCC,
	cin => \Add3~17\,
	combout => \Add3~18_combout\,
	cout => \Add3~19\);

-- Location: LCCOMB_X21_Y15_N4
\carry_cnt~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \carry_cnt~2_combout\ = (\Add3~18_combout\ & ((\Add3~62_combout\) # ((\Equal5~9_combout\) # (!\Equal5~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010100010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add3~18_combout\,
	datab => \Add3~62_combout\,
	datac => \Equal5~9_combout\,
	datad => \Equal5~4_combout\,
	combout => \carry_cnt~2_combout\);

-- Location: LCCOMB_X19_Y16_N4
\carry_cnt~29\ : cycloneiii_lcell_comb
-- Equation(s):
-- \carry_cnt~29_combout\ = (\sw[0]~input_o\ & \carry_cnt~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \sw[0]~input_o\,
	datad => \carry_cnt~2_combout\,
	combout => \carry_cnt~29_combout\);

-- Location: FF_X19_Y16_N5
\carry_cnt[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \carry_cnt~29_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => carry_cnt(9));

-- Location: LCCOMB_X20_Y16_N20
\Add3~20\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add3~20_combout\ = (carry_cnt(10) & (\Add3~19\ $ (GND))) # (!carry_cnt(10) & (!\Add3~19\ & VCC))
-- \Add3~21\ = CARRY((carry_cnt(10) & !\Add3~19\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => carry_cnt(10),
	datad => VCC,
	cin => \Add3~19\,
	combout => \Add3~20_combout\,
	cout => \Add3~21\);

-- Location: LCCOMB_X21_Y16_N0
\carry_cnt~28\ : cycloneiii_lcell_comb
-- Equation(s):
-- \carry_cnt~28_combout\ = (\sw[0]~input_o\ & \Add3~20_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \sw[0]~input_o\,
	datad => \Add3~20_combout\,
	combout => \carry_cnt~28_combout\);

-- Location: FF_X20_Y16_N5
\carry_cnt[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \carry_cnt~28_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => carry_cnt(10));

-- Location: LCCOMB_X20_Y16_N22
\Add3~22\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add3~22_combout\ = (carry_cnt(11) & (!\Add3~21\)) # (!carry_cnt(11) & ((\Add3~21\) # (GND)))
-- \Add3~23\ = CARRY((!\Add3~21\) # (!carry_cnt(11)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => carry_cnt(11),
	datad => VCC,
	cin => \Add3~21\,
	combout => \Add3~22_combout\,
	cout => \Add3~23\);

-- Location: LCCOMB_X21_Y15_N30
\Equal5~7\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Equal5~7_combout\ = ((\Add3~22_combout\) # ((\Add3~20_combout\) # (!\Add3~18_combout\))) # (!\Add3~16_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add3~16_combout\,
	datab => \Add3~22_combout\,
	datac => \Add3~20_combout\,
	datad => \Add3~18_combout\,
	combout => \Equal5~7_combout\);

-- Location: LCCOMB_X19_Y16_N16
\carry_cnt~25\ : cycloneiii_lcell_comb
-- Equation(s):
-- \carry_cnt~25_combout\ = (\sw[0]~input_o\ & \Add3~26_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \sw[0]~input_o\,
	datac => \Add3~26_combout\,
	combout => \carry_cnt~25_combout\);

-- Location: FF_X20_Y16_N21
\carry_cnt[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \carry_cnt~25_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => carry_cnt(13));

-- Location: LCCOMB_X20_Y16_N24
\Add3~24\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add3~24_combout\ = (carry_cnt(12) & (\Add3~23\ $ (GND))) # (!carry_cnt(12) & (!\Add3~23\ & VCC))
-- \Add3~25\ = CARRY((carry_cnt(12) & !\Add3~23\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => carry_cnt(12),
	datad => VCC,
	cin => \Add3~23\,
	combout => \Add3~24_combout\,
	cout => \Add3~25\);

-- Location: LCCOMB_X19_Y16_N26
\carry_cnt~26\ : cycloneiii_lcell_comb
-- Equation(s):
-- \carry_cnt~26_combout\ = (\sw[0]~input_o\ & \Add3~24_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \sw[0]~input_o\,
	datad => \Add3~24_combout\,
	combout => \carry_cnt~26_combout\);

-- Location: FF_X20_Y16_N17
\carry_cnt[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \carry_cnt~26_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => carry_cnt(12));

-- Location: LCCOMB_X20_Y16_N26
\Add3~26\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add3~26_combout\ = (carry_cnt(13) & (!\Add3~25\)) # (!carry_cnt(13) & ((\Add3~25\) # (GND)))
-- \Add3~27\ = CARRY((!\Add3~25\) # (!carry_cnt(13)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => carry_cnt(13),
	datad => VCC,
	cin => \Add3~25\,
	combout => \Add3~26_combout\,
	cout => \Add3~27\);

-- Location: LCCOMB_X20_Y16_N28
\Add3~28\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add3~28_combout\ = (carry_cnt(14) & (\Add3~27\ $ (GND))) # (!carry_cnt(14) & (!\Add3~27\ & VCC))
-- \Add3~29\ = CARRY((carry_cnt(14) & !\Add3~27\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => carry_cnt(14),
	datad => VCC,
	cin => \Add3~27\,
	combout => \Add3~28_combout\,
	cout => \Add3~29\);

-- Location: LCCOMB_X21_Y15_N24
\Equal5~8\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Equal5~8_combout\ = (\Add3~26_combout\) # ((\Add3~24_combout\) # ((!\Add3~30_combout\) # (!\Add3~28_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add3~26_combout\,
	datab => \Add3~24_combout\,
	datac => \Add3~28_combout\,
	datad => \Add3~30_combout\,
	combout => \Equal5~8_combout\);

-- Location: LCCOMB_X21_Y15_N22
\Equal5~9\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Equal5~9_combout\ = (\Equal5~6_combout\) # ((\Equal5~5_combout\) # ((\Equal5~7_combout\) # (\Equal5~8_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal5~6_combout\,
	datab => \Equal5~5_combout\,
	datac => \Equal5~7_combout\,
	datad => \Equal5~8_combout\,
	combout => \Equal5~9_combout\);

-- Location: LCCOMB_X21_Y15_N26
\carry_cnt~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \carry_cnt~1_combout\ = (\Add3~28_combout\ & ((\Equal5~9_combout\) # ((\Add3~62_combout\) # (!\Equal5~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal5~9_combout\,
	datab => \Add3~62_combout\,
	datac => \Add3~28_combout\,
	datad => \Equal5~4_combout\,
	combout => \carry_cnt~1_combout\);

-- Location: LCCOMB_X21_Y16_N20
\carry_cnt~24\ : cycloneiii_lcell_comb
-- Equation(s):
-- \carry_cnt~24_combout\ = (\sw[0]~input_o\ & \carry_cnt~1_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \sw[0]~input_o\,
	datad => \carry_cnt~1_combout\,
	combout => \carry_cnt~24_combout\);

-- Location: FF_X21_Y16_N21
\carry_cnt[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \carry_cnt~24_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => carry_cnt(14));

-- Location: LCCOMB_X20_Y16_N30
\Add3~30\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add3~30_combout\ = (carry_cnt(15) & (!\Add3~29\)) # (!carry_cnt(15) & ((\Add3~29\) # (GND)))
-- \Add3~31\ = CARRY((!\Add3~29\) # (!carry_cnt(15)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => carry_cnt(15),
	datad => VCC,
	cin => \Add3~29\,
	combout => \Add3~30_combout\,
	cout => \Add3~31\);

-- Location: LCCOMB_X21_Y15_N8
\carry_cnt~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \carry_cnt~0_combout\ = (\Add3~30_combout\ & (((\Equal5~9_combout\) # (\Add3~62_combout\)) # (!\Equal5~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add3~30_combout\,
	datab => \Equal5~4_combout\,
	datac => \Equal5~9_combout\,
	datad => \Add3~62_combout\,
	combout => \carry_cnt~0_combout\);

-- Location: LCCOMB_X21_Y16_N12
\carry_cnt~23\ : cycloneiii_lcell_comb
-- Equation(s):
-- \carry_cnt~23_combout\ = (\sw[0]~input_o\ & \carry_cnt~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sw[0]~input_o\,
	datac => \carry_cnt~0_combout\,
	combout => \carry_cnt~23_combout\);

-- Location: FF_X20_Y16_N3
\carry_cnt[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \carry_cnt~23_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => carry_cnt(15));

-- Location: LCCOMB_X20_Y15_N0
\Add3~32\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add3~32_combout\ = (carry_cnt(16) & (\Add3~31\ $ (GND))) # (!carry_cnt(16) & (!\Add3~31\ & VCC))
-- \Add3~33\ = CARRY((carry_cnt(16) & !\Add3~31\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => carry_cnt(16),
	datad => VCC,
	cin => \Add3~31\,
	combout => \Add3~32_combout\,
	cout => \Add3~33\);

-- Location: LCCOMB_X19_Y15_N26
\carry_cnt~22\ : cycloneiii_lcell_comb
-- Equation(s):
-- \carry_cnt~22_combout\ = (\sw[0]~input_o\ & \Add3~32_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \sw[0]~input_o\,
	datac => \Add3~32_combout\,
	combout => \carry_cnt~22_combout\);

-- Location: FF_X20_Y15_N17
\carry_cnt[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \carry_cnt~22_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => carry_cnt(16));

-- Location: LCCOMB_X20_Y15_N2
\Add3~34\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add3~34_combout\ = (carry_cnt(17) & (!\Add3~33\)) # (!carry_cnt(17) & ((\Add3~33\) # (GND)))
-- \Add3~35\ = CARRY((!\Add3~33\) # (!carry_cnt(17)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => carry_cnt(17),
	datad => VCC,
	cin => \Add3~33\,
	combout => \Add3~34_combout\,
	cout => \Add3~35\);

-- Location: LCCOMB_X19_Y15_N24
\carry_cnt~21\ : cycloneiii_lcell_comb
-- Equation(s):
-- \carry_cnt~21_combout\ = (\sw[0]~input_o\ & \Add3~34_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \sw[0]~input_o\,
	datad => \Add3~34_combout\,
	combout => \carry_cnt~21_combout\);

-- Location: FF_X20_Y15_N19
\carry_cnt[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \carry_cnt~21_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => carry_cnt(17));

-- Location: LCCOMB_X20_Y15_N4
\Add3~36\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add3~36_combout\ = (carry_cnt(18) & (\Add3~35\ $ (GND))) # (!carry_cnt(18) & (!\Add3~35\ & VCC))
-- \Add3~37\ = CARRY((carry_cnt(18) & !\Add3~35\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => carry_cnt(18),
	datad => VCC,
	cin => \Add3~35\,
	combout => \Add3~36_combout\,
	cout => \Add3~37\);

-- Location: LCCOMB_X19_Y15_N14
\carry_cnt~20\ : cycloneiii_lcell_comb
-- Equation(s):
-- \carry_cnt~20_combout\ = (\sw[0]~input_o\ & \Add3~36_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \sw[0]~input_o\,
	datad => \Add3~36_combout\,
	combout => \carry_cnt~20_combout\);

-- Location: FF_X20_Y15_N31
\carry_cnt[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \carry_cnt~20_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => carry_cnt(18));

-- Location: LCCOMB_X20_Y15_N6
\Add3~38\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add3~38_combout\ = (carry_cnt(19) & (!\Add3~37\)) # (!carry_cnt(19) & ((\Add3~37\) # (GND)))
-- \Add3~39\ = CARRY((!\Add3~37\) # (!carry_cnt(19)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => carry_cnt(19),
	datad => VCC,
	cin => \Add3~37\,
	combout => \Add3~38_combout\,
	cout => \Add3~39\);

-- Location: LCCOMB_X19_Y13_N16
\carry_cnt~19\ : cycloneiii_lcell_comb
-- Equation(s):
-- \carry_cnt~19_combout\ = (\Add3~38_combout\ & \sw[0]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Add3~38_combout\,
	datad => \sw[0]~input_o\,
	combout => \carry_cnt~19_combout\);

-- Location: FF_X20_Y15_N9
\carry_cnt[19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \carry_cnt~19_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => carry_cnt(19));

-- Location: LCCOMB_X20_Y15_N8
\Add3~40\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add3~40_combout\ = (carry_cnt(20) & (\Add3~39\ $ (GND))) # (!carry_cnt(20) & (!\Add3~39\ & VCC))
-- \Add3~41\ = CARRY((carry_cnt(20) & !\Add3~39\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => carry_cnt(20),
	datad => VCC,
	cin => \Add3~39\,
	combout => \Add3~40_combout\,
	cout => \Add3~41\);

-- Location: LCCOMB_X19_Y15_N16
\carry_cnt~18\ : cycloneiii_lcell_comb
-- Equation(s):
-- \carry_cnt~18_combout\ = (\sw[0]~input_o\ & \Add3~40_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \sw[0]~input_o\,
	datac => \Add3~40_combout\,
	combout => \carry_cnt~18_combout\);

-- Location: FF_X20_Y15_N5
\carry_cnt[20]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \carry_cnt~18_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => carry_cnt(20));

-- Location: LCCOMB_X20_Y15_N10
\Add3~42\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add3~42_combout\ = (carry_cnt(21) & (!\Add3~41\)) # (!carry_cnt(21) & ((\Add3~41\) # (GND)))
-- \Add3~43\ = CARRY((!\Add3~41\) # (!carry_cnt(21)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => carry_cnt(21),
	datad => VCC,
	cin => \Add3~41\,
	combout => \Add3~42_combout\,
	cout => \Add3~43\);

-- Location: LCCOMB_X23_Y15_N20
\carry_cnt~17\ : cycloneiii_lcell_comb
-- Equation(s):
-- \carry_cnt~17_combout\ = (\sw[0]~input_o\ & \Add3~42_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sw[0]~input_o\,
	datad => \Add3~42_combout\,
	combout => \carry_cnt~17_combout\);

-- Location: FF_X20_Y15_N7
\carry_cnt[21]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \carry_cnt~17_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => carry_cnt(21));

-- Location: LCCOMB_X20_Y15_N12
\Add3~44\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add3~44_combout\ = (carry_cnt(22) & (\Add3~43\ $ (GND))) # (!carry_cnt(22) & (!\Add3~43\ & VCC))
-- \Add3~45\ = CARRY((carry_cnt(22) & !\Add3~43\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => carry_cnt(22),
	datad => VCC,
	cin => \Add3~43\,
	combout => \Add3~44_combout\,
	cout => \Add3~45\);

-- Location: LCCOMB_X19_Y15_N18
\carry_cnt~16\ : cycloneiii_lcell_comb
-- Equation(s):
-- \carry_cnt~16_combout\ = (\sw[0]~input_o\ & \Add3~44_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \sw[0]~input_o\,
	datad => \Add3~44_combout\,
	combout => \carry_cnt~16_combout\);

-- Location: FF_X20_Y15_N13
\carry_cnt[22]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \carry_cnt~16_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => carry_cnt(22));

-- Location: LCCOMB_X20_Y15_N14
\Add3~46\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add3~46_combout\ = (carry_cnt(23) & (!\Add3~45\)) # (!carry_cnt(23) & ((\Add3~45\) # (GND)))
-- \Add3~47\ = CARRY((!\Add3~45\) # (!carry_cnt(23)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => carry_cnt(23),
	datad => VCC,
	cin => \Add3~45\,
	combout => \Add3~46_combout\,
	cout => \Add3~47\);

-- Location: LCCOMB_X19_Y15_N4
\carry_cnt~15\ : cycloneiii_lcell_comb
-- Equation(s):
-- \carry_cnt~15_combout\ = (\sw[0]~input_o\ & \Add3~46_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \sw[0]~input_o\,
	datac => \Add3~46_combout\,
	combout => \carry_cnt~15_combout\);

-- Location: FF_X20_Y15_N27
\carry_cnt[23]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \carry_cnt~15_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => carry_cnt(23));

-- Location: LCCOMB_X20_Y15_N16
\Add3~48\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add3~48_combout\ = (carry_cnt(24) & (\Add3~47\ $ (GND))) # (!carry_cnt(24) & (!\Add3~47\ & VCC))
-- \Add3~49\ = CARRY((carry_cnt(24) & !\Add3~47\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => carry_cnt(24),
	datad => VCC,
	cin => \Add3~47\,
	combout => \Add3~48_combout\,
	cout => \Add3~49\);

-- Location: LCCOMB_X20_Y17_N30
\carry_cnt~14\ : cycloneiii_lcell_comb
-- Equation(s):
-- \carry_cnt~14_combout\ = (\Add3~48_combout\ & \sw[0]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add3~48_combout\,
	datac => \sw[0]~input_o\,
	combout => \carry_cnt~14_combout\);

-- Location: FF_X20_Y15_N11
\carry_cnt[24]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \carry_cnt~14_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => carry_cnt(24));

-- Location: LCCOMB_X20_Y15_N18
\Add3~50\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add3~50_combout\ = (carry_cnt(25) & (!\Add3~49\)) # (!carry_cnt(25) & ((\Add3~49\) # (GND)))
-- \Add3~51\ = CARRY((!\Add3~49\) # (!carry_cnt(25)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => carry_cnt(25),
	datad => VCC,
	cin => \Add3~49\,
	combout => \Add3~50_combout\,
	cout => \Add3~51\);

-- Location: LCCOMB_X20_Y18_N16
\carry_cnt~13\ : cycloneiii_lcell_comb
-- Equation(s):
-- \carry_cnt~13_combout\ = (\sw[0]~input_o\ & \Add3~50_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \sw[0]~input_o\,
	datad => \Add3~50_combout\,
	combout => \carry_cnt~13_combout\);

-- Location: FF_X20_Y15_N25
\carry_cnt[25]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \carry_cnt~13_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => carry_cnt(25));

-- Location: LCCOMB_X20_Y15_N20
\Add3~52\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add3~52_combout\ = (carry_cnt(26) & (\Add3~51\ $ (GND))) # (!carry_cnt(26) & (!\Add3~51\ & VCC))
-- \Add3~53\ = CARRY((carry_cnt(26) & !\Add3~51\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => carry_cnt(26),
	datad => VCC,
	cin => \Add3~51\,
	combout => \Add3~52_combout\,
	cout => \Add3~53\);

-- Location: LCCOMB_X19_Y15_N6
\carry_cnt~12\ : cycloneiii_lcell_comb
-- Equation(s):
-- \carry_cnt~12_combout\ = (\sw[0]~input_o\ & \Add3~52_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \sw[0]~input_o\,
	datac => \Add3~52_combout\,
	combout => \carry_cnt~12_combout\);

-- Location: FF_X20_Y15_N3
\carry_cnt[26]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \carry_cnt~12_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => carry_cnt(26));

-- Location: LCCOMB_X20_Y15_N22
\Add3~54\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add3~54_combout\ = (carry_cnt(27) & (!\Add3~53\)) # (!carry_cnt(27) & ((\Add3~53\) # (GND)))
-- \Add3~55\ = CARRY((!\Add3~53\) # (!carry_cnt(27)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => carry_cnt(27),
	datad => VCC,
	cin => \Add3~53\,
	combout => \Add3~54_combout\,
	cout => \Add3~55\);

-- Location: LCCOMB_X19_Y15_N0
\carry_cnt~11\ : cycloneiii_lcell_comb
-- Equation(s):
-- \carry_cnt~11_combout\ = (\sw[0]~input_o\ & \Add3~54_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \sw[0]~input_o\,
	datad => \Add3~54_combout\,
	combout => \carry_cnt~11_combout\);

-- Location: FF_X20_Y15_N23
\carry_cnt[27]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \carry_cnt~11_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => carry_cnt(27));

-- Location: LCCOMB_X20_Y15_N24
\Add3~56\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add3~56_combout\ = (carry_cnt(28) & (\Add3~55\ $ (GND))) # (!carry_cnt(28) & (!\Add3~55\ & VCC))
-- \Add3~57\ = CARRY((carry_cnt(28) & !\Add3~55\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => carry_cnt(28),
	datad => VCC,
	cin => \Add3~55\,
	combout => \Add3~56_combout\,
	cout => \Add3~57\);

-- Location: LCCOMB_X19_Y15_N10
\carry_cnt~10\ : cycloneiii_lcell_comb
-- Equation(s):
-- \carry_cnt~10_combout\ = (\sw[0]~input_o\ & \Add3~56_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \sw[0]~input_o\,
	datad => \Add3~56_combout\,
	combout => \carry_cnt~10_combout\);

-- Location: FF_X19_Y15_N11
\carry_cnt[28]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \carry_cnt~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => carry_cnt(28));

-- Location: LCCOMB_X21_Y15_N12
\Equal5~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Equal5~0_combout\ = (!\Add3~32_combout\ & (!\Add3~36_combout\ & (!\Add3~38_combout\ & !\Add3~34_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add3~32_combout\,
	datab => \Add3~36_combout\,
	datac => \Add3~38_combout\,
	datad => \Add3~34_combout\,
	combout => \Equal5~0_combout\);

-- Location: LCCOMB_X21_Y15_N2
\Equal5~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Equal5~1_combout\ = (!\Add3~42_combout\ & (!\Add3~40_combout\ & (!\Add3~44_combout\ & \Equal5~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add3~42_combout\,
	datab => \Add3~40_combout\,
	datac => \Add3~44_combout\,
	datad => \Equal5~0_combout\,
	combout => \Equal5~1_combout\);

-- Location: LCCOMB_X21_Y15_N20
\Equal5~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Equal5~2_combout\ = (!\Add3~46_combout\ & (!\Add3~50_combout\ & (!\Add3~48_combout\ & \Equal5~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add3~46_combout\,
	datab => \Add3~50_combout\,
	datac => \Add3~48_combout\,
	datad => \Equal5~1_combout\,
	combout => \Equal5~2_combout\);

-- Location: LCCOMB_X21_Y15_N18
\Equal5~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Equal5~3_combout\ = (!\Add3~54_combout\ & (!\Add3~52_combout\ & \Equal5~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Add3~54_combout\,
	datac => \Add3~52_combout\,
	datad => \Equal5~2_combout\,
	combout => \Equal5~3_combout\);

-- Location: LCCOMB_X21_Y15_N16
\Equal5~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Equal5~4_combout\ = (!\Add3~58_combout\ & (!\Add3~56_combout\ & (!\Add3~60_combout\ & \Equal5~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add3~58_combout\,
	datab => \Add3~56_combout\,
	datac => \Add3~60_combout\,
	datad => \Equal5~3_combout\,
	combout => \Equal5~4_combout\);

-- Location: IOIBUF_X0_Y25_N15
\sw[6]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_sw(6),
	o => \sw[6]~input_o\);

-- Location: IOIBUF_X0_Y25_N1
\sw[9]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_sw(9),
	o => \sw[9]~input_o\);

-- Location: IOIBUF_X0_Y26_N8
\sw[7]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_sw(7),
	o => \sw[7]~input_o\);

-- Location: IOIBUF_X0_Y27_N1
\sw[1]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_sw(1),
	o => \sw[1]~input_o\);

-- Location: IOIBUF_X0_Y26_N1
\sw[8]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_sw(8),
	o => \sw[8]~input_o\);

-- Location: LCCOMB_X20_Y17_N24
\threshold[0]~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \threshold[0]~2_combout\ = ((!\sw[9]~input_o\ & (\sw[7]~input_o\ $ (!\sw[8]~input_o\)))) # (!\sw[1]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100111100011111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sw[9]~input_o\,
	datab => \sw[7]~input_o\,
	datac => \sw[1]~input_o\,
	datad => \sw[8]~input_o\,
	combout => \threshold[0]~2_combout\);

-- Location: LCCOMB_X20_Y17_N16
\Phase~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Phase~1_combout\ = (\sw[9]~input_o\ & (\sw[7]~input_o\ & \sw[8]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sw[9]~input_o\,
	datac => \sw[7]~input_o\,
	datad => \sw[8]~input_o\,
	combout => \Phase~1_combout\);

-- Location: LCCOMB_X20_Y17_N26
\Phase[3]~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Phase[3]~0_combout\ = (\threshold[0]~2_combout\ & (Phase(3))) # (!\threshold[0]~2_combout\ & ((\Phase~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \threshold[0]~2_combout\,
	datac => Phase(3),
	datad => \Phase~1_combout\,
	combout => \Phase[3]~0_combout\);

-- Location: LCCOMB_X20_Y17_N28
\L|Equal6~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \L|Equal6~0_combout\ = (!Phase(3) & !Phase(2))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => Phase(3),
	datad => Phase(2),
	combout => \L|Equal6~0_combout\);

-- Location: LCCOMB_X20_Y17_N10
\Phase[1]~11\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Phase[1]~11_combout\ = (\sw[0]~input_o\ & (\L|Equal6~0_combout\ & ((Phase(0)) # (Phase(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => Phase(0),
	datab => Phase(1),
	datac => \sw[0]~input_o\,
	datad => \L|Equal6~0_combout\,
	combout => \Phase[1]~11_combout\);

-- Location: LCCOMB_X23_Y15_N26
\threshold[0]~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \threshold[0]~3_combout\ = (!\sw[0]~input_o\ & \threshold[0]~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sw[0]~input_o\,
	datad => \threshold[0]~2_combout\,
	combout => \threshold[0]~3_combout\);

-- Location: LCCOMB_X23_Y15_N24
\Phase[0]~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Phase[0]~4_combout\ = (\sw[0]~input_o\ & !Phase(3))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sw[0]~input_o\,
	datad => Phase(3),
	combout => \Phase[0]~4_combout\);

-- Location: LCCOMB_X23_Y15_N18
\Phase[0]~5\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Phase[0]~5_combout\ = (\Phase[0]~4_combout\ & ((Phase(1) & ((!Phase(2)))) # (!Phase(1) & (Phase(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100111000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => Phase(1),
	datab => Phase(0),
	datac => Phase(2),
	datad => \Phase[0]~4_combout\,
	combout => \Phase[0]~5_combout\);

-- Location: LCCOMB_X21_Y18_N4
\cnt[0]~8\ : cycloneiii_lcell_comb
-- Equation(s):
-- \cnt[0]~8_combout\ = cnt(0) $ (VCC)
-- \cnt[0]~9\ = CARRY(cnt(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => cnt(0),
	datad => VCC,
	combout => \cnt[0]~8_combout\,
	cout => \cnt[0]~9\);

-- Location: LCCOMB_X22_Y15_N16
\LessThan4~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \LessThan4~0_combout\ = (cnt(1) & cnt(2))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => cnt(1),
	datac => cnt(2),
	combout => \LessThan4~0_combout\);

-- Location: LCCOMB_X22_Y18_N30
\cnt[2]~22\ : cycloneiii_lcell_comb
-- Equation(s):
-- \cnt[2]~22_combout\ = (Phase(1) & Phase(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => Phase(1),
	datad => Phase(0),
	combout => \cnt[2]~22_combout\);

-- Location: LCCOMB_X22_Y18_N0
\cnt[2]~23\ : cycloneiii_lcell_comb
-- Equation(s):
-- \cnt[2]~23_combout\ = (\cnt[2]~22_combout\ & (((!cnt(4)) # (!cnt(3))) # (!\LessThan4~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LessThan4~0_combout\,
	datab => cnt(3),
	datac => \cnt[2]~22_combout\,
	datad => cnt(4),
	combout => \cnt[2]~23_combout\);

-- Location: LCCOMB_X22_Y18_N10
\cnt[2]~25\ : cycloneiii_lcell_comb
-- Equation(s):
-- \cnt[2]~25_combout\ = (cnt(1) & (!cnt(3) & ((Phase(0)) # (!cnt(2))))) # (!cnt(1) & (((!cnt(2) & Phase(0))) # (!cnt(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001111100000111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => cnt(1),
	datab => cnt(2),
	datac => cnt(3),
	datad => Phase(0),
	combout => \cnt[2]~25_combout\);

-- Location: LCCOMB_X22_Y18_N24
\cnt[2]~24\ : cycloneiii_lcell_comb
-- Equation(s):
-- \cnt[2]~24_combout\ = (!cnt(1) & (!cnt(2) & (!cnt(3) & Phase(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => cnt(1),
	datab => cnt(2),
	datac => cnt(3),
	datad => Phase(2),
	combout => \cnt[2]~24_combout\);

-- Location: LCCOMB_X22_Y18_N8
\cnt[2]~26\ : cycloneiii_lcell_comb
-- Equation(s):
-- \cnt[2]~26_combout\ = (\cnt[2]~24_combout\) # ((\cnt[2]~25_combout\ & (!\cnt[2]~22_combout\ & !Phase(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011001110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cnt[2]~25_combout\,
	datab => \cnt[2]~24_combout\,
	datac => \cnt[2]~22_combout\,
	datad => Phase(2),
	combout => \cnt[2]~26_combout\);

-- Location: LCCOMB_X21_Y18_N0
\cnt[2]~27\ : cycloneiii_lcell_comb
-- Equation(s):
-- \cnt[2]~27_combout\ = (cnt(4) & (!Phase(2) & (\cnt[2]~23_combout\))) # (!cnt(4) & ((\cnt[2]~26_combout\) # ((!Phase(2) & \cnt[2]~23_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111010100110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => cnt(4),
	datab => Phase(2),
	datac => \cnt[2]~23_combout\,
	datad => \cnt[2]~26_combout\,
	combout => \cnt[2]~27_combout\);

-- Location: LCCOMB_X22_Y18_N22
\cnt[2]~28\ : cycloneiii_lcell_comb
-- Equation(s):
-- \cnt[2]~28_combout\ = ((!Phase(3) & ((!\Mux108~6_combout\) # (!\cnt[2]~27_combout\)))) # (!\sw[0]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011011101110111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => Phase(3),
	datab => \sw[0]~input_o\,
	datac => \cnt[2]~27_combout\,
	datad => \Mux108~6_combout\,
	combout => \cnt[2]~28_combout\);

-- Location: LCCOMB_X24_Y17_N2
\cnt[2]~29\ : cycloneiii_lcell_comb
-- Equation(s):
-- \cnt[2]~29_combout\ = (Phase(1) & ((Phase(2)) # ((Phase(3))))) # (!Phase(1) & ((Phase(2) & (Phase(3))) # (!Phase(2) & ((!Phase(0))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110100011111001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => Phase(1),
	datab => Phase(2),
	datac => Phase(3),
	datad => Phase(0),
	combout => \cnt[2]~29_combout\);

-- Location: LCCOMB_X22_Y17_N4
\valid_counter[0]~29\ : cycloneiii_lcell_comb
-- Equation(s):
-- \valid_counter[0]~29_combout\ = valid_counter(0) $ (VCC)
-- \valid_counter[0]~30\ = CARRY(valid_counter(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => valid_counter(0),
	datad => VCC,
	combout => \valid_counter[0]~29_combout\,
	cout => \valid_counter[0]~30\);

-- Location: LCCOMB_X17_Y15_N16
\~GND\ : cycloneiii_lcell_comb
-- Equation(s):
-- \~GND~combout\ = GND

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	combout => \~GND~combout\);

-- Location: FF_X22_Y17_N5
\valid_counter[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \valid_counter[0]~29_combout\,
	asdata => \~GND~combout\,
	sload => \cnt[2]~30_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => valid_counter(0));

-- Location: LCCOMB_X22_Y17_N6
\valid_counter[1]~31\ : cycloneiii_lcell_comb
-- Equation(s):
-- \valid_counter[1]~31_combout\ = (valid_counter(1) & (!\valid_counter[0]~30\)) # (!valid_counter(1) & ((\valid_counter[0]~30\) # (GND)))
-- \valid_counter[1]~32\ = CARRY((!\valid_counter[0]~30\) # (!valid_counter(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => valid_counter(1),
	datad => VCC,
	cin => \valid_counter[0]~30\,
	combout => \valid_counter[1]~31_combout\,
	cout => \valid_counter[1]~32\);

-- Location: LCCOMB_X23_Y16_N4
\sw[0]~_wirecell\ : cycloneiii_lcell_comb
-- Equation(s):
-- \sw[0]~_wirecell_combout\ = !\sw[0]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \sw[0]~input_o\,
	combout => \sw[0]~_wirecell_combout\);

-- Location: FF_X22_Y17_N7
\valid_counter[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \valid_counter[1]~31_combout\,
	asdata => \sw[0]~_wirecell_combout\,
	sload => \cnt[2]~30_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => valid_counter(1));

-- Location: LCCOMB_X22_Y17_N8
\valid_counter[2]~33\ : cycloneiii_lcell_comb
-- Equation(s):
-- \valid_counter[2]~33_combout\ = (valid_counter(2) & (\valid_counter[1]~32\ $ (GND))) # (!valid_counter(2) & (!\valid_counter[1]~32\ & VCC))
-- \valid_counter[2]~34\ = CARRY((valid_counter(2) & !\valid_counter[1]~32\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => valid_counter(2),
	datad => VCC,
	cin => \valid_counter[1]~32\,
	combout => \valid_counter[2]~33_combout\,
	cout => \valid_counter[2]~34\);

-- Location: FF_X22_Y17_N9
\valid_counter[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \valid_counter[2]~33_combout\,
	asdata => \~GND~combout\,
	sload => \cnt[2]~30_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => valid_counter(2));

-- Location: LCCOMB_X22_Y17_N10
\valid_counter[3]~35\ : cycloneiii_lcell_comb
-- Equation(s):
-- \valid_counter[3]~35_combout\ = (valid_counter(3) & (!\valid_counter[2]~34\)) # (!valid_counter(3) & ((\valid_counter[2]~34\) # (GND)))
-- \valid_counter[3]~36\ = CARRY((!\valid_counter[2]~34\) # (!valid_counter(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => valid_counter(3),
	datad => VCC,
	cin => \valid_counter[2]~34\,
	combout => \valid_counter[3]~35_combout\,
	cout => \valid_counter[3]~36\);

-- Location: FF_X22_Y17_N11
\valid_counter[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \valid_counter[3]~35_combout\,
	asdata => \sw[0]~_wirecell_combout\,
	sload => \cnt[2]~30_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => valid_counter(3));

-- Location: LCCOMB_X22_Y17_N12
\valid_counter[4]~37\ : cycloneiii_lcell_comb
-- Equation(s):
-- \valid_counter[4]~37_combout\ = (valid_counter(4) & (\valid_counter[3]~36\ $ (GND))) # (!valid_counter(4) & (!\valid_counter[3]~36\ & VCC))
-- \valid_counter[4]~38\ = CARRY((valid_counter(4) & !\valid_counter[3]~36\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => valid_counter(4),
	datad => VCC,
	cin => \valid_counter[3]~36\,
	combout => \valid_counter[4]~37_combout\,
	cout => \valid_counter[4]~38\);

-- Location: FF_X22_Y17_N13
\valid_counter[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \valid_counter[4]~37_combout\,
	asdata => \~GND~combout\,
	sload => \cnt[2]~30_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => valid_counter(4));

-- Location: LCCOMB_X22_Y17_N14
\valid_counter[5]~39\ : cycloneiii_lcell_comb
-- Equation(s):
-- \valid_counter[5]~39_combout\ = (valid_counter(5) & (!\valid_counter[4]~38\)) # (!valid_counter(5) & ((\valid_counter[4]~38\) # (GND)))
-- \valid_counter[5]~40\ = CARRY((!\valid_counter[4]~38\) # (!valid_counter(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => valid_counter(5),
	datad => VCC,
	cin => \valid_counter[4]~38\,
	combout => \valid_counter[5]~39_combout\,
	cout => \valid_counter[5]~40\);

-- Location: FF_X22_Y17_N15
\valid_counter[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \valid_counter[5]~39_combout\,
	asdata => \~GND~combout\,
	sload => \cnt[2]~30_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => valid_counter(5));

-- Location: LCCOMB_X22_Y17_N16
\valid_counter[6]~41\ : cycloneiii_lcell_comb
-- Equation(s):
-- \valid_counter[6]~41_combout\ = (valid_counter(6) & (\valid_counter[5]~40\ $ (GND))) # (!valid_counter(6) & (!\valid_counter[5]~40\ & VCC))
-- \valid_counter[6]~42\ = CARRY((valid_counter(6) & !\valid_counter[5]~40\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => valid_counter(6),
	datad => VCC,
	cin => \valid_counter[5]~40\,
	combout => \valid_counter[6]~41_combout\,
	cout => \valid_counter[6]~42\);

-- Location: FF_X22_Y17_N17
\valid_counter[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \valid_counter[6]~41_combout\,
	asdata => \~GND~combout\,
	sload => \cnt[2]~30_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => valid_counter(6));

-- Location: LCCOMB_X22_Y17_N18
\valid_counter[7]~43\ : cycloneiii_lcell_comb
-- Equation(s):
-- \valid_counter[7]~43_combout\ = (valid_counter(7) & (!\valid_counter[6]~42\)) # (!valid_counter(7) & ((\valid_counter[6]~42\) # (GND)))
-- \valid_counter[7]~44\ = CARRY((!\valid_counter[6]~42\) # (!valid_counter(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => valid_counter(7),
	datad => VCC,
	cin => \valid_counter[6]~42\,
	combout => \valid_counter[7]~43_combout\,
	cout => \valid_counter[7]~44\);

-- Location: FF_X22_Y17_N19
\valid_counter[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \valid_counter[7]~43_combout\,
	asdata => \sw[0]~_wirecell_combout\,
	sload => \cnt[2]~30_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => valid_counter(7));

-- Location: LCCOMB_X22_Y17_N20
\valid_counter[8]~45\ : cycloneiii_lcell_comb
-- Equation(s):
-- \valid_counter[8]~45_combout\ = (valid_counter(8) & (\valid_counter[7]~44\ $ (GND))) # (!valid_counter(8) & (!\valid_counter[7]~44\ & VCC))
-- \valid_counter[8]~46\ = CARRY((valid_counter(8) & !\valid_counter[7]~44\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => valid_counter(8),
	datad => VCC,
	cin => \valid_counter[7]~44\,
	combout => \valid_counter[8]~45_combout\,
	cout => \valid_counter[8]~46\);

-- Location: FF_X22_Y17_N21
\valid_counter[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \valid_counter[8]~45_combout\,
	asdata => \~GND~combout\,
	sload => \cnt[2]~30_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => valid_counter(8));

-- Location: LCCOMB_X22_Y17_N22
\valid_counter[9]~47\ : cycloneiii_lcell_comb
-- Equation(s):
-- \valid_counter[9]~47_combout\ = (valid_counter(9) & (!\valid_counter[8]~46\)) # (!valid_counter(9) & ((\valid_counter[8]~46\) # (GND)))
-- \valid_counter[9]~48\ = CARRY((!\valid_counter[8]~46\) # (!valid_counter(9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => valid_counter(9),
	datad => VCC,
	cin => \valid_counter[8]~46\,
	combout => \valid_counter[9]~47_combout\,
	cout => \valid_counter[9]~48\);

-- Location: FF_X22_Y17_N23
\valid_counter[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \valid_counter[9]~47_combout\,
	asdata => \~GND~combout\,
	sload => \cnt[2]~30_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => valid_counter(9));

-- Location: LCCOMB_X22_Y17_N24
\valid_counter[10]~49\ : cycloneiii_lcell_comb
-- Equation(s):
-- \valid_counter[10]~49_combout\ = (valid_counter(10) & (\valid_counter[9]~48\ $ (GND))) # (!valid_counter(10) & (!\valid_counter[9]~48\ & VCC))
-- \valid_counter[10]~50\ = CARRY((valid_counter(10) & !\valid_counter[9]~48\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => valid_counter(10),
	datad => VCC,
	cin => \valid_counter[9]~48\,
	combout => \valid_counter[10]~49_combout\,
	cout => \valid_counter[10]~50\);

-- Location: FF_X22_Y17_N25
\valid_counter[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \valid_counter[10]~49_combout\,
	asdata => \~GND~combout\,
	sload => \cnt[2]~30_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => valid_counter(10));

-- Location: LCCOMB_X22_Y17_N26
\valid_counter[11]~51\ : cycloneiii_lcell_comb
-- Equation(s):
-- \valid_counter[11]~51_combout\ = (valid_counter(11) & (!\valid_counter[10]~50\)) # (!valid_counter(11) & ((\valid_counter[10]~50\) # (GND)))
-- \valid_counter[11]~52\ = CARRY((!\valid_counter[10]~50\) # (!valid_counter(11)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => valid_counter(11),
	datad => VCC,
	cin => \valid_counter[10]~50\,
	combout => \valid_counter[11]~51_combout\,
	cout => \valid_counter[11]~52\);

-- Location: FF_X22_Y17_N27
\valid_counter[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \valid_counter[11]~51_combout\,
	asdata => \~GND~combout\,
	sload => \cnt[2]~30_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => valid_counter(11));

-- Location: LCCOMB_X22_Y17_N28
\valid_counter[12]~53\ : cycloneiii_lcell_comb
-- Equation(s):
-- \valid_counter[12]~53_combout\ = (valid_counter(12) & (\valid_counter[11]~52\ $ (GND))) # (!valid_counter(12) & (!\valid_counter[11]~52\ & VCC))
-- \valid_counter[12]~54\ = CARRY((valid_counter(12) & !\valid_counter[11]~52\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => valid_counter(12),
	datad => VCC,
	cin => \valid_counter[11]~52\,
	combout => \valid_counter[12]~53_combout\,
	cout => \valid_counter[12]~54\);

-- Location: FF_X22_Y17_N29
\valid_counter[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \valid_counter[12]~53_combout\,
	asdata => \sw[0]~_wirecell_combout\,
	sload => \cnt[2]~30_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => valid_counter(12));

-- Location: LCCOMB_X22_Y17_N30
\valid_counter[13]~55\ : cycloneiii_lcell_comb
-- Equation(s):
-- \valid_counter[13]~55_combout\ = (valid_counter(13) & (!\valid_counter[12]~54\)) # (!valid_counter(13) & ((\valid_counter[12]~54\) # (GND)))
-- \valid_counter[13]~56\ = CARRY((!\valid_counter[12]~54\) # (!valid_counter(13)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => valid_counter(13),
	datad => VCC,
	cin => \valid_counter[12]~54\,
	combout => \valid_counter[13]~55_combout\,
	cout => \valid_counter[13]~56\);

-- Location: FF_X22_Y17_N31
\valid_counter[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \valid_counter[13]~55_combout\,
	asdata => \sw[0]~_wirecell_combout\,
	sload => \cnt[2]~30_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => valid_counter(13));

-- Location: LCCOMB_X22_Y16_N0
\valid_counter[14]~57\ : cycloneiii_lcell_comb
-- Equation(s):
-- \valid_counter[14]~57_combout\ = (valid_counter(14) & (\valid_counter[13]~56\ $ (GND))) # (!valid_counter(14) & (!\valid_counter[13]~56\ & VCC))
-- \valid_counter[14]~58\ = CARRY((valid_counter(14) & !\valid_counter[13]~56\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => valid_counter(14),
	datad => VCC,
	cin => \valid_counter[13]~56\,
	combout => \valid_counter[14]~57_combout\,
	cout => \valid_counter[14]~58\);

-- Location: FF_X22_Y16_N1
\valid_counter[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \valid_counter[14]~57_combout\,
	asdata => \sw[0]~_wirecell_combout\,
	sload => \cnt[2]~30_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => valid_counter(14));

-- Location: LCCOMB_X22_Y16_N2
\valid_counter[15]~59\ : cycloneiii_lcell_comb
-- Equation(s):
-- \valid_counter[15]~59_combout\ = (valid_counter(15) & (!\valid_counter[14]~58\)) # (!valid_counter(15) & ((\valid_counter[14]~58\) # (GND)))
-- \valid_counter[15]~60\ = CARRY((!\valid_counter[14]~58\) # (!valid_counter(15)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => valid_counter(15),
	datad => VCC,
	cin => \valid_counter[14]~58\,
	combout => \valid_counter[15]~59_combout\,
	cout => \valid_counter[15]~60\);

-- Location: FF_X22_Y16_N3
\valid_counter[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \valid_counter[15]~59_combout\,
	asdata => \sw[0]~_wirecell_combout\,
	sload => \cnt[2]~30_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => valid_counter(15));

-- Location: LCCOMB_X22_Y16_N4
\valid_counter[16]~61\ : cycloneiii_lcell_comb
-- Equation(s):
-- \valid_counter[16]~61_combout\ = (valid_counter(16) & (\valid_counter[15]~60\ $ (GND))) # (!valid_counter(16) & (!\valid_counter[15]~60\ & VCC))
-- \valid_counter[16]~62\ = CARRY((valid_counter(16) & !\valid_counter[15]~60\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => valid_counter(16),
	datad => VCC,
	cin => \valid_counter[15]~60\,
	combout => \valid_counter[16]~61_combout\,
	cout => \valid_counter[16]~62\);

-- Location: FF_X22_Y16_N5
\valid_counter[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \valid_counter[16]~61_combout\,
	asdata => \~GND~combout\,
	sload => \cnt[2]~30_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => valid_counter(16));

-- Location: LCCOMB_X22_Y16_N6
\valid_counter[17]~63\ : cycloneiii_lcell_comb
-- Equation(s):
-- \valid_counter[17]~63_combout\ = (valid_counter(17) & (!\valid_counter[16]~62\)) # (!valid_counter(17) & ((\valid_counter[16]~62\) # (GND)))
-- \valid_counter[17]~64\ = CARRY((!\valid_counter[16]~62\) # (!valid_counter(17)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => valid_counter(17),
	datad => VCC,
	cin => \valid_counter[16]~62\,
	combout => \valid_counter[17]~63_combout\,
	cout => \valid_counter[17]~64\);

-- Location: FF_X22_Y16_N7
\valid_counter[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \valid_counter[17]~63_combout\,
	asdata => \sw[0]~_wirecell_combout\,
	sload => \cnt[2]~30_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => valid_counter(17));

-- Location: LCCOMB_X22_Y16_N8
\valid_counter[18]~65\ : cycloneiii_lcell_comb
-- Equation(s):
-- \valid_counter[18]~65_combout\ = (valid_counter(18) & (\valid_counter[17]~64\ $ (GND))) # (!valid_counter(18) & (!\valid_counter[17]~64\ & VCC))
-- \valid_counter[18]~66\ = CARRY((valid_counter(18) & !\valid_counter[17]~64\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => valid_counter(18),
	datad => VCC,
	cin => \valid_counter[17]~64\,
	combout => \valid_counter[18]~65_combout\,
	cout => \valid_counter[18]~66\);

-- Location: FF_X22_Y16_N9
\valid_counter[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \valid_counter[18]~65_combout\,
	asdata => \~GND~combout\,
	sload => \cnt[2]~30_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => valid_counter(18));

-- Location: LCCOMB_X22_Y16_N10
\valid_counter[19]~67\ : cycloneiii_lcell_comb
-- Equation(s):
-- \valid_counter[19]~67_combout\ = (valid_counter(19) & (!\valid_counter[18]~66\)) # (!valid_counter(19) & ((\valid_counter[18]~66\) # (GND)))
-- \valid_counter[19]~68\ = CARRY((!\valid_counter[18]~66\) # (!valid_counter(19)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => valid_counter(19),
	datad => VCC,
	cin => \valid_counter[18]~66\,
	combout => \valid_counter[19]~67_combout\,
	cout => \valid_counter[19]~68\);

-- Location: FF_X22_Y16_N11
\valid_counter[19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \valid_counter[19]~67_combout\,
	asdata => \sw[0]~_wirecell_combout\,
	sload => \cnt[2]~30_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => valid_counter(19));

-- Location: LCCOMB_X22_Y16_N12
\valid_counter[20]~69\ : cycloneiii_lcell_comb
-- Equation(s):
-- \valid_counter[20]~69_combout\ = (valid_counter(20) & (\valid_counter[19]~68\ $ (GND))) # (!valid_counter(20) & (!\valid_counter[19]~68\ & VCC))
-- \valid_counter[20]~70\ = CARRY((valid_counter(20) & !\valid_counter[19]~68\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => valid_counter(20),
	datad => VCC,
	cin => \valid_counter[19]~68\,
	combout => \valid_counter[20]~69_combout\,
	cout => \valid_counter[20]~70\);

-- Location: FF_X22_Y16_N13
\valid_counter[20]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \valid_counter[20]~69_combout\,
	asdata => \sw[0]~_wirecell_combout\,
	sload => \cnt[2]~30_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => valid_counter(20));

-- Location: LCCOMB_X22_Y16_N14
\valid_counter[21]~71\ : cycloneiii_lcell_comb
-- Equation(s):
-- \valid_counter[21]~71_combout\ = (valid_counter(21) & (!\valid_counter[20]~70\)) # (!valid_counter(21) & ((\valid_counter[20]~70\) # (GND)))
-- \valid_counter[21]~72\ = CARRY((!\valid_counter[20]~70\) # (!valid_counter(21)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => valid_counter(21),
	datad => VCC,
	cin => \valid_counter[20]~70\,
	combout => \valid_counter[21]~71_combout\,
	cout => \valid_counter[21]~72\);

-- Location: FF_X22_Y16_N15
\valid_counter[21]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \valid_counter[21]~71_combout\,
	asdata => \sw[0]~_wirecell_combout\,
	sload => \cnt[2]~30_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => valid_counter(21));

-- Location: LCCOMB_X22_Y16_N16
\valid_counter[22]~73\ : cycloneiii_lcell_comb
-- Equation(s):
-- \valid_counter[22]~73_combout\ = (valid_counter(22) & (\valid_counter[21]~72\ $ (GND))) # (!valid_counter(22) & (!\valid_counter[21]~72\ & VCC))
-- \valid_counter[22]~74\ = CARRY((valid_counter(22) & !\valid_counter[21]~72\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => valid_counter(22),
	datad => VCC,
	cin => \valid_counter[21]~72\,
	combout => \valid_counter[22]~73_combout\,
	cout => \valid_counter[22]~74\);

-- Location: FF_X22_Y16_N17
\valid_counter[22]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \valid_counter[22]~73_combout\,
	asdata => \sw[0]~_wirecell_combout\,
	sload => \cnt[2]~30_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => valid_counter(22));

-- Location: LCCOMB_X22_Y16_N18
\valid_counter[23]~75\ : cycloneiii_lcell_comb
-- Equation(s):
-- \valid_counter[23]~75_combout\ = (valid_counter(23) & (!\valid_counter[22]~74\)) # (!valid_counter(23) & ((\valid_counter[22]~74\) # (GND)))
-- \valid_counter[23]~76\ = CARRY((!\valid_counter[22]~74\) # (!valid_counter(23)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => valid_counter(23),
	datad => VCC,
	cin => \valid_counter[22]~74\,
	combout => \valid_counter[23]~75_combout\,
	cout => \valid_counter[23]~76\);

-- Location: FF_X22_Y16_N19
\valid_counter[23]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \valid_counter[23]~75_combout\,
	asdata => \sw[0]~_wirecell_combout\,
	sload => \cnt[2]~30_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => valid_counter(23));

-- Location: LCCOMB_X22_Y16_N20
\valid_counter[24]~77\ : cycloneiii_lcell_comb
-- Equation(s):
-- \valid_counter[24]~77_combout\ = (valid_counter(24) & (\valid_counter[23]~76\ $ (GND))) # (!valid_counter(24) & (!\valid_counter[23]~76\ & VCC))
-- \valid_counter[24]~78\ = CARRY((valid_counter(24) & !\valid_counter[23]~76\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => valid_counter(24),
	datad => VCC,
	cin => \valid_counter[23]~76\,
	combout => \valid_counter[24]~77_combout\,
	cout => \valid_counter[24]~78\);

-- Location: FF_X22_Y16_N21
\valid_counter[24]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \valid_counter[24]~77_combout\,
	asdata => \~GND~combout\,
	sload => \cnt[2]~30_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => valid_counter(24));

-- Location: LCCOMB_X22_Y16_N22
\valid_counter[25]~79\ : cycloneiii_lcell_comb
-- Equation(s):
-- \valid_counter[25]~79_combout\ = (valid_counter(25) & (!\valid_counter[24]~78\)) # (!valid_counter(25) & ((\valid_counter[24]~78\) # (GND)))
-- \valid_counter[25]~80\ = CARRY((!\valid_counter[24]~78\) # (!valid_counter(25)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => valid_counter(25),
	datad => VCC,
	cin => \valid_counter[24]~78\,
	combout => \valid_counter[25]~79_combout\,
	cout => \valid_counter[25]~80\);

-- Location: FF_X22_Y16_N23
\valid_counter[25]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \valid_counter[25]~79_combout\,
	asdata => \sw[0]~_wirecell_combout\,
	sload => \cnt[2]~30_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => valid_counter(25));

-- Location: LCCOMB_X22_Y16_N24
\valid_counter[26]~81\ : cycloneiii_lcell_comb
-- Equation(s):
-- \valid_counter[26]~81_combout\ = (valid_counter(26) & (\valid_counter[25]~80\ $ (GND))) # (!valid_counter(26) & (!\valid_counter[25]~80\ & VCC))
-- \valid_counter[26]~82\ = CARRY((valid_counter(26) & !\valid_counter[25]~80\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => valid_counter(26),
	datad => VCC,
	cin => \valid_counter[25]~80\,
	combout => \valid_counter[26]~81_combout\,
	cout => \valid_counter[26]~82\);

-- Location: FF_X22_Y16_N25
\valid_counter[26]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \valid_counter[26]~81_combout\,
	asdata => \~GND~combout\,
	sload => \cnt[2]~30_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => valid_counter(26));

-- Location: LCCOMB_X22_Y16_N26
\valid_counter[27]~83\ : cycloneiii_lcell_comb
-- Equation(s):
-- \valid_counter[27]~83_combout\ = (valid_counter(27) & (!\valid_counter[26]~82\)) # (!valid_counter(27) & ((\valid_counter[26]~82\) # (GND)))
-- \valid_counter[27]~84\ = CARRY((!\valid_counter[26]~82\) # (!valid_counter(27)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => valid_counter(27),
	datad => VCC,
	cin => \valid_counter[26]~82\,
	combout => \valid_counter[27]~83_combout\,
	cout => \valid_counter[27]~84\);

-- Location: FF_X22_Y16_N27
\valid_counter[27]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \valid_counter[27]~83_combout\,
	asdata => \~GND~combout\,
	sload => \cnt[2]~30_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => valid_counter(27));

-- Location: LCCOMB_X22_Y16_N28
\valid_counter[28]~85\ : cycloneiii_lcell_comb
-- Equation(s):
-- \valid_counter[28]~85_combout\ = \valid_counter[27]~84\ $ (!valid_counter(28))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => valid_counter(28),
	cin => \valid_counter[27]~84\,
	combout => \valid_counter[28]~85_combout\);

-- Location: FF_X22_Y16_N29
\valid_counter[28]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \valid_counter[28]~85_combout\,
	asdata => \~GND~combout\,
	sload => \cnt[2]~30_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => valid_counter(28));

-- Location: LCCOMB_X23_Y14_N10
\Mux108~5\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux108~5_combout\ = (!cnt(6) & (!cnt(4) & !cnt(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => cnt(6),
	datac => cnt(4),
	datad => cnt(5),
	combout => \Mux108~5_combout\);

-- Location: LCCOMB_X23_Y14_N4
\cnt[2]~7\ : cycloneiii_lcell_comb
-- Equation(s):
-- \cnt[2]~7_combout\ = (!cnt(2) & !cnt(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => cnt(2),
	datad => cnt(1),
	combout => \cnt[2]~7_combout\);

-- Location: LCCOMB_X23_Y14_N0
\cnt[2]~31\ : cycloneiii_lcell_comb
-- Equation(s):
-- \cnt[2]~31_combout\ = Phase(1) $ (Phase(2))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => Phase(1),
	datac => Phase(2),
	combout => \cnt[2]~31_combout\);

-- Location: LCCOMB_X23_Y14_N26
\threshold[0]~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \threshold[0]~6_combout\ = ((\Mux108~5_combout\ & (!cnt(3) & \cnt[2]~7_combout\))) # (!\cnt[2]~31_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux108~5_combout\,
	datab => cnt(3),
	datac => \cnt[2]~7_combout\,
	datad => \cnt[2]~31_combout\,
	combout => \threshold[0]~6_combout\);

-- Location: LCCOMB_X23_Y14_N12
\Phase[0]~14\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Phase[0]~14_combout\ = (!cnt(4) & (!cnt(3) & (!Phase(0) & !\LessThan4~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => cnt(4),
	datab => cnt(3),
	datac => Phase(0),
	datad => \LessThan4~0_combout\,
	combout => \Phase[0]~14_combout\);

-- Location: LCCOMB_X23_Y14_N2
\threshold[0]~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \threshold[0]~4_combout\ = (\Mux108~6_combout\ & (!Phase(2) & ((\Phase[0]~14_combout\) # (\cnt[2]~23_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux108~6_combout\,
	datab => Phase(2),
	datac => \Phase[0]~14_combout\,
	datad => \cnt[2]~23_combout\,
	combout => \threshold[0]~4_combout\);

-- Location: LCCOMB_X23_Y14_N20
\threshold[0]~5\ : cycloneiii_lcell_comb
-- Equation(s):
-- \threshold[0]~5_combout\ = (Phase(3)) # ((\cnt[2]~31_combout\ & ((!\L|Equal3~2_combout\))) # (!\cnt[2]~31_combout\ & (!Phase(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100011101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => Phase(0),
	datab => \cnt[2]~31_combout\,
	datac => \L|Equal3~2_combout\,
	datad => Phase(3),
	combout => \threshold[0]~5_combout\);

-- Location: LCCOMB_X23_Y14_N24
\threshold[0]~7\ : cycloneiii_lcell_comb
-- Equation(s):
-- \threshold[0]~7_combout\ = (\threshold[0]~4_combout\) # ((\threshold[0]~5_combout\) # ((\threshold[0]~6_combout\ & Phase(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \threshold[0]~6_combout\,
	datab => Phase(2),
	datac => \threshold[0]~4_combout\,
	datad => \threshold[0]~5_combout\,
	combout => \threshold[0]~7_combout\);

-- Location: LCCOMB_X23_Y14_N16
\threshold[12]~8\ : cycloneiii_lcell_comb
-- Equation(s):
-- \threshold[12]~8_combout\ = (threshold(12)) # ((\sw[0]~input_o\ & ((!\threshold[0]~7_combout\))) # (!\sw[0]~input_o\ & (!\threshold[0]~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000111111011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sw[0]~input_o\,
	datab => \threshold[0]~2_combout\,
	datac => threshold(12),
	datad => \threshold[0]~7_combout\,
	combout => \threshold[12]~8_combout\);

-- Location: FF_X23_Y14_N17
\threshold[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \threshold[12]~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => threshold(12));

-- Location: LCCOMB_X21_Y16_N24
\Mux108~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux108~0_combout\ = (valid_counter(28)) # ((valid_counter(27)) # ((valid_counter(26)) # (!threshold(12))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111101111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => valid_counter(28),
	datab => valid_counter(27),
	datac => threshold(12),
	datad => valid_counter(26),
	combout => \Mux108~0_combout\);

-- Location: LCCOMB_X21_Y16_N30
\LessThan0~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \LessThan0~0_combout\ = (valid_counter(21) & (valid_counter(19) & (valid_counter(20) & valid_counter(22))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => valid_counter(21),
	datab => valid_counter(19),
	datac => valid_counter(20),
	datad => valid_counter(22),
	combout => \LessThan0~0_combout\);

-- Location: LCCOMB_X22_Y16_N30
\LessThan0~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \LessThan0~4_combout\ = (valid_counter(9)) # ((valid_counter(10)) # ((valid_counter(8)) # (valid_counter(11))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => valid_counter(9),
	datab => valid_counter(10),
	datac => valid_counter(8),
	datad => valid_counter(11),
	combout => \LessThan0~4_combout\);

-- Location: LCCOMB_X22_Y17_N2
\LessThan0~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \LessThan0~2_combout\ = (valid_counter(3) & (valid_counter(4) & (valid_counter(2) & valid_counter(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => valid_counter(3),
	datab => valid_counter(4),
	datac => valid_counter(2),
	datad => valid_counter(1),
	combout => \LessThan0~2_combout\);

-- Location: LCCOMB_X21_Y16_N2
\LessThan0~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \LessThan0~3_combout\ = (valid_counter(5) & (valid_counter(6) & \LessThan0~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => valid_counter(5),
	datac => valid_counter(6),
	datad => \LessThan0~2_combout\,
	combout => \LessThan0~3_combout\);

-- Location: LCCOMB_X21_Y16_N4
\LessThan0~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \LessThan0~1_combout\ = (valid_counter(14) & (valid_counter(13) & (valid_counter(15) & valid_counter(12))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => valid_counter(14),
	datab => valid_counter(13),
	datac => valid_counter(15),
	datad => valid_counter(12),
	combout => \LessThan0~1_combout\);

-- Location: LCCOMB_X21_Y16_N16
\LessThan0~5\ : cycloneiii_lcell_comb
-- Equation(s):
-- \LessThan0~5_combout\ = (\LessThan0~1_combout\ & ((\LessThan0~4_combout\) # ((\LessThan0~3_combout\) # (valid_counter(7)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LessThan0~4_combout\,
	datab => \LessThan0~3_combout\,
	datac => \LessThan0~1_combout\,
	datad => valid_counter(7),
	combout => \LessThan0~5_combout\);

-- Location: LCCOMB_X21_Y16_N26
\Mux108~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux108~1_combout\ = (valid_counter(18)) # ((valid_counter(17) & ((valid_counter(16)) # (\LessThan0~5_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => valid_counter(16),
	datab => \LessThan0~5_combout\,
	datac => valid_counter(17),
	datad => valid_counter(18),
	combout => \Mux108~1_combout\);

-- Location: LCCOMB_X21_Y16_N8
\Mux108~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux108~2_combout\ = (\LessThan0~0_combout\ & (\Mux108~1_combout\ & valid_counter(23)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LessThan0~0_combout\,
	datac => \Mux108~1_combout\,
	datad => valid_counter(23),
	combout => \Mux108~2_combout\);

-- Location: LCCOMB_X21_Y16_N22
\Mux108~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux108~3_combout\ = (\Mux108~0_combout\) # ((valid_counter(25) & ((valid_counter(24)) # (\Mux108~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => valid_counter(24),
	datab => \Mux108~0_combout\,
	datac => \Mux108~2_combout\,
	datad => valid_counter(25),
	combout => \Mux108~3_combout\);

-- Location: LCCOMB_X22_Y17_N0
\SD|Selector3~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \SD|Selector3~0_combout\ = (!Phase(2) & ((Phase(1) & (!Phase(0) & !Phase(3))) # (!Phase(1) & (Phase(0) & Phase(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => Phase(1),
	datab => Phase(0),
	datac => Phase(3),
	datad => Phase(2),
	combout => \SD|Selector3~0_combout\);

-- Location: IOIBUF_X28_Y0_N8
\line_sensor[6]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_line_sensor(6),
	o => \line_sensor[6]~input_o\);

-- Location: IOIBUF_X32_Y0_N1
\line_sensor[4]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_line_sensor(4),
	o => \line_sensor[4]~input_o\);

-- Location: IOIBUF_X35_Y0_N29
\line_sensor[5]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_line_sensor(5),
	o => \line_sensor[5]~input_o\);

-- Location: LCCOMB_X24_Y16_N20
\soft_left_detector|count~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \soft_left_detector|count~0_combout\ = (\line_sensor[6]~input_o\ & (!\line_sensor[4]~input_o\ & !\line_sensor[5]~input_o\)) # (!\line_sensor[6]~input_o\ & ((!\line_sensor[5]~input_o\) # (!\line_sensor[4]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010101011111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \line_sensor[6]~input_o\,
	datac => \line_sensor[4]~input_o\,
	datad => \line_sensor[5]~input_o\,
	combout => \soft_left_detector|count~0_combout\);

-- Location: IOIBUF_X28_Y0_N1
\line_sensor[7]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_line_sensor(7),
	o => \line_sensor[7]~input_o\);

-- Location: IOIBUF_X35_Y0_N15
\line_sensor[3]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_line_sensor(3),
	o => \line_sensor[3]~input_o\);

-- Location: IOIBUF_X37_Y0_N15
\line_sensor[1]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_line_sensor(1),
	o => \line_sensor[1]~input_o\);

-- Location: LCCOMB_X24_Y16_N22
\SD|LessThan0~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \SD|LessThan0~0_combout\ = (\line_sensor[7]~input_o\ & ((\line_sensor[3]~input_o\ & ((\line_sensor[4]~input_o\) # (\line_sensor[1]~input_o\))) # (!\line_sensor[3]~input_o\ & (\line_sensor[4]~input_o\ $ (!\line_sensor[1]~input_o\))))) # 
-- (!\line_sensor[7]~input_o\ & (\line_sensor[3]~input_o\ $ (\line_sensor[4]~input_o\ $ (\line_sensor[1]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \line_sensor[7]~input_o\,
	datab => \line_sensor[3]~input_o\,
	datac => \line_sensor[4]~input_o\,
	datad => \line_sensor[1]~input_o\,
	combout => \SD|LessThan0~0_combout\);

-- Location: LCCOMB_X24_Y16_N0
\SD|LessThan0~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \SD|LessThan0~1_combout\ = (\line_sensor[7]~input_o\ & ((\line_sensor[3]~input_o\) # ((\line_sensor[4]~input_o\) # (\line_sensor[1]~input_o\)))) # (!\line_sensor[7]~input_o\ & ((\line_sensor[3]~input_o\ & ((\line_sensor[4]~input_o\) # 
-- (\line_sensor[1]~input_o\))) # (!\line_sensor[3]~input_o\ & (\line_sensor[4]~input_o\ & \line_sensor[1]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \line_sensor[7]~input_o\,
	datab => \line_sensor[3]~input_o\,
	datac => \line_sensor[4]~input_o\,
	datad => \line_sensor[1]~input_o\,
	combout => \SD|LessThan0~1_combout\);

-- Location: IOIBUF_X35_Y0_N22
\line_sensor[2]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_line_sensor(2),
	o => \line_sensor[2]~input_o\);

-- Location: IOIBUF_X37_Y0_N22
\line_sensor[0]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_line_sensor(0),
	o => \line_sensor[0]~input_o\);

-- Location: LCCOMB_X24_Y17_N8
\SD|LessThan0~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \SD|LessThan0~3_combout\ = (\line_sensor[2]~input_o\ & ((\line_sensor[6]~input_o\) # ((\line_sensor[0]~input_o\) # (\line_sensor[5]~input_o\)))) # (!\line_sensor[2]~input_o\ & ((\line_sensor[6]~input_o\ & ((\line_sensor[0]~input_o\) # 
-- (\line_sensor[5]~input_o\))) # (!\line_sensor[6]~input_o\ & (\line_sensor[0]~input_o\ & \line_sensor[5]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \line_sensor[2]~input_o\,
	datab => \line_sensor[6]~input_o\,
	datac => \line_sensor[0]~input_o\,
	datad => \line_sensor[5]~input_o\,
	combout => \SD|LessThan0~3_combout\);

-- Location: LCCOMB_X24_Y17_N24
\SD|LessThan0~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \SD|LessThan0~2_combout\ = (\line_sensor[2]~input_o\ & ((\line_sensor[6]~input_o\ & ((\line_sensor[0]~input_o\) # (\line_sensor[5]~input_o\))) # (!\line_sensor[6]~input_o\ & (\line_sensor[0]~input_o\ $ (!\line_sensor[5]~input_o\))))) # 
-- (!\line_sensor[2]~input_o\ & (\line_sensor[6]~input_o\ $ (\line_sensor[0]~input_o\ $ (\line_sensor[5]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \line_sensor[2]~input_o\,
	datab => \line_sensor[6]~input_o\,
	datac => \line_sensor[0]~input_o\,
	datad => \line_sensor[5]~input_o\,
	combout => \SD|LessThan0~2_combout\);

-- Location: LCCOMB_X24_Y17_N26
\SD|LessThan0~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \SD|LessThan0~4_combout\ = (\SD|LessThan0~1_combout\ & ((\SD|LessThan0~0_combout\) # ((\SD|LessThan0~3_combout\) # (\SD|LessThan0~2_combout\)))) # (!\SD|LessThan0~1_combout\ & (\SD|LessThan0~3_combout\ & ((\SD|LessThan0~0_combout\) # 
-- (\SD|LessThan0~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SD|LessThan0~0_combout\,
	datab => \SD|LessThan0~1_combout\,
	datac => \SD|LessThan0~3_combout\,
	datad => \SD|LessThan0~2_combout\,
	combout => \SD|LessThan0~4_combout\);

-- Location: LCCOMB_X27_Y17_N12
\soft_right_detector|count~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \soft_right_detector|count~0_combout\ = (\line_sensor[2]~input_o\ & (!\line_sensor[3]~input_o\ & !\line_sensor[1]~input_o\)) # (!\line_sensor[2]~input_o\ & ((!\line_sensor[1]~input_o\) # (!\line_sensor[3]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001100111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \line_sensor[2]~input_o\,
	datac => \line_sensor[3]~input_o\,
	datad => \line_sensor[1]~input_o\,
	combout => \soft_right_detector|count~0_combout\);

-- Location: LCCOMB_X24_Y17_N22
\SD|Selector3~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \SD|Selector3~1_combout\ = ((!\soft_left_detector|count~0_combout\ & !\soft_right_detector|count~0_combout\)) # (!\SD|LessThan0~4_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111101011111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \soft_left_detector|count~0_combout\,
	datac => \SD|LessThan0~4_combout\,
	datad => \soft_right_detector|count~0_combout\,
	combout => \SD|Selector3~1_combout\);

-- Location: LCCOMB_X24_Y17_N6
\SD|Selector3~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \SD|Selector3~2_combout\ = (Phase(2) & (!Phase(1) & ((Phase(0)) # (\SD|Selector3~1_combout\)))) # (!Phase(2) & (Phase(0) & ((\SD|Selector3~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => Phase(0),
	datab => Phase(1),
	datac => \SD|Selector3~1_combout\,
	datad => Phase(2),
	combout => \SD|Selector3~2_combout\);

-- Location: LCCOMB_X24_Y16_N26
\SD|line_status_new~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \SD|line_status_new~2_combout\ = (\line_sensor[6]~input_o\ & (\line_sensor[7]~input_o\ & \line_sensor[5]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \line_sensor[6]~input_o\,
	datac => \line_sensor[7]~input_o\,
	datad => \line_sensor[5]~input_o\,
	combout => \SD|line_status_new~2_combout\);

-- Location: LCCOMB_X24_Y16_N6
\middle_line_detector|count~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \middle_line_detector|count~0_combout\ = (\line_sensor[4]~input_o\) # (\line_sensor[3]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \line_sensor[4]~input_o\,
	datad => \line_sensor[3]~input_o\,
	combout => \middle_line_detector|count~0_combout\);

-- Location: LCCOMB_X27_Y17_N28
\SD|LessThan4~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \SD|LessThan4~0_combout\ = ((!\line_sensor[0]~input_o\) # (!\line_sensor[2]~input_o\)) # (!\line_sensor[1]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \line_sensor[1]~input_o\,
	datac => \line_sensor[2]~input_o\,
	datad => \line_sensor[0]~input_o\,
	combout => \SD|LessThan4~0_combout\);

-- Location: LCCOMB_X26_Y17_N20
\SD|line_status_new[2]~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \SD|line_status_new[2]~6_combout\ = (((\SD|LessThan4~0_combout\) # (!\SD|LessThan0~4_combout\)) # (!\middle_line_detector|count~0_combout\)) # (!\SD|line_status_new~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111101111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SD|line_status_new~2_combout\,
	datab => \middle_line_detector|count~0_combout\,
	datac => \SD|LessThan0~4_combout\,
	datad => \SD|LessThan4~0_combout\,
	combout => \SD|line_status_new[2]~6_combout\);

-- Location: LCCOMB_X26_Y17_N30
\L|Equal8~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \L|Equal8~0_combout\ = (!Phase(3) & (!Phase(2) & Phase(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => Phase(3),
	datac => Phase(2),
	datad => Phase(1),
	combout => \L|Equal8~0_combout\);

-- Location: LCCOMB_X26_Y17_N18
\SD|Selector4~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \SD|Selector4~0_combout\ = ((\soft_right_detector|count~0_combout\) # ((!Phase(0)) # (!\SD|line_status_new~2_combout\))) # (!\L|Equal8~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \L|Equal8~0_combout\,
	datab => \soft_right_detector|count~0_combout\,
	datac => \SD|line_status_new~2_combout\,
	datad => Phase(0),
	combout => \SD|Selector4~0_combout\);

-- Location: LCCOMB_X24_Y17_N30
\SD|line_status_new~10\ : cycloneiii_lcell_comb
-- Equation(s):
-- \SD|line_status_new~10_combout\ = (\SD|LessThan0~4_combout\ & ((\line_sensor[4]~input_o\ & ((\line_sensor[5]~input_o\) # (\line_sensor[6]~input_o\))) # (!\line_sensor[4]~input_o\ & (\line_sensor[5]~input_o\ & \line_sensor[6]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \line_sensor[4]~input_o\,
	datab => \line_sensor[5]~input_o\,
	datac => \SD|LessThan0~4_combout\,
	datad => \line_sensor[6]~input_o\,
	combout => \SD|line_status_new~10_combout\);

-- Location: LCCOMB_X26_Y17_N12
\SD|Selector5~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \SD|Selector5~0_combout\ = ((\soft_right_detector|count~0_combout\) # ((\middle_line_detector|count~0_combout\ & !\SD|LessThan4~0_combout\))) # (!\SD|line_status_new~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110111111101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SD|line_status_new~2_combout\,
	datab => \soft_right_detector|count~0_combout\,
	datac => \middle_line_detector|count~0_combout\,
	datad => \SD|LessThan4~0_combout\,
	combout => \SD|Selector5~0_combout\);

-- Location: LCCOMB_X26_Y17_N28
\SD|Selector5~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \SD|Selector5~1_combout\ = (\L|Equal8~0_combout\ & (((\SD|line_status_new~10_combout\ & \SD|Selector5~0_combout\)) # (!Phase(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SD|line_status_new~10_combout\,
	datab => \SD|Selector5~0_combout\,
	datac => \L|Equal8~0_combout\,
	datad => Phase(0),
	combout => \SD|Selector5~1_combout\);

-- Location: LCCOMB_X26_Y17_N22
\SD|myflag\ : cycloneiii_lcell_comb
-- Equation(s):
-- \SD|myflag~combout\ = (\SD|Selector5~1_combout\ & (\SD|Selector4~0_combout\)) # (!\SD|Selector5~1_combout\ & ((\SD|myflag~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SD|Selector4~0_combout\,
	datac => \SD|myflag~combout\,
	datad => \SD|Selector5~1_combout\,
	combout => \SD|myflag~combout\);

-- Location: LCCOMB_X26_Y17_N16
\SD|Selector7~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \SD|Selector7~0_combout\ = (Phase(3) & ((!Phase(0)))) # (!Phase(3) & (\SD|myflag~combout\ & Phase(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => Phase(3),
	datac => \SD|myflag~combout\,
	datad => Phase(0),
	combout => \SD|Selector7~0_combout\);

-- Location: LCCOMB_X26_Y17_N8
\SD|Selector7~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \SD|Selector7~1_combout\ = (Phase(0) & (((Phase(1) & !\SD|Selector7~0_combout\)) # (!\SD|line_status_new[2]~6_combout\))) # (!Phase(0) & ((\SD|Selector7~0_combout\) # ((!\SD|line_status_new[2]~6_combout\ & Phase(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111011110110010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => Phase(0),
	datab => \SD|line_status_new[2]~6_combout\,
	datac => Phase(1),
	datad => \SD|Selector7~0_combout\,
	combout => \SD|Selector7~1_combout\);

-- Location: LCCOMB_X23_Y17_N8
\L|Equal10~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \L|Equal10~0_combout\ = (!Phase(1) & (!Phase(3) & Phase(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => Phase(1),
	datac => Phase(3),
	datad => Phase(2),
	combout => \L|Equal10~0_combout\);

-- Location: LCCOMB_X26_Y17_N6
\SD|Selector9~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \SD|Selector9~0_combout\ = (\L|Equal10~0_combout\ & ((Phase(0) & (!\SD|LessThan0~4_combout\)) # (!Phase(0) & ((\SD|line_status_new[2]~6_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100110000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => Phase(0),
	datab => \L|Equal10~0_combout\,
	datac => \SD|LessThan0~4_combout\,
	datad => \SD|line_status_new[2]~6_combout\,
	combout => \SD|Selector9~0_combout\);

-- Location: LCCOMB_X26_Y17_N26
\SD|Selector7~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \SD|Selector7~2_combout\ = (\SD|Selector9~0_combout\) # ((!Phase(2) & !\SD|Selector7~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => Phase(2),
	datac => \SD|Selector7~1_combout\,
	datad => \SD|Selector9~0_combout\,
	combout => \SD|Selector7~2_combout\);

-- Location: CLKCTRL_G6
\SD|Selector7~2clkctrl\ : cycloneiii_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \SD|Selector7~2clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \SD|Selector7~2clkctrl_outclk\);

-- Location: LCCOMB_X27_Y17_N30
\SD|line_status_before[1]\ : cycloneiii_lcell_comb
-- Equation(s):
-- \SD|line_status_before\(1) = (GLOBAL(\SD|Selector7~2clkctrl_outclk\) & ((\SD|line_status_new\(1)))) # (!GLOBAL(\SD|Selector7~2clkctrl_outclk\) & (\SD|line_status_before\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SD|line_status_before\(1),
	datac => \SD|Selector7~2clkctrl_outclk\,
	datad => \SD|line_status_new\(1),
	combout => \SD|line_status_before\(1));

-- Location: LCCOMB_X27_Y17_N24
\SD|line_status_new~7\ : cycloneiii_lcell_comb
-- Equation(s):
-- \SD|line_status_new~7_combout\ = (!\SD|line_status_before\(1) & (\SD|line_status_new~2_combout\ & (!\SD|LessThan4~0_combout\ & \middle_line_detector|count~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SD|line_status_before\(1),
	datab => \SD|line_status_new~2_combout\,
	datac => \SD|LessThan4~0_combout\,
	datad => \middle_line_detector|count~0_combout\,
	combout => \SD|line_status_new~7_combout\);

-- Location: LCCOMB_X27_Y17_N22
\SD|line_status_new~8\ : cycloneiii_lcell_comb
-- Equation(s):
-- \SD|line_status_new~8_combout\ = ((!\soft_left_detector|count~0_combout\ & (!\soft_right_detector|count~0_combout\ & !\SD|line_status_new~7_combout\))) # (!\SD|LessThan0~4_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \soft_left_detector|count~0_combout\,
	datab => \soft_right_detector|count~0_combout\,
	datac => \SD|line_status_new~7_combout\,
	datad => \SD|LessThan0~4_combout\,
	combout => \SD|line_status_new~8_combout\);

-- Location: LCCOMB_X23_Y17_N22
\SD|Selector3~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \SD|Selector3~3_combout\ = (\SD|Selector3~0_combout\ & ((\SD|line_status_new~8_combout\) # ((!Phase(3) & \SD|Selector3~2_combout\)))) # (!\SD|Selector3~0_combout\ & (!Phase(3) & (\SD|Selector3~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SD|Selector3~0_combout\,
	datab => Phase(3),
	datac => \SD|Selector3~2_combout\,
	datad => \SD|line_status_new~8_combout\,
	combout => \SD|Selector3~3_combout\);

-- Location: LCCOMB_X23_Y17_N14
\SD|line_status_new[1]\ : cycloneiii_lcell_comb
-- Equation(s):
-- \SD|line_status_new\(1) = (\SD|Selector9~2_combout\ & ((\SD|Selector3~3_combout\))) # (!\SD|Selector9~2_combout\ & (\SD|line_status_new\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \SD|line_status_new\(1),
	datac => \SD|Selector3~3_combout\,
	datad => \SD|Selector9~2_combout\,
	combout => \SD|line_status_new\(1));

-- Location: LCCOMB_X20_Y17_N4
\SS|Selector26~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \SS|Selector26~0_combout\ = (Phase(0) & (Phase(3) & !Phase(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => Phase(0),
	datac => Phase(3),
	datad => Phase(1),
	combout => \SS|Selector26~0_combout\);

-- Location: LCCOMB_X27_Y17_N26
\SD|line_status_before[0]\ : cycloneiii_lcell_comb
-- Equation(s):
-- \SD|line_status_before\(0) = (GLOBAL(\SD|Selector7~2clkctrl_outclk\) & ((\SD|line_status_new\(0)))) # (!GLOBAL(\SD|Selector7~2clkctrl_outclk\) & (\SD|line_status_before\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SD|line_status_before\(0),
	datac => \SD|Selector7~2clkctrl_outclk\,
	datad => \SD|line_status_new\(0),
	combout => \SD|line_status_before\(0));

-- Location: LCCOMB_X27_Y17_N18
\SD|line_status_new~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \SD|line_status_new~4_combout\ = (\SD|line_status_new~2_combout\ & ((\SD|LessThan4~0_combout\) # ((\middle_line_detector|count~0_combout\ & \SD|line_status_before\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \middle_line_detector|count~0_combout\,
	datab => \SD|line_status_new~2_combout\,
	datac => \SD|line_status_before\(0),
	datad => \SD|LessThan4~0_combout\,
	combout => \SD|line_status_new~4_combout\);

-- Location: LCCOMB_X27_Y17_N2
\SD|line_status_new~5\ : cycloneiii_lcell_comb
-- Equation(s):
-- \SD|line_status_new~5_combout\ = (!\soft_left_detector|count~0_combout\ & ((\soft_right_detector|count~0_combout\) # (\SD|line_status_new~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \soft_right_detector|count~0_combout\,
	datac => \soft_left_detector|count~0_combout\,
	datad => \SD|line_status_new~4_combout\,
	combout => \SD|line_status_new~5_combout\);

-- Location: LCCOMB_X23_Y17_N4
\SD|Selector0~7\ : cycloneiii_lcell_comb
-- Equation(s):
-- \SD|Selector0~7_combout\ = (\SS|Selector26~0_combout\ & ((\SD|line_status_new~5_combout\) # (!\SD|LessThan0~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010001010100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SS|Selector26~0_combout\,
	datab => \SD|LessThan0~4_combout\,
	datac => \SD|line_status_new~5_combout\,
	combout => \SD|Selector0~7_combout\);

-- Location: LCCOMB_X27_Y17_N16
\SD|line_status_new~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \SD|line_status_new~3_combout\ = (!\soft_left_detector|count~0_combout\ & ((\soft_right_detector|count~0_combout\) # ((\SD|line_status_new~2_combout\ & \SD|LessThan4~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \soft_left_detector|count~0_combout\,
	datab => \SD|line_status_new~2_combout\,
	datac => \soft_right_detector|count~0_combout\,
	datad => \SD|LessThan4~0_combout\,
	combout => \SD|line_status_new~3_combout\);

-- Location: LCCOMB_X23_Y17_N18
\SD|Selector0~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \SD|Selector0~2_combout\ = (\L|Equal10~0_combout\ & (((Phase(0)) # (\SD|line_status_new~3_combout\)) # (!\SD|LessThan0~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \L|Equal10~0_combout\,
	datab => \SD|LessThan0~4_combout\,
	datac => Phase(0),
	datad => \SD|line_status_new~3_combout\,
	combout => \SD|Selector0~2_combout\);

-- Location: LCCOMB_X24_Y17_N10
\SD|Selector0~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \SD|Selector0~4_combout\ = (\SD|line_status_new~2_combout\ & ((\SD|LessThan4~0_combout\) # ((Phase(1) & \middle_line_detector|count~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SD|line_status_new~2_combout\,
	datab => Phase(1),
	datac => \middle_line_detector|count~0_combout\,
	datad => \SD|LessThan4~0_combout\,
	combout => \SD|Selector0~4_combout\);

-- Location: LCCOMB_X24_Y17_N14
\SD|Selector0~5\ : cycloneiii_lcell_comb
-- Equation(s):
-- \SD|Selector0~5_combout\ = ((!\soft_left_detector|count~0_combout\ & ((\SD|Selector0~4_combout\) # (\soft_right_detector|count~0_combout\)))) # (!\SD|LessThan0~4_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SD|Selector0~4_combout\,
	datab => \soft_right_detector|count~0_combout\,
	datac => \soft_left_detector|count~0_combout\,
	datad => \SD|LessThan0~4_combout\,
	combout => \SD|Selector0~5_combout\);

-- Location: LCCOMB_X23_Y17_N12
\SD|Selector0~9\ : cycloneiii_lcell_comb
-- Equation(s):
-- \SD|Selector0~9_combout\ = (!Phase(0) & (Phase(1) & ((\SD|line_status_new~5_combout\) # (!\SD|LessThan0~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => Phase(0),
	datab => \SD|LessThan0~4_combout\,
	datac => Phase(1),
	datad => \SD|line_status_new~5_combout\,
	combout => \SD|Selector0~9_combout\);

-- Location: LCCOMB_X23_Y17_N10
\SD|Selector0~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \SD|Selector0~6_combout\ = (!Phase(3) & ((\SD|Selector0~9_combout\) # ((Phase(0) & \SD|Selector0~5_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010101000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => Phase(3),
	datab => Phase(0),
	datac => \SD|Selector0~5_combout\,
	datad => \SD|Selector0~9_combout\,
	combout => \SD|Selector0~6_combout\);

-- Location: LCCOMB_X23_Y17_N16
\SD|Selector0~8\ : cycloneiii_lcell_comb
-- Equation(s):
-- \SD|Selector0~8_combout\ = (\SD|Selector0~2_combout\) # ((!Phase(2) & ((\SD|Selector0~7_combout\) # (\SD|Selector0~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010111110100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => Phase(2),
	datab => \SD|Selector0~7_combout\,
	datac => \SD|Selector0~2_combout\,
	datad => \SD|Selector0~6_combout\,
	combout => \SD|Selector0~8_combout\);

-- Location: LCCOMB_X23_Y17_N0
\SD|line_status_new[0]\ : cycloneiii_lcell_comb
-- Equation(s):
-- \SD|line_status_new\(0) = (\SD|Selector9~2_combout\ & ((\SD|Selector0~8_combout\))) # (!\SD|Selector9~2_combout\ & (\SD|line_status_new\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \SD|line_status_new\(0),
	datac => \SD|Selector9~2_combout\,
	datad => \SD|Selector0~8_combout\,
	combout => \SD|line_status_new\(0));

-- Location: LCCOMB_X23_Y17_N2
\Mux108~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux108~4_combout\ = (\Mux108~3_combout\ & (\SD|line_status_new\(1) & (\SD|line_status_new\(2) & \SD|line_status_new\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux108~3_combout\,
	datab => \SD|line_status_new\(1),
	datac => \SD|line_status_new\(2),
	datad => \SD|line_status_new\(0),
	combout => \Mux108~4_combout\);

-- Location: LCCOMB_X23_Y17_N6
\cnt[2]~30\ : cycloneiii_lcell_comb
-- Equation(s):
-- \cnt[2]~30_combout\ = ((!\cnt[2]~29_combout\ & \Mux108~4_combout\)) # (!\sw[0]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cnt[2]~29_combout\,
	datac => \sw[0]~input_o\,
	datad => \Mux108~4_combout\,
	combout => \cnt[2]~30_combout\);

-- Location: FF_X22_Y18_N19
\cnt[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \cnt[0]~8_combout\,
	sclr => \cnt[2]~28_combout\,
	sload => VCC,
	ena => \cnt[2]~30_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => cnt(0));

-- Location: LCCOMB_X21_Y18_N6
\cnt[1]~10\ : cycloneiii_lcell_comb
-- Equation(s):
-- \cnt[1]~10_combout\ = (cnt(1) & (!\cnt[0]~9\)) # (!cnt(1) & ((\cnt[0]~9\) # (GND)))
-- \cnt[1]~11\ = CARRY((!\cnt[0]~9\) # (!cnt(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => cnt(1),
	datad => VCC,
	cin => \cnt[0]~9\,
	combout => \cnt[1]~10_combout\,
	cout => \cnt[1]~11\);

-- Location: FF_X22_Y18_N17
\cnt[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \cnt[1]~10_combout\,
	sclr => \cnt[2]~28_combout\,
	sload => VCC,
	ena => \cnt[2]~30_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => cnt(1));

-- Location: LCCOMB_X21_Y18_N8
\cnt[2]~12\ : cycloneiii_lcell_comb
-- Equation(s):
-- \cnt[2]~12_combout\ = (cnt(2) & (\cnt[1]~11\ $ (GND))) # (!cnt(2) & (!\cnt[1]~11\ & VCC))
-- \cnt[2]~13\ = CARRY((cnt(2) & !\cnt[1]~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => cnt(2),
	datad => VCC,
	cin => \cnt[1]~11\,
	combout => \cnt[2]~12_combout\,
	cout => \cnt[2]~13\);

-- Location: FF_X22_Y18_N15
\cnt[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \cnt[2]~12_combout\,
	sclr => \cnt[2]~28_combout\,
	sload => VCC,
	ena => \cnt[2]~30_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => cnt(2));

-- Location: LCCOMB_X21_Y18_N10
\cnt[3]~14\ : cycloneiii_lcell_comb
-- Equation(s):
-- \cnt[3]~14_combout\ = (cnt(3) & (!\cnt[2]~13\)) # (!cnt(3) & ((\cnt[2]~13\) # (GND)))
-- \cnt[3]~15\ = CARRY((!\cnt[2]~13\) # (!cnt(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => cnt(3),
	datad => VCC,
	cin => \cnt[2]~13\,
	combout => \cnt[3]~14_combout\,
	cout => \cnt[3]~15\);

-- Location: FF_X22_Y18_N25
\cnt[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \cnt[3]~14_combout\,
	sclr => \cnt[2]~28_combout\,
	sload => VCC,
	ena => \cnt[2]~30_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => cnt(3));

-- Location: LCCOMB_X21_Y18_N12
\cnt[4]~16\ : cycloneiii_lcell_comb
-- Equation(s):
-- \cnt[4]~16_combout\ = (cnt(4) & (\cnt[3]~15\ $ (GND))) # (!cnt(4) & (!\cnt[3]~15\ & VCC))
-- \cnt[4]~17\ = CARRY((cnt(4) & !\cnt[3]~15\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => cnt(4),
	datad => VCC,
	cin => \cnt[3]~15\,
	combout => \cnt[4]~16_combout\,
	cout => \cnt[4]~17\);

-- Location: FF_X23_Y18_N29
\cnt[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \cnt[4]~16_combout\,
	sclr => \cnt[2]~28_combout\,
	sload => VCC,
	ena => \cnt[2]~30_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => cnt(4));

-- Location: LCCOMB_X21_Y18_N14
\cnt[5]~18\ : cycloneiii_lcell_comb
-- Equation(s):
-- \cnt[5]~18_combout\ = (cnt(5) & (!\cnt[4]~17\)) # (!cnt(5) & ((\cnt[4]~17\) # (GND)))
-- \cnt[5]~19\ = CARRY((!\cnt[4]~17\) # (!cnt(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => cnt(5),
	datad => VCC,
	cin => \cnt[4]~17\,
	combout => \cnt[5]~18_combout\,
	cout => \cnt[5]~19\);

-- Location: FF_X23_Y18_N3
\cnt[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \cnt[5]~18_combout\,
	sclr => \cnt[2]~28_combout\,
	sload => VCC,
	ena => \cnt[2]~30_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => cnt(5));

-- Location: LCCOMB_X21_Y18_N16
\cnt[6]~20\ : cycloneiii_lcell_comb
-- Equation(s):
-- \cnt[6]~20_combout\ = \cnt[5]~19\ $ (!cnt(6))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => cnt(6),
	cin => \cnt[5]~19\,
	combout => \cnt[6]~20_combout\);

-- Location: FF_X23_Y18_N5
\cnt[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \cnt[6]~20_combout\,
	sclr => \cnt[2]~28_combout\,
	sload => VCC,
	ena => \cnt[2]~30_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => cnt(6));

-- Location: LCCOMB_X23_Y14_N6
\Mux108~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux108~6_combout\ = (!cnt(6) & !cnt(5))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => cnt(6),
	datad => cnt(5),
	combout => \Mux108~6_combout\);

-- Location: LCCOMB_X23_Y14_N28
\Phase[0]~7\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Phase[0]~7_combout\ = (cnt(4) & (Phase(0) & ((!\LessThan4~0_combout\) # (!cnt(3))))) # (!cnt(4) & ((Phase(0)) # ((!cnt(3) & !\LessThan4~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111000011110001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => cnt(4),
	datab => cnt(3),
	datac => Phase(0),
	datad => \LessThan4~0_combout\,
	combout => \Phase[0]~7_combout\);

-- Location: LCCOMB_X23_Y16_N26
\Phase[0]~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Phase[0]~6_combout\ = (\Mux108~5_combout\ & ((\cnt[2]~7_combout\ & ((!Phase(2)) # (!cnt(3)))) # (!\cnt[2]~7_combout\ & (!cnt(3) & !Phase(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100010001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cnt[2]~7_combout\,
	datab => \Mux108~5_combout\,
	datac => cnt(3),
	datad => Phase(2),
	combout => \Phase[0]~6_combout\);

-- Location: LCCOMB_X23_Y14_N22
\Phase[0]~8\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Phase[0]~8_combout\ = (Phase(1) & (\Mux108~6_combout\ & (\Phase[0]~7_combout\))) # (!Phase(1) & (((\Phase[0]~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux108~6_combout\,
	datab => \Phase[0]~7_combout\,
	datac => \Phase[0]~6_combout\,
	datad => Phase(1),
	combout => \Phase[0]~8_combout\);

-- Location: LCCOMB_X23_Y17_N26
\Phase[0]~9\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Phase[0]~9_combout\ = (\threshold[0]~3_combout\) # ((\Phase[0]~5_combout\ & ((\Phase[0]~8_combout\) # (!\Mux108~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \threshold[0]~3_combout\,
	datab => \Phase[0]~5_combout\,
	datac => \Phase[0]~8_combout\,
	datad => \Mux108~4_combout\,
	combout => \Phase[0]~9_combout\);

-- Location: LCCOMB_X20_Y17_N6
\Phase[1]~12\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Phase[1]~12_combout\ = (\sw[8]~input_o\ & (!\sw[0]~input_o\ & ((!\sw[7]~input_o\) # (!\sw[9]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sw[9]~input_o\,
	datab => \sw[8]~input_o\,
	datac => \sw[0]~input_o\,
	datad => \sw[7]~input_o\,
	combout => \Phase[1]~12_combout\);

-- Location: LCCOMB_X23_Y17_N20
\Phase[1]~13\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Phase[1]~13_combout\ = (\Phase[0]~9_combout\ & (((Phase(1))))) # (!\Phase[0]~9_combout\ & ((\Phase[1]~11_combout\) # ((\Phase[1]~12_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Phase[1]~11_combout\,
	datab => \Phase[0]~9_combout\,
	datac => Phase(1),
	datad => \Phase[1]~12_combout\,
	combout => \Phase[1]~13_combout\);

-- Location: FF_X23_Y17_N21
\Phase[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \Phase[1]~13_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => Phase(1));

-- Location: LCCOMB_X20_Y17_N0
\L|Equal12~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \L|Equal12~0_combout\ = (!Phase(1) & (Phase(0) & (!Phase(2) & Phase(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => Phase(1),
	datab => Phase(0),
	datac => Phase(2),
	datad => Phase(3),
	combout => \L|Equal12~0_combout\);

-- Location: FF_X20_Y17_N27
\Phase[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \Phase[3]~0_combout\,
	asdata => \L|Equal12~0_combout\,
	sload => \sw[0]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => Phase(3));

-- Location: LCCOMB_X21_Y17_N22
\L|Selector0~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \L|Selector0~0_combout\ = (!Phase(2) & ((Phase(3) & (Phase(0) & !Phase(1))) # (!Phase(3) & ((Phase(1))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001100001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => Phase(0),
	datab => Phase(3),
	datac => Phase(2),
	datad => Phase(1),
	combout => \L|Selector0~0_combout\);

-- Location: LCCOMB_X21_Y17_N14
\Phase[0]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Phase[0]~feeder_combout\ = \L|Selector0~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \L|Selector0~0_combout\,
	combout => \Phase[0]~feeder_combout\);

-- Location: FF_X21_Y17_N15
\Phase[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Phase[0]~feeder_combout\,
	asdata => \sw[9]~input_o\,
	sload => \ALT_INV_sw[0]~input_o\,
	ena => \ALT_INV_Phase[0]~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => Phase(0));

-- Location: LCCOMB_X20_Y17_N18
\L|Equal10~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \L|Equal10~1_combout\ = (Phase(2) & (!Phase(0) & (!Phase(3) & !Phase(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => Phase(2),
	datab => Phase(0),
	datac => Phase(3),
	datad => Phase(1),
	combout => \L|Equal10~1_combout\);

-- Location: LCCOMB_X23_Y15_N4
\Phase[2]~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Phase[2]~2_combout\ = (\L|Equal10~1_combout\ & \sw[0]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \L|Equal10~1_combout\,
	datad => \sw[0]~input_o\,
	combout => \Phase[2]~2_combout\);

-- Location: LCCOMB_X20_Y17_N12
\Phase[2]~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Phase[2]~3_combout\ = (!\sw[8]~input_o\ & (!\sw[0]~input_o\ & ((\sw[7]~input_o\) # (!\sw[9]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001100000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sw[9]~input_o\,
	datab => \sw[8]~input_o\,
	datac => \sw[0]~input_o\,
	datad => \sw[7]~input_o\,
	combout => \Phase[2]~3_combout\);

-- Location: LCCOMB_X23_Y17_N28
\Phase[2]~10\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Phase[2]~10_combout\ = (\Phase[0]~9_combout\ & (((Phase(2))))) # (!\Phase[0]~9_combout\ & ((\Phase[2]~2_combout\) # ((\Phase[2]~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Phase[2]~2_combout\,
	datab => \Phase[0]~9_combout\,
	datac => Phase(2),
	datad => \Phase[2]~3_combout\,
	combout => \Phase[2]~10_combout\);

-- Location: FF_X23_Y17_N29
\Phase[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \Phase[2]~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => Phase(2));

-- Location: LCCOMB_X26_Y17_N24
\L|Equal7~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \L|Equal7~0_combout\ = (!Phase(1) & Phase(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => Phase(1),
	datad => Phase(0),
	combout => \L|Equal7~0_combout\);

-- Location: LCCOMB_X26_Y17_N14
\SD|Selector9~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \SD|Selector9~1_combout\ = (!Phase(3) & (((\SD|myflag~combout\) # (!\SD|line_status_new[2]~6_combout\)) # (!Phase(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000100110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => Phase(0),
	datab => Phase(3),
	datac => \SD|myflag~combout\,
	datad => \SD|line_status_new[2]~6_combout\,
	combout => \SD|Selector9~1_combout\);

-- Location: LCCOMB_X26_Y17_N10
\SD|Selector9~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \SD|Selector9~2_combout\ = (\SD|Selector9~0_combout\) # ((!Phase(2) & ((\L|Equal7~0_combout\) # (\SD|Selector9~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111101010100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => Phase(2),
	datab => \L|Equal7~0_combout\,
	datac => \SD|Selector9~1_combout\,
	datad => \SD|Selector9~0_combout\,
	combout => \SD|Selector9~2_combout\);

-- Location: LCCOMB_X24_Y17_N16
\SD|Selector8~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \SD|Selector8~0_combout\ = ((Phase(0)) # ((!\SD|line_status_new~2_combout\ & !\soft_right_detector|count~0_combout\))) # (!\SD|line_status_new~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100011111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SD|line_status_new~2_combout\,
	datab => \soft_right_detector|count~0_combout\,
	datac => \SD|line_status_new~10_combout\,
	datad => Phase(0),
	combout => \SD|Selector8~0_combout\);

-- Location: LCCOMB_X24_Y17_N0
\SD|Selector0~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \SD|Selector0~3_combout\ = (Phase(1) & !Phase(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => Phase(1),
	datad => Phase(0),
	combout => \SD|Selector0~3_combout\);

-- Location: LCCOMB_X27_Y17_N14
\SD|line_status_before[2]\ : cycloneiii_lcell_comb
-- Equation(s):
-- \SD|line_status_before\(2) = (GLOBAL(\SD|Selector7~2clkctrl_outclk\) & ((\SD|line_status_new\(2)))) # (!GLOBAL(\SD|Selector7~2clkctrl_outclk\) & (\SD|line_status_before\(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \SD|line_status_before\(2),
	datac => \SD|Selector7~2clkctrl_outclk\,
	datad => \SD|line_status_new\(2),
	combout => \SD|line_status_before\(2));

-- Location: LCCOMB_X27_Y17_N20
\SD|line_status_new~9\ : cycloneiii_lcell_comb
-- Equation(s):
-- \SD|line_status_new~9_combout\ = ((\middle_line_detector|count~0_combout\ & (\SD|line_status_before\(2) & !\SD|LessThan4~0_combout\))) # (!\SD|line_status_new~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111110001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \middle_line_detector|count~0_combout\,
	datab => \SD|line_status_before\(2),
	datac => \SD|line_status_new~2_combout\,
	datad => \SD|LessThan4~0_combout\,
	combout => \SD|line_status_new~9_combout\);

-- Location: LCCOMB_X24_Y17_N20
\SD|Selector8~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \SD|Selector8~2_combout\ = (\SD|Selector0~3_combout\ & (((!\soft_right_detector|count~0_combout\ & \SD|line_status_new~9_combout\)) # (!\SD|line_status_new~10_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \soft_right_detector|count~0_combout\,
	datab => \SD|Selector0~3_combout\,
	datac => \SD|line_status_new~10_combout\,
	datad => \SD|line_status_new~9_combout\,
	combout => \SD|Selector8~2_combout\);

-- Location: LCCOMB_X24_Y17_N28
\SD|Selector8~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \SD|Selector8~3_combout\ = ((!Phase(1) & (\middle_line_detector|count~0_combout\ & !\SD|LessThan4~0_combout\))) # (!\SD|line_status_new~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010101110101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SD|line_status_new~2_combout\,
	datab => Phase(1),
	datac => \middle_line_detector|count~0_combout\,
	datad => \SD|LessThan4~0_combout\,
	combout => \SD|Selector8~3_combout\);

-- Location: LCCOMB_X24_Y17_N4
\SD|Selector8~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \SD|Selector8~4_combout\ = (Phase(0) & (((!\soft_right_detector|count~0_combout\ & \SD|Selector8~3_combout\)) # (!\SD|line_status_new~10_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \soft_right_detector|count~0_combout\,
	datab => Phase(0),
	datac => \SD|line_status_new~10_combout\,
	datad => \SD|Selector8~3_combout\,
	combout => \SD|Selector8~4_combout\);

-- Location: LCCOMB_X24_Y17_N12
\SD|Selector8~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \SD|Selector8~1_combout\ = (\SS|Selector26~0_combout\ & (((!\soft_right_detector|count~0_combout\ & \SD|line_status_new~9_combout\)) # (!\SD|line_status_new~10_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111000001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SD|line_status_new~10_combout\,
	datab => \soft_right_detector|count~0_combout\,
	datac => \SS|Selector26~0_combout\,
	datad => \SD|line_status_new~9_combout\,
	combout => \SD|Selector8~1_combout\);

-- Location: LCCOMB_X24_Y17_N18
\SD|Selector8~5\ : cycloneiii_lcell_comb
-- Equation(s):
-- \SD|Selector8~5_combout\ = (\SD|Selector8~1_combout\) # ((!Phase(3) & ((\SD|Selector8~2_combout\) # (\SD|Selector8~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111101010100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => Phase(3),
	datab => \SD|Selector8~2_combout\,
	datac => \SD|Selector8~4_combout\,
	datad => \SD|Selector8~1_combout\,
	combout => \SD|Selector8~5_combout\);

-- Location: LCCOMB_X23_Y17_N24
\SD|Selector8~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \SD|Selector8~6_combout\ = (Phase(2) & (\SD|Selector8~0_combout\ & (\L|Equal10~0_combout\))) # (!Phase(2) & ((\SD|Selector8~5_combout\) # ((\SD|Selector8~0_combout\ & \L|Equal10~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101010111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => Phase(2),
	datab => \SD|Selector8~0_combout\,
	datac => \L|Equal10~0_combout\,
	datad => \SD|Selector8~5_combout\,
	combout => \SD|Selector8~6_combout\);

-- Location: LCCOMB_X23_Y17_N30
\SD|line_status_new[2]\ : cycloneiii_lcell_comb
-- Equation(s):
-- \SD|line_status_new\(2) = (\SD|Selector9~2_combout\ & ((\SD|Selector8~6_combout\))) # (!\SD|Selector9~2_combout\ & (\SD|line_status_new\(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SD|line_status_new\(2),
	datac => \SD|Selector9~2_combout\,
	datad => \SD|Selector8~6_combout\,
	combout => \SD|line_status_new\(2));

-- Location: LCCOMB_X22_Y14_N6
\L|Equal3~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \L|Equal3~2_combout\ = (\SD|line_status_new\(2) & (\SD|line_status_new\(0) & \SD|line_status_new\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \SD|line_status_new\(2),
	datac => \SD|line_status_new\(0),
	datad => \SD|line_status_new\(1),
	combout => \L|Equal3~2_combout\);

-- Location: LCCOMB_X21_Y17_N26
\SS|speed_left[31]~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \SS|speed_left[31]~0_combout\ = (\SD|line_status_new\(0) & ((!\SD|line_status_new\(2)))) # (!\SD|line_status_new\(0) & ((\SD|line_status_new\(1)) # (\SD|line_status_new\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SD|line_status_new\(1),
	datac => \SD|line_status_new\(0),
	datad => \SD|line_status_new\(2),
	combout => \SS|speed_left[31]~0_combout\);

-- Location: LCCOMB_X21_Y17_N12
\SS|Selector71~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \SS|Selector71~2_combout\ = (\L|Equal3~2_combout\ & (((Phase(2) & Phase(0))))) # (!\L|Equal3~2_combout\ & ((\SS|speed_left[31]~0_combout\) # ((Phase(2) & Phase(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \L|Equal3~2_combout\,
	datab => \SS|speed_left[31]~0_combout\,
	datac => Phase(2),
	datad => Phase(0),
	combout => \SS|Selector71~2_combout\);

-- Location: LCCOMB_X21_Y17_N18
\SS|Selector71~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \SS|Selector71~0_combout\ = (\SS|speed_left[31]~0_combout\) # ((Phase(1) & ((\L|Equal3~2_combout\) # (Phase(0)))) # (!Phase(1) & ((!Phase(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011111011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \L|Equal3~2_combout\,
	datab => Phase(1),
	datac => \SS|speed_left[31]~0_combout\,
	datad => Phase(0),
	combout => \SS|Selector71~0_combout\);

-- Location: LCCOMB_X21_Y17_N16
\SS|Selector71~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \SS|Selector71~1_combout\ = (!Phase(2) & ((\SS|Selector26~0_combout\) # ((!Phase(3) & \SS|Selector71~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000101010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => Phase(2),
	datab => Phase(3),
	datac => \SS|Selector26~0_combout\,
	datad => \SS|Selector71~0_combout\,
	combout => \SS|Selector71~1_combout\);

-- Location: LCCOMB_X21_Y17_N30
\SS|Selector71~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \SS|Selector71~3_combout\ = (\SS|Selector71~1_combout\) # ((\SS|Selector71~2_combout\ & (!Phase(3) & !Phase(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SS|Selector71~2_combout\,
	datab => Phase(3),
	datac => Phase(1),
	datad => \SS|Selector71~1_combout\,
	combout => \SS|Selector71~3_combout\);

-- Location: CLKCTRL_G13
\SS|Selector71~3clkctrl\ : cycloneiii_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \SS|Selector71~3clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \SS|Selector71~3clkctrl_outclk\);

-- Location: LCCOMB_X24_Y13_N14
\L|Equal8~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \L|Equal8~2_combout\ = (!Phase(2) & (!Phase(0) & (Phase(1) & !Phase(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => Phase(2),
	datab => Phase(0),
	datac => Phase(1),
	datad => Phase(3),
	combout => \L|Equal8~2_combout\);

-- Location: LCCOMB_X21_Y18_N2
\force_move~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \force_move~0_combout\ = (\force_move~q\) # ((cnt(2) & ((cnt(1)) # (cnt(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => cnt(1),
	datab => cnt(0),
	datac => cnt(2),
	datad => \force_move~q\,
	combout => \force_move~0_combout\);

-- Location: LCCOMB_X22_Y18_N20
\Mux108~7\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux108~7_combout\ = (!\LessThan4~0_combout\ & (!cnt(3) & (\Mux108~5_combout\ & \force_move~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LessThan4~0_combout\,
	datab => cnt(3),
	datac => \Mux108~5_combout\,
	datad => \force_move~0_combout\,
	combout => \Mux108~7_combout\);

-- Location: LCCOMB_X22_Y13_N16
\Mux108~8\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux108~8_combout\ = (\L|Equal8~2_combout\ & ((\Mux108~4_combout\ & (\Mux108~7_combout\)) # (!\Mux108~4_combout\ & ((\force_move~q\))))) # (!\L|Equal8~2_combout\ & (((\force_move~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \L|Equal8~2_combout\,
	datab => \Mux108~7_combout\,
	datac => \force_move~q\,
	datad => \Mux108~4_combout\,
	combout => \Mux108~8_combout\);

-- Location: FF_X22_Y13_N17
force_move : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \Mux108~8_combout\,
	sclr => \ALT_INV_sw[0]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \force_move~q\);

-- Location: LCCOMB_X23_Y13_N16
\L|Equal3~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \L|Equal3~0_combout\ = (!\SD|line_status_new\(0) & \SD|line_status_new\(2))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \SD|line_status_new\(0),
	datad => \SD|line_status_new\(2),
	combout => \L|Equal3~0_combout\);

-- Location: LCCOMB_X22_Y12_N12
\SS|Selector20~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \SS|Selector20~2_combout\ = (Phase(0) & !Phase(2))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => Phase(0),
	datad => Phase(2),
	combout => \SS|Selector20~2_combout\);

-- Location: LCCOMB_X21_Y13_N8
\L|Equal3~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \L|Equal3~1_combout\ = (!\SD|line_status_new\(2) & (\SD|line_status_new\(1) & \SD|line_status_new\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SD|line_status_new\(2),
	datac => \SD|line_status_new\(1),
	datad => \SD|line_status_new\(0),
	combout => \L|Equal3~1_combout\);

-- Location: LCCOMB_X20_Y17_N22
\SS|boost_speed[8]~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \SS|boost_speed[8]~0_combout\ = (!Phase(2) & (!Phase(3) & Phase(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => Phase(2),
	datac => Phase(3),
	datad => Phase(0),
	combout => \SS|boost_speed[8]~0_combout\);

-- Location: LCCOMB_X20_Y17_N8
\SS|boost_speed[8]~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \SS|boost_speed[8]~1_combout\ = (!\force_move~q\ & ((\SS|boost_speed[8]~0_combout\) # ((\L|Equal3~2_combout\ & \L|Equal10~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \L|Equal3~2_combout\,
	datab => \force_move~q\,
	datac => \SS|boost_speed[8]~0_combout\,
	datad => \L|Equal10~1_combout\,
	combout => \SS|boost_speed[8]~1_combout\);

-- Location: CLKCTRL_G12
\SS|boost_speed[8]~1clkctrl\ : cycloneiii_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \SS|boost_speed[8]~1clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \SS|boost_speed[8]~1clkctrl_outclk\);

-- Location: LCCOMB_X22_Y15_N4
\SS|boost_speed[15]\ : cycloneiii_lcell_comb
-- Equation(s):
-- \SS|boost_speed\(15) = (GLOBAL(\SS|boost_speed[8]~1clkctrl_outclk\) & ((\L|Equal10~1_combout\))) # (!GLOBAL(\SS|boost_speed[8]~1clkctrl_outclk\) & (\SS|boost_speed\(15)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \SS|boost_speed\(15),
	datac => \L|Equal10~1_combout\,
	datad => \SS|boost_speed[8]~1clkctrl_outclk\,
	combout => \SS|boost_speed\(15));

-- Location: LCCOMB_X24_Y15_N20
\SS|Selector20~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \SS|Selector20~3_combout\ = (!Phase(0) & (Phase(2) & \SS|boost_speed\(15)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => Phase(0),
	datac => Phase(2),
	datad => \SS|boost_speed\(15),
	combout => \SS|Selector20~3_combout\);

-- Location: LCCOMB_X22_Y12_N18
\SS|Selector20~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \SS|Selector20~4_combout\ = (\L|Equal3~0_combout\ & (\SS|Selector20~2_combout\ & (\L|Equal3~1_combout\))) # (!\L|Equal3~0_combout\ & ((\SS|Selector20~3_combout\) # ((\SS|Selector20~2_combout\ & \L|Equal3~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101010111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \L|Equal3~0_combout\,
	datab => \SS|Selector20~2_combout\,
	datac => \L|Equal3~1_combout\,
	datad => \SS|Selector20~3_combout\,
	combout => \SS|Selector20~4_combout\);

-- Location: LCCOMB_X22_Y12_N10
\SS|Selector20~5\ : cycloneiii_lcell_comb
-- Equation(s):
-- \SS|Selector20~5_combout\ = (!Phase(3) & (\SS|Selector20~4_combout\ & (Phase(2) $ (Phase(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000011000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => Phase(2),
	datab => Phase(1),
	datac => Phase(3),
	datad => \SS|Selector20~4_combout\,
	combout => \SS|Selector20~5_combout\);

-- Location: LCCOMB_X22_Y12_N4
\SS|speed_left[15]\ : cycloneiii_lcell_comb
-- Equation(s):
-- \SS|speed_left\(15) = (!\force_move~q\ & ((GLOBAL(\SS|Selector71~3clkctrl_outclk\) & ((\SS|Selector20~5_combout\))) # (!GLOBAL(\SS|Selector71~3clkctrl_outclk\) & (\SS|speed_left\(15)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SS|Selector71~3clkctrl_outclk\,
	datab => \SS|speed_left\(15),
	datac => \force_move~q\,
	datad => \SS|Selector20~5_combout\,
	combout => \SS|speed_left\(15));

-- Location: LCCOMB_X22_Y12_N24
\SS|Selector25~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \SS|Selector25~0_combout\ = (!\SD|line_status_new\(2) & (Phase(3) & ((\SD|line_status_new\(1)) # (\SD|line_status_new\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SD|line_status_new\(2),
	datab => Phase(3),
	datac => \SD|line_status_new\(1),
	datad => \SD|line_status_new\(0),
	combout => \SS|Selector25~0_combout\);

-- Location: LCCOMB_X22_Y15_N28
\L|Equal3~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \L|Equal3~3_combout\ = (!\SD|line_status_new\(1) & (\SD|line_status_new\(0) & !\SD|line_status_new\(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \SD|line_status_new\(1),
	datac => \SD|line_status_new\(0),
	datad => \SD|line_status_new\(2),
	combout => \L|Equal3~3_combout\);

-- Location: LCCOMB_X21_Y12_N10
\SS|Selector21~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \SS|Selector21~2_combout\ = (Phase(1) & (!Phase(3) & ((\L|Equal3~3_combout\)))) # (!Phase(1) & (((\SS|Selector25~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111001001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => Phase(1),
	datab => Phase(3),
	datac => \SS|Selector25~0_combout\,
	datad => \L|Equal3~3_combout\,
	combout => \SS|Selector21~2_combout\);

-- Location: LCCOMB_X22_Y15_N18
\SS|Selector21~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \SS|Selector21~1_combout\ = (!Phase(1) & (!Phase(3) & ((\SD|line_status_new\(0)) # (!\SD|line_status_new\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010100000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => Phase(1),
	datab => \SD|line_status_new\(2),
	datac => Phase(3),
	datad => \SD|line_status_new\(0),
	combout => \SS|Selector21~1_combout\);

-- Location: LCCOMB_X23_Y15_N22
\SS|boost_speed[14]\ : cycloneiii_lcell_comb
-- Equation(s):
-- \SS|boost_speed\(14) = (GLOBAL(\SS|boost_speed[8]~1clkctrl_outclk\) & ((!\L|Equal10~1_combout\))) # (!GLOBAL(\SS|boost_speed[8]~1clkctrl_outclk\) & (\SS|boost_speed\(14)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SS|boost_speed\(14),
	datab => \L|Equal10~1_combout\,
	datad => \SS|boost_speed[8]~1clkctrl_outclk\,
	combout => \SS|boost_speed\(14));

-- Location: LCCOMB_X21_Y12_N20
\SS|Selector21~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \SS|Selector21~0_combout\ = (Phase(2) & (!Phase(0) & \SS|boost_speed\(14))) # (!Phase(2) & (Phase(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => Phase(2),
	datac => Phase(0),
	datad => \SS|boost_speed\(14),
	combout => \SS|Selector21~0_combout\);

-- Location: LCCOMB_X21_Y12_N16
\SS|Selector21~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \SS|Selector21~3_combout\ = (\SS|Selector21~2_combout\ & ((\SS|Selector20~2_combout\) # ((\SS|Selector21~1_combout\ & \SS|Selector21~0_combout\)))) # (!\SS|Selector21~2_combout\ & (\SS|Selector21~1_combout\ & (\SS|Selector21~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SS|Selector21~2_combout\,
	datab => \SS|Selector21~1_combout\,
	datac => \SS|Selector21~0_combout\,
	datad => \SS|Selector20~2_combout\,
	combout => \SS|Selector21~3_combout\);

-- Location: LCCOMB_X21_Y12_N12
\SS|speed_left[14]\ : cycloneiii_lcell_comb
-- Equation(s):
-- \SS|speed_left\(14) = (!\force_move~q\ & ((GLOBAL(\SS|Selector71~3clkctrl_outclk\) & ((\SS|Selector21~3_combout\))) # (!GLOBAL(\SS|Selector71~3clkctrl_outclk\) & (\SS|speed_left\(14)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SS|speed_left\(14),
	datab => \SS|Selector21~3_combout\,
	datac => \SS|Selector71~3clkctrl_outclk\,
	datad => \force_move~q\,
	combout => \SS|speed_left\(14));

-- Location: LCCOMB_X24_Y13_N6
\SS|Selector22~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \SS|Selector22~0_combout\ = (Phase(0) & (Phase(3) & !Phase(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => Phase(0),
	datac => Phase(3),
	datad => Phase(2),
	combout => \SS|Selector22~0_combout\);

-- Location: LCCOMB_X21_Y13_N26
\SS|Selector22~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \SS|Selector22~1_combout\ = (!Phase(1) & (\SS|Selector22~0_combout\ & \L|Equal3~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => Phase(1),
	datac => \SS|Selector22~0_combout\,
	datad => \L|Equal3~1_combout\,
	combout => \SS|Selector22~1_combout\);

-- Location: LCCOMB_X21_Y13_N14
\SS|Selector22~5\ : cycloneiii_lcell_comb
-- Equation(s):
-- \SS|Selector22~5_combout\ = (\SD|line_status_new\(0) & ((\SD|line_status_new\(2) $ (!Phase(0))) # (!\SD|line_status_new\(1)))) # (!\SD|line_status_new\(0) & (((!\SD|line_status_new\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010011100101111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SD|line_status_new\(0),
	datab => \SD|line_status_new\(1),
	datac => \SD|line_status_new\(2),
	datad => Phase(0),
	combout => \SS|Selector22~5_combout\);

-- Location: LCCOMB_X24_Y13_N16
\SS|Selector22~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \SS|Selector22~3_combout\ = (!Phase(3) & (Phase(0) $ (Phase(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001100001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => Phase(0),
	datac => Phase(3),
	datad => Phase(2),
	combout => \SS|Selector22~3_combout\);

-- Location: LCCOMB_X22_Y13_N14
\SS|Selector22~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \SS|Selector22~2_combout\ = (\SD|line_status_new\(2) & ((\SD|line_status_new\(0) & (!Phase(2))) # (!\SD|line_status_new\(0) & ((!\SD|line_status_new\(1)))))) # (!\SD|line_status_new\(2) & (!Phase(2) & ((\SD|line_status_new\(1)) # 
-- (!\SD|line_status_new\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010000110101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => Phase(2),
	datab => \SD|line_status_new\(1),
	datac => \SD|line_status_new\(2),
	datad => \SD|line_status_new\(0),
	combout => \SS|Selector22~2_combout\);

-- Location: LCCOMB_X21_Y13_N4
\SS|Selector22~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \SS|Selector22~4_combout\ = (\SS|Selector22~3_combout\ & (\SS|Selector22~2_combout\ & !Phase(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SS|Selector22~3_combout\,
	datac => \SS|Selector22~2_combout\,
	datad => Phase(1),
	combout => \SS|Selector22~4_combout\);

-- Location: LCCOMB_X21_Y13_N16
\SS|Selector22~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \SS|Selector22~6_combout\ = (\SS|Selector22~1_combout\) # ((\SS|Selector22~4_combout\) # ((\L|Equal8~0_combout\ & \SS|Selector22~5_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SS|Selector22~1_combout\,
	datab => \L|Equal8~0_combout\,
	datac => \SS|Selector22~5_combout\,
	datad => \SS|Selector22~4_combout\,
	combout => \SS|Selector22~6_combout\);

-- Location: LCCOMB_X22_Y13_N18
\SS|speed_left[13]\ : cycloneiii_lcell_comb
-- Equation(s):
-- \SS|speed_left\(13) = (\force_move~q\) # ((GLOBAL(\SS|Selector71~3clkctrl_outclk\) & (\SS|Selector22~6_combout\)) # (!GLOBAL(\SS|Selector71~3clkctrl_outclk\) & ((\SS|speed_left\(13)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SS|Selector22~6_combout\,
	datab => \SS|speed_left\(13),
	datac => \force_move~q\,
	datad => \SS|Selector71~3clkctrl_outclk\,
	combout => \SS|speed_left\(13));

-- Location: LCCOMB_X23_Y13_N26
\SS|Selector54~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \SS|Selector54~0_combout\ = (Phase(1) & ((Phase(0)) # (!\L|Equal3~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => Phase(1),
	datac => Phase(0),
	datad => \L|Equal3~2_combout\,
	combout => \SS|Selector54~0_combout\);

-- Location: LCCOMB_X22_Y14_N24
\L|Equal3~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \L|Equal3~4_combout\ = (\SD|line_status_new\(0) & !\SD|line_status_new\(2))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \SD|line_status_new\(0),
	datad => \SD|line_status_new\(2),
	combout => \L|Equal3~4_combout\);

-- Location: LCCOMB_X23_Y13_N28
\SS|Selector54~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \SS|Selector54~1_combout\ = (!\L|Equal3~0_combout\ & (\SS|Selector54~0_combout\ & ((!\L|Equal3~4_combout\) # (!Phase(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \L|Equal3~0_combout\,
	datab => Phase(0),
	datac => \SS|Selector54~0_combout\,
	datad => \L|Equal3~4_combout\,
	combout => \SS|Selector54~1_combout\);

-- Location: LCCOMB_X22_Y13_N6
\SS|Selector23~5\ : cycloneiii_lcell_comb
-- Equation(s):
-- \SS|Selector23~5_combout\ = (Phase(0) & (!Phase(1) & \L|Equal3~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => Phase(0),
	datab => Phase(1),
	datad => \L|Equal3~1_combout\,
	combout => \SS|Selector23~5_combout\);

-- Location: LCCOMB_X23_Y13_N30
\SS|Selector23~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \SS|Selector23~4_combout\ = (!Phase(2) & ((\SS|Selector23~5_combout\) # ((!Phase(3) & \SS|Selector54~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => Phase(3),
	datab => \SS|Selector54~1_combout\,
	datac => Phase(2),
	datad => \SS|Selector23~5_combout\,
	combout => \SS|Selector23~4_combout\);

-- Location: LCCOMB_X23_Y13_N22
\SS|speed_left[12]\ : cycloneiii_lcell_comb
-- Equation(s):
-- \SS|speed_left\(12) = (\force_move~q\) # ((GLOBAL(\SS|Selector71~3clkctrl_outclk\) & ((\SS|Selector23~4_combout\))) # (!GLOBAL(\SS|Selector71~3clkctrl_outclk\) & (\SS|speed_left\(12))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SS|speed_left\(12),
	datab => \force_move~q\,
	datac => \SS|Selector23~4_combout\,
	datad => \SS|Selector71~3clkctrl_outclk\,
	combout => \SS|speed_left\(12));

-- Location: LCCOMB_X24_Y13_N26
\SS|Selector24~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \SS|Selector24~2_combout\ = (Phase(2) & (((\SD|line_status_new\(0)) # (!\SD|line_status_new\(2))))) # (!Phase(2) & (!\SD|line_status_new\(1) & (\SD|line_status_new\(0) & !\SD|line_status_new\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011011100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SD|line_status_new\(1),
	datab => Phase(2),
	datac => \SD|line_status_new\(0),
	datad => \SD|line_status_new\(2),
	combout => \SS|Selector24~2_combout\);

-- Location: LCCOMB_X24_Y13_N28
\SS|speed_left~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \SS|speed_left~1_combout\ = (!\SD|line_status_new\(2) & (\SD|line_status_new\(1) $ (\SD|line_status_new\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001100110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SD|line_status_new\(1),
	datab => \SD|line_status_new\(0),
	datad => \SD|line_status_new\(2),
	combout => \SS|speed_left~1_combout\);

-- Location: LCCOMB_X24_Y13_N18
\SS|Selector24~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \SS|Selector24~3_combout\ = (\SS|Selector24~2_combout\ & ((\SS|Selector22~3_combout\) # ((\SS|speed_left~1_combout\ & \SS|Selector22~0_combout\)))) # (!\SS|Selector24~2_combout\ & (\SS|speed_left~1_combout\ & ((\SS|Selector22~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SS|Selector24~2_combout\,
	datab => \SS|speed_left~1_combout\,
	datac => \SS|Selector22~3_combout\,
	datad => \SS|Selector22~0_combout\,
	combout => \SS|Selector24~3_combout\);

-- Location: LCCOMB_X23_Y15_N30
\SS|Selector24~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \SS|Selector24~0_combout\ = (\SD|line_status_new\(0) & ((\SD|line_status_new\(1) & (!\SD|line_status_new\(2))) # (!\SD|line_status_new\(1) & ((!Phase(0)))))) # (!\SD|line_status_new\(0) & (!\SD|line_status_new\(2) & (!Phase(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101001100010001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SD|line_status_new\(2),
	datab => Phase(0),
	datac => \SD|line_status_new\(1),
	datad => \SD|line_status_new\(0),
	combout => \SS|Selector24~0_combout\);

-- Location: LCCOMB_X23_Y15_N28
\SS|Selector24~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \SS|Selector24~1_combout\ = (Phase(1) & (!Phase(3) & (!Phase(2) & \SS|Selector24~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => Phase(1),
	datab => Phase(3),
	datac => Phase(2),
	datad => \SS|Selector24~0_combout\,
	combout => \SS|Selector24~1_combout\);

-- Location: LCCOMB_X22_Y13_N22
\SS|Selector24~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \SS|Selector24~4_combout\ = (\SS|Selector24~1_combout\) # ((\SS|Selector24~3_combout\ & !Phase(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \SS|Selector24~3_combout\,
	datac => Phase(1),
	datad => \SS|Selector24~1_combout\,
	combout => \SS|Selector24~4_combout\);

-- Location: LCCOMB_X22_Y13_N12
\SS|speed_left[11]\ : cycloneiii_lcell_comb
-- Equation(s):
-- \SS|speed_left\(11) = (!\force_move~q\ & ((GLOBAL(\SS|Selector71~3clkctrl_outclk\) & ((\SS|Selector24~4_combout\))) # (!GLOBAL(\SS|Selector71~3clkctrl_outclk\) & (\SS|speed_left\(11)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \force_move~q\,
	datab => \SS|speed_left\(11),
	datac => \SS|Selector71~3clkctrl_outclk\,
	datad => \SS|Selector24~4_combout\,
	combout => \SS|speed_left\(11));

-- Location: LCCOMB_X22_Y12_N22
\SS|Selector25~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \SS|Selector25~3_combout\ = (\SD|line_status_new\(2) & (!\SD|line_status_new\(1) & (!Phase(3) & !\SD|line_status_new\(0)))) # (!\SD|line_status_new\(2) & ((\SD|line_status_new\(0)) # ((\SD|line_status_new\(1) & Phase(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010101000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SD|line_status_new\(2),
	datab => \SD|line_status_new\(1),
	datac => Phase(3),
	datad => \SD|line_status_new\(0),
	combout => \SS|Selector25~3_combout\);

-- Location: LCCOMB_X21_Y12_N30
\SS|Selector25~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \SS|Selector25~1_combout\ = (!Phase(3) & (!Phase(0) & Phase(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => Phase(3),
	datac => Phase(0),
	datad => Phase(2),
	combout => \SS|Selector25~1_combout\);

-- Location: LCCOMB_X21_Y12_N8
\SS|Selector25~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \SS|Selector25~2_combout\ = (\SS|Selector25~1_combout\ & ((\L|Equal3~0_combout\ & (!\SD|line_status_new\(1))) # (!\L|Equal3~0_combout\ & ((\SS|boost_speed\(14))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SD|line_status_new\(1),
	datab => \SS|Selector25~1_combout\,
	datac => \SS|boost_speed\(14),
	datad => \L|Equal3~0_combout\,
	combout => \SS|Selector25~2_combout\);

-- Location: LCCOMB_X21_Y12_N26
\SS|Selector25~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \SS|Selector25~4_combout\ = (!Phase(1) & ((\SS|Selector25~2_combout\) # ((\SS|Selector25~3_combout\ & \SS|Selector20~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => Phase(1),
	datab => \SS|Selector25~3_combout\,
	datac => \SS|Selector25~2_combout\,
	datad => \SS|Selector20~2_combout\,
	combout => \SS|Selector25~4_combout\);

-- Location: LCCOMB_X21_Y12_N14
\SS|speed_left[10]\ : cycloneiii_lcell_comb
-- Equation(s):
-- \SS|speed_left\(10) = (\force_move~q\) # ((GLOBAL(\SS|Selector71~3clkctrl_outclk\) & ((\SS|Selector25~4_combout\))) # (!GLOBAL(\SS|Selector71~3clkctrl_outclk\) & (\SS|speed_left\(10))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101011101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \force_move~q\,
	datab => \SS|speed_left\(10),
	datac => \SS|Selector25~4_combout\,
	datad => \SS|Selector71~3clkctrl_outclk\,
	combout => \SS|speed_left\(10));

-- Location: LCCOMB_X24_Y13_N12
\SS|Selector58~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \SS|Selector58~0_combout\ = (!Phase(1) & (!Phase(0) & Phase(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => Phase(1),
	datac => Phase(0),
	datad => Phase(2),
	combout => \SS|Selector58~0_combout\);

-- Location: LCCOMB_X23_Y13_N24
\SS|Selector26~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \SS|Selector26~1_combout\ = (\SS|Selector58~0_combout\ & ((\L|Equal3~0_combout\ & (!\SD|line_status_new\(1))) # (!\L|Equal3~0_combout\ & ((\SS|boost_speed\(14))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010101000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SS|Selector58~0_combout\,
	datab => \L|Equal3~0_combout\,
	datac => \SD|line_status_new\(1),
	datad => \SS|boost_speed\(14),
	combout => \SS|Selector26~1_combout\);

-- Location: LCCOMB_X24_Y13_N30
\SS|Selector26~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \SS|Selector26~2_combout\ = (Phase(0) & !\SD|line_status_new\(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => Phase(0),
	datad => \SD|line_status_new\(1),
	combout => \SS|Selector26~2_combout\);

-- Location: LCCOMB_X24_Y13_N0
\SS|Selector26~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \SS|Selector26~3_combout\ = (!Phase(1) & (\SS|Selector26~2_combout\ & (\SD|line_status_new\(0) $ (\SD|line_status_new\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => Phase(1),
	datab => \SD|line_status_new\(0),
	datac => \SS|Selector26~2_combout\,
	datad => \SD|line_status_new\(2),
	combout => \SS|Selector26~3_combout\);

-- Location: LCCOMB_X23_Y13_N2
\SS|Selector26~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \SS|Selector26~4_combout\ = (\SS|Selector26~1_combout\) # ((!Phase(2) & ((\SS|Selector26~3_combout\) # (\SS|Selector54~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SS|Selector26~1_combout\,
	datab => \SS|Selector26~3_combout\,
	datac => Phase(2),
	datad => \SS|Selector54~1_combout\,
	combout => \SS|Selector26~4_combout\);

-- Location: LCCOMB_X23_Y13_N0
\SS|Selector26~5\ : cycloneiii_lcell_comb
-- Equation(s):
-- \SS|Selector26~5_combout\ = (Phase(3) & (\L|Equal12~0_combout\ & (\SS|speed_left~1_combout\))) # (!Phase(3) & ((\SS|Selector26~4_combout\) # ((\L|Equal12~0_combout\ & \SS|speed_left~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101010111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => Phase(3),
	datab => \L|Equal12~0_combout\,
	datac => \SS|speed_left~1_combout\,
	datad => \SS|Selector26~4_combout\,
	combout => \SS|Selector26~5_combout\);

-- Location: LCCOMB_X23_Y13_N12
\SS|speed_left[9]\ : cycloneiii_lcell_comb
-- Equation(s):
-- \SS|speed_left\(9) = (!\force_move~q\ & ((GLOBAL(\SS|Selector71~3clkctrl_outclk\) & ((\SS|Selector26~5_combout\))) # (!GLOBAL(\SS|Selector71~3clkctrl_outclk\) & (\SS|speed_left\(9)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SS|speed_left\(9),
	datab => \force_move~q\,
	datac => \SS|Selector71~3clkctrl_outclk\,
	datad => \SS|Selector26~5_combout\,
	combout => \SS|speed_left\(9));

-- Location: LCCOMB_X21_Y13_N30
\SS|Selector27~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \SS|Selector27~2_combout\ = (Phase(3) & (!Phase(1) & ((\L|Equal3~1_combout\)))) # (!Phase(3) & (Phase(1) & (\L|Equal3~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110001001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => Phase(3),
	datab => Phase(1),
	datac => \L|Equal3~3_combout\,
	datad => \L|Equal3~1_combout\,
	combout => \SS|Selector27~2_combout\);

-- Location: LCCOMB_X21_Y13_N20
\SS|Selector27~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \SS|Selector27~3_combout\ = (\SS|Selector22~4_combout\) # ((Phase(0) & (\SS|Selector27~2_combout\ & !Phase(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SS|Selector22~4_combout\,
	datab => Phase(0),
	datac => \SS|Selector27~2_combout\,
	datad => Phase(2),
	combout => \SS|Selector27~3_combout\);

-- Location: LCCOMB_X21_Y13_N28
\SS|speed_left[8]\ : cycloneiii_lcell_comb
-- Equation(s):
-- \SS|speed_left\(8) = (!\force_move~q\ & ((GLOBAL(\SS|Selector71~3clkctrl_outclk\) & ((\SS|Selector27~3_combout\))) # (!GLOBAL(\SS|Selector71~3clkctrl_outclk\) & (\SS|speed_left\(8)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \force_move~q\,
	datab => \SS|speed_left\(8),
	datac => \SS|Selector27~3_combout\,
	datad => \SS|Selector71~3clkctrl_outclk\,
	combout => \SS|speed_left\(8));

-- Location: LCCOMB_X23_Y15_N14
\L|Equal7~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \L|Equal7~1_combout\ = (Phase(0) & (!Phase(2) & !Phase(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => Phase(0),
	datac => Phase(2),
	datad => Phase(1),
	combout => \L|Equal7~1_combout\);

-- Location: LCCOMB_X23_Y15_N0
\SS|Selector28~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \SS|Selector28~1_combout\ = \SD|line_status_new\(0) $ (!\SD|line_status_new\(2))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \SD|line_status_new\(0),
	datad => \SD|line_status_new\(2),
	combout => \SS|Selector28~1_combout\);

-- Location: LCCOMB_X23_Y13_N6
\SS|Selector28~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \SS|Selector28~0_combout\ = (!\L|Equal3~0_combout\ & ((\SS|Selector20~3_combout\) # ((\SS|Selector54~0_combout\ & !Phase(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SS|Selector54~0_combout\,
	datab => \L|Equal3~0_combout\,
	datac => Phase(2),
	datad => \SS|Selector20~3_combout\,
	combout => \SS|Selector28~0_combout\);

-- Location: LCCOMB_X23_Y13_N8
\SS|Selector28~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \SS|Selector28~2_combout\ = (!Phase(3) & ((\SS|Selector28~0_combout\) # ((\L|Equal7~1_combout\ & \SS|Selector28~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010101000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => Phase(3),
	datab => \L|Equal7~1_combout\,
	datac => \SS|Selector28~1_combout\,
	datad => \SS|Selector28~0_combout\,
	combout => \SS|Selector28~2_combout\);

-- Location: LCCOMB_X23_Y13_N14
\SS|speed_left[7]\ : cycloneiii_lcell_comb
-- Equation(s):
-- \SS|speed_left\(7) = (\force_move~q\) # ((GLOBAL(\SS|Selector71~3clkctrl_outclk\) & ((\SS|Selector28~2_combout\))) # (!GLOBAL(\SS|Selector71~3clkctrl_outclk\) & (\SS|speed_left\(7))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101011101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \force_move~q\,
	datab => \SS|speed_left\(7),
	datac => \SS|Selector28~2_combout\,
	datad => \SS|Selector71~3clkctrl_outclk\,
	combout => \SS|speed_left\(7));

-- Location: LCCOMB_X21_Y13_N12
\SS|Selector29~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \SS|Selector29~0_combout\ = (Phase(0) & (\L|Equal8~0_combout\ & (\SD|line_status_new\(2) $ (!\SD|line_status_new\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => Phase(0),
	datab => \L|Equal8~0_combout\,
	datac => \SD|line_status_new\(2),
	datad => \SD|line_status_new\(0),
	combout => \SS|Selector29~0_combout\);

-- Location: LCCOMB_X21_Y13_N18
\SS|speed_left[6]\ : cycloneiii_lcell_comb
-- Equation(s):
-- \SS|speed_left\(6) = (!\force_move~q\ & ((GLOBAL(\SS|Selector71~3clkctrl_outclk\) & (\SS|Selector29~0_combout\)) # (!GLOBAL(\SS|Selector71~3clkctrl_outclk\) & ((\SS|speed_left\(6))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SS|Selector29~0_combout\,
	datab => \SS|speed_left\(6),
	datac => \force_move~q\,
	datad => \SS|Selector71~3clkctrl_outclk\,
	combout => \SS|speed_left\(6));

-- Location: LCCOMB_X24_Y13_N10
\SS|Selector30~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \SS|Selector30~0_combout\ = (!\SD|line_status_new\(2) & (\SS|Selector22~0_combout\ & ((\SD|line_status_new\(0)) # (\SD|line_status_new\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SD|line_status_new\(2),
	datab => \SD|line_status_new\(0),
	datac => \SS|Selector22~0_combout\,
	datad => \SD|line_status_new\(1),
	combout => \SS|Selector30~0_combout\);

-- Location: LCCOMB_X24_Y13_N20
\SS|Selector30~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \SS|Selector30~1_combout\ = (!Phase(1) & ((\SS|Selector30~0_combout\) # ((\SS|Selector22~3_combout\ & !\L|Equal3~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101000001110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SS|Selector30~0_combout\,
	datab => \SS|Selector22~3_combout\,
	datac => Phase(1),
	datad => \L|Equal3~0_combout\,
	combout => \SS|Selector30~1_combout\);

-- Location: LCCOMB_X23_Y13_N18
\L|Equal8~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \L|Equal8~1_combout\ = (!Phase(3) & Phase(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => Phase(3),
	datad => Phase(1),
	combout => \L|Equal8~1_combout\);

-- Location: LCCOMB_X23_Y13_N20
\SS|Selector30~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \SS|Selector30~2_combout\ = (\SS|Selector30~1_combout\) # ((\SS|Selector20~2_combout\ & (\L|Equal3~4_combout\ & \L|Equal8~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SS|Selector30~1_combout\,
	datab => \SS|Selector20~2_combout\,
	datac => \L|Equal3~4_combout\,
	datad => \L|Equal8~1_combout\,
	combout => \SS|Selector30~2_combout\);

-- Location: LCCOMB_X23_Y13_N4
\SS|speed_left[5]\ : cycloneiii_lcell_comb
-- Equation(s):
-- \SS|speed_left\(5) = (\force_move~q\) # ((GLOBAL(\SS|Selector71~3clkctrl_outclk\) & (\SS|Selector30~2_combout\)) # (!GLOBAL(\SS|Selector71~3clkctrl_outclk\) & ((\SS|speed_left\(5)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111011111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \force_move~q\,
	datab => \SS|Selector30~2_combout\,
	datac => \SS|speed_left\(5),
	datad => \SS|Selector71~3clkctrl_outclk\,
	combout => \SS|speed_left\(5));

-- Location: LCCOMB_X22_Y12_N8
\SS|Selector31~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \SS|Selector31~4_combout\ = (\SD|line_status_new\(2) & ((\SD|line_status_new\(0) & (\SS|boost_speed\(15))) # (!\SD|line_status_new\(0) & ((!\SD|line_status_new\(1)))))) # (!\SD|line_status_new\(2) & (\SS|boost_speed\(15)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110001001110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SD|line_status_new\(2),
	datab => \SS|boost_speed\(15),
	datac => \SD|line_status_new\(1),
	datad => \SD|line_status_new\(0),
	combout => \SS|Selector31~4_combout\);

-- Location: LCCOMB_X22_Y13_N20
\SS|Selector22~7\ : cycloneiii_lcell_comb
-- Equation(s):
-- \SS|Selector22~7_combout\ = (\SD|line_status_new\(1) & ((\SD|line_status_new\(2)) # (!\SD|line_status_new\(0)))) # (!\SD|line_status_new\(1) & ((\SD|line_status_new\(0)) # (!\SD|line_status_new\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \SD|line_status_new\(1),
	datac => \SD|line_status_new\(2),
	datad => \SD|line_status_new\(0),
	combout => \SS|Selector22~7_combout\);

-- Location: LCCOMB_X22_Y12_N2
\SS|Selector31~5\ : cycloneiii_lcell_comb
-- Equation(s):
-- \SS|Selector31~5_combout\ = (\SS|Selector22~3_combout\ & ((Phase(2) & (\SS|Selector31~4_combout\)) # (!Phase(2) & ((!\SS|Selector22~7_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000010100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SS|Selector22~3_combout\,
	datab => Phase(2),
	datac => \SS|Selector31~4_combout\,
	datad => \SS|Selector22~7_combout\,
	combout => \SS|Selector31~5_combout\);

-- Location: LCCOMB_X24_Y13_N22
\SS|Selector31~7\ : cycloneiii_lcell_comb
-- Equation(s):
-- \SS|Selector31~7_combout\ = (\SD|line_status_new\(1) & (\SD|line_status_new\(0) & (\SS|Selector22~0_combout\ & !\SD|line_status_new\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SD|line_status_new\(1),
	datab => \SD|line_status_new\(0),
	datac => \SS|Selector22~0_combout\,
	datad => \SD|line_status_new\(2),
	combout => \SS|Selector31~7_combout\);

-- Location: LCCOMB_X22_Y13_N4
\SS|Selector31~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \SS|Selector31~6_combout\ = (\SS|Selector24~1_combout\) # ((!Phase(1) & ((\SS|Selector31~5_combout\) # (\SS|Selector31~7_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110111011100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => Phase(1),
	datab => \SS|Selector24~1_combout\,
	datac => \SS|Selector31~5_combout\,
	datad => \SS|Selector31~7_combout\,
	combout => \SS|Selector31~6_combout\);

-- Location: LCCOMB_X22_Y13_N24
\SS|speed_left[4]\ : cycloneiii_lcell_comb
-- Equation(s):
-- \SS|speed_left\(4) = (\force_move~q\) # ((GLOBAL(\SS|Selector71~3clkctrl_outclk\) & ((\SS|Selector31~6_combout\))) # (!GLOBAL(\SS|Selector71~3clkctrl_outclk\) & (\SS|speed_left\(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101011101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \force_move~q\,
	datab => \SS|speed_left\(4),
	datac => \SS|Selector31~6_combout\,
	datad => \SS|Selector71~3clkctrl_outclk\,
	combout => \SS|speed_left\(4));

-- Location: LCCOMB_X20_Y17_N2
\L|Selector11~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \L|Selector11~3_combout\ = (Phase(1) & (((Phase(2)) # (Phase(3))) # (!Phase(0)))) # (!Phase(1) & ((Phase(0) & (Phase(2) $ (!Phase(3)))) # (!Phase(0) & ((Phase(2)) # (Phase(3))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101110110110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => Phase(1),
	datab => Phase(0),
	datac => Phase(2),
	datad => Phase(3),
	combout => \L|Selector11~3_combout\);

-- Location: LCCOMB_X21_Y17_N28
\L|Selector11~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \L|Selector11~2_combout\ = (Phase(2)) # ((Phase(3)) # (Phase(1) $ (!Phase(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011101111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => Phase(2),
	datab => Phase(3),
	datac => Phase(1),
	datad => Phase(0),
	combout => \L|Selector11~2_combout\);

-- Location: LCCOMB_X20_Y17_N20
\SS|Selector72~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \SS|Selector72~0_combout\ = (\SS|speed_left[31]~0_combout\ & (((!\L|Equal3~2_combout\ & \L|Equal10~1_combout\)) # (!\L|Selector11~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \L|Equal3~2_combout\,
	datab => \L|Equal10~1_combout\,
	datac => \L|Selector11~2_combout\,
	datad => \SS|speed_left[31]~0_combout\,
	combout => \SS|Selector72~0_combout\);

-- Location: LCCOMB_X20_Y17_N14
\SS|Selector72~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \SS|Selector72~1_combout\ = ((\SS|Selector72~0_combout\) # ((\L|Equal3~2_combout\ & \L|Equal8~2_combout\))) # (!\L|Selector11~3_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \L|Equal3~2_combout\,
	datab => \L|Equal8~2_combout\,
	datac => \L|Selector11~3_combout\,
	datad => \SS|Selector72~0_combout\,
	combout => \SS|Selector72~1_combout\);

-- Location: LCCOMB_X21_Y13_N24
\SS|speed_left[2]\ : cycloneiii_lcell_comb
-- Equation(s):
-- \SS|speed_left\(2) = (\force_move~q\) # ((!\SS|Selector72~1_combout\ & \SS|speed_left\(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SS|Selector72~1_combout\,
	datac => \force_move~q\,
	datad => \SS|speed_left\(2),
	combout => \SS|speed_left\(2));

-- Location: LCCOMB_X20_Y13_N2
\LessThan7~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \LessThan7~1_cout\ = CARRY((!\carry_cnt~6_combout\ & \SS|speed_left\(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001000100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \carry_cnt~6_combout\,
	datab => \SS|speed_left\(2),
	datad => VCC,
	cout => \LessThan7~1_cout\);

-- Location: LCCOMB_X20_Y13_N4
\LessThan7~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \LessThan7~3_cout\ = CARRY((\carry_cnt~5_combout\ & ((!\LessThan7~1_cout\) # (!\SS|speed_left\(7)))) # (!\carry_cnt~5_combout\ & (!\SS|speed_left\(7) & !\LessThan7~1_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \carry_cnt~5_combout\,
	datab => \SS|speed_left\(7),
	datad => VCC,
	cin => \LessThan7~1_cout\,
	cout => \LessThan7~3_cout\);

-- Location: LCCOMB_X20_Y13_N6
\LessThan7~5\ : cycloneiii_lcell_comb
-- Equation(s):
-- \LessThan7~5_cout\ = CARRY((\SS|speed_left\(4) & ((!\LessThan7~3_cout\) # (!\Add3~8_combout\))) # (!\SS|speed_left\(4) & (!\Add3~8_combout\ & !\LessThan7~3_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \SS|speed_left\(4),
	datab => \Add3~8_combout\,
	datad => VCC,
	cin => \LessThan7~3_cout\,
	cout => \LessThan7~5_cout\);

-- Location: LCCOMB_X20_Y13_N8
\LessThan7~7\ : cycloneiii_lcell_comb
-- Equation(s):
-- \LessThan7~7_cout\ = CARRY((\Add3~10_combout\ & ((!\LessThan7~5_cout\) # (!\SS|speed_left\(5)))) # (!\Add3~10_combout\ & (!\SS|speed_left\(5) & !\LessThan7~5_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Add3~10_combout\,
	datab => \SS|speed_left\(5),
	datad => VCC,
	cin => \LessThan7~5_cout\,
	cout => \LessThan7~7_cout\);

-- Location: LCCOMB_X20_Y13_N10
\LessThan7~9\ : cycloneiii_lcell_comb
-- Equation(s):
-- \LessThan7~9_cout\ = CARRY((\carry_cnt~4_combout\ & (\SS|speed_left\(6) & !\LessThan7~7_cout\)) # (!\carry_cnt~4_combout\ & ((\SS|speed_left\(6)) # (!\LessThan7~7_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \carry_cnt~4_combout\,
	datab => \SS|speed_left\(6),
	datad => VCC,
	cin => \LessThan7~7_cout\,
	cout => \LessThan7~9_cout\);

-- Location: LCCOMB_X20_Y13_N12
\LessThan7~11\ : cycloneiii_lcell_comb
-- Equation(s):
-- \LessThan7~11_cout\ = CARRY((\Add3~14_combout\ & ((!\LessThan7~9_cout\) # (!\SS|speed_left\(7)))) # (!\Add3~14_combout\ & (!\SS|speed_left\(7) & !\LessThan7~9_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Add3~14_combout\,
	datab => \SS|speed_left\(7),
	datad => VCC,
	cin => \LessThan7~9_cout\,
	cout => \LessThan7~11_cout\);

-- Location: LCCOMB_X20_Y13_N14
\LessThan7~13\ : cycloneiii_lcell_comb
-- Equation(s):
-- \LessThan7~13_cout\ = CARRY((\carry_cnt~3_combout\ & (\SS|speed_left\(8) & !\LessThan7~11_cout\)) # (!\carry_cnt~3_combout\ & ((\SS|speed_left\(8)) # (!\LessThan7~11_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \carry_cnt~3_combout\,
	datab => \SS|speed_left\(8),
	datad => VCC,
	cin => \LessThan7~11_cout\,
	cout => \LessThan7~13_cout\);

-- Location: LCCOMB_X20_Y13_N16
\LessThan7~15\ : cycloneiii_lcell_comb
-- Equation(s):
-- \LessThan7~15_cout\ = CARRY((\SS|speed_left\(9) & (\carry_cnt~2_combout\ & !\LessThan7~13_cout\)) # (!\SS|speed_left\(9) & ((\carry_cnt~2_combout\) # (!\LessThan7~13_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \SS|speed_left\(9),
	datab => \carry_cnt~2_combout\,
	datad => VCC,
	cin => \LessThan7~13_cout\,
	cout => \LessThan7~15_cout\);

-- Location: LCCOMB_X20_Y13_N18
\LessThan7~17\ : cycloneiii_lcell_comb
-- Equation(s):
-- \LessThan7~17_cout\ = CARRY((\Add3~20_combout\ & (\SS|speed_left\(10) & !\LessThan7~15_cout\)) # (!\Add3~20_combout\ & ((\SS|speed_left\(10)) # (!\LessThan7~15_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Add3~20_combout\,
	datab => \SS|speed_left\(10),
	datad => VCC,
	cin => \LessThan7~15_cout\,
	cout => \LessThan7~17_cout\);

-- Location: LCCOMB_X20_Y13_N20
\LessThan7~19\ : cycloneiii_lcell_comb
-- Equation(s):
-- \LessThan7~19_cout\ = CARRY((\SS|speed_left\(11) & (\Add3~22_combout\ & !\LessThan7~17_cout\)) # (!\SS|speed_left\(11) & ((\Add3~22_combout\) # (!\LessThan7~17_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \SS|speed_left\(11),
	datab => \Add3~22_combout\,
	datad => VCC,
	cin => \LessThan7~17_cout\,
	cout => \LessThan7~19_cout\);

-- Location: LCCOMB_X20_Y13_N22
\LessThan7~21\ : cycloneiii_lcell_comb
-- Equation(s):
-- \LessThan7~21_cout\ = CARRY((\SS|speed_left\(12) & ((!\LessThan7~19_cout\) # (!\Add3~24_combout\))) # (!\SS|speed_left\(12) & (!\Add3~24_combout\ & !\LessThan7~19_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \SS|speed_left\(12),
	datab => \Add3~24_combout\,
	datad => VCC,
	cin => \LessThan7~19_cout\,
	cout => \LessThan7~21_cout\);

-- Location: LCCOMB_X20_Y13_N24
\LessThan7~23\ : cycloneiii_lcell_comb
-- Equation(s):
-- \LessThan7~23_cout\ = CARRY((\Add3~26_combout\ & ((!\LessThan7~21_cout\) # (!\SS|speed_left\(13)))) # (!\Add3~26_combout\ & (!\SS|speed_left\(13) & !\LessThan7~21_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Add3~26_combout\,
	datab => \SS|speed_left\(13),
	datad => VCC,
	cin => \LessThan7~21_cout\,
	cout => \LessThan7~23_cout\);

-- Location: LCCOMB_X20_Y13_N26
\LessThan7~25\ : cycloneiii_lcell_comb
-- Equation(s):
-- \LessThan7~25_cout\ = CARRY((\SS|speed_left\(14) & ((!\LessThan7~23_cout\) # (!\carry_cnt~1_combout\))) # (!\SS|speed_left\(14) & (!\carry_cnt~1_combout\ & !\LessThan7~23_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \SS|speed_left\(14),
	datab => \carry_cnt~1_combout\,
	datad => VCC,
	cin => \LessThan7~23_cout\,
	cout => \LessThan7~25_cout\);

-- Location: LCCOMB_X20_Y13_N28
\LessThan7~26\ : cycloneiii_lcell_comb
-- Equation(s):
-- \LessThan7~26_combout\ = (\SS|speed_left\(15) & ((\LessThan7~25_cout\) # (!\carry_cnt~0_combout\))) # (!\SS|speed_left\(15) & (\LessThan7~25_cout\ & !\carry_cnt~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000011111010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \SS|speed_left\(15),
	datad => \carry_cnt~0_combout\,
	cin => \LessThan7~25_cout\,
	combout => \LessThan7~26_combout\);

-- Location: LCCOMB_X20_Y13_N0
\motor_left~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \motor_left~0_combout\ = (\sw[6]~input_o\ & ((\Add3~62_combout\) # ((\Equal5~4_combout\ & \LessThan7~26_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal5~4_combout\,
	datab => \Add3~62_combout\,
	datac => \sw[6]~input_o\,
	datad => \LessThan7~26_combout\,
	combout => \motor_left~0_combout\);

-- Location: FF_X20_Y13_N1
\motor_left~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \motor_left~0_combout\,
	ena => \sw[0]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \motor_left~reg0_q\);

-- Location: LCCOMB_X22_Y15_N26
\SS|Selector52~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \SS|Selector52~2_combout\ = (\SS|boost_speed\(15) & (\L|Equal10~1_combout\ & ((\SD|line_status_new\(2)) # (!\SD|line_status_new\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SD|line_status_new\(0),
	datab => \SS|boost_speed\(15),
	datac => \L|Equal10~1_combout\,
	datad => \SD|line_status_new\(2),
	combout => \SS|Selector52~2_combout\);

-- Location: LCCOMB_X21_Y14_N2
\SS|speed_right[15]\ : cycloneiii_lcell_comb
-- Equation(s):
-- \SS|speed_right\(15) = (!\force_move~q\ & ((GLOBAL(\SS|Selector71~3clkctrl_outclk\) & (\SS|Selector52~2_combout\)) # (!GLOBAL(\SS|Selector71~3clkctrl_outclk\) & ((\SS|speed_right\(15))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SS|Selector52~2_combout\,
	datab => \SS|Selector71~3clkctrl_outclk\,
	datac => \SS|speed_right\(15),
	datad => \force_move~q\,
	combout => \SS|speed_right\(15));

-- Location: LCCOMB_X23_Y14_N18
\SS|Selector53~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \SS|Selector53~2_combout\ = (!Phase(1) & ((Phase(0) & (!Phase(2))) # (!Phase(0) & (Phase(2) & \SS|boost_speed\(14)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000011000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => Phase(0),
	datab => Phase(2),
	datac => Phase(1),
	datad => \SS|boost_speed\(14),
	combout => \SS|Selector53~2_combout\);

-- Location: LCCOMB_X22_Y15_N20
\SS|Selector53~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \SS|Selector53~4_combout\ = (\L|Equal12~0_combout\ & (!\SD|line_status_new\(0) & ((\SD|line_status_new\(2)) # (\SD|line_status_new\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \L|Equal12~0_combout\,
	datab => \SD|line_status_new\(2),
	datac => \SD|line_status_new\(1),
	datad => \SD|line_status_new\(0),
	combout => \SS|Selector53~4_combout\);

-- Location: LCCOMB_X23_Y14_N8
\SS|Selector53~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \SS|Selector53~3_combout\ = (\SS|Selector53~4_combout\) # ((\SS|Selector53~2_combout\ & (!Phase(3) & !\L|Equal3~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011001110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SS|Selector53~2_combout\,
	datab => \SS|Selector53~4_combout\,
	datac => Phase(3),
	datad => \L|Equal3~4_combout\,
	combout => \SS|Selector53~3_combout\);

-- Location: LCCOMB_X23_Y14_N14
\SS|speed_right[14]\ : cycloneiii_lcell_comb
-- Equation(s):
-- \SS|speed_right\(14) = (!\force_move~q\ & ((GLOBAL(\SS|Selector71~3clkctrl_outclk\) & (\SS|Selector53~3_combout\)) # (!GLOBAL(\SS|Selector71~3clkctrl_outclk\) & ((\SS|speed_right\(14))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SS|Selector53~3_combout\,
	datab => \SS|speed_right\(14),
	datac => \force_move~q\,
	datad => \SS|Selector71~3clkctrl_outclk\,
	combout => \SS|speed_right\(14));

-- Location: LCCOMB_X24_Y13_N24
\L|Equal3~5\ : cycloneiii_lcell_comb
-- Equation(s):
-- \L|Equal3~5_combout\ = (\SD|line_status_new\(1) & (\SD|line_status_new\(2) & !\SD|line_status_new\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SD|line_status_new\(1),
	datab => \SD|line_status_new\(2),
	datac => \SD|line_status_new\(0),
	combout => \L|Equal3~5_combout\);

-- Location: LCCOMB_X22_Y14_N30
\SS|Selector54~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \SS|Selector54~2_combout\ = (Phase(1) & (!\L|Equal3~4_combout\ & ((Phase(0)) # (!\L|Equal3~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \L|Equal3~2_combout\,
	datab => Phase(1),
	datac => Phase(0),
	datad => \L|Equal3~4_combout\,
	combout => \SS|Selector54~2_combout\);

-- Location: LCCOMB_X21_Y13_N2
\SS|Selector54~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \SS|Selector54~3_combout\ = (!Phase(2) & ((\SS|Selector54~2_combout\) # ((\SS|Selector22~7_combout\ & \L|Equal7~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => Phase(2),
	datab => \SS|Selector22~7_combout\,
	datac => \SS|Selector54~2_combout\,
	datad => \L|Equal7~0_combout\,
	combout => \SS|Selector54~3_combout\);

-- Location: LCCOMB_X21_Y13_N0
\SS|Selector54~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \SS|Selector54~4_combout\ = (!Phase(3) & ((\SS|Selector54~3_combout\) # ((\L|Equal3~3_combout\ & \SS|Selector58~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010101000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => Phase(3),
	datab => \L|Equal3~3_combout\,
	datac => \SS|Selector58~0_combout\,
	datad => \SS|Selector54~3_combout\,
	combout => \SS|Selector54~4_combout\);

-- Location: LCCOMB_X21_Y13_N10
\SS|Selector54~5\ : cycloneiii_lcell_comb
-- Equation(s):
-- \SS|Selector54~5_combout\ = (\SS|Selector54~4_combout\) # ((\L|Equal3~5_combout\ & \L|Equal12~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \L|Equal3~5_combout\,
	datac => \L|Equal12~0_combout\,
	datad => \SS|Selector54~4_combout\,
	combout => \SS|Selector54~5_combout\);

-- Location: LCCOMB_X21_Y13_N22
\SS|speed_right[13]\ : cycloneiii_lcell_comb
-- Equation(s):
-- \SS|speed_right\(13) = (\force_move~q\) # ((GLOBAL(\SS|Selector71~3clkctrl_outclk\) & ((\SS|Selector54~5_combout\))) # (!GLOBAL(\SS|Selector71~3clkctrl_outclk\) & (\SS|speed_right\(13))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011001110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SS|speed_right\(13),
	datab => \force_move~q\,
	datac => \SS|Selector71~3clkctrl_outclk\,
	datad => \SS|Selector54~5_combout\,
	combout => \SS|speed_right\(13));

-- Location: LCCOMB_X22_Y13_N26
\SS|Selector55~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \SS|Selector55~0_combout\ = (\L|Equal3~5_combout\ & ((\L|Equal7~0_combout\) # ((!Phase(3) & \SS|Selector54~2_combout\)))) # (!\L|Equal3~5_combout\ & (!Phase(3) & (\SS|Selector54~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \L|Equal3~5_combout\,
	datab => Phase(3),
	datac => \SS|Selector54~2_combout\,
	datad => \L|Equal7~0_combout\,
	combout => \SS|Selector55~0_combout\);

-- Location: LCCOMB_X22_Y13_N8
\SS|Selector55~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \SS|Selector55~1_combout\ = (!Phase(2) & \SS|Selector55~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => Phase(2),
	datad => \SS|Selector55~0_combout\,
	combout => \SS|Selector55~1_combout\);

-- Location: LCCOMB_X22_Y13_N10
\SS|speed_right[12]\ : cycloneiii_lcell_comb
-- Equation(s):
-- \SS|speed_right\(12) = (!\force_move~q\ & ((GLOBAL(\SS|Selector71~3clkctrl_outclk\) & ((\SS|Selector55~1_combout\))) # (!GLOBAL(\SS|Selector71~3clkctrl_outclk\) & (\SS|speed_right\(12)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \force_move~q\,
	datab => \SS|speed_right\(12),
	datac => \SS|Selector71~3clkctrl_outclk\,
	datad => \SS|Selector55~1_combout\,
	combout => \SS|speed_right\(12));

-- Location: LCCOMB_X23_Y14_N30
\SS|Selector56~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \SS|Selector56~2_combout\ = (Phase(1) & (((\SD|line_status_new\(2) & !\SD|line_status_new\(1))) # (!\SD|line_status_new\(0)))) # (!Phase(1) & (\SD|line_status_new\(2) & (!\SD|line_status_new\(1) & !\SD|line_status_new\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100010101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => Phase(1),
	datab => \SD|line_status_new\(2),
	datac => \SD|line_status_new\(1),
	datad => \SD|line_status_new\(0),
	combout => \SS|Selector56~2_combout\);

-- Location: LCCOMB_X22_Y14_N10
\SS|Selector56~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \SS|Selector56~3_combout\ = (!Phase(2) & (\SS|Selector56~2_combout\ & (Phase(0) $ (Phase(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000011000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => Phase(0),
	datab => Phase(1),
	datac => Phase(2),
	datad => \SS|Selector56~2_combout\,
	combout => \SS|Selector56~3_combout\);

-- Location: LCCOMB_X22_Y14_N16
\SS|Selector56~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \SS|Selector56~0_combout\ = (\L|Equal12~0_combout\ & (!\SD|line_status_new\(0) & (\SD|line_status_new\(1) $ (\SD|line_status_new\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \L|Equal12~0_combout\,
	datab => \SD|line_status_new\(0),
	datac => \SD|line_status_new\(1),
	datad => \SD|line_status_new\(2),
	combout => \SS|Selector56~0_combout\);

-- Location: LCCOMB_X22_Y14_N14
\SS|Selector56~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \SS|Selector56~1_combout\ = (!\L|Equal3~3_combout\ & (\SS|Selector58~0_combout\ & !\L|Equal3~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \L|Equal3~3_combout\,
	datab => \SS|Selector58~0_combout\,
	datad => \L|Equal3~1_combout\,
	combout => \SS|Selector56~1_combout\);

-- Location: LCCOMB_X22_Y14_N22
\SS|Selector56~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \SS|Selector56~4_combout\ = (\SS|Selector56~0_combout\) # ((!Phase(3) & ((\SS|Selector56~3_combout\) # (\SS|Selector56~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SS|Selector56~3_combout\,
	datab => \SS|Selector56~0_combout\,
	datac => \SS|Selector56~1_combout\,
	datad => Phase(3),
	combout => \SS|Selector56~4_combout\);

-- Location: LCCOMB_X22_Y14_N2
\SS|speed_right[11]\ : cycloneiii_lcell_comb
-- Equation(s):
-- \SS|speed_right\(11) = (\force_move~q\) # ((GLOBAL(\SS|Selector71~3clkctrl_outclk\) & ((\SS|Selector56~4_combout\))) # (!GLOBAL(\SS|Selector71~3clkctrl_outclk\) & (\SS|speed_right\(11))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011001110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SS|speed_right\(11),
	datab => \force_move~q\,
	datac => \SS|Selector71~3clkctrl_outclk\,
	datad => \SS|Selector56~4_combout\,
	combout => \SS|speed_right\(11));

-- Location: LCCOMB_X22_Y13_N28
\SS|Selector57~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \SS|Selector57~1_combout\ = (\SD|line_status_new\(0) & (!Phase(3) & (!\SD|line_status_new\(2) & !\SD|line_status_new\(1)))) # (!\SD|line_status_new\(0) & ((\SD|line_status_new\(2)) # ((Phase(3) & \SD|line_status_new\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010001010010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SD|line_status_new\(0),
	datab => Phase(3),
	datac => \SD|line_status_new\(2),
	datad => \SD|line_status_new\(1),
	combout => \SS|Selector57~1_combout\);

-- Location: LCCOMB_X22_Y12_N0
\SS|Selector57~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \SS|Selector57~0_combout\ = (\SS|Selector25~1_combout\ & ((\L|Equal3~3_combout\) # ((!\L|Equal3~4_combout\ & \SS|boost_speed\(14)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \L|Equal3~4_combout\,
	datab => \SS|boost_speed\(14),
	datac => \L|Equal3~3_combout\,
	datad => \SS|Selector25~1_combout\,
	combout => \SS|Selector57~0_combout\);

-- Location: LCCOMB_X22_Y13_N30
\SS|Selector57~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \SS|Selector57~2_combout\ = (!Phase(1) & ((\SS|Selector57~0_combout\) # ((\SS|Selector57~1_combout\ & \SS|Selector20~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SS|Selector57~1_combout\,
	datab => \SS|Selector20~2_combout\,
	datac => Phase(1),
	datad => \SS|Selector57~0_combout\,
	combout => \SS|Selector57~2_combout\);

-- Location: LCCOMB_X22_Y13_N0
\SS|speed_right[10]\ : cycloneiii_lcell_comb
-- Equation(s):
-- \SS|speed_right\(10) = (\force_move~q\) # ((GLOBAL(\SS|Selector71~3clkctrl_outclk\) & ((\SS|Selector57~2_combout\))) # (!GLOBAL(\SS|Selector71~3clkctrl_outclk\) & (\SS|speed_right\(10))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101011101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \force_move~q\,
	datab => \SS|speed_right\(10),
	datac => \SS|Selector57~2_combout\,
	datad => \SS|Selector71~3clkctrl_outclk\,
	combout => \SS|speed_right\(10));

-- Location: LCCOMB_X22_Y14_N18
\SS|Selector58~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \SS|Selector58~1_combout\ = (\SS|Selector58~0_combout\ & ((\L|Equal3~4_combout\ & (!\SD|line_status_new\(1))) # (!\L|Equal3~4_combout\ & ((\SS|boost_speed\(14))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010101000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SS|Selector58~0_combout\,
	datab => \L|Equal3~4_combout\,
	datac => \SD|line_status_new\(1),
	datad => \SS|boost_speed\(14),
	combout => \SS|Selector58~1_combout\);

-- Location: LCCOMB_X22_Y14_N4
\SS|Selector58~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \SS|Selector58~2_combout\ = (\SS|Selector58~1_combout\) # ((!Phase(2) & ((\SS|Selector26~3_combout\) # (\SS|Selector54~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SS|Selector26~3_combout\,
	datab => \SS|Selector54~2_combout\,
	datac => \SS|Selector58~1_combout\,
	datad => Phase(2),
	combout => \SS|Selector58~2_combout\);

-- Location: LCCOMB_X22_Y14_N26
\SS|Selector58~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \SS|Selector58~3_combout\ = (\SS|Selector56~0_combout\) # ((\SS|Selector58~2_combout\ & !Phase(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \SS|Selector56~0_combout\,
	datac => \SS|Selector58~2_combout\,
	datad => Phase(3),
	combout => \SS|Selector58~3_combout\);

-- Location: LCCOMB_X22_Y14_N28
\SS|speed_right[9]\ : cycloneiii_lcell_comb
-- Equation(s):
-- \SS|speed_right\(9) = (\force_move~q\) # ((GLOBAL(\SS|Selector71~3clkctrl_outclk\) & (\SS|Selector58~3_combout\)) # (!GLOBAL(\SS|Selector71~3clkctrl_outclk\) & ((\SS|speed_right\(9)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110111101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SS|Selector71~3clkctrl_outclk\,
	datab => \force_move~q\,
	datac => \SS|Selector58~3_combout\,
	datad => \SS|speed_right\(9),
	combout => \SS|speed_right\(9));

-- Location: LCCOMB_X22_Y15_N6
\SS|Selector59~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \SS|Selector59~0_combout\ = (\SD|line_status_new\(2) & ((\SD|line_status_new\(0) & ((!Phase(3)))) # (!\SD|line_status_new\(0) & (\SD|line_status_new\(1))))) # (!\SD|line_status_new\(2) & (!Phase(3) & ((!\SD|line_status_new\(0)) # 
-- (!\SD|line_status_new\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100010111101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SD|line_status_new\(2),
	datab => \SD|line_status_new\(1),
	datac => \SD|line_status_new\(0),
	datad => Phase(3),
	combout => \SS|Selector59~0_combout\);

-- Location: LCCOMB_X22_Y15_N24
\SS|Selector59~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \SS|Selector59~1_combout\ = (\SS|Selector59~0_combout\ & ((\L|Equal7~1_combout\) # ((\L|Equal3~3_combout\ & \L|Equal10~1_combout\)))) # (!\SS|Selector59~0_combout\ & (((\L|Equal3~3_combout\ & \L|Equal10~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SS|Selector59~0_combout\,
	datab => \L|Equal7~1_combout\,
	datac => \L|Equal3~3_combout\,
	datad => \L|Equal10~1_combout\,
	combout => \SS|Selector59~1_combout\);

-- Location: LCCOMB_X22_Y13_N2
\SS|speed_right[8]\ : cycloneiii_lcell_comb
-- Equation(s):
-- \SS|speed_right\(8) = (!\force_move~q\ & ((GLOBAL(\SS|Selector71~3clkctrl_outclk\) & ((\SS|Selector59~1_combout\))) # (!GLOBAL(\SS|Selector71~3clkctrl_outclk\) & (\SS|speed_right\(8)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \force_move~q\,
	datab => \SS|speed_right\(8),
	datac => \SS|Selector59~1_combout\,
	datad => \SS|Selector71~3clkctrl_outclk\,
	combout => \SS|speed_right\(8));

-- Location: LCCOMB_X22_Y14_N0
\SS|Selector60~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \SS|Selector60~0_combout\ = (!Phase(2) & ((\SS|Selector54~2_combout\) # ((\SS|Selector28~1_combout\ & \L|Equal7~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => Phase(2),
	datab => \SS|Selector54~2_combout\,
	datac => \SS|Selector28~1_combout\,
	datad => \L|Equal7~0_combout\,
	combout => \SS|Selector60~0_combout\);

-- Location: LCCOMB_X22_Y14_N8
\SS|Selector60~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \SS|Selector60~1_combout\ = (!Phase(3) & ((\SS|Selector60~0_combout\) # ((!\L|Equal3~4_combout\ & \SS|Selector20~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110100001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \L|Equal3~4_combout\,
	datab => \SS|Selector60~0_combout\,
	datac => Phase(3),
	datad => \SS|Selector20~3_combout\,
	combout => \SS|Selector60~1_combout\);

-- Location: LCCOMB_X22_Y14_N12
\SS|speed_right[7]\ : cycloneiii_lcell_comb
-- Equation(s):
-- \SS|speed_right\(7) = (\force_move~q\) # ((GLOBAL(\SS|Selector71~3clkctrl_outclk\) & ((\SS|Selector60~1_combout\))) # (!GLOBAL(\SS|Selector71~3clkctrl_outclk\) & (\SS|speed_right\(7))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011001110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SS|speed_right\(7),
	datab => \force_move~q\,
	datac => \SS|Selector71~3clkctrl_outclk\,
	datad => \SS|Selector60~1_combout\,
	combout => \SS|speed_right\(7));

-- Location: LCCOMB_X21_Y13_N6
\SS|Selector61~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \SS|Selector61~2_combout\ = (Phase(0) & (\L|Equal8~0_combout\ & ((\SD|line_status_new\(2)) # (!\SD|line_status_new\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => Phase(0),
	datab => \L|Equal8~0_combout\,
	datac => \SD|line_status_new\(2),
	datad => \SD|line_status_new\(0),
	combout => \SS|Selector61~2_combout\);

-- Location: LCCOMB_X21_Y14_N30
\SS|speed_right[6]\ : cycloneiii_lcell_comb
-- Equation(s):
-- \SS|speed_right\(6) = (\force_move~q\) # ((GLOBAL(\SS|Selector71~3clkctrl_outclk\) & ((\SS|Selector61~2_combout\))) # (!GLOBAL(\SS|Selector71~3clkctrl_outclk\) & (\SS|speed_right\(6))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SS|speed_right\(6),
	datab => \SS|Selector71~3clkctrl_outclk\,
	datac => \SS|Selector61~2_combout\,
	datad => \force_move~q\,
	combout => \SS|speed_right\(6));

-- Location: LCCOMB_X22_Y15_N12
\SS|Selector62~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \SS|Selector62~0_combout\ = (Phase(3) & (!\SD|line_status_new\(0) & ((\SD|line_status_new\(2)) # (\SD|line_status_new\(1))))) # (!Phase(3) & ((\SD|line_status_new\(2)) # ((!\SD|line_status_new\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010011111101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => Phase(3),
	datab => \SD|line_status_new\(2),
	datac => \SD|line_status_new\(1),
	datad => \SD|line_status_new\(0),
	combout => \SS|Selector62~0_combout\);

-- Location: LCCOMB_X22_Y15_N2
\SS|Selector56~5\ : cycloneiii_lcell_comb
-- Equation(s):
-- \SS|Selector56~5_combout\ = (\SD|line_status_new\(2)) # (!\SD|line_status_new\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \SD|line_status_new\(2),
	datac => \SD|line_status_new\(0),
	combout => \SS|Selector56~5_combout\);

-- Location: LCCOMB_X22_Y15_N10
\SS|Selector62~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \SS|Selector62~1_combout\ = (\SS|Selector62~0_combout\ & ((\L|Equal7~1_combout\) # ((\L|Equal10~1_combout\ & \SS|Selector56~5_combout\)))) # (!\SS|Selector62~0_combout\ & (\L|Equal10~1_combout\ & (\SS|Selector56~5_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SS|Selector62~0_combout\,
	datab => \L|Equal10~1_combout\,
	datac => \SS|Selector56~5_combout\,
	datad => \L|Equal7~1_combout\,
	combout => \SS|Selector62~1_combout\);

-- Location: LCCOMB_X22_Y12_N6
\SS|speed_right[5]\ : cycloneiii_lcell_comb
-- Equation(s):
-- \SS|speed_right\(5) = (\force_move~q\) # ((GLOBAL(\SS|Selector71~3clkctrl_outclk\) & ((\SS|Selector62~1_combout\))) # (!GLOBAL(\SS|Selector71~3clkctrl_outclk\) & (\SS|speed_right\(5))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SS|speed_right\(5),
	datab => \SS|Selector62~1_combout\,
	datac => \force_move~q\,
	datad => \SS|Selector71~3clkctrl_outclk\,
	combout => \SS|speed_right\(5));

-- Location: LCCOMB_X21_Y17_N20
\SS|Selector63~8\ : cycloneiii_lcell_comb
-- Equation(s):
-- \SS|Selector63~8_combout\ = (\SS|Selector26~0_combout\ & (\SD|line_status_new\(2) & (!\SD|line_status_new\(0) & \SD|line_status_new\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SS|Selector26~0_combout\,
	datab => \SD|line_status_new\(2),
	datac => \SD|line_status_new\(0),
	datad => \SD|line_status_new\(1),
	combout => \SS|Selector63~8_combout\);

-- Location: LCCOMB_X21_Y17_N24
\SS|Selector63~5\ : cycloneiii_lcell_comb
-- Equation(s):
-- \SS|Selector63~5_combout\ = (\SD|line_status_new\(1) & (!\SD|line_status_new\(0) & ((Phase(1)) # (\SD|line_status_new\(2))))) # (!\SD|line_status_new\(1) & (Phase(1) $ (((\SD|line_status_new\(0) & !\SD|line_status_new\(2))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100111000011100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SD|line_status_new\(1),
	datab => Phase(1),
	datac => \SD|line_status_new\(0),
	datad => \SD|line_status_new\(2),
	combout => \SS|Selector63~5_combout\);

-- Location: LCCOMB_X21_Y17_N10
\SS|Selector63~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \SS|Selector63~6_combout\ = (\SS|Selector63~5_combout\ & (!Phase(3) & (Phase(1) $ (Phase(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => Phase(1),
	datab => \SS|Selector63~5_combout\,
	datac => Phase(3),
	datad => Phase(0),
	combout => \SS|Selector63~6_combout\);

-- Location: LCCOMB_X22_Y15_N8
\SS|Selector63~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \SS|Selector63~4_combout\ = (\L|Equal10~1_combout\ & ((\L|Equal3~3_combout\) # ((\SS|boost_speed\(15) & !\L|Equal3~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100011001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \L|Equal3~3_combout\,
	datab => \L|Equal10~1_combout\,
	datac => \SS|boost_speed\(15),
	datad => \L|Equal3~4_combout\,
	combout => \SS|Selector63~4_combout\);

-- Location: LCCOMB_X21_Y17_N0
\SS|Selector63~7\ : cycloneiii_lcell_comb
-- Equation(s):
-- \SS|Selector63~7_combout\ = (\SS|Selector63~4_combout\) # ((!Phase(2) & ((\SS|Selector63~8_combout\) # (\SS|Selector63~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SS|Selector63~8_combout\,
	datab => \SS|Selector63~6_combout\,
	datac => \SS|Selector63~4_combout\,
	datad => Phase(2),
	combout => \SS|Selector63~7_combout\);

-- Location: LCCOMB_X21_Y17_N6
\SS|speed_right[4]\ : cycloneiii_lcell_comb
-- Equation(s):
-- \SS|speed_right\(4) = (!\force_move~q\ & ((GLOBAL(\SS|Selector71~3clkctrl_outclk\) & ((\SS|Selector63~7_combout\))) # (!GLOBAL(\SS|Selector71~3clkctrl_outclk\) & (\SS|speed_right\(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SS|speed_right\(4),
	datab => \SS|Selector63~7_combout\,
	datac => \SS|Selector71~3clkctrl_outclk\,
	datad => \force_move~q\,
	combout => \SS|speed_right\(4));

-- Location: LCCOMB_X22_Y14_N20
\SS|speed_right[3]\ : cycloneiii_lcell_comb
-- Equation(s):
-- \SS|speed_right\(3) = (!\force_move~q\ & ((GLOBAL(\SS|Selector71~3clkctrl_outclk\) & ((\SS|Selector60~1_combout\))) # (!GLOBAL(\SS|Selector71~3clkctrl_outclk\) & (\SS|speed_right\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SS|speed_right\(3),
	datab => \force_move~q\,
	datac => \SS|Selector71~3clkctrl_outclk\,
	datad => \SS|Selector60~1_combout\,
	combout => \SS|speed_right\(3));

-- Location: LCCOMB_X21_Y14_N4
\LessThan9~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \LessThan9~1_cout\ = CARRY((\SS|speed_right\(3) & !\carry_cnt~5_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000100010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \SS|speed_right\(3),
	datab => \carry_cnt~5_combout\,
	datad => VCC,
	cout => \LessThan9~1_cout\);

-- Location: LCCOMB_X21_Y14_N6
\LessThan9~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \LessThan9~3_cout\ = CARRY((\SS|speed_right\(4) & (\Add3~8_combout\ & !\LessThan9~1_cout\)) # (!\SS|speed_right\(4) & ((\Add3~8_combout\) # (!\LessThan9~1_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \SS|speed_right\(4),
	datab => \Add3~8_combout\,
	datad => VCC,
	cin => \LessThan9~1_cout\,
	cout => \LessThan9~3_cout\);

-- Location: LCCOMB_X21_Y14_N8
\LessThan9~5\ : cycloneiii_lcell_comb
-- Equation(s):
-- \LessThan9~5_cout\ = CARRY((\Add3~10_combout\ & (\SS|speed_right\(5) & !\LessThan9~3_cout\)) # (!\Add3~10_combout\ & ((\SS|speed_right\(5)) # (!\LessThan9~3_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Add3~10_combout\,
	datab => \SS|speed_right\(5),
	datad => VCC,
	cin => \LessThan9~3_cout\,
	cout => \LessThan9~5_cout\);

-- Location: LCCOMB_X21_Y14_N10
\LessThan9~7\ : cycloneiii_lcell_comb
-- Equation(s):
-- \LessThan9~7_cout\ = CARRY((\SS|speed_right\(6) & (\carry_cnt~4_combout\ & !\LessThan9~5_cout\)) # (!\SS|speed_right\(6) & ((\carry_cnt~4_combout\) # (!\LessThan9~5_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \SS|speed_right\(6),
	datab => \carry_cnt~4_combout\,
	datad => VCC,
	cin => \LessThan9~5_cout\,
	cout => \LessThan9~7_cout\);

-- Location: LCCOMB_X21_Y14_N12
\LessThan9~9\ : cycloneiii_lcell_comb
-- Equation(s):
-- \LessThan9~9_cout\ = CARRY((\Add3~14_combout\ & (\SS|speed_right\(7) & !\LessThan9~7_cout\)) # (!\Add3~14_combout\ & ((\SS|speed_right\(7)) # (!\LessThan9~7_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Add3~14_combout\,
	datab => \SS|speed_right\(7),
	datad => VCC,
	cin => \LessThan9~7_cout\,
	cout => \LessThan9~9_cout\);

-- Location: LCCOMB_X21_Y14_N14
\LessThan9~11\ : cycloneiii_lcell_comb
-- Equation(s):
-- \LessThan9~11_cout\ = CARRY((\carry_cnt~3_combout\ & ((!\LessThan9~9_cout\) # (!\SS|speed_right\(8)))) # (!\carry_cnt~3_combout\ & (!\SS|speed_right\(8) & !\LessThan9~9_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \carry_cnt~3_combout\,
	datab => \SS|speed_right\(8),
	datad => VCC,
	cin => \LessThan9~9_cout\,
	cout => \LessThan9~11_cout\);

-- Location: LCCOMB_X21_Y14_N16
\LessThan9~13\ : cycloneiii_lcell_comb
-- Equation(s):
-- \LessThan9~13_cout\ = CARRY((\carry_cnt~2_combout\ & (\SS|speed_right\(9) & !\LessThan9~11_cout\)) # (!\carry_cnt~2_combout\ & ((\SS|speed_right\(9)) # (!\LessThan9~11_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \carry_cnt~2_combout\,
	datab => \SS|speed_right\(9),
	datad => VCC,
	cin => \LessThan9~11_cout\,
	cout => \LessThan9~13_cout\);

-- Location: LCCOMB_X21_Y14_N18
\LessThan9~15\ : cycloneiii_lcell_comb
-- Equation(s):
-- \LessThan9~15_cout\ = CARRY((\Add3~20_combout\ & ((!\LessThan9~13_cout\) # (!\SS|speed_right\(10)))) # (!\Add3~20_combout\ & (!\SS|speed_right\(10) & !\LessThan9~13_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Add3~20_combout\,
	datab => \SS|speed_right\(10),
	datad => VCC,
	cin => \LessThan9~13_cout\,
	cout => \LessThan9~15_cout\);

-- Location: LCCOMB_X21_Y14_N20
\LessThan9~17\ : cycloneiii_lcell_comb
-- Equation(s):
-- \LessThan9~17_cout\ = CARRY((\Add3~22_combout\ & (\SS|speed_right\(11) & !\LessThan9~15_cout\)) # (!\Add3~22_combout\ & ((\SS|speed_right\(11)) # (!\LessThan9~15_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Add3~22_combout\,
	datab => \SS|speed_right\(11),
	datad => VCC,
	cin => \LessThan9~15_cout\,
	cout => \LessThan9~17_cout\);

-- Location: LCCOMB_X21_Y14_N22
\LessThan9~19\ : cycloneiii_lcell_comb
-- Equation(s):
-- \LessThan9~19_cout\ = CARRY((\SS|speed_right\(12) & (\Add3~24_combout\ & !\LessThan9~17_cout\)) # (!\SS|speed_right\(12) & ((\Add3~24_combout\) # (!\LessThan9~17_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \SS|speed_right\(12),
	datab => \Add3~24_combout\,
	datad => VCC,
	cin => \LessThan9~17_cout\,
	cout => \LessThan9~19_cout\);

-- Location: LCCOMB_X21_Y14_N24
\LessThan9~21\ : cycloneiii_lcell_comb
-- Equation(s):
-- \LessThan9~21_cout\ = CARRY((\Add3~26_combout\ & (\SS|speed_right\(13) & !\LessThan9~19_cout\)) # (!\Add3~26_combout\ & ((\SS|speed_right\(13)) # (!\LessThan9~19_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Add3~26_combout\,
	datab => \SS|speed_right\(13),
	datad => VCC,
	cin => \LessThan9~19_cout\,
	cout => \LessThan9~21_cout\);

-- Location: LCCOMB_X21_Y14_N26
\LessThan9~23\ : cycloneiii_lcell_comb
-- Equation(s):
-- \LessThan9~23_cout\ = CARRY((\SS|speed_right\(14) & (\carry_cnt~1_combout\ & !\LessThan9~21_cout\)) # (!\SS|speed_right\(14) & ((\carry_cnt~1_combout\) # (!\LessThan9~21_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \SS|speed_right\(14),
	datab => \carry_cnt~1_combout\,
	datad => VCC,
	cin => \LessThan9~21_cout\,
	cout => \LessThan9~23_cout\);

-- Location: LCCOMB_X21_Y14_N28
\LessThan9~24\ : cycloneiii_lcell_comb
-- Equation(s):
-- \LessThan9~24_combout\ = (\SS|speed_right\(15) & ((!\carry_cnt~0_combout\) # (!\LessThan9~23_cout\))) # (!\SS|speed_right\(15) & (!\LessThan9~23_cout\ & !\carry_cnt~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \SS|speed_right\(15),
	datad => \carry_cnt~0_combout\,
	cin => \LessThan9~23_cout\,
	combout => \LessThan9~24_combout\);

-- Location: LCCOMB_X21_Y14_N0
\motor_right~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \motor_right~0_combout\ = (\sw[6]~input_o\ & ((\Add3~62_combout\) # ((\Equal5~4_combout\ & \LessThan9~24_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010100010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sw[6]~input_o\,
	datab => \Equal5~4_combout\,
	datac => \Add3~62_combout\,
	datad => \LessThan9~24_combout\,
	combout => \motor_right~0_combout\);

-- Location: FF_X21_Y14_N1
\motor_right~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \motor_right~0_combout\,
	ena => \sw[0]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \motor_right~reg0_q\);

-- Location: IOIBUF_X0_Y23_N8
\sw[3]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_sw(3),
	o => \sw[3]~input_o\);

-- Location: IOIBUF_X0_Y25_N22
\sw[2]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_sw(2),
	o => \sw[2]~input_o\);

-- Location: LCCOMB_X4_Y14_N0
\L|Equal17~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \L|Equal17~0_combout\ = (!\sw[3]~input_o\ & \sw[2]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \sw[3]~input_o\,
	datad => \sw[2]~input_o\,
	combout => \L|Equal17~0_combout\);

-- Location: CLKCTRL_G4
\L|Equal17~0clkctrl\ : cycloneiii_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \L|Equal17~0clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \L|Equal17~0clkctrl_outclk\);

-- Location: LCCOMB_X26_Y17_N4
\L|led1~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \L|led1~0_combout\ = (Phase(1) & ((Phase(2)) # ((Phase(3))))) # (!Phase(1) & (Phase(3) & ((Phase(2)) # (!Phase(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110100011111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => Phase(1),
	datab => Phase(2),
	datac => Phase(3),
	datad => Phase(0),
	combout => \L|led1~0_combout\);

-- Location: LCCOMB_X26_Y21_N4
\L|Selector7~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \L|Selector7~4_combout\ = (\sw[3]~input_o\) # (\sw[2]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \sw[3]~input_o\,
	datad => \sw[2]~input_o\,
	combout => \L|Selector7~4_combout\);

-- Location: LCCOMB_X23_Y18_N6
\Mod0|auto_generated|divider|divider|add_sub_3_result_int[1]~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|add_sub_3_result_int[1]~0_combout\ = cnt(4) $ (VCC)
-- \Mod0|auto_generated|divider|divider|add_sub_3_result_int[1]~1\ = CARRY(cnt(4))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => cnt(4),
	datad => VCC,
	combout => \Mod0|auto_generated|divider|divider|add_sub_3_result_int[1]~0_combout\,
	cout => \Mod0|auto_generated|divider|divider|add_sub_3_result_int[1]~1\);

-- Location: LCCOMB_X23_Y18_N8
\Mod0|auto_generated|divider|divider|add_sub_3_result_int[2]~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|add_sub_3_result_int[2]~2_combout\ = (cnt(5) & (\Mod0|auto_generated|divider|divider|add_sub_3_result_int[1]~1\ & VCC)) # (!cnt(5) & (!\Mod0|auto_generated|divider|divider|add_sub_3_result_int[1]~1\))
-- \Mod0|auto_generated|divider|divider|add_sub_3_result_int[2]~3\ = CARRY((!cnt(5) & !\Mod0|auto_generated|divider|divider|add_sub_3_result_int[1]~1\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => cnt(5),
	datad => VCC,
	cin => \Mod0|auto_generated|divider|divider|add_sub_3_result_int[1]~1\,
	combout => \Mod0|auto_generated|divider|divider|add_sub_3_result_int[2]~2_combout\,
	cout => \Mod0|auto_generated|divider|divider|add_sub_3_result_int[2]~3\);

-- Location: LCCOMB_X23_Y18_N10
\Mod0|auto_generated|divider|divider|add_sub_3_result_int[3]~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|add_sub_3_result_int[3]~4_combout\ = (cnt(6) & (\Mod0|auto_generated|divider|divider|add_sub_3_result_int[2]~3\ $ (GND))) # (!cnt(6) & (!\Mod0|auto_generated|divider|divider|add_sub_3_result_int[2]~3\ & VCC))
-- \Mod0|auto_generated|divider|divider|add_sub_3_result_int[3]~5\ = CARRY((cnt(6) & !\Mod0|auto_generated|divider|divider|add_sub_3_result_int[2]~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => cnt(6),
	datad => VCC,
	cin => \Mod0|auto_generated|divider|divider|add_sub_3_result_int[2]~3\,
	combout => \Mod0|auto_generated|divider|divider|add_sub_3_result_int[3]~4_combout\,
	cout => \Mod0|auto_generated|divider|divider|add_sub_3_result_int[3]~5\);

-- Location: LCCOMB_X23_Y18_N12
\Mod0|auto_generated|divider|divider|add_sub_3_result_int[4]~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\ = !\Mod0|auto_generated|divider|divider|add_sub_3_result_int[3]~5\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \Mod0|auto_generated|divider|divider|add_sub_3_result_int[3]~5\,
	combout => \Mod0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\);

-- Location: LCCOMB_X23_Y18_N26
\Mod0|auto_generated|divider|divider|StageOut[24]~39\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|StageOut[24]~39_combout\ = (!\Mod0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\ & \Mod0|auto_generated|divider|divider|add_sub_3_result_int[3]~4_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mod0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\,
	datad => \Mod0|auto_generated|divider|divider|add_sub_3_result_int[3]~4_combout\,
	combout => \Mod0|auto_generated|divider|divider|StageOut[24]~39_combout\);

-- Location: LCCOMB_X23_Y18_N24
\Mod0|auto_generated|divider|divider|StageOut[24]~38\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|StageOut[24]~38_combout\ = (cnt(6) & \Mod0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => cnt(6),
	datad => \Mod0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\,
	combout => \Mod0|auto_generated|divider|divider|StageOut[24]~38_combout\);

-- Location: LCCOMB_X23_Y18_N4
\Mod0|auto_generated|divider|divider|StageOut[23]~40\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|StageOut[23]~40_combout\ = (cnt(5) & \Mod0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => cnt(5),
	datad => \Mod0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\,
	combout => \Mod0|auto_generated|divider|divider|StageOut[23]~40_combout\);

-- Location: LCCOMB_X23_Y18_N28
\Mod0|auto_generated|divider|divider|StageOut[23]~41\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|StageOut[23]~41_combout\ = (\Mod0|auto_generated|divider|divider|add_sub_3_result_int[2]~2_combout\ & !\Mod0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Mod0|auto_generated|divider|divider|add_sub_3_result_int[2]~2_combout\,
	datad => \Mod0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\,
	combout => \Mod0|auto_generated|divider|divider|StageOut[23]~41_combout\);

-- Location: LCCOMB_X22_Y18_N12
\Mod0|auto_generated|divider|divider|StageOut[22]~42\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|StageOut[22]~42_combout\ = (\Mod0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\ & cnt(4))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Mod0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\,
	datad => cnt(4),
	combout => \Mod0|auto_generated|divider|divider|StageOut[22]~42_combout\);

-- Location: LCCOMB_X23_Y18_N2
\Mod0|auto_generated|divider|divider|StageOut[22]~43\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|StageOut[22]~43_combout\ = (\Mod0|auto_generated|divider|divider|add_sub_3_result_int[1]~0_combout\ & !\Mod0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mod0|auto_generated|divider|divider|add_sub_3_result_int[1]~0_combout\,
	datad => \Mod0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\,
	combout => \Mod0|auto_generated|divider|divider|StageOut[22]~43_combout\);

-- Location: LCCOMB_X22_Y18_N16
\Mod0|auto_generated|divider|divider|StageOut[21]~45\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|StageOut[21]~45_combout\ = (cnt(3) & !\Mod0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => cnt(3),
	datad => \Mod0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\,
	combout => \Mod0|auto_generated|divider|divider|StageOut[21]~45_combout\);

-- Location: LCCOMB_X22_Y18_N6
\Mod0|auto_generated|divider|divider|StageOut[21]~44\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|StageOut[21]~44_combout\ = (cnt(3) & \Mod0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => cnt(3),
	datac => \Mod0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\,
	combout => \Mod0|auto_generated|divider|divider|StageOut[21]~44_combout\);

-- Location: LCCOMB_X23_Y18_N14
\Mod0|auto_generated|divider|divider|add_sub_4_result_int[1]~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|add_sub_4_result_int[1]~0_combout\ = (((\Mod0|auto_generated|divider|divider|StageOut[21]~45_combout\) # (\Mod0|auto_generated|divider|divider|StageOut[21]~44_combout\)))
-- \Mod0|auto_generated|divider|divider|add_sub_4_result_int[1]~1\ = CARRY((\Mod0|auto_generated|divider|divider|StageOut[21]~45_combout\) # (\Mod0|auto_generated|divider|divider|StageOut[21]~44_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000111101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mod0|auto_generated|divider|divider|StageOut[21]~45_combout\,
	datab => \Mod0|auto_generated|divider|divider|StageOut[21]~44_combout\,
	datad => VCC,
	combout => \Mod0|auto_generated|divider|divider|add_sub_4_result_int[1]~0_combout\,
	cout => \Mod0|auto_generated|divider|divider|add_sub_4_result_int[1]~1\);

-- Location: LCCOMB_X23_Y18_N16
\Mod0|auto_generated|divider|divider|add_sub_4_result_int[2]~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|add_sub_4_result_int[2]~2_combout\ = (\Mod0|auto_generated|divider|divider|add_sub_4_result_int[1]~1\ & (((\Mod0|auto_generated|divider|divider|StageOut[22]~42_combout\) # 
-- (\Mod0|auto_generated|divider|divider|StageOut[22]~43_combout\)))) # (!\Mod0|auto_generated|divider|divider|add_sub_4_result_int[1]~1\ & (!\Mod0|auto_generated|divider|divider|StageOut[22]~42_combout\ & 
-- (!\Mod0|auto_generated|divider|divider|StageOut[22]~43_combout\)))
-- \Mod0|auto_generated|divider|divider|add_sub_4_result_int[2]~3\ = CARRY((!\Mod0|auto_generated|divider|divider|StageOut[22]~42_combout\ & (!\Mod0|auto_generated|divider|divider|StageOut[22]~43_combout\ & 
-- !\Mod0|auto_generated|divider|divider|add_sub_4_result_int[1]~1\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Mod0|auto_generated|divider|divider|StageOut[22]~42_combout\,
	datab => \Mod0|auto_generated|divider|divider|StageOut[22]~43_combout\,
	datad => VCC,
	cin => \Mod0|auto_generated|divider|divider|add_sub_4_result_int[1]~1\,
	combout => \Mod0|auto_generated|divider|divider|add_sub_4_result_int[2]~2_combout\,
	cout => \Mod0|auto_generated|divider|divider|add_sub_4_result_int[2]~3\);

-- Location: LCCOMB_X23_Y18_N18
\Mod0|auto_generated|divider|divider|add_sub_4_result_int[3]~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|add_sub_4_result_int[3]~4_combout\ = (\Mod0|auto_generated|divider|divider|add_sub_4_result_int[2]~3\ & (((\Mod0|auto_generated|divider|divider|StageOut[23]~40_combout\) # 
-- (\Mod0|auto_generated|divider|divider|StageOut[23]~41_combout\)))) # (!\Mod0|auto_generated|divider|divider|add_sub_4_result_int[2]~3\ & ((((\Mod0|auto_generated|divider|divider|StageOut[23]~40_combout\) # 
-- (\Mod0|auto_generated|divider|divider|StageOut[23]~41_combout\)))))
-- \Mod0|auto_generated|divider|divider|add_sub_4_result_int[3]~5\ = CARRY((!\Mod0|auto_generated|divider|divider|add_sub_4_result_int[2]~3\ & ((\Mod0|auto_generated|divider|divider|StageOut[23]~40_combout\) # 
-- (\Mod0|auto_generated|divider|divider|StageOut[23]~41_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Mod0|auto_generated|divider|divider|StageOut[23]~40_combout\,
	datab => \Mod0|auto_generated|divider|divider|StageOut[23]~41_combout\,
	datad => VCC,
	cin => \Mod0|auto_generated|divider|divider|add_sub_4_result_int[2]~3\,
	combout => \Mod0|auto_generated|divider|divider|add_sub_4_result_int[3]~4_combout\,
	cout => \Mod0|auto_generated|divider|divider|add_sub_4_result_int[3]~5\);

-- Location: LCCOMB_X23_Y18_N20
\Mod0|auto_generated|divider|divider|add_sub_4_result_int[4]~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|add_sub_4_result_int[4]~6_combout\ = (\Mod0|auto_generated|divider|divider|add_sub_4_result_int[3]~5\ & (((\Mod0|auto_generated|divider|divider|StageOut[24]~39_combout\) # 
-- (\Mod0|auto_generated|divider|divider|StageOut[24]~38_combout\)))) # (!\Mod0|auto_generated|divider|divider|add_sub_4_result_int[3]~5\ & (!\Mod0|auto_generated|divider|divider|StageOut[24]~39_combout\ & 
-- (!\Mod0|auto_generated|divider|divider|StageOut[24]~38_combout\)))
-- \Mod0|auto_generated|divider|divider|add_sub_4_result_int[4]~7\ = CARRY((!\Mod0|auto_generated|divider|divider|StageOut[24]~39_combout\ & (!\Mod0|auto_generated|divider|divider|StageOut[24]~38_combout\ & 
-- !\Mod0|auto_generated|divider|divider|add_sub_4_result_int[3]~5\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Mod0|auto_generated|divider|divider|StageOut[24]~39_combout\,
	datab => \Mod0|auto_generated|divider|divider|StageOut[24]~38_combout\,
	datad => VCC,
	cin => \Mod0|auto_generated|divider|divider|add_sub_4_result_int[3]~5\,
	combout => \Mod0|auto_generated|divider|divider|add_sub_4_result_int[4]~6_combout\,
	cout => \Mod0|auto_generated|divider|divider|add_sub_4_result_int[4]~7\);

-- Location: LCCOMB_X23_Y18_N22
\Mod0|auto_generated|divider|divider|add_sub_4_result_int[5]~8\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\ = \Mod0|auto_generated|divider|divider|add_sub_4_result_int[4]~7\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \Mod0|auto_generated|divider|divider|add_sub_4_result_int[4]~7\,
	combout => \Mod0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\);

-- Location: LCCOMB_X22_Y18_N18
\Mod0|auto_generated|divider|divider|StageOut[28]~51\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|StageOut[28]~51_combout\ = (cnt(2) & \Mod0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => cnt(2),
	datad => \Mod0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\,
	combout => \Mod0|auto_generated|divider|divider|StageOut[28]~51_combout\);

-- Location: LCCOMB_X22_Y18_N14
\Mod0|auto_generated|divider|divider|StageOut[28]~52\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|StageOut[28]~52_combout\ = (cnt(2) & !\Mod0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => cnt(2),
	datad => \Mod0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\,
	combout => \Mod0|auto_generated|divider|divider|StageOut[28]~52_combout\);

-- Location: LCCOMB_X24_Y18_N18
\Mod0|auto_generated|divider|divider|add_sub_5_result_int[1]~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|add_sub_5_result_int[1]~0_combout\ = (((\Mod0|auto_generated|divider|divider|StageOut[28]~51_combout\) # (\Mod0|auto_generated|divider|divider|StageOut[28]~52_combout\)))
-- \Mod0|auto_generated|divider|divider|add_sub_5_result_int[1]~1\ = CARRY((\Mod0|auto_generated|divider|divider|StageOut[28]~51_combout\) # (\Mod0|auto_generated|divider|divider|StageOut[28]~52_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000111101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mod0|auto_generated|divider|divider|StageOut[28]~51_combout\,
	datab => \Mod0|auto_generated|divider|divider|StageOut[28]~52_combout\,
	datad => VCC,
	combout => \Mod0|auto_generated|divider|divider|add_sub_5_result_int[1]~0_combout\,
	cout => \Mod0|auto_generated|divider|divider|add_sub_5_result_int[1]~1\);

-- Location: LCCOMB_X23_Y18_N0
\Mod0|auto_generated|divider|divider|StageOut[32]~70\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|StageOut[32]~70_combout\ = (\Mod0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\ & ((\Mod0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\ & (cnt(6))) # 
-- (!\Mod0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\ & ((\Mod0|auto_generated|divider|divider|add_sub_3_result_int[3]~4_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => cnt(6),
	datab => \Mod0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\,
	datac => \Mod0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\,
	datad => \Mod0|auto_generated|divider|divider|add_sub_3_result_int[3]~4_combout\,
	combout => \Mod0|auto_generated|divider|divider|StageOut[32]~70_combout\);

-- Location: LCCOMB_X24_Y18_N8
\Mod0|auto_generated|divider|divider|StageOut[32]~46\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|StageOut[32]~46_combout\ = (\Mod0|auto_generated|divider|divider|add_sub_4_result_int[4]~6_combout\ & !\Mod0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Mod0|auto_generated|divider|divider|add_sub_4_result_int[4]~6_combout\,
	datad => \Mod0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\,
	combout => \Mod0|auto_generated|divider|divider|StageOut[32]~46_combout\);

-- Location: LCCOMB_X24_Y18_N10
\Mod0|auto_generated|divider|divider|StageOut[31]~47\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|StageOut[31]~47_combout\ = (\Mod0|auto_generated|divider|divider|add_sub_4_result_int[3]~4_combout\ & !\Mod0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Mod0|auto_generated|divider|divider|add_sub_4_result_int[3]~4_combout\,
	datad => \Mod0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\,
	combout => \Mod0|auto_generated|divider|divider|StageOut[31]~47_combout\);

-- Location: LCCOMB_X23_Y18_N30
\Mod0|auto_generated|divider|divider|StageOut[31]~71\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|StageOut[31]~71_combout\ = (\Mod0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\ & ((\Mod0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\ & (cnt(5))) # 
-- (!\Mod0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\ & ((\Mod0|auto_generated|divider|divider|add_sub_3_result_int[2]~2_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mod0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\,
	datab => cnt(5),
	datac => \Mod0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\,
	datad => \Mod0|auto_generated|divider|divider|add_sub_3_result_int[2]~2_combout\,
	combout => \Mod0|auto_generated|divider|divider|StageOut[31]~71_combout\);

-- Location: LCCOMB_X24_Y18_N12
\Mod0|auto_generated|divider|divider|StageOut[30]~48\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|StageOut[30]~48_combout\ = (\Mod0|auto_generated|divider|divider|add_sub_4_result_int[2]~2_combout\ & !\Mod0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Mod0|auto_generated|divider|divider|add_sub_4_result_int[2]~2_combout\,
	datad => \Mod0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\,
	combout => \Mod0|auto_generated|divider|divider|StageOut[30]~48_combout\);

-- Location: LCCOMB_X24_Y18_N14
\Mod0|auto_generated|divider|divider|StageOut[30]~72\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|StageOut[30]~72_combout\ = (\Mod0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\ & ((\Mod0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\ & (cnt(4))) # 
-- (!\Mod0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\ & ((\Mod0|auto_generated|divider|divider|add_sub_3_result_int[1]~0_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mod0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\,
	datab => cnt(4),
	datac => \Mod0|auto_generated|divider|divider|add_sub_3_result_int[1]~0_combout\,
	datad => \Mod0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\,
	combout => \Mod0|auto_generated|divider|divider|StageOut[30]~72_combout\);

-- Location: LCCOMB_X24_Y18_N30
\Mod0|auto_generated|divider|divider|StageOut[29]~49\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|StageOut[29]~49_combout\ = (cnt(3) & \Mod0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => cnt(3),
	datad => \Mod0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\,
	combout => \Mod0|auto_generated|divider|divider|StageOut[29]~49_combout\);

-- Location: LCCOMB_X22_Y18_N4
\Mod0|auto_generated|divider|divider|StageOut[29]~50\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|StageOut[29]~50_combout\ = (\Mod0|auto_generated|divider|divider|add_sub_4_result_int[1]~0_combout\ & !\Mod0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Mod0|auto_generated|divider|divider|add_sub_4_result_int[1]~0_combout\,
	datad => \Mod0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\,
	combout => \Mod0|auto_generated|divider|divider|StageOut[29]~50_combout\);

-- Location: LCCOMB_X24_Y18_N20
\Mod0|auto_generated|divider|divider|add_sub_5_result_int[2]~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|add_sub_5_result_int[2]~2_combout\ = (\Mod0|auto_generated|divider|divider|add_sub_5_result_int[1]~1\ & (((\Mod0|auto_generated|divider|divider|StageOut[29]~49_combout\) # 
-- (\Mod0|auto_generated|divider|divider|StageOut[29]~50_combout\)))) # (!\Mod0|auto_generated|divider|divider|add_sub_5_result_int[1]~1\ & (!\Mod0|auto_generated|divider|divider|StageOut[29]~49_combout\ & 
-- (!\Mod0|auto_generated|divider|divider|StageOut[29]~50_combout\)))
-- \Mod0|auto_generated|divider|divider|add_sub_5_result_int[2]~3\ = CARRY((!\Mod0|auto_generated|divider|divider|StageOut[29]~49_combout\ & (!\Mod0|auto_generated|divider|divider|StageOut[29]~50_combout\ & 
-- !\Mod0|auto_generated|divider|divider|add_sub_5_result_int[1]~1\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Mod0|auto_generated|divider|divider|StageOut[29]~49_combout\,
	datab => \Mod0|auto_generated|divider|divider|StageOut[29]~50_combout\,
	datad => VCC,
	cin => \Mod0|auto_generated|divider|divider|add_sub_5_result_int[1]~1\,
	combout => \Mod0|auto_generated|divider|divider|add_sub_5_result_int[2]~2_combout\,
	cout => \Mod0|auto_generated|divider|divider|add_sub_5_result_int[2]~3\);

-- Location: LCCOMB_X24_Y18_N22
\Mod0|auto_generated|divider|divider|add_sub_5_result_int[3]~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|add_sub_5_result_int[3]~4_combout\ = (\Mod0|auto_generated|divider|divider|add_sub_5_result_int[2]~3\ & (((\Mod0|auto_generated|divider|divider|StageOut[30]~48_combout\) # 
-- (\Mod0|auto_generated|divider|divider|StageOut[30]~72_combout\)))) # (!\Mod0|auto_generated|divider|divider|add_sub_5_result_int[2]~3\ & ((((\Mod0|auto_generated|divider|divider|StageOut[30]~48_combout\) # 
-- (\Mod0|auto_generated|divider|divider|StageOut[30]~72_combout\)))))
-- \Mod0|auto_generated|divider|divider|add_sub_5_result_int[3]~5\ = CARRY((!\Mod0|auto_generated|divider|divider|add_sub_5_result_int[2]~3\ & ((\Mod0|auto_generated|divider|divider|StageOut[30]~48_combout\) # 
-- (\Mod0|auto_generated|divider|divider|StageOut[30]~72_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Mod0|auto_generated|divider|divider|StageOut[30]~48_combout\,
	datab => \Mod0|auto_generated|divider|divider|StageOut[30]~72_combout\,
	datad => VCC,
	cin => \Mod0|auto_generated|divider|divider|add_sub_5_result_int[2]~3\,
	combout => \Mod0|auto_generated|divider|divider|add_sub_5_result_int[3]~4_combout\,
	cout => \Mod0|auto_generated|divider|divider|add_sub_5_result_int[3]~5\);

-- Location: LCCOMB_X24_Y18_N24
\Mod0|auto_generated|divider|divider|add_sub_5_result_int[4]~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|add_sub_5_result_int[4]~6_combout\ = (\Mod0|auto_generated|divider|divider|add_sub_5_result_int[3]~5\ & (((\Mod0|auto_generated|divider|divider|StageOut[31]~47_combout\) # 
-- (\Mod0|auto_generated|divider|divider|StageOut[31]~71_combout\)))) # (!\Mod0|auto_generated|divider|divider|add_sub_5_result_int[3]~5\ & (!\Mod0|auto_generated|divider|divider|StageOut[31]~47_combout\ & 
-- (!\Mod0|auto_generated|divider|divider|StageOut[31]~71_combout\)))
-- \Mod0|auto_generated|divider|divider|add_sub_5_result_int[4]~7\ = CARRY((!\Mod0|auto_generated|divider|divider|StageOut[31]~47_combout\ & (!\Mod0|auto_generated|divider|divider|StageOut[31]~71_combout\ & 
-- !\Mod0|auto_generated|divider|divider|add_sub_5_result_int[3]~5\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Mod0|auto_generated|divider|divider|StageOut[31]~47_combout\,
	datab => \Mod0|auto_generated|divider|divider|StageOut[31]~71_combout\,
	datad => VCC,
	cin => \Mod0|auto_generated|divider|divider|add_sub_5_result_int[3]~5\,
	combout => \Mod0|auto_generated|divider|divider|add_sub_5_result_int[4]~6_combout\,
	cout => \Mod0|auto_generated|divider|divider|add_sub_5_result_int[4]~7\);

-- Location: LCCOMB_X24_Y18_N26
\Mod0|auto_generated|divider|divider|add_sub_5_result_int[5]~8\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\ = (\Mod0|auto_generated|divider|divider|add_sub_5_result_int[4]~7\ & ((((\Mod0|auto_generated|divider|divider|StageOut[32]~70_combout\) # 
-- (\Mod0|auto_generated|divider|divider|StageOut[32]~46_combout\))))) # (!\Mod0|auto_generated|divider|divider|add_sub_5_result_int[4]~7\ & ((\Mod0|auto_generated|divider|divider|StageOut[32]~70_combout\) # 
-- ((\Mod0|auto_generated|divider|divider|StageOut[32]~46_combout\) # (GND))))
-- \Mod0|auto_generated|divider|divider|add_sub_5_result_int[5]~9\ = CARRY((\Mod0|auto_generated|divider|divider|StageOut[32]~70_combout\) # ((\Mod0|auto_generated|divider|divider|StageOut[32]~46_combout\) # 
-- (!\Mod0|auto_generated|divider|divider|add_sub_5_result_int[4]~7\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001111011101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Mod0|auto_generated|divider|divider|StageOut[32]~70_combout\,
	datab => \Mod0|auto_generated|divider|divider|StageOut[32]~46_combout\,
	datad => VCC,
	cin => \Mod0|auto_generated|divider|divider|add_sub_5_result_int[4]~7\,
	combout => \Mod0|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\,
	cout => \Mod0|auto_generated|divider|divider|add_sub_5_result_int[5]~9\);

-- Location: LCCOMB_X24_Y18_N28
\Mod0|auto_generated|divider|divider|add_sub_5_result_int[6]~10\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\ = !\Mod0|auto_generated|divider|divider|add_sub_5_result_int[5]~9\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \Mod0|auto_generated|divider|divider|add_sub_5_result_int[5]~9\,
	combout => \Mod0|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\);

-- Location: LCCOMB_X22_Y18_N28
\Mod0|auto_generated|divider|divider|StageOut[36]~58\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|StageOut[36]~58_combout\ = (\Mod0|auto_generated|divider|divider|add_sub_5_result_int[1]~0_combout\ & !\Mod0|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Mod0|auto_generated|divider|divider|add_sub_5_result_int[1]~0_combout\,
	datad => \Mod0|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\,
	combout => \Mod0|auto_generated|divider|divider|StageOut[36]~58_combout\);

-- Location: LCCOMB_X22_Y18_N26
\Mod0|auto_generated|divider|divider|StageOut[36]~57\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|StageOut[36]~57_combout\ = (cnt(2) & \Mod0|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => cnt(2),
	datad => \Mod0|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\,
	combout => \Mod0|auto_generated|divider|divider|StageOut[36]~57_combout\);

-- Location: LCCOMB_X24_Y18_N16
\Mod0|auto_generated|divider|divider|StageOut[40]~53\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|StageOut[40]~53_combout\ = (\Mod0|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\ & !\Mod0|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Mod0|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\,
	datad => \Mod0|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\,
	combout => \Mod0|auto_generated|divider|divider|StageOut[40]~53_combout\);

-- Location: LCCOMB_X26_Y18_N4
\Mod0|auto_generated|divider|divider|StageOut[40]~67\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|StageOut[40]~67_combout\ = (\Mod0|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\ & ((\Mod0|auto_generated|divider|divider|StageOut[32]~70_combout\) # 
-- ((\Mod0|auto_generated|divider|divider|add_sub_4_result_int[4]~6_combout\ & !\Mod0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mod0|auto_generated|divider|divider|add_sub_4_result_int[4]~6_combout\,
	datab => \Mod0|auto_generated|divider|divider|StageOut[32]~70_combout\,
	datac => \Mod0|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\,
	datad => \Mod0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\,
	combout => \Mod0|auto_generated|divider|divider|StageOut[40]~67_combout\);

-- Location: LCCOMB_X27_Y18_N24
\Mod0|auto_generated|divider|divider|StageOut[39]~68\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|StageOut[39]~68_combout\ = (\Mod0|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\ & ((\Mod0|auto_generated|divider|divider|StageOut[31]~71_combout\) # 
-- ((!\Mod0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\ & \Mod0|auto_generated|divider|divider|add_sub_4_result_int[3]~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mod0|auto_generated|divider|divider|StageOut[31]~71_combout\,
	datab => \Mod0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\,
	datac => \Mod0|auto_generated|divider|divider|add_sub_4_result_int[3]~4_combout\,
	datad => \Mod0|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\,
	combout => \Mod0|auto_generated|divider|divider|StageOut[39]~68_combout\);

-- Location: LCCOMB_X24_Y18_N6
\Mod0|auto_generated|divider|divider|StageOut[39]~54\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|StageOut[39]~54_combout\ = (\Mod0|auto_generated|divider|divider|add_sub_5_result_int[4]~6_combout\ & !\Mod0|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Mod0|auto_generated|divider|divider|add_sub_5_result_int[4]~6_combout\,
	datad => \Mod0|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\,
	combout => \Mod0|auto_generated|divider|divider|StageOut[39]~54_combout\);

-- Location: LCCOMB_X24_Y18_N4
\Mod0|auto_generated|divider|divider|StageOut[38]~55\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|StageOut[38]~55_combout\ = (\Mod0|auto_generated|divider|divider|add_sub_5_result_int[3]~4_combout\ & !\Mod0|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Mod0|auto_generated|divider|divider|add_sub_5_result_int[3]~4_combout\,
	datad => \Mod0|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\,
	combout => \Mod0|auto_generated|divider|divider|StageOut[38]~55_combout\);

-- Location: LCCOMB_X26_Y18_N2
\Mod0|auto_generated|divider|divider|StageOut[38]~69\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|StageOut[38]~69_combout\ = (\Mod0|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\ & ((\Mod0|auto_generated|divider|divider|StageOut[30]~72_combout\) # 
-- ((!\Mod0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\ & \Mod0|auto_generated|divider|divider|add_sub_4_result_int[2]~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mod0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\,
	datab => \Mod0|auto_generated|divider|divider|add_sub_4_result_int[2]~2_combout\,
	datac => \Mod0|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\,
	datad => \Mod0|auto_generated|divider|divider|StageOut[30]~72_combout\,
	combout => \Mod0|auto_generated|divider|divider|StageOut[38]~69_combout\);

-- Location: LCCOMB_X24_Y18_N2
\Mod0|auto_generated|divider|divider|StageOut[37]~56\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|StageOut[37]~56_combout\ = (\Mod0|auto_generated|divider|divider|add_sub_5_result_int[2]~2_combout\ & !\Mod0|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Mod0|auto_generated|divider|divider|add_sub_5_result_int[2]~2_combout\,
	datad => \Mod0|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\,
	combout => \Mod0|auto_generated|divider|divider|StageOut[37]~56_combout\);

-- Location: LCCOMB_X22_Y18_N2
\Mod0|auto_generated|divider|divider|StageOut[37]~73\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|StageOut[37]~73_combout\ = (\Mod0|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\ & ((\Mod0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\ & (cnt(3))) # 
-- (!\Mod0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\ & ((\Mod0|auto_generated|divider|divider|add_sub_4_result_int[1]~0_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => cnt(3),
	datab => \Mod0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\,
	datac => \Mod0|auto_generated|divider|divider|add_sub_4_result_int[1]~0_combout\,
	datad => \Mod0|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\,
	combout => \Mod0|auto_generated|divider|divider|StageOut[37]~73_combout\);

-- Location: LCCOMB_X24_Y18_N0
\Mod0|auto_generated|divider|divider|StageOut[35]~59\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|StageOut[35]~59_combout\ = (cnt(1) & \Mod0|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => cnt(1),
	datad => \Mod0|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\,
	combout => \Mod0|auto_generated|divider|divider|StageOut[35]~59_combout\);

-- Location: LCCOMB_X26_Y18_N8
\Mod0|auto_generated|divider|divider|StageOut[35]~60\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|StageOut[35]~60_combout\ = (cnt(1) & !\Mod0|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => cnt(1),
	datac => \Mod0|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\,
	combout => \Mod0|auto_generated|divider|divider|StageOut[35]~60_combout\);

-- Location: LCCOMB_X26_Y18_N14
\Mod0|auto_generated|divider|divider|add_sub_6_result_int[1]~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|add_sub_6_result_int[1]~0_combout\ = (((\Mod0|auto_generated|divider|divider|StageOut[35]~59_combout\) # (\Mod0|auto_generated|divider|divider|StageOut[35]~60_combout\)))
-- \Mod0|auto_generated|divider|divider|add_sub_6_result_int[1]~1\ = CARRY((\Mod0|auto_generated|divider|divider|StageOut[35]~59_combout\) # (\Mod0|auto_generated|divider|divider|StageOut[35]~60_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000111101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mod0|auto_generated|divider|divider|StageOut[35]~59_combout\,
	datab => \Mod0|auto_generated|divider|divider|StageOut[35]~60_combout\,
	datad => VCC,
	combout => \Mod0|auto_generated|divider|divider|add_sub_6_result_int[1]~0_combout\,
	cout => \Mod0|auto_generated|divider|divider|add_sub_6_result_int[1]~1\);

-- Location: LCCOMB_X26_Y18_N16
\Mod0|auto_generated|divider|divider|add_sub_6_result_int[2]~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|add_sub_6_result_int[2]~2_combout\ = (\Mod0|auto_generated|divider|divider|add_sub_6_result_int[1]~1\ & (((\Mod0|auto_generated|divider|divider|StageOut[36]~58_combout\) # 
-- (\Mod0|auto_generated|divider|divider|StageOut[36]~57_combout\)))) # (!\Mod0|auto_generated|divider|divider|add_sub_6_result_int[1]~1\ & (!\Mod0|auto_generated|divider|divider|StageOut[36]~58_combout\ & 
-- (!\Mod0|auto_generated|divider|divider|StageOut[36]~57_combout\)))
-- \Mod0|auto_generated|divider|divider|add_sub_6_result_int[2]~3\ = CARRY((!\Mod0|auto_generated|divider|divider|StageOut[36]~58_combout\ & (!\Mod0|auto_generated|divider|divider|StageOut[36]~57_combout\ & 
-- !\Mod0|auto_generated|divider|divider|add_sub_6_result_int[1]~1\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Mod0|auto_generated|divider|divider|StageOut[36]~58_combout\,
	datab => \Mod0|auto_generated|divider|divider|StageOut[36]~57_combout\,
	datad => VCC,
	cin => \Mod0|auto_generated|divider|divider|add_sub_6_result_int[1]~1\,
	combout => \Mod0|auto_generated|divider|divider|add_sub_6_result_int[2]~2_combout\,
	cout => \Mod0|auto_generated|divider|divider|add_sub_6_result_int[2]~3\);

-- Location: LCCOMB_X26_Y18_N18
\Mod0|auto_generated|divider|divider|add_sub_6_result_int[3]~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|add_sub_6_result_int[3]~4_combout\ = (\Mod0|auto_generated|divider|divider|add_sub_6_result_int[2]~3\ & (((\Mod0|auto_generated|divider|divider|StageOut[37]~56_combout\) # 
-- (\Mod0|auto_generated|divider|divider|StageOut[37]~73_combout\)))) # (!\Mod0|auto_generated|divider|divider|add_sub_6_result_int[2]~3\ & ((((\Mod0|auto_generated|divider|divider|StageOut[37]~56_combout\) # 
-- (\Mod0|auto_generated|divider|divider|StageOut[37]~73_combout\)))))
-- \Mod0|auto_generated|divider|divider|add_sub_6_result_int[3]~5\ = CARRY((!\Mod0|auto_generated|divider|divider|add_sub_6_result_int[2]~3\ & ((\Mod0|auto_generated|divider|divider|StageOut[37]~56_combout\) # 
-- (\Mod0|auto_generated|divider|divider|StageOut[37]~73_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Mod0|auto_generated|divider|divider|StageOut[37]~56_combout\,
	datab => \Mod0|auto_generated|divider|divider|StageOut[37]~73_combout\,
	datad => VCC,
	cin => \Mod0|auto_generated|divider|divider|add_sub_6_result_int[2]~3\,
	combout => \Mod0|auto_generated|divider|divider|add_sub_6_result_int[3]~4_combout\,
	cout => \Mod0|auto_generated|divider|divider|add_sub_6_result_int[3]~5\);

-- Location: LCCOMB_X26_Y18_N20
\Mod0|auto_generated|divider|divider|add_sub_6_result_int[4]~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|add_sub_6_result_int[4]~6_combout\ = (\Mod0|auto_generated|divider|divider|add_sub_6_result_int[3]~5\ & (((\Mod0|auto_generated|divider|divider|StageOut[38]~55_combout\) # 
-- (\Mod0|auto_generated|divider|divider|StageOut[38]~69_combout\)))) # (!\Mod0|auto_generated|divider|divider|add_sub_6_result_int[3]~5\ & (!\Mod0|auto_generated|divider|divider|StageOut[38]~55_combout\ & 
-- (!\Mod0|auto_generated|divider|divider|StageOut[38]~69_combout\)))
-- \Mod0|auto_generated|divider|divider|add_sub_6_result_int[4]~7\ = CARRY((!\Mod0|auto_generated|divider|divider|StageOut[38]~55_combout\ & (!\Mod0|auto_generated|divider|divider|StageOut[38]~69_combout\ & 
-- !\Mod0|auto_generated|divider|divider|add_sub_6_result_int[3]~5\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Mod0|auto_generated|divider|divider|StageOut[38]~55_combout\,
	datab => \Mod0|auto_generated|divider|divider|StageOut[38]~69_combout\,
	datad => VCC,
	cin => \Mod0|auto_generated|divider|divider|add_sub_6_result_int[3]~5\,
	combout => \Mod0|auto_generated|divider|divider|add_sub_6_result_int[4]~6_combout\,
	cout => \Mod0|auto_generated|divider|divider|add_sub_6_result_int[4]~7\);

-- Location: LCCOMB_X26_Y18_N22
\Mod0|auto_generated|divider|divider|add_sub_6_result_int[5]~8\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\ = (\Mod0|auto_generated|divider|divider|add_sub_6_result_int[4]~7\ & ((((\Mod0|auto_generated|divider|divider|StageOut[39]~68_combout\) # 
-- (\Mod0|auto_generated|divider|divider|StageOut[39]~54_combout\))))) # (!\Mod0|auto_generated|divider|divider|add_sub_6_result_int[4]~7\ & ((\Mod0|auto_generated|divider|divider|StageOut[39]~68_combout\) # 
-- ((\Mod0|auto_generated|divider|divider|StageOut[39]~54_combout\) # (GND))))
-- \Mod0|auto_generated|divider|divider|add_sub_6_result_int[5]~9\ = CARRY((\Mod0|auto_generated|divider|divider|StageOut[39]~68_combout\) # ((\Mod0|auto_generated|divider|divider|StageOut[39]~54_combout\) # 
-- (!\Mod0|auto_generated|divider|divider|add_sub_6_result_int[4]~7\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001111011101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Mod0|auto_generated|divider|divider|StageOut[39]~68_combout\,
	datab => \Mod0|auto_generated|divider|divider|StageOut[39]~54_combout\,
	datad => VCC,
	cin => \Mod0|auto_generated|divider|divider|add_sub_6_result_int[4]~7\,
	combout => \Mod0|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\,
	cout => \Mod0|auto_generated|divider|divider|add_sub_6_result_int[5]~9\);

-- Location: LCCOMB_X26_Y18_N24
\Mod0|auto_generated|divider|divider|add_sub_6_result_int[6]~10\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|add_sub_6_result_int[6]~10_combout\ = (\Mod0|auto_generated|divider|divider|add_sub_6_result_int[5]~9\ & (((\Mod0|auto_generated|divider|divider|StageOut[40]~53_combout\) # 
-- (\Mod0|auto_generated|divider|divider|StageOut[40]~67_combout\)))) # (!\Mod0|auto_generated|divider|divider|add_sub_6_result_int[5]~9\ & (!\Mod0|auto_generated|divider|divider|StageOut[40]~53_combout\ & 
-- (!\Mod0|auto_generated|divider|divider|StageOut[40]~67_combout\)))
-- \Mod0|auto_generated|divider|divider|add_sub_6_result_int[6]~11\ = CARRY((!\Mod0|auto_generated|divider|divider|StageOut[40]~53_combout\ & (!\Mod0|auto_generated|divider|divider|StageOut[40]~67_combout\ & 
-- !\Mod0|auto_generated|divider|divider|add_sub_6_result_int[5]~9\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Mod0|auto_generated|divider|divider|StageOut[40]~53_combout\,
	datab => \Mod0|auto_generated|divider|divider|StageOut[40]~67_combout\,
	datad => VCC,
	cin => \Mod0|auto_generated|divider|divider|add_sub_6_result_int[5]~9\,
	combout => \Mod0|auto_generated|divider|divider|add_sub_6_result_int[6]~10_combout\,
	cout => \Mod0|auto_generated|divider|divider|add_sub_6_result_int[6]~11\);

-- Location: LCCOMB_X26_Y18_N26
\Mod0|auto_generated|divider|divider|add_sub_6_result_int[7]~12\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|add_sub_6_result_int[7]~12_combout\ = \Mod0|auto_generated|divider|divider|add_sub_6_result_int[6]~11\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \Mod0|auto_generated|divider|divider|add_sub_6_result_int[6]~11\,
	combout => \Mod0|auto_generated|divider|divider|add_sub_6_result_int[7]~12_combout\);

-- Location: LCCOMB_X26_Y18_N6
\Mod0|auto_generated|divider|divider|StageOut[44]~65\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|StageOut[44]~65_combout\ = (\Mod0|auto_generated|divider|divider|add_sub_6_result_int[7]~12_combout\ & ((\Mod0|auto_generated|divider|divider|StageOut[36]~58_combout\) # 
-- ((\Mod0|auto_generated|divider|divider|StageOut[36]~57_combout\)))) # (!\Mod0|auto_generated|divider|divider|add_sub_6_result_int[7]~12_combout\ & (((\Mod0|auto_generated|divider|divider|add_sub_6_result_int[2]~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111111100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mod0|auto_generated|divider|divider|StageOut[36]~58_combout\,
	datab => \Mod0|auto_generated|divider|divider|StageOut[36]~57_combout\,
	datac => \Mod0|auto_generated|divider|divider|add_sub_6_result_int[7]~12_combout\,
	datad => \Mod0|auto_generated|divider|divider|add_sub_6_result_int[2]~2_combout\,
	combout => \Mod0|auto_generated|divider|divider|StageOut[44]~65_combout\);

-- Location: LCCOMB_X26_Y18_N0
\Mod0|auto_generated|divider|divider|StageOut[47]~62\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|StageOut[47]~62_combout\ = (\Mod0|auto_generated|divider|divider|add_sub_6_result_int[7]~12_combout\ & ((\Mod0|auto_generated|divider|divider|StageOut[39]~68_combout\) # 
-- ((\Mod0|auto_generated|divider|divider|StageOut[39]~54_combout\)))) # (!\Mod0|auto_generated|divider|divider|add_sub_6_result_int[7]~12_combout\ & (((\Mod0|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mod0|auto_generated|divider|divider|StageOut[39]~68_combout\,
	datab => \Mod0|auto_generated|divider|divider|StageOut[39]~54_combout\,
	datac => \Mod0|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\,
	datad => \Mod0|auto_generated|divider|divider|add_sub_6_result_int[7]~12_combout\,
	combout => \Mod0|auto_generated|divider|divider|StageOut[47]~62_combout\);

-- Location: LCCOMB_X26_Y18_N28
\Mod0|auto_generated|divider|divider|StageOut[43]~66\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|StageOut[43]~66_combout\ = (\Mod0|auto_generated|divider|divider|add_sub_6_result_int[7]~12_combout\ & (cnt(1))) # (!\Mod0|auto_generated|divider|divider|add_sub_6_result_int[7]~12_combout\ & 
-- ((\Mod0|auto_generated|divider|divider|add_sub_6_result_int[1]~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => cnt(1),
	datac => \Mod0|auto_generated|divider|divider|add_sub_6_result_int[7]~12_combout\,
	datad => \Mod0|auto_generated|divider|divider|add_sub_6_result_int[1]~0_combout\,
	combout => \Mod0|auto_generated|divider|divider|StageOut[43]~66_combout\);

-- Location: LCCOMB_X27_Y18_N26
\L|LessThan0~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \L|LessThan0~1_combout\ = (cnt(0)) # ((\Mod0|auto_generated|divider|divider|StageOut[44]~65_combout\) # ((\Mod0|auto_generated|divider|divider|StageOut[47]~62_combout\) # (\Mod0|auto_generated|divider|divider|StageOut[43]~66_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => cnt(0),
	datab => \Mod0|auto_generated|divider|divider|StageOut[44]~65_combout\,
	datac => \Mod0|auto_generated|divider|divider|StageOut[47]~62_combout\,
	datad => \Mod0|auto_generated|divider|divider|StageOut[43]~66_combout\,
	combout => \L|LessThan0~1_combout\);

-- Location: LCCOMB_X26_Y18_N30
\Mod0|auto_generated|divider|divider|StageOut[46]~63\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|StageOut[46]~63_combout\ = (\Mod0|auto_generated|divider|divider|add_sub_6_result_int[7]~12_combout\ & ((\Mod0|auto_generated|divider|divider|StageOut[38]~55_combout\) # 
-- ((\Mod0|auto_generated|divider|divider|StageOut[38]~69_combout\)))) # (!\Mod0|auto_generated|divider|divider|add_sub_6_result_int[7]~12_combout\ & (((\Mod0|auto_generated|divider|divider|add_sub_6_result_int[4]~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111111100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mod0|auto_generated|divider|divider|StageOut[38]~55_combout\,
	datab => \Mod0|auto_generated|divider|divider|StageOut[38]~69_combout\,
	datac => \Mod0|auto_generated|divider|divider|add_sub_6_result_int[7]~12_combout\,
	datad => \Mod0|auto_generated|divider|divider|add_sub_6_result_int[4]~6_combout\,
	combout => \Mod0|auto_generated|divider|divider|StageOut[46]~63_combout\);

-- Location: LCCOMB_X26_Y18_N10
\Mod0|auto_generated|divider|divider|StageOut[48]~61\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|StageOut[48]~61_combout\ = (\Mod0|auto_generated|divider|divider|add_sub_6_result_int[7]~12_combout\ & ((\Mod0|auto_generated|divider|divider|StageOut[40]~53_combout\) # 
-- ((\Mod0|auto_generated|divider|divider|StageOut[40]~67_combout\)))) # (!\Mod0|auto_generated|divider|divider|add_sub_6_result_int[7]~12_combout\ & (((\Mod0|auto_generated|divider|divider|add_sub_6_result_int[6]~10_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111111100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mod0|auto_generated|divider|divider|StageOut[40]~53_combout\,
	datab => \Mod0|auto_generated|divider|divider|StageOut[40]~67_combout\,
	datac => \Mod0|auto_generated|divider|divider|add_sub_6_result_int[7]~12_combout\,
	datad => \Mod0|auto_generated|divider|divider|add_sub_6_result_int[6]~10_combout\,
	combout => \Mod0|auto_generated|divider|divider|StageOut[48]~61_combout\);

-- Location: LCCOMB_X26_Y18_N12
\Mod0|auto_generated|divider|divider|StageOut[45]~64\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|StageOut[45]~64_combout\ = (\Mod0|auto_generated|divider|divider|add_sub_6_result_int[7]~12_combout\ & ((\Mod0|auto_generated|divider|divider|StageOut[37]~56_combout\) # 
-- ((\Mod0|auto_generated|divider|divider|StageOut[37]~73_combout\)))) # (!\Mod0|auto_generated|divider|divider|add_sub_6_result_int[7]~12_combout\ & (((\Mod0|auto_generated|divider|divider|add_sub_6_result_int[3]~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111111100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mod0|auto_generated|divider|divider|StageOut[37]~56_combout\,
	datab => \Mod0|auto_generated|divider|divider|StageOut[37]~73_combout\,
	datac => \Mod0|auto_generated|divider|divider|add_sub_6_result_int[7]~12_combout\,
	datad => \Mod0|auto_generated|divider|divider|add_sub_6_result_int[3]~4_combout\,
	combout => \Mod0|auto_generated|divider|divider|StageOut[45]~64_combout\);

-- Location: LCCOMB_X27_Y18_N6
\L|Add0~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \L|Add0~0_combout\ = cnt(0) $ (VCC)
-- \L|Add0~1\ = CARRY(cnt(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => cnt(0),
	datad => VCC,
	combout => \L|Add0~0_combout\,
	cout => \L|Add0~1\);

-- Location: LCCOMB_X27_Y18_N8
\L|Add0~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \L|Add0~2_combout\ = (\Mod0|auto_generated|divider|divider|StageOut[43]~66_combout\ & (\L|Add0~1\ & VCC)) # (!\Mod0|auto_generated|divider|divider|StageOut[43]~66_combout\ & (!\L|Add0~1\))
-- \L|Add0~3\ = CARRY((!\Mod0|auto_generated|divider|divider|StageOut[43]~66_combout\ & !\L|Add0~1\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \Mod0|auto_generated|divider|divider|StageOut[43]~66_combout\,
	datad => VCC,
	cin => \L|Add0~1\,
	combout => \L|Add0~2_combout\,
	cout => \L|Add0~3\);

-- Location: LCCOMB_X27_Y18_N10
\L|Add0~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \L|Add0~4_combout\ = (\Mod0|auto_generated|divider|divider|StageOut[44]~65_combout\ & ((GND) # (!\L|Add0~3\))) # (!\Mod0|auto_generated|divider|divider|StageOut[44]~65_combout\ & (\L|Add0~3\ $ (GND)))
-- \L|Add0~5\ = CARRY((\Mod0|auto_generated|divider|divider|StageOut[44]~65_combout\) # (!\L|Add0~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \Mod0|auto_generated|divider|divider|StageOut[44]~65_combout\,
	datad => VCC,
	cin => \L|Add0~3\,
	combout => \L|Add0~4_combout\,
	cout => \L|Add0~5\);

-- Location: LCCOMB_X27_Y18_N12
\L|Add0~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \L|Add0~6_combout\ = (\Mod0|auto_generated|divider|divider|StageOut[45]~64_combout\ & (\L|Add0~5\ & VCC)) # (!\Mod0|auto_generated|divider|divider|StageOut[45]~64_combout\ & (!\L|Add0~5\))
-- \L|Add0~7\ = CARRY((!\Mod0|auto_generated|divider|divider|StageOut[45]~64_combout\ & !\L|Add0~5\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Mod0|auto_generated|divider|divider|StageOut[45]~64_combout\,
	datad => VCC,
	cin => \L|Add0~5\,
	combout => \L|Add0~6_combout\,
	cout => \L|Add0~7\);

-- Location: LCCOMB_X27_Y18_N14
\L|Add0~8\ : cycloneiii_lcell_comb
-- Equation(s):
-- \L|Add0~8_combout\ = (\Mod0|auto_generated|divider|divider|StageOut[46]~63_combout\ & ((GND) # (!\L|Add0~7\))) # (!\Mod0|auto_generated|divider|divider|StageOut[46]~63_combout\ & (\L|Add0~7\ $ (GND)))
-- \L|Add0~9\ = CARRY((\Mod0|auto_generated|divider|divider|StageOut[46]~63_combout\) # (!\L|Add0~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \Mod0|auto_generated|divider|divider|StageOut[46]~63_combout\,
	datad => VCC,
	cin => \L|Add0~7\,
	combout => \L|Add0~8_combout\,
	cout => \L|Add0~9\);

-- Location: LCCOMB_X27_Y18_N16
\L|Add0~10\ : cycloneiii_lcell_comb
-- Equation(s):
-- \L|Add0~10_combout\ = (\Mod0|auto_generated|divider|divider|StageOut[47]~62_combout\ & (\L|Add0~9\ & VCC)) # (!\Mod0|auto_generated|divider|divider|StageOut[47]~62_combout\ & (!\L|Add0~9\))
-- \L|Add0~11\ = CARRY((!\Mod0|auto_generated|divider|divider|StageOut[47]~62_combout\ & !\L|Add0~9\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Mod0|auto_generated|divider|divider|StageOut[47]~62_combout\,
	datad => VCC,
	cin => \L|Add0~9\,
	combout => \L|Add0~10_combout\,
	cout => \L|Add0~11\);

-- Location: LCCOMB_X27_Y18_N18
\L|Add0~12\ : cycloneiii_lcell_comb
-- Equation(s):
-- \L|Add0~12_combout\ = (\Mod0|auto_generated|divider|divider|StageOut[48]~61_combout\ & ((GND) # (!\L|Add0~11\))) # (!\Mod0|auto_generated|divider|divider|StageOut[48]~61_combout\ & (\L|Add0~11\ $ (GND)))
-- \L|Add0~13\ = CARRY((\Mod0|auto_generated|divider|divider|StageOut[48]~61_combout\) # (!\L|Add0~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Mod0|auto_generated|divider|divider|StageOut[48]~61_combout\,
	datad => VCC,
	cin => \L|Add0~11\,
	combout => \L|Add0~12_combout\,
	cout => \L|Add0~13\);

-- Location: LCCOMB_X27_Y18_N20
\L|Add0~14\ : cycloneiii_lcell_comb
-- Equation(s):
-- \L|Add0~14_combout\ = !\L|Add0~13\
-- \L|Add0~15\ = CARRY(!\L|Add0~13\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => VCC,
	cin => \L|Add0~13\,
	combout => \L|Add0~14_combout\,
	cout => \L|Add0~15\);

-- Location: LCCOMB_X27_Y18_N22
\L|Add0~16\ : cycloneiii_lcell_comb
-- Equation(s):
-- \L|Add0~16_combout\ = !\L|Add0~15\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \L|Add0~15\,
	combout => \L|Add0~16_combout\);

-- Location: LCCOMB_X27_Y18_N28
\L|LessThan0~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \L|LessThan0~0_combout\ = (\Mod0|auto_generated|divider|divider|StageOut[45]~64_combout\) # (\Mod0|auto_generated|divider|divider|StageOut[48]~61_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mod0|auto_generated|divider|divider|StageOut[45]~64_combout\,
	datad => \Mod0|auto_generated|divider|divider|StageOut[48]~61_combout\,
	combout => \L|LessThan0~0_combout\);

-- Location: LCCOMB_X27_Y18_N4
\L|Selector4~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \L|Selector4~0_combout\ = (\L|Add0~16_combout\ & ((\L|LessThan0~1_combout\) # ((\Mod0|auto_generated|divider|divider|StageOut[46]~63_combout\) # (\L|LessThan0~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \L|LessThan0~1_combout\,
	datab => \Mod0|auto_generated|divider|divider|StageOut[46]~63_combout\,
	datac => \L|Add0~16_combout\,
	datad => \L|LessThan0~0_combout\,
	combout => \L|Selector4~0_combout\);

-- Location: LCCOMB_X27_Y18_N0
\L|Selector11~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \L|Selector11~0_combout\ = (\SD|line_status_new\(0)) # ((!\SD|line_status_new\(2) & !\SD|line_status_new\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \SD|line_status_new\(0),
	datac => \SD|line_status_new\(2),
	datad => \SD|line_status_new\(1),
	combout => \L|Selector11~0_combout\);

-- Location: LCCOMB_X27_Y18_N2
\L|Selector11~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \L|Selector11~1_combout\ = (\L|Selector7~4_combout\ & (((\L|Selector11~0_combout\)))) # (!\L|Selector7~4_combout\ & ((\L|led1~0_combout\) # ((\L|Selector4~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111000110010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \L|led1~0_combout\,
	datab => \L|Selector7~4_combout\,
	datac => \L|Selector4~0_combout\,
	datad => \L|Selector11~0_combout\,
	combout => \L|Selector11~1_combout\);

-- Location: LCCOMB_X27_Y18_N30
\L|led1[0]\ : cycloneiii_lcell_comb
-- Equation(s):
-- \L|led1\(0) = (GLOBAL(\L|Equal17~0clkctrl_outclk\) & (\L|led1\(0))) # (!GLOBAL(\L|Equal17~0clkctrl_outclk\) & ((\L|Selector11~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \L|led1\(0),
	datac => \L|Equal17~0clkctrl_outclk\,
	datad => \L|Selector11~1_combout\,
	combout => \L|led1\(0));

-- Location: LCCOMB_X26_Y19_N20
\L|Selector7~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \L|Selector7~0_combout\ = (\sw[3]~input_o\ & (\SD|line_status_new\(0) & ((\SD|line_status_new\(1)) # (!\SD|line_status_new\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sw[3]~input_o\,
	datab => \SD|line_status_new\(2),
	datac => \SD|line_status_new\(0),
	datad => \SD|line_status_new\(1),
	combout => \L|Selector7~0_combout\);

-- Location: LCCOMB_X26_Y19_N2
\L|Selector7~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \L|Selector7~1_combout\ = (\sw[2]~input_o\ & ((\L|Selector7~0_combout\) # ((!\sw[3]~input_o\ & !\line_sensor[0]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sw[3]~input_o\,
	datab => \L|Selector7~0_combout\,
	datac => \sw[2]~input_o\,
	datad => \line_sensor[0]~input_o\,
	combout => \L|Selector7~1_combout\);

-- Location: LCCOMB_X27_Y19_N4
\L|LessThan2~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \L|LessThan2~0_combout\ = (!\L|Add0~8_combout\ & (!\L|Add0~12_combout\ & (!\L|Add0~6_combout\ & !\L|Add0~10_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \L|Add0~8_combout\,
	datab => \L|Add0~12_combout\,
	datac => \L|Add0~6_combout\,
	datad => \L|Add0~10_combout\,
	combout => \L|LessThan2~0_combout\);

-- Location: LCCOMB_X26_Y19_N24
\L|LessThan2~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \L|LessThan2~1_combout\ = (!\L|Add0~14_combout\ & (!\L|Add0~4_combout\ & \L|LessThan2~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \L|Add0~14_combout\,
	datac => \L|Add0~4_combout\,
	datad => \L|LessThan2~0_combout\,
	combout => \L|LessThan2~1_combout\);

-- Location: LCCOMB_X26_Y19_N22
\L|Selector7~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \L|Selector7~2_combout\ = (\L|Selector4~0_combout\ & ((\L|Add0~2_combout\) # ((\L|Add0~0_combout\) # (!\L|LessThan2~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \L|Add0~2_combout\,
	datab => \L|Add0~0_combout\,
	datac => \L|Selector4~0_combout\,
	datad => \L|LessThan2~1_combout\,
	combout => \L|Selector7~2_combout\);

-- Location: LCCOMB_X26_Y19_N0
\L|Selector7~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \L|Selector7~3_combout\ = (\L|Selector7~1_combout\) # ((!\sw[2]~input_o\ & ((\L|Selector7~2_combout\) # (\L|led1~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110111011100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sw[2]~input_o\,
	datab => \L|Selector7~1_combout\,
	datac => \L|Selector7~2_combout\,
	datad => \L|led1~0_combout\,
	combout => \L|Selector7~3_combout\);

-- Location: LCCOMB_X26_Y19_N10
\L|Selector6~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \L|Selector6~0_combout\ = (\L|led1~0_combout\) # ((\L|Selector4~0_combout\ & ((\L|Add0~2_combout\) # (!\L|LessThan2~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \L|led1~0_combout\,
	datab => \L|Selector4~0_combout\,
	datac => \L|Add0~2_combout\,
	datad => \L|LessThan2~1_combout\,
	combout => \L|Selector6~0_combout\);

-- Location: LCCOMB_X24_Y16_N2
\L|Selector6~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \L|Selector6~2_combout\ = (\sw[3]~input_o\ & (\SD|line_status_new\(0) $ (((!\SD|line_status_new\(2) & !\SD|line_status_new\(1))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SD|line_status_new\(2),
	datab => \SD|line_status_new\(1),
	datac => \SD|line_status_new\(0),
	datad => \sw[3]~input_o\,
	combout => \L|Selector6~2_combout\);

-- Location: LCCOMB_X24_Y16_N16
\L|Selector6~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \L|Selector6~1_combout\ = (!\sw[3]~input_o\ & !\line_sensor[1]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sw[3]~input_o\,
	datad => \line_sensor[1]~input_o\,
	combout => \L|Selector6~1_combout\);

-- Location: LCCOMB_X24_Y16_N4
\L|Selector6~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \L|Selector6~3_combout\ = (\sw[2]~input_o\ & (((\L|Selector6~2_combout\) # (\L|Selector6~1_combout\)))) # (!\sw[2]~input_o\ & (\L|Selector6~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101011001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \L|Selector6~0_combout\,
	datab => \L|Selector6~2_combout\,
	datac => \sw[2]~input_o\,
	datad => \L|Selector6~1_combout\,
	combout => \L|Selector6~3_combout\);

-- Location: LCCOMB_X27_Y17_N6
\L|Selector5~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \L|Selector5~0_combout\ = (\sw[3]~input_o\ & (!\L|Equal3~0_combout\ & ((\SD|line_status_new\(1))))) # (!\sw[3]~input_o\ & (((!\line_sensor[2]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100011100000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \L|Equal3~0_combout\,
	datab => \sw[3]~input_o\,
	datac => \line_sensor[2]~input_o\,
	datad => \SD|line_status_new\(1),
	combout => \L|Selector5~0_combout\);

-- Location: LCCOMB_X26_Y19_N8
\L|Selector5~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \L|Selector5~1_combout\ = (\L|Selector4~0_combout\ & (((\L|Add0~2_combout\ & \L|Add0~0_combout\)) # (!\L|LessThan2~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \L|Add0~2_combout\,
	datab => \L|Add0~0_combout\,
	datac => \L|Selector4~0_combout\,
	datad => \L|LessThan2~1_combout\,
	combout => \L|Selector5~1_combout\);

-- Location: LCCOMB_X26_Y17_N2
\L|Selector5~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \L|Selector5~2_combout\ = (Phase(3) & (Phase(0) & (!Phase(2) & !Phase(1)))) # (!Phase(3) & (((!Phase(1)) # (!Phase(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001100111011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => Phase(0),
	datab => Phase(3),
	datac => Phase(2),
	datad => Phase(1),
	combout => \L|Selector5~2_combout\);

-- Location: LCCOMB_X26_Y19_N18
\L|Selector5~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \L|Selector5~3_combout\ = (\sw[2]~input_o\ & (\L|Selector5~0_combout\)) # (!\sw[2]~input_o\ & (((\L|Selector5~1_combout\) # (!\L|Selector5~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100011011101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sw[2]~input_o\,
	datab => \L|Selector5~0_combout\,
	datac => \L|Selector5~1_combout\,
	datad => \L|Selector5~2_combout\,
	combout => \L|Selector5~3_combout\);

-- Location: LCCOMB_X24_Y16_N10
\L|Selector4~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \L|Selector4~1_combout\ = (\sw[3]~input_o\ & ((\SD|line_status_new\(0) $ (!\SD|line_status_new\(2))))) # (!\sw[3]~input_o\ & (!\line_sensor[3]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011000100011011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sw[3]~input_o\,
	datab => \line_sensor[3]~input_o\,
	datac => \SD|line_status_new\(0),
	datad => \SD|line_status_new\(2),
	combout => \L|Selector4~1_combout\);

-- Location: LCCOMB_X26_Y19_N16
\L|Selector4~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \L|Selector4~2_combout\ = (\sw[2]~input_o\ & (((\L|Selector4~1_combout\)))) # (!\sw[2]~input_o\ & (!\L|LessThan2~1_combout\ & (\L|Selector4~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sw[2]~input_o\,
	datab => \L|LessThan2~1_combout\,
	datac => \L|Selector4~0_combout\,
	datad => \L|Selector4~1_combout\,
	combout => \L|Selector4~2_combout\);

-- Location: LCCOMB_X26_Y19_N30
\L|Selector3~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \L|Selector3~0_combout\ = (\sw[3]~input_o\ & (\SD|line_status_new\(1) & (\SD|line_status_new\(2) $ (!\SD|line_status_new\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sw[3]~input_o\,
	datab => \SD|line_status_new\(2),
	datac => \SD|line_status_new\(0),
	datad => \SD|line_status_new\(1),
	combout => \L|Selector3~0_combout\);

-- Location: LCCOMB_X26_Y19_N4
\L|Selector3~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \L|Selector3~1_combout\ = (\sw[2]~input_o\ & ((\L|Selector3~0_combout\) # ((!\line_sensor[4]~input_o\ & !\sw[3]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \L|Selector3~0_combout\,
	datab => \line_sensor[4]~input_o\,
	datac => \sw[3]~input_o\,
	datad => \sw[2]~input_o\,
	combout => \L|Selector3~1_combout\);

-- Location: LCCOMB_X26_Y19_N14
\L|Selector3~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \L|Selector3~2_combout\ = (\L|Add0~4_combout\ & ((\L|Add0~2_combout\) # (\L|Add0~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \L|Add0~2_combout\,
	datab => \L|Add0~0_combout\,
	datad => \L|Add0~4_combout\,
	combout => \L|Selector3~2_combout\);

-- Location: LCCOMB_X26_Y19_N28
\L|Selector3~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \L|Selector3~3_combout\ = (\L|Selector4~0_combout\ & ((\L|Add0~14_combout\) # ((\L|Selector3~2_combout\) # (!\L|LessThan2~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \L|Add0~14_combout\,
	datab => \L|Selector3~2_combout\,
	datac => \L|Selector4~0_combout\,
	datad => \L|LessThan2~0_combout\,
	combout => \L|Selector3~3_combout\);

-- Location: LCCOMB_X26_Y19_N6
\L|Selector3~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \L|Selector3~4_combout\ = (\L|Selector3~1_combout\) # ((!\sw[2]~input_o\ & ((\L|led1~0_combout\) # (\L|Selector3~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111110010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \L|led1~0_combout\,
	datab => \sw[2]~input_o\,
	datac => \L|Selector3~1_combout\,
	datad => \L|Selector3~3_combout\,
	combout => \L|Selector3~4_combout\);

-- Location: LCCOMB_X24_Y16_N28
\L|Selector2~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \L|Selector2~0_combout\ = (\sw[3]~input_o\ & ((\SD|line_status_new\(2) & ((\SD|line_status_new\(1)) # (\SD|line_status_new\(0)))) # (!\SD|line_status_new\(2) & ((!\SD|line_status_new\(0))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SD|line_status_new\(2),
	datab => \SD|line_status_new\(1),
	datac => \SD|line_status_new\(0),
	datad => \sw[3]~input_o\,
	combout => \L|Selector2~0_combout\);

-- Location: LCCOMB_X24_Y16_N30
\L|Selector2~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \L|Selector2~1_combout\ = (\sw[2]~input_o\ & ((\L|Selector2~0_combout\) # ((!\sw[3]~input_o\ & !\line_sensor[5]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sw[3]~input_o\,
	datab => \L|Selector2~0_combout\,
	datac => \sw[2]~input_o\,
	datad => \line_sensor[5]~input_o\,
	combout => \L|Selector2~1_combout\);

-- Location: LCCOMB_X24_Y16_N24
\L|Selector1~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \L|Selector1~2_combout\ = (\sw[3]~input_o\ & (\SD|line_status_new\(2) & (\SD|line_status_new\(1)))) # (!\sw[3]~input_o\ & (((!\line_sensor[6]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SD|line_status_new\(2),
	datab => \SD|line_status_new\(1),
	datac => \line_sensor[6]~input_o\,
	datad => \sw[3]~input_o\,
	combout => \L|Selector1~2_combout\);

-- Location: LCCOMB_X24_Y16_N8
\L|Selector1~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \L|Selector1~3_combout\ = (\sw[2]~input_o\ & (((\L|Selector1~2_combout\)))) # (!\sw[2]~input_o\ & ((Phase(3)) # ((Phase(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111000001110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => Phase(3),
	datab => Phase(2),
	datac => \sw[2]~input_o\,
	datad => \L|Selector1~2_combout\,
	combout => \L|Selector1~3_combout\);

-- Location: LCCOMB_X21_Y17_N8
\L|Selector0~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \L|Selector0~2_combout\ = (\sw[3]~input_o\ & ((\SD|line_status_new\(2)) # ((!\SD|line_status_new\(1) & !\SD|line_status_new\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SD|line_status_new\(1),
	datab => \SD|line_status_new\(0),
	datac => \SD|line_status_new\(2),
	datad => \sw[3]~input_o\,
	combout => \L|Selector0~2_combout\);

-- Location: LCCOMB_X21_Y17_N2
\L|Selector0~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \L|Selector0~1_combout\ = (!\line_sensor[7]~input_o\ & !\sw[3]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \line_sensor[7]~input_o\,
	datad => \sw[3]~input_o\,
	combout => \L|Selector0~1_combout\);

-- Location: LCCOMB_X21_Y17_N4
\L|Selector0~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \L|Selector0~3_combout\ = (\sw[2]~input_o\ & (((\L|Selector0~2_combout\) # (\L|Selector0~1_combout\)))) # (!\sw[2]~input_o\ & (\L|Selector0~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111011100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \L|Selector0~0_combout\,
	datab => \sw[2]~input_o\,
	datac => \L|Selector0~2_combout\,
	datad => \L|Selector0~1_combout\,
	combout => \L|Selector0~3_combout\);

-- Location: LCCOMB_X24_Y13_N8
\L|Selector9~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \L|Selector9~0_combout\ = (Phase(0)) # ((Phase(3)) # ((Phase(2) & Phase(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => Phase(2),
	datab => Phase(0),
	datac => Phase(1),
	datad => Phase(3),
	combout => \L|Selector9~0_combout\);

-- Location: LCCOMB_X24_Y16_N12
\L|Selector9~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \L|Selector9~1_combout\ = (\SD|line_status_new\(2) & ((\SD|line_status_new\(1)) # (!\SD|line_status_new\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SD|line_status_new\(0),
	datac => \SD|line_status_new\(1),
	datad => \SD|line_status_new\(2),
	combout => \L|Selector9~1_combout\);

-- Location: LCCOMB_X24_Y16_N18
\L|Selector9~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \L|Selector9~2_combout\ = (\sw[3]~input_o\ & (((\L|Selector9~1_combout\)))) # (!\sw[3]~input_o\ & ((\sw[2]~input_o\ & ((\L|Selector9~1_combout\))) # (!\sw[2]~input_o\ & (\L|Selector9~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sw[3]~input_o\,
	datab => \L|Selector9~0_combout\,
	datac => \sw[2]~input_o\,
	datad => \L|Selector9~1_combout\,
	combout => \L|Selector9~2_combout\);

-- Location: LCCOMB_X24_Y16_N14
\L|led1[9]\ : cycloneiii_lcell_comb
-- Equation(s):
-- \L|led1\(9) = (GLOBAL(\L|Equal17~0clkctrl_outclk\) & (\L|led1\(9))) # (!GLOBAL(\L|Equal17~0clkctrl_outclk\) & ((\L|Selector9~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \L|led1\(9),
	datac => \L|Equal17~0clkctrl_outclk\,
	datad => \L|Selector9~2_combout\,
	combout => \L|led1\(9));

-- Location: LCCOMB_X20_Y22_N0
\lp|current_second[0]~9\ : cycloneiii_lcell_comb
-- Equation(s):
-- \lp|current_second[0]~9_combout\ = \lp|current_second\(0) $ (VCC)
-- \lp|current_second[0]~10\ = CARRY(\lp|current_second\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \lp|current_second\(0),
	datad => VCC,
	combout => \lp|current_second[0]~9_combout\,
	cout => \lp|current_second[0]~10\);

-- Location: LCCOMB_X22_Y15_N30
\LessThan5~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \LessThan5~2_combout\ = (cnt(3)) # ((cnt(1)) # ((cnt(2)) # (!\Mux108~5_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => cnt(3),
	datab => cnt(1),
	datac => cnt(2),
	datad => \Mux108~5_combout\,
	combout => \LessThan5~2_combout\);

-- Location: LCCOMB_X23_Y16_N24
\Mux109~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux109~0_combout\ = (\done_flag~q\) # ((\LessThan5~2_combout\ & (\Mux108~4_combout\ & \L|Equal10~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LessThan5~2_combout\,
	datab => \Mux108~4_combout\,
	datac => \done_flag~q\,
	datad => \L|Equal10~1_combout\,
	combout => \Mux109~0_combout\);

-- Location: FF_X23_Y16_N25
done_flag : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Mux109~0_combout\,
	sclr => \ALT_INV_sw[0]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \done_flag~q\);

-- Location: LCCOMB_X21_Y20_N12
\lp|process_0~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \lp|process_0~0_combout\ = (\done_flag~q\) # (!\sw[0]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \sw[0]~input_o\,
	datac => \done_flag~q\,
	combout => \lp|process_0~0_combout\);

-- Location: LCCOMB_X21_Y20_N22
\lp|count~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \lp|count~4_combout\ = (\lp|Add0~14_combout\ & \lp|current_second[8]~27_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \lp|Add0~14_combout\,
	datad => \lp|current_second[8]~27_combout\,
	combout => \lp|count~4_combout\);

-- Location: FF_X21_Y20_N23
\lp|count[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \lp|count~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \lp|count\(7));

-- Location: LCCOMB_X22_Y20_N6
\lp|Add0~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \lp|Add0~0_combout\ = \lp|count\(0) $ (VCC)
-- \lp|Add0~1\ = CARRY(\lp|count\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \lp|count\(0),
	datad => VCC,
	combout => \lp|Add0~0_combout\,
	cout => \lp|Add0~1\);

-- Location: LCCOMB_X22_Y20_N0
\lp|count~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \lp|count~0_combout\ = (\lp|current_second[8]~27_combout\ & \lp|Add0~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \lp|current_second[8]~27_combout\,
	datad => \lp|Add0~0_combout\,
	combout => \lp|count~0_combout\);

-- Location: FF_X22_Y20_N1
\lp|count[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \lp|count~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \lp|count\(0));

-- Location: LCCOMB_X22_Y20_N8
\lp|Add0~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \lp|Add0~2_combout\ = (\lp|count\(1) & (!\lp|Add0~1\)) # (!\lp|count\(1) & ((\lp|Add0~1\) # (GND)))
-- \lp|Add0~3\ = CARRY((!\lp|Add0~1\) # (!\lp|count\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \lp|count\(1),
	datad => VCC,
	cin => \lp|Add0~1\,
	combout => \lp|Add0~2_combout\,
	cout => \lp|Add0~3\);

-- Location: LCCOMB_X21_Y20_N6
\lp|count~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \lp|count~1_combout\ = (\lp|Add0~2_combout\ & \lp|current_second[8]~27_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \lp|Add0~2_combout\,
	datad => \lp|current_second[8]~27_combout\,
	combout => \lp|count~1_combout\);

-- Location: FF_X21_Y20_N7
\lp|count[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \lp|count~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \lp|count\(1));

-- Location: LCCOMB_X22_Y20_N10
\lp|Add0~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \lp|Add0~4_combout\ = (\lp|count\(2) & (\lp|Add0~3\ $ (GND))) # (!\lp|count\(2) & (!\lp|Add0~3\ & VCC))
-- \lp|Add0~5\ = CARRY((\lp|count\(2) & !\lp|Add0~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \lp|count\(2),
	datad => VCC,
	cin => \lp|Add0~3\,
	combout => \lp|Add0~4_combout\,
	cout => \lp|Add0~5\);

-- Location: LCCOMB_X22_Y20_N2
\lp|count~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \lp|count~2_combout\ = (\lp|current_second[8]~27_combout\ & \lp|Add0~4_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \lp|current_second[8]~27_combout\,
	datad => \lp|Add0~4_combout\,
	combout => \lp|count~2_combout\);

-- Location: FF_X22_Y20_N3
\lp|count[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \lp|count~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \lp|count\(2));

-- Location: LCCOMB_X22_Y20_N12
\lp|Add0~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \lp|Add0~6_combout\ = (\lp|count\(3) & (!\lp|Add0~5\)) # (!\lp|count\(3) & ((\lp|Add0~5\) # (GND)))
-- \lp|Add0~7\ = CARRY((!\lp|Add0~5\) # (!\lp|count\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \lp|count\(3),
	datad => VCC,
	cin => \lp|Add0~5\,
	combout => \lp|Add0~6_combout\,
	cout => \lp|Add0~7\);

-- Location: LCCOMB_X22_Y20_N4
\lp|count~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \lp|count~3_combout\ = (\lp|current_second[8]~27_combout\ & \lp|Add0~6_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \lp|current_second[8]~27_combout\,
	datad => \lp|Add0~6_combout\,
	combout => \lp|count~3_combout\);

-- Location: FF_X22_Y20_N5
\lp|count[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \lp|count~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \lp|count\(3));

-- Location: LCCOMB_X22_Y20_N14
\lp|Add0~8\ : cycloneiii_lcell_comb
-- Equation(s):
-- \lp|Add0~8_combout\ = (\lp|count\(4) & (\lp|Add0~7\ $ (GND))) # (!\lp|count\(4) & (!\lp|Add0~7\ & VCC))
-- \lp|Add0~9\ = CARRY((\lp|count\(4) & !\lp|Add0~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \lp|count\(4),
	datad => VCC,
	cin => \lp|Add0~7\,
	combout => \lp|Add0~8_combout\,
	cout => \lp|Add0~9\);

-- Location: LCCOMB_X21_Y20_N16
\lp|count~7\ : cycloneiii_lcell_comb
-- Equation(s):
-- \lp|count~7_combout\ = (\lp|Add0~8_combout\ & \lp|current_second[8]~27_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \lp|Add0~8_combout\,
	datad => \lp|current_second[8]~27_combout\,
	combout => \lp|count~7_combout\);

-- Location: FF_X21_Y20_N17
\lp|count[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \lp|count~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \lp|count\(4));

-- Location: LCCOMB_X22_Y20_N16
\lp|Add0~10\ : cycloneiii_lcell_comb
-- Equation(s):
-- \lp|Add0~10_combout\ = (\lp|count\(5) & (!\lp|Add0~9\)) # (!\lp|count\(5) & ((\lp|Add0~9\) # (GND)))
-- \lp|Add0~11\ = CARRY((!\lp|Add0~9\) # (!\lp|count\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \lp|count\(5),
	datad => VCC,
	cin => \lp|Add0~9\,
	combout => \lp|Add0~10_combout\,
	cout => \lp|Add0~11\);

-- Location: LCCOMB_X21_Y20_N18
\lp|count~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \lp|count~6_combout\ = (\lp|current_second[8]~27_combout\ & \lp|Add0~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \lp|current_second[8]~27_combout\,
	datad => \lp|Add0~10_combout\,
	combout => \lp|count~6_combout\);

-- Location: FF_X21_Y20_N19
\lp|count[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \lp|count~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \lp|count\(5));

-- Location: LCCOMB_X22_Y20_N18
\lp|Add0~12\ : cycloneiii_lcell_comb
-- Equation(s):
-- \lp|Add0~12_combout\ = (\lp|count\(6) & (\lp|Add0~11\ $ (GND))) # (!\lp|count\(6) & (!\lp|Add0~11\ & VCC))
-- \lp|Add0~13\ = CARRY((\lp|count\(6) & !\lp|Add0~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \lp|count\(6),
	datad => VCC,
	cin => \lp|Add0~11\,
	combout => \lp|Add0~12_combout\,
	cout => \lp|Add0~13\);

-- Location: LCCOMB_X21_Y20_N28
\lp|count~5\ : cycloneiii_lcell_comb
-- Equation(s):
-- \lp|count~5_combout\ = (\lp|current_second[8]~27_combout\ & \lp|Add0~12_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \lp|current_second[8]~27_combout\,
	datad => \lp|Add0~12_combout\,
	combout => \lp|count~5_combout\);

-- Location: FF_X21_Y20_N29
\lp|count[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \lp|count~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \lp|count\(6));

-- Location: LCCOMB_X22_Y20_N20
\lp|Add0~14\ : cycloneiii_lcell_comb
-- Equation(s):
-- \lp|Add0~14_combout\ = (\lp|count\(7) & (!\lp|Add0~13\)) # (!\lp|count\(7) & ((\lp|Add0~13\) # (GND)))
-- \lp|Add0~15\ = CARRY((!\lp|Add0~13\) # (!\lp|count\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \lp|count\(7),
	datad => VCC,
	cin => \lp|Add0~13\,
	combout => \lp|Add0~14_combout\,
	cout => \lp|Add0~15\);

-- Location: LCCOMB_X21_Y20_N26
\lp|Equal0~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \lp|Equal0~1_combout\ = (\lp|Add0~14_combout\) # (((!\lp|Add0~10_combout\) # (!\lp|Add0~8_combout\)) # (!\lp|Add0~12_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \lp|Add0~14_combout\,
	datab => \lp|Add0~12_combout\,
	datac => \lp|Add0~8_combout\,
	datad => \lp|Add0~10_combout\,
	combout => \lp|Equal0~1_combout\);

-- Location: LCCOMB_X21_Y19_N18
\lp|count~15\ : cycloneiii_lcell_comb
-- Equation(s):
-- \lp|count~15_combout\ = (\lp|current_second[8]~27_combout\ & \lp|Add0~30_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \lp|current_second[8]~27_combout\,
	datad => \lp|Add0~30_combout\,
	combout => \lp|count~15_combout\);

-- Location: FF_X21_Y19_N19
\lp|count[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \lp|count~15_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \lp|count\(15));

-- Location: LCCOMB_X22_Y20_N22
\lp|Add0~16\ : cycloneiii_lcell_comb
-- Equation(s):
-- \lp|Add0~16_combout\ = (\lp|count\(8) & (\lp|Add0~15\ $ (GND))) # (!\lp|count\(8) & (!\lp|Add0~15\ & VCC))
-- \lp|Add0~17\ = CARRY((\lp|count\(8) & !\lp|Add0~15\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \lp|count\(8),
	datad => VCC,
	cin => \lp|Add0~15\,
	combout => \lp|Add0~16_combout\,
	cout => \lp|Add0~17\);

-- Location: LCCOMB_X21_Y20_N8
\lp|count~8\ : cycloneiii_lcell_comb
-- Equation(s):
-- \lp|count~8_combout\ = (\lp|current_second[8]~27_combout\ & \lp|Add0~16_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \lp|current_second[8]~27_combout\,
	datad => \lp|Add0~16_combout\,
	combout => \lp|count~8_combout\);

-- Location: FF_X21_Y20_N9
\lp|count[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \lp|count~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \lp|count\(8));

-- Location: LCCOMB_X22_Y20_N24
\lp|Add0~18\ : cycloneiii_lcell_comb
-- Equation(s):
-- \lp|Add0~18_combout\ = (\lp|count\(9) & (!\lp|Add0~17\)) # (!\lp|count\(9) & ((\lp|Add0~17\) # (GND)))
-- \lp|Add0~19\ = CARRY((!\lp|Add0~17\) # (!\lp|count\(9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \lp|count\(9),
	datad => VCC,
	cin => \lp|Add0~17\,
	combout => \lp|Add0~18_combout\,
	cout => \lp|Add0~19\);

-- Location: LCCOMB_X21_Y20_N2
\lp|count~9\ : cycloneiii_lcell_comb
-- Equation(s):
-- \lp|count~9_combout\ = (\lp|current_second[8]~27_combout\ & \lp|Add0~18_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \lp|current_second[8]~27_combout\,
	datad => \lp|Add0~18_combout\,
	combout => \lp|count~9_combout\);

-- Location: FF_X21_Y20_N3
\lp|count[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \lp|count~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \lp|count\(9));

-- Location: LCCOMB_X22_Y20_N26
\lp|Add0~20\ : cycloneiii_lcell_comb
-- Equation(s):
-- \lp|Add0~20_combout\ = (\lp|count\(10) & (\lp|Add0~19\ $ (GND))) # (!\lp|count\(10) & (!\lp|Add0~19\ & VCC))
-- \lp|Add0~21\ = CARRY((\lp|count\(10) & !\lp|Add0~19\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \lp|count\(10),
	datad => VCC,
	cin => \lp|Add0~19\,
	combout => \lp|Add0~20_combout\,
	cout => \lp|Add0~21\);

-- Location: LCCOMB_X21_Y20_N0
\lp|count~10\ : cycloneiii_lcell_comb
-- Equation(s):
-- \lp|count~10_combout\ = (\lp|current_second[8]~27_combout\ & \lp|Add0~20_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \lp|current_second[8]~27_combout\,
	datac => \lp|Add0~20_combout\,
	combout => \lp|count~10_combout\);

-- Location: FF_X21_Y20_N1
\lp|count[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \lp|count~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \lp|count\(10));

-- Location: LCCOMB_X22_Y20_N28
\lp|Add0~22\ : cycloneiii_lcell_comb
-- Equation(s):
-- \lp|Add0~22_combout\ = (\lp|count\(11) & (!\lp|Add0~21\)) # (!\lp|count\(11) & ((\lp|Add0~21\) # (GND)))
-- \lp|Add0~23\ = CARRY((!\lp|Add0~21\) # (!\lp|count\(11)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \lp|count\(11),
	datad => VCC,
	cin => \lp|Add0~21\,
	combout => \lp|Add0~22_combout\,
	cout => \lp|Add0~23\);

-- Location: LCCOMB_X21_Y20_N14
\lp|count~11\ : cycloneiii_lcell_comb
-- Equation(s):
-- \lp|count~11_combout\ = (\lp|current_second[8]~27_combout\ & \lp|Add0~22_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \lp|current_second[8]~27_combout\,
	datad => \lp|Add0~22_combout\,
	combout => \lp|count~11_combout\);

-- Location: FF_X21_Y20_N15
\lp|count[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \lp|count~11_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \lp|count\(11));

-- Location: LCCOMB_X22_Y20_N30
\lp|Add0~24\ : cycloneiii_lcell_comb
-- Equation(s):
-- \lp|Add0~24_combout\ = (\lp|count\(12) & (\lp|Add0~23\ $ (GND))) # (!\lp|count\(12) & (!\lp|Add0~23\ & VCC))
-- \lp|Add0~25\ = CARRY((\lp|count\(12) & !\lp|Add0~23\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \lp|count\(12),
	datad => VCC,
	cin => \lp|Add0~23\,
	combout => \lp|Add0~24_combout\,
	cout => \lp|Add0~25\);

-- Location: LCCOMB_X21_Y19_N24
\lp|count~12\ : cycloneiii_lcell_comb
-- Equation(s):
-- \lp|count~12_combout\ = (\lp|current_second[8]~27_combout\ & \lp|Add0~24_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \lp|current_second[8]~27_combout\,
	datac => \lp|Add0~24_combout\,
	combout => \lp|count~12_combout\);

-- Location: FF_X21_Y19_N25
\lp|count[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \lp|count~12_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \lp|count\(12));

-- Location: LCCOMB_X22_Y19_N0
\lp|Add0~26\ : cycloneiii_lcell_comb
-- Equation(s):
-- \lp|Add0~26_combout\ = (\lp|count\(13) & (!\lp|Add0~25\)) # (!\lp|count\(13) & ((\lp|Add0~25\) # (GND)))
-- \lp|Add0~27\ = CARRY((!\lp|Add0~25\) # (!\lp|count\(13)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \lp|count\(13),
	datad => VCC,
	cin => \lp|Add0~25\,
	combout => \lp|Add0~26_combout\,
	cout => \lp|Add0~27\);

-- Location: LCCOMB_X21_Y19_N10
\lp|count~13\ : cycloneiii_lcell_comb
-- Equation(s):
-- \lp|count~13_combout\ = (\lp|current_second[8]~27_combout\ & \lp|Add0~26_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \lp|current_second[8]~27_combout\,
	datac => \lp|Add0~26_combout\,
	combout => \lp|count~13_combout\);

-- Location: FF_X21_Y19_N11
\lp|count[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \lp|count~13_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \lp|count\(13));

-- Location: LCCOMB_X22_Y19_N2
\lp|Add0~28\ : cycloneiii_lcell_comb
-- Equation(s):
-- \lp|Add0~28_combout\ = (\lp|count\(14) & (\lp|Add0~27\ $ (GND))) # (!\lp|count\(14) & (!\lp|Add0~27\ & VCC))
-- \lp|Add0~29\ = CARRY((\lp|count\(14) & !\lp|Add0~27\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \lp|count\(14),
	datad => VCC,
	cin => \lp|Add0~27\,
	combout => \lp|Add0~28_combout\,
	cout => \lp|Add0~29\);

-- Location: LCCOMB_X21_Y19_N8
\lp|count~14\ : cycloneiii_lcell_comb
-- Equation(s):
-- \lp|count~14_combout\ = (\lp|current_second[8]~27_combout\ & \lp|Add0~28_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \lp|current_second[8]~27_combout\,
	datad => \lp|Add0~28_combout\,
	combout => \lp|count~14_combout\);

-- Location: FF_X21_Y19_N9
\lp|count[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \lp|count~14_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \lp|count\(14));

-- Location: LCCOMB_X22_Y19_N4
\lp|Add0~30\ : cycloneiii_lcell_comb
-- Equation(s):
-- \lp|Add0~30_combout\ = (\lp|count\(15) & (!\lp|Add0~29\)) # (!\lp|count\(15) & ((\lp|Add0~29\) # (GND)))
-- \lp|Add0~31\ = CARRY((!\lp|Add0~29\) # (!\lp|count\(15)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \lp|count\(15),
	datad => VCC,
	cin => \lp|Add0~29\,
	combout => \lp|Add0~30_combout\,
	cout => \lp|Add0~31\);

-- Location: LCCOMB_X21_Y19_N0
\lp|Equal0~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \lp|Equal0~3_combout\ = (((!\lp|Add0~28_combout\) # (!\lp|Add0~26_combout\)) # (!\lp|Add0~24_combout\)) # (!\lp|Add0~30_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \lp|Add0~30_combout\,
	datab => \lp|Add0~24_combout\,
	datac => \lp|Add0~26_combout\,
	datad => \lp|Add0~28_combout\,
	combout => \lp|Equal0~3_combout\);

-- Location: LCCOMB_X21_Y20_N4
\lp|Equal0~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \lp|Equal0~0_combout\ = (((!\lp|Add0~0_combout\) # (!\lp|Add0~2_combout\)) # (!\lp|Add0~6_combout\)) # (!\lp|Add0~4_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \lp|Add0~4_combout\,
	datab => \lp|Add0~6_combout\,
	datac => \lp|Add0~2_combout\,
	datad => \lp|Add0~0_combout\,
	combout => \lp|Equal0~0_combout\);

-- Location: LCCOMB_X21_Y20_N24
\lp|Equal0~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \lp|Equal0~2_combout\ = (\lp|Add0~22_combout\) # ((\lp|Add0~18_combout\) # ((\lp|Add0~20_combout\) # (\lp|Add0~16_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \lp|Add0~22_combout\,
	datab => \lp|Add0~18_combout\,
	datac => \lp|Add0~20_combout\,
	datad => \lp|Add0~16_combout\,
	combout => \lp|Equal0~2_combout\);

-- Location: LCCOMB_X21_Y20_N10
\lp|Equal0~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \lp|Equal0~4_combout\ = (\lp|Equal0~1_combout\) # ((\lp|Equal0~3_combout\) # ((\lp|Equal0~0_combout\) # (\lp|Equal0~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \lp|Equal0~1_combout\,
	datab => \lp|Equal0~3_combout\,
	datac => \lp|Equal0~0_combout\,
	datad => \lp|Equal0~2_combout\,
	combout => \lp|Equal0~4_combout\);

-- Location: LCCOMB_X23_Y19_N4
\lp|count~20\ : cycloneiii_lcell_comb
-- Equation(s):
-- \lp|count~20_combout\ = (\lp|current_second[8]~27_combout\ & \lp|Add0~40_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \lp|current_second[8]~27_combout\,
	datad => \lp|Add0~40_combout\,
	combout => \lp|count~20_combout\);

-- Location: FF_X23_Y19_N5
\lp|count[20]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \lp|count~20_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \lp|count\(20));

-- Location: LCCOMB_X22_Y19_N6
\lp|Add0~32\ : cycloneiii_lcell_comb
-- Equation(s):
-- \lp|Add0~32_combout\ = (\lp|count\(16) & (\lp|Add0~31\ $ (GND))) # (!\lp|count\(16) & (!\lp|Add0~31\ & VCC))
-- \lp|Add0~33\ = CARRY((\lp|count\(16) & !\lp|Add0~31\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \lp|count\(16),
	datad => VCC,
	cin => \lp|Add0~31\,
	combout => \lp|Add0~32_combout\,
	cout => \lp|Add0~33\);

-- Location: LCCOMB_X21_Y19_N2
\lp|count~16\ : cycloneiii_lcell_comb
-- Equation(s):
-- \lp|count~16_combout\ = (\lp|current_second[8]~27_combout\ & \lp|Add0~32_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \lp|current_second[8]~27_combout\,
	datad => \lp|Add0~32_combout\,
	combout => \lp|count~16_combout\);

-- Location: FF_X21_Y19_N3
\lp|count[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \lp|count~16_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \lp|count\(16));

-- Location: LCCOMB_X22_Y19_N8
\lp|Add0~34\ : cycloneiii_lcell_comb
-- Equation(s):
-- \lp|Add0~34_combout\ = (\lp|count\(17) & (!\lp|Add0~33\)) # (!\lp|count\(17) & ((\lp|Add0~33\) # (GND)))
-- \lp|Add0~35\ = CARRY((!\lp|Add0~33\) # (!\lp|count\(17)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \lp|count\(17),
	datad => VCC,
	cin => \lp|Add0~33\,
	combout => \lp|Add0~34_combout\,
	cout => \lp|Add0~35\);

-- Location: LCCOMB_X21_Y19_N6
\lp|count~18\ : cycloneiii_lcell_comb
-- Equation(s):
-- \lp|count~18_combout\ = (\lp|current_second[8]~27_combout\ & \lp|Add0~34_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \lp|current_second[8]~27_combout\,
	datac => \lp|Add0~34_combout\,
	combout => \lp|count~18_combout\);

-- Location: FF_X21_Y19_N7
\lp|count[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \lp|count~18_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \lp|count\(17));

-- Location: LCCOMB_X22_Y19_N10
\lp|Add0~36\ : cycloneiii_lcell_comb
-- Equation(s):
-- \lp|Add0~36_combout\ = (\lp|count\(18) & (\lp|Add0~35\ $ (GND))) # (!\lp|count\(18) & (!\lp|Add0~35\ & VCC))
-- \lp|Add0~37\ = CARRY((\lp|count\(18) & !\lp|Add0~35\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \lp|count\(18),
	datad => VCC,
	cin => \lp|Add0~35\,
	combout => \lp|Add0~36_combout\,
	cout => \lp|Add0~37\);

-- Location: LCCOMB_X21_Y19_N16
\lp|count~17\ : cycloneiii_lcell_comb
-- Equation(s):
-- \lp|count~17_combout\ = (\lp|current_second[8]~27_combout\ & \lp|Add0~36_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \lp|current_second[8]~27_combout\,
	datac => \lp|Add0~36_combout\,
	combout => \lp|count~17_combout\);

-- Location: FF_X21_Y19_N17
\lp|count[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \lp|count~17_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \lp|count\(18));

-- Location: LCCOMB_X22_Y19_N12
\lp|Add0~38\ : cycloneiii_lcell_comb
-- Equation(s):
-- \lp|Add0~38_combout\ = (\lp|count\(19) & (!\lp|Add0~37\)) # (!\lp|count\(19) & ((\lp|Add0~37\) # (GND)))
-- \lp|Add0~39\ = CARRY((!\lp|Add0~37\) # (!\lp|count\(19)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \lp|count\(19),
	datad => VCC,
	cin => \lp|Add0~37\,
	combout => \lp|Add0~38_combout\,
	cout => \lp|Add0~39\);

-- Location: LCCOMB_X21_Y19_N12
\lp|count~19\ : cycloneiii_lcell_comb
-- Equation(s):
-- \lp|count~19_combout\ = (\lp|current_second[8]~27_combout\ & \lp|Add0~38_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \lp|current_second[8]~27_combout\,
	datac => \lp|Add0~38_combout\,
	combout => \lp|count~19_combout\);

-- Location: FF_X21_Y19_N13
\lp|count[19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \lp|count~19_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \lp|count\(19));

-- Location: LCCOMB_X22_Y19_N14
\lp|Add0~40\ : cycloneiii_lcell_comb
-- Equation(s):
-- \lp|Add0~40_combout\ = (\lp|count\(20) & (\lp|Add0~39\ $ (GND))) # (!\lp|count\(20) & (!\lp|Add0~39\ & VCC))
-- \lp|Add0~41\ = CARRY((\lp|count\(20) & !\lp|Add0~39\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \lp|count\(20),
	datad => VCC,
	cin => \lp|Add0~39\,
	combout => \lp|Add0~40_combout\,
	cout => \lp|Add0~41\);

-- Location: LCCOMB_X22_Y19_N26
\lp|count~23\ : cycloneiii_lcell_comb
-- Equation(s):
-- \lp|count~23_combout\ = (\lp|current_second[8]~27_combout\ & \lp|Add0~46_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \lp|current_second[8]~27_combout\,
	datad => \lp|Add0~46_combout\,
	combout => \lp|count~23_combout\);

-- Location: FF_X22_Y19_N27
\lp|count[23]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \lp|count~23_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \lp|count\(23));

-- Location: LCCOMB_X22_Y19_N16
\lp|Add0~42\ : cycloneiii_lcell_comb
-- Equation(s):
-- \lp|Add0~42_combout\ = (\lp|count\(21) & (!\lp|Add0~41\)) # (!\lp|count\(21) & ((\lp|Add0~41\) # (GND)))
-- \lp|Add0~43\ = CARRY((!\lp|Add0~41\) # (!\lp|count\(21)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \lp|count\(21),
	datad => VCC,
	cin => \lp|Add0~41\,
	combout => \lp|Add0~42_combout\,
	cout => \lp|Add0~43\);

-- Location: LCCOMB_X22_Y19_N30
\lp|count~21\ : cycloneiii_lcell_comb
-- Equation(s):
-- \lp|count~21_combout\ = (\lp|current_second[8]~27_combout\ & \lp|Add0~42_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \lp|current_second[8]~27_combout\,
	datad => \lp|Add0~42_combout\,
	combout => \lp|count~21_combout\);

-- Location: FF_X22_Y19_N31
\lp|count[21]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \lp|count~21_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \lp|count\(21));

-- Location: LCCOMB_X22_Y19_N18
\lp|Add0~44\ : cycloneiii_lcell_comb
-- Equation(s):
-- \lp|Add0~44_combout\ = (\lp|count\(22) & (\lp|Add0~43\ $ (GND))) # (!\lp|count\(22) & (!\lp|Add0~43\ & VCC))
-- \lp|Add0~45\ = CARRY((\lp|count\(22) & !\lp|Add0~43\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \lp|count\(22),
	datad => VCC,
	cin => \lp|Add0~43\,
	combout => \lp|Add0~44_combout\,
	cout => \lp|Add0~45\);

-- Location: LCCOMB_X22_Y19_N28
\lp|count~22\ : cycloneiii_lcell_comb
-- Equation(s):
-- \lp|count~22_combout\ = (\lp|current_second[8]~27_combout\ & \lp|Add0~44_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \lp|current_second[8]~27_combout\,
	datad => \lp|Add0~44_combout\,
	combout => \lp|count~22_combout\);

-- Location: FF_X22_Y19_N29
\lp|count[22]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \lp|count~22_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \lp|count\(22));

-- Location: LCCOMB_X22_Y19_N20
\lp|Add0~46\ : cycloneiii_lcell_comb
-- Equation(s):
-- \lp|Add0~46_combout\ = (\lp|count\(23) & (!\lp|Add0~45\)) # (!\lp|count\(23) & ((\lp|Add0~45\) # (GND)))
-- \lp|Add0~47\ = CARRY((!\lp|Add0~45\) # (!\lp|count\(23)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \lp|count\(23),
	datad => VCC,
	cin => \lp|Add0~45\,
	combout => \lp|Add0~46_combout\,
	cout => \lp|Add0~47\);

-- Location: LCCOMB_X23_Y19_N22
\lp|Equal0~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \lp|Equal0~6_combout\ = (((!\lp|Add0~44_combout\) # (!\lp|Add0~42_combout\)) # (!\lp|Add0~46_combout\)) # (!\lp|Add0~40_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \lp|Add0~40_combout\,
	datab => \lp|Add0~46_combout\,
	datac => \lp|Add0~42_combout\,
	datad => \lp|Add0~44_combout\,
	combout => \lp|Equal0~6_combout\);

-- Location: LCCOMB_X21_Y19_N14
\lp|count~25\ : cycloneiii_lcell_comb
-- Equation(s):
-- \lp|count~25_combout\ = (\lp|current_second[8]~27_combout\ & \lp|Add0~50_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \lp|current_second[8]~27_combout\,
	datad => \lp|Add0~50_combout\,
	combout => \lp|count~25_combout\);

-- Location: FF_X21_Y19_N15
\lp|count[25]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \lp|count~25_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \lp|count\(25));

-- Location: LCCOMB_X22_Y19_N22
\lp|Add0~48\ : cycloneiii_lcell_comb
-- Equation(s):
-- \lp|Add0~48_combout\ = (\lp|count\(24) & (\lp|Add0~47\ $ (GND))) # (!\lp|count\(24) & (!\lp|Add0~47\ & VCC))
-- \lp|Add0~49\ = CARRY((\lp|count\(24) & !\lp|Add0~47\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \lp|count\(24),
	datad => VCC,
	cin => \lp|Add0~47\,
	combout => \lp|Add0~48_combout\,
	cout => \lp|Add0~49\);

-- Location: LCCOMB_X21_Y19_N20
\lp|count~24\ : cycloneiii_lcell_comb
-- Equation(s):
-- \lp|count~24_combout\ = (\lp|current_second[8]~27_combout\ & \lp|Add0~48_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \lp|current_second[8]~27_combout\,
	datad => \lp|Add0~48_combout\,
	combout => \lp|count~24_combout\);

-- Location: FF_X21_Y19_N21
\lp|count[24]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \lp|count~24_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \lp|count\(24));

-- Location: LCCOMB_X22_Y19_N24
\lp|Add0~50\ : cycloneiii_lcell_comb
-- Equation(s):
-- \lp|Add0~50_combout\ = \lp|Add0~49\ $ (\lp|count\(25))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \lp|count\(25),
	cin => \lp|Add0~49\,
	combout => \lp|Add0~50_combout\);

-- Location: LCCOMB_X21_Y19_N26
\lp|Equal0~5\ : cycloneiii_lcell_comb
-- Equation(s):
-- \lp|Equal0~5_combout\ = ((\lp|Add0~36_combout\) # ((\lp|Add0~32_combout\) # (!\lp|Add0~34_combout\))) # (!\lp|Add0~38_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111011111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \lp|Add0~38_combout\,
	datab => \lp|Add0~36_combout\,
	datac => \lp|Add0~34_combout\,
	datad => \lp|Add0~32_combout\,
	combout => \lp|Equal0~5_combout\);

-- Location: LCCOMB_X21_Y19_N28
\lp|Equal0~7\ : cycloneiii_lcell_comb
-- Equation(s):
-- \lp|Equal0~7_combout\ = (\lp|Equal0~6_combout\) # (((\lp|Equal0~5_combout\) # (\lp|Add0~48_combout\)) # (!\lp|Add0~50_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \lp|Equal0~6_combout\,
	datab => \lp|Add0~50_combout\,
	datac => \lp|Equal0~5_combout\,
	datad => \lp|Add0~48_combout\,
	combout => \lp|Equal0~7_combout\);

-- Location: LCCOMB_X21_Y20_N20
\lp|current_second[8]~27\ : cycloneiii_lcell_comb
-- Equation(s):
-- \lp|current_second[8]~27_combout\ = (\sw[0]~input_o\ & (!\done_flag~q\ & ((\lp|Equal0~4_combout\) # (\lp|Equal0~7_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \lp|Equal0~4_combout\,
	datab => \sw[0]~input_o\,
	datac => \done_flag~q\,
	datad => \lp|Equal0~7_combout\,
	combout => \lp|current_second[8]~27_combout\);

-- Location: FF_X20_Y22_N1
\lp|current_second[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \lp|current_second[0]~9_combout\,
	sclr => \lp|process_0~0_combout\,
	ena => \lp|ALT_INV_current_second[8]~27_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \lp|current_second\(0));

-- Location: LCCOMB_X20_Y22_N30
\lp|t0[0]~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \lp|t0[0]~0_combout\ = !\lp|current_second\(0)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \lp|current_second\(0),
	combout => \lp|t0[0]~0_combout\);

-- Location: FF_X20_Y22_N31
\lp|t0[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \lp|t0[0]~0_combout\,
	ena => \lp|ALT_INV_process_0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \lp|t0\(0));

-- Location: LCCOMB_X20_Y22_N2
\lp|current_second[1]~11\ : cycloneiii_lcell_comb
-- Equation(s):
-- \lp|current_second[1]~11_combout\ = (\lp|current_second\(1) & (!\lp|current_second[0]~10\)) # (!\lp|current_second\(1) & ((\lp|current_second[0]~10\) # (GND)))
-- \lp|current_second[1]~12\ = CARRY((!\lp|current_second[0]~10\) # (!\lp|current_second\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \lp|current_second\(1),
	datad => VCC,
	cin => \lp|current_second[0]~10\,
	combout => \lp|current_second[1]~11_combout\,
	cout => \lp|current_second[1]~12\);

-- Location: FF_X20_Y22_N3
\lp|current_second[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \lp|current_second[1]~11_combout\,
	sclr => \lp|process_0~0_combout\,
	ena => \lp|ALT_INV_current_second[8]~27_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \lp|current_second\(1));

-- Location: LCCOMB_X20_Y22_N4
\lp|current_second[2]~13\ : cycloneiii_lcell_comb
-- Equation(s):
-- \lp|current_second[2]~13_combout\ = (\lp|current_second\(2) & (\lp|current_second[1]~12\ $ (GND))) # (!\lp|current_second\(2) & (!\lp|current_second[1]~12\ & VCC))
-- \lp|current_second[2]~14\ = CARRY((\lp|current_second\(2) & !\lp|current_second[1]~12\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \lp|current_second\(2),
	datad => VCC,
	cin => \lp|current_second[1]~12\,
	combout => \lp|current_second[2]~13_combout\,
	cout => \lp|current_second[2]~14\);

-- Location: FF_X20_Y22_N5
\lp|current_second[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \lp|current_second[2]~13_combout\,
	sclr => \lp|process_0~0_combout\,
	ena => \lp|ALT_INV_current_second[8]~27_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \lp|current_second\(2));

-- Location: LCCOMB_X20_Y22_N6
\lp|current_second[3]~15\ : cycloneiii_lcell_comb
-- Equation(s):
-- \lp|current_second[3]~15_combout\ = (\lp|current_second\(3) & (!\lp|current_second[2]~14\)) # (!\lp|current_second\(3) & ((\lp|current_second[2]~14\) # (GND)))
-- \lp|current_second[3]~16\ = CARRY((!\lp|current_second[2]~14\) # (!\lp|current_second\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \lp|current_second\(3),
	datad => VCC,
	cin => \lp|current_second[2]~14\,
	combout => \lp|current_second[3]~15_combout\,
	cout => \lp|current_second[3]~16\);

-- Location: LCCOMB_X20_Y22_N24
\lp|current_second[3]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \lp|current_second[3]~feeder_combout\ = \lp|current_second[3]~15_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \lp|current_second[3]~15_combout\,
	combout => \lp|current_second[3]~feeder_combout\);

-- Location: FF_X20_Y22_N25
\lp|current_second[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \lp|current_second[3]~feeder_combout\,
	sclr => \lp|process_0~0_combout\,
	ena => \lp|ALT_INV_current_second[8]~27_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \lp|current_second\(3));

-- Location: LCCOMB_X20_Y22_N8
\lp|current_second[4]~17\ : cycloneiii_lcell_comb
-- Equation(s):
-- \lp|current_second[4]~17_combout\ = (\lp|current_second\(4) & (\lp|current_second[3]~16\ $ (GND))) # (!\lp|current_second\(4) & (!\lp|current_second[3]~16\ & VCC))
-- \lp|current_second[4]~18\ = CARRY((\lp|current_second\(4) & !\lp|current_second[3]~16\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \lp|current_second\(4),
	datad => VCC,
	cin => \lp|current_second[3]~16\,
	combout => \lp|current_second[4]~17_combout\,
	cout => \lp|current_second[4]~18\);

-- Location: LCCOMB_X20_Y22_N18
\lp|current_second[4]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \lp|current_second[4]~feeder_combout\ = \lp|current_second[4]~17_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \lp|current_second[4]~17_combout\,
	combout => \lp|current_second[4]~feeder_combout\);

-- Location: FF_X20_Y22_N19
\lp|current_second[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \lp|current_second[4]~feeder_combout\,
	sclr => \lp|process_0~0_combout\,
	ena => \lp|ALT_INV_current_second[8]~27_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \lp|current_second\(4));

-- Location: LCCOMB_X20_Y22_N10
\lp|current_second[5]~19\ : cycloneiii_lcell_comb
-- Equation(s):
-- \lp|current_second[5]~19_combout\ = (\lp|current_second\(5) & (!\lp|current_second[4]~18\)) # (!\lp|current_second\(5) & ((\lp|current_second[4]~18\) # (GND)))
-- \lp|current_second[5]~20\ = CARRY((!\lp|current_second[4]~18\) # (!\lp|current_second\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \lp|current_second\(5),
	datad => VCC,
	cin => \lp|current_second[4]~18\,
	combout => \lp|current_second[5]~19_combout\,
	cout => \lp|current_second[5]~20\);

-- Location: FF_X22_Y22_N13
\lp|current_second[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \lp|current_second[5]~19_combout\,
	sclr => \lp|process_0~0_combout\,
	sload => VCC,
	ena => \lp|ALT_INV_current_second[8]~27_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \lp|current_second\(5));

-- Location: LCCOMB_X20_Y22_N12
\lp|current_second[6]~21\ : cycloneiii_lcell_comb
-- Equation(s):
-- \lp|current_second[6]~21_combout\ = (\lp|current_second\(6) & (\lp|current_second[5]~20\ $ (GND))) # (!\lp|current_second\(6) & (!\lp|current_second[5]~20\ & VCC))
-- \lp|current_second[6]~22\ = CARRY((\lp|current_second\(6) & !\lp|current_second[5]~20\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \lp|current_second\(6),
	datad => VCC,
	cin => \lp|current_second[5]~20\,
	combout => \lp|current_second[6]~21_combout\,
	cout => \lp|current_second[6]~22\);

-- Location: FF_X22_Y22_N15
\lp|current_second[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \lp|current_second[6]~21_combout\,
	sclr => \lp|process_0~0_combout\,
	sload => VCC,
	ena => \lp|ALT_INV_current_second[8]~27_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \lp|current_second\(6));

-- Location: LCCOMB_X20_Y22_N14
\lp|current_second[7]~23\ : cycloneiii_lcell_comb
-- Equation(s):
-- \lp|current_second[7]~23_combout\ = (\lp|current_second\(7) & (!\lp|current_second[6]~22\)) # (!\lp|current_second\(7) & ((\lp|current_second[6]~22\) # (GND)))
-- \lp|current_second[7]~24\ = CARRY((!\lp|current_second[6]~22\) # (!\lp|current_second\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \lp|current_second\(7),
	datad => VCC,
	cin => \lp|current_second[6]~22\,
	combout => \lp|current_second[7]~23_combout\,
	cout => \lp|current_second[7]~24\);

-- Location: FF_X22_Y22_N17
\lp|current_second[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \lp|current_second[7]~23_combout\,
	sclr => \lp|process_0~0_combout\,
	sload => VCC,
	ena => \lp|ALT_INV_current_second[8]~27_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \lp|current_second\(7));

-- Location: LCCOMB_X20_Y22_N16
\lp|current_second[8]~25\ : cycloneiii_lcell_comb
-- Equation(s):
-- \lp|current_second[8]~25_combout\ = \lp|current_second\(8) $ (!\lp|current_second[7]~24\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010110100101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \lp|current_second\(8),
	cin => \lp|current_second[7]~24\,
	combout => \lp|current_second[8]~25_combout\);

-- Location: FF_X22_Y22_N11
\lp|current_second[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \lp|current_second[8]~25_combout\,
	sclr => \lp|process_0~0_combout\,
	sload => VCC,
	ena => \lp|ALT_INV_current_second[8]~27_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \lp|current_second\(8));

-- Location: LCCOMB_X23_Y23_N24
\lp|Mod0|auto_generated|divider|divider|add_sub_3_result_int[1]~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \lp|Mod0|auto_generated|divider|divider|add_sub_3_result_int[1]~0_combout\ = \lp|current_second\(6) $ (VCC)
-- \lp|Mod0|auto_generated|divider|divider|add_sub_3_result_int[1]~1\ = CARRY(\lp|current_second\(6))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \lp|current_second\(6),
	datad => VCC,
	combout => \lp|Mod0|auto_generated|divider|divider|add_sub_3_result_int[1]~0_combout\,
	cout => \lp|Mod0|auto_generated|divider|divider|add_sub_3_result_int[1]~1\);

-- Location: LCCOMB_X23_Y23_N26
\lp|Mod0|auto_generated|divider|divider|add_sub_3_result_int[2]~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \lp|Mod0|auto_generated|divider|divider|add_sub_3_result_int[2]~2_combout\ = (\lp|current_second\(7) & (\lp|Mod0|auto_generated|divider|divider|add_sub_3_result_int[1]~1\ & VCC)) # (!\lp|current_second\(7) & 
-- (!\lp|Mod0|auto_generated|divider|divider|add_sub_3_result_int[1]~1\))
-- \lp|Mod0|auto_generated|divider|divider|add_sub_3_result_int[2]~3\ = CARRY((!\lp|current_second\(7) & !\lp|Mod0|auto_generated|divider|divider|add_sub_3_result_int[1]~1\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \lp|current_second\(7),
	datad => VCC,
	cin => \lp|Mod0|auto_generated|divider|divider|add_sub_3_result_int[1]~1\,
	combout => \lp|Mod0|auto_generated|divider|divider|add_sub_3_result_int[2]~2_combout\,
	cout => \lp|Mod0|auto_generated|divider|divider|add_sub_3_result_int[2]~3\);

-- Location: LCCOMB_X23_Y23_N28
\lp|Mod0|auto_generated|divider|divider|add_sub_3_result_int[3]~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \lp|Mod0|auto_generated|divider|divider|add_sub_3_result_int[3]~4_combout\ = (\lp|current_second\(8) & (\lp|Mod0|auto_generated|divider|divider|add_sub_3_result_int[2]~3\ $ (GND))) # (!\lp|current_second\(8) & 
-- (!\lp|Mod0|auto_generated|divider|divider|add_sub_3_result_int[2]~3\ & VCC))
-- \lp|Mod0|auto_generated|divider|divider|add_sub_3_result_int[3]~5\ = CARRY((\lp|current_second\(8) & !\lp|Mod0|auto_generated|divider|divider|add_sub_3_result_int[2]~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \lp|current_second\(8),
	datad => VCC,
	cin => \lp|Mod0|auto_generated|divider|divider|add_sub_3_result_int[2]~3\,
	combout => \lp|Mod0|auto_generated|divider|divider|add_sub_3_result_int[3]~4_combout\,
	cout => \lp|Mod0|auto_generated|divider|divider|add_sub_3_result_int[3]~5\);

-- Location: LCCOMB_X23_Y23_N30
\lp|Mod0|auto_generated|divider|divider|add_sub_3_result_int[4]~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \lp|Mod0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\ = !\lp|Mod0|auto_generated|divider|divider|add_sub_3_result_int[3]~5\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \lp|Mod0|auto_generated|divider|divider|add_sub_3_result_int[3]~5\,
	combout => \lp|Mod0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\);

-- Location: LCCOMB_X23_Y23_N0
\lp|Mod0|auto_generated|divider|divider|StageOut[30]~73\ : cycloneiii_lcell_comb
-- Equation(s):
-- \lp|Mod0|auto_generated|divider|divider|StageOut[30]~73_combout\ = (!\lp|Mod0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\ & \lp|Mod0|auto_generated|divider|divider|add_sub_3_result_int[3]~4_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \lp|Mod0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\,
	datad => \lp|Mod0|auto_generated|divider|divider|add_sub_3_result_int[3]~4_combout\,
	combout => \lp|Mod0|auto_generated|divider|divider|StageOut[30]~73_combout\);

-- Location: LCCOMB_X24_Y25_N16
\lp|Mod0|auto_generated|divider|divider|StageOut[30]~72\ : cycloneiii_lcell_comb
-- Equation(s):
-- \lp|Mod0|auto_generated|divider|divider|StageOut[30]~72_combout\ = (\lp|Mod0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\ & \lp|current_second\(8))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \lp|Mod0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\,
	datad => \lp|current_second\(8),
	combout => \lp|Mod0|auto_generated|divider|divider|StageOut[30]~72_combout\);

-- Location: LCCOMB_X24_Y25_N26
\lp|Mod0|auto_generated|divider|divider|StageOut[29]~74\ : cycloneiii_lcell_comb
-- Equation(s):
-- \lp|Mod0|auto_generated|divider|divider|StageOut[29]~74_combout\ = (\lp|Mod0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\ & \lp|current_second\(7))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \lp|Mod0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\,
	datad => \lp|current_second\(7),
	combout => \lp|Mod0|auto_generated|divider|divider|StageOut[29]~74_combout\);

-- Location: LCCOMB_X23_Y23_N22
\lp|Mod0|auto_generated|divider|divider|StageOut[29]~75\ : cycloneiii_lcell_comb
-- Equation(s):
-- \lp|Mod0|auto_generated|divider|divider|StageOut[29]~75_combout\ = (\lp|Mod0|auto_generated|divider|divider|add_sub_3_result_int[2]~2_combout\ & !\lp|Mod0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \lp|Mod0|auto_generated|divider|divider|add_sub_3_result_int[2]~2_combout\,
	datac => \lp|Mod0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\,
	combout => \lp|Mod0|auto_generated|divider|divider|StageOut[29]~75_combout\);

-- Location: LCCOMB_X23_Y23_N4
\lp|Mod0|auto_generated|divider|divider|StageOut[28]~77\ : cycloneiii_lcell_comb
-- Equation(s):
-- \lp|Mod0|auto_generated|divider|divider|StageOut[28]~77_combout\ = (!\lp|Mod0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\ & \lp|Mod0|auto_generated|divider|divider|add_sub_3_result_int[1]~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \lp|Mod0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\,
	datad => \lp|Mod0|auto_generated|divider|divider|add_sub_3_result_int[1]~0_combout\,
	combout => \lp|Mod0|auto_generated|divider|divider|StageOut[28]~77_combout\);

-- Location: LCCOMB_X24_Y25_N4
\lp|Mod0|auto_generated|divider|divider|StageOut[28]~76\ : cycloneiii_lcell_comb
-- Equation(s):
-- \lp|Mod0|auto_generated|divider|divider|StageOut[28]~76_combout\ = (\lp|current_second\(6) & \lp|Mod0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \lp|current_second\(6),
	datac => \lp|Mod0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\,
	combout => \lp|Mod0|auto_generated|divider|divider|StageOut[28]~76_combout\);

-- Location: LCCOMB_X24_Y25_N22
\lp|Mod0|auto_generated|divider|divider|StageOut[27]~79\ : cycloneiii_lcell_comb
-- Equation(s):
-- \lp|Mod0|auto_generated|divider|divider|StageOut[27]~79_combout\ = (!\lp|Mod0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\ & \lp|current_second\(5))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \lp|Mod0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\,
	datad => \lp|current_second\(5),
	combout => \lp|Mod0|auto_generated|divider|divider|StageOut[27]~79_combout\);

-- Location: LCCOMB_X24_Y25_N24
\lp|Mod0|auto_generated|divider|divider|StageOut[27]~78\ : cycloneiii_lcell_comb
-- Equation(s):
-- \lp|Mod0|auto_generated|divider|divider|StageOut[27]~78_combout\ = (\lp|Mod0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\ & \lp|current_second\(5))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \lp|Mod0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\,
	datad => \lp|current_second\(5),
	combout => \lp|Mod0|auto_generated|divider|divider|StageOut[27]~78_combout\);

-- Location: LCCOMB_X24_Y25_N6
\lp|Mod0|auto_generated|divider|divider|add_sub_4_result_int[1]~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \lp|Mod0|auto_generated|divider|divider|add_sub_4_result_int[1]~0_combout\ = (((\lp|Mod0|auto_generated|divider|divider|StageOut[27]~79_combout\) # (\lp|Mod0|auto_generated|divider|divider|StageOut[27]~78_combout\)))
-- \lp|Mod0|auto_generated|divider|divider|add_sub_4_result_int[1]~1\ = CARRY((\lp|Mod0|auto_generated|divider|divider|StageOut[27]~79_combout\) # (\lp|Mod0|auto_generated|divider|divider|StageOut[27]~78_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000111101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \lp|Mod0|auto_generated|divider|divider|StageOut[27]~79_combout\,
	datab => \lp|Mod0|auto_generated|divider|divider|StageOut[27]~78_combout\,
	datad => VCC,
	combout => \lp|Mod0|auto_generated|divider|divider|add_sub_4_result_int[1]~0_combout\,
	cout => \lp|Mod0|auto_generated|divider|divider|add_sub_4_result_int[1]~1\);

-- Location: LCCOMB_X24_Y25_N8
\lp|Mod0|auto_generated|divider|divider|add_sub_4_result_int[2]~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \lp|Mod0|auto_generated|divider|divider|add_sub_4_result_int[2]~2_combout\ = (\lp|Mod0|auto_generated|divider|divider|add_sub_4_result_int[1]~1\ & (((\lp|Mod0|auto_generated|divider|divider|StageOut[28]~77_combout\) # 
-- (\lp|Mod0|auto_generated|divider|divider|StageOut[28]~76_combout\)))) # (!\lp|Mod0|auto_generated|divider|divider|add_sub_4_result_int[1]~1\ & (!\lp|Mod0|auto_generated|divider|divider|StageOut[28]~77_combout\ & 
-- (!\lp|Mod0|auto_generated|divider|divider|StageOut[28]~76_combout\)))
-- \lp|Mod0|auto_generated|divider|divider|add_sub_4_result_int[2]~3\ = CARRY((!\lp|Mod0|auto_generated|divider|divider|StageOut[28]~77_combout\ & (!\lp|Mod0|auto_generated|divider|divider|StageOut[28]~76_combout\ & 
-- !\lp|Mod0|auto_generated|divider|divider|add_sub_4_result_int[1]~1\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \lp|Mod0|auto_generated|divider|divider|StageOut[28]~77_combout\,
	datab => \lp|Mod0|auto_generated|divider|divider|StageOut[28]~76_combout\,
	datad => VCC,
	cin => \lp|Mod0|auto_generated|divider|divider|add_sub_4_result_int[1]~1\,
	combout => \lp|Mod0|auto_generated|divider|divider|add_sub_4_result_int[2]~2_combout\,
	cout => \lp|Mod0|auto_generated|divider|divider|add_sub_4_result_int[2]~3\);

-- Location: LCCOMB_X24_Y25_N10
\lp|Mod0|auto_generated|divider|divider|add_sub_4_result_int[3]~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \lp|Mod0|auto_generated|divider|divider|add_sub_4_result_int[3]~4_combout\ = (\lp|Mod0|auto_generated|divider|divider|add_sub_4_result_int[2]~3\ & (((\lp|Mod0|auto_generated|divider|divider|StageOut[29]~74_combout\) # 
-- (\lp|Mod0|auto_generated|divider|divider|StageOut[29]~75_combout\)))) # (!\lp|Mod0|auto_generated|divider|divider|add_sub_4_result_int[2]~3\ & ((((\lp|Mod0|auto_generated|divider|divider|StageOut[29]~74_combout\) # 
-- (\lp|Mod0|auto_generated|divider|divider|StageOut[29]~75_combout\)))))
-- \lp|Mod0|auto_generated|divider|divider|add_sub_4_result_int[3]~5\ = CARRY((!\lp|Mod0|auto_generated|divider|divider|add_sub_4_result_int[2]~3\ & ((\lp|Mod0|auto_generated|divider|divider|StageOut[29]~74_combout\) # 
-- (\lp|Mod0|auto_generated|divider|divider|StageOut[29]~75_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \lp|Mod0|auto_generated|divider|divider|StageOut[29]~74_combout\,
	datab => \lp|Mod0|auto_generated|divider|divider|StageOut[29]~75_combout\,
	datad => VCC,
	cin => \lp|Mod0|auto_generated|divider|divider|add_sub_4_result_int[2]~3\,
	combout => \lp|Mod0|auto_generated|divider|divider|add_sub_4_result_int[3]~4_combout\,
	cout => \lp|Mod0|auto_generated|divider|divider|add_sub_4_result_int[3]~5\);

-- Location: LCCOMB_X24_Y25_N12
\lp|Mod0|auto_generated|divider|divider|add_sub_4_result_int[4]~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \lp|Mod0|auto_generated|divider|divider|add_sub_4_result_int[4]~6_combout\ = (\lp|Mod0|auto_generated|divider|divider|add_sub_4_result_int[3]~5\ & (((\lp|Mod0|auto_generated|divider|divider|StageOut[30]~73_combout\) # 
-- (\lp|Mod0|auto_generated|divider|divider|StageOut[30]~72_combout\)))) # (!\lp|Mod0|auto_generated|divider|divider|add_sub_4_result_int[3]~5\ & (!\lp|Mod0|auto_generated|divider|divider|StageOut[30]~73_combout\ & 
-- (!\lp|Mod0|auto_generated|divider|divider|StageOut[30]~72_combout\)))
-- \lp|Mod0|auto_generated|divider|divider|add_sub_4_result_int[4]~7\ = CARRY((!\lp|Mod0|auto_generated|divider|divider|StageOut[30]~73_combout\ & (!\lp|Mod0|auto_generated|divider|divider|StageOut[30]~72_combout\ & 
-- !\lp|Mod0|auto_generated|divider|divider|add_sub_4_result_int[3]~5\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \lp|Mod0|auto_generated|divider|divider|StageOut[30]~73_combout\,
	datab => \lp|Mod0|auto_generated|divider|divider|StageOut[30]~72_combout\,
	datad => VCC,
	cin => \lp|Mod0|auto_generated|divider|divider|add_sub_4_result_int[3]~5\,
	combout => \lp|Mod0|auto_generated|divider|divider|add_sub_4_result_int[4]~6_combout\,
	cout => \lp|Mod0|auto_generated|divider|divider|add_sub_4_result_int[4]~7\);

-- Location: LCCOMB_X24_Y25_N14
\lp|Mod0|auto_generated|divider|divider|add_sub_4_result_int[5]~8\ : cycloneiii_lcell_comb
-- Equation(s):
-- \lp|Mod0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\ = \lp|Mod0|auto_generated|divider|divider|add_sub_4_result_int[4]~7\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \lp|Mod0|auto_generated|divider|divider|add_sub_4_result_int[4]~7\,
	combout => \lp|Mod0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\);

-- Location: LCCOMB_X23_Y23_N10
\lp|Mod0|auto_generated|divider|divider|StageOut[40]~129\ : cycloneiii_lcell_comb
-- Equation(s):
-- \lp|Mod0|auto_generated|divider|divider|StageOut[40]~129_combout\ = (\lp|Mod0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\ & ((\lp|Mod0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\ & (\lp|current_second\(8))) # 
-- (!\lp|Mod0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\ & ((\lp|Mod0|auto_generated|divider|divider|add_sub_3_result_int[3]~4_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \lp|current_second\(8),
	datab => \lp|Mod0|auto_generated|divider|divider|add_sub_3_result_int[3]~4_combout\,
	datac => \lp|Mod0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\,
	datad => \lp|Mod0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\,
	combout => \lp|Mod0|auto_generated|divider|divider|StageOut[40]~129_combout\);

-- Location: LCCOMB_X24_Y23_N20
\lp|Mod0|auto_generated|divider|divider|StageOut[40]~80\ : cycloneiii_lcell_comb
-- Equation(s):
-- \lp|Mod0|auto_generated|divider|divider|StageOut[40]~80_combout\ = (!\lp|Mod0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\ & \lp|Mod0|auto_generated|divider|divider|add_sub_4_result_int[4]~6_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \lp|Mod0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\,
	datad => \lp|Mod0|auto_generated|divider|divider|add_sub_4_result_int[4]~6_combout\,
	combout => \lp|Mod0|auto_generated|divider|divider|StageOut[40]~80_combout\);

-- Location: LCCOMB_X23_Y23_N12
\lp|Mod0|auto_generated|divider|divider|StageOut[39]~130\ : cycloneiii_lcell_comb
-- Equation(s):
-- \lp|Mod0|auto_generated|divider|divider|StageOut[39]~130_combout\ = (\lp|Mod0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\ & ((\lp|Mod0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\ & ((\lp|current_second\(7)))) # 
-- (!\lp|Mod0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\ & (\lp|Mod0|auto_generated|divider|divider|add_sub_3_result_int[2]~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \lp|Mod0|auto_generated|divider|divider|add_sub_3_result_int[2]~2_combout\,
	datab => \lp|current_second\(7),
	datac => \lp|Mod0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\,
	datad => \lp|Mod0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\,
	combout => \lp|Mod0|auto_generated|divider|divider|StageOut[39]~130_combout\);

-- Location: LCCOMB_X24_Y23_N14
\lp|Mod0|auto_generated|divider|divider|StageOut[39]~81\ : cycloneiii_lcell_comb
-- Equation(s):
-- \lp|Mod0|auto_generated|divider|divider|StageOut[39]~81_combout\ = (\lp|Mod0|auto_generated|divider|divider|add_sub_4_result_int[3]~4_combout\ & !\lp|Mod0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \lp|Mod0|auto_generated|divider|divider|add_sub_4_result_int[3]~4_combout\,
	datac => \lp|Mod0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\,
	combout => \lp|Mod0|auto_generated|divider|divider|StageOut[39]~81_combout\);

-- Location: LCCOMB_X23_Y23_N14
\lp|Mod0|auto_generated|divider|divider|StageOut[38]~131\ : cycloneiii_lcell_comb
-- Equation(s):
-- \lp|Mod0|auto_generated|divider|divider|StageOut[38]~131_combout\ = (\lp|Mod0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\ & ((\lp|Mod0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\ & (\lp|current_second\(6))) # 
-- (!\lp|Mod0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\ & ((\lp|Mod0|auto_generated|divider|divider|add_sub_3_result_int[1]~0_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100010010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \lp|Mod0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\,
	datab => \lp|Mod0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\,
	datac => \lp|current_second\(6),
	datad => \lp|Mod0|auto_generated|divider|divider|add_sub_3_result_int[1]~0_combout\,
	combout => \lp|Mod0|auto_generated|divider|divider|StageOut[38]~131_combout\);

-- Location: LCCOMB_X24_Y23_N28
\lp|Mod0|auto_generated|divider|divider|StageOut[38]~82\ : cycloneiii_lcell_comb
-- Equation(s):
-- \lp|Mod0|auto_generated|divider|divider|StageOut[38]~82_combout\ = (!\lp|Mod0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\ & \lp|Mod0|auto_generated|divider|divider|add_sub_4_result_int[2]~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \lp|Mod0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\,
	datad => \lp|Mod0|auto_generated|divider|divider|add_sub_4_result_int[2]~2_combout\,
	combout => \lp|Mod0|auto_generated|divider|divider|StageOut[38]~82_combout\);

-- Location: LCCOMB_X24_Y23_N22
\lp|Mod0|auto_generated|divider|divider|StageOut[37]~83\ : cycloneiii_lcell_comb
-- Equation(s):
-- \lp|Mod0|auto_generated|divider|divider|StageOut[37]~83_combout\ = (\lp|Mod0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\ & \lp|current_second\(5))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \lp|Mod0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\,
	datad => \lp|current_second\(5),
	combout => \lp|Mod0|auto_generated|divider|divider|StageOut[37]~83_combout\);

-- Location: LCCOMB_X24_Y23_N24
\lp|Mod0|auto_generated|divider|divider|StageOut[37]~84\ : cycloneiii_lcell_comb
-- Equation(s):
-- \lp|Mod0|auto_generated|divider|divider|StageOut[37]~84_combout\ = (!\lp|Mod0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\ & \lp|Mod0|auto_generated|divider|divider|add_sub_4_result_int[1]~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \lp|Mod0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\,
	datad => \lp|Mod0|auto_generated|divider|divider|add_sub_4_result_int[1]~0_combout\,
	combout => \lp|Mod0|auto_generated|divider|divider|StageOut[37]~84_combout\);

-- Location: LCCOMB_X24_Y23_N30
\lp|Mod0|auto_generated|divider|divider|StageOut[36]~85\ : cycloneiii_lcell_comb
-- Equation(s):
-- \lp|Mod0|auto_generated|divider|divider|StageOut[36]~85_combout\ = (\lp|Mod0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\ & \lp|current_second\(4))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \lp|Mod0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\,
	datad => \lp|current_second\(4),
	combout => \lp|Mod0|auto_generated|divider|divider|StageOut[36]~85_combout\);

-- Location: LCCOMB_X24_Y23_N16
\lp|Mod0|auto_generated|divider|divider|StageOut[36]~86\ : cycloneiii_lcell_comb
-- Equation(s):
-- \lp|Mod0|auto_generated|divider|divider|StageOut[36]~86_combout\ = (!\lp|Mod0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\ & \lp|current_second\(4))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \lp|Mod0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\,
	datad => \lp|current_second\(4),
	combout => \lp|Mod0|auto_generated|divider|divider|StageOut[36]~86_combout\);

-- Location: LCCOMB_X24_Y23_N0
\lp|Mod0|auto_generated|divider|divider|add_sub_5_result_int[1]~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \lp|Mod0|auto_generated|divider|divider|add_sub_5_result_int[1]~0_combout\ = (((\lp|Mod0|auto_generated|divider|divider|StageOut[36]~85_combout\) # (\lp|Mod0|auto_generated|divider|divider|StageOut[36]~86_combout\)))
-- \lp|Mod0|auto_generated|divider|divider|add_sub_5_result_int[1]~1\ = CARRY((\lp|Mod0|auto_generated|divider|divider|StageOut[36]~85_combout\) # (\lp|Mod0|auto_generated|divider|divider|StageOut[36]~86_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000111101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \lp|Mod0|auto_generated|divider|divider|StageOut[36]~85_combout\,
	datab => \lp|Mod0|auto_generated|divider|divider|StageOut[36]~86_combout\,
	datad => VCC,
	combout => \lp|Mod0|auto_generated|divider|divider|add_sub_5_result_int[1]~0_combout\,
	cout => \lp|Mod0|auto_generated|divider|divider|add_sub_5_result_int[1]~1\);

-- Location: LCCOMB_X24_Y23_N2
\lp|Mod0|auto_generated|divider|divider|add_sub_5_result_int[2]~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \lp|Mod0|auto_generated|divider|divider|add_sub_5_result_int[2]~2_combout\ = (\lp|Mod0|auto_generated|divider|divider|add_sub_5_result_int[1]~1\ & (((\lp|Mod0|auto_generated|divider|divider|StageOut[37]~83_combout\) # 
-- (\lp|Mod0|auto_generated|divider|divider|StageOut[37]~84_combout\)))) # (!\lp|Mod0|auto_generated|divider|divider|add_sub_5_result_int[1]~1\ & (!\lp|Mod0|auto_generated|divider|divider|StageOut[37]~83_combout\ & 
-- (!\lp|Mod0|auto_generated|divider|divider|StageOut[37]~84_combout\)))
-- \lp|Mod0|auto_generated|divider|divider|add_sub_5_result_int[2]~3\ = CARRY((!\lp|Mod0|auto_generated|divider|divider|StageOut[37]~83_combout\ & (!\lp|Mod0|auto_generated|divider|divider|StageOut[37]~84_combout\ & 
-- !\lp|Mod0|auto_generated|divider|divider|add_sub_5_result_int[1]~1\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \lp|Mod0|auto_generated|divider|divider|StageOut[37]~83_combout\,
	datab => \lp|Mod0|auto_generated|divider|divider|StageOut[37]~84_combout\,
	datad => VCC,
	cin => \lp|Mod0|auto_generated|divider|divider|add_sub_5_result_int[1]~1\,
	combout => \lp|Mod0|auto_generated|divider|divider|add_sub_5_result_int[2]~2_combout\,
	cout => \lp|Mod0|auto_generated|divider|divider|add_sub_5_result_int[2]~3\);

-- Location: LCCOMB_X24_Y23_N4
\lp|Mod0|auto_generated|divider|divider|add_sub_5_result_int[3]~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \lp|Mod0|auto_generated|divider|divider|add_sub_5_result_int[3]~4_combout\ = (\lp|Mod0|auto_generated|divider|divider|add_sub_5_result_int[2]~3\ & (((\lp|Mod0|auto_generated|divider|divider|StageOut[38]~131_combout\) # 
-- (\lp|Mod0|auto_generated|divider|divider|StageOut[38]~82_combout\)))) # (!\lp|Mod0|auto_generated|divider|divider|add_sub_5_result_int[2]~3\ & ((((\lp|Mod0|auto_generated|divider|divider|StageOut[38]~131_combout\) # 
-- (\lp|Mod0|auto_generated|divider|divider|StageOut[38]~82_combout\)))))
-- \lp|Mod0|auto_generated|divider|divider|add_sub_5_result_int[3]~5\ = CARRY((!\lp|Mod0|auto_generated|divider|divider|add_sub_5_result_int[2]~3\ & ((\lp|Mod0|auto_generated|divider|divider|StageOut[38]~131_combout\) # 
-- (\lp|Mod0|auto_generated|divider|divider|StageOut[38]~82_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \lp|Mod0|auto_generated|divider|divider|StageOut[38]~131_combout\,
	datab => \lp|Mod0|auto_generated|divider|divider|StageOut[38]~82_combout\,
	datad => VCC,
	cin => \lp|Mod0|auto_generated|divider|divider|add_sub_5_result_int[2]~3\,
	combout => \lp|Mod0|auto_generated|divider|divider|add_sub_5_result_int[3]~4_combout\,
	cout => \lp|Mod0|auto_generated|divider|divider|add_sub_5_result_int[3]~5\);

-- Location: LCCOMB_X24_Y23_N6
\lp|Mod0|auto_generated|divider|divider|add_sub_5_result_int[4]~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \lp|Mod0|auto_generated|divider|divider|add_sub_5_result_int[4]~6_combout\ = (\lp|Mod0|auto_generated|divider|divider|add_sub_5_result_int[3]~5\ & (((\lp|Mod0|auto_generated|divider|divider|StageOut[39]~130_combout\) # 
-- (\lp|Mod0|auto_generated|divider|divider|StageOut[39]~81_combout\)))) # (!\lp|Mod0|auto_generated|divider|divider|add_sub_5_result_int[3]~5\ & (!\lp|Mod0|auto_generated|divider|divider|StageOut[39]~130_combout\ & 
-- (!\lp|Mod0|auto_generated|divider|divider|StageOut[39]~81_combout\)))
-- \lp|Mod0|auto_generated|divider|divider|add_sub_5_result_int[4]~7\ = CARRY((!\lp|Mod0|auto_generated|divider|divider|StageOut[39]~130_combout\ & (!\lp|Mod0|auto_generated|divider|divider|StageOut[39]~81_combout\ & 
-- !\lp|Mod0|auto_generated|divider|divider|add_sub_5_result_int[3]~5\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \lp|Mod0|auto_generated|divider|divider|StageOut[39]~130_combout\,
	datab => \lp|Mod0|auto_generated|divider|divider|StageOut[39]~81_combout\,
	datad => VCC,
	cin => \lp|Mod0|auto_generated|divider|divider|add_sub_5_result_int[3]~5\,
	combout => \lp|Mod0|auto_generated|divider|divider|add_sub_5_result_int[4]~6_combout\,
	cout => \lp|Mod0|auto_generated|divider|divider|add_sub_5_result_int[4]~7\);

-- Location: LCCOMB_X24_Y23_N8
\lp|Mod0|auto_generated|divider|divider|add_sub_5_result_int[5]~8\ : cycloneiii_lcell_comb
-- Equation(s):
-- \lp|Mod0|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\ = (\lp|Mod0|auto_generated|divider|divider|add_sub_5_result_int[4]~7\ & ((((\lp|Mod0|auto_generated|divider|divider|StageOut[40]~129_combout\) # 
-- (\lp|Mod0|auto_generated|divider|divider|StageOut[40]~80_combout\))))) # (!\lp|Mod0|auto_generated|divider|divider|add_sub_5_result_int[4]~7\ & ((\lp|Mod0|auto_generated|divider|divider|StageOut[40]~129_combout\) # 
-- ((\lp|Mod0|auto_generated|divider|divider|StageOut[40]~80_combout\) # (GND))))
-- \lp|Mod0|auto_generated|divider|divider|add_sub_5_result_int[5]~9\ = CARRY((\lp|Mod0|auto_generated|divider|divider|StageOut[40]~129_combout\) # ((\lp|Mod0|auto_generated|divider|divider|StageOut[40]~80_combout\) # 
-- (!\lp|Mod0|auto_generated|divider|divider|add_sub_5_result_int[4]~7\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001111011101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \lp|Mod0|auto_generated|divider|divider|StageOut[40]~129_combout\,
	datab => \lp|Mod0|auto_generated|divider|divider|StageOut[40]~80_combout\,
	datad => VCC,
	cin => \lp|Mod0|auto_generated|divider|divider|add_sub_5_result_int[4]~7\,
	combout => \lp|Mod0|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\,
	cout => \lp|Mod0|auto_generated|divider|divider|add_sub_5_result_int[5]~9\);

-- Location: LCCOMB_X24_Y23_N10
\lp|Mod0|auto_generated|divider|divider|add_sub_5_result_int[6]~10\ : cycloneiii_lcell_comb
-- Equation(s):
-- \lp|Mod0|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\ = !\lp|Mod0|auto_generated|divider|divider|add_sub_5_result_int[5]~9\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \lp|Mod0|auto_generated|divider|divider|add_sub_5_result_int[5]~9\,
	combout => \lp|Mod0|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\);

-- Location: LCCOMB_X24_Y23_N26
\lp|Mod0|auto_generated|divider|divider|StageOut[50]~117\ : cycloneiii_lcell_comb
-- Equation(s):
-- \lp|Mod0|auto_generated|divider|divider|StageOut[50]~117_combout\ = (\lp|Mod0|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\ & ((\lp|Mod0|auto_generated|divider|divider|StageOut[40]~129_combout\) # 
-- ((\lp|Mod0|auto_generated|divider|divider|add_sub_4_result_int[4]~6_combout\ & !\lp|Mod0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \lp|Mod0|auto_generated|divider|divider|StageOut[40]~129_combout\,
	datab => \lp|Mod0|auto_generated|divider|divider|add_sub_4_result_int[4]~6_combout\,
	datac => \lp|Mod0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\,
	datad => \lp|Mod0|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\,
	combout => \lp|Mod0|auto_generated|divider|divider|StageOut[50]~117_combout\);

-- Location: LCCOMB_X23_Y24_N8
\lp|Mod0|auto_generated|divider|divider|StageOut[50]~87\ : cycloneiii_lcell_comb
-- Equation(s):
-- \lp|Mod0|auto_generated|divider|divider|StageOut[50]~87_combout\ = (!\lp|Mod0|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\ & \lp|Mod0|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \lp|Mod0|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\,
	datac => \lp|Mod0|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\,
	combout => \lp|Mod0|auto_generated|divider|divider|StageOut[50]~87_combout\);

-- Location: LCCOMB_X23_Y24_N26
\lp|Mod0|auto_generated|divider|divider|StageOut[49]~88\ : cycloneiii_lcell_comb
-- Equation(s):
-- \lp|Mod0|auto_generated|divider|divider|StageOut[49]~88_combout\ = (!\lp|Mod0|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\ & \lp|Mod0|auto_generated|divider|divider|add_sub_5_result_int[4]~6_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \lp|Mod0|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\,
	datad => \lp|Mod0|auto_generated|divider|divider|add_sub_5_result_int[4]~6_combout\,
	combout => \lp|Mod0|auto_generated|divider|divider|StageOut[49]~88_combout\);

-- Location: LCCOMB_X24_Y23_N12
\lp|Mod0|auto_generated|divider|divider|StageOut[49]~118\ : cycloneiii_lcell_comb
-- Equation(s):
-- \lp|Mod0|auto_generated|divider|divider|StageOut[49]~118_combout\ = (\lp|Mod0|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\ & ((\lp|Mod0|auto_generated|divider|divider|StageOut[39]~130_combout\) # 
-- ((\lp|Mod0|auto_generated|divider|divider|add_sub_4_result_int[3]~4_combout\ & !\lp|Mod0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \lp|Mod0|auto_generated|divider|divider|add_sub_4_result_int[3]~4_combout\,
	datab => \lp|Mod0|auto_generated|divider|divider|StageOut[39]~130_combout\,
	datac => \lp|Mod0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\,
	datad => \lp|Mod0|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\,
	combout => \lp|Mod0|auto_generated|divider|divider|StageOut[49]~118_combout\);

-- Location: LCCOMB_X24_Y24_N20
\lp|Mod0|auto_generated|divider|divider|StageOut[48]~89\ : cycloneiii_lcell_comb
-- Equation(s):
-- \lp|Mod0|auto_generated|divider|divider|StageOut[48]~89_combout\ = (!\lp|Mod0|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\ & \lp|Mod0|auto_generated|divider|divider|add_sub_5_result_int[3]~4_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \lp|Mod0|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\,
	datad => \lp|Mod0|auto_generated|divider|divider|add_sub_5_result_int[3]~4_combout\,
	combout => \lp|Mod0|auto_generated|divider|divider|StageOut[48]~89_combout\);

-- Location: LCCOMB_X24_Y23_N18
\lp|Mod0|auto_generated|divider|divider|StageOut[48]~119\ : cycloneiii_lcell_comb
-- Equation(s):
-- \lp|Mod0|auto_generated|divider|divider|StageOut[48]~119_combout\ = (\lp|Mod0|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\ & ((\lp|Mod0|auto_generated|divider|divider|StageOut[38]~131_combout\) # 
-- ((\lp|Mod0|auto_generated|divider|divider|add_sub_4_result_int[2]~2_combout\ & !\lp|Mod0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \lp|Mod0|auto_generated|divider|divider|StageOut[38]~131_combout\,
	datab => \lp|Mod0|auto_generated|divider|divider|add_sub_4_result_int[2]~2_combout\,
	datac => \lp|Mod0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\,
	datad => \lp|Mod0|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\,
	combout => \lp|Mod0|auto_generated|divider|divider|StageOut[48]~119_combout\);

-- Location: LCCOMB_X24_Y24_N6
\lp|Mod0|auto_generated|divider|divider|StageOut[47]~132\ : cycloneiii_lcell_comb
-- Equation(s):
-- \lp|Mod0|auto_generated|divider|divider|StageOut[47]~132_combout\ = (\lp|Mod0|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\ & ((\lp|Mod0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\ & (\lp|current_second\(5))) # 
-- (!\lp|Mod0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\ & ((\lp|Mod0|auto_generated|divider|divider|add_sub_4_result_int[1]~0_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \lp|current_second\(5),
	datab => \lp|Mod0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\,
	datac => \lp|Mod0|auto_generated|divider|divider|add_sub_4_result_int[1]~0_combout\,
	datad => \lp|Mod0|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\,
	combout => \lp|Mod0|auto_generated|divider|divider|StageOut[47]~132_combout\);

-- Location: LCCOMB_X24_Y24_N22
\lp|Mod0|auto_generated|divider|divider|StageOut[47]~90\ : cycloneiii_lcell_comb
-- Equation(s):
-- \lp|Mod0|auto_generated|divider|divider|StageOut[47]~90_combout\ = (!\lp|Mod0|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\ & \lp|Mod0|auto_generated|divider|divider|add_sub_5_result_int[2]~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \lp|Mod0|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\,
	datad => \lp|Mod0|auto_generated|divider|divider|add_sub_5_result_int[2]~2_combout\,
	combout => \lp|Mod0|auto_generated|divider|divider|StageOut[47]~90_combout\);

-- Location: LCCOMB_X24_Y24_N4
\lp|Mod0|auto_generated|divider|divider|StageOut[46]~91\ : cycloneiii_lcell_comb
-- Equation(s):
-- \lp|Mod0|auto_generated|divider|divider|StageOut[46]~91_combout\ = (\lp|current_second\(4) & \lp|Mod0|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \lp|current_second\(4),
	datad => \lp|Mod0|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\,
	combout => \lp|Mod0|auto_generated|divider|divider|StageOut[46]~91_combout\);

-- Location: LCCOMB_X23_Y24_N28
\lp|Mod0|auto_generated|divider|divider|StageOut[46]~92\ : cycloneiii_lcell_comb
-- Equation(s):
-- \lp|Mod0|auto_generated|divider|divider|StageOut[46]~92_combout\ = (!\lp|Mod0|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\ & \lp|Mod0|auto_generated|divider|divider|add_sub_5_result_int[1]~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \lp|Mod0|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\,
	datad => \lp|Mod0|auto_generated|divider|divider|add_sub_5_result_int[1]~0_combout\,
	combout => \lp|Mod0|auto_generated|divider|divider|StageOut[46]~92_combout\);

-- Location: LCCOMB_X23_Y24_N6
\lp|Mod0|auto_generated|divider|divider|StageOut[45]~93\ : cycloneiii_lcell_comb
-- Equation(s):
-- \lp|Mod0|auto_generated|divider|divider|StageOut[45]~93_combout\ = (\lp|current_second\(3) & \lp|Mod0|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \lp|current_second\(3),
	datac => \lp|Mod0|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\,
	combout => \lp|Mod0|auto_generated|divider|divider|StageOut[45]~93_combout\);

-- Location: LCCOMB_X23_Y24_N4
\lp|Mod0|auto_generated|divider|divider|StageOut[45]~94\ : cycloneiii_lcell_comb
-- Equation(s):
-- \lp|Mod0|auto_generated|divider|divider|StageOut[45]~94_combout\ = (\lp|current_second\(3) & !\lp|Mod0|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \lp|current_second\(3),
	datac => \lp|Mod0|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\,
	combout => \lp|Mod0|auto_generated|divider|divider|StageOut[45]~94_combout\);

-- Location: LCCOMB_X23_Y24_N10
\lp|Mod0|auto_generated|divider|divider|add_sub_6_result_int[1]~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \lp|Mod0|auto_generated|divider|divider|add_sub_6_result_int[1]~0_combout\ = (((\lp|Mod0|auto_generated|divider|divider|StageOut[45]~93_combout\) # (\lp|Mod0|auto_generated|divider|divider|StageOut[45]~94_combout\)))
-- \lp|Mod0|auto_generated|divider|divider|add_sub_6_result_int[1]~1\ = CARRY((\lp|Mod0|auto_generated|divider|divider|StageOut[45]~93_combout\) # (\lp|Mod0|auto_generated|divider|divider|StageOut[45]~94_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000111101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \lp|Mod0|auto_generated|divider|divider|StageOut[45]~93_combout\,
	datab => \lp|Mod0|auto_generated|divider|divider|StageOut[45]~94_combout\,
	datad => VCC,
	combout => \lp|Mod0|auto_generated|divider|divider|add_sub_6_result_int[1]~0_combout\,
	cout => \lp|Mod0|auto_generated|divider|divider|add_sub_6_result_int[1]~1\);

-- Location: LCCOMB_X23_Y24_N12
\lp|Mod0|auto_generated|divider|divider|add_sub_6_result_int[2]~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \lp|Mod0|auto_generated|divider|divider|add_sub_6_result_int[2]~2_combout\ = (\lp|Mod0|auto_generated|divider|divider|add_sub_6_result_int[1]~1\ & (((\lp|Mod0|auto_generated|divider|divider|StageOut[46]~91_combout\) # 
-- (\lp|Mod0|auto_generated|divider|divider|StageOut[46]~92_combout\)))) # (!\lp|Mod0|auto_generated|divider|divider|add_sub_6_result_int[1]~1\ & (!\lp|Mod0|auto_generated|divider|divider|StageOut[46]~91_combout\ & 
-- (!\lp|Mod0|auto_generated|divider|divider|StageOut[46]~92_combout\)))
-- \lp|Mod0|auto_generated|divider|divider|add_sub_6_result_int[2]~3\ = CARRY((!\lp|Mod0|auto_generated|divider|divider|StageOut[46]~91_combout\ & (!\lp|Mod0|auto_generated|divider|divider|StageOut[46]~92_combout\ & 
-- !\lp|Mod0|auto_generated|divider|divider|add_sub_6_result_int[1]~1\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \lp|Mod0|auto_generated|divider|divider|StageOut[46]~91_combout\,
	datab => \lp|Mod0|auto_generated|divider|divider|StageOut[46]~92_combout\,
	datad => VCC,
	cin => \lp|Mod0|auto_generated|divider|divider|add_sub_6_result_int[1]~1\,
	combout => \lp|Mod0|auto_generated|divider|divider|add_sub_6_result_int[2]~2_combout\,
	cout => \lp|Mod0|auto_generated|divider|divider|add_sub_6_result_int[2]~3\);

-- Location: LCCOMB_X23_Y24_N14
\lp|Mod0|auto_generated|divider|divider|add_sub_6_result_int[3]~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \lp|Mod0|auto_generated|divider|divider|add_sub_6_result_int[3]~4_combout\ = (\lp|Mod0|auto_generated|divider|divider|add_sub_6_result_int[2]~3\ & (((\lp|Mod0|auto_generated|divider|divider|StageOut[47]~132_combout\) # 
-- (\lp|Mod0|auto_generated|divider|divider|StageOut[47]~90_combout\)))) # (!\lp|Mod0|auto_generated|divider|divider|add_sub_6_result_int[2]~3\ & ((((\lp|Mod0|auto_generated|divider|divider|StageOut[47]~132_combout\) # 
-- (\lp|Mod0|auto_generated|divider|divider|StageOut[47]~90_combout\)))))
-- \lp|Mod0|auto_generated|divider|divider|add_sub_6_result_int[3]~5\ = CARRY((!\lp|Mod0|auto_generated|divider|divider|add_sub_6_result_int[2]~3\ & ((\lp|Mod0|auto_generated|divider|divider|StageOut[47]~132_combout\) # 
-- (\lp|Mod0|auto_generated|divider|divider|StageOut[47]~90_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \lp|Mod0|auto_generated|divider|divider|StageOut[47]~132_combout\,
	datab => \lp|Mod0|auto_generated|divider|divider|StageOut[47]~90_combout\,
	datad => VCC,
	cin => \lp|Mod0|auto_generated|divider|divider|add_sub_6_result_int[2]~3\,
	combout => \lp|Mod0|auto_generated|divider|divider|add_sub_6_result_int[3]~4_combout\,
	cout => \lp|Mod0|auto_generated|divider|divider|add_sub_6_result_int[3]~5\);

-- Location: LCCOMB_X23_Y24_N16
\lp|Mod0|auto_generated|divider|divider|add_sub_6_result_int[4]~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \lp|Mod0|auto_generated|divider|divider|add_sub_6_result_int[4]~6_combout\ = (\lp|Mod0|auto_generated|divider|divider|add_sub_6_result_int[3]~5\ & (((\lp|Mod0|auto_generated|divider|divider|StageOut[48]~89_combout\) # 
-- (\lp|Mod0|auto_generated|divider|divider|StageOut[48]~119_combout\)))) # (!\lp|Mod0|auto_generated|divider|divider|add_sub_6_result_int[3]~5\ & (!\lp|Mod0|auto_generated|divider|divider|StageOut[48]~89_combout\ & 
-- (!\lp|Mod0|auto_generated|divider|divider|StageOut[48]~119_combout\)))
-- \lp|Mod0|auto_generated|divider|divider|add_sub_6_result_int[4]~7\ = CARRY((!\lp|Mod0|auto_generated|divider|divider|StageOut[48]~89_combout\ & (!\lp|Mod0|auto_generated|divider|divider|StageOut[48]~119_combout\ & 
-- !\lp|Mod0|auto_generated|divider|divider|add_sub_6_result_int[3]~5\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \lp|Mod0|auto_generated|divider|divider|StageOut[48]~89_combout\,
	datab => \lp|Mod0|auto_generated|divider|divider|StageOut[48]~119_combout\,
	datad => VCC,
	cin => \lp|Mod0|auto_generated|divider|divider|add_sub_6_result_int[3]~5\,
	combout => \lp|Mod0|auto_generated|divider|divider|add_sub_6_result_int[4]~6_combout\,
	cout => \lp|Mod0|auto_generated|divider|divider|add_sub_6_result_int[4]~7\);

-- Location: LCCOMB_X23_Y24_N18
\lp|Mod0|auto_generated|divider|divider|add_sub_6_result_int[5]~8\ : cycloneiii_lcell_comb
-- Equation(s):
-- \lp|Mod0|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\ = (\lp|Mod0|auto_generated|divider|divider|add_sub_6_result_int[4]~7\ & ((((\lp|Mod0|auto_generated|divider|divider|StageOut[49]~88_combout\) # 
-- (\lp|Mod0|auto_generated|divider|divider|StageOut[49]~118_combout\))))) # (!\lp|Mod0|auto_generated|divider|divider|add_sub_6_result_int[4]~7\ & ((\lp|Mod0|auto_generated|divider|divider|StageOut[49]~88_combout\) # 
-- ((\lp|Mod0|auto_generated|divider|divider|StageOut[49]~118_combout\) # (GND))))
-- \lp|Mod0|auto_generated|divider|divider|add_sub_6_result_int[5]~9\ = CARRY((\lp|Mod0|auto_generated|divider|divider|StageOut[49]~88_combout\) # ((\lp|Mod0|auto_generated|divider|divider|StageOut[49]~118_combout\) # 
-- (!\lp|Mod0|auto_generated|divider|divider|add_sub_6_result_int[4]~7\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001111011101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \lp|Mod0|auto_generated|divider|divider|StageOut[49]~88_combout\,
	datab => \lp|Mod0|auto_generated|divider|divider|StageOut[49]~118_combout\,
	datad => VCC,
	cin => \lp|Mod0|auto_generated|divider|divider|add_sub_6_result_int[4]~7\,
	combout => \lp|Mod0|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\,
	cout => \lp|Mod0|auto_generated|divider|divider|add_sub_6_result_int[5]~9\);

-- Location: LCCOMB_X23_Y24_N20
\lp|Mod0|auto_generated|divider|divider|add_sub_6_result_int[6]~10\ : cycloneiii_lcell_comb
-- Equation(s):
-- \lp|Mod0|auto_generated|divider|divider|add_sub_6_result_int[6]~10_combout\ = (\lp|Mod0|auto_generated|divider|divider|add_sub_6_result_int[5]~9\ & (((\lp|Mod0|auto_generated|divider|divider|StageOut[50]~117_combout\) # 
-- (\lp|Mod0|auto_generated|divider|divider|StageOut[50]~87_combout\)))) # (!\lp|Mod0|auto_generated|divider|divider|add_sub_6_result_int[5]~9\ & (!\lp|Mod0|auto_generated|divider|divider|StageOut[50]~117_combout\ & 
-- (!\lp|Mod0|auto_generated|divider|divider|StageOut[50]~87_combout\)))
-- \lp|Mod0|auto_generated|divider|divider|add_sub_6_result_int[6]~11\ = CARRY((!\lp|Mod0|auto_generated|divider|divider|StageOut[50]~117_combout\ & (!\lp|Mod0|auto_generated|divider|divider|StageOut[50]~87_combout\ & 
-- !\lp|Mod0|auto_generated|divider|divider|add_sub_6_result_int[5]~9\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \lp|Mod0|auto_generated|divider|divider|StageOut[50]~117_combout\,
	datab => \lp|Mod0|auto_generated|divider|divider|StageOut[50]~87_combout\,
	datad => VCC,
	cin => \lp|Mod0|auto_generated|divider|divider|add_sub_6_result_int[5]~9\,
	combout => \lp|Mod0|auto_generated|divider|divider|add_sub_6_result_int[6]~10_combout\,
	cout => \lp|Mod0|auto_generated|divider|divider|add_sub_6_result_int[6]~11\);

-- Location: LCCOMB_X23_Y24_N22
\lp|Mod0|auto_generated|divider|divider|add_sub_6_result_int[7]~12\ : cycloneiii_lcell_comb
-- Equation(s):
-- \lp|Mod0|auto_generated|divider|divider|add_sub_6_result_int[7]~12_combout\ = \lp|Mod0|auto_generated|divider|divider|add_sub_6_result_int[6]~11\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \lp|Mod0|auto_generated|divider|divider|add_sub_6_result_int[6]~11\,
	combout => \lp|Mod0|auto_generated|divider|divider|add_sub_6_result_int[7]~12_combout\);

-- Location: LCCOMB_X27_Y24_N2
\lp|Mod0|auto_generated|divider|divider|StageOut[60]~95\ : cycloneiii_lcell_comb
-- Equation(s):
-- \lp|Mod0|auto_generated|divider|divider|StageOut[60]~95_combout\ = (\lp|Mod0|auto_generated|divider|divider|add_sub_6_result_int[6]~10_combout\ & !\lp|Mod0|auto_generated|divider|divider|add_sub_6_result_int[7]~12_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \lp|Mod0|auto_generated|divider|divider|add_sub_6_result_int[6]~10_combout\,
	datad => \lp|Mod0|auto_generated|divider|divider|add_sub_6_result_int[7]~12_combout\,
	combout => \lp|Mod0|auto_generated|divider|divider|StageOut[60]~95_combout\);

-- Location: LCCOMB_X23_Y24_N24
\lp|Mod0|auto_generated|divider|divider|StageOut[60]~120\ : cycloneiii_lcell_comb
-- Equation(s):
-- \lp|Mod0|auto_generated|divider|divider|StageOut[60]~120_combout\ = (\lp|Mod0|auto_generated|divider|divider|add_sub_6_result_int[7]~12_combout\ & ((\lp|Mod0|auto_generated|divider|divider|StageOut[50]~117_combout\) # 
-- ((!\lp|Mod0|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\ & \lp|Mod0|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \lp|Mod0|auto_generated|divider|divider|add_sub_6_result_int[7]~12_combout\,
	datab => \lp|Mod0|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\,
	datac => \lp|Mod0|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\,
	datad => \lp|Mod0|auto_generated|divider|divider|StageOut[50]~117_combout\,
	combout => \lp|Mod0|auto_generated|divider|divider|StageOut[60]~120_combout\);

-- Location: LCCOMB_X23_Y24_N30
\lp|Mod0|auto_generated|divider|divider|StageOut[59]~121\ : cycloneiii_lcell_comb
-- Equation(s):
-- \lp|Mod0|auto_generated|divider|divider|StageOut[59]~121_combout\ = (\lp|Mod0|auto_generated|divider|divider|add_sub_6_result_int[7]~12_combout\ & ((\lp|Mod0|auto_generated|divider|divider|StageOut[49]~118_combout\) # 
-- ((!\lp|Mod0|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\ & \lp|Mod0|auto_generated|divider|divider|add_sub_5_result_int[4]~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000101010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \lp|Mod0|auto_generated|divider|divider|add_sub_6_result_int[7]~12_combout\,
	datab => \lp|Mod0|auto_generated|divider|divider|StageOut[49]~118_combout\,
	datac => \lp|Mod0|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\,
	datad => \lp|Mod0|auto_generated|divider|divider|add_sub_5_result_int[4]~6_combout\,
	combout => \lp|Mod0|auto_generated|divider|divider|StageOut[59]~121_combout\);

-- Location: LCCOMB_X26_Y24_N20
\lp|Mod0|auto_generated|divider|divider|StageOut[59]~96\ : cycloneiii_lcell_comb
-- Equation(s):
-- \lp|Mod0|auto_generated|divider|divider|StageOut[59]~96_combout\ = (!\lp|Mod0|auto_generated|divider|divider|add_sub_6_result_int[7]~12_combout\ & \lp|Mod0|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \lp|Mod0|auto_generated|divider|divider|add_sub_6_result_int[7]~12_combout\,
	datad => \lp|Mod0|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\,
	combout => \lp|Mod0|auto_generated|divider|divider|StageOut[59]~96_combout\);

-- Location: LCCOMB_X24_Y24_N26
\lp|Mod0|auto_generated|divider|divider|StageOut[58]~122\ : cycloneiii_lcell_comb
-- Equation(s):
-- \lp|Mod0|auto_generated|divider|divider|StageOut[58]~122_combout\ = (\lp|Mod0|auto_generated|divider|divider|add_sub_6_result_int[7]~12_combout\ & ((\lp|Mod0|auto_generated|divider|divider|StageOut[48]~119_combout\) # 
-- ((\lp|Mod0|auto_generated|divider|divider|add_sub_5_result_int[3]~4_combout\ & !\lp|Mod0|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \lp|Mod0|auto_generated|divider|divider|add_sub_5_result_int[3]~4_combout\,
	datab => \lp|Mod0|auto_generated|divider|divider|StageOut[48]~119_combout\,
	datac => \lp|Mod0|auto_generated|divider|divider|add_sub_6_result_int[7]~12_combout\,
	datad => \lp|Mod0|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\,
	combout => \lp|Mod0|auto_generated|divider|divider|StageOut[58]~122_combout\);

-- Location: LCCOMB_X27_Y24_N24
\lp|Mod0|auto_generated|divider|divider|StageOut[58]~97\ : cycloneiii_lcell_comb
-- Equation(s):
-- \lp|Mod0|auto_generated|divider|divider|StageOut[58]~97_combout\ = (\lp|Mod0|auto_generated|divider|divider|add_sub_6_result_int[4]~6_combout\ & !\lp|Mod0|auto_generated|divider|divider|add_sub_6_result_int[7]~12_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \lp|Mod0|auto_generated|divider|divider|add_sub_6_result_int[4]~6_combout\,
	datad => \lp|Mod0|auto_generated|divider|divider|add_sub_6_result_int[7]~12_combout\,
	combout => \lp|Mod0|auto_generated|divider|divider|StageOut[58]~97_combout\);

-- Location: LCCOMB_X24_Y24_N16
\lp|Mod0|auto_generated|divider|divider|StageOut[57]~123\ : cycloneiii_lcell_comb
-- Equation(s):
-- \lp|Mod0|auto_generated|divider|divider|StageOut[57]~123_combout\ = (\lp|Mod0|auto_generated|divider|divider|add_sub_6_result_int[7]~12_combout\ & ((\lp|Mod0|auto_generated|divider|divider|StageOut[47]~132_combout\) # 
-- ((\lp|Mod0|auto_generated|divider|divider|add_sub_5_result_int[2]~2_combout\ & !\lp|Mod0|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000011100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \lp|Mod0|auto_generated|divider|divider|StageOut[47]~132_combout\,
	datab => \lp|Mod0|auto_generated|divider|divider|add_sub_5_result_int[2]~2_combout\,
	datac => \lp|Mod0|auto_generated|divider|divider|add_sub_6_result_int[7]~12_combout\,
	datad => \lp|Mod0|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\,
	combout => \lp|Mod0|auto_generated|divider|divider|StageOut[57]~123_combout\);

-- Location: LCCOMB_X26_Y24_N18
\lp|Mod0|auto_generated|divider|divider|StageOut[57]~98\ : cycloneiii_lcell_comb
-- Equation(s):
-- \lp|Mod0|auto_generated|divider|divider|StageOut[57]~98_combout\ = (!\lp|Mod0|auto_generated|divider|divider|add_sub_6_result_int[7]~12_combout\ & \lp|Mod0|auto_generated|divider|divider|add_sub_6_result_int[3]~4_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \lp|Mod0|auto_generated|divider|divider|add_sub_6_result_int[7]~12_combout\,
	datad => \lp|Mod0|auto_generated|divider|divider|add_sub_6_result_int[3]~4_combout\,
	combout => \lp|Mod0|auto_generated|divider|divider|StageOut[57]~98_combout\);

-- Location: LCCOMB_X23_Y24_N0
\lp|Mod0|auto_generated|divider|divider|StageOut[56]~133\ : cycloneiii_lcell_comb
-- Equation(s):
-- \lp|Mod0|auto_generated|divider|divider|StageOut[56]~133_combout\ = (\lp|Mod0|auto_generated|divider|divider|add_sub_6_result_int[7]~12_combout\ & ((\lp|Mod0|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\ & (\lp|current_second\(4))) # 
-- (!\lp|Mod0|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\ & ((\lp|Mod0|auto_generated|divider|divider|add_sub_5_result_int[1]~0_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \lp|current_second\(4),
	datab => \lp|Mod0|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\,
	datac => \lp|Mod0|auto_generated|divider|divider|add_sub_6_result_int[7]~12_combout\,
	datad => \lp|Mod0|auto_generated|divider|divider|add_sub_5_result_int[1]~0_combout\,
	combout => \lp|Mod0|auto_generated|divider|divider|StageOut[56]~133_combout\);

-- Location: LCCOMB_X26_Y24_N28
\lp|Mod0|auto_generated|divider|divider|StageOut[56]~99\ : cycloneiii_lcell_comb
-- Equation(s):
-- \lp|Mod0|auto_generated|divider|divider|StageOut[56]~99_combout\ = (!\lp|Mod0|auto_generated|divider|divider|add_sub_6_result_int[7]~12_combout\ & \lp|Mod0|auto_generated|divider|divider|add_sub_6_result_int[2]~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \lp|Mod0|auto_generated|divider|divider|add_sub_6_result_int[7]~12_combout\,
	datad => \lp|Mod0|auto_generated|divider|divider|add_sub_6_result_int[2]~2_combout\,
	combout => \lp|Mod0|auto_generated|divider|divider|StageOut[56]~99_combout\);

-- Location: LCCOMB_X26_Y24_N26
\lp|Mod0|auto_generated|divider|divider|StageOut[55]~100\ : cycloneiii_lcell_comb
-- Equation(s):
-- \lp|Mod0|auto_generated|divider|divider|StageOut[55]~100_combout\ = (\lp|current_second\(3) & \lp|Mod0|auto_generated|divider|divider|add_sub_6_result_int[7]~12_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \lp|current_second\(3),
	datac => \lp|Mod0|auto_generated|divider|divider|add_sub_6_result_int[7]~12_combout\,
	combout => \lp|Mod0|auto_generated|divider|divider|StageOut[55]~100_combout\);

-- Location: LCCOMB_X26_Y24_N24
\lp|Mod0|auto_generated|divider|divider|StageOut[55]~101\ : cycloneiii_lcell_comb
-- Equation(s):
-- \lp|Mod0|auto_generated|divider|divider|StageOut[55]~101_combout\ = (!\lp|Mod0|auto_generated|divider|divider|add_sub_6_result_int[7]~12_combout\ & \lp|Mod0|auto_generated|divider|divider|add_sub_6_result_int[1]~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \lp|Mod0|auto_generated|divider|divider|add_sub_6_result_int[7]~12_combout\,
	datad => \lp|Mod0|auto_generated|divider|divider|add_sub_6_result_int[1]~0_combout\,
	combout => \lp|Mod0|auto_generated|divider|divider|StageOut[55]~101_combout\);

-- Location: LCCOMB_X27_Y24_N20
\lp|Mod0|auto_generated|divider|divider|StageOut[54]~103\ : cycloneiii_lcell_comb
-- Equation(s):
-- \lp|Mod0|auto_generated|divider|divider|StageOut[54]~103_combout\ = (\lp|current_second\(2) & !\lp|Mod0|auto_generated|divider|divider|add_sub_6_result_int[7]~12_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \lp|current_second\(2),
	datad => \lp|Mod0|auto_generated|divider|divider|add_sub_6_result_int[7]~12_combout\,
	combout => \lp|Mod0|auto_generated|divider|divider|StageOut[54]~103_combout\);

-- Location: LCCOMB_X27_Y24_N22
\lp|Mod0|auto_generated|divider|divider|StageOut[54]~102\ : cycloneiii_lcell_comb
-- Equation(s):
-- \lp|Mod0|auto_generated|divider|divider|StageOut[54]~102_combout\ = (\lp|current_second\(2) & \lp|Mod0|auto_generated|divider|divider|add_sub_6_result_int[7]~12_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \lp|current_second\(2),
	datad => \lp|Mod0|auto_generated|divider|divider|add_sub_6_result_int[7]~12_combout\,
	combout => \lp|Mod0|auto_generated|divider|divider|StageOut[54]~102_combout\);

-- Location: LCCOMB_X26_Y24_N0
\lp|Mod0|auto_generated|divider|divider|add_sub_7_result_int[1]~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \lp|Mod0|auto_generated|divider|divider|add_sub_7_result_int[1]~0_combout\ = (((\lp|Mod0|auto_generated|divider|divider|StageOut[54]~103_combout\) # (\lp|Mod0|auto_generated|divider|divider|StageOut[54]~102_combout\)))
-- \lp|Mod0|auto_generated|divider|divider|add_sub_7_result_int[1]~1\ = CARRY((\lp|Mod0|auto_generated|divider|divider|StageOut[54]~103_combout\) # (\lp|Mod0|auto_generated|divider|divider|StageOut[54]~102_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000111101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \lp|Mod0|auto_generated|divider|divider|StageOut[54]~103_combout\,
	datab => \lp|Mod0|auto_generated|divider|divider|StageOut[54]~102_combout\,
	datad => VCC,
	combout => \lp|Mod0|auto_generated|divider|divider|add_sub_7_result_int[1]~0_combout\,
	cout => \lp|Mod0|auto_generated|divider|divider|add_sub_7_result_int[1]~1\);

-- Location: LCCOMB_X26_Y24_N2
\lp|Mod0|auto_generated|divider|divider|add_sub_7_result_int[2]~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \lp|Mod0|auto_generated|divider|divider|add_sub_7_result_int[2]~2_combout\ = (\lp|Mod0|auto_generated|divider|divider|add_sub_7_result_int[1]~1\ & (((\lp|Mod0|auto_generated|divider|divider|StageOut[55]~100_combout\) # 
-- (\lp|Mod0|auto_generated|divider|divider|StageOut[55]~101_combout\)))) # (!\lp|Mod0|auto_generated|divider|divider|add_sub_7_result_int[1]~1\ & (!\lp|Mod0|auto_generated|divider|divider|StageOut[55]~100_combout\ & 
-- (!\lp|Mod0|auto_generated|divider|divider|StageOut[55]~101_combout\)))
-- \lp|Mod0|auto_generated|divider|divider|add_sub_7_result_int[2]~3\ = CARRY((!\lp|Mod0|auto_generated|divider|divider|StageOut[55]~100_combout\ & (!\lp|Mod0|auto_generated|divider|divider|StageOut[55]~101_combout\ & 
-- !\lp|Mod0|auto_generated|divider|divider|add_sub_7_result_int[1]~1\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \lp|Mod0|auto_generated|divider|divider|StageOut[55]~100_combout\,
	datab => \lp|Mod0|auto_generated|divider|divider|StageOut[55]~101_combout\,
	datad => VCC,
	cin => \lp|Mod0|auto_generated|divider|divider|add_sub_7_result_int[1]~1\,
	combout => \lp|Mod0|auto_generated|divider|divider|add_sub_7_result_int[2]~2_combout\,
	cout => \lp|Mod0|auto_generated|divider|divider|add_sub_7_result_int[2]~3\);

-- Location: LCCOMB_X26_Y24_N4
\lp|Mod0|auto_generated|divider|divider|add_sub_7_result_int[3]~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \lp|Mod0|auto_generated|divider|divider|add_sub_7_result_int[3]~4_combout\ = (\lp|Mod0|auto_generated|divider|divider|add_sub_7_result_int[2]~3\ & (((\lp|Mod0|auto_generated|divider|divider|StageOut[56]~133_combout\) # 
-- (\lp|Mod0|auto_generated|divider|divider|StageOut[56]~99_combout\)))) # (!\lp|Mod0|auto_generated|divider|divider|add_sub_7_result_int[2]~3\ & ((((\lp|Mod0|auto_generated|divider|divider|StageOut[56]~133_combout\) # 
-- (\lp|Mod0|auto_generated|divider|divider|StageOut[56]~99_combout\)))))
-- \lp|Mod0|auto_generated|divider|divider|add_sub_7_result_int[3]~5\ = CARRY((!\lp|Mod0|auto_generated|divider|divider|add_sub_7_result_int[2]~3\ & ((\lp|Mod0|auto_generated|divider|divider|StageOut[56]~133_combout\) # 
-- (\lp|Mod0|auto_generated|divider|divider|StageOut[56]~99_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \lp|Mod0|auto_generated|divider|divider|StageOut[56]~133_combout\,
	datab => \lp|Mod0|auto_generated|divider|divider|StageOut[56]~99_combout\,
	datad => VCC,
	cin => \lp|Mod0|auto_generated|divider|divider|add_sub_7_result_int[2]~3\,
	combout => \lp|Mod0|auto_generated|divider|divider|add_sub_7_result_int[3]~4_combout\,
	cout => \lp|Mod0|auto_generated|divider|divider|add_sub_7_result_int[3]~5\);

-- Location: LCCOMB_X26_Y24_N6
\lp|Mod0|auto_generated|divider|divider|add_sub_7_result_int[4]~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \lp|Mod0|auto_generated|divider|divider|add_sub_7_result_int[4]~6_combout\ = (\lp|Mod0|auto_generated|divider|divider|add_sub_7_result_int[3]~5\ & (((\lp|Mod0|auto_generated|divider|divider|StageOut[57]~123_combout\) # 
-- (\lp|Mod0|auto_generated|divider|divider|StageOut[57]~98_combout\)))) # (!\lp|Mod0|auto_generated|divider|divider|add_sub_7_result_int[3]~5\ & (!\lp|Mod0|auto_generated|divider|divider|StageOut[57]~123_combout\ & 
-- (!\lp|Mod0|auto_generated|divider|divider|StageOut[57]~98_combout\)))
-- \lp|Mod0|auto_generated|divider|divider|add_sub_7_result_int[4]~7\ = CARRY((!\lp|Mod0|auto_generated|divider|divider|StageOut[57]~123_combout\ & (!\lp|Mod0|auto_generated|divider|divider|StageOut[57]~98_combout\ & 
-- !\lp|Mod0|auto_generated|divider|divider|add_sub_7_result_int[3]~5\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \lp|Mod0|auto_generated|divider|divider|StageOut[57]~123_combout\,
	datab => \lp|Mod0|auto_generated|divider|divider|StageOut[57]~98_combout\,
	datad => VCC,
	cin => \lp|Mod0|auto_generated|divider|divider|add_sub_7_result_int[3]~5\,
	combout => \lp|Mod0|auto_generated|divider|divider|add_sub_7_result_int[4]~6_combout\,
	cout => \lp|Mod0|auto_generated|divider|divider|add_sub_7_result_int[4]~7\);

-- Location: LCCOMB_X26_Y24_N8
\lp|Mod0|auto_generated|divider|divider|add_sub_7_result_int[5]~8\ : cycloneiii_lcell_comb
-- Equation(s):
-- \lp|Mod0|auto_generated|divider|divider|add_sub_7_result_int[5]~8_combout\ = (\lp|Mod0|auto_generated|divider|divider|add_sub_7_result_int[4]~7\ & ((((\lp|Mod0|auto_generated|divider|divider|StageOut[58]~122_combout\) # 
-- (\lp|Mod0|auto_generated|divider|divider|StageOut[58]~97_combout\))))) # (!\lp|Mod0|auto_generated|divider|divider|add_sub_7_result_int[4]~7\ & ((\lp|Mod0|auto_generated|divider|divider|StageOut[58]~122_combout\) # 
-- ((\lp|Mod0|auto_generated|divider|divider|StageOut[58]~97_combout\) # (GND))))
-- \lp|Mod0|auto_generated|divider|divider|add_sub_7_result_int[5]~9\ = CARRY((\lp|Mod0|auto_generated|divider|divider|StageOut[58]~122_combout\) # ((\lp|Mod0|auto_generated|divider|divider|StageOut[58]~97_combout\) # 
-- (!\lp|Mod0|auto_generated|divider|divider|add_sub_7_result_int[4]~7\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001111011101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \lp|Mod0|auto_generated|divider|divider|StageOut[58]~122_combout\,
	datab => \lp|Mod0|auto_generated|divider|divider|StageOut[58]~97_combout\,
	datad => VCC,
	cin => \lp|Mod0|auto_generated|divider|divider|add_sub_7_result_int[4]~7\,
	combout => \lp|Mod0|auto_generated|divider|divider|add_sub_7_result_int[5]~8_combout\,
	cout => \lp|Mod0|auto_generated|divider|divider|add_sub_7_result_int[5]~9\);

-- Location: LCCOMB_X26_Y24_N10
\lp|Mod0|auto_generated|divider|divider|add_sub_7_result_int[6]~10\ : cycloneiii_lcell_comb
-- Equation(s):
-- \lp|Mod0|auto_generated|divider|divider|add_sub_7_result_int[6]~10_combout\ = (\lp|Mod0|auto_generated|divider|divider|add_sub_7_result_int[5]~9\ & (((\lp|Mod0|auto_generated|divider|divider|StageOut[59]~121_combout\) # 
-- (\lp|Mod0|auto_generated|divider|divider|StageOut[59]~96_combout\)))) # (!\lp|Mod0|auto_generated|divider|divider|add_sub_7_result_int[5]~9\ & (!\lp|Mod0|auto_generated|divider|divider|StageOut[59]~121_combout\ & 
-- (!\lp|Mod0|auto_generated|divider|divider|StageOut[59]~96_combout\)))
-- \lp|Mod0|auto_generated|divider|divider|add_sub_7_result_int[6]~11\ = CARRY((!\lp|Mod0|auto_generated|divider|divider|StageOut[59]~121_combout\ & (!\lp|Mod0|auto_generated|divider|divider|StageOut[59]~96_combout\ & 
-- !\lp|Mod0|auto_generated|divider|divider|add_sub_7_result_int[5]~9\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \lp|Mod0|auto_generated|divider|divider|StageOut[59]~121_combout\,
	datab => \lp|Mod0|auto_generated|divider|divider|StageOut[59]~96_combout\,
	datad => VCC,
	cin => \lp|Mod0|auto_generated|divider|divider|add_sub_7_result_int[5]~9\,
	combout => \lp|Mod0|auto_generated|divider|divider|add_sub_7_result_int[6]~10_combout\,
	cout => \lp|Mod0|auto_generated|divider|divider|add_sub_7_result_int[6]~11\);

-- Location: LCCOMB_X26_Y24_N12
\lp|Mod0|auto_generated|divider|divider|add_sub_7_result_int[7]~12\ : cycloneiii_lcell_comb
-- Equation(s):
-- \lp|Mod0|auto_generated|divider|divider|add_sub_7_result_int[7]~12_combout\ = (\lp|Mod0|auto_generated|divider|divider|add_sub_7_result_int[6]~11\ & ((((\lp|Mod0|auto_generated|divider|divider|StageOut[60]~95_combout\) # 
-- (\lp|Mod0|auto_generated|divider|divider|StageOut[60]~120_combout\))))) # (!\lp|Mod0|auto_generated|divider|divider|add_sub_7_result_int[6]~11\ & ((\lp|Mod0|auto_generated|divider|divider|StageOut[60]~95_combout\) # 
-- ((\lp|Mod0|auto_generated|divider|divider|StageOut[60]~120_combout\) # (GND))))
-- \lp|Mod0|auto_generated|divider|divider|add_sub_7_result_int[7]~13\ = CARRY((\lp|Mod0|auto_generated|divider|divider|StageOut[60]~95_combout\) # ((\lp|Mod0|auto_generated|divider|divider|StageOut[60]~120_combout\) # 
-- (!\lp|Mod0|auto_generated|divider|divider|add_sub_7_result_int[6]~11\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001111011101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \lp|Mod0|auto_generated|divider|divider|StageOut[60]~95_combout\,
	datab => \lp|Mod0|auto_generated|divider|divider|StageOut[60]~120_combout\,
	datad => VCC,
	cin => \lp|Mod0|auto_generated|divider|divider|add_sub_7_result_int[6]~11\,
	combout => \lp|Mod0|auto_generated|divider|divider|add_sub_7_result_int[7]~12_combout\,
	cout => \lp|Mod0|auto_generated|divider|divider|add_sub_7_result_int[7]~13\);

-- Location: LCCOMB_X26_Y24_N14
\lp|Mod0|auto_generated|divider|divider|add_sub_7_result_int[8]~14\ : cycloneiii_lcell_comb
-- Equation(s):
-- \lp|Mod0|auto_generated|divider|divider|add_sub_7_result_int[8]~14_combout\ = !\lp|Mod0|auto_generated|divider|divider|add_sub_7_result_int[7]~13\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \lp|Mod0|auto_generated|divider|divider|add_sub_7_result_int[7]~13\,
	combout => \lp|Mod0|auto_generated|divider|divider|add_sub_7_result_int[8]~14_combout\);

-- Location: LCCOMB_X26_Y24_N30
\lp|Mod0|auto_generated|divider|divider|StageOut[65]~134\ : cycloneiii_lcell_comb
-- Equation(s):
-- \lp|Mod0|auto_generated|divider|divider|StageOut[65]~134_combout\ = (\lp|Mod0|auto_generated|divider|divider|add_sub_7_result_int[8]~14_combout\ & ((\lp|Mod0|auto_generated|divider|divider|add_sub_6_result_int[7]~12_combout\ & (\lp|current_second\(3))) # 
-- (!\lp|Mod0|auto_generated|divider|divider|add_sub_6_result_int[7]~12_combout\ & ((\lp|Mod0|auto_generated|divider|divider|add_sub_6_result_int[1]~0_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \lp|Mod0|auto_generated|divider|divider|add_sub_6_result_int[7]~12_combout\,
	datab => \lp|current_second\(3),
	datac => \lp|Mod0|auto_generated|divider|divider|add_sub_7_result_int[8]~14_combout\,
	datad => \lp|Mod0|auto_generated|divider|divider|add_sub_6_result_int[1]~0_combout\,
	combout => \lp|Mod0|auto_generated|divider|divider|StageOut[65]~134_combout\);

-- Location: LCCOMB_X26_Y24_N22
\lp|Mod0|auto_generated|divider|divider|StageOut[65]~104\ : cycloneiii_lcell_comb
-- Equation(s):
-- \lp|Mod0|auto_generated|divider|divider|StageOut[65]~104_combout\ = (!\lp|Mod0|auto_generated|divider|divider|add_sub_7_result_int[8]~14_combout\ & \lp|Mod0|auto_generated|divider|divider|add_sub_7_result_int[2]~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \lp|Mod0|auto_generated|divider|divider|add_sub_7_result_int[8]~14_combout\,
	datad => \lp|Mod0|auto_generated|divider|divider|add_sub_7_result_int[2]~2_combout\,
	combout => \lp|Mod0|auto_generated|divider|divider|StageOut[65]~104_combout\);

-- Location: LCCOMB_X27_Y24_N12
\lp|Mod0|auto_generated|divider|divider|StageOut[64]~106\ : cycloneiii_lcell_comb
-- Equation(s):
-- \lp|Mod0|auto_generated|divider|divider|StageOut[64]~106_combout\ = (\lp|Mod0|auto_generated|divider|divider|add_sub_7_result_int[1]~0_combout\ & !\lp|Mod0|auto_generated|divider|divider|add_sub_7_result_int[8]~14_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \lp|Mod0|auto_generated|divider|divider|add_sub_7_result_int[1]~0_combout\,
	datad => \lp|Mod0|auto_generated|divider|divider|add_sub_7_result_int[8]~14_combout\,
	combout => \lp|Mod0|auto_generated|divider|divider|StageOut[64]~106_combout\);

-- Location: LCCOMB_X27_Y24_N6
\lp|Mod0|auto_generated|divider|divider|StageOut[64]~105\ : cycloneiii_lcell_comb
-- Equation(s):
-- \lp|Mod0|auto_generated|divider|divider|StageOut[64]~105_combout\ = (\lp|current_second\(2) & \lp|Mod0|auto_generated|divider|divider|add_sub_7_result_int[8]~14_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \lp|current_second\(2),
	datad => \lp|Mod0|auto_generated|divider|divider|add_sub_7_result_int[8]~14_combout\,
	combout => \lp|Mod0|auto_generated|divider|divider|StageOut[64]~105_combout\);

-- Location: LCCOMB_X28_Y24_N26
\lp|Mod0|auto_generated|divider|divider|StageOut[63]~108\ : cycloneiii_lcell_comb
-- Equation(s):
-- \lp|Mod0|auto_generated|divider|divider|StageOut[63]~108_combout\ = (\lp|current_second\(1) & !\lp|Mod0|auto_generated|divider|divider|add_sub_7_result_int[8]~14_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \lp|current_second\(1),
	datac => \lp|Mod0|auto_generated|divider|divider|add_sub_7_result_int[8]~14_combout\,
	combout => \lp|Mod0|auto_generated|divider|divider|StageOut[63]~108_combout\);

-- Location: LCCOMB_X28_Y24_N28
\lp|Mod0|auto_generated|divider|divider|StageOut[63]~107\ : cycloneiii_lcell_comb
-- Equation(s):
-- \lp|Mod0|auto_generated|divider|divider|StageOut[63]~107_combout\ = (\lp|current_second\(1) & \lp|Mod0|auto_generated|divider|divider|add_sub_7_result_int[8]~14_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \lp|current_second\(1),
	datac => \lp|Mod0|auto_generated|divider|divider|add_sub_7_result_int[8]~14_combout\,
	combout => \lp|Mod0|auto_generated|divider|divider|StageOut[63]~107_combout\);

-- Location: LCCOMB_X28_Y24_N0
\lp|Mod0|auto_generated|divider|divider|add_sub_8_result_int[1]~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \lp|Mod0|auto_generated|divider|divider|add_sub_8_result_int[1]~0_combout\ = (((\lp|Mod0|auto_generated|divider|divider|StageOut[63]~108_combout\) # (\lp|Mod0|auto_generated|divider|divider|StageOut[63]~107_combout\)))
-- \lp|Mod0|auto_generated|divider|divider|add_sub_8_result_int[1]~1\ = CARRY((\lp|Mod0|auto_generated|divider|divider|StageOut[63]~108_combout\) # (\lp|Mod0|auto_generated|divider|divider|StageOut[63]~107_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000111101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \lp|Mod0|auto_generated|divider|divider|StageOut[63]~108_combout\,
	datab => \lp|Mod0|auto_generated|divider|divider|StageOut[63]~107_combout\,
	datad => VCC,
	combout => \lp|Mod0|auto_generated|divider|divider|add_sub_8_result_int[1]~0_combout\,
	cout => \lp|Mod0|auto_generated|divider|divider|add_sub_8_result_int[1]~1\);

-- Location: LCCOMB_X28_Y24_N2
\lp|Mod0|auto_generated|divider|divider|add_sub_8_result_int[2]~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \lp|Mod0|auto_generated|divider|divider|add_sub_8_result_int[2]~2_combout\ = (\lp|Mod0|auto_generated|divider|divider|add_sub_8_result_int[1]~1\ & (((\lp|Mod0|auto_generated|divider|divider|StageOut[64]~106_combout\) # 
-- (\lp|Mod0|auto_generated|divider|divider|StageOut[64]~105_combout\)))) # (!\lp|Mod0|auto_generated|divider|divider|add_sub_8_result_int[1]~1\ & (!\lp|Mod0|auto_generated|divider|divider|StageOut[64]~106_combout\ & 
-- (!\lp|Mod0|auto_generated|divider|divider|StageOut[64]~105_combout\)))
-- \lp|Mod0|auto_generated|divider|divider|add_sub_8_result_int[2]~3\ = CARRY((!\lp|Mod0|auto_generated|divider|divider|StageOut[64]~106_combout\ & (!\lp|Mod0|auto_generated|divider|divider|StageOut[64]~105_combout\ & 
-- !\lp|Mod0|auto_generated|divider|divider|add_sub_8_result_int[1]~1\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \lp|Mod0|auto_generated|divider|divider|StageOut[64]~106_combout\,
	datab => \lp|Mod0|auto_generated|divider|divider|StageOut[64]~105_combout\,
	datad => VCC,
	cin => \lp|Mod0|auto_generated|divider|divider|add_sub_8_result_int[1]~1\,
	combout => \lp|Mod0|auto_generated|divider|divider|add_sub_8_result_int[2]~2_combout\,
	cout => \lp|Mod0|auto_generated|divider|divider|add_sub_8_result_int[2]~3\);

-- Location: LCCOMB_X28_Y24_N4
\lp|Mod0|auto_generated|divider|divider|add_sub_8_result_int[3]~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \lp|Mod0|auto_generated|divider|divider|add_sub_8_result_int[3]~4_combout\ = (\lp|Mod0|auto_generated|divider|divider|add_sub_8_result_int[2]~3\ & (((\lp|Mod0|auto_generated|divider|divider|StageOut[65]~134_combout\) # 
-- (\lp|Mod0|auto_generated|divider|divider|StageOut[65]~104_combout\)))) # (!\lp|Mod0|auto_generated|divider|divider|add_sub_8_result_int[2]~3\ & ((((\lp|Mod0|auto_generated|divider|divider|StageOut[65]~134_combout\) # 
-- (\lp|Mod0|auto_generated|divider|divider|StageOut[65]~104_combout\)))))
-- \lp|Mod0|auto_generated|divider|divider|add_sub_8_result_int[3]~5\ = CARRY((!\lp|Mod0|auto_generated|divider|divider|add_sub_8_result_int[2]~3\ & ((\lp|Mod0|auto_generated|divider|divider|StageOut[65]~134_combout\) # 
-- (\lp|Mod0|auto_generated|divider|divider|StageOut[65]~104_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \lp|Mod0|auto_generated|divider|divider|StageOut[65]~134_combout\,
	datab => \lp|Mod0|auto_generated|divider|divider|StageOut[65]~104_combout\,
	datad => VCC,
	cin => \lp|Mod0|auto_generated|divider|divider|add_sub_8_result_int[2]~3\,
	combout => \lp|Mod0|auto_generated|divider|divider|add_sub_8_result_int[3]~4_combout\,
	cout => \lp|Mod0|auto_generated|divider|divider|add_sub_8_result_int[3]~5\);

-- Location: LCCOMB_X27_Y24_N14
\lp|Mod0|auto_generated|divider|divider|StageOut[70]~109\ : cycloneiii_lcell_comb
-- Equation(s):
-- \lp|Mod0|auto_generated|divider|divider|StageOut[70]~109_combout\ = (\lp|Mod0|auto_generated|divider|divider|add_sub_7_result_int[7]~12_combout\ & !\lp|Mod0|auto_generated|divider|divider|add_sub_7_result_int[8]~14_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \lp|Mod0|auto_generated|divider|divider|add_sub_7_result_int[7]~12_combout\,
	datad => \lp|Mod0|auto_generated|divider|divider|add_sub_7_result_int[8]~14_combout\,
	combout => \lp|Mod0|auto_generated|divider|divider|StageOut[70]~109_combout\);

-- Location: LCCOMB_X27_Y24_N4
\lp|Mod0|auto_generated|divider|divider|StageOut[70]~124\ : cycloneiii_lcell_comb
-- Equation(s):
-- \lp|Mod0|auto_generated|divider|divider|StageOut[70]~124_combout\ = (\lp|Mod0|auto_generated|divider|divider|add_sub_7_result_int[8]~14_combout\ & ((\lp|Mod0|auto_generated|divider|divider|StageOut[60]~120_combout\) # 
-- ((\lp|Mod0|auto_generated|divider|divider|add_sub_6_result_int[6]~10_combout\ & !\lp|Mod0|auto_generated|divider|divider|add_sub_6_result_int[7]~12_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100010101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \lp|Mod0|auto_generated|divider|divider|add_sub_7_result_int[8]~14_combout\,
	datab => \lp|Mod0|auto_generated|divider|divider|StageOut[60]~120_combout\,
	datac => \lp|Mod0|auto_generated|divider|divider|add_sub_6_result_int[6]~10_combout\,
	datad => \lp|Mod0|auto_generated|divider|divider|add_sub_6_result_int[7]~12_combout\,
	combout => \lp|Mod0|auto_generated|divider|divider|StageOut[70]~124_combout\);

-- Location: LCCOMB_X27_Y24_N8
\lp|Mod0|auto_generated|divider|divider|StageOut[69]~110\ : cycloneiii_lcell_comb
-- Equation(s):
-- \lp|Mod0|auto_generated|divider|divider|StageOut[69]~110_combout\ = (\lp|Mod0|auto_generated|divider|divider|add_sub_7_result_int[6]~10_combout\ & !\lp|Mod0|auto_generated|divider|divider|add_sub_7_result_int[8]~14_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \lp|Mod0|auto_generated|divider|divider|add_sub_7_result_int[6]~10_combout\,
	datad => \lp|Mod0|auto_generated|divider|divider|add_sub_7_result_int[8]~14_combout\,
	combout => \lp|Mod0|auto_generated|divider|divider|StageOut[69]~110_combout\);

-- Location: LCCOMB_X26_Y24_N16
\lp|Mod0|auto_generated|divider|divider|StageOut[69]~125\ : cycloneiii_lcell_comb
-- Equation(s):
-- \lp|Mod0|auto_generated|divider|divider|StageOut[69]~125_combout\ = (\lp|Mod0|auto_generated|divider|divider|add_sub_7_result_int[8]~14_combout\ & ((\lp|Mod0|auto_generated|divider|divider|StageOut[59]~121_combout\) # 
-- ((!\lp|Mod0|auto_generated|divider|divider|add_sub_6_result_int[7]~12_combout\ & \lp|Mod0|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000110010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \lp|Mod0|auto_generated|divider|divider|StageOut[59]~121_combout\,
	datab => \lp|Mod0|auto_generated|divider|divider|add_sub_7_result_int[8]~14_combout\,
	datac => \lp|Mod0|auto_generated|divider|divider|add_sub_6_result_int[7]~12_combout\,
	datad => \lp|Mod0|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\,
	combout => \lp|Mod0|auto_generated|divider|divider|StageOut[69]~125_combout\);

-- Location: LCCOMB_X27_Y24_N10
\lp|Mod0|auto_generated|divider|divider|StageOut[68]~111\ : cycloneiii_lcell_comb
-- Equation(s):
-- \lp|Mod0|auto_generated|divider|divider|StageOut[68]~111_combout\ = (\lp|Mod0|auto_generated|divider|divider|add_sub_7_result_int[5]~8_combout\ & !\lp|Mod0|auto_generated|divider|divider|add_sub_7_result_int[8]~14_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \lp|Mod0|auto_generated|divider|divider|add_sub_7_result_int[5]~8_combout\,
	datad => \lp|Mod0|auto_generated|divider|divider|add_sub_7_result_int[8]~14_combout\,
	combout => \lp|Mod0|auto_generated|divider|divider|StageOut[68]~111_combout\);

-- Location: LCCOMB_X27_Y24_N18
\lp|Mod0|auto_generated|divider|divider|StageOut[68]~126\ : cycloneiii_lcell_comb
-- Equation(s):
-- \lp|Mod0|auto_generated|divider|divider|StageOut[68]~126_combout\ = (\lp|Mod0|auto_generated|divider|divider|add_sub_7_result_int[8]~14_combout\ & ((\lp|Mod0|auto_generated|divider|divider|StageOut[58]~122_combout\) # 
-- ((\lp|Mod0|auto_generated|divider|divider|add_sub_6_result_int[4]~6_combout\ & !\lp|Mod0|auto_generated|divider|divider|add_sub_6_result_int[7]~12_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \lp|Mod0|auto_generated|divider|divider|add_sub_6_result_int[4]~6_combout\,
	datab => \lp|Mod0|auto_generated|divider|divider|add_sub_6_result_int[7]~12_combout\,
	datac => \lp|Mod0|auto_generated|divider|divider|StageOut[58]~122_combout\,
	datad => \lp|Mod0|auto_generated|divider|divider|add_sub_7_result_int[8]~14_combout\,
	combout => \lp|Mod0|auto_generated|divider|divider|StageOut[68]~126_combout\);

-- Location: LCCOMB_X27_Y24_N16
\lp|Mod0|auto_generated|divider|divider|StageOut[67]~127\ : cycloneiii_lcell_comb
-- Equation(s):
-- \lp|Mod0|auto_generated|divider|divider|StageOut[67]~127_combout\ = (\lp|Mod0|auto_generated|divider|divider|add_sub_7_result_int[8]~14_combout\ & ((\lp|Mod0|auto_generated|divider|divider|StageOut[57]~123_combout\) # 
-- ((\lp|Mod0|auto_generated|divider|divider|add_sub_6_result_int[3]~4_combout\ & !\lp|Mod0|auto_generated|divider|divider|add_sub_6_result_int[7]~12_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100010101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \lp|Mod0|auto_generated|divider|divider|add_sub_7_result_int[8]~14_combout\,
	datab => \lp|Mod0|auto_generated|divider|divider|StageOut[57]~123_combout\,
	datac => \lp|Mod0|auto_generated|divider|divider|add_sub_6_result_int[3]~4_combout\,
	datad => \lp|Mod0|auto_generated|divider|divider|add_sub_6_result_int[7]~12_combout\,
	combout => \lp|Mod0|auto_generated|divider|divider|StageOut[67]~127_combout\);

-- Location: LCCOMB_X27_Y24_N28
\lp|Mod0|auto_generated|divider|divider|StageOut[67]~112\ : cycloneiii_lcell_comb
-- Equation(s):
-- \lp|Mod0|auto_generated|divider|divider|StageOut[67]~112_combout\ = (\lp|Mod0|auto_generated|divider|divider|add_sub_7_result_int[4]~6_combout\ & !\lp|Mod0|auto_generated|divider|divider|add_sub_7_result_int[8]~14_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \lp|Mod0|auto_generated|divider|divider|add_sub_7_result_int[4]~6_combout\,
	datad => \lp|Mod0|auto_generated|divider|divider|add_sub_7_result_int[8]~14_combout\,
	combout => \lp|Mod0|auto_generated|divider|divider|StageOut[67]~112_combout\);

-- Location: LCCOMB_X27_Y24_N26
\lp|Mod0|auto_generated|divider|divider|StageOut[66]~113\ : cycloneiii_lcell_comb
-- Equation(s):
-- \lp|Mod0|auto_generated|divider|divider|StageOut[66]~113_combout\ = (\lp|Mod0|auto_generated|divider|divider|add_sub_7_result_int[3]~4_combout\ & !\lp|Mod0|auto_generated|divider|divider|add_sub_7_result_int[8]~14_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \lp|Mod0|auto_generated|divider|divider|add_sub_7_result_int[3]~4_combout\,
	datad => \lp|Mod0|auto_generated|divider|divider|add_sub_7_result_int[8]~14_combout\,
	combout => \lp|Mod0|auto_generated|divider|divider|StageOut[66]~113_combout\);

-- Location: LCCOMB_X27_Y24_N30
\lp|Mod0|auto_generated|divider|divider|StageOut[66]~128\ : cycloneiii_lcell_comb
-- Equation(s):
-- \lp|Mod0|auto_generated|divider|divider|StageOut[66]~128_combout\ = (\lp|Mod0|auto_generated|divider|divider|add_sub_7_result_int[8]~14_combout\ & ((\lp|Mod0|auto_generated|divider|divider|StageOut[56]~133_combout\) # 
-- ((\lp|Mod0|auto_generated|divider|divider|add_sub_6_result_int[2]~2_combout\ & !\lp|Mod0|auto_generated|divider|divider|add_sub_6_result_int[7]~12_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \lp|Mod0|auto_generated|divider|divider|add_sub_6_result_int[2]~2_combout\,
	datab => \lp|Mod0|auto_generated|divider|divider|add_sub_6_result_int[7]~12_combout\,
	datac => \lp|Mod0|auto_generated|divider|divider|StageOut[56]~133_combout\,
	datad => \lp|Mod0|auto_generated|divider|divider|add_sub_7_result_int[8]~14_combout\,
	combout => \lp|Mod0|auto_generated|divider|divider|StageOut[66]~128_combout\);

-- Location: LCCOMB_X28_Y24_N6
\lp|Mod0|auto_generated|divider|divider|add_sub_8_result_int[4]~7\ : cycloneiii_lcell_comb
-- Equation(s):
-- \lp|Mod0|auto_generated|divider|divider|add_sub_8_result_int[4]~7_cout\ = CARRY((!\lp|Mod0|auto_generated|divider|divider|StageOut[66]~113_combout\ & (!\lp|Mod0|auto_generated|divider|divider|StageOut[66]~128_combout\ & 
-- !\lp|Mod0|auto_generated|divider|divider|add_sub_8_result_int[3]~5\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \lp|Mod0|auto_generated|divider|divider|StageOut[66]~113_combout\,
	datab => \lp|Mod0|auto_generated|divider|divider|StageOut[66]~128_combout\,
	datad => VCC,
	cin => \lp|Mod0|auto_generated|divider|divider|add_sub_8_result_int[3]~5\,
	cout => \lp|Mod0|auto_generated|divider|divider|add_sub_8_result_int[4]~7_cout\);

-- Location: LCCOMB_X28_Y24_N8
\lp|Mod0|auto_generated|divider|divider|add_sub_8_result_int[5]~9\ : cycloneiii_lcell_comb
-- Equation(s):
-- \lp|Mod0|auto_generated|divider|divider|add_sub_8_result_int[5]~9_cout\ = CARRY((\lp|Mod0|auto_generated|divider|divider|StageOut[67]~127_combout\) # ((\lp|Mod0|auto_generated|divider|divider|StageOut[67]~112_combout\) # 
-- (!\lp|Mod0|auto_generated|divider|divider|add_sub_8_result_int[4]~7_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \lp|Mod0|auto_generated|divider|divider|StageOut[67]~127_combout\,
	datab => \lp|Mod0|auto_generated|divider|divider|StageOut[67]~112_combout\,
	datad => VCC,
	cin => \lp|Mod0|auto_generated|divider|divider|add_sub_8_result_int[4]~7_cout\,
	cout => \lp|Mod0|auto_generated|divider|divider|add_sub_8_result_int[5]~9_cout\);

-- Location: LCCOMB_X28_Y24_N10
\lp|Mod0|auto_generated|divider|divider|add_sub_8_result_int[6]~11\ : cycloneiii_lcell_comb
-- Equation(s):
-- \lp|Mod0|auto_generated|divider|divider|add_sub_8_result_int[6]~11_cout\ = CARRY((!\lp|Mod0|auto_generated|divider|divider|StageOut[68]~111_combout\ & (!\lp|Mod0|auto_generated|divider|divider|StageOut[68]~126_combout\ & 
-- !\lp|Mod0|auto_generated|divider|divider|add_sub_8_result_int[5]~9_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \lp|Mod0|auto_generated|divider|divider|StageOut[68]~111_combout\,
	datab => \lp|Mod0|auto_generated|divider|divider|StageOut[68]~126_combout\,
	datad => VCC,
	cin => \lp|Mod0|auto_generated|divider|divider|add_sub_8_result_int[5]~9_cout\,
	cout => \lp|Mod0|auto_generated|divider|divider|add_sub_8_result_int[6]~11_cout\);

-- Location: LCCOMB_X28_Y24_N12
\lp|Mod0|auto_generated|divider|divider|add_sub_8_result_int[7]~13\ : cycloneiii_lcell_comb
-- Equation(s):
-- \lp|Mod0|auto_generated|divider|divider|add_sub_8_result_int[7]~13_cout\ = CARRY((\lp|Mod0|auto_generated|divider|divider|StageOut[69]~110_combout\) # ((\lp|Mod0|auto_generated|divider|divider|StageOut[69]~125_combout\) # 
-- (!\lp|Mod0|auto_generated|divider|divider|add_sub_8_result_int[6]~11_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \lp|Mod0|auto_generated|divider|divider|StageOut[69]~110_combout\,
	datab => \lp|Mod0|auto_generated|divider|divider|StageOut[69]~125_combout\,
	datad => VCC,
	cin => \lp|Mod0|auto_generated|divider|divider|add_sub_8_result_int[6]~11_cout\,
	cout => \lp|Mod0|auto_generated|divider|divider|add_sub_8_result_int[7]~13_cout\);

-- Location: LCCOMB_X28_Y24_N14
\lp|Mod0|auto_generated|divider|divider|add_sub_8_result_int[8]~15\ : cycloneiii_lcell_comb
-- Equation(s):
-- \lp|Mod0|auto_generated|divider|divider|add_sub_8_result_int[8]~15_cout\ = CARRY((!\lp|Mod0|auto_generated|divider|divider|StageOut[70]~109_combout\ & (!\lp|Mod0|auto_generated|divider|divider|StageOut[70]~124_combout\ & 
-- !\lp|Mod0|auto_generated|divider|divider|add_sub_8_result_int[7]~13_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \lp|Mod0|auto_generated|divider|divider|StageOut[70]~109_combout\,
	datab => \lp|Mod0|auto_generated|divider|divider|StageOut[70]~124_combout\,
	datad => VCC,
	cin => \lp|Mod0|auto_generated|divider|divider|add_sub_8_result_int[7]~13_cout\,
	cout => \lp|Mod0|auto_generated|divider|divider|add_sub_8_result_int[8]~15_cout\);

-- Location: LCCOMB_X28_Y24_N16
\lp|Mod0|auto_generated|divider|divider|add_sub_8_result_int[9]~16\ : cycloneiii_lcell_comb
-- Equation(s):
-- \lp|Mod0|auto_generated|divider|divider|add_sub_8_result_int[9]~16_combout\ = \lp|Mod0|auto_generated|divider|divider|add_sub_8_result_int[8]~15_cout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \lp|Mod0|auto_generated|divider|divider|add_sub_8_result_int[8]~15_cout\,
	combout => \lp|Mod0|auto_generated|divider|divider|add_sub_8_result_int[9]~16_combout\);

-- Location: LCCOMB_X28_Y24_N22
\lp|Mod0|auto_generated|divider|divider|StageOut[75]~114\ : cycloneiii_lcell_comb
-- Equation(s):
-- \lp|Mod0|auto_generated|divider|divider|StageOut[75]~114_combout\ = (\lp|Mod0|auto_generated|divider|divider|add_sub_8_result_int[9]~16_combout\ & ((\lp|Mod0|auto_generated|divider|divider|StageOut[65]~134_combout\) # 
-- ((\lp|Mod0|auto_generated|divider|divider|StageOut[65]~104_combout\)))) # (!\lp|Mod0|auto_generated|divider|divider|add_sub_8_result_int[9]~16_combout\ & (((\lp|Mod0|auto_generated|divider|divider|add_sub_8_result_int[3]~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \lp|Mod0|auto_generated|divider|divider|StageOut[65]~134_combout\,
	datab => \lp|Mod0|auto_generated|divider|divider|StageOut[65]~104_combout\,
	datac => \lp|Mod0|auto_generated|divider|divider|add_sub_8_result_int[3]~4_combout\,
	datad => \lp|Mod0|auto_generated|divider|divider|add_sub_8_result_int[9]~16_combout\,
	combout => \lp|Mod0|auto_generated|divider|divider|StageOut[75]~114_combout\);

-- Location: FF_X28_Y24_N23
\lp|t0[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \lp|Mod0|auto_generated|divider|divider|StageOut[75]~114_combout\,
	ena => \lp|ALT_INV_process_0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \lp|t0\(3));

-- Location: LCCOMB_X28_Y24_N24
\lp|Mod0|auto_generated|divider|divider|StageOut[74]~115\ : cycloneiii_lcell_comb
-- Equation(s):
-- \lp|Mod0|auto_generated|divider|divider|StageOut[74]~115_combout\ = (\lp|Mod0|auto_generated|divider|divider|add_sub_8_result_int[9]~16_combout\ & ((\lp|Mod0|auto_generated|divider|divider|StageOut[64]~106_combout\) # 
-- ((\lp|Mod0|auto_generated|divider|divider|StageOut[64]~105_combout\)))) # (!\lp|Mod0|auto_generated|divider|divider|add_sub_8_result_int[9]~16_combout\ & (((\lp|Mod0|auto_generated|divider|divider|add_sub_8_result_int[2]~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \lp|Mod0|auto_generated|divider|divider|StageOut[64]~106_combout\,
	datab => \lp|Mod0|auto_generated|divider|divider|add_sub_8_result_int[9]~16_combout\,
	datac => \lp|Mod0|auto_generated|divider|divider|StageOut[64]~105_combout\,
	datad => \lp|Mod0|auto_generated|divider|divider|add_sub_8_result_int[2]~2_combout\,
	combout => \lp|Mod0|auto_generated|divider|divider|StageOut[74]~115_combout\);

-- Location: FF_X28_Y24_N25
\lp|t0[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \lp|Mod0|auto_generated|divider|divider|StageOut[74]~115_combout\,
	ena => \lp|ALT_INV_process_0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \lp|t0\(2));

-- Location: LCCOMB_X28_Y24_N30
\lp|Mod0|auto_generated|divider|divider|StageOut[73]~116\ : cycloneiii_lcell_comb
-- Equation(s):
-- \lp|Mod0|auto_generated|divider|divider|StageOut[73]~116_combout\ = (\lp|Mod0|auto_generated|divider|divider|add_sub_8_result_int[9]~16_combout\ & ((\lp|current_second\(1)))) # (!\lp|Mod0|auto_generated|divider|divider|add_sub_8_result_int[9]~16_combout\ 
-- & (\lp|Mod0|auto_generated|divider|divider|add_sub_8_result_int[1]~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \lp|Mod0|auto_generated|divider|divider|add_sub_8_result_int[1]~0_combout\,
	datac => \lp|current_second\(1),
	datad => \lp|Mod0|auto_generated|divider|divider|add_sub_8_result_int[9]~16_combout\,
	combout => \lp|Mod0|auto_generated|divider|divider|StageOut[73]~116_combout\);

-- Location: FF_X28_Y24_N31
\lp|t0[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \lp|Mod0|auto_generated|divider|divider|StageOut[73]~116_combout\,
	ena => \lp|ALT_INV_process_0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \lp|t0\(1));

-- Location: LCCOMB_X28_Y25_N10
\rightspeed2|Mod0|auto_generated|divider|divider|op_24~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \rightspeed2|Mod0|auto_generated|divider|divider|op_24~0_combout\ = \lp|t0\(1) $ (VCC)
-- \rightspeed2|Mod0|auto_generated|divider|divider|op_24~1\ = CARRY(\lp|t0\(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \lp|t0\(1),
	datad => VCC,
	combout => \rightspeed2|Mod0|auto_generated|divider|divider|op_24~0_combout\,
	cout => \rightspeed2|Mod0|auto_generated|divider|divider|op_24~1\);

-- Location: LCCOMB_X28_Y25_N12
\rightspeed2|Mod0|auto_generated|divider|divider|op_24~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \rightspeed2|Mod0|auto_generated|divider|divider|op_24~2_combout\ = (\lp|t0\(2) & (\rightspeed2|Mod0|auto_generated|divider|divider|op_24~1\ & VCC)) # (!\lp|t0\(2) & (!\rightspeed2|Mod0|auto_generated|divider|divider|op_24~1\))
-- \rightspeed2|Mod0|auto_generated|divider|divider|op_24~3\ = CARRY((!\lp|t0\(2) & !\rightspeed2|Mod0|auto_generated|divider|divider|op_24~1\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \lp|t0\(2),
	datad => VCC,
	cin => \rightspeed2|Mod0|auto_generated|divider|divider|op_24~1\,
	combout => \rightspeed2|Mod0|auto_generated|divider|divider|op_24~2_combout\,
	cout => \rightspeed2|Mod0|auto_generated|divider|divider|op_24~3\);

-- Location: LCCOMB_X28_Y25_N14
\rightspeed2|Mod0|auto_generated|divider|divider|op_24~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \rightspeed2|Mod0|auto_generated|divider|divider|op_24~4_combout\ = (\lp|t0\(3) & (\rightspeed2|Mod0|auto_generated|divider|divider|op_24~3\ $ (GND))) # (!\lp|t0\(3) & (!\rightspeed2|Mod0|auto_generated|divider|divider|op_24~3\ & VCC))
-- \rightspeed2|Mod0|auto_generated|divider|divider|op_24~5\ = CARRY((\lp|t0\(3) & !\rightspeed2|Mod0|auto_generated|divider|divider|op_24~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \lp|t0\(3),
	datad => VCC,
	cin => \rightspeed2|Mod0|auto_generated|divider|divider|op_24~3\,
	combout => \rightspeed2|Mod0|auto_generated|divider|divider|op_24~4_combout\,
	cout => \rightspeed2|Mod0|auto_generated|divider|divider|op_24~5\);

-- Location: LCCOMB_X28_Y25_N16
\rightspeed2|Mod0|auto_generated|divider|divider|op_24~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \rightspeed2|Mod0|auto_generated|divider|divider|op_24~6_combout\ = !\rightspeed2|Mod0|auto_generated|divider|divider|op_24~5\
-- \rightspeed2|Mod0|auto_generated|divider|divider|op_24~7\ = CARRY(!\rightspeed2|Mod0|auto_generated|divider|divider|op_24~5\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => VCC,
	cin => \rightspeed2|Mod0|auto_generated|divider|divider|op_24~5\,
	combout => \rightspeed2|Mod0|auto_generated|divider|divider|op_24~6_combout\,
	cout => \rightspeed2|Mod0|auto_generated|divider|divider|op_24~7\);

-- Location: LCCOMB_X28_Y25_N18
\rightspeed2|Mod0|auto_generated|divider|divider|op_24~8\ : cycloneiii_lcell_comb
-- Equation(s):
-- \rightspeed2|Mod0|auto_generated|divider|divider|op_24~8_combout\ = \rightspeed2|Mod0|auto_generated|divider|divider|op_24~7\ $ (GND)
-- \rightspeed2|Mod0|auto_generated|divider|divider|op_24~9\ = CARRY(!\rightspeed2|Mod0|auto_generated|divider|divider|op_24~7\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => VCC,
	cin => \rightspeed2|Mod0|auto_generated|divider|divider|op_24~7\,
	combout => \rightspeed2|Mod0|auto_generated|divider|divider|op_24~8_combout\,
	cout => \rightspeed2|Mod0|auto_generated|divider|divider|op_24~9\);

-- Location: LCCOMB_X28_Y25_N20
\rightspeed2|Mod0|auto_generated|divider|divider|op_24~10\ : cycloneiii_lcell_comb
-- Equation(s):
-- \rightspeed2|Mod0|auto_generated|divider|divider|op_24~10_combout\ = !\rightspeed2|Mod0|auto_generated|divider|divider|op_24~9\
-- \rightspeed2|Mod0|auto_generated|divider|divider|op_24~11\ = CARRY(!\rightspeed2|Mod0|auto_generated|divider|divider|op_24~9\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => VCC,
	cin => \rightspeed2|Mod0|auto_generated|divider|divider|op_24~9\,
	combout => \rightspeed2|Mod0|auto_generated|divider|divider|op_24~10_combout\,
	cout => \rightspeed2|Mod0|auto_generated|divider|divider|op_24~11\);

-- Location: LCCOMB_X28_Y25_N22
\rightspeed2|Mod0|auto_generated|divider|divider|op_24~12\ : cycloneiii_lcell_comb
-- Equation(s):
-- \rightspeed2|Mod0|auto_generated|divider|divider|op_24~12_combout\ = \rightspeed2|Mod0|auto_generated|divider|divider|op_24~11\ $ (GND)
-- \rightspeed2|Mod0|auto_generated|divider|divider|op_24~13\ = CARRY(!\rightspeed2|Mod0|auto_generated|divider|divider|op_24~11\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => VCC,
	cin => \rightspeed2|Mod0|auto_generated|divider|divider|op_24~11\,
	combout => \rightspeed2|Mod0|auto_generated|divider|divider|op_24~12_combout\,
	cout => \rightspeed2|Mod0|auto_generated|divider|divider|op_24~13\);

-- Location: LCCOMB_X28_Y25_N24
\rightspeed2|Mod0|auto_generated|divider|divider|op_24~14\ : cycloneiii_lcell_comb
-- Equation(s):
-- \rightspeed2|Mod0|auto_generated|divider|divider|op_24~14_combout\ = !\rightspeed2|Mod0|auto_generated|divider|divider|op_24~13\
-- \rightspeed2|Mod0|auto_generated|divider|divider|op_24~15\ = CARRY(!\rightspeed2|Mod0|auto_generated|divider|divider|op_24~13\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => VCC,
	cin => \rightspeed2|Mod0|auto_generated|divider|divider|op_24~13\,
	combout => \rightspeed2|Mod0|auto_generated|divider|divider|op_24~14_combout\,
	cout => \rightspeed2|Mod0|auto_generated|divider|divider|op_24~15\);

-- Location: LCCOMB_X28_Y25_N26
\rightspeed2|Mod0|auto_generated|divider|divider|op_24~16\ : cycloneiii_lcell_comb
-- Equation(s):
-- \rightspeed2|Mod0|auto_generated|divider|divider|op_24~16_combout\ = \rightspeed2|Mod0|auto_generated|divider|divider|op_24~15\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \rightspeed2|Mod0|auto_generated|divider|divider|op_24~15\,
	combout => \rightspeed2|Mod0|auto_generated|divider|divider|op_24~16_combout\);

-- Location: LCCOMB_X28_Y25_N4
\rightspeed2|Equal9~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \rightspeed2|Equal9~0_combout\ = (\rightspeed2|Mod0|auto_generated|divider|divider|op_24~16_combout\) # ((!\rightspeed2|Mod0|auto_generated|divider|divider|op_24~12_combout\ & (!\rightspeed2|Mod0|auto_generated|divider|divider|op_24~14_combout\ & 
-- !\rightspeed2|Mod0|auto_generated|divider|divider|op_24~10_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rightspeed2|Mod0|auto_generated|divider|divider|op_24~12_combout\,
	datab => \rightspeed2|Mod0|auto_generated|divider|divider|op_24~14_combout\,
	datac => \rightspeed2|Mod0|auto_generated|divider|divider|op_24~16_combout\,
	datad => \rightspeed2|Mod0|auto_generated|divider|divider|op_24~10_combout\,
	combout => \rightspeed2|Equal9~0_combout\);

-- Location: LCCOMB_X28_Y25_N6
\rightspeed2|Equal9~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \rightspeed2|Equal9~1_combout\ = (\rightspeed2|Equal9~0_combout\ & ((\rightspeed2|Mod0|auto_generated|divider|divider|op_24~16_combout\) # ((!\rightspeed2|Mod0|auto_generated|divider|divider|op_24~8_combout\ & 
-- !\rightspeed2|Mod0|auto_generated|divider|divider|op_24~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rightspeed2|Mod0|auto_generated|divider|divider|op_24~16_combout\,
	datab => \rightspeed2|Mod0|auto_generated|divider|divider|op_24~8_combout\,
	datac => \rightspeed2|Equal9~0_combout\,
	datad => \rightspeed2|Mod0|auto_generated|divider|divider|op_24~6_combout\,
	combout => \rightspeed2|Equal9~1_combout\);

-- Location: LCCOMB_X27_Y25_N20
\rightspeed2|Equal1~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \rightspeed2|Equal1~0_combout\ = (\rightspeed2|Equal9~1_combout\ & ((\rightspeed2|Mod0|auto_generated|divider|divider|op_24~16_combout\ & (!\lp|t0\(3))) # (!\rightspeed2|Mod0|auto_generated|divider|divider|op_24~16_combout\ & 
-- ((!\rightspeed2|Mod0|auto_generated|divider|divider|op_24~4_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rightspeed2|Equal9~1_combout\,
	datab => \lp|t0\(3),
	datac => \rightspeed2|Mod0|auto_generated|divider|divider|op_24~4_combout\,
	datad => \rightspeed2|Mod0|auto_generated|divider|divider|op_24~16_combout\,
	combout => \rightspeed2|Equal1~0_combout\);

-- Location: LCCOMB_X28_Y25_N0
\rightspeed2|Mod0|auto_generated|divider|divider|StageOut[994]~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \rightspeed2|Mod0|auto_generated|divider|divider|StageOut[994]~0_combout\ = (\rightspeed2|Mod0|auto_generated|divider|divider|op_24~16_combout\ & (\lp|t0\(2))) # (!\rightspeed2|Mod0|auto_generated|divider|divider|op_24~16_combout\ & 
-- ((\rightspeed2|Mod0|auto_generated|divider|divider|op_24~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \lp|t0\(2),
	datac => \rightspeed2|Mod0|auto_generated|divider|divider|op_24~16_combout\,
	datad => \rightspeed2|Mod0|auto_generated|divider|divider|op_24~2_combout\,
	combout => \rightspeed2|Mod0|auto_generated|divider|divider|StageOut[994]~0_combout\);

-- Location: LCCOMB_X27_Y25_N18
\rightspeed2|Mod0|auto_generated|divider|divider|StageOut[993]~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \rightspeed2|Mod0|auto_generated|divider|divider|StageOut[993]~1_combout\ = (\rightspeed2|Mod0|auto_generated|divider|divider|op_24~16_combout\ & (\lp|t0\(1))) # (!\rightspeed2|Mod0|auto_generated|divider|divider|op_24~16_combout\ & 
-- ((\rightspeed2|Mod0|auto_generated|divider|divider|op_24~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \lp|t0\(1),
	datac => \rightspeed2|Mod0|auto_generated|divider|divider|op_24~0_combout\,
	datad => \rightspeed2|Mod0|auto_generated|divider|divider|op_24~16_combout\,
	combout => \rightspeed2|Mod0|auto_generated|divider|divider|StageOut[993]~1_combout\);

-- Location: LCCOMB_X27_Y25_N28
\rightspeed2|seg[0]\ : cycloneiii_lcell_comb
-- Equation(s):
-- \rightspeed2|seg\(0) = (\rightspeed2|Equal1~0_combout\ & (!\rightspeed2|Mod0|auto_generated|divider|divider|StageOut[993]~1_combout\ & (\lp|t0\(0) $ (!\rightspeed2|Mod0|auto_generated|divider|divider|StageOut[994]~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \lp|t0\(0),
	datab => \rightspeed2|Equal1~0_combout\,
	datac => \rightspeed2|Mod0|auto_generated|divider|divider|StageOut[994]~0_combout\,
	datad => \rightspeed2|Mod0|auto_generated|divider|divider|StageOut[993]~1_combout\,
	combout => \rightspeed2|seg\(0));

-- Location: LCCOMB_X27_Y25_N30
\rightspeed2|WideOr4~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \rightspeed2|WideOr4~0_combout\ = (\rightspeed2|Equal1~0_combout\ & (\rightspeed2|Mod0|auto_generated|divider|divider|StageOut[994]~0_combout\ & (\lp|t0\(0) $ (!\rightspeed2|Mod0|auto_generated|divider|divider|StageOut[993]~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \lp|t0\(0),
	datab => \rightspeed2|Equal1~0_combout\,
	datac => \rightspeed2|Mod0|auto_generated|divider|divider|StageOut[994]~0_combout\,
	datad => \rightspeed2|Mod0|auto_generated|divider|divider|StageOut[993]~1_combout\,
	combout => \rightspeed2|WideOr4~0_combout\);

-- Location: LCCOMB_X28_Y25_N30
\rightspeed2|WideNor0~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \rightspeed2|WideNor0~0_combout\ = (\rightspeed2|Mod0|auto_generated|divider|divider|op_24~16_combout\ & (((!\lp|t0\(1) & !\lp|t0\(2))) # (!\lp|t0\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000001110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \lp|t0\(1),
	datab => \lp|t0\(3),
	datac => \rightspeed2|Mod0|auto_generated|divider|divider|op_24~16_combout\,
	datad => \lp|t0\(2),
	combout => \rightspeed2|WideNor0~0_combout\);

-- Location: LCCOMB_X28_Y25_N8
\rightspeed2|WideNor0~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \rightspeed2|WideNor0~2_combout\ = (!\rightspeed2|Mod0|auto_generated|divider|divider|op_24~12_combout\ & (!\rightspeed2|Mod0|auto_generated|divider|divider|op_24~8_combout\ & (!\rightspeed2|Mod0|auto_generated|divider|divider|op_24~16_combout\ & 
-- !\rightspeed2|Mod0|auto_generated|divider|divider|op_24~10_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rightspeed2|Mod0|auto_generated|divider|divider|op_24~12_combout\,
	datab => \rightspeed2|Mod0|auto_generated|divider|divider|op_24~8_combout\,
	datac => \rightspeed2|Mod0|auto_generated|divider|divider|op_24~16_combout\,
	datad => \rightspeed2|Mod0|auto_generated|divider|divider|op_24~10_combout\,
	combout => \rightspeed2|WideNor0~2_combout\);

-- Location: LCCOMB_X28_Y25_N28
\rightspeed2|WideNor0~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \rightspeed2|WideNor0~1_combout\ = (!\rightspeed2|Mod0|auto_generated|divider|divider|op_24~14_combout\ & (((!\rightspeed2|Mod0|auto_generated|divider|divider|op_24~2_combout\ & !\rightspeed2|Mod0|auto_generated|divider|divider|op_24~0_combout\)) # 
-- (!\rightspeed2|Mod0|auto_generated|divider|divider|op_24~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001100010011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rightspeed2|Mod0|auto_generated|divider|divider|op_24~2_combout\,
	datab => \rightspeed2|Mod0|auto_generated|divider|divider|op_24~14_combout\,
	datac => \rightspeed2|Mod0|auto_generated|divider|divider|op_24~4_combout\,
	datad => \rightspeed2|Mod0|auto_generated|divider|divider|op_24~0_combout\,
	combout => \rightspeed2|WideNor0~1_combout\);

-- Location: LCCOMB_X28_Y25_N2
\rightspeed2|WideNor0~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \rightspeed2|WideNor0~3_combout\ = (\rightspeed2|WideNor0~0_combout\) # ((!\rightspeed2|Mod0|auto_generated|divider|divider|op_24~6_combout\ & (\rightspeed2|WideNor0~2_combout\ & \rightspeed2|WideNor0~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rightspeed2|WideNor0~0_combout\,
	datab => \rightspeed2|Mod0|auto_generated|divider|divider|op_24~6_combout\,
	datac => \rightspeed2|WideNor0~2_combout\,
	datad => \rightspeed2|WideNor0~1_combout\,
	combout => \rightspeed2|WideNor0~3_combout\);

-- Location: LCCOMB_X27_Y25_N24
\rightspeed2|WideOr4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \rightspeed2|WideOr4~combout\ = (\rightspeed2|WideOr4~0_combout\) # (!\rightspeed2|WideNor0~3_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \rightspeed2|WideOr4~0_combout\,
	datad => \rightspeed2|WideNor0~3_combout\,
	combout => \rightspeed2|WideOr4~combout\);

-- Location: LCCOMB_X27_Y25_N2
\rightspeed2|Equal1~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \rightspeed2|Equal1~1_combout\ = (\lp|t0\(0) & \rightspeed2|Equal1~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \lp|t0\(0),
	datad => \rightspeed2|Equal1~0_combout\,
	combout => \rightspeed2|Equal1~1_combout\);

-- Location: LCCOMB_X27_Y25_N0
\rightspeed2|seg[2]\ : cycloneiii_lcell_comb
-- Equation(s):
-- \rightspeed2|seg\(2) = ((\rightspeed2|Mod0|auto_generated|divider|divider|StageOut[993]~1_combout\ & (!\rightspeed2|Mod0|auto_generated|divider|divider|StageOut[994]~0_combout\ & \rightspeed2|Equal1~1_combout\))) # (!\rightspeed2|WideNor0~3_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101110101010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rightspeed2|WideNor0~3_combout\,
	datab => \rightspeed2|Mod0|auto_generated|divider|divider|StageOut[993]~1_combout\,
	datac => \rightspeed2|Mod0|auto_generated|divider|divider|StageOut[994]~0_combout\,
	datad => \rightspeed2|Equal1~1_combout\,
	combout => \rightspeed2|seg\(2));

-- Location: LCCOMB_X27_Y25_N26
\rightspeed2|Equal2~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \rightspeed2|Equal2~0_combout\ = (!\lp|t0\(0) & \rightspeed2|Equal1~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \lp|t0\(0),
	datad => \rightspeed2|Equal1~0_combout\,
	combout => \rightspeed2|Equal2~0_combout\);

-- Location: LCCOMB_X27_Y25_N12
\rightspeed2|WideOr0~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \rightspeed2|WideOr0~0_combout\ = (\rightspeed2|WideNor0~3_combout\ & ((\rightspeed2|Mod0|auto_generated|divider|divider|StageOut[993]~1_combout\ $ (\rightspeed2|Mod0|auto_generated|divider|divider|StageOut[994]~0_combout\)) # 
-- (!\rightspeed2|Equal2~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111110100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rightspeed2|Equal2~0_combout\,
	datab => \rightspeed2|Mod0|auto_generated|divider|divider|StageOut[993]~1_combout\,
	datac => \rightspeed2|Mod0|auto_generated|divider|divider|StageOut[994]~0_combout\,
	datad => \rightspeed2|WideNor0~3_combout\,
	combout => \rightspeed2|WideOr0~0_combout\);

-- Location: LCCOMB_X27_Y25_N14
\rightspeed2|WideOr3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \rightspeed2|WideOr3~combout\ = ((!\rightspeed2|Mod0|auto_generated|divider|divider|StageOut[993]~1_combout\ & (\rightspeed2|Mod0|auto_generated|divider|divider|StageOut[994]~0_combout\ & \rightspeed2|Equal1~1_combout\))) # 
-- (!\rightspeed2|WideOr0~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111010101010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rightspeed2|WideOr0~0_combout\,
	datab => \rightspeed2|Mod0|auto_generated|divider|divider|StageOut[993]~1_combout\,
	datac => \rightspeed2|Mod0|auto_generated|divider|divider|StageOut[994]~0_combout\,
	datad => \rightspeed2|Equal1~1_combout\,
	combout => \rightspeed2|WideOr3~combout\);

-- Location: LCCOMB_X27_Y25_N8
\rightspeed2|Equal9~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \rightspeed2|Equal9~2_combout\ = (\lp|t0\(0) & ((\rightspeed2|Mod0|auto_generated|divider|divider|op_24~16_combout\ & (\lp|t0\(3))) # (!\rightspeed2|Mod0|auto_generated|divider|divider|op_24~16_combout\ & 
-- ((\rightspeed2|Mod0|auto_generated|divider|divider|op_24~4_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \lp|t0\(0),
	datab => \lp|t0\(3),
	datac => \rightspeed2|Mod0|auto_generated|divider|divider|op_24~4_combout\,
	datad => \rightspeed2|Mod0|auto_generated|divider|divider|op_24~16_combout\,
	combout => \rightspeed2|Equal9~2_combout\);

-- Location: LCCOMB_X27_Y25_N6
\rightspeed2|Equal9~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \rightspeed2|Equal9~3_combout\ = (\rightspeed2|Equal9~1_combout\ & (\rightspeed2|Equal9~2_combout\ & (!\rightspeed2|Mod0|auto_generated|divider|divider|StageOut[994]~0_combout\ & 
-- !\rightspeed2|Mod0|auto_generated|divider|divider|StageOut[993]~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rightspeed2|Equal9~1_combout\,
	datab => \rightspeed2|Equal9~2_combout\,
	datac => \rightspeed2|Mod0|auto_generated|divider|divider|StageOut[994]~0_combout\,
	datad => \rightspeed2|Mod0|auto_generated|divider|divider|StageOut[993]~1_combout\,
	combout => \rightspeed2|Equal9~3_combout\);

-- Location: LCCOMB_X27_Y25_N16
\rightspeed2|WideOr2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \rightspeed2|WideOr2~combout\ = (\rightspeed2|Equal9~3_combout\) # ((\rightspeed2|Equal1~1_combout\ & ((\rightspeed2|Mod0|auto_generated|divider|divider|StageOut[993]~1_combout\) # 
-- (!\rightspeed2|Mod0|auto_generated|divider|divider|StageOut[994]~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rightspeed2|Equal9~3_combout\,
	datab => \rightspeed2|Mod0|auto_generated|divider|divider|StageOut[993]~1_combout\,
	datac => \rightspeed2|Mod0|auto_generated|divider|divider|StageOut[994]~0_combout\,
	datad => \rightspeed2|Equal1~1_combout\,
	combout => \rightspeed2|WideOr2~combout\);

-- Location: LCCOMB_X27_Y25_N10
\rightspeed2|WideOr1~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \rightspeed2|WideOr1~0_combout\ = ((\rightspeed2|Equal2~0_combout\ & ((\rightspeed2|Mod0|auto_generated|divider|divider|StageOut[993]~1_combout\) # (!\rightspeed2|Mod0|auto_generated|divider|divider|StageOut[994]~0_combout\)))) # 
-- (!\rightspeed2|WideNor0~3_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000101011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rightspeed2|Equal2~0_combout\,
	datab => \rightspeed2|Mod0|auto_generated|divider|divider|StageOut[993]~1_combout\,
	datac => \rightspeed2|Mod0|auto_generated|divider|divider|StageOut[994]~0_combout\,
	datad => \rightspeed2|WideNor0~3_combout\,
	combout => \rightspeed2|WideOr1~0_combout\);

-- Location: LCCOMB_X27_Y25_N4
\rightspeed2|WideOr1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \rightspeed2|WideOr1~combout\ = (\rightspeed2|WideOr1~0_combout\) # ((\rightspeed2|Mod0|auto_generated|divider|divider|StageOut[993]~1_combout\ & (!\rightspeed2|Mod0|auto_generated|divider|divider|StageOut[994]~0_combout\ & 
-- \rightspeed2|Equal1~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rightspeed2|WideOr1~0_combout\,
	datab => \rightspeed2|Mod0|auto_generated|divider|divider|StageOut[993]~1_combout\,
	datac => \rightspeed2|Mod0|auto_generated|divider|divider|StageOut[994]~0_combout\,
	datad => \rightspeed2|Equal1~1_combout\,
	combout => \rightspeed2|WideOr1~combout\);

-- Location: LCCOMB_X27_Y25_N22
\rightspeed2|WideOr0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \rightspeed2|WideOr0~combout\ = ((!\rightspeed2|Mod0|auto_generated|divider|divider|StageOut[993]~1_combout\ & (!\rightspeed2|Mod0|auto_generated|divider|divider|StageOut[994]~0_combout\ & \rightspeed2|Equal1~1_combout\))) # 
-- (!\rightspeed2|WideOr0~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101011101010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rightspeed2|WideOr0~0_combout\,
	datab => \rightspeed2|Mod0|auto_generated|divider|divider|StageOut[993]~1_combout\,
	datac => \rightspeed2|Mod0|auto_generated|divider|divider|StageOut[994]~0_combout\,
	datad => \rightspeed2|Equal1~1_combout\,
	combout => \rightspeed2|WideOr0~combout\);

-- Location: LCCOMB_X22_Y22_N0
\lp|Mod1|auto_generated|divider|divider|add_sub_5_result_int[2]~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \lp|Mod1|auto_generated|divider|divider|add_sub_5_result_int[2]~0_combout\ = \lp|current_second\(5) $ (VCC)
-- \lp|Mod1|auto_generated|divider|divider|add_sub_5_result_int[2]~1\ = CARRY(\lp|current_second\(5))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \lp|current_second\(5),
	datad => VCC,
	combout => \lp|Mod1|auto_generated|divider|divider|add_sub_5_result_int[2]~0_combout\,
	cout => \lp|Mod1|auto_generated|divider|divider|add_sub_5_result_int[2]~1\);

-- Location: LCCOMB_X22_Y22_N2
\lp|Mod1|auto_generated|divider|divider|add_sub_5_result_int[3]~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \lp|Mod1|auto_generated|divider|divider|add_sub_5_result_int[3]~2_combout\ = (\lp|current_second\(6) & (!\lp|Mod1|auto_generated|divider|divider|add_sub_5_result_int[2]~1\)) # (!\lp|current_second\(6) & 
-- ((\lp|Mod1|auto_generated|divider|divider|add_sub_5_result_int[2]~1\) # (GND)))
-- \lp|Mod1|auto_generated|divider|divider|add_sub_5_result_int[3]~3\ = CARRY((!\lp|Mod1|auto_generated|divider|divider|add_sub_5_result_int[2]~1\) # (!\lp|current_second\(6)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \lp|current_second\(6),
	datad => VCC,
	cin => \lp|Mod1|auto_generated|divider|divider|add_sub_5_result_int[2]~1\,
	combout => \lp|Mod1|auto_generated|divider|divider|add_sub_5_result_int[3]~2_combout\,
	cout => \lp|Mod1|auto_generated|divider|divider|add_sub_5_result_int[3]~3\);

-- Location: LCCOMB_X22_Y22_N4
\lp|Mod1|auto_generated|divider|divider|add_sub_5_result_int[4]~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \lp|Mod1|auto_generated|divider|divider|add_sub_5_result_int[4]~4_combout\ = (\lp|current_second\(7) & (\lp|Mod1|auto_generated|divider|divider|add_sub_5_result_int[3]~3\ $ (GND))) # (!\lp|current_second\(7) & 
-- (!\lp|Mod1|auto_generated|divider|divider|add_sub_5_result_int[3]~3\ & VCC))
-- \lp|Mod1|auto_generated|divider|divider|add_sub_5_result_int[4]~5\ = CARRY((\lp|current_second\(7) & !\lp|Mod1|auto_generated|divider|divider|add_sub_5_result_int[3]~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \lp|current_second\(7),
	datad => VCC,
	cin => \lp|Mod1|auto_generated|divider|divider|add_sub_5_result_int[3]~3\,
	combout => \lp|Mod1|auto_generated|divider|divider|add_sub_5_result_int[4]~4_combout\,
	cout => \lp|Mod1|auto_generated|divider|divider|add_sub_5_result_int[4]~5\);

-- Location: LCCOMB_X22_Y22_N6
\lp|Mod1|auto_generated|divider|divider|add_sub_5_result_int[5]~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \lp|Mod1|auto_generated|divider|divider|add_sub_5_result_int[5]~6_combout\ = (\lp|current_second\(8) & (!\lp|Mod1|auto_generated|divider|divider|add_sub_5_result_int[4]~5\)) # (!\lp|current_second\(8) & 
-- ((\lp|Mod1|auto_generated|divider|divider|add_sub_5_result_int[4]~5\) # (GND)))
-- \lp|Mod1|auto_generated|divider|divider|add_sub_5_result_int[5]~7\ = CARRY((!\lp|Mod1|auto_generated|divider|divider|add_sub_5_result_int[4]~5\) # (!\lp|current_second\(8)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \lp|current_second\(8),
	datad => VCC,
	cin => \lp|Mod1|auto_generated|divider|divider|add_sub_5_result_int[4]~5\,
	combout => \lp|Mod1|auto_generated|divider|divider|add_sub_5_result_int[5]~6_combout\,
	cout => \lp|Mod1|auto_generated|divider|divider|add_sub_5_result_int[5]~7\);

-- Location: LCCOMB_X22_Y22_N8
\lp|Mod1|auto_generated|divider|divider|add_sub_5_result_int[6]~8\ : cycloneiii_lcell_comb
-- Equation(s):
-- \lp|Mod1|auto_generated|divider|divider|add_sub_5_result_int[6]~8_combout\ = \lp|Mod1|auto_generated|divider|divider|add_sub_5_result_int[5]~7\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \lp|Mod1|auto_generated|divider|divider|add_sub_5_result_int[5]~7\,
	combout => \lp|Mod1|auto_generated|divider|divider|add_sub_5_result_int[6]~8_combout\);

-- Location: LCCOMB_X22_Y22_N14
\lp|Mod1|auto_generated|divider|divider|StageOut[50]~79\ : cycloneiii_lcell_comb
-- Equation(s):
-- \lp|Mod1|auto_generated|divider|divider|StageOut[50]~79_combout\ = (\lp|Mod1|auto_generated|divider|divider|add_sub_5_result_int[5]~6_combout\ & !\lp|Mod1|auto_generated|divider|divider|add_sub_5_result_int[6]~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \lp|Mod1|auto_generated|divider|divider|add_sub_5_result_int[5]~6_combout\,
	datad => \lp|Mod1|auto_generated|divider|divider|add_sub_5_result_int[6]~8_combout\,
	combout => \lp|Mod1|auto_generated|divider|divider|StageOut[50]~79_combout\);

-- Location: LCCOMB_X22_Y22_N12
\lp|Mod1|auto_generated|divider|divider|StageOut[50]~78\ : cycloneiii_lcell_comb
-- Equation(s):
-- \lp|Mod1|auto_generated|divider|divider|StageOut[50]~78_combout\ = (\lp|current_second\(8) & \lp|Mod1|auto_generated|divider|divider|add_sub_5_result_int[6]~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \lp|current_second\(8),
	datad => \lp|Mod1|auto_generated|divider|divider|add_sub_5_result_int[6]~8_combout\,
	combout => \lp|Mod1|auto_generated|divider|divider|StageOut[50]~78_combout\);

-- Location: LCCOMB_X22_Y22_N16
\lp|Mod1|auto_generated|divider|divider|StageOut[49]~80\ : cycloneiii_lcell_comb
-- Equation(s):
-- \lp|Mod1|auto_generated|divider|divider|StageOut[49]~80_combout\ = (\lp|current_second\(7) & \lp|Mod1|auto_generated|divider|divider|add_sub_5_result_int[6]~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \lp|current_second\(7),
	datad => \lp|Mod1|auto_generated|divider|divider|add_sub_5_result_int[6]~8_combout\,
	combout => \lp|Mod1|auto_generated|divider|divider|StageOut[49]~80_combout\);

-- Location: LCCOMB_X22_Y22_N10
\lp|Mod1|auto_generated|divider|divider|StageOut[49]~81\ : cycloneiii_lcell_comb
-- Equation(s):
-- \lp|Mod1|auto_generated|divider|divider|StageOut[49]~81_combout\ = (\lp|Mod1|auto_generated|divider|divider|add_sub_5_result_int[4]~4_combout\ & !\lp|Mod1|auto_generated|divider|divider|add_sub_5_result_int[6]~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \lp|Mod1|auto_generated|divider|divider|add_sub_5_result_int[4]~4_combout\,
	datad => \lp|Mod1|auto_generated|divider|divider|add_sub_5_result_int[6]~8_combout\,
	combout => \lp|Mod1|auto_generated|divider|divider|StageOut[49]~81_combout\);

-- Location: LCCOMB_X23_Y22_N6
\lp|Mod1|auto_generated|divider|divider|StageOut[48]~83\ : cycloneiii_lcell_comb
-- Equation(s):
-- \lp|Mod1|auto_generated|divider|divider|StageOut[48]~83_combout\ = (\lp|Mod1|auto_generated|divider|divider|add_sub_5_result_int[3]~2_combout\ & !\lp|Mod1|auto_generated|divider|divider|add_sub_5_result_int[6]~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \lp|Mod1|auto_generated|divider|divider|add_sub_5_result_int[3]~2_combout\,
	datad => \lp|Mod1|auto_generated|divider|divider|add_sub_5_result_int[6]~8_combout\,
	combout => \lp|Mod1|auto_generated|divider|divider|StageOut[48]~83_combout\);

-- Location: LCCOMB_X23_Y22_N28
\lp|Mod1|auto_generated|divider|divider|StageOut[48]~82\ : cycloneiii_lcell_comb
-- Equation(s):
-- \lp|Mod1|auto_generated|divider|divider|StageOut[48]~82_combout\ = (\lp|current_second\(6) & \lp|Mod1|auto_generated|divider|divider|add_sub_5_result_int[6]~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \lp|current_second\(6),
	datad => \lp|Mod1|auto_generated|divider|divider|add_sub_5_result_int[6]~8_combout\,
	combout => \lp|Mod1|auto_generated|divider|divider|StageOut[48]~82_combout\);

-- Location: LCCOMB_X23_Y22_N20
\lp|Mod1|auto_generated|divider|divider|StageOut[47]~84\ : cycloneiii_lcell_comb
-- Equation(s):
-- \lp|Mod1|auto_generated|divider|divider|StageOut[47]~84_combout\ = (\lp|current_second\(5) & \lp|Mod1|auto_generated|divider|divider|add_sub_5_result_int[6]~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \lp|current_second\(5),
	datad => \lp|Mod1|auto_generated|divider|divider|add_sub_5_result_int[6]~8_combout\,
	combout => \lp|Mod1|auto_generated|divider|divider|StageOut[47]~84_combout\);

-- Location: LCCOMB_X23_Y22_N22
\lp|Mod1|auto_generated|divider|divider|StageOut[47]~85\ : cycloneiii_lcell_comb
-- Equation(s):
-- \lp|Mod1|auto_generated|divider|divider|StageOut[47]~85_combout\ = (\lp|Mod1|auto_generated|divider|divider|add_sub_5_result_int[2]~0_combout\ & !\lp|Mod1|auto_generated|divider|divider|add_sub_5_result_int[6]~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \lp|Mod1|auto_generated|divider|divider|add_sub_5_result_int[2]~0_combout\,
	datad => \lp|Mod1|auto_generated|divider|divider|add_sub_5_result_int[6]~8_combout\,
	combout => \lp|Mod1|auto_generated|divider|divider|StageOut[47]~85_combout\);

-- Location: LCCOMB_X23_Y22_N2
\lp|Mod1|auto_generated|divider|divider|StageOut[46]~87\ : cycloneiii_lcell_comb
-- Equation(s):
-- \lp|Mod1|auto_generated|divider|divider|StageOut[46]~87_combout\ = (\lp|current_second\(4) & !\lp|Mod1|auto_generated|divider|divider|add_sub_5_result_int[6]~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \lp|current_second\(4),
	datad => \lp|Mod1|auto_generated|divider|divider|add_sub_5_result_int[6]~8_combout\,
	combout => \lp|Mod1|auto_generated|divider|divider|StageOut[46]~87_combout\);

-- Location: LCCOMB_X23_Y22_N24
\lp|Mod1|auto_generated|divider|divider|StageOut[46]~86\ : cycloneiii_lcell_comb
-- Equation(s):
-- \lp|Mod1|auto_generated|divider|divider|StageOut[46]~86_combout\ = (\lp|current_second\(4) & \lp|Mod1|auto_generated|divider|divider|add_sub_5_result_int[6]~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \lp|current_second\(4),
	datad => \lp|Mod1|auto_generated|divider|divider|add_sub_5_result_int[6]~8_combout\,
	combout => \lp|Mod1|auto_generated|divider|divider|StageOut[46]~86_combout\);

-- Location: LCCOMB_X22_Y22_N18
\lp|Mod1|auto_generated|divider|divider|add_sub_6_result_int[2]~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \lp|Mod1|auto_generated|divider|divider|add_sub_6_result_int[2]~0_combout\ = (((\lp|Mod1|auto_generated|divider|divider|StageOut[46]~87_combout\) # (\lp|Mod1|auto_generated|divider|divider|StageOut[46]~86_combout\)))
-- \lp|Mod1|auto_generated|divider|divider|add_sub_6_result_int[2]~1\ = CARRY((\lp|Mod1|auto_generated|divider|divider|StageOut[46]~87_combout\) # (\lp|Mod1|auto_generated|divider|divider|StageOut[46]~86_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000111101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \lp|Mod1|auto_generated|divider|divider|StageOut[46]~87_combout\,
	datab => \lp|Mod1|auto_generated|divider|divider|StageOut[46]~86_combout\,
	datad => VCC,
	combout => \lp|Mod1|auto_generated|divider|divider|add_sub_6_result_int[2]~0_combout\,
	cout => \lp|Mod1|auto_generated|divider|divider|add_sub_6_result_int[2]~1\);

-- Location: LCCOMB_X22_Y22_N20
\lp|Mod1|auto_generated|divider|divider|add_sub_6_result_int[3]~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \lp|Mod1|auto_generated|divider|divider|add_sub_6_result_int[3]~2_combout\ = (\lp|Mod1|auto_generated|divider|divider|StageOut[47]~84_combout\ & (((!\lp|Mod1|auto_generated|divider|divider|add_sub_6_result_int[2]~1\)))) # 
-- (!\lp|Mod1|auto_generated|divider|divider|StageOut[47]~84_combout\ & ((\lp|Mod1|auto_generated|divider|divider|StageOut[47]~85_combout\ & (!\lp|Mod1|auto_generated|divider|divider|add_sub_6_result_int[2]~1\)) # 
-- (!\lp|Mod1|auto_generated|divider|divider|StageOut[47]~85_combout\ & ((\lp|Mod1|auto_generated|divider|divider|add_sub_6_result_int[2]~1\) # (GND)))))
-- \lp|Mod1|auto_generated|divider|divider|add_sub_6_result_int[3]~3\ = CARRY(((!\lp|Mod1|auto_generated|divider|divider|StageOut[47]~84_combout\ & !\lp|Mod1|auto_generated|divider|divider|StageOut[47]~85_combout\)) # 
-- (!\lp|Mod1|auto_generated|divider|divider|add_sub_6_result_int[2]~1\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001111000011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \lp|Mod1|auto_generated|divider|divider|StageOut[47]~84_combout\,
	datab => \lp|Mod1|auto_generated|divider|divider|StageOut[47]~85_combout\,
	datad => VCC,
	cin => \lp|Mod1|auto_generated|divider|divider|add_sub_6_result_int[2]~1\,
	combout => \lp|Mod1|auto_generated|divider|divider|add_sub_6_result_int[3]~2_combout\,
	cout => \lp|Mod1|auto_generated|divider|divider|add_sub_6_result_int[3]~3\);

-- Location: LCCOMB_X22_Y22_N22
\lp|Mod1|auto_generated|divider|divider|add_sub_6_result_int[4]~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \lp|Mod1|auto_generated|divider|divider|add_sub_6_result_int[4]~4_combout\ = (\lp|Mod1|auto_generated|divider|divider|add_sub_6_result_int[3]~3\ & (((\lp|Mod1|auto_generated|divider|divider|StageOut[48]~83_combout\) # 
-- (\lp|Mod1|auto_generated|divider|divider|StageOut[48]~82_combout\)))) # (!\lp|Mod1|auto_generated|divider|divider|add_sub_6_result_int[3]~3\ & ((((\lp|Mod1|auto_generated|divider|divider|StageOut[48]~83_combout\) # 
-- (\lp|Mod1|auto_generated|divider|divider|StageOut[48]~82_combout\)))))
-- \lp|Mod1|auto_generated|divider|divider|add_sub_6_result_int[4]~5\ = CARRY((!\lp|Mod1|auto_generated|divider|divider|add_sub_6_result_int[3]~3\ & ((\lp|Mod1|auto_generated|divider|divider|StageOut[48]~83_combout\) # 
-- (\lp|Mod1|auto_generated|divider|divider|StageOut[48]~82_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \lp|Mod1|auto_generated|divider|divider|StageOut[48]~83_combout\,
	datab => \lp|Mod1|auto_generated|divider|divider|StageOut[48]~82_combout\,
	datad => VCC,
	cin => \lp|Mod1|auto_generated|divider|divider|add_sub_6_result_int[3]~3\,
	combout => \lp|Mod1|auto_generated|divider|divider|add_sub_6_result_int[4]~4_combout\,
	cout => \lp|Mod1|auto_generated|divider|divider|add_sub_6_result_int[4]~5\);

-- Location: LCCOMB_X22_Y22_N24
\lp|Mod1|auto_generated|divider|divider|add_sub_6_result_int[5]~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \lp|Mod1|auto_generated|divider|divider|add_sub_6_result_int[5]~6_combout\ = (\lp|Mod1|auto_generated|divider|divider|StageOut[49]~80_combout\ & (((!\lp|Mod1|auto_generated|divider|divider|add_sub_6_result_int[4]~5\)))) # 
-- (!\lp|Mod1|auto_generated|divider|divider|StageOut[49]~80_combout\ & ((\lp|Mod1|auto_generated|divider|divider|StageOut[49]~81_combout\ & (!\lp|Mod1|auto_generated|divider|divider|add_sub_6_result_int[4]~5\)) # 
-- (!\lp|Mod1|auto_generated|divider|divider|StageOut[49]~81_combout\ & ((\lp|Mod1|auto_generated|divider|divider|add_sub_6_result_int[4]~5\) # (GND)))))
-- \lp|Mod1|auto_generated|divider|divider|add_sub_6_result_int[5]~7\ = CARRY(((!\lp|Mod1|auto_generated|divider|divider|StageOut[49]~80_combout\ & !\lp|Mod1|auto_generated|divider|divider|StageOut[49]~81_combout\)) # 
-- (!\lp|Mod1|auto_generated|divider|divider|add_sub_6_result_int[4]~5\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001111000011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \lp|Mod1|auto_generated|divider|divider|StageOut[49]~80_combout\,
	datab => \lp|Mod1|auto_generated|divider|divider|StageOut[49]~81_combout\,
	datad => VCC,
	cin => \lp|Mod1|auto_generated|divider|divider|add_sub_6_result_int[4]~5\,
	combout => \lp|Mod1|auto_generated|divider|divider|add_sub_6_result_int[5]~6_combout\,
	cout => \lp|Mod1|auto_generated|divider|divider|add_sub_6_result_int[5]~7\);

-- Location: LCCOMB_X22_Y22_N26
\lp|Mod1|auto_generated|divider|divider|add_sub_6_result_int[6]~8\ : cycloneiii_lcell_comb
-- Equation(s):
-- \lp|Mod1|auto_generated|divider|divider|add_sub_6_result_int[6]~8_combout\ = (\lp|Mod1|auto_generated|divider|divider|add_sub_6_result_int[5]~7\ & ((((\lp|Mod1|auto_generated|divider|divider|StageOut[50]~79_combout\) # 
-- (\lp|Mod1|auto_generated|divider|divider|StageOut[50]~78_combout\))))) # (!\lp|Mod1|auto_generated|divider|divider|add_sub_6_result_int[5]~7\ & ((\lp|Mod1|auto_generated|divider|divider|StageOut[50]~79_combout\) # 
-- ((\lp|Mod1|auto_generated|divider|divider|StageOut[50]~78_combout\) # (GND))))
-- \lp|Mod1|auto_generated|divider|divider|add_sub_6_result_int[6]~9\ = CARRY((\lp|Mod1|auto_generated|divider|divider|StageOut[50]~79_combout\) # ((\lp|Mod1|auto_generated|divider|divider|StageOut[50]~78_combout\) # 
-- (!\lp|Mod1|auto_generated|divider|divider|add_sub_6_result_int[5]~7\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001111011101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \lp|Mod1|auto_generated|divider|divider|StageOut[50]~79_combout\,
	datab => \lp|Mod1|auto_generated|divider|divider|StageOut[50]~78_combout\,
	datad => VCC,
	cin => \lp|Mod1|auto_generated|divider|divider|add_sub_6_result_int[5]~7\,
	combout => \lp|Mod1|auto_generated|divider|divider|add_sub_6_result_int[6]~8_combout\,
	cout => \lp|Mod1|auto_generated|divider|divider|add_sub_6_result_int[6]~9\);

-- Location: LCCOMB_X22_Y22_N28
\lp|Mod1|auto_generated|divider|divider|add_sub_6_result_int[7]~10\ : cycloneiii_lcell_comb
-- Equation(s):
-- \lp|Mod1|auto_generated|divider|divider|add_sub_6_result_int[7]~10_combout\ = !\lp|Mod1|auto_generated|divider|divider|add_sub_6_result_int[6]~9\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \lp|Mod1|auto_generated|divider|divider|add_sub_6_result_int[6]~9\,
	combout => \lp|Mod1|auto_generated|divider|divider|add_sub_6_result_int[7]~10_combout\);

-- Location: LCCOMB_X22_Y22_N30
\lp|Mod1|auto_generated|divider|divider|StageOut[60]~121\ : cycloneiii_lcell_comb
-- Equation(s):
-- \lp|Mod1|auto_generated|divider|divider|StageOut[60]~121_combout\ = (\lp|Mod1|auto_generated|divider|divider|add_sub_6_result_int[7]~10_combout\ & ((\lp|Mod1|auto_generated|divider|divider|add_sub_5_result_int[6]~8_combout\ & (\lp|current_second\(8))) # 
-- (!\lp|Mod1|auto_generated|divider|divider|add_sub_5_result_int[6]~8_combout\ & ((\lp|Mod1|auto_generated|divider|divider|add_sub_5_result_int[5]~6_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \lp|Mod1|auto_generated|divider|divider|add_sub_5_result_int[6]~8_combout\,
	datab => \lp|current_second\(8),
	datac => \lp|Mod1|auto_generated|divider|divider|add_sub_5_result_int[5]~6_combout\,
	datad => \lp|Mod1|auto_generated|divider|divider|add_sub_6_result_int[7]~10_combout\,
	combout => \lp|Mod1|auto_generated|divider|divider|StageOut[60]~121_combout\);

-- Location: LCCOMB_X21_Y22_N0
\lp|Mod1|auto_generated|divider|divider|StageOut[60]~88\ : cycloneiii_lcell_comb
-- Equation(s):
-- \lp|Mod1|auto_generated|divider|divider|StageOut[60]~88_combout\ = (\lp|Mod1|auto_generated|divider|divider|add_sub_6_result_int[6]~8_combout\ & !\lp|Mod1|auto_generated|divider|divider|add_sub_6_result_int[7]~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \lp|Mod1|auto_generated|divider|divider|add_sub_6_result_int[6]~8_combout\,
	datad => \lp|Mod1|auto_generated|divider|divider|add_sub_6_result_int[7]~10_combout\,
	combout => \lp|Mod1|auto_generated|divider|divider|StageOut[60]~88_combout\);

-- Location: LCCOMB_X21_Y22_N22
\lp|Mod1|auto_generated|divider|divider|StageOut[59]~89\ : cycloneiii_lcell_comb
-- Equation(s):
-- \lp|Mod1|auto_generated|divider|divider|StageOut[59]~89_combout\ = (\lp|Mod1|auto_generated|divider|divider|add_sub_6_result_int[5]~6_combout\ & !\lp|Mod1|auto_generated|divider|divider|add_sub_6_result_int[7]~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \lp|Mod1|auto_generated|divider|divider|add_sub_6_result_int[5]~6_combout\,
	datad => \lp|Mod1|auto_generated|divider|divider|add_sub_6_result_int[7]~10_combout\,
	combout => \lp|Mod1|auto_generated|divider|divider|StageOut[59]~89_combout\);

-- Location: LCCOMB_X21_Y22_N30
\lp|Mod1|auto_generated|divider|divider|StageOut[59]~122\ : cycloneiii_lcell_comb
-- Equation(s):
-- \lp|Mod1|auto_generated|divider|divider|StageOut[59]~122_combout\ = (\lp|Mod1|auto_generated|divider|divider|add_sub_6_result_int[7]~10_combout\ & ((\lp|Mod1|auto_generated|divider|divider|add_sub_5_result_int[6]~8_combout\ & ((\lp|current_second\(7)))) # 
-- (!\lp|Mod1|auto_generated|divider|divider|add_sub_5_result_int[6]~8_combout\ & (\lp|Mod1|auto_generated|divider|divider|add_sub_5_result_int[4]~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \lp|Mod1|auto_generated|divider|divider|add_sub_5_result_int[4]~4_combout\,
	datab => \lp|current_second\(7),
	datac => \lp|Mod1|auto_generated|divider|divider|add_sub_5_result_int[6]~8_combout\,
	datad => \lp|Mod1|auto_generated|divider|divider|add_sub_6_result_int[7]~10_combout\,
	combout => \lp|Mod1|auto_generated|divider|divider|StageOut[59]~122_combout\);

-- Location: LCCOMB_X23_Y22_N10
\lp|Mod1|auto_generated|divider|divider|StageOut[58]~123\ : cycloneiii_lcell_comb
-- Equation(s):
-- \lp|Mod1|auto_generated|divider|divider|StageOut[58]~123_combout\ = (\lp|Mod1|auto_generated|divider|divider|add_sub_6_result_int[7]~10_combout\ & ((\lp|Mod1|auto_generated|divider|divider|add_sub_5_result_int[6]~8_combout\ & ((\lp|current_second\(6)))) # 
-- (!\lp|Mod1|auto_generated|divider|divider|add_sub_5_result_int[6]~8_combout\ & (\lp|Mod1|auto_generated|divider|divider|add_sub_5_result_int[3]~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \lp|Mod1|auto_generated|divider|divider|add_sub_5_result_int[3]~2_combout\,
	datab => \lp|current_second\(6),
	datac => \lp|Mod1|auto_generated|divider|divider|add_sub_5_result_int[6]~8_combout\,
	datad => \lp|Mod1|auto_generated|divider|divider|add_sub_6_result_int[7]~10_combout\,
	combout => \lp|Mod1|auto_generated|divider|divider|StageOut[58]~123_combout\);

-- Location: LCCOMB_X21_Y22_N4
\lp|Mod1|auto_generated|divider|divider|StageOut[58]~90\ : cycloneiii_lcell_comb
-- Equation(s):
-- \lp|Mod1|auto_generated|divider|divider|StageOut[58]~90_combout\ = (\lp|Mod1|auto_generated|divider|divider|add_sub_6_result_int[4]~4_combout\ & !\lp|Mod1|auto_generated|divider|divider|add_sub_6_result_int[7]~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \lp|Mod1|auto_generated|divider|divider|add_sub_6_result_int[4]~4_combout\,
	datad => \lp|Mod1|auto_generated|divider|divider|add_sub_6_result_int[7]~10_combout\,
	combout => \lp|Mod1|auto_generated|divider|divider|StageOut[58]~90_combout\);

-- Location: LCCOMB_X23_Y22_N4
\lp|Mod1|auto_generated|divider|divider|StageOut[57]~124\ : cycloneiii_lcell_comb
-- Equation(s):
-- \lp|Mod1|auto_generated|divider|divider|StageOut[57]~124_combout\ = (\lp|Mod1|auto_generated|divider|divider|add_sub_6_result_int[7]~10_combout\ & ((\lp|Mod1|auto_generated|divider|divider|add_sub_5_result_int[6]~8_combout\ & (\lp|current_second\(5))) # 
-- (!\lp|Mod1|auto_generated|divider|divider|add_sub_5_result_int[6]~8_combout\ & ((\lp|Mod1|auto_generated|divider|divider|add_sub_5_result_int[2]~0_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \lp|current_second\(5),
	datab => \lp|Mod1|auto_generated|divider|divider|add_sub_5_result_int[6]~8_combout\,
	datac => \lp|Mod1|auto_generated|divider|divider|add_sub_5_result_int[2]~0_combout\,
	datad => \lp|Mod1|auto_generated|divider|divider|add_sub_6_result_int[7]~10_combout\,
	combout => \lp|Mod1|auto_generated|divider|divider|StageOut[57]~124_combout\);

-- Location: LCCOMB_X20_Y22_N22
\lp|Mod1|auto_generated|divider|divider|StageOut[57]~91\ : cycloneiii_lcell_comb
-- Equation(s):
-- \lp|Mod1|auto_generated|divider|divider|StageOut[57]~91_combout\ = (\lp|Mod1|auto_generated|divider|divider|add_sub_6_result_int[3]~2_combout\ & !\lp|Mod1|auto_generated|divider|divider|add_sub_6_result_int[7]~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \lp|Mod1|auto_generated|divider|divider|add_sub_6_result_int[3]~2_combout\,
	datad => \lp|Mod1|auto_generated|divider|divider|add_sub_6_result_int[7]~10_combout\,
	combout => \lp|Mod1|auto_generated|divider|divider|StageOut[57]~91_combout\);

-- Location: LCCOMB_X23_Y22_N12
\lp|Mod1|auto_generated|divider|divider|StageOut[56]~92\ : cycloneiii_lcell_comb
-- Equation(s):
-- \lp|Mod1|auto_generated|divider|divider|StageOut[56]~92_combout\ = (\lp|current_second\(4) & \lp|Mod1|auto_generated|divider|divider|add_sub_6_result_int[7]~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \lp|current_second\(4),
	datad => \lp|Mod1|auto_generated|divider|divider|add_sub_6_result_int[7]~10_combout\,
	combout => \lp|Mod1|auto_generated|divider|divider|StageOut[56]~92_combout\);

-- Location: LCCOMB_X23_Y22_N14
\lp|Mod1|auto_generated|divider|divider|StageOut[56]~93\ : cycloneiii_lcell_comb
-- Equation(s):
-- \lp|Mod1|auto_generated|divider|divider|StageOut[56]~93_combout\ = (\lp|Mod1|auto_generated|divider|divider|add_sub_6_result_int[2]~0_combout\ & !\lp|Mod1|auto_generated|divider|divider|add_sub_6_result_int[7]~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \lp|Mod1|auto_generated|divider|divider|add_sub_6_result_int[2]~0_combout\,
	datad => \lp|Mod1|auto_generated|divider|divider|add_sub_6_result_int[7]~10_combout\,
	combout => \lp|Mod1|auto_generated|divider|divider|StageOut[56]~93_combout\);

-- Location: LCCOMB_X20_Y22_N26
\lp|Mod1|auto_generated|divider|divider|StageOut[55]~95\ : cycloneiii_lcell_comb
-- Equation(s):
-- \lp|Mod1|auto_generated|divider|divider|StageOut[55]~95_combout\ = (\lp|current_second\(3) & !\lp|Mod1|auto_generated|divider|divider|add_sub_6_result_int[7]~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \lp|current_second\(3),
	datad => \lp|Mod1|auto_generated|divider|divider|add_sub_6_result_int[7]~10_combout\,
	combout => \lp|Mod1|auto_generated|divider|divider|StageOut[55]~95_combout\);

-- Location: LCCOMB_X20_Y22_N28
\lp|Mod1|auto_generated|divider|divider|StageOut[55]~94\ : cycloneiii_lcell_comb
-- Equation(s):
-- \lp|Mod1|auto_generated|divider|divider|StageOut[55]~94_combout\ = (\lp|current_second\(3) & \lp|Mod1|auto_generated|divider|divider|add_sub_6_result_int[7]~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \lp|current_second\(3),
	datad => \lp|Mod1|auto_generated|divider|divider|add_sub_6_result_int[7]~10_combout\,
	combout => \lp|Mod1|auto_generated|divider|divider|StageOut[55]~94_combout\);

-- Location: LCCOMB_X21_Y22_N8
\lp|Mod1|auto_generated|divider|divider|add_sub_7_result_int[2]~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \lp|Mod1|auto_generated|divider|divider|add_sub_7_result_int[2]~0_combout\ = (((\lp|Mod1|auto_generated|divider|divider|StageOut[55]~95_combout\) # (\lp|Mod1|auto_generated|divider|divider|StageOut[55]~94_combout\)))
-- \lp|Mod1|auto_generated|divider|divider|add_sub_7_result_int[2]~1\ = CARRY((\lp|Mod1|auto_generated|divider|divider|StageOut[55]~95_combout\) # (\lp|Mod1|auto_generated|divider|divider|StageOut[55]~94_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000111101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \lp|Mod1|auto_generated|divider|divider|StageOut[55]~95_combout\,
	datab => \lp|Mod1|auto_generated|divider|divider|StageOut[55]~94_combout\,
	datad => VCC,
	combout => \lp|Mod1|auto_generated|divider|divider|add_sub_7_result_int[2]~0_combout\,
	cout => \lp|Mod1|auto_generated|divider|divider|add_sub_7_result_int[2]~1\);

-- Location: LCCOMB_X21_Y22_N10
\lp|Mod1|auto_generated|divider|divider|add_sub_7_result_int[3]~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \lp|Mod1|auto_generated|divider|divider|add_sub_7_result_int[3]~2_combout\ = (\lp|Mod1|auto_generated|divider|divider|StageOut[56]~92_combout\ & (((!\lp|Mod1|auto_generated|divider|divider|add_sub_7_result_int[2]~1\)))) # 
-- (!\lp|Mod1|auto_generated|divider|divider|StageOut[56]~92_combout\ & ((\lp|Mod1|auto_generated|divider|divider|StageOut[56]~93_combout\ & (!\lp|Mod1|auto_generated|divider|divider|add_sub_7_result_int[2]~1\)) # 
-- (!\lp|Mod1|auto_generated|divider|divider|StageOut[56]~93_combout\ & ((\lp|Mod1|auto_generated|divider|divider|add_sub_7_result_int[2]~1\) # (GND)))))
-- \lp|Mod1|auto_generated|divider|divider|add_sub_7_result_int[3]~3\ = CARRY(((!\lp|Mod1|auto_generated|divider|divider|StageOut[56]~92_combout\ & !\lp|Mod1|auto_generated|divider|divider|StageOut[56]~93_combout\)) # 
-- (!\lp|Mod1|auto_generated|divider|divider|add_sub_7_result_int[2]~1\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001111000011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \lp|Mod1|auto_generated|divider|divider|StageOut[56]~92_combout\,
	datab => \lp|Mod1|auto_generated|divider|divider|StageOut[56]~93_combout\,
	datad => VCC,
	cin => \lp|Mod1|auto_generated|divider|divider|add_sub_7_result_int[2]~1\,
	combout => \lp|Mod1|auto_generated|divider|divider|add_sub_7_result_int[3]~2_combout\,
	cout => \lp|Mod1|auto_generated|divider|divider|add_sub_7_result_int[3]~3\);

-- Location: LCCOMB_X21_Y22_N12
\lp|Mod1|auto_generated|divider|divider|add_sub_7_result_int[4]~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \lp|Mod1|auto_generated|divider|divider|add_sub_7_result_int[4]~4_combout\ = (\lp|Mod1|auto_generated|divider|divider|add_sub_7_result_int[3]~3\ & (((\lp|Mod1|auto_generated|divider|divider|StageOut[57]~124_combout\) # 
-- (\lp|Mod1|auto_generated|divider|divider|StageOut[57]~91_combout\)))) # (!\lp|Mod1|auto_generated|divider|divider|add_sub_7_result_int[3]~3\ & ((((\lp|Mod1|auto_generated|divider|divider|StageOut[57]~124_combout\) # 
-- (\lp|Mod1|auto_generated|divider|divider|StageOut[57]~91_combout\)))))
-- \lp|Mod1|auto_generated|divider|divider|add_sub_7_result_int[4]~5\ = CARRY((!\lp|Mod1|auto_generated|divider|divider|add_sub_7_result_int[3]~3\ & ((\lp|Mod1|auto_generated|divider|divider|StageOut[57]~124_combout\) # 
-- (\lp|Mod1|auto_generated|divider|divider|StageOut[57]~91_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \lp|Mod1|auto_generated|divider|divider|StageOut[57]~124_combout\,
	datab => \lp|Mod1|auto_generated|divider|divider|StageOut[57]~91_combout\,
	datad => VCC,
	cin => \lp|Mod1|auto_generated|divider|divider|add_sub_7_result_int[3]~3\,
	combout => \lp|Mod1|auto_generated|divider|divider|add_sub_7_result_int[4]~4_combout\,
	cout => \lp|Mod1|auto_generated|divider|divider|add_sub_7_result_int[4]~5\);

-- Location: LCCOMB_X21_Y22_N14
\lp|Mod1|auto_generated|divider|divider|add_sub_7_result_int[5]~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \lp|Mod1|auto_generated|divider|divider|add_sub_7_result_int[5]~6_combout\ = (\lp|Mod1|auto_generated|divider|divider|StageOut[58]~123_combout\ & (((!\lp|Mod1|auto_generated|divider|divider|add_sub_7_result_int[4]~5\)))) # 
-- (!\lp|Mod1|auto_generated|divider|divider|StageOut[58]~123_combout\ & ((\lp|Mod1|auto_generated|divider|divider|StageOut[58]~90_combout\ & (!\lp|Mod1|auto_generated|divider|divider|add_sub_7_result_int[4]~5\)) # 
-- (!\lp|Mod1|auto_generated|divider|divider|StageOut[58]~90_combout\ & ((\lp|Mod1|auto_generated|divider|divider|add_sub_7_result_int[4]~5\) # (GND)))))
-- \lp|Mod1|auto_generated|divider|divider|add_sub_7_result_int[5]~7\ = CARRY(((!\lp|Mod1|auto_generated|divider|divider|StageOut[58]~123_combout\ & !\lp|Mod1|auto_generated|divider|divider|StageOut[58]~90_combout\)) # 
-- (!\lp|Mod1|auto_generated|divider|divider|add_sub_7_result_int[4]~5\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001111000011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \lp|Mod1|auto_generated|divider|divider|StageOut[58]~123_combout\,
	datab => \lp|Mod1|auto_generated|divider|divider|StageOut[58]~90_combout\,
	datad => VCC,
	cin => \lp|Mod1|auto_generated|divider|divider|add_sub_7_result_int[4]~5\,
	combout => \lp|Mod1|auto_generated|divider|divider|add_sub_7_result_int[5]~6_combout\,
	cout => \lp|Mod1|auto_generated|divider|divider|add_sub_7_result_int[5]~7\);

-- Location: LCCOMB_X21_Y22_N16
\lp|Mod1|auto_generated|divider|divider|add_sub_7_result_int[6]~8\ : cycloneiii_lcell_comb
-- Equation(s):
-- \lp|Mod1|auto_generated|divider|divider|add_sub_7_result_int[6]~8_combout\ = (\lp|Mod1|auto_generated|divider|divider|add_sub_7_result_int[5]~7\ & ((((\lp|Mod1|auto_generated|divider|divider|StageOut[59]~89_combout\) # 
-- (\lp|Mod1|auto_generated|divider|divider|StageOut[59]~122_combout\))))) # (!\lp|Mod1|auto_generated|divider|divider|add_sub_7_result_int[5]~7\ & ((\lp|Mod1|auto_generated|divider|divider|StageOut[59]~89_combout\) # 
-- ((\lp|Mod1|auto_generated|divider|divider|StageOut[59]~122_combout\) # (GND))))
-- \lp|Mod1|auto_generated|divider|divider|add_sub_7_result_int[6]~9\ = CARRY((\lp|Mod1|auto_generated|divider|divider|StageOut[59]~89_combout\) # ((\lp|Mod1|auto_generated|divider|divider|StageOut[59]~122_combout\) # 
-- (!\lp|Mod1|auto_generated|divider|divider|add_sub_7_result_int[5]~7\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001111011101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \lp|Mod1|auto_generated|divider|divider|StageOut[59]~89_combout\,
	datab => \lp|Mod1|auto_generated|divider|divider|StageOut[59]~122_combout\,
	datad => VCC,
	cin => \lp|Mod1|auto_generated|divider|divider|add_sub_7_result_int[5]~7\,
	combout => \lp|Mod1|auto_generated|divider|divider|add_sub_7_result_int[6]~8_combout\,
	cout => \lp|Mod1|auto_generated|divider|divider|add_sub_7_result_int[6]~9\);

-- Location: LCCOMB_X21_Y22_N18
\lp|Mod1|auto_generated|divider|divider|add_sub_7_result_int[7]~10\ : cycloneiii_lcell_comb
-- Equation(s):
-- \lp|Mod1|auto_generated|divider|divider|add_sub_7_result_int[7]~10_combout\ = (\lp|Mod1|auto_generated|divider|divider|add_sub_7_result_int[6]~9\ & (((\lp|Mod1|auto_generated|divider|divider|StageOut[60]~121_combout\) # 
-- (\lp|Mod1|auto_generated|divider|divider|StageOut[60]~88_combout\)))) # (!\lp|Mod1|auto_generated|divider|divider|add_sub_7_result_int[6]~9\ & (!\lp|Mod1|auto_generated|divider|divider|StageOut[60]~121_combout\ & 
-- (!\lp|Mod1|auto_generated|divider|divider|StageOut[60]~88_combout\)))
-- \lp|Mod1|auto_generated|divider|divider|add_sub_7_result_int[7]~11\ = CARRY((!\lp|Mod1|auto_generated|divider|divider|StageOut[60]~121_combout\ & (!\lp|Mod1|auto_generated|divider|divider|StageOut[60]~88_combout\ & 
-- !\lp|Mod1|auto_generated|divider|divider|add_sub_7_result_int[6]~9\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \lp|Mod1|auto_generated|divider|divider|StageOut[60]~121_combout\,
	datab => \lp|Mod1|auto_generated|divider|divider|StageOut[60]~88_combout\,
	datad => VCC,
	cin => \lp|Mod1|auto_generated|divider|divider|add_sub_7_result_int[6]~9\,
	combout => \lp|Mod1|auto_generated|divider|divider|add_sub_7_result_int[7]~10_combout\,
	cout => \lp|Mod1|auto_generated|divider|divider|add_sub_7_result_int[7]~11\);

-- Location: LCCOMB_X21_Y22_N20
\lp|Mod1|auto_generated|divider|divider|add_sub_7_result_int[8]~12\ : cycloneiii_lcell_comb
-- Equation(s):
-- \lp|Mod1|auto_generated|divider|divider|add_sub_7_result_int[8]~12_combout\ = \lp|Mod1|auto_generated|divider|divider|add_sub_7_result_int[7]~11\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \lp|Mod1|auto_generated|divider|divider|add_sub_7_result_int[7]~11\,
	combout => \lp|Mod1|auto_generated|divider|divider|add_sub_7_result_int[8]~12_combout\);

-- Location: LCCOMB_X21_Y21_N16
\lp|Mod1|auto_generated|divider|divider|StageOut[69]~113\ : cycloneiii_lcell_comb
-- Equation(s):
-- \lp|Mod1|auto_generated|divider|divider|StageOut[69]~113_combout\ = (\lp|Mod1|auto_generated|divider|divider|add_sub_7_result_int[8]~12_combout\ & ((\lp|Mod1|auto_generated|divider|divider|StageOut[59]~122_combout\) # 
-- ((!\lp|Mod1|auto_generated|divider|divider|add_sub_6_result_int[7]~10_combout\ & \lp|Mod1|auto_generated|divider|divider|add_sub_6_result_int[5]~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \lp|Mod1|auto_generated|divider|divider|add_sub_6_result_int[7]~10_combout\,
	datab => \lp|Mod1|auto_generated|divider|divider|add_sub_6_result_int[5]~6_combout\,
	datac => \lp|Mod1|auto_generated|divider|divider|StageOut[59]~122_combout\,
	datad => \lp|Mod1|auto_generated|divider|divider|add_sub_7_result_int[8]~12_combout\,
	combout => \lp|Mod1|auto_generated|divider|divider|StageOut[69]~113_combout\);

-- Location: LCCOMB_X21_Y22_N26
\lp|Mod1|auto_generated|divider|divider|StageOut[70]~96\ : cycloneiii_lcell_comb
-- Equation(s):
-- \lp|Mod1|auto_generated|divider|divider|StageOut[70]~96_combout\ = (\lp|Mod1|auto_generated|divider|divider|add_sub_7_result_int[7]~10_combout\ & !\lp|Mod1|auto_generated|divider|divider|add_sub_7_result_int[8]~12_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \lp|Mod1|auto_generated|divider|divider|add_sub_7_result_int[7]~10_combout\,
	datad => \lp|Mod1|auto_generated|divider|divider|add_sub_7_result_int[8]~12_combout\,
	combout => \lp|Mod1|auto_generated|divider|divider|StageOut[70]~96_combout\);

-- Location: LCCOMB_X22_Y23_N20
\lp|Mod1|auto_generated|divider|divider|StageOut[70]~112\ : cycloneiii_lcell_comb
-- Equation(s):
-- \lp|Mod1|auto_generated|divider|divider|StageOut[70]~112_combout\ = (\lp|Mod1|auto_generated|divider|divider|add_sub_7_result_int[8]~12_combout\ & ((\lp|Mod1|auto_generated|divider|divider|StageOut[60]~121_combout\) # 
-- ((!\lp|Mod1|auto_generated|divider|divider|add_sub_6_result_int[7]~10_combout\ & \lp|Mod1|auto_generated|divider|divider|add_sub_6_result_int[6]~8_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \lp|Mod1|auto_generated|divider|divider|add_sub_6_result_int[7]~10_combout\,
	datab => \lp|Mod1|auto_generated|divider|divider|add_sub_6_result_int[6]~8_combout\,
	datac => \lp|Mod1|auto_generated|divider|divider|add_sub_7_result_int[8]~12_combout\,
	datad => \lp|Mod1|auto_generated|divider|divider|StageOut[60]~121_combout\,
	combout => \lp|Mod1|auto_generated|divider|divider|StageOut[70]~112_combout\);

-- Location: LCCOMB_X21_Y22_N2
\lp|Mod1|auto_generated|divider|divider|StageOut[69]~97\ : cycloneiii_lcell_comb
-- Equation(s):
-- \lp|Mod1|auto_generated|divider|divider|StageOut[69]~97_combout\ = (\lp|Mod1|auto_generated|divider|divider|add_sub_7_result_int[6]~8_combout\ & !\lp|Mod1|auto_generated|divider|divider|add_sub_7_result_int[8]~12_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \lp|Mod1|auto_generated|divider|divider|add_sub_7_result_int[6]~8_combout\,
	datad => \lp|Mod1|auto_generated|divider|divider|add_sub_7_result_int[8]~12_combout\,
	combout => \lp|Mod1|auto_generated|divider|divider|StageOut[69]~97_combout\);

-- Location: LCCOMB_X23_Y22_N0
\lp|Mod1|auto_generated|divider|divider|StageOut[68]~98\ : cycloneiii_lcell_comb
-- Equation(s):
-- \lp|Mod1|auto_generated|divider|divider|StageOut[68]~98_combout\ = (\lp|Mod1|auto_generated|divider|divider|add_sub_7_result_int[5]~6_combout\ & !\lp|Mod1|auto_generated|divider|divider|add_sub_7_result_int[8]~12_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \lp|Mod1|auto_generated|divider|divider|add_sub_7_result_int[5]~6_combout\,
	datad => \lp|Mod1|auto_generated|divider|divider|add_sub_7_result_int[8]~12_combout\,
	combout => \lp|Mod1|auto_generated|divider|divider|StageOut[68]~98_combout\);

-- Location: LCCOMB_X23_Y22_N8
\lp|Mod1|auto_generated|divider|divider|StageOut[68]~114\ : cycloneiii_lcell_comb
-- Equation(s):
-- \lp|Mod1|auto_generated|divider|divider|StageOut[68]~114_combout\ = (\lp|Mod1|auto_generated|divider|divider|add_sub_7_result_int[8]~12_combout\ & ((\lp|Mod1|auto_generated|divider|divider|StageOut[58]~123_combout\) # 
-- ((\lp|Mod1|auto_generated|divider|divider|add_sub_6_result_int[4]~4_combout\ & !\lp|Mod1|auto_generated|divider|divider|add_sub_6_result_int[7]~10_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000011100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \lp|Mod1|auto_generated|divider|divider|StageOut[58]~123_combout\,
	datab => \lp|Mod1|auto_generated|divider|divider|add_sub_6_result_int[4]~4_combout\,
	datac => \lp|Mod1|auto_generated|divider|divider|add_sub_7_result_int[8]~12_combout\,
	datad => \lp|Mod1|auto_generated|divider|divider|add_sub_6_result_int[7]~10_combout\,
	combout => \lp|Mod1|auto_generated|divider|divider|StageOut[68]~114_combout\);

-- Location: LCCOMB_X21_Y22_N28
\lp|Mod1|auto_generated|divider|divider|StageOut[67]~99\ : cycloneiii_lcell_comb
-- Equation(s):
-- \lp|Mod1|auto_generated|divider|divider|StageOut[67]~99_combout\ = (\lp|Mod1|auto_generated|divider|divider|add_sub_7_result_int[4]~4_combout\ & !\lp|Mod1|auto_generated|divider|divider|add_sub_7_result_int[8]~12_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \lp|Mod1|auto_generated|divider|divider|add_sub_7_result_int[4]~4_combout\,
	datad => \lp|Mod1|auto_generated|divider|divider|add_sub_7_result_int[8]~12_combout\,
	combout => \lp|Mod1|auto_generated|divider|divider|StageOut[67]~99_combout\);

-- Location: LCCOMB_X23_Y22_N26
\lp|Mod1|auto_generated|divider|divider|StageOut[67]~115\ : cycloneiii_lcell_comb
-- Equation(s):
-- \lp|Mod1|auto_generated|divider|divider|StageOut[67]~115_combout\ = (\lp|Mod1|auto_generated|divider|divider|add_sub_7_result_int[8]~12_combout\ & ((\lp|Mod1|auto_generated|divider|divider|StageOut[57]~124_combout\) # 
-- ((\lp|Mod1|auto_generated|divider|divider|add_sub_6_result_int[3]~2_combout\ & !\lp|Mod1|auto_generated|divider|divider|add_sub_6_result_int[7]~10_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \lp|Mod1|auto_generated|divider|divider|add_sub_6_result_int[3]~2_combout\,
	datab => \lp|Mod1|auto_generated|divider|divider|add_sub_6_result_int[7]~10_combout\,
	datac => \lp|Mod1|auto_generated|divider|divider|StageOut[57]~124_combout\,
	datad => \lp|Mod1|auto_generated|divider|divider|add_sub_7_result_int[8]~12_combout\,
	combout => \lp|Mod1|auto_generated|divider|divider|StageOut[67]~115_combout\);

-- Location: LCCOMB_X23_Y22_N18
\lp|Mod1|auto_generated|divider|divider|StageOut[66]~125\ : cycloneiii_lcell_comb
-- Equation(s):
-- \lp|Mod1|auto_generated|divider|divider|StageOut[66]~125_combout\ = (\lp|Mod1|auto_generated|divider|divider|add_sub_7_result_int[8]~12_combout\ & ((\lp|Mod1|auto_generated|divider|divider|add_sub_6_result_int[7]~10_combout\ & (\lp|current_second\(4))) # 
-- (!\lp|Mod1|auto_generated|divider|divider|add_sub_6_result_int[7]~10_combout\ & ((\lp|Mod1|auto_generated|divider|divider|add_sub_6_result_int[2]~0_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \lp|current_second\(4),
	datab => \lp|Mod1|auto_generated|divider|divider|add_sub_6_result_int[2]~0_combout\,
	datac => \lp|Mod1|auto_generated|divider|divider|add_sub_7_result_int[8]~12_combout\,
	datad => \lp|Mod1|auto_generated|divider|divider|add_sub_6_result_int[7]~10_combout\,
	combout => \lp|Mod1|auto_generated|divider|divider|StageOut[66]~125_combout\);

-- Location: LCCOMB_X21_Y22_N6
\lp|Mod1|auto_generated|divider|divider|StageOut[66]~100\ : cycloneiii_lcell_comb
-- Equation(s):
-- \lp|Mod1|auto_generated|divider|divider|StageOut[66]~100_combout\ = (\lp|Mod1|auto_generated|divider|divider|add_sub_7_result_int[3]~2_combout\ & !\lp|Mod1|auto_generated|divider|divider|add_sub_7_result_int[8]~12_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \lp|Mod1|auto_generated|divider|divider|add_sub_7_result_int[3]~2_combout\,
	datad => \lp|Mod1|auto_generated|divider|divider|add_sub_7_result_int[8]~12_combout\,
	combout => \lp|Mod1|auto_generated|divider|divider|StageOut[66]~100_combout\);

-- Location: LCCOMB_X21_Y22_N24
\lp|Mod1|auto_generated|divider|divider|StageOut[65]~101\ : cycloneiii_lcell_comb
-- Equation(s):
-- \lp|Mod1|auto_generated|divider|divider|StageOut[65]~101_combout\ = (\lp|Mod1|auto_generated|divider|divider|add_sub_7_result_int[2]~0_combout\ & !\lp|Mod1|auto_generated|divider|divider|add_sub_7_result_int[8]~12_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \lp|Mod1|auto_generated|divider|divider|add_sub_7_result_int[2]~0_combout\,
	datad => \lp|Mod1|auto_generated|divider|divider|add_sub_7_result_int[8]~12_combout\,
	combout => \lp|Mod1|auto_generated|divider|divider|StageOut[65]~101_combout\);

-- Location: LCCOMB_X23_Y21_N12
\lp|Mod1|auto_generated|divider|divider|StageOut[65]~126\ : cycloneiii_lcell_comb
-- Equation(s):
-- \lp|Mod1|auto_generated|divider|divider|StageOut[65]~126_combout\ = (\lp|current_second\(3) & \lp|Mod1|auto_generated|divider|divider|add_sub_7_result_int[8]~12_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \lp|current_second\(3),
	datad => \lp|Mod1|auto_generated|divider|divider|add_sub_7_result_int[8]~12_combout\,
	combout => \lp|Mod1|auto_generated|divider|divider|StageOut[65]~126_combout\);

-- Location: LCCOMB_X23_Y21_N20
\lp|Mod1|auto_generated|divider|divider|StageOut[64]~103\ : cycloneiii_lcell_comb
-- Equation(s):
-- \lp|Mod1|auto_generated|divider|divider|StageOut[64]~103_combout\ = (\lp|current_second\(2) & !\lp|Mod1|auto_generated|divider|divider|add_sub_7_result_int[8]~12_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \lp|current_second\(2),
	datad => \lp|Mod1|auto_generated|divider|divider|add_sub_7_result_int[8]~12_combout\,
	combout => \lp|Mod1|auto_generated|divider|divider|StageOut[64]~103_combout\);

-- Location: LCCOMB_X23_Y22_N30
\lp|Mod1|auto_generated|divider|divider|StageOut[64]~102\ : cycloneiii_lcell_comb
-- Equation(s):
-- \lp|Mod1|auto_generated|divider|divider|StageOut[64]~102_combout\ = (\lp|current_second\(2) & \lp|Mod1|auto_generated|divider|divider|add_sub_7_result_int[8]~12_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \lp|current_second\(2),
	datad => \lp|Mod1|auto_generated|divider|divider|add_sub_7_result_int[8]~12_combout\,
	combout => \lp|Mod1|auto_generated|divider|divider|StageOut[64]~102_combout\);

-- Location: LCCOMB_X22_Y21_N14
\lp|Mod1|auto_generated|divider|divider|add_sub_8_result_int[2]~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \lp|Mod1|auto_generated|divider|divider|add_sub_8_result_int[2]~0_combout\ = (((\lp|Mod1|auto_generated|divider|divider|StageOut[64]~103_combout\) # (\lp|Mod1|auto_generated|divider|divider|StageOut[64]~102_combout\)))
-- \lp|Mod1|auto_generated|divider|divider|add_sub_8_result_int[2]~1\ = CARRY((\lp|Mod1|auto_generated|divider|divider|StageOut[64]~103_combout\) # (\lp|Mod1|auto_generated|divider|divider|StageOut[64]~102_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000111101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \lp|Mod1|auto_generated|divider|divider|StageOut[64]~103_combout\,
	datab => \lp|Mod1|auto_generated|divider|divider|StageOut[64]~102_combout\,
	datad => VCC,
	combout => \lp|Mod1|auto_generated|divider|divider|add_sub_8_result_int[2]~0_combout\,
	cout => \lp|Mod1|auto_generated|divider|divider|add_sub_8_result_int[2]~1\);

-- Location: LCCOMB_X22_Y21_N16
\lp|Mod1|auto_generated|divider|divider|add_sub_8_result_int[3]~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \lp|Mod1|auto_generated|divider|divider|add_sub_8_result_int[3]~2_combout\ = (\lp|Mod1|auto_generated|divider|divider|StageOut[65]~101_combout\ & (((!\lp|Mod1|auto_generated|divider|divider|add_sub_8_result_int[2]~1\)))) # 
-- (!\lp|Mod1|auto_generated|divider|divider|StageOut[65]~101_combout\ & ((\lp|Mod1|auto_generated|divider|divider|StageOut[65]~126_combout\ & (!\lp|Mod1|auto_generated|divider|divider|add_sub_8_result_int[2]~1\)) # 
-- (!\lp|Mod1|auto_generated|divider|divider|StageOut[65]~126_combout\ & ((\lp|Mod1|auto_generated|divider|divider|add_sub_8_result_int[2]~1\) # (GND)))))
-- \lp|Mod1|auto_generated|divider|divider|add_sub_8_result_int[3]~3\ = CARRY(((!\lp|Mod1|auto_generated|divider|divider|StageOut[65]~101_combout\ & !\lp|Mod1|auto_generated|divider|divider|StageOut[65]~126_combout\)) # 
-- (!\lp|Mod1|auto_generated|divider|divider|add_sub_8_result_int[2]~1\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001111000011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \lp|Mod1|auto_generated|divider|divider|StageOut[65]~101_combout\,
	datab => \lp|Mod1|auto_generated|divider|divider|StageOut[65]~126_combout\,
	datad => VCC,
	cin => \lp|Mod1|auto_generated|divider|divider|add_sub_8_result_int[2]~1\,
	combout => \lp|Mod1|auto_generated|divider|divider|add_sub_8_result_int[3]~2_combout\,
	cout => \lp|Mod1|auto_generated|divider|divider|add_sub_8_result_int[3]~3\);

-- Location: LCCOMB_X22_Y21_N18
\lp|Mod1|auto_generated|divider|divider|add_sub_8_result_int[4]~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \lp|Mod1|auto_generated|divider|divider|add_sub_8_result_int[4]~4_combout\ = (\lp|Mod1|auto_generated|divider|divider|add_sub_8_result_int[3]~3\ & (((\lp|Mod1|auto_generated|divider|divider|StageOut[66]~125_combout\) # 
-- (\lp|Mod1|auto_generated|divider|divider|StageOut[66]~100_combout\)))) # (!\lp|Mod1|auto_generated|divider|divider|add_sub_8_result_int[3]~3\ & ((((\lp|Mod1|auto_generated|divider|divider|StageOut[66]~125_combout\) # 
-- (\lp|Mod1|auto_generated|divider|divider|StageOut[66]~100_combout\)))))
-- \lp|Mod1|auto_generated|divider|divider|add_sub_8_result_int[4]~5\ = CARRY((!\lp|Mod1|auto_generated|divider|divider|add_sub_8_result_int[3]~3\ & ((\lp|Mod1|auto_generated|divider|divider|StageOut[66]~125_combout\) # 
-- (\lp|Mod1|auto_generated|divider|divider|StageOut[66]~100_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \lp|Mod1|auto_generated|divider|divider|StageOut[66]~125_combout\,
	datab => \lp|Mod1|auto_generated|divider|divider|StageOut[66]~100_combout\,
	datad => VCC,
	cin => \lp|Mod1|auto_generated|divider|divider|add_sub_8_result_int[3]~3\,
	combout => \lp|Mod1|auto_generated|divider|divider|add_sub_8_result_int[4]~4_combout\,
	cout => \lp|Mod1|auto_generated|divider|divider|add_sub_8_result_int[4]~5\);

-- Location: LCCOMB_X22_Y21_N20
\lp|Mod1|auto_generated|divider|divider|add_sub_8_result_int[5]~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \lp|Mod1|auto_generated|divider|divider|add_sub_8_result_int[5]~6_combout\ = (\lp|Mod1|auto_generated|divider|divider|StageOut[67]~99_combout\ & (((!\lp|Mod1|auto_generated|divider|divider|add_sub_8_result_int[4]~5\)))) # 
-- (!\lp|Mod1|auto_generated|divider|divider|StageOut[67]~99_combout\ & ((\lp|Mod1|auto_generated|divider|divider|StageOut[67]~115_combout\ & (!\lp|Mod1|auto_generated|divider|divider|add_sub_8_result_int[4]~5\)) # 
-- (!\lp|Mod1|auto_generated|divider|divider|StageOut[67]~115_combout\ & ((\lp|Mod1|auto_generated|divider|divider|add_sub_8_result_int[4]~5\) # (GND)))))
-- \lp|Mod1|auto_generated|divider|divider|add_sub_8_result_int[5]~7\ = CARRY(((!\lp|Mod1|auto_generated|divider|divider|StageOut[67]~99_combout\ & !\lp|Mod1|auto_generated|divider|divider|StageOut[67]~115_combout\)) # 
-- (!\lp|Mod1|auto_generated|divider|divider|add_sub_8_result_int[4]~5\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001111000011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \lp|Mod1|auto_generated|divider|divider|StageOut[67]~99_combout\,
	datab => \lp|Mod1|auto_generated|divider|divider|StageOut[67]~115_combout\,
	datad => VCC,
	cin => \lp|Mod1|auto_generated|divider|divider|add_sub_8_result_int[4]~5\,
	combout => \lp|Mod1|auto_generated|divider|divider|add_sub_8_result_int[5]~6_combout\,
	cout => \lp|Mod1|auto_generated|divider|divider|add_sub_8_result_int[5]~7\);

-- Location: LCCOMB_X22_Y21_N22
\lp|Mod1|auto_generated|divider|divider|add_sub_8_result_int[6]~8\ : cycloneiii_lcell_comb
-- Equation(s):
-- \lp|Mod1|auto_generated|divider|divider|add_sub_8_result_int[6]~8_combout\ = (\lp|Mod1|auto_generated|divider|divider|add_sub_8_result_int[5]~7\ & ((((\lp|Mod1|auto_generated|divider|divider|StageOut[68]~98_combout\) # 
-- (\lp|Mod1|auto_generated|divider|divider|StageOut[68]~114_combout\))))) # (!\lp|Mod1|auto_generated|divider|divider|add_sub_8_result_int[5]~7\ & ((\lp|Mod1|auto_generated|divider|divider|StageOut[68]~98_combout\) # 
-- ((\lp|Mod1|auto_generated|divider|divider|StageOut[68]~114_combout\) # (GND))))
-- \lp|Mod1|auto_generated|divider|divider|add_sub_8_result_int[6]~9\ = CARRY((\lp|Mod1|auto_generated|divider|divider|StageOut[68]~98_combout\) # ((\lp|Mod1|auto_generated|divider|divider|StageOut[68]~114_combout\) # 
-- (!\lp|Mod1|auto_generated|divider|divider|add_sub_8_result_int[5]~7\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001111011101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \lp|Mod1|auto_generated|divider|divider|StageOut[68]~98_combout\,
	datab => \lp|Mod1|auto_generated|divider|divider|StageOut[68]~114_combout\,
	datad => VCC,
	cin => \lp|Mod1|auto_generated|divider|divider|add_sub_8_result_int[5]~7\,
	combout => \lp|Mod1|auto_generated|divider|divider|add_sub_8_result_int[6]~8_combout\,
	cout => \lp|Mod1|auto_generated|divider|divider|add_sub_8_result_int[6]~9\);

-- Location: LCCOMB_X22_Y21_N24
\lp|Mod1|auto_generated|divider|divider|add_sub_8_result_int[7]~10\ : cycloneiii_lcell_comb
-- Equation(s):
-- \lp|Mod1|auto_generated|divider|divider|add_sub_8_result_int[7]~10_combout\ = (\lp|Mod1|auto_generated|divider|divider|add_sub_8_result_int[6]~9\ & (((\lp|Mod1|auto_generated|divider|divider|StageOut[69]~113_combout\) # 
-- (\lp|Mod1|auto_generated|divider|divider|StageOut[69]~97_combout\)))) # (!\lp|Mod1|auto_generated|divider|divider|add_sub_8_result_int[6]~9\ & (!\lp|Mod1|auto_generated|divider|divider|StageOut[69]~113_combout\ & 
-- (!\lp|Mod1|auto_generated|divider|divider|StageOut[69]~97_combout\)))
-- \lp|Mod1|auto_generated|divider|divider|add_sub_8_result_int[7]~11\ = CARRY((!\lp|Mod1|auto_generated|divider|divider|StageOut[69]~113_combout\ & (!\lp|Mod1|auto_generated|divider|divider|StageOut[69]~97_combout\ & 
-- !\lp|Mod1|auto_generated|divider|divider|add_sub_8_result_int[6]~9\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \lp|Mod1|auto_generated|divider|divider|StageOut[69]~113_combout\,
	datab => \lp|Mod1|auto_generated|divider|divider|StageOut[69]~97_combout\,
	datad => VCC,
	cin => \lp|Mod1|auto_generated|divider|divider|add_sub_8_result_int[6]~9\,
	combout => \lp|Mod1|auto_generated|divider|divider|add_sub_8_result_int[7]~10_combout\,
	cout => \lp|Mod1|auto_generated|divider|divider|add_sub_8_result_int[7]~11\);

-- Location: LCCOMB_X22_Y21_N26
\lp|Mod1|auto_generated|divider|divider|add_sub_8_result_int[8]~12\ : cycloneiii_lcell_comb
-- Equation(s):
-- \lp|Mod1|auto_generated|divider|divider|add_sub_8_result_int[8]~12_combout\ = (\lp|Mod1|auto_generated|divider|divider|add_sub_8_result_int[7]~11\ & ((((\lp|Mod1|auto_generated|divider|divider|StageOut[70]~96_combout\) # 
-- (\lp|Mod1|auto_generated|divider|divider|StageOut[70]~112_combout\))))) # (!\lp|Mod1|auto_generated|divider|divider|add_sub_8_result_int[7]~11\ & ((\lp|Mod1|auto_generated|divider|divider|StageOut[70]~96_combout\) # 
-- ((\lp|Mod1|auto_generated|divider|divider|StageOut[70]~112_combout\) # (GND))))
-- \lp|Mod1|auto_generated|divider|divider|add_sub_8_result_int[8]~13\ = CARRY((\lp|Mod1|auto_generated|divider|divider|StageOut[70]~96_combout\) # ((\lp|Mod1|auto_generated|divider|divider|StageOut[70]~112_combout\) # 
-- (!\lp|Mod1|auto_generated|divider|divider|add_sub_8_result_int[7]~11\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001111011101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \lp|Mod1|auto_generated|divider|divider|StageOut[70]~96_combout\,
	datab => \lp|Mod1|auto_generated|divider|divider|StageOut[70]~112_combout\,
	datad => VCC,
	cin => \lp|Mod1|auto_generated|divider|divider|add_sub_8_result_int[7]~11\,
	combout => \lp|Mod1|auto_generated|divider|divider|add_sub_8_result_int[8]~12_combout\,
	cout => \lp|Mod1|auto_generated|divider|divider|add_sub_8_result_int[8]~13\);

-- Location: LCCOMB_X22_Y21_N28
\lp|Mod1|auto_generated|divider|divider|add_sub_8_result_int[9]~14\ : cycloneiii_lcell_comb
-- Equation(s):
-- \lp|Mod1|auto_generated|divider|divider|add_sub_8_result_int[9]~14_combout\ = !\lp|Mod1|auto_generated|divider|divider|add_sub_8_result_int[8]~13\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \lp|Mod1|auto_generated|divider|divider|add_sub_8_result_int[8]~13\,
	combout => \lp|Mod1|auto_generated|divider|divider|add_sub_8_result_int[9]~14_combout\);

-- Location: LCCOMB_X21_Y21_N10
\lp|Mod1|auto_generated|divider|divider|StageOut[79]~117\ : cycloneiii_lcell_comb
-- Equation(s):
-- \lp|Mod1|auto_generated|divider|divider|StageOut[79]~117_combout\ = (\lp|Mod1|auto_generated|divider|divider|add_sub_8_result_int[9]~14_combout\ & ((\lp|Mod1|auto_generated|divider|divider|StageOut[69]~113_combout\) # 
-- ((!\lp|Mod1|auto_generated|divider|divider|add_sub_7_result_int[8]~12_combout\ & \lp|Mod1|auto_generated|divider|divider|add_sub_7_result_int[6]~8_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \lp|Mod1|auto_generated|divider|divider|add_sub_7_result_int[8]~12_combout\,
	datab => \lp|Mod1|auto_generated|divider|divider|StageOut[69]~113_combout\,
	datac => \lp|Mod1|auto_generated|divider|divider|add_sub_7_result_int[6]~8_combout\,
	datad => \lp|Mod1|auto_generated|divider|divider|add_sub_8_result_int[9]~14_combout\,
	combout => \lp|Mod1|auto_generated|divider|divider|StageOut[79]~117_combout\);

-- Location: LCCOMB_X22_Y21_N10
\lp|Mod1|auto_generated|divider|divider|StageOut[79]~105\ : cycloneiii_lcell_comb
-- Equation(s):
-- \lp|Mod1|auto_generated|divider|divider|StageOut[79]~105_combout\ = (\lp|Mod1|auto_generated|divider|divider|add_sub_8_result_int[7]~10_combout\ & !\lp|Mod1|auto_generated|divider|divider|add_sub_8_result_int[9]~14_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \lp|Mod1|auto_generated|divider|divider|add_sub_8_result_int[7]~10_combout\,
	datad => \lp|Mod1|auto_generated|divider|divider|add_sub_8_result_int[9]~14_combout\,
	combout => \lp|Mod1|auto_generated|divider|divider|StageOut[79]~105_combout\);

-- Location: LCCOMB_X23_Y22_N16
\lp|Mod1|auto_generated|divider|divider|StageOut[78]~118\ : cycloneiii_lcell_comb
-- Equation(s):
-- \lp|Mod1|auto_generated|divider|divider|StageOut[78]~118_combout\ = (\lp|Mod1|auto_generated|divider|divider|add_sub_8_result_int[9]~14_combout\ & ((\lp|Mod1|auto_generated|divider|divider|StageOut[68]~114_combout\) # 
-- ((!\lp|Mod1|auto_generated|divider|divider|add_sub_7_result_int[8]~12_combout\ & \lp|Mod1|auto_generated|divider|divider|add_sub_7_result_int[5]~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \lp|Mod1|auto_generated|divider|divider|add_sub_7_result_int[8]~12_combout\,
	datab => \lp|Mod1|auto_generated|divider|divider|add_sub_7_result_int[5]~6_combout\,
	datac => \lp|Mod1|auto_generated|divider|divider|StageOut[68]~114_combout\,
	datad => \lp|Mod1|auto_generated|divider|divider|add_sub_8_result_int[9]~14_combout\,
	combout => \lp|Mod1|auto_generated|divider|divider|StageOut[78]~118_combout\);

-- Location: LCCOMB_X22_Y21_N8
\lp|Mod1|auto_generated|divider|divider|StageOut[78]~106\ : cycloneiii_lcell_comb
-- Equation(s):
-- \lp|Mod1|auto_generated|divider|divider|StageOut[78]~106_combout\ = (\lp|Mod1|auto_generated|divider|divider|add_sub_8_result_int[6]~8_combout\ & !\lp|Mod1|auto_generated|divider|divider|add_sub_8_result_int[9]~14_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \lp|Mod1|auto_generated|divider|divider|add_sub_8_result_int[6]~8_combout\,
	datad => \lp|Mod1|auto_generated|divider|divider|add_sub_8_result_int[9]~14_combout\,
	combout => \lp|Mod1|auto_generated|divider|divider|StageOut[78]~106_combout\);

-- Location: LCCOMB_X22_Y21_N0
\lp|Div0|auto_generated|divider|divider|add_sub_3_result_int[1]~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \lp|Div0|auto_generated|divider|divider|add_sub_3_result_int[1]~0_combout\ = (((\lp|Mod1|auto_generated|divider|divider|StageOut[78]~118_combout\) # (\lp|Mod1|auto_generated|divider|divider|StageOut[78]~106_combout\)))
-- \lp|Div0|auto_generated|divider|divider|add_sub_3_result_int[1]~1\ = CARRY((\lp|Mod1|auto_generated|divider|divider|StageOut[78]~118_combout\) # (\lp|Mod1|auto_generated|divider|divider|StageOut[78]~106_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000111101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \lp|Mod1|auto_generated|divider|divider|StageOut[78]~118_combout\,
	datab => \lp|Mod1|auto_generated|divider|divider|StageOut[78]~106_combout\,
	datad => VCC,
	combout => \lp|Div0|auto_generated|divider|divider|add_sub_3_result_int[1]~0_combout\,
	cout => \lp|Div0|auto_generated|divider|divider|add_sub_3_result_int[1]~1\);

-- Location: LCCOMB_X22_Y21_N2
\lp|Div0|auto_generated|divider|divider|add_sub_3_result_int[2]~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \lp|Div0|auto_generated|divider|divider|add_sub_3_result_int[2]~2_combout\ = (\lp|Div0|auto_generated|divider|divider|add_sub_3_result_int[1]~1\ & (((\lp|Mod1|auto_generated|divider|divider|StageOut[79]~117_combout\) # 
-- (\lp|Mod1|auto_generated|divider|divider|StageOut[79]~105_combout\)))) # (!\lp|Div0|auto_generated|divider|divider|add_sub_3_result_int[1]~1\ & (!\lp|Mod1|auto_generated|divider|divider|StageOut[79]~117_combout\ & 
-- (!\lp|Mod1|auto_generated|divider|divider|StageOut[79]~105_combout\)))
-- \lp|Div0|auto_generated|divider|divider|add_sub_3_result_int[2]~3\ = CARRY((!\lp|Mod1|auto_generated|divider|divider|StageOut[79]~117_combout\ & (!\lp|Mod1|auto_generated|divider|divider|StageOut[79]~105_combout\ & 
-- !\lp|Div0|auto_generated|divider|divider|add_sub_3_result_int[1]~1\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \lp|Mod1|auto_generated|divider|divider|StageOut[79]~117_combout\,
	datab => \lp|Mod1|auto_generated|divider|divider|StageOut[79]~105_combout\,
	datad => VCC,
	cin => \lp|Div0|auto_generated|divider|divider|add_sub_3_result_int[1]~1\,
	combout => \lp|Div0|auto_generated|divider|divider|add_sub_3_result_int[2]~2_combout\,
	cout => \lp|Div0|auto_generated|divider|divider|add_sub_3_result_int[2]~3\);

-- Location: LCCOMB_X22_Y21_N12
\lp|Mod1|auto_generated|divider|divider|StageOut[80]~104\ : cycloneiii_lcell_comb
-- Equation(s):
-- \lp|Mod1|auto_generated|divider|divider|StageOut[80]~104_combout\ = (\lp|Mod1|auto_generated|divider|divider|add_sub_8_result_int[8]~12_combout\ & !\lp|Mod1|auto_generated|divider|divider|add_sub_8_result_int[9]~14_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \lp|Mod1|auto_generated|divider|divider|add_sub_8_result_int[8]~12_combout\,
	datad => \lp|Mod1|auto_generated|divider|divider|add_sub_8_result_int[9]~14_combout\,
	combout => \lp|Mod1|auto_generated|divider|divider|StageOut[80]~104_combout\);

-- Location: LCCOMB_X22_Y23_N6
\lp|Mod1|auto_generated|divider|divider|StageOut[80]~116\ : cycloneiii_lcell_comb
-- Equation(s):
-- \lp|Mod1|auto_generated|divider|divider|StageOut[80]~116_combout\ = (\lp|Mod1|auto_generated|divider|divider|add_sub_8_result_int[9]~14_combout\ & ((\lp|Mod1|auto_generated|divider|divider|StageOut[70]~112_combout\) # 
-- ((\lp|Mod1|auto_generated|divider|divider|add_sub_7_result_int[7]~10_combout\ & !\lp|Mod1|auto_generated|divider|divider|add_sub_7_result_int[8]~12_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \lp|Mod1|auto_generated|divider|divider|StageOut[70]~112_combout\,
	datab => \lp|Mod1|auto_generated|divider|divider|add_sub_7_result_int[7]~10_combout\,
	datac => \lp|Mod1|auto_generated|divider|divider|add_sub_7_result_int[8]~12_combout\,
	datad => \lp|Mod1|auto_generated|divider|divider|add_sub_8_result_int[9]~14_combout\,
	combout => \lp|Mod1|auto_generated|divider|divider|StageOut[80]~116_combout\);

-- Location: LCCOMB_X22_Y21_N4
\lp|Div0|auto_generated|divider|divider|add_sub_3_result_int[3]~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \lp|Div0|auto_generated|divider|divider|add_sub_3_result_int[3]~4_combout\ = (\lp|Div0|auto_generated|divider|divider|add_sub_3_result_int[2]~3\ & (((\lp|Mod1|auto_generated|divider|divider|StageOut[80]~104_combout\) # 
-- (\lp|Mod1|auto_generated|divider|divider|StageOut[80]~116_combout\)))) # (!\lp|Div0|auto_generated|divider|divider|add_sub_3_result_int[2]~3\ & ((((\lp|Mod1|auto_generated|divider|divider|StageOut[80]~104_combout\) # 
-- (\lp|Mod1|auto_generated|divider|divider|StageOut[80]~116_combout\)))))
-- \lp|Div0|auto_generated|divider|divider|add_sub_3_result_int[3]~5\ = CARRY((!\lp|Div0|auto_generated|divider|divider|add_sub_3_result_int[2]~3\ & ((\lp|Mod1|auto_generated|divider|divider|StageOut[80]~104_combout\) # 
-- (\lp|Mod1|auto_generated|divider|divider|StageOut[80]~116_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \lp|Mod1|auto_generated|divider|divider|StageOut[80]~104_combout\,
	datab => \lp|Mod1|auto_generated|divider|divider|StageOut[80]~116_combout\,
	datad => VCC,
	cin => \lp|Div0|auto_generated|divider|divider|add_sub_3_result_int[2]~3\,
	combout => \lp|Div0|auto_generated|divider|divider|add_sub_3_result_int[3]~4_combout\,
	cout => \lp|Div0|auto_generated|divider|divider|add_sub_3_result_int[3]~5\);

-- Location: LCCOMB_X22_Y21_N6
\lp|Div0|auto_generated|divider|divider|add_sub_3_result_int[4]~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \lp|Div0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\ = !\lp|Div0|auto_generated|divider|divider|add_sub_3_result_int[3]~5\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \lp|Div0|auto_generated|divider|divider|add_sub_3_result_int[3]~5\,
	combout => \lp|Div0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\);

-- Location: LCCOMB_X20_Y21_N12
\lp|Div0|auto_generated|divider|divider|StageOut[17]~51\ : cycloneiii_lcell_comb
-- Equation(s):
-- \lp|Div0|auto_generated|divider|divider|StageOut[17]~51_combout\ = (\lp|Div0|auto_generated|divider|divider|add_sub_3_result_int[2]~2_combout\ & !\lp|Div0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \lp|Div0|auto_generated|divider|divider|add_sub_3_result_int[2]~2_combout\,
	datad => \lp|Div0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\,
	combout => \lp|Div0|auto_generated|divider|divider|StageOut[17]~51_combout\);

-- Location: LCCOMB_X21_Y21_N18
\lp|Div0|auto_generated|divider|divider|StageOut[17]~71\ : cycloneiii_lcell_comb
-- Equation(s):
-- \lp|Div0|auto_generated|divider|divider|StageOut[17]~71_combout\ = (\lp|Div0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\ & ((\lp|Mod1|auto_generated|divider|divider|StageOut[79]~117_combout\) # 
-- ((\lp|Mod1|auto_generated|divider|divider|add_sub_8_result_int[7]~10_combout\ & !\lp|Mod1|auto_generated|divider|divider|add_sub_8_result_int[9]~14_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \lp|Mod1|auto_generated|divider|divider|StageOut[79]~117_combout\,
	datab => \lp|Mod1|auto_generated|divider|divider|add_sub_8_result_int[7]~10_combout\,
	datac => \lp|Mod1|auto_generated|divider|divider|add_sub_8_result_int[9]~14_combout\,
	datad => \lp|Div0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\,
	combout => \lp|Div0|auto_generated|divider|divider|StageOut[17]~71_combout\);

-- Location: LCCOMB_X21_Y21_N12
\lp|Div0|auto_generated|divider|divider|StageOut[16]~52\ : cycloneiii_lcell_comb
-- Equation(s):
-- \lp|Div0|auto_generated|divider|divider|StageOut[16]~52_combout\ = (\lp|Div0|auto_generated|divider|divider|add_sub_3_result_int[1]~0_combout\ & !\lp|Div0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \lp|Div0|auto_generated|divider|divider|add_sub_3_result_int[1]~0_combout\,
	datad => \lp|Div0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\,
	combout => \lp|Div0|auto_generated|divider|divider|StageOut[16]~52_combout\);

-- Location: LCCOMB_X21_Y21_N4
\lp|Div0|auto_generated|divider|divider|StageOut[16]~72\ : cycloneiii_lcell_comb
-- Equation(s):
-- \lp|Div0|auto_generated|divider|divider|StageOut[16]~72_combout\ = (\lp|Div0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\ & ((\lp|Mod1|auto_generated|divider|divider|StageOut[78]~118_combout\) # 
-- ((\lp|Mod1|auto_generated|divider|divider|add_sub_8_result_int[6]~8_combout\ & !\lp|Mod1|auto_generated|divider|divider|add_sub_8_result_int[9]~14_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \lp|Mod1|auto_generated|divider|divider|add_sub_8_result_int[6]~8_combout\,
	datab => \lp|Mod1|auto_generated|divider|divider|add_sub_8_result_int[9]~14_combout\,
	datac => \lp|Mod1|auto_generated|divider|divider|StageOut[78]~118_combout\,
	datad => \lp|Div0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\,
	combout => \lp|Div0|auto_generated|divider|divider|StageOut[16]~72_combout\);

-- Location: LCCOMB_X21_Y21_N14
\lp|Mod1|auto_generated|divider|divider|StageOut[77]~119\ : cycloneiii_lcell_comb
-- Equation(s):
-- \lp|Mod1|auto_generated|divider|divider|StageOut[77]~119_combout\ = (\lp|Mod1|auto_generated|divider|divider|add_sub_8_result_int[9]~14_combout\ & ((\lp|Mod1|auto_generated|divider|divider|StageOut[67]~115_combout\) # 
-- ((!\lp|Mod1|auto_generated|divider|divider|add_sub_7_result_int[8]~12_combout\ & \lp|Mod1|auto_generated|divider|divider|add_sub_7_result_int[4]~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \lp|Mod1|auto_generated|divider|divider|add_sub_7_result_int[8]~12_combout\,
	datab => \lp|Mod1|auto_generated|divider|divider|add_sub_7_result_int[4]~4_combout\,
	datac => \lp|Mod1|auto_generated|divider|divider|StageOut[67]~115_combout\,
	datad => \lp|Mod1|auto_generated|divider|divider|add_sub_8_result_int[9]~14_combout\,
	combout => \lp|Mod1|auto_generated|divider|divider|StageOut[77]~119_combout\);

-- Location: LCCOMB_X21_Y21_N30
\lp|Div0|auto_generated|divider|divider|StageOut[15]~74\ : cycloneiii_lcell_comb
-- Equation(s):
-- \lp|Div0|auto_generated|divider|divider|StageOut[15]~74_combout\ = (!\lp|Div0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\ & ((\lp|Mod1|auto_generated|divider|divider|StageOut[77]~119_combout\) # 
-- ((\lp|Mod1|auto_generated|divider|divider|add_sub_8_result_int[5]~6_combout\ & !\lp|Mod1|auto_generated|divider|divider|add_sub_8_result_int[9]~14_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \lp|Mod1|auto_generated|divider|divider|add_sub_8_result_int[5]~6_combout\,
	datab => \lp|Mod1|auto_generated|divider|divider|add_sub_8_result_int[9]~14_combout\,
	datac => \lp|Mod1|auto_generated|divider|divider|StageOut[77]~119_combout\,
	datad => \lp|Div0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\,
	combout => \lp|Div0|auto_generated|divider|divider|StageOut[15]~74_combout\);

-- Location: LCCOMB_X21_Y21_N0
\lp|Div0|auto_generated|divider|divider|StageOut[15]~73\ : cycloneiii_lcell_comb
-- Equation(s):
-- \lp|Div0|auto_generated|divider|divider|StageOut[15]~73_combout\ = (\lp|Div0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\ & ((\lp|Mod1|auto_generated|divider|divider|StageOut[77]~119_combout\) # 
-- ((\lp|Mod1|auto_generated|divider|divider|add_sub_8_result_int[5]~6_combout\ & !\lp|Mod1|auto_generated|divider|divider|add_sub_8_result_int[9]~14_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \lp|Mod1|auto_generated|divider|divider|add_sub_8_result_int[5]~6_combout\,
	datab => \lp|Mod1|auto_generated|divider|divider|add_sub_8_result_int[9]~14_combout\,
	datac => \lp|Mod1|auto_generated|divider|divider|StageOut[77]~119_combout\,
	datad => \lp|Div0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\,
	combout => \lp|Div0|auto_generated|divider|divider|StageOut[15]~73_combout\);

-- Location: LCCOMB_X21_Y21_N20
\lp|Div0|auto_generated|divider|divider|add_sub_4_result_int[1]~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \lp|Div0|auto_generated|divider|divider|add_sub_4_result_int[1]~0_combout\ = (((\lp|Div0|auto_generated|divider|divider|StageOut[15]~74_combout\) # (\lp|Div0|auto_generated|divider|divider|StageOut[15]~73_combout\)))
-- \lp|Div0|auto_generated|divider|divider|add_sub_4_result_int[1]~1\ = CARRY((\lp|Div0|auto_generated|divider|divider|StageOut[15]~74_combout\) # (\lp|Div0|auto_generated|divider|divider|StageOut[15]~73_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000111101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \lp|Div0|auto_generated|divider|divider|StageOut[15]~74_combout\,
	datab => \lp|Div0|auto_generated|divider|divider|StageOut[15]~73_combout\,
	datad => VCC,
	combout => \lp|Div0|auto_generated|divider|divider|add_sub_4_result_int[1]~0_combout\,
	cout => \lp|Div0|auto_generated|divider|divider|add_sub_4_result_int[1]~1\);

-- Location: LCCOMB_X21_Y21_N22
\lp|Div0|auto_generated|divider|divider|add_sub_4_result_int[2]~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \lp|Div0|auto_generated|divider|divider|add_sub_4_result_int[2]~2_combout\ = (\lp|Div0|auto_generated|divider|divider|add_sub_4_result_int[1]~1\ & (((\lp|Div0|auto_generated|divider|divider|StageOut[16]~52_combout\) # 
-- (\lp|Div0|auto_generated|divider|divider|StageOut[16]~72_combout\)))) # (!\lp|Div0|auto_generated|divider|divider|add_sub_4_result_int[1]~1\ & (!\lp|Div0|auto_generated|divider|divider|StageOut[16]~52_combout\ & 
-- (!\lp|Div0|auto_generated|divider|divider|StageOut[16]~72_combout\)))
-- \lp|Div0|auto_generated|divider|divider|add_sub_4_result_int[2]~3\ = CARRY((!\lp|Div0|auto_generated|divider|divider|StageOut[16]~52_combout\ & (!\lp|Div0|auto_generated|divider|divider|StageOut[16]~72_combout\ & 
-- !\lp|Div0|auto_generated|divider|divider|add_sub_4_result_int[1]~1\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \lp|Div0|auto_generated|divider|divider|StageOut[16]~52_combout\,
	datab => \lp|Div0|auto_generated|divider|divider|StageOut[16]~72_combout\,
	datad => VCC,
	cin => \lp|Div0|auto_generated|divider|divider|add_sub_4_result_int[1]~1\,
	combout => \lp|Div0|auto_generated|divider|divider|add_sub_4_result_int[2]~2_combout\,
	cout => \lp|Div0|auto_generated|divider|divider|add_sub_4_result_int[2]~3\);

-- Location: LCCOMB_X21_Y21_N24
\lp|Div0|auto_generated|divider|divider|add_sub_4_result_int[3]~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \lp|Div0|auto_generated|divider|divider|add_sub_4_result_int[3]~4_combout\ = (\lp|Div0|auto_generated|divider|divider|add_sub_4_result_int[2]~3\ & (((\lp|Div0|auto_generated|divider|divider|StageOut[17]~51_combout\) # 
-- (\lp|Div0|auto_generated|divider|divider|StageOut[17]~71_combout\)))) # (!\lp|Div0|auto_generated|divider|divider|add_sub_4_result_int[2]~3\ & ((((\lp|Div0|auto_generated|divider|divider|StageOut[17]~51_combout\) # 
-- (\lp|Div0|auto_generated|divider|divider|StageOut[17]~71_combout\)))))
-- \lp|Div0|auto_generated|divider|divider|add_sub_4_result_int[3]~5\ = CARRY((!\lp|Div0|auto_generated|divider|divider|add_sub_4_result_int[2]~3\ & ((\lp|Div0|auto_generated|divider|divider|StageOut[17]~51_combout\) # 
-- (\lp|Div0|auto_generated|divider|divider|StageOut[17]~71_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \lp|Div0|auto_generated|divider|divider|StageOut[17]~51_combout\,
	datab => \lp|Div0|auto_generated|divider|divider|StageOut[17]~71_combout\,
	datad => VCC,
	cin => \lp|Div0|auto_generated|divider|divider|add_sub_4_result_int[2]~3\,
	combout => \lp|Div0|auto_generated|divider|divider|add_sub_4_result_int[3]~4_combout\,
	cout => \lp|Div0|auto_generated|divider|divider|add_sub_4_result_int[3]~5\);

-- Location: LCCOMB_X22_Y21_N30
\lp|Div0|auto_generated|divider|divider|StageOut[18]~50\ : cycloneiii_lcell_comb
-- Equation(s):
-- \lp|Div0|auto_generated|divider|divider|StageOut[18]~50_combout\ = (\lp|Div0|auto_generated|divider|divider|add_sub_3_result_int[3]~4_combout\ & !\lp|Div0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \lp|Div0|auto_generated|divider|divider|add_sub_3_result_int[3]~4_combout\,
	datad => \lp|Div0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\,
	combout => \lp|Div0|auto_generated|divider|divider|StageOut[18]~50_combout\);

-- Location: LCCOMB_X21_Y21_N8
\lp|Div0|auto_generated|divider|divider|StageOut[18]~70\ : cycloneiii_lcell_comb
-- Equation(s):
-- \lp|Div0|auto_generated|divider|divider|StageOut[18]~70_combout\ = (\lp|Div0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\ & ((\lp|Mod1|auto_generated|divider|divider|StageOut[80]~116_combout\) # 
-- ((\lp|Mod1|auto_generated|divider|divider|add_sub_8_result_int[8]~12_combout\ & !\lp|Mod1|auto_generated|divider|divider|add_sub_8_result_int[9]~14_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \lp|Mod1|auto_generated|divider|divider|add_sub_8_result_int[8]~12_combout\,
	datab => \lp|Mod1|auto_generated|divider|divider|add_sub_8_result_int[9]~14_combout\,
	datac => \lp|Mod1|auto_generated|divider|divider|StageOut[80]~116_combout\,
	datad => \lp|Div0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\,
	combout => \lp|Div0|auto_generated|divider|divider|StageOut[18]~70_combout\);

-- Location: LCCOMB_X21_Y21_N26
\lp|Div0|auto_generated|divider|divider|add_sub_4_result_int[4]~7\ : cycloneiii_lcell_comb
-- Equation(s):
-- \lp|Div0|auto_generated|divider|divider|add_sub_4_result_int[4]~7_cout\ = CARRY((!\lp|Div0|auto_generated|divider|divider|StageOut[18]~50_combout\ & (!\lp|Div0|auto_generated|divider|divider|StageOut[18]~70_combout\ & 
-- !\lp|Div0|auto_generated|divider|divider|add_sub_4_result_int[3]~5\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \lp|Div0|auto_generated|divider|divider|StageOut[18]~50_combout\,
	datab => \lp|Div0|auto_generated|divider|divider|StageOut[18]~70_combout\,
	datad => VCC,
	cin => \lp|Div0|auto_generated|divider|divider|add_sub_4_result_int[3]~5\,
	cout => \lp|Div0|auto_generated|divider|divider|add_sub_4_result_int[4]~7_cout\);

-- Location: LCCOMB_X21_Y21_N28
\lp|Div0|auto_generated|divider|divider|add_sub_4_result_int[5]~8\ : cycloneiii_lcell_comb
-- Equation(s):
-- \lp|Div0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\ = \lp|Div0|auto_generated|divider|divider|add_sub_4_result_int[4]~7_cout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \lp|Div0|auto_generated|divider|divider|add_sub_4_result_int[4]~7_cout\,
	combout => \lp|Div0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\);

-- Location: LCCOMB_X20_Y21_N10
\lp|Div0|auto_generated|divider|divider|StageOut[23]~53\ : cycloneiii_lcell_comb
-- Equation(s):
-- \lp|Div0|auto_generated|divider|divider|StageOut[23]~53_combout\ = (\lp|Div0|auto_generated|divider|divider|add_sub_4_result_int[3]~4_combout\ & !\lp|Div0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \lp|Div0|auto_generated|divider|divider|add_sub_4_result_int[3]~4_combout\,
	datad => \lp|Div0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\,
	combout => \lp|Div0|auto_generated|divider|divider|StageOut[23]~53_combout\);

-- Location: LCCOMB_X20_Y21_N8
\lp|Div0|auto_generated|divider|divider|StageOut[23]~75\ : cycloneiii_lcell_comb
-- Equation(s):
-- \lp|Div0|auto_generated|divider|divider|StageOut[23]~75_combout\ = (\lp|Div0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\ & ((\lp|Div0|auto_generated|divider|divider|StageOut[17]~71_combout\) # 
-- ((!\lp|Div0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\ & \lp|Div0|auto_generated|divider|divider|add_sub_3_result_int[2]~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \lp|Div0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\,
	datab => \lp|Div0|auto_generated|divider|divider|StageOut[17]~71_combout\,
	datac => \lp|Div0|auto_generated|divider|divider|add_sub_3_result_int[2]~2_combout\,
	datad => \lp|Div0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\,
	combout => \lp|Div0|auto_generated|divider|divider|StageOut[23]~75_combout\);

-- Location: LCCOMB_X21_Y21_N2
\lp|Div0|auto_generated|divider|divider|StageOut[22]~76\ : cycloneiii_lcell_comb
-- Equation(s):
-- \lp|Div0|auto_generated|divider|divider|StageOut[22]~76_combout\ = (\lp|Div0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\ & ((\lp|Div0|auto_generated|divider|divider|StageOut[16]~72_combout\) # 
-- ((!\lp|Div0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\ & \lp|Div0|auto_generated|divider|divider|add_sub_3_result_int[1]~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \lp|Div0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\,
	datab => \lp|Div0|auto_generated|divider|divider|add_sub_3_result_int[1]~0_combout\,
	datac => \lp|Div0|auto_generated|divider|divider|StageOut[16]~72_combout\,
	datad => \lp|Div0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\,
	combout => \lp|Div0|auto_generated|divider|divider|StageOut[22]~76_combout\);

-- Location: LCCOMB_X20_Y21_N4
\lp|Div0|auto_generated|divider|divider|StageOut[22]~54\ : cycloneiii_lcell_comb
-- Equation(s):
-- \lp|Div0|auto_generated|divider|divider|StageOut[22]~54_combout\ = (\lp|Div0|auto_generated|divider|divider|add_sub_4_result_int[2]~2_combout\ & !\lp|Div0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \lp|Div0|auto_generated|divider|divider|add_sub_4_result_int[2]~2_combout\,
	datad => \lp|Div0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\,
	combout => \lp|Div0|auto_generated|divider|divider|StageOut[22]~54_combout\);

-- Location: LCCOMB_X21_Y21_N6
\lp|Div0|auto_generated|divider|divider|StageOut[21]~55\ : cycloneiii_lcell_comb
-- Equation(s):
-- \lp|Div0|auto_generated|divider|divider|StageOut[21]~55_combout\ = (\lp|Div0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\ & ((\lp|Div0|auto_generated|divider|divider|StageOut[15]~73_combout\) # 
-- (\lp|Div0|auto_generated|divider|divider|StageOut[15]~74_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \lp|Div0|auto_generated|divider|divider|StageOut[15]~73_combout\,
	datac => \lp|Div0|auto_generated|divider|divider|StageOut[15]~74_combout\,
	datad => \lp|Div0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\,
	combout => \lp|Div0|auto_generated|divider|divider|StageOut[21]~55_combout\);

-- Location: LCCOMB_X20_Y21_N2
\lp|Div0|auto_generated|divider|divider|StageOut[21]~56\ : cycloneiii_lcell_comb
-- Equation(s):
-- \lp|Div0|auto_generated|divider|divider|StageOut[21]~56_combout\ = (\lp|Div0|auto_generated|divider|divider|add_sub_4_result_int[1]~0_combout\ & !\lp|Div0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \lp|Div0|auto_generated|divider|divider|add_sub_4_result_int[1]~0_combout\,
	datad => \lp|Div0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\,
	combout => \lp|Div0|auto_generated|divider|divider|StageOut[21]~56_combout\);

-- Location: LCCOMB_X23_Y21_N6
\lp|Mod1|auto_generated|divider|divider|StageOut[76]~120\ : cycloneiii_lcell_comb
-- Equation(s):
-- \lp|Mod1|auto_generated|divider|divider|StageOut[76]~120_combout\ = (\lp|Mod1|auto_generated|divider|divider|add_sub_8_result_int[9]~14_combout\ & ((\lp|Mod1|auto_generated|divider|divider|StageOut[66]~125_combout\) # 
-- ((\lp|Mod1|auto_generated|divider|divider|add_sub_7_result_int[3]~2_combout\ & !\lp|Mod1|auto_generated|divider|divider|add_sub_7_result_int[8]~12_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100011001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \lp|Mod1|auto_generated|divider|divider|StageOut[66]~125_combout\,
	datab => \lp|Mod1|auto_generated|divider|divider|add_sub_8_result_int[9]~14_combout\,
	datac => \lp|Mod1|auto_generated|divider|divider|add_sub_7_result_int[3]~2_combout\,
	datad => \lp|Mod1|auto_generated|divider|divider|add_sub_7_result_int[8]~12_combout\,
	combout => \lp|Mod1|auto_generated|divider|divider|StageOut[76]~120_combout\);

-- Location: LCCOMB_X20_Y21_N30
\lp|Div0|auto_generated|divider|divider|StageOut[20]~78\ : cycloneiii_lcell_comb
-- Equation(s):
-- \lp|Div0|auto_generated|divider|divider|StageOut[20]~78_combout\ = (!\lp|Div0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\ & ((\lp|Mod1|auto_generated|divider|divider|StageOut[76]~120_combout\) # 
-- ((\lp|Mod1|auto_generated|divider|divider|add_sub_8_result_int[4]~4_combout\ & !\lp|Mod1|auto_generated|divider|divider|add_sub_8_result_int[9]~14_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \lp|Mod1|auto_generated|divider|divider|add_sub_8_result_int[4]~4_combout\,
	datab => \lp|Mod1|auto_generated|divider|divider|add_sub_8_result_int[9]~14_combout\,
	datac => \lp|Mod1|auto_generated|divider|divider|StageOut[76]~120_combout\,
	datad => \lp|Div0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\,
	combout => \lp|Div0|auto_generated|divider|divider|StageOut[20]~78_combout\);

-- Location: LCCOMB_X20_Y21_N18
\lp|Div0|auto_generated|divider|divider|StageOut[20]~77\ : cycloneiii_lcell_comb
-- Equation(s):
-- \lp|Div0|auto_generated|divider|divider|StageOut[20]~77_combout\ = (\lp|Div0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\ & ((\lp|Mod1|auto_generated|divider|divider|StageOut[76]~120_combout\) # 
-- ((\lp|Mod1|auto_generated|divider|divider|add_sub_8_result_int[4]~4_combout\ & !\lp|Mod1|auto_generated|divider|divider|add_sub_8_result_int[9]~14_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \lp|Mod1|auto_generated|divider|divider|add_sub_8_result_int[4]~4_combout\,
	datab => \lp|Mod1|auto_generated|divider|divider|add_sub_8_result_int[9]~14_combout\,
	datac => \lp|Mod1|auto_generated|divider|divider|StageOut[76]~120_combout\,
	datad => \lp|Div0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\,
	combout => \lp|Div0|auto_generated|divider|divider|StageOut[20]~77_combout\);

-- Location: LCCOMB_X20_Y21_N20
\lp|Div0|auto_generated|divider|divider|add_sub_5_result_int[1]~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \lp|Div0|auto_generated|divider|divider|add_sub_5_result_int[1]~0_combout\ = (((\lp|Div0|auto_generated|divider|divider|StageOut[20]~78_combout\) # (\lp|Div0|auto_generated|divider|divider|StageOut[20]~77_combout\)))
-- \lp|Div0|auto_generated|divider|divider|add_sub_5_result_int[1]~1\ = CARRY((\lp|Div0|auto_generated|divider|divider|StageOut[20]~78_combout\) # (\lp|Div0|auto_generated|divider|divider|StageOut[20]~77_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000111101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \lp|Div0|auto_generated|divider|divider|StageOut[20]~78_combout\,
	datab => \lp|Div0|auto_generated|divider|divider|StageOut[20]~77_combout\,
	datad => VCC,
	combout => \lp|Div0|auto_generated|divider|divider|add_sub_5_result_int[1]~0_combout\,
	cout => \lp|Div0|auto_generated|divider|divider|add_sub_5_result_int[1]~1\);

-- Location: LCCOMB_X20_Y21_N22
\lp|Div0|auto_generated|divider|divider|add_sub_5_result_int[2]~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \lp|Div0|auto_generated|divider|divider|add_sub_5_result_int[2]~2_combout\ = (\lp|Div0|auto_generated|divider|divider|add_sub_5_result_int[1]~1\ & (((\lp|Div0|auto_generated|divider|divider|StageOut[21]~55_combout\) # 
-- (\lp|Div0|auto_generated|divider|divider|StageOut[21]~56_combout\)))) # (!\lp|Div0|auto_generated|divider|divider|add_sub_5_result_int[1]~1\ & (!\lp|Div0|auto_generated|divider|divider|StageOut[21]~55_combout\ & 
-- (!\lp|Div0|auto_generated|divider|divider|StageOut[21]~56_combout\)))
-- \lp|Div0|auto_generated|divider|divider|add_sub_5_result_int[2]~3\ = CARRY((!\lp|Div0|auto_generated|divider|divider|StageOut[21]~55_combout\ & (!\lp|Div0|auto_generated|divider|divider|StageOut[21]~56_combout\ & 
-- !\lp|Div0|auto_generated|divider|divider|add_sub_5_result_int[1]~1\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \lp|Div0|auto_generated|divider|divider|StageOut[21]~55_combout\,
	datab => \lp|Div0|auto_generated|divider|divider|StageOut[21]~56_combout\,
	datad => VCC,
	cin => \lp|Div0|auto_generated|divider|divider|add_sub_5_result_int[1]~1\,
	combout => \lp|Div0|auto_generated|divider|divider|add_sub_5_result_int[2]~2_combout\,
	cout => \lp|Div0|auto_generated|divider|divider|add_sub_5_result_int[2]~3\);

-- Location: LCCOMB_X20_Y21_N24
\lp|Div0|auto_generated|divider|divider|add_sub_5_result_int[3]~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \lp|Div0|auto_generated|divider|divider|add_sub_5_result_int[3]~4_combout\ = (\lp|Div0|auto_generated|divider|divider|add_sub_5_result_int[2]~3\ & (((\lp|Div0|auto_generated|divider|divider|StageOut[22]~76_combout\) # 
-- (\lp|Div0|auto_generated|divider|divider|StageOut[22]~54_combout\)))) # (!\lp|Div0|auto_generated|divider|divider|add_sub_5_result_int[2]~3\ & ((((\lp|Div0|auto_generated|divider|divider|StageOut[22]~76_combout\) # 
-- (\lp|Div0|auto_generated|divider|divider|StageOut[22]~54_combout\)))))
-- \lp|Div0|auto_generated|divider|divider|add_sub_5_result_int[3]~5\ = CARRY((!\lp|Div0|auto_generated|divider|divider|add_sub_5_result_int[2]~3\ & ((\lp|Div0|auto_generated|divider|divider|StageOut[22]~76_combout\) # 
-- (\lp|Div0|auto_generated|divider|divider|StageOut[22]~54_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \lp|Div0|auto_generated|divider|divider|StageOut[22]~76_combout\,
	datab => \lp|Div0|auto_generated|divider|divider|StageOut[22]~54_combout\,
	datad => VCC,
	cin => \lp|Div0|auto_generated|divider|divider|add_sub_5_result_int[2]~3\,
	combout => \lp|Div0|auto_generated|divider|divider|add_sub_5_result_int[3]~4_combout\,
	cout => \lp|Div0|auto_generated|divider|divider|add_sub_5_result_int[3]~5\);

-- Location: LCCOMB_X20_Y21_N26
\lp|Div0|auto_generated|divider|divider|add_sub_5_result_int[4]~7\ : cycloneiii_lcell_comb
-- Equation(s):
-- \lp|Div0|auto_generated|divider|divider|add_sub_5_result_int[4]~7_cout\ = CARRY((!\lp|Div0|auto_generated|divider|divider|StageOut[23]~53_combout\ & (!\lp|Div0|auto_generated|divider|divider|StageOut[23]~75_combout\ & 
-- !\lp|Div0|auto_generated|divider|divider|add_sub_5_result_int[3]~5\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \lp|Div0|auto_generated|divider|divider|StageOut[23]~53_combout\,
	datab => \lp|Div0|auto_generated|divider|divider|StageOut[23]~75_combout\,
	datad => VCC,
	cin => \lp|Div0|auto_generated|divider|divider|add_sub_5_result_int[3]~5\,
	cout => \lp|Div0|auto_generated|divider|divider|add_sub_5_result_int[4]~7_cout\);

-- Location: LCCOMB_X20_Y21_N28
\lp|Div0|auto_generated|divider|divider|add_sub_5_result_int[5]~8\ : cycloneiii_lcell_comb
-- Equation(s):
-- \lp|Div0|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\ = \lp|Div0|auto_generated|divider|divider|add_sub_5_result_int[4]~7_cout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \lp|Div0|auto_generated|divider|divider|add_sub_5_result_int[4]~7_cout\,
	combout => \lp|Div0|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\);

-- Location: LCCOMB_X20_Y22_N20
\lp|t1[3]~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \lp|t1[3]~0_combout\ = !\lp|Div0|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \lp|Div0|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\,
	combout => \lp|t1[3]~0_combout\);

-- Location: FF_X20_Y22_N21
\lp|t1[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \lp|t1[3]~0_combout\,
	ena => \lp|ALT_INV_process_0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \lp|t1\(3));

-- Location: LCCOMB_X20_Y21_N16
\lp|Div0|auto_generated|divider|divider|StageOut[28]~57\ : cycloneiii_lcell_comb
-- Equation(s):
-- \lp|Div0|auto_generated|divider|divider|StageOut[28]~57_combout\ = (\lp|Div0|auto_generated|divider|divider|add_sub_5_result_int[3]~4_combout\ & !\lp|Div0|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \lp|Div0|auto_generated|divider|divider|add_sub_5_result_int[3]~4_combout\,
	datad => \lp|Div0|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\,
	combout => \lp|Div0|auto_generated|divider|divider|StageOut[28]~57_combout\);

-- Location: LCCOMB_X21_Y23_N0
\lp|Div0|auto_generated|divider|divider|StageOut[28]~79\ : cycloneiii_lcell_comb
-- Equation(s):
-- \lp|Div0|auto_generated|divider|divider|StageOut[28]~79_combout\ = (\lp|Div0|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\ & ((\lp|Div0|auto_generated|divider|divider|StageOut[22]~76_combout\) # 
-- ((!\lp|Div0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\ & \lp|Div0|auto_generated|divider|divider|add_sub_4_result_int[2]~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \lp|Div0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\,
	datab => \lp|Div0|auto_generated|divider|divider|add_sub_4_result_int[2]~2_combout\,
	datac => \lp|Div0|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\,
	datad => \lp|Div0|auto_generated|divider|divider|StageOut[22]~76_combout\,
	combout => \lp|Div0|auto_generated|divider|divider|StageOut[28]~79_combout\);

-- Location: LCCOMB_X21_Y23_N30
\lp|Div0|auto_generated|divider|divider|StageOut[27]~80\ : cycloneiii_lcell_comb
-- Equation(s):
-- \lp|Div0|auto_generated|divider|divider|StageOut[27]~80_combout\ = (\lp|Div0|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\ & ((\lp|Div0|auto_generated|divider|divider|StageOut[21]~55_combout\) # 
-- ((!\lp|Div0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\ & \lp|Div0|auto_generated|divider|divider|add_sub_4_result_int[1]~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \lp|Div0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\,
	datab => \lp|Div0|auto_generated|divider|divider|add_sub_4_result_int[1]~0_combout\,
	datac => \lp|Div0|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\,
	datad => \lp|Div0|auto_generated|divider|divider|StageOut[21]~55_combout\,
	combout => \lp|Div0|auto_generated|divider|divider|StageOut[27]~80_combout\);

-- Location: LCCOMB_X20_Y21_N6
\lp|Div0|auto_generated|divider|divider|StageOut[27]~58\ : cycloneiii_lcell_comb
-- Equation(s):
-- \lp|Div0|auto_generated|divider|divider|StageOut[27]~58_combout\ = (\lp|Div0|auto_generated|divider|divider|add_sub_5_result_int[2]~2_combout\ & !\lp|Div0|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \lp|Div0|auto_generated|divider|divider|add_sub_5_result_int[2]~2_combout\,
	datad => \lp|Div0|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\,
	combout => \lp|Div0|auto_generated|divider|divider|StageOut[27]~58_combout\);

-- Location: LCCOMB_X20_Y21_N14
\lp|Div0|auto_generated|divider|divider|StageOut[26]~60\ : cycloneiii_lcell_comb
-- Equation(s):
-- \lp|Div0|auto_generated|divider|divider|StageOut[26]~60_combout\ = (\lp|Div0|auto_generated|divider|divider|add_sub_5_result_int[1]~0_combout\ & !\lp|Div0|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \lp|Div0|auto_generated|divider|divider|add_sub_5_result_int[1]~0_combout\,
	datad => \lp|Div0|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\,
	combout => \lp|Div0|auto_generated|divider|divider|StageOut[26]~60_combout\);

-- Location: LCCOMB_X20_Y21_N0
\lp|Div0|auto_generated|divider|divider|StageOut[26]~59\ : cycloneiii_lcell_comb
-- Equation(s):
-- \lp|Div0|auto_generated|divider|divider|StageOut[26]~59_combout\ = (\lp|Div0|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\ & ((\lp|Div0|auto_generated|divider|divider|StageOut[20]~77_combout\) # 
-- (\lp|Div0|auto_generated|divider|divider|StageOut[20]~78_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \lp|Div0|auto_generated|divider|divider|StageOut[20]~77_combout\,
	datac => \lp|Div0|auto_generated|divider|divider|StageOut[20]~78_combout\,
	datad => \lp|Div0|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\,
	combout => \lp|Div0|auto_generated|divider|divider|StageOut[26]~59_combout\);

-- Location: LCCOMB_X22_Y23_N16
\lp|Mod1|auto_generated|divider|divider|StageOut[75]~127\ : cycloneiii_lcell_comb
-- Equation(s):
-- \lp|Mod1|auto_generated|divider|divider|StageOut[75]~127_combout\ = (\lp|Mod1|auto_generated|divider|divider|add_sub_8_result_int[9]~14_combout\ & ((\lp|Mod1|auto_generated|divider|divider|add_sub_7_result_int[8]~12_combout\ & ((\lp|current_second\(3)))) 
-- # (!\lp|Mod1|auto_generated|divider|divider|add_sub_7_result_int[8]~12_combout\ & (\lp|Mod1|auto_generated|divider|divider|add_sub_7_result_int[2]~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \lp|Mod1|auto_generated|divider|divider|add_sub_7_result_int[2]~0_combout\,
	datab => \lp|current_second\(3),
	datac => \lp|Mod1|auto_generated|divider|divider|add_sub_7_result_int[8]~12_combout\,
	datad => \lp|Mod1|auto_generated|divider|divider|add_sub_8_result_int[9]~14_combout\,
	combout => \lp|Mod1|auto_generated|divider|divider|StageOut[75]~127_combout\);

-- Location: LCCOMB_X21_Y23_N12
\lp|Div0|auto_generated|divider|divider|StageOut[25]~81\ : cycloneiii_lcell_comb
-- Equation(s):
-- \lp|Div0|auto_generated|divider|divider|StageOut[25]~81_combout\ = (\lp|Div0|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\ & ((\lp|Mod1|auto_generated|divider|divider|StageOut[75]~127_combout\) # 
-- ((!\lp|Mod1|auto_generated|divider|divider|add_sub_8_result_int[9]~14_combout\ & \lp|Mod1|auto_generated|divider|divider|add_sub_8_result_int[3]~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \lp|Mod1|auto_generated|divider|divider|StageOut[75]~127_combout\,
	datab => \lp|Mod1|auto_generated|divider|divider|add_sub_8_result_int[9]~14_combout\,
	datac => \lp|Div0|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\,
	datad => \lp|Mod1|auto_generated|divider|divider|add_sub_8_result_int[3]~2_combout\,
	combout => \lp|Div0|auto_generated|divider|divider|StageOut[25]~81_combout\);

-- Location: LCCOMB_X22_Y23_N14
\lp|Mod1|auto_generated|divider|divider|StageOut[75]~107\ : cycloneiii_lcell_comb
-- Equation(s):
-- \lp|Mod1|auto_generated|divider|divider|StageOut[75]~107_combout\ = (\lp|Mod1|auto_generated|divider|divider|add_sub_8_result_int[3]~2_combout\ & !\lp|Mod1|auto_generated|divider|divider|add_sub_8_result_int[9]~14_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \lp|Mod1|auto_generated|divider|divider|add_sub_8_result_int[3]~2_combout\,
	datad => \lp|Mod1|auto_generated|divider|divider|add_sub_8_result_int[9]~14_combout\,
	combout => \lp|Mod1|auto_generated|divider|divider|StageOut[75]~107_combout\);

-- Location: LCCOMB_X22_Y23_N12
\lp|Div0|auto_generated|divider|divider|add_sub_5_result_int[0]~10\ : cycloneiii_lcell_comb
-- Equation(s):
-- \lp|Div0|auto_generated|divider|divider|add_sub_5_result_int[0]~10_combout\ = (\lp|Mod1|auto_generated|divider|divider|StageOut[75]~107_combout\) # (\lp|Mod1|auto_generated|divider|divider|StageOut[75]~127_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \lp|Mod1|auto_generated|divider|divider|StageOut[75]~107_combout\,
	datad => \lp|Mod1|auto_generated|divider|divider|StageOut[75]~127_combout\,
	combout => \lp|Div0|auto_generated|divider|divider|add_sub_5_result_int[0]~10_combout\);

-- Location: LCCOMB_X21_Y23_N16
\lp|Div0|auto_generated|divider|divider|StageOut[25]~61\ : cycloneiii_lcell_comb
-- Equation(s):
-- \lp|Div0|auto_generated|divider|divider|StageOut[25]~61_combout\ = (!\lp|Div0|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\ & \lp|Div0|auto_generated|divider|divider|add_sub_5_result_int[0]~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \lp|Div0|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\,
	datad => \lp|Div0|auto_generated|divider|divider|add_sub_5_result_int[0]~10_combout\,
	combout => \lp|Div0|auto_generated|divider|divider|StageOut[25]~61_combout\);

-- Location: LCCOMB_X21_Y23_N18
\lp|Div0|auto_generated|divider|divider|add_sub_6_result_int[1]~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \lp|Div0|auto_generated|divider|divider|add_sub_6_result_int[1]~0_combout\ = (((\lp|Div0|auto_generated|divider|divider|StageOut[25]~81_combout\) # (\lp|Div0|auto_generated|divider|divider|StageOut[25]~61_combout\)))
-- \lp|Div0|auto_generated|divider|divider|add_sub_6_result_int[1]~1\ = CARRY((\lp|Div0|auto_generated|divider|divider|StageOut[25]~81_combout\) # (\lp|Div0|auto_generated|divider|divider|StageOut[25]~61_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000111101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \lp|Div0|auto_generated|divider|divider|StageOut[25]~81_combout\,
	datab => \lp|Div0|auto_generated|divider|divider|StageOut[25]~61_combout\,
	datad => VCC,
	combout => \lp|Div0|auto_generated|divider|divider|add_sub_6_result_int[1]~0_combout\,
	cout => \lp|Div0|auto_generated|divider|divider|add_sub_6_result_int[1]~1\);

-- Location: LCCOMB_X21_Y23_N20
\lp|Div0|auto_generated|divider|divider|add_sub_6_result_int[2]~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \lp|Div0|auto_generated|divider|divider|add_sub_6_result_int[2]~2_combout\ = (\lp|Div0|auto_generated|divider|divider|add_sub_6_result_int[1]~1\ & (((\lp|Div0|auto_generated|divider|divider|StageOut[26]~60_combout\) # 
-- (\lp|Div0|auto_generated|divider|divider|StageOut[26]~59_combout\)))) # (!\lp|Div0|auto_generated|divider|divider|add_sub_6_result_int[1]~1\ & (!\lp|Div0|auto_generated|divider|divider|StageOut[26]~60_combout\ & 
-- (!\lp|Div0|auto_generated|divider|divider|StageOut[26]~59_combout\)))
-- \lp|Div0|auto_generated|divider|divider|add_sub_6_result_int[2]~3\ = CARRY((!\lp|Div0|auto_generated|divider|divider|StageOut[26]~60_combout\ & (!\lp|Div0|auto_generated|divider|divider|StageOut[26]~59_combout\ & 
-- !\lp|Div0|auto_generated|divider|divider|add_sub_6_result_int[1]~1\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \lp|Div0|auto_generated|divider|divider|StageOut[26]~60_combout\,
	datab => \lp|Div0|auto_generated|divider|divider|StageOut[26]~59_combout\,
	datad => VCC,
	cin => \lp|Div0|auto_generated|divider|divider|add_sub_6_result_int[1]~1\,
	combout => \lp|Div0|auto_generated|divider|divider|add_sub_6_result_int[2]~2_combout\,
	cout => \lp|Div0|auto_generated|divider|divider|add_sub_6_result_int[2]~3\);

-- Location: LCCOMB_X21_Y23_N22
\lp|Div0|auto_generated|divider|divider|add_sub_6_result_int[3]~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \lp|Div0|auto_generated|divider|divider|add_sub_6_result_int[3]~4_combout\ = (\lp|Div0|auto_generated|divider|divider|add_sub_6_result_int[2]~3\ & (((\lp|Div0|auto_generated|divider|divider|StageOut[27]~80_combout\) # 
-- (\lp|Div0|auto_generated|divider|divider|StageOut[27]~58_combout\)))) # (!\lp|Div0|auto_generated|divider|divider|add_sub_6_result_int[2]~3\ & ((((\lp|Div0|auto_generated|divider|divider|StageOut[27]~80_combout\) # 
-- (\lp|Div0|auto_generated|divider|divider|StageOut[27]~58_combout\)))))
-- \lp|Div0|auto_generated|divider|divider|add_sub_6_result_int[3]~5\ = CARRY((!\lp|Div0|auto_generated|divider|divider|add_sub_6_result_int[2]~3\ & ((\lp|Div0|auto_generated|divider|divider|StageOut[27]~80_combout\) # 
-- (\lp|Div0|auto_generated|divider|divider|StageOut[27]~58_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \lp|Div0|auto_generated|divider|divider|StageOut[27]~80_combout\,
	datab => \lp|Div0|auto_generated|divider|divider|StageOut[27]~58_combout\,
	datad => VCC,
	cin => \lp|Div0|auto_generated|divider|divider|add_sub_6_result_int[2]~3\,
	combout => \lp|Div0|auto_generated|divider|divider|add_sub_6_result_int[3]~4_combout\,
	cout => \lp|Div0|auto_generated|divider|divider|add_sub_6_result_int[3]~5\);

-- Location: LCCOMB_X21_Y23_N24
\lp|Div0|auto_generated|divider|divider|add_sub_6_result_int[4]~7\ : cycloneiii_lcell_comb
-- Equation(s):
-- \lp|Div0|auto_generated|divider|divider|add_sub_6_result_int[4]~7_cout\ = CARRY((!\lp|Div0|auto_generated|divider|divider|StageOut[28]~57_combout\ & (!\lp|Div0|auto_generated|divider|divider|StageOut[28]~79_combout\ & 
-- !\lp|Div0|auto_generated|divider|divider|add_sub_6_result_int[3]~5\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \lp|Div0|auto_generated|divider|divider|StageOut[28]~57_combout\,
	datab => \lp|Div0|auto_generated|divider|divider|StageOut[28]~79_combout\,
	datad => VCC,
	cin => \lp|Div0|auto_generated|divider|divider|add_sub_6_result_int[3]~5\,
	cout => \lp|Div0|auto_generated|divider|divider|add_sub_6_result_int[4]~7_cout\);

-- Location: LCCOMB_X21_Y23_N26
\lp|Div0|auto_generated|divider|divider|add_sub_6_result_int[5]~8\ : cycloneiii_lcell_comb
-- Equation(s):
-- \lp|Div0|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\ = \lp|Div0|auto_generated|divider|divider|add_sub_6_result_int[4]~7_cout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \lp|Div0|auto_generated|divider|divider|add_sub_6_result_int[4]~7_cout\,
	combout => \lp|Div0|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\);

-- Location: LCCOMB_X19_Y23_N4
\lp|t1[2]~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \lp|t1[2]~1_combout\ = !\lp|Div0|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \lp|Div0|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\,
	combout => \lp|t1[2]~1_combout\);

-- Location: FF_X19_Y23_N5
\lp|t1[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \lp|t1[2]~1_combout\,
	ena => \lp|ALT_INV_process_0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \lp|t1\(2));

-- Location: LCCOMB_X21_Y23_N6
\lp|Div0|auto_generated|divider|divider|StageOut[33]~82\ : cycloneiii_lcell_comb
-- Equation(s):
-- \lp|Div0|auto_generated|divider|divider|StageOut[33]~82_combout\ = (\lp|Div0|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\ & ((\lp|Div0|auto_generated|divider|divider|StageOut[27]~80_combout\) # 
-- ((!\lp|Div0|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\ & \lp|Div0|auto_generated|divider|divider|add_sub_5_result_int[2]~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \lp|Div0|auto_generated|divider|divider|StageOut[27]~80_combout\,
	datab => \lp|Div0|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\,
	datac => \lp|Div0|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\,
	datad => \lp|Div0|auto_generated|divider|divider|add_sub_5_result_int[2]~2_combout\,
	combout => \lp|Div0|auto_generated|divider|divider|StageOut[33]~82_combout\);

-- Location: LCCOMB_X21_Y23_N14
\lp|Div0|auto_generated|divider|divider|StageOut[33]~62\ : cycloneiii_lcell_comb
-- Equation(s):
-- \lp|Div0|auto_generated|divider|divider|StageOut[33]~62_combout\ = (\lp|Div0|auto_generated|divider|divider|add_sub_6_result_int[3]~4_combout\ & !\lp|Div0|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \lp|Div0|auto_generated|divider|divider|add_sub_6_result_int[3]~4_combout\,
	datad => \lp|Div0|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\,
	combout => \lp|Div0|auto_generated|divider|divider|StageOut[33]~62_combout\);

-- Location: LCCOMB_X21_Y23_N4
\lp|Div0|auto_generated|divider|divider|StageOut[32]~63\ : cycloneiii_lcell_comb
-- Equation(s):
-- \lp|Div0|auto_generated|divider|divider|StageOut[32]~63_combout\ = (!\lp|Div0|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\ & \lp|Div0|auto_generated|divider|divider|add_sub_6_result_int[2]~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \lp|Div0|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\,
	datad => \lp|Div0|auto_generated|divider|divider|add_sub_6_result_int[2]~2_combout\,
	combout => \lp|Div0|auto_generated|divider|divider|StageOut[32]~63_combout\);

-- Location: LCCOMB_X21_Y23_N8
\lp|Div0|auto_generated|divider|divider|StageOut[32]~83\ : cycloneiii_lcell_comb
-- Equation(s):
-- \lp|Div0|auto_generated|divider|divider|StageOut[32]~83_combout\ = (\lp|Div0|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\ & ((\lp|Div0|auto_generated|divider|divider|StageOut[26]~59_combout\) # 
-- ((!\lp|Div0|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\ & \lp|Div0|auto_generated|divider|divider|add_sub_5_result_int[1]~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \lp|Div0|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\,
	datab => \lp|Div0|auto_generated|divider|divider|add_sub_5_result_int[1]~0_combout\,
	datac => \lp|Div0|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\,
	datad => \lp|Div0|auto_generated|divider|divider|StageOut[26]~59_combout\,
	combout => \lp|Div0|auto_generated|divider|divider|StageOut[32]~83_combout\);

-- Location: LCCOMB_X21_Y23_N2
\lp|Div0|auto_generated|divider|divider|StageOut[31]~64\ : cycloneiii_lcell_comb
-- Equation(s):
-- \lp|Div0|auto_generated|divider|divider|StageOut[31]~64_combout\ = (!\lp|Div0|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\ & \lp|Div0|auto_generated|divider|divider|add_sub_6_result_int[1]~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \lp|Div0|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\,
	datad => \lp|Div0|auto_generated|divider|divider|add_sub_6_result_int[1]~0_combout\,
	combout => \lp|Div0|auto_generated|divider|divider|StageOut[31]~64_combout\);

-- Location: LCCOMB_X21_Y23_N28
\lp|Div0|auto_generated|divider|divider|StageOut[31]~84\ : cycloneiii_lcell_comb
-- Equation(s):
-- \lp|Div0|auto_generated|divider|divider|StageOut[31]~84_combout\ = (\lp|Div0|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\ & ((\lp|Div0|auto_generated|divider|divider|StageOut[25]~81_combout\) # 
-- ((\lp|Div0|auto_generated|divider|divider|add_sub_5_result_int[0]~10_combout\ & !\lp|Div0|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \lp|Div0|auto_generated|divider|divider|add_sub_5_result_int[0]~10_combout\,
	datab => \lp|Div0|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\,
	datac => \lp|Div0|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\,
	datad => \lp|Div0|auto_generated|divider|divider|StageOut[25]~81_combout\,
	combout => \lp|Div0|auto_generated|divider|divider|StageOut[31]~84_combout\);

-- Location: LCCOMB_X22_Y23_N30
\lp|Div0|auto_generated|divider|divider|StageOut[30]~88\ : cycloneiii_lcell_comb
-- Equation(s):
-- \lp|Div0|auto_generated|divider|divider|StageOut[30]~88_combout\ = (\lp|Div0|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\ & ((\lp|Mod1|auto_generated|divider|divider|add_sub_8_result_int[9]~14_combout\ & (\lp|current_second\(2))) # 
-- (!\lp|Mod1|auto_generated|divider|divider|add_sub_8_result_int[9]~14_combout\ & ((\lp|Mod1|auto_generated|divider|divider|add_sub_8_result_int[2]~0_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \lp|current_second\(2),
	datab => \lp|Mod1|auto_generated|divider|divider|add_sub_8_result_int[2]~0_combout\,
	datac => \lp|Div0|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\,
	datad => \lp|Mod1|auto_generated|divider|divider|add_sub_8_result_int[9]~14_combout\,
	combout => \lp|Div0|auto_generated|divider|divider|StageOut[30]~88_combout\);

-- Location: LCCOMB_X21_Y23_N10
\lp|Div0|auto_generated|divider|divider|StageOut[30]~89\ : cycloneiii_lcell_comb
-- Equation(s):
-- \lp|Div0|auto_generated|divider|divider|StageOut[30]~89_combout\ = (!\lp|Div0|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\ & ((\lp|Mod1|auto_generated|divider|divider|add_sub_8_result_int[9]~14_combout\ & (\lp|current_second\(2))) # 
-- (!\lp|Mod1|auto_generated|divider|divider|add_sub_8_result_int[9]~14_combout\ & ((\lp|Mod1|auto_generated|divider|divider|add_sub_8_result_int[2]~0_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \lp|current_second\(2),
	datab => \lp|Mod1|auto_generated|divider|divider|add_sub_8_result_int[2]~0_combout\,
	datac => \lp|Div0|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\,
	datad => \lp|Mod1|auto_generated|divider|divider|add_sub_8_result_int[9]~14_combout\,
	combout => \lp|Div0|auto_generated|divider|divider|StageOut[30]~89_combout\);

-- Location: LCCOMB_X20_Y23_N20
\lp|Div0|auto_generated|divider|divider|add_sub_7_result_int[1]~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \lp|Div0|auto_generated|divider|divider|add_sub_7_result_int[1]~0_combout\ = (((\lp|Div0|auto_generated|divider|divider|StageOut[30]~88_combout\) # (\lp|Div0|auto_generated|divider|divider|StageOut[30]~89_combout\)))
-- \lp|Div0|auto_generated|divider|divider|add_sub_7_result_int[1]~1\ = CARRY((\lp|Div0|auto_generated|divider|divider|StageOut[30]~88_combout\) # (\lp|Div0|auto_generated|divider|divider|StageOut[30]~89_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000111101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \lp|Div0|auto_generated|divider|divider|StageOut[30]~88_combout\,
	datab => \lp|Div0|auto_generated|divider|divider|StageOut[30]~89_combout\,
	datad => VCC,
	combout => \lp|Div0|auto_generated|divider|divider|add_sub_7_result_int[1]~0_combout\,
	cout => \lp|Div0|auto_generated|divider|divider|add_sub_7_result_int[1]~1\);

-- Location: LCCOMB_X20_Y23_N22
\lp|Div0|auto_generated|divider|divider|add_sub_7_result_int[2]~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \lp|Div0|auto_generated|divider|divider|add_sub_7_result_int[2]~2_combout\ = (\lp|Div0|auto_generated|divider|divider|add_sub_7_result_int[1]~1\ & (((\lp|Div0|auto_generated|divider|divider|StageOut[31]~64_combout\) # 
-- (\lp|Div0|auto_generated|divider|divider|StageOut[31]~84_combout\)))) # (!\lp|Div0|auto_generated|divider|divider|add_sub_7_result_int[1]~1\ & (!\lp|Div0|auto_generated|divider|divider|StageOut[31]~64_combout\ & 
-- (!\lp|Div0|auto_generated|divider|divider|StageOut[31]~84_combout\)))
-- \lp|Div0|auto_generated|divider|divider|add_sub_7_result_int[2]~3\ = CARRY((!\lp|Div0|auto_generated|divider|divider|StageOut[31]~64_combout\ & (!\lp|Div0|auto_generated|divider|divider|StageOut[31]~84_combout\ & 
-- !\lp|Div0|auto_generated|divider|divider|add_sub_7_result_int[1]~1\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \lp|Div0|auto_generated|divider|divider|StageOut[31]~64_combout\,
	datab => \lp|Div0|auto_generated|divider|divider|StageOut[31]~84_combout\,
	datad => VCC,
	cin => \lp|Div0|auto_generated|divider|divider|add_sub_7_result_int[1]~1\,
	combout => \lp|Div0|auto_generated|divider|divider|add_sub_7_result_int[2]~2_combout\,
	cout => \lp|Div0|auto_generated|divider|divider|add_sub_7_result_int[2]~3\);

-- Location: LCCOMB_X20_Y23_N24
\lp|Div0|auto_generated|divider|divider|add_sub_7_result_int[3]~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \lp|Div0|auto_generated|divider|divider|add_sub_7_result_int[3]~4_combout\ = (\lp|Div0|auto_generated|divider|divider|add_sub_7_result_int[2]~3\ & (((\lp|Div0|auto_generated|divider|divider|StageOut[32]~63_combout\) # 
-- (\lp|Div0|auto_generated|divider|divider|StageOut[32]~83_combout\)))) # (!\lp|Div0|auto_generated|divider|divider|add_sub_7_result_int[2]~3\ & ((((\lp|Div0|auto_generated|divider|divider|StageOut[32]~63_combout\) # 
-- (\lp|Div0|auto_generated|divider|divider|StageOut[32]~83_combout\)))))
-- \lp|Div0|auto_generated|divider|divider|add_sub_7_result_int[3]~5\ = CARRY((!\lp|Div0|auto_generated|divider|divider|add_sub_7_result_int[2]~3\ & ((\lp|Div0|auto_generated|divider|divider|StageOut[32]~63_combout\) # 
-- (\lp|Div0|auto_generated|divider|divider|StageOut[32]~83_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \lp|Div0|auto_generated|divider|divider|StageOut[32]~63_combout\,
	datab => \lp|Div0|auto_generated|divider|divider|StageOut[32]~83_combout\,
	datad => VCC,
	cin => \lp|Div0|auto_generated|divider|divider|add_sub_7_result_int[2]~3\,
	combout => \lp|Div0|auto_generated|divider|divider|add_sub_7_result_int[3]~4_combout\,
	cout => \lp|Div0|auto_generated|divider|divider|add_sub_7_result_int[3]~5\);

-- Location: LCCOMB_X20_Y23_N26
\lp|Div0|auto_generated|divider|divider|add_sub_7_result_int[4]~7\ : cycloneiii_lcell_comb
-- Equation(s):
-- \lp|Div0|auto_generated|divider|divider|add_sub_7_result_int[4]~7_cout\ = CARRY((!\lp|Div0|auto_generated|divider|divider|StageOut[33]~82_combout\ & (!\lp|Div0|auto_generated|divider|divider|StageOut[33]~62_combout\ & 
-- !\lp|Div0|auto_generated|divider|divider|add_sub_7_result_int[3]~5\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \lp|Div0|auto_generated|divider|divider|StageOut[33]~82_combout\,
	datab => \lp|Div0|auto_generated|divider|divider|StageOut[33]~62_combout\,
	datad => VCC,
	cin => \lp|Div0|auto_generated|divider|divider|add_sub_7_result_int[3]~5\,
	cout => \lp|Div0|auto_generated|divider|divider|add_sub_7_result_int[4]~7_cout\);

-- Location: LCCOMB_X20_Y23_N28
\lp|Div0|auto_generated|divider|divider|add_sub_7_result_int[5]~8\ : cycloneiii_lcell_comb
-- Equation(s):
-- \lp|Div0|auto_generated|divider|divider|add_sub_7_result_int[5]~8_combout\ = \lp|Div0|auto_generated|divider|divider|add_sub_7_result_int[4]~7_cout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \lp|Div0|auto_generated|divider|divider|add_sub_7_result_int[4]~7_cout\,
	combout => \lp|Div0|auto_generated|divider|divider|add_sub_7_result_int[5]~8_combout\);

-- Location: LCCOMB_X19_Y23_N22
\lp|t1[1]~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \lp|t1[1]~2_combout\ = !\lp|Div0|auto_generated|divider|divider|add_sub_7_result_int[5]~8_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \lp|Div0|auto_generated|divider|divider|add_sub_7_result_int[5]~8_combout\,
	combout => \lp|t1[1]~2_combout\);

-- Location: FF_X19_Y23_N23
\lp|t1[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \lp|t1[1]~2_combout\,
	ena => \lp|ALT_INV_process_0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \lp|t1\(1));

-- Location: LCCOMB_X22_Y25_N8
\rightspeed1|Mod0|auto_generated|divider|divider|op_24~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \rightspeed1|Mod0|auto_generated|divider|divider|op_24~0_combout\ = \lp|t1\(1) $ (VCC)
-- \rightspeed1|Mod0|auto_generated|divider|divider|op_24~1\ = CARRY(\lp|t1\(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \lp|t1\(1),
	datad => VCC,
	combout => \rightspeed1|Mod0|auto_generated|divider|divider|op_24~0_combout\,
	cout => \rightspeed1|Mod0|auto_generated|divider|divider|op_24~1\);

-- Location: LCCOMB_X22_Y25_N10
\rightspeed1|Mod0|auto_generated|divider|divider|op_24~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \rightspeed1|Mod0|auto_generated|divider|divider|op_24~2_combout\ = (\lp|t1\(2) & (\rightspeed1|Mod0|auto_generated|divider|divider|op_24~1\ & VCC)) # (!\lp|t1\(2) & (!\rightspeed1|Mod0|auto_generated|divider|divider|op_24~1\))
-- \rightspeed1|Mod0|auto_generated|divider|divider|op_24~3\ = CARRY((!\lp|t1\(2) & !\rightspeed1|Mod0|auto_generated|divider|divider|op_24~1\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \lp|t1\(2),
	datad => VCC,
	cin => \rightspeed1|Mod0|auto_generated|divider|divider|op_24~1\,
	combout => \rightspeed1|Mod0|auto_generated|divider|divider|op_24~2_combout\,
	cout => \rightspeed1|Mod0|auto_generated|divider|divider|op_24~3\);

-- Location: LCCOMB_X22_Y25_N12
\rightspeed1|Mod0|auto_generated|divider|divider|op_24~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \rightspeed1|Mod0|auto_generated|divider|divider|op_24~4_combout\ = (\lp|t1\(3) & (\rightspeed1|Mod0|auto_generated|divider|divider|op_24~3\ $ (GND))) # (!\lp|t1\(3) & (!\rightspeed1|Mod0|auto_generated|divider|divider|op_24~3\ & VCC))
-- \rightspeed1|Mod0|auto_generated|divider|divider|op_24~5\ = CARRY((\lp|t1\(3) & !\rightspeed1|Mod0|auto_generated|divider|divider|op_24~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \lp|t1\(3),
	datad => VCC,
	cin => \rightspeed1|Mod0|auto_generated|divider|divider|op_24~3\,
	combout => \rightspeed1|Mod0|auto_generated|divider|divider|op_24~4_combout\,
	cout => \rightspeed1|Mod0|auto_generated|divider|divider|op_24~5\);

-- Location: LCCOMB_X22_Y25_N14
\rightspeed1|Mod0|auto_generated|divider|divider|op_24~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \rightspeed1|Mod0|auto_generated|divider|divider|op_24~6_combout\ = !\rightspeed1|Mod0|auto_generated|divider|divider|op_24~5\
-- \rightspeed1|Mod0|auto_generated|divider|divider|op_24~7\ = CARRY(!\rightspeed1|Mod0|auto_generated|divider|divider|op_24~5\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => VCC,
	cin => \rightspeed1|Mod0|auto_generated|divider|divider|op_24~5\,
	combout => \rightspeed1|Mod0|auto_generated|divider|divider|op_24~6_combout\,
	cout => \rightspeed1|Mod0|auto_generated|divider|divider|op_24~7\);

-- Location: LCCOMB_X22_Y25_N16
\rightspeed1|Mod0|auto_generated|divider|divider|op_24~8\ : cycloneiii_lcell_comb
-- Equation(s):
-- \rightspeed1|Mod0|auto_generated|divider|divider|op_24~8_combout\ = \rightspeed1|Mod0|auto_generated|divider|divider|op_24~7\ $ (GND)
-- \rightspeed1|Mod0|auto_generated|divider|divider|op_24~9\ = CARRY(!\rightspeed1|Mod0|auto_generated|divider|divider|op_24~7\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => VCC,
	cin => \rightspeed1|Mod0|auto_generated|divider|divider|op_24~7\,
	combout => \rightspeed1|Mod0|auto_generated|divider|divider|op_24~8_combout\,
	cout => \rightspeed1|Mod0|auto_generated|divider|divider|op_24~9\);

-- Location: LCCOMB_X22_Y25_N18
\rightspeed1|Mod0|auto_generated|divider|divider|op_24~10\ : cycloneiii_lcell_comb
-- Equation(s):
-- \rightspeed1|Mod0|auto_generated|divider|divider|op_24~10_combout\ = !\rightspeed1|Mod0|auto_generated|divider|divider|op_24~9\
-- \rightspeed1|Mod0|auto_generated|divider|divider|op_24~11\ = CARRY(!\rightspeed1|Mod0|auto_generated|divider|divider|op_24~9\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => VCC,
	cin => \rightspeed1|Mod0|auto_generated|divider|divider|op_24~9\,
	combout => \rightspeed1|Mod0|auto_generated|divider|divider|op_24~10_combout\,
	cout => \rightspeed1|Mod0|auto_generated|divider|divider|op_24~11\);

-- Location: LCCOMB_X22_Y25_N20
\rightspeed1|Mod0|auto_generated|divider|divider|op_24~12\ : cycloneiii_lcell_comb
-- Equation(s):
-- \rightspeed1|Mod0|auto_generated|divider|divider|op_24~12_combout\ = \rightspeed1|Mod0|auto_generated|divider|divider|op_24~11\ $ (GND)
-- \rightspeed1|Mod0|auto_generated|divider|divider|op_24~13\ = CARRY(!\rightspeed1|Mod0|auto_generated|divider|divider|op_24~11\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => VCC,
	cin => \rightspeed1|Mod0|auto_generated|divider|divider|op_24~11\,
	combout => \rightspeed1|Mod0|auto_generated|divider|divider|op_24~12_combout\,
	cout => \rightspeed1|Mod0|auto_generated|divider|divider|op_24~13\);

-- Location: LCCOMB_X22_Y25_N22
\rightspeed1|Mod0|auto_generated|divider|divider|op_24~14\ : cycloneiii_lcell_comb
-- Equation(s):
-- \rightspeed1|Mod0|auto_generated|divider|divider|op_24~14_combout\ = !\rightspeed1|Mod0|auto_generated|divider|divider|op_24~13\
-- \rightspeed1|Mod0|auto_generated|divider|divider|op_24~15\ = CARRY(!\rightspeed1|Mod0|auto_generated|divider|divider|op_24~13\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => VCC,
	cin => \rightspeed1|Mod0|auto_generated|divider|divider|op_24~13\,
	combout => \rightspeed1|Mod0|auto_generated|divider|divider|op_24~14_combout\,
	cout => \rightspeed1|Mod0|auto_generated|divider|divider|op_24~15\);

-- Location: LCCOMB_X22_Y25_N24
\rightspeed1|Mod0|auto_generated|divider|divider|op_24~16\ : cycloneiii_lcell_comb
-- Equation(s):
-- \rightspeed1|Mod0|auto_generated|divider|divider|op_24~16_combout\ = \rightspeed1|Mod0|auto_generated|divider|divider|op_24~15\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \rightspeed1|Mod0|auto_generated|divider|divider|op_24~15\,
	combout => \rightspeed1|Mod0|auto_generated|divider|divider|op_24~16_combout\);

-- Location: LCCOMB_X22_Y25_N0
\rightspeed1|Equal9~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \rightspeed1|Equal9~0_combout\ = (\rightspeed1|Mod0|auto_generated|divider|divider|op_24~16_combout\) # ((!\rightspeed1|Mod0|auto_generated|divider|divider|op_24~10_combout\ & (!\rightspeed1|Mod0|auto_generated|divider|divider|op_24~12_combout\ & 
-- !\rightspeed1|Mod0|auto_generated|divider|divider|op_24~14_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rightspeed1|Mod0|auto_generated|divider|divider|op_24~10_combout\,
	datab => \rightspeed1|Mod0|auto_generated|divider|divider|op_24~12_combout\,
	datac => \rightspeed1|Mod0|auto_generated|divider|divider|op_24~14_combout\,
	datad => \rightspeed1|Mod0|auto_generated|divider|divider|op_24~16_combout\,
	combout => \rightspeed1|Equal9~0_combout\);

-- Location: LCCOMB_X22_Y25_N26
\rightspeed1|Equal9~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \rightspeed1|Equal9~1_combout\ = (\rightspeed1|Equal9~0_combout\ & ((\rightspeed1|Mod0|auto_generated|divider|divider|op_24~16_combout\) # ((!\rightspeed1|Mod0|auto_generated|divider|divider|op_24~8_combout\ & 
-- !\rightspeed1|Mod0|auto_generated|divider|divider|op_24~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rightspeed1|Equal9~0_combout\,
	datab => \rightspeed1|Mod0|auto_generated|divider|divider|op_24~8_combout\,
	datac => \rightspeed1|Mod0|auto_generated|divider|divider|op_24~6_combout\,
	datad => \rightspeed1|Mod0|auto_generated|divider|divider|op_24~16_combout\,
	combout => \rightspeed1|Equal9~1_combout\);

-- Location: LCCOMB_X23_Y25_N28
\rightspeed1|Equal1~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \rightspeed1|Equal1~0_combout\ = (\rightspeed1|Equal9~1_combout\ & ((\rightspeed1|Mod0|auto_generated|divider|divider|op_24~16_combout\ & (!\lp|t1\(3))) # (!\rightspeed1|Mod0|auto_generated|divider|divider|op_24~16_combout\ & 
-- ((!\rightspeed1|Mod0|auto_generated|divider|divider|op_24~4_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rightspeed1|Equal9~1_combout\,
	datab => \rightspeed1|Mod0|auto_generated|divider|divider|op_24~16_combout\,
	datac => \lp|t1\(3),
	datad => \rightspeed1|Mod0|auto_generated|divider|divider|op_24~4_combout\,
	combout => \rightspeed1|Equal1~0_combout\);

-- Location: LCCOMB_X20_Y23_N30
\lp|Div0|auto_generated|divider|divider|StageOut[38]~85\ : cycloneiii_lcell_comb
-- Equation(s):
-- \lp|Div0|auto_generated|divider|divider|StageOut[38]~85_combout\ = (\lp|Div0|auto_generated|divider|divider|add_sub_7_result_int[5]~8_combout\ & ((\lp|Div0|auto_generated|divider|divider|StageOut[32]~83_combout\) # 
-- ((!\lp|Div0|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\ & \lp|Div0|auto_generated|divider|divider|add_sub_6_result_int[2]~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \lp|Div0|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\,
	datab => \lp|Div0|auto_generated|divider|divider|StageOut[32]~83_combout\,
	datac => \lp|Div0|auto_generated|divider|divider|add_sub_6_result_int[2]~2_combout\,
	datad => \lp|Div0|auto_generated|divider|divider|add_sub_7_result_int[5]~8_combout\,
	combout => \lp|Div0|auto_generated|divider|divider|StageOut[38]~85_combout\);

-- Location: LCCOMB_X20_Y23_N0
\lp|Div0|auto_generated|divider|divider|StageOut[38]~65\ : cycloneiii_lcell_comb
-- Equation(s):
-- \lp|Div0|auto_generated|divider|divider|StageOut[38]~65_combout\ = (\lp|Div0|auto_generated|divider|divider|add_sub_7_result_int[3]~4_combout\ & !\lp|Div0|auto_generated|divider|divider|add_sub_7_result_int[5]~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \lp|Div0|auto_generated|divider|divider|add_sub_7_result_int[3]~4_combout\,
	datad => \lp|Div0|auto_generated|divider|divider|add_sub_7_result_int[5]~8_combout\,
	combout => \lp|Div0|auto_generated|divider|divider|StageOut[38]~65_combout\);

-- Location: LCCOMB_X20_Y23_N12
\lp|Div0|auto_generated|divider|divider|StageOut[37]~66\ : cycloneiii_lcell_comb
-- Equation(s):
-- \lp|Div0|auto_generated|divider|divider|StageOut[37]~66_combout\ = (\lp|Div0|auto_generated|divider|divider|add_sub_7_result_int[2]~2_combout\ & !\lp|Div0|auto_generated|divider|divider|add_sub_7_result_int[5]~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \lp|Div0|auto_generated|divider|divider|add_sub_7_result_int[2]~2_combout\,
	datad => \lp|Div0|auto_generated|divider|divider|add_sub_7_result_int[5]~8_combout\,
	combout => \lp|Div0|auto_generated|divider|divider|StageOut[37]~66_combout\);

-- Location: LCCOMB_X20_Y23_N18
\lp|Div0|auto_generated|divider|divider|StageOut[37]~86\ : cycloneiii_lcell_comb
-- Equation(s):
-- \lp|Div0|auto_generated|divider|divider|StageOut[37]~86_combout\ = (\lp|Div0|auto_generated|divider|divider|add_sub_7_result_int[5]~8_combout\ & ((\lp|Div0|auto_generated|divider|divider|StageOut[31]~84_combout\) # 
-- ((\lp|Div0|auto_generated|divider|divider|add_sub_6_result_int[1]~0_combout\ & !\lp|Div0|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \lp|Div0|auto_generated|divider|divider|add_sub_6_result_int[1]~0_combout\,
	datab => \lp|Div0|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\,
	datac => \lp|Div0|auto_generated|divider|divider|StageOut[31]~84_combout\,
	datad => \lp|Div0|auto_generated|divider|divider|add_sub_7_result_int[5]~8_combout\,
	combout => \lp|Div0|auto_generated|divider|divider|StageOut[37]~86_combout\);

-- Location: LCCOMB_X19_Y23_N16
\lp|Div0|auto_generated|divider|divider|StageOut[36]~68\ : cycloneiii_lcell_comb
-- Equation(s):
-- \lp|Div0|auto_generated|divider|divider|StageOut[36]~68_combout\ = (\lp|Div0|auto_generated|divider|divider|add_sub_7_result_int[1]~0_combout\ & !\lp|Div0|auto_generated|divider|divider|add_sub_7_result_int[5]~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \lp|Div0|auto_generated|divider|divider|add_sub_7_result_int[1]~0_combout\,
	datad => \lp|Div0|auto_generated|divider|divider|add_sub_7_result_int[5]~8_combout\,
	combout => \lp|Div0|auto_generated|divider|divider|StageOut[36]~68_combout\);

-- Location: LCCOMB_X20_Y23_N14
\lp|Div0|auto_generated|divider|divider|StageOut[36]~67\ : cycloneiii_lcell_comb
-- Equation(s):
-- \lp|Div0|auto_generated|divider|divider|StageOut[36]~67_combout\ = (\lp|Div0|auto_generated|divider|divider|add_sub_7_result_int[5]~8_combout\ & ((\lp|Div0|auto_generated|divider|divider|StageOut[30]~89_combout\) # 
-- (\lp|Div0|auto_generated|divider|divider|StageOut[30]~88_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \lp|Div0|auto_generated|divider|divider|StageOut[30]~89_combout\,
	datac => \lp|Div0|auto_generated|divider|divider|StageOut[30]~88_combout\,
	datad => \lp|Div0|auto_generated|divider|divider|add_sub_7_result_int[5]~8_combout\,
	combout => \lp|Div0|auto_generated|divider|divider|StageOut[36]~67_combout\);

-- Location: LCCOMB_X22_Y23_N8
\lp|Mod1|auto_generated|divider|divider|StageOut[63]~110\ : cycloneiii_lcell_comb
-- Equation(s):
-- \lp|Mod1|auto_generated|divider|divider|StageOut[63]~110_combout\ = (!\lp|Mod1|auto_generated|divider|divider|add_sub_7_result_int[8]~12_combout\ & \lp|current_second\(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \lp|Mod1|auto_generated|divider|divider|add_sub_7_result_int[8]~12_combout\,
	datad => \lp|current_second\(1),
	combout => \lp|Mod1|auto_generated|divider|divider|StageOut[63]~110_combout\);

-- Location: LCCOMB_X22_Y23_N18
\lp|Mod1|auto_generated|divider|divider|StageOut[63]~109\ : cycloneiii_lcell_comb
-- Equation(s):
-- \lp|Mod1|auto_generated|divider|divider|StageOut[63]~109_combout\ = (\lp|Mod1|auto_generated|divider|divider|add_sub_7_result_int[8]~12_combout\ & \lp|current_second\(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \lp|Mod1|auto_generated|divider|divider|add_sub_7_result_int[8]~12_combout\,
	datad => \lp|current_second\(1),
	combout => \lp|Mod1|auto_generated|divider|divider|StageOut[63]~109_combout\);

-- Location: LCCOMB_X22_Y23_N22
\lp|Mod1|auto_generated|divider|divider|add_sub_8_result_int[1]~16\ : cycloneiii_lcell_comb
-- Equation(s):
-- \lp|Mod1|auto_generated|divider|divider|add_sub_8_result_int[1]~16_combout\ = (\lp|Mod1|auto_generated|divider|divider|StageOut[63]~110_combout\) # (\lp|Mod1|auto_generated|divider|divider|StageOut[63]~109_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \lp|Mod1|auto_generated|divider|divider|StageOut[63]~110_combout\,
	datad => \lp|Mod1|auto_generated|divider|divider|StageOut[63]~109_combout\,
	combout => \lp|Mod1|auto_generated|divider|divider|add_sub_8_result_int[1]~16_combout\);

-- Location: LCCOMB_X19_Y23_N14
\lp|Div0|auto_generated|divider|divider|StageOut[35]~87\ : cycloneiii_lcell_comb
-- Equation(s):
-- \lp|Div0|auto_generated|divider|divider|StageOut[35]~87_combout\ = (\lp|Div0|auto_generated|divider|divider|add_sub_7_result_int[5]~8_combout\ & ((\lp|Mod1|auto_generated|divider|divider|add_sub_8_result_int[9]~14_combout\ & (\lp|current_second\(1))) # 
-- (!\lp|Mod1|auto_generated|divider|divider|add_sub_8_result_int[9]~14_combout\ & ((\lp|Mod1|auto_generated|divider|divider|add_sub_8_result_int[1]~16_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \lp|current_second\(1),
	datab => \lp|Mod1|auto_generated|divider|divider|add_sub_8_result_int[1]~16_combout\,
	datac => \lp|Mod1|auto_generated|divider|divider|add_sub_8_result_int[9]~14_combout\,
	datad => \lp|Div0|auto_generated|divider|divider|add_sub_7_result_int[5]~8_combout\,
	combout => \lp|Div0|auto_generated|divider|divider|StageOut[35]~87_combout\);

-- Location: LCCOMB_X22_Y23_N26
\lp|Mod1|auto_generated|divider|divider|StageOut[73]~111\ : cycloneiii_lcell_comb
-- Equation(s):
-- \lp|Mod1|auto_generated|divider|divider|StageOut[73]~111_combout\ = (\lp|Mod1|auto_generated|divider|divider|add_sub_8_result_int[1]~16_combout\ & !\lp|Mod1|auto_generated|divider|divider|add_sub_8_result_int[9]~14_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \lp|Mod1|auto_generated|divider|divider|add_sub_8_result_int[1]~16_combout\,
	datad => \lp|Mod1|auto_generated|divider|divider|add_sub_8_result_int[9]~14_combout\,
	combout => \lp|Mod1|auto_generated|divider|divider|StageOut[73]~111_combout\);

-- Location: LCCOMB_X22_Y23_N28
\lp|Mod1|auto_generated|divider|divider|StageOut[73]~108\ : cycloneiii_lcell_comb
-- Equation(s):
-- \lp|Mod1|auto_generated|divider|divider|StageOut[73]~108_combout\ = (\lp|current_second\(1) & \lp|Mod1|auto_generated|divider|divider|add_sub_8_result_int[9]~14_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \lp|current_second\(1),
	datad => \lp|Mod1|auto_generated|divider|divider|add_sub_8_result_int[9]~14_combout\,
	combout => \lp|Mod1|auto_generated|divider|divider|StageOut[73]~108_combout\);

-- Location: LCCOMB_X22_Y23_N24
\lp|Div0|auto_generated|divider|divider|add_sub_7_result_int[0]~10\ : cycloneiii_lcell_comb
-- Equation(s):
-- \lp|Div0|auto_generated|divider|divider|add_sub_7_result_int[0]~10_combout\ = (\lp|Mod1|auto_generated|divider|divider|StageOut[73]~111_combout\) # (\lp|Mod1|auto_generated|divider|divider|StageOut[73]~108_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \lp|Mod1|auto_generated|divider|divider|StageOut[73]~111_combout\,
	datad => \lp|Mod1|auto_generated|divider|divider|StageOut[73]~108_combout\,
	combout => \lp|Div0|auto_generated|divider|divider|add_sub_7_result_int[0]~10_combout\);

-- Location: LCCOMB_X20_Y23_N16
\lp|Div0|auto_generated|divider|divider|StageOut[35]~69\ : cycloneiii_lcell_comb
-- Equation(s):
-- \lp|Div0|auto_generated|divider|divider|StageOut[35]~69_combout\ = (\lp|Div0|auto_generated|divider|divider|add_sub_7_result_int[0]~10_combout\ & !\lp|Div0|auto_generated|divider|divider|add_sub_7_result_int[5]~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \lp|Div0|auto_generated|divider|divider|add_sub_7_result_int[0]~10_combout\,
	datad => \lp|Div0|auto_generated|divider|divider|add_sub_7_result_int[5]~8_combout\,
	combout => \lp|Div0|auto_generated|divider|divider|StageOut[35]~69_combout\);

-- Location: LCCOMB_X20_Y23_N2
\lp|Div0|auto_generated|divider|divider|add_sub_8_result_int[1]~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \lp|Div0|auto_generated|divider|divider|add_sub_8_result_int[1]~1_cout\ = CARRY((\lp|Div0|auto_generated|divider|divider|StageOut[35]~87_combout\) # (\lp|Div0|auto_generated|divider|divider|StageOut[35]~69_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \lp|Div0|auto_generated|divider|divider|StageOut[35]~87_combout\,
	datab => \lp|Div0|auto_generated|divider|divider|StageOut[35]~69_combout\,
	datad => VCC,
	cout => \lp|Div0|auto_generated|divider|divider|add_sub_8_result_int[1]~1_cout\);

-- Location: LCCOMB_X20_Y23_N4
\lp|Div0|auto_generated|divider|divider|add_sub_8_result_int[2]~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \lp|Div0|auto_generated|divider|divider|add_sub_8_result_int[2]~3_cout\ = CARRY((!\lp|Div0|auto_generated|divider|divider|StageOut[36]~68_combout\ & (!\lp|Div0|auto_generated|divider|divider|StageOut[36]~67_combout\ & 
-- !\lp|Div0|auto_generated|divider|divider|add_sub_8_result_int[1]~1_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \lp|Div0|auto_generated|divider|divider|StageOut[36]~68_combout\,
	datab => \lp|Div0|auto_generated|divider|divider|StageOut[36]~67_combout\,
	datad => VCC,
	cin => \lp|Div0|auto_generated|divider|divider|add_sub_8_result_int[1]~1_cout\,
	cout => \lp|Div0|auto_generated|divider|divider|add_sub_8_result_int[2]~3_cout\);

-- Location: LCCOMB_X20_Y23_N6
\lp|Div0|auto_generated|divider|divider|add_sub_8_result_int[3]~5\ : cycloneiii_lcell_comb
-- Equation(s):
-- \lp|Div0|auto_generated|divider|divider|add_sub_8_result_int[3]~5_cout\ = CARRY((!\lp|Div0|auto_generated|divider|divider|add_sub_8_result_int[2]~3_cout\ & ((\lp|Div0|auto_generated|divider|divider|StageOut[37]~66_combout\) # 
-- (\lp|Div0|auto_generated|divider|divider|StageOut[37]~86_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \lp|Div0|auto_generated|divider|divider|StageOut[37]~66_combout\,
	datab => \lp|Div0|auto_generated|divider|divider|StageOut[37]~86_combout\,
	datad => VCC,
	cin => \lp|Div0|auto_generated|divider|divider|add_sub_8_result_int[2]~3_cout\,
	cout => \lp|Div0|auto_generated|divider|divider|add_sub_8_result_int[3]~5_cout\);

-- Location: LCCOMB_X20_Y23_N8
\lp|Div0|auto_generated|divider|divider|add_sub_8_result_int[4]~7\ : cycloneiii_lcell_comb
-- Equation(s):
-- \lp|Div0|auto_generated|divider|divider|add_sub_8_result_int[4]~7_cout\ = CARRY((!\lp|Div0|auto_generated|divider|divider|StageOut[38]~85_combout\ & (!\lp|Div0|auto_generated|divider|divider|StageOut[38]~65_combout\ & 
-- !\lp|Div0|auto_generated|divider|divider|add_sub_8_result_int[3]~5_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \lp|Div0|auto_generated|divider|divider|StageOut[38]~85_combout\,
	datab => \lp|Div0|auto_generated|divider|divider|StageOut[38]~65_combout\,
	datad => VCC,
	cin => \lp|Div0|auto_generated|divider|divider|add_sub_8_result_int[3]~5_cout\,
	cout => \lp|Div0|auto_generated|divider|divider|add_sub_8_result_int[4]~7_cout\);

-- Location: LCCOMB_X20_Y23_N10
\lp|Div0|auto_generated|divider|divider|add_sub_8_result_int[5]~8\ : cycloneiii_lcell_comb
-- Equation(s):
-- \lp|Div0|auto_generated|divider|divider|add_sub_8_result_int[5]~8_combout\ = \lp|Div0|auto_generated|divider|divider|add_sub_8_result_int[4]~7_cout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \lp|Div0|auto_generated|divider|divider|add_sub_8_result_int[4]~7_cout\,
	combout => \lp|Div0|auto_generated|divider|divider|add_sub_8_result_int[5]~8_combout\);

-- Location: FF_X20_Y23_N11
\lp|t1[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \lp|Div0|auto_generated|divider|divider|add_sub_8_result_int[5]~8_combout\,
	ena => \lp|ALT_INV_process_0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \lp|t1\(0));

-- Location: LCCOMB_X22_Y25_N4
\rightspeed1|Mod0|auto_generated|divider|divider|StageOut[994]~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \rightspeed1|Mod0|auto_generated|divider|divider|StageOut[994]~0_combout\ = (\rightspeed1|Mod0|auto_generated|divider|divider|op_24~16_combout\ & ((\lp|t1\(2)))) # (!\rightspeed1|Mod0|auto_generated|divider|divider|op_24~16_combout\ & 
-- (\rightspeed1|Mod0|auto_generated|divider|divider|op_24~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rightspeed1|Mod0|auto_generated|divider|divider|op_24~2_combout\,
	datac => \lp|t1\(2),
	datad => \rightspeed1|Mod0|auto_generated|divider|divider|op_24~16_combout\,
	combout => \rightspeed1|Mod0|auto_generated|divider|divider|StageOut[994]~0_combout\);

-- Location: LCCOMB_X22_Y25_N30
\rightspeed1|Mod0|auto_generated|divider|divider|StageOut[993]~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \rightspeed1|Mod0|auto_generated|divider|divider|StageOut[993]~1_combout\ = (\rightspeed1|Mod0|auto_generated|divider|divider|op_24~16_combout\ & (\lp|t1\(1))) # (!\rightspeed1|Mod0|auto_generated|divider|divider|op_24~16_combout\ & 
-- ((\rightspeed1|Mod0|auto_generated|divider|divider|op_24~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \lp|t1\(1),
	datac => \rightspeed1|Mod0|auto_generated|divider|divider|op_24~0_combout\,
	datad => \rightspeed1|Mod0|auto_generated|divider|divider|op_24~16_combout\,
	combout => \rightspeed1|Mod0|auto_generated|divider|divider|StageOut[993]~1_combout\);

-- Location: LCCOMB_X23_Y25_N2
\rightspeed1|seg[0]\ : cycloneiii_lcell_comb
-- Equation(s):
-- \rightspeed1|seg\(0) = (\rightspeed1|Equal1~0_combout\ & (!\rightspeed1|Mod0|auto_generated|divider|divider|StageOut[993]~1_combout\ & (\lp|t1\(0) $ (!\rightspeed1|Mod0|auto_generated|divider|divider|StageOut[994]~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rightspeed1|Equal1~0_combout\,
	datab => \lp|t1\(0),
	datac => \rightspeed1|Mod0|auto_generated|divider|divider|StageOut[994]~0_combout\,
	datad => \rightspeed1|Mod0|auto_generated|divider|divider|StageOut[993]~1_combout\,
	combout => \rightspeed1|seg\(0));

-- Location: LCCOMB_X22_Y25_N2
\rightspeed1|WideNor0~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \rightspeed1|WideNor0~2_combout\ = (!\rightspeed1|Mod0|auto_generated|divider|divider|op_24~12_combout\ & (!\rightspeed1|Mod0|auto_generated|divider|divider|op_24~8_combout\ & (!\rightspeed1|Mod0|auto_generated|divider|divider|op_24~10_combout\ & 
-- !\rightspeed1|Mod0|auto_generated|divider|divider|op_24~16_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rightspeed1|Mod0|auto_generated|divider|divider|op_24~12_combout\,
	datab => \rightspeed1|Mod0|auto_generated|divider|divider|op_24~8_combout\,
	datac => \rightspeed1|Mod0|auto_generated|divider|divider|op_24~10_combout\,
	datad => \rightspeed1|Mod0|auto_generated|divider|divider|op_24~16_combout\,
	combout => \rightspeed1|WideNor0~2_combout\);

-- Location: LCCOMB_X22_Y25_N28
\rightspeed1|WideNor0~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \rightspeed1|WideNor0~1_combout\ = (!\rightspeed1|Mod0|auto_generated|divider|divider|op_24~14_combout\ & (((!\rightspeed1|Mod0|auto_generated|divider|divider|op_24~0_combout\ & !\rightspeed1|Mod0|auto_generated|divider|divider|op_24~2_combout\)) # 
-- (!\rightspeed1|Mod0|auto_generated|divider|divider|op_24~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000100010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rightspeed1|Mod0|auto_generated|divider|divider|op_24~14_combout\,
	datab => \rightspeed1|Mod0|auto_generated|divider|divider|op_24~4_combout\,
	datac => \rightspeed1|Mod0|auto_generated|divider|divider|op_24~0_combout\,
	datad => \rightspeed1|Mod0|auto_generated|divider|divider|op_24~2_combout\,
	combout => \rightspeed1|WideNor0~1_combout\);

-- Location: LCCOMB_X22_Y25_N6
\rightspeed1|WideNor0~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \rightspeed1|WideNor0~0_combout\ = (\rightspeed1|Mod0|auto_generated|divider|divider|op_24~16_combout\ & (((!\lp|t1\(2) & !\lp|t1\(1))) # (!\lp|t1\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101011100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \lp|t1\(3),
	datab => \lp|t1\(2),
	datac => \lp|t1\(1),
	datad => \rightspeed1|Mod0|auto_generated|divider|divider|op_24~16_combout\,
	combout => \rightspeed1|WideNor0~0_combout\);

-- Location: LCCOMB_X23_Y25_N18
\rightspeed1|WideNor0~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \rightspeed1|WideNor0~3_combout\ = (\rightspeed1|WideNor0~0_combout\) # ((\rightspeed1|WideNor0~2_combout\ & (\rightspeed1|WideNor0~1_combout\ & !\rightspeed1|Mod0|auto_generated|divider|divider|op_24~6_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rightspeed1|WideNor0~2_combout\,
	datab => \rightspeed1|WideNor0~1_combout\,
	datac => \rightspeed1|WideNor0~0_combout\,
	datad => \rightspeed1|Mod0|auto_generated|divider|divider|op_24~6_combout\,
	combout => \rightspeed1|WideNor0~3_combout\);

-- Location: LCCOMB_X23_Y25_N20
\rightspeed1|WideOr4~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \rightspeed1|WideOr4~0_combout\ = (\rightspeed1|Equal1~0_combout\ & (\rightspeed1|Mod0|auto_generated|divider|divider|StageOut[994]~0_combout\ & (\lp|t1\(0) $ (!\rightspeed1|Mod0|auto_generated|divider|divider|StageOut[993]~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rightspeed1|Equal1~0_combout\,
	datab => \lp|t1\(0),
	datac => \rightspeed1|Mod0|auto_generated|divider|divider|StageOut[994]~0_combout\,
	datad => \rightspeed1|Mod0|auto_generated|divider|divider|StageOut[993]~1_combout\,
	combout => \rightspeed1|WideOr4~0_combout\);

-- Location: LCCOMB_X23_Y25_N24
\rightspeed1|WideOr4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \rightspeed1|WideOr4~combout\ = (\rightspeed1|WideOr4~0_combout\) # (!\rightspeed1|WideNor0~3_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \rightspeed1|WideNor0~3_combout\,
	datad => \rightspeed1|WideOr4~0_combout\,
	combout => \rightspeed1|WideOr4~combout\);

-- Location: LCCOMB_X23_Y25_N10
\rightspeed1|Equal1~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \rightspeed1|Equal1~1_combout\ = (\lp|t1\(0) & \rightspeed1|Equal1~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \lp|t1\(0),
	datad => \rightspeed1|Equal1~0_combout\,
	combout => \rightspeed1|Equal1~1_combout\);

-- Location: LCCOMB_X23_Y25_N0
\rightspeed1|seg[2]\ : cycloneiii_lcell_comb
-- Equation(s):
-- \rightspeed1|seg\(2) = ((\rightspeed1|Equal1~1_combout\ & (\rightspeed1|Mod0|auto_generated|divider|divider|StageOut[993]~1_combout\ & !\rightspeed1|Mod0|auto_generated|divider|divider|StageOut[994]~0_combout\))) # (!\rightspeed1|WideNor0~3_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rightspeed1|Equal1~1_combout\,
	datab => \rightspeed1|Mod0|auto_generated|divider|divider|StageOut[993]~1_combout\,
	datac => \rightspeed1|Mod0|auto_generated|divider|divider|StageOut[994]~0_combout\,
	datad => \rightspeed1|WideNor0~3_combout\,
	combout => \rightspeed1|seg\(2));

-- Location: LCCOMB_X23_Y25_N6
\rightspeed1|Equal2~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \rightspeed1|Equal2~0_combout\ = (!\lp|t1\(0) & \rightspeed1|Equal1~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \lp|t1\(0),
	datad => \rightspeed1|Equal1~0_combout\,
	combout => \rightspeed1|Equal2~0_combout\);

-- Location: LCCOMB_X23_Y25_N12
\rightspeed1|WideOr0~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \rightspeed1|WideOr0~0_combout\ = (\rightspeed1|WideNor0~3_combout\ & ((\rightspeed1|Mod0|auto_generated|divider|divider|StageOut[993]~1_combout\ $ (\rightspeed1|Mod0|auto_generated|divider|divider|StageOut[994]~0_combout\)) # 
-- (!\rightspeed1|Equal2~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111110100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rightspeed1|Equal2~0_combout\,
	datab => \rightspeed1|Mod0|auto_generated|divider|divider|StageOut[993]~1_combout\,
	datac => \rightspeed1|Mod0|auto_generated|divider|divider|StageOut[994]~0_combout\,
	datad => \rightspeed1|WideNor0~3_combout\,
	combout => \rightspeed1|WideOr0~0_combout\);

-- Location: LCCOMB_X23_Y25_N26
\rightspeed1|WideOr3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \rightspeed1|WideOr3~combout\ = ((\rightspeed1|Equal1~1_combout\ & (!\rightspeed1|Mod0|auto_generated|divider|divider|StageOut[993]~1_combout\ & \rightspeed1|Mod0|auto_generated|divider|divider|StageOut[994]~0_combout\))) # 
-- (!\rightspeed1|WideOr0~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rightspeed1|Equal1~1_combout\,
	datab => \rightspeed1|Mod0|auto_generated|divider|divider|StageOut[993]~1_combout\,
	datac => \rightspeed1|Mod0|auto_generated|divider|divider|StageOut[994]~0_combout\,
	datad => \rightspeed1|WideOr0~0_combout\,
	combout => \rightspeed1|WideOr3~combout\);

-- Location: LCCOMB_X23_Y25_N16
\rightspeed1|Equal9~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \rightspeed1|Equal9~2_combout\ = (\lp|t1\(0) & ((\rightspeed1|Mod0|auto_generated|divider|divider|op_24~16_combout\ & ((\lp|t1\(3)))) # (!\rightspeed1|Mod0|auto_generated|divider|divider|op_24~16_combout\ & 
-- (\rightspeed1|Mod0|auto_generated|divider|divider|op_24~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rightspeed1|Mod0|auto_generated|divider|divider|op_24~4_combout\,
	datab => \lp|t1\(0),
	datac => \lp|t1\(3),
	datad => \rightspeed1|Mod0|auto_generated|divider|divider|op_24~16_combout\,
	combout => \rightspeed1|Equal9~2_combout\);

-- Location: LCCOMB_X23_Y25_N22
\rightspeed1|Equal9~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \rightspeed1|Equal9~3_combout\ = (\rightspeed1|Equal9~1_combout\ & (!\rightspeed1|Mod0|auto_generated|divider|divider|StageOut[993]~1_combout\ & (!\rightspeed1|Mod0|auto_generated|divider|divider|StageOut[994]~0_combout\ & 
-- \rightspeed1|Equal9~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rightspeed1|Equal9~1_combout\,
	datab => \rightspeed1|Mod0|auto_generated|divider|divider|StageOut[993]~1_combout\,
	datac => \rightspeed1|Mod0|auto_generated|divider|divider|StageOut[994]~0_combout\,
	datad => \rightspeed1|Equal9~2_combout\,
	combout => \rightspeed1|Equal9~3_combout\);

-- Location: LCCOMB_X23_Y25_N4
\rightspeed1|WideOr2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \rightspeed1|WideOr2~combout\ = (\rightspeed1|Equal9~3_combout\) # ((\rightspeed1|Equal1~1_combout\ & ((\rightspeed1|Mod0|auto_generated|divider|divider|StageOut[993]~1_combout\) # 
-- (!\rightspeed1|Mod0|auto_generated|divider|divider|StageOut[994]~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101011110010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rightspeed1|Equal1~1_combout\,
	datab => \rightspeed1|Mod0|auto_generated|divider|divider|StageOut[994]~0_combout\,
	datac => \rightspeed1|Equal9~3_combout\,
	datad => \rightspeed1|Mod0|auto_generated|divider|divider|StageOut[993]~1_combout\,
	combout => \rightspeed1|WideOr2~combout\);

-- Location: LCCOMB_X23_Y25_N30
\rightspeed1|WideOr1~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \rightspeed1|WideOr1~0_combout\ = ((\rightspeed1|Equal2~0_combout\ & ((\rightspeed1|Mod0|auto_generated|divider|divider|StageOut[993]~1_combout\) # (!\rightspeed1|Mod0|auto_generated|divider|divider|StageOut[994]~0_combout\)))) # 
-- (!\rightspeed1|WideNor0~3_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000101011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rightspeed1|Equal2~0_combout\,
	datab => \rightspeed1|Mod0|auto_generated|divider|divider|StageOut[993]~1_combout\,
	datac => \rightspeed1|Mod0|auto_generated|divider|divider|StageOut[994]~0_combout\,
	datad => \rightspeed1|WideNor0~3_combout\,
	combout => \rightspeed1|WideOr1~0_combout\);

-- Location: LCCOMB_X23_Y25_N8
\rightspeed1|WideOr1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \rightspeed1|WideOr1~combout\ = (\rightspeed1|WideOr1~0_combout\) # ((\rightspeed1|Equal1~1_combout\ & (!\rightspeed1|Mod0|auto_generated|divider|divider|StageOut[994]~0_combout\ & 
-- \rightspeed1|Mod0|auto_generated|divider|divider|StageOut[993]~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rightspeed1|Equal1~1_combout\,
	datab => \rightspeed1|Mod0|auto_generated|divider|divider|StageOut[994]~0_combout\,
	datac => \rightspeed1|WideOr1~0_combout\,
	datad => \rightspeed1|Mod0|auto_generated|divider|divider|StageOut[993]~1_combout\,
	combout => \rightspeed1|WideOr1~combout\);

-- Location: LCCOMB_X23_Y25_N14
\rightspeed1|WideOr0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \rightspeed1|WideOr0~combout\ = ((\rightspeed1|Equal1~1_combout\ & (!\rightspeed1|Mod0|auto_generated|divider|divider|StageOut[993]~1_combout\ & !\rightspeed1|Mod0|auto_generated|divider|divider|StageOut[994]~0_combout\))) # 
-- (!\rightspeed1|WideOr0~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rightspeed1|Equal1~1_combout\,
	datab => \rightspeed1|Mod0|auto_generated|divider|divider|StageOut[993]~1_combout\,
	datac => \rightspeed1|Mod0|auto_generated|divider|divider|StageOut[994]~0_combout\,
	datad => \rightspeed1|WideOr0~0_combout\,
	combout => \rightspeed1|WideOr0~combout\);

-- Location: LCCOMB_X27_Y24_N0
\lp|t2[0]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \lp|t2[0]~feeder_combout\ = VCC

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	combout => \lp|t2[0]~feeder_combout\);

-- Location: FF_X27_Y24_N1
\lp|t2[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \lp|t2[0]~feeder_combout\,
	ena => \lp|ALT_INV_process_0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \lp|t2\(0));

-- Location: IOIBUF_X0_Y27_N22
\sw[4]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_sw(4),
	o => \sw[4]~input_o\);

-- Location: IOIBUF_X0_Y22_N15
\sw[5]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_sw(5),
	o => \sw[5]~input_o\);

ww_motor_left <= \motor_left~output_o\;

ww_motor_right <= \motor_right~output_o\;

ww_led(0) <= \led[0]~output_o\;

ww_led(1) <= \led[1]~output_o\;

ww_led(2) <= \led[2]~output_o\;

ww_led(3) <= \led[3]~output_o\;

ww_led(4) <= \led[4]~output_o\;

ww_led(5) <= \led[5]~output_o\;

ww_led(6) <= \led[6]~output_o\;

ww_led(7) <= \led[7]~output_o\;

ww_led(8) <= \led[8]~output_o\;

ww_led(9) <= \led[9]~output_o\;

ww_seg0(0) <= \seg0[0]~output_o\;

ww_seg0(1) <= \seg0[1]~output_o\;

ww_seg0(2) <= \seg0[2]~output_o\;

ww_seg0(3) <= \seg0[3]~output_o\;

ww_seg0(4) <= \seg0[4]~output_o\;

ww_seg0(5) <= \seg0[5]~output_o\;

ww_seg0(6) <= \seg0[6]~output_o\;

ww_seg1(0) <= \seg1[0]~output_o\;

ww_seg1(1) <= \seg1[1]~output_o\;

ww_seg1(2) <= \seg1[2]~output_o\;

ww_seg1(3) <= \seg1[3]~output_o\;

ww_seg1(4) <= \seg1[4]~output_o\;

ww_seg1(5) <= \seg1[5]~output_o\;

ww_seg1(6) <= \seg1[6]~output_o\;

ww_seg2(0) <= \seg2[0]~output_o\;

ww_seg2(1) <= \seg2[1]~output_o\;

ww_seg2(2) <= \seg2[2]~output_o\;

ww_seg2(3) <= \seg2[3]~output_o\;

ww_seg2(4) <= \seg2[4]~output_o\;

ww_seg2(5) <= \seg2[5]~output_o\;

ww_seg2(6) <= \seg2[6]~output_o\;

ww_seg3(0) <= \seg3[0]~output_o\;

ww_seg3(1) <= \seg3[1]~output_o\;

ww_seg3(2) <= \seg3[2]~output_o\;

ww_seg3(3) <= \seg3[3]~output_o\;

ww_seg3(4) <= \seg3[4]~output_o\;

ww_seg3(5) <= \seg3[5]~output_o\;

ww_seg3(6) <= \seg3[6]~output_o\;
END structure;


