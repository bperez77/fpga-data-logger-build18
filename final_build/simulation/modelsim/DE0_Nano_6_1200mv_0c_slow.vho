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
-- PROGRAM "Quartus II 32-bit"
-- VERSION "Version 13.1.0 Build 162 10/23/2013 SJ Web Edition"

-- DATE "01/17/2014 14:30:07"

-- 
-- Device: Altera EP4CE22F17C6 Package FBGA256
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

ENTITY 	DE0_Nano IS
    PORT (
	CLOCK_50 : IN std_logic;
	LED : OUT std_logic_vector(7 DOWNTO 0);
	KEY : IN std_logic_vector(1 DOWNTO 0);
	SW : IN std_logic_vector(3 DOWNTO 0);
	GPIO_0_D : INOUT std_logic_vector(33 DOWNTO 0);
	GPIO_0_IN : IN std_logic_vector(1 DOWNTO 0)
	);
END DE0_Nano;

-- Design Ports Information
-- LED[0]	=>  Location: PIN_A15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LED[1]	=>  Location: PIN_A13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LED[2]	=>  Location: PIN_B13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LED[3]	=>  Location: PIN_A11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LED[4]	=>  Location: PIN_D1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LED[5]	=>  Location: PIN_F3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LED[6]	=>  Location: PIN_B1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LED[7]	=>  Location: PIN_L3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- KEY[0]	=>  Location: PIN_J15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[0]	=>  Location: PIN_M1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[1]	=>  Location: PIN_T8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[2]	=>  Location: PIN_B9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[3]	=>  Location: PIN_M15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- GPIO_0_IN[0]	=>  Location: PIN_A8,	 I/O Standard: 3.3-V LVCMOS,	 Current Strength: Default
-- GPIO_0_IN[1]	=>  Location: PIN_B8,	 I/O Standard: 3.3-V LVCMOS,	 Current Strength: Default
-- GPIO_0_D[2]	=>  Location: PIN_A2,	 I/O Standard: 3.3-V LVCMOS,	 Current Strength: 2mA
-- GPIO_0_D[4]	=>  Location: PIN_B3,	 I/O Standard: 3.3-V LVCMOS,	 Current Strength: 2mA
-- GPIO_0_D[6]	=>  Location: PIN_A4,	 I/O Standard: 3.3-V LVCMOS,	 Current Strength: 2mA
-- GPIO_0_D[8]	=>  Location: PIN_A5,	 I/O Standard: 3.3-V LVCMOS,	 Current Strength: 2mA
-- GPIO_0_D[9]	=>  Location: PIN_D5,	 I/O Standard: 3.3-V LVCMOS,	 Current Strength: 2mA
-- GPIO_0_D[10]	=>  Location: PIN_B6,	 I/O Standard: 3.3-V LVCMOS,	 Current Strength: 2mA
-- GPIO_0_D[11]	=>  Location: PIN_A6,	 I/O Standard: 3.3-V LVCMOS,	 Current Strength: 2mA
-- GPIO_0_D[12]	=>  Location: PIN_B7,	 I/O Standard: 3.3-V LVCMOS,	 Current Strength: 2mA
-- GPIO_0_D[13]	=>  Location: PIN_D6,	 I/O Standard: 3.3-V LVCMOS,	 Current Strength: 2mA
-- GPIO_0_D[14]	=>  Location: PIN_A7,	 I/O Standard: 3.3-V LVCMOS,	 Current Strength: 2mA
-- GPIO_0_D[15]	=>  Location: PIN_C6,	 I/O Standard: 3.3-V LVCMOS,	 Current Strength: 2mA
-- GPIO_0_D[16]	=>  Location: PIN_C8,	 I/O Standard: 3.3-V LVCMOS,	 Current Strength: 2mA
-- GPIO_0_D[17]	=>  Location: PIN_E6,	 I/O Standard: 3.3-V LVCMOS,	 Current Strength: 2mA
-- GPIO_0_D[18]	=>  Location: PIN_E7,	 I/O Standard: 3.3-V LVCMOS,	 Current Strength: 2mA
-- GPIO_0_D[19]	=>  Location: PIN_D8,	 I/O Standard: 3.3-V LVCMOS,	 Current Strength: 2mA
-- GPIO_0_D[20]	=>  Location: PIN_E8,	 I/O Standard: 3.3-V LVCMOS,	 Current Strength: 2mA
-- GPIO_0_D[21]	=>  Location: PIN_F8,	 I/O Standard: 3.3-V LVCMOS,	 Current Strength: 2mA
-- GPIO_0_D[22]	=>  Location: PIN_F9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- GPIO_0_D[23]	=>  Location: PIN_E9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- GPIO_0_D[24]	=>  Location: PIN_C9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- GPIO_0_D[25]	=>  Location: PIN_D9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- GPIO_0_D[26]	=>  Location: PIN_E11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- GPIO_0_D[27]	=>  Location: PIN_E10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- GPIO_0_D[28]	=>  Location: PIN_C11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- GPIO_0_D[29]	=>  Location: PIN_B11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- GPIO_0_D[30]	=>  Location: PIN_A12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- GPIO_0_D[31]	=>  Location: PIN_D11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- GPIO_0_D[32]	=>  Location: PIN_D12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- GPIO_0_D[33]	=>  Location: PIN_B12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- GPIO_0_D[0]	=>  Location: PIN_D3,	 I/O Standard: 3.3-V LVCMOS,	 Current Strength: 2mA
-- GPIO_0_D[1]	=>  Location: PIN_C3,	 I/O Standard: 3.3-V LVCMOS,	 Current Strength: 2mA
-- GPIO_0_D[3]	=>  Location: PIN_A3,	 I/O Standard: 3.3-V LVCMOS,	 Current Strength: 2mA
-- GPIO_0_D[5]	=>  Location: PIN_B4,	 I/O Standard: 3.3-V LVCMOS,	 Current Strength: 2mA
-- GPIO_0_D[7]	=>  Location: PIN_B5,	 I/O Standard: 3.3-V LVCMOS,	 Current Strength: 2mA
-- KEY[1]	=>  Location: PIN_E1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- CLOCK_50	=>  Location: PIN_R8,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF DE0_Nano IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_CLOCK_50 : std_logic;
SIGNAL ww_LED : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_KEY : std_logic_vector(1 DOWNTO 0);
SIGNAL ww_SW : std_logic_vector(3 DOWNTO 0);
SIGNAL ww_GPIO_0_IN : std_logic_vector(1 DOWNTO 0);
SIGNAL \CLOCK_50~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \KEY[0]~input_o\ : std_logic;
SIGNAL \SW[0]~input_o\ : std_logic;
SIGNAL \SW[1]~input_o\ : std_logic;
SIGNAL \SW[2]~input_o\ : std_logic;
SIGNAL \SW[3]~input_o\ : std_logic;
SIGNAL \GPIO_0_IN[0]~input_o\ : std_logic;
SIGNAL \GPIO_0_IN[1]~input_o\ : std_logic;
SIGNAL \GPIO_0_D[2]~input_o\ : std_logic;
SIGNAL \GPIO_0_D[4]~input_o\ : std_logic;
SIGNAL \GPIO_0_D[6]~input_o\ : std_logic;
SIGNAL \GPIO_0_D[8]~input_o\ : std_logic;
SIGNAL \GPIO_0_D[9]~input_o\ : std_logic;
SIGNAL \GPIO_0_D[10]~input_o\ : std_logic;
SIGNAL \GPIO_0_D[11]~input_o\ : std_logic;
SIGNAL \GPIO_0_D[12]~input_o\ : std_logic;
SIGNAL \GPIO_0_D[13]~input_o\ : std_logic;
SIGNAL \GPIO_0_D[14]~input_o\ : std_logic;
SIGNAL \GPIO_0_D[15]~input_o\ : std_logic;
SIGNAL \GPIO_0_D[16]~input_o\ : std_logic;
SIGNAL \GPIO_0_D[17]~input_o\ : std_logic;
SIGNAL \GPIO_0_D[18]~input_o\ : std_logic;
SIGNAL \GPIO_0_D[19]~input_o\ : std_logic;
SIGNAL \GPIO_0_D[20]~input_o\ : std_logic;
SIGNAL \GPIO_0_D[21]~input_o\ : std_logic;
SIGNAL \GPIO_0_D[22]~input_o\ : std_logic;
SIGNAL \GPIO_0_D[23]~input_o\ : std_logic;
SIGNAL \GPIO_0_D[24]~input_o\ : std_logic;
SIGNAL \GPIO_0_D[25]~input_o\ : std_logic;
SIGNAL \GPIO_0_D[26]~input_o\ : std_logic;
SIGNAL \GPIO_0_D[27]~input_o\ : std_logic;
SIGNAL \GPIO_0_D[28]~input_o\ : std_logic;
SIGNAL \GPIO_0_D[29]~input_o\ : std_logic;
SIGNAL \GPIO_0_D[30]~input_o\ : std_logic;
SIGNAL \GPIO_0_D[31]~input_o\ : std_logic;
SIGNAL \GPIO_0_D[32]~input_o\ : std_logic;
SIGNAL \GPIO_0_D[33]~input_o\ : std_logic;
SIGNAL \GPIO_0_D[0]~input_o\ : std_logic;
SIGNAL \GPIO_0_D[3]~input_o\ : std_logic;
SIGNAL \GPIO_0_D[5]~input_o\ : std_logic;
SIGNAL \GPIO_0_D[7]~input_o\ : std_logic;
SIGNAL \GPIO_0_D[2]~output_o\ : std_logic;
SIGNAL \GPIO_0_D[4]~output_o\ : std_logic;
SIGNAL \GPIO_0_D[6]~output_o\ : std_logic;
SIGNAL \GPIO_0_D[8]~output_o\ : std_logic;
SIGNAL \GPIO_0_D[9]~output_o\ : std_logic;
SIGNAL \GPIO_0_D[10]~output_o\ : std_logic;
SIGNAL \GPIO_0_D[11]~output_o\ : std_logic;
SIGNAL \GPIO_0_D[12]~output_o\ : std_logic;
SIGNAL \GPIO_0_D[13]~output_o\ : std_logic;
SIGNAL \GPIO_0_D[14]~output_o\ : std_logic;
SIGNAL \GPIO_0_D[15]~output_o\ : std_logic;
SIGNAL \GPIO_0_D[16]~output_o\ : std_logic;
SIGNAL \GPIO_0_D[17]~output_o\ : std_logic;
SIGNAL \GPIO_0_D[18]~output_o\ : std_logic;
SIGNAL \GPIO_0_D[19]~output_o\ : std_logic;
SIGNAL \GPIO_0_D[20]~output_o\ : std_logic;
SIGNAL \GPIO_0_D[21]~output_o\ : std_logic;
SIGNAL \GPIO_0_D[22]~output_o\ : std_logic;
SIGNAL \GPIO_0_D[23]~output_o\ : std_logic;
SIGNAL \GPIO_0_D[24]~output_o\ : std_logic;
SIGNAL \GPIO_0_D[25]~output_o\ : std_logic;
SIGNAL \GPIO_0_D[26]~output_o\ : std_logic;
SIGNAL \GPIO_0_D[27]~output_o\ : std_logic;
SIGNAL \GPIO_0_D[28]~output_o\ : std_logic;
SIGNAL \GPIO_0_D[29]~output_o\ : std_logic;
SIGNAL \GPIO_0_D[30]~output_o\ : std_logic;
SIGNAL \GPIO_0_D[31]~output_o\ : std_logic;
SIGNAL \GPIO_0_D[32]~output_o\ : std_logic;
SIGNAL \GPIO_0_D[33]~output_o\ : std_logic;
SIGNAL \GPIO_0_D[0]~output_o\ : std_logic;
SIGNAL \GPIO_0_D[1]~output_o\ : std_logic;
SIGNAL \GPIO_0_D[3]~output_o\ : std_logic;
SIGNAL \GPIO_0_D[5]~output_o\ : std_logic;
SIGNAL \GPIO_0_D[7]~output_o\ : std_logic;
SIGNAL \LED[0]~output_o\ : std_logic;
SIGNAL \LED[1]~output_o\ : std_logic;
SIGNAL \LED[2]~output_o\ : std_logic;
SIGNAL \LED[3]~output_o\ : std_logic;
SIGNAL \LED[4]~output_o\ : std_logic;
SIGNAL \LED[5]~output_o\ : std_logic;
SIGNAL \LED[6]~output_o\ : std_logic;
SIGNAL \LED[7]~output_o\ : std_logic;
SIGNAL \CLOCK_50~input_o\ : std_logic;
SIGNAL \CLOCK_50~inputclkctrl_outclk\ : std_logic;
SIGNAL \KEY[1]~input_o\ : std_logic;
SIGNAL \ser1|transmit|Q[0]~13_combout\ : std_logic;
SIGNAL \ser1|tx_ctrl|start_tx~0_combout\ : std_logic;
SIGNAL \ser1|transmit|Q[0]~14\ : std_logic;
SIGNAL \ser1|transmit|Q[1]~15_combout\ : std_logic;
SIGNAL \ser1|transmit|Q[1]~16\ : std_logic;
SIGNAL \ser1|transmit|Q[2]~17_combout\ : std_logic;
SIGNAL \ser1|transmit|Q[2]~18\ : std_logic;
SIGNAL \ser1|transmit|Q[3]~19_combout\ : std_logic;
SIGNAL \ser1|transmit|Q[3]~20\ : std_logic;
SIGNAL \ser1|transmit|Q[4]~21_combout\ : std_logic;
SIGNAL \ser1|transmit|Q[4]~22\ : std_logic;
SIGNAL \ser1|transmit|Q[5]~23_combout\ : std_logic;
SIGNAL \ser1|transmit|Q[5]~24\ : std_logic;
SIGNAL \ser1|transmit|Q[6]~25_combout\ : std_logic;
SIGNAL \ser1|transmit|Q[6]~26\ : std_logic;
SIGNAL \ser1|transmit|Q[7]~27_combout\ : std_logic;
SIGNAL \ser1|transmit|Q[7]~28\ : std_logic;
SIGNAL \ser1|transmit|Q[8]~29_combout\ : std_logic;
SIGNAL \ser1|transmit|Q[8]~30\ : std_logic;
SIGNAL \ser1|transmit|Q[9]~31_combout\ : std_logic;
SIGNAL \ser1|transmit|Q[9]~32\ : std_logic;
SIGNAL \ser1|transmit|Q[10]~33_combout\ : std_logic;
SIGNAL \ser1|transmit|Q[10]~34\ : std_logic;
SIGNAL \ser1|transmit|Q[11]~35_combout\ : std_logic;
SIGNAL \ser1|Equal2~2_combout\ : std_logic;
SIGNAL \ser1|transmit|Q[11]~36\ : std_logic;
SIGNAL \ser1|transmit|Q[12]~37_combout\ : std_logic;
SIGNAL \ser1|Equal2~0_combout\ : std_logic;
SIGNAL \ser1|Equal2~1_combout\ : std_logic;
SIGNAL \ser1|Equal2~3_combout\ : std_logic;
SIGNAL \ser1|tx_ctrl|current_state~10_combout\ : std_logic;
SIGNAL \ser1|tx_ctrl|current_state.SHIFT~q\ : std_logic;
SIGNAL \count|Q[0]~26_combout\ : std_logic;
SIGNAL \count|Q[0]~27\ : std_logic;
SIGNAL \count|Q[1]~28_combout\ : std_logic;
SIGNAL \count|Q[1]~29\ : std_logic;
SIGNAL \count|Q[2]~30_combout\ : std_logic;
SIGNAL \count|Q[2]~31\ : std_logic;
SIGNAL \count|Q[3]~32_combout\ : std_logic;
SIGNAL \count|Q[3]~33\ : std_logic;
SIGNAL \count|Q[4]~34_combout\ : std_logic;
SIGNAL \count|Q[4]~35\ : std_logic;
SIGNAL \count|Q[5]~36_combout\ : std_logic;
SIGNAL \count|Q[5]~37\ : std_logic;
SIGNAL \count|Q[6]~38_combout\ : std_logic;
SIGNAL \count|Q[6]~39\ : std_logic;
SIGNAL \count|Q[7]~40_combout\ : std_logic;
SIGNAL \count|Q[7]~41\ : std_logic;
SIGNAL \count|Q[8]~42_combout\ : std_logic;
SIGNAL \count|Q[8]~43\ : std_logic;
SIGNAL \count|Q[9]~44_combout\ : std_logic;
SIGNAL \count|Q[9]~45\ : std_logic;
SIGNAL \count|Q[10]~46_combout\ : std_logic;
SIGNAL \count|Q[10]~47\ : std_logic;
SIGNAL \count|Q[11]~48_combout\ : std_logic;
SIGNAL \count|Q[11]~49\ : std_logic;
SIGNAL \count|Q[12]~50_combout\ : std_logic;
SIGNAL \count|Q[12]~51\ : std_logic;
SIGNAL \count|Q[13]~52_combout\ : std_logic;
SIGNAL \count|Q[13]~53\ : std_logic;
SIGNAL \count|Q[14]~54_combout\ : std_logic;
SIGNAL \count|Q[14]~55\ : std_logic;
SIGNAL \count|Q[15]~56_combout\ : std_logic;
SIGNAL \count|Q[15]~57\ : std_logic;
SIGNAL \count|Q[16]~58_combout\ : std_logic;
SIGNAL \count|Q[16]~59\ : std_logic;
SIGNAL \count|Q[17]~60_combout\ : std_logic;
SIGNAL \count|Q[17]~61\ : std_logic;
SIGNAL \count|Q[18]~62_combout\ : std_logic;
SIGNAL \count|Q[18]~63\ : std_logic;
SIGNAL \count|Q[19]~64_combout\ : std_logic;
SIGNAL \count|Q[19]~65\ : std_logic;
SIGNAL \count|Q[20]~66_combout\ : std_logic;
SIGNAL \count|Q[20]~67\ : std_logic;
SIGNAL \count|Q[21]~68_combout\ : std_logic;
SIGNAL \count|Q[21]~69\ : std_logic;
SIGNAL \count|Q[22]~70_combout\ : std_logic;
SIGNAL \count|Q[22]~71\ : std_logic;
SIGNAL \count|Q[23]~72_combout\ : std_logic;
SIGNAL \count|Q[23]~73\ : std_logic;
SIGNAL \count|Q[24]~74_combout\ : std_logic;
SIGNAL \count|Q[24]~75\ : std_logic;
SIGNAL \count|Q[25]~76_combout\ : std_logic;
SIGNAL \Equal0~5_combout\ : std_logic;
SIGNAL \Equal0~6_combout\ : std_logic;
SIGNAL \Equal0~7_combout\ : std_logic;
SIGNAL \Equal0~1_combout\ : std_logic;
SIGNAL \Equal0~3_combout\ : std_logic;
SIGNAL \Equal0~2_combout\ : std_logic;
SIGNAL \Equal0~0_combout\ : std_logic;
SIGNAL \Equal0~4_combout\ : std_logic;
SIGNAL \ser1|tx_ctrl|current_state~9_combout\ : std_logic;
SIGNAL \ser1|tx_ctrl|current_state.LOAD~q\ : std_logic;
SIGNAL \ser1|txdata|Q~10_combout\ : std_logic;
SIGNAL \ser1|txdata|Q~11_combout\ : std_logic;
SIGNAL \ser1|txdata|Q~9_combout\ : std_logic;
SIGNAL \ser1|txdata|Q[2]~1_combout\ : std_logic;
SIGNAL \ser1|txdata|Q~8_combout\ : std_logic;
SIGNAL \ser1|txdata|Q~7_combout\ : std_logic;
SIGNAL \ser1|txdata|Q~6_combout\ : std_logic;
SIGNAL \ser1|txdata|Q~5_combout\ : std_logic;
SIGNAL \ser1|Equal4~1_combout\ : std_logic;
SIGNAL \ser1|txdata|Q~4_combout\ : std_logic;
SIGNAL \ser1|txdata|Q~3_combout\ : std_logic;
SIGNAL \ser1|txdata|Q~2_combout\ : std_logic;
SIGNAL \ser1|txdata|Q~0_combout\ : std_logic;
SIGNAL \ser1|Equal4~0_combout\ : std_logic;
SIGNAL \ser1|Equal4~2_combout\ : std_logic;
SIGNAL \ser1|tx_ctrl|Selector1~0_combout\ : std_logic;
SIGNAL \ser1|tx_ctrl|Selector1~1_combout\ : std_logic;
SIGNAL \ser1|tx_ctrl|current_state.PAUSE~q\ : std_logic;
SIGNAL \ser1|tx_ctrl|Selector0~0_combout\ : std_logic;
SIGNAL \ser1|tx_ctrl|current_state~8_combout\ : std_logic;
SIGNAL \ser1|tx_ctrl|current_state.WAIT~q\ : std_logic;
SIGNAL \ser1|tx_sel|Y~0_combout\ : std_logic;
SIGNAL \m1|chnk_cnt|Q[0]~7_combout\ : std_logic;
SIGNAL \m1|chnk_cnt|Q[0]~21_combout\ : std_logic;
SIGNAL \m1|chnk_cnt|Q[0]~22_combout\ : std_logic;
SIGNAL \m1|chnk_cnt|Q[0]~23_combout\ : std_logic;
SIGNAL \m1|clk_cnt|Q[0]~12_combout\ : std_logic;
SIGNAL \m1|clk_cnt|Q[1]~15\ : std_logic;
SIGNAL \m1|clk_cnt|Q[2]~17_combout\ : std_logic;
SIGNAL \m1|clk_cnt|Q[2]~18\ : std_logic;
SIGNAL \m1|clk_cnt|Q[3]~19_combout\ : std_logic;
SIGNAL \m1|clk_cnt|Q[3]~20\ : std_logic;
SIGNAL \m1|clk_cnt|Q[4]~21_combout\ : std_logic;
SIGNAL \m1|clk_cnt|Q[4]~22\ : std_logic;
SIGNAL \m1|clk_cnt|Q[5]~23_combout\ : std_logic;
SIGNAL \m1|clk_cnt|Q[5]~24\ : std_logic;
SIGNAL \m1|clk_cnt|Q[6]~25_combout\ : std_logic;
SIGNAL \m1|clk_cnt|Q[6]~26\ : std_logic;
SIGNAL \m1|clk_cnt|Q[7]~27_combout\ : std_logic;
SIGNAL \m1|clk_cnt|Q[7]~28\ : std_logic;
SIGNAL \m1|clk_cnt|Q[8]~29_combout\ : std_logic;
SIGNAL \m1|clk_cnt|Q[8]~30\ : std_logic;
SIGNAL \m1|clk_cnt|Q[9]~31_combout\ : std_logic;
SIGNAL \m1|clk_cnt|Q[9]~32\ : std_logic;
SIGNAL \m1|clk_cnt|Q[10]~33_combout\ : std_logic;
SIGNAL \m1|clk_cnt|Q[10]~34\ : std_logic;
SIGNAL \m1|clk_cnt|Q[11]~35_combout\ : std_logic;
SIGNAL \m1|Equal0~1_combout\ : std_logic;
SIGNAL \m1|Equal0~0_combout\ : std_logic;
SIGNAL \m1|Equal0~2_combout\ : std_logic;
SIGNAL \m1|clk_cnt|Q[3]~16_combout\ : std_logic;
SIGNAL \m1|clk_cnt|Q[0]~13\ : std_logic;
SIGNAL \m1|clk_cnt|Q[1]~14_combout\ : std_logic;
SIGNAL \m1|chnk_cnt|Q[0]~24_combout\ : std_logic;
SIGNAL \m1|chnk_cnt|Q[0]~8\ : std_logic;
SIGNAL \m1|chnk_cnt|Q[1]~9_combout\ : std_logic;
SIGNAL \m1|chnk_cnt|Q[1]~10\ : std_logic;
SIGNAL \m1|chnk_cnt|Q[2]~11_combout\ : std_logic;
SIGNAL \m1|chnk_cnt|Q[2]~12\ : std_logic;
SIGNAL \m1|chnk_cnt|Q[3]~13_combout\ : std_logic;
SIGNAL \m1|chnk_cnt|Q[3]~14\ : std_logic;
SIGNAL \m1|chnk_cnt|Q[4]~15_combout\ : std_logic;
SIGNAL \m1|chnk_cnt|Q[4]~16\ : std_logic;
SIGNAL \m1|chnk_cnt|Q[5]~17_combout\ : std_logic;
SIGNAL \m1|chnk_cnt|Q[5]~18\ : std_logic;
SIGNAL \m1|chnk_cnt|Q[6]~19_combout\ : std_logic;
SIGNAL \ser1|rx_count|Q[0]~10_combout\ : std_logic;
SIGNAL \ser1|received|Q[0]~1_combout\ : std_logic;
SIGNAL \GPIO_0_D[1]~input_o\ : std_logic;
SIGNAL \ser1|receive|Q[0]~13_combout\ : std_logic;
SIGNAL \ser1|rx_ctrl|current_state~13_combout\ : std_logic;
SIGNAL \ser1|rx_ctrl|current_state.START~q\ : std_logic;
SIGNAL \ser1|rx_ctrl|start_rx~combout\ : std_logic;
SIGNAL \ser1|receive|Q[0]~14\ : std_logic;
SIGNAL \ser1|receive|Q[1]~15_combout\ : std_logic;
SIGNAL \ser1|receive|Q[1]~16\ : std_logic;
SIGNAL \ser1|receive|Q[2]~17_combout\ : std_logic;
SIGNAL \ser1|receive|Q[2]~18\ : std_logic;
SIGNAL \ser1|receive|Q[3]~19_combout\ : std_logic;
SIGNAL \ser1|receive|Q[3]~20\ : std_logic;
SIGNAL \ser1|receive|Q[4]~21_combout\ : std_logic;
SIGNAL \ser1|receive|Q[4]~22\ : std_logic;
SIGNAL \ser1|receive|Q[5]~23_combout\ : std_logic;
SIGNAL \ser1|receive|Q[5]~24\ : std_logic;
SIGNAL \ser1|receive|Q[6]~25_combout\ : std_logic;
SIGNAL \ser1|receive|Q[6]~26\ : std_logic;
SIGNAL \ser1|receive|Q[7]~27_combout\ : std_logic;
SIGNAL \ser1|receive|Q[7]~28\ : std_logic;
SIGNAL \ser1|receive|Q[8]~29_combout\ : std_logic;
SIGNAL \ser1|receive|Q[8]~30\ : std_logic;
SIGNAL \ser1|receive|Q[9]~31_combout\ : std_logic;
SIGNAL \ser1|receive|Q[9]~32\ : std_logic;
SIGNAL \ser1|receive|Q[10]~33_combout\ : std_logic;
SIGNAL \ser1|receive|Q[10]~34\ : std_logic;
SIGNAL \ser1|receive|Q[11]~35_combout\ : std_logic;
SIGNAL \ser1|Equal0~2_combout\ : std_logic;
SIGNAL \ser1|receive|Q[11]~36\ : std_logic;
SIGNAL \ser1|receive|Q[12]~37_combout\ : std_logic;
SIGNAL \ser1|Equal0~0_combout\ : std_logic;
SIGNAL \ser1|Equal0~1_combout\ : std_logic;
SIGNAL \ser1|Equal0~3_combout\ : std_logic;
SIGNAL \ser1|rx_ctrl|Selector1~0_combout\ : std_logic;
SIGNAL \ser1|rx_ctrl|current_state.SYNC~q\ : std_logic;
SIGNAL \ser1|Equal1~1_combout\ : std_logic;
SIGNAL \ser1|Equal1~0_combout\ : std_logic;
SIGNAL \ser1|Equal1~2_combout\ : std_logic;
SIGNAL \ser1|rxdata|Q~8_combout\ : std_logic;
SIGNAL \ser1|rxdata|Q~1_combout\ : std_logic;
SIGNAL \ser1|rxdata|Q~7_combout\ : std_logic;
SIGNAL \ser1|rxdata|Q~6_combout\ : std_logic;
SIGNAL \ser1|rxdata|Q~5_combout\ : std_logic;
SIGNAL \ser1|rxdata|Q~4_combout\ : std_logic;
SIGNAL \ser1|rxdata|Q~3_combout\ : std_logic;
SIGNAL \ser1|rxdata|Q~2_combout\ : std_logic;
SIGNAL \ser1|rxdata|Q~0_combout\ : std_logic;
SIGNAL \ser1|rxdata|Q~10_combout\ : std_logic;
SIGNAL \ser1|rx_ctrl|Selector3~1_combout\ : std_logic;
SIGNAL \ser1|rx_ctrl|current_state.PAUSE~q\ : std_logic;
SIGNAL \ser1|rx_ctrl|Selector3~0_combout\ : std_logic;
SIGNAL \ser1|rx_ctrl|Selector2~0_combout\ : std_logic;
SIGNAL \ser1|rx_ctrl|current_state.READ~q\ : std_logic;
SIGNAL \ser1|rxdata|Q~9_combout\ : std_logic;
SIGNAL \ser1|rx_ctrl|Selector0~0_combout\ : std_logic;
SIGNAL \ser1|rx_ctrl|current_state~12_combout\ : std_logic;
SIGNAL \ser1|rx_ctrl|current_state.WAIT~q\ : std_logic;
SIGNAL \ser1|comb~0_combout\ : std_logic;
SIGNAL \ser1|rx_count|Q[1]~12_combout\ : std_logic;
SIGNAL \ser1|rx_count|Q[0]~11\ : std_logic;
SIGNAL \ser1|rx_count|Q[1]~13_combout\ : std_logic;
SIGNAL \ser1|rx_count|Q[1]~14\ : std_logic;
SIGNAL \ser1|rx_count|Q[2]~15_combout\ : std_logic;
SIGNAL \ser1|rx_count|Q[2]~16\ : std_logic;
SIGNAL \ser1|rx_count|Q[3]~17_combout\ : std_logic;
SIGNAL \ser1|rx_count|Q[3]~18\ : std_logic;
SIGNAL \ser1|rx_count|Q[4]~19_combout\ : std_logic;
SIGNAL \ser1|rx_count|Q[4]~20\ : std_logic;
SIGNAL \ser1|rx_count|Q[5]~21_combout\ : std_logic;
SIGNAL \ser1|rx_count|Q[5]~22\ : std_logic;
SIGNAL \ser1|rx_count|Q[6]~23_combout\ : std_logic;
SIGNAL \ser1|rx_count|Q[6]~24\ : std_logic;
SIGNAL \ser1|rx_count|Q[7]~25_combout\ : std_logic;
SIGNAL \ser1|rx_count|Q[7]~26\ : std_logic;
SIGNAL \ser1|rx_count|Q[8]~27_combout\ : std_logic;
SIGNAL \ser1|rx_count|Q[8]~28\ : std_logic;
SIGNAL \ser1|rx_count|Q[9]~29_combout\ : std_logic;
SIGNAL \ser1|Equal3~1_combout\ : std_logic;
SIGNAL \ser1|Equal3~0_combout\ : std_logic;
SIGNAL \ser1|Equal3~2_combout\ : std_logic;
SIGNAL \ser1|rx_ctrl|current_state~11_combout\ : std_logic;
SIGNAL \ser1|rx_ctrl|current_state.DONE~q\ : std_logic;
SIGNAL \cntrl|packet_time|Q~2_combout\ : std_logic;
SIGNAL \cntrl|packet_time|Q~0_combout\ : std_logic;
SIGNAL \cntrl|timeout_count|Q[0]~20_combout\ : std_logic;
SIGNAL \cntrl|timeout_count|Q[0]~21\ : std_logic;
SIGNAL \cntrl|timeout_count|Q[1]~22_combout\ : std_logic;
SIGNAL \cntrl|timeout_count|Q[1]~23\ : std_logic;
SIGNAL \cntrl|timeout_count|Q[2]~24_combout\ : std_logic;
SIGNAL \cntrl|timeout_count|Q[2]~25\ : std_logic;
SIGNAL \cntrl|timeout_count|Q[3]~26_combout\ : std_logic;
SIGNAL \cntrl|timeout_count|Q[3]~27\ : std_logic;
SIGNAL \cntrl|timeout_count|Q[4]~28_combout\ : std_logic;
SIGNAL \cntrl|timeout_count|Q[4]~29\ : std_logic;
SIGNAL \cntrl|timeout_count|Q[5]~30_combout\ : std_logic;
SIGNAL \cntrl|timeout_count|Q[5]~31\ : std_logic;
SIGNAL \cntrl|timeout_count|Q[6]~32_combout\ : std_logic;
SIGNAL \cntrl|timeout_count|Q[6]~33\ : std_logic;
SIGNAL \cntrl|timeout_count|Q[7]~34_combout\ : std_logic;
SIGNAL \cntrl|timeout_count|Q[7]~35\ : std_logic;
SIGNAL \cntrl|timeout_count|Q[8]~36_combout\ : std_logic;
SIGNAL \cntrl|timeout_count|Q[8]~37\ : std_logic;
SIGNAL \cntrl|timeout_count|Q[9]~38_combout\ : std_logic;
SIGNAL \cntrl|timeout_count|Q[9]~39\ : std_logic;
SIGNAL \cntrl|timeout_count|Q[10]~40_combout\ : std_logic;
SIGNAL \cntrl|timeout_count|Q[10]~41\ : std_logic;
SIGNAL \cntrl|timeout_count|Q[11]~42_combout\ : std_logic;
SIGNAL \cntrl|timeout_count|Q[11]~43\ : std_logic;
SIGNAL \cntrl|timeout_count|Q[12]~44_combout\ : std_logic;
SIGNAL \cntrl|timeout_count|Q[12]~45\ : std_logic;
SIGNAL \cntrl|timeout_count|Q[13]~46_combout\ : std_logic;
SIGNAL \cntrl|timeout_count|Q[13]~47\ : std_logic;
SIGNAL \cntrl|timeout_count|Q[14]~48_combout\ : std_logic;
SIGNAL \cntrl|timeout_count|Q[14]~49\ : std_logic;
SIGNAL \cntrl|timeout_count|Q[15]~50_combout\ : std_logic;
SIGNAL \cntrl|timeout_count|Q[15]~51\ : std_logic;
SIGNAL \cntrl|timeout_count|Q[16]~52_combout\ : std_logic;
SIGNAL \cntrl|timeout_count|Q[16]~53\ : std_logic;
SIGNAL \cntrl|timeout_count|Q[17]~54_combout\ : std_logic;
SIGNAL \cntrl|timeout_count|Q[17]~55\ : std_logic;
SIGNAL \cntrl|timeout_count|Q[18]~56_combout\ : std_logic;
SIGNAL \cntrl|timeout_count|Q[18]~57\ : std_logic;
SIGNAL \cntrl|timeout_count|Q[19]~58_combout\ : std_logic;
SIGNAL \cntrl|Equal0~0_combout\ : std_logic;
SIGNAL \cntrl|Equal0~4_combout\ : std_logic;
SIGNAL \cntrl|Equal0~3_combout\ : std_logic;
SIGNAL \cntrl|Equal0~2_combout\ : std_logic;
SIGNAL \cntrl|Equal0~1_combout\ : std_logic;
SIGNAL \cntrl|Equal0~5_combout\ : std_logic;
SIGNAL \cntrl|clr_count~combout\ : std_logic;
SIGNAL \cntrl|packet_time|Q~3_combout\ : std_logic;
SIGNAL \cntrl|packet_time|Q~1_combout\ : std_logic;
SIGNAL \cntrl|Equal1~0_combout\ : std_logic;
SIGNAL \cntrl|control|state~q\ : std_logic;
SIGNAL \ser1|received|Q~7_combout\ : std_logic;
SIGNAL \cntrl|motor_reg|Q~0_combout\ : std_logic;
SIGNAL \ser1|received|Q~8_combout\ : std_logic;
SIGNAL \ser1|received|Q[7]~feeder_combout\ : std_logic;
SIGNAL \cntrl|motor_reg|Q[4]~1_combout\ : std_logic;
SIGNAL \cntrl|front_reg|Q~0_combout\ : std_logic;
SIGNAL \cntrl|front_reg|Q[2]~1_combout\ : std_logic;
SIGNAL \ser1|received|Q~6_combout\ : std_logic;
SIGNAL \cntrl|motor_reg|Q~2_combout\ : std_logic;
SIGNAL \cntrl|front_reg|Q~2_combout\ : std_logic;
SIGNAL \ser1|received|Q~5_combout\ : std_logic;
SIGNAL \cntrl|motor_reg|Q~3_combout\ : std_logic;
SIGNAL \cntrl|front_reg|Q~3_combout\ : std_logic;
SIGNAL \ser1|received|Q~4_combout\ : std_logic;
SIGNAL \cntrl|motor_reg|Q~4_combout\ : std_logic;
SIGNAL \cntrl|front_reg|Q~4_combout\ : std_logic;
SIGNAL \ser1|received|Q~3_combout\ : std_logic;
SIGNAL \cntrl|motor_reg|Q~5_combout\ : std_logic;
SIGNAL \cntrl|front_reg|Q~5_combout\ : std_logic;
SIGNAL \ser1|received|Q~2_combout\ : std_logic;
SIGNAL \cntrl|motor_reg|Q~6_combout\ : std_logic;
SIGNAL \cntrl|front_reg|Q~6_combout\ : std_logic;
SIGNAL \ser1|received|Q~0_combout\ : std_logic;
SIGNAL \cntrl|motor_reg|Q~7_combout\ : std_logic;
SIGNAL \cntrl|front_reg|Q~7_combout\ : std_logic;
SIGNAL \m1|LessThan0~1_cout\ : std_logic;
SIGNAL \m1|LessThan0~3_cout\ : std_logic;
SIGNAL \m1|LessThan0~5_cout\ : std_logic;
SIGNAL \m1|LessThan0~7_cout\ : std_logic;
SIGNAL \m1|LessThan0~9_cout\ : std_logic;
SIGNAL \m1|LessThan0~11_cout\ : std_logic;
SIGNAL \m1|LessThan0~12_combout\ : std_logic;
SIGNAL \cntrl|servo_reg|Q[6]~feeder_combout\ : std_logic;
SIGNAL \cntrl|servo_reg|Q[1]~0_combout\ : std_logic;
SIGNAL \cntrl|servo_control[6]~0_combout\ : std_logic;
SIGNAL \cntrl|servo_out_reg|Q[6]~feeder_combout\ : std_logic;
SIGNAL \servo|chnk_cnt|Q[0]~7_combout\ : std_logic;
SIGNAL \servo|clk_cnt|Add0~0_combout\ : std_logic;
SIGNAL \servo|clk_cnt|Add0~5\ : std_logic;
SIGNAL \servo|clk_cnt|Add0~6_combout\ : std_logic;
SIGNAL \servo|clk_cnt|Add0~7\ : std_logic;
SIGNAL \servo|clk_cnt|Add0~8_combout\ : std_logic;
SIGNAL \servo|clk_cnt|Add0~9\ : std_logic;
SIGNAL \servo|clk_cnt|Add0~10_combout\ : std_logic;
SIGNAL \servo|clk_cnt|Add0~11\ : std_logic;
SIGNAL \servo|clk_cnt|Add0~12_combout\ : std_logic;
SIGNAL \servo|clk_cnt|Add0~13\ : std_logic;
SIGNAL \servo|clk_cnt|Add0~14_combout\ : std_logic;
SIGNAL \servo|clk_cnt|Q~0_combout\ : std_logic;
SIGNAL \servo|clk_cnt|Add0~15\ : std_logic;
SIGNAL \servo|clk_cnt|Add0~16_combout\ : std_logic;
SIGNAL \servo|clk_cnt|Add0~17\ : std_logic;
SIGNAL \servo|clk_cnt|Add0~18_combout\ : std_logic;
SIGNAL \servo|clk_cnt|Q~1_combout\ : std_logic;
SIGNAL \servo|clk_cnt|Add0~19\ : std_logic;
SIGNAL \servo|clk_cnt|Add0~20_combout\ : std_logic;
SIGNAL \servo|clk_cnt|Q~2_combout\ : std_logic;
SIGNAL \servo|clk_cnt|Add0~21\ : std_logic;
SIGNAL \servo|clk_cnt|Add0~22_combout\ : std_logic;
SIGNAL \servo|clk_cnt|Q~3_combout\ : std_logic;
SIGNAL \servo|clk_cnt|Add0~23\ : std_logic;
SIGNAL \servo|clk_cnt|Add0~24_combout\ : std_logic;
SIGNAL \servo|clk_cnt|Q~4_combout\ : std_logic;
SIGNAL \servo|Equal0~1_combout\ : std_logic;
SIGNAL \servo|Equal0~0_combout\ : std_logic;
SIGNAL \servo|Equal0~2_combout\ : std_logic;
SIGNAL \servo|clk_cnt|Equal0~0_combout\ : std_logic;
SIGNAL \servo|clk_cnt|Q~5_combout\ : std_logic;
SIGNAL \servo|clk_cnt|Add0~1\ : std_logic;
SIGNAL \servo|clk_cnt|Add0~2_combout\ : std_logic;
SIGNAL \servo|clk_cnt|Add0~3\ : std_logic;
SIGNAL \servo|clk_cnt|Add0~4_combout\ : std_logic;
SIGNAL \servo|clk_cnt|Q~6_combout\ : std_logic;
SIGNAL \servo|Equal0~3_combout\ : std_logic;
SIGNAL \servo|chnk_cnt|Q[0]~8\ : std_logic;
SIGNAL \servo|chnk_cnt|Q[1]~9_combout\ : std_logic;
SIGNAL \servo|chnk_cnt|Q[1]~10\ : std_logic;
SIGNAL \servo|chnk_cnt|Q[2]~11_combout\ : std_logic;
SIGNAL \servo|chnk_cnt|Q[2]~12\ : std_logic;
SIGNAL \servo|chnk_cnt|Q[3]~13_combout\ : std_logic;
SIGNAL \servo|chnk_cnt|Q[3]~14\ : std_logic;
SIGNAL \servo|chnk_cnt|Q[4]~15_combout\ : std_logic;
SIGNAL \servo|Equal1~1_combout\ : std_logic;
SIGNAL \servo|chnk_cnt|Q[4]~16\ : std_logic;
SIGNAL \servo|chnk_cnt|Q[5]~17_combout\ : std_logic;
SIGNAL \servo|chnk_cnt|Q[5]~18\ : std_logic;
SIGNAL \servo|chnk_cnt|Q[6]~19_combout\ : std_logic;
SIGNAL \servo|Equal1~0_combout\ : std_logic;
SIGNAL \cntrl|load_servo_pwm~combout\ : std_logic;
SIGNAL \cntrl|servo_reg|Q[5]~feeder_combout\ : std_logic;
SIGNAL \cntrl|servo_control[5]~1_combout\ : std_logic;
SIGNAL \cntrl|servo_reg|Q[4]~feeder_combout\ : std_logic;
SIGNAL \cntrl|servo_control[4]~2_combout\ : std_logic;
SIGNAL \cntrl|servo_reg|Q[3]~feeder_combout\ : std_logic;
SIGNAL \cntrl|servo_control[3]~3_combout\ : std_logic;
SIGNAL \cntrl|servo_control[2]~4_combout\ : std_logic;
SIGNAL \cntrl|servo_out_reg|Q[2]~feeder_combout\ : std_logic;
SIGNAL \cntrl|servo_reg|Q[1]~feeder_combout\ : std_logic;
SIGNAL \cntrl|servo_control[1]~5_combout\ : std_logic;
SIGNAL \cntrl|servo_reg|Q[0]~feeder_combout\ : std_logic;
SIGNAL \cntrl|servo_control[0]~6_combout\ : std_logic;
SIGNAL \servo|LessThan0~1_cout\ : std_logic;
SIGNAL \servo|LessThan0~3_cout\ : std_logic;
SIGNAL \servo|LessThan0~5_cout\ : std_logic;
SIGNAL \servo|LessThan0~7_cout\ : std_logic;
SIGNAL \servo|LessThan0~9_cout\ : std_logic;
SIGNAL \servo|LessThan0~11_cout\ : std_logic;
SIGNAL \servo|LessThan0~12_combout\ : std_logic;
SIGNAL \servo|clk_cnt|Q\ : std_logic_vector(12 DOWNTO 0);
SIGNAL \cntrl|motor_reg|Q\ : std_logic_vector(6 DOWNTO 0);
SIGNAL \cntrl|timeout_count|Q\ : std_logic_vector(19 DOWNTO 0);
SIGNAL \cntrl|packet_time|Q\ : std_logic_vector(2 DOWNTO 0);
SIGNAL \ser1|receive|Q\ : std_logic_vector(12 DOWNTO 0);
SIGNAL \servo|chnk_cnt|Q\ : std_logic_vector(6 DOWNTO 0);
SIGNAL \cntrl|servo_reg|Q\ : std_logic_vector(6 DOWNTO 0);
SIGNAL \cntrl|front_reg|Q\ : std_logic_vector(6 DOWNTO 0);
SIGNAL \cntrl|servo_out_reg|Q\ : std_logic_vector(6 DOWNTO 0);
SIGNAL \count|Q\ : std_logic_vector(25 DOWNTO 0);
SIGNAL \ser1|received|Q\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \ser1|rxdata|Q\ : std_logic_vector(9 DOWNTO 0);
SIGNAL \ser1|txdata|Q\ : std_logic_vector(9 DOWNTO 0);
SIGNAL \ser1|transmit|Q\ : std_logic_vector(12 DOWNTO 0);
SIGNAL \ser1|rx_count|Q\ : std_logic_vector(9 DOWNTO 0);
SIGNAL \m1|clk_cnt|Q\ : std_logic_vector(11 DOWNTO 0);
SIGNAL \m1|chnk_cnt|Q\ : std_logic_vector(6 DOWNTO 0);
SIGNAL \ALT_INV_KEY[1]~input_o\ : std_logic;
SIGNAL \ser1|received|ALT_INV_Q[0]~1_combout\ : std_logic;

