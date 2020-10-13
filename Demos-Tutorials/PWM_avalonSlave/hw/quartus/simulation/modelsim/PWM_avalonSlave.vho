-- Copyright (C) 2018  Intel Corporation. All rights reserved.
-- Your use of Intel Corporation's design tools, logic functions 
-- and other software and tools, and its AMPP partner logic 
-- functions, and any output files from any of the foregoing 
-- (including device programming or simulation files), and any 
-- associated documentation or information are expressly subject 
-- to the terms and conditions of the Intel Program License 
-- Subscription Agreement, the Intel Quartus Prime License Agreement,
-- the Intel FPGA IP License Agreement, or other applicable license
-- agreement, including, without limitation, that your use is for
-- the sole purpose of programming logic devices manufactured by
-- Intel and sold by Intel or its authorized distributors.  Please
-- refer to the applicable agreement for further details.

-- VENDOR "Altera"
-- PROGRAM "Quartus Prime"
-- VERSION "Version 18.1.0 Build 625 09/12/2018 SJ Lite Edition"

-- DATE "11/16/2019 12:34:02"

-- 
-- Device: Altera 5CGXFC7C7F23C8 Package FBGA484
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
USE IEEE.STD_LOGIC_ARITH.ALL;

ENTITY 	PWM_AvalonSlave IS
    PORT (
	Clk : IN std_logic;
	nReset : IN std_logic;
	Address : IN std_logic_vector(1 DOWNTO 0);
	ChipSelect : IN std_logic;
	Write_en : IN std_logic;
	WriteData : IN STD.STANDARD.integer;
	outpwm : OUT std_logic
	);
END PWM_AvalonSlave;

-- Design Ports Information
-- outpwm	=>  Location: PIN_T20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- nReset	=>  Location: PIN_T22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Clk	=>  Location: PIN_M16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- WriteData[1]	=>  Location: PIN_V21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Address[1]	=>  Location: PIN_Y19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Address[0]	=>  Location: PIN_Y22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ChipSelect	=>  Location: PIN_P19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Write_en	=>  Location: PIN_P16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- WriteData[0]	=>  Location: PIN_P14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- WriteData[7]	=>  Location: PIN_Y21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- WriteData[6]	=>  Location: PIN_W22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- WriteData[5]	=>  Location: PIN_M20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- WriteData[4]	=>  Location: PIN_B22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- WriteData[3]	=>  Location: PIN_Y20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- WriteData[2]	=>  Location: PIN_W21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- WriteData[13]	=>  Location: PIN_U21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- WriteData[12]	=>  Location: PIN_R16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- WriteData[11]	=>  Location: PIN_U22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- WriteData[10]	=>  Location: PIN_R21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- WriteData[9]	=>  Location: PIN_U17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- WriteData[8]	=>  Location: PIN_W16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- WriteData[26]	=>  Location: PIN_U20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- WriteData[20]	=>  Location: PIN_T17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- WriteData[14]	=>  Location: PIN_R14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- WriteData[19]	=>  Location: PIN_T19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- WriteData[18]	=>  Location: PIN_V16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- WriteData[17]	=>  Location: PIN_P18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- WriteData[16]	=>  Location: PIN_T18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- WriteData[15]	=>  Location: PIN_P17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- WriteData[31]	=>  Location: PIN_R22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- WriteData[30]	=>  Location: PIN_T15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- WriteData[29]	=>  Location: PIN_V19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- WriteData[28]	=>  Location: PIN_AA22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- WriteData[27]	=>  Location: PIN_U16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- WriteData[25]	=>  Location: PIN_P22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- WriteData[24]	=>  Location: PIN_R17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- WriteData[23]	=>  Location: PIN_AB22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- WriteData[22]	=>  Location: PIN_V18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- WriteData[21]	=>  Location: PIN_R15,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF PWM_AvalonSlave IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_Clk : std_logic;
SIGNAL ww_nReset : std_logic;
SIGNAL ww_Address : std_logic_vector(1 DOWNTO 0);
SIGNAL ww_ChipSelect : std_logic;
SIGNAL ww_Write_en : std_logic;
SIGNAL ww_WriteData : std_logic_vector(31 DOWNTO 0);
SIGNAL ww_outpwm : std_logic;
SIGNAL \~QUARTUS_CREATED_GND~I_combout\ : std_logic;
SIGNAL \nReset~input_o\ : std_logic;
SIGNAL \Clk~input_o\ : std_logic;
SIGNAL \Clk~inputCLKENA0_outclk\ : std_logic;
SIGNAL \WriteData[0]~input_o\ : std_logic;
SIGNAL \polarity[0]~1_combout\ : std_logic;
SIGNAL \Address[1]~input_o\ : std_logic;
SIGNAL \Write_en~input_o\ : std_logic;
SIGNAL \Address[0]~input_o\ : std_logic;
SIGNAL \ChipSelect~input_o\ : std_logic;
SIGNAL \polarity[31]~0_combout\ : std_logic;
SIGNAL \WriteData[1]~input_o\ : std_logic;
SIGNAL \polarity[1]~feeder_combout\ : std_logic;
SIGNAL \WriteData[10]~input_o\ : std_logic;
SIGNAL \WriteData[11]~input_o\ : std_logic;
SIGNAL \WriteData[8]~input_o\ : std_logic;
SIGNAL \polarity[8]~feeder_combout\ : std_logic;
SIGNAL \WriteData[13]~input_o\ : std_logic;
SIGNAL \WriteData[9]~input_o\ : std_logic;
SIGNAL \WriteData[12]~input_o\ : std_logic;
SIGNAL \polarity[12]~feeder_combout\ : std_logic;
SIGNAL \Equal2~1_combout\ : std_logic;
SIGNAL \WriteData[7]~input_o\ : std_logic;
SIGNAL \WriteData[2]~input_o\ : std_logic;
SIGNAL \WriteData[4]~input_o\ : std_logic;
SIGNAL \WriteData[5]~input_o\ : std_logic;
SIGNAL \polarity[5]~feeder_combout\ : std_logic;
SIGNAL \WriteData[6]~input_o\ : std_logic;
SIGNAL \WriteData[3]~input_o\ : std_logic;
SIGNAL \polarity[3]~feeder_combout\ : std_logic;
SIGNAL \Equal2~0_combout\ : std_logic;
SIGNAL \period[31]~0_combout\ : std_logic;
SIGNAL \Add0~49_sumout\ : std_logic;
SIGNAL \WriteData[31]~input_o\ : std_logic;
SIGNAL \Add0~54\ : std_logic;
SIGNAL \Add0~57_sumout\ : std_logic;
SIGNAL \Add0~58\ : std_logic;
SIGNAL \Add0~61_sumout\ : std_logic;
SIGNAL \counter[3]~DUPLICATE_q\ : std_logic;
SIGNAL \Add0~62\ : std_logic;
SIGNAL \Add0~65_sumout\ : std_logic;
SIGNAL \counter[4]~DUPLICATE_q\ : std_logic;
SIGNAL \Add0~66\ : std_logic;
SIGNAL \Add0~69_sumout\ : std_logic;
SIGNAL \counter[5]~DUPLICATE_q\ : std_logic;
SIGNAL \Add0~70\ : std_logic;
SIGNAL \Add0~37_sumout\ : std_logic;
SIGNAL \Add0~38\ : std_logic;
SIGNAL \Add0~41_sumout\ : std_logic;
SIGNAL \Add0~42\ : std_logic;
SIGNAL \Add0~45_sumout\ : std_logic;
SIGNAL \Add0~46\ : std_logic;
SIGNAL \Add0~25_sumout\ : std_logic;
SIGNAL \counter[9]~DUPLICATE_q\ : std_logic;
SIGNAL \Add0~26\ : std_logic;
SIGNAL \Add0~29_sumout\ : std_logic;
SIGNAL \Add0~30\ : std_logic;
SIGNAL \Add0~33_sumout\ : std_logic;
SIGNAL \counter[11]~DUPLICATE_q\ : std_logic;
SIGNAL \Add0~34\ : std_logic;
SIGNAL \Add0~13_sumout\ : std_logic;
SIGNAL \counter[12]~DUPLICATE_q\ : std_logic;
SIGNAL \Add0~14\ : std_logic;
SIGNAL \Add0~17_sumout\ : std_logic;
SIGNAL \Add0~18\ : std_logic;
SIGNAL \Add0~21_sumout\ : std_logic;
SIGNAL \Add0~22\ : std_logic;
SIGNAL \Add0~1_sumout\ : std_logic;
SIGNAL \counter[15]~DUPLICATE_q\ : std_logic;
SIGNAL \Add0~2\ : std_logic;
SIGNAL \Add0~5_sumout\ : std_logic;
SIGNAL \counter[16]~DUPLICATE_q\ : std_logic;
SIGNAL \Add0~6\ : std_logic;
SIGNAL \Add0~9_sumout\ : std_logic;
SIGNAL \Add0~10\ : std_logic;
SIGNAL \Add0~105_sumout\ : std_logic;
SIGNAL \counter[18]~DUPLICATE_q\ : std_logic;
SIGNAL \Add0~106\ : std_logic;
SIGNAL \Add0~109_sumout\ : std_logic;
SIGNAL \counter[19]~DUPLICATE_q\ : std_logic;
SIGNAL \Add0~110\ : std_logic;
SIGNAL \Add0~113_sumout\ : std_logic;
SIGNAL \Add0~114\ : std_logic;
SIGNAL \Add0~117_sumout\ : std_logic;
SIGNAL \counter[21]~DUPLICATE_q\ : std_logic;
SIGNAL \Add0~118\ : std_logic;
SIGNAL \Add0~121_sumout\ : std_logic;
SIGNAL \Add0~122\ : std_logic;
SIGNAL \Add0~125_sumout\ : std_logic;
SIGNAL \Add0~126\ : std_logic;
SIGNAL \Add0~93_sumout\ : std_logic;
SIGNAL \Add0~94\ : std_logic;
SIGNAL \Add0~97_sumout\ : std_logic;
SIGNAL \Add0~98\ : std_logic;
SIGNAL \Add0~101_sumout\ : std_logic;
SIGNAL \Add0~102\ : std_logic;
SIGNAL \Add0~81_sumout\ : std_logic;
SIGNAL \counter[27]~DUPLICATE_q\ : std_logic;
SIGNAL \Add0~82\ : std_logic;
SIGNAL \Add0~85_sumout\ : std_logic;
SIGNAL \counter[28]~DUPLICATE_q\ : std_logic;
SIGNAL \Add0~86\ : std_logic;
SIGNAL \Add0~89_sumout\ : std_logic;
SIGNAL \Add0~90\ : std_logic;
SIGNAL \Add0~73_sumout\ : std_logic;
SIGNAL \WriteData[30]~input_o\ : std_logic;
SIGNAL \Add0~74\ : std_logic;
SIGNAL \Add0~77_sumout\ : std_logic;
SIGNAL \Equal0~7_combout\ : std_logic;
SIGNAL \WriteData[21]~input_o\ : std_logic;
SIGNAL \WriteData[23]~input_o\ : std_logic;
SIGNAL \WriteData[22]~input_o\ : std_logic;
SIGNAL \Equal0~11_combout\ : std_logic;
SIGNAL \WriteData[25]~input_o\ : std_logic;
SIGNAL \WriteData[26]~input_o\ : std_logic;
SIGNAL \WriteData[24]~input_o\ : std_logic;
SIGNAL \Equal0~9_combout\ : std_logic;
SIGNAL \WriteData[19]~input_o\ : std_logic;
SIGNAL \WriteData[18]~input_o\ : std_logic;
SIGNAL \WriteData[20]~input_o\ : std_logic;
SIGNAL \Equal0~10_combout\ : std_logic;
SIGNAL \WriteData[28]~input_o\ : std_logic;
SIGNAL \WriteData[27]~input_o\ : std_logic;
SIGNAL \WriteData[29]~input_o\ : std_logic;
SIGNAL \Equal0~8_combout\ : std_logic;
SIGNAL \Equal0~12_combout\ : std_logic;
SIGNAL \Equal0~13_combout\ : std_logic;
SIGNAL \counter[0]~DUPLICATE_q\ : std_logic;
SIGNAL \Add0~50\ : std_logic;
SIGNAL \Add0~53_sumout\ : std_logic;
SIGNAL \counter[1]~DUPLICATE_q\ : std_logic;
SIGNAL \Equal0~4_combout\ : std_logic;
SIGNAL \WriteData[15]~input_o\ : std_logic;
SIGNAL \WriteData[16]~input_o\ : std_logic;
SIGNAL \WriteData[17]~input_o\ : std_logic;
SIGNAL \Equal0~0_combout\ : std_logic;
SIGNAL \period[8]~4_combout\ : std_logic;
SIGNAL \period[7]~3_combout\ : std_logic;
SIGNAL \period[6]~2_combout\ : std_logic;
SIGNAL \Equal0~3_combout\ : std_logic;
SIGNAL \WriteData[14]~input_o\ : std_logic;
SIGNAL \Equal0~1_combout\ : std_logic;
SIGNAL \period[5]~6_combout\ : std_logic;
SIGNAL \period[3]~5_combout\ : std_logic;
SIGNAL \Equal0~5_combout\ : std_logic;
SIGNAL \period[9]~1_combout\ : std_logic;
SIGNAL \period[10]~feeder_combout\ : std_logic;
SIGNAL \Equal0~2_combout\ : std_logic;
SIGNAL \Equal0~6_combout\ : std_logic;
SIGNAL \dc[31]~0_combout\ : std_logic;
SIGNAL \Equal1~7_combout\ : std_logic;
SIGNAL \Equal1~8_combout\ : std_logic;
SIGNAL \Equal1~10_combout\ : std_logic;
SIGNAL \dc[21]~feeder_combout\ : std_logic;
SIGNAL \Equal1~11_combout\ : std_logic;
SIGNAL \counter[26]~DUPLICATE_q\ : std_logic;
SIGNAL \counter[25]~DUPLICATE_q\ : std_logic;
SIGNAL \counter[24]~DUPLICATE_q\ : std_logic;
SIGNAL \Equal1~9_combout\ : std_logic;
SIGNAL \Equal1~12_combout\ : std_logic;
SIGNAL \Equal1~0_combout\ : std_logic;
SIGNAL \Equal1~1_combout\ : std_logic;
SIGNAL \dc[4]~5_combout\ : std_logic;
SIGNAL \dc[5]~6_combout\ : std_logic;
SIGNAL \Equal1~5_combout\ : std_logic;
SIGNAL \dc[2]~4_combout\ : std_logic;
SIGNAL \Equal1~4_combout\ : std_logic;
SIGNAL \Equal1~2_combout\ : std_logic;
SIGNAL \dc[7]~2_combout\ : std_logic;
SIGNAL \dc[6]~1_combout\ : std_logic;
SIGNAL \dc[8]~3_combout\ : std_logic;
SIGNAL \Equal1~3_combout\ : std_logic;
SIGNAL \Equal1~6_combout\ : std_logic;
SIGNAL \clk_slow~0_combout\ : std_logic;
SIGNAL \clk_slow~q\ : std_logic;
SIGNAL \polarity[26]~feeder_combout\ : std_logic;
SIGNAL \polarity[15]~feeder_combout\ : std_logic;
SIGNAL \Equal2~2_combout\ : std_logic;
SIGNAL \Equal2~4_combout\ : std_logic;
SIGNAL \polarity[30]~feeder_combout\ : std_logic;
SIGNAL \Equal2~3_combout\ : std_logic;
SIGNAL \Equal2~5_combout\ : std_logic;
SIGNAL \outpwm~0_combout\ : std_logic;
SIGNAL \clk_dc~0_combout\ : std_logic;
SIGNAL \clk_dc~q\ : std_logic;
SIGNAL \outpwm~1_combout\ : std_logic;
SIGNAL \outpwm$latch~combout\ : std_logic;
SIGNAL counter : std_logic_vector(31 DOWNTO 0);
SIGNAL polarity : std_logic_vector(31 DOWNTO 0);
SIGNAL dc : std_logic_vector(31 DOWNTO 0);
SIGNAL period : std_logic_vector(31 DOWNTO 0);
SIGNAL \ALT_INV_counter[21]~DUPLICATE_q\ : std_logic;
SIGNAL \ALT_INV_counter[19]~DUPLICATE_q\ : std_logic;
SIGNAL \ALT_INV_counter[18]~DUPLICATE_q\ : std_logic;
SIGNAL \ALT_INV_counter[26]~DUPLICATE_q\ : std_logic;
SIGNAL \ALT_INV_counter[25]~DUPLICATE_q\ : std_logic;
SIGNAL \ALT_INV_counter[24]~DUPLICATE_q\ : std_logic;
SIGNAL \ALT_INV_counter[28]~DUPLICATE_q\ : std_logic;
SIGNAL \ALT_INV_counter[27]~DUPLICATE_q\ : std_logic;
SIGNAL \ALT_INV_counter[5]~DUPLICATE_q\ : std_logic;
SIGNAL \ALT_INV_counter[4]~DUPLICATE_q\ : std_logic;
SIGNAL \ALT_INV_counter[3]~DUPLICATE_q\ : std_logic;
SIGNAL \ALT_INV_counter[1]~DUPLICATE_q\ : std_logic;
SIGNAL \ALT_INV_counter[0]~DUPLICATE_q\ : std_logic;
SIGNAL \ALT_INV_counter[11]~DUPLICATE_q\ : std_logic;
SIGNAL \ALT_INV_counter[9]~DUPLICATE_q\ : std_logic;
SIGNAL \ALT_INV_counter[12]~DUPLICATE_q\ : std_logic;
SIGNAL \ALT_INV_counter[16]~DUPLICATE_q\ : std_logic;
SIGNAL \ALT_INV_counter[15]~DUPLICATE_q\ : std_logic;
SIGNAL \ALT_INV_WriteData[21]~input_o\ : std_logic;
SIGNAL \ALT_INV_WriteData[30]~input_o\ : std_logic;
SIGNAL \ALT_INV_WriteData[15]~input_o\ : std_logic;
SIGNAL \ALT_INV_WriteData[26]~input_o\ : std_logic;
SIGNAL \ALT_INV_WriteData[8]~input_o\ : std_logic;
SIGNAL \ALT_INV_WriteData[9]~input_o\ : std_logic;
SIGNAL \ALT_INV_WriteData[10]~input_o\ : std_logic;
SIGNAL \ALT_INV_WriteData[12]~input_o\ : std_logic;
SIGNAL \ALT_INV_WriteData[2]~input_o\ : std_logic;
SIGNAL \ALT_INV_WriteData[3]~input_o\ : std_logic;
SIGNAL \ALT_INV_WriteData[4]~input_o\ : std_logic;
SIGNAL \ALT_INV_WriteData[5]~input_o\ : std_logic;
SIGNAL \ALT_INV_WriteData[6]~input_o\ : std_logic;
SIGNAL \ALT_INV_WriteData[7]~input_o\ : std_logic;
SIGNAL \ALT_INV_WriteData[0]~input_o\ : std_logic;
SIGNAL \ALT_INV_Write_en~input_o\ : std_logic;
SIGNAL \ALT_INV_ChipSelect~input_o\ : std_logic;
SIGNAL \ALT_INV_Address[0]~input_o\ : std_logic;
SIGNAL \ALT_INV_Address[1]~input_o\ : std_logic;
SIGNAL \ALT_INV_WriteData[1]~input_o\ : std_logic;
SIGNAL \ALT_INV_nReset~input_o\ : std_logic;
SIGNAL \ALT_INV_outpwm$latch~combout\ : std_logic;
SIGNAL \ALT_INV_Equal0~12_combout\ : std_logic;
SIGNAL \ALT_INV_Equal0~11_combout\ : std_logic;
SIGNAL ALT_INV_period : std_logic_vector(31 DOWNTO 0);
SIGNAL \ALT_INV_Equal0~10_combout\ : std_logic;
SIGNAL \ALT_INV_Equal0~9_combout\ : std_logic;
SIGNAL \ALT_INV_Equal0~8_combout\ : std_logic;
SIGNAL \ALT_INV_Equal0~7_combout\ : std_logic;
SIGNAL \ALT_INV_Equal0~6_combout\ : std_logic;
SIGNAL \ALT_INV_Equal0~5_combout\ : std_logic;
SIGNAL \ALT_INV_Equal0~4_combout\ : std_logic;
SIGNAL \ALT_INV_Equal0~3_combout\ : std_logic;
SIGNAL \ALT_INV_Equal0~2_combout\ : std_logic;
SIGNAL \ALT_INV_Equal0~1_combout\ : std_logic;
SIGNAL \ALT_INV_Equal0~0_combout\ : std_logic;
SIGNAL \ALT_INV_Equal1~12_combout\ : std_logic;
SIGNAL \ALT_INV_Equal1~11_combout\ : std_logic;
SIGNAL ALT_INV_dc : std_logic_vector(31 DOWNTO 0);
SIGNAL \ALT_INV_Equal1~10_combout\ : std_logic;
SIGNAL \ALT_INV_Equal1~9_combout\ : std_logic;
SIGNAL \ALT_INV_Equal1~8_combout\ : std_logic;
SIGNAL \ALT_INV_Equal1~7_combout\ : std_logic;
SIGNAL \ALT_INV_Equal1~6_combout\ : std_logic;
SIGNAL \ALT_INV_Equal1~5_combout\ : std_logic;
SIGNAL \ALT_INV_Equal1~4_combout\ : std_logic;
SIGNAL \ALT_INV_Equal1~3_combout\ : std_logic;
SIGNAL \ALT_INV_Equal1~2_combout\ : std_logic;
SIGNAL \ALT_INV_Equal1~1_combout\ : std_logic;
SIGNAL \ALT_INV_Equal1~0_combout\ : std_logic;
SIGNAL \ALT_INV_outpwm~1_combout\ : std_logic;
SIGNAL \ALT_INV_clk_dc~q\ : std_logic;
SIGNAL \ALT_INV_outpwm~0_combout\ : std_logic;
SIGNAL \ALT_INV_Equal2~5_combout\ : std_logic;
SIGNAL \ALT_INV_Equal2~4_combout\ : std_logic;
SIGNAL ALT_INV_polarity : std_logic_vector(31 DOWNTO 0);
SIGNAL \ALT_INV_Equal2~3_combout\ : std_logic;
SIGNAL \ALT_INV_Equal2~2_combout\ : std_logic;
SIGNAL \ALT_INV_Equal2~1_combout\ : std_logic;
SIGNAL \ALT_INV_Equal2~0_combout\ : std_logic;
SIGNAL \ALT_INV_clk_slow~q\ : std_logic;
SIGNAL ALT_INV_counter : std_logic_vector(31 DOWNTO 0);

