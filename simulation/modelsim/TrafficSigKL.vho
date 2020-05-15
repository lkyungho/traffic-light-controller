-- Copyright (C) 1991-2015 Altera Corporation. All rights reserved.
-- Your use of Altera Corporation's design tools, logic functions 
-- and other software and tools, and its AMPP partner logic 
-- functions, and any output files from any of the foregoing 
-- (including device programming or simulation files), and any 
-- associated documentation or information are expressly subject 
-- to the terms and conditions of the Altera Program License 
-- Subscription Agreement, the Altera Quartus II License Agreement,
-- the Altera MegaCore Function License Agreement, or other 
-- applicable license agreement, including, without limitation, 
-- that your use is for the sole purpose of programming logic 
-- devices manufactured by Altera and sold by Altera or its 
-- authorized distributors.  Please refer to the applicable 
-- agreement for further details.

-- VENDOR "Altera"
-- PROGRAM "Quartus II 64-Bit"
-- VERSION "Version 15.0.0 Build 145 04/22/2015 SJ Web Edition"

-- DATE "08/12/2019 18:36:08"

-- 
-- Device: Altera 5CEBA4F23C7 Package FBGA484
-- 

-- 
-- This VHDL file should be used for ModelSim-Altera (VHDL) only
-- 

LIBRARY ALTERA;
LIBRARY ALTERA_LNSIM;
LIBRARY CYCLONEV;
LIBRARY IEEE;
USE ALTERA.ALTERA_PRIMITIVES_COMPONENTS.ALL;
USE ALTERA_LNSIM.ALTERA_LNSIM_COMPONENTS.ALL;
USE CYCLONEV.CYCLONEV_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	TrafficSigKL IS
    PORT (
	clk : IN std_logic;
	reset : IN std_logic;
	timer_en : IN std_logic;
	outclk : BUFFER std_logic;
	timer_ew : BUFFER std_logic_vector(6 DOWNTO 0);
	timer_ns : BUFFER std_logic_vector(6 DOWNTO 0);
	s_out : BUFFER std_logic_vector(1 DOWNTO 0);
	ns_klim : BUFFER std_logic_vector(2 DOWNTO 0);
	ew_klim : BUFFER std_logic_vector(2 DOWNTO 0);
	seg5 : BUFFER std_logic_vector(0 TO 6);
	seg4 : BUFFER std_logic_vector(0 TO 6);
	seg3 : BUFFER std_logic_vector(0 TO 6);
	seg2 : BUFFER std_logic_vector(0 TO 6);
	seg1 : BUFFER std_logic_vector(0 TO 6);
	seg0 : BUFFER std_logic_vector(0 TO 6)
	);
END TrafficSigKL;

-- Design Ports Information
-- ns_klim[0]	=>  Location: PIN_AA1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ns_klim[1]	=>  Location: PIN_W2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ns_klim[2]	=>  Location: PIN_Y3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ew_klim[0]	=>  Location: PIN_U1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ew_klim[1]	=>  Location: PIN_L2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ew_klim[2]	=>  Location: PIN_L1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- seg5[6]	=>  Location: PIN_W19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- seg5[5]	=>  Location: PIN_C2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- seg5[4]	=>  Location: PIN_C1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- seg5[3]	=>  Location: PIN_P14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- seg5[2]	=>  Location: PIN_T14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- seg5[1]	=>  Location: PIN_M8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- seg5[0]	=>  Location: PIN_N9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- seg4[6]	=>  Location: PIN_P9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- seg4[5]	=>  Location: PIN_Y15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- seg4[4]	=>  Location: PIN_U15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- seg4[3]	=>  Location: PIN_U16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- seg4[2]	=>  Location: PIN_V20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- seg4[1]	=>  Location: PIN_Y20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- seg4[0]	=>  Location: PIN_U20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- seg3[6]	=>  Location: PIN_V19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- seg3[5]	=>  Location: PIN_V18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- seg3[4]	=>  Location: PIN_U17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- seg3[3]	=>  Location: PIN_V16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- seg3[2]	=>  Location: PIN_Y17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- seg3[1]	=>  Location: PIN_W16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- seg3[0]	=>  Location: PIN_Y16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- seg2[6]	=>  Location: PIN_AB21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- seg2[5]	=>  Location: PIN_AB22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- seg2[4]	=>  Location: PIN_V14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- seg2[3]	=>  Location: PIN_Y14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- seg2[2]	=>  Location: PIN_AA10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- seg2[1]	=>  Location: PIN_AB17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- seg2[0]	=>  Location: PIN_Y19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- seg1[6]	=>  Location: PIN_U22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- seg1[5]	=>  Location: PIN_AA17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- seg1[4]	=>  Location: PIN_AB18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- seg1[3]	=>  Location: PIN_AA18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- seg1[2]	=>  Location: PIN_AA19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- seg1[1]	=>  Location: PIN_AB20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- seg1[0]	=>  Location: PIN_AA20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- seg0[6]	=>  Location: PIN_AA22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- seg0[5]	=>  Location: PIN_Y21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- seg0[4]	=>  Location: PIN_Y22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- seg0[3]	=>  Location: PIN_W21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- seg0[2]	=>  Location: PIN_W22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- seg0[1]	=>  Location: PIN_V21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- seg0[0]	=>  Location: PIN_U21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- outclk	=>  Location: PIN_AA13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- timer_ew[0]	=>  Location: PIN_T13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- timer_ew[1]	=>  Location: PIN_AA14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- timer_ew[2]	=>  Location: PIN_AA15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- timer_ew[3]	=>  Location: PIN_T12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- timer_ew[4]	=>  Location: PIN_Y11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- timer_ew[5]	=>  Location: PIN_V13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- timer_ew[6]	=>  Location: PIN_P12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- timer_ns[0]	=>  Location: PIN_AB15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- timer_ns[1]	=>  Location: PIN_R11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- timer_ns[2]	=>  Location: PIN_V15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- timer_ns[3]	=>  Location: PIN_R14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- timer_ns[4]	=>  Location: PIN_U13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- timer_ns[5]	=>  Location: PIN_R10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- timer_ns[6]	=>  Location: PIN_AB13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- s_out[0]	=>  Location: PIN_AB11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- s_out[1]	=>  Location: PIN_AA12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- reset	=>  Location: PIN_M6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- clk	=>  Location: PIN_M9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- timer_en	=>  Location: PIN_AB12,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF TrafficSigKL IS
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
SIGNAL ww_reset : std_logic;
SIGNAL ww_timer_en : std_logic;
SIGNAL ww_outclk : std_logic;
SIGNAL ww_timer_ew : std_logic_vector(6 DOWNTO 0);
SIGNAL ww_timer_ns : std_logic_vector(6 DOWNTO 0);
SIGNAL ww_s_out : std_logic_vector(1 DOWNTO 0);
SIGNAL ww_ns_klim : std_logic_vector(2 DOWNTO 0);
SIGNAL ww_ew_klim : std_logic_vector(2 DOWNTO 0);
SIGNAL ww_seg5 : std_logic_vector(0 TO 6);
SIGNAL ww_seg4 : std_logic_vector(0 TO 6);
SIGNAL ww_seg3 : std_logic_vector(0 TO 6);
SIGNAL ww_seg2 : std_logic_vector(0 TO 6);
SIGNAL ww_seg1 : std_logic_vector(0 TO 6);
SIGNAL ww_seg0 : std_logic_vector(0 TO 6);
SIGNAL \outclk~input_o\ : std_logic;
SIGNAL \timer_ew[0]~input_o\ : std_logic;
SIGNAL \timer_ew[1]~input_o\ : std_logic;
SIGNAL \timer_ew[2]~input_o\ : std_logic;
SIGNAL \timer_ew[3]~input_o\ : std_logic;
SIGNAL \timer_ew[4]~input_o\ : std_logic;
SIGNAL \timer_ew[5]~input_o\ : std_logic;
SIGNAL \timer_ew[6]~input_o\ : std_logic;
SIGNAL \timer_ns[0]~input_o\ : std_logic;
SIGNAL \timer_ns[1]~input_o\ : std_logic;
SIGNAL \timer_ns[2]~input_o\ : std_logic;
SIGNAL \timer_ns[3]~input_o\ : std_logic;
SIGNAL \timer_ns[4]~input_o\ : std_logic;
SIGNAL \timer_ns[5]~input_o\ : std_logic;
SIGNAL \timer_ns[6]~input_o\ : std_logic;
SIGNAL \s_out[0]~input_o\ : std_logic;
SIGNAL \s_out[1]~input_o\ : std_logic;
SIGNAL \clk~input_o\ : std_logic;
SIGNAL \reset~input_o\ : std_logic;
SIGNAL \clk~inputCLKENA0_outclk\ : std_logic;
SIGNAL \Add0~41_sumout\ : std_logic;
SIGNAL \Add0~42\ : std_logic;
SIGNAL \Add0~37_sumout\ : std_logic;
SIGNAL \Add0~38\ : std_logic;
SIGNAL \Add0~33_sumout\ : std_logic;
SIGNAL \Add0~34\ : std_logic;
SIGNAL \Add0~77_sumout\ : std_logic;
SIGNAL \Add0~78\ : std_logic;
SIGNAL \Add0~73_sumout\ : std_logic;
SIGNAL \Add0~74\ : std_logic;
SIGNAL \Add0~69_sumout\ : std_logic;
SIGNAL \Add0~70\ : std_logic;
SIGNAL \Add0~21_sumout\ : std_logic;
SIGNAL \Add0~22\ : std_logic;
SIGNAL \Add0~65_sumout\ : std_logic;
SIGNAL \Add0~66\ : std_logic;
SIGNAL \Add0~61_sumout\ : std_logic;
SIGNAL \Add0~62\ : std_logic;
SIGNAL \Add0~57_sumout\ : std_logic;
SIGNAL \Add0~58\ : std_logic;
SIGNAL \Add0~125_sumout\ : std_logic;
SIGNAL \Add0~126\ : std_logic;
SIGNAL \Add0~121_sumout\ : std_logic;
SIGNAL \Add0~122\ : std_logic;
SIGNAL \Add0~117_sumout\ : std_logic;
SIGNAL \Add0~118\ : std_logic;
SIGNAL \Add0~113_sumout\ : std_logic;
SIGNAL \Add0~114\ : std_logic;
SIGNAL \Add0~109_sumout\ : std_logic;
SIGNAL \Add0~110\ : std_logic;
SIGNAL \Add0~101_sumout\ : std_logic;
SIGNAL \Add0~102\ : std_logic;
SIGNAL \Add0~97_sumout\ : std_logic;
SIGNAL \Add0~98\ : std_logic;
SIGNAL \Add0~93_sumout\ : std_logic;
SIGNAL \Add0~94\ : std_logic;
SIGNAL \Add0~89_sumout\ : std_logic;
SIGNAL \Add0~90\ : std_logic;
SIGNAL \Add0~85_sumout\ : std_logic;
SIGNAL \Add0~86\ : std_logic;
SIGNAL \Add0~105_sumout\ : std_logic;
SIGNAL \Add0~106\ : std_logic;
SIGNAL \Add0~81_sumout\ : std_logic;
SIGNAL \Add0~82\ : std_logic;
SIGNAL \Add0~5_sumout\ : std_logic;
SIGNAL \Add0~6\ : std_logic;
SIGNAL \Add0~1_sumout\ : std_logic;
SIGNAL \Equal0~0_combout\ : std_logic;
SIGNAL \Add0~2\ : std_logic;
SIGNAL \Add0~29_sumout\ : std_logic;
SIGNAL \Add0~30\ : std_logic;
SIGNAL \Add0~25_sumout\ : std_logic;
SIGNAL \Add0~26\ : std_logic;
SIGNAL \Add0~45_sumout\ : std_logic;
SIGNAL \Add0~46\ : std_logic;
SIGNAL \Add0~17_sumout\ : std_logic;
SIGNAL \Add0~18\ : std_logic;
SIGNAL \Add0~13_sumout\ : std_logic;
SIGNAL \Add0~14\ : std_logic;
SIGNAL \Add0~9_sumout\ : std_logic;
SIGNAL \Add0~10\ : std_logic;
SIGNAL \Add0~53_sumout\ : std_logic;
SIGNAL \Add0~54\ : std_logic;
SIGNAL \Add0~49_sumout\ : std_logic;
SIGNAL \Equal0~2_combout\ : std_logic;
SIGNAL \Equal0~5_combout\ : std_logic;
SIGNAL \Equal0~1_combout\ : std_logic;
SIGNAL \Equal0~4_combout\ : std_logic;
SIGNAL \Equal0~3_combout\ : std_logic;
SIGNAL \Equal0~6_combout\ : std_logic;
SIGNAL \temp~0_combout\ : std_logic;
SIGNAL \temp~feeder_combout\ : std_logic;
SIGNAL \temp~q\ : std_logic;
SIGNAL \~GND~combout\ : std_logic;
SIGNAL \timer1[0]~feeder_combout\ : std_logic;
SIGNAL \Add1~17_sumout\ : std_logic;
SIGNAL \timer1[1]~feeder_combout\ : std_logic;
SIGNAL \Add1~18\ : std_logic;
SIGNAL \Add1~13_sumout\ : std_logic;
SIGNAL \Add1~13_wirecell_combout\ : std_logic;
SIGNAL \timer_en~input_o\ : std_logic;
SIGNAL \Add2~5_sumout\ : std_logic;
SIGNAL \timer2[0]~feeder_combout\ : std_logic;
SIGNAL \Add2~2\ : std_logic;
SIGNAL \Add2~21_sumout\ : std_logic;
SIGNAL \timer2[3]~feeder_combout\ : std_logic;
SIGNAL \Add2~22\ : std_logic;
SIGNAL \Add2~17_sumout\ : std_logic;
SIGNAL \timer2[4]~feeder_combout\ : std_logic;
SIGNAL \Add2~18\ : std_logic;
SIGNAL \Add2~13_sumout\ : std_logic;
SIGNAL \timer2[5]~feeder_combout\ : std_logic;
SIGNAL \Add2~14\ : std_logic;
SIGNAL \Add2~9_sumout\ : std_logic;
SIGNAL \timer2[6]~feeder_combout\ : std_logic;
SIGNAL \Equal3~0_combout\ : std_logic;
SIGNAL \timer1[3]~feeder_combout\ : std_logic;
SIGNAL \timer1[2]~feeder_combout\ : std_logic;
SIGNAL \Add1~14\ : std_logic;
SIGNAL \Add1~9_sumout\ : std_logic;
SIGNAL \Add1~10\ : std_logic;
SIGNAL \Add1~5_sumout\ : std_logic;
SIGNAL \Add1~5_wirecell_combout\ : std_logic;
SIGNAL \timer1[4]~feeder_combout\ : std_logic;
SIGNAL \Add1~6\ : std_logic;
SIGNAL \Add1~1_sumout\ : std_logic;
SIGNAL \Add1~2\ : std_logic;
SIGNAL \Add1~25_sumout\ : std_logic;
SIGNAL \timer1[5]~3_combout\ : std_logic;
SIGNAL \Add1~26\ : std_logic;
SIGNAL \Add1~21_sumout\ : std_logic;
SIGNAL \timer1[6]~2_combout\ : std_logic;
SIGNAL \Equal2~1_combout\ : std_logic;
SIGNAL \timer2[6]~0_combout\ : std_logic;
SIGNAL \Add2~6\ : std_logic;
SIGNAL \Add2~25_sumout\ : std_logic;
SIGNAL \timer2[1]~feeder_combout\ : std_logic;
SIGNAL \Add2~26\ : std_logic;
SIGNAL \Add2~1_sumout\ : std_logic;
SIGNAL \timer2[2]~feeder_combout\ : std_logic;
SIGNAL \timer1[5]~1_combout\ : std_logic;
SIGNAL \Equal1~0_combout\ : std_logic;
SIGNAL \timer1[6]~0_combout\ : std_logic;
SIGNAL \Equal2~0_combout\ : std_logic;
SIGNAL \s[1]~0_combout\ : std_logic;
SIGNAL \Equal1~2_combout\ : std_logic;
SIGNAL \s[0]~2_combout\ : std_logic;
SIGNAL \s[0]~1_combout\ : std_logic;
SIGNAL \ns[1]~0_combout\ : std_logic;
SIGNAL \ns~3_combout\ : std_logic;
SIGNAL \ns~1_combout\ : std_logic;
SIGNAL \ns~2_combout\ : std_logic;
SIGNAL \Mux5~0_combout\ : std_logic;
SIGNAL \ns[0]~4_combout\ : std_logic;
SIGNAL \Equal1~1_combout\ : std_logic;
SIGNAL \ew[1]~5_combout\ : std_logic;
SIGNAL \Equal4~0_combout\ : std_logic;
SIGNAL \ew[1]~3_combout\ : std_logic;
SIGNAL \ew~0_combout\ : std_logic;
SIGNAL \ew~2_combout\ : std_logic;
SIGNAL \ew~1_combout\ : std_logic;
SIGNAL \Mux4~0_combout\ : std_logic;
SIGNAL \u1|Mux3~0_combout\ : std_logic;
SIGNAL \u1|Mux0~0_combout\ : std_logic;
SIGNAL \u1|Mux0~1_combout\ : std_logic;
SIGNAL \u2|Div0|auto_generated|divider|divider|add_sub_3_result_int[0]~18\ : std_logic;
SIGNAL \u2|Div0|auto_generated|divider|divider|add_sub_3_result_int[0]~19\ : std_logic;
SIGNAL \u2|Div0|auto_generated|divider|divider|add_sub_3_result_int[1]~10\ : std_logic;
SIGNAL \u2|Div0|auto_generated|divider|divider|add_sub_3_result_int[1]~11\ : std_logic;
SIGNAL \u2|Div0|auto_generated|divider|divider|add_sub_3_result_int[2]~14\ : std_logic;
SIGNAL \u2|Div0|auto_generated|divider|divider|add_sub_3_result_int[2]~15\ : std_logic;
SIGNAL \u2|Div0|auto_generated|divider|divider|add_sub_3_result_int[3]~5_sumout\ : std_logic;
SIGNAL \u2|Div0|auto_generated|divider|divider|add_sub_3_result_int[3]~6\ : std_logic;
SIGNAL \u2|Div0|auto_generated|divider|divider|add_sub_3_result_int[3]~7\ : std_logic;
SIGNAL \u2|Div0|auto_generated|divider|divider|add_sub_3_result_int[4]~1_sumout\ : std_logic;
SIGNAL \u2|Div0|auto_generated|divider|divider|StageOut[18]~5_combout\ : std_logic;
SIGNAL \u2|Div0|auto_generated|divider|divider|StageOut[18]~6_combout\ : std_logic;
SIGNAL \u2|Div0|auto_generated|divider|divider|add_sub_3_result_int[2]~13_sumout\ : std_logic;
SIGNAL \u2|Div0|auto_generated|divider|divider|add_sub_3_result_int[1]~9_sumout\ : std_logic;
SIGNAL \u2|Div0|auto_generated|divider|divider|StageOut[16]~7_combout\ : std_logic;
SIGNAL \u2|Div0|auto_generated|divider|divider|StageOut[16]~8_combout\ : std_logic;
SIGNAL \u2|Div0|auto_generated|divider|divider|add_sub_3_result_int[0]~17_sumout\ : std_logic;
SIGNAL \u2|Div0|auto_generated|divider|divider|op_5~26_cout\ : std_logic;
SIGNAL \u2|Div0|auto_generated|divider|divider|op_5~22\ : std_logic;
SIGNAL \u2|Div0|auto_generated|divider|divider|op_5~18\ : std_logic;
SIGNAL \u2|Div0|auto_generated|divider|divider|op_5~10\ : std_logic;
SIGNAL \u2|Div0|auto_generated|divider|divider|op_5~14\ : std_logic;
SIGNAL \u2|Div0|auto_generated|divider|divider|op_5~6_cout\ : std_logic;
SIGNAL \u2|Div0|auto_generated|divider|divider|op_5~1_sumout\ : std_logic;
SIGNAL \u2|Div0|auto_generated|divider|divider|StageOut[17]~3_combout\ : std_logic;
SIGNAL \u2|Div0|auto_generated|divider|divider|op_5~13_sumout\ : std_logic;
SIGNAL \u2|Div0|auto_generated|divider|divider|StageOut[17]~4_combout\ : std_logic;
SIGNAL \u2|Div0|auto_generated|divider|divider|StageOut[16]~1_combout\ : std_logic;
SIGNAL \u2|Div0|auto_generated|divider|divider|op_5~9_sumout\ : std_logic;
SIGNAL \u2|Div0|auto_generated|divider|divider|StageOut[15]~9_combout\ : std_logic;
SIGNAL \u2|Div0|auto_generated|divider|divider|op_5~17_sumout\ : std_logic;
SIGNAL \u2|Div0|auto_generated|divider|divider|op_5~21_sumout\ : std_logic;
SIGNAL \u2|Div0|auto_generated|divider|divider|op_6~26_cout\ : std_logic;
SIGNAL \u2|Div0|auto_generated|divider|divider|op_6~22\ : std_logic;
SIGNAL \u2|Div0|auto_generated|divider|divider|op_6~18\ : std_logic;
SIGNAL \u2|Div0|auto_generated|divider|divider|op_6~14\ : std_logic;
SIGNAL \u2|Div0|auto_generated|divider|divider|op_6~10\ : std_logic;
SIGNAL \u2|Div0|auto_generated|divider|divider|op_6~6_cout\ : std_logic;
SIGNAL \u2|Div0|auto_generated|divider|divider|op_6~1_sumout\ : std_logic;
SIGNAL \u2|Div0|auto_generated|divider|divider|op_6~9_sumout\ : std_logic;
SIGNAL \u2|Div0|auto_generated|divider|divider|StageOut[22]~0_combout\ : std_logic;
SIGNAL \u2|Div0|auto_generated|divider|divider|StageOut[22]~2_combout\ : std_logic;
SIGNAL \u2|Div0|auto_generated|divider|divider|StageOut[21]~10_combout\ : std_logic;
SIGNAL \u2|Div0|auto_generated|divider|divider|op_6~13_sumout\ : std_logic;
SIGNAL \u2|Div0|auto_generated|divider|divider|StageOut[20]~11_combout\ : std_logic;
SIGNAL \u2|Div0|auto_generated|divider|divider|op_6~17_sumout\ : std_logic;
SIGNAL \u2|Div0|auto_generated|divider|divider|op_6~21_sumout\ : std_logic;
SIGNAL \u2|Div0|auto_generated|divider|divider|op_7~26_cout\ : std_logic;
SIGNAL \u2|Div0|auto_generated|divider|divider|op_7~22_cout\ : std_logic;
SIGNAL \u2|Div0|auto_generated|divider|divider|op_7~18_cout\ : std_logic;
SIGNAL \u2|Div0|auto_generated|divider|divider|op_7~14_cout\ : std_logic;
SIGNAL \u2|Div0|auto_generated|divider|divider|op_7~10_cout\ : std_logic;
SIGNAL \u2|Div0|auto_generated|divider|divider|op_7~6_cout\ : std_logic;
SIGNAL \u2|Div0|auto_generated|divider|divider|op_7~1_sumout\ : std_logic;
SIGNAL \u2|Mux6~0_combout\ : std_logic;
SIGNAL \u2|Mux5~0_combout\ : std_logic;
SIGNAL \u2|Mux4~0_combout\ : std_logic;
SIGNAL \u2|Mux3~0_combout\ : std_logic;
SIGNAL \u2|Mux2~0_combout\ : std_logic;
SIGNAL \u2|Mux1~0_combout\ : std_logic;
SIGNAL \u2|Mux0~0_combout\ : std_logic;
SIGNAL \u2|Add1~29_combout\ : std_logic;
SIGNAL \u2|Add1~28_combout\ : std_logic;
SIGNAL \u2|Add1~2\ : std_logic;
SIGNAL \u2|Add1~3\ : std_logic;
SIGNAL \u2|Add1~6\ : std_logic;
SIGNAL \u2|Add1~7\ : std_logic;
SIGNAL \u2|Add1~10\ : std_logic;
SIGNAL \u2|Add1~11\ : std_logic;
SIGNAL \u2|Add1~14\ : std_logic;
SIGNAL \u2|Add1~15\ : std_logic;
SIGNAL \u2|Add1~17_sumout\ : std_logic;
SIGNAL \u2|Add1~30_combout\ : std_logic;
SIGNAL \u2|Add1~31_combout\ : std_logic;
SIGNAL \u2|Add1~18\ : std_logic;
SIGNAL \u2|Add1~19\ : std_logic;
SIGNAL \u2|Add1~22\ : std_logic;
SIGNAL \u2|Add1~23\ : std_logic;
SIGNAL \u2|Add1~25_sumout\ : std_logic;
SIGNAL \u2|Add1~9_sumout\ : std_logic;
SIGNAL \u2|Add1~5_sumout\ : std_logic;
SIGNAL \u2|Add1~13_sumout\ : std_logic;
SIGNAL \u2|Add1~1_sumout\ : std_logic;
SIGNAL \u2|Mux13~0_combout\ : std_logic;
SIGNAL \u2|Add1~21_sumout\ : std_logic;
SIGNAL \u2|Mux13~1_combout\ : std_logic;
SIGNAL \u2|Mux12~0_combout\ : std_logic;
SIGNAL \u2|Mux12~1_combout\ : std_logic;
SIGNAL \u2|Mux11~0_combout\ : std_logic;
SIGNAL \u2|Mux11~1_combout\ : std_logic;
SIGNAL \u2|Mux10~0_combout\ : std_logic;
SIGNAL \u2|Mux10~1_combout\ : std_logic;
SIGNAL \u2|Mux9~0_combout\ : std_logic;
SIGNAL \u2|Mux9~1_combout\ : std_logic;
SIGNAL \u2|Mux8~0_combout\ : std_logic;
SIGNAL \u2|Mux8~1_combout\ : std_logic;
SIGNAL \u2|Mux7~0_combout\ : std_logic;
SIGNAL \u2|Mux7~1_combout\ : std_logic;
SIGNAL \u3|Div0|auto_generated|divider|divider|add_sub_3_result_int[0]~18\ : std_logic;
SIGNAL \u3|Div0|auto_generated|divider|divider|add_sub_3_result_int[0]~19\ : std_logic;
SIGNAL \u3|Div0|auto_generated|divider|divider|add_sub_3_result_int[1]~10\ : std_logic;
SIGNAL \u3|Div0|auto_generated|divider|divider|add_sub_3_result_int[1]~11\ : std_logic;
SIGNAL \u3|Div0|auto_generated|divider|divider|add_sub_3_result_int[2]~14\ : std_logic;
SIGNAL \u3|Div0|auto_generated|divider|divider|add_sub_3_result_int[2]~15\ : std_logic;
SIGNAL \u3|Div0|auto_generated|divider|divider|add_sub_3_result_int[3]~6\ : std_logic;
SIGNAL \u3|Div0|auto_generated|divider|divider|add_sub_3_result_int[3]~7\ : std_logic;
SIGNAL \u3|Div0|auto_generated|divider|divider|add_sub_3_result_int[4]~1_sumout\ : std_logic;
SIGNAL \u3|Div0|auto_generated|divider|divider|StageOut[18]~6_combout\ : std_logic;
SIGNAL \u3|Div0|auto_generated|divider|divider|add_sub_3_result_int[3]~5_sumout\ : std_logic;
SIGNAL \u3|Div0|auto_generated|divider|divider|StageOut[18]~5_combout\ : std_logic;
SIGNAL \u3|Div0|auto_generated|divider|divider|add_sub_3_result_int[2]~13_sumout\ : std_logic;
SIGNAL \u3|Div0|auto_generated|divider|divider|add_sub_3_result_int[1]~9_sumout\ : std_logic;
SIGNAL \u3|Div0|auto_generated|divider|divider|StageOut[16]~7_combout\ : std_logic;
SIGNAL \u3|Div0|auto_generated|divider|divider|StageOut[16]~8_combout\ : std_logic;
SIGNAL \u3|Div0|auto_generated|divider|divider|add_sub_3_result_int[0]~17_sumout\ : std_logic;
SIGNAL \u3|Div0|auto_generated|divider|divider|op_5~26_cout\ : std_logic;
SIGNAL \u3|Div0|auto_generated|divider|divider|op_5~22\ : std_logic;
SIGNAL \u3|Div0|auto_generated|divider|divider|op_5~18\ : std_logic;
SIGNAL \u3|Div0|auto_generated|divider|divider|op_5~10\ : std_logic;
SIGNAL \u3|Div0|auto_generated|divider|divider|op_5~14\ : std_logic;
SIGNAL \u3|Div0|auto_generated|divider|divider|op_5~6_cout\ : std_logic;
SIGNAL \u3|Div0|auto_generated|divider|divider|op_5~1_sumout\ : std_logic;
SIGNAL \u3|Div0|auto_generated|divider|divider|StageOut[17]~3_combout\ : std_logic;
SIGNAL \u3|Div0|auto_generated|divider|divider|op_5~13_sumout\ : std_logic;
SIGNAL \u3|Div0|auto_generated|divider|divider|StageOut[17]~4_combout\ : std_logic;
SIGNAL \u3|Div0|auto_generated|divider|divider|StageOut[16]~1_combout\ : std_logic;
SIGNAL \u3|Div0|auto_generated|divider|divider|op_5~9_sumout\ : std_logic;
SIGNAL \u3|Div0|auto_generated|divider|divider|StageOut[15]~9_combout\ : std_logic;
SIGNAL \u3|Div0|auto_generated|divider|divider|op_5~17_sumout\ : std_logic;
SIGNAL \u3|Div0|auto_generated|divider|divider|op_5~21_sumout\ : std_logic;
SIGNAL \u3|Div0|auto_generated|divider|divider|op_6~26_cout\ : std_logic;
SIGNAL \u3|Div0|auto_generated|divider|divider|op_6~22\ : std_logic;
SIGNAL \u3|Div0|auto_generated|divider|divider|op_6~18\ : std_logic;
SIGNAL \u3|Div0|auto_generated|divider|divider|op_6~14\ : std_logic;
SIGNAL \u3|Div0|auto_generated|divider|divider|op_6~10\ : std_logic;
SIGNAL \u3|Div0|auto_generated|divider|divider|op_6~6_cout\ : std_logic;
SIGNAL \u3|Div0|auto_generated|divider|divider|op_6~1_sumout\ : std_logic;
SIGNAL \u3|Div0|auto_generated|divider|divider|op_6~9_sumout\ : std_logic;
SIGNAL \u3|Div0|auto_generated|divider|divider|StageOut[22]~0_combout\ : std_logic;
SIGNAL \u3|Div0|auto_generated|divider|divider|StageOut[22]~2_combout\ : std_logic;
SIGNAL \u3|Div0|auto_generated|divider|divider|StageOut[21]~10_combout\ : std_logic;
SIGNAL \u3|Div0|auto_generated|divider|divider|op_6~13_sumout\ : std_logic;
SIGNAL \u3|Div0|auto_generated|divider|divider|StageOut[20]~11_combout\ : std_logic;
SIGNAL \u3|Div0|auto_generated|divider|divider|op_6~17_sumout\ : std_logic;
SIGNAL \u3|Div0|auto_generated|divider|divider|op_6~21_sumout\ : std_logic;
SIGNAL \u3|Div0|auto_generated|divider|divider|op_7~26_cout\ : std_logic;
SIGNAL \u3|Div0|auto_generated|divider|divider|op_7~22_cout\ : std_logic;
SIGNAL \u3|Div0|auto_generated|divider|divider|op_7~18_cout\ : std_logic;
SIGNAL \u3|Div0|auto_generated|divider|divider|op_7~14_cout\ : std_logic;
SIGNAL \u3|Div0|auto_generated|divider|divider|op_7~10_cout\ : std_logic;
SIGNAL \u3|Div0|auto_generated|divider|divider|op_7~6_cout\ : std_logic;
SIGNAL \u3|Div0|auto_generated|divider|divider|op_7~1_sumout\ : std_logic;
SIGNAL \u3|Mux6~0_combout\ : std_logic;
SIGNAL \u3|Mux5~0_combout\ : std_logic;
SIGNAL \u3|Mux4~0_combout\ : std_logic;
SIGNAL \u3|Mux3~0_combout\ : std_logic;
SIGNAL \u3|Mux2~0_combout\ : std_logic;
SIGNAL \u3|Mux1~0_combout\ : std_logic;
SIGNAL \u3|Mux0~0_combout\ : std_logic;
SIGNAL \u3|Add1~29_combout\ : std_logic;
SIGNAL \u3|Add1~30_combout\ : std_logic;
SIGNAL \u3|Add1~31_combout\ : std_logic;
SIGNAL \u3|Add1~28_combout\ : std_logic;
SIGNAL \u3|Add1~2\ : std_logic;
SIGNAL \u3|Add1~3\ : std_logic;
SIGNAL \u3|Add1~6\ : std_logic;
SIGNAL \u3|Add1~7\ : std_logic;
SIGNAL \u3|Add1~10\ : std_logic;
SIGNAL \u3|Add1~11\ : std_logic;
SIGNAL \u3|Add1~14\ : std_logic;
SIGNAL \u3|Add1~15\ : std_logic;
SIGNAL \u3|Add1~18\ : std_logic;
SIGNAL \u3|Add1~19\ : std_logic;
SIGNAL \u3|Add1~22\ : std_logic;
SIGNAL \u3|Add1~23\ : std_logic;
SIGNAL \u3|Add1~25_sumout\ : std_logic;
SIGNAL \u3|Add1~13_sumout\ : std_logic;
SIGNAL \u3|Add1~1_sumout\ : std_logic;
SIGNAL \u3|Add1~5_sumout\ : std_logic;
SIGNAL \u3|Add1~9_sumout\ : std_logic;
SIGNAL \u3|Mux13~0_combout\ : std_logic;
SIGNAL \u3|Add1~17_sumout\ : std_logic;
SIGNAL \u3|Add1~21_sumout\ : std_logic;
SIGNAL \u3|Mux13~1_combout\ : std_logic;
SIGNAL \u3|Mux12~0_combout\ : std_logic;
SIGNAL \u3|Mux12~1_combout\ : std_logic;
SIGNAL \u3|Mux11~0_combout\ : std_logic;
SIGNAL \u3|Mux11~1_combout\ : std_logic;
SIGNAL \u3|Mux10~0_combout\ : std_logic;
SIGNAL \u3|Mux10~1_combout\ : std_logic;
SIGNAL \u3|Mux9~0_combout\ : std_logic;
SIGNAL \u3|Mux9~1_combout\ : std_logic;
SIGNAL \u3|Mux8~0_combout\ : std_logic;
SIGNAL \u3|Mux8~1_combout\ : std_logic;
SIGNAL \u3|Mux7~0_combout\ : std_logic;
SIGNAL \u3|Mux7~1_combout\ : std_logic;
SIGNAL timer2 : std_logic_vector(6 DOWNTO 0);
SIGNAL timer1 : std_logic_vector(6 DOWNTO 0);
SIGNAL count : std_logic_vector(31 DOWNTO 0);
SIGNAL ns : std_logic_vector(2 DOWNTO 0);
SIGNAL ew : std_logic_vector(2 DOWNTO 0);
SIGNAL s : std_logic_vector(1 DOWNTO 0);
SIGNAL \ALT_INV_timer_en~input_o\ : std_logic;
SIGNAL \ALT_INV_reset~input_o\ : std_logic;
SIGNAL \ALT_INV_~GND~combout\ : std_logic;
SIGNAL \u3|Div0|auto_generated|divider|divider|ALT_INV_StageOut[20]~11_combout\ : std_logic;
SIGNAL \u2|Div0|auto_generated|divider|divider|ALT_INV_StageOut[20]~11_combout\ : std_logic;
SIGNAL \u3|Div0|auto_generated|divider|divider|ALT_INV_StageOut[21]~10_combout\ : std_logic;
SIGNAL \u3|Div0|auto_generated|divider|divider|ALT_INV_StageOut[15]~9_combout\ : std_logic;
SIGNAL \u3|Div0|auto_generated|divider|divider|ALT_INV_StageOut[16]~8_combout\ : std_logic;
SIGNAL \u3|Div0|auto_generated|divider|divider|ALT_INV_StageOut[16]~7_combout\ : std_logic;
SIGNAL \u2|Div0|auto_generated|divider|divider|ALT_INV_StageOut[21]~10_combout\ : std_logic;
SIGNAL \u2|Div0|auto_generated|divider|divider|ALT_INV_StageOut[15]~9_combout\ : std_logic;
SIGNAL \u2|Div0|auto_generated|divider|divider|ALT_INV_StageOut[16]~8_combout\ : std_logic;
SIGNAL \u2|Div0|auto_generated|divider|divider|ALT_INV_StageOut[16]~7_combout\ : std_logic;
SIGNAL \u3|Div0|auto_generated|divider|divider|ALT_INV_StageOut[18]~6_combout\ : std_logic;
SIGNAL \u3|Div0|auto_generated|divider|divider|ALT_INV_StageOut[18]~5_combout\ : std_logic;
SIGNAL \u3|Div0|auto_generated|divider|divider|ALT_INV_StageOut[17]~4_combout\ : std_logic;
SIGNAL \u3|Div0|auto_generated|divider|divider|ALT_INV_StageOut[17]~3_combout\ : std_logic;
SIGNAL \u3|Div0|auto_generated|divider|divider|ALT_INV_StageOut[22]~2_combout\ : std_logic;
SIGNAL \u3|Div0|auto_generated|divider|divider|ALT_INV_StageOut[16]~1_combout\ : std_logic;
SIGNAL \u3|Div0|auto_generated|divider|divider|ALT_INV_StageOut[22]~0_combout\ : std_logic;
SIGNAL \u2|Div0|auto_generated|divider|divider|ALT_INV_StageOut[18]~6_combout\ : std_logic;
SIGNAL \u2|Div0|auto_generated|divider|divider|ALT_INV_StageOut[18]~5_combout\ : std_logic;
SIGNAL \u2|Div0|auto_generated|divider|divider|ALT_INV_StageOut[17]~4_combout\ : std_logic;
SIGNAL \u2|Div0|auto_generated|divider|divider|ALT_INV_StageOut[17]~3_combout\ : std_logic;
SIGNAL \u2|Div0|auto_generated|divider|divider|ALT_INV_StageOut[22]~2_combout\ : std_logic;
SIGNAL \u2|Div0|auto_generated|divider|divider|ALT_INV_StageOut[16]~1_combout\ : std_logic;
SIGNAL \u2|Div0|auto_generated|divider|divider|ALT_INV_StageOut[22]~0_combout\ : std_logic;
SIGNAL \ALT_INV_temp~0_combout\ : std_logic;
SIGNAL \ALT_INV_Equal0~6_combout\ : std_logic;
SIGNAL \ALT_INV_Equal0~5_combout\ : std_logic;
SIGNAL \ALT_INV_Equal0~4_combout\ : std_logic;
SIGNAL \ALT_INV_Equal0~3_combout\ : std_logic;
SIGNAL \ALT_INV_Equal0~2_combout\ : std_logic;
SIGNAL \ALT_INV_Equal0~1_combout\ : std_logic;
SIGNAL \ALT_INV_Equal0~0_combout\ : std_logic;
SIGNAL \u3|ALT_INV_Add1~31_combout\ : std_logic;
SIGNAL \u3|ALT_INV_Add1~30_combout\ : std_logic;
SIGNAL \u3|ALT_INV_Add1~29_combout\ : std_logic;
SIGNAL \u3|ALT_INV_Add1~28_combout\ : std_logic;
SIGNAL \u2|ALT_INV_Add1~31_combout\ : std_logic;
SIGNAL \u2|ALT_INV_Add1~30_combout\ : std_logic;
SIGNAL \u2|ALT_INV_Add1~29_combout\ : std_logic;
SIGNAL \u2|ALT_INV_Add1~28_combout\ : std_logic;
SIGNAL \ALT_INV_Equal1~2_combout\ : std_logic;
SIGNAL \ALT_INV_Equal4~0_combout\ : std_logic;
SIGNAL \ALT_INV_ew~2_combout\ : std_logic;
SIGNAL \ALT_INV_ew~1_combout\ : std_logic;
SIGNAL \ALT_INV_ew~0_combout\ : std_logic;
SIGNAL \ALT_INV_Equal1~1_combout\ : std_logic;
SIGNAL \ALT_INV_ns~3_combout\ : std_logic;
SIGNAL \ALT_INV_ns~2_combout\ : std_logic;
SIGNAL \ALT_INV_ns~1_combout\ : std_logic;
SIGNAL \ALT_INV_Equal2~1_combout\ : std_logic;
SIGNAL \ALT_INV_Equal2~0_combout\ : std_logic;
SIGNAL \ALT_INV_Equal1~0_combout\ : std_logic;
SIGNAL ALT_INV_timer1 : std_logic_vector(6 DOWNTO 0);
SIGNAL \ALT_INV_Equal3~0_combout\ : std_logic;
SIGNAL \ALT_INV_temp~q\ : std_logic;
SIGNAL \u3|ALT_INV_Mux7~0_combout\ : std_logic;
SIGNAL \u3|ALT_INV_Mux8~0_combout\ : std_logic;
SIGNAL \u3|ALT_INV_Mux9~0_combout\ : std_logic;
SIGNAL \u3|ALT_INV_Mux10~0_combout\ : std_logic;
SIGNAL \u3|ALT_INV_Mux11~0_combout\ : std_logic;
SIGNAL \u3|ALT_INV_Mux12~0_combout\ : std_logic;
SIGNAL \u3|ALT_INV_Mux13~1_combout\ : std_logic;
SIGNAL \u3|ALT_INV_Mux13~0_combout\ : std_logic;
SIGNAL \u3|ALT_INV_Mux0~0_combout\ : std_logic;
SIGNAL \u3|ALT_INV_Mux1~0_combout\ : std_logic;
SIGNAL \u3|ALT_INV_Mux2~0_combout\ : std_logic;
SIGNAL \u3|ALT_INV_Mux3~0_combout\ : std_logic;
SIGNAL \u3|ALT_INV_Mux4~0_combout\ : std_logic;
SIGNAL \u3|ALT_INV_Mux5~0_combout\ : std_logic;
SIGNAL \u3|ALT_INV_Mux6~0_combout\ : std_logic;
SIGNAL \u2|ALT_INV_Mux7~0_combout\ : std_logic;
SIGNAL \u2|ALT_INV_Mux8~0_combout\ : std_logic;
SIGNAL \u2|ALT_INV_Mux9~0_combout\ : std_logic;
SIGNAL \u2|ALT_INV_Mux10~0_combout\ : std_logic;
SIGNAL \u2|ALT_INV_Mux11~0_combout\ : std_logic;
SIGNAL \u2|ALT_INV_Mux12~0_combout\ : std_logic;
SIGNAL \u2|ALT_INV_Mux13~1_combout\ : std_logic;
SIGNAL \u2|ALT_INV_Mux13~0_combout\ : std_logic;
SIGNAL \u2|ALT_INV_Mux0~0_combout\ : std_logic;
SIGNAL \u2|ALT_INV_Mux1~0_combout\ : std_logic;
SIGNAL \u2|ALT_INV_Mux2~0_combout\ : std_logic;
SIGNAL \u2|ALT_INV_Mux3~0_combout\ : std_logic;
SIGNAL \u2|ALT_INV_Mux4~0_combout\ : std_logic;
SIGNAL \u2|ALT_INV_Mux5~0_combout\ : std_logic;
SIGNAL \u2|ALT_INV_Mux6~0_combout\ : std_logic;
SIGNAL ALT_INV_s : std_logic_vector(1 DOWNTO 0);
SIGNAL ALT_INV_ew : std_logic_vector(2 DOWNTO 0);
SIGNAL ALT_INV_ns : std_logic_vector(2 DOWNTO 1);
SIGNAL \ALT_INV_s[0]~2_combout\ : std_logic;
SIGNAL \u3|Div0|auto_generated|divider|divider|ALT_INV_op_6~21_sumout\ : std_logic;
SIGNAL \u2|Div0|auto_generated|divider|divider|ALT_INV_op_6~21_sumout\ : std_logic;
SIGNAL \u3|Div0|auto_generated|divider|divider|ALT_INV_op_6~17_sumout\ : std_logic;
SIGNAL \u3|Div0|auto_generated|divider|divider|ALT_INV_op_5~21_sumout\ : std_logic;
SIGNAL \u2|Div0|auto_generated|divider|divider|ALT_INV_op_6~17_sumout\ : std_logic;
SIGNAL \u2|Div0|auto_generated|divider|divider|ALT_INV_op_5~21_sumout\ : std_logic;
SIGNAL \u3|Div0|auto_generated|divider|divider|ALT_INV_add_sub_3_result_int[0]~17_sumout\ : std_logic;
SIGNAL \u3|Div0|auto_generated|divider|divider|ALT_INV_op_6~13_sumout\ : std_logic;
SIGNAL \u3|Div0|auto_generated|divider|divider|ALT_INV_op_5~17_sumout\ : std_logic;
SIGNAL \u2|Div0|auto_generated|divider|divider|ALT_INV_add_sub_3_result_int[0]~17_sumout\ : std_logic;
SIGNAL \u2|Div0|auto_generated|divider|divider|ALT_INV_op_6~13_sumout\ : std_logic;
SIGNAL \u2|Div0|auto_generated|divider|divider|ALT_INV_op_5~17_sumout\ : std_logic;
SIGNAL \u3|Div0|auto_generated|divider|divider|ALT_INV_op_5~13_sumout\ : std_logic;
SIGNAL \u3|Div0|auto_generated|divider|divider|ALT_INV_add_sub_3_result_int[2]~13_sumout\ : std_logic;
SIGNAL \u3|Div0|auto_generated|divider|divider|ALT_INV_add_sub_3_result_int[1]~9_sumout\ : std_logic;
SIGNAL \u3|Div0|auto_generated|divider|divider|ALT_INV_op_6~9_sumout\ : std_logic;
SIGNAL \u3|Div0|auto_generated|divider|divider|ALT_INV_op_5~9_sumout\ : std_logic;
SIGNAL \u2|Div0|auto_generated|divider|divider|ALT_INV_op_5~13_sumout\ : std_logic;
SIGNAL \u2|Div0|auto_generated|divider|divider|ALT_INV_add_sub_3_result_int[2]~13_sumout\ : std_logic;
SIGNAL \u2|Div0|auto_generated|divider|divider|ALT_INV_add_sub_3_result_int[1]~9_sumout\ : std_logic;
SIGNAL \u2|Div0|auto_generated|divider|divider|ALT_INV_op_6~9_sumout\ : std_logic;
SIGNAL \u2|Div0|auto_generated|divider|divider|ALT_INV_op_5~9_sumout\ : std_logic;
SIGNAL \ALT_INV_Add1~25_sumout\ : std_logic;
SIGNAL \ALT_INV_Add1~21_sumout\ : std_logic;
SIGNAL \ALT_INV_Add1~13_sumout\ : std_logic;
SIGNAL \ALT_INV_Add1~5_sumout\ : std_logic;
SIGNAL \ALT_INV_Add2~25_sumout\ : std_logic;
SIGNAL \ALT_INV_Add2~21_sumout\ : std_logic;
SIGNAL \ALT_INV_Add2~17_sumout\ : std_logic;
SIGNAL \ALT_INV_Add2~13_sumout\ : std_logic;
SIGNAL \ALT_INV_Add2~9_sumout\ : std_logic;
SIGNAL \ALT_INV_Add2~5_sumout\ : std_logic;
SIGNAL \ALT_INV_Add2~1_sumout\ : std_logic;
SIGNAL ALT_INV_count : std_logic_vector(31 DOWNTO 0);
SIGNAL \u3|Div0|auto_generated|divider|divider|ALT_INV_add_sub_3_result_int[3]~5_sumout\ : std_logic;
SIGNAL \u2|Div0|auto_generated|divider|divider|ALT_INV_add_sub_3_result_int[3]~5_sumout\ : std_logic;
SIGNAL ALT_INV_timer2 : std_logic_vector(6 DOWNTO 0);
SIGNAL \u3|ALT_INV_Add1~25_sumout\ : std_logic;
SIGNAL \u3|ALT_INV_Add1~21_sumout\ : std_logic;
SIGNAL \u3|ALT_INV_Add1~17_sumout\ : std_logic;
SIGNAL \u3|ALT_INV_Add1~13_sumout\ : std_logic;
SIGNAL \u3|ALT_INV_Add1~9_sumout\ : std_logic;
SIGNAL \u3|ALT_INV_Add1~5_sumout\ : std_logic;
SIGNAL \u3|ALT_INV_Add1~1_sumout\ : std_logic;
SIGNAL \u3|Div0|auto_generated|divider|divider|ALT_INV_add_sub_3_result_int[4]~1_sumout\ : std_logic;
SIGNAL \u3|Div0|auto_generated|divider|divider|ALT_INV_op_5~1_sumout\ : std_logic;
SIGNAL \u3|Div0|auto_generated|divider|divider|ALT_INV_op_6~1_sumout\ : std_logic;
SIGNAL \u3|Div0|auto_generated|divider|divider|ALT_INV_op_7~1_sumout\ : std_logic;
SIGNAL \u2|ALT_INV_Add1~25_sumout\ : std_logic;
SIGNAL \u2|ALT_INV_Add1~21_sumout\ : std_logic;
SIGNAL \u2|ALT_INV_Add1~17_sumout\ : std_logic;
SIGNAL \u2|ALT_INV_Add1~13_sumout\ : std_logic;
SIGNAL \u2|ALT_INV_Add1~9_sumout\ : std_logic;
SIGNAL \u2|ALT_INV_Add1~5_sumout\ : std_logic;
SIGNAL \u2|ALT_INV_Add1~1_sumout\ : std_logic;
SIGNAL \u2|Div0|auto_generated|divider|divider|ALT_INV_add_sub_3_result_int[4]~1_sumout\ : std_logic;
SIGNAL \u2|Div0|auto_generated|divider|divider|ALT_INV_op_5~1_sumout\ : std_logic;
SIGNAL \u2|Div0|auto_generated|divider|divider|ALT_INV_op_6~1_sumout\ : std_logic;
SIGNAL \u2|Div0|auto_generated|divider|divider|ALT_INV_op_7~1_sumout\ : std_logic;