BEGIN

ww_CLOCK_50 <= CLOCK_50;
LED <= ww_LED;
ww_KEY <= KEY;
ww_SW <= SW;
ww_GPIO_0_IN <= GPIO_0_IN;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\CLOCK_50~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \CLOCK_50~input_o\);
\ALT_INV_KEY[1]~input_o\ <= NOT \KEY[1]~input_o\;
\ser1|received|ALT_INV_Q[0]~1_combout\ <= NOT \ser1|received|Q[0]~1_combout\;

-- Location: IOOBUF_X7_Y34_N9
\GPIO_0_D[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "true")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => \GPIO_0_D[2]~output_o\);

-- Location: IOOBUF_X3_Y34_N2
\GPIO_0_D[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "true")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => \GPIO_0_D[4]~output_o\);

-- Location: IOOBUF_X9_Y34_N23
\GPIO_0_D[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "true")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => \GPIO_0_D[6]~output_o\);

-- Location: IOOBUF_X14_Y34_N23
\GPIO_0_D[8]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "true")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => \GPIO_0_D[8]~output_o\);

-- Location: IOOBUF_X5_Y34_N16
\GPIO_0_D[9]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "true")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => \GPIO_0_D[9]~output_o\);

-- Location: IOOBUF_X16_Y34_N9
\GPIO_0_D[10]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "true")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => \GPIO_0_D[10]~output_o\);

-- Location: IOOBUF_X16_Y34_N2
\GPIO_0_D[11]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "true")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => \GPIO_0_D[11]~output_o\);

-- Location: IOOBUF_X18_Y34_N2
\GPIO_0_D[12]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "true")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => \GPIO_0_D[12]~output_o\);

-- Location: IOOBUF_X9_Y34_N9
\GPIO_0_D[13]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "true")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => \GPIO_0_D[13]~output_o\);

-- Location: IOOBUF_X20_Y34_N23
\GPIO_0_D[14]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "true")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => \GPIO_0_D[14]~output_o\);

-- Location: IOOBUF_X18_Y34_N23
\GPIO_0_D[15]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "true")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => \GPIO_0_D[15]~output_o\);

-- Location: IOOBUF_X23_Y34_N16
\GPIO_0_D[16]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "true")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => \GPIO_0_D[16]~output_o\);

-- Location: IOOBUF_X14_Y34_N16
\GPIO_0_D[17]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "true")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => \GPIO_0_D[17]~output_o\);

-- Location: IOOBUF_X16_Y34_N16
\GPIO_0_D[18]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "true")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => \GPIO_0_D[18]~output_o\);

-- Location: IOOBUF_X23_Y34_N23
\GPIO_0_D[19]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "true")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => \GPIO_0_D[19]~output_o\);

-- Location: IOOBUF_X20_Y34_N9
\GPIO_0_D[20]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "true")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => \GPIO_0_D[20]~output_o\);

-- Location: IOOBUF_X20_Y34_N16
\GPIO_0_D[21]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "true")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => \GPIO_0_D[21]~output_o\);

-- Location: IOOBUF_X34_Y34_N2
\GPIO_0_D[22]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "true")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => \GPIO_0_D[22]~output_o\);

-- Location: IOOBUF_X29_Y34_N16
\GPIO_0_D[23]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "true")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => \GPIO_0_D[23]~output_o\);

-- Location: IOOBUF_X31_Y34_N2
\GPIO_0_D[24]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "true")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => \GPIO_0_D[24]~output_o\);

-- Location: IOOBUF_X31_Y34_N9
\GPIO_0_D[25]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "true")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => \GPIO_0_D[25]~output_o\);

-- Location: IOOBUF_X45_Y34_N9
\GPIO_0_D[26]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "true")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => \GPIO_0_D[26]~output_o\);

-- Location: IOOBUF_X45_Y34_N16
\GPIO_0_D[27]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "true")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => \GPIO_0_D[27]~output_o\);

-- Location: IOOBUF_X38_Y34_N2
\GPIO_0_D[28]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "true")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => \GPIO_0_D[28]~output_o\);

-- Location: IOOBUF_X40_Y34_N9
\GPIO_0_D[29]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "true")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => \GPIO_0_D[29]~output_o\);

-- Location: IOOBUF_X43_Y34_N16
\GPIO_0_D[30]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "true")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => \GPIO_0_D[30]~output_o\);

-- Location: IOOBUF_X51_Y34_N16
\GPIO_0_D[31]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "true")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => \GPIO_0_D[31]~output_o\);

-- Location: IOOBUF_X51_Y34_N23
\GPIO_0_D[32]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "true")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => \GPIO_0_D[32]~output_o\);

-- Location: IOOBUF_X43_Y34_N23
\GPIO_0_D[33]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "true")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => \GPIO_0_D[33]~output_o\);

-- Location: IOOBUF_X1_Y34_N9
\GPIO_0_D[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ser1|tx_sel|Y~0_combout\,
	oe => VCC,
	devoe => ww_devoe,
	o => \GPIO_0_D[0]~output_o\);

-- Location: IOOBUF_X1_Y34_N2
\GPIO_0_D[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "true")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => \GPIO_0_D[1]~output_o\);

-- Location: IOOBUF_X7_Y34_N16
\GPIO_0_D[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \m1|LessThan0~12_combout\,
	oe => VCC,
	devoe => ww_devoe,
	o => \GPIO_0_D[3]~output_o\);

-- Location: IOOBUF_X7_Y34_N2
\GPIO_0_D[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \m1|LessThan0~12_combout\,
	oe => VCC,
	devoe => ww_devoe,
	o => \GPIO_0_D[5]~output_o\);

-- Location: IOOBUF_X11_Y34_N2
\GPIO_0_D[7]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \servo|LessThan0~12_combout\,
	oe => VCC,
	devoe => ww_devoe,
	o => \GPIO_0_D[7]~output_o\);

-- Location: IOOBUF_X38_Y34_N16
\LED[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ser1|received|Q\(0),
	devoe => ww_devoe,
	o => \LED[0]~output_o\);

-- Location: IOOBUF_X49_Y34_N2
\LED[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ser1|received|Q\(1),
	devoe => ww_devoe,
	o => \LED[1]~output_o\);

-- Location: IOOBUF_X49_Y34_N9
\LED[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ser1|received|Q\(2),
	devoe => ww_devoe,
	o => \LED[2]~output_o\);

-- Location: IOOBUF_X40_Y34_N2
\LED[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ser1|received|Q\(3),
	devoe => ww_devoe,
	o => \LED[3]~output_o\);

-- Location: IOOBUF_X0_Y25_N9
\LED[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ser1|received|Q\(4),
	devoe => ww_devoe,
	o => \LED[4]~output_o\);

-- Location: IOOBUF_X0_Y26_N16
\LED[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ser1|received|Q\(5),
	devoe => ww_devoe,
	o => \LED[5]~output_o\);

-- Location: IOOBUF_X0_Y28_N9
\LED[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ser1|received|Q\(6),
	devoe => ww_devoe,
	o => \LED[6]~output_o\);

-- Location: IOOBUF_X0_Y10_N23
\LED[7]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ser1|received|Q\(7),
	devoe => ww_devoe,
	o => \LED[7]~output_o\);

-- Location: IOIBUF_X27_Y0_N22
\CLOCK_50~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_CLOCK_50,
	o => \CLOCK_50~input_o\);

-- Location: CLKCTRL_G18
\CLOCK_50~inputclkctrl\ : cycloneive_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \CLOCK_50~inputclkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \CLOCK_50~inputclkctrl_outclk\);

-- Location: IOIBUF_X0_Y16_N8
\KEY[1]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_KEY(1),
	o => \KEY[1]~input_o\);

-- Location: LCCOMB_X30_Y20_N4
\ser1|transmit|Q[0]~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \ser1|transmit|Q[0]~13_combout\ = \ser1|transmit|Q\(0) $ (VCC)
-- \ser1|transmit|Q[0]~14\ = CARRY(\ser1|transmit|Q\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \ser1|transmit|Q\(0),
	datad => VCC,
	combout => \ser1|transmit|Q[0]~13_combout\,
	cout => \ser1|transmit|Q[0]~14\);

-- Location: LCCOMB_X30_Y21_N24
\ser1|tx_ctrl|start_tx~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \ser1|tx_ctrl|start_tx~0_combout\ = (!\ser1|tx_ctrl|current_state.PAUSE~q\ & \ser1|tx_ctrl|current_state.WAIT~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \ser1|tx_ctrl|current_state.PAUSE~q\,
	datad => \ser1|tx_ctrl|current_state.WAIT~q\,
	combout => \ser1|tx_ctrl|start_tx~0_combout\);

-- Location: FF_X30_Y20_N5
\ser1|transmit|Q[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \ser1|transmit|Q[0]~13_combout\,
	sclr => \ser1|tx_ctrl|start_tx~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ser1|transmit|Q\(0));

-- Location: LCCOMB_X30_Y20_N6
\ser1|transmit|Q[1]~15\ : cycloneive_lcell_comb
-- Equation(s):
-- \ser1|transmit|Q[1]~15_combout\ = (\ser1|transmit|Q\(1) & (!\ser1|transmit|Q[0]~14\)) # (!\ser1|transmit|Q\(1) & ((\ser1|transmit|Q[0]~14\) # (GND)))
-- \ser1|transmit|Q[1]~16\ = CARRY((!\ser1|transmit|Q[0]~14\) # (!\ser1|transmit|Q\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \ser1|transmit|Q\(1),
	datad => VCC,
	cin => \ser1|transmit|Q[0]~14\,
	combout => \ser1|transmit|Q[1]~15_combout\,
	cout => \ser1|transmit|Q[1]~16\);

-- Location: FF_X30_Y20_N7
\ser1|transmit|Q[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \ser1|transmit|Q[1]~15_combout\,
	sclr => \ser1|tx_ctrl|start_tx~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ser1|transmit|Q\(1));