BEGIN

ww_Clk <= Clk;
ww_nReset <= nReset;
ww_Address <= Address;
ww_ChipSelect <= ChipSelect;
ww_Write_en <= Write_en;
ww_WriteData <= IEEE.STD_LOGIC_ARITH.CONV_STD_LOGIC_VECTOR(WriteData, 32);
outpwm <= ww_outpwm;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;
\ALT_INV_counter[21]~DUPLICATE_q\ <= NOT \counter[21]~DUPLICATE_q\;
\ALT_INV_counter[19]~DUPLICATE_q\ <= NOT \counter[19]~DUPLICATE_q\;
\ALT_INV_counter[18]~DUPLICATE_q\ <= NOT \counter[18]~DUPLICATE_q\;
\ALT_INV_counter[26]~DUPLICATE_q\ <= NOT \counter[26]~DUPLICATE_q\;
\ALT_INV_counter[25]~DUPLICATE_q\ <= NOT \counter[25]~DUPLICATE_q\;
\ALT_INV_counter[24]~DUPLICATE_q\ <= NOT \counter[24]~DUPLICATE_q\;
\ALT_INV_counter[28]~DUPLICATE_q\ <= NOT \counter[28]~DUPLICATE_q\;
\ALT_INV_counter[27]~DUPLICATE_q\ <= NOT \counter[27]~DUPLICATE_q\;
\ALT_INV_counter[5]~DUPLICATE_q\ <= NOT \counter[5]~DUPLICATE_q\;
\ALT_INV_counter[4]~DUPLICATE_q\ <= NOT \counter[4]~DUPLICATE_q\;
\ALT_INV_counter[3]~DUPLICATE_q\ <= NOT \counter[3]~DUPLICATE_q\;
\ALT_INV_counter[1]~DUPLICATE_q\ <= NOT \counter[1]~DUPLICATE_q\;
\ALT_INV_counter[0]~DUPLICATE_q\ <= NOT \counter[0]~DUPLICATE_q\;
\ALT_INV_counter[11]~DUPLICATE_q\ <= NOT \counter[11]~DUPLICATE_q\;
\ALT_INV_counter[9]~DUPLICATE_q\ <= NOT \counter[9]~DUPLICATE_q\;
\ALT_INV_counter[12]~DUPLICATE_q\ <= NOT \counter[12]~DUPLICATE_q\;
\ALT_INV_counter[16]~DUPLICATE_q\ <= NOT \counter[16]~DUPLICATE_q\;
\ALT_INV_counter[15]~DUPLICATE_q\ <= NOT \counter[15]~DUPLICATE_q\;
\ALT_INV_WriteData[21]~input_o\ <= NOT \WriteData[21]~input_o\;
\ALT_INV_WriteData[30]~input_o\ <= NOT \WriteData[30]~input_o\;
\ALT_INV_WriteData[15]~input_o\ <= NOT \WriteData[15]~input_o\;
\ALT_INV_WriteData[26]~input_o\ <= NOT \WriteData[26]~input_o\;
\ALT_INV_WriteData[8]~input_o\ <= NOT \WriteData[8]~input_o\;
\ALT_INV_WriteData[9]~input_o\ <= NOT \WriteData[9]~input_o\;
\ALT_INV_WriteData[10]~input_o\ <= NOT \WriteData[10]~input_o\;
\ALT_INV_WriteData[12]~input_o\ <= NOT \WriteData[12]~input_o\;
\ALT_INV_WriteData[2]~input_o\ <= NOT \WriteData[2]~input_o\;
\ALT_INV_WriteData[3]~input_o\ <= NOT \WriteData[3]~input_o\;
\ALT_INV_WriteData[4]~input_o\ <= NOT \WriteData[4]~input_o\;
\ALT_INV_WriteData[5]~input_o\ <= NOT \WriteData[5]~input_o\;
\ALT_INV_WriteData[6]~input_o\ <= NOT \WriteData[6]~input_o\;
\ALT_INV_WriteData[7]~input_o\ <= NOT \WriteData[7]~input_o\;
\ALT_INV_WriteData[0]~input_o\ <= NOT \WriteData[0]~input_o\;
\ALT_INV_Write_en~input_o\ <= NOT \Write_en~input_o\;
\ALT_INV_ChipSelect~input_o\ <= NOT \ChipSelect~input_o\;
\ALT_INV_Address[0]~input_o\ <= NOT \Address[0]~input_o\;
\ALT_INV_Address[1]~input_o\ <= NOT \Address[1]~input_o\;
\ALT_INV_WriteData[1]~input_o\ <= NOT \WriteData[1]~input_o\;
\ALT_INV_nReset~input_o\ <= NOT \nReset~input_o\;
\ALT_INV_outpwm$latch~combout\ <= NOT \outpwm$latch~combout\;
\ALT_INV_Equal0~12_combout\ <= NOT \Equal0~12_combout\;
\ALT_INV_Equal0~11_combout\ <= NOT \Equal0~11_combout\;
ALT_INV_period(23) <= NOT period(23);
ALT_INV_period(22) <= NOT period(22);
ALT_INV_period(21) <= NOT period(21);
\ALT_INV_Equal0~10_combout\ <= NOT \Equal0~10_combout\;
ALT_INV_period(20) <= NOT period(20);
ALT_INV_period(19) <= NOT period(19);
ALT_INV_period(18) <= NOT period(18);
\ALT_INV_Equal0~9_combout\ <= NOT \Equal0~9_combout\;
ALT_INV_period(26) <= NOT period(26);
ALT_INV_period(25) <= NOT period(25);
ALT_INV_period(24) <= NOT period(24);
\ALT_INV_Equal0~8_combout\ <= NOT \Equal0~8_combout\;
ALT_INV_period(29) <= NOT period(29);
ALT_INV_period(28) <= NOT period(28);
ALT_INV_period(27) <= NOT period(27);
\ALT_INV_Equal0~7_combout\ <= NOT \Equal0~7_combout\;
ALT_INV_period(31) <= NOT period(31);
ALT_INV_period(30) <= NOT period(30);
\ALT_INV_Equal0~6_combout\ <= NOT \Equal0~6_combout\;
\ALT_INV_Equal0~5_combout\ <= NOT \Equal0~5_combout\;
ALT_INV_period(5) <= NOT period(5);
ALT_INV_period(4) <= NOT period(4);
ALT_INV_period(3) <= NOT period(3);
\ALT_INV_Equal0~4_combout\ <= NOT \Equal0~4_combout\;
ALT_INV_period(2) <= NOT period(2);
ALT_INV_period(1) <= NOT period(1);
ALT_INV_period(0) <= NOT period(0);
\ALT_INV_Equal0~3_combout\ <= NOT \Equal0~3_combout\;
ALT_INV_period(8) <= NOT period(8);
ALT_INV_period(7) <= NOT period(7);
ALT_INV_period(6) <= NOT period(6);
\ALT_INV_Equal0~2_combout\ <= NOT \Equal0~2_combout\;
ALT_INV_period(11) <= NOT period(11);
ALT_INV_period(10) <= NOT period(10);
ALT_INV_period(9) <= NOT period(9);
\ALT_INV_Equal0~1_combout\ <= NOT \Equal0~1_combout\;
ALT_INV_period(14) <= NOT period(14);
ALT_INV_period(13) <= NOT period(13);
ALT_INV_period(12) <= NOT period(12);
\ALT_INV_Equal0~0_combout\ <= NOT \Equal0~0_combout\;
ALT_INV_period(17) <= NOT period(17);
ALT_INV_period(16) <= NOT period(16);
ALT_INV_period(15) <= NOT period(15);
\ALT_INV_Equal1~12_combout\ <= NOT \Equal1~12_combout\;
\ALT_INV_Equal1~11_combout\ <= NOT \Equal1~11_combout\;
ALT_INV_dc(23) <= NOT dc(23);
ALT_INV_dc(22) <= NOT dc(22);
ALT_INV_dc(21) <= NOT dc(21);
\ALT_INV_Equal1~10_combout\ <= NOT \Equal1~10_combout\;
ALT_INV_dc(20) <= NOT dc(20);
ALT_INV_dc(19) <= NOT dc(19);
ALT_INV_dc(18) <= NOT dc(18);
\ALT_INV_Equal1~9_combout\ <= NOT \Equal1~9_combout\;
ALT_INV_dc(26) <= NOT dc(26);
ALT_INV_dc(25) <= NOT dc(25);
ALT_INV_dc(24) <= NOT dc(24);
\ALT_INV_Equal1~8_combout\ <= NOT \Equal1~8_combout\;
ALT_INV_dc(29) <= NOT dc(29);
ALT_INV_dc(28) <= NOT dc(28);
ALT_INV_dc(27) <= NOT dc(27);
\ALT_INV_Equal1~7_combout\ <= NOT \Equal1~7_combout\;
ALT_INV_dc(31) <= NOT dc(31);
ALT_INV_dc(30) <= NOT dc(30);
\ALT_INV_Equal1~6_combout\ <= NOT \Equal1~6_combout\;
\ALT_INV_Equal1~5_combout\ <= NOT \Equal1~5_combout\;
ALT_INV_dc(5) <= NOT dc(5);
ALT_INV_dc(4) <= NOT dc(4);
ALT_INV_dc(3) <= NOT dc(3);
\ALT_INV_Equal1~4_combout\ <= NOT \Equal1~4_combout\;
ALT_INV_dc(2) <= NOT dc(2);
ALT_INV_dc(1) <= NOT dc(1);
ALT_INV_dc(0) <= NOT dc(0);
\ALT_INV_Equal1~3_combout\ <= NOT \Equal1~3_combout\;
ALT_INV_dc(8) <= NOT dc(8);
ALT_INV_dc(7) <= NOT dc(7);
ALT_INV_dc(6) <= NOT dc(6);
\ALT_INV_Equal1~2_combout\ <= NOT \Equal1~2_combout\;
ALT_INV_dc(11) <= NOT dc(11);
ALT_INV_dc(10) <= NOT dc(10);
ALT_INV_dc(9) <= NOT dc(9);
\ALT_INV_Equal1~1_combout\ <= NOT \Equal1~1_combout\;
ALT_INV_dc(14) <= NOT dc(14);
ALT_INV_dc(13) <= NOT dc(13);
ALT_INV_dc(12) <= NOT dc(12);
\ALT_INV_Equal1~0_combout\ <= NOT \Equal1~0_combout\;
ALT_INV_dc(17) <= NOT dc(17);
ALT_INV_dc(16) <= NOT dc(16);
ALT_INV_dc(15) <= NOT dc(15);
\ALT_INV_outpwm~1_combout\ <= NOT \outpwm~1_combout\;
\ALT_INV_clk_dc~q\ <= NOT \clk_dc~q\;
\ALT_INV_outpwm~0_combout\ <= NOT \outpwm~0_combout\;
\ALT_INV_Equal2~5_combout\ <= NOT \Equal2~5_combout\;
\ALT_INV_Equal2~4_combout\ <= NOT \Equal2~4_combout\;
ALT_INV_polarity(21) <= NOT polarity(21);
ALT_INV_polarity(22) <= NOT polarity(22);
ALT_INV_polarity(23) <= NOT polarity(23);
ALT_INV_polarity(24) <= NOT polarity(24);
ALT_INV_polarity(25) <= NOT polarity(25);
\ALT_INV_Equal2~3_combout\ <= NOT \Equal2~3_combout\;
ALT_INV_polarity(27) <= NOT polarity(27);
ALT_INV_polarity(28) <= NOT polarity(28);
ALT_INV_polarity(29) <= NOT polarity(29);
ALT_INV_polarity(30) <= NOT polarity(30);
ALT_INV_polarity(31) <= NOT polarity(31);
\ALT_INV_Equal2~2_combout\ <= NOT \Equal2~2_combout\;
ALT_INV_polarity(15) <= NOT polarity(15);
ALT_INV_polarity(16) <= NOT polarity(16);
ALT_INV_polarity(17) <= NOT polarity(17);
ALT_INV_polarity(18) <= NOT polarity(18);
ALT_INV_polarity(19) <= NOT polarity(19);
ALT_INV_polarity(14) <= NOT polarity(14);
ALT_INV_polarity(20) <= NOT polarity(20);
ALT_INV_polarity(26) <= NOT polarity(26);
\ALT_INV_Equal2~1_combout\ <= NOT \Equal2~1_combout\;
ALT_INV_polarity(8) <= NOT polarity(8);
ALT_INV_polarity(9) <= NOT polarity(9);
ALT_INV_polarity(10) <= NOT polarity(10);
ALT_INV_polarity(11) <= NOT polarity(11);
ALT_INV_polarity(12) <= NOT polarity(12);
ALT_INV_polarity(13) <= NOT polarity(13);
\ALT_INV_Equal2~0_combout\ <= NOT \Equal2~0_combout\;
ALT_INV_polarity(2) <= NOT polarity(2);
ALT_INV_polarity(3) <= NOT polarity(3);
ALT_INV_polarity(4) <= NOT polarity(4);
ALT_INV_polarity(5) <= NOT polarity(5);
ALT_INV_polarity(6) <= NOT polarity(6);
ALT_INV_polarity(7) <= NOT polarity(7);
ALT_INV_polarity(0) <= NOT polarity(0);
ALT_INV_polarity(1) <= NOT polarity(1);
\ALT_INV_clk_slow~q\ <= NOT \clk_slow~q\;
ALT_INV_counter(23) <= NOT counter(23);
ALT_INV_counter(22) <= NOT counter(22);
ALT_INV_counter(21) <= NOT counter(21);
ALT_INV_counter(20) <= NOT counter(20);
ALT_INV_counter(19) <= NOT counter(19);
ALT_INV_counter(18) <= NOT counter(18);
ALT_INV_counter(26) <= NOT counter(26);
ALT_INV_counter(25) <= NOT counter(25);
ALT_INV_counter(24) <= NOT counter(24);
ALT_INV_counter(29) <= NOT counter(29);
ALT_INV_counter(28) <= NOT counter(28);
ALT_INV_counter(27) <= NOT counter(27);
ALT_INV_counter(31) <= NOT counter(31);
ALT_INV_counter(30) <= NOT counter(30);
ALT_INV_counter(5) <= NOT counter(5);
ALT_INV_counter(4) <= NOT counter(4);
ALT_INV_counter(3) <= NOT counter(3);
ALT_INV_counter(2) <= NOT counter(2);
ALT_INV_counter(1) <= NOT counter(1);
ALT_INV_counter(0) <= NOT counter(0);
ALT_INV_counter(8) <= NOT counter(8);
ALT_INV_counter(7) <= NOT counter(7);
ALT_INV_counter(6) <= NOT counter(6);
ALT_INV_counter(11) <= NOT counter(11);
ALT_INV_counter(10) <= NOT counter(10);
ALT_INV_counter(9) <= NOT counter(9);
ALT_INV_counter(14) <= NOT counter(14);
ALT_INV_counter(13) <= NOT counter(13);
ALT_INV_counter(12) <= NOT counter(12);
ALT_INV_counter(17) <= NOT counter(17);
ALT_INV_counter(16) <= NOT counter(16);
ALT_INV_counter(15) <= NOT counter(15);