BEGIN

ww_clk <= clk;
ww_reset <= reset;
ww_timer_en <= timer_en;
outclk <= ww_outclk;
timer_ew <= ww_timer_ew;
timer_ns <= ww_timer_ns;
s_out <= ww_s_out;
ns_klim <= ww_ns_klim;
ew_klim <= ww_ew_klim;
seg5 <= ww_seg5;
seg4 <= ww_seg4;
seg3 <= ww_seg3;
seg2 <= ww_seg2;
seg1 <= ww_seg1;
seg0 <= ww_seg0;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;
\ALT_INV_timer_en~input_o\ <= NOT \timer_en~input_o\;
\ALT_INV_reset~input_o\ <= NOT \reset~input_o\;
\ALT_INV_~GND~combout\ <= NOT \~GND~combout\;
\u3|Div0|auto_generated|divider|divider|ALT_INV_StageOut[20]~11_combout\ <= NOT \u3|Div0|auto_generated|divider|divider|StageOut[20]~11_combout\;
\u2|Div0|auto_generated|divider|divider|ALT_INV_StageOut[20]~11_combout\ <= NOT \u2|Div0|auto_generated|divider|divider|StageOut[20]~11_combout\;
\u3|Div0|auto_generated|divider|divider|ALT_INV_StageOut[21]~10_combout\ <= NOT \u3|Div0|auto_generated|divider|divider|StageOut[21]~10_combout\;
\u3|Div0|auto_generated|divider|divider|ALT_INV_StageOut[15]~9_combout\ <= NOT \u3|Div0|auto_generated|divider|divider|StageOut[15]~9_combout\;
\u3|Div0|auto_generated|divider|divider|ALT_INV_StageOut[16]~8_combout\ <= NOT \u3|Div0|auto_generated|divider|divider|StageOut[16]~8_combout\;
\u3|Div0|auto_generated|divider|divider|ALT_INV_StageOut[16]~7_combout\ <= NOT \u3|Div0|auto_generated|divider|divider|StageOut[16]~7_combout\;
\u2|Div0|auto_generated|divider|divider|ALT_INV_StageOut[21]~10_combout\ <= NOT \u2|Div0|auto_generated|divider|divider|StageOut[21]~10_combout\;
\u2|Div0|auto_generated|divider|divider|ALT_INV_StageOut[15]~9_combout\ <= NOT \u2|Div0|auto_generated|divider|divider|StageOut[15]~9_combout\;
\u2|Div0|auto_generated|divider|divider|ALT_INV_StageOut[16]~8_combout\ <= NOT \u2|Div0|auto_generated|divider|divider|StageOut[16]~8_combout\;
\u2|Div0|auto_generated|divider|divider|ALT_INV_StageOut[16]~7_combout\ <= NOT \u2|Div0|auto_generated|divider|divider|StageOut[16]~7_combout\;
\u3|Div0|auto_generated|divider|divider|ALT_INV_StageOut[18]~6_combout\ <= NOT \u3|Div0|auto_generated|divider|divider|StageOut[18]~6_combout\;
\u3|Div0|auto_generated|divider|divider|ALT_INV_StageOut[18]~5_combout\ <= NOT \u3|Div0|auto_generated|divider|divider|StageOut[18]~5_combout\;
\u3|Div0|auto_generated|divider|divider|ALT_INV_StageOut[17]~4_combout\ <= NOT \u3|Div0|auto_generated|divider|divider|StageOut[17]~4_combout\;
\u3|Div0|auto_generated|divider|divider|ALT_INV_StageOut[17]~3_combout\ <= NOT \u3|Div0|auto_generated|divider|divider|StageOut[17]~3_combout\;
\u3|Div0|auto_generated|divider|divider|ALT_INV_StageOut[22]~2_combout\ <= NOT \u3|Div0|auto_generated|divider|divider|StageOut[22]~2_combout\;
\u3|Div0|auto_generated|divider|divider|ALT_INV_StageOut[16]~1_combout\ <= NOT \u3|Div0|auto_generated|divider|divider|StageOut[16]~1_combout\;
\u3|Div0|auto_generated|divider|divider|ALT_INV_StageOut[22]~0_combout\ <= NOT \u3|Div0|auto_generated|divider|divider|StageOut[22]~0_combout\;
\u2|Div0|auto_generated|divider|divider|ALT_INV_StageOut[18]~6_combout\ <= NOT \u2|Div0|auto_generated|divider|divider|StageOut[18]~6_combout\;
\u2|Div0|auto_generated|divider|divider|ALT_INV_StageOut[18]~5_combout\ <= NOT \u2|Div0|auto_generated|divider|divider|StageOut[18]~5_combout\;
\u2|Div0|auto_generated|divider|divider|ALT_INV_StageOut[17]~4_combout\ <= NOT \u2|Div0|auto_generated|divider|divider|StageOut[17]~4_combout\;
\u2|Div0|auto_generated|divider|divider|ALT_INV_StageOut[17]~3_combout\ <= NOT \u2|Div0|auto_generated|divider|divider|StageOut[17]~3_combout\;
\u2|Div0|auto_generated|divider|divider|ALT_INV_StageOut[22]~2_combout\ <= NOT \u2|Div0|auto_generated|divider|divider|StageOut[22]~2_combout\;
\u2|Div0|auto_generated|divider|divider|ALT_INV_StageOut[16]~1_combout\ <= NOT \u2|Div0|auto_generated|divider|divider|StageOut[16]~1_combout\;
\u2|Div0|auto_generated|divider|divider|ALT_INV_StageOut[22]~0_combout\ <= NOT \u2|Div0|auto_generated|divider|divider|StageOut[22]~0_combout\;
\ALT_INV_temp~0_combout\ <= NOT \temp~0_combout\;
\ALT_INV_Equal0~6_combout\ <= NOT \Equal0~6_combout\;
\ALT_INV_Equal0~5_combout\ <= NOT \Equal0~5_combout\;
\ALT_INV_Equal0~4_combout\ <= NOT \Equal0~4_combout\;
\ALT_INV_Equal0~3_combout\ <= NOT \Equal0~3_combout\;
\ALT_INV_Equal0~2_combout\ <= NOT \Equal0~2_combout\;
\ALT_INV_Equal0~1_combout\ <= NOT \Equal0~1_combout\;
\ALT_INV_Equal0~0_combout\ <= NOT \Equal0~0_combout\;
\u3|ALT_INV_Add1~31_combout\ <= NOT \u3|Add1~31_combout\;
\u3|ALT_INV_Add1~30_combout\ <= NOT \u3|Add1~30_combout\;
\u3|ALT_INV_Add1~29_combout\ <= NOT \u3|Add1~29_combout\;
\u3|ALT_INV_Add1~28_combout\ <= NOT \u3|Add1~28_combout\;
\u2|ALT_INV_Add1~31_combout\ <= NOT \u2|Add1~31_combout\;
\u2|ALT_INV_Add1~30_combout\ <= NOT \u2|Add1~30_combout\;
\u2|ALT_INV_Add1~29_combout\ <= NOT \u2|Add1~29_combout\;
\u2|ALT_INV_Add1~28_combout\ <= NOT \u2|Add1~28_combout\;
\ALT_INV_Equal1~2_combout\ <= NOT \Equal1~2_combout\;
\ALT_INV_Equal4~0_combout\ <= NOT \Equal4~0_combout\;
\ALT_INV_ew~2_combout\ <= NOT \ew~2_combout\;
\ALT_INV_ew~1_combout\ <= NOT \ew~1_combout\;
\ALT_INV_ew~0_combout\ <= NOT \ew~0_combout\;
\ALT_INV_Equal1~1_combout\ <= NOT \Equal1~1_combout\;
\ALT_INV_ns~3_combout\ <= NOT \ns~3_combout\;
\ALT_INV_ns~2_combout\ <= NOT \ns~2_combout\;
\ALT_INV_ns~1_combout\ <= NOT \ns~1_combout\;
\ALT_INV_Equal2~1_combout\ <= NOT \Equal2~1_combout\;
\ALT_INV_Equal2~0_combout\ <= NOT \Equal2~0_combout\;
\ALT_INV_Equal1~0_combout\ <= NOT \Equal1~0_combout\;
ALT_INV_timer1(5) <= NOT timer1(5);
ALT_INV_timer1(6) <= NOT timer1(6);
\ALT_INV_Equal3~0_combout\ <= NOT \Equal3~0_combout\;
\ALT_INV_temp~q\ <= NOT \temp~q\;
\u3|ALT_INV_Mux7~0_combout\ <= NOT \u3|Mux7~0_combout\;
\u3|ALT_INV_Mux8~0_combout\ <= NOT \u3|Mux8~0_combout\;
\u3|ALT_INV_Mux9~0_combout\ <= NOT \u3|Mux9~0_combout\;
\u3|ALT_INV_Mux10~0_combout\ <= NOT \u3|Mux10~0_combout\;
\u3|ALT_INV_Mux11~0_combout\ <= NOT \u3|Mux11~0_combout\;
\u3|ALT_INV_Mux12~0_combout\ <= NOT \u3|Mux12~0_combout\;
\u3|ALT_INV_Mux13~1_combout\ <= NOT \u3|Mux13~1_combout\;
\u3|ALT_INV_Mux13~0_combout\ <= NOT \u3|Mux13~0_combout\;
\u3|ALT_INV_Mux0~0_combout\ <= NOT \u3|Mux0~0_combout\;
\u3|ALT_INV_Mux1~0_combout\ <= NOT \u3|Mux1~0_combout\;
\u3|ALT_INV_Mux2~0_combout\ <= NOT \u3|Mux2~0_combout\;
\u3|ALT_INV_Mux3~0_combout\ <= NOT \u3|Mux3~0_combout\;
\u3|ALT_INV_Mux4~0_combout\ <= NOT \u3|Mux4~0_combout\;
\u3|ALT_INV_Mux5~0_combout\ <= NOT \u3|Mux5~0_combout\;
\u3|ALT_INV_Mux6~0_combout\ <= NOT \u3|Mux6~0_combout\;
\u2|ALT_INV_Mux7~0_combout\ <= NOT \u2|Mux7~0_combout\;
\u2|ALT_INV_Mux8~0_combout\ <= NOT \u2|Mux8~0_combout\;
\u2|ALT_INV_Mux9~0_combout\ <= NOT \u2|Mux9~0_combout\;
\u2|ALT_INV_Mux10~0_combout\ <= NOT \u2|Mux10~0_combout\;
\u2|ALT_INV_Mux11~0_combout\ <= NOT \u2|Mux11~0_combout\;
\u2|ALT_INV_Mux12~0_combout\ <= NOT \u2|Mux12~0_combout\;
\u2|ALT_INV_Mux13~1_combout\ <= NOT \u2|Mux13~1_combout\;
\u2|ALT_INV_Mux13~0_combout\ <= NOT \u2|Mux13~0_combout\;
\u2|ALT_INV_Mux0~0_combout\ <= NOT \u2|Mux0~0_combout\;
\u2|ALT_INV_Mux1~0_combout\ <= NOT \u2|Mux1~0_combout\;
\u2|ALT_INV_Mux2~0_combout\ <= NOT \u2|Mux2~0_combout\;
\u2|ALT_INV_Mux3~0_combout\ <= NOT \u2|Mux3~0_combout\;
\u2|ALT_INV_Mux4~0_combout\ <= NOT \u2|Mux4~0_combout\;
\u2|ALT_INV_Mux5~0_combout\ <= NOT \u2|Mux5~0_combout\;
\u2|ALT_INV_Mux6~0_combout\ <= NOT \u2|Mux6~0_combout\;
ALT_INV_s(0) <= NOT s(0);
ALT_INV_s(1) <= NOT s(1);
ALT_INV_ew(2) <= NOT ew(2);
ALT_INV_ew(0) <= NOT ew(0);
ALT_INV_ns(2) <= NOT ns(2);
ALT_INV_ns(1) <= NOT ns(1);
\ALT_INV_s[0]~2_combout\ <= NOT \s[0]~2_combout\;
\u3|Div0|auto_generated|divider|divider|ALT_INV_op_6~21_sumout\ <= NOT \u3|Div0|auto_generated|divider|divider|op_6~21_sumout\;
\u2|Div0|auto_generated|divider|divider|ALT_INV_op_6~21_sumout\ <= NOT \u2|Div0|auto_generated|divider|divider|op_6~21_sumout\;
\u3|Div0|auto_generated|divider|divider|ALT_INV_op_6~17_sumout\ <= NOT \u3|Div0|auto_generated|divider|divider|op_6~17_sumout\;
\u3|Div0|auto_generated|divider|divider|ALT_INV_op_5~21_sumout\ <= NOT \u3|Div0|auto_generated|divider|divider|op_5~21_sumout\;
\u2|Div0|auto_generated|divider|divider|ALT_INV_op_6~17_sumout\ <= NOT \u2|Div0|auto_generated|divider|divider|op_6~17_sumout\;
\u2|Div0|auto_generated|divider|divider|ALT_INV_op_5~21_sumout\ <= NOT \u2|Div0|auto_generated|divider|divider|op_5~21_sumout\;
\u3|Div0|auto_generated|divider|divider|ALT_INV_add_sub_3_result_int[0]~17_sumout\ <= NOT \u3|Div0|auto_generated|divider|divider|add_sub_3_result_int[0]~17_sumout\;
\u3|Div0|auto_generated|divider|divider|ALT_INV_op_6~13_sumout\ <= NOT \u3|Div0|auto_generated|divider|divider|op_6~13_sumout\;
\u3|Div0|auto_generated|divider|divider|ALT_INV_op_5~17_sumout\ <= NOT \u3|Div0|auto_generated|divider|divider|op_5~17_sumout\;
\u2|Div0|auto_generated|divider|divider|ALT_INV_add_sub_3_result_int[0]~17_sumout\ <= NOT \u2|Div0|auto_generated|divider|divider|add_sub_3_result_int[0]~17_sumout\;
\u2|Div0|auto_generated|divider|divider|ALT_INV_op_6~13_sumout\ <= NOT \u2|Div0|auto_generated|divider|divider|op_6~13_sumout\;
\u2|Div0|auto_generated|divider|divider|ALT_INV_op_5~17_sumout\ <= NOT \u2|Div0|auto_generated|divider|divider|op_5~17_sumout\;
\u3|Div0|auto_generated|divider|divider|ALT_INV_op_5~13_sumout\ <= NOT \u3|Div0|auto_generated|divider|divider|op_5~13_sumout\;
\u3|Div0|auto_generated|divider|divider|ALT_INV_add_sub_3_result_int[2]~13_sumout\ <= NOT \u3|Div0|auto_generated|divider|divider|add_sub_3_result_int[2]~13_sumout\;
\u3|Div0|auto_generated|divider|divider|ALT_INV_add_sub_3_result_int[1]~9_sumout\ <= NOT \u3|Div0|auto_generated|divider|divider|add_sub_3_result_int[1]~9_sumout\;
\u3|Div0|auto_generated|divider|divider|ALT_INV_op_6~9_sumout\ <= NOT \u3|Div0|auto_generated|divider|divider|op_6~9_sumout\;
\u3|Div0|auto_generated|divider|divider|ALT_INV_op_5~9_sumout\ <= NOT \u3|Div0|auto_generated|divider|divider|op_5~9_sumout\;
\u2|Div0|auto_generated|divider|divider|ALT_INV_op_5~13_sumout\ <= NOT \u2|Div0|auto_generated|divider|divider|op_5~13_sumout\;
\u2|Div0|auto_generated|divider|divider|ALT_INV_add_sub_3_result_int[2]~13_sumout\ <= NOT \u2|Div0|auto_generated|divider|divider|add_sub_3_result_int[2]~13_sumout\;
\u2|Div0|auto_generated|divider|divider|ALT_INV_add_sub_3_result_int[1]~9_sumout\ <= NOT \u2|Div0|auto_generated|divider|divider|add_sub_3_result_int[1]~9_sumout\;
\u2|Div0|auto_generated|divider|divider|ALT_INV_op_6~9_sumout\ <= NOT \u2|Div0|auto_generated|divider|divider|op_6~9_sumout\;
\u2|Div0|auto_generated|divider|divider|ALT_INV_op_5~9_sumout\ <= NOT \u2|Div0|auto_generated|divider|divider|op_5~9_sumout\;
\ALT_INV_Add1~25_sumout\ <= NOT \Add1~25_sumout\;
\ALT_INV_Add1~21_sumout\ <= NOT \Add1~21_sumout\;
\ALT_INV_Add1~13_sumout\ <= NOT \Add1~13_sumout\;
\ALT_INV_Add1~5_sumout\ <= NOT \Add1~5_sumout\;
\ALT_INV_Add2~25_sumout\ <= NOT \Add2~25_sumout\;
\ALT_INV_Add2~21_sumout\ <= NOT \Add2~21_sumout\;
\ALT_INV_Add2~17_sumout\ <= NOT \Add2~17_sumout\;
\ALT_INV_Add2~13_sumout\ <= NOT \Add2~13_sumout\;
\ALT_INV_Add2~9_sumout\ <= NOT \Add2~9_sumout\;
\ALT_INV_Add2~5_sumout\ <= NOT \Add2~5_sumout\;
\ALT_INV_Add2~1_sumout\ <= NOT \Add2~1_sumout\;
ALT_INV_count(10) <= NOT count(10);
ALT_INV_count(11) <= NOT count(11);
ALT_INV_count(12) <= NOT count(12);
ALT_INV_count(13) <= NOT count(13);
ALT_INV_count(14) <= NOT count(14);
ALT_INV_count(20) <= NOT count(20);
ALT_INV_count(15) <= NOT count(15);
ALT_INV_count(16) <= NOT count(16);
ALT_INV_count(17) <= NOT count(17);
ALT_INV_count(18) <= NOT count(18);
ALT_INV_count(19) <= NOT count(19);
ALT_INV_count(21) <= NOT count(21);
ALT_INV_count(3) <= NOT count(3);
ALT_INV_count(4) <= NOT count(4);
ALT_INV_count(5) <= NOT count(5);
ALT_INV_count(7) <= NOT count(7);
ALT_INV_count(8) <= NOT count(8);
ALT_INV_count(9) <= NOT count(9);
ALT_INV_count(30) <= NOT count(30);
ALT_INV_count(31) <= NOT count(31);
ALT_INV_count(26) <= NOT count(26);
ALT_INV_count(0) <= NOT count(0);
ALT_INV_count(1) <= NOT count(1);
ALT_INV_count(2) <= NOT count(2);
ALT_INV_count(24) <= NOT count(24);
ALT_INV_count(25) <= NOT count(25);
ALT_INV_count(6) <= NOT count(6);
ALT_INV_count(27) <= NOT count(27);
ALT_INV_count(28) <= NOT count(28);
ALT_INV_count(29) <= NOT count(29);
ALT_INV_count(22) <= NOT count(22);
ALT_INV_count(23) <= NOT count(23);
\u3|Div0|auto_generated|divider|divider|ALT_INV_add_sub_3_result_int[3]~5_sumout\ <= NOT \u3|Div0|auto_generated|divider|divider|add_sub_3_result_int[3]~5_sumout\;
\u2|Div0|auto_generated|divider|divider|ALT_INV_add_sub_3_result_int[3]~5_sumout\ <= NOT \u2|Div0|auto_generated|divider|divider|add_sub_3_result_int[3]~5_sumout\;
ALT_INV_timer1(0) <= NOT timer1(0);
ALT_INV_timer1(1) <= NOT timer1(1);
ALT_INV_timer1(2) <= NOT timer1(2);
ALT_INV_timer1(3) <= NOT timer1(3);
ALT_INV_timer1(4) <= NOT timer1(4);
ALT_INV_timer2(1) <= NOT timer2(1);
ALT_INV_timer2(3) <= NOT timer2(3);
ALT_INV_timer2(4) <= NOT timer2(4);
ALT_INV_timer2(5) <= NOT timer2(5);
ALT_INV_timer2(6) <= NOT timer2(6);
ALT_INV_timer2(0) <= NOT timer2(0);
ALT_INV_timer2(2) <= NOT timer2(2);
\u3|ALT_INV_Add1~25_sumout\ <= NOT \u3|Add1~25_sumout\;
\u3|ALT_INV_Add1~21_sumout\ <= NOT \u3|Add1~21_sumout\;
\u3|ALT_INV_Add1~17_sumout\ <= NOT \u3|Add1~17_sumout\;
\u3|ALT_INV_Add1~13_sumout\ <= NOT \u3|Add1~13_sumout\;
\u3|ALT_INV_Add1~9_sumout\ <= NOT \u3|Add1~9_sumout\;
\u3|ALT_INV_Add1~5_sumout\ <= NOT \u3|Add1~5_sumout\;
\u3|ALT_INV_Add1~1_sumout\ <= NOT \u3|Add1~1_sumout\;
\u3|Div0|auto_generated|divider|divider|ALT_INV_add_sub_3_result_int[4]~1_sumout\ <= NOT \u3|Div0|auto_generated|divider|divider|add_sub_3_result_int[4]~1_sumout\;
\u3|Div0|auto_generated|divider|divider|ALT_INV_op_5~1_sumout\ <= NOT \u3|Div0|auto_generated|divider|divider|op_5~1_sumout\;
\u3|Div0|auto_generated|divider|divider|ALT_INV_op_6~1_sumout\ <= NOT \u3|Div0|auto_generated|divider|divider|op_6~1_sumout\;
\u3|Div0|auto_generated|divider|divider|ALT_INV_op_7~1_sumout\ <= NOT \u3|Div0|auto_generated|divider|divider|op_7~1_sumout\;
\u2|ALT_INV_Add1~25_sumout\ <= NOT \u2|Add1~25_sumout\;
\u2|ALT_INV_Add1~21_sumout\ <= NOT \u2|Add1~21_sumout\;
\u2|ALT_INV_Add1~17_sumout\ <= NOT \u2|Add1~17_sumout\;
\u2|ALT_INV_Add1~13_sumout\ <= NOT \u2|Add1~13_sumout\;
\u2|ALT_INV_Add1~9_sumout\ <= NOT \u2|Add1~9_sumout\;
\u2|ALT_INV_Add1~5_sumout\ <= NOT \u2|Add1~5_sumout\;
\u2|ALT_INV_Add1~1_sumout\ <= NOT \u2|Add1~1_sumout\;
\u2|Div0|auto_generated|divider|divider|ALT_INV_add_sub_3_result_int[4]~1_sumout\ <= NOT \u2|Div0|auto_generated|divider|divider|add_sub_3_result_int[4]~1_sumout\;
\u2|Div0|auto_generated|divider|divider|ALT_INV_op_5~1_sumout\ <= NOT \u2|Div0|auto_generated|divider|divider|op_5~1_sumout\;
\u2|Div0|auto_generated|divider|divider|ALT_INV_op_6~1_sumout\ <= NOT \u2|Div0|auto_generated|divider|divider|op_6~1_sumout\;
\u2|Div0|auto_generated|divider|divider|ALT_INV_op_7~1_sumout\ <= NOT \u2|Div0|auto_generated|divider|divider|op_7~1_sumout\;