-- Location: LCCOMB_X30_Y20_N8
\ser1|transmit|Q[2]~17\ : cycloneive_lcell_comb
-- Equation(s):
-- \ser1|transmit|Q[2]~17_combout\ = (\ser1|transmit|Q\(2) & (\ser1|transmit|Q[1]~16\ $ (GND))) # (!\ser1|transmit|Q\(2) & (!\ser1|transmit|Q[1]~16\ & VCC))
-- \ser1|transmit|Q[2]~18\ = CARRY((\ser1|transmit|Q\(2) & !\ser1|transmit|Q[1]~16\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \ser1|transmit|Q\(2),
	datad => VCC,
	cin => \ser1|transmit|Q[1]~16\,
	combout => \ser1|transmit|Q[2]~17_combout\,
	cout => \ser1|transmit|Q[2]~18\);

-- Location: FF_X30_Y20_N9
\ser1|transmit|Q[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \ser1|transmit|Q[2]~17_combout\,
	sclr => \ser1|tx_ctrl|start_tx~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ser1|transmit|Q\(2));

-- Location: LCCOMB_X30_Y20_N10
\ser1|transmit|Q[3]~19\ : cycloneive_lcell_comb
-- Equation(s):
-- \ser1|transmit|Q[3]~19_combout\ = (\ser1|transmit|Q\(3) & (!\ser1|transmit|Q[2]~18\)) # (!\ser1|transmit|Q\(3) & ((\ser1|transmit|Q[2]~18\) # (GND)))
-- \ser1|transmit|Q[3]~20\ = CARRY((!\ser1|transmit|Q[2]~18\) # (!\ser1|transmit|Q\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \ser1|transmit|Q\(3),
	datad => VCC,
	cin => \ser1|transmit|Q[2]~18\,
	combout => \ser1|transmit|Q[3]~19_combout\,
	cout => \ser1|transmit|Q[3]~20\);

-- Location: FF_X30_Y20_N11
\ser1|transmit|Q[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \ser1|transmit|Q[3]~19_combout\,
	sclr => \ser1|tx_ctrl|start_tx~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ser1|transmit|Q\(3));

-- Location: LCCOMB_X30_Y20_N12
\ser1|transmit|Q[4]~21\ : cycloneive_lcell_comb
-- Equation(s):
-- \ser1|transmit|Q[4]~21_combout\ = (\ser1|transmit|Q\(4) & (\ser1|transmit|Q[3]~20\ $ (GND))) # (!\ser1|transmit|Q\(4) & (!\ser1|transmit|Q[3]~20\ & VCC))
-- \ser1|transmit|Q[4]~22\ = CARRY((\ser1|transmit|Q\(4) & !\ser1|transmit|Q[3]~20\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \ser1|transmit|Q\(4),
	datad => VCC,
	cin => \ser1|transmit|Q[3]~20\,
	combout => \ser1|transmit|Q[4]~21_combout\,
	cout => \ser1|transmit|Q[4]~22\);

-- Location: FF_X30_Y20_N13
\ser1|transmit|Q[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \ser1|transmit|Q[4]~21_combout\,
	sclr => \ser1|tx_ctrl|start_tx~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ser1|transmit|Q\(4));

-- Location: LCCOMB_X30_Y20_N14
\ser1|transmit|Q[5]~23\ : cycloneive_lcell_comb
-- Equation(s):
-- \ser1|transmit|Q[5]~23_combout\ = (\ser1|transmit|Q\(5) & (!\ser1|transmit|Q[4]~22\)) # (!\ser1|transmit|Q\(5) & ((\ser1|transmit|Q[4]~22\) # (GND)))
-- \ser1|transmit|Q[5]~24\ = CARRY((!\ser1|transmit|Q[4]~22\) # (!\ser1|transmit|Q\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \ser1|transmit|Q\(5),
	datad => VCC,
	cin => \ser1|transmit|Q[4]~22\,
	combout => \ser1|transmit|Q[5]~23_combout\,
	cout => \ser1|transmit|Q[5]~24\);

-- Location: FF_X30_Y20_N15
\ser1|transmit|Q[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \ser1|transmit|Q[5]~23_combout\,
	sclr => \ser1|tx_ctrl|start_tx~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ser1|transmit|Q\(5));

-- Location: LCCOMB_X30_Y20_N16
\ser1|transmit|Q[6]~25\ : cycloneive_lcell_comb
-- Equation(s):
-- \ser1|transmit|Q[6]~25_combout\ = (\ser1|transmit|Q\(6) & (\ser1|transmit|Q[5]~24\ $ (GND))) # (!\ser1|transmit|Q\(6) & (!\ser1|transmit|Q[5]~24\ & VCC))
-- \ser1|transmit|Q[6]~26\ = CARRY((\ser1|transmit|Q\(6) & !\ser1|transmit|Q[5]~24\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \ser1|transmit|Q\(6),
	datad => VCC,
	cin => \ser1|transmit|Q[5]~24\,
	combout => \ser1|transmit|Q[6]~25_combout\,
	cout => \ser1|transmit|Q[6]~26\);

-- Location: FF_X30_Y20_N17
\ser1|transmit|Q[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \ser1|transmit|Q[6]~25_combout\,
	sclr => \ser1|tx_ctrl|start_tx~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ser1|transmit|Q\(6));

-- Location: LCCOMB_X30_Y20_N18
\ser1|transmit|Q[7]~27\ : cycloneive_lcell_comb
-- Equation(s):
-- \ser1|transmit|Q[7]~27_combout\ = (\ser1|transmit|Q\(7) & (!\ser1|transmit|Q[6]~26\)) # (!\ser1|transmit|Q\(7) & ((\ser1|transmit|Q[6]~26\) # (GND)))
-- \ser1|transmit|Q[7]~28\ = CARRY((!\ser1|transmit|Q[6]~26\) # (!\ser1|transmit|Q\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \ser1|transmit|Q\(7),
	datad => VCC,
	cin => \ser1|transmit|Q[6]~26\,
	combout => \ser1|transmit|Q[7]~27_combout\,
	cout => \ser1|transmit|Q[7]~28\);

-- Location: FF_X30_Y20_N19
\ser1|transmit|Q[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \ser1|transmit|Q[7]~27_combout\,
	sclr => \ser1|tx_ctrl|start_tx~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ser1|transmit|Q\(7));

-- Location: LCCOMB_X30_Y20_N20
\ser1|transmit|Q[8]~29\ : cycloneive_lcell_comb
-- Equation(s):
-- \ser1|transmit|Q[8]~29_combout\ = (\ser1|transmit|Q\(8) & (\ser1|transmit|Q[7]~28\ $ (GND))) # (!\ser1|transmit|Q\(8) & (!\ser1|transmit|Q[7]~28\ & VCC))
-- \ser1|transmit|Q[8]~30\ = CARRY((\ser1|transmit|Q\(8) & !\ser1|transmit|Q[7]~28\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \ser1|transmit|Q\(8),
	datad => VCC,
	cin => \ser1|transmit|Q[7]~28\,
	combout => \ser1|transmit|Q[8]~29_combout\,
	cout => \ser1|transmit|Q[8]~30\);

-- Location: FF_X30_Y20_N21
\ser1|transmit|Q[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \ser1|transmit|Q[8]~29_combout\,
	sclr => \ser1|tx_ctrl|start_tx~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ser1|transmit|Q\(8));

-- Location: LCCOMB_X30_Y20_N22
\ser1|transmit|Q[9]~31\ : cycloneive_lcell_comb
-- Equation(s):
-- \ser1|transmit|Q[9]~31_combout\ = (\ser1|transmit|Q\(9) & (!\ser1|transmit|Q[8]~30\)) # (!\ser1|transmit|Q\(9) & ((\ser1|transmit|Q[8]~30\) # (GND)))
-- \ser1|transmit|Q[9]~32\ = CARRY((!\ser1|transmit|Q[8]~30\) # (!\ser1|transmit|Q\(9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \ser1|transmit|Q\(9),
	datad => VCC,
	cin => \ser1|transmit|Q[8]~30\,
	combout => \ser1|transmit|Q[9]~31_combout\,
	cout => \ser1|transmit|Q[9]~32\);

-- Location: FF_X30_Y20_N23
\ser1|transmit|Q[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \ser1|transmit|Q[9]~31_combout\,
	sclr => \ser1|tx_ctrl|start_tx~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ser1|transmit|Q\(9));

-- Location: LCCOMB_X30_Y20_N24
\ser1|transmit|Q[10]~33\ : cycloneive_lcell_comb
-- Equation(s):
-- \ser1|transmit|Q[10]~33_combout\ = (\ser1|transmit|Q\(10) & (\ser1|transmit|Q[9]~32\ $ (GND))) # (!\ser1|transmit|Q\(10) & (!\ser1|transmit|Q[9]~32\ & VCC))
-- \ser1|transmit|Q[10]~34\ = CARRY((\ser1|transmit|Q\(10) & !\ser1|transmit|Q[9]~32\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \ser1|transmit|Q\(10),
	datad => VCC,
	cin => \ser1|transmit|Q[9]~32\,
	combout => \ser1|transmit|Q[10]~33_combout\,
	cout => \ser1|transmit|Q[10]~34\);

-- Location: FF_X30_Y20_N25
\ser1|transmit|Q[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \ser1|transmit|Q[10]~33_combout\,
	sclr => \ser1|tx_ctrl|start_tx~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ser1|transmit|Q\(10));

-- Location: LCCOMB_X30_Y20_N26
\ser1|transmit|Q[11]~35\ : cycloneive_lcell_comb
-- Equation(s):
-- \ser1|transmit|Q[11]~35_combout\ = (\ser1|transmit|Q\(11) & (!\ser1|transmit|Q[10]~34\)) # (!\ser1|transmit|Q\(11) & ((\ser1|transmit|Q[10]~34\) # (GND)))
-- \ser1|transmit|Q[11]~36\ = CARRY((!\ser1|transmit|Q[10]~34\) # (!\ser1|transmit|Q\(11)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \ser1|transmit|Q\(11),
	datad => VCC,
	cin => \ser1|transmit|Q[10]~34\,
	combout => \ser1|transmit|Q[11]~35_combout\,
	cout => \ser1|transmit|Q[11]~36\);

-- Location: FF_X30_Y20_N27
\ser1|transmit|Q[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \ser1|transmit|Q[11]~35_combout\,
	sclr => \ser1|tx_ctrl|start_tx~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ser1|transmit|Q\(11));

-- Location: LCCOMB_X30_Y20_N2
\ser1|Equal2~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \ser1|Equal2~2_combout\ = (\ser1|transmit|Q\(9)) # (((\ser1|transmit|Q\(11)) # (\ser1|transmit|Q\(8))) # (!\ser1|transmit|Q\(10)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ser1|transmit|Q\(9),
	datab => \ser1|transmit|Q\(10),
	datac => \ser1|transmit|Q\(11),
	datad => \ser1|transmit|Q\(8),
	combout => \ser1|Equal2~2_combout\);

-- Location: LCCOMB_X30_Y20_N28
\ser1|transmit|Q[12]~37\ : cycloneive_lcell_comb
-- Equation(s):
-- \ser1|transmit|Q[12]~37_combout\ = \ser1|transmit|Q[11]~36\ $ (!\ser1|transmit|Q\(12))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \ser1|transmit|Q\(12),
	cin => \ser1|transmit|Q[11]~36\,
	combout => \ser1|transmit|Q[12]~37_combout\);

-- Location: FF_X30_Y20_N29
\ser1|transmit|Q[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \ser1|transmit|Q[12]~37_combout\,
	sclr => \ser1|tx_ctrl|start_tx~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ser1|transmit|Q\(12));

-- Location: LCCOMB_X30_Y20_N0
\ser1|Equal2~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \ser1|Equal2~0_combout\ = (\ser1|transmit|Q\(3)) # (((!\ser1|transmit|Q\(1)) # (!\ser1|transmit|Q\(0))) # (!\ser1|transmit|Q\(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ser1|transmit|Q\(3),
	datab => \ser1|transmit|Q\(2),
	datac => \ser1|transmit|Q\(0),
	datad => \ser1|transmit|Q\(1),
	combout => \ser1|Equal2~0_combout\);

-- Location: LCCOMB_X30_Y20_N30
\ser1|Equal2~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \ser1|Equal2~1_combout\ = ((\ser1|transmit|Q\(7)) # ((\ser1|transmit|Q\(5)) # (!\ser1|transmit|Q\(6)))) # (!\ser1|transmit|Q\(4))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ser1|transmit|Q\(4),
	datab => \ser1|transmit|Q\(7),
	datac => \ser1|transmit|Q\(5),
	datad => \ser1|transmit|Q\(6),
	combout => \ser1|Equal2~1_combout\);

-- Location: LCCOMB_X31_Y20_N0
\ser1|Equal2~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \ser1|Equal2~3_combout\ = (\ser1|Equal2~2_combout\) # (((\ser1|Equal2~0_combout\) # (\ser1|Equal2~1_combout\)) # (!\ser1|transmit|Q\(12)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ser1|Equal2~2_combout\,
	datab => \ser1|transmit|Q\(12),
	datac => \ser1|Equal2~0_combout\,
	datad => \ser1|Equal2~1_combout\,
	combout => \ser1|Equal2~3_combout\);

-- Location: LCCOMB_X30_Y21_N26
\ser1|tx_ctrl|current_state~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \ser1|tx_ctrl|current_state~10_combout\ = (\KEY[1]~input_o\ & (\ser1|tx_ctrl|current_state.PAUSE~q\ & (!\ser1|Equal4~2_combout\ & !\ser1|Equal2~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \KEY[1]~input_o\,
	datab => \ser1|tx_ctrl|current_state.PAUSE~q\,
	datac => \ser1|Equal4~2_combout\,
	datad => \ser1|Equal2~3_combout\,
	combout => \ser1|tx_ctrl|current_state~10_combout\);

-- Location: FF_X30_Y21_N27
\ser1|tx_ctrl|current_state.SHIFT\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \ser1|tx_ctrl|current_state~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ser1|tx_ctrl|current_state.SHIFT~q\);

-- Location: LCCOMB_X29_Y22_N6
\count|Q[0]~26\ : cycloneive_lcell_comb
-- Equation(s):
-- \count|Q[0]~26_combout\ = \count|Q\(0) $ (VCC)
-- \count|Q[0]~27\ = CARRY(\count|Q\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \count|Q\(0),
	datad => VCC,
	combout => \count|Q[0]~26_combout\,
	cout => \count|Q[0]~27\);

-- Location: FF_X29_Y22_N7
\count|Q[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \count|Q[0]~26_combout\,
	sclr => \ALT_INV_KEY[1]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \count|Q\(0));

-- Location: LCCOMB_X29_Y22_N8
\count|Q[1]~28\ : cycloneive_lcell_comb
-- Equation(s):
-- \count|Q[1]~28_combout\ = (\count|Q\(1) & (!\count|Q[0]~27\)) # (!\count|Q\(1) & ((\count|Q[0]~27\) # (GND)))
-- \count|Q[1]~29\ = CARRY((!\count|Q[0]~27\) # (!\count|Q\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \count|Q\(1),
	datad => VCC,
	cin => \count|Q[0]~27\,
	combout => \count|Q[1]~28_combout\,
	cout => \count|Q[1]~29\);

-- Location: FF_X29_Y22_N9
\count|Q[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \count|Q[1]~28_combout\,
	sclr => \ALT_INV_KEY[1]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \count|Q\(1));

-- Location: LCCOMB_X29_Y22_N10
\count|Q[2]~30\ : cycloneive_lcell_comb
-- Equation(s):
-- \count|Q[2]~30_combout\ = (\count|Q\(2) & (\count|Q[1]~29\ $ (GND))) # (!\count|Q\(2) & (!\count|Q[1]~29\ & VCC))
-- \count|Q[2]~31\ = CARRY((\count|Q\(2) & !\count|Q[1]~29\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \count|Q\(2),
	datad => VCC,
	cin => \count|Q[1]~29\,
	combout => \count|Q[2]~30_combout\,
	cout => \count|Q[2]~31\);

-- Location: FF_X29_Y22_N11
\count|Q[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \count|Q[2]~30_combout\,
	sclr => \ALT_INV_KEY[1]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \count|Q\(2));

-- Location: LCCOMB_X29_Y22_N12
\count|Q[3]~32\ : cycloneive_lcell_comb
-- Equation(s):
-- \count|Q[3]~32_combout\ = (\count|Q\(3) & (!\count|Q[2]~31\)) # (!\count|Q\(3) & ((\count|Q[2]~31\) # (GND)))
-- \count|Q[3]~33\ = CARRY((!\count|Q[2]~31\) # (!\count|Q\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \count|Q\(3),
	datad => VCC,
	cin => \count|Q[2]~31\,
	combout => \count|Q[3]~32_combout\,
	cout => \count|Q[3]~33\);

-- Location: FF_X29_Y22_N13
\count|Q[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \count|Q[3]~32_combout\,
	sclr => \ALT_INV_KEY[1]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \count|Q\(3));

-- Location: LCCOMB_X29_Y22_N14
\count|Q[4]~34\ : cycloneive_lcell_comb
-- Equation(s):
-- \count|Q[4]~34_combout\ = (\count|Q\(4) & (\count|Q[3]~33\ $ (GND))) # (!\count|Q\(4) & (!\count|Q[3]~33\ & VCC))
-- \count|Q[4]~35\ = CARRY((\count|Q\(4) & !\count|Q[3]~33\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \count|Q\(4),
	datad => VCC,
	cin => \count|Q[3]~33\,
	combout => \count|Q[4]~34_combout\,
	cout => \count|Q[4]~35\);

-- Location: FF_X29_Y22_N15
\count|Q[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \count|Q[4]~34_combout\,
	sclr => \ALT_INV_KEY[1]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \count|Q\(4));

-- Location: LCCOMB_X29_Y22_N16
\count|Q[5]~36\ : cycloneive_lcell_comb
-- Equation(s):
-- \count|Q[5]~36_combout\ = (\count|Q\(5) & (!\count|Q[4]~35\)) # (!\count|Q\(5) & ((\count|Q[4]~35\) # (GND)))
-- \count|Q[5]~37\ = CARRY((!\count|Q[4]~35\) # (!\count|Q\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \count|Q\(5),
	datad => VCC,
	cin => \count|Q[4]~35\,
	combout => \count|Q[5]~36_combout\,
	cout => \count|Q[5]~37\);

-- Location: FF_X29_Y22_N17
\count|Q[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \count|Q[5]~36_combout\,
	sclr => \ALT_INV_KEY[1]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \count|Q\(5));

-- Location: LCCOMB_X29_Y22_N18
\count|Q[6]~38\ : cycloneive_lcell_comb
-- Equation(s):
-- \count|Q[6]~38_combout\ = (\count|Q\(6) & (\count|Q[5]~37\ $ (GND))) # (!\count|Q\(6) & (!\count|Q[5]~37\ & VCC))
-- \count|Q[6]~39\ = CARRY((\count|Q\(6) & !\count|Q[5]~37\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \count|Q\(6),
	datad => VCC,
	cin => \count|Q[5]~37\,
	combout => \count|Q[6]~38_combout\,
	cout => \count|Q[6]~39\);

-- Location: FF_X29_Y22_N19
\count|Q[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \count|Q[6]~38_combout\,
	sclr => \ALT_INV_KEY[1]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \count|Q\(6));

-- Location: LCCOMB_X29_Y22_N20
\count|Q[7]~40\ : cycloneive_lcell_comb
-- Equation(s):
-- \count|Q[7]~40_combout\ = (\count|Q\(7) & (!\count|Q[6]~39\)) # (!\count|Q\(7) & ((\count|Q[6]~39\) # (GND)))
-- \count|Q[7]~41\ = CARRY((!\count|Q[6]~39\) # (!\count|Q\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \count|Q\(7),
	datad => VCC,
	cin => \count|Q[6]~39\,
	combout => \count|Q[7]~40_combout\,
	cout => \count|Q[7]~41\);

-- Location: FF_X29_Y22_N21
\count|Q[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \count|Q[7]~40_combout\,
	sclr => \ALT_INV_KEY[1]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \count|Q\(7));

-- Location: LCCOMB_X29_Y22_N22
\count|Q[8]~42\ : cycloneive_lcell_comb
-- Equation(s):
-- \count|Q[8]~42_combout\ = (\count|Q\(8) & (\count|Q[7]~41\ $ (GND))) # (!\count|Q\(8) & (!\count|Q[7]~41\ & VCC))
-- \count|Q[8]~43\ = CARRY((\count|Q\(8) & !\count|Q[7]~41\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \count|Q\(8),
	datad => VCC,
	cin => \count|Q[7]~41\,
	combout => \count|Q[8]~42_combout\,
	cout => \count|Q[8]~43\);

-- Location: FF_X29_Y22_N23
\count|Q[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \count|Q[8]~42_combout\,
	sclr => \ALT_INV_KEY[1]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \count|Q\(8));

-- Location: LCCOMB_X29_Y22_N24
\count|Q[9]~44\ : cycloneive_lcell_comb
-- Equation(s):
-- \count|Q[9]~44_combout\ = (\count|Q\(9) & (!\count|Q[8]~43\)) # (!\count|Q\(9) & ((\count|Q[8]~43\) # (GND)))
-- \count|Q[9]~45\ = CARRY((!\count|Q[8]~43\) # (!\count|Q\(9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \count|Q\(9),
	datad => VCC,
	cin => \count|Q[8]~43\,
	combout => \count|Q[9]~44_combout\,
	cout => \count|Q[9]~45\);

-- Location: FF_X29_Y22_N25
\count|Q[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \count|Q[9]~44_combout\,
	sclr => \ALT_INV_KEY[1]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \count|Q\(9));

-- Location: LCCOMB_X29_Y22_N26
\count|Q[10]~46\ : cycloneive_lcell_comb
-- Equation(s):
-- \count|Q[10]~46_combout\ = (\count|Q\(10) & (\count|Q[9]~45\ $ (GND))) # (!\count|Q\(10) & (!\count|Q[9]~45\ & VCC))
-- \count|Q[10]~47\ = CARRY((\count|Q\(10) & !\count|Q[9]~45\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \count|Q\(10),
	datad => VCC,
	cin => \count|Q[9]~45\,
	combout => \count|Q[10]~46_combout\,
	cout => \count|Q[10]~47\);

-- Location: FF_X29_Y22_N27
\count|Q[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \count|Q[10]~46_combout\,
	sclr => \ALT_INV_KEY[1]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \count|Q\(10));

-- Location: LCCOMB_X29_Y22_N28
\count|Q[11]~48\ : cycloneive_lcell_comb
-- Equation(s):
-- \count|Q[11]~48_combout\ = (\count|Q\(11) & (!\count|Q[10]~47\)) # (!\count|Q\(11) & ((\count|Q[10]~47\) # (GND)))
-- \count|Q[11]~49\ = CARRY((!\count|Q[10]~47\) # (!\count|Q\(11)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \count|Q\(11),
	datad => VCC,
	cin => \count|Q[10]~47\,
	combout => \count|Q[11]~48_combout\,
	cout => \count|Q[11]~49\);

-- Location: FF_X29_Y22_N29
\count|Q[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \count|Q[11]~48_combout\,
	sclr => \ALT_INV_KEY[1]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \count|Q\(11));

-- Location: LCCOMB_X29_Y22_N30
\count|Q[12]~50\ : cycloneive_lcell_comb
-- Equation(s):
-- \count|Q[12]~50_combout\ = (\count|Q\(12) & (\count|Q[11]~49\ $ (GND))) # (!\count|Q\(12) & (!\count|Q[11]~49\ & VCC))
-- \count|Q[12]~51\ = CARRY((\count|Q\(12) & !\count|Q[11]~49\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \count|Q\(12),
	datad => VCC,
	cin => \count|Q[11]~49\,
	combout => \count|Q[12]~50_combout\,
	cout => \count|Q[12]~51\);

-- Location: FF_X29_Y22_N31
\count|Q[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \count|Q[12]~50_combout\,
	sclr => \ALT_INV_KEY[1]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \count|Q\(12));

-- Location: LCCOMB_X29_Y21_N0
\count|Q[13]~52\ : cycloneive_lcell_comb
-- Equation(s):
-- \count|Q[13]~52_combout\ = (\count|Q\(13) & (!\count|Q[12]~51\)) # (!\count|Q\(13) & ((\count|Q[12]~51\) # (GND)))
-- \count|Q[13]~53\ = CARRY((!\count|Q[12]~51\) # (!\count|Q\(13)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \count|Q\(13),
	datad => VCC,
	cin => \count|Q[12]~51\,
	combout => \count|Q[13]~52_combout\,
	cout => \count|Q[13]~53\);

-- Location: FF_X29_Y21_N1
\count|Q[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \count|Q[13]~52_combout\,
	sclr => \ALT_INV_KEY[1]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \count|Q\(13));

-- Location: LCCOMB_X29_Y21_N2
\count|Q[14]~54\ : cycloneive_lcell_comb
-- Equation(s):
-- \count|Q[14]~54_combout\ = (\count|Q\(14) & (\count|Q[13]~53\ $ (GND))) # (!\count|Q\(14) & (!\count|Q[13]~53\ & VCC))
-- \count|Q[14]~55\ = CARRY((\count|Q\(14) & !\count|Q[13]~53\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \count|Q\(14),
	datad => VCC,
	cin => \count|Q[13]~53\,
	combout => \count|Q[14]~54_combout\,
	cout => \count|Q[14]~55\);

-- Location: FF_X29_Y21_N3
\count|Q[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \count|Q[14]~54_combout\,
	sclr => \ALT_INV_KEY[1]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \count|Q\(14));

-- Location: LCCOMB_X29_Y21_N4
\count|Q[15]~56\ : cycloneive_lcell_comb
-- Equation(s):
-- \count|Q[15]~56_combout\ = (\count|Q\(15) & (!\count|Q[14]~55\)) # (!\count|Q\(15) & ((\count|Q[14]~55\) # (GND)))
-- \count|Q[15]~57\ = CARRY((!\count|Q[14]~55\) # (!\count|Q\(15)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \count|Q\(15),
	datad => VCC,
	cin => \count|Q[14]~55\,
	combout => \count|Q[15]~56_combout\,
	cout => \count|Q[15]~57\);

-- Location: FF_X29_Y21_N5
\count|Q[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \count|Q[15]~56_combout\,
	sclr => \ALT_INV_KEY[1]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \count|Q\(15));

-- Location: LCCOMB_X29_Y21_N6
\count|Q[16]~58\ : cycloneive_lcell_comb
-- Equation(s):
-- \count|Q[16]~58_combout\ = (\count|Q\(16) & (\count|Q[15]~57\ $ (GND))) # (!\count|Q\(16) & (!\count|Q[15]~57\ & VCC))
-- \count|Q[16]~59\ = CARRY((\count|Q\(16) & !\count|Q[15]~57\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \count|Q\(16),
	datad => VCC,
	cin => \count|Q[15]~57\,
	combout => \count|Q[16]~58_combout\,
	cout => \count|Q[16]~59\);

-- Location: FF_X29_Y21_N7
\count|Q[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \count|Q[16]~58_combout\,
	sclr => \ALT_INV_KEY[1]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \count|Q\(16));

-- Location: LCCOMB_X29_Y21_N8
\count|Q[17]~60\ : cycloneive_lcell_comb
-- Equation(s):
-- \count|Q[17]~60_combout\ = (\count|Q\(17) & (!\count|Q[16]~59\)) # (!\count|Q\(17) & ((\count|Q[16]~59\) # (GND)))
-- \count|Q[17]~61\ = CARRY((!\count|Q[16]~59\) # (!\count|Q\(17)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \count|Q\(17),
	datad => VCC,
	cin => \count|Q[16]~59\,
	combout => \count|Q[17]~60_combout\,
	cout => \count|Q[17]~61\);

-- Location: FF_X29_Y21_N9
\count|Q[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \count|Q[17]~60_combout\,
	sclr => \ALT_INV_KEY[1]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \count|Q\(17));

-- Location: LCCOMB_X29_Y21_N10
\count|Q[18]~62\ : cycloneive_lcell_comb
-- Equation(s):
-- \count|Q[18]~62_combout\ = (\count|Q\(18) & (\count|Q[17]~61\ $ (GND))) # (!\count|Q\(18) & (!\count|Q[17]~61\ & VCC))
-- \count|Q[18]~63\ = CARRY((\count|Q\(18) & !\count|Q[17]~61\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \count|Q\(18),
	datad => VCC,
	cin => \count|Q[17]~61\,
	combout => \count|Q[18]~62_combout\,
	cout => \count|Q[18]~63\);

-- Location: FF_X29_Y21_N11
\count|Q[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \count|Q[18]~62_combout\,
	sclr => \ALT_INV_KEY[1]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \count|Q\(18));

-- Location: LCCOMB_X29_Y21_N12
\count|Q[19]~64\ : cycloneive_lcell_comb
-- Equation(s):
-- \count|Q[19]~64_combout\ = (\count|Q\(19) & (!\count|Q[18]~63\)) # (!\count|Q\(19) & ((\count|Q[18]~63\) # (GND)))
-- \count|Q[19]~65\ = CARRY((!\count|Q[18]~63\) # (!\count|Q\(19)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \count|Q\(19),
	datad => VCC,
	cin => \count|Q[18]~63\,
	combout => \count|Q[19]~64_combout\,
	cout => \count|Q[19]~65\);

-- Location: FF_X29_Y21_N13
\count|Q[19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \count|Q[19]~64_combout\,
	sclr => \ALT_INV_KEY[1]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \count|Q\(19));

-- Location: LCCOMB_X29_Y21_N14
\count|Q[20]~66\ : cycloneive_lcell_comb
-- Equation(s):
-- \count|Q[20]~66_combout\ = (\count|Q\(20) & (\count|Q[19]~65\ $ (GND))) # (!\count|Q\(20) & (!\count|Q[19]~65\ & VCC))
-- \count|Q[20]~67\ = CARRY((\count|Q\(20) & !\count|Q[19]~65\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \count|Q\(20),
	datad => VCC,
	cin => \count|Q[19]~65\,
	combout => \count|Q[20]~66_combout\,
	cout => \count|Q[20]~67\);

-- Location: FF_X29_Y21_N15
\count|Q[20]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \count|Q[20]~66_combout\,
	sclr => \ALT_INV_KEY[1]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \count|Q\(20));

-- Location: LCCOMB_X29_Y21_N16
\count|Q[21]~68\ : cycloneive_lcell_comb
-- Equation(s):
-- \count|Q[21]~68_combout\ = (\count|Q\(21) & (!\count|Q[20]~67\)) # (!\count|Q\(21) & ((\count|Q[20]~67\) # (GND)))
-- \count|Q[21]~69\ = CARRY((!\count|Q[20]~67\) # (!\count|Q\(21)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \count|Q\(21),
	datad => VCC,
	cin => \count|Q[20]~67\,
	combout => \count|Q[21]~68_combout\,
	cout => \count|Q[21]~69\);

-- Location: FF_X29_Y21_N17
\count|Q[21]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \count|Q[21]~68_combout\,
	sclr => \ALT_INV_KEY[1]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \count|Q\(21));

-- Location: LCCOMB_X29_Y21_N18
\count|Q[22]~70\ : cycloneive_lcell_comb
-- Equation(s):
-- \count|Q[22]~70_combout\ = (\count|Q\(22) & (\count|Q[21]~69\ $ (GND))) # (!\count|Q\(22) & (!\count|Q[21]~69\ & VCC))
-- \count|Q[22]~71\ = CARRY((\count|Q\(22) & !\count|Q[21]~69\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \count|Q\(22),
	datad => VCC,
	cin => \count|Q[21]~69\,
	combout => \count|Q[22]~70_combout\,
	cout => \count|Q[22]~71\);

-- Location: FF_X29_Y21_N19
\count|Q[22]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \count|Q[22]~70_combout\,
	sclr => \ALT_INV_KEY[1]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \count|Q\(22));

-- Location: LCCOMB_X29_Y21_N20
\count|Q[23]~72\ : cycloneive_lcell_comb
-- Equation(s):
-- \count|Q[23]~72_combout\ = (\count|Q\(23) & (!\count|Q[22]~71\)) # (!\count|Q\(23) & ((\count|Q[22]~71\) # (GND)))
-- \count|Q[23]~73\ = CARRY((!\count|Q[22]~71\) # (!\count|Q\(23)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \count|Q\(23),
	datad => VCC,
	cin => \count|Q[22]~71\,
	combout => \count|Q[23]~72_combout\,
	cout => \count|Q[23]~73\);

-- Location: FF_X29_Y21_N21
\count|Q[23]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \count|Q[23]~72_combout\,
	sclr => \ALT_INV_KEY[1]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \count|Q\(23));

-- Location: LCCOMB_X29_Y21_N22
\count|Q[24]~74\ : cycloneive_lcell_comb
-- Equation(s):
-- \count|Q[24]~74_combout\ = (\count|Q\(24) & (\count|Q[23]~73\ $ (GND))) # (!\count|Q\(24) & (!\count|Q[23]~73\ & VCC))
-- \count|Q[24]~75\ = CARRY((\count|Q\(24) & !\count|Q[23]~73\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \count|Q\(24),
	datad => VCC,
	cin => \count|Q[23]~73\,
	combout => \count|Q[24]~74_combout\,
	cout => \count|Q[24]~75\);

-- Location: FF_X29_Y21_N23
\count|Q[24]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \count|Q[24]~74_combout\,
	sclr => \ALT_INV_KEY[1]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \count|Q\(24));

-- Location: LCCOMB_X29_Y21_N24
\count|Q[25]~76\ : cycloneive_lcell_comb
-- Equation(s):
-- \count|Q[25]~76_combout\ = \count|Q[24]~75\ $ (\count|Q\(25))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \count|Q\(25),
	cin => \count|Q[24]~75\,
	combout => \count|Q[25]~76_combout\);

-- Location: FF_X29_Y21_N25
\count|Q[25]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \count|Q[25]~76_combout\,
	sclr => \ALT_INV_KEY[1]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \count|Q\(25));

-- Location: LCCOMB_X29_Y21_N30
\Equal0~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal0~5_combout\ = (\count|Q\(19) & (\count|Q\(17) & (!\count|Q\(16) & !\count|Q\(18))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \count|Q\(19),
	datab => \count|Q\(17),
	datac => \count|Q\(16),
	datad => \count|Q\(18),
	combout => \Equal0~5_combout\);

-- Location: LCCOMB_X29_Y21_N28
\Equal0~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal0~6_combout\ = (\count|Q\(23) & (\count|Q\(22) & (\count|Q\(20) & \count|Q\(21))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \count|Q\(23),
	datab => \count|Q\(22),
	datac => \count|Q\(20),
	datad => \count|Q\(21),
	combout => \Equal0~6_combout\);

-- Location: LCCOMB_X29_Y21_N26
\Equal0~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal0~7_combout\ = (!\count|Q\(24) & (\count|Q\(25) & (\Equal0~5_combout\ & \Equal0~6_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \count|Q\(24),
	datab => \count|Q\(25),
	datac => \Equal0~5_combout\,
	datad => \Equal0~6_combout\,
	combout => \Equal0~7_combout\);

-- Location: LCCOMB_X29_Y22_N2
\Equal0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal0~1_combout\ = (!\count|Q\(7) & (\count|Q\(6) & (\count|Q\(4) & \count|Q\(5))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \count|Q\(7),
	datab => \count|Q\(6),
	datac => \count|Q\(4),
	datad => \count|Q\(5),
	combout => \Equal0~1_combout\);

-- Location: LCCOMB_X30_Y21_N20
\Equal0~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal0~3_combout\ = (\count|Q\(13) & (\count|Q\(15) & (\count|Q\(12) & \count|Q\(14))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \count|Q\(13),
	datab => \count|Q\(15),
	datac => \count|Q\(12),
	datad => \count|Q\(14),
	combout => \Equal0~3_combout\);

-- Location: LCCOMB_X29_Y22_N0
\Equal0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal0~2_combout\ = (!\count|Q\(8) & (!\count|Q\(9) & (!\count|Q\(10) & !\count|Q\(11))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \count|Q\(8),
	datab => \count|Q\(9),
	datac => \count|Q\(10),
	datad => \count|Q\(11),
	combout => \Equal0~2_combout\);

-- Location: LCCOMB_X29_Y22_N4
\Equal0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal0~0_combout\ = (\count|Q\(0) & (\count|Q\(1) & (\count|Q\(2) & \count|Q\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \count|Q\(0),
	datab => \count|Q\(1),
	datac => \count|Q\(2),
	datad => \count|Q\(3),
	combout => \Equal0~0_combout\);

-- Location: LCCOMB_X30_Y21_N18
\Equal0~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal0~4_combout\ = (\Equal0~1_combout\ & (\Equal0~3_combout\ & (\Equal0~2_combout\ & \Equal0~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal0~1_combout\,
	datab => \Equal0~3_combout\,
	datac => \Equal0~2_combout\,
	datad => \Equal0~0_combout\,
	combout => \Equal0~4_combout\);

-- Location: LCCOMB_X30_Y21_N0
\ser1|tx_ctrl|current_state~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \ser1|tx_ctrl|current_state~9_combout\ = (\KEY[1]~input_o\ & (!\ser1|tx_ctrl|current_state.WAIT~q\ & (\Equal0~7_combout\ & \Equal0~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \KEY[1]~input_o\,
	datab => \ser1|tx_ctrl|current_state.WAIT~q\,
	datac => \Equal0~7_combout\,
	datad => \Equal0~4_combout\,
	combout => \ser1|tx_ctrl|current_state~9_combout\);

-- Location: FF_X30_Y21_N1
\ser1|tx_ctrl|current_state.LOAD\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \ser1|tx_ctrl|current_state~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ser1|tx_ctrl|current_state.LOAD~q\);

-- Location: LCCOMB_X30_Y22_N10
\ser1|txdata|Q~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \ser1|txdata|Q~10_combout\ = (\ser1|tx_ctrl|current_state.LOAD~q\) # ((\ser1|txdata|Q\(9) & !\ser1|tx_ctrl|current_state.SHIFT~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ser1|txdata|Q\(9),
	datac => \ser1|tx_ctrl|current_state.SHIFT~q\,
	datad => \ser1|tx_ctrl|current_state.LOAD~q\,
	combout => \ser1|txdata|Q~10_combout\);

-- Location: LCCOMB_X30_Y22_N6
\ser1|txdata|Q~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \ser1|txdata|Q~11_combout\ = (\ser1|tx_ctrl|current_state.WAIT~q\ & (\KEY[1]~input_o\ & \ser1|txdata|Q~10_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \ser1|tx_ctrl|current_state.WAIT~q\,
	datac => \KEY[1]~input_o\,
	datad => \ser1|txdata|Q~10_combout\,
	combout => \ser1|txdata|Q~11_combout\);

-- Location: FF_X30_Y22_N7
\ser1|txdata|Q[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \ser1|txdata|Q~11_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ser1|txdata|Q\(9));

-- Location: LCCOMB_X30_Y22_N28
\ser1|txdata|Q~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \ser1|txdata|Q~9_combout\ = (\ser1|txdata|Q\(9) & (\ser1|tx_ctrl|current_state.WAIT~q\ & (\KEY[1]~input_o\ & !\ser1|tx_ctrl|current_state.LOAD~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ser1|txdata|Q\(9),
	datab => \ser1|tx_ctrl|current_state.WAIT~q\,
	datac => \KEY[1]~input_o\,
	datad => \ser1|tx_ctrl|current_state.LOAD~q\,
	combout => \ser1|txdata|Q~9_combout\);

-- Location: LCCOMB_X30_Y22_N30
\ser1|txdata|Q[2]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \ser1|txdata|Q[2]~1_combout\ = (\ser1|tx_ctrl|current_state.SHIFT~q\) # ((\ser1|tx_ctrl|current_state.LOAD~q\) # ((!\ser1|tx_ctrl|current_state.WAIT~q\) # (!\KEY[1]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ser1|tx_ctrl|current_state.SHIFT~q\,
	datab => \ser1|tx_ctrl|current_state.LOAD~q\,
	datac => \KEY[1]~input_o\,
	datad => \ser1|tx_ctrl|current_state.WAIT~q\,
	combout => \ser1|txdata|Q[2]~1_combout\);

-- Location: FF_X30_Y22_N29
\ser1|txdata|Q[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \ser1|txdata|Q~9_combout\,
	ena => \ser1|txdata|Q[2]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ser1|txdata|Q\(8));

-- Location: LCCOMB_X30_Y22_N8
\ser1|txdata|Q~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \ser1|txdata|Q~8_combout\ = (\ser1|tx_ctrl|current_state.WAIT~q\ & (\KEY[1]~input_o\ & ((\ser1|tx_ctrl|current_state.LOAD~q\) # (\ser1|txdata|Q\(8)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ser1|tx_ctrl|current_state.LOAD~q\,
	datab => \ser1|tx_ctrl|current_state.WAIT~q\,
	datac => \KEY[1]~input_o\,
	datad => \ser1|txdata|Q\(8),
	combout => \ser1|txdata|Q~8_combout\);

-- Location: FF_X30_Y22_N9
\ser1|txdata|Q[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \ser1|txdata|Q~8_combout\,
	ena => \ser1|txdata|Q[2]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ser1|txdata|Q\(7));

-- Location: LCCOMB_X30_Y22_N18
\ser1|txdata|Q~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \ser1|txdata|Q~7_combout\ = (\KEY[1]~input_o\ & (\ser1|tx_ctrl|current_state.WAIT~q\ & ((\ser1|tx_ctrl|current_state.LOAD~q\) # (\ser1|txdata|Q\(7)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ser1|tx_ctrl|current_state.LOAD~q\,
	datab => \KEY[1]~input_o\,
	datac => \ser1|txdata|Q\(7),
	datad => \ser1|tx_ctrl|current_state.WAIT~q\,
	combout => \ser1|txdata|Q~7_combout\);

-- Location: FF_X30_Y22_N19
\ser1|txdata|Q[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \ser1|txdata|Q~7_combout\,
	ena => \ser1|txdata|Q[2]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ser1|txdata|Q\(6));

-- Location: LCCOMB_X30_Y22_N24
\ser1|txdata|Q~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \ser1|txdata|Q~6_combout\ = (!\ser1|tx_ctrl|current_state.LOAD~q\ & (\ser1|tx_ctrl|current_state.WAIT~q\ & (\KEY[1]~input_o\ & \ser1|txdata|Q\(6))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ser1|tx_ctrl|current_state.LOAD~q\,
	datab => \ser1|tx_ctrl|current_state.WAIT~q\,
	datac => \KEY[1]~input_o\,
	datad => \ser1|txdata|Q\(6),
	combout => \ser1|txdata|Q~6_combout\);

-- Location: FF_X30_Y22_N25
\ser1|txdata|Q[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \ser1|txdata|Q~6_combout\,
	ena => \ser1|txdata|Q[2]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ser1|txdata|Q\(5));

-- Location: LCCOMB_X30_Y22_N14
\ser1|txdata|Q~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \ser1|txdata|Q~5_combout\ = (!\ser1|tx_ctrl|current_state.LOAD~q\ & (\ser1|tx_ctrl|current_state.WAIT~q\ & (\KEY[1]~input_o\ & \ser1|txdata|Q\(5))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ser1|tx_ctrl|current_state.LOAD~q\,
	datab => \ser1|tx_ctrl|current_state.WAIT~q\,
	datac => \KEY[1]~input_o\,
	datad => \ser1|txdata|Q\(5),
	combout => \ser1|txdata|Q~5_combout\);

-- Location: FF_X30_Y22_N15
\ser1|txdata|Q[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \ser1|txdata|Q~5_combout\,
	ena => \ser1|txdata|Q[2]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ser1|txdata|Q\(4));

-- Location: LCCOMB_X30_Y22_N26
\ser1|Equal4~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \ser1|Equal4~1_combout\ = (!\ser1|txdata|Q\(7) & (!\ser1|txdata|Q\(5) & (!\ser1|txdata|Q\(4) & !\ser1|txdata|Q\(6))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ser1|txdata|Q\(7),
	datab => \ser1|txdata|Q\(5),
	datac => \ser1|txdata|Q\(4),
	datad => \ser1|txdata|Q\(6),
	combout => \ser1|Equal4~1_combout\);

-- Location: LCCOMB_X30_Y22_N22
\ser1|txdata|Q~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \ser1|txdata|Q~4_combout\ = (\KEY[1]~input_o\ & (\ser1|tx_ctrl|current_state.WAIT~q\ & ((\ser1|txdata|Q\(4)) # (\ser1|tx_ctrl|current_state.LOAD~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \KEY[1]~input_o\,
	datab => \ser1|tx_ctrl|current_state.WAIT~q\,
	datac => \ser1|txdata|Q\(4),
	datad => \ser1|tx_ctrl|current_state.LOAD~q\,
	combout => \ser1|txdata|Q~4_combout\);

-- Location: FF_X30_Y22_N23
\ser1|txdata|Q[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \ser1|txdata|Q~4_combout\,
	ena => \ser1|txdata|Q[2]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ser1|txdata|Q\(3));

-- Location: LCCOMB_X30_Y22_N0
\ser1|txdata|Q~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \ser1|txdata|Q~3_combout\ = (\ser1|txdata|Q\(3) & (!\ser1|tx_ctrl|current_state.LOAD~q\ & (\KEY[1]~input_o\ & \ser1|tx_ctrl|current_state.WAIT~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ser1|txdata|Q\(3),
	datab => \ser1|tx_ctrl|current_state.LOAD~q\,
	datac => \KEY[1]~input_o\,
	datad => \ser1|tx_ctrl|current_state.WAIT~q\,
	combout => \ser1|txdata|Q~3_combout\);

-- Location: FF_X30_Y22_N1
\ser1|txdata|Q[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \ser1|txdata|Q~3_combout\,
	ena => \ser1|txdata|Q[2]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ser1|txdata|Q\(2));

-- Location: LCCOMB_X30_Y22_N4
\ser1|txdata|Q~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \ser1|txdata|Q~2_combout\ = (!\ser1|tx_ctrl|current_state.LOAD~q\ & (\ser1|tx_ctrl|current_state.WAIT~q\ & (\KEY[1]~input_o\ & \ser1|txdata|Q\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ser1|tx_ctrl|current_state.LOAD~q\,
	datab => \ser1|tx_ctrl|current_state.WAIT~q\,
	datac => \KEY[1]~input_o\,
	datad => \ser1|txdata|Q\(2),
	combout => \ser1|txdata|Q~2_combout\);

-- Location: FF_X30_Y22_N5
\ser1|txdata|Q[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \ser1|txdata|Q~2_combout\,
	ena => \ser1|txdata|Q[2]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ser1|txdata|Q\(1));

-- Location: LCCOMB_X30_Y22_N20
\ser1|txdata|Q~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \ser1|txdata|Q~0_combout\ = (\KEY[1]~input_o\ & (\ser1|tx_ctrl|current_state.WAIT~q\ & (\ser1|txdata|Q\(1) & !\ser1|tx_ctrl|current_state.LOAD~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \KEY[1]~input_o\,
	datab => \ser1|tx_ctrl|current_state.WAIT~q\,
	datac => \ser1|txdata|Q\(1),
	datad => \ser1|tx_ctrl|current_state.LOAD~q\,
	combout => \ser1|txdata|Q~0_combout\);

-- Location: FF_X30_Y22_N21
\ser1|txdata|Q[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \ser1|txdata|Q~0_combout\,
	ena => \ser1|txdata|Q[2]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ser1|txdata|Q\(0));

-- Location: LCCOMB_X30_Y22_N16
\ser1|Equal4~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \ser1|Equal4~0_combout\ = (!\ser1|txdata|Q\(3) & (!\ser1|txdata|Q\(0) & (!\ser1|txdata|Q\(1) & !\ser1|txdata|Q\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ser1|txdata|Q\(3),
	datab => \ser1|txdata|Q\(0),
	datac => \ser1|txdata|Q\(1),
	datad => \ser1|txdata|Q\(2),
	combout => \ser1|Equal4~0_combout\);

-- Location: LCCOMB_X30_Y22_N12
\ser1|Equal4~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \ser1|Equal4~2_combout\ = (!\ser1|txdata|Q\(9) & (!\ser1|txdata|Q\(8) & (\ser1|Equal4~1_combout\ & \ser1|Equal4~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ser1|txdata|Q\(9),
	datab => \ser1|txdata|Q\(8),
	datac => \ser1|Equal4~1_combout\,
	datad => \ser1|Equal4~0_combout\,
	combout => \ser1|Equal4~2_combout\);

-- Location: LCCOMB_X30_Y21_N14
\ser1|tx_ctrl|Selector1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \ser1|tx_ctrl|Selector1~0_combout\ = (!\ser1|tx_ctrl|current_state.SHIFT~q\ & !\ser1|tx_ctrl|current_state.LOAD~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \ser1|tx_ctrl|current_state.SHIFT~q\,
	datad => \ser1|tx_ctrl|current_state.LOAD~q\,
	combout => \ser1|tx_ctrl|Selector1~0_combout\);

-- Location: LCCOMB_X30_Y21_N4
\ser1|tx_ctrl|Selector1~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \ser1|tx_ctrl|Selector1~1_combout\ = ((!\ser1|Equal4~2_combout\ & (\ser1|tx_ctrl|current_state.PAUSE~q\ & \ser1|Equal2~3_combout\))) # (!\ser1|tx_ctrl|Selector1~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111001100110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ser1|Equal4~2_combout\,
	datab => \ser1|tx_ctrl|Selector1~0_combout\,
	datac => \ser1|tx_ctrl|current_state.PAUSE~q\,
	datad => \ser1|Equal2~3_combout\,
	combout => \ser1|tx_ctrl|Selector1~1_combout\);

-- Location: FF_X30_Y21_N5
\ser1|tx_ctrl|current_state.PAUSE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \ser1|tx_ctrl|Selector1~1_combout\,
	sclr => \ALT_INV_KEY[1]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ser1|tx_ctrl|current_state.PAUSE~q\);

-- Location: LCCOMB_X30_Y21_N12
\ser1|tx_ctrl|Selector0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \ser1|tx_ctrl|Selector0~0_combout\ = (!\ser1|tx_ctrl|current_state.WAIT~q\ & ((!\Equal0~4_combout\) # (!\Equal0~7_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001100110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \ser1|tx_ctrl|current_state.WAIT~q\,
	datac => \Equal0~7_combout\,
	datad => \Equal0~4_combout\,
	combout => \ser1|tx_ctrl|Selector0~0_combout\);

-- Location: LCCOMB_X30_Y21_N2
\ser1|tx_ctrl|current_state~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \ser1|tx_ctrl|current_state~8_combout\ = (\KEY[1]~input_o\ & (!\ser1|tx_ctrl|Selector0~0_combout\ & ((!\ser1|Equal4~2_combout\) # (!\ser1|tx_ctrl|current_state.PAUSE~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \KEY[1]~input_o\,
	datab => \ser1|tx_ctrl|current_state.PAUSE~q\,
	datac => \ser1|Equal4~2_combout\,
	datad => \ser1|tx_ctrl|Selector0~0_combout\,
	combout => \ser1|tx_ctrl|current_state~8_combout\);

-- Location: FF_X30_Y21_N3
\ser1|tx_ctrl|current_state.WAIT\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \ser1|tx_ctrl|current_state~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ser1|tx_ctrl|current_state.WAIT~q\);

-- Location: LCCOMB_X30_Y22_N2
\ser1|tx_sel|Y~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \ser1|tx_sel|Y~0_combout\ = (\ser1|txdata|Q\(0)) # (!\ser1|tx_ctrl|current_state.WAIT~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \ser1|tx_ctrl|current_state.WAIT~q\,
	datad => \ser1|txdata|Q\(0),
	combout => \ser1|tx_sel|Y~0_combout\);

-- Location: LCCOMB_X36_Y24_N6
\m1|chnk_cnt|Q[0]~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \m1|chnk_cnt|Q[0]~7_combout\ = \m1|chnk_cnt|Q\(0) $ (VCC)
-- \m1|chnk_cnt|Q[0]~8\ = CARRY(\m1|chnk_cnt|Q\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \m1|chnk_cnt|Q\(0),
	datad => VCC,
	combout => \m1|chnk_cnt|Q[0]~7_combout\,
	cout => \m1|chnk_cnt|Q[0]~8\);

-- Location: LCCOMB_X36_Y24_N24
\m1|chnk_cnt|Q[0]~21\ : cycloneive_lcell_comb
-- Equation(s):
-- \m1|chnk_cnt|Q[0]~21_combout\ = (\m1|chnk_cnt|Q\(2) & (\m1|chnk_cnt|Q\(6) & (\m1|chnk_cnt|Q\(3) & \m1|chnk_cnt|Q\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \m1|chnk_cnt|Q\(2),
	datab => \m1|chnk_cnt|Q\(6),
	datac => \m1|chnk_cnt|Q\(3),
	datad => \m1|chnk_cnt|Q\(0),
	combout => \m1|chnk_cnt|Q[0]~21_combout\);

-- Location: LCCOMB_X36_Y24_N2
\m1|chnk_cnt|Q[0]~22\ : cycloneive_lcell_comb
-- Equation(s):
-- \m1|chnk_cnt|Q[0]~22_combout\ = (\m1|chnk_cnt|Q\(5) & (\m1|chnk_cnt|Q\(4) & \m1|chnk_cnt|Q[0]~21_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \m1|chnk_cnt|Q\(5),
	datac => \m1|chnk_cnt|Q\(4),
	datad => \m1|chnk_cnt|Q[0]~21_combout\,
	combout => \m1|chnk_cnt|Q[0]~22_combout\);

-- Location: LCCOMB_X36_Y24_N28
\m1|chnk_cnt|Q[0]~23\ : cycloneive_lcell_comb
-- Equation(s):
-- \m1|chnk_cnt|Q[0]~23_combout\ = ((\m1|chnk_cnt|Q\(1) & \m1|chnk_cnt|Q[0]~22_combout\)) # (!\KEY[1]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001100110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \KEY[1]~input_o\,
	datac => \m1|chnk_cnt|Q\(1),
	datad => \m1|chnk_cnt|Q[0]~22_combout\,
	combout => \m1|chnk_cnt|Q[0]~23_combout\);

-- Location: LCCOMB_X35_Y24_N0
\m1|clk_cnt|Q[0]~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \m1|clk_cnt|Q[0]~12_combout\ = \m1|clk_cnt|Q\(0) $ (VCC)
-- \m1|clk_cnt|Q[0]~13\ = CARRY(\m1|clk_cnt|Q\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \m1|clk_cnt|Q\(0),
	datad => VCC,
	combout => \m1|clk_cnt|Q[0]~12_combout\,
	cout => \m1|clk_cnt|Q[0]~13\);

-- Location: LCCOMB_X35_Y24_N2
\m1|clk_cnt|Q[1]~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \m1|clk_cnt|Q[1]~14_combout\ = (\m1|clk_cnt|Q\(1) & (!\m1|clk_cnt|Q[0]~13\)) # (!\m1|clk_cnt|Q\(1) & ((\m1|clk_cnt|Q[0]~13\) # (GND)))
-- \m1|clk_cnt|Q[1]~15\ = CARRY((!\m1|clk_cnt|Q[0]~13\) # (!\m1|clk_cnt|Q\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \m1|clk_cnt|Q\(1),
	datad => VCC,
	cin => \m1|clk_cnt|Q[0]~13\,
	combout => \m1|clk_cnt|Q[1]~14_combout\,
	cout => \m1|clk_cnt|Q[1]~15\);

-- Location: LCCOMB_X35_Y24_N4
\m1|clk_cnt|Q[2]~17\ : cycloneive_lcell_comb
-- Equation(s):
-- \m1|clk_cnt|Q[2]~17_combout\ = (\m1|clk_cnt|Q\(2) & (\m1|clk_cnt|Q[1]~15\ $ (GND))) # (!\m1|clk_cnt|Q\(2) & (!\m1|clk_cnt|Q[1]~15\ & VCC))
-- \m1|clk_cnt|Q[2]~18\ = CARRY((\m1|clk_cnt|Q\(2) & !\m1|clk_cnt|Q[1]~15\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \m1|clk_cnt|Q\(2),
	datad => VCC,
	cin => \m1|clk_cnt|Q[1]~15\,
	combout => \m1|clk_cnt|Q[2]~17_combout\,
	cout => \m1|clk_cnt|Q[2]~18\);

-- Location: FF_X35_Y24_N5
\m1|clk_cnt|Q[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \m1|clk_cnt|Q[2]~17_combout\,
	sclr => \m1|clk_cnt|Q[3]~16_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \m1|clk_cnt|Q\(2));

-- Location: LCCOMB_X35_Y24_N6
\m1|clk_cnt|Q[3]~19\ : cycloneive_lcell_comb
-- Equation(s):
-- \m1|clk_cnt|Q[3]~19_combout\ = (\m1|clk_cnt|Q\(3) & (!\m1|clk_cnt|Q[2]~18\)) # (!\m1|clk_cnt|Q\(3) & ((\m1|clk_cnt|Q[2]~18\) # (GND)))
-- \m1|clk_cnt|Q[3]~20\ = CARRY((!\m1|clk_cnt|Q[2]~18\) # (!\m1|clk_cnt|Q\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \m1|clk_cnt|Q\(3),
	datad => VCC,
	cin => \m1|clk_cnt|Q[2]~18\,
	combout => \m1|clk_cnt|Q[3]~19_combout\,
	cout => \m1|clk_cnt|Q[3]~20\);

-- Location: FF_X35_Y24_N7
\m1|clk_cnt|Q[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \m1|clk_cnt|Q[3]~19_combout\,
	sclr => \m1|clk_cnt|Q[3]~16_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \m1|clk_cnt|Q\(3));

-- Location: LCCOMB_X35_Y24_N8
\m1|clk_cnt|Q[4]~21\ : cycloneive_lcell_comb
-- Equation(s):
-- \m1|clk_cnt|Q[4]~21_combout\ = (\m1|clk_cnt|Q\(4) & (\m1|clk_cnt|Q[3]~20\ $ (GND))) # (!\m1|clk_cnt|Q\(4) & (!\m1|clk_cnt|Q[3]~20\ & VCC))
-- \m1|clk_cnt|Q[4]~22\ = CARRY((\m1|clk_cnt|Q\(4) & !\m1|clk_cnt|Q[3]~20\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \m1|clk_cnt|Q\(4),
	datad => VCC,
	cin => \m1|clk_cnt|Q[3]~20\,
	combout => \m1|clk_cnt|Q[4]~21_combout\,
	cout => \m1|clk_cnt|Q[4]~22\);

-- Location: FF_X35_Y24_N9
\m1|clk_cnt|Q[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \m1|clk_cnt|Q[4]~21_combout\,
	sclr => \m1|clk_cnt|Q[3]~16_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \m1|clk_cnt|Q\(4));

-- Location: LCCOMB_X35_Y24_N10
\m1|clk_cnt|Q[5]~23\ : cycloneive_lcell_comb
-- Equation(s):
-- \m1|clk_cnt|Q[5]~23_combout\ = (\m1|clk_cnt|Q\(5) & (!\m1|clk_cnt|Q[4]~22\)) # (!\m1|clk_cnt|Q\(5) & ((\m1|clk_cnt|Q[4]~22\) # (GND)))
-- \m1|clk_cnt|Q[5]~24\ = CARRY((!\m1|clk_cnt|Q[4]~22\) # (!\m1|clk_cnt|Q\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \m1|clk_cnt|Q\(5),
	datad => VCC,
	cin => \m1|clk_cnt|Q[4]~22\,
	combout => \m1|clk_cnt|Q[5]~23_combout\,
	cout => \m1|clk_cnt|Q[5]~24\);

-- Location: FF_X35_Y24_N11
\m1|clk_cnt|Q[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \m1|clk_cnt|Q[5]~23_combout\,
	sclr => \m1|clk_cnt|Q[3]~16_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \m1|clk_cnt|Q\(5));

-- Location: LCCOMB_X35_Y24_N12
\m1|clk_cnt|Q[6]~25\ : cycloneive_lcell_comb
-- Equation(s):
-- \m1|clk_cnt|Q[6]~25_combout\ = (\m1|clk_cnt|Q\(6) & (\m1|clk_cnt|Q[5]~24\ $ (GND))) # (!\m1|clk_cnt|Q\(6) & (!\m1|clk_cnt|Q[5]~24\ & VCC))
-- \m1|clk_cnt|Q[6]~26\ = CARRY((\m1|clk_cnt|Q\(6) & !\m1|clk_cnt|Q[5]~24\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \m1|clk_cnt|Q\(6),
	datad => VCC,
	cin => \m1|clk_cnt|Q[5]~24\,
	combout => \m1|clk_cnt|Q[6]~25_combout\,
	cout => \m1|clk_cnt|Q[6]~26\);

-- Location: FF_X35_Y24_N13
\m1|clk_cnt|Q[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \m1|clk_cnt|Q[6]~25_combout\,
	sclr => \m1|clk_cnt|Q[3]~16_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \m1|clk_cnt|Q\(6));

-- Location: LCCOMB_X35_Y24_N14
\m1|clk_cnt|Q[7]~27\ : cycloneive_lcell_comb
-- Equation(s):
-- \m1|clk_cnt|Q[7]~27_combout\ = (\m1|clk_cnt|Q\(7) & (!\m1|clk_cnt|Q[6]~26\)) # (!\m1|clk_cnt|Q\(7) & ((\m1|clk_cnt|Q[6]~26\) # (GND)))
-- \m1|clk_cnt|Q[7]~28\ = CARRY((!\m1|clk_cnt|Q[6]~26\) # (!\m1|clk_cnt|Q\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \m1|clk_cnt|Q\(7),
	datad => VCC,
	cin => \m1|clk_cnt|Q[6]~26\,
	combout => \m1|clk_cnt|Q[7]~27_combout\,
	cout => \m1|clk_cnt|Q[7]~28\);

-- Location: FF_X35_Y24_N15
\m1|clk_cnt|Q[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \m1|clk_cnt|Q[7]~27_combout\,
	sclr => \m1|clk_cnt|Q[3]~16_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \m1|clk_cnt|Q\(7));

-- Location: LCCOMB_X35_Y24_N16
\m1|clk_cnt|Q[8]~29\ : cycloneive_lcell_comb
-- Equation(s):
-- \m1|clk_cnt|Q[8]~29_combout\ = (\m1|clk_cnt|Q\(8) & (\m1|clk_cnt|Q[7]~28\ $ (GND))) # (!\m1|clk_cnt|Q\(8) & (!\m1|clk_cnt|Q[7]~28\ & VCC))
-- \m1|clk_cnt|Q[8]~30\ = CARRY((\m1|clk_cnt|Q\(8) & !\m1|clk_cnt|Q[7]~28\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \m1|clk_cnt|Q\(8),
	datad => VCC,
	cin => \m1|clk_cnt|Q[7]~28\,
	combout => \m1|clk_cnt|Q[8]~29_combout\,
	cout => \m1|clk_cnt|Q[8]~30\);

-- Location: FF_X35_Y24_N17
\m1|clk_cnt|Q[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \m1|clk_cnt|Q[8]~29_combout\,
	sclr => \m1|clk_cnt|Q[3]~16_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \m1|clk_cnt|Q\(8));

-- Location: LCCOMB_X35_Y24_N18
\m1|clk_cnt|Q[9]~31\ : cycloneive_lcell_comb
-- Equation(s):
-- \m1|clk_cnt|Q[9]~31_combout\ = (\m1|clk_cnt|Q\(9) & (!\m1|clk_cnt|Q[8]~30\)) # (!\m1|clk_cnt|Q\(9) & ((\m1|clk_cnt|Q[8]~30\) # (GND)))
-- \m1|clk_cnt|Q[9]~32\ = CARRY((!\m1|clk_cnt|Q[8]~30\) # (!\m1|clk_cnt|Q\(9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \m1|clk_cnt|Q\(9),
	datad => VCC,
	cin => \m1|clk_cnt|Q[8]~30\,
	combout => \m1|clk_cnt|Q[9]~31_combout\,
	cout => \m1|clk_cnt|Q[9]~32\);

-- Location: FF_X35_Y24_N19
\m1|clk_cnt|Q[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \m1|clk_cnt|Q[9]~31_combout\,
	sclr => \m1|clk_cnt|Q[3]~16_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \m1|clk_cnt|Q\(9));

-- Location: LCCOMB_X35_Y24_N20
\m1|clk_cnt|Q[10]~33\ : cycloneive_lcell_comb
-- Equation(s):
-- \m1|clk_cnt|Q[10]~33_combout\ = (\m1|clk_cnt|Q\(10) & (\m1|clk_cnt|Q[9]~32\ $ (GND))) # (!\m1|clk_cnt|Q\(10) & (!\m1|clk_cnt|Q[9]~32\ & VCC))
-- \m1|clk_cnt|Q[10]~34\ = CARRY((\m1|clk_cnt|Q\(10) & !\m1|clk_cnt|Q[9]~32\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \m1|clk_cnt|Q\(10),
	datad => VCC,
	cin => \m1|clk_cnt|Q[9]~32\,
	combout => \m1|clk_cnt|Q[10]~33_combout\,
	cout => \m1|clk_cnt|Q[10]~34\);

-- Location: FF_X35_Y24_N21
\m1|clk_cnt|Q[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \m1|clk_cnt|Q[10]~33_combout\,
	sclr => \m1|clk_cnt|Q[3]~16_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \m1|clk_cnt|Q\(10));

-- Location: LCCOMB_X35_Y24_N22
\m1|clk_cnt|Q[11]~35\ : cycloneive_lcell_comb
-- Equation(s):
-- \m1|clk_cnt|Q[11]~35_combout\ = \m1|clk_cnt|Q\(11) $ (\m1|clk_cnt|Q[10]~34\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \m1|clk_cnt|Q\(11),
	cin => \m1|clk_cnt|Q[10]~34\,
	combout => \m1|clk_cnt|Q[11]~35_combout\);

-- Location: FF_X35_Y24_N23
\m1|clk_cnt|Q[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \m1|clk_cnt|Q[11]~35_combout\,
	sclr => \m1|clk_cnt|Q[3]~16_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \m1|clk_cnt|Q\(11));

-- Location: LCCOMB_X35_Y24_N26
\m1|Equal0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \m1|Equal0~1_combout\ = (\m1|clk_cnt|Q\(6) & (\m1|clk_cnt|Q\(9) & (!\m1|clk_cnt|Q\(7) & \m1|clk_cnt|Q\(8))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \m1|clk_cnt|Q\(6),
	datab => \m1|clk_cnt|Q\(9),
	datac => \m1|clk_cnt|Q\(7),
	datad => \m1|clk_cnt|Q\(8),
	combout => \m1|Equal0~1_combout\);

-- Location: LCCOMB_X35_Y24_N28
\m1|Equal0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \m1|Equal0~0_combout\ = (!\m1|clk_cnt|Q\(5) & (!\m1|clk_cnt|Q\(4) & (!\m1|clk_cnt|Q\(2) & !\m1|clk_cnt|Q\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \m1|clk_cnt|Q\(5),
	datab => \m1|clk_cnt|Q\(4),
	datac => \m1|clk_cnt|Q\(2),
	datad => \m1|clk_cnt|Q\(3),
	combout => \m1|Equal0~0_combout\);

-- Location: LCCOMB_X35_Y24_N24
\m1|Equal0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \m1|Equal0~2_combout\ = (\m1|clk_cnt|Q\(11) & (\m1|clk_cnt|Q\(10) & (\m1|Equal0~1_combout\ & \m1|Equal0~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \m1|clk_cnt|Q\(11),
	datab => \m1|clk_cnt|Q\(10),
	datac => \m1|Equal0~1_combout\,
	datad => \m1|Equal0~0_combout\,
	combout => \m1|Equal0~2_combout\);

-- Location: LCCOMB_X35_Y24_N30
\m1|clk_cnt|Q[3]~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \m1|clk_cnt|Q[3]~16_combout\ = ((!\m1|clk_cnt|Q\(0) & (\m1|clk_cnt|Q\(1) & \m1|Equal0~2_combout\))) # (!\KEY[1]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \m1|clk_cnt|Q\(0),
	datab => \m1|clk_cnt|Q\(1),
	datac => \KEY[1]~input_o\,
	datad => \m1|Equal0~2_combout\,
	combout => \m1|clk_cnt|Q[3]~16_combout\);

-- Location: FF_X35_Y24_N1
\m1|clk_cnt|Q[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \m1|clk_cnt|Q[0]~12_combout\,
	sclr => \m1|clk_cnt|Q[3]~16_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \m1|clk_cnt|Q\(0));

-- Location: FF_X35_Y24_N3
\m1|clk_cnt|Q[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \m1|clk_cnt|Q[1]~14_combout\,
	sclr => \m1|clk_cnt|Q[3]~16_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \m1|clk_cnt|Q\(1));

-- Location: LCCOMB_X36_Y24_N0
\m1|chnk_cnt|Q[0]~24\ : cycloneive_lcell_comb
-- Equation(s):
-- \m1|chnk_cnt|Q[0]~24_combout\ = ((!\m1|clk_cnt|Q\(1) & (\m1|clk_cnt|Q\(0) & \m1|Equal0~2_combout\))) # (!\KEY[1]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111001100110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \m1|clk_cnt|Q\(1),
	datab => \KEY[1]~input_o\,
	datac => \m1|clk_cnt|Q\(0),
	datad => \m1|Equal0~2_combout\,
	combout => \m1|chnk_cnt|Q[0]~24_combout\);

-- Location: FF_X36_Y24_N7
\m1|chnk_cnt|Q[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \m1|chnk_cnt|Q[0]~7_combout\,
	sclr => \m1|chnk_cnt|Q[0]~23_combout\,
	ena => \m1|chnk_cnt|Q[0]~24_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \m1|chnk_cnt|Q\(0));

-- Location: LCCOMB_X36_Y24_N8
\m1|chnk_cnt|Q[1]~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \m1|chnk_cnt|Q[1]~9_combout\ = (\m1|chnk_cnt|Q\(1) & (!\m1|chnk_cnt|Q[0]~8\)) # (!\m1|chnk_cnt|Q\(1) & ((\m1|chnk_cnt|Q[0]~8\) # (GND)))
-- \m1|chnk_cnt|Q[1]~10\ = CARRY((!\m1|chnk_cnt|Q[0]~8\) # (!\m1|chnk_cnt|Q\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \m1|chnk_cnt|Q\(1),
	datad => VCC,
	cin => \m1|chnk_cnt|Q[0]~8\,
	combout => \m1|chnk_cnt|Q[1]~9_combout\,
	cout => \m1|chnk_cnt|Q[1]~10\);

-- Location: FF_X36_Y24_N9
\m1|chnk_cnt|Q[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \m1|chnk_cnt|Q[1]~9_combout\,
	sclr => \m1|chnk_cnt|Q[0]~23_combout\,
	ena => \m1|chnk_cnt|Q[0]~24_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \m1|chnk_cnt|Q\(1));

-- Location: LCCOMB_X36_Y24_N10
\m1|chnk_cnt|Q[2]~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \m1|chnk_cnt|Q[2]~11_combout\ = (\m1|chnk_cnt|Q\(2) & (\m1|chnk_cnt|Q[1]~10\ $ (GND))) # (!\m1|chnk_cnt|Q\(2) & (!\m1|chnk_cnt|Q[1]~10\ & VCC))
-- \m1|chnk_cnt|Q[2]~12\ = CARRY((\m1|chnk_cnt|Q\(2) & !\m1|chnk_cnt|Q[1]~10\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \m1|chnk_cnt|Q\(2),
	datad => VCC,
	cin => \m1|chnk_cnt|Q[1]~10\,
	combout => \m1|chnk_cnt|Q[2]~11_combout\,
	cout => \m1|chnk_cnt|Q[2]~12\);

-- Location: FF_X36_Y24_N11
\m1|chnk_cnt|Q[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \m1|chnk_cnt|Q[2]~11_combout\,
	sclr => \m1|chnk_cnt|Q[0]~23_combout\,
	ena => \m1|chnk_cnt|Q[0]~24_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \m1|chnk_cnt|Q\(2));

-- Location: LCCOMB_X36_Y24_N12
\m1|chnk_cnt|Q[3]~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \m1|chnk_cnt|Q[3]~13_combout\ = (\m1|chnk_cnt|Q\(3) & (!\m1|chnk_cnt|Q[2]~12\)) # (!\m1|chnk_cnt|Q\(3) & ((\m1|chnk_cnt|Q[2]~12\) # (GND)))
-- \m1|chnk_cnt|Q[3]~14\ = CARRY((!\m1|chnk_cnt|Q[2]~12\) # (!\m1|chnk_cnt|Q\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \m1|chnk_cnt|Q\(3),
	datad => VCC,
	cin => \m1|chnk_cnt|Q[2]~12\,
	combout => \m1|chnk_cnt|Q[3]~13_combout\,
	cout => \m1|chnk_cnt|Q[3]~14\);

-- Location: FF_X36_Y24_N13
\m1|chnk_cnt|Q[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \m1|chnk_cnt|Q[3]~13_combout\,
	sclr => \m1|chnk_cnt|Q[0]~23_combout\,
	ena => \m1|chnk_cnt|Q[0]~24_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \m1|chnk_cnt|Q\(3));

-- Location: LCCOMB_X36_Y24_N14
\m1|chnk_cnt|Q[4]~15\ : cycloneive_lcell_comb
-- Equation(s):
-- \m1|chnk_cnt|Q[4]~15_combout\ = (\m1|chnk_cnt|Q\(4) & (\m1|chnk_cnt|Q[3]~14\ $ (GND))) # (!\m1|chnk_cnt|Q\(4) & (!\m1|chnk_cnt|Q[3]~14\ & VCC))
-- \m1|chnk_cnt|Q[4]~16\ = CARRY((\m1|chnk_cnt|Q\(4) & !\m1|chnk_cnt|Q[3]~14\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \m1|chnk_cnt|Q\(4),
	datad => VCC,
	cin => \m1|chnk_cnt|Q[3]~14\,
	combout => \m1|chnk_cnt|Q[4]~15_combout\,
	cout => \m1|chnk_cnt|Q[4]~16\);

-- Location: FF_X36_Y24_N15
\m1|chnk_cnt|Q[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \m1|chnk_cnt|Q[4]~15_combout\,
	sclr => \m1|chnk_cnt|Q[0]~23_combout\,
	ena => \m1|chnk_cnt|Q[0]~24_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \m1|chnk_cnt|Q\(4));

-- Location: LCCOMB_X36_Y24_N16
\m1|chnk_cnt|Q[5]~17\ : cycloneive_lcell_comb
-- Equation(s):
-- \m1|chnk_cnt|Q[5]~17_combout\ = (\m1|chnk_cnt|Q\(5) & (!\m1|chnk_cnt|Q[4]~16\)) # (!\m1|chnk_cnt|Q\(5) & ((\m1|chnk_cnt|Q[4]~16\) # (GND)))
-- \m1|chnk_cnt|Q[5]~18\ = CARRY((!\m1|chnk_cnt|Q[4]~16\) # (!\m1|chnk_cnt|Q\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \m1|chnk_cnt|Q\(5),
	datad => VCC,
	cin => \m1|chnk_cnt|Q[4]~16\,
	combout => \m1|chnk_cnt|Q[5]~17_combout\,
	cout => \m1|chnk_cnt|Q[5]~18\);

-- Location: FF_X36_Y24_N17
\m1|chnk_cnt|Q[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \m1|chnk_cnt|Q[5]~17_combout\,
	sclr => \m1|chnk_cnt|Q[0]~23_combout\,
	ena => \m1|chnk_cnt|Q[0]~24_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \m1|chnk_cnt|Q\(5));

-- Location: LCCOMB_X36_Y24_N18
\m1|chnk_cnt|Q[6]~19\ : cycloneive_lcell_comb
-- Equation(s):
-- \m1|chnk_cnt|Q[6]~19_combout\ = \m1|chnk_cnt|Q[5]~18\ $ (!\m1|chnk_cnt|Q\(6))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \m1|chnk_cnt|Q\(6),
	cin => \m1|chnk_cnt|Q[5]~18\,
	combout => \m1|chnk_cnt|Q[6]~19_combout\);

-- Location: FF_X36_Y24_N19
\m1|chnk_cnt|Q[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \m1|chnk_cnt|Q[6]~19_combout\,
	sclr => \m1|chnk_cnt|Q[0]~23_combout\,
	ena => \m1|chnk_cnt|Q[0]~24_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \m1|chnk_cnt|Q\(6));

-- Location: LCCOMB_X32_Y21_N4
\ser1|rx_count|Q[0]~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \ser1|rx_count|Q[0]~10_combout\ = \ser1|rx_count|Q\(0) $ (VCC)
-- \ser1|rx_count|Q[0]~11\ = CARRY(\ser1|rx_count|Q\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \ser1|rx_count|Q\(0),
	datad => VCC,
	combout => \ser1|rx_count|Q[0]~10_combout\,
	cout => \ser1|rx_count|Q[0]~11\);

-- Location: LCCOMB_X37_Y21_N8
\ser1|received|Q[0]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \ser1|received|Q[0]~1_combout\ = (\KEY[1]~input_o\ & !\ser1|rx_ctrl|current_state.DONE~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \KEY[1]~input_o\,
	datad => \ser1|rx_ctrl|current_state.DONE~q\,
	combout => \ser1|received|Q[0]~1_combout\);

-- Location: IOIBUF_X1_Y34_N1
\GPIO_0_D[1]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => GPIO_0_D(1),
	o => \GPIO_0_D[1]~input_o\);

-- Location: LCCOMB_X31_Y21_N4
\ser1|receive|Q[0]~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \ser1|receive|Q[0]~13_combout\ = \ser1|receive|Q\(0) $ (VCC)
-- \ser1|receive|Q[0]~14\ = CARRY(\ser1|receive|Q\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \ser1|receive|Q\(0),
	datad => VCC,
	combout => \ser1|receive|Q[0]~13_combout\,
	cout => \ser1|receive|Q[0]~14\);

-- Location: LCCOMB_X36_Y21_N0
\ser1|rx_ctrl|current_state~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \ser1|rx_ctrl|current_state~13_combout\ = (\KEY[1]~input_o\ & (!\ser1|rx_ctrl|current_state.WAIT~q\ & !\GPIO_0_D[1]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \KEY[1]~input_o\,
	datab => \ser1|rx_ctrl|current_state.WAIT~q\,
	datac => \GPIO_0_D[1]~input_o\,
	combout => \ser1|rx_ctrl|current_state~13_combout\);

-- Location: FF_X36_Y21_N1
\ser1|rx_ctrl|current_state.START\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \ser1|rx_ctrl|current_state~13_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ser1|rx_ctrl|current_state.START~q\);

-- Location: LCCOMB_X36_Y21_N14
\ser1|rx_ctrl|start_rx\ : cycloneive_lcell_comb
-- Equation(s):
-- \ser1|rx_ctrl|start_rx~combout\ = (\ser1|rx_ctrl|current_state.START~q\) # (\ser1|rx_ctrl|current_state.READ~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \ser1|rx_ctrl|current_state.START~q\,
	datad => \ser1|rx_ctrl|current_state.READ~q\,
	combout => \ser1|rx_ctrl|start_rx~combout\);

-- Location: FF_X31_Y21_N5
\ser1|receive|Q[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \ser1|receive|Q[0]~13_combout\,
	sclr => \ser1|rx_ctrl|start_rx~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ser1|receive|Q\(0));

-- Location: LCCOMB_X31_Y21_N6
\ser1|receive|Q[1]~15\ : cycloneive_lcell_comb
-- Equation(s):
-- \ser1|receive|Q[1]~15_combout\ = (\ser1|receive|Q\(1) & (!\ser1|receive|Q[0]~14\)) # (!\ser1|receive|Q\(1) & ((\ser1|receive|Q[0]~14\) # (GND)))
-- \ser1|receive|Q[1]~16\ = CARRY((!\ser1|receive|Q[0]~14\) # (!\ser1|receive|Q\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \ser1|receive|Q\(1),
	datad => VCC,
	cin => \ser1|receive|Q[0]~14\,
	combout => \ser1|receive|Q[1]~15_combout\,
	cout => \ser1|receive|Q[1]~16\);

-- Location: FF_X31_Y21_N7
\ser1|receive|Q[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \ser1|receive|Q[1]~15_combout\,
	sclr => \ser1|rx_ctrl|start_rx~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ser1|receive|Q\(1));

-- Location: LCCOMB_X31_Y21_N8
\ser1|receive|Q[2]~17\ : cycloneive_lcell_comb
-- Equation(s):
-- \ser1|receive|Q[2]~17_combout\ = (\ser1|receive|Q\(2) & (\ser1|receive|Q[1]~16\ $ (GND))) # (!\ser1|receive|Q\(2) & (!\ser1|receive|Q[1]~16\ & VCC))
-- \ser1|receive|Q[2]~18\ = CARRY((\ser1|receive|Q\(2) & !\ser1|receive|Q[1]~16\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \ser1|receive|Q\(2),
	datad => VCC,
	cin => \ser1|receive|Q[1]~16\,
	combout => \ser1|receive|Q[2]~17_combout\,
	cout => \ser1|receive|Q[2]~18\);

-- Location: FF_X31_Y21_N9
\ser1|receive|Q[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \ser1|receive|Q[2]~17_combout\,
	sclr => \ser1|rx_ctrl|start_rx~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ser1|receive|Q\(2));

-- Location: LCCOMB_X31_Y21_N10
\ser1|receive|Q[3]~19\ : cycloneive_lcell_comb
-- Equation(s):
-- \ser1|receive|Q[3]~19_combout\ = (\ser1|receive|Q\(3) & (!\ser1|receive|Q[2]~18\)) # (!\ser1|receive|Q\(3) & ((\ser1|receive|Q[2]~18\) # (GND)))
-- \ser1|receive|Q[3]~20\ = CARRY((!\ser1|receive|Q[2]~18\) # (!\ser1|receive|Q\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \ser1|receive|Q\(3),
	datad => VCC,
	cin => \ser1|receive|Q[2]~18\,
	combout => \ser1|receive|Q[3]~19_combout\,
	cout => \ser1|receive|Q[3]~20\);

-- Location: FF_X31_Y21_N11
\ser1|receive|Q[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \ser1|receive|Q[3]~19_combout\,
	sclr => \ser1|rx_ctrl|start_rx~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ser1|receive|Q\(3));

-- Location: LCCOMB_X31_Y21_N12
\ser1|receive|Q[4]~21\ : cycloneive_lcell_comb
-- Equation(s):
-- \ser1|receive|Q[4]~21_combout\ = (\ser1|receive|Q\(4) & (\ser1|receive|Q[3]~20\ $ (GND))) # (!\ser1|receive|Q\(4) & (!\ser1|receive|Q[3]~20\ & VCC))
-- \ser1|receive|Q[4]~22\ = CARRY((\ser1|receive|Q\(4) & !\ser1|receive|Q[3]~20\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \ser1|receive|Q\(4),
	datad => VCC,
	cin => \ser1|receive|Q[3]~20\,
	combout => \ser1|receive|Q[4]~21_combout\,
	cout => \ser1|receive|Q[4]~22\);

-- Location: FF_X31_Y21_N13
\ser1|receive|Q[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \ser1|receive|Q[4]~21_combout\,
	sclr => \ser1|rx_ctrl|start_rx~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ser1|receive|Q\(4));

-- Location: LCCOMB_X31_Y21_N14
\ser1|receive|Q[5]~23\ : cycloneive_lcell_comb
-- Equation(s):
-- \ser1|receive|Q[5]~23_combout\ = (\ser1|receive|Q\(5) & (!\ser1|receive|Q[4]~22\)) # (!\ser1|receive|Q\(5) & ((\ser1|receive|Q[4]~22\) # (GND)))
-- \ser1|receive|Q[5]~24\ = CARRY((!\ser1|receive|Q[4]~22\) # (!\ser1|receive|Q\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \ser1|receive|Q\(5),
	datad => VCC,
	cin => \ser1|receive|Q[4]~22\,
	combout => \ser1|receive|Q[5]~23_combout\,
	cout => \ser1|receive|Q[5]~24\);

-- Location: FF_X31_Y21_N15
\ser1|receive|Q[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \ser1|receive|Q[5]~23_combout\,
	sclr => \ser1|rx_ctrl|start_rx~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ser1|receive|Q\(5));

-- Location: LCCOMB_X31_Y21_N16
\ser1|receive|Q[6]~25\ : cycloneive_lcell_comb
-- Equation(s):
-- \ser1|receive|Q[6]~25_combout\ = (\ser1|receive|Q\(6) & (\ser1|receive|Q[5]~24\ $ (GND))) # (!\ser1|receive|Q\(6) & (!\ser1|receive|Q[5]~24\ & VCC))
-- \ser1|receive|Q[6]~26\ = CARRY((\ser1|receive|Q\(6) & !\ser1|receive|Q[5]~24\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \ser1|receive|Q\(6),
	datad => VCC,
	cin => \ser1|receive|Q[5]~24\,
	combout => \ser1|receive|Q[6]~25_combout\,
	cout => \ser1|receive|Q[6]~26\);

-- Location: FF_X31_Y21_N17
\ser1|receive|Q[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \ser1|receive|Q[6]~25_combout\,
	sclr => \ser1|rx_ctrl|start_rx~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ser1|receive|Q\(6));

-- Location: LCCOMB_X31_Y21_N18
\ser1|receive|Q[7]~27\ : cycloneive_lcell_comb
-- Equation(s):
-- \ser1|receive|Q[7]~27_combout\ = (\ser1|receive|Q\(7) & (!\ser1|receive|Q[6]~26\)) # (!\ser1|receive|Q\(7) & ((\ser1|receive|Q[6]~26\) # (GND)))
-- \ser1|receive|Q[7]~28\ = CARRY((!\ser1|receive|Q[6]~26\) # (!\ser1|receive|Q\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \ser1|receive|Q\(7),
	datad => VCC,
	cin => \ser1|receive|Q[6]~26\,
	combout => \ser1|receive|Q[7]~27_combout\,
	cout => \ser1|receive|Q[7]~28\);

-- Location: FF_X31_Y21_N19
\ser1|receive|Q[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \ser1|receive|Q[7]~27_combout\,
	sclr => \ser1|rx_ctrl|start_rx~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ser1|receive|Q\(7));

-- Location: LCCOMB_X31_Y21_N20
\ser1|receive|Q[8]~29\ : cycloneive_lcell_comb
-- Equation(s):
-- \ser1|receive|Q[8]~29_combout\ = (\ser1|receive|Q\(8) & (\ser1|receive|Q[7]~28\ $ (GND))) # (!\ser1|receive|Q\(8) & (!\ser1|receive|Q[7]~28\ & VCC))
-- \ser1|receive|Q[8]~30\ = CARRY((\ser1|receive|Q\(8) & !\ser1|receive|Q[7]~28\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \ser1|receive|Q\(8),
	datad => VCC,
	cin => \ser1|receive|Q[7]~28\,
	combout => \ser1|receive|Q[8]~29_combout\,
	cout => \ser1|receive|Q[8]~30\);

-- Location: FF_X31_Y21_N21
\ser1|receive|Q[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \ser1|receive|Q[8]~29_combout\,
	sclr => \ser1|rx_ctrl|start_rx~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ser1|receive|Q\(8));

-- Location: LCCOMB_X31_Y21_N22
\ser1|receive|Q[9]~31\ : cycloneive_lcell_comb
-- Equation(s):
-- \ser1|receive|Q[9]~31_combout\ = (\ser1|receive|Q\(9) & (!\ser1|receive|Q[8]~30\)) # (!\ser1|receive|Q\(9) & ((\ser1|receive|Q[8]~30\) # (GND)))
-- \ser1|receive|Q[9]~32\ = CARRY((!\ser1|receive|Q[8]~30\) # (!\ser1|receive|Q\(9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \ser1|receive|Q\(9),
	datad => VCC,
	cin => \ser1|receive|Q[8]~30\,
	combout => \ser1|receive|Q[9]~31_combout\,
	cout => \ser1|receive|Q[9]~32\);

-- Location: FF_X31_Y21_N23
\ser1|receive|Q[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \ser1|receive|Q[9]~31_combout\,
	sclr => \ser1|rx_ctrl|start_rx~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ser1|receive|Q\(9));

-- Location: LCCOMB_X31_Y21_N24
\ser1|receive|Q[10]~33\ : cycloneive_lcell_comb
-- Equation(s):
-- \ser1|receive|Q[10]~33_combout\ = (\ser1|receive|Q\(10) & (\ser1|receive|Q[9]~32\ $ (GND))) # (!\ser1|receive|Q\(10) & (!\ser1|receive|Q[9]~32\ & VCC))
-- \ser1|receive|Q[10]~34\ = CARRY((\ser1|receive|Q\(10) & !\ser1|receive|Q[9]~32\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \ser1|receive|Q\(10),
	datad => VCC,
	cin => \ser1|receive|Q[9]~32\,
	combout => \ser1|receive|Q[10]~33_combout\,
	cout => \ser1|receive|Q[10]~34\);

-- Location: FF_X31_Y21_N25
\ser1|receive|Q[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \ser1|receive|Q[10]~33_combout\,
	sclr => \ser1|rx_ctrl|start_rx~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ser1|receive|Q\(10));

-- Location: LCCOMB_X31_Y21_N26
\ser1|receive|Q[11]~35\ : cycloneive_lcell_comb
-- Equation(s):
-- \ser1|receive|Q[11]~35_combout\ = (\ser1|receive|Q\(11) & (!\ser1|receive|Q[10]~34\)) # (!\ser1|receive|Q\(11) & ((\ser1|receive|Q[10]~34\) # (GND)))
-- \ser1|receive|Q[11]~36\ = CARRY((!\ser1|receive|Q[10]~34\) # (!\ser1|receive|Q\(11)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \ser1|receive|Q\(11),
	datad => VCC,
	cin => \ser1|receive|Q[10]~34\,
	combout => \ser1|receive|Q[11]~35_combout\,
	cout => \ser1|receive|Q[11]~36\);

-- Location: FF_X31_Y21_N27
\ser1|receive|Q[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \ser1|receive|Q[11]~35_combout\,
	sclr => \ser1|rx_ctrl|start_rx~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ser1|receive|Q\(11));

-- Location: LCCOMB_X30_Y21_N30
\ser1|Equal0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \ser1|Equal0~2_combout\ = (!\ser1|receive|Q\(10) & (!\ser1|receive|Q\(6) & (\ser1|receive|Q\(9) & \ser1|receive|Q\(11))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ser1|receive|Q\(10),
	datab => \ser1|receive|Q\(6),
	datac => \ser1|receive|Q\(9),
	datad => \ser1|receive|Q\(11),
	combout => \ser1|Equal0~2_combout\);

-- Location: LCCOMB_X31_Y21_N28
\ser1|receive|Q[12]~37\ : cycloneive_lcell_comb
-- Equation(s):
-- \ser1|receive|Q[12]~37_combout\ = \ser1|receive|Q[11]~36\ $ (!\ser1|receive|Q\(12))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \ser1|receive|Q\(12),
	cin => \ser1|receive|Q[11]~36\,
	combout => \ser1|receive|Q[12]~37_combout\);

-- Location: FF_X31_Y21_N29
\ser1|receive|Q[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \ser1|receive|Q[12]~37_combout\,
	sclr => \ser1|rx_ctrl|start_rx~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ser1|receive|Q\(12));

-- Location: LCCOMB_X31_Y21_N0
\ser1|Equal0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \ser1|Equal0~0_combout\ = (\ser1|receive|Q\(1) & (!\ser1|receive|Q\(8) & (\ser1|receive|Q\(0) & !\ser1|receive|Q\(7))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ser1|receive|Q\(1),
	datab => \ser1|receive|Q\(8),
	datac => \ser1|receive|Q\(0),
	datad => \ser1|receive|Q\(7),
	combout => \ser1|Equal0~0_combout\);

-- Location: LCCOMB_X30_Y21_N16
\ser1|Equal0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \ser1|Equal0~1_combout\ = (!\ser1|receive|Q\(4) & (!\ser1|receive|Q\(2) & (\ser1|receive|Q\(3) & \ser1|receive|Q\(5))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ser1|receive|Q\(4),
	datab => \ser1|receive|Q\(2),
	datac => \ser1|receive|Q\(3),
	datad => \ser1|receive|Q\(5),
	combout => \ser1|Equal0~1_combout\);

-- Location: LCCOMB_X30_Y21_N28
\ser1|Equal0~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \ser1|Equal0~3_combout\ = (\ser1|Equal0~2_combout\ & (!\ser1|receive|Q\(12) & (\ser1|Equal0~0_combout\ & \ser1|Equal0~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ser1|Equal0~2_combout\,
	datab => \ser1|receive|Q\(12),
	datac => \ser1|Equal0~0_combout\,
	datad => \ser1|Equal0~1_combout\,
	combout => \ser1|Equal0~3_combout\);

-- Location: LCCOMB_X36_Y21_N20
\ser1|rx_ctrl|Selector1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \ser1|rx_ctrl|Selector1~0_combout\ = (\ser1|rx_ctrl|current_state.START~q\) # ((!\ser1|Equal0~3_combout\ & \ser1|rx_ctrl|current_state.SYNC~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110011011100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ser1|Equal0~3_combout\,
	datab => \ser1|rx_ctrl|current_state.START~q\,
	datac => \ser1|rx_ctrl|current_state.SYNC~q\,
	combout => \ser1|rx_ctrl|Selector1~0_combout\);

-- Location: FF_X36_Y21_N21
\ser1|rx_ctrl|current_state.SYNC\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \ser1|rx_ctrl|Selector1~0_combout\,
	sclr => \ALT_INV_KEY[1]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ser1|rx_ctrl|current_state.SYNC~q\);

-- Location: LCCOMB_X31_Y21_N30
\ser1|Equal1~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \ser1|Equal1~1_combout\ = (\ser1|receive|Q\(11)) # (((\ser1|receive|Q\(9)) # (!\ser1|receive|Q\(6))) # (!\ser1|receive|Q\(10)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ser1|receive|Q\(11),
	datab => \ser1|receive|Q\(10),
	datac => \ser1|receive|Q\(9),
	datad => \ser1|receive|Q\(6),
	combout => \ser1|Equal1~1_combout\);

-- Location: LCCOMB_X30_Y21_N6
\ser1|Equal1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \ser1|Equal1~0_combout\ = (\ser1|receive|Q\(5)) # ((\ser1|receive|Q\(3)) # ((!\ser1|receive|Q\(4)) # (!\ser1|receive|Q\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ser1|receive|Q\(5),
	datab => \ser1|receive|Q\(3),
	datac => \ser1|receive|Q\(2),
	datad => \ser1|receive|Q\(4),
	combout => \ser1|Equal1~0_combout\);

-- Location: LCCOMB_X31_Y21_N2
\ser1|Equal1~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \ser1|Equal1~2_combout\ = (\ser1|Equal1~1_combout\) # (((\ser1|Equal1~0_combout\) # (!\ser1|Equal0~0_combout\)) # (!\ser1|receive|Q\(12)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ser1|Equal1~1_combout\,
	datab => \ser1|receive|Q\(12),
	datac => \ser1|Equal1~0_combout\,
	datad => \ser1|Equal0~0_combout\,
	combout => \ser1|Equal1~2_combout\);

-- Location: LCCOMB_X36_Y21_N2
\ser1|rxdata|Q~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \ser1|rxdata|Q~8_combout\ = (\KEY[1]~input_o\ & (\ser1|rx_ctrl|current_state.READ~q\ & \ser1|rxdata|Q\(9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \KEY[1]~input_o\,
	datab => \ser1|rx_ctrl|current_state.READ~q\,
	datad => \ser1|rxdata|Q\(9),
	combout => \ser1|rxdata|Q~8_combout\);

-- Location: LCCOMB_X36_Y21_N22
\ser1|rxdata|Q~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \ser1|rxdata|Q~1_combout\ = ((\ser1|rx_ctrl|current_state.READ~q\) # (!\ser1|rx_ctrl|current_state.WAIT~q\)) # (!\KEY[1]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111101011111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \KEY[1]~input_o\,
	datac => \ser1|rx_ctrl|current_state.WAIT~q\,
	datad => \ser1|rx_ctrl|current_state.READ~q\,
	combout => \ser1|rxdata|Q~1_combout\);

-- Location: FF_X36_Y21_N3
\ser1|rxdata|Q[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \ser1|rxdata|Q~8_combout\,
	ena => \ser1|rxdata|Q~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ser1|rxdata|Q\(8));

-- Location: LCCOMB_X37_Y21_N28
\ser1|rxdata|Q~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \ser1|rxdata|Q~7_combout\ = (\ser1|rx_ctrl|current_state.READ~q\ & (\KEY[1]~input_o\ & \ser1|rxdata|Q\(8)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \ser1|rx_ctrl|current_state.READ~q\,
	datac => \KEY[1]~input_o\,
	datad => \ser1|rxdata|Q\(8),
	combout => \ser1|rxdata|Q~7_combout\);

-- Location: FF_X37_Y21_N29
\ser1|rxdata|Q[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \ser1|rxdata|Q~7_combout\,
	ena => \ser1|rxdata|Q~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ser1|rxdata|Q\(7));

-- Location: LCCOMB_X37_Y21_N30
\ser1|rxdata|Q~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \ser1|rxdata|Q~6_combout\ = (\ser1|rx_ctrl|current_state.READ~q\ & (\KEY[1]~input_o\ & \ser1|rxdata|Q\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \ser1|rx_ctrl|current_state.READ~q\,
	datac => \KEY[1]~input_o\,
	datad => \ser1|rxdata|Q\(7),
	combout => \ser1|rxdata|Q~6_combout\);

-- Location: FF_X37_Y21_N31
\ser1|rxdata|Q[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \ser1|rxdata|Q~6_combout\,
	ena => \ser1|rxdata|Q~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ser1|rxdata|Q\(6));

-- Location: LCCOMB_X37_Y21_N0
\ser1|rxdata|Q~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \ser1|rxdata|Q~5_combout\ = (\ser1|rxdata|Q\(6) & (\ser1|rx_ctrl|current_state.READ~q\ & \KEY[1]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ser1|rxdata|Q\(6),
	datab => \ser1|rx_ctrl|current_state.READ~q\,
	datac => \KEY[1]~input_o\,
	combout => \ser1|rxdata|Q~5_combout\);

-- Location: FF_X37_Y21_N1
\ser1|rxdata|Q[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \ser1|rxdata|Q~5_combout\,
	ena => \ser1|rxdata|Q~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ser1|rxdata|Q\(5));

-- Location: LCCOMB_X37_Y21_N18
\ser1|rxdata|Q~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \ser1|rxdata|Q~4_combout\ = (\ser1|rx_ctrl|current_state.READ~q\ & (\KEY[1]~input_o\ & \ser1|rxdata|Q\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \ser1|rx_ctrl|current_state.READ~q\,
	datac => \KEY[1]~input_o\,
	datad => \ser1|rxdata|Q\(5),
	combout => \ser1|rxdata|Q~4_combout\);

-- Location: FF_X37_Y21_N19
\ser1|rxdata|Q[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \ser1|rxdata|Q~4_combout\,
	ena => \ser1|rxdata|Q~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ser1|rxdata|Q\(4));

-- Location: LCCOMB_X37_Y21_N24
\ser1|rxdata|Q~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \ser1|rxdata|Q~3_combout\ = (\ser1|rx_ctrl|current_state.READ~q\ & (\KEY[1]~input_o\ & \ser1|rxdata|Q\(4)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \ser1|rx_ctrl|current_state.READ~q\,
	datac => \KEY[1]~input_o\,
	datad => \ser1|rxdata|Q\(4),
	combout => \ser1|rxdata|Q~3_combout\);

-- Location: FF_X37_Y21_N25
\ser1|rxdata|Q[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \ser1|rxdata|Q~3_combout\,
	ena => \ser1|rxdata|Q~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ser1|rxdata|Q\(3));

-- Location: LCCOMB_X37_Y21_N2
\ser1|rxdata|Q~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \ser1|rxdata|Q~2_combout\ = (\ser1|rx_ctrl|current_state.READ~q\ & (\KEY[1]~input_o\ & \ser1|rxdata|Q\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \ser1|rx_ctrl|current_state.READ~q\,
	datac => \KEY[1]~input_o\,
	datad => \ser1|rxdata|Q\(3),
	combout => \ser1|rxdata|Q~2_combout\);

-- Location: FF_X37_Y21_N3
\ser1|rxdata|Q[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \ser1|rxdata|Q~2_combout\,
	ena => \ser1|rxdata|Q~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ser1|rxdata|Q\(2));

-- Location: LCCOMB_X37_Y21_N6
\ser1|rxdata|Q~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \ser1|rxdata|Q~0_combout\ = (\ser1|rx_ctrl|current_state.READ~q\ & (\KEY[1]~input_o\ & \ser1|rxdata|Q\(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \ser1|rx_ctrl|current_state.READ~q\,
	datac => \KEY[1]~input_o\,
	datad => \ser1|rxdata|Q\(2),
	combout => \ser1|rxdata|Q~0_combout\);

-- Location: FF_X37_Y21_N7
\ser1|rxdata|Q[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \ser1|rxdata|Q~0_combout\,
	ena => \ser1|rxdata|Q~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ser1|rxdata|Q\(1));

-- Location: LCCOMB_X36_Y21_N18
\ser1|rxdata|Q~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \ser1|rxdata|Q~10_combout\ = (\KEY[1]~input_o\ & (\ser1|rx_ctrl|current_state.READ~q\ & \ser1|rxdata|Q\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \KEY[1]~input_o\,
	datab => \ser1|rx_ctrl|current_state.READ~q\,
	datad => \ser1|rxdata|Q\(1),
	combout => \ser1|rxdata|Q~10_combout\);

-- Location: FF_X36_Y21_N19
\ser1|rxdata|Q[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \ser1|rxdata|Q~10_combout\,
	ena => \ser1|rxdata|Q~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ser1|rxdata|Q\(0));

-- Location: LCCOMB_X36_Y21_N6
\ser1|rx_ctrl|Selector3~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \ser1|rx_ctrl|Selector3~1_combout\ = (\ser1|rx_ctrl|current_state.READ~q\) # ((\ser1|Equal1~2_combout\ & \ser1|rx_ctrl|Selector3~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \ser1|rx_ctrl|current_state.READ~q\,
	datac => \ser1|Equal1~2_combout\,
	datad => \ser1|rx_ctrl|Selector3~0_combout\,
	combout => \ser1|rx_ctrl|Selector3~1_combout\);

-- Location: FF_X36_Y21_N7
\ser1|rx_ctrl|current_state.PAUSE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \ser1|rx_ctrl|Selector3~1_combout\,
	sclr => \ALT_INV_KEY[1]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ser1|rx_ctrl|current_state.PAUSE~q\);

-- Location: LCCOMB_X36_Y21_N28
\ser1|rx_ctrl|Selector3~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \ser1|rx_ctrl|Selector3~0_combout\ = (!\ser1|Equal3~2_combout\ & (\ser1|rx_ctrl|current_state.PAUSE~q\ & ((!\ser1|rxdata|Q\(0)) # (!\ser1|rxdata|Q\(9)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000011100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ser1|rxdata|Q\(9),
	datab => \ser1|rxdata|Q\(0),
	datac => \ser1|Equal3~2_combout\,
	datad => \ser1|rx_ctrl|current_state.PAUSE~q\,
	combout => \ser1|rx_ctrl|Selector3~0_combout\);

-- Location: LCCOMB_X36_Y21_N24
\ser1|rx_ctrl|Selector2~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \ser1|rx_ctrl|Selector2~0_combout\ = (\ser1|Equal0~3_combout\ & ((\ser1|rx_ctrl|current_state.SYNC~q\) # ((!\ser1|Equal1~2_combout\ & \ser1|rx_ctrl|Selector3~0_combout\)))) # (!\ser1|Equal0~3_combout\ & (((!\ser1|Equal1~2_combout\ & 
-- \ser1|rx_ctrl|Selector3~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000111110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ser1|Equal0~3_combout\,
	datab => \ser1|rx_ctrl|current_state.SYNC~q\,
	datac => \ser1|Equal1~2_combout\,
	datad => \ser1|rx_ctrl|Selector3~0_combout\,
	combout => \ser1|rx_ctrl|Selector2~0_combout\);

-- Location: FF_X36_Y21_N25
\ser1|rx_ctrl|current_state.READ\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \ser1|rx_ctrl|Selector2~0_combout\,
	sclr => \ALT_INV_KEY[1]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ser1|rx_ctrl|current_state.READ~q\);

-- Location: LCCOMB_X36_Y21_N12
\ser1|rxdata|Q~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \ser1|rxdata|Q~9_combout\ = (\KEY[1]~input_o\ & (\GPIO_0_D[1]~input_o\ & \ser1|rx_ctrl|current_state.READ~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \KEY[1]~input_o\,
	datac => \GPIO_0_D[1]~input_o\,
	datad => \ser1|rx_ctrl|current_state.READ~q\,
	combout => \ser1|rxdata|Q~9_combout\);

-- Location: FF_X36_Y21_N13
\ser1|rxdata|Q[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \ser1|rxdata|Q~9_combout\,
	ena => \ser1|rxdata|Q~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ser1|rxdata|Q\(9));

-- Location: LCCOMB_X36_Y21_N10
\ser1|rx_ctrl|Selector0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \ser1|rx_ctrl|Selector0~0_combout\ = (\ser1|rxdata|Q\(9) & (\ser1|rxdata|Q\(0) & (!\ser1|Equal3~2_combout\ & \ser1|rx_ctrl|current_state.PAUSE~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ser1|rxdata|Q\(9),
	datab => \ser1|rxdata|Q\(0),
	datac => \ser1|Equal3~2_combout\,
	datad => \ser1|rx_ctrl|current_state.PAUSE~q\,
	combout => \ser1|rx_ctrl|Selector0~0_combout\);

-- Location: LCCOMB_X36_Y21_N8
\ser1|rx_ctrl|current_state~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \ser1|rx_ctrl|current_state~12_combout\ = (\ser1|received|Q[0]~1_combout\ & (!\ser1|rx_ctrl|Selector0~0_combout\ & ((\ser1|rx_ctrl|current_state.WAIT~q\) # (!\GPIO_0_D[1]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ser1|received|Q[0]~1_combout\,
	datab => \GPIO_0_D[1]~input_o\,
	datac => \ser1|rx_ctrl|current_state.WAIT~q\,
	datad => \ser1|rx_ctrl|Selector0~0_combout\,
	combout => \ser1|rx_ctrl|current_state~12_combout\);

-- Location: FF_X36_Y21_N9
\ser1|rx_ctrl|current_state.WAIT\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \ser1|rx_ctrl|current_state~12_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ser1|rx_ctrl|current_state.WAIT~q\);

-- Location: LCCOMB_X32_Y21_N26
\ser1|comb~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \ser1|comb~0_combout\ = (!\ser1|rx_ctrl|current_state.WAIT~q\) # (!\KEY[1]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101111101011111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \KEY[1]~input_o\,
	datac => \ser1|rx_ctrl|current_state.WAIT~q\,
	combout => \ser1|comb~0_combout\);

-- Location: LCCOMB_X32_Y21_N28
\ser1|rx_count|Q[1]~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \ser1|rx_count|Q[1]~12_combout\ = ((!\ser1|Equal1~2_combout\) # (!\ser1|rx_ctrl|current_state.WAIT~q\)) # (!\KEY[1]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \KEY[1]~input_o\,
	datac => \ser1|rx_ctrl|current_state.WAIT~q\,
	datad => \ser1|Equal1~2_combout\,
	combout => \ser1|rx_count|Q[1]~12_combout\);

-- Location: FF_X32_Y21_N5
\ser1|rx_count|Q[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \ser1|rx_count|Q[0]~10_combout\,
	sclr => \ser1|comb~0_combout\,
	ena => \ser1|rx_count|Q[1]~12_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ser1|rx_count|Q\(0));

-- Location: LCCOMB_X32_Y21_N6
\ser1|rx_count|Q[1]~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \ser1|rx_count|Q[1]~13_combout\ = (\ser1|rx_count|Q\(1) & (!\ser1|rx_count|Q[0]~11\)) # (!\ser1|rx_count|Q\(1) & ((\ser1|rx_count|Q[0]~11\) # (GND)))
-- \ser1|rx_count|Q[1]~14\ = CARRY((!\ser1|rx_count|Q[0]~11\) # (!\ser1|rx_count|Q\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \ser1|rx_count|Q\(1),
	datad => VCC,
	cin => \ser1|rx_count|Q[0]~11\,
	combout => \ser1|rx_count|Q[1]~13_combout\,
	cout => \ser1|rx_count|Q[1]~14\);

-- Location: FF_X32_Y21_N7
\ser1|rx_count|Q[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \ser1|rx_count|Q[1]~13_combout\,
	sclr => \ser1|comb~0_combout\,
	ena => \ser1|rx_count|Q[1]~12_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ser1|rx_count|Q\(1));

-- Location: LCCOMB_X32_Y21_N8
\ser1|rx_count|Q[2]~15\ : cycloneive_lcell_comb
-- Equation(s):
-- \ser1|rx_count|Q[2]~15_combout\ = (\ser1|rx_count|Q\(2) & (\ser1|rx_count|Q[1]~14\ $ (GND))) # (!\ser1|rx_count|Q\(2) & (!\ser1|rx_count|Q[1]~14\ & VCC))
-- \ser1|rx_count|Q[2]~16\ = CARRY((\ser1|rx_count|Q\(2) & !\ser1|rx_count|Q[1]~14\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \ser1|rx_count|Q\(2),
	datad => VCC,
	cin => \ser1|rx_count|Q[1]~14\,
	combout => \ser1|rx_count|Q[2]~15_combout\,
	cout => \ser1|rx_count|Q[2]~16\);

-- Location: FF_X32_Y21_N9
\ser1|rx_count|Q[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \ser1|rx_count|Q[2]~15_combout\,
	sclr => \ser1|comb~0_combout\,
	ena => \ser1|rx_count|Q[1]~12_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ser1|rx_count|Q\(2));

-- Location: LCCOMB_X32_Y21_N10
\ser1|rx_count|Q[3]~17\ : cycloneive_lcell_comb
-- Equation(s):
-- \ser1|rx_count|Q[3]~17_combout\ = (\ser1|rx_count|Q\(3) & (!\ser1|rx_count|Q[2]~16\)) # (!\ser1|rx_count|Q\(3) & ((\ser1|rx_count|Q[2]~16\) # (GND)))
-- \ser1|rx_count|Q[3]~18\ = CARRY((!\ser1|rx_count|Q[2]~16\) # (!\ser1|rx_count|Q\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \ser1|rx_count|Q\(3),
	datad => VCC,
	cin => \ser1|rx_count|Q[2]~16\,
	combout => \ser1|rx_count|Q[3]~17_combout\,
	cout => \ser1|rx_count|Q[3]~18\);

-- Location: FF_X32_Y21_N11
\ser1|rx_count|Q[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \ser1|rx_count|Q[3]~17_combout\,
	sclr => \ser1|comb~0_combout\,
	ena => \ser1|rx_count|Q[1]~12_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ser1|rx_count|Q\(3));

-- Location: LCCOMB_X32_Y21_N12
\ser1|rx_count|Q[4]~19\ : cycloneive_lcell_comb
-- Equation(s):
-- \ser1|rx_count|Q[4]~19_combout\ = (\ser1|rx_count|Q\(4) & (\ser1|rx_count|Q[3]~18\ $ (GND))) # (!\ser1|rx_count|Q\(4) & (!\ser1|rx_count|Q[3]~18\ & VCC))
-- \ser1|rx_count|Q[4]~20\ = CARRY((\ser1|rx_count|Q\(4) & !\ser1|rx_count|Q[3]~18\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \ser1|rx_count|Q\(4),
	datad => VCC,
	cin => \ser1|rx_count|Q[3]~18\,
	combout => \ser1|rx_count|Q[4]~19_combout\,
	cout => \ser1|rx_count|Q[4]~20\);

-- Location: FF_X32_Y21_N13
\ser1|rx_count|Q[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \ser1|rx_count|Q[4]~19_combout\,
	sclr => \ser1|comb~0_combout\,
	ena => \ser1|rx_count|Q[1]~12_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ser1|rx_count|Q\(4));

-- Location: LCCOMB_X32_Y21_N14
\ser1|rx_count|Q[5]~21\ : cycloneive_lcell_comb
-- Equation(s):
-- \ser1|rx_count|Q[5]~21_combout\ = (\ser1|rx_count|Q\(5) & (!\ser1|rx_count|Q[4]~20\)) # (!\ser1|rx_count|Q\(5) & ((\ser1|rx_count|Q[4]~20\) # (GND)))
-- \ser1|rx_count|Q[5]~22\ = CARRY((!\ser1|rx_count|Q[4]~20\) # (!\ser1|rx_count|Q\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \ser1|rx_count|Q\(5),
	datad => VCC,
	cin => \ser1|rx_count|Q[4]~20\,
	combout => \ser1|rx_count|Q[5]~21_combout\,
	cout => \ser1|rx_count|Q[5]~22\);

-- Location: FF_X32_Y21_N15
\ser1|rx_count|Q[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \ser1|rx_count|Q[5]~21_combout\,
	sclr => \ser1|comb~0_combout\,
	ena => \ser1|rx_count|Q[1]~12_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ser1|rx_count|Q\(5));

-- Location: LCCOMB_X32_Y21_N16
\ser1|rx_count|Q[6]~23\ : cycloneive_lcell_comb
-- Equation(s):
-- \ser1|rx_count|Q[6]~23_combout\ = (\ser1|rx_count|Q\(6) & (\ser1|rx_count|Q[5]~22\ $ (GND))) # (!\ser1|rx_count|Q\(6) & (!\ser1|rx_count|Q[5]~22\ & VCC))
-- \ser1|rx_count|Q[6]~24\ = CARRY((\ser1|rx_count|Q\(6) & !\ser1|rx_count|Q[5]~22\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \ser1|rx_count|Q\(6),
	datad => VCC,
	cin => \ser1|rx_count|Q[5]~22\,
	combout => \ser1|rx_count|Q[6]~23_combout\,
	cout => \ser1|rx_count|Q[6]~24\);

-- Location: FF_X32_Y21_N17
\ser1|rx_count|Q[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \ser1|rx_count|Q[6]~23_combout\,
	sclr => \ser1|comb~0_combout\,
	ena => \ser1|rx_count|Q[1]~12_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ser1|rx_count|Q\(6));

-- Location: LCCOMB_X32_Y21_N18
\ser1|rx_count|Q[7]~25\ : cycloneive_lcell_comb
-- Equation(s):
-- \ser1|rx_count|Q[7]~25_combout\ = (\ser1|rx_count|Q\(7) & (!\ser1|rx_count|Q[6]~24\)) # (!\ser1|rx_count|Q\(7) & ((\ser1|rx_count|Q[6]~24\) # (GND)))
-- \ser1|rx_count|Q[7]~26\ = CARRY((!\ser1|rx_count|Q[6]~24\) # (!\ser1|rx_count|Q\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \ser1|rx_count|Q\(7),
	datad => VCC,
	cin => \ser1|rx_count|Q[6]~24\,
	combout => \ser1|rx_count|Q[7]~25_combout\,
	cout => \ser1|rx_count|Q[7]~26\);

-- Location: FF_X32_Y21_N19
\ser1|rx_count|Q[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \ser1|rx_count|Q[7]~25_combout\,
	sclr => \ser1|comb~0_combout\,
	ena => \ser1|rx_count|Q[1]~12_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ser1|rx_count|Q\(7));

-- Location: LCCOMB_X32_Y21_N20
\ser1|rx_count|Q[8]~27\ : cycloneive_lcell_comb
-- Equation(s):
-- \ser1|rx_count|Q[8]~27_combout\ = (\ser1|rx_count|Q\(8) & (\ser1|rx_count|Q[7]~26\ $ (GND))) # (!\ser1|rx_count|Q\(8) & (!\ser1|rx_count|Q[7]~26\ & VCC))
-- \ser1|rx_count|Q[8]~28\ = CARRY((\ser1|rx_count|Q\(8) & !\ser1|rx_count|Q[7]~26\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \ser1|rx_count|Q\(8),
	datad => VCC,
	cin => \ser1|rx_count|Q[7]~26\,
	combout => \ser1|rx_count|Q[8]~27_combout\,
	cout => \ser1|rx_count|Q[8]~28\);

-- Location: FF_X32_Y21_N21
\ser1|rx_count|Q[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \ser1|rx_count|Q[8]~27_combout\,
	sclr => \ser1|comb~0_combout\,
	ena => \ser1|rx_count|Q[1]~12_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ser1|rx_count|Q\(8));

-- Location: LCCOMB_X32_Y21_N22
\ser1|rx_count|Q[9]~29\ : cycloneive_lcell_comb
-- Equation(s):
-- \ser1|rx_count|Q[9]~29_combout\ = \ser1|rx_count|Q\(9) $ (\ser1|rx_count|Q[8]~28\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \ser1|rx_count|Q\(9),
	cin => \ser1|rx_count|Q[8]~28\,
	combout => \ser1|rx_count|Q[9]~29_combout\);

-- Location: FF_X32_Y21_N23
\ser1|rx_count|Q[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \ser1|rx_count|Q[9]~29_combout\,
	sclr => \ser1|comb~0_combout\,
	ena => \ser1|rx_count|Q[1]~12_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ser1|rx_count|Q\(9));

-- Location: LCCOMB_X32_Y21_N30
\ser1|Equal3~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \ser1|Equal3~1_combout\ = (!\ser1|rx_count|Q\(4) & (!\ser1|rx_count|Q\(7) & (!\ser1|rx_count|Q\(5) & !\ser1|rx_count|Q\(6))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ser1|rx_count|Q\(4),
	datab => \ser1|rx_count|Q\(7),
	datac => \ser1|rx_count|Q\(5),
	datad => \ser1|rx_count|Q\(6),
	combout => \ser1|Equal3~1_combout\);

-- Location: LCCOMB_X32_Y21_N0
\ser1|Equal3~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \ser1|Equal3~0_combout\ = (\ser1|rx_count|Q\(3) & (!\ser1|rx_count|Q\(2) & (\ser1|rx_count|Q\(0) & !\ser1|rx_count|Q\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ser1|rx_count|Q\(3),
	datab => \ser1|rx_count|Q\(2),
	datac => \ser1|rx_count|Q\(0),
	datad => \ser1|rx_count|Q\(1),
	combout => \ser1|Equal3~0_combout\);

-- Location: LCCOMB_X32_Y21_N24
\ser1|Equal3~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \ser1|Equal3~2_combout\ = (!\ser1|rx_count|Q\(9) & (!\ser1|rx_count|Q\(8) & (\ser1|Equal3~1_combout\ & \ser1|Equal3~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ser1|rx_count|Q\(9),
	datab => \ser1|rx_count|Q\(8),
	datac => \ser1|Equal3~1_combout\,
	datad => \ser1|Equal3~0_combout\,
	combout => \ser1|Equal3~2_combout\);

-- Location: LCCOMB_X35_Y21_N30
\ser1|rx_ctrl|current_state~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \ser1|rx_ctrl|current_state~11_combout\ = (\KEY[1]~input_o\ & (\ser1|Equal3~2_combout\ & \ser1|rx_ctrl|current_state.PAUSE~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \KEY[1]~input_o\,
	datac => \ser1|Equal3~2_combout\,
	datad => \ser1|rx_ctrl|current_state.PAUSE~q\,
	combout => \ser1|rx_ctrl|current_state~11_combout\);

-- Location: FF_X35_Y21_N31
\ser1|rx_ctrl|current_state.DONE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \ser1|rx_ctrl|current_state~11_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ser1|rx_ctrl|current_state.DONE~q\);

-- Location: LCCOMB_X35_Y21_N12
\cntrl|packet_time|Q~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \cntrl|packet_time|Q~2_combout\ = (!\ser1|rx_ctrl|current_state.DONE~q\ & (!\cntrl|control|state~q\ & (!\cntrl|packet_time|Q\(0) & \KEY[1]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ser1|rx_ctrl|current_state.DONE~q\,
	datab => \cntrl|control|state~q\,
	datac => \cntrl|packet_time|Q\(0),
	datad => \KEY[1]~input_o\,
	combout => \cntrl|packet_time|Q~2_combout\);

-- Location: LCCOMB_X35_Y21_N4
\cntrl|packet_time|Q~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \cntrl|packet_time|Q~0_combout\ = (\KEY[1]~input_o\ & (!\ser1|rx_ctrl|current_state.DONE~q\ & !\cntrl|control|state~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \KEY[1]~input_o\,
	datac => \ser1|rx_ctrl|current_state.DONE~q\,
	datad => \cntrl|control|state~q\,
	combout => \cntrl|packet_time|Q~0_combout\);

-- Location: LCCOMB_X34_Y22_N12
\cntrl|timeout_count|Q[0]~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \cntrl|timeout_count|Q[0]~20_combout\ = \cntrl|timeout_count|Q\(0) $ (VCC)
-- \cntrl|timeout_count|Q[0]~21\ = CARRY(\cntrl|timeout_count|Q\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cntrl|timeout_count|Q\(0),
	datad => VCC,
	combout => \cntrl|timeout_count|Q[0]~20_combout\,
	cout => \cntrl|timeout_count|Q[0]~21\);

-- Location: FF_X34_Y22_N13
\cntrl|timeout_count|Q[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \cntrl|timeout_count|Q[0]~20_combout\,
	sclr => \cntrl|clr_count~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \cntrl|timeout_count|Q\(0));

-- Location: LCCOMB_X34_Y22_N14
\cntrl|timeout_count|Q[1]~22\ : cycloneive_lcell_comb
-- Equation(s):
-- \cntrl|timeout_count|Q[1]~22_combout\ = (\cntrl|timeout_count|Q\(1) & (!\cntrl|timeout_count|Q[0]~21\)) # (!\cntrl|timeout_count|Q\(1) & ((\cntrl|timeout_count|Q[0]~21\) # (GND)))
-- \cntrl|timeout_count|Q[1]~23\ = CARRY((!\cntrl|timeout_count|Q[0]~21\) # (!\cntrl|timeout_count|Q\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \cntrl|timeout_count|Q\(1),
	datad => VCC,
	cin => \cntrl|timeout_count|Q[0]~21\,
	combout => \cntrl|timeout_count|Q[1]~22_combout\,
	cout => \cntrl|timeout_count|Q[1]~23\);

-- Location: FF_X34_Y22_N15
\cntrl|timeout_count|Q[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \cntrl|timeout_count|Q[1]~22_combout\,
	sclr => \cntrl|clr_count~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \cntrl|timeout_count|Q\(1));

-- Location: LCCOMB_X34_Y22_N16
\cntrl|timeout_count|Q[2]~24\ : cycloneive_lcell_comb
-- Equation(s):
-- \cntrl|timeout_count|Q[2]~24_combout\ = (\cntrl|timeout_count|Q\(2) & (\cntrl|timeout_count|Q[1]~23\ $ (GND))) # (!\cntrl|timeout_count|Q\(2) & (!\cntrl|timeout_count|Q[1]~23\ & VCC))
-- \cntrl|timeout_count|Q[2]~25\ = CARRY((\cntrl|timeout_count|Q\(2) & !\cntrl|timeout_count|Q[1]~23\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \cntrl|timeout_count|Q\(2),
	datad => VCC,
	cin => \cntrl|timeout_count|Q[1]~23\,
	combout => \cntrl|timeout_count|Q[2]~24_combout\,
	cout => \cntrl|timeout_count|Q[2]~25\);

-- Location: FF_X34_Y22_N17
\cntrl|timeout_count|Q[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \cntrl|timeout_count|Q[2]~24_combout\,
	sclr => \cntrl|clr_count~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \cntrl|timeout_count|Q\(2));

-- Location: LCCOMB_X34_Y22_N18
\cntrl|timeout_count|Q[3]~26\ : cycloneive_lcell_comb
-- Equation(s):
-- \cntrl|timeout_count|Q[3]~26_combout\ = (\cntrl|timeout_count|Q\(3) & (!\cntrl|timeout_count|Q[2]~25\)) # (!\cntrl|timeout_count|Q\(3) & ((\cntrl|timeout_count|Q[2]~25\) # (GND)))
-- \cntrl|timeout_count|Q[3]~27\ = CARRY((!\cntrl|timeout_count|Q[2]~25\) # (!\cntrl|timeout_count|Q\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \cntrl|timeout_count|Q\(3),
	datad => VCC,
	cin => \cntrl|timeout_count|Q[2]~25\,
	combout => \cntrl|timeout_count|Q[3]~26_combout\,
	cout => \cntrl|timeout_count|Q[3]~27\);

-- Location: FF_X34_Y22_N19
\cntrl|timeout_count|Q[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \cntrl|timeout_count|Q[3]~26_combout\,
	sclr => \cntrl|clr_count~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \cntrl|timeout_count|Q\(3));

-- Location: LCCOMB_X34_Y22_N20
\cntrl|timeout_count|Q[4]~28\ : cycloneive_lcell_comb
-- Equation(s):
-- \cntrl|timeout_count|Q[4]~28_combout\ = (\cntrl|timeout_count|Q\(4) & (\cntrl|timeout_count|Q[3]~27\ $ (GND))) # (!\cntrl|timeout_count|Q\(4) & (!\cntrl|timeout_count|Q[3]~27\ & VCC))
-- \cntrl|timeout_count|Q[4]~29\ = CARRY((\cntrl|timeout_count|Q\(4) & !\cntrl|timeout_count|Q[3]~27\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \cntrl|timeout_count|Q\(4),
	datad => VCC,
	cin => \cntrl|timeout_count|Q[3]~27\,
	combout => \cntrl|timeout_count|Q[4]~28_combout\,
	cout => \cntrl|timeout_count|Q[4]~29\);

-- Location: FF_X34_Y22_N21
\cntrl|timeout_count|Q[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \cntrl|timeout_count|Q[4]~28_combout\,
	sclr => \cntrl|clr_count~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \cntrl|timeout_count|Q\(4));

-- Location: LCCOMB_X34_Y22_N22
\cntrl|timeout_count|Q[5]~30\ : cycloneive_lcell_comb
-- Equation(s):
-- \cntrl|timeout_count|Q[5]~30_combout\ = (\cntrl|timeout_count|Q\(5) & (!\cntrl|timeout_count|Q[4]~29\)) # (!\cntrl|timeout_count|Q\(5) & ((\cntrl|timeout_count|Q[4]~29\) # (GND)))
-- \cntrl|timeout_count|Q[5]~31\ = CARRY((!\cntrl|timeout_count|Q[4]~29\) # (!\cntrl|timeout_count|Q\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \cntrl|timeout_count|Q\(5),
	datad => VCC,
	cin => \cntrl|timeout_count|Q[4]~29\,
	combout => \cntrl|timeout_count|Q[5]~30_combout\,
	cout => \cntrl|timeout_count|Q[5]~31\);

-- Location: FF_X34_Y22_N23
\cntrl|timeout_count|Q[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \cntrl|timeout_count|Q[5]~30_combout\,
	sclr => \cntrl|clr_count~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \cntrl|timeout_count|Q\(5));

-- Location: LCCOMB_X34_Y22_N24
\cntrl|timeout_count|Q[6]~32\ : cycloneive_lcell_comb
-- Equation(s):
-- \cntrl|timeout_count|Q[6]~32_combout\ = (\cntrl|timeout_count|Q\(6) & (\cntrl|timeout_count|Q[5]~31\ $ (GND))) # (!\cntrl|timeout_count|Q\(6) & (!\cntrl|timeout_count|Q[5]~31\ & VCC))
-- \cntrl|timeout_count|Q[6]~33\ = CARRY((\cntrl|timeout_count|Q\(6) & !\cntrl|timeout_count|Q[5]~31\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \cntrl|timeout_count|Q\(6),
	datad => VCC,
	cin => \cntrl|timeout_count|Q[5]~31\,
	combout => \cntrl|timeout_count|Q[6]~32_combout\,
	cout => \cntrl|timeout_count|Q[6]~33\);

-- Location: FF_X34_Y22_N25
\cntrl|timeout_count|Q[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \cntrl|timeout_count|Q[6]~32_combout\,
	sclr => \cntrl|clr_count~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \cntrl|timeout_count|Q\(6));

-- Location: LCCOMB_X34_Y22_N26
\cntrl|timeout_count|Q[7]~34\ : cycloneive_lcell_comb
-- Equation(s):
-- \cntrl|timeout_count|Q[7]~34_combout\ = (\cntrl|timeout_count|Q\(7) & (!\cntrl|timeout_count|Q[6]~33\)) # (!\cntrl|timeout_count|Q\(7) & ((\cntrl|timeout_count|Q[6]~33\) # (GND)))
-- \cntrl|timeout_count|Q[7]~35\ = CARRY((!\cntrl|timeout_count|Q[6]~33\) # (!\cntrl|timeout_count|Q\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \cntrl|timeout_count|Q\(7),
	datad => VCC,
	cin => \cntrl|timeout_count|Q[6]~33\,
	combout => \cntrl|timeout_count|Q[7]~34_combout\,
	cout => \cntrl|timeout_count|Q[7]~35\);

-- Location: FF_X34_Y22_N27
\cntrl|timeout_count|Q[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \cntrl|timeout_count|Q[7]~34_combout\,
	sclr => \cntrl|clr_count~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \cntrl|timeout_count|Q\(7));

-- Location: LCCOMB_X34_Y22_N28
\cntrl|timeout_count|Q[8]~36\ : cycloneive_lcell_comb
-- Equation(s):
-- \cntrl|timeout_count|Q[8]~36_combout\ = (\cntrl|timeout_count|Q\(8) & (\cntrl|timeout_count|Q[7]~35\ $ (GND))) # (!\cntrl|timeout_count|Q\(8) & (!\cntrl|timeout_count|Q[7]~35\ & VCC))
-- \cntrl|timeout_count|Q[8]~37\ = CARRY((\cntrl|timeout_count|Q\(8) & !\cntrl|timeout_count|Q[7]~35\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \cntrl|timeout_count|Q\(8),
	datad => VCC,
	cin => \cntrl|timeout_count|Q[7]~35\,
	combout => \cntrl|timeout_count|Q[8]~36_combout\,
	cout => \cntrl|timeout_count|Q[8]~37\);

-- Location: FF_X34_Y22_N29
\cntrl|timeout_count|Q[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \cntrl|timeout_count|Q[8]~36_combout\,
	sclr => \cntrl|clr_count~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \cntrl|timeout_count|Q\(8));

-- Location: LCCOMB_X34_Y22_N30
\cntrl|timeout_count|Q[9]~38\ : cycloneive_lcell_comb
-- Equation(s):
-- \cntrl|timeout_count|Q[9]~38_combout\ = (\cntrl|timeout_count|Q\(9) & (!\cntrl|timeout_count|Q[8]~37\)) # (!\cntrl|timeout_count|Q\(9) & ((\cntrl|timeout_count|Q[8]~37\) # (GND)))
-- \cntrl|timeout_count|Q[9]~39\ = CARRY((!\cntrl|timeout_count|Q[8]~37\) # (!\cntrl|timeout_count|Q\(9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \cntrl|timeout_count|Q\(9),
	datad => VCC,
	cin => \cntrl|timeout_count|Q[8]~37\,
	combout => \cntrl|timeout_count|Q[9]~38_combout\,
	cout => \cntrl|timeout_count|Q[9]~39\);

-- Location: FF_X34_Y22_N31
\cntrl|timeout_count|Q[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \cntrl|timeout_count|Q[9]~38_combout\,
	sclr => \cntrl|clr_count~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \cntrl|timeout_count|Q\(9));

-- Location: LCCOMB_X34_Y21_N0
\cntrl|timeout_count|Q[10]~40\ : cycloneive_lcell_comb
-- Equation(s):
-- \cntrl|timeout_count|Q[10]~40_combout\ = (\cntrl|timeout_count|Q\(10) & (\cntrl|timeout_count|Q[9]~39\ $ (GND))) # (!\cntrl|timeout_count|Q\(10) & (!\cntrl|timeout_count|Q[9]~39\ & VCC))
-- \cntrl|timeout_count|Q[10]~41\ = CARRY((\cntrl|timeout_count|Q\(10) & !\cntrl|timeout_count|Q[9]~39\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \cntrl|timeout_count|Q\(10),
	datad => VCC,
	cin => \cntrl|timeout_count|Q[9]~39\,
	combout => \cntrl|timeout_count|Q[10]~40_combout\,
	cout => \cntrl|timeout_count|Q[10]~41\);

-- Location: FF_X34_Y21_N1
\cntrl|timeout_count|Q[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \cntrl|timeout_count|Q[10]~40_combout\,
	sclr => \cntrl|clr_count~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \cntrl|timeout_count|Q\(10));

-- Location: LCCOMB_X34_Y21_N2
\cntrl|timeout_count|Q[11]~42\ : cycloneive_lcell_comb
-- Equation(s):
-- \cntrl|timeout_count|Q[11]~42_combout\ = (\cntrl|timeout_count|Q\(11) & (!\cntrl|timeout_count|Q[10]~41\)) # (!\cntrl|timeout_count|Q\(11) & ((\cntrl|timeout_count|Q[10]~41\) # (GND)))
-- \cntrl|timeout_count|Q[11]~43\ = CARRY((!\cntrl|timeout_count|Q[10]~41\) # (!\cntrl|timeout_count|Q\(11)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \cntrl|timeout_count|Q\(11),
	datad => VCC,
	cin => \cntrl|timeout_count|Q[10]~41\,
	combout => \cntrl|timeout_count|Q[11]~42_combout\,
	cout => \cntrl|timeout_count|Q[11]~43\);

-- Location: FF_X34_Y21_N3
\cntrl|timeout_count|Q[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \cntrl|timeout_count|Q[11]~42_combout\,
	sclr => \cntrl|clr_count~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \cntrl|timeout_count|Q\(11));

-- Location: LCCOMB_X34_Y21_N4
\cntrl|timeout_count|Q[12]~44\ : cycloneive_lcell_comb
-- Equation(s):
-- \cntrl|timeout_count|Q[12]~44_combout\ = (\cntrl|timeout_count|Q\(12) & (\cntrl|timeout_count|Q[11]~43\ $ (GND))) # (!\cntrl|timeout_count|Q\(12) & (!\cntrl|timeout_count|Q[11]~43\ & VCC))
-- \cntrl|timeout_count|Q[12]~45\ = CARRY((\cntrl|timeout_count|Q\(12) & !\cntrl|timeout_count|Q[11]~43\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \cntrl|timeout_count|Q\(12),
	datad => VCC,
	cin => \cntrl|timeout_count|Q[11]~43\,
	combout => \cntrl|timeout_count|Q[12]~44_combout\,
	cout => \cntrl|timeout_count|Q[12]~45\);

-- Location: FF_X34_Y21_N5
\cntrl|timeout_count|Q[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \cntrl|timeout_count|Q[12]~44_combout\,
	sclr => \cntrl|clr_count~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \cntrl|timeout_count|Q\(12));

-- Location: LCCOMB_X34_Y21_N6
\cntrl|timeout_count|Q[13]~46\ : cycloneive_lcell_comb
-- Equation(s):
-- \cntrl|timeout_count|Q[13]~46_combout\ = (\cntrl|timeout_count|Q\(13) & (!\cntrl|timeout_count|Q[12]~45\)) # (!\cntrl|timeout_count|Q\(13) & ((\cntrl|timeout_count|Q[12]~45\) # (GND)))
-- \cntrl|timeout_count|Q[13]~47\ = CARRY((!\cntrl|timeout_count|Q[12]~45\) # (!\cntrl|timeout_count|Q\(13)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \cntrl|timeout_count|Q\(13),
	datad => VCC,
	cin => \cntrl|timeout_count|Q[12]~45\,
	combout => \cntrl|timeout_count|Q[13]~46_combout\,
	cout => \cntrl|timeout_count|Q[13]~47\);

-- Location: FF_X34_Y21_N7
\cntrl|timeout_count|Q[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \cntrl|timeout_count|Q[13]~46_combout\,
	sclr => \cntrl|clr_count~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \cntrl|timeout_count|Q\(13));

-- Location: LCCOMB_X34_Y21_N8
\cntrl|timeout_count|Q[14]~48\ : cycloneive_lcell_comb
-- Equation(s):
-- \cntrl|timeout_count|Q[14]~48_combout\ = (\cntrl|timeout_count|Q\(14) & (\cntrl|timeout_count|Q[13]~47\ $ (GND))) # (!\cntrl|timeout_count|Q\(14) & (!\cntrl|timeout_count|Q[13]~47\ & VCC))
-- \cntrl|timeout_count|Q[14]~49\ = CARRY((\cntrl|timeout_count|Q\(14) & !\cntrl|timeout_count|Q[13]~47\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \cntrl|timeout_count|Q\(14),
	datad => VCC,
	cin => \cntrl|timeout_count|Q[13]~47\,
	combout => \cntrl|timeout_count|Q[14]~48_combout\,
	cout => \cntrl|timeout_count|Q[14]~49\);

-- Location: FF_X34_Y21_N9
\cntrl|timeout_count|Q[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \cntrl|timeout_count|Q[14]~48_combout\,
	sclr => \cntrl|clr_count~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \cntrl|timeout_count|Q\(14));

-- Location: LCCOMB_X34_Y21_N10
\cntrl|timeout_count|Q[15]~50\ : cycloneive_lcell_comb
-- Equation(s):
-- \cntrl|timeout_count|Q[15]~50_combout\ = (\cntrl|timeout_count|Q\(15) & (!\cntrl|timeout_count|Q[14]~49\)) # (!\cntrl|timeout_count|Q\(15) & ((\cntrl|timeout_count|Q[14]~49\) # (GND)))
-- \cntrl|timeout_count|Q[15]~51\ = CARRY((!\cntrl|timeout_count|Q[14]~49\) # (!\cntrl|timeout_count|Q\(15)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \cntrl|timeout_count|Q\(15),
	datad => VCC,
	cin => \cntrl|timeout_count|Q[14]~49\,
	combout => \cntrl|timeout_count|Q[15]~50_combout\,
	cout => \cntrl|timeout_count|Q[15]~51\);

-- Location: FF_X34_Y21_N11
\cntrl|timeout_count|Q[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \cntrl|timeout_count|Q[15]~50_combout\,
	sclr => \cntrl|clr_count~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \cntrl|timeout_count|Q\(15));

-- Location: LCCOMB_X34_Y21_N12
\cntrl|timeout_count|Q[16]~52\ : cycloneive_lcell_comb
-- Equation(s):
-- \cntrl|timeout_count|Q[16]~52_combout\ = (\cntrl|timeout_count|Q\(16) & (\cntrl|timeout_count|Q[15]~51\ $ (GND))) # (!\cntrl|timeout_count|Q\(16) & (!\cntrl|timeout_count|Q[15]~51\ & VCC))
-- \cntrl|timeout_count|Q[16]~53\ = CARRY((\cntrl|timeout_count|Q\(16) & !\cntrl|timeout_count|Q[15]~51\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \cntrl|timeout_count|Q\(16),
	datad => VCC,
	cin => \cntrl|timeout_count|Q[15]~51\,
	combout => \cntrl|timeout_count|Q[16]~52_combout\,
	cout => \cntrl|timeout_count|Q[16]~53\);

-- Location: FF_X34_Y21_N13
\cntrl|timeout_count|Q[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \cntrl|timeout_count|Q[16]~52_combout\,
	sclr => \cntrl|clr_count~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \cntrl|timeout_count|Q\(16));

-- Location: LCCOMB_X34_Y21_N14
\cntrl|timeout_count|Q[17]~54\ : cycloneive_lcell_comb
-- Equation(s):
-- \cntrl|timeout_count|Q[17]~54_combout\ = (\cntrl|timeout_count|Q\(17) & (!\cntrl|timeout_count|Q[16]~53\)) # (!\cntrl|timeout_count|Q\(17) & ((\cntrl|timeout_count|Q[16]~53\) # (GND)))
-- \cntrl|timeout_count|Q[17]~55\ = CARRY((!\cntrl|timeout_count|Q[16]~53\) # (!\cntrl|timeout_count|Q\(17)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \cntrl|timeout_count|Q\(17),
	datad => VCC,
	cin => \cntrl|timeout_count|Q[16]~53\,
	combout => \cntrl|timeout_count|Q[17]~54_combout\,
	cout => \cntrl|timeout_count|Q[17]~55\);

-- Location: FF_X34_Y21_N15
\cntrl|timeout_count|Q[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \cntrl|timeout_count|Q[17]~54_combout\,
	sclr => \cntrl|clr_count~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \cntrl|timeout_count|Q\(17));

-- Location: LCCOMB_X34_Y21_N16
\cntrl|timeout_count|Q[18]~56\ : cycloneive_lcell_comb
-- Equation(s):
-- \cntrl|timeout_count|Q[18]~56_combout\ = (\cntrl|timeout_count|Q\(18) & (\cntrl|timeout_count|Q[17]~55\ $ (GND))) # (!\cntrl|timeout_count|Q\(18) & (!\cntrl|timeout_count|Q[17]~55\ & VCC))
-- \cntrl|timeout_count|Q[18]~57\ = CARRY((\cntrl|timeout_count|Q\(18) & !\cntrl|timeout_count|Q[17]~55\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \cntrl|timeout_count|Q\(18),
	datad => VCC,
	cin => \cntrl|timeout_count|Q[17]~55\,
	combout => \cntrl|timeout_count|Q[18]~56_combout\,
	cout => \cntrl|timeout_count|Q[18]~57\);

-- Location: FF_X34_Y21_N17
\cntrl|timeout_count|Q[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \cntrl|timeout_count|Q[18]~56_combout\,
	sclr => \cntrl|clr_count~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \cntrl|timeout_count|Q\(18));

-- Location: LCCOMB_X34_Y21_N18
\cntrl|timeout_count|Q[19]~58\ : cycloneive_lcell_comb
-- Equation(s):
-- \cntrl|timeout_count|Q[19]~58_combout\ = \cntrl|timeout_count|Q[18]~57\ $ (\cntrl|timeout_count|Q\(19))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \cntrl|timeout_count|Q\(19),
	cin => \cntrl|timeout_count|Q[18]~57\,
	combout => \cntrl|timeout_count|Q[19]~58_combout\);

-- Location: FF_X34_Y21_N19
\cntrl|timeout_count|Q[19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \cntrl|timeout_count|Q[19]~58_combout\,
	sclr => \cntrl|clr_count~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \cntrl|timeout_count|Q\(19));

-- Location: LCCOMB_X34_Y21_N26
\cntrl|Equal0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \cntrl|Equal0~0_combout\ = (((!\cntrl|timeout_count|Q\(18)) # (!\cntrl|timeout_count|Q\(17))) # (!\cntrl|timeout_count|Q\(19))) # (!\cntrl|timeout_count|Q\(16))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cntrl|timeout_count|Q\(16),
	datab => \cntrl|timeout_count|Q\(19),
	datac => \cntrl|timeout_count|Q\(17),
	datad => \cntrl|timeout_count|Q\(18),
	combout => \cntrl|Equal0~0_combout\);

-- Location: LCCOMB_X34_Y21_N30
\cntrl|Equal0~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \cntrl|Equal0~4_combout\ = (\cntrl|timeout_count|Q\(13)) # (((\cntrl|timeout_count|Q\(12)) # (\cntrl|timeout_count|Q\(15))) # (!\cntrl|timeout_count|Q\(14)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cntrl|timeout_count|Q\(13),
	datab => \cntrl|timeout_count|Q\(14),
	datac => \cntrl|timeout_count|Q\(12),
	datad => \cntrl|timeout_count|Q\(15),
	combout => \cntrl|Equal0~4_combout\);

-- Location: LCCOMB_X34_Y21_N20
\cntrl|Equal0~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \cntrl|Equal0~3_combout\ = ((\cntrl|timeout_count|Q\(10)) # ((\cntrl|timeout_count|Q\(8)) # (\cntrl|timeout_count|Q\(11)))) # (!\cntrl|timeout_count|Q\(9))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cntrl|timeout_count|Q\(9),
	datab => \cntrl|timeout_count|Q\(10),
	datac => \cntrl|timeout_count|Q\(8),
	datad => \cntrl|timeout_count|Q\(11),
	combout => \cntrl|Equal0~3_combout\);

-- Location: LCCOMB_X34_Y22_N10
\cntrl|Equal0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \cntrl|Equal0~2_combout\ = (\cntrl|timeout_count|Q\(5)) # ((\cntrl|timeout_count|Q\(4)) # ((\cntrl|timeout_count|Q\(7)) # (!\cntrl|timeout_count|Q\(6))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cntrl|timeout_count|Q\(5),
	datab => \cntrl|timeout_count|Q\(4),
	datac => \cntrl|timeout_count|Q\(7),
	datad => \cntrl|timeout_count|Q\(6),
	combout => \cntrl|Equal0~2_combout\);

-- Location: LCCOMB_X34_Y22_N4
\cntrl|Equal0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \cntrl|Equal0~1_combout\ = (\cntrl|timeout_count|Q\(0)) # ((\cntrl|timeout_count|Q\(3)) # ((\cntrl|timeout_count|Q\(1)) # (\cntrl|timeout_count|Q\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cntrl|timeout_count|Q\(0),
	datab => \cntrl|timeout_count|Q\(3),
	datac => \cntrl|timeout_count|Q\(1),
	datad => \cntrl|timeout_count|Q\(2),
	combout => \cntrl|Equal0~1_combout\);

-- Location: LCCOMB_X34_Y21_N28
\cntrl|Equal0~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \cntrl|Equal0~5_combout\ = (\cntrl|Equal0~4_combout\) # ((\cntrl|Equal0~3_combout\) # ((\cntrl|Equal0~2_combout\) # (\cntrl|Equal0~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cntrl|Equal0~4_combout\,
	datab => \cntrl|Equal0~3_combout\,
	datac => \cntrl|Equal0~2_combout\,
	datad => \cntrl|Equal0~1_combout\,
	combout => \cntrl|Equal0~5_combout\);

-- Location: LCCOMB_X34_Y21_N22
\cntrl|clr_count\ : cycloneive_lcell_comb
-- Equation(s):
-- \cntrl|clr_count~combout\ = ((!\cntrl|Equal0~0_combout\ & !\cntrl|Equal0~5_combout\)) # (!\cntrl|packet_time|Q~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010101011111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cntrl|packet_time|Q~0_combout\,
	datac => \cntrl|Equal0~0_combout\,
	datad => \cntrl|Equal0~5_combout\,
	combout => \cntrl|clr_count~combout\);

-- Location: FF_X35_Y21_N13
\cntrl|packet_time|Q[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \cntrl|packet_time|Q~2_combout\,
	ena => \cntrl|clr_count~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \cntrl|packet_time|Q\(0));

-- Location: LCCOMB_X35_Y21_N6
\cntrl|packet_time|Q~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \cntrl|packet_time|Q~3_combout\ = (!\cntrl|control|state~q\ & (\ser1|received|Q[0]~1_combout\ & (\cntrl|packet_time|Q\(0) $ (\cntrl|packet_time|Q\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cntrl|packet_time|Q\(0),
	datab => \cntrl|control|state~q\,
	datac => \cntrl|packet_time|Q\(1),
	datad => \ser1|received|Q[0]~1_combout\,
	combout => \cntrl|packet_time|Q~3_combout\);

-- Location: FF_X35_Y21_N7
\cntrl|packet_time|Q[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \cntrl|packet_time|Q~3_combout\,
	ena => \cntrl|clr_count~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \cntrl|packet_time|Q\(1));

-- Location: LCCOMB_X34_Y21_N24
\cntrl|packet_time|Q~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \cntrl|packet_time|Q~1_combout\ = (\cntrl|packet_time|Q~0_combout\ & (\cntrl|packet_time|Q\(2) $ (((\cntrl|packet_time|Q\(1) & \cntrl|packet_time|Q\(0))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cntrl|packet_time|Q\(1),
	datab => \cntrl|packet_time|Q\(0),
	datac => \cntrl|packet_time|Q\(2),
	datad => \cntrl|packet_time|Q~0_combout\,
	combout => \cntrl|packet_time|Q~1_combout\);

-- Location: FF_X34_Y21_N25
\cntrl|packet_time|Q[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \cntrl|packet_time|Q~1_combout\,
	ena => \cntrl|clr_count~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \cntrl|packet_time|Q\(2));

-- Location: LCCOMB_X35_Y21_N16
\cntrl|Equal1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \cntrl|Equal1~0_combout\ = (!\cntrl|packet_time|Q\(0) & (\cntrl|packet_time|Q\(2) & !\cntrl|packet_time|Q\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cntrl|packet_time|Q\(0),
	datab => \cntrl|packet_time|Q\(2),
	datad => \cntrl|packet_time|Q\(1),
	combout => \cntrl|Equal1~0_combout\);

-- Location: FF_X35_Y21_N17
\cntrl|control|state\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \cntrl|Equal1~0_combout\,
	asdata => \ser1|rx_ctrl|current_state.DONE~q\,
	sclr => \ALT_INV_KEY[1]~input_o\,
	sload => \cntrl|control|state~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \cntrl|control|state~q\);

-- Location: LCCOMB_X37_Y21_N20
\ser1|received|Q~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \ser1|received|Q~7_combout\ = (\KEY[1]~input_o\ & \ser1|rxdata|Q\(7))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \KEY[1]~input_o\,
	datad => \ser1|rxdata|Q\(7),
	combout => \ser1|received|Q~7_combout\);

-- Location: FF_X37_Y21_N21
\ser1|received|Q[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \ser1|received|Q~7_combout\,
	ena => \ser1|received|ALT_INV_Q[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ser1|received|Q\(6));

-- Location: LCCOMB_X38_Y24_N18
\cntrl|motor_reg|Q~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \cntrl|motor_reg|Q~0_combout\ = (\ser1|received|Q\(6) & \KEY[1]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ser1|received|Q\(6),
	datab => \KEY[1]~input_o\,
	combout => \cntrl|motor_reg|Q~0_combout\);

-- Location: LCCOMB_X37_Y21_N10
\ser1|received|Q~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \ser1|received|Q~8_combout\ = (\KEY[1]~input_o\ & \ser1|rxdata|Q\(8))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \KEY[1]~input_o\,
	datad => \ser1|rxdata|Q\(8),
	combout => \ser1|received|Q~8_combout\);

-- Location: LCCOMB_X37_Y24_N12
\ser1|received|Q[7]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \ser1|received|Q[7]~feeder_combout\ = \ser1|received|Q~8_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \ser1|received|Q~8_combout\,
	combout => \ser1|received|Q[7]~feeder_combout\);

-- Location: FF_X37_Y24_N13
\ser1|received|Q[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \ser1|received|Q[7]~feeder_combout\,
	ena => \ser1|received|ALT_INV_Q[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ser1|received|Q\(7));

-- Location: LCCOMB_X38_Y24_N28
\cntrl|motor_reg|Q[4]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \cntrl|motor_reg|Q[4]~1_combout\ = ((!\ser1|received|Q\(7) & \ser1|rx_ctrl|current_state.DONE~q\)) # (!\KEY[1]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111011100110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ser1|received|Q\(7),
	datab => \KEY[1]~input_o\,
	datad => \ser1|rx_ctrl|current_state.DONE~q\,
	combout => \cntrl|motor_reg|Q[4]~1_combout\);

-- Location: FF_X38_Y24_N29
\cntrl|motor_reg|Q[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \cntrl|motor_reg|Q~0_combout\,
	sload => VCC,
	ena => \cntrl|motor_reg|Q[4]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \cntrl|motor_reg|Q\(6));

-- Location: LCCOMB_X37_Y24_N2
\cntrl|front_reg|Q~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \cntrl|front_reg|Q~0_combout\ = (!\cntrl|control|state~q\ & \cntrl|motor_reg|Q\(6))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \cntrl|control|state~q\,
	datad => \cntrl|motor_reg|Q\(6),
	combout => \cntrl|front_reg|Q~0_combout\);

-- Location: LCCOMB_X37_Y24_N0
\cntrl|front_reg|Q[2]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \cntrl|front_reg|Q[2]~1_combout\ = (\cntrl|control|state~q\) # ((!\m1|chnk_cnt|Q\(1) & \m1|chnk_cnt|Q[0]~22_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \m1|chnk_cnt|Q\(1),
	datac => \cntrl|control|state~q\,
	datad => \m1|chnk_cnt|Q[0]~22_combout\,
	combout => \cntrl|front_reg|Q[2]~1_combout\);

-- Location: FF_X37_Y24_N3
\cntrl|front_reg|Q[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \cntrl|front_reg|Q~0_combout\,
	ena => \cntrl|front_reg|Q[2]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \cntrl|front_reg|Q\(6));

-- Location: LCCOMB_X37_Y21_N22
\ser1|received|Q~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \ser1|received|Q~6_combout\ = (\ser1|rxdata|Q\(6) & \KEY[1]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ser1|rxdata|Q\(6),
	datac => \KEY[1]~input_o\,
	combout => \ser1|received|Q~6_combout\);

-- Location: FF_X37_Y21_N23
\ser1|received|Q[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \ser1|received|Q~6_combout\,
	ena => \ser1|received|ALT_INV_Q[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ser1|received|Q\(5));

-- Location: LCCOMB_X38_Y24_N24
\cntrl|motor_reg|Q~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \cntrl|motor_reg|Q~2_combout\ = (\KEY[1]~input_o\ & \ser1|received|Q\(5))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \KEY[1]~input_o\,
	datad => \ser1|received|Q\(5),
	combout => \cntrl|motor_reg|Q~2_combout\);

-- Location: FF_X38_Y24_N19
\cntrl|motor_reg|Q[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \cntrl|motor_reg|Q~2_combout\,
	sload => VCC,
	ena => \cntrl|motor_reg|Q[4]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \cntrl|motor_reg|Q\(5));

-- Location: LCCOMB_X37_Y24_N16
\cntrl|front_reg|Q~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \cntrl|front_reg|Q~2_combout\ = (!\cntrl|control|state~q\ & \cntrl|motor_reg|Q\(5))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \cntrl|control|state~q\,
	datad => \cntrl|motor_reg|Q\(5),
	combout => \cntrl|front_reg|Q~2_combout\);

-- Location: FF_X37_Y24_N17
\cntrl|front_reg|Q[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \cntrl|front_reg|Q~2_combout\,
	ena => \cntrl|front_reg|Q[2]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \cntrl|front_reg|Q\(5));

-- Location: LCCOMB_X37_Y21_N16
\ser1|received|Q~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \ser1|received|Q~5_combout\ = (\KEY[1]~input_o\ & \ser1|rxdata|Q\(5))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \KEY[1]~input_o\,
	datad => \ser1|rxdata|Q\(5),
	combout => \ser1|received|Q~5_combout\);

-- Location: FF_X37_Y21_N17
\ser1|received|Q[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \ser1|received|Q~5_combout\,
	ena => \ser1|received|ALT_INV_Q[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ser1|received|Q\(4));

-- Location: LCCOMB_X38_Y24_N12
\cntrl|motor_reg|Q~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \cntrl|motor_reg|Q~3_combout\ = (\KEY[1]~input_o\ & \ser1|received|Q\(4))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \KEY[1]~input_o\,
	datad => \ser1|received|Q\(4),
	combout => \cntrl|motor_reg|Q~3_combout\);

-- Location: FF_X38_Y24_N25
\cntrl|motor_reg|Q[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \cntrl|motor_reg|Q~3_combout\,
	sload => VCC,
	ena => \cntrl|motor_reg|Q[4]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \cntrl|motor_reg|Q\(4));

-- Location: LCCOMB_X37_Y24_N14
\cntrl|front_reg|Q~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \cntrl|front_reg|Q~3_combout\ = (!\cntrl|control|state~q\ & \cntrl|motor_reg|Q\(4))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \cntrl|control|state~q\,
	datad => \cntrl|motor_reg|Q\(4),
	combout => \cntrl|front_reg|Q~3_combout\);

-- Location: FF_X37_Y24_N15
\cntrl|front_reg|Q[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \cntrl|front_reg|Q~3_combout\,
	ena => \cntrl|front_reg|Q[2]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \cntrl|front_reg|Q\(4));

-- Location: LCCOMB_X37_Y21_N26
\ser1|received|Q~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \ser1|received|Q~4_combout\ = (\KEY[1]~input_o\ & \ser1|rxdata|Q\(4))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \KEY[1]~input_o\,
	datad => \ser1|rxdata|Q\(4),
	combout => \ser1|received|Q~4_combout\);

-- Location: FF_X37_Y21_N27
\ser1|received|Q[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \ser1|received|Q~4_combout\,
	ena => \ser1|received|ALT_INV_Q[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ser1|received|Q\(3));

-- Location: LCCOMB_X38_Y24_N30
\cntrl|motor_reg|Q~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \cntrl|motor_reg|Q~4_combout\ = (\KEY[1]~input_o\ & \ser1|received|Q\(3))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \KEY[1]~input_o\,
	datac => \ser1|received|Q\(3),
	combout => \cntrl|motor_reg|Q~4_combout\);

-- Location: FF_X38_Y24_N31
\cntrl|motor_reg|Q[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \cntrl|motor_reg|Q~4_combout\,
	ena => \cntrl|motor_reg|Q[4]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \cntrl|motor_reg|Q\(3));

-- Location: LCCOMB_X37_Y24_N4
\cntrl|front_reg|Q~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \cntrl|front_reg|Q~4_combout\ = (\cntrl|motor_reg|Q\(3) & !\cntrl|control|state~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cntrl|motor_reg|Q\(3),
	datac => \cntrl|control|state~q\,
	combout => \cntrl|front_reg|Q~4_combout\);

-- Location: FF_X37_Y24_N5
\cntrl|front_reg|Q[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \cntrl|front_reg|Q~4_combout\,
	ena => \cntrl|front_reg|Q[2]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \cntrl|front_reg|Q\(3));

-- Location: LCCOMB_X37_Y21_N4
\ser1|received|Q~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \ser1|received|Q~3_combout\ = (\KEY[1]~input_o\ & \ser1|rxdata|Q\(3))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \KEY[1]~input_o\,
	datad => \ser1|rxdata|Q\(3),
	combout => \ser1|received|Q~3_combout\);

-- Location: FF_X37_Y21_N5
\ser1|received|Q[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \ser1|received|Q~3_combout\,
	ena => \ser1|received|ALT_INV_Q[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ser1|received|Q\(2));

-- Location: LCCOMB_X38_Y24_N6
\cntrl|motor_reg|Q~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \cntrl|motor_reg|Q~5_combout\ = (\KEY[1]~input_o\ & \ser1|received|Q\(2))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \KEY[1]~input_o\,
	datad => \ser1|received|Q\(2),
	combout => \cntrl|motor_reg|Q~5_combout\);

-- Location: FF_X38_Y24_N5
\cntrl|motor_reg|Q[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \cntrl|motor_reg|Q~5_combout\,
	sload => VCC,
	ena => \cntrl|motor_reg|Q[4]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \cntrl|motor_reg|Q\(2));

-- Location: LCCOMB_X37_Y24_N6
\cntrl|front_reg|Q~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \cntrl|front_reg|Q~5_combout\ = (!\cntrl|control|state~q\ & \cntrl|motor_reg|Q\(2))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \cntrl|control|state~q\,
	datad => \cntrl|motor_reg|Q\(2),
	combout => \cntrl|front_reg|Q~5_combout\);

-- Location: FF_X37_Y24_N7
\cntrl|front_reg|Q[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \cntrl|front_reg|Q~5_combout\,
	ena => \cntrl|front_reg|Q[2]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \cntrl|front_reg|Q\(2));

-- Location: LCCOMB_X37_Y21_N14
\ser1|received|Q~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \ser1|received|Q~2_combout\ = (\KEY[1]~input_o\ & \ser1|rxdata|Q\(2))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \KEY[1]~input_o\,
	datad => \ser1|rxdata|Q\(2),
	combout => \ser1|received|Q~2_combout\);

-- Location: FF_X37_Y21_N15
\ser1|received|Q[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \ser1|received|Q~2_combout\,
	ena => \ser1|received|ALT_INV_Q[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ser1|received|Q\(1));

-- Location: LCCOMB_X38_Y24_N4
\cntrl|motor_reg|Q~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \cntrl|motor_reg|Q~6_combout\ = (\KEY[1]~input_o\ & \ser1|received|Q\(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \KEY[1]~input_o\,
	datad => \ser1|received|Q\(1),
	combout => \cntrl|motor_reg|Q~6_combout\);

-- Location: FF_X38_Y24_N7
\cntrl|motor_reg|Q[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \cntrl|motor_reg|Q~6_combout\,
	sload => VCC,
	ena => \cntrl|motor_reg|Q[4]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \cntrl|motor_reg|Q\(1));

-- Location: LCCOMB_X37_Y24_N8
\cntrl|front_reg|Q~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \cntrl|front_reg|Q~6_combout\ = (!\cntrl|control|state~q\ & \cntrl|motor_reg|Q\(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \cntrl|control|state~q\,
	datad => \cntrl|motor_reg|Q\(1),
	combout => \cntrl|front_reg|Q~6_combout\);

-- Location: FF_X37_Y24_N9
\cntrl|front_reg|Q[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \cntrl|front_reg|Q~6_combout\,
	ena => \cntrl|front_reg|Q[2]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \cntrl|front_reg|Q\(1));

-- Location: LCCOMB_X37_Y21_N12
\ser1|received|Q~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \ser1|received|Q~0_combout\ = (\KEY[1]~input_o\ & \ser1|rxdata|Q\(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \KEY[1]~input_o\,
	datad => \ser1|rxdata|Q\(1),
	combout => \ser1|received|Q~0_combout\);

-- Location: FF_X37_Y21_N13
\ser1|received|Q[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \ser1|received|Q~0_combout\,
	ena => \ser1|received|ALT_INV_Q[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ser1|received|Q\(0));

-- Location: LCCOMB_X38_Y24_N16
\cntrl|motor_reg|Q~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \cntrl|motor_reg|Q~7_combout\ = (\KEY[1]~input_o\ & \ser1|received|Q\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \KEY[1]~input_o\,
	datac => \ser1|received|Q\(0),
	combout => \cntrl|motor_reg|Q~7_combout\);

-- Location: FF_X38_Y24_N17
\cntrl|motor_reg|Q[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \cntrl|motor_reg|Q~7_combout\,
	ena => \cntrl|motor_reg|Q[4]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \cntrl|motor_reg|Q\(0));

-- Location: LCCOMB_X37_Y24_N10
\cntrl|front_reg|Q~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \cntrl|front_reg|Q~7_combout\ = (!\cntrl|control|state~q\ & \cntrl|motor_reg|Q\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \cntrl|control|state~q\,
	datad => \cntrl|motor_reg|Q\(0),
	combout => \cntrl|front_reg|Q~7_combout\);

-- Location: FF_X37_Y24_N11
\cntrl|front_reg|Q[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \cntrl|front_reg|Q~7_combout\,
	ena => \cntrl|front_reg|Q[2]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \cntrl|front_reg|Q\(0));

-- Location: LCCOMB_X37_Y24_N18
\m1|LessThan0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \m1|LessThan0~1_cout\ = CARRY((\cntrl|front_reg|Q\(0) & !\m1|chnk_cnt|Q\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000100010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \cntrl|front_reg|Q\(0),
	datab => \m1|chnk_cnt|Q\(0),
	datad => VCC,
	cout => \m1|LessThan0~1_cout\);

-- Location: LCCOMB_X37_Y24_N20
\m1|LessThan0~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \m1|LessThan0~3_cout\ = CARRY((\m1|chnk_cnt|Q\(1) & ((!\m1|LessThan0~1_cout\) # (!\cntrl|front_reg|Q\(1)))) # (!\m1|chnk_cnt|Q\(1) & (!\cntrl|front_reg|Q\(1) & !\m1|LessThan0~1_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \m1|chnk_cnt|Q\(1),
	datab => \cntrl|front_reg|Q\(1),
	datad => VCC,
	cin => \m1|LessThan0~1_cout\,
	cout => \m1|LessThan0~3_cout\);

-- Location: LCCOMB_X37_Y24_N22
\m1|LessThan0~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \m1|LessThan0~5_cout\ = CARRY((\cntrl|front_reg|Q\(2) & ((!\m1|LessThan0~3_cout\) # (!\m1|chnk_cnt|Q\(2)))) # (!\cntrl|front_reg|Q\(2) & (!\m1|chnk_cnt|Q\(2) & !\m1|LessThan0~3_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \cntrl|front_reg|Q\(2),
	datab => \m1|chnk_cnt|Q\(2),
	datad => VCC,
	cin => \m1|LessThan0~3_cout\,
	cout => \m1|LessThan0~5_cout\);

-- Location: LCCOMB_X37_Y24_N24
\m1|LessThan0~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \m1|LessThan0~7_cout\ = CARRY((\m1|chnk_cnt|Q\(3) & ((!\m1|LessThan0~5_cout\) # (!\cntrl|front_reg|Q\(3)))) # (!\m1|chnk_cnt|Q\(3) & (!\cntrl|front_reg|Q\(3) & !\m1|LessThan0~5_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \m1|chnk_cnt|Q\(3),
	datab => \cntrl|front_reg|Q\(3),
	datad => VCC,
	cin => \m1|LessThan0~5_cout\,
	cout => \m1|LessThan0~7_cout\);

-- Location: LCCOMB_X37_Y24_N26
\m1|LessThan0~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \m1|LessThan0~9_cout\ = CARRY((\m1|chnk_cnt|Q\(4) & (\cntrl|front_reg|Q\(4) & !\m1|LessThan0~7_cout\)) # (!\m1|chnk_cnt|Q\(4) & ((\cntrl|front_reg|Q\(4)) # (!\m1|LessThan0~7_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \m1|chnk_cnt|Q\(4),
	datab => \cntrl|front_reg|Q\(4),
	datad => VCC,
	cin => \m1|LessThan0~7_cout\,
	cout => \m1|LessThan0~9_cout\);

-- Location: LCCOMB_X37_Y24_N28
\m1|LessThan0~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \m1|LessThan0~11_cout\ = CARRY((\m1|chnk_cnt|Q\(5) & ((!\m1|LessThan0~9_cout\) # (!\cntrl|front_reg|Q\(5)))) # (!\m1|chnk_cnt|Q\(5) & (!\cntrl|front_reg|Q\(5) & !\m1|LessThan0~9_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \m1|chnk_cnt|Q\(5),
	datab => \cntrl|front_reg|Q\(5),
	datad => VCC,
	cin => \m1|LessThan0~9_cout\,
	cout => \m1|LessThan0~11_cout\);

-- Location: LCCOMB_X37_Y24_N30
\m1|LessThan0~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \m1|LessThan0~12_combout\ = (\m1|chnk_cnt|Q\(6) & (!\m1|LessThan0~11_cout\ & \cntrl|front_reg|Q\(6))) # (!\m1|chnk_cnt|Q\(6) & ((\cntrl|front_reg|Q\(6)) # (!\m1|LessThan0~11_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011111100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \m1|chnk_cnt|Q\(6),
	datad => \cntrl|front_reg|Q\(6),
	cin => \m1|LessThan0~11_cout\,
	combout => \m1|LessThan0~12_combout\);

-- Location: LCCOMB_X39_Y24_N16
\cntrl|servo_reg|Q[6]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \cntrl|servo_reg|Q[6]~feeder_combout\ = \cntrl|motor_reg|Q~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \cntrl|motor_reg|Q~0_combout\,
	combout => \cntrl|servo_reg|Q[6]~feeder_combout\);

-- Location: LCCOMB_X39_Y24_N12
\cntrl|servo_reg|Q[1]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \cntrl|servo_reg|Q[1]~0_combout\ = ((\ser1|rx_ctrl|current_state.DONE~q\ & \ser1|received|Q\(7))) # (!\KEY[1]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001100110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \KEY[1]~input_o\,
	datac => \ser1|rx_ctrl|current_state.DONE~q\,
	datad => \ser1|received|Q\(7),
	combout => \cntrl|servo_reg|Q[1]~0_combout\);

-- Location: FF_X39_Y24_N17
\cntrl|servo_reg|Q[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \cntrl|servo_reg|Q[6]~feeder_combout\,
	ena => \cntrl|servo_reg|Q[1]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \cntrl|servo_reg|Q\(6));

-- Location: LCCOMB_X40_Y29_N24
\cntrl|servo_control[6]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \cntrl|servo_control[6]~0_combout\ = (\cntrl|servo_reg|Q\(6) & !\cntrl|control|state~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \cntrl|servo_reg|Q\(6),
	datad => \cntrl|control|state~q\,
	combout => \cntrl|servo_control[6]~0_combout\);

-- Location: LCCOMB_X44_Y29_N16
\cntrl|servo_out_reg|Q[6]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \cntrl|servo_out_reg|Q[6]~feeder_combout\ = \cntrl|servo_control[6]~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \cntrl|servo_control[6]~0_combout\,
	combout => \cntrl|servo_out_reg|Q[6]~feeder_combout\);

-- Location: LCCOMB_X45_Y32_N14
\servo|chnk_cnt|Q[0]~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \servo|chnk_cnt|Q[0]~7_combout\ = \servo|chnk_cnt|Q\(0) $ (VCC)
-- \servo|chnk_cnt|Q[0]~8\ = CARRY(\servo|chnk_cnt|Q\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \servo|chnk_cnt|Q\(0),
	datad => VCC,
	combout => \servo|chnk_cnt|Q[0]~7_combout\,
	cout => \servo|chnk_cnt|Q[0]~8\);

-- Location: LCCOMB_X46_Y32_N4
\servo|clk_cnt|Add0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \servo|clk_cnt|Add0~0_combout\ = \servo|clk_cnt|Q\(0) $ (VCC)
-- \servo|clk_cnt|Add0~1\ = CARRY(\servo|clk_cnt|Q\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \servo|clk_cnt|Q\(0),
	datad => VCC,
	combout => \servo|clk_cnt|Add0~0_combout\,
	cout => \servo|clk_cnt|Add0~1\);

-- Location: LCCOMB_X46_Y32_N8
\servo|clk_cnt|Add0~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \servo|clk_cnt|Add0~4_combout\ = (\servo|clk_cnt|Q\(2) & (\servo|clk_cnt|Add0~3\ $ (GND))) # (!\servo|clk_cnt|Q\(2) & (!\servo|clk_cnt|Add0~3\ & VCC))
-- \servo|clk_cnt|Add0~5\ = CARRY((\servo|clk_cnt|Q\(2) & !\servo|clk_cnt|Add0~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \servo|clk_cnt|Q\(2),
	datad => VCC,
	cin => \servo|clk_cnt|Add0~3\,
	combout => \servo|clk_cnt|Add0~4_combout\,
	cout => \servo|clk_cnt|Add0~5\);

-- Location: LCCOMB_X46_Y32_N10
\servo|clk_cnt|Add0~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \servo|clk_cnt|Add0~6_combout\ = (\servo|clk_cnt|Q\(3) & (!\servo|clk_cnt|Add0~5\)) # (!\servo|clk_cnt|Q\(3) & ((\servo|clk_cnt|Add0~5\) # (GND)))
-- \servo|clk_cnt|Add0~7\ = CARRY((!\servo|clk_cnt|Add0~5\) # (!\servo|clk_cnt|Q\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \servo|clk_cnt|Q\(3),
	datad => VCC,
	cin => \servo|clk_cnt|Add0~5\,
	combout => \servo|clk_cnt|Add0~6_combout\,
	cout => \servo|clk_cnt|Add0~7\);

-- Location: FF_X46_Y32_N11
\servo|clk_cnt|Q[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \servo|clk_cnt|Add0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \servo|clk_cnt|Q\(3));

-- Location: LCCOMB_X46_Y32_N12
\servo|clk_cnt|Add0~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \servo|clk_cnt|Add0~8_combout\ = (\servo|clk_cnt|Q\(4) & (\servo|clk_cnt|Add0~7\ $ (GND))) # (!\servo|clk_cnt|Q\(4) & (!\servo|clk_cnt|Add0~7\ & VCC))
-- \servo|clk_cnt|Add0~9\ = CARRY((\servo|clk_cnt|Q\(4) & !\servo|clk_cnt|Add0~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \servo|clk_cnt|Q\(4),
	datad => VCC,
	cin => \servo|clk_cnt|Add0~7\,
	combout => \servo|clk_cnt|Add0~8_combout\,
	cout => \servo|clk_cnt|Add0~9\);

-- Location: FF_X46_Y32_N13
\servo|clk_cnt|Q[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \servo|clk_cnt|Add0~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \servo|clk_cnt|Q\(4));

-- Location: LCCOMB_X46_Y32_N14
\servo|clk_cnt|Add0~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \servo|clk_cnt|Add0~10_combout\ = (\servo|clk_cnt|Q\(5) & (!\servo|clk_cnt|Add0~9\)) # (!\servo|clk_cnt|Q\(5) & ((\servo|clk_cnt|Add0~9\) # (GND)))
-- \servo|clk_cnt|Add0~11\ = CARRY((!\servo|clk_cnt|Add0~9\) # (!\servo|clk_cnt|Q\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \servo|clk_cnt|Q\(5),
	datad => VCC,
	cin => \servo|clk_cnt|Add0~9\,
	combout => \servo|clk_cnt|Add0~10_combout\,
	cout => \servo|clk_cnt|Add0~11\);

-- Location: FF_X46_Y32_N15
\servo|clk_cnt|Q[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \servo|clk_cnt|Add0~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \servo|clk_cnt|Q\(5));

-- Location: LCCOMB_X46_Y32_N16
\servo|clk_cnt|Add0~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \servo|clk_cnt|Add0~12_combout\ = (\servo|clk_cnt|Q\(6) & (\servo|clk_cnt|Add0~11\ $ (GND))) # (!\servo|clk_cnt|Q\(6) & (!\servo|clk_cnt|Add0~11\ & VCC))
-- \servo|clk_cnt|Add0~13\ = CARRY((\servo|clk_cnt|Q\(6) & !\servo|clk_cnt|Add0~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \servo|clk_cnt|Q\(6),
	datad => VCC,
	cin => \servo|clk_cnt|Add0~11\,
	combout => \servo|clk_cnt|Add0~12_combout\,
	cout => \servo|clk_cnt|Add0~13\);

-- Location: FF_X46_Y32_N17
\servo|clk_cnt|Q[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \servo|clk_cnt|Add0~12_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \servo|clk_cnt|Q\(6));

-- Location: LCCOMB_X46_Y32_N18
\servo|clk_cnt|Add0~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \servo|clk_cnt|Add0~14_combout\ = (\servo|clk_cnt|Q\(7) & (!\servo|clk_cnt|Add0~13\)) # (!\servo|clk_cnt|Q\(7) & ((\servo|clk_cnt|Add0~13\) # (GND)))
-- \servo|clk_cnt|Add0~15\ = CARRY((!\servo|clk_cnt|Add0~13\) # (!\servo|clk_cnt|Q\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \servo|clk_cnt|Q\(7),
	datad => VCC,
	cin => \servo|clk_cnt|Add0~13\,
	combout => \servo|clk_cnt|Add0~14_combout\,
	cout => \servo|clk_cnt|Add0~15\);

-- Location: LCCOMB_X45_Y32_N8
\servo|clk_cnt|Q~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \servo|clk_cnt|Q~0_combout\ = (!\servo|clk_cnt|Equal0~0_combout\ & \servo|clk_cnt|Add0~14_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \servo|clk_cnt|Equal0~0_combout\,
	datad => \servo|clk_cnt|Add0~14_combout\,
	combout => \servo|clk_cnt|Q~0_combout\);

-- Location: FF_X45_Y32_N9
\servo|clk_cnt|Q[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \servo|clk_cnt|Q~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \servo|clk_cnt|Q\(7));

-- Location: LCCOMB_X46_Y32_N20
\servo|clk_cnt|Add0~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \servo|clk_cnt|Add0~16_combout\ = (\servo|clk_cnt|Q\(8) & (\servo|clk_cnt|Add0~15\ $ (GND))) # (!\servo|clk_cnt|Q\(8) & (!\servo|clk_cnt|Add0~15\ & VCC))
-- \servo|clk_cnt|Add0~17\ = CARRY((\servo|clk_cnt|Q\(8) & !\servo|clk_cnt|Add0~15\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \servo|clk_cnt|Q\(8),
	datad => VCC,
	cin => \servo|clk_cnt|Add0~15\,
	combout => \servo|clk_cnt|Add0~16_combout\,
	cout => \servo|clk_cnt|Add0~17\);

-- Location: FF_X46_Y32_N21
\servo|clk_cnt|Q[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \servo|clk_cnt|Add0~16_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \servo|clk_cnt|Q\(8));

-- Location: LCCOMB_X46_Y32_N22
\servo|clk_cnt|Add0~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \servo|clk_cnt|Add0~18_combout\ = (\servo|clk_cnt|Q\(9) & (!\servo|clk_cnt|Add0~17\)) # (!\servo|clk_cnt|Q\(9) & ((\servo|clk_cnt|Add0~17\) # (GND)))
-- \servo|clk_cnt|Add0~19\ = CARRY((!\servo|clk_cnt|Add0~17\) # (!\servo|clk_cnt|Q\(9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \servo|clk_cnt|Q\(9),
	datad => VCC,
	cin => \servo|clk_cnt|Add0~17\,
	combout => \servo|clk_cnt|Add0~18_combout\,
	cout => \servo|clk_cnt|Add0~19\);

-- Location: LCCOMB_X45_Y32_N2
\servo|clk_cnt|Q~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \servo|clk_cnt|Q~1_combout\ = (!\servo|clk_cnt|Equal0~0_combout\ & \servo|clk_cnt|Add0~18_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \servo|clk_cnt|Equal0~0_combout\,
	datad => \servo|clk_cnt|Add0~18_combout\,
	combout => \servo|clk_cnt|Q~1_combout\);

-- Location: FF_X45_Y32_N3
\servo|clk_cnt|Q[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \servo|clk_cnt|Q~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \servo|clk_cnt|Q\(9));

-- Location: LCCOMB_X46_Y32_N24
\servo|clk_cnt|Add0~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \servo|clk_cnt|Add0~20_combout\ = (\servo|clk_cnt|Q\(10) & (\servo|clk_cnt|Add0~19\ $ (GND))) # (!\servo|clk_cnt|Q\(10) & (!\servo|clk_cnt|Add0~19\ & VCC))
-- \servo|clk_cnt|Add0~21\ = CARRY((\servo|clk_cnt|Q\(10) & !\servo|clk_cnt|Add0~19\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \servo|clk_cnt|Q\(10),
	datad => VCC,
	cin => \servo|clk_cnt|Add0~19\,
	combout => \servo|clk_cnt|Add0~20_combout\,
	cout => \servo|clk_cnt|Add0~21\);

-- Location: LCCOMB_X45_Y32_N12
\servo|clk_cnt|Q~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \servo|clk_cnt|Q~2_combout\ = (!\servo|clk_cnt|Equal0~0_combout\ & \servo|clk_cnt|Add0~20_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \servo|clk_cnt|Equal0~0_combout\,
	datad => \servo|clk_cnt|Add0~20_combout\,
	combout => \servo|clk_cnt|Q~2_combout\);

-- Location: FF_X45_Y32_N13
\servo|clk_cnt|Q[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \servo|clk_cnt|Q~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \servo|clk_cnt|Q\(10));

-- Location: LCCOMB_X46_Y32_N26
\servo|clk_cnt|Add0~22\ : cycloneive_lcell_comb
-- Equation(s):
-- \servo|clk_cnt|Add0~22_combout\ = (\servo|clk_cnt|Q\(11) & (!\servo|clk_cnt|Add0~21\)) # (!\servo|clk_cnt|Q\(11) & ((\servo|clk_cnt|Add0~21\) # (GND)))
-- \servo|clk_cnt|Add0~23\ = CARRY((!\servo|clk_cnt|Add0~21\) # (!\servo|clk_cnt|Q\(11)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \servo|clk_cnt|Q\(11),
	datad => VCC,
	cin => \servo|clk_cnt|Add0~21\,
	combout => \servo|clk_cnt|Add0~22_combout\,
	cout => \servo|clk_cnt|Add0~23\);

-- Location: LCCOMB_X46_Y32_N0
\servo|clk_cnt|Q~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \servo|clk_cnt|Q~3_combout\ = (!\servo|clk_cnt|Equal0~0_combout\ & \servo|clk_cnt|Add0~22_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \servo|clk_cnt|Equal0~0_combout\,
	datad => \servo|clk_cnt|Add0~22_combout\,
	combout => \servo|clk_cnt|Q~3_combout\);

-- Location: FF_X46_Y32_N1
\servo|clk_cnt|Q[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \servo|clk_cnt|Q~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \servo|clk_cnt|Q\(11));

-- Location: LCCOMB_X46_Y32_N28
\servo|clk_cnt|Add0~24\ : cycloneive_lcell_comb
-- Equation(s):
-- \servo|clk_cnt|Add0~24_combout\ = \servo|clk_cnt|Add0~23\ $ (!\servo|clk_cnt|Q\(12))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \servo|clk_cnt|Q\(12),
	cin => \servo|clk_cnt|Add0~23\,
	combout => \servo|clk_cnt|Add0~24_combout\);

-- Location: LCCOMB_X46_Y32_N2
\servo|clk_cnt|Q~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \servo|clk_cnt|Q~4_combout\ = (!\servo|clk_cnt|Equal0~0_combout\ & \servo|clk_cnt|Add0~24_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \servo|clk_cnt|Equal0~0_combout\,
	datad => \servo|clk_cnt|Add0~24_combout\,
	combout => \servo|clk_cnt|Q~4_combout\);

-- Location: FF_X46_Y32_N3
\servo|clk_cnt|Q[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \servo|clk_cnt|Q~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \servo|clk_cnt|Q\(12));

-- Location: LCCOMB_X45_Y32_N30
\servo|Equal0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \servo|Equal0~1_combout\ = (\servo|clk_cnt|Q\(10) & (\servo|clk_cnt|Q\(7) & (!\servo|clk_cnt|Q\(8) & \servo|clk_cnt|Q\(9))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \servo|clk_cnt|Q\(10),
	datab => \servo|clk_cnt|Q\(7),
	datac => \servo|clk_cnt|Q\(8),
	datad => \servo|clk_cnt|Q\(9),
	combout => \servo|Equal0~1_combout\);

-- Location: LCCOMB_X47_Y32_N16
\servo|Equal0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \servo|Equal0~0_combout\ = (!\servo|clk_cnt|Q\(3) & (!\servo|clk_cnt|Q\(5) & (!\servo|clk_cnt|Q\(6) & !\servo|clk_cnt|Q\(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \servo|clk_cnt|Q\(3),
	datab => \servo|clk_cnt|Q\(5),
	datac => \servo|clk_cnt|Q\(6),
	datad => \servo|clk_cnt|Q\(4),
	combout => \servo|Equal0~0_combout\);

-- Location: LCCOMB_X45_Y32_N0
\servo|Equal0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \servo|Equal0~2_combout\ = (\servo|clk_cnt|Q\(12) & (\servo|clk_cnt|Q\(11) & (\servo|Equal0~1_combout\ & \servo|Equal0~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \servo|clk_cnt|Q\(12),
	datab => \servo|clk_cnt|Q\(11),
	datac => \servo|Equal0~1_combout\,
	datad => \servo|Equal0~0_combout\,
	combout => \servo|Equal0~2_combout\);

-- Location: LCCOMB_X45_Y32_N6
\servo|clk_cnt|Equal0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \servo|clk_cnt|Equal0~0_combout\ = (\servo|clk_cnt|Q\(2) & (!\servo|clk_cnt|Q\(0) & (!\servo|clk_cnt|Q\(1) & \servo|Equal0~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \servo|clk_cnt|Q\(2),
	datab => \servo|clk_cnt|Q\(0),
	datac => \servo|clk_cnt|Q\(1),
	datad => \servo|Equal0~2_combout\,
	combout => \servo|clk_cnt|Equal0~0_combout\);

-- Location: LCCOMB_X47_Y32_N22
\servo|clk_cnt|Q~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \servo|clk_cnt|Q~5_combout\ = (\servo|clk_cnt|Add0~0_combout\ & !\servo|clk_cnt|Equal0~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \servo|clk_cnt|Add0~0_combout\,
	datad => \servo|clk_cnt|Equal0~0_combout\,
	combout => \servo|clk_cnt|Q~5_combout\);

-- Location: FF_X47_Y32_N23
\servo|clk_cnt|Q[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \servo|clk_cnt|Q~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \servo|clk_cnt|Q\(0));

-- Location: LCCOMB_X46_Y32_N6
\servo|clk_cnt|Add0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \servo|clk_cnt|Add0~2_combout\ = (\servo|clk_cnt|Q\(1) & (!\servo|clk_cnt|Add0~1\)) # (!\servo|clk_cnt|Q\(1) & ((\servo|clk_cnt|Add0~1\) # (GND)))
-- \servo|clk_cnt|Add0~3\ = CARRY((!\servo|clk_cnt|Add0~1\) # (!\servo|clk_cnt|Q\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \servo|clk_cnt|Q\(1),
	datad => VCC,
	cin => \servo|clk_cnt|Add0~1\,
	combout => \servo|clk_cnt|Add0~2_combout\,
	cout => \servo|clk_cnt|Add0~3\);

-- Location: FF_X46_Y32_N7
\servo|clk_cnt|Q[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \servo|clk_cnt|Add0~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \servo|clk_cnt|Q\(1));

-- Location: LCCOMB_X46_Y32_N30
\servo|clk_cnt|Q~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \servo|clk_cnt|Q~6_combout\ = (\servo|clk_cnt|Add0~4_combout\ & !\servo|clk_cnt|Equal0~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \servo|clk_cnt|Add0~4_combout\,
	datac => \servo|clk_cnt|Equal0~0_combout\,
	combout => \servo|clk_cnt|Q~6_combout\);

-- Location: FF_X46_Y32_N31
\servo|clk_cnt|Q[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \servo|clk_cnt|Q~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \servo|clk_cnt|Q\(2));

-- Location: LCCOMB_X45_Y32_N10
\servo|Equal0~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \servo|Equal0~3_combout\ = (!\servo|clk_cnt|Q\(2) & (\servo|clk_cnt|Q\(0) & (\servo|clk_cnt|Q\(1) & \servo|Equal0~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \servo|clk_cnt|Q\(2),
	datab => \servo|clk_cnt|Q\(0),
	datac => \servo|clk_cnt|Q\(1),
	datad => \servo|Equal0~2_combout\,
	combout => \servo|Equal0~3_combout\);

-- Location: FF_X45_Y32_N15
\servo|chnk_cnt|Q[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \servo|chnk_cnt|Q[0]~7_combout\,
	ena => \servo|Equal0~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \servo|chnk_cnt|Q\(0));

-- Location: LCCOMB_X45_Y32_N16
\servo|chnk_cnt|Q[1]~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \servo|chnk_cnt|Q[1]~9_combout\ = (\servo|chnk_cnt|Q\(1) & (!\servo|chnk_cnt|Q[0]~8\)) # (!\servo|chnk_cnt|Q\(1) & ((\servo|chnk_cnt|Q[0]~8\) # (GND)))
-- \servo|chnk_cnt|Q[1]~10\ = CARRY((!\servo|chnk_cnt|Q[0]~8\) # (!\servo|chnk_cnt|Q\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \servo|chnk_cnt|Q\(1),
	datad => VCC,
	cin => \servo|chnk_cnt|Q[0]~8\,
	combout => \servo|chnk_cnt|Q[1]~9_combout\,
	cout => \servo|chnk_cnt|Q[1]~10\);

-- Location: FF_X45_Y32_N17
\servo|chnk_cnt|Q[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \servo|chnk_cnt|Q[1]~9_combout\,
	ena => \servo|Equal0~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \servo|chnk_cnt|Q\(1));

-- Location: LCCOMB_X45_Y32_N18
\servo|chnk_cnt|Q[2]~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \servo|chnk_cnt|Q[2]~11_combout\ = (\servo|chnk_cnt|Q\(2) & (\servo|chnk_cnt|Q[1]~10\ $ (GND))) # (!\servo|chnk_cnt|Q\(2) & (!\servo|chnk_cnt|Q[1]~10\ & VCC))
-- \servo|chnk_cnt|Q[2]~12\ = CARRY((\servo|chnk_cnt|Q\(2) & !\servo|chnk_cnt|Q[1]~10\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \servo|chnk_cnt|Q\(2),
	datad => VCC,
	cin => \servo|chnk_cnt|Q[1]~10\,
	combout => \servo|chnk_cnt|Q[2]~11_combout\,
	cout => \servo|chnk_cnt|Q[2]~12\);

-- Location: FF_X45_Y32_N19
\servo|chnk_cnt|Q[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \servo|chnk_cnt|Q[2]~11_combout\,
	ena => \servo|Equal0~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \servo|chnk_cnt|Q\(2));

-- Location: LCCOMB_X45_Y32_N20
\servo|chnk_cnt|Q[3]~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \servo|chnk_cnt|Q[3]~13_combout\ = (\servo|chnk_cnt|Q\(3) & (!\servo|chnk_cnt|Q[2]~12\)) # (!\servo|chnk_cnt|Q\(3) & ((\servo|chnk_cnt|Q[2]~12\) # (GND)))
-- \servo|chnk_cnt|Q[3]~14\ = CARRY((!\servo|chnk_cnt|Q[2]~12\) # (!\servo|chnk_cnt|Q\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \servo|chnk_cnt|Q\(3),
	datad => VCC,
	cin => \servo|chnk_cnt|Q[2]~12\,
	combout => \servo|chnk_cnt|Q[3]~13_combout\,
	cout => \servo|chnk_cnt|Q[3]~14\);

-- Location: FF_X45_Y32_N21
\servo|chnk_cnt|Q[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \servo|chnk_cnt|Q[3]~13_combout\,
	ena => \servo|Equal0~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \servo|chnk_cnt|Q\(3));

-- Location: LCCOMB_X45_Y32_N22
\servo|chnk_cnt|Q[4]~15\ : cycloneive_lcell_comb
-- Equation(s):
-- \servo|chnk_cnt|Q[4]~15_combout\ = (\servo|chnk_cnt|Q\(4) & (\servo|chnk_cnt|Q[3]~14\ $ (GND))) # (!\servo|chnk_cnt|Q\(4) & (!\servo|chnk_cnt|Q[3]~14\ & VCC))
-- \servo|chnk_cnt|Q[4]~16\ = CARRY((\servo|chnk_cnt|Q\(4) & !\servo|chnk_cnt|Q[3]~14\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \servo|chnk_cnt|Q\(4),
	datad => VCC,
	cin => \servo|chnk_cnt|Q[3]~14\,
	combout => \servo|chnk_cnt|Q[4]~15_combout\,
	cout => \servo|chnk_cnt|Q[4]~16\);

-- Location: FF_X45_Y32_N23
\servo|chnk_cnt|Q[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \servo|chnk_cnt|Q[4]~15_combout\,
	ena => \servo|Equal0~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \servo|chnk_cnt|Q\(4));

-- Location: LCCOMB_X45_Y32_N4
\servo|Equal1~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \servo|Equal1~1_combout\ = (\servo|chnk_cnt|Q\(3) & (\servo|chnk_cnt|Q\(4) & \servo|chnk_cnt|Q\(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \servo|chnk_cnt|Q\(3),
	datac => \servo|chnk_cnt|Q\(4),
	datad => \servo|chnk_cnt|Q\(2),
	combout => \servo|Equal1~1_combout\);

-- Location: LCCOMB_X45_Y32_N24
\servo|chnk_cnt|Q[5]~17\ : cycloneive_lcell_comb
-- Equation(s):
-- \servo|chnk_cnt|Q[5]~17_combout\ = (\servo|chnk_cnt|Q\(5) & (!\servo|chnk_cnt|Q[4]~16\)) # (!\servo|chnk_cnt|Q\(5) & ((\servo|chnk_cnt|Q[4]~16\) # (GND)))
-- \servo|chnk_cnt|Q[5]~18\ = CARRY((!\servo|chnk_cnt|Q[4]~16\) # (!\servo|chnk_cnt|Q\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \servo|chnk_cnt|Q\(5),
	datad => VCC,
	cin => \servo|chnk_cnt|Q[4]~16\,
	combout => \servo|chnk_cnt|Q[5]~17_combout\,
	cout => \servo|chnk_cnt|Q[5]~18\);

-- Location: FF_X45_Y32_N25
\servo|chnk_cnt|Q[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \servo|chnk_cnt|Q[5]~17_combout\,
	ena => \servo|Equal0~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \servo|chnk_cnt|Q\(5));

-- Location: LCCOMB_X45_Y32_N26
\servo|chnk_cnt|Q[6]~19\ : cycloneive_lcell_comb
-- Equation(s):
-- \servo|chnk_cnt|Q[6]~19_combout\ = \servo|chnk_cnt|Q\(6) $ (!\servo|chnk_cnt|Q[5]~18\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010110100101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \servo|chnk_cnt|Q\(6),
	cin => \servo|chnk_cnt|Q[5]~18\,
	combout => \servo|chnk_cnt|Q[6]~19_combout\);

-- Location: FF_X45_Y32_N27
\servo|chnk_cnt|Q[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \servo|chnk_cnt|Q[6]~19_combout\,
	ena => \servo|Equal0~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \servo|chnk_cnt|Q\(6));

-- Location: LCCOMB_X45_Y32_N28
\servo|Equal1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \servo|Equal1~0_combout\ = (\servo|chnk_cnt|Q\(6) & (\servo|chnk_cnt|Q\(5) & (\servo|chnk_cnt|Q\(0) & !\servo|chnk_cnt|Q\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \servo|chnk_cnt|Q\(6),
	datab => \servo|chnk_cnt|Q\(5),
	datac => \servo|chnk_cnt|Q\(0),
	datad => \servo|chnk_cnt|Q\(1),
	combout => \servo|Equal1~0_combout\);

-- Location: LCCOMB_X44_Y29_N14
\cntrl|load_servo_pwm\ : cycloneive_lcell_comb
-- Equation(s):
-- \cntrl|load_servo_pwm~combout\ = (\cntrl|control|state~q\) # ((\servo|Equal1~1_combout\ & \servo|Equal1~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \servo|Equal1~1_combout\,
	datab => \servo|Equal1~0_combout\,
	datad => \cntrl|control|state~q\,
	combout => \cntrl|load_servo_pwm~combout\);

-- Location: FF_X44_Y29_N17
\cntrl|servo_out_reg|Q[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \cntrl|servo_out_reg|Q[6]~feeder_combout\,
	ena => \cntrl|load_servo_pwm~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \cntrl|servo_out_reg|Q\(6));

-- Location: LCCOMB_X39_Y24_N22
\cntrl|servo_reg|Q[5]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \cntrl|servo_reg|Q[5]~feeder_combout\ = \cntrl|motor_reg|Q~2_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \cntrl|motor_reg|Q~2_combout\,
	combout => \cntrl|servo_reg|Q[5]~feeder_combout\);

-- Location: FF_X39_Y24_N23
\cntrl|servo_reg|Q[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \cntrl|servo_reg|Q[5]~feeder_combout\,
	ena => \cntrl|servo_reg|Q[1]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \cntrl|servo_reg|Q\(5));

-- Location: LCCOMB_X40_Y29_N2
\cntrl|servo_control[5]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \cntrl|servo_control[5]~1_combout\ = (\cntrl|servo_reg|Q\(5) & !\cntrl|control|state~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \cntrl|servo_reg|Q\(5),
	datad => \cntrl|control|state~q\,
	combout => \cntrl|servo_control[5]~1_combout\);

-- Location: FF_X44_Y29_N15
\cntrl|servo_out_reg|Q[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \cntrl|servo_control[5]~1_combout\,
	sload => VCC,
	ena => \cntrl|load_servo_pwm~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \cntrl|servo_out_reg|Q\(5));

-- Location: LCCOMB_X39_Y24_N0
\cntrl|servo_reg|Q[4]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \cntrl|servo_reg|Q[4]~feeder_combout\ = \cntrl|motor_reg|Q~3_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \cntrl|motor_reg|Q~3_combout\,
	combout => \cntrl|servo_reg|Q[4]~feeder_combout\);

-- Location: FF_X39_Y24_N1
\cntrl|servo_reg|Q[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \cntrl|servo_reg|Q[4]~feeder_combout\,
	ena => \cntrl|servo_reg|Q[1]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \cntrl|servo_reg|Q\(4));

-- Location: LCCOMB_X44_Y29_N20
\cntrl|servo_control[4]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \cntrl|servo_control[4]~2_combout\ = (\cntrl|servo_reg|Q\(4) & !\cntrl|control|state~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \cntrl|servo_reg|Q\(4),
	datad => \cntrl|control|state~q\,
	combout => \cntrl|servo_control[4]~2_combout\);

-- Location: FF_X44_Y29_N21
\cntrl|servo_out_reg|Q[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \cntrl|servo_control[4]~2_combout\,
	ena => \cntrl|load_servo_pwm~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \cntrl|servo_out_reg|Q\(4));

-- Location: LCCOMB_X38_Y24_N26
\cntrl|servo_reg|Q[3]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \cntrl|servo_reg|Q[3]~feeder_combout\ = \cntrl|motor_reg|Q~4_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \cntrl|motor_reg|Q~4_combout\,
	combout => \cntrl|servo_reg|Q[3]~feeder_combout\);

-- Location: FF_X38_Y24_N27
\cntrl|servo_reg|Q[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \cntrl|servo_reg|Q[3]~feeder_combout\,
	ena => \cntrl|servo_reg|Q[1]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \cntrl|servo_reg|Q\(3));

-- Location: LCCOMB_X44_Y29_N22
\cntrl|servo_control[3]~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \cntrl|servo_control[3]~3_combout\ = (\cntrl|servo_reg|Q\(3)) # (\cntrl|control|state~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \cntrl|servo_reg|Q\(3),
	datad => \cntrl|control|state~q\,
	combout => \cntrl|servo_control[3]~3_combout\);

-- Location: FF_X44_Y29_N23
\cntrl|servo_out_reg|Q[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \cntrl|servo_control[3]~3_combout\,
	ena => \cntrl|load_servo_pwm~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \cntrl|servo_out_reg|Q\(3));

-- Location: FF_X39_Y24_N11
\cntrl|servo_reg|Q[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \cntrl|motor_reg|Q~5_combout\,
	sload => VCC,
	ena => \cntrl|servo_reg|Q[1]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \cntrl|servo_reg|Q\(2));

-- Location: LCCOMB_X39_Y24_N10
\cntrl|servo_control[2]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \cntrl|servo_control[2]~4_combout\ = (\cntrl|servo_reg|Q\(2) & !\cntrl|control|state~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \cntrl|servo_reg|Q\(2),
	datad => \cntrl|control|state~q\,
	combout => \cntrl|servo_control[2]~4_combout\);

-- Location: LCCOMB_X44_Y29_N24
\cntrl|servo_out_reg|Q[2]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \cntrl|servo_out_reg|Q[2]~feeder_combout\ = \cntrl|servo_control[2]~4_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \cntrl|servo_control[2]~4_combout\,
	combout => \cntrl|servo_out_reg|Q[2]~feeder_combout\);

-- Location: FF_X44_Y29_N25
\cntrl|servo_out_reg|Q[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \cntrl|servo_out_reg|Q[2]~feeder_combout\,
	ena => \cntrl|load_servo_pwm~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \cntrl|servo_out_reg|Q\(2));

-- Location: LCCOMB_X39_Y24_N28
\cntrl|servo_reg|Q[1]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \cntrl|servo_reg|Q[1]~feeder_combout\ = \cntrl|motor_reg|Q~6_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \cntrl|motor_reg|Q~6_combout\,
	combout => \cntrl|servo_reg|Q[1]~feeder_combout\);

-- Location: FF_X39_Y24_N29
\cntrl|servo_reg|Q[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \cntrl|servo_reg|Q[1]~feeder_combout\,
	ena => \cntrl|servo_reg|Q[1]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \cntrl|servo_reg|Q\(1));

-- Location: LCCOMB_X44_Y29_N26
\cntrl|servo_control[1]~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \cntrl|servo_control[1]~5_combout\ = (\cntrl|servo_reg|Q\(1) & !\cntrl|control|state~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \cntrl|servo_reg|Q\(1),
	datad => \cntrl|control|state~q\,
	combout => \cntrl|servo_control[1]~5_combout\);

-- Location: FF_X44_Y29_N27
\cntrl|servo_out_reg|Q[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \cntrl|servo_control[1]~5_combout\,
	ena => \cntrl|load_servo_pwm~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \cntrl|servo_out_reg|Q\(1));

-- Location: LCCOMB_X39_Y24_N14
\cntrl|servo_reg|Q[0]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \cntrl|servo_reg|Q[0]~feeder_combout\ = \cntrl|motor_reg|Q~7_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \cntrl|motor_reg|Q~7_combout\,
	combout => \cntrl|servo_reg|Q[0]~feeder_combout\);

-- Location: FF_X39_Y24_N15
\cntrl|servo_reg|Q[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \cntrl|servo_reg|Q[0]~feeder_combout\,
	ena => \cntrl|servo_reg|Q[1]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \cntrl|servo_reg|Q\(0));

-- Location: LCCOMB_X44_Y29_N28
\cntrl|servo_control[0]~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \cntrl|servo_control[0]~6_combout\ = (\cntrl|servo_reg|Q\(0)) # (\cntrl|control|state~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cntrl|servo_reg|Q\(0),
	datad => \cntrl|control|state~q\,
	combout => \cntrl|servo_control[0]~6_combout\);

-- Location: FF_X44_Y29_N29
\cntrl|servo_out_reg|Q[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \cntrl|servo_control[0]~6_combout\,
	ena => \cntrl|load_servo_pwm~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \cntrl|servo_out_reg|Q\(0));

-- Location: LCCOMB_X44_Y32_N6
\servo|LessThan0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \servo|LessThan0~1_cout\ = CARRY((\cntrl|servo_out_reg|Q\(0) & !\servo|chnk_cnt|Q\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000100010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \cntrl|servo_out_reg|Q\(0),
	datab => \servo|chnk_cnt|Q\(0),
	datad => VCC,
	cout => \servo|LessThan0~1_cout\);

-- Location: LCCOMB_X44_Y32_N8
\servo|LessThan0~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \servo|LessThan0~3_cout\ = CARRY((\cntrl|servo_out_reg|Q\(1) & (\servo|chnk_cnt|Q\(1) & !\servo|LessThan0~1_cout\)) # (!\cntrl|servo_out_reg|Q\(1) & ((\servo|chnk_cnt|Q\(1)) # (!\servo|LessThan0~1_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \cntrl|servo_out_reg|Q\(1),
	datab => \servo|chnk_cnt|Q\(1),
	datad => VCC,
	cin => \servo|LessThan0~1_cout\,
	cout => \servo|LessThan0~3_cout\);

-- Location: LCCOMB_X44_Y32_N10
\servo|LessThan0~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \servo|LessThan0~5_cout\ = CARRY((\cntrl|servo_out_reg|Q\(2) & ((!\servo|LessThan0~3_cout\) # (!\servo|chnk_cnt|Q\(2)))) # (!\cntrl|servo_out_reg|Q\(2) & (!\servo|chnk_cnt|Q\(2) & !\servo|LessThan0~3_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \cntrl|servo_out_reg|Q\(2),
	datab => \servo|chnk_cnt|Q\(2),
	datad => VCC,
	cin => \servo|LessThan0~3_cout\,
	cout => \servo|LessThan0~5_cout\);

-- Location: LCCOMB_X44_Y32_N12
\servo|LessThan0~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \servo|LessThan0~7_cout\ = CARRY((\servo|chnk_cnt|Q\(3) & ((!\servo|LessThan0~5_cout\) # (!\cntrl|servo_out_reg|Q\(3)))) # (!\servo|chnk_cnt|Q\(3) & (!\cntrl|servo_out_reg|Q\(3) & !\servo|LessThan0~5_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \servo|chnk_cnt|Q\(3),
	datab => \cntrl|servo_out_reg|Q\(3),
	datad => VCC,
	cin => \servo|LessThan0~5_cout\,
	cout => \servo|LessThan0~7_cout\);

-- Location: LCCOMB_X44_Y32_N14
\servo|LessThan0~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \servo|LessThan0~9_cout\ = CARRY((\cntrl|servo_out_reg|Q\(4) & ((!\servo|LessThan0~7_cout\) # (!\servo|chnk_cnt|Q\(4)))) # (!\cntrl|servo_out_reg|Q\(4) & (!\servo|chnk_cnt|Q\(4) & !\servo|LessThan0~7_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \cntrl|servo_out_reg|Q\(4),
	datab => \servo|chnk_cnt|Q\(4),
	datad => VCC,
	cin => \servo|LessThan0~7_cout\,
	cout => \servo|LessThan0~9_cout\);

-- Location: LCCOMB_X44_Y32_N16
\servo|LessThan0~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \servo|LessThan0~11_cout\ = CARRY((\cntrl|servo_out_reg|Q\(5) & (\servo|chnk_cnt|Q\(5) & !\servo|LessThan0~9_cout\)) # (!\cntrl|servo_out_reg|Q\(5) & ((\servo|chnk_cnt|Q\(5)) # (!\servo|LessThan0~9_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \cntrl|servo_out_reg|Q\(5),
	datab => \servo|chnk_cnt|Q\(5),
	datad => VCC,
	cin => \servo|LessThan0~9_cout\,
	cout => \servo|LessThan0~11_cout\);

-- Location: LCCOMB_X44_Y32_N18
\servo|LessThan0~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \servo|LessThan0~12_combout\ = (\cntrl|servo_out_reg|Q\(6) & ((!\servo|chnk_cnt|Q\(6)) # (!\servo|LessThan0~11_cout\))) # (!\cntrl|servo_out_reg|Q\(6) & (!\servo|LessThan0~11_cout\ & !\servo|chnk_cnt|Q\(6)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101010101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \cntrl|servo_out_reg|Q\(6),
	datad => \servo|chnk_cnt|Q\(6),
	cin => \servo|LessThan0~11_cout\,
	combout => \servo|LessThan0~12_combout\);

-- Location: IOIBUF_X53_Y14_N1
\KEY[0]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_KEY(0),
	o => \KEY[0]~input_o\);

-- Location: IOIBUF_X0_Y16_N22
\SW[0]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(0),
	o => \SW[0]~input_o\);

-- Location: IOIBUF_X27_Y0_N15
\SW[1]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(1),
	o => \SW[1]~input_o\);

-- Location: IOIBUF_X25_Y34_N8
\SW[2]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(2),
	o => \SW[2]~input_o\);

-- Location: IOIBUF_X53_Y17_N15
\SW[3]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(3),
	o => \SW[3]~input_o\);

-- Location: IOIBUF_X25_Y34_N15
\GPIO_0_IN[0]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_GPIO_0_IN(0),
	o => \GPIO_0_IN[0]~input_o\);

-- Location: IOIBUF_X25_Y34_N22
\GPIO_0_IN[1]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_GPIO_0_IN(1),
	o => \GPIO_0_IN[1]~input_o\);

-- Location: IOIBUF_X7_Y34_N8
\GPIO_0_D[2]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => GPIO_0_D(2),
	o => \GPIO_0_D[2]~input_o\);

-- Location: IOIBUF_X3_Y34_N1
\GPIO_0_D[4]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => GPIO_0_D(4),
	o => \GPIO_0_D[4]~input_o\);

-- Location: IOIBUF_X9_Y34_N22
\GPIO_0_D[6]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => GPIO_0_D(6),
	o => \GPIO_0_D[6]~input_o\);

-- Location: IOIBUF_X14_Y34_N22
\GPIO_0_D[8]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => GPIO_0_D(8),
	o => \GPIO_0_D[8]~input_o\);

-- Location: IOIBUF_X5_Y34_N15
\GPIO_0_D[9]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => GPIO_0_D(9),
	o => \GPIO_0_D[9]~input_o\);

-- Location: IOIBUF_X16_Y34_N8
\GPIO_0_D[10]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => GPIO_0_D(10),
	o => \GPIO_0_D[10]~input_o\);

-- Location: IOIBUF_X16_Y34_N1
\GPIO_0_D[11]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => GPIO_0_D(11),
	o => \GPIO_0_D[11]~input_o\);

-- Location: IOIBUF_X18_Y34_N1
\GPIO_0_D[12]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => GPIO_0_D(12),
	o => \GPIO_0_D[12]~input_o\);

-- Location: IOIBUF_X9_Y34_N8
\GPIO_0_D[13]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => GPIO_0_D(13),
	o => \GPIO_0_D[13]~input_o\);

-- Location: IOIBUF_X20_Y34_N22
\GPIO_0_D[14]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => GPIO_0_D(14),
	o => \GPIO_0_D[14]~input_o\);

-- Location: IOIBUF_X18_Y34_N22
\GPIO_0_D[15]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => GPIO_0_D(15),
	o => \GPIO_0_D[15]~input_o\);

-- Location: IOIBUF_X23_Y34_N15
\GPIO_0_D[16]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => GPIO_0_D(16),
	o => \GPIO_0_D[16]~input_o\);

-- Location: IOIBUF_X14_Y34_N15
\GPIO_0_D[17]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => GPIO_0_D(17),
	o => \GPIO_0_D[17]~input_o\);

-- Location: IOIBUF_X16_Y34_N15
\GPIO_0_D[18]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => GPIO_0_D(18),
	o => \GPIO_0_D[18]~input_o\);

-- Location: IOIBUF_X23_Y34_N22
\GPIO_0_D[19]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => GPIO_0_D(19),
	o => \GPIO_0_D[19]~input_o\);

-- Location: IOIBUF_X20_Y34_N8
\GPIO_0_D[20]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => GPIO_0_D(20),
	o => \GPIO_0_D[20]~input_o\);

-- Location: IOIBUF_X20_Y34_N15
\GPIO_0_D[21]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => GPIO_0_D(21),
	o => \GPIO_0_D[21]~input_o\);

-- Location: IOIBUF_X34_Y34_N1
\GPIO_0_D[22]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => GPIO_0_D(22),
	o => \GPIO_0_D[22]~input_o\);

-- Location: IOIBUF_X29_Y34_N15
\GPIO_0_D[23]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => GPIO_0_D(23),
	o => \GPIO_0_D[23]~input_o\);

-- Location: IOIBUF_X31_Y34_N1
\GPIO_0_D[24]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => GPIO_0_D(24),
	o => \GPIO_0_D[24]~input_o\);

-- Location: IOIBUF_X31_Y34_N8
\GPIO_0_D[25]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => GPIO_0_D(25),
	o => \GPIO_0_D[25]~input_o\);

-- Location: IOIBUF_X45_Y34_N8
\GPIO_0_D[26]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => GPIO_0_D(26),
	o => \GPIO_0_D[26]~input_o\);

-- Location: IOIBUF_X45_Y34_N15
\GPIO_0_D[27]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => GPIO_0_D(27),
	o => \GPIO_0_D[27]~input_o\);

-- Location: IOIBUF_X38_Y34_N1
\GPIO_0_D[28]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => GPIO_0_D(28),
	o => \GPIO_0_D[28]~input_o\);

-- Location: IOIBUF_X40_Y34_N8
\GPIO_0_D[29]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => GPIO_0_D(29),
	o => \GPIO_0_D[29]~input_o\);

-- Location: IOIBUF_X43_Y34_N15
\GPIO_0_D[30]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => GPIO_0_D(30),
	o => \GPIO_0_D[30]~input_o\);

-- Location: IOIBUF_X51_Y34_N15
\GPIO_0_D[31]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => GPIO_0_D(31),
	o => \GPIO_0_D[31]~input_o\);

-- Location: IOIBUF_X51_Y34_N22
\GPIO_0_D[32]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => GPIO_0_D(32),
	o => \GPIO_0_D[32]~input_o\);

-- Location: IOIBUF_X43_Y34_N22
\GPIO_0_D[33]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => GPIO_0_D(33),
	o => \GPIO_0_D[33]~input_o\);

-- Location: IOIBUF_X1_Y34_N8
\GPIO_0_D[0]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => GPIO_0_D(0),
	o => \GPIO_0_D[0]~input_o\);

-- Location: IOIBUF_X7_Y34_N15
\GPIO_0_D[3]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => GPIO_0_D(3),
	o => \GPIO_0_D[3]~input_o\);

-- Location: IOIBUF_X7_Y34_N1
\GPIO_0_D[5]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => GPIO_0_D(5),
	o => \GPIO_0_D[5]~input_o\);

-- Location: IOIBUF_X11_Y34_N1
\GPIO_0_D[7]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => GPIO_0_D(7),
	o => \GPIO_0_D[7]~input_o\);

ww_LED(0) <= \LED[0]~output_o\;

ww_LED(1) <= \LED[1]~output_o\;

ww_LED(2) <= \LED[2]~output_o\;

ww_LED(3) <= \LED[3]~output_o\;

ww_LED(4) <= \LED[4]~output_o\;

ww_LED(5) <= \LED[5]~output_o\;

ww_LED(6) <= \LED[6]~output_o\;

ww_LED(7) <= \LED[7]~output_o\;

GPIO_0_D(2) <= \GPIO_0_D[2]~output_o\;

GPIO_0_D(4) <= \GPIO_0_D[4]~output_o\;

GPIO_0_D(6) <= \GPIO_0_D[6]~output_o\;

GPIO_0_D(8) <= \GPIO_0_D[8]~output_o\;

GPIO_0_D(9) <= \GPIO_0_D[9]~output_o\;

GPIO_0_D(10) <= \GPIO_0_D[10]~output_o\;

GPIO_0_D(11) <= \GPIO_0_D[11]~output_o\;

GPIO_0_D(12) <= \GPIO_0_D[12]~output_o\;

GPIO_0_D(13) <= \GPIO_0_D[13]~output_o\;

GPIO_0_D(14) <= \GPIO_0_D[14]~output_o\;

GPIO_0_D(15) <= \GPIO_0_D[15]~output_o\;

GPIO_0_D(16) <= \GPIO_0_D[16]~output_o\;

GPIO_0_D(17) <= \GPIO_0_D[17]~output_o\;

GPIO_0_D(18) <= \GPIO_0_D[18]~output_o\;

GPIO_0_D(19) <= \GPIO_0_D[19]~output_o\;

GPIO_0_D(20) <= \GPIO_0_D[20]~output_o\;

GPIO_0_D(21) <= \GPIO_0_D[21]~output_o\;

GPIO_0_D(22) <= \GPIO_0_D[22]~output_o\;

GPIO_0_D(23) <= \GPIO_0_D[23]~output_o\;

GPIO_0_D(24) <= \GPIO_0_D[24]~output_o\;

GPIO_0_D(25) <= \GPIO_0_D[25]~output_o\;

GPIO_0_D(26) <= \GPIO_0_D[26]~output_o\;

GPIO_0_D(27) <= \GPIO_0_D[27]~output_o\;

GPIO_0_D(28) <= \GPIO_0_D[28]~output_o\;

GPIO_0_D(29) <= \GPIO_0_D[29]~output_o\;

GPIO_0_D(30) <= \GPIO_0_D[30]~output_o\;

GPIO_0_D(31) <= \GPIO_0_D[31]~output_o\;

GPIO_0_D(32) <= \GPIO_0_D[32]~output_o\;

GPIO_0_D(33) <= \GPIO_0_D[33]~output_o\;

GPIO_0_D(0) <= \GPIO_0_D[0]~output_o\;

GPIO_0_D(1) <= \GPIO_0_D[1]~output_o\;

GPIO_0_D(3) <= \GPIO_0_D[3]~output_o\;

GPIO_0_D(5) <= \GPIO_0_D[5]~output_o\;

GPIO_0_D(7) <= \GPIO_0_D[7]~output_o\;
END structure;