-- Location: IOOBUF_X89_Y4_N96
\outpwm~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \outpwm$latch~combout\,
	devoe => ww_devoe,
	o => ww_outpwm);

-- Location: IOIBUF_X89_Y6_N38
\nReset~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_nReset,
	o => \nReset~input_o\);

-- Location: IOIBUF_X89_Y35_N61
\Clk~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Clk,
	o => \Clk~input_o\);

-- Location: CLKCTRL_G10
\Clk~inputCLKENA0\ : cyclonev_clkena
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	disable_mode => "low",
	ena_register_mode => "always enabled",
	ena_register_power_up => "high",
	test_syn => "high")
-- pragma translate_on
PORT MAP (
	inclk => \Clk~input_o\,
	outclk => \Clk~inputCLKENA0_outclk\);

-- Location: IOIBUF_X68_Y0_N18
\WriteData[0]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_WriteData(0),
	o => \WriteData[0]~input_o\);

-- Location: LABCELL_X79_Y6_N18
\polarity[0]~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \polarity[0]~1_combout\ = !\WriteData[0]~input_o\

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111000011110000111100001111000011110000111100001111000011110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_WriteData[0]~input_o\,
	combout => \polarity[0]~1_combout\);

-- Location: IOIBUF_X66_Y0_N41
\Address[1]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Address(1),
	o => \Address[1]~input_o\);

-- Location: IOIBUF_X89_Y9_N4
\Write_en~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Write_en,
	o => \Write_en~input_o\);

-- Location: IOIBUF_X66_Y0_N92
\Address[0]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Address(0),
	o => \Address[0]~input_o\);

-- Location: IOIBUF_X89_Y9_N38
\ChipSelect~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_ChipSelect,
	o => \ChipSelect~input_o\);

-- Location: LABCELL_X77_Y7_N24
\polarity[31]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \polarity[31]~0_combout\ = ( \Address[0]~input_o\ & ( \ChipSelect~input_o\ & ( (\Address[1]~input_o\ & \Write_en~input_o\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000000110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_Address[1]~input_o\,
	datad => \ALT_INV_Write_en~input_o\,
	datae => \ALT_INV_Address[0]~input_o\,
	dataf => \ALT_INV_ChipSelect~input_o\,
	combout => \polarity[31]~0_combout\);

-- Location: FF_X79_Y6_N37
\polarity[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk~inputCLKENA0_outclk\,
	asdata => \polarity[0]~1_combout\,
	clrn => \nReset~input_o\,
	sload => VCC,
	ena => \polarity[31]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => polarity(0));

-- Location: IOIBUF_X70_Y0_N35
\WriteData[1]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_WriteData(1),
	o => \WriteData[1]~input_o\);

-- Location: LABCELL_X81_Y6_N15
\polarity[1]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \polarity[1]~feeder_combout\ = ( \WriteData[1]~input_o\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \ALT_INV_WriteData[1]~input_o\,
	combout => \polarity[1]~feeder_combout\);

-- Location: FF_X81_Y6_N16
\polarity[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk~inputCLKENA0_outclk\,
	d => \polarity[1]~feeder_combout\,
	clrn => \nReset~input_o\,
	ena => \polarity[31]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => polarity(1));

-- Location: IOIBUF_X89_Y8_N38
\WriteData[10]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_WriteData(10),
	o => \WriteData[10]~input_o\);

-- Location: FF_X80_Y6_N50
\polarity[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk~inputCLKENA0_outclk\,
	asdata => \WriteData[10]~input_o\,
	clrn => \nReset~input_o\,
	sload => VCC,
	ena => \polarity[31]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => polarity(10));

-- Location: IOIBUF_X70_Y0_N52
\WriteData[11]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_WriteData(11),
	o => \WriteData[11]~input_o\);

-- Location: FF_X80_Y6_N41
\polarity[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk~inputCLKENA0_outclk\,
	asdata => \WriteData[11]~input_o\,
	clrn => \nReset~input_o\,
	sload => VCC,
	ena => \polarity[31]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => polarity(11));

-- Location: IOIBUF_X64_Y0_N1
\WriteData[8]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_WriteData(8),
	o => \WriteData[8]~input_o\);

-- Location: LABCELL_X80_Y6_N42
\polarity[8]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \polarity[8]~feeder_combout\ = ( \WriteData[8]~input_o\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \ALT_INV_WriteData[8]~input_o\,
	combout => \polarity[8]~feeder_combout\);

-- Location: FF_X80_Y6_N44
\polarity[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk~inputCLKENA0_outclk\,
	d => \polarity[8]~feeder_combout\,
	clrn => \nReset~input_o\,
	ena => \polarity[31]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => polarity(8));

-- Location: IOIBUF_X72_Y0_N52
\WriteData[13]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_WriteData(13),
	o => \WriteData[13]~input_o\);

-- Location: FF_X80_Y6_N35
\polarity[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk~inputCLKENA0_outclk\,
	asdata => \WriteData[13]~input_o\,
	clrn => \nReset~input_o\,
	sload => VCC,
	ena => \polarity[31]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => polarity(13));

-- Location: IOIBUF_X72_Y0_N1
\WriteData[9]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_WriteData(9),
	o => \WriteData[9]~input_o\);

-- Location: FF_X80_Y6_N16
\polarity[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk~inputCLKENA0_outclk\,
	asdata => \WriteData[9]~input_o\,
	clrn => \nReset~input_o\,
	sload => VCC,
	ena => \polarity[31]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => polarity(9));

-- Location: IOIBUF_X89_Y8_N4
\WriteData[12]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_WriteData(12),
	o => \WriteData[12]~input_o\);

-- Location: LABCELL_X81_Y6_N45
\polarity[12]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \polarity[12]~feeder_combout\ = ( \WriteData[12]~input_o\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \ALT_INV_WriteData[12]~input_o\,
	combout => \polarity[12]~feeder_combout\);

-- Location: FF_X81_Y6_N47
\polarity[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk~inputCLKENA0_outclk\,
	d => \polarity[12]~feeder_combout\,
	clrn => \nReset~input_o\,
	ena => \polarity[31]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => polarity(12));

-- Location: LABCELL_X80_Y6_N51
\Equal2~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \Equal2~1_combout\ = ( !polarity(9) & ( !polarity(12) & ( (!polarity(10) & (!polarity(11) & (!polarity(8) & !polarity(13)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000000000000000000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_polarity(10),
	datab => ALT_INV_polarity(11),
	datac => ALT_INV_polarity(8),
	datad => ALT_INV_polarity(13),
	datae => ALT_INV_polarity(9),
	dataf => ALT_INV_polarity(12),
	combout => \Equal2~1_combout\);

-- Location: IOIBUF_X68_Y0_N52
\WriteData[7]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_WriteData(7),
	o => \WriteData[7]~input_o\);

-- Location: FF_X79_Y6_N2
\polarity[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk~inputCLKENA0_outclk\,
	asdata => \WriteData[7]~input_o\,
	clrn => \nReset~input_o\,
	sload => VCC,
	ena => \polarity[31]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => polarity(7));

-- Location: IOIBUF_X68_Y0_N35
\WriteData[2]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_WriteData(2),
	o => \WriteData[2]~input_o\);

-- Location: FF_X79_Y6_N44
\polarity[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk~inputCLKENA0_outclk\,
	asdata => \WriteData[2]~input_o\,
	clrn => \nReset~input_o\,
	sload => VCC,
	ena => \polarity[31]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => polarity(2));

-- Location: IOIBUF_X78_Y81_N35
\WriteData[4]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_WriteData(4),
	o => \WriteData[4]~input_o\);

-- Location: FF_X79_Y6_N41
\polarity[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk~inputCLKENA0_outclk\,
	asdata => \WriteData[4]~input_o\,
	clrn => \nReset~input_o\,
	sload => VCC,
	ena => \polarity[31]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => polarity(4));

-- Location: IOIBUF_X89_Y37_N38
\WriteData[5]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_WriteData(5),
	o => \WriteData[5]~input_o\);

-- Location: LABCELL_X79_Y6_N51
\polarity[5]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \polarity[5]~feeder_combout\ = ( \WriteData[5]~input_o\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \ALT_INV_WriteData[5]~input_o\,
	combout => \polarity[5]~feeder_combout\);

-- Location: FF_X79_Y6_N53
\polarity[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk~inputCLKENA0_outclk\,
	d => \polarity[5]~feeder_combout\,
	clrn => \nReset~input_o\,
	ena => \polarity[31]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => polarity(5));

-- Location: IOIBUF_X66_Y0_N75
\WriteData[6]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_WriteData(6),
	o => \WriteData[6]~input_o\);

-- Location: FF_X79_Y6_N47
\polarity[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk~inputCLKENA0_outclk\,
	asdata => \WriteData[6]~input_o\,
	clrn => \nReset~input_o\,
	sload => VCC,
	ena => \polarity[31]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => polarity(6));

-- Location: IOIBUF_X66_Y0_N58
\WriteData[3]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_WriteData(3),
	o => \WriteData[3]~input_o\);

-- Location: LABCELL_X79_Y6_N48
\polarity[3]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \polarity[3]~feeder_combout\ = ( \WriteData[3]~input_o\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \ALT_INV_WriteData[3]~input_o\,
	combout => \polarity[3]~feeder_combout\);

-- Location: FF_X79_Y6_N50
\polarity[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk~inputCLKENA0_outclk\,
	d => \polarity[3]~feeder_combout\,
	clrn => \nReset~input_o\,
	ena => \polarity[31]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => polarity(3));