-- Location: IOOBUF_X0_Y18_N96
\ns_klim[0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => ns(0),
	devoe => ww_devoe,
	o => ww_ns_klim(0));

-- Location: IOOBUF_X0_Y18_N62
\ns_klim[1]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => ns(1),
	devoe => ww_devoe,
	o => ww_ns_klim(1));

-- Location: IOOBUF_X0_Y18_N45
\ns_klim[2]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => ALT_INV_ns(2),
	devoe => ww_devoe,
	o => ww_ns_klim(2));

-- Location: IOOBUF_X0_Y19_N22
\ew_klim[0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => ALT_INV_ew(0),
	devoe => ww_devoe,
	o => ww_ew_klim(0));

-- Location: IOOBUF_X0_Y20_N39
\ew_klim[1]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => ew(1),
	devoe => ww_devoe,
	o => ww_ew_klim(1));

-- Location: IOOBUF_X0_Y20_N56
\ew_klim[2]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => ew(2),
	devoe => ww_devoe,
	o => ww_ew_klim(2));

-- Location: IOOBUF_X44_Y0_N2
\seg5[6]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_seg5(6));

-- Location: IOOBUF_X0_Y21_N39
\seg5[5]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_seg5(5));

-- Location: IOOBUF_X0_Y21_N56
\seg5[4]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => ww_seg5(4));

-- Location: IOOBUF_X50_Y0_N19
\seg5[3]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_seg5(3));

-- Location: IOOBUF_X43_Y0_N19
\seg5[2]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_seg5(2));

-- Location: IOOBUF_X22_Y0_N19
\seg5[1]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => ww_seg5(1));

-- Location: IOOBUF_X29_Y0_N2
\seg5[0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_seg5(0));

-- Location: IOOBUF_X29_Y0_N19
\seg4[6]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => ALT_INV_s(1),
	devoe => ww_devoe,
	o => ww_seg4(6));

-- Location: IOOBUF_X36_Y0_N2
\seg4[5]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \u1|Mux3~0_combout\,
	devoe => ww_devoe,
	o => ww_seg4(5));

-- Location: IOOBUF_X43_Y0_N2
\seg4[4]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => s(0),
	devoe => ww_devoe,
	o => ww_seg4(4));

-- Location: IOOBUF_X52_Y0_N19
\seg4[3]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \u1|Mux0~0_combout\,
	devoe => ww_devoe,
	o => ww_seg4(3));

-- Location: IOOBUF_X44_Y0_N19
\seg4[2]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \u1|Mux0~1_combout\,
	devoe => ww_devoe,
	o => ww_seg4(2));

-- Location: IOOBUF_X48_Y0_N59
\seg4[1]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_seg4(1));

-- Location: IOOBUF_X52_Y0_N36
\seg4[0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \u1|Mux0~0_combout\,
	devoe => ww_devoe,
	o => ww_seg4(0));

-- Location: IOOBUF_X51_Y0_N19
\seg3[6]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \u2|ALT_INV_Mux6~0_combout\,
	devoe => ww_devoe,
	o => ww_seg3(6));

-- Location: IOOBUF_X51_Y0_N2
\seg3[5]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \u2|ALT_INV_Mux5~0_combout\,
	devoe => ww_devoe,
	o => ww_seg3(5));

-- Location: IOOBUF_X52_Y0_N2
\seg3[4]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \u2|ALT_INV_Mux4~0_combout\,
	devoe => ww_devoe,
	o => ww_seg3(4));

-- Location: IOOBUF_X46_Y0_N19
\seg3[3]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \u2|ALT_INV_Mux3~0_combout\,
	devoe => ww_devoe,
	o => ww_seg3(3));

-- Location: IOOBUF_X40_Y0_N42
\seg3[2]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \u2|ALT_INV_Mux2~0_combout\,
	devoe => ww_devoe,
	o => ww_seg3(2));

-- Location: IOOBUF_X46_Y0_N2
\seg3[1]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \u2|ALT_INV_Mux1~0_combout\,
	devoe => ww_devoe,
	o => ww_seg3(1));

-- Location: IOOBUF_X40_Y0_N59
\seg3[0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \u2|ALT_INV_Mux0~0_combout\,
	devoe => ww_devoe,
	o => ww_seg3(0));

-- Location: IOOBUF_X40_Y0_N76
\seg2[6]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \u2|ALT_INV_Mux13~1_combout\,
	devoe => ww_devoe,
	o => ww_seg2(6));

-- Location: IOOBUF_X46_Y0_N53
\seg2[5]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \u2|Mux12~1_combout\,
	devoe => ww_devoe,
	o => ww_seg2(5));

-- Location: IOOBUF_X38_Y0_N19
\seg2[4]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \u2|Mux11~1_combout\,
	devoe => ww_devoe,
	o => ww_seg2(4));

-- Location: IOOBUF_X36_Y0_N19
\seg2[3]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \u2|Mux10~1_combout\,
	devoe => ww_devoe,
	o => ww_seg2(3));

-- Location: IOOBUF_X22_Y0_N53
\seg2[2]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \u2|Mux9~1_combout\,
	devoe => ww_devoe,
	o => ww_seg2(2));

-- Location: IOOBUF_X38_Y0_N53
\seg2[1]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \u2|Mux8~1_combout\,
	devoe => ww_devoe,
	o => ww_seg2(1));

-- Location: IOOBUF_X48_Y0_N42
\seg2[0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \u2|Mux7~1_combout\,
	devoe => ww_devoe,
	o => ww_seg2(0));

-- Location: IOOBUF_X51_Y0_N53
\seg1[6]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \u3|ALT_INV_Mux6~0_combout\,
	devoe => ww_devoe,
	o => ww_seg1(6));

-- Location: IOOBUF_X43_Y0_N53
\seg1[5]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \u3|ALT_INV_Mux5~0_combout\,
	devoe => ww_devoe,
	o => ww_seg1(5));

-- Location: IOOBUF_X38_Y0_N36
\seg1[4]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \u3|ALT_INV_Mux4~0_combout\,
	devoe => ww_devoe,
	o => ww_seg1(4));

-- Location: IOOBUF_X43_Y0_N36
\seg1[3]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \u3|ALT_INV_Mux3~0_combout\,
	devoe => ww_devoe,
	o => ww_seg1(3));

-- Location: IOOBUF_X44_Y0_N53
\seg1[2]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \u3|ALT_INV_Mux2~0_combout\,
	devoe => ww_devoe,
	o => ww_seg1(2));

-- Location: IOOBUF_X40_Y0_N93
\seg1[1]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \u3|ALT_INV_Mux1~0_combout\,
	devoe => ww_devoe,
	o => ww_seg1(1));

-- Location: IOOBUF_X44_Y0_N36
\seg1[0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \u3|ALT_INV_Mux0~0_combout\,
	devoe => ww_devoe,
	o => ww_seg1(0));

-- Location: IOOBUF_X46_Y0_N36
\seg0[6]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \u3|ALT_INV_Mux13~1_combout\,
	devoe => ww_devoe,
	o => ww_seg0(6));

-- Location: IOOBUF_X50_Y0_N53
\seg0[5]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \u3|Mux12~1_combout\,
	devoe => ww_devoe,
	o => ww_seg0(5));

-- Location: IOOBUF_X48_Y0_N93
\seg0[4]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \u3|Mux11~1_combout\,
	devoe => ww_devoe,
	o => ww_seg0(4));

-- Location: IOOBUF_X50_Y0_N36
\seg0[3]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \u3|Mux10~1_combout\,
	devoe => ww_devoe,
	o => ww_seg0(3));

-- Location: IOOBUF_X48_Y0_N76
\seg0[2]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \u3|Mux9~1_combout\,
	devoe => ww_devoe,
	o => ww_seg0(2));

-- Location: IOOBUF_X51_Y0_N36
\seg0[1]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \u3|Mux8~1_combout\,
	devoe => ww_devoe,
	o => ww_seg0(1));

-- Location: IOOBUF_X52_Y0_N53
\seg0[0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \u3|Mux7~1_combout\,
	devoe => ww_devoe,
	o => ww_seg0(0));

-- Location: IOOBUF_X34_Y0_N36
\outclk~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \temp~q\,
	oe => VCC,
	devoe => ww_devoe,
	o => ww_outclk);

-- Location: IOOBUF_X34_Y0_N2
\timer_ew[0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => timer1(0),
	oe => VCC,
	devoe => ww_devoe,
	o => ww_timer_ew(0));

-- Location: IOOBUF_X34_Y0_N53
\timer_ew[1]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => ALT_INV_timer1(1),
	oe => VCC,
	devoe => ww_devoe,
	o => ww_timer_ew(1));

-- Location: IOOBUF_X36_Y0_N36
\timer_ew[2]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => timer1(2),
	oe => VCC,
	devoe => ww_devoe,
	o => ww_timer_ew(2));

-- Location: IOOBUF_X34_Y0_N19
\timer_ew[3]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => ALT_INV_timer1(3),
	oe => VCC,
	devoe => ww_devoe,
	o => ww_timer_ew(3));

-- Location: IOOBUF_X29_Y0_N53
\timer_ew[4]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => timer1(4),
	oe => VCC,
	devoe => ww_devoe,
	o => ww_timer_ew(4));

-- Location: IOOBUF_X33_Y0_N59
\timer_ew[5]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => timer1(5),
	oe => VCC,
	devoe => ww_devoe,
	o => ww_timer_ew(5));

-- Location: IOOBUF_X24_Y0_N36
\timer_ew[6]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => timer1(6),
	oe => VCC,
	devoe => ww_devoe,
	o => ww_timer_ew(6));

-- Location: IOOBUF_X36_Y0_N53
\timer_ns[0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => timer2(0),
	oe => VCC,
	devoe => ww_devoe,
	o => ww_timer_ns(0));

-- Location: IOOBUF_X25_Y0_N2
\timer_ns[1]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => timer2(1),
	oe => VCC,
	devoe => ww_devoe,
	o => ww_timer_ns(1));

-- Location: IOOBUF_X38_Y0_N2
\timer_ns[2]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => timer2(2),
	oe => VCC,
	devoe => ww_devoe,
	o => ww_timer_ns(2));

-- Location: IOOBUF_X50_Y0_N2
\timer_ns[3]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => timer2(3),
	oe => VCC,
	devoe => ww_devoe,
	o => ww_timer_ns(3));

-- Location: IOOBUF_X33_Y0_N42
\timer_ns[4]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => timer2(4),
	oe => VCC,
	devoe => ww_devoe,
	o => ww_timer_ns(4));

-- Location: IOOBUF_X25_Y0_N19
\timer_ns[5]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => timer2(5),
	oe => VCC,
	devoe => ww_devoe,
	o => ww_timer_ns(5));

-- Location: IOOBUF_X33_Y0_N93
\timer_ns[6]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => timer2(6),
	oe => VCC,
	devoe => ww_devoe,
	o => ww_timer_ns(6));

-- Location: IOOBUF_X25_Y0_N36
\s_out[0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => s(0),
	oe => VCC,
	devoe => ww_devoe,
	o => ww_s_out(0));

-- Location: IOOBUF_X29_Y0_N36
\s_out[1]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => s(1),
	oe => VCC,
	devoe => ww_devoe,
	o => ww_s_out(1));

-- Location: IOIBUF_X22_Y0_N1
\clk~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_clk,
	o => \clk~input_o\);

-- Location: IOIBUF_X14_Y0_N18
\reset~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_reset,
	o => \reset~input_o\);

-- Location: CLKCTRL_G6
\clk~inputCLKENA0\ : cyclonev_clkena
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	disable_mode => "low",
	ena_register_mode => "always enabled",
	ena_register_power_up => "high",
	test_syn => "high")
-- pragma translate_on
PORT MAP (
	inclk => \clk~input_o\,
	outclk => \clk~inputCLKENA0_outclk\);

