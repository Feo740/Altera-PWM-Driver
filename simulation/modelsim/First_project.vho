-- Copyright (C) 1991-2011 Altera Corporation
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
-- VERSION "Version 11.1 Build 216 11/23/2011 Service Pack 1 SJ Full Version"

-- DATE "11/27/2015 22:23:40"

-- 
-- Device: Altera EP4CE6E22C8 Package TQFP144
-- 

-- 
-- This VHDL file should be used for ModelSim-Altera (VHDL) only
-- 

LIBRARY ALTERA;
LIBRARY CYCLONEIVE;
LIBRARY IEEE;
USE ALTERA.ALTERA_PRIMITIVES_COMPONENTS.ALL;
USE CYCLONEIVE.CYCLONEIVE_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	First_project IS
    PORT (
	led0 : OUT std_logic;
	led1 : OUT std_logic;
	MISO : OUT std_logic;
	OUT_final : OUT std_logic_vector(3 DOWNTO 0);
	PWM_out : OUT std_logic;
	PWM_out2 : OUT std_logic;
	PWM_out3 : OUT std_logic;
	PWM_out4 : OUT std_logic;
	PWM_out5 : OUT std_logic;
	PWM_out6 : OUT std_logic;
	PWM_out7 : OUT std_logic;
	PWM_out8 : OUT std_logic;
	PWM_out9 : OUT std_logic;
	PWM_out_vent : OUT std_logic;
	flag_five_sec : OUT std_logic;
	Data_H_test : OUT std_logic;
	key0 : IN std_logic;
	clk50M : IN std_logic;
	SCK : IN std_logic;
	MOSI : IN std_logic;
	SSEL : IN std_logic;
	Data_H : INOUT std_logic
	);
END First_project;

-- Design Ports Information
-- led0	=>  Location: PIN_2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- led1	=>  Location: PIN_3,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- MISO	=>  Location: PIN_69,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- OUT_final[0]	=>  Location: PIN_59,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- OUT_final[1]	=>  Location: PIN_58,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- OUT_final[2]	=>  Location: PIN_53,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- OUT_final[3]	=>  Location: PIN_52,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- PWM_out	=>  Location: PIN_33,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- PWM_out2	=>  Location: PIN_34,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- PWM_out3	=>  Location: PIN_39,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- PWM_out4	=>  Location: PIN_32,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- PWM_out5	=>  Location: PIN_38,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- PWM_out6	=>  Location: PIN_64,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- PWM_out7	=>  Location: PIN_66,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- PWM_out8	=>  Location: PIN_30,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- PWM_out9	=>  Location: PIN_50,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- PWM_out_vent	=>  Location: PIN_55,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- flag_five_sec	=>  Location: PIN_54,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- Data_H_test	=>  Location: PIN_60,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- Data_H	=>  Location: PIN_28,	 I/O Standard: 3.3-V LVCMOS,	 Current Strength: 2mA
-- key0	=>  Location: PIN_7,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- clk50M	=>  Location: PIN_23,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- SSEL	=>  Location: PIN_67,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- SCK	=>  Location: PIN_49,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- MOSI	=>  Location: PIN_51,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default


ARCHITECTURE structure OF First_project IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_led0 : std_logic;
SIGNAL ww_led1 : std_logic;
SIGNAL ww_MISO : std_logic;
SIGNAL ww_OUT_final : std_logic_vector(3 DOWNTO 0);
SIGNAL ww_PWM_out : std_logic;
SIGNAL ww_PWM_out2 : std_logic;
SIGNAL ww_PWM_out3 : std_logic;
SIGNAL ww_PWM_out4 : std_logic;
SIGNAL ww_PWM_out5 : std_logic;
SIGNAL ww_PWM_out6 : std_logic;
SIGNAL ww_PWM_out7 : std_logic;
SIGNAL ww_PWM_out8 : std_logic;
SIGNAL ww_PWM_out9 : std_logic;
SIGNAL ww_PWM_out_vent : std_logic;
SIGNAL ww_flag_five_sec : std_logic;
SIGNAL ww_Data_H_test : std_logic;
SIGNAL ww_key0 : std_logic;
SIGNAL ww_clk50M : std_logic;
SIGNAL ww_SCK : std_logic;
SIGNAL ww_MOSI : std_logic;
SIGNAL ww_SSEL : std_logic;
SIGNAL \RL|Q~clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \FGD|clk1M~clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \FGD|clk25M~clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \FGD|clk1hz~clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \clk50M~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \FGD|Add0~8_combout\ : std_logic;
SIGNAL \FGD|Add0~12_combout\ : std_logic;
SIGNAL \FGD|Add0~26_combout\ : std_logic;
SIGNAL \FGD|Add0~28_combout\ : std_logic;
SIGNAL \FGD|Add0~38_combout\ : std_logic;
SIGNAL \FGD|Add0~61\ : std_logic;
SIGNAL \FGD|Add0~62_combout\ : std_logic;
SIGNAL \F_S|Add0~2_combout\ : std_logic;
SIGNAL \F_S|Add0~16_combout\ : std_logic;
SIGNAL \F_S|Add0~18_combout\ : std_logic;
SIGNAL \F_S|Add0~28_combout\ : std_logic;
SIGNAL \F_S|Add0~32_combout\ : std_logic;
SIGNAL \F_S|Add0~34_combout\ : std_logic;
SIGNAL \F_S|Add0~36_combout\ : std_logic;
SIGNAL \Hum|id_gorb[0]~6_combout\ : std_logic;
SIGNAL \Hum|id_gorb[0]~7\ : std_logic;
SIGNAL \Hum|id_gorb[1]~11_combout\ : std_logic;
SIGNAL \Hum|id_gorb[1]~12\ : std_logic;
SIGNAL \Hum|id_gorb[2]~13_combout\ : std_logic;
SIGNAL \Hum|id_gorb[2]~14\ : std_logic;
SIGNAL \Hum|id_gorb[3]~15_combout\ : std_logic;
SIGNAL \Hum|id_gorb[3]~16\ : std_logic;
SIGNAL \Hum|id_gorb[4]~17_combout\ : std_logic;
SIGNAL \Hum|id_gorb[4]~18\ : std_logic;
SIGNAL \Hum|id_gorb[5]~19_combout\ : std_logic;
SIGNAL \FGD|Add2~4_combout\ : std_logic;
SIGNAL \FGD|Add2~8_combout\ : std_logic;
SIGNAL \FGD|Equal0~3_combout\ : std_logic;
SIGNAL \FGD|Equal0~5_combout\ : std_logic;
SIGNAL \STPS|dev_state~q\ : std_logic;
SIGNAL \STPS|Equal0~2_combout\ : std_logic;
SIGNAL \STPS|Equal0~3_combout\ : std_logic;
SIGNAL \STPS|Equal0~4_combout\ : std_logic;
SIGNAL \STPS|Equal0~5_combout\ : std_logic;
SIGNAL \FGD|clk25M~q\ : std_logic;
SIGNAL \F_S|Equal0~4_combout\ : std_logic;
SIGNAL \F_S|Equal1~0_combout\ : std_logic;
SIGNAL \FGD|i~5_combout\ : std_logic;
SIGNAL \Hum|shet[4]~19_combout\ : std_logic;
SIGNAL \Hum|Equal5~0_combout\ : std_logic;
SIGNAL \Hum|Equal5~1_combout\ : std_logic;
SIGNAL \Hum|always2~0_combout\ : std_logic;
SIGNAL \Hum|LessThan3~0_combout\ : std_logic;
SIGNAL \Hum|always2~1_combout\ : std_logic;
SIGNAL \Hum|always2~2_combout\ : std_logic;
SIGNAL \Hum|LessThan4~1_combout\ : std_logic;
SIGNAL \Hum|LessThan4~2_combout\ : std_logic;
SIGNAL \STPS|dev_state~0_combout\ : std_logic;
SIGNAL \RL|Q~combout\ : std_logic;
SIGNAL \FGD|clk25M~0_combout\ : std_logic;
SIGNAL \F_S|five_sec~0_combout\ : std_logic;
SIGNAL \F_S|five_sec~6_combout\ : std_logic;
SIGNAL \Hum|HYM~0_combout\ : std_logic;
SIGNAL \Hum|Equal6~0_combout\ : std_logic;
SIGNAL \Hum|Equal6~1_combout\ : std_logic;
SIGNAL \Hum|Equal6~3_combout\ : std_logic;
SIGNAL \Hum|shet[4]~35_combout\ : std_logic;
SIGNAL \Hum|shet[4]~36_combout\ : std_logic;
SIGNAL \Hum|shet[4]~37_combout\ : std_logic;
SIGNAL \Hum|shet[4]~38_combout\ : std_logic;
SIGNAL \Hum|id_gorb[4]~8_combout\ : std_logic;
SIGNAL \Hum|id_gorb[4]~9_combout\ : std_logic;
SIGNAL \Hum|id_gorb[4]~10_combout\ : std_logic;
SIGNAL \Hum|Equal6~5_combout\ : std_logic;
SIGNAL \FGD|j~0_combout\ : std_logic;
SIGNAL \FGD|j[2]~1_combout\ : std_logic;
SIGNAL \FGD|j~2_combout\ : std_logic;
SIGNAL \Hum|Data_H_REG~0_combout\ : std_logic;
SIGNAL \SPI_MODULE|HYM_send~4_combout\ : std_logic;
SIGNAL \Hum|HYM~2_combout\ : std_logic;
SIGNAL \SPI_MODULE|HYM_send~5_combout\ : std_logic;
SIGNAL \SPI_MODULE|HYM_send~6_combout\ : std_logic;
SIGNAL \SPI_MODULE|HYM_send~7_combout\ : std_logic;
SIGNAL \Hum|HYM~5_combout\ : std_logic;
SIGNAL \SPI_MODULE|HYM_send~8_combout\ : std_logic;
SIGNAL \Hum|HYM~6_combout\ : std_logic;
SIGNAL \SPI_MODULE|HYM_send~9_combout\ : std_logic;
SIGNAL \Hum|HYM~7_combout\ : std_logic;
SIGNAL \SPI_MODULE|HYM_send~10_combout\ : std_logic;
SIGNAL \Hum|HYM~8_combout\ : std_logic;
SIGNAL \SPI_MODULE|HYM_send~11_combout\ : std_logic;
SIGNAL \Hum|HYM~9_combout\ : std_logic;
SIGNAL \SPI_MODULE|HYM_send~12_combout\ : std_logic;
SIGNAL \Hum|HYM~10_combout\ : std_logic;
SIGNAL \SPI_MODULE|HYM_send~13_combout\ : std_logic;
SIGNAL \Hum|HYM~11_combout\ : std_logic;
SIGNAL \SPI_MODULE|HYM_send~14_combout\ : std_logic;
SIGNAL \Hum|HYM~12_combout\ : std_logic;
SIGNAL \SPI_MODULE|HYM_send~15_combout\ : std_logic;
SIGNAL \Hum|HYM~13_combout\ : std_logic;
SIGNAL \SPI_MODULE|HYM_send~16_combout\ : std_logic;
SIGNAL \Hum|HYM~14_combout\ : std_logic;
SIGNAL \SPI_MODULE|HYM_send~17_combout\ : std_logic;
SIGNAL \Hum|HYM~15_combout\ : std_logic;
SIGNAL \SPI_MODULE|HYM_send~18_combout\ : std_logic;
SIGNAL \Hum|HYM~16_combout\ : std_logic;
SIGNAL \SPI_MODULE|HYM_send~19_combout\ : std_logic;
SIGNAL \Hum|HYM~17_combout\ : std_logic;
SIGNAL \SPI_MODULE|HYM_send~20_combout\ : std_logic;
SIGNAL \Hum|HYM~18_combout\ : std_logic;
SIGNAL \SPI_MODULE|HYM_send~21_combout\ : std_logic;
SIGNAL \Hum|HYM~19_combout\ : std_logic;
SIGNAL \SPI_MODULE|HYM_send~22_combout\ : std_logic;
SIGNAL \Hum|HYM~20_combout\ : std_logic;
SIGNAL \SPI_MODULE|HYM_send~23_combout\ : std_logic;
SIGNAL \Hum|HYM~21_combout\ : std_logic;
SIGNAL \SPI_MODULE|HYM_send~24_combout\ : std_logic;
SIGNAL \Hum|HYM~22_combout\ : std_logic;
SIGNAL \SPI_MODULE|HYM_send~25_combout\ : std_logic;
SIGNAL \Hum|HYM~23_combout\ : std_logic;
SIGNAL \SPI_MODULE|HYM_send~26_combout\ : std_logic;
SIGNAL \Hum|HYM~24_combout\ : std_logic;
SIGNAL \SPI_MODULE|HYM_send~27_combout\ : std_logic;
SIGNAL \Hum|HYM~25_combout\ : std_logic;
SIGNAL \SPI_MODULE|HYM_send~28_combout\ : std_logic;
SIGNAL \Hum|HYM~26_combout\ : std_logic;
SIGNAL \SPI_MODULE|HYM_send~29_combout\ : std_logic;
SIGNAL \Hum|HYM~27_combout\ : std_logic;
SIGNAL \SPI_MODULE|HYM_send~30_combout\ : std_logic;
SIGNAL \Hum|HYM~28_combout\ : std_logic;
SIGNAL \SPI_MODULE|HYM_send~31_combout\ : std_logic;
SIGNAL \Hum|HYM~29_combout\ : std_logic;
SIGNAL \SPI_MODULE|HYM_send~32_combout\ : std_logic;
SIGNAL \Hum|HYM~30_combout\ : std_logic;
SIGNAL \SPI_MODULE|HYM_send~33_combout\ : std_logic;
SIGNAL \Hum|HYM~31_combout\ : std_logic;
SIGNAL \SPI_MODULE|HYM_send~34_combout\ : std_logic;
SIGNAL \Hum|HYM~32_combout\ : std_logic;
SIGNAL \SPI_MODULE|HYM_send~35_combout\ : std_logic;
SIGNAL \Hum|HYM~33_combout\ : std_logic;
SIGNAL \SPI_MODULE|HYM_send~36_combout\ : std_logic;
SIGNAL \Hum|HYM~34_combout\ : std_logic;
SIGNAL \SPI_MODULE|HYM_send~37_combout\ : std_logic;
SIGNAL \Hum|HYM~35_combout\ : std_logic;
SIGNAL \SPI_MODULE|HYM_send~38_combout\ : std_logic;
SIGNAL \Hum|HYM~36_combout\ : std_logic;
SIGNAL \SPI_MODULE|HYM_send~39_combout\ : std_logic;
SIGNAL \Hum|HYM~37_combout\ : std_logic;
SIGNAL \SPI_MODULE|HYM_send[0]~40_combout\ : std_logic;
SIGNAL \SPI_MODULE|HYM_send[0]~41_combout\ : std_logic;
SIGNAL \Hum|HYM~38_combout\ : std_logic;
SIGNAL \Hum|HYM~39_combout\ : std_logic;
SIGNAL \Hum|HYM~40_combout\ : std_logic;
SIGNAL \Hum|HYM~41_combout\ : std_logic;
SIGNAL \Hum|HYM~42_combout\ : std_logic;
SIGNAL \SDRV|state[0]~2_combout\ : std_logic;
SIGNAL \RL|Q~clkctrl_outclk\ : std_logic;
SIGNAL \FGD|clk25M~clkctrl_outclk\ : std_logic;
SIGNAL \FGD|clk1hz~clkctrl_outclk\ : std_logic;
SIGNAL \Hum|HYM2[39]~feeder_combout\ : std_logic;
SIGNAL \Hum|HYM2[38]~feeder_combout\ : std_logic;
SIGNAL \Hum|HYM2[36]~feeder_combout\ : std_logic;
SIGNAL \Hum|HYM2[35]~feeder_combout\ : std_logic;
SIGNAL \Hum|HYM2[34]~feeder_combout\ : std_logic;
SIGNAL \Hum|HYM2[32]~feeder_combout\ : std_logic;
SIGNAL \Hum|HYM2[31]~feeder_combout\ : std_logic;
SIGNAL \Hum|HYM2[26]~feeder_combout\ : std_logic;
SIGNAL \Hum|HYM2[25]~feeder_combout\ : std_logic;
SIGNAL \Hum|HYM2[24]~feeder_combout\ : std_logic;
SIGNAL \Hum|HYM2[23]~feeder_combout\ : std_logic;
SIGNAL \Hum|HYM2[22]~feeder_combout\ : std_logic;
SIGNAL \Hum|HYM2[21]~feeder_combout\ : std_logic;
SIGNAL \Hum|HYM2[20]~feeder_combout\ : std_logic;
SIGNAL \Hum|HYM2[19]~feeder_combout\ : std_logic;
SIGNAL \Hum|HYM2[18]~feeder_combout\ : std_logic;
SIGNAL \Hum|HYM2[17]~feeder_combout\ : std_logic;
SIGNAL \Hum|HYM2[15]~feeder_combout\ : std_logic;
SIGNAL \Hum|HYM2[13]~feeder_combout\ : std_logic;
SIGNAL \Hum|HYM2[9]~feeder_combout\ : std_logic;
SIGNAL \Hum|HYM2[8]~feeder_combout\ : std_logic;
SIGNAL \Hum|HYM2[5]~feeder_combout\ : std_logic;
SIGNAL \Hum|HYM2[2]~feeder_combout\ : std_logic;
SIGNAL \Hum|HYM2[1]~feeder_combout\ : std_logic;
SIGNAL \Data_H~output_o\ : std_logic;
SIGNAL \led0~output_o\ : std_logic;
SIGNAL \led1~output_o\ : std_logic;
SIGNAL \MISO~output_o\ : std_logic;
SIGNAL \OUT_final[0]~output_o\ : std_logic;
SIGNAL \OUT_final[1]~output_o\ : std_logic;
SIGNAL \OUT_final[2]~output_o\ : std_logic;
SIGNAL \OUT_final[3]~output_o\ : std_logic;
SIGNAL \PWM_out~output_o\ : std_logic;
SIGNAL \PWM_out2~output_o\ : std_logic;
SIGNAL \PWM_out3~output_o\ : std_logic;
SIGNAL \PWM_out4~output_o\ : std_logic;
SIGNAL \PWM_out5~output_o\ : std_logic;
SIGNAL \PWM_out6~output_o\ : std_logic;
SIGNAL \PWM_out7~output_o\ : std_logic;
SIGNAL \PWM_out8~output_o\ : std_logic;
SIGNAL \PWM_out9~output_o\ : std_logic;
SIGNAL \PWM_out_vent~output_o\ : std_logic;
SIGNAL \flag_five_sec~output_o\ : std_logic;
SIGNAL \Data_H_test~output_o\ : std_logic;
SIGNAL \FGD|Add2~0_combout\ : std_logic;
SIGNAL \FGD|Add2~1\ : std_logic;
SIGNAL \FGD|Add2~2_combout\ : std_logic;
SIGNAL \FGD|z~0_combout\ : std_logic;
SIGNAL \FGD|z~1_combout\ : std_logic;
SIGNAL \FGD|Add2~3\ : std_logic;
SIGNAL \FGD|Add2~5\ : std_logic;
SIGNAL \FGD|Add2~7\ : std_logic;
SIGNAL \FGD|Add2~9\ : std_logic;
SIGNAL \FGD|Add2~10_combout\ : std_logic;
SIGNAL \FGD|Add2~6_combout\ : std_logic;
SIGNAL \FGD|z~2_combout\ : std_logic;
SIGNAL \FGD|Equal2~0_combout\ : std_logic;
SIGNAL \FGD|clk1M~0_combout\ : std_logic;
SIGNAL \FGD|clk1M~q\ : std_logic;
SIGNAL \FGD|clk1M~clkctrl_outclk\ : std_logic;
SIGNAL \F_S|Add0~43\ : std_logic;
SIGNAL \F_S|Add0~44_combout\ : std_logic;
SIGNAL \F_S|five_sec~8_combout\ : std_logic;
SIGNAL \F_S|Equal0~6_combout\ : std_logic;
SIGNAL \F_S|Equal0~2_combout\ : std_logic;
SIGNAL \F_S|five_sec~3_combout\ : std_logic;
SIGNAL \F_S|Add0~1\ : std_logic;
SIGNAL \F_S|Add0~3\ : std_logic;
SIGNAL \F_S|Add0~4_combout\ : std_logic;
SIGNAL \F_S|Add0~5\ : std_logic;
SIGNAL \F_S|Add0~6_combout\ : std_logic;
SIGNAL \F_S|Add0~7\ : std_logic;
SIGNAL \F_S|Add0~8_combout\ : std_logic;
SIGNAL \F_S|Add0~9\ : std_logic;
SIGNAL \F_S|Add0~10_combout\ : std_logic;
SIGNAL \F_S|Add0~11\ : std_logic;
SIGNAL \F_S|Add0~12_combout\ : std_logic;
SIGNAL \F_S|five_sec~4_combout\ : std_logic;
SIGNAL \F_S|Add0~13\ : std_logic;
SIGNAL \F_S|Add0~14_combout\ : std_logic;
SIGNAL \F_S|Add0~15\ : std_logic;
SIGNAL \F_S|Add0~17\ : std_logic;
SIGNAL \F_S|Add0~19\ : std_logic;
SIGNAL \F_S|Add0~21\ : std_logic;
SIGNAL \F_S|Add0~22_combout\ : std_logic;
SIGNAL \F_S|five_sec~5_combout\ : std_logic;
SIGNAL \F_S|Add0~23\ : std_logic;
SIGNAL \F_S|Add0~24_combout\ : std_logic;
SIGNAL \F_S|Add0~25\ : std_logic;
SIGNAL \F_S|Add0~26_combout\ : std_logic;
SIGNAL \F_S|Add0~27\ : std_logic;
SIGNAL \F_S|Add0~29\ : std_logic;
SIGNAL \F_S|Add0~30_combout\ : std_logic;
SIGNAL \F_S|Add0~0_combout\ : std_logic;
SIGNAL \F_S|five_sec~1_combout\ : std_logic;
SIGNAL \F_S|Equal0~1_combout\ : std_logic;
SIGNAL \F_S|Equal0~0_combout\ : std_logic;
SIGNAL \F_S|Equal0~3_combout\ : std_logic;
SIGNAL \F_S|Add0~20_combout\ : std_logic;
SIGNAL \F_S|Equal0~5_combout\ : std_logic;
SIGNAL \F_S|Equal0~7_combout\ : std_logic;
SIGNAL \F_S|five_sec~2_combout\ : std_logic;
SIGNAL \F_S|Add0~31\ : std_logic;
SIGNAL \F_S|Add0~33\ : std_logic;
SIGNAL \F_S|Add0~35\ : std_logic;
SIGNAL \F_S|Add0~37\ : std_logic;
SIGNAL \F_S|Add0~38_combout\ : std_logic;
SIGNAL \F_S|five_sec~7_combout\ : std_logic;
SIGNAL \F_S|Add0~39\ : std_logic;
SIGNAL \F_S|Add0~40_combout\ : std_logic;
SIGNAL \F_S|Add0~41\ : std_logic;
SIGNAL \F_S|Add0~42_combout\ : std_logic;
SIGNAL \F_S|Equal1~2_combout\ : std_logic;
SIGNAL \F_S|Equal1~1_combout\ : std_logic;
SIGNAL \F_S|Equal1~3_combout\ : std_logic;
SIGNAL \F_S|flag_five_sec~0_combout\ : std_logic;
SIGNAL \F_S|flag_five_sec~q\ : std_logic;
SIGNAL \Hum|protocol[0]~0_combout\ : std_logic;
SIGNAL \Hum|Equal0~0_combout\ : std_logic;
SIGNAL \Hum|shet[0]~20_combout\ : std_logic;
SIGNAL \Hum|mstate~13_combout\ : std_logic;
SIGNAL \Hum|mstate.001~q\ : std_logic;
SIGNAL \Hum|shet[4]~34_combout\ : std_logic;
SIGNAL \Hum|shet[3]~27\ : std_logic;
SIGNAL \Hum|shet[4]~28_combout\ : std_logic;
SIGNAL \Hum|mstate~11_combout\ : std_logic;
SIGNAL \Hum|mstate~12_combout\ : std_logic;
SIGNAL \Hum|mstate.010~q\ : std_logic;
SIGNAL \Hum|shet[4]~40_combout\ : std_logic;
SIGNAL \Hum|shet[4]~29\ : std_logic;
SIGNAL \Hum|shet[5]~31\ : std_logic;
SIGNAL \Hum|shet[6]~33\ : std_logic;
SIGNAL \Hum|shet[7]~41_combout\ : std_logic;
SIGNAL \Hum|shet[7]~42\ : std_logic;
SIGNAL \Hum|shet[8]~43_combout\ : std_logic;
SIGNAL \Hum|shet[8]~44\ : std_logic;
SIGNAL \Hum|shet[9]~45_combout\ : std_logic;
SIGNAL \Hum|shet[9]~46\ : std_logic;
SIGNAL \Hum|shet[10]~47_combout\ : std_logic;
SIGNAL \Hum|shet[10]~48\ : std_logic;
SIGNAL \Hum|shet[11]~49_combout\ : std_logic;
SIGNAL \Hum|shet[4]~18_combout\ : std_logic;
SIGNAL \Hum|shet[11]~50\ : std_logic;
SIGNAL \Hum|shet[12]~51_combout\ : std_logic;
SIGNAL \Hum|shet[12]~52\ : std_logic;
SIGNAL \Hum|shet[13]~54\ : std_logic;
SIGNAL \Hum|shet[14]~55_combout\ : std_logic;
SIGNAL \Hum|shet[14]~56\ : std_logic;
SIGNAL \Hum|shet[15]~57_combout\ : std_logic;
SIGNAL \Hum|shet[13]~53_combout\ : std_logic;
SIGNAL \Hum|LessThan4~0_combout\ : std_logic;
SIGNAL \Hum|shet[5]~30_combout\ : std_logic;
SIGNAL \Hum|shet[6]~32_combout\ : std_logic;
SIGNAL \Hum|LessThan4~3_combout\ : std_logic;
SIGNAL \Data_H~input_o\ : std_logic;
SIGNAL \Hum|data_rec[0]~feeder_combout\ : std_logic;
SIGNAL \Hum|data_rec[1]~0_combout\ : std_logic;
SIGNAL \Hum|HYM2[39]~0_combout\ : std_logic;
SIGNAL \Hum|always2~3_combout\ : std_logic;
SIGNAL \Hum|always2~4_combout\ : std_logic;
SIGNAL \Hum|always2~5_combout\ : std_logic;
SIGNAL \Hum|HYM2[39]~1_combout\ : std_logic;
SIGNAL \Hum|shet[4]~39_combout\ : std_logic;
SIGNAL \Hum|shet[0]~21\ : std_logic;
SIGNAL \Hum|shet[1]~22_combout\ : std_logic;
SIGNAL \Hum|shet[1]~23\ : std_logic;
SIGNAL \Hum|shet[2]~24_combout\ : std_logic;
SIGNAL \Hum|shet[2]~25\ : std_logic;
SIGNAL \Hum|shet[3]~26_combout\ : std_logic;
SIGNAL \Hum|Data_H_REG~1_combout\ : std_logic;
SIGNAL \Hum|Equal6~2_combout\ : std_logic;
SIGNAL \Hum|Equal6~4_combout\ : std_logic;
SIGNAL \Hum|Data_H_REG~2_combout\ : std_logic;
SIGNAL \Hum|Data_H_REG~q\ : std_logic;
SIGNAL \Hum|Data_H_write~0_combout\ : std_logic;
SIGNAL \Hum|Data_H_write~q\ : std_logic;
SIGNAL \key0~input_o\ : std_logic;
SIGNAL \clk50M~input_o\ : std_logic;
SIGNAL \clk50M~inputclkctrl_outclk\ : std_logic;
SIGNAL \FGD|Add0~23\ : std_logic;
SIGNAL \FGD|Add0~24_combout\ : std_logic;
SIGNAL \FGD|Add0~25\ : std_logic;
SIGNAL \FGD|Add0~27\ : std_logic;
SIGNAL \FGD|Add0~29\ : std_logic;
SIGNAL \FGD|Add0~30_combout\ : std_logic;
SIGNAL \FGD|i~6_combout\ : std_logic;
SIGNAL \FGD|Add0~31\ : std_logic;
SIGNAL \FGD|Add0~32_combout\ : std_logic;
SIGNAL \FGD|Add0~33\ : std_logic;
SIGNAL \FGD|Add0~34_combout\ : std_logic;
SIGNAL \FGD|Add0~35\ : std_logic;
SIGNAL \FGD|Add0~36_combout\ : std_logic;
SIGNAL \FGD|Add0~37\ : std_logic;
SIGNAL \FGD|Add0~39\ : std_logic;
SIGNAL \FGD|Add0~40_combout\ : std_logic;
SIGNAL \FGD|Add0~41\ : std_logic;
SIGNAL \FGD|Add0~43\ : std_logic;
SIGNAL \FGD|Add0~45\ : std_logic;
SIGNAL \FGD|Add0~46_combout\ : std_logic;
SIGNAL \FGD|Add0~44_combout\ : std_logic;
SIGNAL \FGD|Add0~42_combout\ : std_logic;
SIGNAL \FGD|Equal0~6_combout\ : std_logic;
SIGNAL \FGD|Equal0~7_combout\ : std_logic;
SIGNAL \FGD|Add0~47\ : std_logic;
SIGNAL \FGD|Add0~48_combout\ : std_logic;
SIGNAL \FGD|Add0~49\ : std_logic;
SIGNAL \FGD|Add0~50_combout\ : std_logic;
SIGNAL \FGD|Add0~51\ : std_logic;
SIGNAL \FGD|Add0~52_combout\ : std_logic;
SIGNAL \FGD|Add0~53\ : std_logic;
SIGNAL \FGD|Add0~54_combout\ : std_logic;
SIGNAL \FGD|Equal0~8_combout\ : std_logic;
SIGNAL \FGD|Add0~55\ : std_logic;
SIGNAL \FGD|Add0~56_combout\ : std_logic;
SIGNAL \FGD|Add0~57\ : std_logic;
SIGNAL \FGD|Add0~59\ : std_logic;
SIGNAL \FGD|Add0~60_combout\ : std_logic;
SIGNAL \FGD|Add0~58_combout\ : std_logic;
SIGNAL \FGD|Equal0~9_combout\ : std_logic;
SIGNAL \FGD|Equal0~10_combout\ : std_logic;
SIGNAL \FGD|i~1_combout\ : std_logic;
SIGNAL \FGD|Add0~0_combout\ : std_logic;
SIGNAL \FGD|clk1hz~0_combout\ : std_logic;
SIGNAL \FGD|i~0_combout\ : std_logic;
SIGNAL \FGD|Add0~1\ : std_logic;
SIGNAL \FGD|Add0~2_combout\ : std_logic;
SIGNAL \FGD|Add0~3\ : std_logic;
SIGNAL \FGD|Add0~4_combout\ : std_logic;
SIGNAL \FGD|Add0~5\ : std_logic;
SIGNAL \FGD|Add0~7\ : std_logic;
SIGNAL \FGD|Add0~9\ : std_logic;
SIGNAL \FGD|Add0~11\ : std_logic;
SIGNAL \FGD|Add0~13\ : std_logic;
SIGNAL \FGD|Add0~14_combout\ : std_logic;
SIGNAL \FGD|Add0~15\ : std_logic;
SIGNAL \FGD|Add0~16_combout\ : std_logic;
SIGNAL \FGD|i~3_combout\ : std_logic;
SIGNAL \FGD|Add0~17\ : std_logic;
SIGNAL \FGD|Add0~18_combout\ : std_logic;
SIGNAL \FGD|i~4_combout\ : std_logic;
SIGNAL \FGD|Add0~19\ : std_logic;
SIGNAL \FGD|Add0~20_combout\ : std_logic;
SIGNAL \FGD|Add0~21\ : std_logic;
SIGNAL \FGD|Add0~22_combout\ : std_logic;
SIGNAL \FGD|Equal0~2_combout\ : std_logic;
SIGNAL \FGD|i~2_combout\ : std_logic;
SIGNAL \FGD|Add0~10_combout\ : std_logic;
SIGNAL \FGD|Equal0~1_combout\ : std_logic;
SIGNAL \FGD|Add0~6_combout\ : std_logic;
SIGNAL \FGD|Equal0~0_combout\ : std_logic;
SIGNAL \FGD|Equal0~4_combout\ : std_logic;
SIGNAL \FGD|clk1hz~1_combout\ : std_logic;
SIGNAL \FGD|clk1hz~q\ : std_logic;
SIGNAL \SSEL~input_o\ : std_logic;
SIGNAL \SPI_MODULE|SSELr[1]~feeder_combout\ : std_logic;
SIGNAL \Hum|HYM~4_combout\ : std_logic;
SIGNAL \Hum|HYM[33]~1_combout\ : std_logic;
SIGNAL \Hum|HYM~3_combout\ : std_logic;
SIGNAL \Hum|HYM2[37]~feeder_combout\ : std_logic;
SIGNAL \Hum|HYM2[39]~2_combout\ : std_logic;
SIGNAL \SPI_MODULE|HYM_send~3_combout\ : std_logic;
SIGNAL \SCK~input_o\ : std_logic;
SIGNAL \SPI_MODULE|SCKr[1]~feeder_combout\ : std_logic;
SIGNAL \SPI_MODULE|HYM_send[0]~1_combout\ : std_logic;
SIGNAL \SPI_MODULE|HYM_send~2_combout\ : std_logic;
SIGNAL \SPI_MODULE|HYM_send~0_combout\ : std_logic;
SIGNAL \STPS|angle_current[0]~12\ : std_logic;
SIGNAL \STPS|angle_current[1]~13_combout\ : std_logic;
SIGNAL \MOSI~input_o\ : std_logic;
SIGNAL \SPI_MODULE|MOSIr[1]~feeder_combout\ : std_logic;
SIGNAL \SPI_MODULE|byte_data_received[15]~0_combout\ : std_logic;
SIGNAL \STPS|angle_current[0]~11_combout\ : std_logic;
SIGNAL \STPS|Equal0~0_combout\ : std_logic;
SIGNAL \STPS|LessThan1~1_cout\ : std_logic;
SIGNAL \STPS|LessThan1~3_cout\ : std_logic;
SIGNAL \STPS|LessThan1~5_cout\ : std_logic;
SIGNAL \STPS|LessThan1~7_cout\ : std_logic;
SIGNAL \STPS|LessThan1~9_cout\ : std_logic;
SIGNAL \STPS|LessThan1~11_cout\ : std_logic;
SIGNAL \STPS|LessThan1~13_cout\ : std_logic;
SIGNAL \STPS|LessThan1~15_cout\ : std_logic;
SIGNAL \STPS|LessThan1~16_combout\ : std_logic;
SIGNAL \STPS|angle_current[2]~33_combout\ : std_logic;
SIGNAL \STPS|angle_current[1]~14\ : std_logic;
SIGNAL \STPS|angle_current[2]~15_combout\ : std_logic;
SIGNAL \STPS|angle_current[2]~16\ : std_logic;
SIGNAL \STPS|angle_current[3]~17_combout\ : std_logic;
SIGNAL \STPS|angle_current[3]~18\ : std_logic;
SIGNAL \STPS|angle_current[4]~19_combout\ : std_logic;
SIGNAL \STPS|angle_current[4]~20\ : std_logic;
SIGNAL \STPS|angle_current[5]~21_combout\ : std_logic;
SIGNAL \STPS|angle_current[5]~22\ : std_logic;
SIGNAL \STPS|angle_current[6]~23_combout\ : std_logic;
SIGNAL \STPS|angle_current[6]~24\ : std_logic;
SIGNAL \STPS|angle_current[7]~25_combout\ : std_logic;
SIGNAL \STPS|angle_current[7]~26\ : std_logic;
SIGNAL \STPS|angle_current[8]~27_combout\ : std_logic;
SIGNAL \STPS|angle_current[8]~28\ : std_logic;
SIGNAL \STPS|angle_current[9]~29_combout\ : std_logic;
SIGNAL \STPS|angle_current[9]~30\ : std_logic;
SIGNAL \STPS|angle_current[10]~31_combout\ : std_logic;
SIGNAL \STPS|LessThan0~1_cout\ : std_logic;
SIGNAL \STPS|LessThan0~3_cout\ : std_logic;
SIGNAL \STPS|LessThan0~5_cout\ : std_logic;
SIGNAL \STPS|LessThan0~7_cout\ : std_logic;
SIGNAL \STPS|LessThan0~9_cout\ : std_logic;
SIGNAL \STPS|LessThan0~11_cout\ : std_logic;
SIGNAL \STPS|LessThan0~13_cout\ : std_logic;
SIGNAL \STPS|LessThan0~14_combout\ : std_logic;
SIGNAL \STPS|Equal0~1_combout\ : std_logic;
SIGNAL \STPS|M_EN~0_combout\ : std_logic;
SIGNAL \STPS|M_EN~1_combout\ : std_logic;
SIGNAL \STPS|M_EN~q\ : std_logic;
SIGNAL \STPS|DIR~0_combout\ : std_logic;
SIGNAL \STPS|DIR~1_combout\ : std_logic;
SIGNAL \STPS|DIR~q\ : std_logic;
SIGNAL \SDRV|Add0~4_combout\ : std_logic;
SIGNAL \SDRV|Add0~3_combout\ : std_logic;
SIGNAL \SDRV|Mux3~0_combout\ : std_logic;
SIGNAL \SDRV|state[3]~3_combout\ : std_logic;
SIGNAL \SDRV|Add0~1_combout\ : std_logic;
SIGNAL \SDRV|Add0~2_combout\ : std_logic;
SIGNAL \E_s|OUT_final[0]~0_combout\ : std_logic;
SIGNAL \SDRV|Mux2~0_combout\ : std_logic;
SIGNAL \E_s|OUT_final[1]~1_combout\ : std_logic;
SIGNAL \SDRV|Mux1~0_combout\ : std_logic;
SIGNAL \E_s|OUT_final[2]~2_combout\ : std_logic;
SIGNAL \SDRV|Mux0~0_combout\ : std_logic;
SIGNAL \E_s|OUT_final[3]~3_combout\ : std_logic;
SIGNAL \p_w_m|cnt[1]~7_combout\ : std_logic;
SIGNAL \p_w_m|cnt[1]~8\ : std_logic;
SIGNAL \p_w_m|cnt[2]~9_combout\ : std_logic;
SIGNAL \p_w_m|cnt[2]~10\ : std_logic;
SIGNAL \p_w_m|cnt[3]~11_combout\ : std_logic;
SIGNAL \p_w_m|cnt[3]~12\ : std_logic;
SIGNAL \p_w_m|cnt[4]~14\ : std_logic;
SIGNAL \p_w_m|cnt[5]~15_combout\ : std_logic;
SIGNAL \p_w_m|cnt[5]~16\ : std_logic;
SIGNAL \p_w_m|cnt[6]~18\ : std_logic;
SIGNAL \p_w_m|cnt[7]~19_combout\ : std_logic;
SIGNAL \p_w_m|LessThan0~1_cout\ : std_logic;
SIGNAL \p_w_m|LessThan0~3_cout\ : std_logic;
SIGNAL \p_w_m|LessThan0~5_cout\ : std_logic;
SIGNAL \p_w_m|LessThan0~7_cout\ : std_logic;
SIGNAL \p_w_m|LessThan0~9_cout\ : std_logic;
SIGNAL \p_w_m|LessThan0~11_cout\ : std_logic;
SIGNAL \p_w_m|LessThan0~13_cout\ : std_logic;
SIGNAL \p_w_m|LessThan0~14_combout\ : std_logic;
SIGNAL \p_w_m|cnt[0]~21_combout\ : std_logic;
SIGNAL \p_w_m|LessThan1~1_cout\ : std_logic;
SIGNAL \p_w_m|LessThan1~3_cout\ : std_logic;
SIGNAL \p_w_m|LessThan1~5_cout\ : std_logic;
SIGNAL \p_w_m|LessThan1~7_cout\ : std_logic;
SIGNAL \p_w_m|LessThan1~9_cout\ : std_logic;
SIGNAL \p_w_m|LessThan1~11_cout\ : std_logic;
SIGNAL \p_w_m|LessThan1~13_cout\ : std_logic;
SIGNAL \p_w_m|LessThan1~14_combout\ : std_logic;
SIGNAL \p_w_m|cnt[4]~13_combout\ : std_logic;
SIGNAL \p_w_m|LessThan2~1_cout\ : std_logic;
SIGNAL \p_w_m|LessThan2~3_cout\ : std_logic;
SIGNAL \p_w_m|LessThan2~5_cout\ : std_logic;
SIGNAL \p_w_m|LessThan2~7_cout\ : std_logic;
SIGNAL \p_w_m|LessThan2~9_cout\ : std_logic;
SIGNAL \p_w_m|LessThan2~11_cout\ : std_logic;
SIGNAL \p_w_m|LessThan2~13_cout\ : std_logic;
SIGNAL \p_w_m|LessThan2~14_combout\ : std_logic;
SIGNAL \p_w_m|cnt[6]~17_combout\ : std_logic;
SIGNAL \p_w_m|LessThan3~1_cout\ : std_logic;
SIGNAL \p_w_m|LessThan3~3_cout\ : std_logic;
SIGNAL \p_w_m|LessThan3~5_cout\ : std_logic;
SIGNAL \p_w_m|LessThan3~7_cout\ : std_logic;
SIGNAL \p_w_m|LessThan3~9_cout\ : std_logic;
SIGNAL \p_w_m|LessThan3~11_cout\ : std_logic;
SIGNAL \p_w_m|LessThan3~13_cout\ : std_logic;
SIGNAL \p_w_m|LessThan3~14_combout\ : std_logic;
SIGNAL \p_w_m|LessThan4~1_cout\ : std_logic;
SIGNAL \p_w_m|LessThan4~3_cout\ : std_logic;
SIGNAL \p_w_m|LessThan4~5_cout\ : std_logic;
SIGNAL \p_w_m|LessThan4~7_cout\ : std_logic;
SIGNAL \p_w_m|LessThan4~9_cout\ : std_logic;
SIGNAL \p_w_m|LessThan4~11_cout\ : std_logic;
SIGNAL \p_w_m|LessThan4~13_cout\ : std_logic;
SIGNAL \p_w_m|LessThan4~14_combout\ : std_logic;
SIGNAL \p_w_m|LessThan5~1_cout\ : std_logic;
SIGNAL \p_w_m|LessThan5~3_cout\ : std_logic;
SIGNAL \p_w_m|LessThan5~5_cout\ : std_logic;
SIGNAL \p_w_m|LessThan5~7_cout\ : std_logic;
SIGNAL \p_w_m|LessThan5~9_cout\ : std_logic;
SIGNAL \p_w_m|LessThan5~11_cout\ : std_logic;
SIGNAL \p_w_m|LessThan5~13_cout\ : std_logic;
SIGNAL \p_w_m|LessThan5~14_combout\ : std_logic;
SIGNAL \p_w_m|LessThan6~1_cout\ : std_logic;
SIGNAL \p_w_m|LessThan6~3_cout\ : std_logic;
SIGNAL \p_w_m|LessThan6~5_cout\ : std_logic;
SIGNAL \p_w_m|LessThan6~7_cout\ : std_logic;
SIGNAL \p_w_m|LessThan6~9_cout\ : std_logic;
SIGNAL \p_w_m|LessThan6~11_cout\ : std_logic;
SIGNAL \p_w_m|LessThan6~13_cout\ : std_logic;
SIGNAL \p_w_m|LessThan6~14_combout\ : std_logic;
SIGNAL \p_w_m|LessThan7~1_cout\ : std_logic;
SIGNAL \p_w_m|LessThan7~3_cout\ : std_logic;
SIGNAL \p_w_m|LessThan7~5_cout\ : std_logic;
SIGNAL \p_w_m|LessThan7~7_cout\ : std_logic;
SIGNAL \p_w_m|LessThan7~9_cout\ : std_logic;
SIGNAL \p_w_m|LessThan7~11_cout\ : std_logic;
SIGNAL \p_w_m|LessThan7~13_cout\ : std_logic;
SIGNAL \p_w_m|LessThan7~14_combout\ : std_logic;
SIGNAL \p_w_m|LessThan8~1_cout\ : std_logic;
SIGNAL \p_w_m|LessThan8~3_cout\ : std_logic;
SIGNAL \p_w_m|LessThan8~5_cout\ : std_logic;
SIGNAL \p_w_m|LessThan8~7_cout\ : std_logic;
SIGNAL \p_w_m|LessThan8~9_cout\ : std_logic;
SIGNAL \p_w_m|LessThan8~11_cout\ : std_logic;
SIGNAL \p_w_m|LessThan8~13_cout\ : std_logic;
SIGNAL \p_w_m|LessThan8~14_combout\ : std_logic;
SIGNAL \p_w_m|LessThan9~1_cout\ : std_logic;
SIGNAL \p_w_m|LessThan9~3_cout\ : std_logic;
SIGNAL \p_w_m|LessThan9~5_cout\ : std_logic;
SIGNAL \p_w_m|LessThan9~7_cout\ : std_logic;
SIGNAL \p_w_m|LessThan9~9_cout\ : std_logic;
SIGNAL \p_w_m|LessThan9~11_cout\ : std_logic;
SIGNAL \p_w_m|LessThan9~13_cout\ : std_logic;
SIGNAL \p_w_m|LessThan9~14_combout\ : std_logic;
SIGNAL \Hum|Data_H_test~q\ : std_logic;
SIGNAL \p_w_m|cnt\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \SDRV|OUT\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \SDRV|state\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \STPS|angle_current\ : std_logic_vector(10 DOWNTO 0);
SIGNAL \FGD|i\ : std_logic_vector(31 DOWNTO 0);
SIGNAL \FGD|j\ : std_logic_vector(2 DOWNTO 0);
SIGNAL \FGD|z\ : std_logic_vector(5 DOWNTO 0);
SIGNAL \SPI_MODULE|HYM_send\ : std_logic_vector(39 DOWNTO 0);
SIGNAL \SPI_MODULE|MOSIr\ : std_logic_vector(1 DOWNTO 0);
SIGNAL \SPI_MODULE|SCKr\ : std_logic_vector(2 DOWNTO 0);
SIGNAL \SPI_MODULE|SSELr\ : std_logic_vector(2 DOWNTO 0);
SIGNAL \SPI_MODULE|byte_data_received\ : std_logic_vector(87 DOWNTO 0);
SIGNAL \F_S|five_sec\ : std_logic_vector(22 DOWNTO 0);
SIGNAL \Hum|HYM\ : std_logic_vector(39 DOWNTO 0);
SIGNAL \Hum|HYM2\ : std_logic_vector(39 DOWNTO 0);
SIGNAL \Hum|data_rec\ : std_logic_vector(2 DOWNTO 0);
SIGNAL \Hum|id_gorb\ : std_logic_vector(5 DOWNTO 0);
SIGNAL \Hum|protocol\ : std_logic_vector(2 DOWNTO 0);
SIGNAL \Hum|shet\ : std_logic_vector(15 DOWNTO 0);
SIGNAL \F_S|ALT_INV_flag_five_sec~q\ : std_logic;

BEGIN

led0 <= ww_led0;
led1 <= ww_led1;
MISO <= ww_MISO;
OUT_final <= ww_OUT_final;
PWM_out <= ww_PWM_out;
PWM_out2 <= ww_PWM_out2;
PWM_out3 <= ww_PWM_out3;
PWM_out4 <= ww_PWM_out4;
PWM_out5 <= ww_PWM_out5;
PWM_out6 <= ww_PWM_out6;
PWM_out7 <= ww_PWM_out7;
PWM_out8 <= ww_PWM_out8;
PWM_out9 <= ww_PWM_out9;
PWM_out_vent <= ww_PWM_out_vent;
flag_five_sec <= ww_flag_five_sec;
Data_H_test <= ww_Data_H_test;
ww_key0 <= key0;
ww_clk50M <= clk50M;
ww_SCK <= SCK;
ww_MOSI <= MOSI;
ww_SSEL <= SSEL;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\RL|Q~clkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \RL|Q~combout\);

\FGD|clk1M~clkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \FGD|clk1M~q\);

\FGD|clk25M~clkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \FGD|clk25M~q\);

\FGD|clk1hz~clkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \FGD|clk1hz~q\);

\clk50M~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \clk50M~input_o\);
\F_S|ALT_INV_flag_five_sec~q\ <= NOT \F_S|flag_five_sec~q\;

-- Location: LCCOMB_X7_Y10_N8
\FGD|Add0~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \FGD|Add0~8_combout\ = (\FGD|i\(4) & (\FGD|Add0~7\ $ (GND))) # (!\FGD|i\(4) & (!\FGD|Add0~7\ & VCC))
-- \FGD|Add0~9\ = CARRY((\FGD|i\(4) & !\FGD|Add0~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \FGD|i\(4),
	datad => VCC,
	cin => \FGD|Add0~7\,
	combout => \FGD|Add0~8_combout\,
	cout => \FGD|Add0~9\);

-- Location: LCCOMB_X7_Y10_N12
\FGD|Add0~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \FGD|Add0~12_combout\ = (\FGD|i\(6) & (\FGD|Add0~11\ $ (GND))) # (!\FGD|i\(6) & (!\FGD|Add0~11\ & VCC))
-- \FGD|Add0~13\ = CARRY((\FGD|i\(6) & !\FGD|Add0~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \FGD|i\(6),
	datad => VCC,
	cin => \FGD|Add0~11\,
	combout => \FGD|Add0~12_combout\,
	cout => \FGD|Add0~13\);

-- Location: LCCOMB_X7_Y10_N26
\FGD|Add0~26\ : cycloneive_lcell_comb
-- Equation(s):
-- \FGD|Add0~26_combout\ = (\FGD|i\(13) & (!\FGD|Add0~25\)) # (!\FGD|i\(13) & ((\FGD|Add0~25\) # (GND)))
-- \FGD|Add0~27\ = CARRY((!\FGD|Add0~25\) # (!\FGD|i\(13)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \FGD|i\(13),
	datad => VCC,
	cin => \FGD|Add0~25\,
	combout => \FGD|Add0~26_combout\,
	cout => \FGD|Add0~27\);

-- Location: LCCOMB_X7_Y10_N28
\FGD|Add0~28\ : cycloneive_lcell_comb
-- Equation(s):
-- \FGD|Add0~28_combout\ = (\FGD|i\(14) & (\FGD|Add0~27\ $ (GND))) # (!\FGD|i\(14) & (!\FGD|Add0~27\ & VCC))
-- \FGD|Add0~29\ = CARRY((\FGD|i\(14) & !\FGD|Add0~27\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \FGD|i\(14),
	datad => VCC,
	cin => \FGD|Add0~27\,
	combout => \FGD|Add0~28_combout\,
	cout => \FGD|Add0~29\);

-- Location: LCCOMB_X7_Y9_N6
\FGD|Add0~38\ : cycloneive_lcell_comb
-- Equation(s):
-- \FGD|Add0~38_combout\ = (\FGD|i\(19) & (!\FGD|Add0~37\)) # (!\FGD|i\(19) & ((\FGD|Add0~37\) # (GND)))
-- \FGD|Add0~39\ = CARRY((!\FGD|Add0~37\) # (!\FGD|i\(19)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \FGD|i\(19),
	datad => VCC,
	cin => \FGD|Add0~37\,
	combout => \FGD|Add0~38_combout\,
	cout => \FGD|Add0~39\);

-- Location: LCCOMB_X7_Y9_N28
\FGD|Add0~60\ : cycloneive_lcell_comb
-- Equation(s):
-- \FGD|Add0~60_combout\ = (\FGD|i\(30) & (\FGD|Add0~59\ $ (GND))) # (!\FGD|i\(30) & (!\FGD|Add0~59\ & VCC))
-- \FGD|Add0~61\ = CARRY((\FGD|i\(30) & !\FGD|Add0~59\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \FGD|i\(30),
	datad => VCC,
	cin => \FGD|Add0~59\,
	combout => \FGD|Add0~60_combout\,
	cout => \FGD|Add0~61\);

-- Location: LCCOMB_X7_Y9_N30
\FGD|Add0~62\ : cycloneive_lcell_comb
-- Equation(s):
-- \FGD|Add0~62_combout\ = \FGD|i\(31) $ (\FGD|Add0~61\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \FGD|i\(31),
	cin => \FGD|Add0~61\,
	combout => \FGD|Add0~62_combout\);

-- Location: FF_X18_Y12_N15
\Hum|id_gorb[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \FGD|clk1M~clkctrl_outclk\,
	d => \Hum|id_gorb[0]~6_combout\,
	sclr => \Hum|id_gorb[4]~8_combout\,
	ena => \Hum|id_gorb[4]~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Hum|id_gorb\(0));

-- Location: FF_X18_Y12_N17
\Hum|id_gorb[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \FGD|clk1M~clkctrl_outclk\,
	d => \Hum|id_gorb[1]~11_combout\,
	sclr => \Hum|id_gorb[4]~8_combout\,
	ena => \Hum|id_gorb[4]~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Hum|id_gorb\(1));

-- Location: FF_X18_Y12_N19
\Hum|id_gorb[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \FGD|clk1M~clkctrl_outclk\,
	d => \Hum|id_gorb[2]~13_combout\,
	sclr => \Hum|id_gorb[4]~8_combout\,
	ena => \Hum|id_gorb[4]~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Hum|id_gorb\(2));

-- Location: FF_X18_Y12_N21
\Hum|id_gorb[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \FGD|clk1M~clkctrl_outclk\,
	d => \Hum|id_gorb[3]~15_combout\,
	sclr => \Hum|id_gorb[4]~8_combout\,
	ena => \Hum|id_gorb[4]~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Hum|id_gorb\(3));

-- Location: FF_X18_Y12_N23
\Hum|id_gorb[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \FGD|clk1M~clkctrl_outclk\,
	d => \Hum|id_gorb[4]~17_combout\,
	sclr => \Hum|id_gorb[4]~8_combout\,
	ena => \Hum|id_gorb[4]~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Hum|id_gorb\(4));

-- Location: FF_X18_Y12_N25
\Hum|id_gorb[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \FGD|clk1M~clkctrl_outclk\,
	d => \Hum|id_gorb[5]~19_combout\,
	sclr => \Hum|id_gorb[4]~8_combout\,
	ena => \Hum|id_gorb[4]~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Hum|id_gorb\(5));

-- Location: LCCOMB_X5_Y2_N12
\F_S|Add0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \F_S|Add0~2_combout\ = (\F_S|five_sec\(1) & (!\F_S|Add0~1\)) # (!\F_S|five_sec\(1) & ((\F_S|Add0~1\) # (GND)))
-- \F_S|Add0~3\ = CARRY((!\F_S|Add0~1\) # (!\F_S|five_sec\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \F_S|five_sec\(1),
	datad => VCC,
	cin => \F_S|Add0~1\,
	combout => \F_S|Add0~2_combout\,
	cout => \F_S|Add0~3\);

-- Location: LCCOMB_X5_Y2_N26
\F_S|Add0~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \F_S|Add0~16_combout\ = (\F_S|five_sec\(8) & (\F_S|Add0~15\ $ (GND))) # (!\F_S|five_sec\(8) & (!\F_S|Add0~15\ & VCC))
-- \F_S|Add0~17\ = CARRY((\F_S|five_sec\(8) & !\F_S|Add0~15\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \F_S|five_sec\(8),
	datad => VCC,
	cin => \F_S|Add0~15\,
	combout => \F_S|Add0~16_combout\,
	cout => \F_S|Add0~17\);

-- Location: LCCOMB_X5_Y2_N28
\F_S|Add0~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \F_S|Add0~18_combout\ = (\F_S|five_sec\(9) & (!\F_S|Add0~17\)) # (!\F_S|five_sec\(9) & ((\F_S|Add0~17\) # (GND)))
-- \F_S|Add0~19\ = CARRY((!\F_S|Add0~17\) # (!\F_S|five_sec\(9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \F_S|five_sec\(9),
	datad => VCC,
	cin => \F_S|Add0~17\,
	combout => \F_S|Add0~18_combout\,
	cout => \F_S|Add0~19\);

-- Location: LCCOMB_X5_Y1_N6
\F_S|Add0~28\ : cycloneive_lcell_comb
-- Equation(s):
-- \F_S|Add0~28_combout\ = (\F_S|five_sec\(14) & (\F_S|Add0~27\ $ (GND))) # (!\F_S|five_sec\(14) & (!\F_S|Add0~27\ & VCC))
-- \F_S|Add0~29\ = CARRY((\F_S|five_sec\(14) & !\F_S|Add0~27\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \F_S|five_sec\(14),
	datad => VCC,
	cin => \F_S|Add0~27\,
	combout => \F_S|Add0~28_combout\,
	cout => \F_S|Add0~29\);

-- Location: LCCOMB_X5_Y1_N10
\F_S|Add0~32\ : cycloneive_lcell_comb
-- Equation(s):
-- \F_S|Add0~32_combout\ = (\F_S|five_sec\(16) & (\F_S|Add0~31\ $ (GND))) # (!\F_S|five_sec\(16) & (!\F_S|Add0~31\ & VCC))
-- \F_S|Add0~33\ = CARRY((\F_S|five_sec\(16) & !\F_S|Add0~31\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \F_S|five_sec\(16),
	datad => VCC,
	cin => \F_S|Add0~31\,
	combout => \F_S|Add0~32_combout\,
	cout => \F_S|Add0~33\);

-- Location: LCCOMB_X5_Y1_N12
\F_S|Add0~34\ : cycloneive_lcell_comb
-- Equation(s):
-- \F_S|Add0~34_combout\ = (\F_S|five_sec\(17) & (!\F_S|Add0~33\)) # (!\F_S|five_sec\(17) & ((\F_S|Add0~33\) # (GND)))
-- \F_S|Add0~35\ = CARRY((!\F_S|Add0~33\) # (!\F_S|five_sec\(17)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \F_S|five_sec\(17),
	datad => VCC,
	cin => \F_S|Add0~33\,
	combout => \F_S|Add0~34_combout\,
	cout => \F_S|Add0~35\);

-- Location: LCCOMB_X5_Y1_N14
\F_S|Add0~36\ : cycloneive_lcell_comb
-- Equation(s):
-- \F_S|Add0~36_combout\ = (\F_S|five_sec\(18) & (\F_S|Add0~35\ $ (GND))) # (!\F_S|five_sec\(18) & (!\F_S|Add0~35\ & VCC))
-- \F_S|Add0~37\ = CARRY((\F_S|five_sec\(18) & !\F_S|Add0~35\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \F_S|five_sec\(18),
	datad => VCC,
	cin => \F_S|Add0~35\,
	combout => \F_S|Add0~36_combout\,
	cout => \F_S|Add0~37\);

-- Location: LCCOMB_X18_Y12_N14
\Hum|id_gorb[0]~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \Hum|id_gorb[0]~6_combout\ = \Hum|id_gorb\(0) $ (VCC)
-- \Hum|id_gorb[0]~7\ = CARRY(\Hum|id_gorb\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Hum|id_gorb\(0),
	datad => VCC,
	combout => \Hum|id_gorb[0]~6_combout\,
	cout => \Hum|id_gorb[0]~7\);

-- Location: LCCOMB_X18_Y12_N16
\Hum|id_gorb[1]~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \Hum|id_gorb[1]~11_combout\ = (\Hum|id_gorb\(1) & (!\Hum|id_gorb[0]~7\)) # (!\Hum|id_gorb\(1) & ((\Hum|id_gorb[0]~7\) # (GND)))
-- \Hum|id_gorb[1]~12\ = CARRY((!\Hum|id_gorb[0]~7\) # (!\Hum|id_gorb\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \Hum|id_gorb\(1),
	datad => VCC,
	cin => \Hum|id_gorb[0]~7\,
	combout => \Hum|id_gorb[1]~11_combout\,
	cout => \Hum|id_gorb[1]~12\);

-- Location: LCCOMB_X18_Y12_N18
\Hum|id_gorb[2]~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \Hum|id_gorb[2]~13_combout\ = (\Hum|id_gorb\(2) & (\Hum|id_gorb[1]~12\ $ (GND))) # (!\Hum|id_gorb\(2) & (!\Hum|id_gorb[1]~12\ & VCC))
-- \Hum|id_gorb[2]~14\ = CARRY((\Hum|id_gorb\(2) & !\Hum|id_gorb[1]~12\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \Hum|id_gorb\(2),
	datad => VCC,
	cin => \Hum|id_gorb[1]~12\,
	combout => \Hum|id_gorb[2]~13_combout\,
	cout => \Hum|id_gorb[2]~14\);

-- Location: LCCOMB_X18_Y12_N20
\Hum|id_gorb[3]~15\ : cycloneive_lcell_comb
-- Equation(s):
-- \Hum|id_gorb[3]~15_combout\ = (\Hum|id_gorb\(3) & (!\Hum|id_gorb[2]~14\)) # (!\Hum|id_gorb\(3) & ((\Hum|id_gorb[2]~14\) # (GND)))
-- \Hum|id_gorb[3]~16\ = CARRY((!\Hum|id_gorb[2]~14\) # (!\Hum|id_gorb\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \Hum|id_gorb\(3),
	datad => VCC,
	cin => \Hum|id_gorb[2]~14\,
	combout => \Hum|id_gorb[3]~15_combout\,
	cout => \Hum|id_gorb[3]~16\);

-- Location: LCCOMB_X18_Y12_N22
\Hum|id_gorb[4]~17\ : cycloneive_lcell_comb
-- Equation(s):
-- \Hum|id_gorb[4]~17_combout\ = (\Hum|id_gorb\(4) & (\Hum|id_gorb[3]~16\ $ (GND))) # (!\Hum|id_gorb\(4) & (!\Hum|id_gorb[3]~16\ & VCC))
-- \Hum|id_gorb[4]~18\ = CARRY((\Hum|id_gorb\(4) & !\Hum|id_gorb[3]~16\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Hum|id_gorb\(4),
	datad => VCC,
	cin => \Hum|id_gorb[3]~16\,
	combout => \Hum|id_gorb[4]~17_combout\,
	cout => \Hum|id_gorb[4]~18\);

-- Location: LCCOMB_X18_Y12_N24
\Hum|id_gorb[5]~19\ : cycloneive_lcell_comb
-- Equation(s):
-- \Hum|id_gorb[5]~19_combout\ = \Hum|id_gorb[4]~18\ $ (\Hum|id_gorb\(5))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \Hum|id_gorb\(5),
	cin => \Hum|id_gorb[4]~18\,
	combout => \Hum|id_gorb[5]~19_combout\);

-- Location: LCCOMB_X1_Y11_N6
\FGD|Add2~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \FGD|Add2~4_combout\ = (\FGD|z\(2) & (\FGD|Add2~3\ $ (GND))) # (!\FGD|z\(2) & (!\FGD|Add2~3\ & VCC))
-- \FGD|Add2~5\ = CARRY((\FGD|z\(2) & !\FGD|Add2~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \FGD|z\(2),
	datad => VCC,
	cin => \FGD|Add2~3\,
	combout => \FGD|Add2~4_combout\,
	cout => \FGD|Add2~5\);

-- Location: LCCOMB_X1_Y11_N10
\FGD|Add2~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \FGD|Add2~8_combout\ = (\FGD|z\(4) & (\FGD|Add2~7\ $ (GND))) # (!\FGD|z\(4) & (!\FGD|Add2~7\ & VCC))
-- \FGD|Add2~9\ = CARRY((\FGD|z\(4) & !\FGD|Add2~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \FGD|z\(4),
	datad => VCC,
	cin => \FGD|Add2~7\,
	combout => \FGD|Add2~8_combout\,
	cout => \FGD|Add2~9\);

-- Location: FF_X8_Y10_N7
\FGD|i[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk50M~inputclkctrl_outclk\,
	d => \FGD|i~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FGD|i\(14));

-- Location: FF_X7_Y10_N27
\FGD|i[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk50M~inputclkctrl_outclk\,
	d => \FGD|Add0~26_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FGD|i\(13));

-- Location: LCCOMB_X8_Y10_N10
\FGD|Equal0~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \FGD|Equal0~3_combout\ = (\FGD|i\(14) & (!\FGD|i\(12) & (!\FGD|i\(13) & \FGD|i\(15))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FGD|i\(14),
	datab => \FGD|i\(12),
	datac => \FGD|i\(13),
	datad => \FGD|i\(15),
	combout => \FGD|Equal0~3_combout\);

-- Location: FF_X7_Y9_N7
\FGD|i[19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk50M~inputclkctrl_outclk\,
	d => \FGD|Add0~38_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FGD|i\(19));

-- Location: LCCOMB_X8_Y10_N22
\FGD|Equal0~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \FGD|Equal0~5_combout\ = (!\FGD|i\(18) & (!\FGD|i\(19) & (!\FGD|i\(16) & !\FGD|i\(17))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FGD|i\(18),
	datab => \FGD|i\(19),
	datac => \FGD|i\(16),
	datad => \FGD|i\(17),
	combout => \FGD|Equal0~5_combout\);

-- Location: FF_X7_Y9_N31
\FGD|i[31]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk50M~inputclkctrl_outclk\,
	d => \FGD|Add0~62_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FGD|i\(31));

-- Location: FF_X13_Y14_N9
\Hum|HYM2[39]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \FGD|clk1M~clkctrl_outclk\,
	d => \Hum|HYM2[39]~feeder_combout\,
	ena => \Hum|HYM2[39]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Hum|HYM2\(39));

-- Location: FF_X9_Y11_N31
\STPS|dev_state\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \FGD|clk1hz~clkctrl_outclk\,
	d => \STPS|dev_state~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \STPS|dev_state~q\);

-- Location: LCCOMB_X10_Y11_N26
\STPS|Equal0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \STPS|Equal0~2_combout\ = (\STPS|angle_current\(4) & (\SPI_MODULE|byte_data_received\(1) & (\STPS|angle_current\(3) $ (!\SPI_MODULE|byte_data_received\(0))))) # (!\STPS|angle_current\(4) & (!\SPI_MODULE|byte_data_received\(1) & (\STPS|angle_current\(3) $ 
-- (!\SPI_MODULE|byte_data_received\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000001001000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \STPS|angle_current\(4),
	datab => \STPS|angle_current\(3),
	datac => \SPI_MODULE|byte_data_received\(0),
	datad => \SPI_MODULE|byte_data_received\(1),
	combout => \STPS|Equal0~2_combout\);

-- Location: LCCOMB_X10_Y11_N22
\STPS|Equal0~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \STPS|Equal0~3_combout\ = (\SPI_MODULE|byte_data_received\(3) & (\STPS|angle_current\(6) & (\SPI_MODULE|byte_data_received\(2) $ (!\STPS|angle_current\(5))))) # (!\SPI_MODULE|byte_data_received\(3) & (!\STPS|angle_current\(6) & 
-- (\SPI_MODULE|byte_data_received\(2) $ (!\STPS|angle_current\(5)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001000000001001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SPI_MODULE|byte_data_received\(3),
	datab => \STPS|angle_current\(6),
	datac => \SPI_MODULE|byte_data_received\(2),
	datad => \STPS|angle_current\(5),
	combout => \STPS|Equal0~3_combout\);

-- Location: LCCOMB_X10_Y11_N30
\STPS|Equal0~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \STPS|Equal0~4_combout\ = (\STPS|angle_current\(7) & (\SPI_MODULE|byte_data_received\(4) & (\STPS|angle_current\(8) $ (!\SPI_MODULE|byte_data_received\(5))))) # (!\STPS|angle_current\(7) & (!\SPI_MODULE|byte_data_received\(4) & (\STPS|angle_current\(8) $ 
-- (!\SPI_MODULE|byte_data_received\(5)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000010000100001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \STPS|angle_current\(7),
	datab => \STPS|angle_current\(8),
	datac => \SPI_MODULE|byte_data_received\(4),
	datad => \SPI_MODULE|byte_data_received\(5),
	combout => \STPS|Equal0~4_combout\);

-- Location: LCCOMB_X10_Y11_N20
\STPS|Equal0~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \STPS|Equal0~5_combout\ = (\STPS|Equal0~0_combout\ & (\STPS|Equal0~4_combout\ & (\STPS|Equal0~3_combout\ & \STPS|Equal0~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \STPS|Equal0~0_combout\,
	datab => \STPS|Equal0~4_combout\,
	datac => \STPS|Equal0~3_combout\,
	datad => \STPS|Equal0~2_combout\,
	combout => \STPS|Equal0~5_combout\);

-- Location: FF_X17_Y3_N13
\SDRV|state[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \RL|Q~clkctrl_outclk\,
	d => \SDRV|state[0]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \SDRV|state\(0));

-- Location: FF_X33_Y11_N23
\FGD|clk25M\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk50M~inputclkctrl_outclk\,
	d => \FGD|clk25M~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FGD|clk25M~q\);

-- Location: FF_X6_Y1_N11
\F_S|five_sec[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \FGD|clk1M~clkctrl_outclk\,
	d => \F_S|five_sec~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \F_S|five_sec\(8));

-- Location: FF_X5_Y2_N13
\F_S|five_sec[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \FGD|clk1M~clkctrl_outclk\,
	d => \F_S|Add0~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \F_S|five_sec\(1));

-- Location: FF_X5_Y1_N11
\F_S|five_sec[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \FGD|clk1M~clkctrl_outclk\,
	d => \F_S|Add0~32_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \F_S|five_sec\(16));

-- Location: LCCOMB_X5_Y2_N6
\F_S|Equal0~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \F_S|Equal0~4_combout\ = (!\F_S|five_sec\(5) & (!\F_S|five_sec\(7) & (\F_S|five_sec\(6) & \F_S|five_sec\(9))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \F_S|five_sec\(5),
	datab => \F_S|five_sec\(7),
	datac => \F_S|five_sec\(6),
	datad => \F_S|five_sec\(9),
	combout => \F_S|Equal0~4_combout\);

-- Location: FF_X6_Y1_N7
\F_S|five_sec[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \FGD|clk1M~clkctrl_outclk\,
	d => \F_S|five_sec~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \F_S|five_sec\(14));

-- Location: FF_X5_Y1_N13
\F_S|five_sec[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \FGD|clk1M~clkctrl_outclk\,
	d => \F_S|Add0~34_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \F_S|five_sec\(17));

-- Location: LCCOMB_X5_Y2_N8
\F_S|Equal1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \F_S|Equal1~0_combout\ = (\F_S|five_sec\(5) & (\F_S|five_sec\(7) & (!\F_S|five_sec\(6) & !\F_S|five_sec\(9))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \F_S|five_sec\(5),
	datab => \F_S|five_sec\(7),
	datac => \F_S|five_sec\(6),
	datad => \F_S|five_sec\(9),
	combout => \F_S|Equal1~0_combout\);

-- Location: LCCOMB_X8_Y10_N6
\FGD|i~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \FGD|i~5_combout\ = (\FGD|Add0~28_combout\ & !\FGD|Equal0~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \FGD|Add0~28_combout\,
	datac => \FGD|Equal0~10_combout\,
	combout => \FGD|i~5_combout\);

-- Location: FF_X13_Y14_N3
\Hum|HYM2[38]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \FGD|clk1M~clkctrl_outclk\,
	d => \Hum|HYM2[38]~feeder_combout\,
	ena => \Hum|HYM2[39]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Hum|HYM2\(38));

-- Location: FF_X13_Y14_N21
\Hum|HYM[39]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \FGD|clk1M~clkctrl_outclk\,
	d => \Hum|HYM~0_combout\,
	ena => \Hum|HYM[33]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Hum|HYM\(39));

-- Location: LCCOMB_X16_Y12_N26
\Hum|shet[4]~19\ : cycloneive_lcell_comb
-- Equation(s):
-- \Hum|shet[4]~19_combout\ = (!\Hum|shet\(14) & (!\Hum|shet\(10) & !\Hum|shet\(9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Hum|shet\(14),
	datac => \Hum|shet\(10),
	datad => \Hum|shet\(9),
	combout => \Hum|shet[4]~19_combout\);

-- Location: LCCOMB_X18_Y12_N12
\Hum|Equal5~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Hum|Equal5~0_combout\ = (!\Hum|id_gorb\(3) & (!\Hum|id_gorb\(2) & (\Hum|id_gorb\(0) & !\Hum|id_gorb\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Hum|id_gorb\(3),
	datab => \Hum|id_gorb\(2),
	datac => \Hum|id_gorb\(0),
	datad => \Hum|id_gorb\(1),
	combout => \Hum|Equal5~0_combout\);

-- Location: LCCOMB_X18_Y12_N6
\Hum|Equal5~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Hum|Equal5~1_combout\ = (!\Hum|id_gorb\(5) & (!\Hum|id_gorb\(4) & \Hum|Equal5~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Hum|id_gorb\(5),
	datac => \Hum|id_gorb\(4),
	datad => \Hum|Equal5~0_combout\,
	combout => \Hum|Equal5~1_combout\);

-- Location: LCCOMB_X17_Y12_N22
\Hum|always2~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Hum|always2~0_combout\ = (!\Hum|Equal5~1_combout\ & (!\Hum|data_rec\(1) & (\Hum|data_rec\(2) & \Hum|LessThan4~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Hum|Equal5~1_combout\,
	datab => \Hum|data_rec\(1),
	datac => \Hum|data_rec\(2),
	datad => \Hum|LessThan4~0_combout\,
	combout => \Hum|always2~0_combout\);

-- Location: LCCOMB_X17_Y12_N20
\Hum|LessThan3~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Hum|LessThan3~0_combout\ = (!\Hum|shet\(2) & ((!\Hum|shet\(0)) # (!\Hum|shet\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001100110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Hum|shet\(2),
	datac => \Hum|shet\(1),
	datad => \Hum|shet\(0),
	combout => \Hum|LessThan3~0_combout\);

-- Location: LCCOMB_X17_Y12_N18
\Hum|always2~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Hum|always2~1_combout\ = (\Hum|shet\(4) & (((!\Hum|shet\(5))))) # (!\Hum|shet\(4) & ((\Hum|shet\(3) & (!\Hum|shet\(5) & !\Hum|LessThan3~0_combout\)) # (!\Hum|shet\(3) & (\Hum|shet\(5) & \Hum|LessThan3~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001101000001110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Hum|shet\(4),
	datab => \Hum|shet\(3),
	datac => \Hum|shet\(5),
	datad => \Hum|LessThan3~0_combout\,
	combout => \Hum|always2~1_combout\);

-- Location: LCCOMB_X17_Y12_N2
\Hum|always2~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Hum|always2~2_combout\ = ((\Hum|shet\(6)) # (!\Hum|always2~0_combout\)) # (!\Hum|always2~1_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Hum|always2~1_combout\,
	datac => \Hum|always2~0_combout\,
	datad => \Hum|shet\(6),
	combout => \Hum|always2~2_combout\);

-- Location: LCCOMB_X17_Y12_N6
\Hum|LessThan4~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Hum|LessThan4~1_combout\ = (\Hum|shet\(2) & ((\Hum|shet\(1)) # (\Hum|shet\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Hum|shet\(2),
	datac => \Hum|shet\(1),
	datad => \Hum|shet\(0),
	combout => \Hum|LessThan4~1_combout\);

-- Location: LCCOMB_X17_Y12_N24
\Hum|LessThan4~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Hum|LessThan4~2_combout\ = (\Hum|shet\(4)) # ((\Hum|shet\(3)) # (\Hum|LessThan4~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Hum|shet\(4),
	datac => \Hum|shet\(3),
	datad => \Hum|LessThan4~1_combout\,
	combout => \Hum|LessThan4~2_combout\);

-- Location: FF_X1_Y11_N7
\FGD|z[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk50M~inputclkctrl_outclk\,
	d => \FGD|Add2~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FGD|z\(2));

-- Location: LCCOMB_X9_Y11_N30
\STPS|dev_state~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \STPS|dev_state~0_combout\ = (\STPS|dev_state~q\) # (!\key0~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \STPS|dev_state~q\,
	datad => \key0~input_o\,
	combout => \STPS|dev_state~0_combout\);

-- Location: LCCOMB_X9_Y11_N26
\RL|Q\ : cycloneive_lcell_comb
-- Equation(s):
-- \RL|Q~combout\ = LCELL((\FGD|clk1hz~q\ & \STPS|M_EN~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \FGD|clk1hz~q\,
	datad => \STPS|M_EN~q\,
	combout => \RL|Q~combout\);

-- Location: FF_X33_Y11_N11
\FGD|j[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk50M~inputclkctrl_outclk\,
	d => \FGD|j~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FGD|j\(0));

-- Location: FF_X33_Y11_N1
\FGD|j[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk50M~inputclkctrl_outclk\,
	d => \FGD|j[2]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FGD|j\(2));

-- Location: FF_X33_Y11_N3
\FGD|j[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk50M~inputclkctrl_outclk\,
	d => \FGD|j~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FGD|j\(1));

-- Location: LCCOMB_X33_Y11_N22
\FGD|clk25M~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \FGD|clk25M~0_combout\ = \FGD|clk25M~q\ $ (((!\FGD|j\(0) & (\FGD|j\(1) & !\FGD|j\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010110100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FGD|j\(0),
	datab => \FGD|j\(1),
	datac => \FGD|clk25M~q\,
	datad => \FGD|j\(2),
	combout => \FGD|clk25M~0_combout\);

-- Location: LCCOMB_X6_Y1_N10
\F_S|five_sec~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \F_S|five_sec~0_combout\ = (\F_S|Add0~16_combout\ & !\F_S|Equal0~7_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \F_S|Add0~16_combout\,
	datad => \F_S|Equal0~7_combout\,
	combout => \F_S|five_sec~0_combout\);

-- Location: LCCOMB_X6_Y1_N6
\F_S|five_sec~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \F_S|five_sec~6_combout\ = (\F_S|Add0~28_combout\ & !\F_S|Equal0~7_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \F_S|Add0~28_combout\,
	datad => \F_S|Equal0~7_combout\,
	combout => \F_S|five_sec~6_combout\);

-- Location: FF_X14_Y14_N7
\SPI_MODULE|HYM_send[36]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \FGD|clk1M~clkctrl_outclk\,
	d => \SPI_MODULE|HYM_send~4_combout\,
	ena => \SPI_MODULE|HYM_send[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \SPI_MODULE|HYM_send\(36));

-- Location: FF_X13_Y14_N1
\Hum|HYM[38]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \FGD|clk1M~clkctrl_outclk\,
	d => \Hum|HYM~2_combout\,
	ena => \Hum|HYM[33]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Hum|HYM\(38));

-- Location: LCCOMB_X13_Y14_N20
\Hum|HYM~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Hum|HYM~0_combout\ = (\Hum|HYM\(38) & ((\Hum|protocol\(2)) # (!\Hum|protocol\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Hum|protocol\(1),
	datab => \Hum|protocol\(2),
	datad => \Hum|HYM\(38),
	combout => \Hum|HYM~0_combout\);

-- Location: LCCOMB_X16_Y12_N10
\Hum|Equal6~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Hum|Equal6~0_combout\ = (\Hum|shet\(14) & (\Hum|shet\(10) & \Hum|shet\(9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Hum|shet\(14),
	datac => \Hum|shet\(10),
	datad => \Hum|shet\(9),
	combout => \Hum|Equal6~0_combout\);

-- Location: LCCOMB_X18_Y12_N8
\Hum|Equal6~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Hum|Equal6~1_combout\ = (!\Hum|shet\(2) & (\Hum|shet\(6) & (\Hum|shet\(4) & !\Hum|shet\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Hum|shet\(2),
	datab => \Hum|shet\(6),
	datac => \Hum|shet\(4),
	datad => \Hum|shet\(1),
	combout => \Hum|Equal6~1_combout\);

-- Location: LCCOMB_X16_Y12_N28
\Hum|Equal6~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \Hum|Equal6~3_combout\ = (\Hum|Equal6~0_combout\ & (\Hum|shet\(3) & (\Hum|Equal6~2_combout\ & \Hum|shet\(5))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Hum|Equal6~0_combout\,
	datab => \Hum|shet\(3),
	datac => \Hum|Equal6~2_combout\,
	datad => \Hum|shet\(5),
	combout => \Hum|Equal6~3_combout\);

-- Location: LCCOMB_X18_Y12_N28
\Hum|shet[4]~35\ : cycloneive_lcell_comb
-- Equation(s):
-- \Hum|shet[4]~35_combout\ = (!\Hum|shet\(2) & (!\Hum|shet\(5) & ((!\Hum|shet\(1)) # (!\Hum|shet\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100010001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Hum|shet\(2),
	datab => \Hum|shet\(5),
	datac => \Hum|shet\(0),
	datad => \Hum|shet\(1),
	combout => \Hum|shet[4]~35_combout\);

-- Location: LCCOMB_X17_Y12_N8
\Hum|shet[4]~36\ : cycloneive_lcell_comb
-- Equation(s):
-- \Hum|shet[4]~36_combout\ = ((!\Hum|shet\(5) & ((!\Hum|shet\(3)) # (!\Hum|shet\(4))))) # (!\Hum|shet\(6))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000011111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Hum|shet\(4),
	datab => \Hum|shet\(3),
	datac => \Hum|shet\(5),
	datad => \Hum|shet\(6),
	combout => \Hum|shet[4]~36_combout\);

-- Location: LCCOMB_X18_Y12_N10
\Hum|shet[4]~37\ : cycloneive_lcell_comb
-- Equation(s):
-- \Hum|shet[4]~37_combout\ = (\Hum|shet[4]~19_combout\ & (!\Hum|shet\(13) & ((\Hum|shet[4]~36_combout\) # (\Hum|shet[4]~35_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Hum|shet[4]~36_combout\,
	datab => \Hum|shet[4]~35_combout\,
	datac => \Hum|shet[4]~19_combout\,
	datad => \Hum|shet\(13),
	combout => \Hum|shet[4]~37_combout\);

-- Location: LCCOMB_X18_Y12_N4
\Hum|shet[4]~38\ : cycloneive_lcell_comb
-- Equation(s):
-- \Hum|shet[4]~38_combout\ = (\Hum|mstate.001~q\ & (((\Hum|shet[4]~37_combout\ & \Hum|shet[4]~18_combout\)) # (!\Hum|Equal5~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Hum|shet[4]~37_combout\,
	datab => \Hum|shet[4]~18_combout\,
	datac => \Hum|mstate.001~q\,
	datad => \Hum|Equal5~1_combout\,
	combout => \Hum|shet[4]~38_combout\);

-- Location: LCCOMB_X18_Y12_N30
\Hum|id_gorb[4]~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \Hum|id_gorb[4]~8_combout\ = (\Hum|data_rec\(2)) # (((\Hum|protocol\(1) & !\Hum|protocol\(2))) # (!\Hum|data_rec\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111101111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Hum|protocol\(1),
	datab => \Hum|data_rec\(2),
	datac => \Hum|data_rec\(1),
	datad => \Hum|protocol\(2),
	combout => \Hum|id_gorb[4]~8_combout\);

-- Location: LCCOMB_X18_Y13_N4
\Hum|id_gorb[4]~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \Hum|id_gorb[4]~9_combout\ = (\Hum|LessThan4~3_combout\ & (!\Hum|Equal0~0_combout\ & ((!\Hum|mstate.010~q\)))) # (!\Hum|LessThan4~3_combout\ & ((\Hum|HYM2[39]~0_combout\) # ((!\Hum|Equal0~0_combout\ & !\Hum|mstate.010~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000001110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Hum|LessThan4~3_combout\,
	datab => \Hum|Equal0~0_combout\,
	datac => \Hum|HYM2[39]~0_combout\,
	datad => \Hum|mstate.010~q\,
	combout => \Hum|id_gorb[4]~9_combout\);

-- Location: LCCOMB_X18_Y13_N30
\Hum|id_gorb[4]~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \Hum|id_gorb[4]~10_combout\ = (!\Hum|id_gorb[4]~9_combout\ & (((!\Hum|always2~5_combout\ & \Hum|always2~2_combout\)) # (!\Hum|HYM2[39]~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000011100000101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Hum|HYM2[39]~0_combout\,
	datab => \Hum|always2~5_combout\,
	datac => \Hum|id_gorb[4]~9_combout\,
	datad => \Hum|always2~2_combout\,
	combout => \Hum|id_gorb[4]~10_combout\);

-- Location: LCCOMB_X17_Y12_N30
\Hum|Equal6~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \Hum|Equal6~5_combout\ = (\Hum|Equal6~4_combout\ & (\Hum|shet\(3) & (\Hum|shet\(5) & \Hum|shet\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Hum|Equal6~4_combout\,
	datab => \Hum|shet\(3),
	datac => \Hum|shet\(5),
	datad => \Hum|shet\(0),
	combout => \Hum|Equal6~5_combout\);

-- Location: LCCOMB_X33_Y11_N10
\FGD|j~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \FGD|j~0_combout\ = (!\FGD|j\(0) & ((\FGD|j\(2)) # (!\FGD|j\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \FGD|j\(1),
	datac => \FGD|j\(0),
	datad => \FGD|j\(2),
	combout => \FGD|j~0_combout\);

-- Location: LCCOMB_X33_Y11_N0
\FGD|j[2]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \FGD|j[2]~1_combout\ = \FGD|j\(2) $ (((\FGD|j\(1) & \FGD|j\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \FGD|j\(1),
	datac => \FGD|j\(2),
	datad => \FGD|j\(0),
	combout => \FGD|j[2]~1_combout\);

-- Location: LCCOMB_X33_Y11_N2
\FGD|j~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \FGD|j~2_combout\ = (\FGD|j\(0) & (!\FGD|j\(1))) # (!\FGD|j\(0) & (\FGD|j\(1) & \FGD|j\(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FGD|j\(0),
	datac => \FGD|j\(1),
	datad => \FGD|j\(2),
	combout => \FGD|j~2_combout\);

-- Location: LCCOMB_X16_Y12_N12
\Hum|Data_H_REG~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Hum|Data_H_REG~0_combout\ = (\Hum|Data_H_REG~q\ & ((\Hum|mstate.001~q\) # ((\Hum|shet\(0)) # (!\Hum|Equal6~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010100010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Hum|Data_H_REG~q\,
	datab => \Hum|mstate.001~q\,
	datac => \Hum|shet\(0),
	datad => \Hum|Equal6~3_combout\,
	combout => \Hum|Data_H_REG~0_combout\);

-- Location: FF_X14_Y14_N9
\SPI_MODULE|HYM_send[35]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \FGD|clk1M~clkctrl_outclk\,
	d => \SPI_MODULE|HYM_send~5_combout\,
	ena => \SPI_MODULE|HYM_send[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \SPI_MODULE|HYM_send\(35));

-- Location: FF_X13_Y14_N19
\Hum|HYM2[36]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \FGD|clk1M~clkctrl_outclk\,
	d => \Hum|HYM2[36]~feeder_combout\,
	ena => \Hum|HYM2[39]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Hum|HYM2\(36));

-- Location: LCCOMB_X14_Y14_N6
\SPI_MODULE|HYM_send~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \SPI_MODULE|HYM_send~4_combout\ = (\SPI_MODULE|SSELr\(1) & (((\SPI_MODULE|HYM_send\(35))))) # (!\SPI_MODULE|SSELr\(1) & ((\SPI_MODULE|SSELr\(2) & (\Hum|HYM2\(36))) # (!\SPI_MODULE|SSELr\(2) & ((\SPI_MODULE|HYM_send\(35))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Hum|HYM2\(36),
	datab => \SPI_MODULE|HYM_send\(35),
	datac => \SPI_MODULE|SSELr\(1),
	datad => \SPI_MODULE|SSELr\(2),
	combout => \SPI_MODULE|HYM_send~4_combout\);

-- Location: LCCOMB_X13_Y14_N0
\Hum|HYM~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Hum|HYM~2_combout\ = (\Hum|HYM\(37) & ((\Hum|protocol\(2)) # (!\Hum|protocol\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Hum|HYM\(37),
	datac => \Hum|protocol\(2),
	datad => \Hum|protocol\(1),
	combout => \Hum|HYM~2_combout\);

-- Location: FF_X14_Y14_N27
\SPI_MODULE|HYM_send[34]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \FGD|clk1M~clkctrl_outclk\,
	d => \SPI_MODULE|HYM_send~6_combout\,
	ena => \SPI_MODULE|HYM_send[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \SPI_MODULE|HYM_send\(34));

-- Location: FF_X13_Y14_N31
\Hum|HYM2[35]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \FGD|clk1M~clkctrl_outclk\,
	d => \Hum|HYM2[35]~feeder_combout\,
	ena => \Hum|HYM2[39]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Hum|HYM2\(35));

-- Location: LCCOMB_X14_Y14_N8
\SPI_MODULE|HYM_send~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \SPI_MODULE|HYM_send~5_combout\ = (\SPI_MODULE|SSELr\(1) & (\SPI_MODULE|HYM_send\(34))) # (!\SPI_MODULE|SSELr\(1) & ((\SPI_MODULE|SSELr\(2) & ((\Hum|HYM2\(35)))) # (!\SPI_MODULE|SSELr\(2) & (\SPI_MODULE|HYM_send\(34)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SPI_MODULE|HYM_send\(34),
	datab => \Hum|HYM2\(35),
	datac => \SPI_MODULE|SSELr\(1),
	datad => \SPI_MODULE|SSELr\(2),
	combout => \SPI_MODULE|HYM_send~5_combout\);

-- Location: FF_X14_Y14_N13
\SPI_MODULE|HYM_send[33]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \FGD|clk1M~clkctrl_outclk\,
	d => \SPI_MODULE|HYM_send~7_combout\,
	ena => \SPI_MODULE|HYM_send[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \SPI_MODULE|HYM_send\(33));

-- Location: FF_X13_Y14_N27
\Hum|HYM2[34]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \FGD|clk1M~clkctrl_outclk\,
	d => \Hum|HYM2[34]~feeder_combout\,
	ena => \Hum|HYM2[39]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Hum|HYM2\(34));

-- Location: LCCOMB_X14_Y14_N26
\SPI_MODULE|HYM_send~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \SPI_MODULE|HYM_send~6_combout\ = (\SPI_MODULE|SSELr\(1) & (\SPI_MODULE|HYM_send\(33))) # (!\SPI_MODULE|SSELr\(1) & ((\SPI_MODULE|SSELr\(2) & ((\Hum|HYM2\(34)))) # (!\SPI_MODULE|SSELr\(2) & (\SPI_MODULE|HYM_send\(33)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SPI_MODULE|HYM_send\(33),
	datab => \SPI_MODULE|SSELr\(1),
	datac => \Hum|HYM2\(34),
	datad => \SPI_MODULE|SSELr\(2),
	combout => \SPI_MODULE|HYM_send~6_combout\);

-- Location: FF_X13_Y14_N29
\Hum|HYM[35]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \FGD|clk1M~clkctrl_outclk\,
	d => \Hum|HYM~5_combout\,
	ena => \Hum|HYM[33]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Hum|HYM\(35));

-- Location: FF_X14_Y14_N23
\SPI_MODULE|HYM_send[32]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \FGD|clk1M~clkctrl_outclk\,
	d => \SPI_MODULE|HYM_send~8_combout\,
	ena => \SPI_MODULE|HYM_send[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \SPI_MODULE|HYM_send\(32));

-- Location: FF_X13_Y14_N23
\Hum|HYM2[33]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \FGD|clk1M~clkctrl_outclk\,
	asdata => \Hum|HYM\(33),
	sload => VCC,
	ena => \Hum|HYM2[39]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Hum|HYM2\(33));

-- Location: LCCOMB_X14_Y14_N12
\SPI_MODULE|HYM_send~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \SPI_MODULE|HYM_send~7_combout\ = (\SPI_MODULE|SSELr\(1) & (\SPI_MODULE|HYM_send\(32))) # (!\SPI_MODULE|SSELr\(1) & ((\SPI_MODULE|SSELr\(2) & ((\Hum|HYM2\(33)))) # (!\SPI_MODULE|SSELr\(2) & (\SPI_MODULE|HYM_send\(32)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SPI_MODULE|HYM_send\(32),
	datab => \Hum|HYM2\(33),
	datac => \SPI_MODULE|SSELr\(1),
	datad => \SPI_MODULE|SSELr\(2),
	combout => \SPI_MODULE|HYM_send~7_combout\);

-- Location: FF_X13_Y14_N25
\Hum|HYM[34]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \FGD|clk1M~clkctrl_outclk\,
	d => \Hum|HYM~6_combout\,
	ena => \Hum|HYM[33]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Hum|HYM\(34));

-- Location: LCCOMB_X13_Y14_N28
\Hum|HYM~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \Hum|HYM~5_combout\ = (\Hum|HYM\(34) & ((\Hum|protocol\(2)) # (!\Hum|protocol\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Hum|HYM\(34),
	datab => \Hum|protocol\(2),
	datad => \Hum|protocol\(1),
	combout => \Hum|HYM~5_combout\);

-- Location: FF_X14_Y14_N25
\SPI_MODULE|HYM_send[31]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \FGD|clk1M~clkctrl_outclk\,
	d => \SPI_MODULE|HYM_send~9_combout\,
	ena => \SPI_MODULE|HYM_send[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \SPI_MODULE|HYM_send\(31));

-- Location: FF_X13_Y14_N11
\Hum|HYM2[32]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \FGD|clk1M~clkctrl_outclk\,
	d => \Hum|HYM2[32]~feeder_combout\,
	ena => \Hum|HYM2[39]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Hum|HYM2\(32));

-- Location: LCCOMB_X14_Y14_N22
\SPI_MODULE|HYM_send~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \SPI_MODULE|HYM_send~8_combout\ = (\SPI_MODULE|SSELr\(1) & (((\SPI_MODULE|HYM_send\(31))))) # (!\SPI_MODULE|SSELr\(1) & ((\SPI_MODULE|SSELr\(2) & (\Hum|HYM2\(32))) # (!\SPI_MODULE|SSELr\(2) & ((\SPI_MODULE|HYM_send\(31))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Hum|HYM2\(32),
	datab => \SPI_MODULE|HYM_send\(31),
	datac => \SPI_MODULE|SSELr\(1),
	datad => \SPI_MODULE|SSELr\(2),
	combout => \SPI_MODULE|HYM_send~8_combout\);

-- Location: FF_X13_Y14_N5
\Hum|HYM[33]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \FGD|clk1M~clkctrl_outclk\,
	d => \Hum|HYM~7_combout\,
	ena => \Hum|HYM[33]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Hum|HYM\(33));

-- Location: LCCOMB_X13_Y14_N24
\Hum|HYM~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \Hum|HYM~6_combout\ = (\Hum|HYM\(33) & ((\Hum|protocol\(2)) # (!\Hum|protocol\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Hum|protocol\(2),
	datac => \Hum|HYM\(33),
	datad => \Hum|protocol\(1),
	combout => \Hum|HYM~6_combout\);

-- Location: FF_X14_Y14_N11
\SPI_MODULE|HYM_send[30]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \FGD|clk1M~clkctrl_outclk\,
	d => \SPI_MODULE|HYM_send~10_combout\,
	ena => \SPI_MODULE|HYM_send[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \SPI_MODULE|HYM_send\(30));

-- Location: FF_X14_Y14_N29
\Hum|HYM2[31]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \FGD|clk1M~clkctrl_outclk\,
	d => \Hum|HYM2[31]~feeder_combout\,
	ena => \Hum|HYM2[39]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Hum|HYM2\(31));

-- Location: LCCOMB_X14_Y14_N24
\SPI_MODULE|HYM_send~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \SPI_MODULE|HYM_send~9_combout\ = (\SPI_MODULE|SSELr\(1) & (\SPI_MODULE|HYM_send\(30))) # (!\SPI_MODULE|SSELr\(1) & ((\SPI_MODULE|SSELr\(2) & ((\Hum|HYM2\(31)))) # (!\SPI_MODULE|SSELr\(2) & (\SPI_MODULE|HYM_send\(30)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SPI_MODULE|HYM_send\(30),
	datab => \Hum|HYM2\(31),
	datac => \SPI_MODULE|SSELr\(1),
	datad => \SPI_MODULE|SSELr\(2),
	combout => \SPI_MODULE|HYM_send~9_combout\);

-- Location: FF_X13_Y14_N7
\Hum|HYM[32]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \FGD|clk1M~clkctrl_outclk\,
	d => \Hum|HYM~8_combout\,
	ena => \Hum|HYM[33]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Hum|HYM\(32));

-- Location: LCCOMB_X13_Y14_N4
\Hum|HYM~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \Hum|HYM~7_combout\ = (\Hum|HYM\(32) & ((\Hum|protocol\(2)) # (!\Hum|protocol\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Hum|HYM\(32),
	datac => \Hum|protocol\(2),
	datad => \Hum|protocol\(1),
	combout => \Hum|HYM~7_combout\);

-- Location: FF_X14_Y14_N15
\SPI_MODULE|HYM_send[29]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \FGD|clk1M~clkctrl_outclk\,
	d => \SPI_MODULE|HYM_send~11_combout\,
	ena => \SPI_MODULE|HYM_send[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \SPI_MODULE|HYM_send\(29));

-- Location: FF_X14_Y14_N17
\Hum|HYM2[30]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \FGD|clk1M~clkctrl_outclk\,
	asdata => \Hum|HYM\(30),
	sload => VCC,
	ena => \Hum|HYM2[39]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Hum|HYM2\(30));

-- Location: LCCOMB_X14_Y14_N10
\SPI_MODULE|HYM_send~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \SPI_MODULE|HYM_send~10_combout\ = (\SPI_MODULE|SSELr\(2) & ((\SPI_MODULE|SSELr\(1) & (\SPI_MODULE|HYM_send\(29))) # (!\SPI_MODULE|SSELr\(1) & ((\Hum|HYM2\(30)))))) # (!\SPI_MODULE|SSELr\(2) & (\SPI_MODULE|HYM_send\(29)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111011000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SPI_MODULE|SSELr\(2),
	datab => \SPI_MODULE|HYM_send\(29),
	datac => \SPI_MODULE|SSELr\(1),
	datad => \Hum|HYM2\(30),
	combout => \SPI_MODULE|HYM_send~10_combout\);

-- Location: FF_X16_Y14_N9
\Hum|HYM[31]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \FGD|clk1M~clkctrl_outclk\,
	d => \Hum|HYM~9_combout\,
	ena => \Hum|HYM[33]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Hum|HYM\(31));

-- Location: LCCOMB_X13_Y14_N6
\Hum|HYM~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \Hum|HYM~8_combout\ = (\Hum|HYM\(31) & ((\Hum|protocol\(2)) # (!\Hum|protocol\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Hum|HYM\(31),
	datac => \Hum|protocol\(2),
	datad => \Hum|protocol\(1),
	combout => \Hum|HYM~8_combout\);

-- Location: FF_X14_Y14_N19
\SPI_MODULE|HYM_send[28]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \FGD|clk1M~clkctrl_outclk\,
	d => \SPI_MODULE|HYM_send~12_combout\,
	ena => \SPI_MODULE|HYM_send[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \SPI_MODULE|HYM_send\(28));

-- Location: FF_X14_Y14_N5
\Hum|HYM2[29]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \FGD|clk1M~clkctrl_outclk\,
	asdata => \Hum|HYM\(29),
	sload => VCC,
	ena => \Hum|HYM2[39]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Hum|HYM2\(29));

-- Location: LCCOMB_X14_Y14_N14
\SPI_MODULE|HYM_send~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \SPI_MODULE|HYM_send~11_combout\ = (\SPI_MODULE|SSELr\(1) & (\SPI_MODULE|HYM_send\(28))) # (!\SPI_MODULE|SSELr\(1) & ((\SPI_MODULE|SSELr\(2) & ((\Hum|HYM2\(29)))) # (!\SPI_MODULE|SSELr\(2) & (\SPI_MODULE|HYM_send\(28)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SPI_MODULE|HYM_send\(28),
	datab => \Hum|HYM2\(29),
	datac => \SPI_MODULE|SSELr\(1),
	datad => \SPI_MODULE|SSELr\(2),
	combout => \SPI_MODULE|HYM_send~11_combout\);

-- Location: FF_X16_Y14_N3
\Hum|HYM[30]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \FGD|clk1M~clkctrl_outclk\,
	d => \Hum|HYM~10_combout\,
	ena => \Hum|HYM[33]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Hum|HYM\(30));

-- Location: LCCOMB_X16_Y14_N8
\Hum|HYM~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \Hum|HYM~9_combout\ = (\Hum|HYM\(30) & ((\Hum|protocol\(2)) # (!\Hum|protocol\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Hum|HYM\(30),
	datac => \Hum|protocol\(2),
	datad => \Hum|protocol\(1),
	combout => \Hum|HYM~9_combout\);

-- Location: FF_X17_Y14_N1
\SPI_MODULE|HYM_send[27]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \FGD|clk1M~clkctrl_outclk\,
	d => \SPI_MODULE|HYM_send~13_combout\,
	ena => \SPI_MODULE|HYM_send[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \SPI_MODULE|HYM_send\(27));

-- Location: FF_X14_Y14_N31
\Hum|HYM2[28]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \FGD|clk1M~clkctrl_outclk\,
	asdata => \Hum|HYM\(28),
	sload => VCC,
	ena => \Hum|HYM2[39]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Hum|HYM2\(28));

-- Location: LCCOMB_X14_Y14_N18
\SPI_MODULE|HYM_send~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \SPI_MODULE|HYM_send~12_combout\ = (\SPI_MODULE|SSELr\(1) & (\SPI_MODULE|HYM_send\(27))) # (!\SPI_MODULE|SSELr\(1) & ((\SPI_MODULE|SSELr\(2) & ((\Hum|HYM2\(28)))) # (!\SPI_MODULE|SSELr\(2) & (\SPI_MODULE|HYM_send\(27)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SPI_MODULE|HYM_send\(27),
	datab => \SPI_MODULE|SSELr\(1),
	datac => \Hum|HYM2\(28),
	datad => \SPI_MODULE|SSELr\(2),
	combout => \SPI_MODULE|HYM_send~12_combout\);

-- Location: FF_X16_Y14_N13
\Hum|HYM[29]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \FGD|clk1M~clkctrl_outclk\,
	d => \Hum|HYM~11_combout\,
	ena => \Hum|HYM[33]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Hum|HYM\(29));

-- Location: LCCOMB_X16_Y14_N2
\Hum|HYM~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \Hum|HYM~10_combout\ = (\Hum|HYM\(29) & ((\Hum|protocol\(2)) # (!\Hum|protocol\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Hum|HYM\(29),
	datac => \Hum|protocol\(2),
	datad => \Hum|protocol\(1),
	combout => \Hum|HYM~10_combout\);

-- Location: FF_X17_Y14_N11
\SPI_MODULE|HYM_send[26]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \FGD|clk1M~clkctrl_outclk\,
	d => \SPI_MODULE|HYM_send~14_combout\,
	ena => \SPI_MODULE|HYM_send[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \SPI_MODULE|HYM_send\(26));

-- Location: FF_X16_Y14_N15
\Hum|HYM2[27]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \FGD|clk1M~clkctrl_outclk\,
	asdata => \Hum|HYM\(27),
	sload => VCC,
	ena => \Hum|HYM2[39]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Hum|HYM2\(27));

-- Location: LCCOMB_X17_Y14_N0
\SPI_MODULE|HYM_send~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \SPI_MODULE|HYM_send~13_combout\ = (\SPI_MODULE|SSELr\(1) & (((\SPI_MODULE|HYM_send\(26))))) # (!\SPI_MODULE|SSELr\(1) & ((\SPI_MODULE|SSELr\(2) & (\Hum|HYM2\(27))) # (!\SPI_MODULE|SSELr\(2) & ((\SPI_MODULE|HYM_send\(26))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111100100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Hum|HYM2\(27),
	datab => \SPI_MODULE|SSELr\(1),
	datac => \SPI_MODULE|SSELr\(2),
	datad => \SPI_MODULE|HYM_send\(26),
	combout => \SPI_MODULE|HYM_send~13_combout\);

-- Location: FF_X16_Y14_N1
\Hum|HYM[28]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \FGD|clk1M~clkctrl_outclk\,
	d => \Hum|HYM~12_combout\,
	ena => \Hum|HYM[33]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Hum|HYM\(28));

-- Location: LCCOMB_X16_Y14_N12
\Hum|HYM~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \Hum|HYM~11_combout\ = (\Hum|HYM\(28) & ((\Hum|protocol\(2)) # (!\Hum|protocol\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Hum|HYM\(28),
	datac => \Hum|protocol\(2),
	datad => \Hum|protocol\(1),
	combout => \Hum|HYM~11_combout\);

-- Location: FF_X17_Y14_N5
\SPI_MODULE|HYM_send[25]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \FGD|clk1M~clkctrl_outclk\,
	d => \SPI_MODULE|HYM_send~15_combout\,
	ena => \SPI_MODULE|HYM_send[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \SPI_MODULE|HYM_send\(25));

-- Location: FF_X16_Y14_N11
\Hum|HYM2[26]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \FGD|clk1M~clkctrl_outclk\,
	d => \Hum|HYM2[26]~feeder_combout\,
	ena => \Hum|HYM2[39]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Hum|HYM2\(26));

-- Location: LCCOMB_X17_Y14_N10
\SPI_MODULE|HYM_send~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \SPI_MODULE|HYM_send~14_combout\ = (\SPI_MODULE|SSELr\(1) & (((\SPI_MODULE|HYM_send\(25))))) # (!\SPI_MODULE|SSELr\(1) & ((\SPI_MODULE|SSELr\(2) & ((\Hum|HYM2\(26)))) # (!\SPI_MODULE|SSELr\(2) & (\SPI_MODULE|HYM_send\(25)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010010110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SPI_MODULE|SSELr\(1),
	datab => \SPI_MODULE|SSELr\(2),
	datac => \SPI_MODULE|HYM_send\(25),
	datad => \Hum|HYM2\(26),
	combout => \SPI_MODULE|HYM_send~14_combout\);

-- Location: FF_X16_Y14_N5
\Hum|HYM[27]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \FGD|clk1M~clkctrl_outclk\,
	d => \Hum|HYM~13_combout\,
	ena => \Hum|HYM[33]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Hum|HYM\(27));

-- Location: LCCOMB_X16_Y14_N0
\Hum|HYM~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \Hum|HYM~12_combout\ = (\Hum|HYM\(27) & ((\Hum|protocol\(2)) # (!\Hum|protocol\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Hum|HYM\(27),
	datac => \Hum|protocol\(2),
	datad => \Hum|protocol\(1),
	combout => \Hum|HYM~12_combout\);

-- Location: FF_X17_Y14_N7
\SPI_MODULE|HYM_send[24]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \FGD|clk1M~clkctrl_outclk\,
	d => \SPI_MODULE|HYM_send~16_combout\,
	ena => \SPI_MODULE|HYM_send[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \SPI_MODULE|HYM_send\(24));

-- Location: FF_X16_Y14_N31
\Hum|HYM2[25]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \FGD|clk1M~clkctrl_outclk\,
	d => \Hum|HYM2[25]~feeder_combout\,
	ena => \Hum|HYM2[39]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Hum|HYM2\(25));

-- Location: LCCOMB_X17_Y14_N4
\SPI_MODULE|HYM_send~15\ : cycloneive_lcell_comb
-- Equation(s):
-- \SPI_MODULE|HYM_send~15_combout\ = (\SPI_MODULE|SSELr\(1) & (((\SPI_MODULE|HYM_send\(24))))) # (!\SPI_MODULE|SSELr\(1) & ((\SPI_MODULE|SSELr\(2) & (\Hum|HYM2\(25))) # (!\SPI_MODULE|SSELr\(2) & ((\SPI_MODULE|HYM_send\(24))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111101000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SPI_MODULE|SSELr\(1),
	datab => \Hum|HYM2\(25),
	datac => \SPI_MODULE|SSELr\(2),
	datad => \SPI_MODULE|HYM_send\(24),
	combout => \SPI_MODULE|HYM_send~15_combout\);

-- Location: FF_X16_Y14_N17
\Hum|HYM[26]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \FGD|clk1M~clkctrl_outclk\,
	d => \Hum|HYM~14_combout\,
	ena => \Hum|HYM[33]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Hum|HYM\(26));

-- Location: LCCOMB_X16_Y14_N4
\Hum|HYM~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \Hum|HYM~13_combout\ = (\Hum|HYM\(26) & ((\Hum|protocol\(2)) # (!\Hum|protocol\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Hum|HYM\(26),
	datac => \Hum|protocol\(2),
	datad => \Hum|protocol\(1),
	combout => \Hum|HYM~13_combout\);

-- Location: FF_X17_Y14_N17
\SPI_MODULE|HYM_send[23]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \FGD|clk1M~clkctrl_outclk\,
	d => \SPI_MODULE|HYM_send~17_combout\,
	ena => \SPI_MODULE|HYM_send[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \SPI_MODULE|HYM_send\(23));

-- Location: FF_X16_Y14_N27
\Hum|HYM2[24]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \FGD|clk1M~clkctrl_outclk\,
	d => \Hum|HYM2[24]~feeder_combout\,
	ena => \Hum|HYM2[39]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Hum|HYM2\(24));

-- Location: LCCOMB_X17_Y14_N6
\SPI_MODULE|HYM_send~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \SPI_MODULE|HYM_send~16_combout\ = (\SPI_MODULE|SSELr\(1) & (((\SPI_MODULE|HYM_send\(23))))) # (!\SPI_MODULE|SSELr\(1) & ((\SPI_MODULE|SSELr\(2) & (\Hum|HYM2\(24))) # (!\SPI_MODULE|SSELr\(2) & ((\SPI_MODULE|HYM_send\(23))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101101000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SPI_MODULE|SSELr\(1),
	datab => \SPI_MODULE|SSELr\(2),
	datac => \Hum|HYM2\(24),
	datad => \SPI_MODULE|HYM_send\(23),
	combout => \SPI_MODULE|HYM_send~16_combout\);

-- Location: FF_X16_Y14_N21
\Hum|HYM[25]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \FGD|clk1M~clkctrl_outclk\,
	d => \Hum|HYM~15_combout\,
	ena => \Hum|HYM[33]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Hum|HYM\(25));

-- Location: LCCOMB_X16_Y14_N16
\Hum|HYM~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \Hum|HYM~14_combout\ = (\Hum|HYM\(25) & ((\Hum|protocol\(2)) # (!\Hum|protocol\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Hum|HYM\(25),
	datac => \Hum|protocol\(2),
	datad => \Hum|protocol\(1),
	combout => \Hum|HYM~14_combout\);

-- Location: FF_X17_Y14_N19
\SPI_MODULE|HYM_send[22]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \FGD|clk1M~clkctrl_outclk\,
	d => \SPI_MODULE|HYM_send~18_combout\,
	ena => \SPI_MODULE|HYM_send[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \SPI_MODULE|HYM_send\(22));

-- Location: FF_X16_Y14_N23
\Hum|HYM2[23]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \FGD|clk1M~clkctrl_outclk\,
	d => \Hum|HYM2[23]~feeder_combout\,
	ena => \Hum|HYM2[39]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Hum|HYM2\(23));

-- Location: LCCOMB_X17_Y14_N16
\SPI_MODULE|HYM_send~17\ : cycloneive_lcell_comb
-- Equation(s):
-- \SPI_MODULE|HYM_send~17_combout\ = (\SPI_MODULE|SSELr\(1) & (((\SPI_MODULE|HYM_send\(22))))) # (!\SPI_MODULE|SSELr\(1) & ((\SPI_MODULE|SSELr\(2) & (\Hum|HYM2\(23))) # (!\SPI_MODULE|SSELr\(2) & ((\SPI_MODULE|HYM_send\(22))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111101000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SPI_MODULE|SSELr\(1),
	datab => \Hum|HYM2\(23),
	datac => \SPI_MODULE|SSELr\(2),
	datad => \SPI_MODULE|HYM_send\(22),
	combout => \SPI_MODULE|HYM_send~17_combout\);

-- Location: FF_X16_Y14_N25
\Hum|HYM[24]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \FGD|clk1M~clkctrl_outclk\,
	d => \Hum|HYM~16_combout\,
	ena => \Hum|HYM[33]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Hum|HYM\(24));

-- Location: LCCOMB_X16_Y14_N20
\Hum|HYM~15\ : cycloneive_lcell_comb
-- Equation(s):
-- \Hum|HYM~15_combout\ = (\Hum|HYM\(24) & ((\Hum|protocol\(2)) # (!\Hum|protocol\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Hum|HYM\(24),
	datac => \Hum|protocol\(2),
	datad => \Hum|protocol\(1),
	combout => \Hum|HYM~15_combout\);

-- Location: FF_X17_Y14_N13
\SPI_MODULE|HYM_send[21]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \FGD|clk1M~clkctrl_outclk\,
	d => \SPI_MODULE|HYM_send~19_combout\,
	ena => \SPI_MODULE|HYM_send[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \SPI_MODULE|HYM_send\(21));

-- Location: FF_X16_Y14_N19
\Hum|HYM2[22]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \FGD|clk1M~clkctrl_outclk\,
	d => \Hum|HYM2[22]~feeder_combout\,
	ena => \Hum|HYM2[39]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Hum|HYM2\(22));

-- Location: LCCOMB_X17_Y14_N18
\SPI_MODULE|HYM_send~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \SPI_MODULE|HYM_send~18_combout\ = (\SPI_MODULE|SSELr\(1) & (((\SPI_MODULE|HYM_send\(21))))) # (!\SPI_MODULE|SSELr\(1) & ((\SPI_MODULE|SSELr\(2) & (\Hum|HYM2\(22))) # (!\SPI_MODULE|SSELr\(2) & ((\SPI_MODULE|HYM_send\(21))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111101000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SPI_MODULE|SSELr\(1),
	datab => \Hum|HYM2\(22),
	datac => \SPI_MODULE|SSELr\(2),
	datad => \SPI_MODULE|HYM_send\(21),
	combout => \SPI_MODULE|HYM_send~18_combout\);

-- Location: FF_X16_Y14_N29
\Hum|HYM[23]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \FGD|clk1M~clkctrl_outclk\,
	d => \Hum|HYM~17_combout\,
	ena => \Hum|HYM[33]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Hum|HYM\(23));

-- Location: LCCOMB_X16_Y14_N24
\Hum|HYM~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \Hum|HYM~16_combout\ = (\Hum|HYM\(23) & ((\Hum|protocol\(2)) # (!\Hum|protocol\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Hum|HYM\(23),
	datac => \Hum|protocol\(2),
	datad => \Hum|protocol\(1),
	combout => \Hum|HYM~16_combout\);

-- Location: FF_X17_Y14_N23
\SPI_MODULE|HYM_send[20]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \FGD|clk1M~clkctrl_outclk\,
	d => \SPI_MODULE|HYM_send~20_combout\,
	ena => \SPI_MODULE|HYM_send[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \SPI_MODULE|HYM_send\(20));

-- Location: FF_X17_Y14_N25
\Hum|HYM2[21]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \FGD|clk1M~clkctrl_outclk\,
	d => \Hum|HYM2[21]~feeder_combout\,
	ena => \Hum|HYM2[39]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Hum|HYM2\(21));

-- Location: LCCOMB_X17_Y14_N12
\SPI_MODULE|HYM_send~19\ : cycloneive_lcell_comb
-- Equation(s):
-- \SPI_MODULE|HYM_send~19_combout\ = (\SPI_MODULE|SSELr\(1) & (((\SPI_MODULE|HYM_send\(20))))) # (!\SPI_MODULE|SSELr\(1) & ((\SPI_MODULE|SSELr\(2) & ((\Hum|HYM2\(21)))) # (!\SPI_MODULE|SSELr\(2) & (\SPI_MODULE|HYM_send\(20)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010010110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SPI_MODULE|SSELr\(1),
	datab => \SPI_MODULE|SSELr\(2),
	datac => \SPI_MODULE|HYM_send\(20),
	datad => \Hum|HYM2\(21),
	combout => \SPI_MODULE|HYM_send~19_combout\);

-- Location: FF_X16_Y14_N7
\Hum|HYM[22]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \FGD|clk1M~clkctrl_outclk\,
	d => \Hum|HYM~18_combout\,
	ena => \Hum|HYM[33]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Hum|HYM\(22));

-- Location: LCCOMB_X16_Y14_N28
\Hum|HYM~17\ : cycloneive_lcell_comb
-- Equation(s):
-- \Hum|HYM~17_combout\ = (\Hum|HYM\(22) & ((\Hum|protocol\(2)) # (!\Hum|protocol\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Hum|HYM\(22),
	datac => \Hum|protocol\(2),
	datad => \Hum|protocol\(1),
	combout => \Hum|HYM~17_combout\);

-- Location: FF_X17_Y14_N27
\SPI_MODULE|HYM_send[19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \FGD|clk1M~clkctrl_outclk\,
	d => \SPI_MODULE|HYM_send~21_combout\,
	ena => \SPI_MODULE|HYM_send[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \SPI_MODULE|HYM_send\(19));

-- Location: FF_X17_Y14_N29
\Hum|HYM2[20]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \FGD|clk1M~clkctrl_outclk\,
	d => \Hum|HYM2[20]~feeder_combout\,
	ena => \Hum|HYM2[39]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Hum|HYM2\(20));

-- Location: LCCOMB_X17_Y14_N22
\SPI_MODULE|HYM_send~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \SPI_MODULE|HYM_send~20_combout\ = (\SPI_MODULE|SSELr\(1) & (((\SPI_MODULE|HYM_send\(19))))) # (!\SPI_MODULE|SSELr\(1) & ((\SPI_MODULE|SSELr\(2) & ((\Hum|HYM2\(20)))) # (!\SPI_MODULE|SSELr\(2) & (\SPI_MODULE|HYM_send\(19)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010010110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SPI_MODULE|SSELr\(1),
	datab => \SPI_MODULE|SSELr\(2),
	datac => \SPI_MODULE|HYM_send\(19),
	datad => \Hum|HYM2\(20),
	combout => \SPI_MODULE|HYM_send~20_combout\);

-- Location: FF_X18_Y14_N17
\Hum|HYM[21]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \FGD|clk1M~clkctrl_outclk\,
	d => \Hum|HYM~19_combout\,
	ena => \Hum|HYM[33]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Hum|HYM\(21));

-- Location: LCCOMB_X16_Y14_N6
\Hum|HYM~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \Hum|HYM~18_combout\ = (\Hum|HYM\(21) & ((\Hum|protocol\(2)) # (!\Hum|protocol\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Hum|protocol\(1),
	datac => \Hum|protocol\(2),
	datad => \Hum|HYM\(21),
	combout => \Hum|HYM~18_combout\);

-- Location: FF_X17_Y14_N31
\SPI_MODULE|HYM_send[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \FGD|clk1M~clkctrl_outclk\,
	d => \SPI_MODULE|HYM_send~22_combout\,
	ena => \SPI_MODULE|HYM_send[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \SPI_MODULE|HYM_send\(18));

-- Location: FF_X17_Y14_N9
\Hum|HYM2[19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \FGD|clk1M~clkctrl_outclk\,
	d => \Hum|HYM2[19]~feeder_combout\,
	ena => \Hum|HYM2[39]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Hum|HYM2\(19));

-- Location: LCCOMB_X17_Y14_N26
\SPI_MODULE|HYM_send~21\ : cycloneive_lcell_comb
-- Equation(s):
-- \SPI_MODULE|HYM_send~21_combout\ = (\SPI_MODULE|SSELr\(2) & ((\SPI_MODULE|SSELr\(1) & (\SPI_MODULE|HYM_send\(18))) # (!\SPI_MODULE|SSELr\(1) & ((\Hum|HYM2\(19)))))) # (!\SPI_MODULE|SSELr\(2) & (\SPI_MODULE|HYM_send\(18)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SPI_MODULE|HYM_send\(18),
	datab => \Hum|HYM2\(19),
	datac => \SPI_MODULE|SSELr\(2),
	datad => \SPI_MODULE|SSELr\(1),
	combout => \SPI_MODULE|HYM_send~21_combout\);

-- Location: FF_X18_Y14_N3
\Hum|HYM[20]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \FGD|clk1M~clkctrl_outclk\,
	d => \Hum|HYM~20_combout\,
	ena => \Hum|HYM[33]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Hum|HYM\(20));

-- Location: LCCOMB_X18_Y14_N16
\Hum|HYM~19\ : cycloneive_lcell_comb
-- Equation(s):
-- \Hum|HYM~19_combout\ = (\Hum|HYM\(20) & ((\Hum|protocol\(2)) # (!\Hum|protocol\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Hum|protocol\(1),
	datac => \Hum|protocol\(2),
	datad => \Hum|HYM\(20),
	combout => \Hum|HYM~19_combout\);

-- Location: FF_X17_Y14_N3
\SPI_MODULE|HYM_send[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \FGD|clk1M~clkctrl_outclk\,
	d => \SPI_MODULE|HYM_send~23_combout\,
	ena => \SPI_MODULE|HYM_send[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \SPI_MODULE|HYM_send\(17));

-- Location: FF_X17_Y14_N21
\Hum|HYM2[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \FGD|clk1M~clkctrl_outclk\,
	d => \Hum|HYM2[18]~feeder_combout\,
	ena => \Hum|HYM2[39]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Hum|HYM2\(18));

-- Location: LCCOMB_X17_Y14_N30
\SPI_MODULE|HYM_send~22\ : cycloneive_lcell_comb
-- Equation(s):
-- \SPI_MODULE|HYM_send~22_combout\ = (\SPI_MODULE|SSELr\(1) & (((\SPI_MODULE|HYM_send\(17))))) # (!\SPI_MODULE|SSELr\(1) & ((\SPI_MODULE|SSELr\(2) & (\Hum|HYM2\(18))) # (!\SPI_MODULE|SSELr\(2) & ((\SPI_MODULE|HYM_send\(17))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111101000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SPI_MODULE|SSELr\(1),
	datab => \Hum|HYM2\(18),
	datac => \SPI_MODULE|SSELr\(2),
	datad => \SPI_MODULE|HYM_send\(17),
	combout => \SPI_MODULE|HYM_send~22_combout\);

-- Location: FF_X18_Y14_N29
\Hum|HYM[19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \FGD|clk1M~clkctrl_outclk\,
	d => \Hum|HYM~21_combout\,
	ena => \Hum|HYM[33]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Hum|HYM\(19));

-- Location: LCCOMB_X18_Y14_N2
\Hum|HYM~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \Hum|HYM~20_combout\ = (\Hum|HYM\(19) & ((\Hum|protocol\(2)) # (!\Hum|protocol\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Hum|protocol\(1),
	datac => \Hum|protocol\(2),
	datad => \Hum|HYM\(19),
	combout => \Hum|HYM~20_combout\);

-- Location: FF_X16_Y13_N21
\SPI_MODULE|HYM_send[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \FGD|clk1M~clkctrl_outclk\,
	d => \SPI_MODULE|HYM_send~24_combout\,
	ena => \SPI_MODULE|HYM_send[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \SPI_MODULE|HYM_send\(16));

-- Location: FF_X17_Y14_N15
\Hum|HYM2[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \FGD|clk1M~clkctrl_outclk\,
	d => \Hum|HYM2[17]~feeder_combout\,
	ena => \Hum|HYM2[39]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Hum|HYM2\(17));

-- Location: LCCOMB_X17_Y14_N2
\SPI_MODULE|HYM_send~23\ : cycloneive_lcell_comb
-- Equation(s):
-- \SPI_MODULE|HYM_send~23_combout\ = (\SPI_MODULE|SSELr\(1) & (((\SPI_MODULE|HYM_send\(16))))) # (!\SPI_MODULE|SSELr\(1) & ((\SPI_MODULE|SSELr\(2) & (\Hum|HYM2\(17))) # (!\SPI_MODULE|SSELr\(2) & ((\SPI_MODULE|HYM_send\(16))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111101000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SPI_MODULE|SSELr\(1),
	datab => \Hum|HYM2\(17),
	datac => \SPI_MODULE|SSELr\(2),
	datad => \SPI_MODULE|HYM_send\(16),
	combout => \SPI_MODULE|HYM_send~23_combout\);

-- Location: FF_X18_Y14_N7
\Hum|HYM[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \FGD|clk1M~clkctrl_outclk\,
	d => \Hum|HYM~22_combout\,
	ena => \Hum|HYM[33]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Hum|HYM\(18));

-- Location: LCCOMB_X18_Y14_N28
\Hum|HYM~21\ : cycloneive_lcell_comb
-- Equation(s):
-- \Hum|HYM~21_combout\ = (\Hum|HYM\(18) & ((\Hum|protocol\(2)) # (!\Hum|protocol\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Hum|protocol\(1),
	datac => \Hum|protocol\(2),
	datad => \Hum|HYM\(18),
	combout => \Hum|HYM~21_combout\);

-- Location: FF_X17_Y13_N25
\SPI_MODULE|HYM_send[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \FGD|clk1M~clkctrl_outclk\,
	d => \SPI_MODULE|HYM_send~25_combout\,
	ena => \SPI_MODULE|HYM_send[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \SPI_MODULE|HYM_send\(15));

-- Location: FF_X18_Y14_N9
\Hum|HYM2[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \FGD|clk1M~clkctrl_outclk\,
	asdata => \Hum|HYM\(16),
	sload => VCC,
	ena => \Hum|HYM2[39]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Hum|HYM2\(16));

-- Location: LCCOMB_X16_Y13_N20
\SPI_MODULE|HYM_send~24\ : cycloneive_lcell_comb
-- Equation(s):
-- \SPI_MODULE|HYM_send~24_combout\ = (\SPI_MODULE|SSELr\(1) & (\SPI_MODULE|HYM_send\(15))) # (!\SPI_MODULE|SSELr\(1) & ((\SPI_MODULE|SSELr\(2) & ((\Hum|HYM2\(16)))) # (!\SPI_MODULE|SSELr\(2) & (\SPI_MODULE|HYM_send\(15)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110010001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SPI_MODULE|SSELr\(1),
	datab => \SPI_MODULE|HYM_send\(15),
	datac => \SPI_MODULE|SSELr\(2),
	datad => \Hum|HYM2\(16),
	combout => \SPI_MODULE|HYM_send~24_combout\);

-- Location: FF_X18_Y14_N27
\Hum|HYM[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \FGD|clk1M~clkctrl_outclk\,
	d => \Hum|HYM~23_combout\,
	ena => \Hum|HYM[33]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Hum|HYM\(17));

-- Location: LCCOMB_X18_Y14_N6
\Hum|HYM~22\ : cycloneive_lcell_comb
-- Equation(s):
-- \Hum|HYM~22_combout\ = (\Hum|HYM\(17) & ((\Hum|protocol\(2)) # (!\Hum|protocol\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101000011010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Hum|protocol\(1),
	datab => \Hum|protocol\(2),
	datac => \Hum|HYM\(17),
	combout => \Hum|HYM~22_combout\);

-- Location: FF_X17_Y13_N3
\SPI_MODULE|HYM_send[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \FGD|clk1M~clkctrl_outclk\,
	d => \SPI_MODULE|HYM_send~26_combout\,
	ena => \SPI_MODULE|HYM_send[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \SPI_MODULE|HYM_send\(14));

-- Location: FF_X18_Y14_N13
\Hum|HYM2[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \FGD|clk1M~clkctrl_outclk\,
	d => \Hum|HYM2[15]~feeder_combout\,
	ena => \Hum|HYM2[39]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Hum|HYM2\(15));

-- Location: LCCOMB_X17_Y13_N24
\SPI_MODULE|HYM_send~25\ : cycloneive_lcell_comb
-- Equation(s):
-- \SPI_MODULE|HYM_send~25_combout\ = (\SPI_MODULE|SSELr\(1) & (((\SPI_MODULE|HYM_send\(14))))) # (!\SPI_MODULE|SSELr\(1) & ((\SPI_MODULE|SSELr\(2) & (\Hum|HYM2\(15))) # (!\SPI_MODULE|SSELr\(2) & ((\SPI_MODULE|HYM_send\(14))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101101000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SPI_MODULE|SSELr\(1),
	datab => \SPI_MODULE|SSELr\(2),
	datac => \Hum|HYM2\(15),
	datad => \SPI_MODULE|HYM_send\(14),
	combout => \SPI_MODULE|HYM_send~25_combout\);

-- Location: FF_X18_Y14_N23
\Hum|HYM[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \FGD|clk1M~clkctrl_outclk\,
	d => \Hum|HYM~24_combout\,
	ena => \Hum|HYM[33]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Hum|HYM\(16));

-- Location: LCCOMB_X18_Y14_N26
\Hum|HYM~23\ : cycloneive_lcell_comb
-- Equation(s):
-- \Hum|HYM~23_combout\ = (\Hum|HYM\(16) & ((\Hum|protocol\(2)) # (!\Hum|protocol\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101000011010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Hum|protocol\(1),
	datab => \Hum|protocol\(2),
	datac => \Hum|HYM\(16),
	combout => \Hum|HYM~23_combout\);

-- Location: FF_X17_Y13_N5
\SPI_MODULE|HYM_send[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \FGD|clk1M~clkctrl_outclk\,
	d => \SPI_MODULE|HYM_send~27_combout\,
	ena => \SPI_MODULE|HYM_send[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \SPI_MODULE|HYM_send\(13));

-- Location: FF_X18_Y14_N25
\Hum|HYM2[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \FGD|clk1M~clkctrl_outclk\,
	asdata => \Hum|HYM\(14),
	sload => VCC,
	ena => \Hum|HYM2[39]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Hum|HYM2\(14));

-- Location: LCCOMB_X17_Y13_N2
\SPI_MODULE|HYM_send~26\ : cycloneive_lcell_comb
-- Equation(s):
-- \SPI_MODULE|HYM_send~26_combout\ = (\SPI_MODULE|SSELr\(1) & (((\SPI_MODULE|HYM_send\(13))))) # (!\SPI_MODULE|SSELr\(1) & ((\SPI_MODULE|SSELr\(2) & ((\Hum|HYM2\(14)))) # (!\SPI_MODULE|SSELr\(2) & (\SPI_MODULE|HYM_send\(13)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010010110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SPI_MODULE|SSELr\(1),
	datab => \SPI_MODULE|SSELr\(2),
	datac => \SPI_MODULE|HYM_send\(13),
	datad => \Hum|HYM2\(14),
	combout => \SPI_MODULE|HYM_send~26_combout\);

-- Location: FF_X18_Y14_N19
\Hum|HYM[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \FGD|clk1M~clkctrl_outclk\,
	d => \Hum|HYM~25_combout\,
	ena => \Hum|HYM[33]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Hum|HYM\(15));

-- Location: LCCOMB_X18_Y14_N22
\Hum|HYM~24\ : cycloneive_lcell_comb
-- Equation(s):
-- \Hum|HYM~24_combout\ = (\Hum|HYM\(15) & ((\Hum|protocol\(2)) # (!\Hum|protocol\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Hum|protocol\(1),
	datac => \Hum|protocol\(2),
	datad => \Hum|HYM\(15),
	combout => \Hum|HYM~24_combout\);

-- Location: FF_X17_Y13_N7
\SPI_MODULE|HYM_send[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \FGD|clk1M~clkctrl_outclk\,
	d => \SPI_MODULE|HYM_send~28_combout\,
	ena => \SPI_MODULE|HYM_send[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \SPI_MODULE|HYM_send\(12));

-- Location: FF_X18_Y14_N21
\Hum|HYM2[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \FGD|clk1M~clkctrl_outclk\,
	d => \Hum|HYM2[13]~feeder_combout\,
	ena => \Hum|HYM2[39]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Hum|HYM2\(13));

-- Location: LCCOMB_X17_Y13_N4
\SPI_MODULE|HYM_send~27\ : cycloneive_lcell_comb
-- Equation(s):
-- \SPI_MODULE|HYM_send~27_combout\ = (\SPI_MODULE|SSELr\(1) & (((\SPI_MODULE|HYM_send\(12))))) # (!\SPI_MODULE|SSELr\(1) & ((\SPI_MODULE|SSELr\(2) & (\Hum|HYM2\(13))) # (!\SPI_MODULE|SSELr\(2) & ((\SPI_MODULE|HYM_send\(12))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101101000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SPI_MODULE|SSELr\(1),
	datab => \SPI_MODULE|SSELr\(2),
	datac => \Hum|HYM2\(13),
	datad => \SPI_MODULE|HYM_send\(12),
	combout => \SPI_MODULE|HYM_send~27_combout\);

-- Location: FF_X18_Y14_N15
\Hum|HYM[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \FGD|clk1M~clkctrl_outclk\,
	d => \Hum|HYM~26_combout\,
	ena => \Hum|HYM[33]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Hum|HYM\(14));

-- Location: LCCOMB_X18_Y14_N18
\Hum|HYM~25\ : cycloneive_lcell_comb
-- Equation(s):
-- \Hum|HYM~25_combout\ = (\Hum|HYM\(14) & ((\Hum|protocol\(2)) # (!\Hum|protocol\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100010011000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Hum|protocol\(1),
	datab => \Hum|HYM\(14),
	datac => \Hum|protocol\(2),
	combout => \Hum|HYM~25_combout\);

-- Location: FF_X17_Y13_N1
\SPI_MODULE|HYM_send[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \FGD|clk1M~clkctrl_outclk\,
	d => \SPI_MODULE|HYM_send~29_combout\,
	ena => \SPI_MODULE|HYM_send[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \SPI_MODULE|HYM_send\(11));

-- Location: FF_X18_Y14_N1
\Hum|HYM2[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \FGD|clk1M~clkctrl_outclk\,
	asdata => \Hum|HYM\(12),
	sload => VCC,
	ena => \Hum|HYM2[39]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Hum|HYM2\(12));

-- Location: LCCOMB_X17_Y13_N6
\SPI_MODULE|HYM_send~28\ : cycloneive_lcell_comb
-- Equation(s):
-- \SPI_MODULE|HYM_send~28_combout\ = (\SPI_MODULE|SSELr\(1) & (((\SPI_MODULE|HYM_send\(11))))) # (!\SPI_MODULE|SSELr\(1) & ((\SPI_MODULE|SSELr\(2) & (\Hum|HYM2\(12))) # (!\SPI_MODULE|SSELr\(2) & ((\SPI_MODULE|HYM_send\(11))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101101000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SPI_MODULE|SSELr\(1),
	datab => \SPI_MODULE|SSELr\(2),
	datac => \Hum|HYM2\(12),
	datad => \SPI_MODULE|HYM_send\(11),
	combout => \SPI_MODULE|HYM_send~28_combout\);

-- Location: FF_X18_Y14_N11
\Hum|HYM[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \FGD|clk1M~clkctrl_outclk\,
	d => \Hum|HYM~27_combout\,
	ena => \Hum|HYM[33]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Hum|HYM\(13));

-- Location: LCCOMB_X18_Y14_N14
\Hum|HYM~26\ : cycloneive_lcell_comb
-- Equation(s):
-- \Hum|HYM~26_combout\ = (\Hum|HYM\(13) & ((\Hum|protocol\(2)) # (!\Hum|protocol\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Hum|protocol\(1),
	datac => \Hum|protocol\(2),
	datad => \Hum|HYM\(13),
	combout => \Hum|HYM~26_combout\);

-- Location: FF_X17_Y13_N11
\SPI_MODULE|HYM_send[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \FGD|clk1M~clkctrl_outclk\,
	d => \SPI_MODULE|HYM_send~30_combout\,
	ena => \SPI_MODULE|HYM_send[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \SPI_MODULE|HYM_send\(10));

-- Location: FF_X18_Y14_N5
\Hum|HYM2[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \FGD|clk1M~clkctrl_outclk\,
	asdata => \Hum|HYM\(11),
	sload => VCC,
	ena => \Hum|HYM2[39]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Hum|HYM2\(11));

-- Location: LCCOMB_X17_Y13_N0
\SPI_MODULE|HYM_send~29\ : cycloneive_lcell_comb
-- Equation(s):
-- \SPI_MODULE|HYM_send~29_combout\ = (\SPI_MODULE|SSELr\(1) & (((\SPI_MODULE|HYM_send\(10))))) # (!\SPI_MODULE|SSELr\(1) & ((\SPI_MODULE|SSELr\(2) & (\Hum|HYM2\(11))) # (!\SPI_MODULE|SSELr\(2) & ((\SPI_MODULE|HYM_send\(10))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101101000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SPI_MODULE|SSELr\(1),
	datab => \SPI_MODULE|SSELr\(2),
	datac => \Hum|HYM2\(11),
	datad => \SPI_MODULE|HYM_send\(10),
	combout => \SPI_MODULE|HYM_send~29_combout\);

-- Location: FF_X18_Y14_N31
\Hum|HYM[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \FGD|clk1M~clkctrl_outclk\,
	d => \Hum|HYM~28_combout\,
	ena => \Hum|HYM[33]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Hum|HYM\(12));

-- Location: LCCOMB_X18_Y14_N10
\Hum|HYM~27\ : cycloneive_lcell_comb
-- Equation(s):
-- \Hum|HYM~27_combout\ = (\Hum|HYM\(12) & ((\Hum|protocol\(2)) # (!\Hum|protocol\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101000011010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Hum|protocol\(1),
	datab => \Hum|protocol\(2),
	datac => \Hum|HYM\(12),
	combout => \Hum|HYM~27_combout\);

-- Location: FF_X17_Y13_N21
\SPI_MODULE|HYM_send[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \FGD|clk1M~clkctrl_outclk\,
	d => \SPI_MODULE|HYM_send~31_combout\,
	ena => \SPI_MODULE|HYM_send[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \SPI_MODULE|HYM_send\(9));

-- Location: FF_X17_Y15_N17
\Hum|HYM2[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \FGD|clk1M~clkctrl_outclk\,
	asdata => \Hum|HYM\(10),
	sload => VCC,
	ena => \Hum|HYM2[39]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Hum|HYM2\(10));

-- Location: LCCOMB_X17_Y13_N10
\SPI_MODULE|HYM_send~30\ : cycloneive_lcell_comb
-- Equation(s):
-- \SPI_MODULE|HYM_send~30_combout\ = (\SPI_MODULE|SSELr\(1) & (((\SPI_MODULE|HYM_send\(9))))) # (!\SPI_MODULE|SSELr\(1) & ((\SPI_MODULE|SSELr\(2) & (\Hum|HYM2\(10))) # (!\SPI_MODULE|SSELr\(2) & ((\SPI_MODULE|HYM_send\(9))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101101000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SPI_MODULE|SSELr\(1),
	datab => \SPI_MODULE|SSELr\(2),
	datac => \Hum|HYM2\(10),
	datad => \SPI_MODULE|HYM_send\(9),
	combout => \SPI_MODULE|HYM_send~30_combout\);

-- Location: FF_X17_Y15_N19
\Hum|HYM[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \FGD|clk1M~clkctrl_outclk\,
	d => \Hum|HYM~29_combout\,
	ena => \Hum|HYM[33]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Hum|HYM\(11));

-- Location: LCCOMB_X18_Y14_N30
\Hum|HYM~28\ : cycloneive_lcell_comb
-- Equation(s):
-- \Hum|HYM~28_combout\ = (\Hum|HYM\(11) & ((\Hum|protocol\(2)) # (!\Hum|protocol\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101000011010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Hum|protocol\(1),
	datab => \Hum|protocol\(2),
	datac => \Hum|HYM\(11),
	combout => \Hum|HYM~28_combout\);

-- Location: FF_X17_Y13_N15
\SPI_MODULE|HYM_send[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \FGD|clk1M~clkctrl_outclk\,
	d => \SPI_MODULE|HYM_send~32_combout\,
	ena => \SPI_MODULE|HYM_send[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \SPI_MODULE|HYM_send\(8));

-- Location: FF_X17_Y15_N21
\Hum|HYM2[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \FGD|clk1M~clkctrl_outclk\,
	d => \Hum|HYM2[9]~feeder_combout\,
	ena => \Hum|HYM2[39]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Hum|HYM2\(9));

-- Location: LCCOMB_X17_Y13_N20
\SPI_MODULE|HYM_send~31\ : cycloneive_lcell_comb
-- Equation(s):
-- \SPI_MODULE|HYM_send~31_combout\ = (\SPI_MODULE|SSELr\(1) & (((\SPI_MODULE|HYM_send\(8))))) # (!\SPI_MODULE|SSELr\(1) & ((\SPI_MODULE|SSELr\(2) & ((\Hum|HYM2\(9)))) # (!\SPI_MODULE|SSELr\(2) & (\SPI_MODULE|HYM_send\(8)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010010110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SPI_MODULE|SSELr\(1),
	datab => \SPI_MODULE|SSELr\(2),
	datac => \SPI_MODULE|HYM_send\(8),
	datad => \Hum|HYM2\(9),
	combout => \SPI_MODULE|HYM_send~31_combout\);

-- Location: FF_X17_Y15_N23
\Hum|HYM[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \FGD|clk1M~clkctrl_outclk\,
	d => \Hum|HYM~30_combout\,
	ena => \Hum|HYM[33]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Hum|HYM\(10));

-- Location: LCCOMB_X17_Y15_N18
\Hum|HYM~29\ : cycloneive_lcell_comb
-- Equation(s):
-- \Hum|HYM~29_combout\ = (\Hum|HYM\(10) & ((\Hum|protocol\(2)) # (!\Hum|protocol\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011000010110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Hum|protocol\(2),
	datab => \Hum|protocol\(1),
	datac => \Hum|HYM\(10),
	combout => \Hum|HYM~29_combout\);

-- Location: FF_X17_Y13_N17
\SPI_MODULE|HYM_send[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \FGD|clk1M~clkctrl_outclk\,
	d => \SPI_MODULE|HYM_send~33_combout\,
	ena => \SPI_MODULE|HYM_send[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \SPI_MODULE|HYM_send\(7));

-- Location: FF_X17_Y15_N9
\Hum|HYM2[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \FGD|clk1M~clkctrl_outclk\,
	d => \Hum|HYM2[8]~feeder_combout\,
	ena => \Hum|HYM2[39]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Hum|HYM2\(8));

-- Location: LCCOMB_X17_Y13_N14
\SPI_MODULE|HYM_send~32\ : cycloneive_lcell_comb
-- Equation(s):
-- \SPI_MODULE|HYM_send~32_combout\ = (\SPI_MODULE|SSELr\(1) & (((\SPI_MODULE|HYM_send\(7))))) # (!\SPI_MODULE|SSELr\(1) & ((\SPI_MODULE|SSELr\(2) & (\Hum|HYM2\(8))) # (!\SPI_MODULE|SSELr\(2) & ((\SPI_MODULE|HYM_send\(7))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101101000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SPI_MODULE|SSELr\(1),
	datab => \SPI_MODULE|SSELr\(2),
	datac => \Hum|HYM2\(8),
	datad => \SPI_MODULE|HYM_send\(7),
	combout => \SPI_MODULE|HYM_send~32_combout\);

-- Location: FF_X17_Y15_N3
\Hum|HYM[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \FGD|clk1M~clkctrl_outclk\,
	d => \Hum|HYM~31_combout\,
	ena => \Hum|HYM[33]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Hum|HYM\(9));

-- Location: LCCOMB_X17_Y15_N22
\Hum|HYM~30\ : cycloneive_lcell_comb
-- Equation(s):
-- \Hum|HYM~30_combout\ = (\Hum|HYM\(9) & ((\Hum|protocol\(2)) # (!\Hum|protocol\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Hum|protocol\(2),
	datac => \Hum|protocol\(1),
	datad => \Hum|HYM\(9),
	combout => \Hum|HYM~30_combout\);

-- Location: FF_X17_Y13_N19
\SPI_MODULE|HYM_send[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \FGD|clk1M~clkctrl_outclk\,
	d => \SPI_MODULE|HYM_send~34_combout\,
	ena => \SPI_MODULE|HYM_send[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \SPI_MODULE|HYM_send\(6));

-- Location: FF_X17_Y15_N29
\Hum|HYM2[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \FGD|clk1M~clkctrl_outclk\,
	asdata => \Hum|HYM\(7),
	sload => VCC,
	ena => \Hum|HYM2[39]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Hum|HYM2\(7));

-- Location: LCCOMB_X17_Y13_N16
\SPI_MODULE|HYM_send~33\ : cycloneive_lcell_comb
-- Equation(s):
-- \SPI_MODULE|HYM_send~33_combout\ = (\SPI_MODULE|SSELr\(1) & (((\SPI_MODULE|HYM_send\(6))))) # (!\SPI_MODULE|SSELr\(1) & ((\SPI_MODULE|SSELr\(2) & (\Hum|HYM2\(7))) # (!\SPI_MODULE|SSELr\(2) & ((\SPI_MODULE|HYM_send\(6))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101101000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SPI_MODULE|SSELr\(1),
	datab => \SPI_MODULE|SSELr\(2),
	datac => \Hum|HYM2\(7),
	datad => \SPI_MODULE|HYM_send\(6),
	combout => \SPI_MODULE|HYM_send~33_combout\);

-- Location: FF_X17_Y15_N7
\Hum|HYM[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \FGD|clk1M~clkctrl_outclk\,
	d => \Hum|HYM~32_combout\,
	ena => \Hum|HYM[33]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Hum|HYM\(8));

-- Location: LCCOMB_X17_Y15_N2
\Hum|HYM~31\ : cycloneive_lcell_comb
-- Equation(s):
-- \Hum|HYM~31_combout\ = (\Hum|HYM\(8) & ((\Hum|protocol\(2)) # (!\Hum|protocol\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Hum|protocol\(2),
	datac => \Hum|protocol\(1),
	datad => \Hum|HYM\(8),
	combout => \Hum|HYM~31_combout\);

-- Location: FF_X17_Y13_N29
\SPI_MODULE|HYM_send[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \FGD|clk1M~clkctrl_outclk\,
	d => \SPI_MODULE|HYM_send~35_combout\,
	ena => \SPI_MODULE|HYM_send[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \SPI_MODULE|HYM_send\(5));

-- Location: FF_X17_Y15_N25
\Hum|HYM2[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \FGD|clk1M~clkctrl_outclk\,
	asdata => \Hum|HYM\(6),
	sload => VCC,
	ena => \Hum|HYM2[39]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Hum|HYM2\(6));

-- Location: LCCOMB_X17_Y13_N18
\SPI_MODULE|HYM_send~34\ : cycloneive_lcell_comb
-- Equation(s):
-- \SPI_MODULE|HYM_send~34_combout\ = (\SPI_MODULE|SSELr\(1) & (((\SPI_MODULE|HYM_send\(5))))) # (!\SPI_MODULE|SSELr\(1) & ((\SPI_MODULE|SSELr\(2) & (\Hum|HYM2\(6))) # (!\SPI_MODULE|SSELr\(2) & ((\SPI_MODULE|HYM_send\(5))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101101000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SPI_MODULE|SSELr\(1),
	datab => \SPI_MODULE|SSELr\(2),
	datac => \Hum|HYM2\(6),
	datad => \SPI_MODULE|HYM_send\(5),
	combout => \SPI_MODULE|HYM_send~34_combout\);

-- Location: FF_X17_Y15_N27
\Hum|HYM[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \FGD|clk1M~clkctrl_outclk\,
	d => \Hum|HYM~33_combout\,
	ena => \Hum|HYM[33]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Hum|HYM\(7));

-- Location: LCCOMB_X17_Y15_N6
\Hum|HYM~32\ : cycloneive_lcell_comb
-- Equation(s):
-- \Hum|HYM~32_combout\ = (\Hum|HYM\(7) & ((\Hum|protocol\(2)) # (!\Hum|protocol\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011000010110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Hum|protocol\(2),
	datab => \Hum|protocol\(1),
	datac => \Hum|HYM\(7),
	combout => \Hum|HYM~32_combout\);

-- Location: FF_X17_Y13_N23
\SPI_MODULE|HYM_send[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \FGD|clk1M~clkctrl_outclk\,
	d => \SPI_MODULE|HYM_send~36_combout\,
	ena => \SPI_MODULE|HYM_send[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \SPI_MODULE|HYM_send\(4));

-- Location: FF_X17_Y15_N5
\Hum|HYM2[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \FGD|clk1M~clkctrl_outclk\,
	d => \Hum|HYM2[5]~feeder_combout\,
	ena => \Hum|HYM2[39]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Hum|HYM2\(5));

-- Location: LCCOMB_X17_Y13_N28
\SPI_MODULE|HYM_send~35\ : cycloneive_lcell_comb
-- Equation(s):
-- \SPI_MODULE|HYM_send~35_combout\ = (\SPI_MODULE|SSELr\(1) & (\SPI_MODULE|HYM_send\(4))) # (!\SPI_MODULE|SSELr\(1) & ((\SPI_MODULE|SSELr\(2) & ((\Hum|HYM2\(5)))) # (!\SPI_MODULE|SSELr\(2) & (\SPI_MODULE|HYM_send\(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SPI_MODULE|HYM_send\(4),
	datab => \SPI_MODULE|SSELr\(1),
	datac => \Hum|HYM2\(5),
	datad => \SPI_MODULE|SSELr\(2),
	combout => \SPI_MODULE|HYM_send~35_combout\);

-- Location: FF_X17_Y15_N31
\Hum|HYM[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \FGD|clk1M~clkctrl_outclk\,
	d => \Hum|HYM~34_combout\,
	ena => \Hum|HYM[33]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Hum|HYM\(6));

-- Location: LCCOMB_X17_Y15_N26
\Hum|HYM~33\ : cycloneive_lcell_comb
-- Equation(s):
-- \Hum|HYM~33_combout\ = (\Hum|HYM\(6) & ((\Hum|protocol\(2)) # (!\Hum|protocol\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011000010110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Hum|protocol\(2),
	datab => \Hum|protocol\(1),
	datac => \Hum|HYM\(6),
	combout => \Hum|HYM~33_combout\);

-- Location: FF_X17_Y13_N9
\SPI_MODULE|HYM_send[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \FGD|clk1M~clkctrl_outclk\,
	d => \SPI_MODULE|HYM_send~37_combout\,
	ena => \SPI_MODULE|HYM_send[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \SPI_MODULE|HYM_send\(3));

-- Location: FF_X17_Y15_N1
\Hum|HYM2[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \FGD|clk1M~clkctrl_outclk\,
	asdata => \Hum|HYM\(4),
	sload => VCC,
	ena => \Hum|HYM2[39]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Hum|HYM2\(4));

-- Location: LCCOMB_X17_Y13_N22
\SPI_MODULE|HYM_send~36\ : cycloneive_lcell_comb
-- Equation(s):
-- \SPI_MODULE|HYM_send~36_combout\ = (\SPI_MODULE|SSELr\(1) & (((\SPI_MODULE|HYM_send\(3))))) # (!\SPI_MODULE|SSELr\(1) & ((\SPI_MODULE|SSELr\(2) & ((\Hum|HYM2\(4)))) # (!\SPI_MODULE|SSELr\(2) & (\SPI_MODULE|HYM_send\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010010110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SPI_MODULE|SSELr\(1),
	datab => \SPI_MODULE|SSELr\(2),
	datac => \SPI_MODULE|HYM_send\(3),
	datad => \Hum|HYM2\(4),
	combout => \SPI_MODULE|HYM_send~36_combout\);

-- Location: FF_X17_Y15_N11
\Hum|HYM[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \FGD|clk1M~clkctrl_outclk\,
	d => \Hum|HYM~35_combout\,
	ena => \Hum|HYM[33]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Hum|HYM\(5));

-- Location: LCCOMB_X17_Y15_N30
\Hum|HYM~34\ : cycloneive_lcell_comb
-- Equation(s):
-- \Hum|HYM~34_combout\ = (\Hum|HYM\(5) & ((\Hum|protocol\(2)) # (!\Hum|protocol\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Hum|protocol\(2),
	datac => \Hum|protocol\(1),
	datad => \Hum|HYM\(5),
	combout => \Hum|HYM~34_combout\);

-- Location: FF_X17_Y13_N27
\SPI_MODULE|HYM_send[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \FGD|clk1M~clkctrl_outclk\,
	d => \SPI_MODULE|HYM_send~38_combout\,
	ena => \SPI_MODULE|HYM_send[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \SPI_MODULE|HYM_send\(2));

-- Location: FF_X17_Y15_N13
\Hum|HYM2[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \FGD|clk1M~clkctrl_outclk\,
	asdata => \Hum|HYM\(3),
	sload => VCC,
	ena => \Hum|HYM2[39]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Hum|HYM2\(3));

-- Location: LCCOMB_X17_Y13_N8
\SPI_MODULE|HYM_send~37\ : cycloneive_lcell_comb
-- Equation(s):
-- \SPI_MODULE|HYM_send~37_combout\ = (\SPI_MODULE|SSELr\(1) & (((\SPI_MODULE|HYM_send\(2))))) # (!\SPI_MODULE|SSELr\(1) & ((\SPI_MODULE|SSELr\(2) & ((\Hum|HYM2\(3)))) # (!\SPI_MODULE|SSELr\(2) & (\SPI_MODULE|HYM_send\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010010110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SPI_MODULE|SSELr\(1),
	datab => \SPI_MODULE|SSELr\(2),
	datac => \SPI_MODULE|HYM_send\(2),
	datad => \Hum|HYM2\(3),
	combout => \SPI_MODULE|HYM_send~37_combout\);

-- Location: FF_X17_Y15_N15
\Hum|HYM[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \FGD|clk1M~clkctrl_outclk\,
	d => \Hum|HYM~36_combout\,
	ena => \Hum|HYM[33]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Hum|HYM\(4));

-- Location: LCCOMB_X17_Y15_N10
\Hum|HYM~35\ : cycloneive_lcell_comb
-- Equation(s):
-- \Hum|HYM~35_combout\ = (\Hum|HYM\(4) & ((\Hum|protocol\(2)) # (!\Hum|protocol\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000110010001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Hum|protocol\(2),
	datab => \Hum|HYM\(4),
	datac => \Hum|protocol\(1),
	combout => \Hum|HYM~35_combout\);

-- Location: FF_X17_Y13_N13
\SPI_MODULE|HYM_send[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \FGD|clk1M~clkctrl_outclk\,
	d => \SPI_MODULE|HYM_send~39_combout\,
	ena => \SPI_MODULE|HYM_send[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \SPI_MODULE|HYM_send\(1));

-- Location: FF_X18_Y13_N11
\Hum|HYM2[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \FGD|clk1M~clkctrl_outclk\,
	d => \Hum|HYM2[2]~feeder_combout\,
	ena => \Hum|HYM2[39]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Hum|HYM2\(2));

-- Location: LCCOMB_X17_Y13_N26
\SPI_MODULE|HYM_send~38\ : cycloneive_lcell_comb
-- Equation(s):
-- \SPI_MODULE|HYM_send~38_combout\ = (\SPI_MODULE|SSELr\(1) & (((\SPI_MODULE|HYM_send\(1))))) # (!\SPI_MODULE|SSELr\(1) & ((\SPI_MODULE|SSELr\(2) & (\Hum|HYM2\(2))) # (!\SPI_MODULE|SSELr\(2) & ((\SPI_MODULE|HYM_send\(1))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101101000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SPI_MODULE|SSELr\(1),
	datab => \SPI_MODULE|SSELr\(2),
	datac => \Hum|HYM2\(2),
	datad => \SPI_MODULE|HYM_send\(1),
	combout => \SPI_MODULE|HYM_send~38_combout\);

-- Location: FF_X18_Y13_N13
\Hum|HYM[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \FGD|clk1M~clkctrl_outclk\,
	d => \Hum|HYM~37_combout\,
	ena => \Hum|HYM[33]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Hum|HYM\(3));

-- Location: LCCOMB_X17_Y15_N14
\Hum|HYM~36\ : cycloneive_lcell_comb
-- Equation(s):
-- \Hum|HYM~36_combout\ = (\Hum|HYM\(3) & ((\Hum|protocol\(2)) # (!\Hum|protocol\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000110010001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Hum|protocol\(2),
	datab => \Hum|HYM\(3),
	datac => \Hum|protocol\(1),
	combout => \Hum|HYM~36_combout\);

-- Location: FF_X17_Y13_N31
\SPI_MODULE|HYM_send[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \FGD|clk1M~clkctrl_outclk\,
	d => \SPI_MODULE|HYM_send[0]~41_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \SPI_MODULE|HYM_send\(0));

-- Location: FF_X18_Y13_N7
\Hum|HYM2[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \FGD|clk1M~clkctrl_outclk\,
	d => \Hum|HYM2[1]~feeder_combout\,
	ena => \Hum|HYM2[39]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Hum|HYM2\(1));

-- Location: LCCOMB_X17_Y13_N12
\SPI_MODULE|HYM_send~39\ : cycloneive_lcell_comb
-- Equation(s):
-- \SPI_MODULE|HYM_send~39_combout\ = (\SPI_MODULE|SSELr\(1) & (((\SPI_MODULE|HYM_send\(0))))) # (!\SPI_MODULE|SSELr\(1) & ((\SPI_MODULE|SSELr\(2) & ((\Hum|HYM2\(1)))) # (!\SPI_MODULE|SSELr\(2) & (\SPI_MODULE|HYM_send\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010010110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SPI_MODULE|SSELr\(1),
	datab => \SPI_MODULE|SSELr\(2),
	datac => \SPI_MODULE|HYM_send\(0),
	datad => \Hum|HYM2\(1),
	combout => \SPI_MODULE|HYM_send~39_combout\);

-- Location: FF_X18_Y13_N25
\Hum|HYM[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \FGD|clk1M~clkctrl_outclk\,
	d => \Hum|HYM~38_combout\,
	ena => \Hum|HYM[33]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Hum|HYM\(2));

-- Location: LCCOMB_X18_Y13_N12
\Hum|HYM~37\ : cycloneive_lcell_comb
-- Equation(s):
-- \Hum|HYM~37_combout\ = (\Hum|HYM\(2) & ((\Hum|protocol\(2)) # (!\Hum|protocol\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Hum|protocol\(2),
	datac => \Hum|protocol\(1),
	datad => \Hum|HYM\(2),
	combout => \Hum|HYM~37_combout\);

-- Location: FF_X18_Y13_N19
\Hum|HYM2[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \FGD|clk1M~clkctrl_outclk\,
	asdata => \Hum|HYM\(0),
	sload => VCC,
	ena => \Hum|HYM2[39]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Hum|HYM2\(0));

-- Location: LCCOMB_X18_Y13_N18
\SPI_MODULE|HYM_send[0]~40\ : cycloneive_lcell_comb
-- Equation(s):
-- \SPI_MODULE|HYM_send[0]~40_combout\ = (!\SPI_MODULE|SSELr\(1) & (\Hum|HYM2\(0) & \SPI_MODULE|SSELr\(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \SPI_MODULE|SSELr\(1),
	datac => \Hum|HYM2\(0),
	datad => \SPI_MODULE|SSELr\(2),
	combout => \SPI_MODULE|HYM_send[0]~40_combout\);

-- Location: LCCOMB_X17_Y13_N30
\SPI_MODULE|HYM_send[0]~41\ : cycloneive_lcell_comb
-- Equation(s):
-- \SPI_MODULE|HYM_send[0]~41_combout\ = (\SPI_MODULE|HYM_send[0]~40_combout\) # ((!\SPI_MODULE|HYM_send[0]~1_combout\ & \SPI_MODULE|HYM_send\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \SPI_MODULE|HYM_send[0]~1_combout\,
	datac => \SPI_MODULE|HYM_send\(0),
	datad => \SPI_MODULE|HYM_send[0]~40_combout\,
	combout => \SPI_MODULE|HYM_send[0]~41_combout\);

-- Location: FF_X18_Y13_N29
\Hum|HYM[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \FGD|clk1M~clkctrl_outclk\,
	d => \Hum|HYM~39_combout\,
	ena => \Hum|HYM[33]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Hum|HYM\(1));

-- Location: LCCOMB_X18_Y13_N24
\Hum|HYM~38\ : cycloneive_lcell_comb
-- Equation(s):
-- \Hum|HYM~38_combout\ = (\Hum|HYM\(1) & ((\Hum|protocol\(2)) # (!\Hum|protocol\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Hum|protocol\(2),
	datac => \Hum|protocol\(1),
	datad => \Hum|HYM\(1),
	combout => \Hum|HYM~38_combout\);

-- Location: FF_X19_Y13_N1
\Hum|HYM[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \FGD|clk1M~clkctrl_outclk\,
	d => \Hum|HYM~42_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Hum|HYM\(0));

-- Location: LCCOMB_X18_Y13_N28
\Hum|HYM~39\ : cycloneive_lcell_comb
-- Equation(s):
-- \Hum|HYM~39_combout\ = (\Hum|HYM\(0) & ((\Hum|protocol\(2)) # (!\Hum|protocol\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Hum|protocol\(2),
	datac => \Hum|HYM\(0),
	datad => \Hum|protocol\(1),
	combout => \Hum|HYM~39_combout\);

-- Location: LCCOMB_X18_Y13_N22
\Hum|HYM~40\ : cycloneive_lcell_comb
-- Equation(s):
-- \Hum|HYM~40_combout\ = (\Hum|always2~5_combout\ & (\Hum|HYM2[39]~0_combout\ & \Hum|mstate.010~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Hum|always2~5_combout\,
	datac => \Hum|HYM2[39]~0_combout\,
	datad => \Hum|mstate.010~q\,
	combout => \Hum|HYM~40_combout\);

-- Location: LCCOMB_X17_Y12_N4
\Hum|HYM~41\ : cycloneive_lcell_comb
-- Equation(s):
-- \Hum|HYM~41_combout\ = ((\Hum|data_rec\(1) & !\Hum|data_rec\(2))) # (!\Hum|mstate.010~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Hum|mstate.010~q\,
	datac => \Hum|data_rec\(1),
	datad => \Hum|data_rec\(2),
	combout => \Hum|HYM~41_combout\);

-- Location: LCCOMB_X19_Y13_N0
\Hum|HYM~42\ : cycloneive_lcell_comb
-- Equation(s):
-- \Hum|HYM~42_combout\ = (\Hum|HYM~40_combout\) # ((\Hum|HYM~39_combout\ & ((\Hum|always2~2_combout\) # (\Hum|HYM~41_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Hum|always2~2_combout\,
	datab => \Hum|HYM~40_combout\,
	datac => \Hum|HYM~41_combout\,
	datad => \Hum|HYM~39_combout\,
	combout => \Hum|HYM~42_combout\);

-- Location: LCCOMB_X17_Y3_N12
\SDRV|state[0]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \SDRV|state[0]~2_combout\ = !\SDRV|state\(0)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \SDRV|state\(0),
	combout => \SDRV|state[0]~2_combout\);

-- Location: CLKCTRL_G0
\RL|Q~clkctrl\ : cycloneive_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \RL|Q~clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \RL|Q~clkctrl_outclk\);

-- Location: CLKCTRL_G9
\FGD|clk25M~clkctrl\ : cycloneive_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \FGD|clk25M~clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \FGD|clk25M~clkctrl_outclk\);

-- Location: CLKCTRL_G3
\FGD|clk1hz~clkctrl\ : cycloneive_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \FGD|clk1hz~clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \FGD|clk1hz~clkctrl_outclk\);

-- Location: LCCOMB_X13_Y14_N8
\Hum|HYM2[39]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \Hum|HYM2[39]~feeder_combout\ = \Hum|HYM\(39)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \Hum|HYM\(39),
	combout => \Hum|HYM2[39]~feeder_combout\);

-- Location: LCCOMB_X13_Y14_N2
\Hum|HYM2[38]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \Hum|HYM2[38]~feeder_combout\ = \Hum|HYM\(38)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \Hum|HYM\(38),
	combout => \Hum|HYM2[38]~feeder_combout\);

-- Location: LCCOMB_X13_Y14_N18
\Hum|HYM2[36]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \Hum|HYM2[36]~feeder_combout\ = \Hum|HYM\(36)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \Hum|HYM\(36),
	combout => \Hum|HYM2[36]~feeder_combout\);

-- Location: LCCOMB_X13_Y14_N30
\Hum|HYM2[35]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \Hum|HYM2[35]~feeder_combout\ = \Hum|HYM\(35)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \Hum|HYM\(35),
	combout => \Hum|HYM2[35]~feeder_combout\);

-- Location: LCCOMB_X13_Y14_N26
\Hum|HYM2[34]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \Hum|HYM2[34]~feeder_combout\ = \Hum|HYM\(34)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \Hum|HYM\(34),
	combout => \Hum|HYM2[34]~feeder_combout\);

-- Location: LCCOMB_X13_Y14_N10
\Hum|HYM2[32]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \Hum|HYM2[32]~feeder_combout\ = \Hum|HYM\(32)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \Hum|HYM\(32),
	combout => \Hum|HYM2[32]~feeder_combout\);

-- Location: LCCOMB_X14_Y14_N28
\Hum|HYM2[31]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \Hum|HYM2[31]~feeder_combout\ = \Hum|HYM\(31)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \Hum|HYM\(31),
	combout => \Hum|HYM2[31]~feeder_combout\);

-- Location: LCCOMB_X16_Y14_N10
\Hum|HYM2[26]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \Hum|HYM2[26]~feeder_combout\ = \Hum|HYM\(26)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \Hum|HYM\(26),
	combout => \Hum|HYM2[26]~feeder_combout\);

-- Location: LCCOMB_X16_Y14_N30
\Hum|HYM2[25]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \Hum|HYM2[25]~feeder_combout\ = \Hum|HYM\(25)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \Hum|HYM\(25),
	combout => \Hum|HYM2[25]~feeder_combout\);

-- Location: LCCOMB_X16_Y14_N26
\Hum|HYM2[24]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \Hum|HYM2[24]~feeder_combout\ = \Hum|HYM\(24)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \Hum|HYM\(24),
	combout => \Hum|HYM2[24]~feeder_combout\);

-- Location: LCCOMB_X16_Y14_N22
\Hum|HYM2[23]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \Hum|HYM2[23]~feeder_combout\ = \Hum|HYM\(23)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \Hum|HYM\(23),
	combout => \Hum|HYM2[23]~feeder_combout\);

-- Location: LCCOMB_X16_Y14_N18
\Hum|HYM2[22]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \Hum|HYM2[22]~feeder_combout\ = \Hum|HYM\(22)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \Hum|HYM\(22),
	combout => \Hum|HYM2[22]~feeder_combout\);

-- Location: LCCOMB_X17_Y14_N24
\Hum|HYM2[21]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \Hum|HYM2[21]~feeder_combout\ = \Hum|HYM\(21)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \Hum|HYM\(21),
	combout => \Hum|HYM2[21]~feeder_combout\);

-- Location: LCCOMB_X17_Y14_N28
\Hum|HYM2[20]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \Hum|HYM2[20]~feeder_combout\ = \Hum|HYM\(20)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \Hum|HYM\(20),
	combout => \Hum|HYM2[20]~feeder_combout\);

-- Location: LCCOMB_X17_Y14_N8
\Hum|HYM2[19]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \Hum|HYM2[19]~feeder_combout\ = \Hum|HYM\(19)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \Hum|HYM\(19),
	combout => \Hum|HYM2[19]~feeder_combout\);

-- Location: LCCOMB_X17_Y14_N20
\Hum|HYM2[18]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \Hum|HYM2[18]~feeder_combout\ = \Hum|HYM\(18)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \Hum|HYM\(18),
	combout => \Hum|HYM2[18]~feeder_combout\);

-- Location: LCCOMB_X17_Y14_N14
\Hum|HYM2[17]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \Hum|HYM2[17]~feeder_combout\ = \Hum|HYM\(17)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \Hum|HYM\(17),
	combout => \Hum|HYM2[17]~feeder_combout\);

-- Location: LCCOMB_X18_Y14_N12
\Hum|HYM2[15]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \Hum|HYM2[15]~feeder_combout\ = \Hum|HYM\(15)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \Hum|HYM\(15),
	combout => \Hum|HYM2[15]~feeder_combout\);

-- Location: LCCOMB_X18_Y14_N20
\Hum|HYM2[13]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \Hum|HYM2[13]~feeder_combout\ = \Hum|HYM\(13)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \Hum|HYM\(13),
	combout => \Hum|HYM2[13]~feeder_combout\);

-- Location: LCCOMB_X17_Y15_N20
\Hum|HYM2[9]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \Hum|HYM2[9]~feeder_combout\ = \Hum|HYM\(9)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \Hum|HYM\(9),
	combout => \Hum|HYM2[9]~feeder_combout\);

-- Location: LCCOMB_X17_Y15_N8
\Hum|HYM2[8]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \Hum|HYM2[8]~feeder_combout\ = \Hum|HYM\(8)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \Hum|HYM\(8),
	combout => \Hum|HYM2[8]~feeder_combout\);

-- Location: LCCOMB_X17_Y15_N4
\Hum|HYM2[5]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \Hum|HYM2[5]~feeder_combout\ = \Hum|HYM\(5)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \Hum|HYM\(5),
	combout => \Hum|HYM2[5]~feeder_combout\);

-- Location: LCCOMB_X18_Y13_N10
\Hum|HYM2[2]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \Hum|HYM2[2]~feeder_combout\ = \Hum|HYM\(2)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \Hum|HYM\(2),
	combout => \Hum|HYM2[2]~feeder_combout\);

-- Location: LCCOMB_X18_Y13_N6
\Hum|HYM2[1]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \Hum|HYM2[1]~feeder_combout\ = \Hum|HYM\(1)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \Hum|HYM\(1),
	combout => \Hum|HYM2[1]~feeder_combout\);

-- Location: IOOBUF_X0_Y9_N9
\Data_H~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Hum|Data_H_REG~q\,
	oe => \Hum|Data_H_write~q\,
	devoe => ww_devoe,
	o => \Data_H~output_o\);

-- Location: IOOBUF_X0_Y23_N9
\led0~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \key0~input_o\,
	devoe => ww_devoe,
	o => \led0~output_o\);

-- Location: IOOBUF_X0_Y23_N16
\led1~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \FGD|clk1hz~q\,
	devoe => ww_devoe,
	o => \led1~output_o\);

-- Location: IOOBUF_X30_Y0_N2
\MISO~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \SPI_MODULE|HYM_send\(39),
	devoe => ww_devoe,
	o => \MISO~output_o\);

-- Location: IOOBUF_X23_Y0_N16
\OUT_final[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \E_s|OUT_final[0]~0_combout\,
	devoe => ww_devoe,
	o => \OUT_final[0]~output_o\);

-- Location: IOOBUF_X21_Y0_N9
\OUT_final[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \E_s|OUT_final[1]~1_combout\,
	devoe => ww_devoe,
	o => \OUT_final[1]~output_o\);

-- Location: IOOBUF_X16_Y0_N2
\OUT_final[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \E_s|OUT_final[2]~2_combout\,
	devoe => ww_devoe,
	o => \OUT_final[2]~output_o\);

-- Location: IOOBUF_X16_Y0_N9
\OUT_final[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \E_s|OUT_final[3]~3_combout\,
	devoe => ww_devoe,
	o => \OUT_final[3]~output_o\);

-- Location: IOOBUF_X0_Y6_N23
\PWM_out~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \p_w_m|LessThan0~14_combout\,
	devoe => ww_devoe,
	o => \PWM_out~output_o\);

-- Location: IOOBUF_X0_Y5_N16
\PWM_out2~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \p_w_m|LessThan1~14_combout\,
	devoe => ww_devoe,
	o => \PWM_out2~output_o\);

-- Location: IOOBUF_X1_Y0_N16
\PWM_out3~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \p_w_m|LessThan2~14_combout\,
	devoe => ww_devoe,
	o => \PWM_out3~output_o\);

-- Location: IOOBUF_X0_Y6_N16
\PWM_out4~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \p_w_m|LessThan3~14_combout\,
	devoe => ww_devoe,
	o => \PWM_out4~output_o\);

-- Location: IOOBUF_X1_Y0_N23
\PWM_out5~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \p_w_m|LessThan4~14_combout\,
	devoe => ww_devoe,
	o => \PWM_out5~output_o\);

-- Location: IOOBUF_X25_Y0_N2
\PWM_out6~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \p_w_m|LessThan5~14_combout\,
	devoe => ww_devoe,
	o => \PWM_out6~output_o\);

-- Location: IOOBUF_X28_Y0_N2
\PWM_out7~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \p_w_m|LessThan6~14_combout\,
	devoe => ww_devoe,
	o => \PWM_out7~output_o\);

-- Location: IOOBUF_X0_Y8_N16
\PWM_out8~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \p_w_m|LessThan7~14_combout\,
	devoe => ww_devoe,
	o => \PWM_out8~output_o\);

-- Location: IOOBUF_X13_Y0_N2
\PWM_out9~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \p_w_m|LessThan8~14_combout\,
	devoe => ww_devoe,
	o => \PWM_out9~output_o\);

-- Location: IOOBUF_X18_Y0_N16
\PWM_out_vent~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \p_w_m|LessThan9~14_combout\,
	devoe => ww_devoe,
	o => \PWM_out_vent~output_o\);

-- Location: IOOBUF_X18_Y0_N23
\flag_five_sec~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \F_S|ALT_INV_flag_five_sec~q\,
	devoe => ww_devoe,
	o => \flag_five_sec~output_o\);

-- Location: IOOBUF_X23_Y0_N9
\Data_H_test~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Hum|Data_H_test~q\,
	devoe => ww_devoe,
	o => \Data_H_test~output_o\);

-- Location: LCCOMB_X1_Y11_N2
\FGD|Add2~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \FGD|Add2~0_combout\ = \FGD|z\(0) $ (VCC)
-- \FGD|Add2~1\ = CARRY(\FGD|z\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \FGD|z\(0),
	datad => VCC,
	combout => \FGD|Add2~0_combout\,
	cout => \FGD|Add2~1\);

-- Location: FF_X1_Y11_N3
\FGD|z[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk50M~inputclkctrl_outclk\,
	d => \FGD|Add2~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FGD|z\(0));

-- Location: LCCOMB_X1_Y11_N4
\FGD|Add2~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \FGD|Add2~2_combout\ = (\FGD|z\(1) & (!\FGD|Add2~1\)) # (!\FGD|z\(1) & ((\FGD|Add2~1\) # (GND)))
-- \FGD|Add2~3\ = CARRY((!\FGD|Add2~1\) # (!\FGD|z\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \FGD|z\(1),
	datad => VCC,
	cin => \FGD|Add2~1\,
	combout => \FGD|Add2~2_combout\,
	cout => \FGD|Add2~3\);

-- Location: LCCOMB_X1_Y11_N26
\FGD|z~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \FGD|z~0_combout\ = (\FGD|Add2~2_combout\ & (((\FGD|z\(1)) # (!\FGD|z\(0))) # (!\FGD|Equal2~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100010011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FGD|Equal2~0_combout\,
	datab => \FGD|Add2~2_combout\,
	datac => \FGD|z\(1),
	datad => \FGD|z\(0),
	combout => \FGD|z~0_combout\);

-- Location: FF_X1_Y11_N27
\FGD|z[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk50M~inputclkctrl_outclk\,
	d => \FGD|z~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FGD|z\(1));

-- Location: LCCOMB_X1_Y11_N0
\FGD|z~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \FGD|z~1_combout\ = (\FGD|Add2~8_combout\ & (((\FGD|z\(1)) # (!\FGD|z\(0))) # (!\FGD|Equal2~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010001010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FGD|Add2~8_combout\,
	datab => \FGD|Equal2~0_combout\,
	datac => \FGD|z\(1),
	datad => \FGD|z\(0),
	combout => \FGD|z~1_combout\);

-- Location: FF_X1_Y11_N1
\FGD|z[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk50M~inputclkctrl_outclk\,
	d => \FGD|z~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FGD|z\(4));

-- Location: LCCOMB_X1_Y11_N8
\FGD|Add2~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \FGD|Add2~6_combout\ = (\FGD|z\(3) & (!\FGD|Add2~5\)) # (!\FGD|z\(3) & ((\FGD|Add2~5\) # (GND)))
-- \FGD|Add2~7\ = CARRY((!\FGD|Add2~5\) # (!\FGD|z\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \FGD|z\(3),
	datad => VCC,
	cin => \FGD|Add2~5\,
	combout => \FGD|Add2~6_combout\,
	cout => \FGD|Add2~7\);

-- Location: LCCOMB_X1_Y11_N12
\FGD|Add2~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \FGD|Add2~10_combout\ = \FGD|z\(5) $ (\FGD|Add2~9\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \FGD|z\(5),
	cin => \FGD|Add2~9\,
	combout => \FGD|Add2~10_combout\);

-- Location: FF_X1_Y11_N13
\FGD|z[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk50M~inputclkctrl_outclk\,
	d => \FGD|Add2~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FGD|z\(5));

-- Location: LCCOMB_X1_Y11_N22
\FGD|z~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \FGD|z~2_combout\ = (\FGD|Add2~6_combout\ & ((\FGD|z\(1)) # ((!\FGD|z\(0)) # (!\FGD|Equal2~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FGD|z\(1),
	datab => \FGD|Equal2~0_combout\,
	datac => \FGD|Add2~6_combout\,
	datad => \FGD|z\(0),
	combout => \FGD|z~2_combout\);

-- Location: FF_X1_Y11_N23
\FGD|z[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk50M~inputclkctrl_outclk\,
	d => \FGD|z~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FGD|z\(3));

-- Location: LCCOMB_X1_Y11_N24
\FGD|Equal2~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \FGD|Equal2~0_combout\ = (!\FGD|z\(2) & (!\FGD|z\(5) & (\FGD|z\(3) & \FGD|z\(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FGD|z\(2),
	datab => \FGD|z\(5),
	datac => \FGD|z\(3),
	datad => \FGD|z\(4),
	combout => \FGD|Equal2~0_combout\);

-- Location: LCCOMB_X1_Y11_N14
\FGD|clk1M~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \FGD|clk1M~0_combout\ = \FGD|clk1M~q\ $ (((!\FGD|z\(1) & (\FGD|Equal2~0_combout\ & \FGD|z\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011010011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FGD|z\(1),
	datab => \FGD|Equal2~0_combout\,
	datac => \FGD|clk1M~q\,
	datad => \FGD|z\(0),
	combout => \FGD|clk1M~0_combout\);

-- Location: FF_X1_Y11_N15
\FGD|clk1M\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk50M~inputclkctrl_outclk\,
	d => \FGD|clk1M~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FGD|clk1M~q\);

-- Location: CLKCTRL_G4
\FGD|clk1M~clkctrl\ : cycloneive_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \FGD|clk1M~clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \FGD|clk1M~clkctrl_outclk\);

-- Location: LCCOMB_X5_Y1_N20
\F_S|Add0~42\ : cycloneive_lcell_comb
-- Equation(s):
-- \F_S|Add0~42_combout\ = (\F_S|five_sec\(21) & (!\F_S|Add0~41\)) # (!\F_S|five_sec\(21) & ((\F_S|Add0~41\) # (GND)))
-- \F_S|Add0~43\ = CARRY((!\F_S|Add0~41\) # (!\F_S|five_sec\(21)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \F_S|five_sec\(21),
	datad => VCC,
	cin => \F_S|Add0~41\,
	combout => \F_S|Add0~42_combout\,
	cout => \F_S|Add0~43\);

-- Location: LCCOMB_X5_Y1_N22
\F_S|Add0~44\ : cycloneive_lcell_comb
-- Equation(s):
-- \F_S|Add0~44_combout\ = \F_S|five_sec\(22) $ (!\F_S|Add0~43\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010110100101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \F_S|five_sec\(22),
	cin => \F_S|Add0~43\,
	combout => \F_S|Add0~44_combout\);

-- Location: LCCOMB_X5_Y1_N26
\F_S|five_sec~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \F_S|five_sec~8_combout\ = (!\F_S|Equal0~7_combout\ & \F_S|Add0~44_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \F_S|Equal0~7_combout\,
	datac => \F_S|Add0~44_combout\,
	combout => \F_S|five_sec~8_combout\);

-- Location: FF_X5_Y1_N27
\F_S|five_sec[22]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \FGD|clk1M~clkctrl_outclk\,
	d => \F_S|five_sec~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \F_S|five_sec\(22));

-- Location: LCCOMB_X5_Y1_N28
\F_S|Equal0~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \F_S|Equal0~6_combout\ = (!\F_S|five_sec\(17) & (!\F_S|five_sec\(21) & (\F_S|five_sec\(22) & \F_S|five_sec\(19))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \F_S|five_sec\(17),
	datab => \F_S|five_sec\(21),
	datac => \F_S|five_sec\(22),
	datad => \F_S|five_sec\(19),
	combout => \F_S|Equal0~6_combout\);

-- Location: LCCOMB_X5_Y1_N24
\F_S|Equal0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \F_S|Equal0~2_combout\ = (!\F_S|five_sec\(16) & (!\F_S|five_sec\(20) & \F_S|five_sec\(18)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \F_S|five_sec\(16),
	datab => \F_S|five_sec\(20),
	datad => \F_S|five_sec\(18),
	combout => \F_S|Equal0~2_combout\);

-- Location: LCCOMB_X6_Y1_N0
\F_S|five_sec~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \F_S|five_sec~3_combout\ = (\F_S|Add0~18_combout\ & !\F_S|Equal0~7_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \F_S|Add0~18_combout\,
	datad => \F_S|Equal0~7_combout\,
	combout => \F_S|five_sec~3_combout\);

-- Location: FF_X6_Y1_N1
\F_S|five_sec[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \FGD|clk1M~clkctrl_outclk\,
	d => \F_S|five_sec~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \F_S|five_sec\(9));

-- Location: LCCOMB_X5_Y2_N10
\F_S|Add0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \F_S|Add0~0_combout\ = \F_S|five_sec\(0) $ (VCC)
-- \F_S|Add0~1\ = CARRY(\F_S|five_sec\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \F_S|five_sec\(0),
	datad => VCC,
	combout => \F_S|Add0~0_combout\,
	cout => \F_S|Add0~1\);

-- Location: LCCOMB_X5_Y2_N14
\F_S|Add0~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \F_S|Add0~4_combout\ = (\F_S|five_sec\(2) & (\F_S|Add0~3\ $ (GND))) # (!\F_S|five_sec\(2) & (!\F_S|Add0~3\ & VCC))
-- \F_S|Add0~5\ = CARRY((\F_S|five_sec\(2) & !\F_S|Add0~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \F_S|five_sec\(2),
	datad => VCC,
	cin => \F_S|Add0~3\,
	combout => \F_S|Add0~4_combout\,
	cout => \F_S|Add0~5\);

-- Location: FF_X5_Y2_N15
\F_S|five_sec[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \FGD|clk1M~clkctrl_outclk\,
	d => \F_S|Add0~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \F_S|five_sec\(2));

-- Location: LCCOMB_X5_Y2_N16
\F_S|Add0~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \F_S|Add0~6_combout\ = (\F_S|five_sec\(3) & (!\F_S|Add0~5\)) # (!\F_S|five_sec\(3) & ((\F_S|Add0~5\) # (GND)))
-- \F_S|Add0~7\ = CARRY((!\F_S|Add0~5\) # (!\F_S|five_sec\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \F_S|five_sec\(3),
	datad => VCC,
	cin => \F_S|Add0~5\,
	combout => \F_S|Add0~6_combout\,
	cout => \F_S|Add0~7\);

-- Location: FF_X5_Y2_N17
\F_S|five_sec[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \FGD|clk1M~clkctrl_outclk\,
	d => \F_S|Add0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \F_S|five_sec\(3));

-- Location: LCCOMB_X5_Y2_N18
\F_S|Add0~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \F_S|Add0~8_combout\ = (\F_S|five_sec\(4) & (\F_S|Add0~7\ $ (GND))) # (!\F_S|five_sec\(4) & (!\F_S|Add0~7\ & VCC))
-- \F_S|Add0~9\ = CARRY((\F_S|five_sec\(4) & !\F_S|Add0~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \F_S|five_sec\(4),
	datad => VCC,
	cin => \F_S|Add0~7\,
	combout => \F_S|Add0~8_combout\,
	cout => \F_S|Add0~9\);

-- Location: FF_X5_Y2_N19
\F_S|five_sec[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \FGD|clk1M~clkctrl_outclk\,
	d => \F_S|Add0~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \F_S|five_sec\(4));

-- Location: LCCOMB_X5_Y2_N20
\F_S|Add0~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \F_S|Add0~10_combout\ = (\F_S|five_sec\(5) & (!\F_S|Add0~9\)) # (!\F_S|five_sec\(5) & ((\F_S|Add0~9\) # (GND)))
-- \F_S|Add0~11\ = CARRY((!\F_S|Add0~9\) # (!\F_S|five_sec\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \F_S|five_sec\(5),
	datad => VCC,
	cin => \F_S|Add0~9\,
	combout => \F_S|Add0~10_combout\,
	cout => \F_S|Add0~11\);

-- Location: FF_X5_Y2_N21
\F_S|five_sec[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \FGD|clk1M~clkctrl_outclk\,
	d => \F_S|Add0~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \F_S|five_sec\(5));

-- Location: LCCOMB_X5_Y2_N22
\F_S|Add0~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \F_S|Add0~12_combout\ = (\F_S|five_sec\(6) & (\F_S|Add0~11\ $ (GND))) # (!\F_S|five_sec\(6) & (!\F_S|Add0~11\ & VCC))
-- \F_S|Add0~13\ = CARRY((\F_S|five_sec\(6) & !\F_S|Add0~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \F_S|five_sec\(6),
	datad => VCC,
	cin => \F_S|Add0~11\,
	combout => \F_S|Add0~12_combout\,
	cout => \F_S|Add0~13\);

-- Location: LCCOMB_X6_Y1_N26
\F_S|five_sec~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \F_S|five_sec~4_combout\ = (\F_S|Add0~12_combout\ & !\F_S|Equal0~7_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \F_S|Add0~12_combout\,
	datad => \F_S|Equal0~7_combout\,
	combout => \F_S|five_sec~4_combout\);

-- Location: FF_X6_Y1_N27
\F_S|five_sec[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \FGD|clk1M~clkctrl_outclk\,
	d => \F_S|five_sec~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \F_S|five_sec\(6));

-- Location: LCCOMB_X5_Y2_N24
\F_S|Add0~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \F_S|Add0~14_combout\ = (\F_S|five_sec\(7) & (!\F_S|Add0~13\)) # (!\F_S|five_sec\(7) & ((\F_S|Add0~13\) # (GND)))
-- \F_S|Add0~15\ = CARRY((!\F_S|Add0~13\) # (!\F_S|five_sec\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \F_S|five_sec\(7),
	datad => VCC,
	cin => \F_S|Add0~13\,
	combout => \F_S|Add0~14_combout\,
	cout => \F_S|Add0~15\);

-- Location: FF_X5_Y2_N25
\F_S|five_sec[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \FGD|clk1M~clkctrl_outclk\,
	d => \F_S|Add0~14_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \F_S|five_sec\(7));

-- Location: LCCOMB_X5_Y2_N30
\F_S|Add0~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \F_S|Add0~20_combout\ = (\F_S|five_sec\(10) & (\F_S|Add0~19\ $ (GND))) # (!\F_S|five_sec\(10) & (!\F_S|Add0~19\ & VCC))
-- \F_S|Add0~21\ = CARRY((\F_S|five_sec\(10) & !\F_S|Add0~19\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \F_S|five_sec\(10),
	datad => VCC,
	cin => \F_S|Add0~19\,
	combout => \F_S|Add0~20_combout\,
	cout => \F_S|Add0~21\);

-- Location: LCCOMB_X5_Y1_N0
\F_S|Add0~22\ : cycloneive_lcell_comb
-- Equation(s):
-- \F_S|Add0~22_combout\ = (\F_S|five_sec\(11) & (!\F_S|Add0~21\)) # (!\F_S|five_sec\(11) & ((\F_S|Add0~21\) # (GND)))
-- \F_S|Add0~23\ = CARRY((!\F_S|Add0~21\) # (!\F_S|five_sec\(11)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \F_S|five_sec\(11),
	datad => VCC,
	cin => \F_S|Add0~21\,
	combout => \F_S|Add0~22_combout\,
	cout => \F_S|Add0~23\);

-- Location: LCCOMB_X6_Y1_N28
\F_S|five_sec~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \F_S|five_sec~5_combout\ = (\F_S|Add0~22_combout\ & !\F_S|Equal0~7_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \F_S|Add0~22_combout\,
	datad => \F_S|Equal0~7_combout\,
	combout => \F_S|five_sec~5_combout\);

-- Location: FF_X6_Y1_N29
\F_S|five_sec[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \FGD|clk1M~clkctrl_outclk\,
	d => \F_S|five_sec~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \F_S|five_sec\(11));

-- Location: LCCOMB_X5_Y1_N2
\F_S|Add0~24\ : cycloneive_lcell_comb
-- Equation(s):
-- \F_S|Add0~24_combout\ = (\F_S|five_sec\(12) & (\F_S|Add0~23\ $ (GND))) # (!\F_S|five_sec\(12) & (!\F_S|Add0~23\ & VCC))
-- \F_S|Add0~25\ = CARRY((\F_S|five_sec\(12) & !\F_S|Add0~23\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \F_S|five_sec\(12),
	datad => VCC,
	cin => \F_S|Add0~23\,
	combout => \F_S|Add0~24_combout\,
	cout => \F_S|Add0~25\);

-- Location: FF_X5_Y1_N3
\F_S|five_sec[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \FGD|clk1M~clkctrl_outclk\,
	d => \F_S|Add0~24_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \F_S|five_sec\(12));

-- Location: LCCOMB_X5_Y1_N4
\F_S|Add0~26\ : cycloneive_lcell_comb
-- Equation(s):
-- \F_S|Add0~26_combout\ = (\F_S|five_sec\(13) & (!\F_S|Add0~25\)) # (!\F_S|five_sec\(13) & ((\F_S|Add0~25\) # (GND)))
-- \F_S|Add0~27\ = CARRY((!\F_S|Add0~25\) # (!\F_S|five_sec\(13)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \F_S|five_sec\(13),
	datad => VCC,
	cin => \F_S|Add0~25\,
	combout => \F_S|Add0~26_combout\,
	cout => \F_S|Add0~27\);

-- Location: FF_X5_Y1_N5
\F_S|five_sec[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \FGD|clk1M~clkctrl_outclk\,
	d => \F_S|Add0~26_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \F_S|five_sec\(13));

-- Location: LCCOMB_X5_Y1_N8
\F_S|Add0~30\ : cycloneive_lcell_comb
-- Equation(s):
-- \F_S|Add0~30_combout\ = (\F_S|five_sec\(15) & (!\F_S|Add0~29\)) # (!\F_S|five_sec\(15) & ((\F_S|Add0~29\) # (GND)))
-- \F_S|Add0~31\ = CARRY((!\F_S|Add0~29\) # (!\F_S|five_sec\(15)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \F_S|five_sec\(15),
	datad => VCC,
	cin => \F_S|Add0~29\,
	combout => \F_S|Add0~30_combout\,
	cout => \F_S|Add0~31\);

-- Location: FF_X5_Y1_N9
\F_S|five_sec[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \FGD|clk1M~clkctrl_outclk\,
	d => \F_S|Add0~30_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \F_S|five_sec\(15));

-- Location: LCCOMB_X6_Y1_N20
\F_S|five_sec~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \F_S|five_sec~1_combout\ = (\F_S|Add0~0_combout\ & !\F_S|Equal0~7_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \F_S|Add0~0_combout\,
	datad => \F_S|Equal0~7_combout\,
	combout => \F_S|five_sec~1_combout\);

-- Location: FF_X6_Y1_N21
\F_S|five_sec[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \FGD|clk1M~clkctrl_outclk\,
	d => \F_S|five_sec~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \F_S|five_sec\(0));

-- Location: LCCOMB_X5_Y2_N2
\F_S|Equal0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \F_S|Equal0~1_combout\ = (!\F_S|five_sec\(1) & (!\F_S|five_sec\(12) & (!\F_S|five_sec\(15) & !\F_S|five_sec\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \F_S|five_sec\(1),
	datab => \F_S|five_sec\(12),
	datac => \F_S|five_sec\(15),
	datad => \F_S|five_sec\(0),
	combout => \F_S|Equal0~1_combout\);

-- Location: LCCOMB_X5_Y2_N0
\F_S|Equal0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \F_S|Equal0~0_combout\ = (\F_S|five_sec\(8) & (!\F_S|five_sec\(4) & (!\F_S|five_sec\(2) & !\F_S|five_sec\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \F_S|five_sec\(8),
	datab => \F_S|five_sec\(4),
	datac => \F_S|five_sec\(2),
	datad => \F_S|five_sec\(3),
	combout => \F_S|Equal0~0_combout\);

-- Location: LCCOMB_X5_Y2_N4
\F_S|Equal0~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \F_S|Equal0~3_combout\ = (\F_S|Equal0~2_combout\ & (\F_S|Equal0~1_combout\ & \F_S|Equal0~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \F_S|Equal0~2_combout\,
	datac => \F_S|Equal0~1_combout\,
	datad => \F_S|Equal0~0_combout\,
	combout => \F_S|Equal0~3_combout\);

-- Location: FF_X5_Y2_N31
\F_S|five_sec[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \FGD|clk1M~clkctrl_outclk\,
	d => \F_S|Add0~20_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \F_S|five_sec\(10));

-- Location: LCCOMB_X6_Y1_N16
\F_S|Equal0~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \F_S|Equal0~5_combout\ = (\F_S|five_sec\(14) & (!\F_S|five_sec\(10) & (!\F_S|five_sec\(13) & \F_S|five_sec\(11))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \F_S|five_sec\(14),
	datab => \F_S|five_sec\(10),
	datac => \F_S|five_sec\(13),
	datad => \F_S|five_sec\(11),
	combout => \F_S|Equal0~5_combout\);

-- Location: LCCOMB_X6_Y1_N12
\F_S|Equal0~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \F_S|Equal0~7_combout\ = (\F_S|Equal0~4_combout\ & (\F_S|Equal0~6_combout\ & (\F_S|Equal0~3_combout\ & \F_S|Equal0~5_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \F_S|Equal0~4_combout\,
	datab => \F_S|Equal0~6_combout\,
	datac => \F_S|Equal0~3_combout\,
	datad => \F_S|Equal0~5_combout\,
	combout => \F_S|Equal0~7_combout\);

-- Location: LCCOMB_X6_Y1_N22
\F_S|five_sec~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \F_S|five_sec~2_combout\ = (\F_S|Add0~36_combout\ & !\F_S|Equal0~7_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \F_S|Add0~36_combout\,
	datad => \F_S|Equal0~7_combout\,
	combout => \F_S|five_sec~2_combout\);

-- Location: FF_X6_Y1_N23
\F_S|five_sec[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \FGD|clk1M~clkctrl_outclk\,
	d => \F_S|five_sec~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \F_S|five_sec\(18));

-- Location: LCCOMB_X5_Y1_N16
\F_S|Add0~38\ : cycloneive_lcell_comb
-- Equation(s):
-- \F_S|Add0~38_combout\ = (\F_S|five_sec\(19) & (!\F_S|Add0~37\)) # (!\F_S|five_sec\(19) & ((\F_S|Add0~37\) # (GND)))
-- \F_S|Add0~39\ = CARRY((!\F_S|Add0~37\) # (!\F_S|five_sec\(19)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \F_S|five_sec\(19),
	datad => VCC,
	cin => \F_S|Add0~37\,
	combout => \F_S|Add0~38_combout\,
	cout => \F_S|Add0~39\);

-- Location: LCCOMB_X6_Y1_N18
\F_S|five_sec~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \F_S|five_sec~7_combout\ = (\F_S|Add0~38_combout\ & !\F_S|Equal0~7_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \F_S|Add0~38_combout\,
	datad => \F_S|Equal0~7_combout\,
	combout => \F_S|five_sec~7_combout\);

-- Location: FF_X6_Y1_N19
\F_S|five_sec[19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \FGD|clk1M~clkctrl_outclk\,
	d => \F_S|five_sec~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \F_S|five_sec\(19));

-- Location: LCCOMB_X5_Y1_N18
\F_S|Add0~40\ : cycloneive_lcell_comb
-- Equation(s):
-- \F_S|Add0~40_combout\ = (\F_S|five_sec\(20) & (\F_S|Add0~39\ $ (GND))) # (!\F_S|five_sec\(20) & (!\F_S|Add0~39\ & VCC))
-- \F_S|Add0~41\ = CARRY((\F_S|five_sec\(20) & !\F_S|Add0~39\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \F_S|five_sec\(20),
	datad => VCC,
	cin => \F_S|Add0~39\,
	combout => \F_S|Add0~40_combout\,
	cout => \F_S|Add0~41\);

-- Location: FF_X5_Y1_N19
\F_S|five_sec[20]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \FGD|clk1M~clkctrl_outclk\,
	d => \F_S|Add0~40_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \F_S|five_sec\(20));

-- Location: FF_X5_Y1_N21
\F_S|five_sec[21]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \FGD|clk1M~clkctrl_outclk\,
	d => \F_S|Add0~42_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \F_S|five_sec\(21));

-- Location: LCCOMB_X5_Y1_N30
\F_S|Equal1~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \F_S|Equal1~2_combout\ = (\F_S|five_sec\(17) & (\F_S|five_sec\(21) & (!\F_S|five_sec\(22) & !\F_S|five_sec\(19))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \F_S|five_sec\(17),
	datab => \F_S|five_sec\(21),
	datac => \F_S|five_sec\(22),
	datad => \F_S|five_sec\(19),
	combout => \F_S|Equal1~2_combout\);

-- Location: LCCOMB_X6_Y1_N30
\F_S|Equal1~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \F_S|Equal1~1_combout\ = (!\F_S|five_sec\(14) & (\F_S|five_sec\(10) & (\F_S|five_sec\(13) & !\F_S|five_sec\(11))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \F_S|five_sec\(14),
	datab => \F_S|five_sec\(10),
	datac => \F_S|five_sec\(13),
	datad => \F_S|five_sec\(11),
	combout => \F_S|Equal1~1_combout\);

-- Location: LCCOMB_X6_Y1_N24
\F_S|Equal1~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \F_S|Equal1~3_combout\ = (\F_S|Equal1~0_combout\ & (\F_S|Equal1~2_combout\ & (\F_S|Equal1~1_combout\ & \F_S|Equal0~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \F_S|Equal1~0_combout\,
	datab => \F_S|Equal1~2_combout\,
	datac => \F_S|Equal1~1_combout\,
	datad => \F_S|Equal0~3_combout\,
	combout => \F_S|Equal1~3_combout\);

-- Location: LCCOMB_X6_Y1_N8
\F_S|flag_five_sec~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \F_S|flag_five_sec~0_combout\ = (!\F_S|Equal0~7_combout\ & ((\F_S|Equal1~3_combout\) # (\F_S|flag_five_sec~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \F_S|Equal1~3_combout\,
	datac => \F_S|flag_five_sec~q\,
	datad => \F_S|Equal0~7_combout\,
	combout => \F_S|flag_five_sec~0_combout\);

-- Location: FF_X6_Y1_N9
\F_S|flag_five_sec\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \FGD|clk1M~clkctrl_outclk\,
	d => \F_S|flag_five_sec~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \F_S|flag_five_sec~q\);

-- Location: LCCOMB_X16_Y8_N0
\Hum|protocol[0]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Hum|protocol[0]~0_combout\ = !\F_S|flag_five_sec~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \F_S|flag_five_sec~q\,
	combout => \Hum|protocol[0]~0_combout\);

-- Location: FF_X16_Y8_N1
\Hum|protocol[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \FGD|clk1M~clkctrl_outclk\,
	d => \Hum|protocol[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Hum|protocol\(0));

-- Location: FF_X17_Y12_N1
\Hum|protocol[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \FGD|clk1M~clkctrl_outclk\,
	asdata => \Hum|protocol\(0),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Hum|protocol\(1));

-- Location: FF_X16_Y12_N9
\Hum|protocol[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \FGD|clk1M~clkctrl_outclk\,
	asdata => \Hum|protocol\(1),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Hum|protocol\(2));

-- Location: LCCOMB_X16_Y12_N8
\Hum|Equal0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Hum|Equal0~0_combout\ = (\Hum|protocol\(1) & !\Hum|protocol\(2))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Hum|protocol\(1),
	datac => \Hum|protocol\(2),
	combout => \Hum|Equal0~0_combout\);

-- Location: LCCOMB_X19_Y12_N0
\Hum|shet[0]~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \Hum|shet[0]~20_combout\ = \Hum|shet\(0) $ (VCC)
-- \Hum|shet[0]~21\ = CARRY(\Hum|shet\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Hum|shet\(0),
	datad => VCC,
	combout => \Hum|shet[0]~20_combout\,
	cout => \Hum|shet[0]~21\);

-- Location: LCCOMB_X16_Y12_N14
\Hum|mstate~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \Hum|mstate~13_combout\ = (!\Hum|Equal0~0_combout\ & ((\Hum|mstate.001~q\) # ((\Hum|Equal6~3_combout\ & \Hum|shet\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Hum|Equal6~3_combout\,
	datab => \Hum|shet\(0),
	datac => \Hum|mstate.001~q\,
	datad => \Hum|Equal0~0_combout\,
	combout => \Hum|mstate~13_combout\);

-- Location: FF_X16_Y12_N15
\Hum|mstate.001\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \FGD|clk1M~clkctrl_outclk\,
	d => \Hum|mstate~13_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Hum|mstate.001~q\);

-- Location: LCCOMB_X16_Y12_N16
\Hum|shet[4]~34\ : cycloneive_lcell_comb
-- Equation(s):
-- \Hum|shet[4]~34_combout\ = (!\Hum|mstate.001~q\ & (!\Hum|Equal0~0_combout\ & ((!\Hum|shet\(0)) # (!\Hum|Equal6~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Hum|Equal6~3_combout\,
	datab => \Hum|mstate.001~q\,
	datac => \Hum|shet\(0),
	datad => \Hum|Equal0~0_combout\,
	combout => \Hum|shet[4]~34_combout\);

-- Location: LCCOMB_X19_Y12_N6
\Hum|shet[3]~26\ : cycloneive_lcell_comb
-- Equation(s):
-- \Hum|shet[3]~26_combout\ = (\Hum|shet\(3) & (!\Hum|shet[2]~25\)) # (!\Hum|shet\(3) & ((\Hum|shet[2]~25\) # (GND)))
-- \Hum|shet[3]~27\ = CARRY((!\Hum|shet[2]~25\) # (!\Hum|shet\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Hum|shet\(3),
	datad => VCC,
	cin => \Hum|shet[2]~25\,
	combout => \Hum|shet[3]~26_combout\,
	cout => \Hum|shet[3]~27\);

-- Location: LCCOMB_X19_Y12_N8
\Hum|shet[4]~28\ : cycloneive_lcell_comb
-- Equation(s):
-- \Hum|shet[4]~28_combout\ = (\Hum|shet\(4) & (\Hum|shet[3]~27\ $ (GND))) # (!\Hum|shet\(4) & (!\Hum|shet[3]~27\ & VCC))
-- \Hum|shet[4]~29\ = CARRY((\Hum|shet\(4) & !\Hum|shet[3]~27\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \Hum|shet\(4),
	datad => VCC,
	cin => \Hum|shet[3]~27\,
	combout => \Hum|shet[4]~28_combout\,
	cout => \Hum|shet[4]~29\);

-- Location: LCCOMB_X18_Y13_N16
\Hum|mstate~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \Hum|mstate~11_combout\ = (\Hum|mstate.001~q\ & (!\Hum|Equal0~0_combout\ & (!\Hum|LessThan4~3_combout\ & \Hum|mstate.010~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Hum|mstate.001~q\,
	datab => \Hum|Equal0~0_combout\,
	datac => \Hum|LessThan4~3_combout\,
	datad => \Hum|mstate.010~q\,
	combout => \Hum|mstate~11_combout\);

-- Location: LCCOMB_X16_Y12_N20
\Hum|mstate~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \Hum|mstate~12_combout\ = (\Hum|mstate~11_combout\) # ((\Hum|Equal6~5_combout\ & (!\Hum|Equal0~0_combout\ & !\Hum|mstate.001~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Hum|Equal6~5_combout\,
	datab => \Hum|Equal0~0_combout\,
	datac => \Hum|mstate.001~q\,
	datad => \Hum|mstate~11_combout\,
	combout => \Hum|mstate~12_combout\);

-- Location: FF_X16_Y12_N21
\Hum|mstate.010\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \FGD|clk1M~clkctrl_outclk\,
	d => \Hum|mstate~12_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Hum|mstate.010~q\);

-- Location: LCCOMB_X18_Y13_N26
\Hum|shet[4]~40\ : cycloneive_lcell_comb
-- Equation(s):
-- \Hum|shet[4]~40_combout\ = ((\Hum|mstate.010~q\) # ((!\Hum|protocol\(2) & \Hum|protocol\(1)))) # (!\Hum|mstate.001~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101111111011101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Hum|mstate.001~q\,
	datab => \Hum|mstate.010~q\,
	datac => \Hum|protocol\(2),
	datad => \Hum|protocol\(1),
	combout => \Hum|shet[4]~40_combout\);

-- Location: FF_X19_Y12_N9
\Hum|shet[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \FGD|clk1M~clkctrl_outclk\,
	d => \Hum|shet[4]~28_combout\,
	sclr => \Hum|shet[4]~39_combout\,
	ena => \Hum|shet[4]~40_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Hum|shet\(4));

-- Location: LCCOMB_X19_Y12_N10
\Hum|shet[5]~30\ : cycloneive_lcell_comb
-- Equation(s):
-- \Hum|shet[5]~30_combout\ = (\Hum|shet\(5) & (!\Hum|shet[4]~29\)) # (!\Hum|shet\(5) & ((\Hum|shet[4]~29\) # (GND)))
-- \Hum|shet[5]~31\ = CARRY((!\Hum|shet[4]~29\) # (!\Hum|shet\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Hum|shet\(5),
	datad => VCC,
	cin => \Hum|shet[4]~29\,
	combout => \Hum|shet[5]~30_combout\,
	cout => \Hum|shet[5]~31\);

-- Location: LCCOMB_X19_Y12_N12
\Hum|shet[6]~32\ : cycloneive_lcell_comb
-- Equation(s):
-- \Hum|shet[6]~32_combout\ = (\Hum|shet\(6) & (\Hum|shet[5]~31\ $ (GND))) # (!\Hum|shet\(6) & (!\Hum|shet[5]~31\ & VCC))
-- \Hum|shet[6]~33\ = CARRY((\Hum|shet\(6) & !\Hum|shet[5]~31\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Hum|shet\(6),
	datad => VCC,
	cin => \Hum|shet[5]~31\,
	combout => \Hum|shet[6]~32_combout\,
	cout => \Hum|shet[6]~33\);

-- Location: LCCOMB_X19_Y12_N14
\Hum|shet[7]~41\ : cycloneive_lcell_comb
-- Equation(s):
-- \Hum|shet[7]~41_combout\ = (\Hum|shet\(7) & (!\Hum|shet[6]~33\)) # (!\Hum|shet\(7) & ((\Hum|shet[6]~33\) # (GND)))
-- \Hum|shet[7]~42\ = CARRY((!\Hum|shet[6]~33\) # (!\Hum|shet\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \Hum|shet\(7),
	datad => VCC,
	cin => \Hum|shet[6]~33\,
	combout => \Hum|shet[7]~41_combout\,
	cout => \Hum|shet[7]~42\);

-- Location: FF_X19_Y12_N15
\Hum|shet[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \FGD|clk1M~clkctrl_outclk\,
	d => \Hum|shet[7]~41_combout\,
	sclr => \Hum|shet[4]~39_combout\,
	ena => \Hum|shet[4]~40_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Hum|shet\(7));

-- Location: LCCOMB_X19_Y12_N16
\Hum|shet[8]~43\ : cycloneive_lcell_comb
-- Equation(s):
-- \Hum|shet[8]~43_combout\ = (\Hum|shet\(8) & (\Hum|shet[7]~42\ $ (GND))) # (!\Hum|shet\(8) & (!\Hum|shet[7]~42\ & VCC))
-- \Hum|shet[8]~44\ = CARRY((\Hum|shet\(8) & !\Hum|shet[7]~42\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \Hum|shet\(8),
	datad => VCC,
	cin => \Hum|shet[7]~42\,
	combout => \Hum|shet[8]~43_combout\,
	cout => \Hum|shet[8]~44\);

-- Location: FF_X19_Y12_N17
\Hum|shet[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \FGD|clk1M~clkctrl_outclk\,
	d => \Hum|shet[8]~43_combout\,
	sclr => \Hum|shet[4]~39_combout\,
	ena => \Hum|shet[4]~40_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Hum|shet\(8));

-- Location: LCCOMB_X19_Y12_N18
\Hum|shet[9]~45\ : cycloneive_lcell_comb
-- Equation(s):
-- \Hum|shet[9]~45_combout\ = (\Hum|shet\(9) & (!\Hum|shet[8]~44\)) # (!\Hum|shet\(9) & ((\Hum|shet[8]~44\) # (GND)))
-- \Hum|shet[9]~46\ = CARRY((!\Hum|shet[8]~44\) # (!\Hum|shet\(9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \Hum|shet\(9),
	datad => VCC,
	cin => \Hum|shet[8]~44\,
	combout => \Hum|shet[9]~45_combout\,
	cout => \Hum|shet[9]~46\);

-- Location: FF_X19_Y12_N19
\Hum|shet[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \FGD|clk1M~clkctrl_outclk\,
	d => \Hum|shet[9]~45_combout\,
	sclr => \Hum|shet[4]~39_combout\,
	ena => \Hum|shet[4]~40_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Hum|shet\(9));

-- Location: LCCOMB_X19_Y12_N20
\Hum|shet[10]~47\ : cycloneive_lcell_comb
-- Equation(s):
-- \Hum|shet[10]~47_combout\ = (\Hum|shet\(10) & (\Hum|shet[9]~46\ $ (GND))) # (!\Hum|shet\(10) & (!\Hum|shet[9]~46\ & VCC))
-- \Hum|shet[10]~48\ = CARRY((\Hum|shet\(10) & !\Hum|shet[9]~46\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \Hum|shet\(10),
	datad => VCC,
	cin => \Hum|shet[9]~46\,
	combout => \Hum|shet[10]~47_combout\,
	cout => \Hum|shet[10]~48\);

-- Location: FF_X19_Y12_N21
\Hum|shet[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \FGD|clk1M~clkctrl_outclk\,
	d => \Hum|shet[10]~47_combout\,
	sclr => \Hum|shet[4]~39_combout\,
	ena => \Hum|shet[4]~40_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Hum|shet\(10));

-- Location: LCCOMB_X19_Y12_N22
\Hum|shet[11]~49\ : cycloneive_lcell_comb
-- Equation(s):
-- \Hum|shet[11]~49_combout\ = (\Hum|shet\(11) & (!\Hum|shet[10]~48\)) # (!\Hum|shet\(11) & ((\Hum|shet[10]~48\) # (GND)))
-- \Hum|shet[11]~50\ = CARRY((!\Hum|shet[10]~48\) # (!\Hum|shet\(11)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Hum|shet\(11),
	datad => VCC,
	cin => \Hum|shet[10]~48\,
	combout => \Hum|shet[11]~49_combout\,
	cout => \Hum|shet[11]~50\);

-- Location: FF_X19_Y12_N23
\Hum|shet[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \FGD|clk1M~clkctrl_outclk\,
	d => \Hum|shet[11]~49_combout\,
	sclr => \Hum|shet[4]~39_combout\,
	ena => \Hum|shet[4]~40_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Hum|shet\(11));

-- Location: LCCOMB_X18_Y12_N0
\Hum|shet[4]~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \Hum|shet[4]~18_combout\ = (!\Hum|shet\(12) & (!\Hum|shet\(11) & (!\Hum|shet\(7) & !\Hum|shet\(8))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Hum|shet\(12),
	datab => \Hum|shet\(11),
	datac => \Hum|shet\(7),
	datad => \Hum|shet\(8),
	combout => \Hum|shet[4]~18_combout\);

-- Location: LCCOMB_X19_Y12_N24
\Hum|shet[12]~51\ : cycloneive_lcell_comb
-- Equation(s):
-- \Hum|shet[12]~51_combout\ = (\Hum|shet\(12) & (\Hum|shet[11]~50\ $ (GND))) # (!\Hum|shet\(12) & (!\Hum|shet[11]~50\ & VCC))
-- \Hum|shet[12]~52\ = CARRY((\Hum|shet\(12) & !\Hum|shet[11]~50\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \Hum|shet\(12),
	datad => VCC,
	cin => \Hum|shet[11]~50\,
	combout => \Hum|shet[12]~51_combout\,
	cout => \Hum|shet[12]~52\);

-- Location: FF_X19_Y12_N25
\Hum|shet[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \FGD|clk1M~clkctrl_outclk\,
	d => \Hum|shet[12]~51_combout\,
	sclr => \Hum|shet[4]~39_combout\,
	ena => \Hum|shet[4]~40_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Hum|shet\(12));

-- Location: LCCOMB_X19_Y12_N26
\Hum|shet[13]~53\ : cycloneive_lcell_comb
-- Equation(s):
-- \Hum|shet[13]~53_combout\ = (\Hum|shet\(13) & (!\Hum|shet[12]~52\)) # (!\Hum|shet\(13) & ((\Hum|shet[12]~52\) # (GND)))
-- \Hum|shet[13]~54\ = CARRY((!\Hum|shet[12]~52\) # (!\Hum|shet\(13)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Hum|shet\(13),
	datad => VCC,
	cin => \Hum|shet[12]~52\,
	combout => \Hum|shet[13]~53_combout\,
	cout => \Hum|shet[13]~54\);

-- Location: LCCOMB_X19_Y12_N28
\Hum|shet[14]~55\ : cycloneive_lcell_comb
-- Equation(s):
-- \Hum|shet[14]~55_combout\ = (\Hum|shet\(14) & (\Hum|shet[13]~54\ $ (GND))) # (!\Hum|shet\(14) & (!\Hum|shet[13]~54\ & VCC))
-- \Hum|shet[14]~56\ = CARRY((\Hum|shet\(14) & !\Hum|shet[13]~54\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \Hum|shet\(14),
	datad => VCC,
	cin => \Hum|shet[13]~54\,
	combout => \Hum|shet[14]~55_combout\,
	cout => \Hum|shet[14]~56\);

-- Location: FF_X19_Y12_N29
\Hum|shet[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \FGD|clk1M~clkctrl_outclk\,
	d => \Hum|shet[14]~55_combout\,
	sclr => \Hum|shet[4]~39_combout\,
	ena => \Hum|shet[4]~40_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Hum|shet\(14));

-- Location: LCCOMB_X19_Y12_N30
\Hum|shet[15]~57\ : cycloneive_lcell_comb
-- Equation(s):
-- \Hum|shet[15]~57_combout\ = \Hum|shet\(15) $ (\Hum|shet[14]~56\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Hum|shet\(15),
	cin => \Hum|shet[14]~56\,
	combout => \Hum|shet[15]~57_combout\);

-- Location: FF_X19_Y12_N31
\Hum|shet[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \FGD|clk1M~clkctrl_outclk\,
	d => \Hum|shet[15]~57_combout\,
	sclr => \Hum|shet[4]~39_combout\,
	ena => \Hum|shet[4]~40_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Hum|shet\(15));

-- Location: FF_X19_Y12_N27
\Hum|shet[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \FGD|clk1M~clkctrl_outclk\,
	d => \Hum|shet[13]~53_combout\,
	sclr => \Hum|shet[4]~39_combout\,
	ena => \Hum|shet[4]~40_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Hum|shet\(13));

-- Location: LCCOMB_X18_Y12_N26
\Hum|LessThan4~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Hum|LessThan4~0_combout\ = (\Hum|shet[4]~19_combout\ & (\Hum|shet[4]~18_combout\ & (!\Hum|shet\(15) & !\Hum|shet\(13))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Hum|shet[4]~19_combout\,
	datab => \Hum|shet[4]~18_combout\,
	datac => \Hum|shet\(15),
	datad => \Hum|shet\(13),
	combout => \Hum|LessThan4~0_combout\);

-- Location: FF_X19_Y12_N11
\Hum|shet[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \FGD|clk1M~clkctrl_outclk\,
	d => \Hum|shet[5]~30_combout\,
	sclr => \Hum|shet[4]~39_combout\,
	ena => \Hum|shet[4]~40_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Hum|shet\(5));

-- Location: FF_X19_Y12_N13
\Hum|shet[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \FGD|clk1M~clkctrl_outclk\,
	d => \Hum|shet[6]~32_combout\,
	sclr => \Hum|shet[4]~39_combout\,
	ena => \Hum|shet[4]~40_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Hum|shet\(6));

-- Location: LCCOMB_X17_Y12_N16
\Hum|LessThan4~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \Hum|LessThan4~3_combout\ = ((\Hum|LessThan4~2_combout\ & (\Hum|shet\(5) & \Hum|shet\(6)))) # (!\Hum|LessThan4~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011001100110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Hum|LessThan4~2_combout\,
	datab => \Hum|LessThan4~0_combout\,
	datac => \Hum|shet\(5),
	datad => \Hum|shet\(6),
	combout => \Hum|LessThan4~3_combout\);

-- Location: IOIBUF_X0_Y9_N8
\Data_H~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => Data_H,
	o => \Data_H~input_o\);

-- Location: LCCOMB_X17_Y12_N26
\Hum|data_rec[0]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \Hum|data_rec[0]~feeder_combout\ = \Data_H~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \Data_H~input_o\,
	combout => \Hum|data_rec[0]~feeder_combout\);

-- Location: LCCOMB_X18_Y13_N14
\Hum|data_rec[1]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Hum|data_rec[1]~0_combout\ = (\Hum|mstate.010~q\ & ((\Hum|protocol\(2)) # (!\Hum|protocol\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Hum|protocol\(2),
	datac => \Hum|mstate.010~q\,
	datad => \Hum|protocol\(1),
	combout => \Hum|data_rec[1]~0_combout\);

-- Location: FF_X17_Y12_N27
\Hum|data_rec[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \FGD|clk1M~clkctrl_outclk\,
	d => \Hum|data_rec[0]~feeder_combout\,
	ena => \Hum|data_rec[1]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Hum|data_rec\(0));

-- Location: FF_X17_Y12_N5
\Hum|data_rec[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \FGD|clk1M~clkctrl_outclk\,
	asdata => \Hum|data_rec\(0),
	sload => VCC,
	ena => \Hum|data_rec[1]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Hum|data_rec\(1));

-- Location: FF_X17_Y12_N23
\Hum|data_rec[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \FGD|clk1M~clkctrl_outclk\,
	asdata => \Hum|data_rec\(1),
	sload => VCC,
	ena => \Hum|data_rec[1]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Hum|data_rec\(2));

-- Location: LCCOMB_X17_Y12_N0
\Hum|HYM2[39]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Hum|HYM2[39]~0_combout\ = (\Hum|protocol\(2) & (((\Hum|data_rec\(2))) # (!\Hum|data_rec\(1)))) # (!\Hum|protocol\(2) & (!\Hum|protocol\(1) & ((\Hum|data_rec\(2)) # (!\Hum|data_rec\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111100100011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Hum|protocol\(2),
	datab => \Hum|data_rec\(1),
	datac => \Hum|protocol\(1),
	datad => \Hum|data_rec\(2),
	combout => \Hum|HYM2[39]~0_combout\);

-- Location: LCCOMB_X17_Y12_N28
\Hum|always2~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \Hum|always2~3_combout\ = (\Hum|shet\(4) & (\Hum|shet\(2) & (\Hum|shet\(1) & \Hum|shet\(0)))) # (!\Hum|shet\(4) & ((\Hum|shet\(2)) # ((\Hum|shet\(1) & \Hum|shet\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101010001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Hum|shet\(4),
	datab => \Hum|shet\(2),
	datac => \Hum|shet\(1),
	datad => \Hum|shet\(0),
	combout => \Hum|always2~3_combout\);

-- Location: LCCOMB_X17_Y12_N14
\Hum|always2~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \Hum|always2~4_combout\ = (\Hum|shet\(4) & ((\Hum|shet\(6)) # ((\Hum|always2~3_combout\ & \Hum|shet\(3))))) # (!\Hum|shet\(4) & (\Hum|always2~3_combout\ & (\Hum|shet\(3) & \Hum|shet\(6))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Hum|shet\(4),
	datab => \Hum|always2~3_combout\,
	datac => \Hum|shet\(3),
	datad => \Hum|shet\(6),
	combout => \Hum|always2~4_combout\);

-- Location: LCCOMB_X17_Y12_N10
\Hum|always2~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \Hum|always2~5_combout\ = (\Hum|always2~0_combout\ & (\Hum|shet\(6) $ (((\Hum|always2~4_combout\) # (\Hum|shet\(5))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001010101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Hum|always2~0_combout\,
	datab => \Hum|always2~4_combout\,
	datac => \Hum|shet\(5),
	datad => \Hum|shet\(6),
	combout => \Hum|always2~5_combout\);

-- Location: LCCOMB_X18_Y13_N0
\Hum|HYM2[39]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Hum|HYM2[39]~1_combout\ = (\Hum|always2~2_combout\ & (\Hum|HYM2[39]~0_combout\ & !\Hum|always2~5_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Hum|always2~2_combout\,
	datac => \Hum|HYM2[39]~0_combout\,
	datad => \Hum|always2~5_combout\,
	combout => \Hum|HYM2[39]~1_combout\);

-- Location: LCCOMB_X18_Y13_N8
\Hum|shet[4]~39\ : cycloneive_lcell_comb
-- Equation(s):
-- \Hum|shet[4]~39_combout\ = (!\Hum|shet[4]~34_combout\ & (((\Hum|LessThan4~3_combout\) # (!\Hum|HYM2[39]~1_combout\)) # (!\Hum|shet[4]~38_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000100110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Hum|shet[4]~38_combout\,
	datab => \Hum|shet[4]~34_combout\,
	datac => \Hum|LessThan4~3_combout\,
	datad => \Hum|HYM2[39]~1_combout\,
	combout => \Hum|shet[4]~39_combout\);

-- Location: FF_X19_Y12_N1
\Hum|shet[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \FGD|clk1M~clkctrl_outclk\,
	d => \Hum|shet[0]~20_combout\,
	sclr => \Hum|shet[4]~39_combout\,
	ena => \Hum|shet[4]~40_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Hum|shet\(0));

-- Location: LCCOMB_X19_Y12_N2
\Hum|shet[1]~22\ : cycloneive_lcell_comb
-- Equation(s):
-- \Hum|shet[1]~22_combout\ = (\Hum|shet\(1) & (!\Hum|shet[0]~21\)) # (!\Hum|shet\(1) & ((\Hum|shet[0]~21\) # (GND)))
-- \Hum|shet[1]~23\ = CARRY((!\Hum|shet[0]~21\) # (!\Hum|shet\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \Hum|shet\(1),
	datad => VCC,
	cin => \Hum|shet[0]~21\,
	combout => \Hum|shet[1]~22_combout\,
	cout => \Hum|shet[1]~23\);

-- Location: FF_X19_Y12_N3
\Hum|shet[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \FGD|clk1M~clkctrl_outclk\,
	d => \Hum|shet[1]~22_combout\,
	sclr => \Hum|shet[4]~39_combout\,
	ena => \Hum|shet[4]~40_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Hum|shet\(1));

-- Location: LCCOMB_X19_Y12_N4
\Hum|shet[2]~24\ : cycloneive_lcell_comb
-- Equation(s):
-- \Hum|shet[2]~24_combout\ = (\Hum|shet\(2) & (\Hum|shet[1]~23\ $ (GND))) # (!\Hum|shet\(2) & (!\Hum|shet[1]~23\ & VCC))
-- \Hum|shet[2]~25\ = CARRY((\Hum|shet\(2) & !\Hum|shet[1]~23\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \Hum|shet\(2),
	datad => VCC,
	cin => \Hum|shet[1]~23\,
	combout => \Hum|shet[2]~24_combout\,
	cout => \Hum|shet[2]~25\);

-- Location: FF_X19_Y12_N5
\Hum|shet[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \FGD|clk1M~clkctrl_outclk\,
	d => \Hum|shet[2]~24_combout\,
	sclr => \Hum|shet[4]~39_combout\,
	ena => \Hum|shet[4]~40_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Hum|shet\(2));

-- Location: FF_X19_Y12_N7
\Hum|shet[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \FGD|clk1M~clkctrl_outclk\,
	d => \Hum|shet[3]~26_combout\,
	sclr => \Hum|shet[4]~39_combout\,
	ena => \Hum|shet[4]~40_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Hum|shet\(3));

-- Location: LCCOMB_X17_Y12_N12
\Hum|Data_H_REG~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Hum|Data_H_REG~1_combout\ = (!\Hum|mstate.001~q\ & (!\Hum|shet\(3) & (!\Hum|shet\(5) & !\Hum|shet\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Hum|mstate.001~q\,
	datab => \Hum|shet\(3),
	datac => \Hum|shet\(5),
	datad => \Hum|shet\(0),
	combout => \Hum|Data_H_REG~1_combout\);

-- Location: LCCOMB_X18_Y12_N2
\Hum|Equal6~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Hum|Equal6~2_combout\ = (\Hum|Equal6~1_combout\ & (\Hum|shet[4]~18_combout\ & (!\Hum|shet\(15) & !\Hum|shet\(13))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Hum|Equal6~1_combout\,
	datab => \Hum|shet[4]~18_combout\,
	datac => \Hum|shet\(15),
	datad => \Hum|shet\(13),
	combout => \Hum|Equal6~2_combout\);

-- Location: LCCOMB_X16_Y12_N18
\Hum|Equal6~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \Hum|Equal6~4_combout\ = (\Hum|shet\(10) & (\Hum|shet\(14) & (\Hum|Equal6~2_combout\ & \Hum|shet\(9))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Hum|shet\(10),
	datab => \Hum|shet\(14),
	datac => \Hum|Equal6~2_combout\,
	datad => \Hum|shet\(9),
	combout => \Hum|Equal6~4_combout\);

-- Location: LCCOMB_X16_Y12_N22
\Hum|Data_H_REG~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Hum|Data_H_REG~2_combout\ = (!\Hum|Equal0~0_combout\ & ((\Hum|Data_H_REG~0_combout\) # ((\Hum|Data_H_REG~1_combout\ & \Hum|Equal6~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Hum|Data_H_REG~0_combout\,
	datab => \Hum|Equal0~0_combout\,
	datac => \Hum|Data_H_REG~1_combout\,
	datad => \Hum|Equal6~4_combout\,
	combout => \Hum|Data_H_REG~2_combout\);

-- Location: FF_X16_Y12_N23
\Hum|Data_H_REG\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \FGD|clk1M~clkctrl_outclk\,
	d => \Hum|Data_H_REG~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Hum|Data_H_REG~q\);

-- Location: LCCOMB_X16_Y12_N24
\Hum|Data_H_write~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Hum|Data_H_write~0_combout\ = (\Hum|Equal0~0_combout\) # ((\Hum|Data_H_write~q\ & ((\Hum|mstate.001~q\) # (!\Hum|Equal6~5_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Hum|Equal6~5_combout\,
	datab => \Hum|mstate.001~q\,
	datac => \Hum|Data_H_write~q\,
	datad => \Hum|Equal0~0_combout\,
	combout => \Hum|Data_H_write~0_combout\);

-- Location: FF_X16_Y12_N25
\Hum|Data_H_write\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \FGD|clk1M~clkctrl_outclk\,
	d => \Hum|Data_H_write~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Hum|Data_H_write~q\);

-- Location: IOIBUF_X0_Y21_N8
\key0~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_key0,
	o => \key0~input_o\);

-- Location: IOIBUF_X0_Y11_N8
\clk50M~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_clk50M,
	o => \clk50M~input_o\);

-- Location: CLKCTRL_G2
\clk50M~inputclkctrl\ : cycloneive_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \clk50M~inputclkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \clk50M~inputclkctrl_outclk\);

-- Location: LCCOMB_X7_Y10_N22
\FGD|Add0~22\ : cycloneive_lcell_comb
-- Equation(s):
-- \FGD|Add0~22_combout\ = (\FGD|i\(11) & (!\FGD|Add0~21\)) # (!\FGD|i\(11) & ((\FGD|Add0~21\) # (GND)))
-- \FGD|Add0~23\ = CARRY((!\FGD|Add0~21\) # (!\FGD|i\(11)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \FGD|i\(11),
	datad => VCC,
	cin => \FGD|Add0~21\,
	combout => \FGD|Add0~22_combout\,
	cout => \FGD|Add0~23\);

-- Location: LCCOMB_X7_Y10_N24
\FGD|Add0~24\ : cycloneive_lcell_comb
-- Equation(s):
-- \FGD|Add0~24_combout\ = (\FGD|i\(12) & (\FGD|Add0~23\ $ (GND))) # (!\FGD|i\(12) & (!\FGD|Add0~23\ & VCC))
-- \FGD|Add0~25\ = CARRY((\FGD|i\(12) & !\FGD|Add0~23\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \FGD|i\(12),
	datad => VCC,
	cin => \FGD|Add0~23\,
	combout => \FGD|Add0~24_combout\,
	cout => \FGD|Add0~25\);

-- Location: FF_X7_Y10_N25
\FGD|i[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk50M~inputclkctrl_outclk\,
	d => \FGD|Add0~24_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FGD|i\(12));

-- Location: LCCOMB_X7_Y10_N30
\FGD|Add0~30\ : cycloneive_lcell_comb
-- Equation(s):
-- \FGD|Add0~30_combout\ = (\FGD|i\(15) & (!\FGD|Add0~29\)) # (!\FGD|i\(15) & ((\FGD|Add0~29\) # (GND)))
-- \FGD|Add0~31\ = CARRY((!\FGD|Add0~29\) # (!\FGD|i\(15)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \FGD|i\(15),
	datad => VCC,
	cin => \FGD|Add0~29\,
	combout => \FGD|Add0~30_combout\,
	cout => \FGD|Add0~31\);

-- Location: LCCOMB_X8_Y10_N0
\FGD|i~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \FGD|i~6_combout\ = (\FGD|Add0~30_combout\ & !\FGD|Equal0~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \FGD|Add0~30_combout\,
	datac => \FGD|Equal0~10_combout\,
	combout => \FGD|i~6_combout\);

-- Location: FF_X8_Y10_N1
\FGD|i[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk50M~inputclkctrl_outclk\,
	d => \FGD|i~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FGD|i\(15));

-- Location: LCCOMB_X7_Y9_N0
\FGD|Add0~32\ : cycloneive_lcell_comb
-- Equation(s):
-- \FGD|Add0~32_combout\ = (\FGD|i\(16) & (\FGD|Add0~31\ $ (GND))) # (!\FGD|i\(16) & (!\FGD|Add0~31\ & VCC))
-- \FGD|Add0~33\ = CARRY((\FGD|i\(16) & !\FGD|Add0~31\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \FGD|i\(16),
	datad => VCC,
	cin => \FGD|Add0~31\,
	combout => \FGD|Add0~32_combout\,
	cout => \FGD|Add0~33\);

-- Location: FF_X7_Y9_N1
\FGD|i[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk50M~inputclkctrl_outclk\,
	d => \FGD|Add0~32_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FGD|i\(16));

-- Location: LCCOMB_X7_Y9_N2
\FGD|Add0~34\ : cycloneive_lcell_comb
-- Equation(s):
-- \FGD|Add0~34_combout\ = (\FGD|i\(17) & (!\FGD|Add0~33\)) # (!\FGD|i\(17) & ((\FGD|Add0~33\) # (GND)))
-- \FGD|Add0~35\ = CARRY((!\FGD|Add0~33\) # (!\FGD|i\(17)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \FGD|i\(17),
	datad => VCC,
	cin => \FGD|Add0~33\,
	combout => \FGD|Add0~34_combout\,
	cout => \FGD|Add0~35\);

-- Location: FF_X7_Y9_N3
\FGD|i[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk50M~inputclkctrl_outclk\,
	d => \FGD|Add0~34_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FGD|i\(17));

-- Location: LCCOMB_X7_Y9_N4
\FGD|Add0~36\ : cycloneive_lcell_comb
-- Equation(s):
-- \FGD|Add0~36_combout\ = (\FGD|i\(18) & (\FGD|Add0~35\ $ (GND))) # (!\FGD|i\(18) & (!\FGD|Add0~35\ & VCC))
-- \FGD|Add0~37\ = CARRY((\FGD|i\(18) & !\FGD|Add0~35\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \FGD|i\(18),
	datad => VCC,
	cin => \FGD|Add0~35\,
	combout => \FGD|Add0~36_combout\,
	cout => \FGD|Add0~37\);

-- Location: FF_X7_Y9_N5
\FGD|i[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk50M~inputclkctrl_outclk\,
	d => \FGD|Add0~36_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FGD|i\(18));

-- Location: LCCOMB_X7_Y9_N8
\FGD|Add0~40\ : cycloneive_lcell_comb
-- Equation(s):
-- \FGD|Add0~40_combout\ = (\FGD|i\(20) & (\FGD|Add0~39\ $ (GND))) # (!\FGD|i\(20) & (!\FGD|Add0~39\ & VCC))
-- \FGD|Add0~41\ = CARRY((\FGD|i\(20) & !\FGD|Add0~39\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \FGD|i\(20),
	datad => VCC,
	cin => \FGD|Add0~39\,
	combout => \FGD|Add0~40_combout\,
	cout => \FGD|Add0~41\);

-- Location: FF_X7_Y9_N9
\FGD|i[20]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk50M~inputclkctrl_outclk\,
	d => \FGD|Add0~40_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FGD|i\(20));

-- Location: LCCOMB_X7_Y9_N10
\FGD|Add0~42\ : cycloneive_lcell_comb
-- Equation(s):
-- \FGD|Add0~42_combout\ = (\FGD|i\(21) & (!\FGD|Add0~41\)) # (!\FGD|i\(21) & ((\FGD|Add0~41\) # (GND)))
-- \FGD|Add0~43\ = CARRY((!\FGD|Add0~41\) # (!\FGD|i\(21)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \FGD|i\(21),
	datad => VCC,
	cin => \FGD|Add0~41\,
	combout => \FGD|Add0~42_combout\,
	cout => \FGD|Add0~43\);

-- Location: LCCOMB_X7_Y9_N12
\FGD|Add0~44\ : cycloneive_lcell_comb
-- Equation(s):
-- \FGD|Add0~44_combout\ = (\FGD|i\(22) & (\FGD|Add0~43\ $ (GND))) # (!\FGD|i\(22) & (!\FGD|Add0~43\ & VCC))
-- \FGD|Add0~45\ = CARRY((\FGD|i\(22) & !\FGD|Add0~43\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \FGD|i\(22),
	datad => VCC,
	cin => \FGD|Add0~43\,
	combout => \FGD|Add0~44_combout\,
	cout => \FGD|Add0~45\);

-- Location: LCCOMB_X7_Y9_N14
\FGD|Add0~46\ : cycloneive_lcell_comb
-- Equation(s):
-- \FGD|Add0~46_combout\ = (\FGD|i\(23) & (!\FGD|Add0~45\)) # (!\FGD|i\(23) & ((\FGD|Add0~45\) # (GND)))
-- \FGD|Add0~47\ = CARRY((!\FGD|Add0~45\) # (!\FGD|i\(23)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \FGD|i\(23),
	datad => VCC,
	cin => \FGD|Add0~45\,
	combout => \FGD|Add0~46_combout\,
	cout => \FGD|Add0~47\);

-- Location: FF_X7_Y9_N15
\FGD|i[23]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk50M~inputclkctrl_outclk\,
	d => \FGD|Add0~46_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FGD|i\(23));

-- Location: FF_X7_Y9_N13
\FGD|i[22]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk50M~inputclkctrl_outclk\,
	d => \FGD|Add0~44_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FGD|i\(22));

-- Location: FF_X7_Y9_N11
\FGD|i[21]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk50M~inputclkctrl_outclk\,
	d => \FGD|Add0~42_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FGD|i\(21));

-- Location: LCCOMB_X8_Y10_N24
\FGD|Equal0~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \FGD|Equal0~6_combout\ = (!\FGD|i\(21) & !\FGD|i\(20))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001100000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \FGD|i\(21),
	datac => \FGD|i\(20),
	combout => \FGD|Equal0~6_combout\);

-- Location: LCCOMB_X8_Y10_N2
\FGD|Equal0~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \FGD|Equal0~7_combout\ = (\FGD|Equal0~5_combout\ & (!\FGD|i\(23) & (!\FGD|i\(22) & \FGD|Equal0~6_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FGD|Equal0~5_combout\,
	datab => \FGD|i\(23),
	datac => \FGD|i\(22),
	datad => \FGD|Equal0~6_combout\,
	combout => \FGD|Equal0~7_combout\);

-- Location: LCCOMB_X7_Y9_N16
\FGD|Add0~48\ : cycloneive_lcell_comb
-- Equation(s):
-- \FGD|Add0~48_combout\ = (\FGD|i\(24) & (\FGD|Add0~47\ $ (GND))) # (!\FGD|i\(24) & (!\FGD|Add0~47\ & VCC))
-- \FGD|Add0~49\ = CARRY((\FGD|i\(24) & !\FGD|Add0~47\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \FGD|i\(24),
	datad => VCC,
	cin => \FGD|Add0~47\,
	combout => \FGD|Add0~48_combout\,
	cout => \FGD|Add0~49\);

-- Location: FF_X7_Y9_N17
\FGD|i[24]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk50M~inputclkctrl_outclk\,
	d => \FGD|Add0~48_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FGD|i\(24));

-- Location: LCCOMB_X7_Y9_N18
\FGD|Add0~50\ : cycloneive_lcell_comb
-- Equation(s):
-- \FGD|Add0~50_combout\ = (\FGD|i\(25) & (!\FGD|Add0~49\)) # (!\FGD|i\(25) & ((\FGD|Add0~49\) # (GND)))
-- \FGD|Add0~51\ = CARRY((!\FGD|Add0~49\) # (!\FGD|i\(25)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \FGD|i\(25),
	datad => VCC,
	cin => \FGD|Add0~49\,
	combout => \FGD|Add0~50_combout\,
	cout => \FGD|Add0~51\);

-- Location: FF_X7_Y9_N19
\FGD|i[25]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk50M~inputclkctrl_outclk\,
	d => \FGD|Add0~50_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FGD|i\(25));

-- Location: LCCOMB_X7_Y9_N20
\FGD|Add0~52\ : cycloneive_lcell_comb
-- Equation(s):
-- \FGD|Add0~52_combout\ = (\FGD|i\(26) & (\FGD|Add0~51\ $ (GND))) # (!\FGD|i\(26) & (!\FGD|Add0~51\ & VCC))
-- \FGD|Add0~53\ = CARRY((\FGD|i\(26) & !\FGD|Add0~51\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \FGD|i\(26),
	datad => VCC,
	cin => \FGD|Add0~51\,
	combout => \FGD|Add0~52_combout\,
	cout => \FGD|Add0~53\);

-- Location: FF_X7_Y9_N21
\FGD|i[26]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk50M~inputclkctrl_outclk\,
	d => \FGD|Add0~52_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FGD|i\(26));

-- Location: LCCOMB_X7_Y9_N22
\FGD|Add0~54\ : cycloneive_lcell_comb
-- Equation(s):
-- \FGD|Add0~54_combout\ = (\FGD|i\(27) & (!\FGD|Add0~53\)) # (!\FGD|i\(27) & ((\FGD|Add0~53\) # (GND)))
-- \FGD|Add0~55\ = CARRY((!\FGD|Add0~53\) # (!\FGD|i\(27)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \FGD|i\(27),
	datad => VCC,
	cin => \FGD|Add0~53\,
	combout => \FGD|Add0~54_combout\,
	cout => \FGD|Add0~55\);

-- Location: FF_X7_Y9_N23
\FGD|i[27]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk50M~inputclkctrl_outclk\,
	d => \FGD|Add0~54_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FGD|i\(27));

-- Location: LCCOMB_X8_Y11_N30
\FGD|Equal0~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \FGD|Equal0~8_combout\ = (!\FGD|i\(24) & (!\FGD|i\(27) & (!\FGD|i\(25) & !\FGD|i\(26))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FGD|i\(24),
	datab => \FGD|i\(27),
	datac => \FGD|i\(25),
	datad => \FGD|i\(26),
	combout => \FGD|Equal0~8_combout\);

-- Location: LCCOMB_X7_Y9_N24
\FGD|Add0~56\ : cycloneive_lcell_comb
-- Equation(s):
-- \FGD|Add0~56_combout\ = (\FGD|i\(28) & (\FGD|Add0~55\ $ (GND))) # (!\FGD|i\(28) & (!\FGD|Add0~55\ & VCC))
-- \FGD|Add0~57\ = CARRY((\FGD|i\(28) & !\FGD|Add0~55\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \FGD|i\(28),
	datad => VCC,
	cin => \FGD|Add0~55\,
	combout => \FGD|Add0~56_combout\,
	cout => \FGD|Add0~57\);

-- Location: FF_X7_Y9_N25
\FGD|i[28]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk50M~inputclkctrl_outclk\,
	d => \FGD|Add0~56_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FGD|i\(28));

-- Location: LCCOMB_X7_Y9_N26
\FGD|Add0~58\ : cycloneive_lcell_comb
-- Equation(s):
-- \FGD|Add0~58_combout\ = (\FGD|i\(29) & (!\FGD|Add0~57\)) # (!\FGD|i\(29) & ((\FGD|Add0~57\) # (GND)))
-- \FGD|Add0~59\ = CARRY((!\FGD|Add0~57\) # (!\FGD|i\(29)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \FGD|i\(29),
	datad => VCC,
	cin => \FGD|Add0~57\,
	combout => \FGD|Add0~58_combout\,
	cout => \FGD|Add0~59\);

-- Location: FF_X7_Y9_N29
\FGD|i[30]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk50M~inputclkctrl_outclk\,
	d => \FGD|Add0~60_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FGD|i\(30));

-- Location: FF_X7_Y9_N27
\FGD|i[29]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk50M~inputclkctrl_outclk\,
	d => \FGD|Add0~58_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FGD|i\(29));

-- Location: LCCOMB_X8_Y10_N4
\FGD|Equal0~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \FGD|Equal0~9_combout\ = (!\FGD|i\(31) & (!\FGD|i\(30) & (!\FGD|i\(28) & !\FGD|i\(29))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FGD|i\(31),
	datab => \FGD|i\(30),
	datac => \FGD|i\(28),
	datad => \FGD|i\(29),
	combout => \FGD|Equal0~9_combout\);

-- Location: LCCOMB_X8_Y10_N14
\FGD|Equal0~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \FGD|Equal0~10_combout\ = (\FGD|Equal0~4_combout\ & (\FGD|Equal0~7_combout\ & (\FGD|Equal0~8_combout\ & \FGD|Equal0~9_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FGD|Equal0~4_combout\,
	datab => \FGD|Equal0~7_combout\,
	datac => \FGD|Equal0~8_combout\,
	datad => \FGD|Equal0~9_combout\,
	combout => \FGD|Equal0~10_combout\);

-- Location: LCCOMB_X8_Y10_N26
\FGD|i~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \FGD|i~1_combout\ = (\FGD|Add0~8_combout\ & !\FGD|Equal0~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FGD|Add0~8_combout\,
	datac => \FGD|Equal0~10_combout\,
	combout => \FGD|i~1_combout\);

-- Location: FF_X8_Y10_N27
\FGD|i[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk50M~inputclkctrl_outclk\,
	d => \FGD|i~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FGD|i\(4));

-- Location: LCCOMB_X7_Y10_N0
\FGD|Add0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \FGD|Add0~0_combout\ = \FGD|i\(0) $ (VCC)
-- \FGD|Add0~1\ = CARRY(\FGD|i\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \FGD|i\(0),
	datad => VCC,
	combout => \FGD|Add0~0_combout\,
	cout => \FGD|Add0~1\);

-- Location: LCCOMB_X8_Y11_N2
\FGD|clk1hz~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \FGD|clk1hz~0_combout\ = (!\FGD|Equal0~8_combout\) # (!\FGD|Equal0~9_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101111101011111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FGD|Equal0~9_combout\,
	datac => \FGD|Equal0~8_combout\,
	combout => \FGD|clk1hz~0_combout\);

-- Location: LCCOMB_X8_Y11_N0
\FGD|i~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \FGD|i~0_combout\ = (\FGD|Add0~0_combout\ & (((\FGD|clk1hz~0_combout\) # (!\FGD|Equal0~4_combout\)) # (!\FGD|Equal0~7_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000001110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FGD|Equal0~7_combout\,
	datab => \FGD|Equal0~4_combout\,
	datac => \FGD|Add0~0_combout\,
	datad => \FGD|clk1hz~0_combout\,
	combout => \FGD|i~0_combout\);

-- Location: FF_X8_Y11_N1
\FGD|i[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk50M~inputclkctrl_outclk\,
	d => \FGD|i~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FGD|i\(0));

-- Location: LCCOMB_X7_Y10_N2
\FGD|Add0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \FGD|Add0~2_combout\ = (\FGD|i\(1) & (!\FGD|Add0~1\)) # (!\FGD|i\(1) & ((\FGD|Add0~1\) # (GND)))
-- \FGD|Add0~3\ = CARRY((!\FGD|Add0~1\) # (!\FGD|i\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \FGD|i\(1),
	datad => VCC,
	cin => \FGD|Add0~1\,
	combout => \FGD|Add0~2_combout\,
	cout => \FGD|Add0~3\);

-- Location: FF_X7_Y10_N3
\FGD|i[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk50M~inputclkctrl_outclk\,
	d => \FGD|Add0~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FGD|i\(1));

-- Location: LCCOMB_X7_Y10_N4
\FGD|Add0~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \FGD|Add0~4_combout\ = (\FGD|i\(2) & (\FGD|Add0~3\ $ (GND))) # (!\FGD|i\(2) & (!\FGD|Add0~3\ & VCC))
-- \FGD|Add0~5\ = CARRY((\FGD|i\(2) & !\FGD|Add0~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \FGD|i\(2),
	datad => VCC,
	cin => \FGD|Add0~3\,
	combout => \FGD|Add0~4_combout\,
	cout => \FGD|Add0~5\);

-- Location: FF_X7_Y10_N5
\FGD|i[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk50M~inputclkctrl_outclk\,
	d => \FGD|Add0~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FGD|i\(2));

-- Location: LCCOMB_X7_Y10_N6
\FGD|Add0~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \FGD|Add0~6_combout\ = (\FGD|i\(3) & (!\FGD|Add0~5\)) # (!\FGD|i\(3) & ((\FGD|Add0~5\) # (GND)))
-- \FGD|Add0~7\ = CARRY((!\FGD|Add0~5\) # (!\FGD|i\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \FGD|i\(3),
	datad => VCC,
	cin => \FGD|Add0~5\,
	combout => \FGD|Add0~6_combout\,
	cout => \FGD|Add0~7\);

-- Location: LCCOMB_X7_Y10_N10
\FGD|Add0~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \FGD|Add0~10_combout\ = (\FGD|i\(5) & (!\FGD|Add0~9\)) # (!\FGD|i\(5) & ((\FGD|Add0~9\) # (GND)))
-- \FGD|Add0~11\ = CARRY((!\FGD|Add0~9\) # (!\FGD|i\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \FGD|i\(5),
	datad => VCC,
	cin => \FGD|Add0~9\,
	combout => \FGD|Add0~10_combout\,
	cout => \FGD|Add0~11\);

-- Location: LCCOMB_X7_Y10_N14
\FGD|Add0~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \FGD|Add0~14_combout\ = (\FGD|i\(7) & (!\FGD|Add0~13\)) # (!\FGD|i\(7) & ((\FGD|Add0~13\) # (GND)))
-- \FGD|Add0~15\ = CARRY((!\FGD|Add0~13\) # (!\FGD|i\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \FGD|i\(7),
	datad => VCC,
	cin => \FGD|Add0~13\,
	combout => \FGD|Add0~14_combout\,
	cout => \FGD|Add0~15\);

-- Location: FF_X7_Y10_N15
\FGD|i[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk50M~inputclkctrl_outclk\,
	d => \FGD|Add0~14_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FGD|i\(7));

-- Location: LCCOMB_X7_Y10_N16
\FGD|Add0~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \FGD|Add0~16_combout\ = (\FGD|i\(8) & (\FGD|Add0~15\ $ (GND))) # (!\FGD|i\(8) & (!\FGD|Add0~15\ & VCC))
-- \FGD|Add0~17\ = CARRY((\FGD|i\(8) & !\FGD|Add0~15\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \FGD|i\(8),
	datad => VCC,
	cin => \FGD|Add0~15\,
	combout => \FGD|Add0~16_combout\,
	cout => \FGD|Add0~17\);

-- Location: LCCOMB_X8_Y10_N8
\FGD|i~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \FGD|i~3_combout\ = (!\FGD|Equal0~10_combout\ & \FGD|Add0~16_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \FGD|Equal0~10_combout\,
	datac => \FGD|Add0~16_combout\,
	combout => \FGD|i~3_combout\);

-- Location: FF_X8_Y10_N9
\FGD|i[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk50M~inputclkctrl_outclk\,
	d => \FGD|i~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FGD|i\(8));

-- Location: LCCOMB_X7_Y10_N18
\FGD|Add0~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \FGD|Add0~18_combout\ = (\FGD|i\(9) & (!\FGD|Add0~17\)) # (!\FGD|i\(9) & ((\FGD|Add0~17\) # (GND)))
-- \FGD|Add0~19\ = CARRY((!\FGD|Add0~17\) # (!\FGD|i\(9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \FGD|i\(9),
	datad => VCC,
	cin => \FGD|Add0~17\,
	combout => \FGD|Add0~18_combout\,
	cout => \FGD|Add0~19\);

-- Location: LCCOMB_X8_Y10_N18
\FGD|i~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \FGD|i~4_combout\ = (\FGD|Add0~18_combout\ & !\FGD|Equal0~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \FGD|Add0~18_combout\,
	datac => \FGD|Equal0~10_combout\,
	combout => \FGD|i~4_combout\);

-- Location: FF_X8_Y10_N19
\FGD|i[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk50M~inputclkctrl_outclk\,
	d => \FGD|i~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FGD|i\(9));

-- Location: LCCOMB_X7_Y10_N20
\FGD|Add0~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \FGD|Add0~20_combout\ = (\FGD|i\(10) & (\FGD|Add0~19\ $ (GND))) # (!\FGD|i\(10) & (!\FGD|Add0~19\ & VCC))
-- \FGD|Add0~21\ = CARRY((\FGD|i\(10) & !\FGD|Add0~19\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \FGD|i\(10),
	datad => VCC,
	cin => \FGD|Add0~19\,
	combout => \FGD|Add0~20_combout\,
	cout => \FGD|Add0~21\);

-- Location: FF_X7_Y10_N21
\FGD|i[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk50M~inputclkctrl_outclk\,
	d => \FGD|Add0~20_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FGD|i\(10));

-- Location: FF_X7_Y10_N23
\FGD|i[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk50M~inputclkctrl_outclk\,
	d => \FGD|Add0~22_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FGD|i\(11));

-- Location: LCCOMB_X8_Y10_N28
\FGD|Equal0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \FGD|Equal0~2_combout\ = (!\FGD|i\(10) & (!\FGD|i\(11) & (\FGD|i\(8) & \FGD|i\(9))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FGD|i\(10),
	datab => \FGD|i\(11),
	datac => \FGD|i\(8),
	datad => \FGD|i\(9),
	combout => \FGD|Equal0~2_combout\);

-- Location: LCCOMB_X8_Y10_N20
\FGD|i~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \FGD|i~2_combout\ = (\FGD|Add0~12_combout\ & !\FGD|Equal0~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FGD|Add0~12_combout\,
	datac => \FGD|Equal0~10_combout\,
	combout => \FGD|i~2_combout\);

-- Location: FF_X8_Y10_N21
\FGD|i[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk50M~inputclkctrl_outclk\,
	d => \FGD|i~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FGD|i\(6));

-- Location: FF_X7_Y10_N11
\FGD|i[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk50M~inputclkctrl_outclk\,
	d => \FGD|Add0~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FGD|i\(5));

-- Location: LCCOMB_X8_Y10_N30
\FGD|Equal0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \FGD|Equal0~1_combout\ = (!\FGD|i\(7) & (\FGD|i\(6) & (\FGD|i\(4) & !\FGD|i\(5))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FGD|i\(7),
	datab => \FGD|i\(6),
	datac => \FGD|i\(4),
	datad => \FGD|i\(5),
	combout => \FGD|Equal0~1_combout\);

-- Location: FF_X7_Y10_N7
\FGD|i[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk50M~inputclkctrl_outclk\,
	d => \FGD|Add0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FGD|i\(3));

-- Location: LCCOMB_X8_Y10_N16
\FGD|Equal0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \FGD|Equal0~0_combout\ = (!\FGD|i\(2) & (!\FGD|i\(3) & (!\FGD|i\(0) & !\FGD|i\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FGD|i\(2),
	datab => \FGD|i\(3),
	datac => \FGD|i\(0),
	datad => \FGD|i\(1),
	combout => \FGD|Equal0~0_combout\);

-- Location: LCCOMB_X8_Y10_N12
\FGD|Equal0~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \FGD|Equal0~4_combout\ = (\FGD|Equal0~3_combout\ & (\FGD|Equal0~2_combout\ & (\FGD|Equal0~1_combout\ & \FGD|Equal0~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FGD|Equal0~3_combout\,
	datab => \FGD|Equal0~2_combout\,
	datac => \FGD|Equal0~1_combout\,
	datad => \FGD|Equal0~0_combout\,
	combout => \FGD|Equal0~4_combout\);

-- Location: LCCOMB_X8_Y11_N6
\FGD|clk1hz~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \FGD|clk1hz~1_combout\ = \FGD|clk1hz~q\ $ (((\FGD|Equal0~7_combout\ & (\FGD|Equal0~4_combout\ & !\FGD|clk1hz~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000001111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FGD|Equal0~7_combout\,
	datab => \FGD|Equal0~4_combout\,
	datac => \FGD|clk1hz~q\,
	datad => \FGD|clk1hz~0_combout\,
	combout => \FGD|clk1hz~1_combout\);

-- Location: FF_X8_Y11_N7
\FGD|clk1hz\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk50M~inputclkctrl_outclk\,
	d => \FGD|clk1hz~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FGD|clk1hz~q\);

-- Location: IOIBUF_X30_Y0_N22
\SSEL~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SSEL,
	o => \SSEL~input_o\);

-- Location: FF_X16_Y13_N17
\SPI_MODULE|SSELr[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \FGD|clk1M~clkctrl_outclk\,
	asdata => \SSEL~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \SPI_MODULE|SSELr\(0));

-- Location: LCCOMB_X16_Y13_N10
\SPI_MODULE|SSELr[1]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \SPI_MODULE|SSELr[1]~feeder_combout\ = \SPI_MODULE|SSELr\(0)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \SPI_MODULE|SSELr\(0),
	combout => \SPI_MODULE|SSELr[1]~feeder_combout\);

-- Location: FF_X16_Y13_N11
\SPI_MODULE|SSELr[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \FGD|clk1M~clkctrl_outclk\,
	d => \SPI_MODULE|SSELr[1]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \SPI_MODULE|SSELr\(1));

-- Location: FF_X16_Y13_N25
\SPI_MODULE|SSELr[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \FGD|clk1M~clkctrl_outclk\,
	asdata => \SPI_MODULE|SSELr\(1),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \SPI_MODULE|SSELr\(2));

-- Location: LCCOMB_X13_Y14_N16
\Hum|HYM~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \Hum|HYM~4_combout\ = (\Hum|HYM\(35) & ((\Hum|protocol\(2)) # (!\Hum|protocol\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Hum|HYM\(35),
	datab => \Hum|protocol\(2),
	datad => \Hum|protocol\(1),
	combout => \Hum|HYM~4_combout\);

-- Location: LCCOMB_X18_Y13_N20
\Hum|HYM[33]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Hum|HYM[33]~1_combout\ = (\Hum|Equal0~0_combout\) # ((\Hum|mstate.010~q\ & ((\Hum|always2~5_combout\) # (!\Hum|always2~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011110100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Hum|always2~2_combout\,
	datab => \Hum|mstate.010~q\,
	datac => \Hum|Equal0~0_combout\,
	datad => \Hum|always2~5_combout\,
	combout => \Hum|HYM[33]~1_combout\);

-- Location: FF_X13_Y14_N17
\Hum|HYM[36]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \FGD|clk1M~clkctrl_outclk\,
	d => \Hum|HYM~4_combout\,
	ena => \Hum|HYM[33]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Hum|HYM\(36));

-- Location: LCCOMB_X13_Y14_N12
\Hum|HYM~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \Hum|HYM~3_combout\ = (\Hum|HYM\(36) & ((\Hum|protocol\(2)) # (!\Hum|protocol\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Hum|protocol\(1),
	datab => \Hum|protocol\(2),
	datad => \Hum|HYM\(36),
	combout => \Hum|HYM~3_combout\);

-- Location: FF_X13_Y14_N13
\Hum|HYM[37]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \FGD|clk1M~clkctrl_outclk\,
	d => \Hum|HYM~3_combout\,
	ena => \Hum|HYM[33]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Hum|HYM\(37));

-- Location: LCCOMB_X13_Y14_N14
\Hum|HYM2[37]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \Hum|HYM2[37]~feeder_combout\ = \Hum|HYM\(37)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \Hum|HYM\(37),
	combout => \Hum|HYM2[37]~feeder_combout\);

-- Location: LCCOMB_X18_Y13_N2
\Hum|HYM2[39]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Hum|HYM2[39]~2_combout\ = (\Hum|mstate.010~q\ & (\Hum|LessThan4~3_combout\ & \Hum|HYM2[39]~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Hum|mstate.010~q\,
	datac => \Hum|LessThan4~3_combout\,
	datad => \Hum|HYM2[39]~1_combout\,
	combout => \Hum|HYM2[39]~2_combout\);

-- Location: FF_X13_Y14_N15
\Hum|HYM2[37]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \FGD|clk1M~clkctrl_outclk\,
	d => \Hum|HYM2[37]~feeder_combout\,
	ena => \Hum|HYM2[39]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Hum|HYM2\(37));

-- Location: LCCOMB_X14_Y14_N20
\SPI_MODULE|HYM_send~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \SPI_MODULE|HYM_send~3_combout\ = (\SPI_MODULE|SSELr\(2) & ((\SPI_MODULE|SSELr\(1) & (\SPI_MODULE|HYM_send\(36))) # (!\SPI_MODULE|SSELr\(1) & ((\Hum|HYM2\(37)))))) # (!\SPI_MODULE|SSELr\(2) & (\SPI_MODULE|HYM_send\(36)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111010100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SPI_MODULE|HYM_send\(36),
	datab => \SPI_MODULE|SSELr\(2),
	datac => \SPI_MODULE|SSELr\(1),
	datad => \Hum|HYM2\(37),
	combout => \SPI_MODULE|HYM_send~3_combout\);

-- Location: IOIBUF_X13_Y0_N15
\SCK~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SCK,
	o => \SCK~input_o\);

-- Location: FF_X16_Y13_N3
\SPI_MODULE|SCKr[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \FGD|clk1M~clkctrl_outclk\,
	asdata => \SCK~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \SPI_MODULE|SCKr\(0));

-- Location: LCCOMB_X16_Y13_N4
\SPI_MODULE|SCKr[1]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \SPI_MODULE|SCKr[1]~feeder_combout\ = \SPI_MODULE|SCKr\(0)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \SPI_MODULE|SCKr\(0),
	combout => \SPI_MODULE|SCKr[1]~feeder_combout\);

-- Location: FF_X16_Y13_N5
\SPI_MODULE|SCKr[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \FGD|clk1M~clkctrl_outclk\,
	d => \SPI_MODULE|SCKr[1]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \SPI_MODULE|SCKr\(1));

-- Location: LCCOMB_X16_Y13_N24
\SPI_MODULE|HYM_send[0]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \SPI_MODULE|HYM_send[0]~1_combout\ = (!\SPI_MODULE|SSELr\(1) & ((\SPI_MODULE|SSELr\(2)) # ((\SPI_MODULE|SCKr\(2) & !\SPI_MODULE|SCKr\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SPI_MODULE|SCKr\(2),
	datab => \SPI_MODULE|SCKr\(1),
	datac => \SPI_MODULE|SSELr\(2),
	datad => \SPI_MODULE|SSELr\(1),
	combout => \SPI_MODULE|HYM_send[0]~1_combout\);

-- Location: FF_X14_Y14_N21
\SPI_MODULE|HYM_send[37]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \FGD|clk1M~clkctrl_outclk\,
	d => \SPI_MODULE|HYM_send~3_combout\,
	ena => \SPI_MODULE|HYM_send[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \SPI_MODULE|HYM_send\(37));

-- Location: LCCOMB_X14_Y14_N2
\SPI_MODULE|HYM_send~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \SPI_MODULE|HYM_send~2_combout\ = (\SPI_MODULE|SSELr\(1) & (((\SPI_MODULE|HYM_send\(37))))) # (!\SPI_MODULE|SSELr\(1) & ((\SPI_MODULE|SSELr\(2) & (\Hum|HYM2\(38))) # (!\SPI_MODULE|SSELr\(2) & ((\SPI_MODULE|HYM_send\(37))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Hum|HYM2\(38),
	datab => \SPI_MODULE|HYM_send\(37),
	datac => \SPI_MODULE|SSELr\(1),
	datad => \SPI_MODULE|SSELr\(2),
	combout => \SPI_MODULE|HYM_send~2_combout\);

-- Location: FF_X14_Y14_N3
\SPI_MODULE|HYM_send[38]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \FGD|clk1M~clkctrl_outclk\,
	d => \SPI_MODULE|HYM_send~2_combout\,
	ena => \SPI_MODULE|HYM_send[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \SPI_MODULE|HYM_send\(38));

-- Location: LCCOMB_X14_Y14_N0
\SPI_MODULE|HYM_send~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \SPI_MODULE|HYM_send~0_combout\ = (\SPI_MODULE|SSELr\(1) & (((\SPI_MODULE|HYM_send\(38))))) # (!\SPI_MODULE|SSELr\(1) & ((\SPI_MODULE|SSELr\(2) & (\Hum|HYM2\(39))) # (!\SPI_MODULE|SSELr\(2) & ((\SPI_MODULE|HYM_send\(38))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Hum|HYM2\(39),
	datab => \SPI_MODULE|HYM_send\(38),
	datac => \SPI_MODULE|SSELr\(1),
	datad => \SPI_MODULE|SSELr\(2),
	combout => \SPI_MODULE|HYM_send~0_combout\);

-- Location: FF_X14_Y14_N1
\SPI_MODULE|HYM_send[39]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \FGD|clk1M~clkctrl_outclk\,
	d => \SPI_MODULE|HYM_send~0_combout\,
	ena => \SPI_MODULE|HYM_send[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \SPI_MODULE|HYM_send\(39));

-- Location: LCCOMB_X11_Y11_N6
\STPS|angle_current[0]~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \STPS|angle_current[0]~11_combout\ = \STPS|angle_current\(0) $ (VCC)
-- \STPS|angle_current[0]~12\ = CARRY(\STPS|angle_current\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \STPS|angle_current\(0),
	datad => VCC,
	combout => \STPS|angle_current[0]~11_combout\,
	cout => \STPS|angle_current[0]~12\);

-- Location: LCCOMB_X11_Y11_N8
\STPS|angle_current[1]~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \STPS|angle_current[1]~13_combout\ = (\STPS|LessThan0~14_combout\ & ((\STPS|angle_current\(1) & (!\STPS|angle_current[0]~12\)) # (!\STPS|angle_current\(1) & ((\STPS|angle_current[0]~12\) # (GND))))) # (!\STPS|LessThan0~14_combout\ & 
-- ((\STPS|angle_current\(1) & (\STPS|angle_current[0]~12\ & VCC)) # (!\STPS|angle_current\(1) & (!\STPS|angle_current[0]~12\))))
-- \STPS|angle_current[1]~14\ = CARRY((\STPS|LessThan0~14_combout\ & ((!\STPS|angle_current[0]~12\) # (!\STPS|angle_current\(1)))) # (!\STPS|LessThan0~14_combout\ & (!\STPS|angle_current\(1) & !\STPS|angle_current[0]~12\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \STPS|LessThan0~14_combout\,
	datab => \STPS|angle_current\(1),
	datad => VCC,
	cin => \STPS|angle_current[0]~12\,
	combout => \STPS|angle_current[1]~13_combout\,
	cout => \STPS|angle_current[1]~14\);

-- Location: IOIBUF_X16_Y0_N22
\MOSI~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_MOSI,
	o => \MOSI~input_o\);

-- Location: FF_X10_Y11_N25
\SPI_MODULE|MOSIr[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \FGD|clk1M~clkctrl_outclk\,
	asdata => \MOSI~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \SPI_MODULE|MOSIr\(0));

-- Location: LCCOMB_X10_Y11_N16
\SPI_MODULE|MOSIr[1]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \SPI_MODULE|MOSIr[1]~feeder_combout\ = \SPI_MODULE|MOSIr\(0)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \SPI_MODULE|MOSIr\(0),
	combout => \SPI_MODULE|MOSIr[1]~feeder_combout\);

-- Location: FF_X10_Y11_N17
\SPI_MODULE|MOSIr[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \FGD|clk1M~clkctrl_outclk\,
	d => \SPI_MODULE|MOSIr[1]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \SPI_MODULE|MOSIr\(1));

-- Location: FF_X16_Y13_N7
\SPI_MODULE|SCKr[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \FGD|clk1M~clkctrl_outclk\,
	asdata => \SPI_MODULE|SCKr\(1),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \SPI_MODULE|SCKr\(2));

-- Location: LCCOMB_X16_Y13_N6
\SPI_MODULE|byte_data_received[15]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \SPI_MODULE|byte_data_received[15]~0_combout\ = (\SPI_MODULE|SCKr\(1) & (!\SPI_MODULE|SCKr\(2) & !\SPI_MODULE|SSELr\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \SPI_MODULE|SCKr\(1),
	datac => \SPI_MODULE|SCKr\(2),
	datad => \SPI_MODULE|SSELr\(1),
	combout => \SPI_MODULE|byte_data_received[15]~0_combout\);

-- Location: FF_X10_Y11_N27
\SPI_MODULE|byte_data_received[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \FGD|clk1M~clkctrl_outclk\,
	asdata => \SPI_MODULE|MOSIr\(1),
	sload => VCC,
	ena => \SPI_MODULE|byte_data_received[15]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \SPI_MODULE|byte_data_received\(0));

-- Location: FF_X10_Y11_N3
\SPI_MODULE|byte_data_received[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \FGD|clk1M~clkctrl_outclk\,
	asdata => \SPI_MODULE|byte_data_received\(0),
	sload => VCC,
	ena => \SPI_MODULE|byte_data_received[15]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \SPI_MODULE|byte_data_received\(1));

-- Location: FF_X10_Y11_N23
\SPI_MODULE|byte_data_received[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \FGD|clk1M~clkctrl_outclk\,
	asdata => \SPI_MODULE|byte_data_received\(1),
	sload => VCC,
	ena => \SPI_MODULE|byte_data_received[15]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \SPI_MODULE|byte_data_received\(2));

-- Location: FF_X10_Y11_N7
\SPI_MODULE|byte_data_received[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \FGD|clk1M~clkctrl_outclk\,
	asdata => \SPI_MODULE|byte_data_received\(2),
	sload => VCC,
	ena => \SPI_MODULE|byte_data_received[15]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \SPI_MODULE|byte_data_received\(3));

-- Location: FF_X10_Y11_N31
\SPI_MODULE|byte_data_received[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \FGD|clk1M~clkctrl_outclk\,
	asdata => \SPI_MODULE|byte_data_received\(3),
	sload => VCC,
	ena => \SPI_MODULE|byte_data_received[15]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \SPI_MODULE|byte_data_received\(4));

-- Location: FF_X10_Y11_N11
\SPI_MODULE|byte_data_received[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \FGD|clk1M~clkctrl_outclk\,
	asdata => \SPI_MODULE|byte_data_received\(4),
	sload => VCC,
	ena => \SPI_MODULE|byte_data_received[15]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \SPI_MODULE|byte_data_received\(5));

-- Location: FF_X10_Y11_N19
\SPI_MODULE|byte_data_received[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \FGD|clk1M~clkctrl_outclk\,
	asdata => \SPI_MODULE|byte_data_received\(5),
	sload => VCC,
	ena => \SPI_MODULE|byte_data_received[15]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \SPI_MODULE|byte_data_received\(6));

-- Location: FF_X10_Y11_N15
\SPI_MODULE|byte_data_received[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \FGD|clk1M~clkctrl_outclk\,
	asdata => \SPI_MODULE|byte_data_received\(6),
	sload => VCC,
	ena => \SPI_MODULE|byte_data_received[15]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \SPI_MODULE|byte_data_received\(7));

-- Location: FF_X11_Y11_N7
\STPS|angle_current[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \FGD|clk1hz~clkctrl_outclk\,
	d => \STPS|angle_current[0]~11_combout\,
	ena => \STPS|angle_current[2]~33_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \STPS|angle_current\(0));

-- Location: LCCOMB_X10_Y11_N28
\STPS|Equal0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \STPS|Equal0~0_combout\ = (!\STPS|angle_current\(2) & (!\STPS|angle_current\(1) & !\STPS|angle_current\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \STPS|angle_current\(2),
	datac => \STPS|angle_current\(1),
	datad => \STPS|angle_current\(0),
	combout => \STPS|Equal0~0_combout\);

-- Location: LCCOMB_X9_Y11_N4
\STPS|LessThan1~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \STPS|LessThan1~1_cout\ = CARRY(!\STPS|Equal0~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \STPS|Equal0~0_combout\,
	datad => VCC,
	cout => \STPS|LessThan1~1_cout\);

-- Location: LCCOMB_X9_Y11_N6
\STPS|LessThan1~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \STPS|LessThan1~3_cout\ = CARRY((\SPI_MODULE|byte_data_received\(0) & ((!\STPS|LessThan1~1_cout\) # (!\STPS|angle_current\(3)))) # (!\SPI_MODULE|byte_data_received\(0) & (!\STPS|angle_current\(3) & !\STPS|LessThan1~1_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \SPI_MODULE|byte_data_received\(0),
	datab => \STPS|angle_current\(3),
	datad => VCC,
	cin => \STPS|LessThan1~1_cout\,
	cout => \STPS|LessThan1~3_cout\);

-- Location: LCCOMB_X9_Y11_N8
\STPS|LessThan1~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \STPS|LessThan1~5_cout\ = CARRY((\STPS|angle_current\(4) & ((!\STPS|LessThan1~3_cout\) # (!\SPI_MODULE|byte_data_received\(1)))) # (!\STPS|angle_current\(4) & (!\SPI_MODULE|byte_data_received\(1) & !\STPS|LessThan1~3_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \STPS|angle_current\(4),
	datab => \SPI_MODULE|byte_data_received\(1),
	datad => VCC,
	cin => \STPS|LessThan1~3_cout\,
	cout => \STPS|LessThan1~5_cout\);

-- Location: LCCOMB_X9_Y11_N10
\STPS|LessThan1~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \STPS|LessThan1~7_cout\ = CARRY((\STPS|angle_current\(5) & (\SPI_MODULE|byte_data_received\(2) & !\STPS|LessThan1~5_cout\)) # (!\STPS|angle_current\(5) & ((\SPI_MODULE|byte_data_received\(2)) # (!\STPS|LessThan1~5_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \STPS|angle_current\(5),
	datab => \SPI_MODULE|byte_data_received\(2),
	datad => VCC,
	cin => \STPS|LessThan1~5_cout\,
	cout => \STPS|LessThan1~7_cout\);

-- Location: LCCOMB_X9_Y11_N12
\STPS|LessThan1~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \STPS|LessThan1~9_cout\ = CARRY((\SPI_MODULE|byte_data_received\(3) & (\STPS|angle_current\(6) & !\STPS|LessThan1~7_cout\)) # (!\SPI_MODULE|byte_data_received\(3) & ((\STPS|angle_current\(6)) # (!\STPS|LessThan1~7_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \SPI_MODULE|byte_data_received\(3),
	datab => \STPS|angle_current\(6),
	datad => VCC,
	cin => \STPS|LessThan1~7_cout\,
	cout => \STPS|LessThan1~9_cout\);

-- Location: LCCOMB_X9_Y11_N14
\STPS|LessThan1~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \STPS|LessThan1~11_cout\ = CARRY((\SPI_MODULE|byte_data_received\(4) & ((!\STPS|LessThan1~9_cout\) # (!\STPS|angle_current\(7)))) # (!\SPI_MODULE|byte_data_received\(4) & (!\STPS|angle_current\(7) & !\STPS|LessThan1~9_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \SPI_MODULE|byte_data_received\(4),
	datab => \STPS|angle_current\(7),
	datad => VCC,
	cin => \STPS|LessThan1~9_cout\,
	cout => \STPS|LessThan1~11_cout\);

-- Location: LCCOMB_X9_Y11_N16
\STPS|LessThan1~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \STPS|LessThan1~13_cout\ = CARRY((\STPS|angle_current\(8) & ((!\STPS|LessThan1~11_cout\) # (!\SPI_MODULE|byte_data_received\(5)))) # (!\STPS|angle_current\(8) & (!\SPI_MODULE|byte_data_received\(5) & !\STPS|LessThan1~11_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \STPS|angle_current\(8),
	datab => \SPI_MODULE|byte_data_received\(5),
	datad => VCC,
	cin => \STPS|LessThan1~11_cout\,
	cout => \STPS|LessThan1~13_cout\);

-- Location: LCCOMB_X9_Y11_N18
\STPS|LessThan1~15\ : cycloneive_lcell_comb
-- Equation(s):
-- \STPS|LessThan1~15_cout\ = CARRY((\STPS|angle_current\(9) & (\SPI_MODULE|byte_data_received\(6) & !\STPS|LessThan1~13_cout\)) # (!\STPS|angle_current\(9) & ((\SPI_MODULE|byte_data_received\(6)) # (!\STPS|LessThan1~13_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \STPS|angle_current\(9),
	datab => \SPI_MODULE|byte_data_received\(6),
	datad => VCC,
	cin => \STPS|LessThan1~13_cout\,
	cout => \STPS|LessThan1~15_cout\);

-- Location: LCCOMB_X9_Y11_N20
\STPS|LessThan1~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \STPS|LessThan1~16_combout\ = (\SPI_MODULE|byte_data_received\(7) & (!\STPS|LessThan1~15_cout\ & \STPS|angle_current\(10))) # (!\SPI_MODULE|byte_data_received\(7) & ((\STPS|angle_current\(10)) # (!\STPS|LessThan1~15_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011111100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \SPI_MODULE|byte_data_received\(7),
	datad => \STPS|angle_current\(10),
	cin => \STPS|LessThan1~15_cout\,
	combout => \STPS|LessThan1~16_combout\);

-- Location: LCCOMB_X9_Y11_N2
\STPS|angle_current[2]~33\ : cycloneive_lcell_comb
-- Equation(s):
-- \STPS|angle_current[2]~33_combout\ = (\STPS|dev_state~q\ & ((\STPS|LessThan1~16_combout\) # (\STPS|LessThan0~14_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010100010101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \STPS|dev_state~q\,
	datab => \STPS|LessThan1~16_combout\,
	datac => \STPS|LessThan0~14_combout\,
	combout => \STPS|angle_current[2]~33_combout\);

-- Location: FF_X11_Y11_N9
\STPS|angle_current[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \FGD|clk1hz~clkctrl_outclk\,
	d => \STPS|angle_current[1]~13_combout\,
	ena => \STPS|angle_current[2]~33_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \STPS|angle_current\(1));

-- Location: LCCOMB_X11_Y11_N10
\STPS|angle_current[2]~15\ : cycloneive_lcell_comb
-- Equation(s):
-- \STPS|angle_current[2]~15_combout\ = ((\STPS|LessThan0~14_combout\ $ (\STPS|angle_current\(2) $ (\STPS|angle_current[1]~14\)))) # (GND)
-- \STPS|angle_current[2]~16\ = CARRY((\STPS|LessThan0~14_combout\ & (\STPS|angle_current\(2) & !\STPS|angle_current[1]~14\)) # (!\STPS|LessThan0~14_combout\ & ((\STPS|angle_current\(2)) # (!\STPS|angle_current[1]~14\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \STPS|LessThan0~14_combout\,
	datab => \STPS|angle_current\(2),
	datad => VCC,
	cin => \STPS|angle_current[1]~14\,
	combout => \STPS|angle_current[2]~15_combout\,
	cout => \STPS|angle_current[2]~16\);

-- Location: FF_X11_Y11_N11
\STPS|angle_current[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \FGD|clk1hz~clkctrl_outclk\,
	d => \STPS|angle_current[2]~15_combout\,
	ena => \STPS|angle_current[2]~33_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \STPS|angle_current\(2));

-- Location: LCCOMB_X11_Y11_N12
\STPS|angle_current[3]~17\ : cycloneive_lcell_comb
-- Equation(s):
-- \STPS|angle_current[3]~17_combout\ = (\STPS|LessThan0~14_combout\ & ((\STPS|angle_current\(3) & (!\STPS|angle_current[2]~16\)) # (!\STPS|angle_current\(3) & ((\STPS|angle_current[2]~16\) # (GND))))) # (!\STPS|LessThan0~14_combout\ & 
-- ((\STPS|angle_current\(3) & (\STPS|angle_current[2]~16\ & VCC)) # (!\STPS|angle_current\(3) & (!\STPS|angle_current[2]~16\))))
-- \STPS|angle_current[3]~18\ = CARRY((\STPS|LessThan0~14_combout\ & ((!\STPS|angle_current[2]~16\) # (!\STPS|angle_current\(3)))) # (!\STPS|LessThan0~14_combout\ & (!\STPS|angle_current\(3) & !\STPS|angle_current[2]~16\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \STPS|LessThan0~14_combout\,
	datab => \STPS|angle_current\(3),
	datad => VCC,
	cin => \STPS|angle_current[2]~16\,
	combout => \STPS|angle_current[3]~17_combout\,
	cout => \STPS|angle_current[3]~18\);

-- Location: FF_X11_Y11_N13
\STPS|angle_current[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \FGD|clk1hz~clkctrl_outclk\,
	d => \STPS|angle_current[3]~17_combout\,
	ena => \STPS|angle_current[2]~33_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \STPS|angle_current\(3));

-- Location: LCCOMB_X11_Y11_N14
\STPS|angle_current[4]~19\ : cycloneive_lcell_comb
-- Equation(s):
-- \STPS|angle_current[4]~19_combout\ = ((\STPS|LessThan0~14_combout\ $ (\STPS|angle_current\(4) $ (\STPS|angle_current[3]~18\)))) # (GND)
-- \STPS|angle_current[4]~20\ = CARRY((\STPS|LessThan0~14_combout\ & (\STPS|angle_current\(4) & !\STPS|angle_current[3]~18\)) # (!\STPS|LessThan0~14_combout\ & ((\STPS|angle_current\(4)) # (!\STPS|angle_current[3]~18\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \STPS|LessThan0~14_combout\,
	datab => \STPS|angle_current\(4),
	datad => VCC,
	cin => \STPS|angle_current[3]~18\,
	combout => \STPS|angle_current[4]~19_combout\,
	cout => \STPS|angle_current[4]~20\);

-- Location: FF_X11_Y11_N15
\STPS|angle_current[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \FGD|clk1hz~clkctrl_outclk\,
	d => \STPS|angle_current[4]~19_combout\,
	ena => \STPS|angle_current[2]~33_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \STPS|angle_current\(4));

-- Location: LCCOMB_X11_Y11_N16
\STPS|angle_current[5]~21\ : cycloneive_lcell_comb
-- Equation(s):
-- \STPS|angle_current[5]~21_combout\ = (\STPS|LessThan0~14_combout\ & ((\STPS|angle_current\(5) & (!\STPS|angle_current[4]~20\)) # (!\STPS|angle_current\(5) & ((\STPS|angle_current[4]~20\) # (GND))))) # (!\STPS|LessThan0~14_combout\ & 
-- ((\STPS|angle_current\(5) & (\STPS|angle_current[4]~20\ & VCC)) # (!\STPS|angle_current\(5) & (!\STPS|angle_current[4]~20\))))
-- \STPS|angle_current[5]~22\ = CARRY((\STPS|LessThan0~14_combout\ & ((!\STPS|angle_current[4]~20\) # (!\STPS|angle_current\(5)))) # (!\STPS|LessThan0~14_combout\ & (!\STPS|angle_current\(5) & !\STPS|angle_current[4]~20\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \STPS|LessThan0~14_combout\,
	datab => \STPS|angle_current\(5),
	datad => VCC,
	cin => \STPS|angle_current[4]~20\,
	combout => \STPS|angle_current[5]~21_combout\,
	cout => \STPS|angle_current[5]~22\);

-- Location: FF_X11_Y11_N17
\STPS|angle_current[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \FGD|clk1hz~clkctrl_outclk\,
	d => \STPS|angle_current[5]~21_combout\,
	ena => \STPS|angle_current[2]~33_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \STPS|angle_current\(5));

-- Location: LCCOMB_X11_Y11_N18
\STPS|angle_current[6]~23\ : cycloneive_lcell_comb
-- Equation(s):
-- \STPS|angle_current[6]~23_combout\ = ((\STPS|LessThan0~14_combout\ $ (\STPS|angle_current\(6) $ (\STPS|angle_current[5]~22\)))) # (GND)
-- \STPS|angle_current[6]~24\ = CARRY((\STPS|LessThan0~14_combout\ & (\STPS|angle_current\(6) & !\STPS|angle_current[5]~22\)) # (!\STPS|LessThan0~14_combout\ & ((\STPS|angle_current\(6)) # (!\STPS|angle_current[5]~22\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \STPS|LessThan0~14_combout\,
	datab => \STPS|angle_current\(6),
	datad => VCC,
	cin => \STPS|angle_current[5]~22\,
	combout => \STPS|angle_current[6]~23_combout\,
	cout => \STPS|angle_current[6]~24\);

-- Location: FF_X11_Y11_N19
\STPS|angle_current[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \FGD|clk1hz~clkctrl_outclk\,
	d => \STPS|angle_current[6]~23_combout\,
	ena => \STPS|angle_current[2]~33_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \STPS|angle_current\(6));

-- Location: LCCOMB_X11_Y11_N20
\STPS|angle_current[7]~25\ : cycloneive_lcell_comb
-- Equation(s):
-- \STPS|angle_current[7]~25_combout\ = (\STPS|LessThan0~14_combout\ & ((\STPS|angle_current\(7) & (!\STPS|angle_current[6]~24\)) # (!\STPS|angle_current\(7) & ((\STPS|angle_current[6]~24\) # (GND))))) # (!\STPS|LessThan0~14_combout\ & 
-- ((\STPS|angle_current\(7) & (\STPS|angle_current[6]~24\ & VCC)) # (!\STPS|angle_current\(7) & (!\STPS|angle_current[6]~24\))))
-- \STPS|angle_current[7]~26\ = CARRY((\STPS|LessThan0~14_combout\ & ((!\STPS|angle_current[6]~24\) # (!\STPS|angle_current\(7)))) # (!\STPS|LessThan0~14_combout\ & (!\STPS|angle_current\(7) & !\STPS|angle_current[6]~24\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \STPS|LessThan0~14_combout\,
	datab => \STPS|angle_current\(7),
	datad => VCC,
	cin => \STPS|angle_current[6]~24\,
	combout => \STPS|angle_current[7]~25_combout\,
	cout => \STPS|angle_current[7]~26\);

-- Location: FF_X11_Y11_N21
\STPS|angle_current[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \FGD|clk1hz~clkctrl_outclk\,
	d => \STPS|angle_current[7]~25_combout\,
	ena => \STPS|angle_current[2]~33_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \STPS|angle_current\(7));

-- Location: LCCOMB_X11_Y11_N22
\STPS|angle_current[8]~27\ : cycloneive_lcell_comb
-- Equation(s):
-- \STPS|angle_current[8]~27_combout\ = ((\STPS|LessThan0~14_combout\ $ (\STPS|angle_current\(8) $ (\STPS|angle_current[7]~26\)))) # (GND)
-- \STPS|angle_current[8]~28\ = CARRY((\STPS|LessThan0~14_combout\ & (\STPS|angle_current\(8) & !\STPS|angle_current[7]~26\)) # (!\STPS|LessThan0~14_combout\ & ((\STPS|angle_current\(8)) # (!\STPS|angle_current[7]~26\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \STPS|LessThan0~14_combout\,
	datab => \STPS|angle_current\(8),
	datad => VCC,
	cin => \STPS|angle_current[7]~26\,
	combout => \STPS|angle_current[8]~27_combout\,
	cout => \STPS|angle_current[8]~28\);

-- Location: FF_X11_Y11_N23
\STPS|angle_current[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \FGD|clk1hz~clkctrl_outclk\,
	d => \STPS|angle_current[8]~27_combout\,
	ena => \STPS|angle_current[2]~33_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \STPS|angle_current\(8));

-- Location: LCCOMB_X11_Y11_N24
\STPS|angle_current[9]~29\ : cycloneive_lcell_comb
-- Equation(s):
-- \STPS|angle_current[9]~29_combout\ = (\STPS|LessThan0~14_combout\ & ((\STPS|angle_current\(9) & (!\STPS|angle_current[8]~28\)) # (!\STPS|angle_current\(9) & ((\STPS|angle_current[8]~28\) # (GND))))) # (!\STPS|LessThan0~14_combout\ & 
-- ((\STPS|angle_current\(9) & (\STPS|angle_current[8]~28\ & VCC)) # (!\STPS|angle_current\(9) & (!\STPS|angle_current[8]~28\))))
-- \STPS|angle_current[9]~30\ = CARRY((\STPS|LessThan0~14_combout\ & ((!\STPS|angle_current[8]~28\) # (!\STPS|angle_current\(9)))) # (!\STPS|LessThan0~14_combout\ & (!\STPS|angle_current\(9) & !\STPS|angle_current[8]~28\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \STPS|LessThan0~14_combout\,
	datab => \STPS|angle_current\(9),
	datad => VCC,
	cin => \STPS|angle_current[8]~28\,
	combout => \STPS|angle_current[9]~29_combout\,
	cout => \STPS|angle_current[9]~30\);

-- Location: FF_X11_Y11_N25
\STPS|angle_current[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \FGD|clk1hz~clkctrl_outclk\,
	d => \STPS|angle_current[9]~29_combout\,
	ena => \STPS|angle_current[2]~33_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \STPS|angle_current\(9));

-- Location: LCCOMB_X11_Y11_N26
\STPS|angle_current[10]~31\ : cycloneive_lcell_comb
-- Equation(s):
-- \STPS|angle_current[10]~31_combout\ = \STPS|angle_current\(10) $ (\STPS|angle_current[9]~30\ $ (\STPS|LessThan0~14_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010101011010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \STPS|angle_current\(10),
	datad => \STPS|LessThan0~14_combout\,
	cin => \STPS|angle_current[9]~30\,
	combout => \STPS|angle_current[10]~31_combout\);

-- Location: FF_X11_Y11_N27
\STPS|angle_current[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \FGD|clk1hz~clkctrl_outclk\,
	d => \STPS|angle_current[10]~31_combout\,
	ena => \STPS|angle_current[2]~33_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \STPS|angle_current\(10));

-- Location: LCCOMB_X10_Y11_N0
\STPS|LessThan0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \STPS|LessThan0~1_cout\ = CARRY((\SPI_MODULE|byte_data_received\(0) & !\STPS|angle_current\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000100010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \SPI_MODULE|byte_data_received\(0),
	datab => \STPS|angle_current\(3),
	datad => VCC,
	cout => \STPS|LessThan0~1_cout\);

-- Location: LCCOMB_X10_Y11_N2
\STPS|LessThan0~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \STPS|LessThan0~3_cout\ = CARRY((\SPI_MODULE|byte_data_received\(1) & (\STPS|angle_current\(4) & !\STPS|LessThan0~1_cout\)) # (!\SPI_MODULE|byte_data_received\(1) & ((\STPS|angle_current\(4)) # (!\STPS|LessThan0~1_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \SPI_MODULE|byte_data_received\(1),
	datab => \STPS|angle_current\(4),
	datad => VCC,
	cin => \STPS|LessThan0~1_cout\,
	cout => \STPS|LessThan0~3_cout\);

-- Location: LCCOMB_X10_Y11_N4
\STPS|LessThan0~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \STPS|LessThan0~5_cout\ = CARRY((\SPI_MODULE|byte_data_received\(2) & ((!\STPS|LessThan0~3_cout\) # (!\STPS|angle_current\(5)))) # (!\SPI_MODULE|byte_data_received\(2) & (!\STPS|angle_current\(5) & !\STPS|LessThan0~3_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \SPI_MODULE|byte_data_received\(2),
	datab => \STPS|angle_current\(5),
	datad => VCC,
	cin => \STPS|LessThan0~3_cout\,
	cout => \STPS|LessThan0~5_cout\);

-- Location: LCCOMB_X10_Y11_N6
\STPS|LessThan0~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \STPS|LessThan0~7_cout\ = CARRY((\SPI_MODULE|byte_data_received\(3) & (\STPS|angle_current\(6) & !\STPS|LessThan0~5_cout\)) # (!\SPI_MODULE|byte_data_received\(3) & ((\STPS|angle_current\(6)) # (!\STPS|LessThan0~5_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \SPI_MODULE|byte_data_received\(3),
	datab => \STPS|angle_current\(6),
	datad => VCC,
	cin => \STPS|LessThan0~5_cout\,
	cout => \STPS|LessThan0~7_cout\);

-- Location: LCCOMB_X10_Y11_N8
\STPS|LessThan0~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \STPS|LessThan0~9_cout\ = CARRY((\STPS|angle_current\(7) & (\SPI_MODULE|byte_data_received\(4) & !\STPS|LessThan0~7_cout\)) # (!\STPS|angle_current\(7) & ((\SPI_MODULE|byte_data_received\(4)) # (!\STPS|LessThan0~7_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \STPS|angle_current\(7),
	datab => \SPI_MODULE|byte_data_received\(4),
	datad => VCC,
	cin => \STPS|LessThan0~7_cout\,
	cout => \STPS|LessThan0~9_cout\);

-- Location: LCCOMB_X10_Y11_N10
\STPS|LessThan0~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \STPS|LessThan0~11_cout\ = CARRY((\SPI_MODULE|byte_data_received\(5) & (\STPS|angle_current\(8) & !\STPS|LessThan0~9_cout\)) # (!\SPI_MODULE|byte_data_received\(5) & ((\STPS|angle_current\(8)) # (!\STPS|LessThan0~9_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \SPI_MODULE|byte_data_received\(5),
	datab => \STPS|angle_current\(8),
	datad => VCC,
	cin => \STPS|LessThan0~9_cout\,
	cout => \STPS|LessThan0~11_cout\);

-- Location: LCCOMB_X10_Y11_N12
\STPS|LessThan0~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \STPS|LessThan0~13_cout\ = CARRY((\STPS|angle_current\(9) & (\SPI_MODULE|byte_data_received\(6) & !\STPS|LessThan0~11_cout\)) # (!\STPS|angle_current\(9) & ((\SPI_MODULE|byte_data_received\(6)) # (!\STPS|LessThan0~11_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \STPS|angle_current\(9),
	datab => \SPI_MODULE|byte_data_received\(6),
	datad => VCC,
	cin => \STPS|LessThan0~11_cout\,
	cout => \STPS|LessThan0~13_cout\);

-- Location: LCCOMB_X10_Y11_N14
\STPS|LessThan0~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \STPS|LessThan0~14_combout\ = (\SPI_MODULE|byte_data_received\(7) & ((\STPS|LessThan0~13_cout\) # (!\STPS|angle_current\(10)))) # (!\SPI_MODULE|byte_data_received\(7) & (\STPS|LessThan0~13_cout\ & !\STPS|angle_current\(10)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000011111010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \SPI_MODULE|byte_data_received\(7),
	datad => \STPS|angle_current\(10),
	cin => \STPS|LessThan0~13_cout\,
	combout => \STPS|LessThan0~14_combout\);

-- Location: LCCOMB_X10_Y11_N18
\STPS|Equal0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \STPS|Equal0~1_combout\ = (\STPS|angle_current\(9) & (\SPI_MODULE|byte_data_received\(6) & (\STPS|angle_current\(10) $ (!\SPI_MODULE|byte_data_received\(7))))) # (!\STPS|angle_current\(9) & (!\SPI_MODULE|byte_data_received\(6) & (\STPS|angle_current\(10) 
-- $ (!\SPI_MODULE|byte_data_received\(7)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000010000100001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \STPS|angle_current\(9),
	datab => \STPS|angle_current\(10),
	datac => \SPI_MODULE|byte_data_received\(6),
	datad => \SPI_MODULE|byte_data_received\(7),
	combout => \STPS|Equal0~1_combout\);

-- Location: LCCOMB_X9_Y11_N24
\STPS|M_EN~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \STPS|M_EN~0_combout\ = (\STPS|LessThan0~14_combout\) # ((\STPS|M_EN~q\ & ((!\STPS|Equal0~1_combout\) # (!\STPS|Equal0~5_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \STPS|Equal0~5_combout\,
	datab => \STPS|M_EN~q\,
	datac => \STPS|LessThan0~14_combout\,
	datad => \STPS|Equal0~1_combout\,
	combout => \STPS|M_EN~0_combout\);

-- Location: LCCOMB_X9_Y11_N28
\STPS|M_EN~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \STPS|M_EN~1_combout\ = (\STPS|dev_state~q\ & ((\STPS|M_EN~0_combout\) # ((\STPS|LessThan1~16_combout\)))) # (!\STPS|dev_state~q\ & (((\key0~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \STPS|dev_state~q\,
	datab => \STPS|M_EN~0_combout\,
	datac => \key0~input_o\,
	datad => \STPS|LessThan1~16_combout\,
	combout => \STPS|M_EN~1_combout\);

-- Location: FF_X9_Y11_N29
\STPS|M_EN\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \FGD|clk1hz~q\,
	d => \STPS|M_EN~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \STPS|M_EN~q\);

-- Location: LCCOMB_X9_Y11_N22
\STPS|DIR~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \STPS|DIR~0_combout\ = (\STPS|dev_state~q\ & (!\STPS|LessThan0~14_combout\ & ((\STPS|LessThan1~16_combout\) # (\STPS|DIR~q\)))) # (!\STPS|dev_state~q\ & (((\STPS|DIR~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101111100001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \STPS|dev_state~q\,
	datab => \STPS|LessThan1~16_combout\,
	datac => \STPS|LessThan0~14_combout\,
	datad => \STPS|DIR~q\,
	combout => \STPS|DIR~0_combout\);

-- Location: LCCOMB_X9_Y11_N0
\STPS|DIR~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \STPS|DIR~1_combout\ = (\STPS|DIR~0_combout\) # ((!\STPS|dev_state~q\ & \key0~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \STPS|dev_state~q\,
	datac => \STPS|DIR~0_combout\,
	datad => \key0~input_o\,
	combout => \STPS|DIR~1_combout\);

-- Location: FF_X9_Y11_N1
\STPS|DIR\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \FGD|clk1hz~clkctrl_outclk\,
	d => \STPS|DIR~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \STPS|DIR~q\);

-- Location: LCCOMB_X17_Y3_N26
\SDRV|Add0~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \SDRV|Add0~4_combout\ = \SDRV|state\(0) $ (\STPS|DIR~q\ $ (!\SDRV|state\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010100101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SDRV|state\(0),
	datac => \STPS|DIR~q\,
	datad => \SDRV|state\(1),
	combout => \SDRV|Add0~4_combout\);

-- Location: FF_X17_Y3_N11
\SDRV|state[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \RL|Q~clkctrl_outclk\,
	asdata => \SDRV|Add0~4_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \SDRV|state\(1));

-- Location: LCCOMB_X17_Y3_N8
\SDRV|Add0~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \SDRV|Add0~3_combout\ = \SDRV|state\(2) $ (((\SDRV|state\(0) & (\STPS|DIR~q\ & \SDRV|state\(1))) # (!\SDRV|state\(0) & (!\STPS|DIR~q\ & !\SDRV|state\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110110011001001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SDRV|state\(0),
	datab => \SDRV|state\(2),
	datac => \STPS|DIR~q\,
	datad => \SDRV|state\(1),
	combout => \SDRV|Add0~3_combout\);

-- Location: FF_X17_Y3_N17
\SDRV|state[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \RL|Q~clkctrl_outclk\,
	asdata => \SDRV|Add0~3_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \SDRV|state\(2));

-- Location: LCCOMB_X17_Y3_N30
\SDRV|Mux3~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \SDRV|Mux3~0_combout\ = (\SDRV|state\(0) & (\SDRV|state\(2) & (\STPS|DIR~q\ $ (\SDRV|state\(1))))) # (!\SDRV|state\(0) & (\SDRV|state\(2) $ (((!\STPS|DIR~q\ & !\SDRV|state\(1))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100110011000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SDRV|state\(0),
	datab => \SDRV|state\(2),
	datac => \STPS|DIR~q\,
	datad => \SDRV|state\(1),
	combout => \SDRV|Mux3~0_combout\);

-- Location: LCCOMB_X17_Y3_N24
\SDRV|state[3]~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \SDRV|state[3]~3_combout\ = !\SDRV|Add0~2_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \SDRV|Add0~2_combout\,
	combout => \SDRV|state[3]~3_combout\);

-- Location: FF_X17_Y3_N25
\SDRV|state[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \RL|Q~clkctrl_outclk\,
	d => \SDRV|state[3]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \SDRV|state\(3));

-- Location: LCCOMB_X17_Y3_N10
\SDRV|Add0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \SDRV|Add0~1_combout\ = (\SDRV|state\(0) & (((\SDRV|state\(1) & \SDRV|state\(2))) # (!\STPS|DIR~q\))) # (!\SDRV|state\(0) & (!\STPS|DIR~q\ & ((\SDRV|state\(1)) # (\SDRV|state\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011001100110010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SDRV|state\(0),
	datab => \STPS|DIR~q\,
	datac => \SDRV|state\(1),
	datad => \SDRV|state\(2),
	combout => \SDRV|Add0~1_combout\);

-- Location: LCCOMB_X17_Y3_N2
\SDRV|Add0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \SDRV|Add0~2_combout\ = \SDRV|state\(3) $ (\STPS|DIR~q\ $ (\SDRV|Add0~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \SDRV|state\(3),
	datac => \STPS|DIR~q\,
	datad => \SDRV|Add0~1_combout\,
	combout => \SDRV|Add0~2_combout\);

-- Location: FF_X17_Y3_N1
\SDRV|OUT[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \RL|Q~clkctrl_outclk\,
	asdata => \SDRV|Mux3~0_combout\,
	sload => VCC,
	ena => \SDRV|Add0~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \SDRV|OUT\(0));

-- Location: LCCOMB_X17_Y3_N0
\E_s|OUT_final[0]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \E_s|OUT_final[0]~0_combout\ = (\STPS|M_EN~q\ & \SDRV|OUT\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \STPS|M_EN~q\,
	datac => \SDRV|OUT\(0),
	combout => \E_s|OUT_final[0]~0_combout\);

-- Location: LCCOMB_X17_Y3_N16
\SDRV|Mux2~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \SDRV|Mux2~0_combout\ = (\STPS|DIR~q\ & ((\SDRV|state\(2) & (!\SDRV|state\(0) & !\SDRV|state\(1))) # (!\SDRV|state\(2) & ((\SDRV|state\(1)))))) # (!\STPS|DIR~q\ & (\SDRV|state\(2) & ((!\SDRV|state\(1)) # (!\SDRV|state\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001110001110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SDRV|state\(0),
	datab => \STPS|DIR~q\,
	datac => \SDRV|state\(2),
	datad => \SDRV|state\(1),
	combout => \SDRV|Mux2~0_combout\);

-- Location: FF_X17_Y3_N19
\SDRV|OUT[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \RL|Q~clkctrl_outclk\,
	asdata => \SDRV|Mux2~0_combout\,
	sload => VCC,
	ena => \SDRV|Add0~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \SDRV|OUT\(1));

-- Location: LCCOMB_X17_Y3_N18
\E_s|OUT_final[1]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \E_s|OUT_final[1]~1_combout\ = (\STPS|M_EN~q\ & \SDRV|OUT\(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \STPS|M_EN~q\,
	datac => \SDRV|OUT\(1),
	combout => \E_s|OUT_final[1]~1_combout\);

-- Location: LCCOMB_X17_Y3_N4
\SDRV|Mux1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \SDRV|Mux1~0_combout\ = (\SDRV|state\(0) & (!\SDRV|state\(2) & (\STPS|DIR~q\ $ (\SDRV|state\(1))))) # (!\SDRV|state\(0) & (\SDRV|state\(2) $ (((\STPS|DIR~q\) # (\SDRV|state\(1))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001001100110100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SDRV|state\(0),
	datab => \SDRV|state\(2),
	datac => \STPS|DIR~q\,
	datad => \SDRV|state\(1),
	combout => \SDRV|Mux1~0_combout\);

-- Location: FF_X17_Y3_N29
\SDRV|OUT[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \RL|Q~clkctrl_outclk\,
	asdata => \SDRV|Mux1~0_combout\,
	sload => VCC,
	ena => \SDRV|Add0~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \SDRV|OUT\(2));

-- Location: LCCOMB_X17_Y3_N28
\E_s|OUT_final[2]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \E_s|OUT_final[2]~2_combout\ = (\STPS|M_EN~q\ & \SDRV|OUT\(2))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \STPS|M_EN~q\,
	datac => \SDRV|OUT\(2),
	combout => \E_s|OUT_final[2]~2_combout\);

-- Location: LCCOMB_X17_Y3_N14
\SDRV|Mux0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \SDRV|Mux0~0_combout\ = (\SDRV|state\(2) & (((\STPS|DIR~q\ & \SDRV|state\(1))))) # (!\SDRV|state\(2) & ((\SDRV|state\(0) & (!\STPS|DIR~q\ & !\SDRV|state\(1))) # (!\SDRV|state\(0) & ((!\SDRV|state\(1)) # (!\STPS|DIR~q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000100010011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SDRV|state\(0),
	datab => \SDRV|state\(2),
	datac => \STPS|DIR~q\,
	datad => \SDRV|state\(1),
	combout => \SDRV|Mux0~0_combout\);

-- Location: FF_X17_Y3_N23
\SDRV|OUT[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \RL|Q~clkctrl_outclk\,
	asdata => \SDRV|Mux0~0_combout\,
	sload => VCC,
	ena => \SDRV|Add0~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \SDRV|OUT\(3));

-- Location: LCCOMB_X17_Y3_N22
\E_s|OUT_final[3]~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \E_s|OUT_final[3]~3_combout\ = (\STPS|M_EN~q\ & \SDRV|OUT\(3))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \STPS|M_EN~q\,
	datac => \SDRV|OUT\(3),
	combout => \E_s|OUT_final[3]~3_combout\);

-- Location: FF_X12_Y9_N1
\SPI_MODULE|byte_data_received[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \FGD|clk1M~clkctrl_outclk\,
	asdata => \SPI_MODULE|byte_data_received\(7),
	sload => VCC,
	ena => \SPI_MODULE|byte_data_received[15]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \SPI_MODULE|byte_data_received\(8));

-- Location: FF_X12_Y9_N3
\SPI_MODULE|byte_data_received[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \FGD|clk1M~clkctrl_outclk\,
	asdata => \SPI_MODULE|byte_data_received\(8),
	sload => VCC,
	ena => \SPI_MODULE|byte_data_received[15]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \SPI_MODULE|byte_data_received\(9));

-- Location: FF_X12_Y9_N5
\SPI_MODULE|byte_data_received[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \FGD|clk1M~clkctrl_outclk\,
	asdata => \SPI_MODULE|byte_data_received\(9),
	sload => VCC,
	ena => \SPI_MODULE|byte_data_received[15]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \SPI_MODULE|byte_data_received\(10));

-- Location: FF_X12_Y9_N7
\SPI_MODULE|byte_data_received[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \FGD|clk1M~clkctrl_outclk\,
	asdata => \SPI_MODULE|byte_data_received\(10),
	sload => VCC,
	ena => \SPI_MODULE|byte_data_received[15]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \SPI_MODULE|byte_data_received\(11));

-- Location: FF_X12_Y9_N9
\SPI_MODULE|byte_data_received[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \FGD|clk1M~clkctrl_outclk\,
	asdata => \SPI_MODULE|byte_data_received\(11),
	sload => VCC,
	ena => \SPI_MODULE|byte_data_received[15]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \SPI_MODULE|byte_data_received\(12));

-- Location: FF_X12_Y9_N11
\SPI_MODULE|byte_data_received[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \FGD|clk1M~clkctrl_outclk\,
	asdata => \SPI_MODULE|byte_data_received\(12),
	sload => VCC,
	ena => \SPI_MODULE|byte_data_received[15]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \SPI_MODULE|byte_data_received\(13));

-- Location: FF_X12_Y9_N13
\SPI_MODULE|byte_data_received[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \FGD|clk1M~clkctrl_outclk\,
	asdata => \SPI_MODULE|byte_data_received\(13),
	sload => VCC,
	ena => \SPI_MODULE|byte_data_received[15]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \SPI_MODULE|byte_data_received\(14));

-- Location: FF_X12_Y9_N15
\SPI_MODULE|byte_data_received[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \FGD|clk1M~clkctrl_outclk\,
	asdata => \SPI_MODULE|byte_data_received\(14),
	sload => VCC,
	ena => \SPI_MODULE|byte_data_received[15]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \SPI_MODULE|byte_data_received\(15));

-- Location: LCCOMB_X12_Y9_N16
\p_w_m|cnt[1]~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \p_w_m|cnt[1]~7_combout\ = (\p_w_m|cnt\(0) & (\p_w_m|cnt\(1) $ (VCC))) # (!\p_w_m|cnt\(0) & (\p_w_m|cnt\(1) & VCC))
-- \p_w_m|cnt[1]~8\ = CARRY((\p_w_m|cnt\(0) & \p_w_m|cnt\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \p_w_m|cnt\(0),
	datab => \p_w_m|cnt\(1),
	datad => VCC,
	combout => \p_w_m|cnt[1]~7_combout\,
	cout => \p_w_m|cnt[1]~8\);

-- Location: FF_X12_Y9_N17
\p_w_m|cnt[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \FGD|clk25M~clkctrl_outclk\,
	d => \p_w_m|cnt[1]~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \p_w_m|cnt\(1));

-- Location: LCCOMB_X12_Y9_N18
\p_w_m|cnt[2]~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \p_w_m|cnt[2]~9_combout\ = (\p_w_m|cnt\(2) & (!\p_w_m|cnt[1]~8\)) # (!\p_w_m|cnt\(2) & ((\p_w_m|cnt[1]~8\) # (GND)))
-- \p_w_m|cnt[2]~10\ = CARRY((!\p_w_m|cnt[1]~8\) # (!\p_w_m|cnt\(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \p_w_m|cnt\(2),
	datad => VCC,
	cin => \p_w_m|cnt[1]~8\,
	combout => \p_w_m|cnt[2]~9_combout\,
	cout => \p_w_m|cnt[2]~10\);

-- Location: FF_X12_Y9_N19
\p_w_m|cnt[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \FGD|clk25M~clkctrl_outclk\,
	d => \p_w_m|cnt[2]~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \p_w_m|cnt\(2));

-- Location: LCCOMB_X12_Y9_N20
\p_w_m|cnt[3]~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \p_w_m|cnt[3]~11_combout\ = (\p_w_m|cnt\(3) & (\p_w_m|cnt[2]~10\ $ (GND))) # (!\p_w_m|cnt\(3) & (!\p_w_m|cnt[2]~10\ & VCC))
-- \p_w_m|cnt[3]~12\ = CARRY((\p_w_m|cnt\(3) & !\p_w_m|cnt[2]~10\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \p_w_m|cnt\(3),
	datad => VCC,
	cin => \p_w_m|cnt[2]~10\,
	combout => \p_w_m|cnt[3]~11_combout\,
	cout => \p_w_m|cnt[3]~12\);

-- Location: FF_X12_Y9_N21
\p_w_m|cnt[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \FGD|clk25M~clkctrl_outclk\,
	d => \p_w_m|cnt[3]~11_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \p_w_m|cnt\(3));

-- Location: LCCOMB_X12_Y9_N22
\p_w_m|cnt[4]~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \p_w_m|cnt[4]~13_combout\ = (\p_w_m|cnt\(4) & (!\p_w_m|cnt[3]~12\)) # (!\p_w_m|cnt\(4) & ((\p_w_m|cnt[3]~12\) # (GND)))
-- \p_w_m|cnt[4]~14\ = CARRY((!\p_w_m|cnt[3]~12\) # (!\p_w_m|cnt\(4)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \p_w_m|cnt\(4),
	datad => VCC,
	cin => \p_w_m|cnt[3]~12\,
	combout => \p_w_m|cnt[4]~13_combout\,
	cout => \p_w_m|cnt[4]~14\);

-- Location: LCCOMB_X12_Y9_N24
\p_w_m|cnt[5]~15\ : cycloneive_lcell_comb
-- Equation(s):
-- \p_w_m|cnt[5]~15_combout\ = (\p_w_m|cnt\(5) & (\p_w_m|cnt[4]~14\ $ (GND))) # (!\p_w_m|cnt\(5) & (!\p_w_m|cnt[4]~14\ & VCC))
-- \p_w_m|cnt[5]~16\ = CARRY((\p_w_m|cnt\(5) & !\p_w_m|cnt[4]~14\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \p_w_m|cnt\(5),
	datad => VCC,
	cin => \p_w_m|cnt[4]~14\,
	combout => \p_w_m|cnt[5]~15_combout\,
	cout => \p_w_m|cnt[5]~16\);

-- Location: FF_X12_Y9_N25
\p_w_m|cnt[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \FGD|clk25M~clkctrl_outclk\,
	d => \p_w_m|cnt[5]~15_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \p_w_m|cnt\(5));

-- Location: LCCOMB_X12_Y9_N26
\p_w_m|cnt[6]~17\ : cycloneive_lcell_comb
-- Equation(s):
-- \p_w_m|cnt[6]~17_combout\ = (\p_w_m|cnt\(6) & (!\p_w_m|cnt[5]~16\)) # (!\p_w_m|cnt\(6) & ((\p_w_m|cnt[5]~16\) # (GND)))
-- \p_w_m|cnt[6]~18\ = CARRY((!\p_w_m|cnt[5]~16\) # (!\p_w_m|cnt\(6)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \p_w_m|cnt\(6),
	datad => VCC,
	cin => \p_w_m|cnt[5]~16\,
	combout => \p_w_m|cnt[6]~17_combout\,
	cout => \p_w_m|cnt[6]~18\);

-- Location: LCCOMB_X12_Y9_N28
\p_w_m|cnt[7]~19\ : cycloneive_lcell_comb
-- Equation(s):
-- \p_w_m|cnt[7]~19_combout\ = \p_w_m|cnt[6]~18\ $ (!\p_w_m|cnt\(7))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \p_w_m|cnt\(7),
	cin => \p_w_m|cnt[6]~18\,
	combout => \p_w_m|cnt[7]~19_combout\);

-- Location: FF_X12_Y9_N29
\p_w_m|cnt[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \FGD|clk25M~clkctrl_outclk\,
	d => \p_w_m|cnt[7]~19_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \p_w_m|cnt\(7));

-- Location: LCCOMB_X12_Y9_N0
\p_w_m|LessThan0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \p_w_m|LessThan0~1_cout\ = CARRY((!\p_w_m|cnt\(0) & \SPI_MODULE|byte_data_received\(8)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001000100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \p_w_m|cnt\(0),
	datab => \SPI_MODULE|byte_data_received\(8),
	datad => VCC,
	cout => \p_w_m|LessThan0~1_cout\);

-- Location: LCCOMB_X12_Y9_N2
\p_w_m|LessThan0~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \p_w_m|LessThan0~3_cout\ = CARRY((\SPI_MODULE|byte_data_received\(9) & (\p_w_m|cnt\(1) & !\p_w_m|LessThan0~1_cout\)) # (!\SPI_MODULE|byte_data_received\(9) & ((\p_w_m|cnt\(1)) # (!\p_w_m|LessThan0~1_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \SPI_MODULE|byte_data_received\(9),
	datab => \p_w_m|cnt\(1),
	datad => VCC,
	cin => \p_w_m|LessThan0~1_cout\,
	cout => \p_w_m|LessThan0~3_cout\);

-- Location: LCCOMB_X12_Y9_N4
\p_w_m|LessThan0~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \p_w_m|LessThan0~5_cout\ = CARRY((\p_w_m|cnt\(2) & (\SPI_MODULE|byte_data_received\(10) & !\p_w_m|LessThan0~3_cout\)) # (!\p_w_m|cnt\(2) & ((\SPI_MODULE|byte_data_received\(10)) # (!\p_w_m|LessThan0~3_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \p_w_m|cnt\(2),
	datab => \SPI_MODULE|byte_data_received\(10),
	datad => VCC,
	cin => \p_w_m|LessThan0~3_cout\,
	cout => \p_w_m|LessThan0~5_cout\);

-- Location: LCCOMB_X12_Y9_N6
\p_w_m|LessThan0~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \p_w_m|LessThan0~7_cout\ = CARRY((\SPI_MODULE|byte_data_received\(11) & (\p_w_m|cnt\(3) & !\p_w_m|LessThan0~5_cout\)) # (!\SPI_MODULE|byte_data_received\(11) & ((\p_w_m|cnt\(3)) # (!\p_w_m|LessThan0~5_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \SPI_MODULE|byte_data_received\(11),
	datab => \p_w_m|cnt\(3),
	datad => VCC,
	cin => \p_w_m|LessThan0~5_cout\,
	cout => \p_w_m|LessThan0~7_cout\);

-- Location: LCCOMB_X12_Y9_N8
\p_w_m|LessThan0~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \p_w_m|LessThan0~9_cout\ = CARRY((\p_w_m|cnt\(4) & (\SPI_MODULE|byte_data_received\(12) & !\p_w_m|LessThan0~7_cout\)) # (!\p_w_m|cnt\(4) & ((\SPI_MODULE|byte_data_received\(12)) # (!\p_w_m|LessThan0~7_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \p_w_m|cnt\(4),
	datab => \SPI_MODULE|byte_data_received\(12),
	datad => VCC,
	cin => \p_w_m|LessThan0~7_cout\,
	cout => \p_w_m|LessThan0~9_cout\);

-- Location: LCCOMB_X12_Y9_N10
\p_w_m|LessThan0~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \p_w_m|LessThan0~11_cout\ = CARRY((\SPI_MODULE|byte_data_received\(13) & (\p_w_m|cnt\(5) & !\p_w_m|LessThan0~9_cout\)) # (!\SPI_MODULE|byte_data_received\(13) & ((\p_w_m|cnt\(5)) # (!\p_w_m|LessThan0~9_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \SPI_MODULE|byte_data_received\(13),
	datab => \p_w_m|cnt\(5),
	datad => VCC,
	cin => \p_w_m|LessThan0~9_cout\,
	cout => \p_w_m|LessThan0~11_cout\);

-- Location: LCCOMB_X12_Y9_N12
\p_w_m|LessThan0~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \p_w_m|LessThan0~13_cout\ = CARRY((\p_w_m|cnt\(6) & (\SPI_MODULE|byte_data_received\(14) & !\p_w_m|LessThan0~11_cout\)) # (!\p_w_m|cnt\(6) & ((\SPI_MODULE|byte_data_received\(14)) # (!\p_w_m|LessThan0~11_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \p_w_m|cnt\(6),
	datab => \SPI_MODULE|byte_data_received\(14),
	datad => VCC,
	cin => \p_w_m|LessThan0~11_cout\,
	cout => \p_w_m|LessThan0~13_cout\);

-- Location: LCCOMB_X12_Y9_N14
\p_w_m|LessThan0~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \p_w_m|LessThan0~14_combout\ = (\SPI_MODULE|byte_data_received\(15) & ((\p_w_m|LessThan0~13_cout\) # (!\p_w_m|cnt\(7)))) # (!\SPI_MODULE|byte_data_received\(15) & (\p_w_m|LessThan0~13_cout\ & !\p_w_m|cnt\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011111100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \SPI_MODULE|byte_data_received\(15),
	datad => \p_w_m|cnt\(7),
	cin => \p_w_m|LessThan0~13_cout\,
	combout => \p_w_m|LessThan0~14_combout\);

-- Location: FF_X13_Y9_N1
\SPI_MODULE|byte_data_received[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \FGD|clk1M~clkctrl_outclk\,
	asdata => \SPI_MODULE|byte_data_received\(15),
	sload => VCC,
	ena => \SPI_MODULE|byte_data_received[15]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \SPI_MODULE|byte_data_received\(16));

-- Location: FF_X13_Y9_N3
\SPI_MODULE|byte_data_received[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \FGD|clk1M~clkctrl_outclk\,
	asdata => \SPI_MODULE|byte_data_received\(16),
	sload => VCC,
	ena => \SPI_MODULE|byte_data_received[15]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \SPI_MODULE|byte_data_received\(17));

-- Location: FF_X13_Y9_N5
\SPI_MODULE|byte_data_received[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \FGD|clk1M~clkctrl_outclk\,
	asdata => \SPI_MODULE|byte_data_received\(17),
	sload => VCC,
	ena => \SPI_MODULE|byte_data_received[15]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \SPI_MODULE|byte_data_received\(18));

-- Location: FF_X13_Y9_N7
\SPI_MODULE|byte_data_received[19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \FGD|clk1M~clkctrl_outclk\,
	asdata => \SPI_MODULE|byte_data_received\(18),
	sload => VCC,
	ena => \SPI_MODULE|byte_data_received[15]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \SPI_MODULE|byte_data_received\(19));

-- Location: FF_X13_Y9_N9
\SPI_MODULE|byte_data_received[20]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \FGD|clk1M~clkctrl_outclk\,
	asdata => \SPI_MODULE|byte_data_received\(19),
	sload => VCC,
	ena => \SPI_MODULE|byte_data_received[15]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \SPI_MODULE|byte_data_received\(20));

-- Location: FF_X13_Y9_N11
\SPI_MODULE|byte_data_received[21]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \FGD|clk1M~clkctrl_outclk\,
	asdata => \SPI_MODULE|byte_data_received\(20),
	sload => VCC,
	ena => \SPI_MODULE|byte_data_received[15]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \SPI_MODULE|byte_data_received\(21));

-- Location: FF_X13_Y9_N13
\SPI_MODULE|byte_data_received[22]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \FGD|clk1M~clkctrl_outclk\,
	asdata => \SPI_MODULE|byte_data_received\(21),
	sload => VCC,
	ena => \SPI_MODULE|byte_data_received[15]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \SPI_MODULE|byte_data_received\(22));

-- Location: FF_X13_Y9_N15
\SPI_MODULE|byte_data_received[23]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \FGD|clk1M~clkctrl_outclk\,
	asdata => \SPI_MODULE|byte_data_received\(22),
	sload => VCC,
	ena => \SPI_MODULE|byte_data_received[15]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \SPI_MODULE|byte_data_received\(23));

-- Location: LCCOMB_X12_Y9_N30
\p_w_m|cnt[0]~21\ : cycloneive_lcell_comb
-- Equation(s):
-- \p_w_m|cnt[0]~21_combout\ = !\p_w_m|cnt\(0)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \p_w_m|cnt\(0),
	combout => \p_w_m|cnt[0]~21_combout\);

-- Location: FF_X12_Y9_N31
\p_w_m|cnt[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \FGD|clk25M~clkctrl_outclk\,
	d => \p_w_m|cnt[0]~21_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \p_w_m|cnt\(0));

-- Location: LCCOMB_X13_Y9_N0
\p_w_m|LessThan1~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \p_w_m|LessThan1~1_cout\ = CARRY((\SPI_MODULE|byte_data_received\(16) & !\p_w_m|cnt\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000100010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \SPI_MODULE|byte_data_received\(16),
	datab => \p_w_m|cnt\(0),
	datad => VCC,
	cout => \p_w_m|LessThan1~1_cout\);

-- Location: LCCOMB_X13_Y9_N2
\p_w_m|LessThan1~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \p_w_m|LessThan1~3_cout\ = CARRY((\p_w_m|cnt\(1) & ((!\p_w_m|LessThan1~1_cout\) # (!\SPI_MODULE|byte_data_received\(17)))) # (!\p_w_m|cnt\(1) & (!\SPI_MODULE|byte_data_received\(17) & !\p_w_m|LessThan1~1_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \p_w_m|cnt\(1),
	datab => \SPI_MODULE|byte_data_received\(17),
	datad => VCC,
	cin => \p_w_m|LessThan1~1_cout\,
	cout => \p_w_m|LessThan1~3_cout\);

-- Location: LCCOMB_X13_Y9_N4
\p_w_m|LessThan1~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \p_w_m|LessThan1~5_cout\ = CARRY((\p_w_m|cnt\(2) & (\SPI_MODULE|byte_data_received\(18) & !\p_w_m|LessThan1~3_cout\)) # (!\p_w_m|cnt\(2) & ((\SPI_MODULE|byte_data_received\(18)) # (!\p_w_m|LessThan1~3_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \p_w_m|cnt\(2),
	datab => \SPI_MODULE|byte_data_received\(18),
	datad => VCC,
	cin => \p_w_m|LessThan1~3_cout\,
	cout => \p_w_m|LessThan1~5_cout\);

-- Location: LCCOMB_X13_Y9_N6
\p_w_m|LessThan1~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \p_w_m|LessThan1~7_cout\ = CARRY((\SPI_MODULE|byte_data_received\(19) & (\p_w_m|cnt\(3) & !\p_w_m|LessThan1~5_cout\)) # (!\SPI_MODULE|byte_data_received\(19) & ((\p_w_m|cnt\(3)) # (!\p_w_m|LessThan1~5_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \SPI_MODULE|byte_data_received\(19),
	datab => \p_w_m|cnt\(3),
	datad => VCC,
	cin => \p_w_m|LessThan1~5_cout\,
	cout => \p_w_m|LessThan1~7_cout\);

-- Location: LCCOMB_X13_Y9_N8
\p_w_m|LessThan1~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \p_w_m|LessThan1~9_cout\ = CARRY((\p_w_m|cnt\(4) & (\SPI_MODULE|byte_data_received\(20) & !\p_w_m|LessThan1~7_cout\)) # (!\p_w_m|cnt\(4) & ((\SPI_MODULE|byte_data_received\(20)) # (!\p_w_m|LessThan1~7_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \p_w_m|cnt\(4),
	datab => \SPI_MODULE|byte_data_received\(20),
	datad => VCC,
	cin => \p_w_m|LessThan1~7_cout\,
	cout => \p_w_m|LessThan1~9_cout\);

-- Location: LCCOMB_X13_Y9_N10
\p_w_m|LessThan1~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \p_w_m|LessThan1~11_cout\ = CARRY((\SPI_MODULE|byte_data_received\(21) & (\p_w_m|cnt\(5) & !\p_w_m|LessThan1~9_cout\)) # (!\SPI_MODULE|byte_data_received\(21) & ((\p_w_m|cnt\(5)) # (!\p_w_m|LessThan1~9_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \SPI_MODULE|byte_data_received\(21),
	datab => \p_w_m|cnt\(5),
	datad => VCC,
	cin => \p_w_m|LessThan1~9_cout\,
	cout => \p_w_m|LessThan1~11_cout\);

-- Location: LCCOMB_X13_Y9_N12
\p_w_m|LessThan1~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \p_w_m|LessThan1~13_cout\ = CARRY((\p_w_m|cnt\(6) & (\SPI_MODULE|byte_data_received\(22) & !\p_w_m|LessThan1~11_cout\)) # (!\p_w_m|cnt\(6) & ((\SPI_MODULE|byte_data_received\(22)) # (!\p_w_m|LessThan1~11_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \p_w_m|cnt\(6),
	datab => \SPI_MODULE|byte_data_received\(22),
	datad => VCC,
	cin => \p_w_m|LessThan1~11_cout\,
	cout => \p_w_m|LessThan1~13_cout\);

-- Location: LCCOMB_X13_Y9_N14
\p_w_m|LessThan1~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \p_w_m|LessThan1~14_combout\ = (\SPI_MODULE|byte_data_received\(23) & ((\p_w_m|LessThan1~13_cout\) # (!\p_w_m|cnt\(7)))) # (!\SPI_MODULE|byte_data_received\(23) & (\p_w_m|LessThan1~13_cout\ & !\p_w_m|cnt\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011111100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \SPI_MODULE|byte_data_received\(23),
	datad => \p_w_m|cnt\(7),
	cin => \p_w_m|LessThan1~13_cout\,
	combout => \p_w_m|LessThan1~14_combout\);

-- Location: FF_X13_Y9_N17
\SPI_MODULE|byte_data_received[24]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \FGD|clk1M~clkctrl_outclk\,
	asdata => \SPI_MODULE|byte_data_received\(23),
	sload => VCC,
	ena => \SPI_MODULE|byte_data_received[15]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \SPI_MODULE|byte_data_received\(24));

-- Location: FF_X13_Y9_N19
\SPI_MODULE|byte_data_received[25]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \FGD|clk1M~clkctrl_outclk\,
	asdata => \SPI_MODULE|byte_data_received\(24),
	sload => VCC,
	ena => \SPI_MODULE|byte_data_received[15]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \SPI_MODULE|byte_data_received\(25));

-- Location: FF_X13_Y9_N21
\SPI_MODULE|byte_data_received[26]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \FGD|clk1M~clkctrl_outclk\,
	asdata => \SPI_MODULE|byte_data_received\(25),
	sload => VCC,
	ena => \SPI_MODULE|byte_data_received[15]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \SPI_MODULE|byte_data_received\(26));

-- Location: FF_X13_Y9_N23
\SPI_MODULE|byte_data_received[27]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \FGD|clk1M~clkctrl_outclk\,
	asdata => \SPI_MODULE|byte_data_received\(26),
	sload => VCC,
	ena => \SPI_MODULE|byte_data_received[15]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \SPI_MODULE|byte_data_received\(27));

-- Location: FF_X13_Y9_N25
\SPI_MODULE|byte_data_received[28]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \FGD|clk1M~clkctrl_outclk\,
	asdata => \SPI_MODULE|byte_data_received\(27),
	sload => VCC,
	ena => \SPI_MODULE|byte_data_received[15]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \SPI_MODULE|byte_data_received\(28));

-- Location: FF_X13_Y9_N27
\SPI_MODULE|byte_data_received[29]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \FGD|clk1M~clkctrl_outclk\,
	asdata => \SPI_MODULE|byte_data_received\(28),
	sload => VCC,
	ena => \SPI_MODULE|byte_data_received[15]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \SPI_MODULE|byte_data_received\(29));

-- Location: FF_X13_Y9_N29
\SPI_MODULE|byte_data_received[30]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \FGD|clk1M~clkctrl_outclk\,
	asdata => \SPI_MODULE|byte_data_received\(29),
	sload => VCC,
	ena => \SPI_MODULE|byte_data_received[15]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \SPI_MODULE|byte_data_received\(30));

-- Location: FF_X13_Y9_N31
\SPI_MODULE|byte_data_received[31]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \FGD|clk1M~clkctrl_outclk\,
	asdata => \SPI_MODULE|byte_data_received\(30),
	sload => VCC,
	ena => \SPI_MODULE|byte_data_received[15]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \SPI_MODULE|byte_data_received\(31));

-- Location: FF_X12_Y9_N23
\p_w_m|cnt[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \FGD|clk25M~clkctrl_outclk\,
	d => \p_w_m|cnt[4]~13_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \p_w_m|cnt\(4));

-- Location: LCCOMB_X13_Y9_N16
\p_w_m|LessThan2~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \p_w_m|LessThan2~1_cout\ = CARRY((\SPI_MODULE|byte_data_received\(24) & !\p_w_m|cnt\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000100010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \SPI_MODULE|byte_data_received\(24),
	datab => \p_w_m|cnt\(0),
	datad => VCC,
	cout => \p_w_m|LessThan2~1_cout\);

-- Location: LCCOMB_X13_Y9_N18
\p_w_m|LessThan2~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \p_w_m|LessThan2~3_cout\ = CARRY((\p_w_m|cnt\(1) & ((!\p_w_m|LessThan2~1_cout\) # (!\SPI_MODULE|byte_data_received\(25)))) # (!\p_w_m|cnt\(1) & (!\SPI_MODULE|byte_data_received\(25) & !\p_w_m|LessThan2~1_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \p_w_m|cnt\(1),
	datab => \SPI_MODULE|byte_data_received\(25),
	datad => VCC,
	cin => \p_w_m|LessThan2~1_cout\,
	cout => \p_w_m|LessThan2~3_cout\);

-- Location: LCCOMB_X13_Y9_N20
\p_w_m|LessThan2~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \p_w_m|LessThan2~5_cout\ = CARRY((\SPI_MODULE|byte_data_received\(26) & ((!\p_w_m|LessThan2~3_cout\) # (!\p_w_m|cnt\(2)))) # (!\SPI_MODULE|byte_data_received\(26) & (!\p_w_m|cnt\(2) & !\p_w_m|LessThan2~3_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \SPI_MODULE|byte_data_received\(26),
	datab => \p_w_m|cnt\(2),
	datad => VCC,
	cin => \p_w_m|LessThan2~3_cout\,
	cout => \p_w_m|LessThan2~5_cout\);

-- Location: LCCOMB_X13_Y9_N22
\p_w_m|LessThan2~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \p_w_m|LessThan2~7_cout\ = CARRY((\SPI_MODULE|byte_data_received\(27) & (\p_w_m|cnt\(3) & !\p_w_m|LessThan2~5_cout\)) # (!\SPI_MODULE|byte_data_received\(27) & ((\p_w_m|cnt\(3)) # (!\p_w_m|LessThan2~5_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \SPI_MODULE|byte_data_received\(27),
	datab => \p_w_m|cnt\(3),
	datad => VCC,
	cin => \p_w_m|LessThan2~5_cout\,
	cout => \p_w_m|LessThan2~7_cout\);

-- Location: LCCOMB_X13_Y9_N24
\p_w_m|LessThan2~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \p_w_m|LessThan2~9_cout\ = CARRY((\SPI_MODULE|byte_data_received\(28) & ((!\p_w_m|LessThan2~7_cout\) # (!\p_w_m|cnt\(4)))) # (!\SPI_MODULE|byte_data_received\(28) & (!\p_w_m|cnt\(4) & !\p_w_m|LessThan2~7_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \SPI_MODULE|byte_data_received\(28),
	datab => \p_w_m|cnt\(4),
	datad => VCC,
	cin => \p_w_m|LessThan2~7_cout\,
	cout => \p_w_m|LessThan2~9_cout\);

-- Location: LCCOMB_X13_Y9_N26
\p_w_m|LessThan2~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \p_w_m|LessThan2~11_cout\ = CARRY((\SPI_MODULE|byte_data_received\(29) & (\p_w_m|cnt\(5) & !\p_w_m|LessThan2~9_cout\)) # (!\SPI_MODULE|byte_data_received\(29) & ((\p_w_m|cnt\(5)) # (!\p_w_m|LessThan2~9_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \SPI_MODULE|byte_data_received\(29),
	datab => \p_w_m|cnt\(5),
	datad => VCC,
	cin => \p_w_m|LessThan2~9_cout\,
	cout => \p_w_m|LessThan2~11_cout\);

-- Location: LCCOMB_X13_Y9_N28
\p_w_m|LessThan2~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \p_w_m|LessThan2~13_cout\ = CARRY((\p_w_m|cnt\(6) & (\SPI_MODULE|byte_data_received\(30) & !\p_w_m|LessThan2~11_cout\)) # (!\p_w_m|cnt\(6) & ((\SPI_MODULE|byte_data_received\(30)) # (!\p_w_m|LessThan2~11_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \p_w_m|cnt\(6),
	datab => \SPI_MODULE|byte_data_received\(30),
	datad => VCC,
	cin => \p_w_m|LessThan2~11_cout\,
	cout => \p_w_m|LessThan2~13_cout\);

-- Location: LCCOMB_X13_Y9_N30
\p_w_m|LessThan2~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \p_w_m|LessThan2~14_combout\ = (\SPI_MODULE|byte_data_received\(31) & ((\p_w_m|LessThan2~13_cout\) # (!\p_w_m|cnt\(7)))) # (!\SPI_MODULE|byte_data_received\(31) & (!\p_w_m|cnt\(7) & \p_w_m|LessThan2~13_cout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011001010110010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \SPI_MODULE|byte_data_received\(31),
	datab => \p_w_m|cnt\(7),
	cin => \p_w_m|LessThan2~13_cout\,
	combout => \p_w_m|LessThan2~14_combout\);

-- Location: FF_X12_Y10_N1
\SPI_MODULE|byte_data_received[32]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \FGD|clk1M~clkctrl_outclk\,
	asdata => \SPI_MODULE|byte_data_received\(31),
	sload => VCC,
	ena => \SPI_MODULE|byte_data_received[15]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \SPI_MODULE|byte_data_received\(32));

-- Location: FF_X12_Y10_N3
\SPI_MODULE|byte_data_received[33]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \FGD|clk1M~clkctrl_outclk\,
	asdata => \SPI_MODULE|byte_data_received\(32),
	sload => VCC,
	ena => \SPI_MODULE|byte_data_received[15]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \SPI_MODULE|byte_data_received\(33));

-- Location: FF_X12_Y10_N5
\SPI_MODULE|byte_data_received[34]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \FGD|clk1M~clkctrl_outclk\,
	asdata => \SPI_MODULE|byte_data_received\(33),
	sload => VCC,
	ena => \SPI_MODULE|byte_data_received[15]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \SPI_MODULE|byte_data_received\(34));

-- Location: FF_X12_Y10_N7
\SPI_MODULE|byte_data_received[35]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \FGD|clk1M~clkctrl_outclk\,
	asdata => \SPI_MODULE|byte_data_received\(34),
	sload => VCC,
	ena => \SPI_MODULE|byte_data_received[15]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \SPI_MODULE|byte_data_received\(35));

-- Location: FF_X12_Y10_N9
\SPI_MODULE|byte_data_received[36]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \FGD|clk1M~clkctrl_outclk\,
	asdata => \SPI_MODULE|byte_data_received\(35),
	sload => VCC,
	ena => \SPI_MODULE|byte_data_received[15]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \SPI_MODULE|byte_data_received\(36));

-- Location: FF_X12_Y10_N11
\SPI_MODULE|byte_data_received[37]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \FGD|clk1M~clkctrl_outclk\,
	asdata => \SPI_MODULE|byte_data_received\(36),
	sload => VCC,
	ena => \SPI_MODULE|byte_data_received[15]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \SPI_MODULE|byte_data_received\(37));

-- Location: FF_X12_Y10_N13
\SPI_MODULE|byte_data_received[38]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \FGD|clk1M~clkctrl_outclk\,
	asdata => \SPI_MODULE|byte_data_received\(37),
	sload => VCC,
	ena => \SPI_MODULE|byte_data_received[15]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \SPI_MODULE|byte_data_received\(38));

-- Location: FF_X12_Y10_N15
\SPI_MODULE|byte_data_received[39]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \FGD|clk1M~clkctrl_outclk\,
	asdata => \SPI_MODULE|byte_data_received\(38),
	sload => VCC,
	ena => \SPI_MODULE|byte_data_received[15]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \SPI_MODULE|byte_data_received\(39));

-- Location: FF_X12_Y9_N27
\p_w_m|cnt[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \FGD|clk25M~clkctrl_outclk\,
	d => \p_w_m|cnt[6]~17_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \p_w_m|cnt\(6));

-- Location: LCCOMB_X12_Y10_N0
\p_w_m|LessThan3~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \p_w_m|LessThan3~1_cout\ = CARRY((!\p_w_m|cnt\(0) & \SPI_MODULE|byte_data_received\(32)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001000100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \p_w_m|cnt\(0),
	datab => \SPI_MODULE|byte_data_received\(32),
	datad => VCC,
	cout => \p_w_m|LessThan3~1_cout\);

-- Location: LCCOMB_X12_Y10_N2
\p_w_m|LessThan3~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \p_w_m|LessThan3~3_cout\ = CARRY((\SPI_MODULE|byte_data_received\(33) & (\p_w_m|cnt\(1) & !\p_w_m|LessThan3~1_cout\)) # (!\SPI_MODULE|byte_data_received\(33) & ((\p_w_m|cnt\(1)) # (!\p_w_m|LessThan3~1_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \SPI_MODULE|byte_data_received\(33),
	datab => \p_w_m|cnt\(1),
	datad => VCC,
	cin => \p_w_m|LessThan3~1_cout\,
	cout => \p_w_m|LessThan3~3_cout\);

-- Location: LCCOMB_X12_Y10_N4
\p_w_m|LessThan3~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \p_w_m|LessThan3~5_cout\ = CARRY((\p_w_m|cnt\(2) & (\SPI_MODULE|byte_data_received\(34) & !\p_w_m|LessThan3~3_cout\)) # (!\p_w_m|cnt\(2) & ((\SPI_MODULE|byte_data_received\(34)) # (!\p_w_m|LessThan3~3_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \p_w_m|cnt\(2),
	datab => \SPI_MODULE|byte_data_received\(34),
	datad => VCC,
	cin => \p_w_m|LessThan3~3_cout\,
	cout => \p_w_m|LessThan3~5_cout\);

-- Location: LCCOMB_X12_Y10_N6
\p_w_m|LessThan3~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \p_w_m|LessThan3~7_cout\ = CARRY((\SPI_MODULE|byte_data_received\(35) & (\p_w_m|cnt\(3) & !\p_w_m|LessThan3~5_cout\)) # (!\SPI_MODULE|byte_data_received\(35) & ((\p_w_m|cnt\(3)) # (!\p_w_m|LessThan3~5_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \SPI_MODULE|byte_data_received\(35),
	datab => \p_w_m|cnt\(3),
	datad => VCC,
	cin => \p_w_m|LessThan3~5_cout\,
	cout => \p_w_m|LessThan3~7_cout\);

-- Location: LCCOMB_X12_Y10_N8
\p_w_m|LessThan3~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \p_w_m|LessThan3~9_cout\ = CARRY((\p_w_m|cnt\(4) & (\SPI_MODULE|byte_data_received\(36) & !\p_w_m|LessThan3~7_cout\)) # (!\p_w_m|cnt\(4) & ((\SPI_MODULE|byte_data_received\(36)) # (!\p_w_m|LessThan3~7_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \p_w_m|cnt\(4),
	datab => \SPI_MODULE|byte_data_received\(36),
	datad => VCC,
	cin => \p_w_m|LessThan3~7_cout\,
	cout => \p_w_m|LessThan3~9_cout\);

-- Location: LCCOMB_X12_Y10_N10
\p_w_m|LessThan3~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \p_w_m|LessThan3~11_cout\ = CARRY((\p_w_m|cnt\(5) & ((!\p_w_m|LessThan3~9_cout\) # (!\SPI_MODULE|byte_data_received\(37)))) # (!\p_w_m|cnt\(5) & (!\SPI_MODULE|byte_data_received\(37) & !\p_w_m|LessThan3~9_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \p_w_m|cnt\(5),
	datab => \SPI_MODULE|byte_data_received\(37),
	datad => VCC,
	cin => \p_w_m|LessThan3~9_cout\,
	cout => \p_w_m|LessThan3~11_cout\);

-- Location: LCCOMB_X12_Y10_N12
\p_w_m|LessThan3~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \p_w_m|LessThan3~13_cout\ = CARRY((\SPI_MODULE|byte_data_received\(38) & ((!\p_w_m|LessThan3~11_cout\) # (!\p_w_m|cnt\(6)))) # (!\SPI_MODULE|byte_data_received\(38) & (!\p_w_m|cnt\(6) & !\p_w_m|LessThan3~11_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \SPI_MODULE|byte_data_received\(38),
	datab => \p_w_m|cnt\(6),
	datad => VCC,
	cin => \p_w_m|LessThan3~11_cout\,
	cout => \p_w_m|LessThan3~13_cout\);

-- Location: LCCOMB_X12_Y10_N14
\p_w_m|LessThan3~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \p_w_m|LessThan3~14_combout\ = (\p_w_m|cnt\(7) & (\SPI_MODULE|byte_data_received\(39) & \p_w_m|LessThan3~13_cout\)) # (!\p_w_m|cnt\(7) & ((\SPI_MODULE|byte_data_received\(39)) # (\p_w_m|LessThan3~13_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101010011010100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \p_w_m|cnt\(7),
	datab => \SPI_MODULE|byte_data_received\(39),
	cin => \p_w_m|LessThan3~13_cout\,
	combout => \p_w_m|LessThan3~14_combout\);

-- Location: FF_X12_Y10_N17
\SPI_MODULE|byte_data_received[40]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \FGD|clk1M~clkctrl_outclk\,
	asdata => \SPI_MODULE|byte_data_received\(39),
	sload => VCC,
	ena => \SPI_MODULE|byte_data_received[15]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \SPI_MODULE|byte_data_received\(40));

-- Location: FF_X12_Y10_N19
\SPI_MODULE|byte_data_received[41]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \FGD|clk1M~clkctrl_outclk\,
	asdata => \SPI_MODULE|byte_data_received\(40),
	sload => VCC,
	ena => \SPI_MODULE|byte_data_received[15]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \SPI_MODULE|byte_data_received\(41));

-- Location: FF_X12_Y10_N21
\SPI_MODULE|byte_data_received[42]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \FGD|clk1M~clkctrl_outclk\,
	asdata => \SPI_MODULE|byte_data_received\(41),
	sload => VCC,
	ena => \SPI_MODULE|byte_data_received[15]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \SPI_MODULE|byte_data_received\(42));

-- Location: FF_X12_Y10_N23
\SPI_MODULE|byte_data_received[43]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \FGD|clk1M~clkctrl_outclk\,
	asdata => \SPI_MODULE|byte_data_received\(42),
	sload => VCC,
	ena => \SPI_MODULE|byte_data_received[15]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \SPI_MODULE|byte_data_received\(43));

-- Location: FF_X12_Y10_N25
\SPI_MODULE|byte_data_received[44]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \FGD|clk1M~clkctrl_outclk\,
	asdata => \SPI_MODULE|byte_data_received\(43),
	sload => VCC,
	ena => \SPI_MODULE|byte_data_received[15]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \SPI_MODULE|byte_data_received\(44));

-- Location: FF_X12_Y10_N27
\SPI_MODULE|byte_data_received[45]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \FGD|clk1M~clkctrl_outclk\,
	asdata => \SPI_MODULE|byte_data_received\(44),
	sload => VCC,
	ena => \SPI_MODULE|byte_data_received[15]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \SPI_MODULE|byte_data_received\(45));

-- Location: FF_X12_Y10_N29
\SPI_MODULE|byte_data_received[46]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \FGD|clk1M~clkctrl_outclk\,
	asdata => \SPI_MODULE|byte_data_received\(45),
	sload => VCC,
	ena => \SPI_MODULE|byte_data_received[15]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \SPI_MODULE|byte_data_received\(46));

-- Location: FF_X12_Y10_N31
\SPI_MODULE|byte_data_received[47]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \FGD|clk1M~clkctrl_outclk\,
	asdata => \SPI_MODULE|byte_data_received\(46),
	sload => VCC,
	ena => \SPI_MODULE|byte_data_received[15]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \SPI_MODULE|byte_data_received\(47));

-- Location: LCCOMB_X12_Y10_N16
\p_w_m|LessThan4~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \p_w_m|LessThan4~1_cout\ = CARRY((!\p_w_m|cnt\(0) & \SPI_MODULE|byte_data_received\(40)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001000100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \p_w_m|cnt\(0),
	datab => \SPI_MODULE|byte_data_received\(40),
	datad => VCC,
	cout => \p_w_m|LessThan4~1_cout\);

-- Location: LCCOMB_X12_Y10_N18
\p_w_m|LessThan4~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \p_w_m|LessThan4~3_cout\ = CARRY((\SPI_MODULE|byte_data_received\(41) & (\p_w_m|cnt\(1) & !\p_w_m|LessThan4~1_cout\)) # (!\SPI_MODULE|byte_data_received\(41) & ((\p_w_m|cnt\(1)) # (!\p_w_m|LessThan4~1_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \SPI_MODULE|byte_data_received\(41),
	datab => \p_w_m|cnt\(1),
	datad => VCC,
	cin => \p_w_m|LessThan4~1_cout\,
	cout => \p_w_m|LessThan4~3_cout\);

-- Location: LCCOMB_X12_Y10_N20
\p_w_m|LessThan4~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \p_w_m|LessThan4~5_cout\ = CARRY((\p_w_m|cnt\(2) & (\SPI_MODULE|byte_data_received\(42) & !\p_w_m|LessThan4~3_cout\)) # (!\p_w_m|cnt\(2) & ((\SPI_MODULE|byte_data_received\(42)) # (!\p_w_m|LessThan4~3_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \p_w_m|cnt\(2),
	datab => \SPI_MODULE|byte_data_received\(42),
	datad => VCC,
	cin => \p_w_m|LessThan4~3_cout\,
	cout => \p_w_m|LessThan4~5_cout\);

-- Location: LCCOMB_X12_Y10_N22
\p_w_m|LessThan4~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \p_w_m|LessThan4~7_cout\ = CARRY((\SPI_MODULE|byte_data_received\(43) & (\p_w_m|cnt\(3) & !\p_w_m|LessThan4~5_cout\)) # (!\SPI_MODULE|byte_data_received\(43) & ((\p_w_m|cnt\(3)) # (!\p_w_m|LessThan4~5_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \SPI_MODULE|byte_data_received\(43),
	datab => \p_w_m|cnt\(3),
	datad => VCC,
	cin => \p_w_m|LessThan4~5_cout\,
	cout => \p_w_m|LessThan4~7_cout\);

-- Location: LCCOMB_X12_Y10_N24
\p_w_m|LessThan4~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \p_w_m|LessThan4~9_cout\ = CARRY((\p_w_m|cnt\(4) & (\SPI_MODULE|byte_data_received\(44) & !\p_w_m|LessThan4~7_cout\)) # (!\p_w_m|cnt\(4) & ((\SPI_MODULE|byte_data_received\(44)) # (!\p_w_m|LessThan4~7_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \p_w_m|cnt\(4),
	datab => \SPI_MODULE|byte_data_received\(44),
	datad => VCC,
	cin => \p_w_m|LessThan4~7_cout\,
	cout => \p_w_m|LessThan4~9_cout\);

-- Location: LCCOMB_X12_Y10_N26
\p_w_m|LessThan4~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \p_w_m|LessThan4~11_cout\ = CARRY((\SPI_MODULE|byte_data_received\(45) & (\p_w_m|cnt\(5) & !\p_w_m|LessThan4~9_cout\)) # (!\SPI_MODULE|byte_data_received\(45) & ((\p_w_m|cnt\(5)) # (!\p_w_m|LessThan4~9_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \SPI_MODULE|byte_data_received\(45),
	datab => \p_w_m|cnt\(5),
	datad => VCC,
	cin => \p_w_m|LessThan4~9_cout\,
	cout => \p_w_m|LessThan4~11_cout\);

-- Location: LCCOMB_X12_Y10_N28
\p_w_m|LessThan4~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \p_w_m|LessThan4~13_cout\ = CARRY((\SPI_MODULE|byte_data_received\(46) & ((!\p_w_m|LessThan4~11_cout\) # (!\p_w_m|cnt\(6)))) # (!\SPI_MODULE|byte_data_received\(46) & (!\p_w_m|cnt\(6) & !\p_w_m|LessThan4~11_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \SPI_MODULE|byte_data_received\(46),
	datab => \p_w_m|cnt\(6),
	datad => VCC,
	cin => \p_w_m|LessThan4~11_cout\,
	cout => \p_w_m|LessThan4~13_cout\);

-- Location: LCCOMB_X12_Y10_N30
\p_w_m|LessThan4~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \p_w_m|LessThan4~14_combout\ = (\SPI_MODULE|byte_data_received\(47) & ((\p_w_m|LessThan4~13_cout\) # (!\p_w_m|cnt\(7)))) # (!\SPI_MODULE|byte_data_received\(47) & (\p_w_m|LessThan4~13_cout\ & !\p_w_m|cnt\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000011111010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \SPI_MODULE|byte_data_received\(47),
	datad => \p_w_m|cnt\(7),
	cin => \p_w_m|LessThan4~13_cout\,
	combout => \p_w_m|LessThan4~14_combout\);

-- Location: FF_X13_Y8_N17
\SPI_MODULE|byte_data_received[48]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \FGD|clk1M~clkctrl_outclk\,
	asdata => \SPI_MODULE|byte_data_received\(47),
	sload => VCC,
	ena => \SPI_MODULE|byte_data_received[15]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \SPI_MODULE|byte_data_received\(48));

-- Location: FF_X13_Y8_N19
\SPI_MODULE|byte_data_received[49]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \FGD|clk1M~clkctrl_outclk\,
	asdata => \SPI_MODULE|byte_data_received\(48),
	sload => VCC,
	ena => \SPI_MODULE|byte_data_received[15]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \SPI_MODULE|byte_data_received\(49));

-- Location: FF_X13_Y8_N21
\SPI_MODULE|byte_data_received[50]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \FGD|clk1M~clkctrl_outclk\,
	asdata => \SPI_MODULE|byte_data_received\(49),
	sload => VCC,
	ena => \SPI_MODULE|byte_data_received[15]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \SPI_MODULE|byte_data_received\(50));

-- Location: FF_X13_Y8_N23
\SPI_MODULE|byte_data_received[51]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \FGD|clk1M~clkctrl_outclk\,
	asdata => \SPI_MODULE|byte_data_received\(50),
	sload => VCC,
	ena => \SPI_MODULE|byte_data_received[15]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \SPI_MODULE|byte_data_received\(51));

-- Location: FF_X13_Y8_N25
\SPI_MODULE|byte_data_received[52]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \FGD|clk1M~clkctrl_outclk\,
	asdata => \SPI_MODULE|byte_data_received\(51),
	sload => VCC,
	ena => \SPI_MODULE|byte_data_received[15]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \SPI_MODULE|byte_data_received\(52));

-- Location: FF_X13_Y8_N27
\SPI_MODULE|byte_data_received[53]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \FGD|clk1M~clkctrl_outclk\,
	asdata => \SPI_MODULE|byte_data_received\(52),
	sload => VCC,
	ena => \SPI_MODULE|byte_data_received[15]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \SPI_MODULE|byte_data_received\(53));

-- Location: FF_X13_Y8_N29
\SPI_MODULE|byte_data_received[54]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \FGD|clk1M~clkctrl_outclk\,
	asdata => \SPI_MODULE|byte_data_received\(53),
	sload => VCC,
	ena => \SPI_MODULE|byte_data_received[15]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \SPI_MODULE|byte_data_received\(54));

-- Location: FF_X13_Y8_N31
\SPI_MODULE|byte_data_received[55]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \FGD|clk1M~clkctrl_outclk\,
	asdata => \SPI_MODULE|byte_data_received\(54),
	sload => VCC,
	ena => \SPI_MODULE|byte_data_received[15]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \SPI_MODULE|byte_data_received\(55));

-- Location: LCCOMB_X13_Y8_N16
\p_w_m|LessThan5~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \p_w_m|LessThan5~1_cout\ = CARRY((\SPI_MODULE|byte_data_received\(48) & !\p_w_m|cnt\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000100010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \SPI_MODULE|byte_data_received\(48),
	datab => \p_w_m|cnt\(0),
	datad => VCC,
	cout => \p_w_m|LessThan5~1_cout\);

-- Location: LCCOMB_X13_Y8_N18
\p_w_m|LessThan5~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \p_w_m|LessThan5~3_cout\ = CARRY((\SPI_MODULE|byte_data_received\(49) & (\p_w_m|cnt\(1) & !\p_w_m|LessThan5~1_cout\)) # (!\SPI_MODULE|byte_data_received\(49) & ((\p_w_m|cnt\(1)) # (!\p_w_m|LessThan5~1_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \SPI_MODULE|byte_data_received\(49),
	datab => \p_w_m|cnt\(1),
	datad => VCC,
	cin => \p_w_m|LessThan5~1_cout\,
	cout => \p_w_m|LessThan5~3_cout\);

-- Location: LCCOMB_X13_Y8_N20
\p_w_m|LessThan5~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \p_w_m|LessThan5~5_cout\ = CARRY((\p_w_m|cnt\(2) & (\SPI_MODULE|byte_data_received\(50) & !\p_w_m|LessThan5~3_cout\)) # (!\p_w_m|cnt\(2) & ((\SPI_MODULE|byte_data_received\(50)) # (!\p_w_m|LessThan5~3_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \p_w_m|cnt\(2),
	datab => \SPI_MODULE|byte_data_received\(50),
	datad => VCC,
	cin => \p_w_m|LessThan5~3_cout\,
	cout => \p_w_m|LessThan5~5_cout\);

-- Location: LCCOMB_X13_Y8_N22
\p_w_m|LessThan5~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \p_w_m|LessThan5~7_cout\ = CARRY((\SPI_MODULE|byte_data_received\(51) & (\p_w_m|cnt\(3) & !\p_w_m|LessThan5~5_cout\)) # (!\SPI_MODULE|byte_data_received\(51) & ((\p_w_m|cnt\(3)) # (!\p_w_m|LessThan5~5_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \SPI_MODULE|byte_data_received\(51),
	datab => \p_w_m|cnt\(3),
	datad => VCC,
	cin => \p_w_m|LessThan5~5_cout\,
	cout => \p_w_m|LessThan5~7_cout\);

-- Location: LCCOMB_X13_Y8_N24
\p_w_m|LessThan5~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \p_w_m|LessThan5~9_cout\ = CARRY((\p_w_m|cnt\(4) & (\SPI_MODULE|byte_data_received\(52) & !\p_w_m|LessThan5~7_cout\)) # (!\p_w_m|cnt\(4) & ((\SPI_MODULE|byte_data_received\(52)) # (!\p_w_m|LessThan5~7_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \p_w_m|cnt\(4),
	datab => \SPI_MODULE|byte_data_received\(52),
	datad => VCC,
	cin => \p_w_m|LessThan5~7_cout\,
	cout => \p_w_m|LessThan5~9_cout\);

-- Location: LCCOMB_X13_Y8_N26
\p_w_m|LessThan5~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \p_w_m|LessThan5~11_cout\ = CARRY((\SPI_MODULE|byte_data_received\(53) & (\p_w_m|cnt\(5) & !\p_w_m|LessThan5~9_cout\)) # (!\SPI_MODULE|byte_data_received\(53) & ((\p_w_m|cnt\(5)) # (!\p_w_m|LessThan5~9_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \SPI_MODULE|byte_data_received\(53),
	datab => \p_w_m|cnt\(5),
	datad => VCC,
	cin => \p_w_m|LessThan5~9_cout\,
	cout => \p_w_m|LessThan5~11_cout\);

-- Location: LCCOMB_X13_Y8_N28
\p_w_m|LessThan5~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \p_w_m|LessThan5~13_cout\ = CARRY((\p_w_m|cnt\(6) & (\SPI_MODULE|byte_data_received\(54) & !\p_w_m|LessThan5~11_cout\)) # (!\p_w_m|cnt\(6) & ((\SPI_MODULE|byte_data_received\(54)) # (!\p_w_m|LessThan5~11_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \p_w_m|cnt\(6),
	datab => \SPI_MODULE|byte_data_received\(54),
	datad => VCC,
	cin => \p_w_m|LessThan5~11_cout\,
	cout => \p_w_m|LessThan5~13_cout\);

-- Location: LCCOMB_X13_Y8_N30
\p_w_m|LessThan5~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \p_w_m|LessThan5~14_combout\ = (\SPI_MODULE|byte_data_received\(55) & ((\p_w_m|LessThan5~13_cout\) # (!\p_w_m|cnt\(7)))) # (!\SPI_MODULE|byte_data_received\(55) & (\p_w_m|LessThan5~13_cout\ & !\p_w_m|cnt\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000011111010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \SPI_MODULE|byte_data_received\(55),
	datad => \p_w_m|cnt\(7),
	cin => \p_w_m|LessThan5~13_cout\,
	combout => \p_w_m|LessThan5~14_combout\);

-- Location: FF_X13_Y8_N1
\SPI_MODULE|byte_data_received[56]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \FGD|clk1M~clkctrl_outclk\,
	asdata => \SPI_MODULE|byte_data_received\(55),
	sload => VCC,
	ena => \SPI_MODULE|byte_data_received[15]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \SPI_MODULE|byte_data_received\(56));

-- Location: FF_X13_Y8_N3
\SPI_MODULE|byte_data_received[57]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \FGD|clk1M~clkctrl_outclk\,
	asdata => \SPI_MODULE|byte_data_received\(56),
	sload => VCC,
	ena => \SPI_MODULE|byte_data_received[15]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \SPI_MODULE|byte_data_received\(57));

-- Location: FF_X13_Y8_N5
\SPI_MODULE|byte_data_received[58]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \FGD|clk1M~clkctrl_outclk\,
	asdata => \SPI_MODULE|byte_data_received\(57),
	sload => VCC,
	ena => \SPI_MODULE|byte_data_received[15]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \SPI_MODULE|byte_data_received\(58));

-- Location: FF_X13_Y8_N7
\SPI_MODULE|byte_data_received[59]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \FGD|clk1M~clkctrl_outclk\,
	asdata => \SPI_MODULE|byte_data_received\(58),
	sload => VCC,
	ena => \SPI_MODULE|byte_data_received[15]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \SPI_MODULE|byte_data_received\(59));

-- Location: FF_X13_Y8_N9
\SPI_MODULE|byte_data_received[60]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \FGD|clk1M~clkctrl_outclk\,
	asdata => \SPI_MODULE|byte_data_received\(59),
	sload => VCC,
	ena => \SPI_MODULE|byte_data_received[15]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \SPI_MODULE|byte_data_received\(60));

-- Location: FF_X13_Y8_N11
\SPI_MODULE|byte_data_received[61]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \FGD|clk1M~clkctrl_outclk\,
	asdata => \SPI_MODULE|byte_data_received\(60),
	sload => VCC,
	ena => \SPI_MODULE|byte_data_received[15]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \SPI_MODULE|byte_data_received\(61));

-- Location: FF_X13_Y8_N13
\SPI_MODULE|byte_data_received[62]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \FGD|clk1M~clkctrl_outclk\,
	asdata => \SPI_MODULE|byte_data_received\(61),
	sload => VCC,
	ena => \SPI_MODULE|byte_data_received[15]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \SPI_MODULE|byte_data_received\(62));

-- Location: FF_X13_Y8_N15
\SPI_MODULE|byte_data_received[63]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \FGD|clk1M~clkctrl_outclk\,
	asdata => \SPI_MODULE|byte_data_received\(62),
	sload => VCC,
	ena => \SPI_MODULE|byte_data_received[15]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \SPI_MODULE|byte_data_received\(63));

-- Location: LCCOMB_X13_Y8_N0
\p_w_m|LessThan6~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \p_w_m|LessThan6~1_cout\ = CARRY((\SPI_MODULE|byte_data_received\(56) & !\p_w_m|cnt\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000100010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \SPI_MODULE|byte_data_received\(56),
	datab => \p_w_m|cnt\(0),
	datad => VCC,
	cout => \p_w_m|LessThan6~1_cout\);

-- Location: LCCOMB_X13_Y8_N2
\p_w_m|LessThan6~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \p_w_m|LessThan6~3_cout\ = CARRY((\p_w_m|cnt\(1) & ((!\p_w_m|LessThan6~1_cout\) # (!\SPI_MODULE|byte_data_received\(57)))) # (!\p_w_m|cnt\(1) & (!\SPI_MODULE|byte_data_received\(57) & !\p_w_m|LessThan6~1_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \p_w_m|cnt\(1),
	datab => \SPI_MODULE|byte_data_received\(57),
	datad => VCC,
	cin => \p_w_m|LessThan6~1_cout\,
	cout => \p_w_m|LessThan6~3_cout\);

-- Location: LCCOMB_X13_Y8_N4
\p_w_m|LessThan6~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \p_w_m|LessThan6~5_cout\ = CARRY((\p_w_m|cnt\(2) & (\SPI_MODULE|byte_data_received\(58) & !\p_w_m|LessThan6~3_cout\)) # (!\p_w_m|cnt\(2) & ((\SPI_MODULE|byte_data_received\(58)) # (!\p_w_m|LessThan6~3_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \p_w_m|cnt\(2),
	datab => \SPI_MODULE|byte_data_received\(58),
	datad => VCC,
	cin => \p_w_m|LessThan6~3_cout\,
	cout => \p_w_m|LessThan6~5_cout\);

-- Location: LCCOMB_X13_Y8_N6
\p_w_m|LessThan6~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \p_w_m|LessThan6~7_cout\ = CARRY((\SPI_MODULE|byte_data_received\(59) & (\p_w_m|cnt\(3) & !\p_w_m|LessThan6~5_cout\)) # (!\SPI_MODULE|byte_data_received\(59) & ((\p_w_m|cnt\(3)) # (!\p_w_m|LessThan6~5_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \SPI_MODULE|byte_data_received\(59),
	datab => \p_w_m|cnt\(3),
	datad => VCC,
	cin => \p_w_m|LessThan6~5_cout\,
	cout => \p_w_m|LessThan6~7_cout\);

-- Location: LCCOMB_X13_Y8_N8
\p_w_m|LessThan6~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \p_w_m|LessThan6~9_cout\ = CARRY((\p_w_m|cnt\(4) & (\SPI_MODULE|byte_data_received\(60) & !\p_w_m|LessThan6~7_cout\)) # (!\p_w_m|cnt\(4) & ((\SPI_MODULE|byte_data_received\(60)) # (!\p_w_m|LessThan6~7_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \p_w_m|cnt\(4),
	datab => \SPI_MODULE|byte_data_received\(60),
	datad => VCC,
	cin => \p_w_m|LessThan6~7_cout\,
	cout => \p_w_m|LessThan6~9_cout\);

-- Location: LCCOMB_X13_Y8_N10
\p_w_m|LessThan6~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \p_w_m|LessThan6~11_cout\ = CARRY((\SPI_MODULE|byte_data_received\(61) & (\p_w_m|cnt\(5) & !\p_w_m|LessThan6~9_cout\)) # (!\SPI_MODULE|byte_data_received\(61) & ((\p_w_m|cnt\(5)) # (!\p_w_m|LessThan6~9_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \SPI_MODULE|byte_data_received\(61),
	datab => \p_w_m|cnt\(5),
	datad => VCC,
	cin => \p_w_m|LessThan6~9_cout\,
	cout => \p_w_m|LessThan6~11_cout\);

-- Location: LCCOMB_X13_Y8_N12
\p_w_m|LessThan6~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \p_w_m|LessThan6~13_cout\ = CARRY((\p_w_m|cnt\(6) & (\SPI_MODULE|byte_data_received\(62) & !\p_w_m|LessThan6~11_cout\)) # (!\p_w_m|cnt\(6) & ((\SPI_MODULE|byte_data_received\(62)) # (!\p_w_m|LessThan6~11_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \p_w_m|cnt\(6),
	datab => \SPI_MODULE|byte_data_received\(62),
	datad => VCC,
	cin => \p_w_m|LessThan6~11_cout\,
	cout => \p_w_m|LessThan6~13_cout\);

-- Location: LCCOMB_X13_Y8_N14
\p_w_m|LessThan6~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \p_w_m|LessThan6~14_combout\ = (\p_w_m|cnt\(7) & (\SPI_MODULE|byte_data_received\(63) & \p_w_m|LessThan6~13_cout\)) # (!\p_w_m|cnt\(7) & ((\SPI_MODULE|byte_data_received\(63)) # (\p_w_m|LessThan6~13_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101010011010100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \p_w_m|cnt\(7),
	datab => \SPI_MODULE|byte_data_received\(63),
	cin => \p_w_m|LessThan6~13_cout\,
	combout => \p_w_m|LessThan6~14_combout\);

-- Location: FF_X12_Y8_N17
\SPI_MODULE|byte_data_received[64]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \FGD|clk1M~clkctrl_outclk\,
	asdata => \SPI_MODULE|byte_data_received\(63),
	sload => VCC,
	ena => \SPI_MODULE|byte_data_received[15]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \SPI_MODULE|byte_data_received\(64));

-- Location: FF_X12_Y8_N19
\SPI_MODULE|byte_data_received[65]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \FGD|clk1M~clkctrl_outclk\,
	asdata => \SPI_MODULE|byte_data_received\(64),
	sload => VCC,
	ena => \SPI_MODULE|byte_data_received[15]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \SPI_MODULE|byte_data_received\(65));

-- Location: FF_X12_Y8_N21
\SPI_MODULE|byte_data_received[66]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \FGD|clk1M~clkctrl_outclk\,
	asdata => \SPI_MODULE|byte_data_received\(65),
	sload => VCC,
	ena => \SPI_MODULE|byte_data_received[15]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \SPI_MODULE|byte_data_received\(66));

-- Location: FF_X12_Y8_N23
\SPI_MODULE|byte_data_received[67]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \FGD|clk1M~clkctrl_outclk\,
	asdata => \SPI_MODULE|byte_data_received\(66),
	sload => VCC,
	ena => \SPI_MODULE|byte_data_received[15]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \SPI_MODULE|byte_data_received\(67));

-- Location: FF_X12_Y8_N25
\SPI_MODULE|byte_data_received[68]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \FGD|clk1M~clkctrl_outclk\,
	asdata => \SPI_MODULE|byte_data_received\(67),
	sload => VCC,
	ena => \SPI_MODULE|byte_data_received[15]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \SPI_MODULE|byte_data_received\(68));

-- Location: FF_X12_Y8_N27
\SPI_MODULE|byte_data_received[69]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \FGD|clk1M~clkctrl_outclk\,
	asdata => \SPI_MODULE|byte_data_received\(68),
	sload => VCC,
	ena => \SPI_MODULE|byte_data_received[15]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \SPI_MODULE|byte_data_received\(69));

-- Location: FF_X12_Y8_N29
\SPI_MODULE|byte_data_received[70]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \FGD|clk1M~clkctrl_outclk\,
	asdata => \SPI_MODULE|byte_data_received\(69),
	sload => VCC,
	ena => \SPI_MODULE|byte_data_received[15]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \SPI_MODULE|byte_data_received\(70));

-- Location: FF_X12_Y8_N31
\SPI_MODULE|byte_data_received[71]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \FGD|clk1M~clkctrl_outclk\,
	asdata => \SPI_MODULE|byte_data_received\(70),
	sload => VCC,
	ena => \SPI_MODULE|byte_data_received[15]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \SPI_MODULE|byte_data_received\(71));

-- Location: LCCOMB_X12_Y8_N16
\p_w_m|LessThan7~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \p_w_m|LessThan7~1_cout\ = CARRY((!\p_w_m|cnt\(0) & \SPI_MODULE|byte_data_received\(64)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001000100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \p_w_m|cnt\(0),
	datab => \SPI_MODULE|byte_data_received\(64),
	datad => VCC,
	cout => \p_w_m|LessThan7~1_cout\);

-- Location: LCCOMB_X12_Y8_N18
\p_w_m|LessThan7~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \p_w_m|LessThan7~3_cout\ = CARRY((\p_w_m|cnt\(1) & ((!\p_w_m|LessThan7~1_cout\) # (!\SPI_MODULE|byte_data_received\(65)))) # (!\p_w_m|cnt\(1) & (!\SPI_MODULE|byte_data_received\(65) & !\p_w_m|LessThan7~1_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \p_w_m|cnt\(1),
	datab => \SPI_MODULE|byte_data_received\(65),
	datad => VCC,
	cin => \p_w_m|LessThan7~1_cout\,
	cout => \p_w_m|LessThan7~3_cout\);

-- Location: LCCOMB_X12_Y8_N20
\p_w_m|LessThan7~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \p_w_m|LessThan7~5_cout\ = CARRY((\p_w_m|cnt\(2) & (\SPI_MODULE|byte_data_received\(66) & !\p_w_m|LessThan7~3_cout\)) # (!\p_w_m|cnt\(2) & ((\SPI_MODULE|byte_data_received\(66)) # (!\p_w_m|LessThan7~3_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \p_w_m|cnt\(2),
	datab => \SPI_MODULE|byte_data_received\(66),
	datad => VCC,
	cin => \p_w_m|LessThan7~3_cout\,
	cout => \p_w_m|LessThan7~5_cout\);

-- Location: LCCOMB_X12_Y8_N22
\p_w_m|LessThan7~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \p_w_m|LessThan7~7_cout\ = CARRY((\p_w_m|cnt\(3) & ((!\p_w_m|LessThan7~5_cout\) # (!\SPI_MODULE|byte_data_received\(67)))) # (!\p_w_m|cnt\(3) & (!\SPI_MODULE|byte_data_received\(67) & !\p_w_m|LessThan7~5_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \p_w_m|cnt\(3),
	datab => \SPI_MODULE|byte_data_received\(67),
	datad => VCC,
	cin => \p_w_m|LessThan7~5_cout\,
	cout => \p_w_m|LessThan7~7_cout\);

-- Location: LCCOMB_X12_Y8_N24
\p_w_m|LessThan7~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \p_w_m|LessThan7~9_cout\ = CARRY((\p_w_m|cnt\(4) & (\SPI_MODULE|byte_data_received\(68) & !\p_w_m|LessThan7~7_cout\)) # (!\p_w_m|cnt\(4) & ((\SPI_MODULE|byte_data_received\(68)) # (!\p_w_m|LessThan7~7_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \p_w_m|cnt\(4),
	datab => \SPI_MODULE|byte_data_received\(68),
	datad => VCC,
	cin => \p_w_m|LessThan7~7_cout\,
	cout => \p_w_m|LessThan7~9_cout\);

-- Location: LCCOMB_X12_Y8_N26
\p_w_m|LessThan7~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \p_w_m|LessThan7~11_cout\ = CARRY((\SPI_MODULE|byte_data_received\(69) & (\p_w_m|cnt\(5) & !\p_w_m|LessThan7~9_cout\)) # (!\SPI_MODULE|byte_data_received\(69) & ((\p_w_m|cnt\(5)) # (!\p_w_m|LessThan7~9_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \SPI_MODULE|byte_data_received\(69),
	datab => \p_w_m|cnt\(5),
	datad => VCC,
	cin => \p_w_m|LessThan7~9_cout\,
	cout => \p_w_m|LessThan7~11_cout\);

-- Location: LCCOMB_X12_Y8_N28
\p_w_m|LessThan7~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \p_w_m|LessThan7~13_cout\ = CARRY((\SPI_MODULE|byte_data_received\(70) & ((!\p_w_m|LessThan7~11_cout\) # (!\p_w_m|cnt\(6)))) # (!\SPI_MODULE|byte_data_received\(70) & (!\p_w_m|cnt\(6) & !\p_w_m|LessThan7~11_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \SPI_MODULE|byte_data_received\(70),
	datab => \p_w_m|cnt\(6),
	datad => VCC,
	cin => \p_w_m|LessThan7~11_cout\,
	cout => \p_w_m|LessThan7~13_cout\);

-- Location: LCCOMB_X12_Y8_N30
\p_w_m|LessThan7~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \p_w_m|LessThan7~14_combout\ = (\SPI_MODULE|byte_data_received\(71) & ((\p_w_m|LessThan7~13_cout\) # (!\p_w_m|cnt\(7)))) # (!\SPI_MODULE|byte_data_received\(71) & (\p_w_m|LessThan7~13_cout\ & !\p_w_m|cnt\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000011111010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \SPI_MODULE|byte_data_received\(71),
	datad => \p_w_m|cnt\(7),
	cin => \p_w_m|LessThan7~13_cout\,
	combout => \p_w_m|LessThan7~14_combout\);

-- Location: FF_X12_Y8_N1
\SPI_MODULE|byte_data_received[72]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \FGD|clk1M~clkctrl_outclk\,
	asdata => \SPI_MODULE|byte_data_received\(71),
	sload => VCC,
	ena => \SPI_MODULE|byte_data_received[15]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \SPI_MODULE|byte_data_received\(72));

-- Location: FF_X12_Y8_N3
\SPI_MODULE|byte_data_received[73]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \FGD|clk1M~clkctrl_outclk\,
	asdata => \SPI_MODULE|byte_data_received\(72),
	sload => VCC,
	ena => \SPI_MODULE|byte_data_received[15]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \SPI_MODULE|byte_data_received\(73));

-- Location: FF_X12_Y8_N5
\SPI_MODULE|byte_data_received[74]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \FGD|clk1M~clkctrl_outclk\,
	asdata => \SPI_MODULE|byte_data_received\(73),
	sload => VCC,
	ena => \SPI_MODULE|byte_data_received[15]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \SPI_MODULE|byte_data_received\(74));

-- Location: FF_X12_Y8_N7
\SPI_MODULE|byte_data_received[75]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \FGD|clk1M~clkctrl_outclk\,
	asdata => \SPI_MODULE|byte_data_received\(74),
	sload => VCC,
	ena => \SPI_MODULE|byte_data_received[15]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \SPI_MODULE|byte_data_received\(75));

-- Location: FF_X12_Y8_N9
\SPI_MODULE|byte_data_received[76]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \FGD|clk1M~clkctrl_outclk\,
	asdata => \SPI_MODULE|byte_data_received\(75),
	sload => VCC,
	ena => \SPI_MODULE|byte_data_received[15]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \SPI_MODULE|byte_data_received\(76));

-- Location: FF_X12_Y8_N11
\SPI_MODULE|byte_data_received[77]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \FGD|clk1M~clkctrl_outclk\,
	asdata => \SPI_MODULE|byte_data_received\(76),
	sload => VCC,
	ena => \SPI_MODULE|byte_data_received[15]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \SPI_MODULE|byte_data_received\(77));

-- Location: FF_X12_Y8_N13
\SPI_MODULE|byte_data_received[78]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \FGD|clk1M~clkctrl_outclk\,
	asdata => \SPI_MODULE|byte_data_received\(77),
	sload => VCC,
	ena => \SPI_MODULE|byte_data_received[15]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \SPI_MODULE|byte_data_received\(78));

-- Location: FF_X12_Y8_N15
\SPI_MODULE|byte_data_received[79]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \FGD|clk1M~clkctrl_outclk\,
	asdata => \SPI_MODULE|byte_data_received\(78),
	sload => VCC,
	ena => \SPI_MODULE|byte_data_received[15]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \SPI_MODULE|byte_data_received\(79));

-- Location: LCCOMB_X12_Y8_N0
\p_w_m|LessThan8~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \p_w_m|LessThan8~1_cout\ = CARRY((!\p_w_m|cnt\(0) & \SPI_MODULE|byte_data_received\(72)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001000100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \p_w_m|cnt\(0),
	datab => \SPI_MODULE|byte_data_received\(72),
	datad => VCC,
	cout => \p_w_m|LessThan8~1_cout\);

-- Location: LCCOMB_X12_Y8_N2
\p_w_m|LessThan8~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \p_w_m|LessThan8~3_cout\ = CARRY((\p_w_m|cnt\(1) & ((!\p_w_m|LessThan8~1_cout\) # (!\SPI_MODULE|byte_data_received\(73)))) # (!\p_w_m|cnt\(1) & (!\SPI_MODULE|byte_data_received\(73) & !\p_w_m|LessThan8~1_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \p_w_m|cnt\(1),
	datab => \SPI_MODULE|byte_data_received\(73),
	datad => VCC,
	cin => \p_w_m|LessThan8~1_cout\,
	cout => \p_w_m|LessThan8~3_cout\);

-- Location: LCCOMB_X12_Y8_N4
\p_w_m|LessThan8~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \p_w_m|LessThan8~5_cout\ = CARRY((\p_w_m|cnt\(2) & (\SPI_MODULE|byte_data_received\(74) & !\p_w_m|LessThan8~3_cout\)) # (!\p_w_m|cnt\(2) & ((\SPI_MODULE|byte_data_received\(74)) # (!\p_w_m|LessThan8~3_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \p_w_m|cnt\(2),
	datab => \SPI_MODULE|byte_data_received\(74),
	datad => VCC,
	cin => \p_w_m|LessThan8~3_cout\,
	cout => \p_w_m|LessThan8~5_cout\);

-- Location: LCCOMB_X12_Y8_N6
\p_w_m|LessThan8~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \p_w_m|LessThan8~7_cout\ = CARRY((\p_w_m|cnt\(3) & ((!\p_w_m|LessThan8~5_cout\) # (!\SPI_MODULE|byte_data_received\(75)))) # (!\p_w_m|cnt\(3) & (!\SPI_MODULE|byte_data_received\(75) & !\p_w_m|LessThan8~5_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \p_w_m|cnt\(3),
	datab => \SPI_MODULE|byte_data_received\(75),
	datad => VCC,
	cin => \p_w_m|LessThan8~5_cout\,
	cout => \p_w_m|LessThan8~7_cout\);

-- Location: LCCOMB_X12_Y8_N8
\p_w_m|LessThan8~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \p_w_m|LessThan8~9_cout\ = CARRY((\p_w_m|cnt\(4) & (\SPI_MODULE|byte_data_received\(76) & !\p_w_m|LessThan8~7_cout\)) # (!\p_w_m|cnt\(4) & ((\SPI_MODULE|byte_data_received\(76)) # (!\p_w_m|LessThan8~7_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \p_w_m|cnt\(4),
	datab => \SPI_MODULE|byte_data_received\(76),
	datad => VCC,
	cin => \p_w_m|LessThan8~7_cout\,
	cout => \p_w_m|LessThan8~9_cout\);

-- Location: LCCOMB_X12_Y8_N10
\p_w_m|LessThan8~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \p_w_m|LessThan8~11_cout\ = CARRY((\SPI_MODULE|byte_data_received\(77) & (\p_w_m|cnt\(5) & !\p_w_m|LessThan8~9_cout\)) # (!\SPI_MODULE|byte_data_received\(77) & ((\p_w_m|cnt\(5)) # (!\p_w_m|LessThan8~9_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \SPI_MODULE|byte_data_received\(77),
	datab => \p_w_m|cnt\(5),
	datad => VCC,
	cin => \p_w_m|LessThan8~9_cout\,
	cout => \p_w_m|LessThan8~11_cout\);

-- Location: LCCOMB_X12_Y8_N12
\p_w_m|LessThan8~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \p_w_m|LessThan8~13_cout\ = CARRY((\SPI_MODULE|byte_data_received\(78) & ((!\p_w_m|LessThan8~11_cout\) # (!\p_w_m|cnt\(6)))) # (!\SPI_MODULE|byte_data_received\(78) & (!\p_w_m|cnt\(6) & !\p_w_m|LessThan8~11_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \SPI_MODULE|byte_data_received\(78),
	datab => \p_w_m|cnt\(6),
	datad => VCC,
	cin => \p_w_m|LessThan8~11_cout\,
	cout => \p_w_m|LessThan8~13_cout\);

-- Location: LCCOMB_X12_Y8_N14
\p_w_m|LessThan8~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \p_w_m|LessThan8~14_combout\ = (\SPI_MODULE|byte_data_received\(79) & ((\p_w_m|LessThan8~13_cout\) # (!\p_w_m|cnt\(7)))) # (!\SPI_MODULE|byte_data_received\(79) & (\p_w_m|LessThan8~13_cout\ & !\p_w_m|cnt\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011111100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \SPI_MODULE|byte_data_received\(79),
	datad => \p_w_m|cnt\(7),
	cin => \p_w_m|LessThan8~13_cout\,
	combout => \p_w_m|LessThan8~14_combout\);

-- Location: FF_X13_Y10_N3
\SPI_MODULE|byte_data_received[80]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \FGD|clk1M~clkctrl_outclk\,
	asdata => \SPI_MODULE|byte_data_received\(79),
	sload => VCC,
	ena => \SPI_MODULE|byte_data_received[15]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \SPI_MODULE|byte_data_received\(80));

-- Location: FF_X13_Y10_N5
\SPI_MODULE|byte_data_received[81]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \FGD|clk1M~clkctrl_outclk\,
	asdata => \SPI_MODULE|byte_data_received\(80),
	sload => VCC,
	ena => \SPI_MODULE|byte_data_received[15]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \SPI_MODULE|byte_data_received\(81));

-- Location: FF_X13_Y10_N7
\SPI_MODULE|byte_data_received[82]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \FGD|clk1M~clkctrl_outclk\,
	asdata => \SPI_MODULE|byte_data_received\(81),
	sload => VCC,
	ena => \SPI_MODULE|byte_data_received[15]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \SPI_MODULE|byte_data_received\(82));

-- Location: FF_X13_Y10_N9
\SPI_MODULE|byte_data_received[83]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \FGD|clk1M~clkctrl_outclk\,
	asdata => \SPI_MODULE|byte_data_received\(82),
	sload => VCC,
	ena => \SPI_MODULE|byte_data_received[15]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \SPI_MODULE|byte_data_received\(83));

-- Location: FF_X13_Y10_N11
\SPI_MODULE|byte_data_received[84]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \FGD|clk1M~clkctrl_outclk\,
	asdata => \SPI_MODULE|byte_data_received\(83),
	sload => VCC,
	ena => \SPI_MODULE|byte_data_received[15]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \SPI_MODULE|byte_data_received\(84));

-- Location: FF_X13_Y10_N13
\SPI_MODULE|byte_data_received[85]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \FGD|clk1M~clkctrl_outclk\,
	asdata => \SPI_MODULE|byte_data_received\(84),
	sload => VCC,
	ena => \SPI_MODULE|byte_data_received[15]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \SPI_MODULE|byte_data_received\(85));

-- Location: FF_X13_Y10_N15
\SPI_MODULE|byte_data_received[86]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \FGD|clk1M~clkctrl_outclk\,
	asdata => \SPI_MODULE|byte_data_received\(85),
	sload => VCC,
	ena => \SPI_MODULE|byte_data_received[15]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \SPI_MODULE|byte_data_received\(86));

-- Location: FF_X13_Y10_N17
\SPI_MODULE|byte_data_received[87]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \FGD|clk1M~clkctrl_outclk\,
	asdata => \SPI_MODULE|byte_data_received\(86),
	sload => VCC,
	ena => \SPI_MODULE|byte_data_received[15]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \SPI_MODULE|byte_data_received\(87));

-- Location: LCCOMB_X13_Y10_N2
\p_w_m|LessThan9~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \p_w_m|LessThan9~1_cout\ = CARRY((!\p_w_m|cnt\(0) & \SPI_MODULE|byte_data_received\(80)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001000100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \p_w_m|cnt\(0),
	datab => \SPI_MODULE|byte_data_received\(80),
	datad => VCC,
	cout => \p_w_m|LessThan9~1_cout\);

-- Location: LCCOMB_X13_Y10_N4
\p_w_m|LessThan9~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \p_w_m|LessThan9~3_cout\ = CARRY((\p_w_m|cnt\(1) & ((!\p_w_m|LessThan9~1_cout\) # (!\SPI_MODULE|byte_data_received\(81)))) # (!\p_w_m|cnt\(1) & (!\SPI_MODULE|byte_data_received\(81) & !\p_w_m|LessThan9~1_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \p_w_m|cnt\(1),
	datab => \SPI_MODULE|byte_data_received\(81),
	datad => VCC,
	cin => \p_w_m|LessThan9~1_cout\,
	cout => \p_w_m|LessThan9~3_cout\);

-- Location: LCCOMB_X13_Y10_N6
\p_w_m|LessThan9~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \p_w_m|LessThan9~5_cout\ = CARRY((\p_w_m|cnt\(2) & (\SPI_MODULE|byte_data_received\(82) & !\p_w_m|LessThan9~3_cout\)) # (!\p_w_m|cnt\(2) & ((\SPI_MODULE|byte_data_received\(82)) # (!\p_w_m|LessThan9~3_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \p_w_m|cnt\(2),
	datab => \SPI_MODULE|byte_data_received\(82),
	datad => VCC,
	cin => \p_w_m|LessThan9~3_cout\,
	cout => \p_w_m|LessThan9~5_cout\);

-- Location: LCCOMB_X13_Y10_N8
\p_w_m|LessThan9~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \p_w_m|LessThan9~7_cout\ = CARRY((\p_w_m|cnt\(3) & ((!\p_w_m|LessThan9~5_cout\) # (!\SPI_MODULE|byte_data_received\(83)))) # (!\p_w_m|cnt\(3) & (!\SPI_MODULE|byte_data_received\(83) & !\p_w_m|LessThan9~5_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \p_w_m|cnt\(3),
	datab => \SPI_MODULE|byte_data_received\(83),
	datad => VCC,
	cin => \p_w_m|LessThan9~5_cout\,
	cout => \p_w_m|LessThan9~7_cout\);

-- Location: LCCOMB_X13_Y10_N10
\p_w_m|LessThan9~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \p_w_m|LessThan9~9_cout\ = CARRY((\p_w_m|cnt\(4) & (\SPI_MODULE|byte_data_received\(84) & !\p_w_m|LessThan9~7_cout\)) # (!\p_w_m|cnt\(4) & ((\SPI_MODULE|byte_data_received\(84)) # (!\p_w_m|LessThan9~7_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \p_w_m|cnt\(4),
	datab => \SPI_MODULE|byte_data_received\(84),
	datad => VCC,
	cin => \p_w_m|LessThan9~7_cout\,
	cout => \p_w_m|LessThan9~9_cout\);

-- Location: LCCOMB_X13_Y10_N12
\p_w_m|LessThan9~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \p_w_m|LessThan9~11_cout\ = CARRY((\SPI_MODULE|byte_data_received\(85) & (\p_w_m|cnt\(5) & !\p_w_m|LessThan9~9_cout\)) # (!\SPI_MODULE|byte_data_received\(85) & ((\p_w_m|cnt\(5)) # (!\p_w_m|LessThan9~9_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \SPI_MODULE|byte_data_received\(85),
	datab => \p_w_m|cnt\(5),
	datad => VCC,
	cin => \p_w_m|LessThan9~9_cout\,
	cout => \p_w_m|LessThan9~11_cout\);

-- Location: LCCOMB_X13_Y10_N14
\p_w_m|LessThan9~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \p_w_m|LessThan9~13_cout\ = CARRY((\p_w_m|cnt\(6) & (\SPI_MODULE|byte_data_received\(86) & !\p_w_m|LessThan9~11_cout\)) # (!\p_w_m|cnt\(6) & ((\SPI_MODULE|byte_data_received\(86)) # (!\p_w_m|LessThan9~11_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \p_w_m|cnt\(6),
	datab => \SPI_MODULE|byte_data_received\(86),
	datad => VCC,
	cin => \p_w_m|LessThan9~11_cout\,
	cout => \p_w_m|LessThan9~13_cout\);

-- Location: LCCOMB_X13_Y10_N16
\p_w_m|LessThan9~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \p_w_m|LessThan9~14_combout\ = (\p_w_m|cnt\(7) & (\p_w_m|LessThan9~13_cout\ & \SPI_MODULE|byte_data_received\(87))) # (!\p_w_m|cnt\(7) & ((\p_w_m|LessThan9~13_cout\) # (\SPI_MODULE|byte_data_received\(87))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010101010000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \p_w_m|cnt\(7),
	datad => \SPI_MODULE|byte_data_received\(87),
	cin => \p_w_m|LessThan9~13_cout\,
	combout => \p_w_m|LessThan9~14_combout\);

-- Location: FF_X24_Y8_N17
\Hum|Data_H_test\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \FGD|clk1M~clkctrl_outclk\,
	asdata => \Data_H~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Hum|Data_H_test~q\);

ww_led0 <= \led0~output_o\;

ww_led1 <= \led1~output_o\;

ww_MISO <= \MISO~output_o\;

ww_OUT_final(0) <= \OUT_final[0]~output_o\;

ww_OUT_final(1) <= \OUT_final[1]~output_o\;

ww_OUT_final(2) <= \OUT_final[2]~output_o\;

ww_OUT_final(3) <= \OUT_final[3]~output_o\;

ww_PWM_out <= \PWM_out~output_o\;

ww_PWM_out2 <= \PWM_out2~output_o\;

ww_PWM_out3 <= \PWM_out3~output_o\;

ww_PWM_out4 <= \PWM_out4~output_o\;

ww_PWM_out5 <= \PWM_out5~output_o\;

ww_PWM_out6 <= \PWM_out6~output_o\;

ww_PWM_out7 <= \PWM_out7~output_o\;

ww_PWM_out8 <= \PWM_out8~output_o\;

ww_PWM_out9 <= \PWM_out9~output_o\;

ww_PWM_out_vent <= \PWM_out_vent~output_o\;

ww_flag_five_sec <= \flag_five_sec~output_o\;

ww_Data_H_test <= \Data_H_test~output_o\;

Data_H <= \Data_H~output_o\;
END structure;