-- Location: LABCELL_X79_Y6_N3
\Equal2~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Equal2~0_combout\ = ( !polarity(6) & ( !polarity(3) & ( (!polarity(7) & (!polarity(2) & (!polarity(4) & !polarity(5)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000000000000000000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_polarity(7),
	datab => ALT_INV_polarity(2),
	datac => ALT_INV_polarity(4),
	datad => ALT_INV_polarity(5),
	datae => ALT_INV_polarity(6),
	dataf => ALT_INV_polarity(3),
	combout => \Equal2~0_combout\);

-- Location: LABCELL_X77_Y7_N42
\period[31]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \period[31]~0_combout\ = ( !\Address[0]~input_o\ & ( \ChipSelect~input_o\ & ( (!\Address[1]~input_o\ & \Write_en~input_o\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000110011000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_Address[1]~input_o\,
	datad => \ALT_INV_Write_en~input_o\,
	datae => \ALT_INV_Address[0]~input_o\,
	dataf => \ALT_INV_ChipSelect~input_o\,
	combout => \period[31]~0_combout\);

-- Location: FF_X78_Y6_N56
\period[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk~inputCLKENA0_outclk\,
	asdata => \WriteData[1]~input_o\,
	clrn => \nReset~input_o\,
	sload => VCC,
	ena => \period[31]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => period(1));

-- Location: FF_X79_Y6_N26
\period[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk~inputCLKENA0_outclk\,
	asdata => \WriteData[2]~input_o\,
	clrn => \nReset~input_o\,
	sload => VCC,
	ena => \period[31]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => period(2));

-- Location: MLABCELL_X78_Y7_N0
\Add0~49\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~49_sumout\ = SUM(( \counter[0]~DUPLICATE_q\ ) + ( VCC ) + ( !VCC ))
-- \Add0~50\ = CARRY(( \counter[0]~DUPLICATE_q\ ) + ( VCC ) + ( !VCC ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \ALT_INV_counter[0]~DUPLICATE_q\,
	cin => GND,
	sumout => \Add0~49_sumout\,
	cout => \Add0~50\);

-- Location: IOIBUF_X89_Y6_N55
\WriteData[31]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_WriteData(31),
	o => \WriteData[31]~input_o\);

-- Location: FF_X77_Y6_N44
\period[31]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk~inputCLKENA0_outclk\,
	asdata => \WriteData[31]~input_o\,
	clrn => \nReset~input_o\,
	sload => VCC,
	ena => \period[31]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => period(31));

-- Location: MLABCELL_X78_Y7_N3
\Add0~53\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~53_sumout\ = SUM(( \counter[1]~DUPLICATE_q\ ) + ( GND ) + ( \Add0~50\ ))
-- \Add0~54\ = CARRY(( \counter[1]~DUPLICATE_q\ ) + ( GND ) + ( \Add0~50\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \ALT_INV_counter[1]~DUPLICATE_q\,
	cin => \Add0~50\,
	sumout => \Add0~53_sumout\,
	cout => \Add0~54\);

-- Location: MLABCELL_X78_Y7_N6
\Add0~57\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~57_sumout\ = SUM(( counter(2) ) + ( GND ) + ( \Add0~54\ ))
-- \Add0~58\ = CARRY(( counter(2) ) + ( GND ) + ( \Add0~54\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => ALT_INV_counter(2),
	cin => \Add0~54\,
	sumout => \Add0~57_sumout\,
	cout => \Add0~58\);

-- Location: FF_X78_Y7_N7
\counter[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk~inputCLKENA0_outclk\,
	d => \Add0~57_sumout\,
	sclr => \Equal0~13_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => counter(2));

-- Location: MLABCELL_X78_Y7_N9
\Add0~61\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~61_sumout\ = SUM(( \counter[3]~DUPLICATE_q\ ) + ( GND ) + ( \Add0~58\ ))
-- \Add0~62\ = CARRY(( \counter[3]~DUPLICATE_q\ ) + ( GND ) + ( \Add0~58\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_counter[3]~DUPLICATE_q\,
	cin => \Add0~58\,
	sumout => \Add0~61_sumout\,
	cout => \Add0~62\);

-- Location: FF_X78_Y7_N11
\counter[3]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk~inputCLKENA0_outclk\,
	d => \Add0~61_sumout\,
	sclr => \Equal0~13_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \counter[3]~DUPLICATE_q\);

-- Location: MLABCELL_X78_Y7_N12
\Add0~65\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~65_sumout\ = SUM(( \counter[4]~DUPLICATE_q\ ) + ( GND ) + ( \Add0~62\ ))
-- \Add0~66\ = CARRY(( \counter[4]~DUPLICATE_q\ ) + ( GND ) + ( \Add0~62\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_counter[4]~DUPLICATE_q\,
	cin => \Add0~62\,
	sumout => \Add0~65_sumout\,
	cout => \Add0~66\);

-- Location: FF_X78_Y7_N14
\counter[4]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk~inputCLKENA0_outclk\,
	d => \Add0~65_sumout\,
	sclr => \Equal0~13_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \counter[4]~DUPLICATE_q\);

-- Location: MLABCELL_X78_Y7_N15
\Add0~69\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~69_sumout\ = SUM(( \counter[5]~DUPLICATE_q\ ) + ( GND ) + ( \Add0~66\ ))
-- \Add0~70\ = CARRY(( \counter[5]~DUPLICATE_q\ ) + ( GND ) + ( \Add0~66\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_counter[5]~DUPLICATE_q\,
	cin => \Add0~66\,
	sumout => \Add0~69_sumout\,
	cout => \Add0~70\);

-- Location: FF_X78_Y7_N17
\counter[5]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk~inputCLKENA0_outclk\,
	d => \Add0~69_sumout\,
	sclr => \Equal0~13_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \counter[5]~DUPLICATE_q\);

-- Location: MLABCELL_X78_Y7_N18
\Add0~37\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~37_sumout\ = SUM(( counter(6) ) + ( GND ) + ( \Add0~70\ ))
-- \Add0~38\ = CARRY(( counter(6) ) + ( GND ) + ( \Add0~70\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => ALT_INV_counter(6),
	cin => \Add0~70\,
	sumout => \Add0~37_sumout\,
	cout => \Add0~38\);

-- Location: FF_X78_Y7_N20
\counter[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk~inputCLKENA0_outclk\,
	d => \Add0~37_sumout\,
	sclr => \Equal0~13_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => counter(6));

-- Location: MLABCELL_X78_Y7_N21
\Add0~41\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~41_sumout\ = SUM(( counter(7) ) + ( GND ) + ( \Add0~38\ ))
-- \Add0~42\ = CARRY(( counter(7) ) + ( GND ) + ( \Add0~38\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => ALT_INV_counter(7),
	cin => \Add0~38\,
	sumout => \Add0~41_sumout\,
	cout => \Add0~42\);

-- Location: FF_X78_Y7_N23
\counter[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk~inputCLKENA0_outclk\,
	d => \Add0~41_sumout\,
	sclr => \Equal0~13_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => counter(7));

-- Location: MLABCELL_X78_Y7_N24
\Add0~45\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~45_sumout\ = SUM(( counter(8) ) + ( GND ) + ( \Add0~42\ ))
-- \Add0~46\ = CARRY(( counter(8) ) + ( GND ) + ( \Add0~42\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => ALT_INV_counter(8),
	cin => \Add0~42\,
	sumout => \Add0~45_sumout\,
	cout => \Add0~46\);

-- Location: FF_X78_Y7_N26
\counter[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk~inputCLKENA0_outclk\,
	d => \Add0~45_sumout\,
	sclr => \Equal0~13_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => counter(8));

-- Location: MLABCELL_X78_Y7_N27
\Add0~25\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~25_sumout\ = SUM(( \counter[9]~DUPLICATE_q\ ) + ( GND ) + ( \Add0~46\ ))
-- \Add0~26\ = CARRY(( \counter[9]~DUPLICATE_q\ ) + ( GND ) + ( \Add0~46\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \ALT_INV_counter[9]~DUPLICATE_q\,
	cin => \Add0~46\,
	sumout => \Add0~25_sumout\,
	cout => \Add0~26\);

-- Location: FF_X78_Y7_N29
\counter[9]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk~inputCLKENA0_outclk\,
	d => \Add0~25_sumout\,
	sclr => \Equal0~13_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \counter[9]~DUPLICATE_q\);

-- Location: MLABCELL_X78_Y7_N30
\Add0~29\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~29_sumout\ = SUM(( counter(10) ) + ( GND ) + ( \Add0~26\ ))
-- \Add0~30\ = CARRY(( counter(10) ) + ( GND ) + ( \Add0~26\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => ALT_INV_counter(10),
	cin => \Add0~26\,
	sumout => \Add0~29_sumout\,
	cout => \Add0~30\);

-- Location: FF_X78_Y7_N31
\counter[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk~inputCLKENA0_outclk\,
	d => \Add0~29_sumout\,
	sclr => \Equal0~13_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => counter(10));

-- Location: MLABCELL_X78_Y7_N33
\Add0~33\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~33_sumout\ = SUM(( \counter[11]~DUPLICATE_q\ ) + ( GND ) + ( \Add0~30\ ))
-- \Add0~34\ = CARRY(( \counter[11]~DUPLICATE_q\ ) + ( GND ) + ( \Add0~30\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_counter[11]~DUPLICATE_q\,
	cin => \Add0~30\,
	sumout => \Add0~33_sumout\,
	cout => \Add0~34\);

-- Location: FF_X78_Y7_N35
\counter[11]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk~inputCLKENA0_outclk\,
	d => \Add0~33_sumout\,
	sclr => \Equal0~13_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \counter[11]~DUPLICATE_q\);

-- Location: MLABCELL_X78_Y7_N36
\Add0~13\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~13_sumout\ = SUM(( \counter[12]~DUPLICATE_q\ ) + ( GND ) + ( \Add0~34\ ))
-- \Add0~14\ = CARRY(( \counter[12]~DUPLICATE_q\ ) + ( GND ) + ( \Add0~34\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \ALT_INV_counter[12]~DUPLICATE_q\,
	cin => \Add0~34\,
	sumout => \Add0~13_sumout\,
	cout => \Add0~14\);

-- Location: FF_X78_Y7_N38
\counter[12]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk~inputCLKENA0_outclk\,
	d => \Add0~13_sumout\,
	sclr => \Equal0~13_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \counter[12]~DUPLICATE_q\);

-- Location: MLABCELL_X78_Y7_N39
\Add0~17\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~17_sumout\ = SUM(( counter(13) ) + ( GND ) + ( \Add0~14\ ))
-- \Add0~18\ = CARRY(( counter(13) ) + ( GND ) + ( \Add0~14\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => ALT_INV_counter(13),
	cin => \Add0~14\,
	sumout => \Add0~17_sumout\,
	cout => \Add0~18\);

-- Location: FF_X78_Y7_N40
\counter[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk~inputCLKENA0_outclk\,
	d => \Add0~17_sumout\,
	sclr => \Equal0~13_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => counter(13));

-- Location: MLABCELL_X78_Y7_N42
\Add0~21\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~21_sumout\ = SUM(( counter(14) ) + ( GND ) + ( \Add0~18\ ))
-- \Add0~22\ = CARRY(( counter(14) ) + ( GND ) + ( \Add0~18\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => ALT_INV_counter(14),
	cin => \Add0~18\,
	sumout => \Add0~21_sumout\,
	cout => \Add0~22\);

-- Location: FF_X79_Y6_N23
\counter[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk~inputCLKENA0_outclk\,
	asdata => \Add0~21_sumout\,
	sclr => \Equal0~13_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => counter(14));

-- Location: MLABCELL_X78_Y7_N45
\Add0~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~1_sumout\ = SUM(( \counter[15]~DUPLICATE_q\ ) + ( GND ) + ( \Add0~22\ ))
-- \Add0~2\ = CARRY(( \counter[15]~DUPLICATE_q\ ) + ( GND ) + ( \Add0~22\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \ALT_INV_counter[15]~DUPLICATE_q\,
	cin => \Add0~22\,
	sumout => \Add0~1_sumout\,
	cout => \Add0~2\);

-- Location: FF_X78_Y7_N47
\counter[15]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk~inputCLKENA0_outclk\,
	d => \Add0~1_sumout\,
	sclr => \Equal0~13_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \counter[15]~DUPLICATE_q\);

-- Location: MLABCELL_X78_Y7_N48
\Add0~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~5_sumout\ = SUM(( \counter[16]~DUPLICATE_q\ ) + ( GND ) + ( \Add0~2\ ))
-- \Add0~6\ = CARRY(( \counter[16]~DUPLICATE_q\ ) + ( GND ) + ( \Add0~2\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_counter[16]~DUPLICATE_q\,
	cin => \Add0~2\,
	sumout => \Add0~5_sumout\,
	cout => \Add0~6\);

-- Location: FF_X78_Y7_N50
\counter[16]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk~inputCLKENA0_outclk\,
	d => \Add0~5_sumout\,
	sclr => \Equal0~13_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \counter[16]~DUPLICATE_q\);

-- Location: MLABCELL_X78_Y7_N51
\Add0~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~9_sumout\ = SUM(( counter(17) ) + ( GND ) + ( \Add0~6\ ))
-- \Add0~10\ = CARRY(( counter(17) ) + ( GND ) + ( \Add0~6\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => ALT_INV_counter(17),
	cin => \Add0~6\,
	sumout => \Add0~9_sumout\,
	cout => \Add0~10\);

-- Location: FF_X78_Y7_N52
\counter[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk~inputCLKENA0_outclk\,
	d => \Add0~9_sumout\,
	sclr => \Equal0~13_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => counter(17));

-- Location: MLABCELL_X78_Y7_N54
\Add0~105\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~105_sumout\ = SUM(( \counter[18]~DUPLICATE_q\ ) + ( GND ) + ( \Add0~10\ ))
-- \Add0~106\ = CARRY(( \counter[18]~DUPLICATE_q\ ) + ( GND ) + ( \Add0~10\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \ALT_INV_counter[18]~DUPLICATE_q\,
	cin => \Add0~10\,
	sumout => \Add0~105_sumout\,
	cout => \Add0~106\);

-- Location: FF_X78_Y7_N56
\counter[18]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk~inputCLKENA0_outclk\,
	d => \Add0~105_sumout\,
	sclr => \Equal0~13_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \counter[18]~DUPLICATE_q\);

-- Location: MLABCELL_X78_Y7_N57
\Add0~109\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~109_sumout\ = SUM(( \counter[19]~DUPLICATE_q\ ) + ( GND ) + ( \Add0~106\ ))
-- \Add0~110\ = CARRY(( \counter[19]~DUPLICATE_q\ ) + ( GND ) + ( \Add0~106\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \ALT_INV_counter[19]~DUPLICATE_q\,
	cin => \Add0~106\,
	sumout => \Add0~109_sumout\,
	cout => \Add0~110\);

-- Location: FF_X78_Y7_N59
\counter[19]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk~inputCLKENA0_outclk\,
	d => \Add0~109_sumout\,
	sclr => \Equal0~13_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \counter[19]~DUPLICATE_q\);

-- Location: MLABCELL_X78_Y6_N0
\Add0~113\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~113_sumout\ = SUM(( counter(20) ) + ( GND ) + ( \Add0~110\ ))
-- \Add0~114\ = CARRY(( counter(20) ) + ( GND ) + ( \Add0~110\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => ALT_INV_counter(20),
	cin => \Add0~110\,
	sumout => \Add0~113_sumout\,
	cout => \Add0~114\);

-- Location: FF_X78_Y6_N2
\counter[20]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk~inputCLKENA0_outclk\,
	d => \Add0~113_sumout\,
	sclr => \Equal0~13_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => counter(20));

-- Location: MLABCELL_X78_Y6_N3
\Add0~117\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~117_sumout\ = SUM(( \counter[21]~DUPLICATE_q\ ) + ( GND ) + ( \Add0~114\ ))
-- \Add0~118\ = CARRY(( \counter[21]~DUPLICATE_q\ ) + ( GND ) + ( \Add0~114\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \ALT_INV_counter[21]~DUPLICATE_q\,
	cin => \Add0~114\,
	sumout => \Add0~117_sumout\,
	cout => \Add0~118\);

-- Location: FF_X78_Y6_N5
\counter[21]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk~inputCLKENA0_outclk\,
	d => \Add0~117_sumout\,
	sclr => \Equal0~13_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \counter[21]~DUPLICATE_q\);

-- Location: MLABCELL_X78_Y6_N6
\Add0~121\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~121_sumout\ = SUM(( counter(22) ) + ( GND ) + ( \Add0~118\ ))
-- \Add0~122\ = CARRY(( counter(22) ) + ( GND ) + ( \Add0~118\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => ALT_INV_counter(22),
	cin => \Add0~118\,
	sumout => \Add0~121_sumout\,
	cout => \Add0~122\);

-- Location: FF_X78_Y6_N8
\counter[22]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk~inputCLKENA0_outclk\,
	d => \Add0~121_sumout\,
	sclr => \Equal0~13_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => counter(22));

-- Location: MLABCELL_X78_Y6_N9
\Add0~125\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~125_sumout\ = SUM(( counter(23) ) + ( GND ) + ( \Add0~122\ ))
-- \Add0~126\ = CARRY(( counter(23) ) + ( GND ) + ( \Add0~122\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => ALT_INV_counter(23),
	cin => \Add0~122\,
	sumout => \Add0~125_sumout\,
	cout => \Add0~126\);

-- Location: FF_X78_Y6_N11
\counter[23]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk~inputCLKENA0_outclk\,
	d => \Add0~125_sumout\,
	sclr => \Equal0~13_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => counter(23));

-- Location: MLABCELL_X78_Y6_N12
\Add0~93\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~93_sumout\ = SUM(( counter(24) ) + ( GND ) + ( \Add0~126\ ))
-- \Add0~94\ = CARRY(( counter(24) ) + ( GND ) + ( \Add0~126\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => ALT_INV_counter(24),
	cin => \Add0~126\,
	sumout => \Add0~93_sumout\,
	cout => \Add0~94\);

-- Location: FF_X78_Y6_N14
\counter[24]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk~inputCLKENA0_outclk\,
	d => \Add0~93_sumout\,
	sclr => \Equal0~13_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => counter(24));

-- Location: MLABCELL_X78_Y6_N15
\Add0~97\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~97_sumout\ = SUM(( counter(25) ) + ( GND ) + ( \Add0~94\ ))
-- \Add0~98\ = CARRY(( counter(25) ) + ( GND ) + ( \Add0~94\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => ALT_INV_counter(25),
	cin => \Add0~94\,
	sumout => \Add0~97_sumout\,
	cout => \Add0~98\);

-- Location: FF_X78_Y6_N17
\counter[25]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk~inputCLKENA0_outclk\,
	d => \Add0~97_sumout\,
	sclr => \Equal0~13_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => counter(25));

-- Location: MLABCELL_X78_Y6_N18
\Add0~101\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~101_sumout\ = SUM(( counter(26) ) + ( GND ) + ( \Add0~98\ ))
-- \Add0~102\ = CARRY(( counter(26) ) + ( GND ) + ( \Add0~98\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => ALT_INV_counter(26),
	cin => \Add0~98\,
	sumout => \Add0~101_sumout\,
	cout => \Add0~102\);

-- Location: FF_X78_Y6_N20
\counter[26]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk~inputCLKENA0_outclk\,
	d => \Add0~101_sumout\,
	sclr => \Equal0~13_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => counter(26));

-- Location: MLABCELL_X78_Y6_N21
\Add0~81\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~81_sumout\ = SUM(( \counter[27]~DUPLICATE_q\ ) + ( GND ) + ( \Add0~102\ ))
-- \Add0~82\ = CARRY(( \counter[27]~DUPLICATE_q\ ) + ( GND ) + ( \Add0~102\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \ALT_INV_counter[27]~DUPLICATE_q\,
	cin => \Add0~102\,
	sumout => \Add0~81_sumout\,
	cout => \Add0~82\);

-- Location: FF_X78_Y6_N23
\counter[27]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk~inputCLKENA0_outclk\,
	d => \Add0~81_sumout\,
	sclr => \Equal0~13_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \counter[27]~DUPLICATE_q\);

-- Location: MLABCELL_X78_Y6_N24
\Add0~85\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~85_sumout\ = SUM(( \counter[28]~DUPLICATE_q\ ) + ( GND ) + ( \Add0~82\ ))
-- \Add0~86\ = CARRY(( \counter[28]~DUPLICATE_q\ ) + ( GND ) + ( \Add0~82\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_counter[28]~DUPLICATE_q\,
	cin => \Add0~82\,
	sumout => \Add0~85_sumout\,
	cout => \Add0~86\);

-- Location: FF_X78_Y6_N26
\counter[28]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk~inputCLKENA0_outclk\,
	d => \Add0~85_sumout\,
	sclr => \Equal0~13_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \counter[28]~DUPLICATE_q\);

-- Location: MLABCELL_X78_Y6_N27
\Add0~89\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~89_sumout\ = SUM(( counter(29) ) + ( GND ) + ( \Add0~86\ ))
-- \Add0~90\ = CARRY(( counter(29) ) + ( GND ) + ( \Add0~86\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => ALT_INV_counter(29),
	cin => \Add0~86\,
	sumout => \Add0~89_sumout\,
	cout => \Add0~90\);

-- Location: FF_X78_Y6_N29
\counter[29]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk~inputCLKENA0_outclk\,
	d => \Add0~89_sumout\,
	sclr => \Equal0~13_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => counter(29));

-- Location: MLABCELL_X78_Y6_N30
\Add0~73\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~73_sumout\ = SUM(( counter(30) ) + ( GND ) + ( \Add0~90\ ))
-- \Add0~74\ = CARRY(( counter(30) ) + ( GND ) + ( \Add0~90\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => ALT_INV_counter(30),
	cin => \Add0~90\,
	sumout => \Add0~73_sumout\,
	cout => \Add0~74\);

-- Location: FF_X78_Y6_N32
\counter[30]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk~inputCLKENA0_outclk\,
	d => \Add0~73_sumout\,
	sclr => \Equal0~13_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => counter(30));

-- Location: IOIBUF_X89_Y6_N4
\WriteData[30]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_WriteData(30),
	o => \WriteData[30]~input_o\);

-- Location: FF_X77_Y6_N29
\period[30]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk~inputCLKENA0_outclk\,
	asdata => \WriteData[30]~input_o\,
	clrn => \nReset~input_o\,
	sload => VCC,
	ena => \period[31]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => period(30));

-- Location: MLABCELL_X78_Y6_N33
\Add0~77\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~77_sumout\ = SUM(( counter(31) ) + ( GND ) + ( \Add0~74\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_counter(31),
	cin => \Add0~74\,
	sumout => \Add0~77_sumout\);

-- Location: FF_X78_Y6_N35
\counter[31]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk~inputCLKENA0_outclk\,
	d => \Add0~77_sumout\,
	sclr => \Equal0~13_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => counter(31));

-- Location: LABCELL_X77_Y6_N36
\Equal0~7\ : cyclonev_lcell_comb
-- Equation(s):
-- \Equal0~7_combout\ = ( counter(31) & ( (period(31) & (!counter(30) $ (period(30)))) ) ) # ( !counter(31) & ( (!period(31) & (!counter(30) $ (period(30)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1100000000001100110000000000110000110000000000110011000000000011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => ALT_INV_period(31),
	datac => ALT_INV_counter(30),
	datad => ALT_INV_period(30),
	dataf => ALT_INV_counter(31),
	combout => \Equal0~7_combout\);

-- Location: IOIBUF_X89_Y6_N21
\WriteData[21]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_WriteData(21),
	o => \WriteData[21]~input_o\);

-- Location: FF_X77_Y6_N53
\period[21]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk~inputCLKENA0_outclk\,
	asdata => \WriteData[21]~input_o\,
	clrn => \nReset~input_o\,
	sload => VCC,
	ena => \period[31]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => period(21));

-- Location: IOIBUF_X64_Y0_N52
\WriteData[23]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_WriteData(23),
	o => \WriteData[23]~input_o\);

-- Location: FF_X75_Y6_N22
\period[23]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk~inputCLKENA0_outclk\,
	asdata => \WriteData[23]~input_o\,
	clrn => \nReset~input_o\,
	sload => VCC,
	ena => \period[31]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => period(23));

-- Location: IOIBUF_X70_Y0_N1
\WriteData[22]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_WriteData(22),
	o => \WriteData[22]~input_o\);

-- Location: FF_X77_Y6_N32
\period[22]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk~inputCLKENA0_outclk\,
	asdata => \WriteData[22]~input_o\,
	clrn => \nReset~input_o\,
	sload => VCC,
	ena => \period[31]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => period(22));

-- Location: FF_X78_Y6_N4
\counter[21]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk~inputCLKENA0_outclk\,
	d => \Add0~117_sumout\,
	sclr => \Equal0~13_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => counter(21));

-- Location: LABCELL_X77_Y6_N30
\Equal0~11\ : cyclonev_lcell_comb
-- Equation(s):
-- \Equal0~11_combout\ = ( period(22) & ( counter(21) & ( (period(21) & (counter(22) & (!period(23) $ (counter(23))))) ) ) ) # ( !period(22) & ( counter(21) & ( (period(21) & (!counter(22) & (!period(23) $ (counter(23))))) ) ) ) # ( period(22) & ( 
-- !counter(21) & ( (!period(21) & (counter(22) & (!period(23) $ (counter(23))))) ) ) ) # ( !period(22) & ( !counter(21) & ( (!period(21) & (!counter(22) & (!period(23) $ (counter(23))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000001000000000000000001000001001000001000000000000000001000001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_period(21),
	datab => ALT_INV_period(23),
	datac => ALT_INV_counter(23),
	datad => ALT_INV_counter(22),
	datae => ALT_INV_period(22),
	dataf => ALT_INV_counter(21),
	combout => \Equal0~11_combout\);

-- Location: IOIBUF_X89_Y8_N55
\WriteData[25]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_WriteData(25),
	o => \WriteData[25]~input_o\);

-- Location: FF_X78_Y6_N41
\period[25]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk~inputCLKENA0_outclk\,
	asdata => \WriteData[25]~input_o\,
	clrn => \nReset~input_o\,
	sload => VCC,
	ena => \period[31]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => period(25));

-- Location: IOIBUF_X72_Y0_N35
\WriteData[26]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_WriteData(26),
	o => \WriteData[26]~input_o\);