-- Location: MLABCELL_X42_Y2_N0
\Add0~41\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~41_sumout\ = SUM(( count(0) ) + ( VCC ) + ( !VCC ))
-- \Add0~42\ = CARRY(( count(0) ) + ( VCC ) + ( !VCC ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => ALT_INV_count(0),
	cin => GND,
	sumout => \Add0~41_sumout\,
	cout => \Add0~42\);

-- Location: FF_X42_Y2_N2
\count[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Add0~41_sumout\,
	clrn => \reset~input_o\,
	sclr => \Equal0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => count(0));

-- Location: MLABCELL_X42_Y2_N3
\Add0~37\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~37_sumout\ = SUM(( count(1) ) + ( GND ) + ( \Add0~42\ ))
-- \Add0~38\ = CARRY(( count(1) ) + ( GND ) + ( \Add0~42\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => ALT_INV_count(1),
	cin => \Add0~42\,
	sumout => \Add0~37_sumout\,
	cout => \Add0~38\);

-- Location: FF_X42_Y2_N4
\count[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Add0~37_sumout\,
	clrn => \reset~input_o\,
	sclr => \Equal0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => count(1));

-- Location: MLABCELL_X42_Y2_N6
\Add0~33\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~33_sumout\ = SUM(( count(2) ) + ( GND ) + ( \Add0~38\ ))
-- \Add0~34\ = CARRY(( count(2) ) + ( GND ) + ( \Add0~38\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => ALT_INV_count(2),
	cin => \Add0~38\,
	sumout => \Add0~33_sumout\,
	cout => \Add0~34\);

-- Location: FF_X42_Y2_N7
\count[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Add0~33_sumout\,
	clrn => \reset~input_o\,
	sclr => \Equal0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => count(2));

-- Location: MLABCELL_X42_Y2_N9
\Add0~77\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~77_sumout\ = SUM(( count(3) ) + ( GND ) + ( \Add0~34\ ))
-- \Add0~78\ = CARRY(( count(3) ) + ( GND ) + ( \Add0~34\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => ALT_INV_count(3),
	cin => \Add0~34\,
	sumout => \Add0~77_sumout\,
	cout => \Add0~78\);

-- Location: FF_X42_Y2_N10
\count[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Add0~77_sumout\,
	clrn => \reset~input_o\,
	sclr => \Equal0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => count(3));

-- Location: MLABCELL_X42_Y2_N12
\Add0~73\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~73_sumout\ = SUM(( count(4) ) + ( GND ) + ( \Add0~78\ ))
-- \Add0~74\ = CARRY(( count(4) ) + ( GND ) + ( \Add0~78\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => ALT_INV_count(4),
	cin => \Add0~78\,
	sumout => \Add0~73_sumout\,
	cout => \Add0~74\);

-- Location: FF_X42_Y2_N14
\count[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Add0~73_sumout\,
	clrn => \reset~input_o\,
	sclr => \Equal0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => count(4));

-- Location: MLABCELL_X42_Y2_N15
\Add0~69\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~69_sumout\ = SUM(( count(5) ) + ( GND ) + ( \Add0~74\ ))
-- \Add0~70\ = CARRY(( count(5) ) + ( GND ) + ( \Add0~74\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => ALT_INV_count(5),
	cin => \Add0~74\,
	sumout => \Add0~69_sumout\,
	cout => \Add0~70\);

-- Location: FF_X42_Y2_N17
\count[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Add0~69_sumout\,
	clrn => \reset~input_o\,
	sclr => \Equal0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => count(5));

-- Location: MLABCELL_X42_Y2_N18
\Add0~21\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~21_sumout\ = SUM(( count(6) ) + ( GND ) + ( \Add0~70\ ))
-- \Add0~22\ = CARRY(( count(6) ) + ( GND ) + ( \Add0~70\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => ALT_INV_count(6),
	cin => \Add0~70\,
	sumout => \Add0~21_sumout\,
	cout => \Add0~22\);

-- Location: FF_X42_Y2_N19
\count[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Add0~21_sumout\,
	clrn => \reset~input_o\,
	sclr => \Equal0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => count(6));

-- Location: MLABCELL_X42_Y2_N21
\Add0~65\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~65_sumout\ = SUM(( count(7) ) + ( GND ) + ( \Add0~22\ ))
-- \Add0~66\ = CARRY(( count(7) ) + ( GND ) + ( \Add0~22\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => ALT_INV_count(7),
	cin => \Add0~22\,
	sumout => \Add0~65_sumout\,
	cout => \Add0~66\);

-- Location: FF_X42_Y2_N23
\count[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Add0~65_sumout\,
	clrn => \reset~input_o\,
	sclr => \Equal0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => count(7));

-- Location: MLABCELL_X42_Y2_N24
\Add0~61\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~61_sumout\ = SUM(( count(8) ) + ( GND ) + ( \Add0~66\ ))
-- \Add0~62\ = CARRY(( count(8) ) + ( GND ) + ( \Add0~66\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => ALT_INV_count(8),
	cin => \Add0~66\,
	sumout => \Add0~61_sumout\,
	cout => \Add0~62\);

-- Location: FF_X42_Y2_N26
\count[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Add0~61_sumout\,
	clrn => \reset~input_o\,
	sclr => \Equal0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => count(8));

-- Location: MLABCELL_X42_Y2_N27
\Add0~57\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~57_sumout\ = SUM(( count(9) ) + ( GND ) + ( \Add0~62\ ))
-- \Add0~58\ = CARRY(( count(9) ) + ( GND ) + ( \Add0~62\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => ALT_INV_count(9),
	cin => \Add0~62\,
	sumout => \Add0~57_sumout\,
	cout => \Add0~58\);

-- Location: FF_X42_Y2_N29
\count[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Add0~57_sumout\,
	clrn => \reset~input_o\,
	sclr => \Equal0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => count(9));

-- Location: MLABCELL_X42_Y2_N30
\Add0~125\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~125_sumout\ = SUM(( count(10) ) + ( GND ) + ( \Add0~58\ ))
-- \Add0~126\ = CARRY(( count(10) ) + ( GND ) + ( \Add0~58\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => ALT_INV_count(10),
	cin => \Add0~58\,
	sumout => \Add0~125_sumout\,
	cout => \Add0~126\);

-- Location: FF_X42_Y2_N32
\count[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Add0~125_sumout\,
	clrn => \reset~input_o\,
	sclr => \Equal0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => count(10));

-- Location: MLABCELL_X42_Y2_N33
\Add0~121\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~121_sumout\ = SUM(( count(11) ) + ( GND ) + ( \Add0~126\ ))
-- \Add0~122\ = CARRY(( count(11) ) + ( GND ) + ( \Add0~126\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => ALT_INV_count(11),
	cin => \Add0~126\,
	sumout => \Add0~121_sumout\,
	cout => \Add0~122\);

-- Location: FF_X42_Y2_N34
\count[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Add0~121_sumout\,
	clrn => \reset~input_o\,
	sclr => \Equal0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => count(11));

-- Location: MLABCELL_X42_Y2_N36
\Add0~117\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~117_sumout\ = SUM(( count(12) ) + ( GND ) + ( \Add0~122\ ))
-- \Add0~118\ = CARRY(( count(12) ) + ( GND ) + ( \Add0~122\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => ALT_INV_count(12),
	cin => \Add0~122\,
	sumout => \Add0~117_sumout\,
	cout => \Add0~118\);

-- Location: FF_X42_Y2_N38
\count[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Add0~117_sumout\,
	clrn => \reset~input_o\,
	sclr => \Equal0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => count(12));

-- Location: MLABCELL_X42_Y2_N39
\Add0~113\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~113_sumout\ = SUM(( count(13) ) + ( GND ) + ( \Add0~118\ ))
-- \Add0~114\ = CARRY(( count(13) ) + ( GND ) + ( \Add0~118\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => ALT_INV_count(13),
	cin => \Add0~118\,
	sumout => \Add0~113_sumout\,
	cout => \Add0~114\);

-- Location: FF_X42_Y2_N41
\count[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Add0~113_sumout\,
	clrn => \reset~input_o\,
	sclr => \Equal0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => count(13));

-- Location: MLABCELL_X42_Y2_N42
\Add0~109\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~109_sumout\ = SUM(( count(14) ) + ( GND ) + ( \Add0~114\ ))
-- \Add0~110\ = CARRY(( count(14) ) + ( GND ) + ( \Add0~114\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => ALT_INV_count(14),
	cin => \Add0~114\,
	sumout => \Add0~109_sumout\,
	cout => \Add0~110\);

-- Location: FF_X42_Y2_N44
\count[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Add0~109_sumout\,
	clrn => \reset~input_o\,
	sclr => \Equal0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => count(14));

-- Location: MLABCELL_X42_Y2_N45
\Add0~101\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~101_sumout\ = SUM(( count(15) ) + ( GND ) + ( \Add0~110\ ))
-- \Add0~102\ = CARRY(( count(15) ) + ( GND ) + ( \Add0~110\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => ALT_INV_count(15),
	cin => \Add0~110\,
	sumout => \Add0~101_sumout\,
	cout => \Add0~102\);

-- Location: FF_X42_Y2_N47
\count[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Add0~101_sumout\,
	clrn => \reset~input_o\,
	sclr => \Equal0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => count(15));

-- Location: MLABCELL_X42_Y2_N48
\Add0~97\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~97_sumout\ = SUM(( count(16) ) + ( GND ) + ( \Add0~102\ ))
-- \Add0~98\ = CARRY(( count(16) ) + ( GND ) + ( \Add0~102\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => ALT_INV_count(16),
	cin => \Add0~102\,
	sumout => \Add0~97_sumout\,
	cout => \Add0~98\);

-- Location: FF_X42_Y2_N50
\count[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Add0~97_sumout\,
	clrn => \reset~input_o\,
	sclr => \Equal0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => count(16));

-- Location: MLABCELL_X42_Y2_N51
\Add0~93\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~93_sumout\ = SUM(( count(17) ) + ( GND ) + ( \Add0~98\ ))
-- \Add0~94\ = CARRY(( count(17) ) + ( GND ) + ( \Add0~98\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => ALT_INV_count(17),
	cin => \Add0~98\,
	sumout => \Add0~93_sumout\,
	cout => \Add0~94\);

-- Location: FF_X42_Y2_N52
\count[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Add0~93_sumout\,
	clrn => \reset~input_o\,
	sclr => \Equal0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => count(17));

-- Location: MLABCELL_X42_Y2_N54
\Add0~89\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~89_sumout\ = SUM(( count(18) ) + ( GND ) + ( \Add0~94\ ))
-- \Add0~90\ = CARRY(( count(18) ) + ( GND ) + ( \Add0~94\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => ALT_INV_count(18),
	cin => \Add0~94\,
	sumout => \Add0~89_sumout\,
	cout => \Add0~90\);

-- Location: FF_X42_Y2_N56
\count[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Add0~89_sumout\,
	clrn => \reset~input_o\,
	sclr => \Equal0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => count(18));

-- Location: MLABCELL_X42_Y2_N57
\Add0~85\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~85_sumout\ = SUM(( count(19) ) + ( GND ) + ( \Add0~90\ ))
-- \Add0~86\ = CARRY(( count(19) ) + ( GND ) + ( \Add0~90\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => ALT_INV_count(19),
	cin => \Add0~90\,
	sumout => \Add0~85_sumout\,
	cout => \Add0~86\);

-- Location: FF_X42_Y2_N58
\count[19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Add0~85_sumout\,
	clrn => \reset~input_o\,
	sclr => \Equal0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => count(19));

-- Location: MLABCELL_X42_Y1_N0
\Add0~105\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~105_sumout\ = SUM(( count(20) ) + ( GND ) + ( \Add0~86\ ))
-- \Add0~106\ = CARRY(( count(20) ) + ( GND ) + ( \Add0~86\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => ALT_INV_count(20),
	cin => \Add0~86\,
	sumout => \Add0~105_sumout\,
	cout => \Add0~106\);

-- Location: FF_X42_Y1_N1
\count[20]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Add0~105_sumout\,
	clrn => \reset~input_o\,
	sclr => \Equal0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => count(20));

-- Location: MLABCELL_X42_Y1_N3
\Add0~81\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~81_sumout\ = SUM(( count(21) ) + ( GND ) + ( \Add0~106\ ))
-- \Add0~82\ = CARRY(( count(21) ) + ( GND ) + ( \Add0~106\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => ALT_INV_count(21),
	cin => \Add0~106\,
	sumout => \Add0~81_sumout\,
	cout => \Add0~82\);

-- Location: FF_X42_Y1_N5
\count[21]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Add0~81_sumout\,
	clrn => \reset~input_o\,
	sclr => \Equal0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => count(21));

-- Location: MLABCELL_X42_Y1_N6
\Add0~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~5_sumout\ = SUM(( count(22) ) + ( GND ) + ( \Add0~82\ ))
-- \Add0~6\ = CARRY(( count(22) ) + ( GND ) + ( \Add0~82\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => ALT_INV_count(22),
	cin => \Add0~82\,
	sumout => \Add0~5_sumout\,
	cout => \Add0~6\);

-- Location: FF_X42_Y1_N8
\count[22]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Add0~5_sumout\,
	clrn => \reset~input_o\,
	sclr => \Equal0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => count(22));

-- Location: MLABCELL_X42_Y1_N9
\Add0~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~1_sumout\ = SUM(( count(23) ) + ( GND ) + ( \Add0~6\ ))
-- \Add0~2\ = CARRY(( count(23) ) + ( GND ) + ( \Add0~6\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => ALT_INV_count(23),
	cin => \Add0~6\,
	sumout => \Add0~1_sumout\,
	cout => \Add0~2\);

-- Location: FF_X42_Y1_N11
\count[23]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Add0~1_sumout\,
	clrn => \reset~input_o\,
	sclr => \Equal0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => count(23));

-- Location: MLABCELL_X42_Y1_N39
\Equal0~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Equal0~0_combout\ = ( count(22) & ( !count(23) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011110000111100001111000011110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => ALT_INV_count(23),
	dataf => ALT_INV_count(22),
	combout => \Equal0~0_combout\);

-- Location: MLABCELL_X42_Y1_N12
\Add0~29\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~29_sumout\ = SUM(( count(24) ) + ( GND ) + ( \Add0~2\ ))
-- \Add0~30\ = CARRY(( count(24) ) + ( GND ) + ( \Add0~2\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => ALT_INV_count(24),
	cin => \Add0~2\,
	sumout => \Add0~29_sumout\,
	cout => \Add0~30\);

-- Location: FF_X42_Y1_N14
\count[24]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Add0~29_sumout\,
	clrn => \reset~input_o\,
	sclr => \Equal0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => count(24));

-- Location: MLABCELL_X42_Y1_N15
\Add0~25\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~25_sumout\ = SUM(( count(25) ) + ( GND ) + ( \Add0~30\ ))
-- \Add0~26\ = CARRY(( count(25) ) + ( GND ) + ( \Add0~30\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => ALT_INV_count(25),
	cin => \Add0~30\,
	sumout => \Add0~25_sumout\,
	cout => \Add0~26\);

-- Location: FF_X42_Y1_N16
\count[25]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Add0~25_sumout\,
	clrn => \reset~input_o\,
	sclr => \Equal0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => count(25));

-- Location: MLABCELL_X42_Y1_N18
\Add0~45\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~45_sumout\ = SUM(( count(26) ) + ( GND ) + ( \Add0~26\ ))
-- \Add0~46\ = CARRY(( count(26) ) + ( GND ) + ( \Add0~26\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => ALT_INV_count(26),
	cin => \Add0~26\,
	sumout => \Add0~45_sumout\,
	cout => \Add0~46\);

-- Location: FF_X42_Y1_N19
\count[26]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Add0~45_sumout\,
	clrn => \reset~input_o\,
	sclr => \Equal0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => count(26));

-- Location: MLABCELL_X42_Y1_N21
\Add0~17\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~17_sumout\ = SUM(( count(27) ) + ( GND ) + ( \Add0~46\ ))
-- \Add0~18\ = CARRY(( count(27) ) + ( GND ) + ( \Add0~46\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => ALT_INV_count(27),
	cin => \Add0~46\,
	sumout => \Add0~17_sumout\,
	cout => \Add0~18\);

-- Location: FF_X42_Y1_N23
\count[27]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Add0~17_sumout\,
	clrn => \reset~input_o\,
	sclr => \Equal0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => count(27));

-- Location: MLABCELL_X42_Y1_N24
\Add0~13\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~13_sumout\ = SUM(( count(28) ) + ( GND ) + ( \Add0~18\ ))
-- \Add0~14\ = CARRY(( count(28) ) + ( GND ) + ( \Add0~18\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => ALT_INV_count(28),
	cin => \Add0~18\,
	sumout => \Add0~13_sumout\,
	cout => \Add0~14\);

-- Location: FF_X42_Y1_N26
\count[28]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Add0~13_sumout\,
	clrn => \reset~input_o\,
	sclr => \Equal0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => count(28));

-- Location: MLABCELL_X42_Y1_N27
\Add0~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~9_sumout\ = SUM(( count(29) ) + ( GND ) + ( \Add0~14\ ))
-- \Add0~10\ = CARRY(( count(29) ) + ( GND ) + ( \Add0~14\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => ALT_INV_count(29),
	cin => \Add0~14\,
	sumout => \Add0~9_sumout\,
	cout => \Add0~10\);

-- Location: FF_X42_Y1_N29
\count[29]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Add0~9_sumout\,
	clrn => \reset~input_o\,
	sclr => \Equal0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => count(29));

-- Location: MLABCELL_X42_Y1_N30
\Add0~53\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~53_sumout\ = SUM(( count(30) ) + ( GND ) + ( \Add0~10\ ))
-- \Add0~54\ = CARRY(( count(30) ) + ( GND ) + ( \Add0~10\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => ALT_INV_count(30),
	cin => \Add0~10\,
	sumout => \Add0~53_sumout\,
	cout => \Add0~54\);

-- Location: FF_X42_Y1_N32
\count[30]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Add0~53_sumout\,
	clrn => \reset~input_o\,
	sclr => \Equal0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => count(30));

-- Location: MLABCELL_X42_Y1_N33
\Add0~49\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~49_sumout\ = SUM(( count(31) ) + ( GND ) + ( \Add0~54\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => ALT_INV_count(31),
	cin => \Add0~54\,
	sumout => \Add0~49_sumout\);

-- Location: FF_X42_Y1_N35
\count[31]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Add0~49_sumout\,
	clrn => \reset~input_o\,
	sclr => \Equal0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => count(31));

-- Location: MLABCELL_X42_Y1_N42
\Equal0~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \Equal0~2_combout\ = ( count(1) & ( count(2) & ( (!count(31) & (!count(26) & (count(0) & !count(30)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000100000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_count(31),
	datab => ALT_INV_count(26),
	datac => ALT_INV_count(0),
	datad => ALT_INV_count(30),
	datae => ALT_INV_count(1),
	dataf => ALT_INV_count(2),
	combout => \Equal0~2_combout\);

-- Location: LABCELL_X41_Y2_N42
\Equal0~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \Equal0~5_combout\ = ( count(12) & ( count(20) & ( (count(13) & (count(14) & (!count(10) & count(11)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000000010000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_count(13),
	datab => ALT_INV_count(14),
	datac => ALT_INV_count(10),
	datad => ALT_INV_count(11),
	datae => ALT_INV_count(12),
	dataf => ALT_INV_count(20),
	combout => \Equal0~5_combout\);

-- Location: LABCELL_X41_Y1_N24
\Equal0~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \Equal0~1_combout\ = ( !count(6) & ( !count(25) & ( (!count(27) & (count(24) & (!count(29) & !count(28)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010000000000000000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_count(27),
	datab => ALT_INV_count(24),
	datac => ALT_INV_count(29),
	datad => ALT_INV_count(28),
	datae => ALT_INV_count(6),
	dataf => ALT_INV_count(25),
	combout => \Equal0~1_combout\);

-- Location: MLABCELL_X42_Y1_N54
\Equal0~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \Equal0~4_combout\ = ( count(18) & ( count(16) & ( (!count(17) & (count(21) & (count(19) & !count(15)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000001000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_count(17),
	datab => ALT_INV_count(21),
	datac => ALT_INV_count(19),
	datad => ALT_INV_count(15),
	datae => ALT_INV_count(18),
	dataf => ALT_INV_count(16),
	combout => \Equal0~4_combout\);

-- Location: LABCELL_X41_Y2_N48
\Equal0~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \Equal0~3_combout\ = ( count(5) & ( count(3) & ( (!count(7) & (!count(8) & (!count(9) & count(4)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000010000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_count(7),
	datab => ALT_INV_count(8),
	datac => ALT_INV_count(9),
	datad => ALT_INV_count(4),
	datae => ALT_INV_count(5),
	dataf => ALT_INV_count(3),
	combout => \Equal0~3_combout\);

-- Location: MLABCELL_X42_Y1_N48
\Equal0~6\ : cyclonev_lcell_comb
-- Equation(s):
-- \Equal0~6_combout\ = ( \Equal0~4_combout\ & ( \Equal0~3_combout\ & ( (\Equal0~0_combout\ & (\Equal0~2_combout\ & (\Equal0~5_combout\ & \Equal0~1_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000000000001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Equal0~0_combout\,
	datab => \ALT_INV_Equal0~2_combout\,
	datac => \ALT_INV_Equal0~5_combout\,
	datad => \ALT_INV_Equal0~1_combout\,
	datae => \ALT_INV_Equal0~4_combout\,
	dataf => \ALT_INV_Equal0~3_combout\,
	combout => \Equal0~6_combout\);

-- Location: MLABCELL_X42_Y1_N36
\temp~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \temp~0_combout\ = ( \temp~q\ & ( (!\reset~input_o\) # (!\Equal0~6_combout\) ) ) # ( !\temp~q\ & ( (\reset~input_o\ & \Equal0~6_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010100000101000001010000010111111010111110101111101011111010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_reset~input_o\,
	datac => \ALT_INV_Equal0~6_combout\,
	dataf => \ALT_INV_temp~q\,
	combout => \temp~0_combout\);

-- Location: LABCELL_X41_Y1_N12
\temp~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \temp~feeder_combout\ = ( \temp~0_combout\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \ALT_INV_temp~0_combout\,
	combout => \temp~feeder_combout\);

-- Location: FF_X41_Y1_N14
temp : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \temp~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \temp~q\);

-- Location: LABCELL_X39_Y1_N33
\~GND\ : cyclonev_lcell_comb
-- Equation(s):
-- \~GND~combout\ = GND

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	combout => \~GND~combout\);

-- Location: LABCELL_X39_Y1_N9
\timer1[0]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \timer1[0]~feeder_combout\ = ( \~GND~combout\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \ALT_INV_~GND~combout\,
	combout => \timer1[0]~feeder_combout\);

-- Location: MLABCELL_X37_Y1_N0
\Add1~17\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add1~17_sumout\ = SUM(( timer1(0) ) + ( VCC ) + ( !VCC ))
-- \Add1~18\ = CARRY(( timer1(0) ) + ( VCC ) + ( !VCC ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => ALT_INV_timer1(0),
	cin => GND,
	sumout => \Add1~17_sumout\,
	cout => \Add1~18\);

-- Location: LABCELL_X39_Y1_N48
\timer1[1]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \timer1[1]~feeder_combout\ = ( \~GND~combout\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \ALT_INV_~GND~combout\,
	combout => \timer1[1]~feeder_combout\);

-- Location: MLABCELL_X37_Y1_N3
\Add1~13\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add1~13_sumout\ = SUM(( !timer1(1) ) + ( VCC ) + ( \Add1~18\ ))
-- \Add1~14\ = CARRY(( !timer1(1) ) + ( VCC ) + ( \Add1~18\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000001111111100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => ALT_INV_timer1(1),
	cin => \Add1~18\,
	sumout => \Add1~13_sumout\,
	cout => \Add1~14\);

-- Location: MLABCELL_X37_Y1_N48
\Add1~13_wirecell\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add1~13_wirecell_combout\ = !\Add1~13_sumout\

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111100000000111111110000000011111111000000001111111100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \ALT_INV_Add1~13_sumout\,
	combout => \Add1~13_wirecell_combout\);

-- Location: IOIBUF_X33_Y0_N75
\timer_en~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_timer_en,
	o => \timer_en~input_o\);

-- Location: LABCELL_X40_Y2_N0
\Add2~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add2~5_sumout\ = SUM(( timer2(0) ) + ( VCC ) + ( !VCC ))
-- \Add2~6\ = CARRY(( timer2(0) ) + ( VCC ) + ( !VCC ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => ALT_INV_timer2(0),
	cin => GND,
	sumout => \Add2~5_sumout\,
	cout => \Add2~6\);

-- Location: LABCELL_X41_Y2_N27
\timer2[0]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \timer2[0]~feeder_combout\ = ( \Add2~5_sumout\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \ALT_INV_Add2~5_sumout\,
	combout => \timer2[0]~feeder_combout\);

-- Location: LABCELL_X40_Y2_N6
\Add2~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add2~1_sumout\ = SUM(( timer2(2) ) + ( VCC ) + ( \Add2~26\ ))
-- \Add2~2\ = CARRY(( timer2(2) ) + ( VCC ) + ( \Add2~26\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => ALT_INV_timer2(2),
	cin => \Add2~26\,
	sumout => \Add2~1_sumout\,
	cout => \Add2~2\);

-- Location: LABCELL_X40_Y2_N9
\Add2~21\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add2~21_sumout\ = SUM(( timer2(3) ) + ( VCC ) + ( \Add2~2\ ))
-- \Add2~22\ = CARRY(( timer2(3) ) + ( VCC ) + ( \Add2~2\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => ALT_INV_timer2(3),
	cin => \Add2~2\,
	sumout => \Add2~21_sumout\,
	cout => \Add2~22\);

-- Location: LABCELL_X41_Y2_N36
\timer2[3]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \timer2[3]~feeder_combout\ = ( \Add2~21_sumout\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \ALT_INV_Add2~21_sumout\,
	combout => \timer2[3]~feeder_combout\);

-- Location: FF_X41_Y2_N38
\timer2[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \temp~q\,
	d => \timer2[3]~feeder_combout\,
	asdata => VCC,
	clrn => \reset~input_o\,
	sload => \timer1[6]~0_combout\,
	ena => \timer2[6]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => timer2(3));

-- Location: LABCELL_X40_Y2_N12
\Add2~17\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add2~17_sumout\ = SUM(( timer2(4) ) + ( VCC ) + ( \Add2~22\ ))
-- \Add2~18\ = CARRY(( timer2(4) ) + ( VCC ) + ( \Add2~22\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => ALT_INV_timer2(4),
	cin => \Add2~22\,
	sumout => \Add2~17_sumout\,
	cout => \Add2~18\);

-- Location: LABCELL_X41_Y2_N21
\timer2[4]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \timer2[4]~feeder_combout\ = \Add2~17_sumout\

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101010101010101010101010101010101010101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Add2~17_sumout\,
	combout => \timer2[4]~feeder_combout\);

-- Location: FF_X41_Y2_N23
\timer2[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \temp~q\,
	d => \timer2[4]~feeder_combout\,
	asdata => \~GND~combout\,
	clrn => \reset~input_o\,
	sload => \timer1[6]~0_combout\,
	ena => \timer2[6]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => timer2(4));

-- Location: LABCELL_X40_Y2_N15
\Add2~13\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add2~13_sumout\ = SUM(( timer2(5) ) + ( VCC ) + ( \Add2~18\ ))
-- \Add2~14\ = CARRY(( timer2(5) ) + ( VCC ) + ( \Add2~18\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => ALT_INV_timer2(5),
	cin => \Add2~18\,
	sumout => \Add2~13_sumout\,
	cout => \Add2~14\);

-- Location: LABCELL_X41_Y2_N15
\timer2[5]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \timer2[5]~feeder_combout\ = ( \Add2~13_sumout\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \ALT_INV_Add2~13_sumout\,
	combout => \timer2[5]~feeder_combout\);

-- Location: FF_X41_Y2_N17
\timer2[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \temp~q\,
	d => \timer2[5]~feeder_combout\,
	asdata => \~GND~combout\,
	clrn => \reset~input_o\,
	sload => \timer1[6]~0_combout\,
	ena => \timer2[6]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => timer2(5));

-- Location: LABCELL_X40_Y2_N18
\Add2~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add2~9_sumout\ = SUM(( timer2(6) ) + ( VCC ) + ( \Add2~14\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => ALT_INV_timer2(6),
	cin => \Add2~14\,
	sumout => \Add2~9_sumout\);

-- Location: LABCELL_X41_Y2_N0
\timer2[6]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \timer2[6]~feeder_combout\ = ( \Add2~9_sumout\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \ALT_INV_Add2~9_sumout\,
	combout => \timer2[6]~feeder_combout\);

-- Location: FF_X41_Y2_N2
\timer2[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \temp~q\,
	d => \timer2[6]~feeder_combout\,
	asdata => \~GND~combout\,
	clrn => \reset~input_o\,
	sload => \timer1[6]~0_combout\,
	ena => \timer2[6]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => timer2(6));

-- Location: LABCELL_X41_Y2_N54
\Equal3~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Equal3~0_combout\ = ( !timer2(6) & ( !timer2(1) & ( (!timer2(4) & (!timer2(3) & !timer2(5))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1010000000000000000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_timer2(4),
	datac => ALT_INV_timer2(3),
	datad => ALT_INV_timer2(5),
	datae => ALT_INV_timer2(6),
	dataf => ALT_INV_timer2(1),
	combout => \Equal3~0_combout\);

-- Location: LABCELL_X39_Y1_N21
\timer1[3]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \timer1[3]~feeder_combout\ = ( \~GND~combout\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \ALT_INV_~GND~combout\,
	combout => \timer1[3]~feeder_combout\);

-- Location: LABCELL_X39_Y1_N42
\timer1[2]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \timer1[2]~feeder_combout\ = ( \~GND~combout\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \ALT_INV_~GND~combout\,
	combout => \timer1[2]~feeder_combout\);

-- Location: MLABCELL_X37_Y1_N6
\Add1~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add1~9_sumout\ = SUM(( timer1(2) ) + ( VCC ) + ( \Add1~14\ ))
-- \Add1~10\ = CARRY(( timer1(2) ) + ( VCC ) + ( \Add1~14\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => ALT_INV_timer1(2),
	cin => \Add1~14\,
	sumout => \Add1~9_sumout\,
	cout => \Add1~10\);

-- Location: FF_X39_Y1_N44
\timer1[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \temp~q\,
	d => \timer1[2]~feeder_combout\,
	asdata => \Add1~9_sumout\,
	clrn => \reset~input_o\,
	sload => \timer1[6]~0_combout\,
	ena => \timer1[5]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => timer1(2));

-- Location: MLABCELL_X37_Y1_N9
\Add1~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add1~5_sumout\ = SUM(( !timer1(3) ) + ( VCC ) + ( \Add1~10\ ))
-- \Add1~6\ = CARRY(( !timer1(3) ) + ( VCC ) + ( \Add1~10\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000001111111100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => ALT_INV_timer1(3),
	cin => \Add1~10\,
	sumout => \Add1~5_sumout\,
	cout => \Add1~6\);

-- Location: MLABCELL_X37_Y1_N57
\Add1~5_wirecell\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add1~5_wirecell_combout\ = ( !\Add1~5_sumout\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111111111111111111111111100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \ALT_INV_Add1~5_sumout\,
	combout => \Add1~5_wirecell_combout\);

-- Location: FF_X39_Y1_N23
\timer1[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \temp~q\,
	d => \timer1[3]~feeder_combout\,
	asdata => \Add1~5_wirecell_combout\,
	clrn => \reset~input_o\,
	sload => \timer1[6]~0_combout\,
	ena => \timer1[5]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => timer1(3));

-- Location: LABCELL_X39_Y1_N15
\timer1[4]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \timer1[4]~feeder_combout\ = ( \~GND~combout\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \ALT_INV_~GND~combout\,
	combout => \timer1[4]~feeder_combout\);

-- Location: MLABCELL_X37_Y1_N12
\Add1~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add1~1_sumout\ = SUM(( timer1(4) ) + ( VCC ) + ( \Add1~6\ ))
-- \Add1~2\ = CARRY(( timer1(4) ) + ( VCC ) + ( \Add1~6\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => ALT_INV_timer1(4),
	cin => \Add1~6\,
	sumout => \Add1~1_sumout\,
	cout => \Add1~2\);

-- Location: FF_X39_Y1_N17
\timer1[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \temp~q\,
	d => \timer1[4]~feeder_combout\,
	asdata => \Add1~1_sumout\,
	clrn => \reset~input_o\,
	sload => \timer1[6]~0_combout\,
	ena => \timer1[5]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => timer1(4));

-- Location: MLABCELL_X37_Y1_N15
\Add1~25\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add1~25_sumout\ = SUM(( timer1(5) ) + ( VCC ) + ( \Add1~2\ ))
-- \Add1~26\ = CARRY(( timer1(5) ) + ( VCC ) + ( \Add1~2\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => ALT_INV_timer1(5),
	cin => \Add1~2\,
	sumout => \Add1~25_sumout\,
	cout => \Add1~26\);

-- Location: LABCELL_X40_Y1_N57
\timer1[5]~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \timer1[5]~3_combout\ = ( \Equal2~1_combout\ & ( \Add1~25_sumout\ & ( (!\timer_en~input_o\ & ((timer1(5)))) # (\timer_en~input_o\ & (timer1(0))) ) ) ) # ( !\Equal2~1_combout\ & ( \Add1~25_sumout\ & ( (\timer_en~input_o\) # (timer1(5)) ) ) ) # ( 
-- \Equal2~1_combout\ & ( !\Add1~25_sumout\ & ( (timer1(5) & !\timer_en~input_o\) ) ) ) # ( !\Equal2~1_combout\ & ( !\Add1~25_sumout\ & ( (timer1(5) & !\timer_en~input_o\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011000000110000001100000011000000111111001111110011010100110101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_timer1(0),
	datab => ALT_INV_timer1(5),
	datac => \ALT_INV_timer_en~input_o\,
	datae => \ALT_INV_Equal2~1_combout\,
	dataf => \ALT_INV_Add1~25_sumout\,
	combout => \timer1[5]~3_combout\);

-- Location: FF_X40_Y1_N11
\timer1[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \temp~q\,
	asdata => \timer1[5]~3_combout\,
	clrn => \reset~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => timer1(5));

-- Location: MLABCELL_X37_Y1_N18
\Add1~21\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add1~21_sumout\ = SUM(( timer1(6) ) + ( VCC ) + ( \Add1~26\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => ALT_INV_timer1(6),
	cin => \Add1~26\,
	sumout => \Add1~21_sumout\);

-- Location: LABCELL_X40_Y1_N27
\timer1[6]~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \timer1[6]~2_combout\ = ( \Add1~21_sumout\ & ( (!\timer_en~input_o\ & (timer1(6))) # (\timer_en~input_o\ & (((!\Equal2~1_combout\) # (timer1(0))))) ) ) # ( !\Add1~21_sumout\ & ( (timer1(6) & !\timer_en~input_o\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100010001000100010001000100010001110111010001110111011101000111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_timer1(6),
	datab => \ALT_INV_timer_en~input_o\,
	datac => ALT_INV_timer1(0),
	datad => \ALT_INV_Equal2~1_combout\,
	dataf => \ALT_INV_Add1~21_sumout\,
	combout => \timer1[6]~2_combout\);

-- Location: FF_X40_Y1_N5
\timer1[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \temp~q\,
	asdata => \timer1[6]~2_combout\,
	clrn => \reset~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => timer1(6));

-- Location: LABCELL_X40_Y1_N21
\Equal2~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \Equal2~1_combout\ = ( !timer1(6) & ( !timer1(5) & ( (timer1(3) & (!timer1(4) & (!timer1(2) & timer1(1)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000001000000000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_timer1(3),
	datab => ALT_INV_timer1(4),
	datac => ALT_INV_timer1(2),
	datad => ALT_INV_timer1(1),
	datae => ALT_INV_timer1(6),
	dataf => ALT_INV_timer1(5),
	combout => \Equal2~1_combout\);

-- Location: LABCELL_X41_Y2_N33
\timer2[6]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \timer2[6]~0_combout\ = ( timer2(0) & ( timer2(2) & ( (\timer_en~input_o\ & \Equal2~1_combout\) ) ) ) # ( !timer2(0) & ( timer2(2) & ( (\timer_en~input_o\ & \Equal2~1_combout\) ) ) ) # ( timer2(0) & ( !timer2(2) & ( (\timer_en~input_o\ & 
-- \Equal2~1_combout\) ) ) ) # ( !timer2(0) & ( !timer2(2) & ( (\timer_en~input_o\ & (\Equal2~1_combout\ & ((!\Equal3~0_combout\) # (timer1(0))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000001000101000000000101010100000000010101010000000001010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_timer_en~input_o\,
	datab => \ALT_INV_Equal3~0_combout\,
	datac => ALT_INV_timer1(0),
	datad => \ALT_INV_Equal2~1_combout\,
	datae => ALT_INV_timer2(0),
	dataf => ALT_INV_timer2(2),
	combout => \timer2[6]~0_combout\);

-- Location: FF_X41_Y2_N29
\timer2[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \temp~q\,
	d => \timer2[0]~feeder_combout\,
	asdata => \~GND~combout\,
	clrn => \reset~input_o\,
	sload => \timer1[6]~0_combout\,
	ena => \timer2[6]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => timer2(0));

-- Location: LABCELL_X40_Y2_N3
\Add2~25\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add2~25_sumout\ = SUM(( timer2(1) ) + ( VCC ) + ( \Add2~6\ ))
-- \Add2~26\ = CARRY(( timer2(1) ) + ( VCC ) + ( \Add2~6\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => ALT_INV_timer2(1),
	cin => \Add2~6\,
	sumout => \Add2~25_sumout\,
	cout => \Add2~26\);

-- Location: LABCELL_X41_Y2_N24
\timer2[1]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \timer2[1]~feeder_combout\ = \Add2~25_sumout\

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001100110011001100110011001100110011001100110011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_Add2~25_sumout\,
	combout => \timer2[1]~feeder_combout\);

-- Location: FF_X41_Y2_N26
\timer2[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \temp~q\,
	d => \timer2[1]~feeder_combout\,
	asdata => VCC,
	clrn => \reset~input_o\,
	sload => \timer1[6]~0_combout\,
	ena => \timer2[6]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => timer2(1));

-- Location: LABCELL_X41_Y2_N9
\timer2[2]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \timer2[2]~feeder_combout\ = \Add2~1_sumout\

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101010101010101010101010101010101010101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Add2~1_sumout\,
	combout => \timer2[2]~feeder_combout\);

-- Location: FF_X41_Y2_N11
\timer2[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \temp~q\,
	d => \timer2[2]~feeder_combout\,
	asdata => \~GND~combout\,
	clrn => \reset~input_o\,
	sload => \timer1[6]~0_combout\,
	ena => \timer2[6]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => timer2(2));

-- Location: LABCELL_X40_Y1_N0
\timer1[5]~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \timer1[5]~1_combout\ = ( timer2(0) & ( \Equal3~0_combout\ & ( (\timer_en~input_o\ & (((!timer2(2)) # (!\Equal2~1_combout\)) # (timer1(0)))) ) ) ) # ( !timer2(0) & ( \Equal3~0_combout\ & ( (\timer_en~input_o\ & ((!\Equal2~1_combout\) # (timer1(0)))) ) ) ) 
-- # ( timer2(0) & ( !\Equal3~0_combout\ & ( (\timer_en~input_o\ & ((!\Equal2~1_combout\) # (timer1(0)))) ) ) ) # ( !timer2(0) & ( !\Equal3~0_combout\ & ( (\timer_en~input_o\ & ((!\Equal2~1_combout\) # (timer1(0)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001100010001001100110001000100110011000100010011001100110001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_timer1(0),
	datab => \ALT_INV_timer_en~input_o\,
	datac => ALT_INV_timer2(2),
	datad => \ALT_INV_Equal2~1_combout\,
	datae => ALT_INV_timer2(0),
	dataf => \ALT_INV_Equal3~0_combout\,
	combout => \timer1[5]~1_combout\);

-- Location: FF_X39_Y1_N50
\timer1[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \temp~q\,
	d => \timer1[1]~feeder_combout\,
	asdata => \Add1~13_wirecell_combout\,
	clrn => \reset~input_o\,
	sload => \timer1[6]~0_combout\,
	ena => \timer1[5]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => timer1(1));

-- Location: LABCELL_X40_Y1_N45
\Equal1~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Equal1~0_combout\ = ( !timer1(5) & ( !timer1(6) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111100000000111111110000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => ALT_INV_timer1(6),
	dataf => ALT_INV_timer1(5),
	combout => \Equal1~0_combout\);

-- Location: LABCELL_X40_Y1_N6
\timer1[6]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \timer1[6]~0_combout\ = ( timer1(2) & ( timer1(0) ) ) # ( !timer1(2) & ( timer1(0) ) ) # ( timer1(2) & ( !timer1(0) ) ) # ( !timer1(2) & ( !timer1(0) & ( (!timer1(1)) # ((!\Equal1~0_combout\) # ((!timer1(3)) # (timer1(4)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111011111111111111111111111111111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_timer1(1),
	datab => \ALT_INV_Equal1~0_combout\,
	datac => ALT_INV_timer1(3),
	datad => ALT_INV_timer1(4),
	datae => ALT_INV_timer1(2),
	dataf => ALT_INV_timer1(0),
	combout => \timer1[6]~0_combout\);

-- Location: FF_X39_Y1_N11
\timer1[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \temp~q\,
	d => \timer1[0]~feeder_combout\,
	asdata => \Add1~17_sumout\,
	clrn => \reset~input_o\,
	sload => \timer1[6]~0_combout\,
	ena => \timer1[5]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => timer1(0));

-- Location: LABCELL_X40_Y1_N12
\Equal2~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Equal2~0_combout\ = ( !timer1(2) & ( timer1(0) & ( (timer1(1) & (\Equal1~0_combout\ & (!timer1(4) & timer1(3)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000100000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_timer1(1),
	datab => \ALT_INV_Equal1~0_combout\,
	datac => ALT_INV_timer1(4),
	datad => ALT_INV_timer1(3),
	datae => ALT_INV_timer1(2),
	dataf => ALT_INV_timer1(0),
	combout => \Equal2~0_combout\);

-- Location: LABCELL_X41_Y1_N33
\s[1]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \s[1]~0_combout\ = ( \s[0]~2_combout\ & ( s(1) ) ) # ( !\s[0]~2_combout\ & ( !s(0) $ (!s(1)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011110000111100001111000011110000001111000011110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => ALT_INV_s(0),
	datac => ALT_INV_s(1),
	dataf => \ALT_INV_s[0]~2_combout\,
	combout => \s[1]~0_combout\);

-- Location: FF_X41_Y1_N41
\s[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \temp~q\,
	asdata => \s[1]~0_combout\,
	clrn => \reset~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => s(1));

-- Location: LABCELL_X40_Y1_N15
\Equal1~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \Equal1~2_combout\ = ( !timer1(0) & ( timer1(2) & ( (timer1(1) & (\Equal1~0_combout\ & (timer1(3) & !timer1(4)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000001000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_timer1(1),
	datab => \ALT_INV_Equal1~0_combout\,
	datac => ALT_INV_timer1(3),
	datad => ALT_INV_timer1(4),
	datae => ALT_INV_timer1(0),
	dataf => ALT_INV_timer1(2),
	combout => \Equal1~2_combout\);

-- Location: LABCELL_X41_Y1_N57
\s[0]~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \s[0]~2_combout\ = ( !s(1) & ( (((!s(0) & (!\Equal1~2_combout\)) # (s(0) & ((!\Equal2~0_combout\))))) ) ) # ( s(1) & ( (!\Equal3~0_combout\) # ((!timer2(0) & ((!timer2(2)) # ((s(0))))) # (timer2(0) & (((!s(0))) # (timer2(2))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "on",
	lut_mask => "1111000011110000111111011111110111111111000000001110111111101111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_timer2(0),
	datab => \ALT_INV_Equal3~0_combout\,
	datac => ALT_INV_timer2(2),
	datad => \ALT_INV_Equal2~0_combout\,
	datae => ALT_INV_s(1),
	dataf => ALT_INV_s(0),
	datag => \ALT_INV_Equal1~2_combout\,
	combout => \s[0]~2_combout\);

-- Location: LABCELL_X41_Y1_N39
\s[0]~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \s[0]~1_combout\ = ( \s[0]~2_combout\ & ( s(0) ) ) # ( !\s[0]~2_combout\ & ( !s(0) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111000011110000111100001111000000001111000011110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => ALT_INV_s(0),
	dataf => \ALT_INV_s[0]~2_combout\,
	combout => \s[0]~1_combout\);

-- Location: FF_X41_Y1_N59
\s[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \temp~q\,
	asdata => \s[0]~1_combout\,
	clrn => \reset~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => s(0));

-- Location: LABCELL_X40_Y1_N30
\ns[1]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \ns[1]~0_combout\ = ( \Equal3~0_combout\ & ( s(0) & ( (!s(1) & (((\Equal2~0_combout\)))) # (s(1) & (!timer2(2) & (timer2(0)))) ) ) ) # ( !\Equal3~0_combout\ & ( s(0) & ( (!s(1) & \Equal2~0_combout\) ) ) ) # ( \Equal3~0_combout\ & ( !s(0) & ( (timer2(2) & 
-- (!timer2(0) & s(1))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000001000000010000000000111100000000001011110010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_timer2(2),
	datab => ALT_INV_timer2(0),
	datac => ALT_INV_s(1),
	datad => \ALT_INV_Equal2~0_combout\,
	datae => \ALT_INV_Equal3~0_combout\,
	dataf => ALT_INV_s(0),
	combout => \ns[1]~0_combout\);

-- Location: FF_X40_Y1_N41
\ns[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \temp~q\,
	asdata => ns(0),
	clrn => \reset~input_o\,
	sload => VCC,
	ena => \ns[1]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => ns(1));

-- Location: LABCELL_X40_Y1_N39
\ns~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \ns~3_combout\ = ( ns(1) & ( \Equal3~0_combout\ & ( (!ns(2)) # ((!timer2(2) & timer2(0))) ) ) ) # ( !ns(1) & ( \Equal3~0_combout\ & ( (!ns(2) & ((!timer2(0)) # (timer2(2)))) ) ) ) # ( ns(1) & ( !\Equal3~0_combout\ & ( !ns(2) ) ) ) # ( !ns(1) & ( 
-- !\Equal3~0_combout\ & ( !ns(2) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111000011110000111100001111000011110000010100001111000011111010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_timer2(2),
	datac => ALT_INV_ns(2),
	datad => ALT_INV_timer2(0),
	datae => ALT_INV_ns(1),
	dataf => \ALT_INV_Equal3~0_combout\,
	combout => \ns~3_combout\);

-- Location: LABCELL_X41_Y1_N48
\ns~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \ns~1_combout\ = ( ns(1) & ( \Equal2~1_combout\ & ( (!ns(2)) # (timer1(0)) ) ) ) # ( !ns(1) & ( \Equal2~1_combout\ & ( (!ns(2) & !timer1(0)) ) ) ) # ( ns(1) & ( !\Equal2~1_combout\ & ( !ns(2) ) ) ) # ( !ns(1) & ( !\Equal2~1_combout\ & ( !ns(2) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1100110011001100110011001100110011000000110000001100111111001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => ALT_INV_ns(2),
	datac => ALT_INV_timer1(0),
	datae => ALT_INV_ns(1),
	dataf => \ALT_INV_Equal2~1_combout\,
	combout => \ns~1_combout\);

-- Location: LABCELL_X40_Y1_N42
\ns~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \ns~2_combout\ = ( \Equal3~0_combout\ & ( (!timer2(2) & (!ns(2))) # (timer2(2) & ((!timer2(0) & ((ns(1)))) # (timer2(0) & (!ns(2))))) ) ) # ( !\Equal3~0_combout\ & ( !ns(2) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1010101010101010101010101010101010100011101010101010001110101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_ns(2),
	datab => ALT_INV_ns(1),
	datac => ALT_INV_timer2(2),
	datad => ALT_INV_timer2(0),
	dataf => \ALT_INV_Equal3~0_combout\,
	combout => \ns~2_combout\);

-- Location: LABCELL_X40_Y1_N48
\Mux5~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux5~0_combout\ = ( \ns~1_combout\ & ( \ns~2_combout\ & ( (!s(0) & (((!s(1) & ns(2))))) # (s(0) & (!\ns~3_combout\ & (s(1)))) ) ) ) # ( !\ns~1_combout\ & ( \ns~2_combout\ & ( (!s(0) & (((!s(1) & ns(2))))) # (s(0) & ((!\ns~3_combout\) # ((!s(1))))) ) ) ) 
-- # ( \ns~1_combout\ & ( !\ns~2_combout\ & ( (!s(0) & (((ns(2)) # (s(1))))) # (s(0) & (!\ns~3_combout\ & (s(1)))) ) ) ) # ( !\ns~1_combout\ & ( !\ns~2_combout\ & ( (!s(0) & (((ns(2)) # (s(1))))) # (s(0) & ((!\ns~3_combout\) # ((!s(1))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101111011111110000011101010111001010100111101000000010010100100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_s(0),
	datab => \ALT_INV_ns~3_combout\,
	datac => ALT_INV_s(1),
	datad => ALT_INV_ns(2),
	datae => \ALT_INV_ns~1_combout\,
	dataf => \ALT_INV_ns~2_combout\,
	combout => \Mux5~0_combout\);

-- Location: FF_X40_Y1_N59
\ns[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \temp~q\,
	asdata => \Mux5~0_combout\,
	clrn => \reset~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => ns(2));

-- Location: LABCELL_X40_Y1_N24
\ns[0]~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \ns[0]~4_combout\ = ( !ns(2) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111111111111111111111111100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => ALT_INV_ns(2),
	combout => \ns[0]~4_combout\);

-- Location: FF_X40_Y1_N25
\ns[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \temp~q\,
	d => \ns[0]~4_combout\,
	clrn => \reset~input_o\,
	ena => \ns[1]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => ns(0));

-- Location: LABCELL_X39_Y1_N24
\Equal1~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \Equal1~1_combout\ = ( !timer1(5) & ( !timer1(6) & ( (timer1(3) & (timer1(1) & !timer1(4))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010100000000000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_timer1(3),
	datac => ALT_INV_timer1(1),
	datad => ALT_INV_timer1(4),
	datae => ALT_INV_timer1(5),
	dataf => ALT_INV_timer1(6),
	combout => \Equal1~1_combout\);

-- Location: LABCELL_X41_Y1_N30
\ew[1]~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \ew[1]~5_combout\ = !ew(0)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1010101010101010101010101010101010101010101010101010101010101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_ew(0),
	combout => \ew[1]~5_combout\);

-- Location: LABCELL_X41_Y2_N12
\Equal4~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Equal4~0_combout\ = (!timer2(2) & (timer2(0) & \Equal3~0_combout\))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000001100000000000000110000000000000011000000000000001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => ALT_INV_timer2(2),
	datac => ALT_INV_timer2(0),
	datad => \ALT_INV_Equal3~0_combout\,
	combout => \Equal4~0_combout\);

-- Location: LABCELL_X41_Y1_N0
\ew[1]~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \ew[1]~3_combout\ = ( s(1) & ( \Equal4~0_combout\ & ( s(0) ) ) ) # ( !s(1) & ( \Equal4~0_combout\ & ( (\Equal1~1_combout\ & ((!timer1(0) & (!s(0) & timer1(2))) # (timer1(0) & (s(0) & !timer1(2))))) ) ) ) # ( !s(1) & ( !\Equal4~0_combout\ & ( 
-- (\Equal1~1_combout\ & ((!timer1(0) & (!s(0) & timer1(2))) # (timer1(0) & (s(0) & !timer1(2))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000011000000000000000000000000000000110000011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_timer1(0),
	datab => ALT_INV_s(0),
	datac => ALT_INV_timer1(2),
	datad => \ALT_INV_Equal1~1_combout\,
	datae => ALT_INV_s(1),
	dataf => \ALT_INV_Equal4~0_combout\,
	combout => \ew[1]~3_combout\);

-- Location: FF_X41_Y1_N31
\ew[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \temp~q\,
	d => \ew[1]~5_combout\,
	clrn => \reset~input_o\,
	ena => \ew[1]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => ew(1));

-- Location: FF_X41_Y1_N2
\ew[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \temp~q\,
	asdata => ew(1),
	clrn => \reset~input_o\,
	sload => VCC,
	ena => \ew[1]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => ew(2));

-- Location: LABCELL_X39_Y1_N12
\ew~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \ew~0_combout\ = ( timer1(2) & ( (!\Equal1~1_combout\ & (((!ew(0))))) # (\Equal1~1_combout\ & ((!timer1(0) & (ew(2))) # (timer1(0) & ((!ew(0)))))) ) ) # ( !timer1(2) & ( !ew(0) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111100000000111111110000000010111111000001001011111100000100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Equal1~1_combout\,
	datab => ALT_INV_timer1(0),
	datac => ALT_INV_ew(2),
	datad => ALT_INV_ew(0),
	dataf => ALT_INV_timer1(2),
	combout => \ew~0_combout\);

-- Location: LABCELL_X39_Y1_N0
\ew~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \ew~2_combout\ = ( ew(0) & ( \Equal3~0_combout\ & ( (!timer2(2) & (ew(2) & timer2(0))) ) ) ) # ( !ew(0) & ( \Equal3~0_combout\ & ( ((!timer2(0)) # (ew(2))) # (timer2(2)) ) ) ) # ( !ew(0) & ( !\Equal3~0_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111111111000000000000000011111111001111110000000000001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => ALT_INV_timer2(2),
	datac => ALT_INV_ew(2),
	datad => ALT_INV_timer2(0),
	datae => ALT_INV_ew(0),
	dataf => \ALT_INV_Equal3~0_combout\,
	combout => \ew~2_combout\);

-- Location: LABCELL_X39_Y1_N39
\ew~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \ew~1_combout\ = ( \Equal2~1_combout\ & ( timer1(0) & ( ew(2) ) ) ) # ( !\Equal2~1_combout\ & ( timer1(0) & ( !ew(0) ) ) ) # ( \Equal2~1_combout\ & ( !timer1(0) & ( !ew(0) ) ) ) # ( !\Equal2~1_combout\ & ( !timer1(0) & ( !ew(0) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111000011110000111100001111000011110000111100000101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_ew(2),
	datac => ALT_INV_ew(0),
	datae => \ALT_INV_Equal2~1_combout\,
	dataf => ALT_INV_timer1(0),
	combout => \ew~1_combout\);

-- Location: LABCELL_X39_Y1_N54
\Mux4~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux4~0_combout\ = ( \ew~2_combout\ & ( \ew~1_combout\ & ( (!s(0) & ((!s(1) & ((!\ew~0_combout\))) # (s(1) & (ew(0))))) ) ) ) # ( !\ew~2_combout\ & ( \ew~1_combout\ & ( (!s(1) & (!s(0) & ((!\ew~0_combout\)))) # (s(1) & (((ew(0))) # (s(0)))) ) ) ) # ( 
-- \ew~2_combout\ & ( !\ew~1_combout\ & ( (!s(1) & (((!\ew~0_combout\)) # (s(0)))) # (s(1) & (!s(0) & (ew(0)))) ) ) ) # ( !\ew~2_combout\ & ( !\ew~1_combout\ & ( ((!s(1) & ((!\ew~0_combout\))) # (s(1) & (ew(0)))) # (s(0)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1011111100110111101011100010011010011101000101011000110000000100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_s(1),
	datab => ALT_INV_s(0),
	datac => ALT_INV_ew(0),
	datad => \ALT_INV_ew~0_combout\,
	datae => \ALT_INV_ew~2_combout\,
	dataf => \ALT_INV_ew~1_combout\,
	combout => \Mux4~0_combout\);

-- Location: FF_X39_Y1_N2
\ew[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \temp~q\,
	asdata => \Mux4~0_combout\,
	clrn => \reset~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => ew(0));

-- Location: LABCELL_X39_Y1_N51
\u1|Mux3~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \u1|Mux3~0_combout\ = (s(0)) # (s(1))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101111101011111010111110101111101011111010111110101111101011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_s(1),
	datac => ALT_INV_s(0),
	combout => \u1|Mux3~0_combout\);

-- Location: LABCELL_X43_Y2_N15
\u1|Mux0~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \u1|Mux0~0_combout\ = ( s(0) & ( !s(1) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datae => ALT_INV_s(0),
	dataf => ALT_INV_s(1),
	combout => \u1|Mux0~0_combout\);

-- Location: LABCELL_X43_Y2_N30
\u1|Mux0~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \u1|Mux0~1_combout\ = ( !s(0) & ( s(1) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111110000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datae => ALT_INV_s(0),
	dataf => ALT_INV_s(1),
	combout => \u1|Mux0~1_combout\);

-- Location: MLABCELL_X37_Y1_N30
\u2|Div0|auto_generated|divider|divider|add_sub_3_result_int[0]~17\ : cyclonev_lcell_comb
-- Equation(s):
-- \u2|Div0|auto_generated|divider|divider|add_sub_3_result_int[0]~17_sumout\ = SUM(( !timer1(3) ) + ( !VCC ) + ( !VCC ))
-- \u2|Div0|auto_generated|divider|divider|add_sub_3_result_int[0]~18\ = CARRY(( !timer1(3) ) + ( !VCC ) + ( !VCC ))
-- \u2|Div0|auto_generated|divider|divider|add_sub_3_result_int[0]~19\ = SHARE(VCC)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000001111111100000000",
	shared_arith => "on")
-- pragma translate_on
PORT MAP (
	datad => ALT_INV_timer1(3),
	cin => GND,
	sharein => GND,
	sumout => \u2|Div0|auto_generated|divider|divider|add_sub_3_result_int[0]~17_sumout\,
	cout => \u2|Div0|auto_generated|divider|divider|add_sub_3_result_int[0]~18\,
	shareout => \u2|Div0|auto_generated|divider|divider|add_sub_3_result_int[0]~19\);

-- Location: MLABCELL_X37_Y1_N33
\u2|Div0|auto_generated|divider|divider|add_sub_3_result_int[1]~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \u2|Div0|auto_generated|divider|divider|add_sub_3_result_int[1]~9_sumout\ = SUM(( timer1(4) ) + ( \u2|Div0|auto_generated|divider|divider|add_sub_3_result_int[0]~19\ ) + ( \u2|Div0|auto_generated|divider|divider|add_sub_3_result_int[0]~18\ ))
-- \u2|Div0|auto_generated|divider|divider|add_sub_3_result_int[1]~10\ = CARRY(( timer1(4) ) + ( \u2|Div0|auto_generated|divider|divider|add_sub_3_result_int[0]~19\ ) + ( \u2|Div0|auto_generated|divider|divider|add_sub_3_result_int[0]~18\ ))
-- \u2|Div0|auto_generated|divider|divider|add_sub_3_result_int[1]~11\ = SHARE(GND)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000011111111",
	shared_arith => "on")
-- pragma translate_on
PORT MAP (
	datad => ALT_INV_timer1(4),
	cin => \u2|Div0|auto_generated|divider|divider|add_sub_3_result_int[0]~18\,
	sharein => \u2|Div0|auto_generated|divider|divider|add_sub_3_result_int[0]~19\,
	sumout => \u2|Div0|auto_generated|divider|divider|add_sub_3_result_int[1]~9_sumout\,
	cout => \u2|Div0|auto_generated|divider|divider|add_sub_3_result_int[1]~10\,
	shareout => \u2|Div0|auto_generated|divider|divider|add_sub_3_result_int[1]~11\);

-- Location: MLABCELL_X37_Y1_N36
\u2|Div0|auto_generated|divider|divider|add_sub_3_result_int[2]~13\ : cyclonev_lcell_comb
-- Equation(s):
-- \u2|Div0|auto_generated|divider|divider|add_sub_3_result_int[2]~13_sumout\ = SUM(( !timer1(5) ) + ( \u2|Div0|auto_generated|divider|divider|add_sub_3_result_int[1]~11\ ) + ( \u2|Div0|auto_generated|divider|divider|add_sub_3_result_int[1]~10\ ))
-- \u2|Div0|auto_generated|divider|divider|add_sub_3_result_int[2]~14\ = CARRY(( !timer1(5) ) + ( \u2|Div0|auto_generated|divider|divider|add_sub_3_result_int[1]~11\ ) + ( \u2|Div0|auto_generated|divider|divider|add_sub_3_result_int[1]~10\ ))
-- \u2|Div0|auto_generated|divider|divider|add_sub_3_result_int[2]~15\ = SHARE(timer1(5))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000011110000111100000000000000001111000011110000",
	shared_arith => "on")
-- pragma translate_on
PORT MAP (
	datac => ALT_INV_timer1(5),
	cin => \u2|Div0|auto_generated|divider|divider|add_sub_3_result_int[1]~10\,
	sharein => \u2|Div0|auto_generated|divider|divider|add_sub_3_result_int[1]~11\,
	sumout => \u2|Div0|auto_generated|divider|divider|add_sub_3_result_int[2]~13_sumout\,
	cout => \u2|Div0|auto_generated|divider|divider|add_sub_3_result_int[2]~14\,
	shareout => \u2|Div0|auto_generated|divider|divider|add_sub_3_result_int[2]~15\);

-- Location: MLABCELL_X37_Y1_N39
\u2|Div0|auto_generated|divider|divider|add_sub_3_result_int[3]~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \u2|Div0|auto_generated|divider|divider|add_sub_3_result_int[3]~5_sumout\ = SUM(( timer1(6) ) + ( \u2|Div0|auto_generated|divider|divider|add_sub_3_result_int[2]~15\ ) + ( \u2|Div0|auto_generated|divider|divider|add_sub_3_result_int[2]~14\ ))
-- \u2|Div0|auto_generated|divider|divider|add_sub_3_result_int[3]~6\ = CARRY(( timer1(6) ) + ( \u2|Div0|auto_generated|divider|divider|add_sub_3_result_int[2]~15\ ) + ( \u2|Div0|auto_generated|divider|divider|add_sub_3_result_int[2]~14\ ))
-- \u2|Div0|auto_generated|divider|divider|add_sub_3_result_int[3]~7\ = SHARE(GND)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000101010101010101",
	shared_arith => "on")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_timer1(6),
	cin => \u2|Div0|auto_generated|divider|divider|add_sub_3_result_int[2]~14\,
	sharein => \u2|Div0|auto_generated|divider|divider|add_sub_3_result_int[2]~15\,
	sumout => \u2|Div0|auto_generated|divider|divider|add_sub_3_result_int[3]~5_sumout\,
	cout => \u2|Div0|auto_generated|divider|divider|add_sub_3_result_int[3]~6\,
	shareout => \u2|Div0|auto_generated|divider|divider|add_sub_3_result_int[3]~7\);

-- Location: MLABCELL_X37_Y1_N42
\u2|Div0|auto_generated|divider|divider|add_sub_3_result_int[4]~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \u2|Div0|auto_generated|divider|divider|add_sub_3_result_int[4]~1_sumout\ = SUM(( VCC ) + ( \u2|Div0|auto_generated|divider|divider|add_sub_3_result_int[3]~7\ ) + ( \u2|Div0|auto_generated|divider|divider|add_sub_3_result_int[3]~6\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000001111111111111111",
	shared_arith => "on")
-- pragma translate_on
PORT MAP (
	cin => \u2|Div0|auto_generated|divider|divider|add_sub_3_result_int[3]~6\,
	sharein => \u2|Div0|auto_generated|divider|divider|add_sub_3_result_int[3]~7\,
	sumout => \u2|Div0|auto_generated|divider|divider|add_sub_3_result_int[4]~1_sumout\);

-- Location: MLABCELL_X37_Y1_N27
\u2|Div0|auto_generated|divider|divider|StageOut[18]~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \u2|Div0|auto_generated|divider|divider|StageOut[18]~5_combout\ = ( !\u2|Div0|auto_generated|divider|divider|add_sub_3_result_int[4]~1_sumout\ & ( \u2|Div0|auto_generated|divider|divider|add_sub_3_result_int[3]~5_sumout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111000011110000111100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \u2|Div0|auto_generated|divider|divider|ALT_INV_add_sub_3_result_int[3]~5_sumout\,
	dataf => \u2|Div0|auto_generated|divider|divider|ALT_INV_add_sub_3_result_int[4]~1_sumout\,
	combout => \u2|Div0|auto_generated|divider|divider|StageOut[18]~5_combout\);

-- Location: LABCELL_X43_Y2_N24
\u2|Div0|auto_generated|divider|divider|StageOut[18]~6\ : cyclonev_lcell_comb
-- Equation(s):
-- \u2|Div0|auto_generated|divider|divider|StageOut[18]~6_combout\ = ( timer1(6) & ( \u2|Div0|auto_generated|divider|divider|add_sub_3_result_int[4]~1_sumout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000001111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datae => ALT_INV_timer1(6),
	dataf => \u2|Div0|auto_generated|divider|divider|ALT_INV_add_sub_3_result_int[4]~1_sumout\,
	combout => \u2|Div0|auto_generated|divider|divider|StageOut[18]~6_combout\);

-- Location: MLABCELL_X37_Y1_N51
\u2|Div0|auto_generated|divider|divider|StageOut[16]~7\ : cyclonev_lcell_comb
-- Equation(s):
-- \u2|Div0|auto_generated|divider|divider|StageOut[16]~7_combout\ = ( \u2|Div0|auto_generated|divider|divider|add_sub_3_result_int[1]~9_sumout\ & ( !\u2|Div0|auto_generated|divider|divider|add_sub_3_result_int[4]~1_sumout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011110000111100001111000011110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \u2|Div0|auto_generated|divider|divider|ALT_INV_add_sub_3_result_int[4]~1_sumout\,
	dataf => \u2|Div0|auto_generated|divider|divider|ALT_INV_add_sub_3_result_int[1]~9_sumout\,
	combout => \u2|Div0|auto_generated|divider|divider|StageOut[16]~7_combout\);

-- Location: MLABCELL_X37_Y2_N12
\u2|Div0|auto_generated|divider|divider|StageOut[16]~8\ : cyclonev_lcell_comb
-- Equation(s):
-- \u2|Div0|auto_generated|divider|divider|StageOut[16]~8_combout\ = (timer1(4) & \u2|Div0|auto_generated|divider|divider|add_sub_3_result_int[4]~1_sumout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000100010001000100010001000100010001000100010001000100010001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_timer1(4),
	datab => \u2|Div0|auto_generated|divider|divider|ALT_INV_add_sub_3_result_int[4]~1_sumout\,
	combout => \u2|Div0|auto_generated|divider|divider|StageOut[16]~8_combout\);

-- Location: LABCELL_X36_Y2_N12
\u2|Div0|auto_generated|divider|divider|op_5~26\ : cyclonev_lcell_comb
-- Equation(s):
-- \u2|Div0|auto_generated|divider|divider|op_5~26_cout\ = CARRY(( VCC ) + ( VCC ) + ( !VCC ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000001111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	cin => GND,
	cout => \u2|Div0|auto_generated|divider|divider|op_5~26_cout\);

-- Location: LABCELL_X36_Y2_N15
\u2|Div0|auto_generated|divider|divider|op_5~21\ : cyclonev_lcell_comb
-- Equation(s):
-- \u2|Div0|auto_generated|divider|divider|op_5~21_sumout\ = SUM(( timer1(2) ) + ( VCC ) + ( \u2|Div0|auto_generated|divider|divider|op_5~26_cout\ ))
-- \u2|Div0|auto_generated|divider|divider|op_5~22\ = CARRY(( timer1(2) ) + ( VCC ) + ( \u2|Div0|auto_generated|divider|divider|op_5~26_cout\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_timer1(2),
	cin => \u2|Div0|auto_generated|divider|divider|op_5~26_cout\,
	sumout => \u2|Div0|auto_generated|divider|divider|op_5~21_sumout\,
	cout => \u2|Div0|auto_generated|divider|divider|op_5~22\);

-- Location: LABCELL_X36_Y2_N18
\u2|Div0|auto_generated|divider|divider|op_5~17\ : cyclonev_lcell_comb
-- Equation(s):
-- \u2|Div0|auto_generated|divider|divider|op_5~17_sumout\ = SUM(( (!\u2|Div0|auto_generated|divider|divider|add_sub_3_result_int[4]~1_sumout\ & ((\u2|Div0|auto_generated|divider|divider|add_sub_3_result_int[0]~17_sumout\))) # 
-- (\u2|Div0|auto_generated|divider|divider|add_sub_3_result_int[4]~1_sumout\ & (!timer1(3))) ) + ( GND ) + ( \u2|Div0|auto_generated|divider|divider|op_5~22\ ))
-- \u2|Div0|auto_generated|divider|divider|op_5~18\ = CARRY(( (!\u2|Div0|auto_generated|divider|divider|add_sub_3_result_int[4]~1_sumout\ & ((\u2|Div0|auto_generated|divider|divider|add_sub_3_result_int[0]~17_sumout\))) # 
-- (\u2|Div0|auto_generated|divider|divider|add_sub_3_result_int[4]~1_sumout\ & (!timer1(3))) ) + ( GND ) + ( \u2|Div0|auto_generated|divider|divider|op_5~22\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000011101000111010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_timer1(3),
	datab => \u2|Div0|auto_generated|divider|divider|ALT_INV_add_sub_3_result_int[0]~17_sumout\,
	datac => \u2|Div0|auto_generated|divider|divider|ALT_INV_add_sub_3_result_int[4]~1_sumout\,
	cin => \u2|Div0|auto_generated|divider|divider|op_5~22\,
	sumout => \u2|Div0|auto_generated|divider|divider|op_5~17_sumout\,
	cout => \u2|Div0|auto_generated|divider|divider|op_5~18\);

-- Location: LABCELL_X36_Y2_N21
\u2|Div0|auto_generated|divider|divider|op_5~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \u2|Div0|auto_generated|divider|divider|op_5~9_sumout\ = SUM(( VCC ) + ( (\u2|Div0|auto_generated|divider|divider|StageOut[16]~8_combout\) # (\u2|Div0|auto_generated|divider|divider|StageOut[16]~7_combout\) ) + ( 
-- \u2|Div0|auto_generated|divider|divider|op_5~18\ ))
-- \u2|Div0|auto_generated|divider|divider|op_5~10\ = CARRY(( VCC ) + ( (\u2|Div0|auto_generated|divider|divider|StageOut[16]~8_combout\) # (\u2|Div0|auto_generated|divider|divider|StageOut[16]~7_combout\) ) + ( 
-- \u2|Div0|auto_generated|divider|divider|op_5~18\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111100000000000000000000000000001111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \u2|Div0|auto_generated|divider|divider|ALT_INV_StageOut[16]~7_combout\,
	dataf => \u2|Div0|auto_generated|divider|divider|ALT_INV_StageOut[16]~8_combout\,
	cin => \u2|Div0|auto_generated|divider|divider|op_5~18\,
	sumout => \u2|Div0|auto_generated|divider|divider|op_5~9_sumout\,
	cout => \u2|Div0|auto_generated|divider|divider|op_5~10\);

-- Location: LABCELL_X36_Y2_N24
\u2|Div0|auto_generated|divider|divider|op_5~13\ : cyclonev_lcell_comb
-- Equation(s):
-- \u2|Div0|auto_generated|divider|divider|op_5~13_sumout\ = SUM(( (!\u2|Div0|auto_generated|divider|divider|add_sub_3_result_int[4]~1_sumout\ & (\u2|Div0|auto_generated|divider|divider|add_sub_3_result_int[2]~13_sumout\)) # 
-- (\u2|Div0|auto_generated|divider|divider|add_sub_3_result_int[4]~1_sumout\ & ((timer1(5)))) ) + ( GND ) + ( \u2|Div0|auto_generated|divider|divider|op_5~10\ ))
-- \u2|Div0|auto_generated|divider|divider|op_5~14\ = CARRY(( (!\u2|Div0|auto_generated|divider|divider|add_sub_3_result_int[4]~1_sumout\ & (\u2|Div0|auto_generated|divider|divider|add_sub_3_result_int[2]~13_sumout\)) # 
-- (\u2|Div0|auto_generated|divider|divider|add_sub_3_result_int[4]~1_sumout\ & ((timer1(5)))) ) + ( GND ) + ( \u2|Div0|auto_generated|divider|divider|op_5~10\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000100011101000111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \u2|Div0|auto_generated|divider|divider|ALT_INV_add_sub_3_result_int[2]~13_sumout\,
	datab => \u2|Div0|auto_generated|divider|divider|ALT_INV_add_sub_3_result_int[4]~1_sumout\,
	datac => ALT_INV_timer1(5),
	cin => \u2|Div0|auto_generated|divider|divider|op_5~10\,
	sumout => \u2|Div0|auto_generated|divider|divider|op_5~13_sumout\,
	cout => \u2|Div0|auto_generated|divider|divider|op_5~14\);

-- Location: LABCELL_X36_Y2_N27
\u2|Div0|auto_generated|divider|divider|op_5~6\ : cyclonev_lcell_comb
-- Equation(s):
-- \u2|Div0|auto_generated|divider|divider|op_5~6_cout\ = CARRY(( (\u2|Div0|auto_generated|divider|divider|StageOut[18]~6_combout\) # (\u2|Div0|auto_generated|divider|divider|StageOut[18]~5_combout\) ) + ( VCC ) + ( 
-- \u2|Div0|auto_generated|divider|divider|op_5~14\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \u2|Div0|auto_generated|divider|divider|ALT_INV_StageOut[18]~5_combout\,
	datad => \u2|Div0|auto_generated|divider|divider|ALT_INV_StageOut[18]~6_combout\,
	cin => \u2|Div0|auto_generated|divider|divider|op_5~14\,
	cout => \u2|Div0|auto_generated|divider|divider|op_5~6_cout\);

-- Location: LABCELL_X36_Y2_N30
\u2|Div0|auto_generated|divider|divider|op_5~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \u2|Div0|auto_generated|divider|divider|op_5~1_sumout\ = SUM(( VCC ) + ( GND ) + ( \u2|Div0|auto_generated|divider|divider|op_5~6_cout\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000001111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	cin => \u2|Div0|auto_generated|divider|divider|op_5~6_cout\,
	sumout => \u2|Div0|auto_generated|divider|divider|op_5~1_sumout\);

-- Location: LABCELL_X36_Y2_N3
\u2|Div0|auto_generated|divider|divider|StageOut[17]~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \u2|Div0|auto_generated|divider|divider|StageOut[17]~3_combout\ = ( \u2|Div0|auto_generated|divider|divider|add_sub_3_result_int[2]~13_sumout\ & ( !\u2|Div0|auto_generated|divider|divider|add_sub_3_result_int[4]~1_sumout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011001100110011001100110011001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \u2|Div0|auto_generated|divider|divider|ALT_INV_add_sub_3_result_int[4]~1_sumout\,
	dataf => \u2|Div0|auto_generated|divider|divider|ALT_INV_add_sub_3_result_int[2]~13_sumout\,
	combout => \u2|Div0|auto_generated|divider|divider|StageOut[17]~3_combout\);

-- Location: LABCELL_X36_Y2_N0
\u2|Div0|auto_generated|divider|divider|StageOut[17]~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \u2|Div0|auto_generated|divider|divider|StageOut[17]~4_combout\ = (\u2|Div0|auto_generated|divider|divider|add_sub_3_result_int[4]~1_sumout\ & timer1(5))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001100000011000000110000001100000011000000110000001100000011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \u2|Div0|auto_generated|divider|divider|ALT_INV_add_sub_3_result_int[4]~1_sumout\,
	datac => ALT_INV_timer1(5),
	combout => \u2|Div0|auto_generated|divider|divider|StageOut[17]~4_combout\);

-- Location: MLABCELL_X37_Y2_N15
\u2|Div0|auto_generated|divider|divider|StageOut[16]~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \u2|Div0|auto_generated|divider|divider|StageOut[16]~1_combout\ = ( \u2|Div0|auto_generated|divider|divider|add_sub_3_result_int[1]~9_sumout\ & ( (!\u2|Div0|auto_generated|divider|divider|add_sub_3_result_int[4]~1_sumout\) # (timer1(4)) ) ) # ( 
-- !\u2|Div0|auto_generated|divider|divider|add_sub_3_result_int[1]~9_sumout\ & ( (timer1(4) & \u2|Div0|auto_generated|divider|divider|add_sub_3_result_int[4]~1_sumout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000100010001000100010001000111011101110111011101110111011101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_timer1(4),
	datab => \u2|Div0|auto_generated|divider|divider|ALT_INV_add_sub_3_result_int[4]~1_sumout\,
	dataf => \u2|Div0|auto_generated|divider|divider|ALT_INV_add_sub_3_result_int[1]~9_sumout\,
	combout => \u2|Div0|auto_generated|divider|divider|StageOut[16]~1_combout\);

-- Location: LABCELL_X36_Y2_N6
\u2|Div0|auto_generated|divider|divider|StageOut[15]~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \u2|Div0|auto_generated|divider|divider|StageOut[15]~9_combout\ = ( \u2|Div0|auto_generated|divider|divider|add_sub_3_result_int[4]~1_sumout\ & ( !timer1(3) ) ) # ( !\u2|Div0|auto_generated|divider|divider|add_sub_3_result_int[4]~1_sumout\ & ( 
-- \u2|Div0|auto_generated|divider|divider|add_sub_3_result_int[0]~17_sumout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001100110011001100110011001111110000111100001111000011110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \u2|Div0|auto_generated|divider|divider|ALT_INV_add_sub_3_result_int[0]~17_sumout\,
	datac => ALT_INV_timer1(3),
	dataf => \u2|Div0|auto_generated|divider|divider|ALT_INV_add_sub_3_result_int[4]~1_sumout\,
	combout => \u2|Div0|auto_generated|divider|divider|StageOut[15]~9_combout\);

-- Location: LABCELL_X36_Y2_N36
\u2|Div0|auto_generated|divider|divider|op_6~26\ : cyclonev_lcell_comb
-- Equation(s):
-- \u2|Div0|auto_generated|divider|divider|op_6~26_cout\ = CARRY(( VCC ) + ( VCC ) + ( !VCC ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000001111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	cin => GND,
	cout => \u2|Div0|auto_generated|divider|divider|op_6~26_cout\);

-- Location: LABCELL_X36_Y2_N39
\u2|Div0|auto_generated|divider|divider|op_6~21\ : cyclonev_lcell_comb
-- Equation(s):
-- \u2|Div0|auto_generated|divider|divider|op_6~21_sumout\ = SUM(( !timer1(1) ) + ( VCC ) + ( \u2|Div0|auto_generated|divider|divider|op_6~26_cout\ ))
-- \u2|Div0|auto_generated|divider|divider|op_6~22\ = CARRY(( !timer1(1) ) + ( VCC ) + ( \u2|Div0|auto_generated|divider|divider|op_6~26_cout\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000001111000011110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => ALT_INV_timer1(1),
	cin => \u2|Div0|auto_generated|divider|divider|op_6~26_cout\,
	sumout => \u2|Div0|auto_generated|divider|divider|op_6~21_sumout\,
	cout => \u2|Div0|auto_generated|divider|divider|op_6~22\);

-- Location: LABCELL_X36_Y2_N42
\u2|Div0|auto_generated|divider|divider|op_6~17\ : cyclonev_lcell_comb
-- Equation(s):
-- \u2|Div0|auto_generated|divider|divider|op_6~17_sumout\ = SUM(( GND ) + ( (!\u2|Div0|auto_generated|divider|divider|op_5~1_sumout\ & ((\u2|Div0|auto_generated|divider|divider|op_5~21_sumout\))) # (\u2|Div0|auto_generated|divider|divider|op_5~1_sumout\ & 
-- (timer1(2))) ) + ( \u2|Div0|auto_generated|divider|divider|op_6~22\ ))
-- \u2|Div0|auto_generated|divider|divider|op_6~18\ = CARRY(( GND ) + ( (!\u2|Div0|auto_generated|divider|divider|op_5~1_sumout\ & ((\u2|Div0|auto_generated|divider|divider|op_5~21_sumout\))) # (\u2|Div0|auto_generated|divider|divider|op_5~1_sumout\ & 
-- (timer1(2))) ) + ( \u2|Div0|auto_generated|divider|divider|op_6~22\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111000011000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \u2|Div0|auto_generated|divider|divider|ALT_INV_op_5~1_sumout\,
	datac => ALT_INV_timer1(2),
	dataf => \u2|Div0|auto_generated|divider|divider|ALT_INV_op_5~21_sumout\,
	cin => \u2|Div0|auto_generated|divider|divider|op_6~22\,
	sumout => \u2|Div0|auto_generated|divider|divider|op_6~17_sumout\,
	cout => \u2|Div0|auto_generated|divider|divider|op_6~18\);

-- Location: LABCELL_X36_Y2_N45
\u2|Div0|auto_generated|divider|divider|op_6~13\ : cyclonev_lcell_comb
-- Equation(s):
-- \u2|Div0|auto_generated|divider|divider|op_6~13_sumout\ = SUM(( VCC ) + ( (!\u2|Div0|auto_generated|divider|divider|op_5~1_sumout\ & ((\u2|Div0|auto_generated|divider|divider|op_5~17_sumout\))) # (\u2|Div0|auto_generated|divider|divider|op_5~1_sumout\ & 
-- (\u2|Div0|auto_generated|divider|divider|StageOut[15]~9_combout\)) ) + ( \u2|Div0|auto_generated|divider|divider|op_6~18\ ))
-- \u2|Div0|auto_generated|divider|divider|op_6~14\ = CARRY(( VCC ) + ( (!\u2|Div0|auto_generated|divider|divider|op_5~1_sumout\ & ((\u2|Div0|auto_generated|divider|divider|op_5~17_sumout\))) # (\u2|Div0|auto_generated|divider|divider|op_5~1_sumout\ & 
-- (\u2|Div0|auto_generated|divider|divider|StageOut[15]~9_combout\)) ) + ( \u2|Div0|auto_generated|divider|divider|op_6~18\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111000011000000000000000000001111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \u2|Div0|auto_generated|divider|divider|ALT_INV_op_5~1_sumout\,
	datac => \u2|Div0|auto_generated|divider|divider|ALT_INV_StageOut[15]~9_combout\,
	dataf => \u2|Div0|auto_generated|divider|divider|ALT_INV_op_5~17_sumout\,
	cin => \u2|Div0|auto_generated|divider|divider|op_6~18\,
	sumout => \u2|Div0|auto_generated|divider|divider|op_6~13_sumout\,
	cout => \u2|Div0|auto_generated|divider|divider|op_6~14\);

-- Location: LABCELL_X36_Y2_N48
\u2|Div0|auto_generated|divider|divider|op_6~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \u2|Div0|auto_generated|divider|divider|op_6~9_sumout\ = SUM(( (!\u2|Div0|auto_generated|divider|divider|op_5~1_sumout\ & ((\u2|Div0|auto_generated|divider|divider|op_5~9_sumout\))) # (\u2|Div0|auto_generated|divider|divider|op_5~1_sumout\ & 
-- (\u2|Div0|auto_generated|divider|divider|StageOut[16]~1_combout\)) ) + ( GND ) + ( \u2|Div0|auto_generated|divider|divider|op_6~14\ ))
-- \u2|Div0|auto_generated|divider|divider|op_6~10\ = CARRY(( (!\u2|Div0|auto_generated|divider|divider|op_5~1_sumout\ & ((\u2|Div0|auto_generated|divider|divider|op_5~9_sumout\))) # (\u2|Div0|auto_generated|divider|divider|op_5~1_sumout\ & 
-- (\u2|Div0|auto_generated|divider|divider|StageOut[16]~1_combout\)) ) + ( GND ) + ( \u2|Div0|auto_generated|divider|divider|op_6~14\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000001111001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \u2|Div0|auto_generated|divider|divider|ALT_INV_op_5~1_sumout\,
	datac => \u2|Div0|auto_generated|divider|divider|ALT_INV_StageOut[16]~1_combout\,
	datad => \u2|Div0|auto_generated|divider|divider|ALT_INV_op_5~9_sumout\,
	cin => \u2|Div0|auto_generated|divider|divider|op_6~14\,
	sumout => \u2|Div0|auto_generated|divider|divider|op_6~9_sumout\,
	cout => \u2|Div0|auto_generated|divider|divider|op_6~10\);

-- Location: LABCELL_X36_Y2_N51
\u2|Div0|auto_generated|divider|divider|op_6~6\ : cyclonev_lcell_comb
-- Equation(s):
-- \u2|Div0|auto_generated|divider|divider|op_6~6_cout\ = CARRY(( (!\u2|Div0|auto_generated|divider|divider|op_5~1_sumout\ & (((\u2|Div0|auto_generated|divider|divider|op_5~13_sumout\)))) # (\u2|Div0|auto_generated|divider|divider|op_5~1_sumout\ & 
-- (((\u2|Div0|auto_generated|divider|divider|StageOut[17]~4_combout\)) # (\u2|Div0|auto_generated|divider|divider|StageOut[17]~3_combout\))) ) + ( VCC ) + ( \u2|Div0|auto_generated|divider|divider|op_6~10\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000001110100111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \u2|Div0|auto_generated|divider|divider|ALT_INV_StageOut[17]~3_combout\,
	datab => \u2|Div0|auto_generated|divider|divider|ALT_INV_op_5~1_sumout\,
	datac => \u2|Div0|auto_generated|divider|divider|ALT_INV_op_5~13_sumout\,
	datad => \u2|Div0|auto_generated|divider|divider|ALT_INV_StageOut[17]~4_combout\,
	cin => \u2|Div0|auto_generated|divider|divider|op_6~10\,
	cout => \u2|Div0|auto_generated|divider|divider|op_6~6_cout\);

-- Location: LABCELL_X36_Y2_N54
\u2|Div0|auto_generated|divider|divider|op_6~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \u2|Div0|auto_generated|divider|divider|op_6~1_sumout\ = SUM(( VCC ) + ( GND ) + ( \u2|Div0|auto_generated|divider|divider|op_6~6_cout\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000001111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	cin => \u2|Div0|auto_generated|divider|divider|op_6~6_cout\,
	sumout => \u2|Div0|auto_generated|divider|divider|op_6~1_sumout\);

-- Location: MLABCELL_X37_Y2_N6
\u2|Div0|auto_generated|divider|divider|StageOut[22]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \u2|Div0|auto_generated|divider|divider|StageOut[22]~0_combout\ = (!\u2|Div0|auto_generated|divider|divider|op_5~1_sumout\ & \u2|Div0|auto_generated|divider|divider|op_5~9_sumout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000101000001010000010100000101000001010000010100000101000001010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \u2|Div0|auto_generated|divider|divider|ALT_INV_op_5~1_sumout\,
	datac => \u2|Div0|auto_generated|divider|divider|ALT_INV_op_5~9_sumout\,
	combout => \u2|Div0|auto_generated|divider|divider|StageOut[22]~0_combout\);

-- Location: MLABCELL_X37_Y2_N9
\u2|Div0|auto_generated|divider|divider|StageOut[22]~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \u2|Div0|auto_generated|divider|divider|StageOut[22]~2_combout\ = ( \u2|Div0|auto_generated|divider|divider|StageOut[16]~1_combout\ & ( \u2|Div0|auto_generated|divider|divider|op_5~1_sumout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000001010101010101010101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \u2|Div0|auto_generated|divider|divider|ALT_INV_op_5~1_sumout\,
	dataf => \u2|Div0|auto_generated|divider|divider|ALT_INV_StageOut[16]~1_combout\,
	combout => \u2|Div0|auto_generated|divider|divider|StageOut[22]~2_combout\);

-- Location: MLABCELL_X37_Y2_N21
\u2|Div0|auto_generated|divider|divider|StageOut[21]~10\ : cyclonev_lcell_comb
-- Equation(s):
-- \u2|Div0|auto_generated|divider|divider|StageOut[21]~10_combout\ = ( \u2|Div0|auto_generated|divider|divider|StageOut[15]~9_combout\ & ( \u2|Div0|auto_generated|divider|divider|op_5~1_sumout\ ) ) # ( 
-- \u2|Div0|auto_generated|divider|divider|StageOut[15]~9_combout\ & ( !\u2|Div0|auto_generated|divider|divider|op_5~1_sumout\ & ( \u2|Div0|auto_generated|divider|divider|op_5~17_sumout\ ) ) ) # ( 
-- !\u2|Div0|auto_generated|divider|divider|StageOut[15]~9_combout\ & ( !\u2|Div0|auto_generated|divider|divider|op_5~1_sumout\ & ( \u2|Div0|auto_generated|divider|divider|op_5~17_sumout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111000011110000111100000000000000001111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \u2|Div0|auto_generated|divider|divider|ALT_INV_op_5~17_sumout\,
	datae => \u2|Div0|auto_generated|divider|divider|ALT_INV_StageOut[15]~9_combout\,
	dataf => \u2|Div0|auto_generated|divider|divider|ALT_INV_op_5~1_sumout\,
	combout => \u2|Div0|auto_generated|divider|divider|StageOut[21]~10_combout\);

-- Location: LABCELL_X36_Y2_N9
\u2|Div0|auto_generated|divider|divider|StageOut[20]~11\ : cyclonev_lcell_comb
-- Equation(s):
-- \u2|Div0|auto_generated|divider|divider|StageOut[20]~11_combout\ = ( \u2|Div0|auto_generated|divider|divider|op_5~1_sumout\ & ( timer1(2) ) ) # ( !\u2|Div0|auto_generated|divider|divider|op_5~1_sumout\ & ( 
-- \u2|Div0|auto_generated|divider|divider|op_5~21_sumout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111000011110000111101010101010101010101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_timer1(2),
	datac => \u2|Div0|auto_generated|divider|divider|ALT_INV_op_5~21_sumout\,
	dataf => \u2|Div0|auto_generated|divider|divider|ALT_INV_op_5~1_sumout\,
	combout => \u2|Div0|auto_generated|divider|divider|StageOut[20]~11_combout\);

-- Location: MLABCELL_X37_Y2_N36
\u2|Div0|auto_generated|divider|divider|op_7~26\ : cyclonev_lcell_comb
-- Equation(s):
-- \u2|Div0|auto_generated|divider|divider|op_7~26_cout\ = CARRY(( VCC ) + ( VCC ) + ( !VCC ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000001111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	cin => GND,
	cout => \u2|Div0|auto_generated|divider|divider|op_7~26_cout\);

-- Location: MLABCELL_X37_Y2_N39
\u2|Div0|auto_generated|divider|divider|op_7~22\ : cyclonev_lcell_comb
-- Equation(s):
-- \u2|Div0|auto_generated|divider|divider|op_7~22_cout\ = CARRY(( timer1(0) ) + ( VCC ) + ( \u2|Div0|auto_generated|divider|divider|op_7~26_cout\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => ALT_INV_timer1(0),
	cin => \u2|Div0|auto_generated|divider|divider|op_7~26_cout\,
	cout => \u2|Div0|auto_generated|divider|divider|op_7~22_cout\);

-- Location: MLABCELL_X37_Y2_N42
\u2|Div0|auto_generated|divider|divider|op_7~18\ : cyclonev_lcell_comb
-- Equation(s):
-- \u2|Div0|auto_generated|divider|divider|op_7~18_cout\ = CARRY(( GND ) + ( (!\u2|Div0|auto_generated|divider|divider|op_6~1_sumout\ & ((\u2|Div0|auto_generated|divider|divider|op_6~21_sumout\))) # (\u2|Div0|auto_generated|divider|divider|op_6~1_sumout\ & 
-- (!timer1(1))) ) + ( \u2|Div0|auto_generated|divider|divider|op_7~22_cout\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000101110110001000100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \u2|Div0|auto_generated|divider|divider|ALT_INV_op_6~1_sumout\,
	datab => ALT_INV_timer1(1),
	dataf => \u2|Div0|auto_generated|divider|divider|ALT_INV_op_6~21_sumout\,
	cin => \u2|Div0|auto_generated|divider|divider|op_7~22_cout\,
	cout => \u2|Div0|auto_generated|divider|divider|op_7~18_cout\);

-- Location: MLABCELL_X37_Y2_N45
\u2|Div0|auto_generated|divider|divider|op_7~14\ : cyclonev_lcell_comb
-- Equation(s):
-- \u2|Div0|auto_generated|divider|divider|op_7~14_cout\ = CARRY(( (!\u2|Div0|auto_generated|divider|divider|op_6~1_sumout\ & ((\u2|Div0|auto_generated|divider|divider|op_6~17_sumout\))) # (\u2|Div0|auto_generated|divider|divider|op_6~1_sumout\ & 
-- (\u2|Div0|auto_generated|divider|divider|StageOut[20]~11_combout\)) ) + ( VCC ) + ( \u2|Div0|auto_generated|divider|divider|op_7~18_cout\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000010110101111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \u2|Div0|auto_generated|divider|divider|ALT_INV_op_6~1_sumout\,
	datac => \u2|Div0|auto_generated|divider|divider|ALT_INV_StageOut[20]~11_combout\,
	datad => \u2|Div0|auto_generated|divider|divider|ALT_INV_op_6~17_sumout\,
	cin => \u2|Div0|auto_generated|divider|divider|op_7~18_cout\,
	cout => \u2|Div0|auto_generated|divider|divider|op_7~14_cout\);

-- Location: MLABCELL_X37_Y2_N48
\u2|Div0|auto_generated|divider|divider|op_7~10\ : cyclonev_lcell_comb
-- Equation(s):
-- \u2|Div0|auto_generated|divider|divider|op_7~10_cout\ = CARRY(( GND ) + ( (!\u2|Div0|auto_generated|divider|divider|op_6~1_sumout\ & ((\u2|Div0|auto_generated|divider|divider|op_6~13_sumout\))) # (\u2|Div0|auto_generated|divider|divider|op_6~1_sumout\ & 
-- (\u2|Div0|auto_generated|divider|divider|StageOut[21]~10_combout\)) ) + ( \u2|Div0|auto_generated|divider|divider|op_7~14_cout\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111110100101000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \u2|Div0|auto_generated|divider|divider|ALT_INV_op_6~1_sumout\,
	datac => \u2|Div0|auto_generated|divider|divider|ALT_INV_StageOut[21]~10_combout\,
	dataf => \u2|Div0|auto_generated|divider|divider|ALT_INV_op_6~13_sumout\,
	cin => \u2|Div0|auto_generated|divider|divider|op_7~14_cout\,
	cout => \u2|Div0|auto_generated|divider|divider|op_7~10_cout\);

-- Location: MLABCELL_X37_Y2_N51
\u2|Div0|auto_generated|divider|divider|op_7~6\ : cyclonev_lcell_comb
-- Equation(s):
-- \u2|Div0|auto_generated|divider|divider|op_7~6_cout\ = CARRY(( VCC ) + ( (!\u2|Div0|auto_generated|divider|divider|op_6~1_sumout\ & (\u2|Div0|auto_generated|divider|divider|op_6~9_sumout\)) # (\u2|Div0|auto_generated|divider|divider|op_6~1_sumout\ & 
-- (((\u2|Div0|auto_generated|divider|divider|StageOut[22]~2_combout\) # (\u2|Div0|auto_generated|divider|divider|StageOut[22]~0_combout\)))) ) + ( \u2|Div0|auto_generated|divider|divider|op_7~10_cout\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000110110001000100000000000000000001111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \u2|Div0|auto_generated|divider|divider|ALT_INV_op_6~1_sumout\,
	datab => \u2|Div0|auto_generated|divider|divider|ALT_INV_op_6~9_sumout\,
	datac => \u2|Div0|auto_generated|divider|divider|ALT_INV_StageOut[22]~0_combout\,
	dataf => \u2|Div0|auto_generated|divider|divider|ALT_INV_StageOut[22]~2_combout\,
	cin => \u2|Div0|auto_generated|divider|divider|op_7~10_cout\,
	cout => \u2|Div0|auto_generated|divider|divider|op_7~6_cout\);

-- Location: MLABCELL_X37_Y2_N54
\u2|Div0|auto_generated|divider|divider|op_7~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \u2|Div0|auto_generated|divider|divider|op_7~1_sumout\ = SUM(( VCC ) + ( GND ) + ( \u2|Div0|auto_generated|divider|divider|op_7~6_cout\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000001111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	cin => \u2|Div0|auto_generated|divider|divider|op_7~6_cout\,
	sumout => \u2|Div0|auto_generated|divider|divider|op_7~1_sumout\);

-- Location: LABCELL_X43_Y2_N36
\u2|Mux6~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \u2|Mux6~0_combout\ = ( \u2|Div0|auto_generated|divider|divider|op_7~1_sumout\ & ( (!\u2|Div0|auto_generated|divider|divider|op_5~1_sumout\) # ((!\u2|Div0|auto_generated|divider|divider|add_sub_3_result_int[4]~1_sumout\) # 
-- (!\u2|Div0|auto_generated|divider|divider|op_6~1_sumout\)) ) ) # ( !\u2|Div0|auto_generated|divider|divider|op_7~1_sumout\ & ( (!\u2|Div0|auto_generated|divider|divider|add_sub_3_result_int[4]~1_sumout\) # 
-- (!\u2|Div0|auto_generated|divider|divider|op_5~1_sumout\ $ (!\u2|Div0|auto_generated|divider|divider|op_6~1_sumout\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1101111011011110110111101101111011111110111111101111111011111110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \u2|Div0|auto_generated|divider|divider|ALT_INV_op_5~1_sumout\,
	datab => \u2|Div0|auto_generated|divider|divider|ALT_INV_add_sub_3_result_int[4]~1_sumout\,
	datac => \u2|Div0|auto_generated|divider|divider|ALT_INV_op_6~1_sumout\,
	dataf => \u2|Div0|auto_generated|divider|divider|ALT_INV_op_7~1_sumout\,
	combout => \u2|Mux6~0_combout\);

-- Location: MLABCELL_X37_Y2_N24
\u2|Mux5~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \u2|Mux5~0_combout\ = ( \u2|Div0|auto_generated|divider|divider|op_6~1_sumout\ & ( !\u2|Div0|auto_generated|divider|divider|add_sub_3_result_int[4]~1_sumout\ $ (!\u2|Div0|auto_generated|divider|divider|op_5~1_sumout\) ) ) # ( 
-- !\u2|Div0|auto_generated|divider|divider|op_6~1_sumout\ & ( (\u2|Div0|auto_generated|divider|divider|add_sub_3_result_int[4]~1_sumout\ & (!\u2|Div0|auto_generated|divider|divider|op_5~1_sumout\ & \u2|Div0|auto_generated|divider|divider|op_7~1_sumout\)) ) 
-- )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000110000000000000011000000111100001111000011110000111100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \u2|Div0|auto_generated|divider|divider|ALT_INV_add_sub_3_result_int[4]~1_sumout\,
	datac => \u2|Div0|auto_generated|divider|divider|ALT_INV_op_5~1_sumout\,
	datad => \u2|Div0|auto_generated|divider|divider|ALT_INV_op_7~1_sumout\,
	dataf => \u2|Div0|auto_generated|divider|divider|ALT_INV_op_6~1_sumout\,
	combout => \u2|Mux5~0_combout\);

-- Location: MLABCELL_X37_Y2_N27
\u2|Mux4~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \u2|Mux4~0_combout\ = ( \u2|Div0|auto_generated|divider|divider|op_5~1_sumout\ & ( (\u2|Div0|auto_generated|divider|divider|op_7~1_sumout\ & (!\u2|Div0|auto_generated|divider|divider|op_6~1_sumout\ $ 
-- (!\u2|Div0|auto_generated|divider|divider|add_sub_3_result_int[4]~1_sumout\))) ) ) # ( !\u2|Div0|auto_generated|divider|divider|op_5~1_sumout\ & ( (!\u2|Div0|auto_generated|divider|divider|op_6~1_sumout\ & 
-- (\u2|Div0|auto_generated|divider|divider|add_sub_3_result_int[4]~1_sumout\ & \u2|Div0|auto_generated|divider|divider|op_7~1_sumout\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000100010000000000010001000000000011001100000000001100110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \u2|Div0|auto_generated|divider|divider|ALT_INV_op_6~1_sumout\,
	datab => \u2|Div0|auto_generated|divider|divider|ALT_INV_add_sub_3_result_int[4]~1_sumout\,
	datad => \u2|Div0|auto_generated|divider|divider|ALT_INV_op_7~1_sumout\,
	dataf => \u2|Div0|auto_generated|divider|divider|ALT_INV_op_5~1_sumout\,
	combout => \u2|Mux4~0_combout\);

-- Location: MLABCELL_X37_Y2_N30
\u2|Mux3~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \u2|Mux3~0_combout\ = ( \u2|Div0|auto_generated|divider|divider|op_5~1_sumout\ & ( !\u2|Div0|auto_generated|divider|divider|op_6~1_sumout\ $ (!\u2|Div0|auto_generated|divider|divider|add_sub_3_result_int[4]~1_sumout\) ) ) # ( 
-- !\u2|Div0|auto_generated|divider|divider|op_5~1_sumout\ & ( (\u2|Div0|auto_generated|divider|divider|add_sub_3_result_int[4]~1_sumout\ & (!\u2|Div0|auto_generated|divider|divider|op_6~1_sumout\ $ (!\u2|Div0|auto_generated|divider|divider|op_7~1_sumout\))) 
-- ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001001000010010000100100001001001100110011001100110011001100110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \u2|Div0|auto_generated|divider|divider|ALT_INV_op_6~1_sumout\,
	datab => \u2|Div0|auto_generated|divider|divider|ALT_INV_add_sub_3_result_int[4]~1_sumout\,
	datac => \u2|Div0|auto_generated|divider|divider|ALT_INV_op_7~1_sumout\,
	dataf => \u2|Div0|auto_generated|divider|divider|ALT_INV_op_5~1_sumout\,
	combout => \u2|Mux3~0_combout\);

-- Location: MLABCELL_X37_Y2_N33
\u2|Mux2~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \u2|Mux2~0_combout\ = ( \u2|Div0|auto_generated|divider|divider|op_5~1_sumout\ & ( (!\u2|Div0|auto_generated|divider|divider|add_sub_3_result_int[4]~1_sumout\ & (\u2|Div0|auto_generated|divider|divider|op_6~1_sumout\)) # 
-- (\u2|Div0|auto_generated|divider|divider|add_sub_3_result_int[4]~1_sumout\ & ((!\u2|Div0|auto_generated|divider|divider|op_7~1_sumout\))) ) ) # ( !\u2|Div0|auto_generated|divider|divider|op_5~1_sumout\ & ( 
-- \u2|Div0|auto_generated|divider|divider|add_sub_3_result_int[4]~1_sumout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111000011110000111101011111010100000101111101010000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \u2|Div0|auto_generated|divider|divider|ALT_INV_op_6~1_sumout\,
	datac => \u2|Div0|auto_generated|divider|divider|ALT_INV_add_sub_3_result_int[4]~1_sumout\,
	datad => \u2|Div0|auto_generated|divider|divider|ALT_INV_op_7~1_sumout\,
	dataf => \u2|Div0|auto_generated|divider|divider|ALT_INV_op_5~1_sumout\,
	combout => \u2|Mux2~0_combout\);

-- Location: MLABCELL_X37_Y2_N0
\u2|Mux1~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \u2|Mux1~0_combout\ = ( \u2|Div0|auto_generated|divider|divider|op_6~1_sumout\ & ( !\u2|Div0|auto_generated|divider|divider|op_5~1_sumout\ $ (((!\u2|Div0|auto_generated|divider|divider|add_sub_3_result_int[4]~1_sumout\) # 
-- (!\u2|Div0|auto_generated|divider|divider|op_7~1_sumout\))) ) ) # ( !\u2|Div0|auto_generated|divider|divider|op_6~1_sumout\ & ( (\u2|Div0|auto_generated|divider|divider|add_sub_3_result_int[4]~1_sumout\ & 
-- ((!\u2|Div0|auto_generated|divider|divider|op_7~1_sumout\) # (\u2|Div0|auto_generated|divider|divider|op_5~1_sumout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001100000011001100110000001100001111001111000000111100111100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \u2|Div0|auto_generated|divider|divider|ALT_INV_add_sub_3_result_int[4]~1_sumout\,
	datac => \u2|Div0|auto_generated|divider|divider|ALT_INV_op_5~1_sumout\,
	datad => \u2|Div0|auto_generated|divider|divider|ALT_INV_op_7~1_sumout\,
	dataf => \u2|Div0|auto_generated|divider|divider|ALT_INV_op_6~1_sumout\,
	combout => \u2|Mux1~0_combout\);

-- Location: MLABCELL_X37_Y2_N3
\u2|Mux0~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \u2|Mux0~0_combout\ = ( \u2|Div0|auto_generated|divider|divider|op_5~1_sumout\ & ( !\u2|Div0|auto_generated|divider|divider|op_6~1_sumout\ $ (!\u2|Div0|auto_generated|divider|divider|add_sub_3_result_int[4]~1_sumout\) ) ) # ( 
-- !\u2|Div0|auto_generated|divider|divider|op_5~1_sumout\ & ( (\u2|Div0|auto_generated|divider|divider|add_sub_3_result_int[4]~1_sumout\ & ((!\u2|Div0|auto_generated|divider|divider|op_6~1_sumout\) # 
-- (!\u2|Div0|auto_generated|divider|divider|op_7~1_sumout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001100100010001100110010001001100110011001100110011001100110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \u2|Div0|auto_generated|divider|divider|ALT_INV_op_6~1_sumout\,
	datab => \u2|Div0|auto_generated|divider|divider|ALT_INV_add_sub_3_result_int[4]~1_sumout\,
	datad => \u2|Div0|auto_generated|divider|divider|ALT_INV_op_7~1_sumout\,
	dataf => \u2|Div0|auto_generated|divider|divider|ALT_INV_op_5~1_sumout\,
	combout => \u2|Mux0~0_combout\);

-- Location: LABCELL_X36_Y1_N27
\u2|Add1~29\ : cyclonev_lcell_comb
-- Equation(s):
-- \u2|Add1~29_combout\ = ( timer1(2) & ( !timer1(3) & ( !timer1(1) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111100001111000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => ALT_INV_timer1(1),
	datae => ALT_INV_timer1(2),
	dataf => ALT_INV_timer1(3),
	combout => \u2|Add1~29_combout\);

-- Location: LABCELL_X39_Y2_N33
\u2|Add1~28\ : cyclonev_lcell_comb
-- Equation(s):
-- \u2|Add1~28_combout\ = ( timer1(3) & ( (!timer1(1) & timer1(2)) ) ) # ( !timer1(3) & ( (!timer1(2)) # (timer1(1)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111101010101111111110101010100000000101010100000000010101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_timer1(1),
	datad => ALT_INV_timer1(2),
	dataf => ALT_INV_timer1(3),
	combout => \u2|Add1~28_combout\);

-- Location: LABCELL_X39_Y2_N0
\u2|Add1~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \u2|Add1~1_sumout\ = SUM(( timer1(0) ) + ( !VCC ) + ( !VCC ))
-- \u2|Add1~2\ = CARRY(( timer1(0) ) + ( !VCC ) + ( !VCC ))
-- \u2|Add1~3\ = SHARE(VCC)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "on")
-- pragma translate_on
PORT MAP (
	datac => ALT_INV_timer1(0),
	cin => GND,
	sharein => GND,
	sumout => \u2|Add1~1_sumout\,
	cout => \u2|Add1~2\,
	shareout => \u2|Add1~3\);

-- Location: LABCELL_X39_Y2_N3
\u2|Add1~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \u2|Add1~5_sumout\ = SUM(( !timer1(1) $ (\u2|Div0|auto_generated|divider|divider|op_7~1_sumout\) ) + ( \u2|Add1~3\ ) + ( \u2|Add1~2\ ))
-- \u2|Add1~6\ = CARRY(( !timer1(1) $ (\u2|Div0|auto_generated|divider|divider|op_7~1_sumout\) ) + ( \u2|Add1~3\ ) + ( \u2|Add1~2\ ))
-- \u2|Add1~7\ = SHARE((\u2|Div0|auto_generated|divider|divider|op_7~1_sumout\) # (timer1(1)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000010101011111111100000000000000001010101001010101",
	shared_arith => "on")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_timer1(1),
	datad => \u2|Div0|auto_generated|divider|divider|ALT_INV_op_7~1_sumout\,
	cin => \u2|Add1~2\,
	sharein => \u2|Add1~3\,
	sumout => \u2|Add1~5_sumout\,
	cout => \u2|Add1~6\,
	shareout => \u2|Add1~7\);

-- Location: LABCELL_X39_Y2_N6
\u2|Add1~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \u2|Add1~9_sumout\ = SUM(( !timer1(2) $ (!\u2|Div0|auto_generated|divider|divider|op_6~1_sumout\ $ (timer1(1))) ) + ( \u2|Add1~7\ ) + ( \u2|Add1~6\ ))
-- \u2|Add1~10\ = CARRY(( !timer1(2) $ (!\u2|Div0|auto_generated|divider|divider|op_6~1_sumout\ $ (timer1(1))) ) + ( \u2|Add1~7\ ) + ( \u2|Add1~6\ ))
-- \u2|Add1~11\ = SHARE((!timer1(2) $ (timer1(1))) # (\u2|Div0|auto_generated|divider|divider|op_6~1_sumout\))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000110011110011111100000000000000000011110011000011",
	shared_arith => "on")
-- pragma translate_on
PORT MAP (
	datab => ALT_INV_timer1(2),
	datac => \u2|Div0|auto_generated|divider|divider|ALT_INV_op_6~1_sumout\,
	datad => ALT_INV_timer1(1),
	cin => \u2|Add1~6\,
	sharein => \u2|Add1~7\,
	sumout => \u2|Add1~9_sumout\,
	cout => \u2|Add1~10\,
	shareout => \u2|Add1~11\);

-- Location: LABCELL_X39_Y2_N9
\u2|Add1~13\ : cyclonev_lcell_comb
-- Equation(s):
-- \u2|Add1~13_sumout\ = SUM(( !\u2|Add1~28_combout\ $ (!\u2|Div0|auto_generated|divider|divider|op_5~1_sumout\ $ (\u2|Div0|auto_generated|divider|divider|op_7~1_sumout\)) ) + ( \u2|Add1~11\ ) + ( \u2|Add1~10\ ))
-- \u2|Add1~14\ = CARRY(( !\u2|Add1~28_combout\ $ (!\u2|Div0|auto_generated|divider|divider|op_5~1_sumout\ $ (\u2|Div0|auto_generated|divider|divider|op_7~1_sumout\)) ) + ( \u2|Add1~11\ ) + ( \u2|Add1~10\ ))
-- \u2|Add1~15\ = SHARE((!\u2|Add1~28_combout\ & (\u2|Div0|auto_generated|divider|divider|op_5~1_sumout\ & \u2|Div0|auto_generated|divider|divider|op_7~1_sumout\)) # (\u2|Add1~28_combout\ & ((\u2|Div0|auto_generated|divider|divider|op_7~1_sumout\) # 
-- (\u2|Div0|auto_generated|divider|divider|op_5~1_sumout\))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000001010101111100000000000000000101101010100101",
	shared_arith => "on")
-- pragma translate_on
PORT MAP (
	dataa => \u2|ALT_INV_Add1~28_combout\,
	datac => \u2|Div0|auto_generated|divider|divider|ALT_INV_op_5~1_sumout\,
	datad => \u2|Div0|auto_generated|divider|divider|ALT_INV_op_7~1_sumout\,
	cin => \u2|Add1~10\,
	sharein => \u2|Add1~11\,
	sumout => \u2|Add1~13_sumout\,
	cout => \u2|Add1~14\,
	shareout => \u2|Add1~15\);

-- Location: LABCELL_X39_Y2_N12
\u2|Add1~17\ : cyclonev_lcell_comb
-- Equation(s):
-- \u2|Add1~17_sumout\ = SUM(( !\u2|Div0|auto_generated|divider|divider|op_6~1_sumout\ $ (!\u2|Add1~29_combout\ $ (!timer1(4) $ (!\u2|Div0|auto_generated|divider|divider|add_sub_3_result_int[4]~1_sumout\))) ) + ( \u2|Add1~15\ ) + ( \u2|Add1~14\ ))
-- \u2|Add1~18\ = CARRY(( !\u2|Div0|auto_generated|divider|divider|op_6~1_sumout\ $ (!\u2|Add1~29_combout\ $ (!timer1(4) $ (!\u2|Div0|auto_generated|divider|divider|add_sub_3_result_int[4]~1_sumout\))) ) + ( \u2|Add1~15\ ) + ( \u2|Add1~14\ ))
-- \u2|Add1~19\ = SHARE((!\u2|Div0|auto_generated|divider|divider|op_6~1_sumout\ & (\u2|Div0|auto_generated|divider|divider|add_sub_3_result_int[4]~1_sumout\ & (!\u2|Add1~29_combout\ $ (!timer1(4))))) # (\u2|Div0|auto_generated|divider|divider|op_6~1_sumout\ 
-- & ((!\u2|Add1~29_combout\ $ (!timer1(4))) # (\u2|Div0|auto_generated|divider|divider|add_sub_3_result_int[4]~1_sumout\))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000101000111110100000000000000000110100110010110",
	shared_arith => "on")
-- pragma translate_on
PORT MAP (
	dataa => \u2|Div0|auto_generated|divider|divider|ALT_INV_op_6~1_sumout\,
	datab => \u2|ALT_INV_Add1~29_combout\,
	datac => ALT_INV_timer1(4),
	datad => \u2|Div0|auto_generated|divider|divider|ALT_INV_add_sub_3_result_int[4]~1_sumout\,
	cin => \u2|Add1~14\,
	sharein => \u2|Add1~15\,
	sumout => \u2|Add1~17_sumout\,
	cout => \u2|Add1~18\,
	shareout => \u2|Add1~19\);

-- Location: LABCELL_X39_Y2_N57
\u2|Add1~30\ : cyclonev_lcell_comb
-- Equation(s):
-- \u2|Add1~30_combout\ = ( \u2|Add1~29_combout\ & ( timer1(4) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000001010101010101010101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_timer1(4),
	dataf => \u2|ALT_INV_Add1~29_combout\,
	combout => \u2|Add1~30_combout\);

-- Location: LABCELL_X39_Y2_N54
\u2|Add1~31\ : cyclonev_lcell_comb
-- Equation(s):
-- \u2|Add1~31_combout\ = !\u2|Add1~30_combout\ $ (!timer1(5))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011110000111100001111000011110000111100001111000011110000111100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \u2|ALT_INV_Add1~30_combout\,
	datac => ALT_INV_timer1(5),
	combout => \u2|Add1~31_combout\);

-- Location: LABCELL_X39_Y2_N15
\u2|Add1~21\ : cyclonev_lcell_comb
-- Equation(s):
-- \u2|Add1~21_sumout\ = SUM(( !\u2|Div0|auto_generated|divider|divider|op_5~1_sumout\ $ (\u2|Add1~31_combout\) ) + ( \u2|Add1~19\ ) + ( \u2|Add1~18\ ))
-- \u2|Add1~22\ = CARRY(( !\u2|Div0|auto_generated|divider|divider|op_5~1_sumout\ $ (\u2|Add1~31_combout\) ) + ( \u2|Add1~19\ ) + ( \u2|Add1~18\ ))
-- \u2|Add1~23\ = SHARE((\u2|Add1~31_combout\) # (\u2|Div0|auto_generated|divider|divider|op_5~1_sumout\))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000011111111111100000000000000001111000000001111",
	shared_arith => "on")
-- pragma translate_on
PORT MAP (
	datac => \u2|Div0|auto_generated|divider|divider|ALT_INV_op_5~1_sumout\,
	datad => \u2|ALT_INV_Add1~31_combout\,
	cin => \u2|Add1~18\,
	sharein => \u2|Add1~19\,
	sumout => \u2|Add1~21_sumout\,
	cout => \u2|Add1~22\,
	shareout => \u2|Add1~23\);

-- Location: LABCELL_X39_Y2_N18
\u2|Add1~25\ : cyclonev_lcell_comb
-- Equation(s):
-- \u2|Add1~25_sumout\ = SUM(( !timer1(6) $ (!\u2|Div0|auto_generated|divider|divider|add_sub_3_result_int[4]~1_sumout\ $ (((!\u2|Add1~30_combout\) # (!timer1(5))))) ) + ( \u2|Add1~23\ ) + ( \u2|Add1~22\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000001010100101010110",
	shared_arith => "on")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_timer1(6),
	datab => \u2|ALT_INV_Add1~30_combout\,
	datac => ALT_INV_timer1(5),
	datad => \u2|Div0|auto_generated|divider|divider|ALT_INV_add_sub_3_result_int[4]~1_sumout\,
	cin => \u2|Add1~22\,
	sharein => \u2|Add1~23\,
	sumout => \u2|Add1~25_sumout\);

-- Location: LABCELL_X40_Y2_N39
\u2|Mux13~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \u2|Mux13~0_combout\ = ( \u2|Add1~1_sumout\ & ( (!\u2|Add1~13_sumout\ & (!\u2|Add1~9_sumout\ $ (\u2|Add1~5_sumout\))) ) ) # ( !\u2|Add1~1_sumout\ & ( (!\u2|Add1~9_sumout\ & (!\u2|Add1~5_sumout\ & !\u2|Add1~13_sumout\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1010000000000000101000000000000010100101000000001010010100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \u2|ALT_INV_Add1~9_sumout\,
	datac => \u2|ALT_INV_Add1~5_sumout\,
	datad => \u2|ALT_INV_Add1~13_sumout\,
	dataf => \u2|ALT_INV_Add1~1_sumout\,
	combout => \u2|Mux13~0_combout\);

-- Location: LABCELL_X39_Y2_N24
\u2|Mux13~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \u2|Mux13~1_combout\ = ( \u2|Add1~21_sumout\ ) # ( !\u2|Add1~21_sumout\ & ( ((!\u2|Mux13~0_combout\) # (\u2|Add1~25_sumout\)) # (\u2|Add1~17_sumout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111100111111111111110011111111111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \u2|ALT_INV_Add1~17_sumout\,
	datac => \u2|ALT_INV_Add1~25_sumout\,
	datad => \u2|ALT_INV_Mux13~0_combout\,
	dataf => \u2|ALT_INV_Add1~21_sumout\,
	combout => \u2|Mux13~1_combout\);

-- Location: LABCELL_X39_Y2_N42
\u2|Mux12~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \u2|Mux12~0_combout\ = ( \u2|Add1~9_sumout\ & ( (!\u2|Add1~13_sumout\ & ((!\u2|Add1~5_sumout\) # (!\u2|Add1~1_sumout\))) ) ) # ( !\u2|Add1~9_sumout\ & ( (!\u2|Add1~5_sumout\ & ((!\u2|Add1~1_sumout\) # (\u2|Add1~13_sumout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111000000110000111100000011000011001100110000001100110011000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \u2|ALT_INV_Add1~13_sumout\,
	datac => \u2|ALT_INV_Add1~5_sumout\,
	datad => \u2|ALT_INV_Add1~1_sumout\,
	dataf => \u2|ALT_INV_Add1~9_sumout\,
	combout => \u2|Mux12~0_combout\);

-- Location: LABCELL_X39_Y2_N45
\u2|Mux12~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \u2|Mux12~1_combout\ = ( \u2|Add1~21_sumout\ ) # ( !\u2|Add1~21_sumout\ & ( ((!\u2|Mux12~0_combout\) # (\u2|Add1~17_sumout\)) # (\u2|Add1~25_sumout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111101011111111111110101111111111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \u2|ALT_INV_Add1~25_sumout\,
	datac => \u2|ALT_INV_Add1~17_sumout\,
	datad => \u2|ALT_INV_Mux12~0_combout\,
	dataf => \u2|ALT_INV_Add1~21_sumout\,
	combout => \u2|Mux12~1_combout\);

-- Location: LABCELL_X39_Y2_N51
\u2|Mux11~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \u2|Mux11~0_combout\ = ( \u2|Add1~9_sumout\ & ( (\u2|Add1~5_sumout\ & (!\u2|Add1~13_sumout\ & !\u2|Add1~1_sumout\)) ) ) # ( !\u2|Add1~9_sumout\ & ( (!\u2|Add1~1_sumout\ & ((!\u2|Add1~5_sumout\) # (!\u2|Add1~13_sumout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111101000000000111110100000000001010000000000000101000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \u2|ALT_INV_Add1~5_sumout\,
	datac => \u2|ALT_INV_Add1~13_sumout\,
	datad => \u2|ALT_INV_Add1~1_sumout\,
	dataf => \u2|ALT_INV_Add1~9_sumout\,
	combout => \u2|Mux11~0_combout\);

-- Location: LABCELL_X39_Y2_N48
\u2|Mux11~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \u2|Mux11~1_combout\ = ( \u2|Add1~21_sumout\ ) # ( !\u2|Add1~21_sumout\ & ( ((!\u2|Mux11~0_combout\) # (\u2|Add1~25_sumout\)) # (\u2|Add1~17_sumout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111100111111111111110011111111111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \u2|ALT_INV_Add1~17_sumout\,
	datac => \u2|ALT_INV_Add1~25_sumout\,
	datad => \u2|ALT_INV_Mux11~0_combout\,
	dataf => \u2|ALT_INV_Add1~21_sumout\,
	combout => \u2|Mux11~1_combout\);

-- Location: LABCELL_X40_Y2_N33
\u2|Mux10~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \u2|Mux10~0_combout\ = ( \u2|Add1~1_sumout\ & ( (!\u2|Add1~13_sumout\ & (!\u2|Add1~5_sumout\ $ (!\u2|Add1~9_sumout\))) # (\u2|Add1~13_sumout\ & (!\u2|Add1~5_sumout\ & !\u2|Add1~9_sumout\)) ) ) # ( !\u2|Add1~1_sumout\ & ( (!\u2|Add1~5_sumout\ & 
-- ((!\u2|Add1~9_sumout\))) # (\u2|Add1~5_sumout\ & (!\u2|Add1~13_sumout\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111110000001100111111000000110000111100110000000011110011000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \u2|ALT_INV_Add1~13_sumout\,
	datac => \u2|ALT_INV_Add1~5_sumout\,
	datad => \u2|ALT_INV_Add1~9_sumout\,
	dataf => \u2|ALT_INV_Add1~1_sumout\,
	combout => \u2|Mux10~0_combout\);

-- Location: LABCELL_X40_Y2_N36
\u2|Mux10~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \u2|Mux10~1_combout\ = ( \u2|Add1~21_sumout\ ) # ( !\u2|Add1~21_sumout\ & ( ((!\u2|Mux10~0_combout\) # (\u2|Add1~17_sumout\)) # (\u2|Add1~25_sumout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111001111111111111100111111111111111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \u2|ALT_INV_Add1~25_sumout\,
	datac => \u2|ALT_INV_Mux10~0_combout\,
	datad => \u2|ALT_INV_Add1~17_sumout\,
	dataf => \u2|ALT_INV_Add1~21_sumout\,
	combout => \u2|Mux10~1_combout\);

-- Location: LABCELL_X39_Y2_N27
\u2|Mux9~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \u2|Mux9~0_combout\ = ( \u2|Add1~9_sumout\ & ( \u2|Add1~13_sumout\ ) ) # ( !\u2|Add1~9_sumout\ & ( (\u2|Add1~5_sumout\ & ((!\u2|Add1~1_sumout\) # (\u2|Add1~13_sumout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010100000101010101010000010100001111000011110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \u2|ALT_INV_Add1~5_sumout\,
	datac => \u2|ALT_INV_Add1~13_sumout\,
	datad => \u2|ALT_INV_Add1~1_sumout\,
	dataf => \u2|ALT_INV_Add1~9_sumout\,
	combout => \u2|Mux9~0_combout\);

-- Location: LABCELL_X39_Y2_N30
\u2|Mux9~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \u2|Mux9~1_combout\ = ( \u2|Add1~21_sumout\ ) # ( !\u2|Add1~21_sumout\ & ( ((\u2|Mux9~0_combout\) # (\u2|Add1~25_sumout\)) # (\u2|Add1~17_sumout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011111111111111001111111111111111111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \u2|ALT_INV_Add1~17_sumout\,
	datac => \u2|ALT_INV_Add1~25_sumout\,
	datad => \u2|ALT_INV_Mux9~0_combout\,
	dataf => \u2|ALT_INV_Add1~21_sumout\,
	combout => \u2|Mux9~1_combout\);

-- Location: LABCELL_X40_Y2_N24
\u2|Mux8~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \u2|Mux8~0_combout\ = ( \u2|Add1~1_sumout\ & ( (!\u2|Add1~5_sumout\ & (\u2|Add1~9_sumout\)) # (\u2|Add1~5_sumout\ & ((\u2|Add1~13_sumout\))) ) ) # ( !\u2|Add1~1_sumout\ & ( (!\u2|Add1~5_sumout\ & (\u2|Add1~9_sumout\ & \u2|Add1~13_sumout\)) # 
-- (\u2|Add1~5_sumout\ & ((\u2|Add1~13_sumout\) # (\u2|Add1~9_sumout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001100111111000000110011111100001100001111110000110000111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \u2|ALT_INV_Add1~5_sumout\,
	datac => \u2|ALT_INV_Add1~9_sumout\,
	datad => \u2|ALT_INV_Add1~13_sumout\,
	dataf => \u2|ALT_INV_Add1~1_sumout\,
	combout => \u2|Mux8~0_combout\);

-- Location: LABCELL_X41_Y1_N9
\u2|Mux8~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \u2|Mux8~1_combout\ = ( \u2|Mux8~0_combout\ ) # ( !\u2|Mux8~0_combout\ & ( ((\u2|Add1~17_sumout\) # (\u2|Add1~21_sumout\)) # (\u2|Add1~25_sumout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0111111101111111011111110111111111111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \u2|ALT_INV_Add1~25_sumout\,
	datab => \u2|ALT_INV_Add1~21_sumout\,
	datac => \u2|ALT_INV_Add1~17_sumout\,
	dataf => \u2|ALT_INV_Mux8~0_combout\,
	combout => \u2|Mux8~1_combout\);

-- Location: LABCELL_X39_Y2_N36
\u2|Mux7~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \u2|Mux7~0_combout\ = ( \u2|Add1~13_sumout\ & ( (\u2|Add1~5_sumout\) # (\u2|Add1~9_sumout\) ) ) # ( !\u2|Add1~13_sumout\ & ( (!\u2|Add1~5_sumout\ & (!\u2|Add1~9_sumout\ $ (!\u2|Add1~1_sumout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011110000000000001111000000000000110011111111110011001111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \u2|ALT_INV_Add1~9_sumout\,
	datac => \u2|ALT_INV_Add1~1_sumout\,
	datad => \u2|ALT_INV_Add1~5_sumout\,
	dataf => \u2|ALT_INV_Add1~13_sumout\,
	combout => \u2|Mux7~0_combout\);

-- Location: LABCELL_X39_Y2_N39
\u2|Mux7~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \u2|Mux7~1_combout\ = ( \u2|Add1~21_sumout\ ) # ( !\u2|Add1~21_sumout\ & ( ((\u2|Mux7~0_combout\) # (\u2|Add1~17_sumout\)) # (\u2|Add1~25_sumout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101111111111111010111111111111111111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \u2|ALT_INV_Add1~25_sumout\,
	datac => \u2|ALT_INV_Add1~17_sumout\,
	datad => \u2|ALT_INV_Mux7~0_combout\,
	dataf => \u2|ALT_INV_Add1~21_sumout\,
	combout => \u2|Mux7~1_combout\);

-- Location: LABCELL_X44_Y3_N0
\u3|Div0|auto_generated|divider|divider|add_sub_3_result_int[0]~17\ : cyclonev_lcell_comb
-- Equation(s):
-- \u3|Div0|auto_generated|divider|divider|add_sub_3_result_int[0]~17_sumout\ = SUM(( timer2(3) ) + ( !VCC ) + ( !VCC ))
-- \u3|Div0|auto_generated|divider|divider|add_sub_3_result_int[0]~18\ = CARRY(( timer2(3) ) + ( !VCC ) + ( !VCC ))
-- \u3|Div0|auto_generated|divider|divider|add_sub_3_result_int[0]~19\ = SHARE(VCC)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000011001100110011",
	shared_arith => "on")
-- pragma translate_on
PORT MAP (
	datab => ALT_INV_timer2(3),
	cin => GND,
	sharein => GND,
	sumout => \u3|Div0|auto_generated|divider|divider|add_sub_3_result_int[0]~17_sumout\,
	cout => \u3|Div0|auto_generated|divider|divider|add_sub_3_result_int[0]~18\,
	shareout => \u3|Div0|auto_generated|divider|divider|add_sub_3_result_int[0]~19\);

-- Location: LABCELL_X44_Y3_N3
\u3|Div0|auto_generated|divider|divider|add_sub_3_result_int[1]~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \u3|Div0|auto_generated|divider|divider|add_sub_3_result_int[1]~9_sumout\ = SUM(( timer2(4) ) + ( \u3|Div0|auto_generated|divider|divider|add_sub_3_result_int[0]~19\ ) + ( \u3|Div0|auto_generated|divider|divider|add_sub_3_result_int[0]~18\ ))
-- \u3|Div0|auto_generated|divider|divider|add_sub_3_result_int[1]~10\ = CARRY(( timer2(4) ) + ( \u3|Div0|auto_generated|divider|divider|add_sub_3_result_int[0]~19\ ) + ( \u3|Div0|auto_generated|divider|divider|add_sub_3_result_int[0]~18\ ))
-- \u3|Div0|auto_generated|divider|divider|add_sub_3_result_int[1]~11\ = SHARE(GND)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000101010101010101",
	shared_arith => "on")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_timer2(4),
	cin => \u3|Div0|auto_generated|divider|divider|add_sub_3_result_int[0]~18\,
	sharein => \u3|Div0|auto_generated|divider|divider|add_sub_3_result_int[0]~19\,
	sumout => \u3|Div0|auto_generated|divider|divider|add_sub_3_result_int[1]~9_sumout\,
	cout => \u3|Div0|auto_generated|divider|divider|add_sub_3_result_int[1]~10\,
	shareout => \u3|Div0|auto_generated|divider|divider|add_sub_3_result_int[1]~11\);

-- Location: LABCELL_X44_Y3_N6
\u3|Div0|auto_generated|divider|divider|add_sub_3_result_int[2]~13\ : cyclonev_lcell_comb
-- Equation(s):
-- \u3|Div0|auto_generated|divider|divider|add_sub_3_result_int[2]~13_sumout\ = SUM(( !timer2(5) ) + ( \u3|Div0|auto_generated|divider|divider|add_sub_3_result_int[1]~11\ ) + ( \u3|Div0|auto_generated|divider|divider|add_sub_3_result_int[1]~10\ ))
-- \u3|Div0|auto_generated|divider|divider|add_sub_3_result_int[2]~14\ = CARRY(( !timer2(5) ) + ( \u3|Div0|auto_generated|divider|divider|add_sub_3_result_int[1]~11\ ) + ( \u3|Div0|auto_generated|divider|divider|add_sub_3_result_int[1]~10\ ))
-- \u3|Div0|auto_generated|divider|divider|add_sub_3_result_int[2]~15\ = SHARE(timer2(5))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000001100110011001100000000000000001100110011001100",
	shared_arith => "on")
-- pragma translate_on
PORT MAP (
	datab => ALT_INV_timer2(5),
	cin => \u3|Div0|auto_generated|divider|divider|add_sub_3_result_int[1]~10\,
	sharein => \u3|Div0|auto_generated|divider|divider|add_sub_3_result_int[1]~11\,
	sumout => \u3|Div0|auto_generated|divider|divider|add_sub_3_result_int[2]~13_sumout\,
	cout => \u3|Div0|auto_generated|divider|divider|add_sub_3_result_int[2]~14\,
	shareout => \u3|Div0|auto_generated|divider|divider|add_sub_3_result_int[2]~15\);

-- Location: LABCELL_X44_Y3_N9
\u3|Div0|auto_generated|divider|divider|add_sub_3_result_int[3]~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \u3|Div0|auto_generated|divider|divider|add_sub_3_result_int[3]~5_sumout\ = SUM(( timer2(6) ) + ( \u3|Div0|auto_generated|divider|divider|add_sub_3_result_int[2]~15\ ) + ( \u3|Div0|auto_generated|divider|divider|add_sub_3_result_int[2]~14\ ))
-- \u3|Div0|auto_generated|divider|divider|add_sub_3_result_int[3]~6\ = CARRY(( timer2(6) ) + ( \u3|Div0|auto_generated|divider|divider|add_sub_3_result_int[2]~15\ ) + ( \u3|Div0|auto_generated|divider|divider|add_sub_3_result_int[2]~14\ ))
-- \u3|Div0|auto_generated|divider|divider|add_sub_3_result_int[3]~7\ = SHARE(GND)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000101010101010101",
	shared_arith => "on")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_timer2(6),
	cin => \u3|Div0|auto_generated|divider|divider|add_sub_3_result_int[2]~14\,
	sharein => \u3|Div0|auto_generated|divider|divider|add_sub_3_result_int[2]~15\,
	sumout => \u3|Div0|auto_generated|divider|divider|add_sub_3_result_int[3]~5_sumout\,
	cout => \u3|Div0|auto_generated|divider|divider|add_sub_3_result_int[3]~6\,
	shareout => \u3|Div0|auto_generated|divider|divider|add_sub_3_result_int[3]~7\);

-- Location: LABCELL_X44_Y3_N12
\u3|Div0|auto_generated|divider|divider|add_sub_3_result_int[4]~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \u3|Div0|auto_generated|divider|divider|add_sub_3_result_int[4]~1_sumout\ = SUM(( VCC ) + ( \u3|Div0|auto_generated|divider|divider|add_sub_3_result_int[3]~7\ ) + ( \u3|Div0|auto_generated|divider|divider|add_sub_3_result_int[3]~6\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000001111111111111111",
	shared_arith => "on")
-- pragma translate_on
PORT MAP (
	cin => \u3|Div0|auto_generated|divider|divider|add_sub_3_result_int[3]~6\,
	sharein => \u3|Div0|auto_generated|divider|divider|add_sub_3_result_int[3]~7\,
	sumout => \u3|Div0|auto_generated|divider|divider|add_sub_3_result_int[4]~1_sumout\);

-- Location: LABCELL_X44_Y3_N48
\u3|Div0|auto_generated|divider|divider|StageOut[18]~6\ : cyclonev_lcell_comb
-- Equation(s):
-- \u3|Div0|auto_generated|divider|divider|StageOut[18]~6_combout\ = ( timer2(6) & ( \u3|Div0|auto_generated|divider|divider|add_sub_3_result_int[4]~1_sumout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000110011001100110011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \u3|Div0|auto_generated|divider|divider|ALT_INV_add_sub_3_result_int[4]~1_sumout\,
	dataf => ALT_INV_timer2(6),
	combout => \u3|Div0|auto_generated|divider|divider|StageOut[18]~6_combout\);

-- Location: LABCELL_X44_Y3_N45
\u3|Div0|auto_generated|divider|divider|StageOut[18]~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \u3|Div0|auto_generated|divider|divider|StageOut[18]~5_combout\ = ( \u3|Div0|auto_generated|divider|divider|add_sub_3_result_int[3]~5_sumout\ & ( !\u3|Div0|auto_generated|divider|divider|add_sub_3_result_int[4]~1_sumout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011001100110011001100110011001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \u3|Div0|auto_generated|divider|divider|ALT_INV_add_sub_3_result_int[4]~1_sumout\,
	dataf => \u3|Div0|auto_generated|divider|divider|ALT_INV_add_sub_3_result_int[3]~5_sumout\,
	combout => \u3|Div0|auto_generated|divider|divider|StageOut[18]~5_combout\);

-- Location: LABCELL_X44_Y3_N57
\u3|Div0|auto_generated|divider|divider|StageOut[16]~7\ : cyclonev_lcell_comb
-- Equation(s):
-- \u3|Div0|auto_generated|divider|divider|StageOut[16]~7_combout\ = (\u3|Div0|auto_generated|divider|divider|add_sub_3_result_int[1]~9_sumout\ & !\u3|Div0|auto_generated|divider|divider|add_sub_3_result_int[4]~1_sumout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100010001000100010001000100010001000100010001000100010001000100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \u3|Div0|auto_generated|divider|divider|ALT_INV_add_sub_3_result_int[1]~9_sumout\,
	datab => \u3|Div0|auto_generated|divider|divider|ALT_INV_add_sub_3_result_int[4]~1_sumout\,
	combout => \u3|Div0|auto_generated|divider|divider|StageOut[16]~7_combout\);

-- Location: LABCELL_X44_Y3_N42
\u3|Div0|auto_generated|divider|divider|StageOut[16]~8\ : cyclonev_lcell_comb
-- Equation(s):
-- \u3|Div0|auto_generated|divider|divider|StageOut[16]~8_combout\ = ( timer2(4) & ( \u3|Div0|auto_generated|divider|divider|add_sub_3_result_int[4]~1_sumout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000110011001100110011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \u3|Div0|auto_generated|divider|divider|ALT_INV_add_sub_3_result_int[4]~1_sumout\,
	dataf => ALT_INV_timer2(4),
	combout => \u3|Div0|auto_generated|divider|divider|StageOut[16]~8_combout\);

-- Location: LABCELL_X44_Y3_N18
\u3|Div0|auto_generated|divider|divider|op_5~26\ : cyclonev_lcell_comb
-- Equation(s):
-- \u3|Div0|auto_generated|divider|divider|op_5~26_cout\ = CARRY(( VCC ) + ( VCC ) + ( !VCC ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000001111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	cin => GND,
	cout => \u3|Div0|auto_generated|divider|divider|op_5~26_cout\);

-- Location: LABCELL_X44_Y3_N21
\u3|Div0|auto_generated|divider|divider|op_5~21\ : cyclonev_lcell_comb
-- Equation(s):
-- \u3|Div0|auto_generated|divider|divider|op_5~21_sumout\ = SUM(( timer2(2) ) + ( VCC ) + ( \u3|Div0|auto_generated|divider|divider|op_5~26_cout\ ))
-- \u3|Div0|auto_generated|divider|divider|op_5~22\ = CARRY(( timer2(2) ) + ( VCC ) + ( \u3|Div0|auto_generated|divider|divider|op_5~26_cout\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => ALT_INV_timer2(2),
	cin => \u3|Div0|auto_generated|divider|divider|op_5~26_cout\,
	sumout => \u3|Div0|auto_generated|divider|divider|op_5~21_sumout\,
	cout => \u3|Div0|auto_generated|divider|divider|op_5~22\);

-- Location: LABCELL_X44_Y3_N24
\u3|Div0|auto_generated|divider|divider|op_5~17\ : cyclonev_lcell_comb
-- Equation(s):
-- \u3|Div0|auto_generated|divider|divider|op_5~17_sumout\ = SUM(( (!\u3|Div0|auto_generated|divider|divider|add_sub_3_result_int[4]~1_sumout\ & (\u3|Div0|auto_generated|divider|divider|add_sub_3_result_int[0]~17_sumout\)) # 
-- (\u3|Div0|auto_generated|divider|divider|add_sub_3_result_int[4]~1_sumout\ & ((timer2(3)))) ) + ( GND ) + ( \u3|Div0|auto_generated|divider|divider|op_5~22\ ))
-- \u3|Div0|auto_generated|divider|divider|op_5~18\ = CARRY(( (!\u3|Div0|auto_generated|divider|divider|add_sub_3_result_int[4]~1_sumout\ & (\u3|Div0|auto_generated|divider|divider|add_sub_3_result_int[0]~17_sumout\)) # 
-- (\u3|Div0|auto_generated|divider|divider|add_sub_3_result_int[4]~1_sumout\ & ((timer2(3)))) ) + ( GND ) + ( \u3|Div0|auto_generated|divider|divider|op_5~22\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000100011101000111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \u3|Div0|auto_generated|divider|divider|ALT_INV_add_sub_3_result_int[0]~17_sumout\,
	datab => \u3|Div0|auto_generated|divider|divider|ALT_INV_add_sub_3_result_int[4]~1_sumout\,
	datac => ALT_INV_timer2(3),
	cin => \u3|Div0|auto_generated|divider|divider|op_5~22\,
	sumout => \u3|Div0|auto_generated|divider|divider|op_5~17_sumout\,
	cout => \u3|Div0|auto_generated|divider|divider|op_5~18\);

-- Location: LABCELL_X44_Y3_N27
\u3|Div0|auto_generated|divider|divider|op_5~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \u3|Div0|auto_generated|divider|divider|op_5~9_sumout\ = SUM(( VCC ) + ( (\u3|Div0|auto_generated|divider|divider|StageOut[16]~8_combout\) # (\u3|Div0|auto_generated|divider|divider|StageOut[16]~7_combout\) ) + ( 
-- \u3|Div0|auto_generated|divider|divider|op_5~18\ ))
-- \u3|Div0|auto_generated|divider|divider|op_5~10\ = CARRY(( VCC ) + ( (\u3|Div0|auto_generated|divider|divider|StageOut[16]~8_combout\) # (\u3|Div0|auto_generated|divider|divider|StageOut[16]~7_combout\) ) + ( 
-- \u3|Div0|auto_generated|divider|divider|op_5~18\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111100000000000000000000000000001111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \u3|Div0|auto_generated|divider|divider|ALT_INV_StageOut[16]~7_combout\,
	dataf => \u3|Div0|auto_generated|divider|divider|ALT_INV_StageOut[16]~8_combout\,
	cin => \u3|Div0|auto_generated|divider|divider|op_5~18\,
	sumout => \u3|Div0|auto_generated|divider|divider|op_5~9_sumout\,
	cout => \u3|Div0|auto_generated|divider|divider|op_5~10\);

-- Location: LABCELL_X44_Y3_N30
\u3|Div0|auto_generated|divider|divider|op_5~13\ : cyclonev_lcell_comb
-- Equation(s):
-- \u3|Div0|auto_generated|divider|divider|op_5~13_sumout\ = SUM(( GND ) + ( (!\u3|Div0|auto_generated|divider|divider|add_sub_3_result_int[4]~1_sumout\ & ((\u3|Div0|auto_generated|divider|divider|add_sub_3_result_int[2]~13_sumout\))) # 
-- (\u3|Div0|auto_generated|divider|divider|add_sub_3_result_int[4]~1_sumout\ & (timer2(5))) ) + ( \u3|Div0|auto_generated|divider|divider|op_5~10\ ))
-- \u3|Div0|auto_generated|divider|divider|op_5~14\ = CARRY(( GND ) + ( (!\u3|Div0|auto_generated|divider|divider|add_sub_3_result_int[4]~1_sumout\ & ((\u3|Div0|auto_generated|divider|divider|add_sub_3_result_int[2]~13_sumout\))) # 
-- (\u3|Div0|auto_generated|divider|divider|add_sub_3_result_int[4]~1_sumout\ & (timer2(5))) ) + ( \u3|Div0|auto_generated|divider|divider|op_5~10\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111000000110000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => ALT_INV_timer2(5),
	datac => \u3|Div0|auto_generated|divider|divider|ALT_INV_add_sub_3_result_int[4]~1_sumout\,
	dataf => \u3|Div0|auto_generated|divider|divider|ALT_INV_add_sub_3_result_int[2]~13_sumout\,
	cin => \u3|Div0|auto_generated|divider|divider|op_5~10\,
	sumout => \u3|Div0|auto_generated|divider|divider|op_5~13_sumout\,
	cout => \u3|Div0|auto_generated|divider|divider|op_5~14\);

-- Location: LABCELL_X44_Y3_N33
\u3|Div0|auto_generated|divider|divider|op_5~6\ : cyclonev_lcell_comb
-- Equation(s):
-- \u3|Div0|auto_generated|divider|divider|op_5~6_cout\ = CARRY(( (\u3|Div0|auto_generated|divider|divider|StageOut[18]~5_combout\) # (\u3|Div0|auto_generated|divider|divider|StageOut[18]~6_combout\) ) + ( VCC ) + ( 
-- \u3|Div0|auto_generated|divider|divider|op_5~14\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000101111101011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \u3|Div0|auto_generated|divider|divider|ALT_INV_StageOut[18]~6_combout\,
	datac => \u3|Div0|auto_generated|divider|divider|ALT_INV_StageOut[18]~5_combout\,
	cin => \u3|Div0|auto_generated|divider|divider|op_5~14\,
	cout => \u3|Div0|auto_generated|divider|divider|op_5~6_cout\);

-- Location: LABCELL_X44_Y3_N36
\u3|Div0|auto_generated|divider|divider|op_5~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \u3|Div0|auto_generated|divider|divider|op_5~1_sumout\ = SUM(( VCC ) + ( GND ) + ( \u3|Div0|auto_generated|divider|divider|op_5~6_cout\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000001111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	cin => \u3|Div0|auto_generated|divider|divider|op_5~6_cout\,
	sumout => \u3|Div0|auto_generated|divider|divider|op_5~1_sumout\);

-- Location: LABCELL_X44_Y3_N51
\u3|Div0|auto_generated|divider|divider|StageOut[17]~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \u3|Div0|auto_generated|divider|divider|StageOut[17]~3_combout\ = ( \u3|Div0|auto_generated|divider|divider|add_sub_3_result_int[2]~13_sumout\ & ( !\u3|Div0|auto_generated|divider|divider|add_sub_3_result_int[4]~1_sumout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011001100110011001100110011001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \u3|Div0|auto_generated|divider|divider|ALT_INV_add_sub_3_result_int[4]~1_sumout\,
	dataf => \u3|Div0|auto_generated|divider|divider|ALT_INV_add_sub_3_result_int[2]~13_sumout\,
	combout => \u3|Div0|auto_generated|divider|divider|StageOut[17]~3_combout\);

-- Location: MLABCELL_X42_Y3_N27
\u3|Div0|auto_generated|divider|divider|StageOut[17]~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \u3|Div0|auto_generated|divider|divider|StageOut[17]~4_combout\ = ( \u3|Div0|auto_generated|divider|divider|add_sub_3_result_int[4]~1_sumout\ & ( timer2(5) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000001010101010101010101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_timer2(5),
	dataf => \u3|Div0|auto_generated|divider|divider|ALT_INV_add_sub_3_result_int[4]~1_sumout\,
	combout => \u3|Div0|auto_generated|divider|divider|StageOut[17]~4_combout\);

-- Location: LABCELL_X44_Y3_N54
\u3|Div0|auto_generated|divider|divider|StageOut[16]~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \u3|Div0|auto_generated|divider|divider|StageOut[16]~1_combout\ = ( timer2(4) & ( (\u3|Div0|auto_generated|divider|divider|add_sub_3_result_int[4]~1_sumout\) # (\u3|Div0|auto_generated|divider|divider|add_sub_3_result_int[1]~9_sumout\) ) ) # ( !timer2(4) 
-- & ( (\u3|Div0|auto_generated|divider|divider|add_sub_3_result_int[1]~9_sumout\ & !\u3|Div0|auto_generated|divider|divider|add_sub_3_result_int[4]~1_sumout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100010001000100010001000100010001110111011101110111011101110111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \u3|Div0|auto_generated|divider|divider|ALT_INV_add_sub_3_result_int[1]~9_sumout\,
	datab => \u3|Div0|auto_generated|divider|divider|ALT_INV_add_sub_3_result_int[4]~1_sumout\,
	dataf => ALT_INV_timer2(4),
	combout => \u3|Div0|auto_generated|divider|divider|StageOut[16]~1_combout\);

-- Location: MLABCELL_X42_Y3_N9
\u3|Div0|auto_generated|divider|divider|StageOut[15]~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \u3|Div0|auto_generated|divider|divider|StageOut[15]~9_combout\ = ( \u3|Div0|auto_generated|divider|divider|add_sub_3_result_int[4]~1_sumout\ & ( timer2(3) ) ) # ( !\u3|Div0|auto_generated|divider|divider|add_sub_3_result_int[4]~1_sumout\ & ( 
-- \u3|Div0|auto_generated|divider|divider|add_sub_3_result_int[0]~17_sumout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001100110011001100110011001101010101010101010101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_timer2(3),
	datab => \u3|Div0|auto_generated|divider|divider|ALT_INV_add_sub_3_result_int[0]~17_sumout\,
	dataf => \u3|Div0|auto_generated|divider|divider|ALT_INV_add_sub_3_result_int[4]~1_sumout\,
	combout => \u3|Div0|auto_generated|divider|divider|StageOut[15]~9_combout\);

-- Location: LABCELL_X43_Y3_N6
\u3|Div0|auto_generated|divider|divider|op_6~26\ : cyclonev_lcell_comb
-- Equation(s):
-- \u3|Div0|auto_generated|divider|divider|op_6~26_cout\ = CARRY(( VCC ) + ( VCC ) + ( !VCC ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000001111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	cin => GND,
	cout => \u3|Div0|auto_generated|divider|divider|op_6~26_cout\);

-- Location: LABCELL_X43_Y3_N9
\u3|Div0|auto_generated|divider|divider|op_6~21\ : cyclonev_lcell_comb
-- Equation(s):
-- \u3|Div0|auto_generated|divider|divider|op_6~21_sumout\ = SUM(( timer2(1) ) + ( VCC ) + ( \u3|Div0|auto_generated|divider|divider|op_6~26_cout\ ))
-- \u3|Div0|auto_generated|divider|divider|op_6~22\ = CARRY(( timer2(1) ) + ( VCC ) + ( \u3|Div0|auto_generated|divider|divider|op_6~26_cout\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => ALT_INV_timer2(1),
	cin => \u3|Div0|auto_generated|divider|divider|op_6~26_cout\,
	sumout => \u3|Div0|auto_generated|divider|divider|op_6~21_sumout\,
	cout => \u3|Div0|auto_generated|divider|divider|op_6~22\);

-- Location: LABCELL_X43_Y3_N12
\u3|Div0|auto_generated|divider|divider|op_6~17\ : cyclonev_lcell_comb
-- Equation(s):
-- \u3|Div0|auto_generated|divider|divider|op_6~17_sumout\ = SUM(( (!\u3|Div0|auto_generated|divider|divider|op_5~1_sumout\ & ((\u3|Div0|auto_generated|divider|divider|op_5~21_sumout\))) # (\u3|Div0|auto_generated|divider|divider|op_5~1_sumout\ & 
-- (timer2(2))) ) + ( GND ) + ( \u3|Div0|auto_generated|divider|divider|op_6~22\ ))
-- \u3|Div0|auto_generated|divider|divider|op_6~18\ = CARRY(( (!\u3|Div0|auto_generated|divider|divider|op_5~1_sumout\ & ((\u3|Div0|auto_generated|divider|divider|op_5~21_sumout\))) # (\u3|Div0|auto_generated|divider|divider|op_5~1_sumout\ & (timer2(2))) ) + 
-- ( GND ) + ( \u3|Div0|auto_generated|divider|divider|op_6~22\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000001110100011101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_timer2(2),
	datab => \u3|Div0|auto_generated|divider|divider|ALT_INV_op_5~1_sumout\,
	datac => \u3|Div0|auto_generated|divider|divider|ALT_INV_op_5~21_sumout\,
	cin => \u3|Div0|auto_generated|divider|divider|op_6~22\,
	sumout => \u3|Div0|auto_generated|divider|divider|op_6~17_sumout\,
	cout => \u3|Div0|auto_generated|divider|divider|op_6~18\);

-- Location: LABCELL_X43_Y3_N15
\u3|Div0|auto_generated|divider|divider|op_6~13\ : cyclonev_lcell_comb
-- Equation(s):
-- \u3|Div0|auto_generated|divider|divider|op_6~13_sumout\ = SUM(( VCC ) + ( (!\u3|Div0|auto_generated|divider|divider|op_5~1_sumout\ & ((\u3|Div0|auto_generated|divider|divider|op_5~17_sumout\))) # (\u3|Div0|auto_generated|divider|divider|op_5~1_sumout\ & 
-- (\u3|Div0|auto_generated|divider|divider|StageOut[15]~9_combout\)) ) + ( \u3|Div0|auto_generated|divider|divider|op_6~18\ ))
-- \u3|Div0|auto_generated|divider|divider|op_6~14\ = CARRY(( VCC ) + ( (!\u3|Div0|auto_generated|divider|divider|op_5~1_sumout\ & ((\u3|Div0|auto_generated|divider|divider|op_5~17_sumout\))) # (\u3|Div0|auto_generated|divider|divider|op_5~1_sumout\ & 
-- (\u3|Div0|auto_generated|divider|divider|StageOut[15]~9_combout\)) ) + ( \u3|Div0|auto_generated|divider|divider|op_6~18\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111000011000000000000000000001111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \u3|Div0|auto_generated|divider|divider|ALT_INV_op_5~1_sumout\,
	datac => \u3|Div0|auto_generated|divider|divider|ALT_INV_StageOut[15]~9_combout\,
	dataf => \u3|Div0|auto_generated|divider|divider|ALT_INV_op_5~17_sumout\,
	cin => \u3|Div0|auto_generated|divider|divider|op_6~18\,
	sumout => \u3|Div0|auto_generated|divider|divider|op_6~13_sumout\,
	cout => \u3|Div0|auto_generated|divider|divider|op_6~14\);

-- Location: LABCELL_X43_Y3_N18
\u3|Div0|auto_generated|divider|divider|op_6~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \u3|Div0|auto_generated|divider|divider|op_6~9_sumout\ = SUM(( (!\u3|Div0|auto_generated|divider|divider|op_5~1_sumout\ & ((\u3|Div0|auto_generated|divider|divider|op_5~9_sumout\))) # (\u3|Div0|auto_generated|divider|divider|op_5~1_sumout\ & 
-- (\u3|Div0|auto_generated|divider|divider|StageOut[16]~1_combout\)) ) + ( GND ) + ( \u3|Div0|auto_generated|divider|divider|op_6~14\ ))
-- \u3|Div0|auto_generated|divider|divider|op_6~10\ = CARRY(( (!\u3|Div0|auto_generated|divider|divider|op_5~1_sumout\ & ((\u3|Div0|auto_generated|divider|divider|op_5~9_sumout\))) # (\u3|Div0|auto_generated|divider|divider|op_5~1_sumout\ & 
-- (\u3|Div0|auto_generated|divider|divider|StageOut[16]~1_combout\)) ) + ( GND ) + ( \u3|Div0|auto_generated|divider|divider|op_6~14\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000001111001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \u3|Div0|auto_generated|divider|divider|ALT_INV_op_5~1_sumout\,
	datac => \u3|Div0|auto_generated|divider|divider|ALT_INV_StageOut[16]~1_combout\,
	datad => \u3|Div0|auto_generated|divider|divider|ALT_INV_op_5~9_sumout\,
	cin => \u3|Div0|auto_generated|divider|divider|op_6~14\,
	sumout => \u3|Div0|auto_generated|divider|divider|op_6~9_sumout\,
	cout => \u3|Div0|auto_generated|divider|divider|op_6~10\);

-- Location: LABCELL_X43_Y3_N21
\u3|Div0|auto_generated|divider|divider|op_6~6\ : cyclonev_lcell_comb
-- Equation(s):
-- \u3|Div0|auto_generated|divider|divider|op_6~6_cout\ = CARRY(( (!\u3|Div0|auto_generated|divider|divider|op_5~1_sumout\ & (((\u3|Div0|auto_generated|divider|divider|op_5~13_sumout\)))) # (\u3|Div0|auto_generated|divider|divider|op_5~1_sumout\ & 
-- (((\u3|Div0|auto_generated|divider|divider|StageOut[17]~4_combout\)) # (\u3|Div0|auto_generated|divider|divider|StageOut[17]~3_combout\))) ) + ( VCC ) + ( \u3|Div0|auto_generated|divider|divider|op_6~10\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000001110100111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \u3|Div0|auto_generated|divider|divider|ALT_INV_StageOut[17]~3_combout\,
	datab => \u3|Div0|auto_generated|divider|divider|ALT_INV_op_5~1_sumout\,
	datac => \u3|Div0|auto_generated|divider|divider|ALT_INV_op_5~13_sumout\,
	datad => \u3|Div0|auto_generated|divider|divider|ALT_INV_StageOut[17]~4_combout\,
	cin => \u3|Div0|auto_generated|divider|divider|op_6~10\,
	cout => \u3|Div0|auto_generated|divider|divider|op_6~6_cout\);

-- Location: LABCELL_X43_Y3_N24
\u3|Div0|auto_generated|divider|divider|op_6~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \u3|Div0|auto_generated|divider|divider|op_6~1_sumout\ = SUM(( VCC ) + ( GND ) + ( \u3|Div0|auto_generated|divider|divider|op_6~6_cout\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000001111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	cin => \u3|Div0|auto_generated|divider|divider|op_6~6_cout\,
	sumout => \u3|Div0|auto_generated|divider|divider|op_6~1_sumout\);

-- Location: LABCELL_X43_Y3_N3
\u3|Div0|auto_generated|divider|divider|StageOut[22]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \u3|Div0|auto_generated|divider|divider|StageOut[22]~0_combout\ = (\u3|Div0|auto_generated|divider|divider|op_5~9_sumout\ & !\u3|Div0|auto_generated|divider|divider|op_5~1_sumout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100010001000100010001000100010001000100010001000100010001000100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \u3|Div0|auto_generated|divider|divider|ALT_INV_op_5~9_sumout\,
	datab => \u3|Div0|auto_generated|divider|divider|ALT_INV_op_5~1_sumout\,
	combout => \u3|Div0|auto_generated|divider|divider|StageOut[22]~0_combout\);

-- Location: LABCELL_X43_Y3_N0
\u3|Div0|auto_generated|divider|divider|StageOut[22]~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \u3|Div0|auto_generated|divider|divider|StageOut[22]~2_combout\ = ( \u3|Div0|auto_generated|divider|divider|StageOut[16]~1_combout\ & ( \u3|Div0|auto_generated|divider|divider|op_5~1_sumout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000110011001100110011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \u3|Div0|auto_generated|divider|divider|ALT_INV_op_5~1_sumout\,
	dataf => \u3|Div0|auto_generated|divider|divider|ALT_INV_StageOut[16]~1_combout\,
	combout => \u3|Div0|auto_generated|divider|divider|StageOut[22]~2_combout\);

-- Location: LABCELL_X43_Y3_N54
\u3|Div0|auto_generated|divider|divider|StageOut[21]~10\ : cyclonev_lcell_comb
-- Equation(s):
-- \u3|Div0|auto_generated|divider|divider|StageOut[21]~10_combout\ = ( \u3|Div0|auto_generated|divider|divider|op_5~17_sumout\ & ( (!\u3|Div0|auto_generated|divider|divider|op_5~1_sumout\) # (\u3|Div0|auto_generated|divider|divider|StageOut[15]~9_combout\) 
-- ) ) # ( !\u3|Div0|auto_generated|divider|divider|op_5~17_sumout\ & ( (\u3|Div0|auto_generated|divider|divider|op_5~1_sumout\ & \u3|Div0|auto_generated|divider|divider|StageOut[15]~9_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001100000011000000110000001111001111110011111100111111001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \u3|Div0|auto_generated|divider|divider|ALT_INV_op_5~1_sumout\,
	datac => \u3|Div0|auto_generated|divider|divider|ALT_INV_StageOut[15]~9_combout\,
	dataf => \u3|Div0|auto_generated|divider|divider|ALT_INV_op_5~17_sumout\,
	combout => \u3|Div0|auto_generated|divider|divider|StageOut[21]~10_combout\);

-- Location: LABCELL_X43_Y3_N57
\u3|Div0|auto_generated|divider|divider|StageOut[20]~11\ : cyclonev_lcell_comb
-- Equation(s):
-- \u3|Div0|auto_generated|divider|divider|StageOut[20]~11_combout\ = (!\u3|Div0|auto_generated|divider|divider|op_5~1_sumout\ & ((\u3|Div0|auto_generated|divider|divider|op_5~21_sumout\))) # (\u3|Div0|auto_generated|divider|divider|op_5~1_sumout\ & 
-- (timer2(2)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000111011101000100011101110100010001110111010001000111011101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_timer2(2),
	datab => \u3|Div0|auto_generated|divider|divider|ALT_INV_op_5~1_sumout\,
	datad => \u3|Div0|auto_generated|divider|divider|ALT_INV_op_5~21_sumout\,
	combout => \u3|Div0|auto_generated|divider|divider|StageOut[20]~11_combout\);

-- Location: LABCELL_X43_Y3_N30
\u3|Div0|auto_generated|divider|divider|op_7~26\ : cyclonev_lcell_comb
-- Equation(s):
-- \u3|Div0|auto_generated|divider|divider|op_7~26_cout\ = CARRY(( VCC ) + ( VCC ) + ( !VCC ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000001111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	cin => GND,
	cout => \u3|Div0|auto_generated|divider|divider|op_7~26_cout\);

-- Location: LABCELL_X43_Y3_N33
\u3|Div0|auto_generated|divider|divider|op_7~22\ : cyclonev_lcell_comb
-- Equation(s):
-- \u3|Div0|auto_generated|divider|divider|op_7~22_cout\ = CARRY(( timer2(0) ) + ( VCC ) + ( \u3|Div0|auto_generated|divider|divider|op_7~26_cout\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => ALT_INV_timer2(0),
	cin => \u3|Div0|auto_generated|divider|divider|op_7~26_cout\,
	cout => \u3|Div0|auto_generated|divider|divider|op_7~22_cout\);

-- Location: LABCELL_X43_Y3_N36
\u3|Div0|auto_generated|divider|divider|op_7~18\ : cyclonev_lcell_comb
-- Equation(s):
-- \u3|Div0|auto_generated|divider|divider|op_7~18_cout\ = CARRY(( GND ) + ( (!\u3|Div0|auto_generated|divider|divider|op_6~1_sumout\ & ((\u3|Div0|auto_generated|divider|divider|op_6~21_sumout\))) # (\u3|Div0|auto_generated|divider|divider|op_6~1_sumout\ & 
-- (timer2(1))) ) + ( \u3|Div0|auto_generated|divider|divider|op_7~22_cout\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111011100100010000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \u3|Div0|auto_generated|divider|divider|ALT_INV_op_6~1_sumout\,
	datab => ALT_INV_timer2(1),
	dataf => \u3|Div0|auto_generated|divider|divider|ALT_INV_op_6~21_sumout\,
	cin => \u3|Div0|auto_generated|divider|divider|op_7~22_cout\,
	cout => \u3|Div0|auto_generated|divider|divider|op_7~18_cout\);

-- Location: LABCELL_X43_Y3_N39
\u3|Div0|auto_generated|divider|divider|op_7~14\ : cyclonev_lcell_comb
-- Equation(s):
-- \u3|Div0|auto_generated|divider|divider|op_7~14_cout\ = CARRY(( VCC ) + ( (!\u3|Div0|auto_generated|divider|divider|op_6~1_sumout\ & ((\u3|Div0|auto_generated|divider|divider|op_6~17_sumout\))) # (\u3|Div0|auto_generated|divider|divider|op_6~1_sumout\ & 
-- (\u3|Div0|auto_generated|divider|divider|StageOut[20]~11_combout\)) ) + ( \u3|Div0|auto_generated|divider|divider|op_7~18_cout\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111110100101000000000000000000001111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \u3|Div0|auto_generated|divider|divider|ALT_INV_op_6~1_sumout\,
	datac => \u3|Div0|auto_generated|divider|divider|ALT_INV_StageOut[20]~11_combout\,
	dataf => \u3|Div0|auto_generated|divider|divider|ALT_INV_op_6~17_sumout\,
	cin => \u3|Div0|auto_generated|divider|divider|op_7~18_cout\,
	cout => \u3|Div0|auto_generated|divider|divider|op_7~14_cout\);

-- Location: LABCELL_X43_Y3_N42
\u3|Div0|auto_generated|divider|divider|op_7~10\ : cyclonev_lcell_comb
-- Equation(s):
-- \u3|Div0|auto_generated|divider|divider|op_7~10_cout\ = CARRY(( GND ) + ( (!\u3|Div0|auto_generated|divider|divider|op_6~1_sumout\ & ((\u3|Div0|auto_generated|divider|divider|op_6~13_sumout\))) # (\u3|Div0|auto_generated|divider|divider|op_6~1_sumout\ & 
-- (\u3|Div0|auto_generated|divider|divider|StageOut[21]~10_combout\)) ) + ( \u3|Div0|auto_generated|divider|divider|op_7~14_cout\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111110100101000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \u3|Div0|auto_generated|divider|divider|ALT_INV_op_6~1_sumout\,
	datac => \u3|Div0|auto_generated|divider|divider|ALT_INV_StageOut[21]~10_combout\,
	dataf => \u3|Div0|auto_generated|divider|divider|ALT_INV_op_6~13_sumout\,
	cin => \u3|Div0|auto_generated|divider|divider|op_7~14_cout\,
	cout => \u3|Div0|auto_generated|divider|divider|op_7~10_cout\);

-- Location: LABCELL_X43_Y3_N45
\u3|Div0|auto_generated|divider|divider|op_7~6\ : cyclonev_lcell_comb
-- Equation(s):
-- \u3|Div0|auto_generated|divider|divider|op_7~6_cout\ = CARRY(( (!\u3|Div0|auto_generated|divider|divider|op_6~1_sumout\ & (\u3|Div0|auto_generated|divider|divider|op_6~9_sumout\)) # (\u3|Div0|auto_generated|divider|divider|op_6~1_sumout\ & 
-- (((\u3|Div0|auto_generated|divider|divider|StageOut[22]~2_combout\) # (\u3|Div0|auto_generated|divider|divider|StageOut[22]~0_combout\)))) ) + ( VCC ) + ( \u3|Div0|auto_generated|divider|divider|op_7~10_cout\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000010011101110111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \u3|Div0|auto_generated|divider|divider|ALT_INV_op_6~1_sumout\,
	datab => \u3|Div0|auto_generated|divider|divider|ALT_INV_op_6~9_sumout\,
	datac => \u3|Div0|auto_generated|divider|divider|ALT_INV_StageOut[22]~0_combout\,
	datad => \u3|Div0|auto_generated|divider|divider|ALT_INV_StageOut[22]~2_combout\,
	cin => \u3|Div0|auto_generated|divider|divider|op_7~10_cout\,
	cout => \u3|Div0|auto_generated|divider|divider|op_7~6_cout\);

-- Location: LABCELL_X43_Y3_N48
\u3|Div0|auto_generated|divider|divider|op_7~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \u3|Div0|auto_generated|divider|divider|op_7~1_sumout\ = SUM(( VCC ) + ( GND ) + ( \u3|Div0|auto_generated|divider|divider|op_7~6_cout\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000001111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	cin => \u3|Div0|auto_generated|divider|divider|op_7~6_cout\,
	sumout => \u3|Div0|auto_generated|divider|divider|op_7~1_sumout\);

-- Location: LABCELL_X40_Y2_N27
\u3|Mux6~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \u3|Mux6~0_combout\ = ( \u3|Div0|auto_generated|divider|divider|op_6~1_sumout\ & ( (!\u3|Div0|auto_generated|divider|divider|op_5~1_sumout\) # (!\u3|Div0|auto_generated|divider|divider|add_sub_3_result_int[4]~1_sumout\) ) ) # ( 
-- !\u3|Div0|auto_generated|divider|divider|op_6~1_sumout\ & ( ((!\u3|Div0|auto_generated|divider|divider|add_sub_3_result_int[4]~1_sumout\) # (\u3|Div0|auto_generated|divider|divider|op_7~1_sumout\)) # 
-- (\u3|Div0|auto_generated|divider|divider|op_5~1_sumout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111010111111111111101011111111111111010111110101111101011111010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \u3|Div0|auto_generated|divider|divider|ALT_INV_op_5~1_sumout\,
	datac => \u3|Div0|auto_generated|divider|divider|ALT_INV_add_sub_3_result_int[4]~1_sumout\,
	datad => \u3|Div0|auto_generated|divider|divider|ALT_INV_op_7~1_sumout\,
	dataf => \u3|Div0|auto_generated|divider|divider|ALT_INV_op_6~1_sumout\,
	combout => \u3|Mux6~0_combout\);

-- Location: LABCELL_X40_Y2_N54
\u3|Mux5~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \u3|Mux5~0_combout\ = ( \u3|Div0|auto_generated|divider|divider|op_6~1_sumout\ & ( !\u3|Div0|auto_generated|divider|divider|op_5~1_sumout\ $ (!\u3|Div0|auto_generated|divider|divider|add_sub_3_result_int[4]~1_sumout\) ) ) # ( 
-- !\u3|Div0|auto_generated|divider|divider|op_6~1_sumout\ & ( (!\u3|Div0|auto_generated|divider|divider|op_5~1_sumout\ & (\u3|Div0|auto_generated|divider|divider|add_sub_3_result_int[4]~1_sumout\ & \u3|Div0|auto_generated|divider|divider|op_7~1_sumout\)) ) 
-- )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001000000010000000100000001001100110011001100110011001100110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \u3|Div0|auto_generated|divider|divider|ALT_INV_op_5~1_sumout\,
	datab => \u3|Div0|auto_generated|divider|divider|ALT_INV_add_sub_3_result_int[4]~1_sumout\,
	datac => \u3|Div0|auto_generated|divider|divider|ALT_INV_op_7~1_sumout\,
	dataf => \u3|Div0|auto_generated|divider|divider|ALT_INV_op_6~1_sumout\,
	combout => \u3|Mux5~0_combout\);

-- Location: LABCELL_X40_Y2_N57
\u3|Mux4~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \u3|Mux4~0_combout\ = ( \u3|Div0|auto_generated|divider|divider|op_6~1_sumout\ & ( (\u3|Div0|auto_generated|divider|divider|op_5~1_sumout\ & (!\u3|Div0|auto_generated|divider|divider|add_sub_3_result_int[4]~1_sumout\ & 
-- \u3|Div0|auto_generated|divider|divider|op_7~1_sumout\)) ) ) # ( !\u3|Div0|auto_generated|divider|divider|op_6~1_sumout\ & ( (\u3|Div0|auto_generated|divider|divider|add_sub_3_result_int[4]~1_sumout\ & 
-- \u3|Div0|auto_generated|divider|divider|op_7~1_sumout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000110011000000000011001100000000010001000000000001000100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \u3|Div0|auto_generated|divider|divider|ALT_INV_op_5~1_sumout\,
	datab => \u3|Div0|auto_generated|divider|divider|ALT_INV_add_sub_3_result_int[4]~1_sumout\,
	datad => \u3|Div0|auto_generated|divider|divider|ALT_INV_op_7~1_sumout\,
	dataf => \u3|Div0|auto_generated|divider|divider|ALT_INV_op_6~1_sumout\,
	combout => \u3|Mux4~0_combout\);

-- Location: LABCELL_X40_Y2_N30
\u3|Mux3~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \u3|Mux3~0_combout\ = ( \u3|Div0|auto_generated|divider|divider|op_6~1_sumout\ & ( (!\u3|Div0|auto_generated|divider|divider|op_5~1_sumout\ & (!\u3|Div0|auto_generated|divider|divider|op_7~1_sumout\ & 
-- \u3|Div0|auto_generated|divider|divider|add_sub_3_result_int[4]~1_sumout\)) # (\u3|Div0|auto_generated|divider|divider|op_5~1_sumout\ & ((!\u3|Div0|auto_generated|divider|divider|add_sub_3_result_int[4]~1_sumout\))) ) ) # ( 
-- !\u3|Div0|auto_generated|divider|divider|op_6~1_sumout\ & ( (\u3|Div0|auto_generated|divider|divider|add_sub_3_result_int[4]~1_sumout\ & ((\u3|Div0|auto_generated|divider|divider|op_5~1_sumout\) # (\u3|Div0|auto_generated|divider|divider|op_7~1_sumout\))) 
-- ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000001011111000000000101111100001111101000000000111110100000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \u3|Div0|auto_generated|divider|divider|ALT_INV_op_7~1_sumout\,
	datac => \u3|Div0|auto_generated|divider|divider|ALT_INV_op_5~1_sumout\,
	datad => \u3|Div0|auto_generated|divider|divider|ALT_INV_add_sub_3_result_int[4]~1_sumout\,
	dataf => \u3|Div0|auto_generated|divider|divider|ALT_INV_op_6~1_sumout\,
	combout => \u3|Mux3~0_combout\);

-- Location: LABCELL_X40_Y2_N48
\u3|Mux2~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \u3|Mux2~0_combout\ = ( \u3|Div0|auto_generated|divider|divider|add_sub_3_result_int[4]~1_sumout\ & ( \u3|Div0|auto_generated|divider|divider|op_5~1_sumout\ & ( !\u3|Div0|auto_generated|divider|divider|op_7~1_sumout\ ) ) ) # ( 
-- !\u3|Div0|auto_generated|divider|divider|add_sub_3_result_int[4]~1_sumout\ & ( \u3|Div0|auto_generated|divider|divider|op_5~1_sumout\ & ( \u3|Div0|auto_generated|divider|divider|op_6~1_sumout\ ) ) ) # ( 
-- \u3|Div0|auto_generated|divider|divider|add_sub_3_result_int[4]~1_sumout\ & ( !\u3|Div0|auto_generated|divider|divider|op_5~1_sumout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100110011001100111111000011110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \u3|Div0|auto_generated|divider|divider|ALT_INV_op_6~1_sumout\,
	datac => \u3|Div0|auto_generated|divider|divider|ALT_INV_op_7~1_sumout\,
	datae => \u3|Div0|auto_generated|divider|divider|ALT_INV_add_sub_3_result_int[4]~1_sumout\,
	dataf => \u3|Div0|auto_generated|divider|divider|ALT_INV_op_5~1_sumout\,
	combout => \u3|Mux2~0_combout\);

-- Location: LABCELL_X40_Y2_N42
\u3|Mux1~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \u3|Mux1~0_combout\ = ( \u3|Div0|auto_generated|divider|divider|op_6~1_sumout\ & ( !\u3|Div0|auto_generated|divider|divider|op_5~1_sumout\ $ (((!\u3|Div0|auto_generated|divider|divider|add_sub_3_result_int[4]~1_sumout\) # 
-- (!\u3|Div0|auto_generated|divider|divider|op_7~1_sumout\))) ) ) # ( !\u3|Div0|auto_generated|divider|divider|op_6~1_sumout\ & ( (\u3|Div0|auto_generated|divider|divider|add_sub_3_result_int[4]~1_sumout\ & 
-- ((!\u3|Div0|auto_generated|divider|divider|op_7~1_sumout\) # (\u3|Div0|auto_generated|divider|divider|op_5~1_sumout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011000100110001001100010011000101010110010101100101011001010110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \u3|Div0|auto_generated|divider|divider|ALT_INV_op_5~1_sumout\,
	datab => \u3|Div0|auto_generated|divider|divider|ALT_INV_add_sub_3_result_int[4]~1_sumout\,
	datac => \u3|Div0|auto_generated|divider|divider|ALT_INV_op_7~1_sumout\,
	dataf => \u3|Div0|auto_generated|divider|divider|ALT_INV_op_6~1_sumout\,
	combout => \u3|Mux1~0_combout\);

-- Location: LABCELL_X40_Y2_N45
\u3|Mux0~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \u3|Mux0~0_combout\ = ( \u3|Div0|auto_generated|divider|divider|op_6~1_sumout\ & ( (!\u3|Div0|auto_generated|divider|divider|op_5~1_sumout\ & (\u3|Div0|auto_generated|divider|divider|add_sub_3_result_int[4]~1_sumout\ & 
-- !\u3|Div0|auto_generated|divider|divider|op_7~1_sumout\)) # (\u3|Div0|auto_generated|divider|divider|op_5~1_sumout\ & (!\u3|Div0|auto_generated|divider|divider|add_sub_3_result_int[4]~1_sumout\)) ) ) # ( 
-- !\u3|Div0|auto_generated|divider|divider|op_6~1_sumout\ & ( \u3|Div0|auto_generated|divider|divider|add_sub_3_result_int[4]~1_sumout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001100110011001100110011001101100110010001000110011001000100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \u3|Div0|auto_generated|divider|divider|ALT_INV_op_5~1_sumout\,
	datab => \u3|Div0|auto_generated|divider|divider|ALT_INV_add_sub_3_result_int[4]~1_sumout\,
	datad => \u3|Div0|auto_generated|divider|divider|ALT_INV_op_7~1_sumout\,
	dataf => \u3|Div0|auto_generated|divider|divider|ALT_INV_op_6~1_sumout\,
	combout => \u3|Mux0~0_combout\);

-- Location: LABCELL_X44_Y2_N27
\u3|Add1~29\ : cyclonev_lcell_comb
-- Equation(s):
-- \u3|Add1~29_combout\ = ( timer2(2) & ( (timer2(1) & timer2(3)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000101000001010000010100000101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_timer2(1),
	datac => ALT_INV_timer2(3),
	dataf => ALT_INV_timer2(2),
	combout => \u3|Add1~29_combout\);

-- Location: LABCELL_X44_Y2_N57
\u3|Add1~30\ : cyclonev_lcell_comb
-- Equation(s):
-- \u3|Add1~30_combout\ = ( timer2(4) & ( \u3|Add1~29_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000001010101010101010101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \u3|ALT_INV_Add1~29_combout\,
	dataf => ALT_INV_timer2(4),
	combout => \u3|Add1~30_combout\);

-- Location: LABCELL_X44_Y2_N39
\u3|Add1~31\ : cyclonev_lcell_comb
-- Equation(s):
-- \u3|Add1~31_combout\ = !timer2(5) $ (!\u3|Add1~30_combout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010110101010010101011010101001010101101010100101010110101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_timer2(5),
	datad => \u3|ALT_INV_Add1~30_combout\,
	combout => \u3|Add1~31_combout\);

-- Location: LABCELL_X44_Y2_N36
\u3|Add1~28\ : cyclonev_lcell_comb
-- Equation(s):
-- \u3|Add1~28_combout\ = ( timer2(2) & ( !timer2(3) $ (!timer2(1)) ) ) # ( !timer2(2) & ( timer2(3) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001100110011001100110011001100111100001111000011110000111100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => ALT_INV_timer2(3),
	datac => ALT_INV_timer2(1),
	dataf => ALT_INV_timer2(2),
	combout => \u3|Add1~28_combout\);

-- Location: LABCELL_X44_Y2_N0
\u3|Add1~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \u3|Add1~1_sumout\ = SUM(( timer2(0) ) + ( !VCC ) + ( !VCC ))
-- \u3|Add1~2\ = CARRY(( timer2(0) ) + ( !VCC ) + ( !VCC ))
-- \u3|Add1~3\ = SHARE(VCC)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "on")
-- pragma translate_on
PORT MAP (
	datac => ALT_INV_timer2(0),
	cin => GND,
	sharein => GND,
	sumout => \u3|Add1~1_sumout\,
	cout => \u3|Add1~2\,
	shareout => \u3|Add1~3\);

-- Location: LABCELL_X44_Y2_N3
\u3|Add1~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \u3|Add1~5_sumout\ = SUM(( !\u3|Div0|auto_generated|divider|divider|op_7~1_sumout\ $ (!timer2(1)) ) + ( \u3|Add1~3\ ) + ( \u3|Add1~2\ ))
-- \u3|Add1~6\ = CARRY(( !\u3|Div0|auto_generated|divider|divider|op_7~1_sumout\ $ (!timer2(1)) ) + ( \u3|Add1~3\ ) + ( \u3|Add1~2\ ))
-- \u3|Add1~7\ = SHARE((!timer2(1)) # (\u3|Div0|auto_generated|divider|divider|op_7~1_sumout\))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111101011111010100000000000000000101101001011010",
	shared_arith => "on")
-- pragma translate_on
PORT MAP (
	dataa => \u3|Div0|auto_generated|divider|divider|ALT_INV_op_7~1_sumout\,
	datac => ALT_INV_timer2(1),
	cin => \u3|Add1~2\,
	sharein => \u3|Add1~3\,
	sumout => \u3|Add1~5_sumout\,
	cout => \u3|Add1~6\,
	shareout => \u3|Add1~7\);

-- Location: LABCELL_X44_Y2_N6
\u3|Add1~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \u3|Add1~9_sumout\ = SUM(( !timer2(2) $ (!\u3|Div0|auto_generated|divider|divider|op_6~1_sumout\ $ (!timer2(1))) ) + ( \u3|Add1~7\ ) + ( \u3|Add1~6\ ))
-- \u3|Add1~10\ = CARRY(( !timer2(2) $ (!\u3|Div0|auto_generated|divider|divider|op_6~1_sumout\ $ (!timer2(1))) ) + ( \u3|Add1~7\ ) + ( \u3|Add1~6\ ))
-- \u3|Add1~11\ = SHARE((!timer2(2) $ (!timer2(1))) # (\u3|Div0|auto_generated|divider|divider|op_6~1_sumout\))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000001111111100111100000000000000001100001100111100",
	shared_arith => "on")
-- pragma translate_on
PORT MAP (
	datab => ALT_INV_timer2(2),
	datac => \u3|Div0|auto_generated|divider|divider|ALT_INV_op_6~1_sumout\,
	datad => ALT_INV_timer2(1),
	cin => \u3|Add1~6\,
	sharein => \u3|Add1~7\,
	sumout => \u3|Add1~9_sumout\,
	cout => \u3|Add1~10\,
	shareout => \u3|Add1~11\);

-- Location: LABCELL_X44_Y2_N9
\u3|Add1~13\ : cyclonev_lcell_comb
-- Equation(s):
-- \u3|Add1~13_sumout\ = SUM(( !\u3|Div0|auto_generated|divider|divider|op_5~1_sumout\ $ (!\u3|Add1~28_combout\ $ (\u3|Div0|auto_generated|divider|divider|op_7~1_sumout\)) ) + ( \u3|Add1~11\ ) + ( \u3|Add1~10\ ))
-- \u3|Add1~14\ = CARRY(( !\u3|Div0|auto_generated|divider|divider|op_5~1_sumout\ $ (!\u3|Add1~28_combout\ $ (\u3|Div0|auto_generated|divider|divider|op_7~1_sumout\)) ) + ( \u3|Add1~11\ ) + ( \u3|Add1~10\ ))
-- \u3|Add1~15\ = SHARE((!\u3|Div0|auto_generated|divider|divider|op_5~1_sumout\ & (\u3|Add1~28_combout\ & \u3|Div0|auto_generated|divider|divider|op_7~1_sumout\)) # (\u3|Div0|auto_generated|divider|divider|op_5~1_sumout\ & 
-- ((\u3|Div0|auto_generated|divider|divider|op_7~1_sumout\) # (\u3|Add1~28_combout\))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000001010101111100000000000000000101101010100101",
	shared_arith => "on")
-- pragma translate_on
PORT MAP (
	dataa => \u3|Div0|auto_generated|divider|divider|ALT_INV_op_5~1_sumout\,
	datac => \u3|ALT_INV_Add1~28_combout\,
	datad => \u3|Div0|auto_generated|divider|divider|ALT_INV_op_7~1_sumout\,
	cin => \u3|Add1~10\,
	sharein => \u3|Add1~11\,
	sumout => \u3|Add1~13_sumout\,
	cout => \u3|Add1~14\,
	shareout => \u3|Add1~15\);

-- Location: LABCELL_X44_Y2_N12
\u3|Add1~17\ : cyclonev_lcell_comb
-- Equation(s):
-- \u3|Add1~17_sumout\ = SUM(( !\u3|Add1~29_combout\ $ (!timer2(4) $ (!\u3|Div0|auto_generated|divider|divider|op_6~1_sumout\ $ (!\u3|Div0|auto_generated|divider|divider|add_sub_3_result_int[4]~1_sumout\))) ) + ( \u3|Add1~15\ ) + ( \u3|Add1~14\ ))
-- \u3|Add1~18\ = CARRY(( !\u3|Add1~29_combout\ $ (!timer2(4) $ (!\u3|Div0|auto_generated|divider|divider|op_6~1_sumout\ $ (!\u3|Div0|auto_generated|divider|divider|add_sub_3_result_int[4]~1_sumout\))) ) + ( \u3|Add1~15\ ) + ( \u3|Add1~14\ ))
-- \u3|Add1~19\ = SHARE((!\u3|Div0|auto_generated|divider|divider|op_6~1_sumout\ & (\u3|Div0|auto_generated|divider|divider|add_sub_3_result_int[4]~1_sumout\ & (!\u3|Add1~29_combout\ $ (!timer2(4))))) # (\u3|Div0|auto_generated|divider|divider|op_6~1_sumout\ 
-- & ((!\u3|Add1~29_combout\ $ (!timer2(4))) # (\u3|Div0|auto_generated|divider|divider|add_sub_3_result_int[4]~1_sumout\))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000001100110111100000000000000000110100110010110",
	shared_arith => "on")
-- pragma translate_on
PORT MAP (
	dataa => \u3|ALT_INV_Add1~29_combout\,
	datab => ALT_INV_timer2(4),
	datac => \u3|Div0|auto_generated|divider|divider|ALT_INV_op_6~1_sumout\,
	datad => \u3|Div0|auto_generated|divider|divider|ALT_INV_add_sub_3_result_int[4]~1_sumout\,
	cin => \u3|Add1~14\,
	sharein => \u3|Add1~15\,
	sumout => \u3|Add1~17_sumout\,
	cout => \u3|Add1~18\,
	shareout => \u3|Add1~19\);

-- Location: LABCELL_X44_Y2_N15
\u3|Add1~21\ : cyclonev_lcell_comb
-- Equation(s):
-- \u3|Add1~21_sumout\ = SUM(( !\u3|Add1~31_combout\ $ (\u3|Div0|auto_generated|divider|divider|op_5~1_sumout\) ) + ( \u3|Add1~19\ ) + ( \u3|Add1~18\ ))
-- \u3|Add1~22\ = CARRY(( !\u3|Add1~31_combout\ $ (\u3|Div0|auto_generated|divider|divider|op_5~1_sumout\) ) + ( \u3|Add1~19\ ) + ( \u3|Add1~18\ ))
-- \u3|Add1~23\ = SHARE((\u3|Div0|auto_generated|divider|divider|op_5~1_sumout\) # (\u3|Add1~31_combout\))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000011111111111100000000000000001111000000001111",
	shared_arith => "on")
-- pragma translate_on
PORT MAP (
	datac => \u3|ALT_INV_Add1~31_combout\,
	datad => \u3|Div0|auto_generated|divider|divider|ALT_INV_op_5~1_sumout\,
	cin => \u3|Add1~18\,
	sharein => \u3|Add1~19\,
	sumout => \u3|Add1~21_sumout\,
	cout => \u3|Add1~22\,
	shareout => \u3|Add1~23\);

-- Location: LABCELL_X44_Y2_N18
\u3|Add1~25\ : cyclonev_lcell_comb
-- Equation(s):
-- \u3|Add1~25_sumout\ = SUM(( !timer2(6) $ (!\u3|Div0|auto_generated|divider|divider|add_sub_3_result_int[4]~1_sumout\ $ (((!timer2(5)) # (!\u3|Add1~30_combout\)))) ) + ( \u3|Add1~23\ ) + ( \u3|Add1~22\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000001110000100011110",
	shared_arith => "on")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_timer2(5),
	datab => \u3|ALT_INV_Add1~30_combout\,
	datac => ALT_INV_timer2(6),
	datad => \u3|Div0|auto_generated|divider|divider|ALT_INV_add_sub_3_result_int[4]~1_sumout\,
	cin => \u3|Add1~22\,
	sharein => \u3|Add1~23\,
	sumout => \u3|Add1~25_sumout\);

-- Location: LABCELL_X44_Y2_N24
\u3|Mux13~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \u3|Mux13~0_combout\ = ( \u3|Add1~9_sumout\ & ( (!\u3|Add1~13_sumout\ & (\u3|Add1~1_sumout\ & \u3|Add1~5_sumout\)) ) ) # ( !\u3|Add1~9_sumout\ & ( (!\u3|Add1~13_sumout\ & !\u3|Add1~5_sumout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1100110000000000110011000000000000000000000011000000000000001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \u3|ALT_INV_Add1~13_sumout\,
	datac => \u3|ALT_INV_Add1~1_sumout\,
	datad => \u3|ALT_INV_Add1~5_sumout\,
	dataf => \u3|ALT_INV_Add1~9_sumout\,
	combout => \u3|Mux13~0_combout\);

-- Location: MLABCELL_X45_Y2_N24
\u3|Mux13~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \u3|Mux13~1_combout\ = ( \u3|Add1~17_sumout\ & ( \u3|Add1~21_sumout\ ) ) # ( !\u3|Add1~17_sumout\ & ( \u3|Add1~21_sumout\ ) ) # ( \u3|Add1~17_sumout\ & ( !\u3|Add1~21_sumout\ ) ) # ( !\u3|Add1~17_sumout\ & ( !\u3|Add1~21_sumout\ & ( 
-- (!\u3|Mux13~0_combout\) # (\u3|Add1~25_sumout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111100110011111111111111111111111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \u3|ALT_INV_Add1~25_sumout\,
	datad => \u3|ALT_INV_Mux13~0_combout\,
	datae => \u3|ALT_INV_Add1~17_sumout\,
	dataf => \u3|ALT_INV_Add1~21_sumout\,
	combout => \u3|Mux13~1_combout\);

-- Location: LABCELL_X43_Y2_N18
\u3|Mux12~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \u3|Mux12~0_combout\ = ( \u3|Add1~1_sumout\ & ( \u3|Add1~13_sumout\ & ( (!\u3|Add1~9_sumout\ & !\u3|Add1~5_sumout\) ) ) ) # ( !\u3|Add1~1_sumout\ & ( \u3|Add1~13_sumout\ & ( (!\u3|Add1~9_sumout\ & !\u3|Add1~5_sumout\) ) ) ) # ( \u3|Add1~1_sumout\ & ( 
-- !\u3|Add1~13_sumout\ & ( (\u3|Add1~9_sumout\ & !\u3|Add1~5_sumout\) ) ) ) # ( !\u3|Add1~1_sumout\ & ( !\u3|Add1~13_sumout\ & ( (!\u3|Add1~5_sumout\) # (\u3|Add1~9_sumout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111010111110101010100000101000010100000101000001010000010100000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \u3|ALT_INV_Add1~9_sumout\,
	datac => \u3|ALT_INV_Add1~5_sumout\,
	datae => \u3|ALT_INV_Add1~1_sumout\,
	dataf => \u3|ALT_INV_Add1~13_sumout\,
	combout => \u3|Mux12~0_combout\);

-- Location: MLABCELL_X45_Y2_N45
\u3|Mux12~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \u3|Mux12~1_combout\ = ( \u3|Mux12~0_combout\ & ( \u3|Add1~25_sumout\ ) ) # ( !\u3|Mux12~0_combout\ & ( \u3|Add1~25_sumout\ ) ) # ( \u3|Mux12~0_combout\ & ( !\u3|Add1~25_sumout\ & ( (\u3|Add1~21_sumout\) # (\u3|Add1~17_sumout\) ) ) ) # ( 
-- !\u3|Mux12~0_combout\ & ( !\u3|Add1~25_sumout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111111111010111110101111111111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \u3|ALT_INV_Add1~17_sumout\,
	datac => \u3|ALT_INV_Add1~21_sumout\,
	datae => \u3|ALT_INV_Mux12~0_combout\,
	dataf => \u3|ALT_INV_Add1~25_sumout\,
	combout => \u3|Mux12~1_combout\);

-- Location: LABCELL_X44_Y2_N42
\u3|Mux11~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \u3|Mux11~0_combout\ = ( \u3|Add1~13_sumout\ & ( (!\u3|Add1~1_sumout\ & (!\u3|Add1~9_sumout\ & !\u3|Add1~5_sumout\)) ) ) # ( !\u3|Add1~13_sumout\ & ( (!\u3|Add1~1_sumout\ & ((!\u3|Add1~9_sumout\) # (\u3|Add1~5_sumout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000101010001010100010101000101010000000100000001000000010000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \u3|ALT_INV_Add1~1_sumout\,
	datab => \u3|ALT_INV_Add1~9_sumout\,
	datac => \u3|ALT_INV_Add1~5_sumout\,
	dataf => \u3|ALT_INV_Add1~13_sumout\,
	combout => \u3|Mux11~0_combout\);

-- Location: MLABCELL_X45_Y2_N36
\u3|Mux11~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \u3|Mux11~1_combout\ = ( \u3|Mux11~0_combout\ & ( \u3|Add1~21_sumout\ ) ) # ( !\u3|Mux11~0_combout\ & ( \u3|Add1~21_sumout\ ) ) # ( \u3|Mux11~0_combout\ & ( !\u3|Add1~21_sumout\ & ( (\u3|Add1~17_sumout\) # (\u3|Add1~25_sumout\) ) ) ) # ( 
-- !\u3|Mux11~0_combout\ & ( !\u3|Add1~21_sumout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111111111001111110011111111111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \u3|ALT_INV_Add1~25_sumout\,
	datac => \u3|ALT_INV_Add1~17_sumout\,
	datae => \u3|ALT_INV_Mux11~0_combout\,
	dataf => \u3|ALT_INV_Add1~21_sumout\,
	combout => \u3|Mux11~1_combout\);

-- Location: LABCELL_X44_Y2_N45
\u3|Mux10~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \u3|Mux10~0_combout\ = ( \u3|Add1~13_sumout\ & ( (!\u3|Add1~9_sumout\ & !\u3|Add1~5_sumout\) ) ) # ( !\u3|Add1~13_sumout\ & ( (!\u3|Add1~1_sumout\ & ((!\u3|Add1~9_sumout\) # (\u3|Add1~5_sumout\))) # (\u3|Add1~1_sumout\ & (!\u3|Add1~9_sumout\ $ 
-- (!\u3|Add1~5_sumout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1001100111101110100110011110111011001100000000001100110000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \u3|ALT_INV_Add1~1_sumout\,
	datab => \u3|ALT_INV_Add1~9_sumout\,
	datad => \u3|ALT_INV_Add1~5_sumout\,
	dataf => \u3|ALT_INV_Add1~13_sumout\,
	combout => \u3|Mux10~0_combout\);

-- Location: MLABCELL_X45_Y2_N33
\u3|Mux10~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \u3|Mux10~1_combout\ = ( \u3|Add1~17_sumout\ & ( \u3|Add1~25_sumout\ ) ) # ( !\u3|Add1~17_sumout\ & ( \u3|Add1~25_sumout\ ) ) # ( \u3|Add1~17_sumout\ & ( !\u3|Add1~25_sumout\ ) ) # ( !\u3|Add1~17_sumout\ & ( !\u3|Add1~25_sumout\ & ( 
-- (!\u3|Mux10~0_combout\) # (\u3|Add1~21_sumout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1010111110101111111111111111111111111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \u3|ALT_INV_Mux10~0_combout\,
	datac => \u3|ALT_INV_Add1~21_sumout\,
	datae => \u3|ALT_INV_Add1~17_sumout\,
	dataf => \u3|ALT_INV_Add1~25_sumout\,
	combout => \u3|Mux10~1_combout\);

-- Location: LABCELL_X44_Y2_N48
\u3|Mux9~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \u3|Mux9~0_combout\ = ( \u3|Add1~13_sumout\ & ( (\u3|Add1~5_sumout\) # (\u3|Add1~9_sumout\) ) ) # ( !\u3|Add1~13_sumout\ & ( (!\u3|Add1~1_sumout\ & (!\u3|Add1~9_sumout\ & \u3|Add1~5_sumout\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000100000001000000010000000100000111111001111110011111100111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \u3|ALT_INV_Add1~1_sumout\,
	datab => \u3|ALT_INV_Add1~9_sumout\,
	datac => \u3|ALT_INV_Add1~5_sumout\,
	dataf => \u3|ALT_INV_Add1~13_sumout\,
	combout => \u3|Mux9~0_combout\);

-- Location: MLABCELL_X45_Y2_N0
\u3|Mux9~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \u3|Mux9~1_combout\ = ( \u3|Mux9~0_combout\ & ( \u3|Add1~21_sumout\ ) ) # ( !\u3|Mux9~0_combout\ & ( \u3|Add1~21_sumout\ ) ) # ( \u3|Mux9~0_combout\ & ( !\u3|Add1~21_sumout\ ) ) # ( !\u3|Mux9~0_combout\ & ( !\u3|Add1~21_sumout\ & ( (\u3|Add1~17_sumout\) # 
-- (\u3|Add1~25_sumout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011111100111111111111111111111111111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \u3|ALT_INV_Add1~25_sumout\,
	datac => \u3|ALT_INV_Add1~17_sumout\,
	datae => \u3|ALT_INV_Mux9~0_combout\,
	dataf => \u3|ALT_INV_Add1~21_sumout\,
	combout => \u3|Mux9~1_combout\);

-- Location: LABCELL_X44_Y2_N51
\u3|Mux8~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \u3|Mux8~0_combout\ = ( \u3|Add1~13_sumout\ & ( (\u3|Add1~5_sumout\) # (\u3|Add1~9_sumout\) ) ) # ( !\u3|Add1~13_sumout\ & ( (\u3|Add1~9_sumout\ & (!\u3|Add1~1_sumout\ $ (!\u3|Add1~5_sumout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000100100010000100010010001000110011111111110011001111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \u3|ALT_INV_Add1~1_sumout\,
	datab => \u3|ALT_INV_Add1~9_sumout\,
	datad => \u3|ALT_INV_Add1~5_sumout\,
	dataf => \u3|ALT_INV_Add1~13_sumout\,
	combout => \u3|Mux8~0_combout\);

-- Location: MLABCELL_X45_Y2_N57
\u3|Mux8~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \u3|Mux8~1_combout\ = ( \u3|Add1~17_sumout\ & ( \u3|Mux8~0_combout\ ) ) # ( !\u3|Add1~17_sumout\ & ( \u3|Mux8~0_combout\ ) ) # ( \u3|Add1~17_sumout\ & ( !\u3|Mux8~0_combout\ ) ) # ( !\u3|Add1~17_sumout\ & ( !\u3|Mux8~0_combout\ & ( (\u3|Add1~25_sumout\) # 
-- (\u3|Add1~21_sumout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011111100111111111111111111111111111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \u3|ALT_INV_Add1~21_sumout\,
	datac => \u3|ALT_INV_Add1~25_sumout\,
	datae => \u3|ALT_INV_Add1~17_sumout\,
	dataf => \u3|ALT_INV_Mux8~0_combout\,
	combout => \u3|Mux8~1_combout\);

-- Location: LABCELL_X44_Y2_N54
\u3|Mux7~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \u3|Mux7~0_combout\ = ( \u3|Add1~9_sumout\ & ( ((!\u3|Add1~1_sumout\ & !\u3|Add1~5_sumout\)) # (\u3|Add1~13_sumout\) ) ) # ( !\u3|Add1~9_sumout\ & ( (!\u3|Add1~13_sumout\ & (\u3|Add1~1_sumout\ & !\u3|Add1~5_sumout\)) # (\u3|Add1~13_sumout\ & 
-- ((\u3|Add1~5_sumout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000110000110011000011000011001111110011001100111111001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \u3|ALT_INV_Add1~13_sumout\,
	datac => \u3|ALT_INV_Add1~1_sumout\,
	datad => \u3|ALT_INV_Add1~5_sumout\,
	dataf => \u3|ALT_INV_Add1~9_sumout\,
	combout => \u3|Mux7~0_combout\);

-- Location: MLABCELL_X45_Y2_N15
\u3|Mux7~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \u3|Mux7~1_combout\ = ( \u3|Add1~17_sumout\ & ( \u3|Add1~25_sumout\ ) ) # ( !\u3|Add1~17_sumout\ & ( \u3|Add1~25_sumout\ ) ) # ( \u3|Add1~17_sumout\ & ( !\u3|Add1~25_sumout\ ) ) # ( !\u3|Add1~17_sumout\ & ( !\u3|Add1~25_sumout\ & ( (\u3|Add1~21_sumout\) # 
-- (\u3|Mux7~0_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101111101011111111111111111111111111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \u3|ALT_INV_Mux7~0_combout\,
	datac => \u3|ALT_INV_Add1~21_sumout\,
	datae => \u3|ALT_INV_Add1~17_sumout\,
	dataf => \u3|ALT_INV_Add1~25_sumout\,
	combout => \u3|Mux7~1_combout\);

-- Location: IOIBUF_X34_Y0_N35
\outclk~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_outclk,
	o => \outclk~input_o\);

-- Location: IOIBUF_X34_Y0_N1
\timer_ew[0]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_timer_ew(0),
	o => \timer_ew[0]~input_o\);

-- Location: IOIBUF_X34_Y0_N52
\timer_ew[1]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_timer_ew(1),
	o => \timer_ew[1]~input_o\);

-- Location: IOIBUF_X36_Y0_N35
\timer_ew[2]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_timer_ew(2),
	o => \timer_ew[2]~input_o\);

-- Location: IOIBUF_X34_Y0_N18
\timer_ew[3]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_timer_ew(3),
	o => \timer_ew[3]~input_o\);

-- Location: IOIBUF_X29_Y0_N52
\timer_ew[4]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_timer_ew(4),
	o => \timer_ew[4]~input_o\);

-- Location: IOIBUF_X33_Y0_N58
\timer_ew[5]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_timer_ew(5),
	o => \timer_ew[5]~input_o\);

-- Location: IOIBUF_X24_Y0_N35
\timer_ew[6]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_timer_ew(6),
	o => \timer_ew[6]~input_o\);

-- Location: IOIBUF_X36_Y0_N52
\timer_ns[0]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_timer_ns(0),
	o => \timer_ns[0]~input_o\);

-- Location: IOIBUF_X25_Y0_N1
\timer_ns[1]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_timer_ns(1),
	o => \timer_ns[1]~input_o\);

-- Location: IOIBUF_X38_Y0_N1
\timer_ns[2]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_timer_ns(2),
	o => \timer_ns[2]~input_o\);

-- Location: IOIBUF_X50_Y0_N1
\timer_ns[3]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_timer_ns(3),
	o => \timer_ns[3]~input_o\);

-- Location: IOIBUF_X33_Y0_N41
\timer_ns[4]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_timer_ns(4),
	o => \timer_ns[4]~input_o\);

-- Location: IOIBUF_X25_Y0_N18
\timer_ns[5]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_timer_ns(5),
	o => \timer_ns[5]~input_o\);

-- Location: IOIBUF_X33_Y0_N92
\timer_ns[6]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_timer_ns(6),
	o => \timer_ns[6]~input_o\);

-- Location: IOIBUF_X25_Y0_N35
\s_out[0]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_s_out(0),
	o => \s_out[0]~input_o\);

-- Location: IOIBUF_X29_Y0_N35
\s_out[1]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_s_out(1),
	o => \s_out[1]~input_o\);
END structure;