-- Location: FF_X78_Y6_N58
\period[26]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk~inputCLKENA0_outclk\,
	asdata => \WriteData[26]~input_o\,
	clrn => \nReset~input_o\,
	sload => VCC,
	ena => \period[31]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => period(26));

-- Location: IOIBUF_X89_Y8_N21
\WriteData[24]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_WriteData(24),
	o => \WriteData[24]~input_o\);

-- Location: FF_X78_Y6_N47
\period[24]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk~inputCLKENA0_outclk\,
	asdata => \WriteData[24]~input_o\,
	clrn => \nReset~input_o\,
	sload => VCC,
	ena => \period[31]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => period(24));

-- Location: MLABCELL_X78_Y6_N54
\Equal0~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \Equal0~9_combout\ = ( period(24) & ( counter(24) & ( (!counter(26) & (!period(26) & (!period(25) $ (counter(25))))) # (counter(26) & (period(26) & (!period(25) $ (counter(25))))) ) ) ) # ( !period(24) & ( !counter(24) & ( (!counter(26) & (!period(26) & 
-- (!period(25) $ (counter(25))))) # (counter(26) & (period(26) & (!period(25) $ (counter(25))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000010000100001000000000000000000000000000000001000010000100001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_counter(26),
	datab => ALT_INV_period(25),
	datac => ALT_INV_period(26),
	datad => ALT_INV_counter(25),
	datae => ALT_INV_period(24),
	dataf => ALT_INV_counter(24),
	combout => \Equal0~9_combout\);

-- Location: IOIBUF_X89_Y4_N78
\WriteData[19]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_WriteData(19),
	o => \WriteData[19]~input_o\);

-- Location: FF_X77_Y6_N47
\period[19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk~inputCLKENA0_outclk\,
	asdata => \WriteData[19]~input_o\,
	clrn => \nReset~input_o\,
	sload => VCC,
	ena => \period[31]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => period(19));

-- Location: IOIBUF_X64_Y0_N18
\WriteData[18]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_WriteData(18),
	o => \WriteData[18]~input_o\);

-- Location: FF_X77_Y6_N22
\period[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk~inputCLKENA0_outclk\,
	asdata => \WriteData[18]~input_o\,
	clrn => \nReset~input_o\,
	sload => VCC,
	ena => \period[31]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => period(18));

-- Location: IOIBUF_X89_Y4_N61
\WriteData[20]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_WriteData(20),
	o => \WriteData[20]~input_o\);

-- Location: FF_X77_Y6_N35
\period[20]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk~inputCLKENA0_outclk\,
	asdata => \WriteData[20]~input_o\,
	clrn => \nReset~input_o\,
	sload => VCC,
	ena => \period[31]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => period(20));

-- Location: FF_X78_Y7_N58
\counter[19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk~inputCLKENA0_outclk\,
	d => \Add0~109_sumout\,
	sclr => \Equal0~13_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => counter(19));

-- Location: FF_X78_Y7_N55
\counter[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk~inputCLKENA0_outclk\,
	d => \Add0~105_sumout\,
	sclr => \Equal0~13_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => counter(18));

-- Location: LABCELL_X77_Y6_N3
\Equal0~10\ : cyclonev_lcell_comb
-- Equation(s):
-- \Equal0~10_combout\ = ( counter(19) & ( counter(18) & ( (period(19) & (period(18) & (!counter(20) $ (period(20))))) ) ) ) # ( !counter(19) & ( counter(18) & ( (!period(19) & (period(18) & (!counter(20) $ (period(20))))) ) ) ) # ( counter(19) & ( 
-- !counter(18) & ( (period(19) & (!period(18) & (!counter(20) $ (period(20))))) ) ) ) # ( !counter(19) & ( !counter(18) & ( (!period(19) & (!period(18) & (!counter(20) $ (period(20))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000000001000000001000000001000000001000000001000000001000000001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_counter(20),
	datab => ALT_INV_period(19),
	datac => ALT_INV_period(18),
	datad => ALT_INV_period(20),
	datae => ALT_INV_counter(19),
	dataf => ALT_INV_counter(18),
	combout => \Equal0~10_combout\);

-- Location: IOIBUF_X64_Y0_N35
\WriteData[28]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_WriteData(28),
	o => \WriteData[28]~input_o\);

-- Location: FF_X77_Y6_N11
\period[28]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk~inputCLKENA0_outclk\,
	asdata => \WriteData[28]~input_o\,
	clrn => \nReset~input_o\,
	sload => VCC,
	ena => \period[31]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => period(28));

-- Location: IOIBUF_X72_Y0_N18
\WriteData[27]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_WriteData(27),
	o => \WriteData[27]~input_o\);

-- Location: FF_X77_Y6_N50
\period[27]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk~inputCLKENA0_outclk\,
	asdata => \WriteData[27]~input_o\,
	clrn => \nReset~input_o\,
	sload => VCC,
	ena => \period[31]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => period(27));

-- Location: IOIBUF_X70_Y0_N18
\WriteData[29]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_WriteData(29),
	o => \WriteData[29]~input_o\);

-- Location: FF_X77_Y6_N7
\period[29]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk~inputCLKENA0_outclk\,
	asdata => \WriteData[29]~input_o\,
	clrn => \nReset~input_o\,
	sload => VCC,
	ena => \period[31]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => period(29));

-- Location: FF_X78_Y6_N22
\counter[27]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk~inputCLKENA0_outclk\,
	d => \Add0~81_sumout\,
	sclr => \Equal0~13_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => counter(27));

-- Location: LABCELL_X77_Y6_N51
\Equal0~8\ : cyclonev_lcell_comb
-- Equation(s):
-- \Equal0~8_combout\ = ( period(29) & ( counter(27) & ( (counter(29) & (period(27) & (!period(28) $ (\counter[28]~DUPLICATE_q\)))) ) ) ) # ( !period(29) & ( counter(27) & ( (!counter(29) & (period(27) & (!period(28) $ (\counter[28]~DUPLICATE_q\)))) ) ) ) # 
-- ( period(29) & ( !counter(27) & ( (counter(29) & (!period(27) & (!period(28) $ (\counter[28]~DUPLICATE_q\)))) ) ) ) # ( !period(29) & ( !counter(27) & ( (!counter(29) & (!period(27) & (!period(28) $ (\counter[28]~DUPLICATE_q\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000001000000000010000010000000000000000100000100000000001000001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_counter(29),
	datab => ALT_INV_period(28),
	datac => \ALT_INV_counter[28]~DUPLICATE_q\,
	datad => ALT_INV_period(27),
	datae => ALT_INV_period(29),
	dataf => ALT_INV_counter(27),
	combout => \Equal0~8_combout\);

-- Location: MLABCELL_X78_Y6_N51
\Equal0~12\ : cyclonev_lcell_comb
-- Equation(s):
-- \Equal0~12_combout\ = ( \Equal0~8_combout\ & ( (\Equal0~7_combout\ & (\Equal0~11_combout\ & (\Equal0~9_combout\ & \Equal0~10_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000010000000000000001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Equal0~7_combout\,
	datab => \ALT_INV_Equal0~11_combout\,
	datac => \ALT_INV_Equal0~9_combout\,
	datad => \ALT_INV_Equal0~10_combout\,
	dataf => \ALT_INV_Equal0~8_combout\,
	combout => \Equal0~12_combout\);

-- Location: MLABCELL_X78_Y6_N48
\Equal0~13\ : cyclonev_lcell_comb
-- Equation(s):
-- \Equal0~13_combout\ = (\Equal0~12_combout\ & \Equal0~6_combout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000001111000000000000111100000000000011110000000000001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_Equal0~12_combout\,
	datad => \ALT_INV_Equal0~6_combout\,
	combout => \Equal0~13_combout\);

-- Location: FF_X78_Y7_N2
\counter[0]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk~inputCLKENA0_outclk\,
	d => \Add0~49_sumout\,
	sclr => \Equal0~13_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \counter[0]~DUPLICATE_q\);

-- Location: FF_X78_Y7_N5
\counter[1]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk~inputCLKENA0_outclk\,
	d => \Add0~53_sumout\,
	sclr => \Equal0~13_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \counter[1]~DUPLICATE_q\);

-- Location: FF_X79_Y6_N14
\period[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk~inputCLKENA0_outclk\,
	asdata => \WriteData[0]~input_o\,
	clrn => \nReset~input_o\,
	sload => VCC,
	ena => \period[31]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => period(0));

-- Location: MLABCELL_X78_Y6_N36
\Equal0~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \Equal0~4_combout\ = ( \counter[0]~DUPLICATE_q\ & ( counter(2) & ( (period(2) & (period(0) & (!period(1) $ (\counter[1]~DUPLICATE_q\)))) ) ) ) # ( !\counter[0]~DUPLICATE_q\ & ( counter(2) & ( (period(2) & (!period(0) & (!period(1) $ 
-- (\counter[1]~DUPLICATE_q\)))) ) ) ) # ( \counter[0]~DUPLICATE_q\ & ( !counter(2) & ( (!period(2) & (period(0) & (!period(1) $ (\counter[1]~DUPLICATE_q\)))) ) ) ) # ( !\counter[0]~DUPLICATE_q\ & ( !counter(2) & ( (!period(2) & (!period(0) & (!period(1) $ 
-- (\counter[1]~DUPLICATE_q\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000010000000000000000001000010000100001000000000000000000100001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_period(1),
	datab => ALT_INV_period(2),
	datac => \ALT_INV_counter[1]~DUPLICATE_q\,
	datad => ALT_INV_period(0),
	datae => \ALT_INV_counter[0]~DUPLICATE_q\,
	dataf => ALT_INV_counter(2),
	combout => \Equal0~4_combout\);

-- Location: IOIBUF_X89_Y9_N21
\WriteData[15]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_WriteData(15),
	o => \WriteData[15]~input_o\);

-- Location: FF_X79_Y7_N2
\period[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk~inputCLKENA0_outclk\,
	asdata => \WriteData[15]~input_o\,
	clrn => \nReset~input_o\,
	sload => VCC,
	ena => \period[31]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => period(15));

-- Location: IOIBUF_X89_Y4_N44
\WriteData[16]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_WriteData(16),
	o => \WriteData[16]~input_o\);

-- Location: FF_X79_Y7_N11
\period[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk~inputCLKENA0_outclk\,
	asdata => \WriteData[16]~input_o\,
	clrn => \nReset~input_o\,
	sload => VCC,
	ena => \period[31]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => period(16));

-- Location: FF_X78_Y7_N49
\counter[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk~inputCLKENA0_outclk\,
	d => \Add0~5_sumout\,
	sclr => \Equal0~13_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => counter(16));

-- Location: IOIBUF_X89_Y9_N55
\WriteData[17]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_WriteData(17),
	o => \WriteData[17]~input_o\);

-- Location: FF_X79_Y7_N7
\period[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk~inputCLKENA0_outclk\,
	asdata => \WriteData[17]~input_o\,
	clrn => \nReset~input_o\,
	sload => VCC,
	ena => \period[31]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => period(17));

-- Location: FF_X78_Y7_N46
\counter[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk~inputCLKENA0_outclk\,
	d => \Add0~1_sumout\,
	sclr => \Equal0~13_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => counter(15));

-- Location: LABCELL_X79_Y7_N30
\Equal0~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Equal0~0_combout\ = ( period(17) & ( counter(15) & ( (period(15) & (counter(17) & (!period(16) $ (counter(16))))) ) ) ) # ( !period(17) & ( counter(15) & ( (period(15) & (!counter(17) & (!period(16) $ (counter(16))))) ) ) ) # ( period(17) & ( 
-- !counter(15) & ( (!period(15) & (counter(17) & (!period(16) $ (counter(16))))) ) ) ) # ( !period(17) & ( !counter(15) & ( (!period(15) & (!counter(17) & (!period(16) $ (counter(16))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000000000100000000010000000001001000000000100000000010000000001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_period(15),
	datab => ALT_INV_period(16),
	datac => ALT_INV_counter(17),
	datad => ALT_INV_counter(16),
	datae => ALT_INV_period(17),
	dataf => ALT_INV_counter(15),
	combout => \Equal0~0_combout\);

-- Location: LABCELL_X77_Y7_N21
\period[8]~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \period[8]~4_combout\ = !\WriteData[8]~input_o\

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1010101010101010101010101010101010101010101010101010101010101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_WriteData[8]~input_o\,
	combout => \period[8]~4_combout\);

-- Location: FF_X77_Y7_N56
\period[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk~inputCLKENA0_outclk\,
	asdata => \period[8]~4_combout\,
	clrn => \nReset~input_o\,
	sload => VCC,
	ena => \period[31]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => period(8));

-- Location: LABCELL_X77_Y7_N57
\period[7]~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \period[7]~3_combout\ = !\WriteData[7]~input_o\

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1010101010101010101010101010101010101010101010101010101010101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_WriteData[7]~input_o\,
	combout => \period[7]~3_combout\);

-- Location: FF_X77_Y7_N59
\period[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk~inputCLKENA0_outclk\,
	d => \period[7]~3_combout\,
	clrn => \nReset~input_o\,
	ena => \period[31]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => period(7));

-- Location: LABCELL_X77_Y7_N3
\period[6]~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \period[6]~2_combout\ = ( !\WriteData[6]~input_o\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111111111111111111111111100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \ALT_INV_WriteData[6]~input_o\,
	combout => \period[6]~2_combout\);

-- Location: FF_X77_Y7_N5
\period[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk~inputCLKENA0_outclk\,
	d => \period[6]~2_combout\,
	clrn => \nReset~input_o\,
	ena => \period[31]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => period(6));

-- Location: LABCELL_X77_Y7_N48
\Equal0~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \Equal0~3_combout\ = ( counter(7) & ( counter(6) & ( (!period(7) & (!period(6) & (!period(8) $ (!counter(8))))) ) ) ) # ( !counter(7) & ( counter(6) & ( (period(7) & (!period(6) & (!period(8) $ (!counter(8))))) ) ) ) # ( counter(7) & ( !counter(6) & ( 
-- (!period(7) & (period(6) & (!period(8) $ (!counter(8))))) ) ) ) # ( !counter(7) & ( !counter(6) & ( (period(7) & (period(6) & (!period(8) $ (!counter(8))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000100000010000001000000100000010000001000000100000010000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_period(8),
	datab => ALT_INV_period(7),
	datac => ALT_INV_period(6),
	datad => ALT_INV_counter(8),
	datae => ALT_INV_counter(7),
	dataf => ALT_INV_counter(6),
	combout => \Equal0~3_combout\);

-- Location: FF_X79_Y6_N29
\period[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk~inputCLKENA0_outclk\,
	asdata => \WriteData[12]~input_o\,
	clrn => \nReset~input_o\,
	sload => VCC,
	ena => \period[31]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => period(12));

-- Location: IOIBUF_X68_Y0_N1
\WriteData[14]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_WriteData(14),
	o => \WriteData[14]~input_o\);

-- Location: FF_X79_Y6_N55
\period[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk~inputCLKENA0_outclk\,
	asdata => \WriteData[14]~input_o\,
	clrn => \nReset~input_o\,
	sload => VCC,
	ena => \period[31]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => period(14));

-- Location: FF_X79_Y6_N32
\period[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk~inputCLKENA0_outclk\,
	asdata => \WriteData[13]~input_o\,
	clrn => \nReset~input_o\,
	sload => VCC,
	ena => \period[31]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => period(13));

-- Location: FF_X78_Y7_N37
\counter[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk~inputCLKENA0_outclk\,
	d => \Add0~13_sumout\,
	sclr => \Equal0~13_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => counter(12));

-- Location: LABCELL_X79_Y6_N36
\Equal0~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \Equal0~1_combout\ = ( counter(13) & ( counter(12) & ( (period(12) & (period(13) & (!period(14) $ (counter(14))))) ) ) ) # ( !counter(13) & ( counter(12) & ( (period(12) & (!period(13) & (!period(14) $ (counter(14))))) ) ) ) # ( counter(13) & ( 
-- !counter(12) & ( (!period(12) & (period(13) & (!period(14) $ (counter(14))))) ) ) ) # ( !counter(13) & ( !counter(12) & ( (!period(12) & (!period(13) & (!period(14) $ (counter(14))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000001000000000000000001000001001000001000000000000000001000001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_period(12),
	datab => ALT_INV_period(14),
	datac => ALT_INV_counter(14),
	datad => ALT_INV_period(13),
	datae => ALT_INV_counter(13),
	dataf => ALT_INV_counter(12),
	combout => \Equal0~1_combout\);

-- Location: LABCELL_X79_Y6_N33
\period[5]~6\ : cyclonev_lcell_comb
-- Equation(s):
-- \period[5]~6_combout\ = !\WriteData[5]~input_o\

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111000011110000111100001111000011110000111100001111000011110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_WriteData[5]~input_o\,
	combout => \period[5]~6_combout\);

-- Location: FF_X79_Y6_N35
\period[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk~inputCLKENA0_outclk\,
	d => \period[5]~6_combout\,
	clrn => \nReset~input_o\,
	ena => \period[31]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => period(5));

-- Location: LABCELL_X79_Y6_N6
\period[3]~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \period[3]~5_combout\ = !\WriteData[3]~input_o\

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111000011110000111100001111000011110000111100001111000011110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_WriteData[3]~input_o\,
	combout => \period[3]~5_combout\);

-- Location: FF_X79_Y6_N8
\period[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk~inputCLKENA0_outclk\,
	d => \period[3]~5_combout\,
	clrn => \nReset~input_o\,
	ena => \period[31]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => period(3));

-- Location: FF_X79_Y6_N11
\period[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk~inputCLKENA0_outclk\,
	asdata => \WriteData[4]~input_o\,
	clrn => \nReset~input_o\,
	sload => VCC,
	ena => \period[31]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => period(4));

-- Location: FF_X78_Y7_N13
\counter[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk~inputCLKENA0_outclk\,
	d => \Add0~65_sumout\,
	sclr => \Equal0~13_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => counter(4));

-- Location: FF_X78_Y7_N10
\counter[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk~inputCLKENA0_outclk\,
	d => \Add0~61_sumout\,
	sclr => \Equal0~13_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => counter(3));

-- Location: LABCELL_X79_Y6_N27
\Equal0~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \Equal0~5_combout\ = ( \counter[5]~DUPLICATE_q\ & ( counter(3) & ( (!period(5) & (!period(3) & (!period(4) $ (counter(4))))) ) ) ) # ( !\counter[5]~DUPLICATE_q\ & ( counter(3) & ( (period(5) & (!period(3) & (!period(4) $ (counter(4))))) ) ) ) # ( 
-- \counter[5]~DUPLICATE_q\ & ( !counter(3) & ( (!period(5) & (period(3) & (!period(4) $ (counter(4))))) ) ) ) # ( !\counter[5]~DUPLICATE_q\ & ( !counter(3) & ( (period(5) & (period(3) & (!period(4) $ (counter(4))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000000000001001000000000001001000000000001001000000000001000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_period(5),
	datab => ALT_INV_period(3),
	datac => ALT_INV_period(4),
	datad => ALT_INV_counter(4),
	datae => \ALT_INV_counter[5]~DUPLICATE_q\,
	dataf => ALT_INV_counter(3),
	combout => \Equal0~5_combout\);

-- Location: LABCELL_X79_Y6_N21
\period[9]~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \period[9]~1_combout\ = !\WriteData[9]~input_o\

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1010101010101010101010101010101010101010101010101010101010101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_WriteData[9]~input_o\,
	combout => \period[9]~1_combout\);

-- Location: FF_X77_Y6_N20
\period[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk~inputCLKENA0_outclk\,
	asdata => \period[9]~1_combout\,
	clrn => \nReset~input_o\,
	sload => VCC,
	ena => \period[31]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => period(9));

-- Location: LABCELL_X75_Y6_N24
\period[10]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \period[10]~feeder_combout\ = ( \WriteData[10]~input_o\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \ALT_INV_WriteData[10]~input_o\,
	combout => \period[10]~feeder_combout\);

-- Location: FF_X75_Y6_N25
\period[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk~inputCLKENA0_outclk\,
	d => \period[10]~feeder_combout\,
	clrn => \nReset~input_o\,
	ena => \period[31]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => period(10));

-- Location: FF_X77_Y6_N26
\period[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk~inputCLKENA0_outclk\,
	asdata => \WriteData[11]~input_o\,
	clrn => \nReset~input_o\,
	sload => VCC,
	ena => \period[31]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => period(11));

-- Location: FF_X78_Y7_N28
\counter[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk~inputCLKENA0_outclk\,
	d => \Add0~25_sumout\,
	sclr => \Equal0~13_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => counter(9));

-- Location: LABCELL_X77_Y6_N24
\Equal0~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \Equal0~2_combout\ = ( period(11) & ( counter(9) & ( (!period(9) & (\counter[11]~DUPLICATE_q\ & (!period(10) $ (counter(10))))) ) ) ) # ( !period(11) & ( counter(9) & ( (!period(9) & (!\counter[11]~DUPLICATE_q\ & (!period(10) $ (counter(10))))) ) ) ) # ( 
-- period(11) & ( !counter(9) & ( (period(9) & (\counter[11]~DUPLICATE_q\ & (!period(10) $ (counter(10))))) ) ) ) # ( !period(11) & ( !counter(9) & ( (period(9) & (!\counter[11]~DUPLICATE_q\ & (!period(10) $ (counter(10))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100000000000100000100000000000110000000000010000010000000000010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_period(9),
	datab => \ALT_INV_counter[11]~DUPLICATE_q\,
	datac => ALT_INV_period(10),
	datad => ALT_INV_counter(10),
	datae => ALT_INV_period(11),
	dataf => ALT_INV_counter(9),
	combout => \Equal0~2_combout\);

-- Location: MLABCELL_X78_Y6_N42
\Equal0~6\ : cyclonev_lcell_comb
-- Equation(s):
-- \Equal0~6_combout\ = ( \Equal0~5_combout\ & ( \Equal0~2_combout\ & ( (\Equal0~4_combout\ & (\Equal0~0_combout\ & (\Equal0~3_combout\ & \Equal0~1_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000000000001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Equal0~4_combout\,
	datab => \ALT_INV_Equal0~0_combout\,
	datac => \ALT_INV_Equal0~3_combout\,
	datad => \ALT_INV_Equal0~1_combout\,
	datae => \ALT_INV_Equal0~5_combout\,
	dataf => \ALT_INV_Equal0~2_combout\,
	combout => \Equal0~6_combout\);

-- Location: LABCELL_X77_Y7_N39
\dc[31]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \dc[31]~0_combout\ = ( \ChipSelect~input_o\ & ( (!\Address[1]~input_o\ & (\Write_en~input_o\ & \Address[0]~input_o\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000011000000000000001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_Address[1]~input_o\,
	datac => \ALT_INV_Write_en~input_o\,
	datad => \ALT_INV_Address[0]~input_o\,
	dataf => \ALT_INV_ChipSelect~input_o\,
	combout => \dc[31]~0_combout\);

-- Location: FF_X78_Y6_N53
\dc[31]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk~inputCLKENA0_outclk\,
	asdata => \WriteData[31]~input_o\,
	clrn => \nReset~input_o\,
	sload => VCC,
	ena => \dc[31]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => dc(31));

-- Location: FF_X77_Y6_N16
\dc[30]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk~inputCLKENA0_outclk\,
	asdata => \WriteData[30]~input_o\,
	clrn => \nReset~input_o\,
	sload => VCC,
	ena => \dc[31]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => dc(30));

-- Location: LABCELL_X77_Y6_N6
\Equal1~7\ : cyclonev_lcell_comb
-- Equation(s):
-- \Equal1~7_combout\ = ( counter(30) & ( (dc(30) & (!dc(31) $ (counter(31)))) ) ) # ( !counter(30) & ( (!dc(30) & (!dc(31) $ (counter(31)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1010010100000000101001010000000000000000101001010000000010100101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_dc(31),
	datac => ALT_INV_counter(31),
	datad => ALT_INV_dc(30),
	dataf => ALT_INV_counter(30),
	combout => \Equal1~7_combout\);

-- Location: FF_X77_Y6_N2
\dc[27]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk~inputCLKENA0_outclk\,
	asdata => \WriteData[27]~input_o\,
	clrn => \nReset~input_o\,
	sload => VCC,
	ena => \dc[31]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => dc(27));

-- Location: FF_X77_Y6_N41
\dc[29]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk~inputCLKENA0_outclk\,
	asdata => \WriteData[29]~input_o\,
	clrn => \nReset~input_o\,
	sload => VCC,
	ena => \dc[31]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => dc(29));

-- Location: FF_X77_Y6_N56
\dc[28]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk~inputCLKENA0_outclk\,
	asdata => \WriteData[28]~input_o\,
	clrn => \nReset~input_o\,
	sload => VCC,
	ena => \dc[31]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => dc(28));

-- Location: FF_X78_Y6_N25
\counter[28]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk~inputCLKENA0_outclk\,
	d => \Add0~85_sumout\,
	sclr => \Equal0~13_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => counter(28));

-- Location: LABCELL_X77_Y6_N54
\Equal1~8\ : cyclonev_lcell_comb
-- Equation(s):
-- \Equal1~8_combout\ = ( dc(28) & ( counter(28) & ( (!dc(27) & (!counter(27) & (!dc(29) $ (counter(29))))) # (dc(27) & (counter(27) & (!dc(29) $ (counter(29))))) ) ) ) # ( !dc(28) & ( !counter(28) & ( (!dc(27) & (!counter(27) & (!dc(29) $ (counter(29))))) # 
-- (dc(27) & (counter(27) & (!dc(29) $ (counter(29))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000001001000001000000000000000000000000000000001000001001000001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_dc(27),
	datab => ALT_INV_dc(29),
	datac => ALT_INV_counter(29),
	datad => ALT_INV_counter(27),
	datae => ALT_INV_dc(28),
	dataf => ALT_INV_counter(28),
	combout => \Equal1~8_combout\);

-- Location: FF_X77_Y6_N14
\dc[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk~inputCLKENA0_outclk\,
	asdata => \WriteData[18]~input_o\,
	clrn => \nReset~input_o\,
	sload => VCC,
	ena => \dc[31]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => dc(18));

-- Location: FF_X77_Y7_N47
\dc[19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk~inputCLKENA0_outclk\,
	asdata => \WriteData[19]~input_o\,
	clrn => \nReset~input_o\,
	sload => VCC,
	ena => \dc[31]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => dc(19));

-- Location: FF_X77_Y6_N38
\dc[20]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk~inputCLKENA0_outclk\,
	asdata => \WriteData[20]~input_o\,
	clrn => \nReset~input_o\,
	sload => VCC,
	ena => \dc[31]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => dc(20));

-- Location: LABCELL_X77_Y6_N15
\Equal1~10\ : cyclonev_lcell_comb
-- Equation(s):
-- \Equal1~10_combout\ = ( counter(19) & ( counter(18) & ( (dc(18) & (dc(19) & (!counter(20) $ (dc(20))))) ) ) ) # ( !counter(19) & ( counter(18) & ( (dc(18) & (!dc(19) & (!counter(20) $ (dc(20))))) ) ) ) # ( counter(19) & ( !counter(18) & ( (!dc(18) & 
-- (dc(19) & (!counter(20) $ (dc(20))))) ) ) ) # ( !counter(19) & ( !counter(18) & ( (!dc(18) & (!dc(19) & (!counter(20) $ (dc(20))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000000001000000000010000000010000100000000100000000001000000001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_counter(20),
	datab => ALT_INV_dc(18),
	datac => ALT_INV_dc(19),
	datad => ALT_INV_dc(20),
	datae => ALT_INV_counter(19),
	dataf => ALT_INV_counter(18),
	combout => \Equal1~10_combout\);

-- Location: FF_X77_Y6_N59
\dc[23]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk~inputCLKENA0_outclk\,
	asdata => \WriteData[23]~input_o\,
	clrn => \nReset~input_o\,
	sload => VCC,
	ena => \dc[31]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => dc(23));

-- Location: FF_X77_Y6_N5
\dc[22]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk~inputCLKENA0_outclk\,
	asdata => \WriteData[22]~input_o\,
	clrn => \nReset~input_o\,
	sload => VCC,
	ena => \dc[31]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => dc(22));

-- Location: LABCELL_X77_Y6_N39
\dc[21]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \dc[21]~feeder_combout\ = \WriteData[21]~input_o\

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101010101010101010101010101010101010101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_WriteData[21]~input_o\,
	combout => \dc[21]~feeder_combout\);

-- Location: FF_X77_Y6_N40
\dc[21]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk~inputCLKENA0_outclk\,
	d => \dc[21]~feeder_combout\,
	clrn => \nReset~input_o\,
	ena => \dc[31]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => dc(21));

-- Location: LABCELL_X77_Y6_N45
\Equal1~11\ : cyclonev_lcell_comb
-- Equation(s):
-- \Equal1~11_combout\ = ( dc(21) & ( counter(22) & ( (counter(21) & (dc(22) & (!counter(23) $ (dc(23))))) ) ) ) # ( !dc(21) & ( counter(22) & ( (!counter(21) & (dc(22) & (!counter(23) $ (dc(23))))) ) ) ) # ( dc(21) & ( !counter(22) & ( (counter(21) & 
-- (!dc(22) & (!counter(23) $ (dc(23))))) ) ) ) # ( !dc(21) & ( !counter(22) & ( (!counter(21) & (!dc(22) & (!counter(23) $ (dc(23))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1001000000000000000010010000000000000000100100000000000000001001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_counter(23),
	datab => ALT_INV_dc(23),
	datac => ALT_INV_counter(21),
	datad => ALT_INV_dc(22),
	datae => ALT_INV_dc(21),
	dataf => ALT_INV_counter(22),
	combout => \Equal1~11_combout\);

-- Location: FF_X77_Y7_N53
\dc[24]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk~inputCLKENA0_outclk\,
	asdata => \WriteData[24]~input_o\,
	clrn => \nReset~input_o\,
	sload => VCC,
	ena => \dc[31]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => dc(24));

-- Location: FF_X77_Y7_N8
\dc[25]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk~inputCLKENA0_outclk\,
	asdata => \WriteData[25]~input_o\,
	clrn => \nReset~input_o\,
	sload => VCC,
	ena => \dc[31]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => dc(25));

-- Location: FF_X78_Y6_N19
\counter[26]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk~inputCLKENA0_outclk\,
	d => \Add0~101_sumout\,
	sclr => \Equal0~13_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \counter[26]~DUPLICATE_q\);

-- Location: FF_X77_Y7_N29
\dc[26]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk~inputCLKENA0_outclk\,
	asdata => \WriteData[26]~input_o\,
	clrn => \nReset~input_o\,
	sload => VCC,
	ena => \dc[31]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => dc(26));

-- Location: FF_X78_Y6_N16
\counter[25]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk~inputCLKENA0_outclk\,
	d => \Add0~97_sumout\,
	sclr => \Equal0~13_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \counter[25]~DUPLICATE_q\);

-- Location: FF_X78_Y6_N13
\counter[24]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk~inputCLKENA0_outclk\,
	d => \Add0~93_sumout\,
	sclr => \Equal0~13_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \counter[24]~DUPLICATE_q\);

-- Location: LABCELL_X77_Y7_N9
\Equal1~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \Equal1~9_combout\ = ( \counter[25]~DUPLICATE_q\ & ( \counter[24]~DUPLICATE_q\ & ( (dc(24) & (dc(25) & (!\counter[26]~DUPLICATE_q\ $ (dc(26))))) ) ) ) # ( !\counter[25]~DUPLICATE_q\ & ( \counter[24]~DUPLICATE_q\ & ( (dc(24) & (!dc(25) & 
-- (!\counter[26]~DUPLICATE_q\ $ (dc(26))))) ) ) ) # ( \counter[25]~DUPLICATE_q\ & ( !\counter[24]~DUPLICATE_q\ & ( (!dc(24) & (dc(25) & (!\counter[26]~DUPLICATE_q\ $ (dc(26))))) ) ) ) # ( !\counter[25]~DUPLICATE_q\ & ( !\counter[24]~DUPLICATE_q\ & ( 
-- (!dc(24) & (!dc(25) & (!\counter[26]~DUPLICATE_q\ $ (dc(26))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000000000001000001000000000001001000000000001000001000000000001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_dc(24),
	datab => ALT_INV_dc(25),
	datac => \ALT_INV_counter[26]~DUPLICATE_q\,
	datad => ALT_INV_dc(26),
	datae => \ALT_INV_counter[25]~DUPLICATE_q\,
	dataf => \ALT_INV_counter[24]~DUPLICATE_q\,
	combout => \Equal1~9_combout\);

-- Location: LABCELL_X77_Y6_N18
\Equal1~12\ : cyclonev_lcell_comb
-- Equation(s):
-- \Equal1~12_combout\ = ( \Equal1~11_combout\ & ( \Equal1~9_combout\ & ( (\Equal1~7_combout\ & (\Equal1~8_combout\ & \Equal1~10_combout\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000000000011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_Equal1~7_combout\,
	datac => \ALT_INV_Equal1~8_combout\,
	datad => \ALT_INV_Equal1~10_combout\,
	datae => \ALT_INV_Equal1~11_combout\,
	dataf => \ALT_INV_Equal1~9_combout\,
	combout => \Equal1~12_combout\);

-- Location: FF_X79_Y7_N26
\dc[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk~inputCLKENA0_outclk\,
	asdata => \WriteData[16]~input_o\,
	clrn => \nReset~input_o\,
	sload => VCC,
	ena => \dc[31]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => dc(16));

-- Location: FF_X79_Y7_N32
\dc[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk~inputCLKENA0_outclk\,
	asdata => \WriteData[17]~input_o\,
	clrn => \nReset~input_o\,
	sload => VCC,
	ena => \dc[31]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => dc(17));

-- Location: FF_X79_Y7_N43
\dc[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk~inputCLKENA0_outclk\,
	asdata => \WriteData[15]~input_o\,
	clrn => \nReset~input_o\,
	sload => VCC,
	ena => \dc[31]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => dc(15));

-- Location: LABCELL_X79_Y7_N6
\Equal1~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Equal1~0_combout\ = ( counter(16) & ( counter(17) & ( (dc(16) & (dc(17) & (!counter(15) $ (dc(15))))) ) ) ) # ( !counter(16) & ( counter(17) & ( (!dc(16) & (dc(17) & (!counter(15) $ (dc(15))))) ) ) ) # ( counter(16) & ( !counter(17) & ( (dc(16) & 
-- (!dc(17) & (!counter(15) $ (dc(15))))) ) ) ) # ( !counter(16) & ( !counter(17) & ( (!dc(16) & (!dc(17) & (!counter(15) $ (dc(15))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000000000001000010000000000010000100000000000100001000000000001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_dc(16),
	datab => ALT_INV_dc(17),
	datac => ALT_INV_counter(15),
	datad => ALT_INV_dc(15),
	datae => ALT_INV_counter(16),
	dataf => ALT_INV_counter(17),
	combout => \Equal1~0_combout\);

-- Location: FF_X79_Y7_N47
\dc[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk~inputCLKENA0_outclk\,
	asdata => \WriteData[12]~input_o\,
	clrn => \nReset~input_o\,
	sload => VCC,
	ena => \dc[31]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => dc(12));

-- Location: FF_X79_Y7_N22
\dc[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk~inputCLKENA0_outclk\,
	asdata => \WriteData[14]~input_o\,
	clrn => \nReset~input_o\,
	sload => VCC,
	ena => \dc[31]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => dc(14));

-- Location: FF_X79_Y7_N20
\dc[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk~inputCLKENA0_outclk\,
	asdata => \WriteData[13]~input_o\,
	clrn => \nReset~input_o\,
	sload => VCC,
	ena => \dc[31]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => dc(13));

-- Location: LABCELL_X79_Y7_N18
\Equal1~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \Equal1~1_combout\ = ( dc(13) & ( counter(14) & ( (counter(13) & (dc(14) & (!dc(12) $ (counter(12))))) ) ) ) # ( !dc(13) & ( counter(14) & ( (!counter(13) & (dc(14) & (!dc(12) $ (counter(12))))) ) ) ) # ( dc(13) & ( !counter(14) & ( (counter(13) & 
-- (!dc(14) & (!dc(12) $ (counter(12))))) ) ) ) # ( !dc(13) & ( !counter(14) & ( (!counter(13) & (!dc(14) & (!dc(12) $ (counter(12))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000001000000000010000010000000000000000100000100000000001000001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_counter(13),
	datab => ALT_INV_dc(12),
	datac => ALT_INV_counter(12),
	datad => ALT_INV_dc(14),
	datae => ALT_INV_dc(13),
	dataf => ALT_INV_counter(14),
	combout => \Equal1~1_combout\);

-- Location: LABCELL_X79_Y7_N51
\dc[4]~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \dc[4]~5_combout\ = ( !\WriteData[4]~input_o\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111111111000000000000000011111111111111110000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datae => \ALT_INV_WriteData[4]~input_o\,
	combout => \dc[4]~5_combout\);

-- Location: FF_X79_Y7_N53
\dc[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk~inputCLKENA0_outclk\,
	d => \dc[4]~5_combout\,
	clrn => \nReset~input_o\,
	ena => \dc[31]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => dc(4));

-- Location: FF_X78_Y7_N16
\counter[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk~inputCLKENA0_outclk\,
	d => \Add0~69_sumout\,
	sclr => \Equal0~13_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => counter(5));

-- Location: FF_X79_Y7_N35
\dc[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk~inputCLKENA0_outclk\,
	asdata => \WriteData[3]~input_o\,
	clrn => \nReset~input_o\,
	sload => VCC,
	ena => \dc[31]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => dc(3));

-- Location: LABCELL_X80_Y7_N24
\dc[5]~6\ : cyclonev_lcell_comb
-- Equation(s):
-- \dc[5]~6_combout\ = ( !\WriteData[5]~input_o\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111111111111111111111111100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \ALT_INV_WriteData[5]~input_o\,
	combout => \dc[5]~6_combout\);

-- Location: FF_X80_Y7_N26
\dc[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk~inputCLKENA0_outclk\,
	d => \dc[5]~6_combout\,
	clrn => \nReset~input_o\,
	ena => \dc[31]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => dc(5));

-- Location: LABCELL_X79_Y7_N42
\Equal1~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \Equal1~5_combout\ = ( counter(4) & ( \counter[3]~DUPLICATE_q\ & ( (!dc(4) & (dc(3) & (!counter(5) $ (!dc(5))))) ) ) ) # ( !counter(4) & ( \counter[3]~DUPLICATE_q\ & ( (dc(4) & (dc(3) & (!counter(5) $ (!dc(5))))) ) ) ) # ( counter(4) & ( 
-- !\counter[3]~DUPLICATE_q\ & ( (!dc(4) & (!dc(3) & (!counter(5) $ (!dc(5))))) ) ) ) # ( !counter(4) & ( !\counter[3]~DUPLICATE_q\ & ( (dc(4) & (!dc(3) & (!counter(5) $ (!dc(5))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000001000000001000001000000000000001000001000000001000001000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_dc(4),
	datab => ALT_INV_counter(5),
	datac => ALT_INV_dc(3),
	datad => ALT_INV_dc(5),
	datae => ALT_INV_counter(4),
	dataf => \ALT_INV_counter[3]~DUPLICATE_q\,
	combout => \Equal1~5_combout\);

-- Location: LABCELL_X79_Y7_N54
\dc[2]~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \dc[2]~4_combout\ = !\WriteData[2]~input_o\

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111000011110000111100001111000011110000111100001111000011110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_WriteData[2]~input_o\,
	combout => \dc[2]~4_combout\);

-- Location: FF_X79_Y7_N56
\dc[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk~inputCLKENA0_outclk\,
	d => \dc[2]~4_combout\,
	clrn => \nReset~input_o\,
	ena => \dc[31]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => dc(2));

-- Location: FF_X79_Y7_N41
\dc[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk~inputCLKENA0_outclk\,
	asdata => \WriteData[0]~input_o\,
	clrn => \nReset~input_o\,
	sload => VCC,
	ena => \dc[31]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => dc(0));

-- Location: FF_X78_Y7_N4
\counter[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk~inputCLKENA0_outclk\,
	d => \Add0~53_sumout\,
	sclr => \Equal0~13_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => counter(1));

-- Location: FF_X79_Y7_N29
\dc[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk~inputCLKENA0_outclk\,
	asdata => \WriteData[1]~input_o\,
	clrn => \nReset~input_o\,
	sload => VCC,
	ena => \dc[31]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => dc(1));

-- Location: FF_X78_Y7_N1
\counter[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk~inputCLKENA0_outclk\,
	d => \Add0~49_sumout\,
	sclr => \Equal0~13_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => counter(0));

-- Location: LABCELL_X79_Y7_N27
\Equal1~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \Equal1~4_combout\ = ( dc(1) & ( counter(0) & ( (dc(0) & (counter(1) & (!dc(2) $ (!counter(2))))) ) ) ) # ( !dc(1) & ( counter(0) & ( (dc(0) & (!counter(1) & (!dc(2) $ (!counter(2))))) ) ) ) # ( dc(1) & ( !counter(0) & ( (!dc(0) & (counter(1) & (!dc(2) $ 
-- (!counter(2))))) ) ) ) # ( !dc(1) & ( !counter(0) & ( (!dc(0) & (!counter(1) & (!dc(2) $ (!counter(2))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100000010000000000001000000100000010000001000000000000100000010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_dc(2),
	datab => ALT_INV_dc(0),
	datac => ALT_INV_counter(1),
	datad => ALT_INV_counter(2),
	datae => ALT_INV_dc(1),
	dataf => ALT_INV_counter(0),
	combout => \Equal1~4_combout\);

-- Location: FF_X79_Y7_N59
\dc[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk~inputCLKENA0_outclk\,
	asdata => \WriteData[11]~input_o\,
	clrn => \nReset~input_o\,
	sload => VCC,
	ena => \dc[31]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => dc(11));

-- Location: FF_X78_Y7_N34
\counter[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk~inputCLKENA0_outclk\,
	d => \Add0~33_sumout\,
	sclr => \Equal0~13_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => counter(11));

-- Location: FF_X79_Y7_N38
\dc[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk~inputCLKENA0_outclk\,
	asdata => \WriteData[10]~input_o\,
	clrn => \nReset~input_o\,
	sload => VCC,
	ena => \dc[31]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => dc(10));

-- Location: FF_X79_Y7_N50
\dc[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk~inputCLKENA0_outclk\,
	asdata => \WriteData[9]~input_o\,
	clrn => \nReset~input_o\,
	sload => VCC,
	ena => \dc[31]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => dc(9));

-- Location: LABCELL_X79_Y7_N36
\Equal1~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \Equal1~2_combout\ = ( dc(10) & ( dc(9) & ( (counter(9) & (counter(10) & (!dc(11) $ (counter(11))))) ) ) ) # ( !dc(10) & ( dc(9) & ( (counter(9) & (!counter(10) & (!dc(11) $ (counter(11))))) ) ) ) # ( dc(10) & ( !dc(9) & ( (!counter(9) & (counter(10) & 
-- (!dc(11) $ (counter(11))))) ) ) ) # ( !dc(10) & ( !dc(9) & ( (!counter(9) & (!counter(10) & (!dc(11) $ (counter(11))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000000000100000000010000000001001000000000100000000010000000001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_counter(9),
	datab => ALT_INV_dc(11),
	datac => ALT_INV_counter(10),
	datad => ALT_INV_counter(11),
	datae => ALT_INV_dc(10),
	dataf => ALT_INV_dc(9),
	combout => \Equal1~2_combout\);

-- Location: LABCELL_X77_Y7_N18
\dc[7]~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \dc[7]~2_combout\ = ( !\WriteData[7]~input_o\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111111111111111111111111100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \ALT_INV_WriteData[7]~input_o\,
	combout => \dc[7]~2_combout\);

-- Location: FF_X77_Y7_N20
\dc[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk~inputCLKENA0_outclk\,
	d => \dc[7]~2_combout\,
	clrn => \nReset~input_o\,
	ena => \dc[31]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => dc(7));

-- Location: LABCELL_X77_Y7_N15
\dc[6]~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \dc[6]~1_combout\ = ( !\WriteData[6]~input_o\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111111111111111111111111100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \ALT_INV_WriteData[6]~input_o\,
	combout => \dc[6]~1_combout\);

-- Location: FF_X77_Y7_N17
\dc[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk~inputCLKENA0_outclk\,
	d => \dc[6]~1_combout\,
	clrn => \nReset~input_o\,
	ena => \dc[31]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => dc(6));

-- Location: LABCELL_X77_Y7_N36
\dc[8]~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \dc[8]~3_combout\ = !\WriteData[8]~input_o\

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111000011110000111100001111000011110000111100001111000011110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_WriteData[8]~input_o\,
	combout => \dc[8]~3_combout\);

-- Location: FF_X77_Y7_N38
\dc[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk~inputCLKENA0_outclk\,
	d => \dc[8]~3_combout\,
	clrn => \nReset~input_o\,
	ena => \dc[31]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => dc(8));

-- Location: LABCELL_X77_Y7_N30
\Equal1~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \Equal1~3_combout\ = ( counter(7) & ( counter(8) & ( (!dc(7) & (!dc(8) & (!dc(6) $ (!counter(6))))) ) ) ) # ( !counter(7) & ( counter(8) & ( (dc(7) & (!dc(8) & (!dc(6) $ (!counter(6))))) ) ) ) # ( counter(7) & ( !counter(8) & ( (!dc(7) & (dc(8) & (!dc(6) 
-- $ (!counter(6))))) ) ) ) # ( !counter(7) & ( !counter(8) & ( (dc(7) & (dc(8) & (!dc(6) $ (!counter(6))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000100000100000000100000100000010000010000000010000010000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_dc(7),
	datab => ALT_INV_dc(6),
	datac => ALT_INV_dc(8),
	datad => ALT_INV_counter(6),
	datae => ALT_INV_counter(7),
	dataf => ALT_INV_counter(8),
	combout => \Equal1~3_combout\);

-- Location: LABCELL_X79_Y7_N3
\Equal1~6\ : cyclonev_lcell_comb
-- Equation(s):
-- \Equal1~6_combout\ = ( \Equal1~2_combout\ & ( \Equal1~3_combout\ & ( (\Equal1~1_combout\ & (\Equal1~5_combout\ & \Equal1~4_combout\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000000000101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Equal1~1_combout\,
	datac => \ALT_INV_Equal1~5_combout\,
	datad => \ALT_INV_Equal1~4_combout\,
	datae => \ALT_INV_Equal1~2_combout\,
	dataf => \ALT_INV_Equal1~3_combout\,
	combout => \Equal1~6_combout\);

-- Location: LABCELL_X79_Y7_N12
\clk_slow~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \clk_slow~0_combout\ = ( \clk_slow~q\ & ( \Equal1~6_combout\ & ( (!\Equal0~6_combout\ & (\Equal1~12_combout\ & ((\Equal1~0_combout\)))) # (\Equal0~6_combout\ & (((\Equal1~12_combout\ & \Equal1~0_combout\)) # (\Equal0~12_combout\))) ) ) ) # ( !\clk_slow~q\ 
-- & ( \Equal1~6_combout\ & ( (\Equal0~6_combout\ & \Equal0~12_combout\) ) ) ) # ( \clk_slow~q\ & ( !\Equal1~6_combout\ & ( (\Equal0~6_combout\ & \Equal0~12_combout\) ) ) ) # ( !\clk_slow~q\ & ( !\Equal1~6_combout\ & ( (\Equal0~6_combout\ & 
-- \Equal0~12_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010100000101000001010000010100000101000001010000010100110111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Equal0~6_combout\,
	datab => \ALT_INV_Equal1~12_combout\,
	datac => \ALT_INV_Equal0~12_combout\,
	datad => \ALT_INV_Equal1~0_combout\,
	datae => \ALT_INV_clk_slow~q\,
	dataf => \ALT_INV_Equal1~6_combout\,
	combout => \clk_slow~0_combout\);

-- Location: FF_X79_Y7_N14
clk_slow : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk~inputCLKENA0_outclk\,
	d => \clk_slow~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clk_slow~q\);

-- Location: LABCELL_X81_Y6_N0
\polarity[26]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \polarity[26]~feeder_combout\ = ( \WriteData[26]~input_o\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \ALT_INV_WriteData[26]~input_o\,
	combout => \polarity[26]~feeder_combout\);

-- Location: FF_X81_Y6_N2
\polarity[26]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk~inputCLKENA0_outclk\,
	d => \polarity[26]~feeder_combout\,
	clrn => \nReset~input_o\,
	ena => \polarity[31]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => polarity(26));

-- Location: FF_X80_Y6_N52
\polarity[20]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk~inputCLKENA0_outclk\,
	asdata => \WriteData[20]~input_o\,
	clrn => \nReset~input_o\,
	sload => VCC,
	ena => \polarity[31]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => polarity(20));

-- Location: FF_X79_Y6_N5
\polarity[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk~inputCLKENA0_outclk\,
	asdata => \WriteData[14]~input_o\,
	clrn => \nReset~input_o\,
	sload => VCC,
	ena => \polarity[31]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => polarity(14));

-- Location: FF_X80_Y6_N58
\polarity[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk~inputCLKENA0_outclk\,
	asdata => \WriteData[17]~input_o\,
	clrn => \nReset~input_o\,
	sload => VCC,
	ena => \polarity[31]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => polarity(17));

-- Location: LABCELL_X80_Y6_N6
\polarity[15]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \polarity[15]~feeder_combout\ = ( \WriteData[15]~input_o\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \ALT_INV_WriteData[15]~input_o\,
	combout => \polarity[15]~feeder_combout\);

-- Location: FF_X80_Y6_N8
\polarity[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk~inputCLKENA0_outclk\,
	d => \polarity[15]~feeder_combout\,
	clrn => \nReset~input_o\,
	ena => \polarity[31]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => polarity(15));

-- Location: FF_X80_Y6_N56
\polarity[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk~inputCLKENA0_outclk\,
	asdata => \WriteData[18]~input_o\,
	clrn => \nReset~input_o\,
	sload => VCC,
	ena => \polarity[31]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => polarity(18));

-- Location: FF_X80_Y6_N14
\polarity[19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk~inputCLKENA0_outclk\,
	asdata => \WriteData[19]~input_o\,
	clrn => \nReset~input_o\,
	sload => VCC,
	ena => \polarity[31]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => polarity(19));

-- Location: FF_X80_Y6_N20
\polarity[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk~inputCLKENA0_outclk\,
	asdata => \WriteData[16]~input_o\,
	clrn => \nReset~input_o\,
	sload => VCC,
	ena => \polarity[31]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => polarity(16));

-- Location: LABCELL_X80_Y6_N36
\Equal2~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \Equal2~2_combout\ = ( !polarity(16) & ( (!polarity(17) & (!polarity(15) & (!polarity(18) & !polarity(19)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000000000000000100000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_polarity(17),
	datab => ALT_INV_polarity(15),
	datac => ALT_INV_polarity(18),
	datad => ALT_INV_polarity(19),
	dataf => ALT_INV_polarity(16),
	combout => \Equal2~2_combout\);

-- Location: FF_X80_Y6_N5
\polarity[21]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk~inputCLKENA0_outclk\,
	asdata => \WriteData[21]~input_o\,
	clrn => \nReset~input_o\,
	sload => VCC,
	ena => \polarity[31]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => polarity(21));

-- Location: FF_X80_Y6_N25
\polarity[22]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk~inputCLKENA0_outclk\,
	asdata => \WriteData[22]~input_o\,
	clrn => \nReset~input_o\,
	sload => VCC,
	ena => \polarity[31]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => polarity(22));

-- Location: FF_X80_Y6_N31
\polarity[23]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk~inputCLKENA0_outclk\,
	asdata => \WriteData[23]~input_o\,
	clrn => \nReset~input_o\,
	sload => VCC,
	ena => \polarity[31]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => polarity(23));

-- Location: FF_X80_Y6_N1
\polarity[24]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk~inputCLKENA0_outclk\,
	asdata => \WriteData[24]~input_o\,
	clrn => \nReset~input_o\,
	sload => VCC,
	ena => \polarity[31]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => polarity(24));

-- Location: FF_X81_Y6_N35
\polarity[25]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk~inputCLKENA0_outclk\,
	asdata => \WriteData[25]~input_o\,
	clrn => \nReset~input_o\,
	sload => VCC,
	ena => \polarity[31]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => polarity(25));

-- Location: LABCELL_X80_Y6_N57
\Equal2~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \Equal2~4_combout\ = ( !polarity(24) & ( !polarity(25) & ( (!polarity(21) & (!polarity(22) & !polarity(23))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1010000000000000000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_polarity(21),
	datac => ALT_INV_polarity(22),
	datad => ALT_INV_polarity(23),
	datae => ALT_INV_polarity(24),
	dataf => ALT_INV_polarity(25),
	combout => \Equal2~4_combout\);

-- Location: FF_X80_Y6_N11
\polarity[27]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk~inputCLKENA0_outclk\,
	asdata => \WriteData[27]~input_o\,
	clrn => \nReset~input_o\,
	sload => VCC,
	ena => \polarity[31]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => polarity(27));

-- Location: LABCELL_X80_Y6_N45
\polarity[30]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \polarity[30]~feeder_combout\ = ( \WriteData[30]~input_o\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \ALT_INV_WriteData[30]~input_o\,
	combout => \polarity[30]~feeder_combout\);

-- Location: FF_X80_Y6_N47
\polarity[30]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk~inputCLKENA0_outclk\,
	d => \polarity[30]~feeder_combout\,
	clrn => \nReset~input_o\,
	ena => \polarity[31]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => polarity(30));

-- Location: FF_X80_Y6_N38
\polarity[28]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk~inputCLKENA0_outclk\,
	asdata => \WriteData[28]~input_o\,
	clrn => \nReset~input_o\,
	sload => VCC,
	ena => \polarity[31]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => polarity(28));

-- Location: FF_X80_Y6_N23
\polarity[31]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk~inputCLKENA0_outclk\,
	asdata => \WriteData[31]~input_o\,
	clrn => \nReset~input_o\,
	sload => VCC,
	ena => \polarity[31]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => polarity(31));

-- Location: FF_X80_Y6_N28
\polarity[29]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk~inputCLKENA0_outclk\,
	asdata => \WriteData[29]~input_o\,
	clrn => \nReset~input_o\,
	sload => VCC,
	ena => \polarity[31]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => polarity(29));

-- Location: LABCELL_X80_Y6_N15
\Equal2~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \Equal2~3_combout\ = ( !polarity(31) & ( !polarity(29) & ( (!polarity(27) & (!polarity(30) & !polarity(28))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1100000000000000000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => ALT_INV_polarity(27),
	datac => ALT_INV_polarity(30),
	datad => ALT_INV_polarity(28),
	datae => ALT_INV_polarity(31),
	dataf => ALT_INV_polarity(29),
	combout => \Equal2~3_combout\);

-- Location: LABCELL_X80_Y6_N30
\Equal2~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \Equal2~5_combout\ = ( \Equal2~4_combout\ & ( \Equal2~3_combout\ & ( (!polarity(26) & (!polarity(20) & (!polarity(14) & \Equal2~2_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000010000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_polarity(26),
	datab => ALT_INV_polarity(20),
	datac => ALT_INV_polarity(14),
	datad => \ALT_INV_Equal2~2_combout\,
	datae => \ALT_INV_Equal2~4_combout\,
	dataf => \ALT_INV_Equal2~3_combout\,
	combout => \Equal2~5_combout\);

-- Location: LABCELL_X80_Y6_N0
\outpwm~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \outpwm~0_combout\ = ( \clk_slow~q\ & ( \Equal2~5_combout\ & ( (!polarity(0)) # (((!\Equal2~1_combout\) # (!\Equal2~0_combout\)) # (polarity(1))) ) ) ) # ( !\clk_slow~q\ & ( \Equal2~5_combout\ & ( (polarity(0) & (!polarity(1) & (\Equal2~1_combout\ & 
-- \Equal2~0_combout\))) ) ) ) # ( \clk_slow~q\ & ( !\Equal2~5_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000001001111111111111011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_polarity(0),
	datab => ALT_INV_polarity(1),
	datac => \ALT_INV_Equal2~1_combout\,
	datad => \ALT_INV_Equal2~0_combout\,
	datae => \ALT_INV_clk_slow~q\,
	dataf => \ALT_INV_Equal2~5_combout\,
	combout => \outpwm~0_combout\);

-- Location: LABCELL_X79_Y6_N57
\clk_dc~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \clk_dc~0_combout\ = ( \Equal0~6_combout\ & ( \clk_dc~q\ & ( ((\Equal1~0_combout\ & (\Equal1~6_combout\ & \Equal1~12_combout\))) # (\Equal0~12_combout\) ) ) ) # ( !\Equal0~6_combout\ & ( \clk_dc~q\ & ( (\Equal1~0_combout\ & (\Equal1~6_combout\ & 
-- \Equal1~12_combout\)) ) ) ) # ( \Equal0~6_combout\ & ( !\clk_dc~q\ & ( (\Equal1~0_combout\ & (\Equal1~6_combout\ & (\Equal1~12_combout\ & !\Equal0~12_combout\))) ) ) ) # ( !\Equal0~6_combout\ & ( !\clk_dc~q\ & ( (\Equal1~0_combout\ & (\Equal1~6_combout\ & 
-- \Equal1~12_combout\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000100000001000000010000000000000001000000010000000111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Equal1~0_combout\,
	datab => \ALT_INV_Equal1~6_combout\,
	datac => \ALT_INV_Equal1~12_combout\,
	datad => \ALT_INV_Equal0~12_combout\,
	datae => \ALT_INV_Equal0~6_combout\,
	dataf => \ALT_INV_clk_dc~q\,
	combout => \clk_dc~0_combout\);

-- Location: FF_X79_Y6_N20
clk_dc : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk~inputCLKENA0_outclk\,
	asdata => \clk_dc~0_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clk_dc~q\);

-- Location: LABCELL_X79_Y6_N15
\outpwm~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \outpwm~1_combout\ = ( \clk_slow~q\ ) # ( !\clk_slow~q\ & ( \clk_dc~q\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011111111000000001111111111111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \ALT_INV_clk_dc~q\,
	dataf => \ALT_INV_clk_slow~q\,
	combout => \outpwm~1_combout\);

-- Location: LABCELL_X80_Y6_N24
\outpwm$latch\ : cyclonev_lcell_comb
-- Equation(s):
-- \outpwm$latch~combout\ = ( \outpwm~0_combout\ & ( \outpwm~1_combout\ & ( \nReset~input_o\ ) ) ) # ( \outpwm~0_combout\ & ( !\outpwm~1_combout\ & ( (\nReset~input_o\ & \outpwm$latch~combout\) ) ) ) # ( !\outpwm~0_combout\ & ( !\outpwm~1_combout\ & ( 
-- (\nReset~input_o\ & \outpwm$latch~combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001100000011000000110000001100000000000000000011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_nReset~input_o\,
	datac => \ALT_INV_outpwm$latch~combout\,
	datae => \ALT_INV_outpwm~0_combout\,
	dataf => \ALT_INV_outpwm~1_combout\,
	combout => \outpwm$latch~combout\);

-- Location: LABCELL_X2_Y37_N3
\~QUARTUS_CREATED_GND~I\ : cyclonev_lcell_comb
-- Equation(s):

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
;
END structure;


