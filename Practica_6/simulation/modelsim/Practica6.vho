-- Copyright (C) 2022  Intel Corporation. All rights reserved.
-- Your use of Intel Corporation's design tools, logic functions 
-- and other software and tools, and any partner logic 
-- functions, and any output files from any of the foregoing 
-- (including device programming or simulation files), and any 
-- associated documentation or information are expressly subject 
-- to the terms and conditions of the Intel Program License 
-- Subscription Agreement, the Intel Quartus Prime License Agreement,
-- the Intel FPGA IP License Agreement, or other applicable license
-- agreement, including, without limitation, that your use is for
-- the sole purpose of programming logic devices manufactured by
-- Intel and sold by Intel or its authorized distributors.  Please
-- refer to the applicable agreement for further details, at
-- https://fpgasoftware.intel.com/eula.

-- VENDOR "Altera"
-- PROGRAM "Quartus Prime"
-- VERSION "Version 22.1std.0 Build 915 10/25/2022 SC Lite Edition"

-- DATE "05/19/2023 08:41:26"

-- 
-- Device: Altera 10M50DAF484C7G Package FBGA484
-- 

-- 
-- This VHDL file should be used for ModelSim (VHDL) only
-- 

LIBRARY FIFTYFIVENM;
LIBRARY IEEE;
USE FIFTYFIVENM.FIFTYFIVENM_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	hard_block IS
    PORT (
	devoe : IN std_logic;
	devclrn : IN std_logic;
	devpor : IN std_logic
	);
END hard_block;

-- Design Ports Information
-- ~ALTERA_TMS~	=>  Location: PIN_H2,	 I/O Standard: 2.5 V Schmitt Trigger,	 Current Strength: Default
-- ~ALTERA_TCK~	=>  Location: PIN_G2,	 I/O Standard: 2.5 V Schmitt Trigger,	 Current Strength: Default
-- ~ALTERA_TDI~	=>  Location: PIN_L4,	 I/O Standard: 2.5 V Schmitt Trigger,	 Current Strength: Default
-- ~ALTERA_TDO~	=>  Location: PIN_M5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ~ALTERA_CONFIG_SEL~	=>  Location: PIN_H10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ~ALTERA_nCONFIG~	=>  Location: PIN_H9,	 I/O Standard: 2.5 V Schmitt Trigger,	 Current Strength: Default
-- ~ALTERA_nSTATUS~	=>  Location: PIN_G9,	 I/O Standard: 2.5 V Schmitt Trigger,	 Current Strength: Default
-- ~ALTERA_CONF_DONE~	=>  Location: PIN_F8,	 I/O Standard: 2.5 V Schmitt Trigger,	 Current Strength: Default


ARCHITECTURE structure OF hard_block IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL \~ALTERA_TMS~~padout\ : std_logic;
SIGNAL \~ALTERA_TCK~~padout\ : std_logic;
SIGNAL \~ALTERA_TDI~~padout\ : std_logic;
SIGNAL \~ALTERA_CONFIG_SEL~~padout\ : std_logic;
SIGNAL \~ALTERA_nCONFIG~~padout\ : std_logic;
SIGNAL \~ALTERA_nSTATUS~~padout\ : std_logic;
SIGNAL \~ALTERA_CONF_DONE~~padout\ : std_logic;
SIGNAL \~ALTERA_TMS~~ibuf_o\ : std_logic;
SIGNAL \~ALTERA_TCK~~ibuf_o\ : std_logic;
SIGNAL \~ALTERA_TDI~~ibuf_o\ : std_logic;
SIGNAL \~ALTERA_CONFIG_SEL~~ibuf_o\ : std_logic;
SIGNAL \~ALTERA_nCONFIG~~ibuf_o\ : std_logic;
SIGNAL \~ALTERA_nSTATUS~~ibuf_o\ : std_logic;
SIGNAL \~ALTERA_CONF_DONE~~ibuf_o\ : std_logic;

BEGIN

ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;
END structure;


LIBRARY ALTERA;
LIBRARY FIFTYFIVENM;
LIBRARY IEEE;
USE ALTERA.ALTERA_PRIMITIVES_COMPONENTS.ALL;
USE FIFTYFIVENM.FIFTYFIVENM_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	Practica6 IS
    PORT (
	Entrada : OUT std_logic_vector(3 DOWNTO 0);
	CLK : IN std_logic;
	RESET : IN std_logic;
	X : IN std_logic;
	Y : IN std_logic;
	INT : IN std_logic;
	Entradaint : IN std_logic_vector(3 DOWNTO 0);
	Entradatrans : IN std_logic_vector(3 DOWNTO 0);
	Salidas : OUT std_logic_vector(5 DOWNTO 0)
	);
END Practica6;

-- Design Ports Information
-- Entrada[3]	=>  Location: PIN_V10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Entrada[2]	=>  Location: PIN_V9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Entrada[1]	=>  Location: PIN_V8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Entrada[0]	=>  Location: PIN_V7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Salidas[5]	=>  Location: PIN_C13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Salidas[4]	=>  Location: PIN_D13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Salidas[3]	=>  Location: PIN_B10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Salidas[2]	=>  Location: PIN_A10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Salidas[1]	=>  Location: PIN_A9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Salidas[0]	=>  Location: PIN_A8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Y	=>  Location: PIN_C10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- X	=>  Location: PIN_C11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- INT	=>  Location: PIN_D12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- RESET	=>  Location: PIN_A7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Entradaint[3]	=>  Location: PIN_F15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Entradatrans[3]	=>  Location: PIN_A13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Entradaint[2]	=>  Location: PIN_B14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Entradatrans[2]	=>  Location: PIN_B12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Entradaint[1]	=>  Location: PIN_A14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Entradatrans[1]	=>  Location: PIN_A12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Entradaint[0]	=>  Location: PIN_AA12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Entradatrans[0]	=>  Location: PIN_C12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- CLK	=>  Location: PIN_P11,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF Practica6 IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_Entrada : std_logic_vector(3 DOWNTO 0);
SIGNAL ww_CLK : std_logic;
SIGNAL ww_RESET : std_logic;
SIGNAL ww_X : std_logic;
SIGNAL ww_Y : std_logic;
SIGNAL ww_INT : std_logic;
SIGNAL ww_Entradaint : std_logic_vector(3 DOWNTO 0);
SIGNAL ww_Entradatrans : std_logic_vector(3 DOWNTO 0);
SIGNAL ww_Salidas : std_logic_vector(5 DOWNTO 0);
SIGNAL \~QUARTUS_CREATED_ADC1~_CHSEL_bus\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \~QUARTUS_CREATED_ADC2~_CHSEL_bus\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \inst1|cuenta[26]~clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \CLK~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \~QUARTUS_CREATED_GND~I_combout\ : std_logic;
SIGNAL \~QUARTUS_CREATED_UNVM~~busy\ : std_logic;
SIGNAL \~QUARTUS_CREATED_ADC1~~eoc\ : std_logic;
SIGNAL \~QUARTUS_CREATED_ADC2~~eoc\ : std_logic;
SIGNAL \Entrada[3]~output_o\ : std_logic;
SIGNAL \Entrada[2]~output_o\ : std_logic;
SIGNAL \Entrada[1]~output_o\ : std_logic;
SIGNAL \Entrada[0]~output_o\ : std_logic;
SIGNAL \Salidas[5]~output_o\ : std_logic;
SIGNAL \Salidas[4]~output_o\ : std_logic;
SIGNAL \Salidas[3]~output_o\ : std_logic;
SIGNAL \Salidas[2]~output_o\ : std_logic;
SIGNAL \Salidas[1]~output_o\ : std_logic;
SIGNAL \Salidas[0]~output_o\ : std_logic;
SIGNAL \CLK~input_o\ : std_logic;
SIGNAL \CLK~inputclkctrl_outclk\ : std_logic;
SIGNAL \inst1|cuenta[0]~78_combout\ : std_logic;
SIGNAL \inst1|cuenta[1]~26_combout\ : std_logic;
SIGNAL \inst1|cuenta[1]~27\ : std_logic;
SIGNAL \inst1|cuenta[2]~28_combout\ : std_logic;
SIGNAL \inst1|cuenta[2]~29\ : std_logic;
SIGNAL \inst1|cuenta[3]~30_combout\ : std_logic;
SIGNAL \inst1|cuenta[3]~31\ : std_logic;
SIGNAL \inst1|cuenta[4]~32_combout\ : std_logic;
SIGNAL \inst1|cuenta[4]~33\ : std_logic;
SIGNAL \inst1|cuenta[5]~34_combout\ : std_logic;
SIGNAL \inst1|cuenta[5]~35\ : std_logic;
SIGNAL \inst1|cuenta[6]~36_combout\ : std_logic;
SIGNAL \inst1|cuenta[6]~37\ : std_logic;
SIGNAL \inst1|cuenta[7]~38_combout\ : std_logic;
SIGNAL \inst1|cuenta[7]~39\ : std_logic;
SIGNAL \inst1|cuenta[8]~40_combout\ : std_logic;
SIGNAL \inst1|cuenta[8]~41\ : std_logic;
SIGNAL \inst1|cuenta[9]~42_combout\ : std_logic;
SIGNAL \inst1|cuenta[9]~43\ : std_logic;
SIGNAL \inst1|cuenta[10]~44_combout\ : std_logic;
SIGNAL \inst1|cuenta[10]~45\ : std_logic;
SIGNAL \inst1|cuenta[11]~46_combout\ : std_logic;
SIGNAL \inst1|cuenta[11]~47\ : std_logic;
SIGNAL \inst1|cuenta[12]~48_combout\ : std_logic;
SIGNAL \inst1|cuenta[12]~49\ : std_logic;
SIGNAL \inst1|cuenta[13]~50_combout\ : std_logic;
SIGNAL \inst1|cuenta[13]~51\ : std_logic;
SIGNAL \inst1|cuenta[14]~52_combout\ : std_logic;
SIGNAL \inst1|cuenta[14]~53\ : std_logic;
SIGNAL \inst1|cuenta[15]~54_combout\ : std_logic;
SIGNAL \inst1|cuenta[15]~55\ : std_logic;
SIGNAL \inst1|cuenta[16]~56_combout\ : std_logic;
SIGNAL \inst1|cuenta[16]~57\ : std_logic;
SIGNAL \inst1|cuenta[17]~58_combout\ : std_logic;
SIGNAL \inst1|cuenta[17]~59\ : std_logic;
SIGNAL \inst1|cuenta[18]~60_combout\ : std_logic;
SIGNAL \inst1|cuenta[18]~61\ : std_logic;
SIGNAL \inst1|cuenta[19]~62_combout\ : std_logic;
SIGNAL \inst1|cuenta[19]~63\ : std_logic;
SIGNAL \inst1|cuenta[20]~64_combout\ : std_logic;
SIGNAL \inst1|cuenta[20]~65\ : std_logic;
SIGNAL \inst1|cuenta[21]~66_combout\ : std_logic;
SIGNAL \inst1|cuenta[21]~67\ : std_logic;
SIGNAL \inst1|cuenta[22]~68_combout\ : std_logic;
SIGNAL \inst1|cuenta[22]~69\ : std_logic;
SIGNAL \inst1|cuenta[23]~70_combout\ : std_logic;
SIGNAL \inst1|cuenta[23]~71\ : std_logic;
SIGNAL \inst1|cuenta[24]~72_combout\ : std_logic;
SIGNAL \inst1|cuenta[24]~73\ : std_logic;
SIGNAL \inst1|cuenta[25]~74_combout\ : std_logic;
SIGNAL \inst1|cuenta[25]~75\ : std_logic;
SIGNAL \inst1|cuenta[26]~76_combout\ : std_logic;
SIGNAL \inst1|cuenta[26]~clkctrl_outclk\ : std_logic;
SIGNAL \inst|inst|Add0~2_combout\ : std_logic;
SIGNAL \RESET~input_o\ : std_logic;
SIGNAL \Memoria|Mux6~0_combout\ : std_logic;
SIGNAL \Entradatrans[2]~input_o\ : std_logic;
SIGNAL \inst|inst|Add0~1_combout\ : std_logic;
SIGNAL \Entradaint[2]~input_o\ : std_logic;
SIGNAL \inst|inst4|L[2]~5_combout\ : std_logic;
SIGNAL \inst|inst4|L[2]~6_combout\ : std_logic;
SIGNAL \Memoria|Mux4~0_combout\ : std_logic;
SIGNAL \Memoria|Mux0~0_combout\ : std_logic;
SIGNAL \Memoria|Mux1~0_combout\ : std_logic;
SIGNAL \INT~input_o\ : std_logic;
SIGNAL \Y~input_o\ : std_logic;
SIGNAL \X~input_o\ : std_logic;
SIGNAL \muxEn|L~0_combout\ : std_logic;
SIGNAL \muxEn|L~1_combout\ : std_logic;
SIGNAL \inst|inst4|L[3]~0_combout\ : std_logic;
SIGNAL \Entradatrans[1]~input_o\ : std_logic;
SIGNAL \Memoria|Mux7~0_combout\ : std_logic;
SIGNAL \Entradaint[1]~input_o\ : std_logic;
SIGNAL \inst|inst4|L[1]~7_combout\ : std_logic;
SIGNAL \inst|inst4|L[1]~8_combout\ : std_logic;
SIGNAL \Memoria|Mux2~0_combout\ : std_logic;
SIGNAL \VF|internal_value~q\ : std_logic;
SIGNAL \Memoria|Mux3~0_combout\ : std_logic;
SIGNAL \inst|inst4|L[3]~4_combout\ : std_logic;
SIGNAL \Memoria|Mux8~0_combout\ : std_logic;
SIGNAL \Entradatrans[0]~input_o\ : std_logic;
SIGNAL \inst|inst3|internal_value[0]~0_combout\ : std_logic;
SIGNAL \Entradaint[0]~input_o\ : std_logic;
SIGNAL \inst|inst4|L[0]~9_combout\ : std_logic;
SIGNAL \inst|inst4|L[0]~10_combout\ : std_logic;
SIGNAL \inst|inst|Add0~0_combout\ : std_logic;
SIGNAL \Memoria|Mux5~0_combout\ : std_logic;
SIGNAL \Entradaint[3]~input_o\ : std_logic;
SIGNAL \inst|inst4|L[3]~1_combout\ : std_logic;
SIGNAL \inst|inst4|L[3]~2_combout\ : std_logic;
SIGNAL \Entradatrans[3]~input_o\ : std_logic;
SIGNAL \inst|inst4|L[3]~3_combout\ : std_logic;
SIGNAL \Memoria|Mux9~0_combout\ : std_logic;
SIGNAL \Memoria|Mux15~0_combout\ : std_logic;
SIGNAL \muxsalida|L[5]~0_combout\ : std_logic;
SIGNAL \Memoria|Mux16~0_combout\ : std_logic;
SIGNAL \Memoria|Mux17~0_combout\ : std_logic;
SIGNAL \Memoria|Mux18~0_combout\ : std_logic;
SIGNAL \Memoria|Mux19~0_combout\ : std_logic;
SIGNAL \Memoria|Mux20~0_combout\ : std_logic;
SIGNAL \Memoria|Mux14~0_combout\ : std_logic;
SIGNAL \muxsalida|L[0]~1_combout\ : std_logic;
SIGNAL \SalidaV|internal_value\ : std_logic_vector(5 DOWNTO 0);
SIGNAL \inst1|cuenta\ : std_logic_vector(27 DOWNTO 0);
SIGNAL \inst|inst3|internal_value\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \Prueba|internal_value\ : std_logic_vector(1 DOWNTO 0);
SIGNAL \Transformacion|internal_value\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \MI|internal_value\ : std_logic_vector(1 DOWNTO 0);
SIGNAL \Liga|internal_value\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \Interrupcion|internal_value\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \salidaF|internal_value\ : std_logic_vector(5 DOWNTO 0);

COMPONENT hard_block
    PORT (
	devoe : IN std_logic;
	devclrn : IN std_logic;
	devpor : IN std_logic);
END COMPONENT;

BEGIN

Entrada <= ww_Entrada;
ww_CLK <= CLK;
ww_RESET <= RESET;
ww_X <= X;
ww_Y <= Y;
ww_INT <= INT;
ww_Entradaint <= Entradaint;
ww_Entradatrans <= Entradatrans;
Salidas <= ww_Salidas;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\~QUARTUS_CREATED_ADC1~_CHSEL_bus\ <= (\~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\);

\~QUARTUS_CREATED_ADC2~_CHSEL_bus\ <= (\~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\);

\inst1|cuenta[26]~clkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \inst1|cuenta\(26));

\CLK~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \CLK~input_o\);
auto_generated_inst : hard_block
PORT MAP (
	devoe => ww_devoe,
	devclrn => ww_devclrn,
	devpor => ww_devpor);

-- Location: LCCOMB_X44_Y41_N24
\~QUARTUS_CREATED_GND~I\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \~QUARTUS_CREATED_GND~I_combout\ = GND

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	combout => \~QUARTUS_CREATED_GND~I_combout\);

-- Location: IOOBUF_X31_Y0_N23
\Entrada[3]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|inst4|L[3]~3_combout\,
	devoe => ww_devoe,
	o => \Entrada[3]~output_o\);

-- Location: IOOBUF_X31_Y0_N30
\Entrada[2]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|inst4|L[2]~6_combout\,
	devoe => ww_devoe,
	o => \Entrada[2]~output_o\);

-- Location: IOOBUF_X20_Y0_N16
\Entrada[1]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|inst4|L[1]~8_combout\,
	devoe => ww_devoe,
	o => \Entrada[1]~output_o\);

-- Location: IOOBUF_X20_Y0_N23
\Entrada[0]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|inst4|L[0]~10_combout\,
	devoe => ww_devoe,
	o => \Entrada[0]~output_o\);

-- Location: IOOBUF_X58_Y54_N23
\Salidas[5]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \muxsalida|L[5]~0_combout\,
	devoe => ww_devoe,
	o => \Salidas[5]~output_o\);

-- Location: IOOBUF_X56_Y54_N30
\Salidas[4]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \SalidaV|internal_value\(4),
	devoe => ww_devoe,
	o => \Salidas[4]~output_o\);

-- Location: IOOBUF_X46_Y54_N9
\Salidas[3]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \SalidaV|internal_value\(3),
	devoe => ww_devoe,
	o => \Salidas[3]~output_o\);

-- Location: IOOBUF_X51_Y54_N16
\Salidas[2]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \SalidaV|internal_value\(2),
	devoe => ww_devoe,
	o => \Salidas[2]~output_o\);

-- Location: IOOBUF_X46_Y54_N23
\Salidas[1]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \SalidaV|internal_value\(1),
	devoe => ww_devoe,
	o => \Salidas[1]~output_o\);

-- Location: IOOBUF_X46_Y54_N2
\Salidas[0]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \muxsalida|L[0]~1_combout\,
	devoe => ww_devoe,
	o => \Salidas[0]~output_o\);

-- Location: IOIBUF_X34_Y0_N29
\CLK~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_CLK,
	o => \CLK~input_o\);

-- Location: CLKCTRL_G19
\CLK~inputclkctrl\ : fiftyfivenm_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \CLK~inputclkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \CLK~inputclkctrl_outclk\);

-- Location: LCCOMB_X77_Y40_N4
\inst1|cuenta[0]~78\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst1|cuenta[0]~78_combout\ = !\inst1|cuenta\(0)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst1|cuenta\(0),
	combout => \inst1|cuenta[0]~78_combout\);

-- Location: FF_X77_Y40_N5
\inst1|cuenta[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst1|cuenta[0]~78_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|cuenta\(0));

-- Location: LCCOMB_X77_Y40_N6
\inst1|cuenta[1]~26\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst1|cuenta[1]~26_combout\ = (\inst1|cuenta\(1) & (\inst1|cuenta\(0) $ (VCC))) # (!\inst1|cuenta\(1) & (\inst1|cuenta\(0) & VCC))
-- \inst1|cuenta[1]~27\ = CARRY((\inst1|cuenta\(1) & \inst1|cuenta\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|cuenta\(1),
	datab => \inst1|cuenta\(0),
	datad => VCC,
	combout => \inst1|cuenta[1]~26_combout\,
	cout => \inst1|cuenta[1]~27\);

-- Location: FF_X77_Y40_N7
\inst1|cuenta[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst1|cuenta[1]~26_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|cuenta\(1));

-- Location: LCCOMB_X77_Y40_N8
\inst1|cuenta[2]~28\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst1|cuenta[2]~28_combout\ = (\inst1|cuenta\(2) & (!\inst1|cuenta[1]~27\)) # (!\inst1|cuenta\(2) & ((\inst1|cuenta[1]~27\) # (GND)))
-- \inst1|cuenta[2]~29\ = CARRY((!\inst1|cuenta[1]~27\) # (!\inst1|cuenta\(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst1|cuenta\(2),
	datad => VCC,
	cin => \inst1|cuenta[1]~27\,
	combout => \inst1|cuenta[2]~28_combout\,
	cout => \inst1|cuenta[2]~29\);

-- Location: FF_X77_Y40_N9
\inst1|cuenta[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst1|cuenta[2]~28_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|cuenta\(2));

-- Location: LCCOMB_X77_Y40_N10
\inst1|cuenta[3]~30\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst1|cuenta[3]~30_combout\ = (\inst1|cuenta\(3) & (\inst1|cuenta[2]~29\ $ (GND))) # (!\inst1|cuenta\(3) & (!\inst1|cuenta[2]~29\ & VCC))
-- \inst1|cuenta[3]~31\ = CARRY((\inst1|cuenta\(3) & !\inst1|cuenta[2]~29\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|cuenta\(3),
	datad => VCC,
	cin => \inst1|cuenta[2]~29\,
	combout => \inst1|cuenta[3]~30_combout\,
	cout => \inst1|cuenta[3]~31\);

-- Location: FF_X77_Y40_N11
\inst1|cuenta[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst1|cuenta[3]~30_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|cuenta\(3));

-- Location: LCCOMB_X77_Y40_N12
\inst1|cuenta[4]~32\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst1|cuenta[4]~32_combout\ = (\inst1|cuenta\(4) & (!\inst1|cuenta[3]~31\)) # (!\inst1|cuenta\(4) & ((\inst1|cuenta[3]~31\) # (GND)))
-- \inst1|cuenta[4]~33\ = CARRY((!\inst1|cuenta[3]~31\) # (!\inst1|cuenta\(4)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|cuenta\(4),
	datad => VCC,
	cin => \inst1|cuenta[3]~31\,
	combout => \inst1|cuenta[4]~32_combout\,
	cout => \inst1|cuenta[4]~33\);

-- Location: FF_X77_Y40_N13
\inst1|cuenta[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst1|cuenta[4]~32_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|cuenta\(4));

-- Location: LCCOMB_X77_Y40_N14
\inst1|cuenta[5]~34\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst1|cuenta[5]~34_combout\ = (\inst1|cuenta\(5) & (\inst1|cuenta[4]~33\ $ (GND))) # (!\inst1|cuenta\(5) & (!\inst1|cuenta[4]~33\ & VCC))
-- \inst1|cuenta[5]~35\ = CARRY((\inst1|cuenta\(5) & !\inst1|cuenta[4]~33\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst1|cuenta\(5),
	datad => VCC,
	cin => \inst1|cuenta[4]~33\,
	combout => \inst1|cuenta[5]~34_combout\,
	cout => \inst1|cuenta[5]~35\);

-- Location: FF_X77_Y40_N15
\inst1|cuenta[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst1|cuenta[5]~34_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|cuenta\(5));

-- Location: LCCOMB_X77_Y40_N16
\inst1|cuenta[6]~36\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst1|cuenta[6]~36_combout\ = (\inst1|cuenta\(6) & (!\inst1|cuenta[5]~35\)) # (!\inst1|cuenta\(6) & ((\inst1|cuenta[5]~35\) # (GND)))
-- \inst1|cuenta[6]~37\ = CARRY((!\inst1|cuenta[5]~35\) # (!\inst1|cuenta\(6)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst1|cuenta\(6),
	datad => VCC,
	cin => \inst1|cuenta[5]~35\,
	combout => \inst1|cuenta[6]~36_combout\,
	cout => \inst1|cuenta[6]~37\);

-- Location: FF_X77_Y40_N17
\inst1|cuenta[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst1|cuenta[6]~36_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|cuenta\(6));

-- Location: LCCOMB_X77_Y40_N18
\inst1|cuenta[7]~38\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst1|cuenta[7]~38_combout\ = (\inst1|cuenta\(7) & (\inst1|cuenta[6]~37\ $ (GND))) # (!\inst1|cuenta\(7) & (!\inst1|cuenta[6]~37\ & VCC))
-- \inst1|cuenta[7]~39\ = CARRY((\inst1|cuenta\(7) & !\inst1|cuenta[6]~37\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst1|cuenta\(7),
	datad => VCC,
	cin => \inst1|cuenta[6]~37\,
	combout => \inst1|cuenta[7]~38_combout\,
	cout => \inst1|cuenta[7]~39\);

-- Location: FF_X77_Y40_N19
\inst1|cuenta[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst1|cuenta[7]~38_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|cuenta\(7));

-- Location: LCCOMB_X77_Y40_N20
\inst1|cuenta[8]~40\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst1|cuenta[8]~40_combout\ = (\inst1|cuenta\(8) & (!\inst1|cuenta[7]~39\)) # (!\inst1|cuenta\(8) & ((\inst1|cuenta[7]~39\) # (GND)))
-- \inst1|cuenta[8]~41\ = CARRY((!\inst1|cuenta[7]~39\) # (!\inst1|cuenta\(8)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst1|cuenta\(8),
	datad => VCC,
	cin => \inst1|cuenta[7]~39\,
	combout => \inst1|cuenta[8]~40_combout\,
	cout => \inst1|cuenta[8]~41\);

-- Location: FF_X77_Y40_N21
\inst1|cuenta[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst1|cuenta[8]~40_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|cuenta\(8));

-- Location: LCCOMB_X77_Y40_N22
\inst1|cuenta[9]~42\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst1|cuenta[9]~42_combout\ = (\inst1|cuenta\(9) & (\inst1|cuenta[8]~41\ $ (GND))) # (!\inst1|cuenta\(9) & (!\inst1|cuenta[8]~41\ & VCC))
-- \inst1|cuenta[9]~43\ = CARRY((\inst1|cuenta\(9) & !\inst1|cuenta[8]~41\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|cuenta\(9),
	datad => VCC,
	cin => \inst1|cuenta[8]~41\,
	combout => \inst1|cuenta[9]~42_combout\,
	cout => \inst1|cuenta[9]~43\);

-- Location: FF_X77_Y40_N23
\inst1|cuenta[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst1|cuenta[9]~42_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|cuenta\(9));

-- Location: LCCOMB_X77_Y40_N24
\inst1|cuenta[10]~44\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst1|cuenta[10]~44_combout\ = (\inst1|cuenta\(10) & (!\inst1|cuenta[9]~43\)) # (!\inst1|cuenta\(10) & ((\inst1|cuenta[9]~43\) # (GND)))
-- \inst1|cuenta[10]~45\ = CARRY((!\inst1|cuenta[9]~43\) # (!\inst1|cuenta\(10)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst1|cuenta\(10),
	datad => VCC,
	cin => \inst1|cuenta[9]~43\,
	combout => \inst1|cuenta[10]~44_combout\,
	cout => \inst1|cuenta[10]~45\);

-- Location: FF_X77_Y40_N25
\inst1|cuenta[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst1|cuenta[10]~44_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|cuenta\(10));

-- Location: LCCOMB_X77_Y40_N26
\inst1|cuenta[11]~46\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst1|cuenta[11]~46_combout\ = (\inst1|cuenta\(11) & (\inst1|cuenta[10]~45\ $ (GND))) # (!\inst1|cuenta\(11) & (!\inst1|cuenta[10]~45\ & VCC))
-- \inst1|cuenta[11]~47\ = CARRY((\inst1|cuenta\(11) & !\inst1|cuenta[10]~45\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|cuenta\(11),
	datad => VCC,
	cin => \inst1|cuenta[10]~45\,
	combout => \inst1|cuenta[11]~46_combout\,
	cout => \inst1|cuenta[11]~47\);

-- Location: FF_X77_Y40_N27
\inst1|cuenta[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst1|cuenta[11]~46_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|cuenta\(11));

-- Location: LCCOMB_X77_Y40_N28
\inst1|cuenta[12]~48\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst1|cuenta[12]~48_combout\ = (\inst1|cuenta\(12) & (!\inst1|cuenta[11]~47\)) # (!\inst1|cuenta\(12) & ((\inst1|cuenta[11]~47\) # (GND)))
-- \inst1|cuenta[12]~49\ = CARRY((!\inst1|cuenta[11]~47\) # (!\inst1|cuenta\(12)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst1|cuenta\(12),
	datad => VCC,
	cin => \inst1|cuenta[11]~47\,
	combout => \inst1|cuenta[12]~48_combout\,
	cout => \inst1|cuenta[12]~49\);

-- Location: FF_X77_Y40_N29
\inst1|cuenta[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst1|cuenta[12]~48_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|cuenta\(12));

-- Location: LCCOMB_X77_Y40_N30
\inst1|cuenta[13]~50\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst1|cuenta[13]~50_combout\ = (\inst1|cuenta\(13) & (\inst1|cuenta[12]~49\ $ (GND))) # (!\inst1|cuenta\(13) & (!\inst1|cuenta[12]~49\ & VCC))
-- \inst1|cuenta[13]~51\ = CARRY((\inst1|cuenta\(13) & !\inst1|cuenta[12]~49\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|cuenta\(13),
	datad => VCC,
	cin => \inst1|cuenta[12]~49\,
	combout => \inst1|cuenta[13]~50_combout\,
	cout => \inst1|cuenta[13]~51\);

-- Location: FF_X77_Y40_N31
\inst1|cuenta[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst1|cuenta[13]~50_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|cuenta\(13));

-- Location: LCCOMB_X77_Y39_N0
\inst1|cuenta[14]~52\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst1|cuenta[14]~52_combout\ = (\inst1|cuenta\(14) & (!\inst1|cuenta[13]~51\)) # (!\inst1|cuenta\(14) & ((\inst1|cuenta[13]~51\) # (GND)))
-- \inst1|cuenta[14]~53\ = CARRY((!\inst1|cuenta[13]~51\) # (!\inst1|cuenta\(14)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst1|cuenta\(14),
	datad => VCC,
	cin => \inst1|cuenta[13]~51\,
	combout => \inst1|cuenta[14]~52_combout\,
	cout => \inst1|cuenta[14]~53\);

-- Location: FF_X77_Y39_N1
\inst1|cuenta[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst1|cuenta[14]~52_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|cuenta\(14));

-- Location: LCCOMB_X77_Y39_N2
\inst1|cuenta[15]~54\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst1|cuenta[15]~54_combout\ = (\inst1|cuenta\(15) & (\inst1|cuenta[14]~53\ $ (GND))) # (!\inst1|cuenta\(15) & (!\inst1|cuenta[14]~53\ & VCC))
-- \inst1|cuenta[15]~55\ = CARRY((\inst1|cuenta\(15) & !\inst1|cuenta[14]~53\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst1|cuenta\(15),
	datad => VCC,
	cin => \inst1|cuenta[14]~53\,
	combout => \inst1|cuenta[15]~54_combout\,
	cout => \inst1|cuenta[15]~55\);

-- Location: FF_X77_Y39_N3
\inst1|cuenta[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst1|cuenta[15]~54_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|cuenta\(15));

-- Location: LCCOMB_X77_Y39_N4
\inst1|cuenta[16]~56\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst1|cuenta[16]~56_combout\ = (\inst1|cuenta\(16) & (!\inst1|cuenta[15]~55\)) # (!\inst1|cuenta\(16) & ((\inst1|cuenta[15]~55\) # (GND)))
-- \inst1|cuenta[16]~57\ = CARRY((!\inst1|cuenta[15]~55\) # (!\inst1|cuenta\(16)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst1|cuenta\(16),
	datad => VCC,
	cin => \inst1|cuenta[15]~55\,
	combout => \inst1|cuenta[16]~56_combout\,
	cout => \inst1|cuenta[16]~57\);

-- Location: FF_X77_Y39_N5
\inst1|cuenta[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst1|cuenta[16]~56_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|cuenta\(16));

-- Location: LCCOMB_X77_Y39_N6
\inst1|cuenta[17]~58\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst1|cuenta[17]~58_combout\ = (\inst1|cuenta\(17) & (\inst1|cuenta[16]~57\ $ (GND))) # (!\inst1|cuenta\(17) & (!\inst1|cuenta[16]~57\ & VCC))
-- \inst1|cuenta[17]~59\ = CARRY((\inst1|cuenta\(17) & !\inst1|cuenta[16]~57\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|cuenta\(17),
	datad => VCC,
	cin => \inst1|cuenta[16]~57\,
	combout => \inst1|cuenta[17]~58_combout\,
	cout => \inst1|cuenta[17]~59\);

-- Location: FF_X77_Y39_N7
\inst1|cuenta[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst1|cuenta[17]~58_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|cuenta\(17));

-- Location: LCCOMB_X77_Y39_N8
\inst1|cuenta[18]~60\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst1|cuenta[18]~60_combout\ = (\inst1|cuenta\(18) & (!\inst1|cuenta[17]~59\)) # (!\inst1|cuenta\(18) & ((\inst1|cuenta[17]~59\) # (GND)))
-- \inst1|cuenta[18]~61\ = CARRY((!\inst1|cuenta[17]~59\) # (!\inst1|cuenta\(18)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst1|cuenta\(18),
	datad => VCC,
	cin => \inst1|cuenta[17]~59\,
	combout => \inst1|cuenta[18]~60_combout\,
	cout => \inst1|cuenta[18]~61\);

-- Location: FF_X77_Y39_N9
\inst1|cuenta[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst1|cuenta[18]~60_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|cuenta\(18));

-- Location: LCCOMB_X77_Y39_N10
\inst1|cuenta[19]~62\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst1|cuenta[19]~62_combout\ = (\inst1|cuenta\(19) & (\inst1|cuenta[18]~61\ $ (GND))) # (!\inst1|cuenta\(19) & (!\inst1|cuenta[18]~61\ & VCC))
-- \inst1|cuenta[19]~63\ = CARRY((\inst1|cuenta\(19) & !\inst1|cuenta[18]~61\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|cuenta\(19),
	datad => VCC,
	cin => \inst1|cuenta[18]~61\,
	combout => \inst1|cuenta[19]~62_combout\,
	cout => \inst1|cuenta[19]~63\);

-- Location: FF_X77_Y39_N11
\inst1|cuenta[19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst1|cuenta[19]~62_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|cuenta\(19));

-- Location: LCCOMB_X77_Y39_N12
\inst1|cuenta[20]~64\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst1|cuenta[20]~64_combout\ = (\inst1|cuenta\(20) & (!\inst1|cuenta[19]~63\)) # (!\inst1|cuenta\(20) & ((\inst1|cuenta[19]~63\) # (GND)))
-- \inst1|cuenta[20]~65\ = CARRY((!\inst1|cuenta[19]~63\) # (!\inst1|cuenta\(20)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|cuenta\(20),
	datad => VCC,
	cin => \inst1|cuenta[19]~63\,
	combout => \inst1|cuenta[20]~64_combout\,
	cout => \inst1|cuenta[20]~65\);

-- Location: FF_X77_Y39_N13
\inst1|cuenta[20]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst1|cuenta[20]~64_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|cuenta\(20));

-- Location: LCCOMB_X77_Y39_N14
\inst1|cuenta[21]~66\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst1|cuenta[21]~66_combout\ = (\inst1|cuenta\(21) & (\inst1|cuenta[20]~65\ $ (GND))) # (!\inst1|cuenta\(21) & (!\inst1|cuenta[20]~65\ & VCC))
-- \inst1|cuenta[21]~67\ = CARRY((\inst1|cuenta\(21) & !\inst1|cuenta[20]~65\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst1|cuenta\(21),
	datad => VCC,
	cin => \inst1|cuenta[20]~65\,
	combout => \inst1|cuenta[21]~66_combout\,
	cout => \inst1|cuenta[21]~67\);

-- Location: FF_X77_Y39_N15
\inst1|cuenta[21]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst1|cuenta[21]~66_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|cuenta\(21));

-- Location: LCCOMB_X77_Y39_N16
\inst1|cuenta[22]~68\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst1|cuenta[22]~68_combout\ = (\inst1|cuenta\(22) & (!\inst1|cuenta[21]~67\)) # (!\inst1|cuenta\(22) & ((\inst1|cuenta[21]~67\) # (GND)))
-- \inst1|cuenta[22]~69\ = CARRY((!\inst1|cuenta[21]~67\) # (!\inst1|cuenta\(22)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst1|cuenta\(22),
	datad => VCC,
	cin => \inst1|cuenta[21]~67\,
	combout => \inst1|cuenta[22]~68_combout\,
	cout => \inst1|cuenta[22]~69\);

-- Location: FF_X77_Y39_N17
\inst1|cuenta[22]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst1|cuenta[22]~68_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|cuenta\(22));

-- Location: LCCOMB_X77_Y39_N18
\inst1|cuenta[23]~70\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst1|cuenta[23]~70_combout\ = (\inst1|cuenta\(23) & (\inst1|cuenta[22]~69\ $ (GND))) # (!\inst1|cuenta\(23) & (!\inst1|cuenta[22]~69\ & VCC))
-- \inst1|cuenta[23]~71\ = CARRY((\inst1|cuenta\(23) & !\inst1|cuenta[22]~69\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst1|cuenta\(23),
	datad => VCC,
	cin => \inst1|cuenta[22]~69\,
	combout => \inst1|cuenta[23]~70_combout\,
	cout => \inst1|cuenta[23]~71\);

-- Location: FF_X77_Y39_N19
\inst1|cuenta[23]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst1|cuenta[23]~70_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|cuenta\(23));

-- Location: LCCOMB_X77_Y39_N20
\inst1|cuenta[24]~72\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst1|cuenta[24]~72_combout\ = (\inst1|cuenta\(24) & (!\inst1|cuenta[23]~71\)) # (!\inst1|cuenta\(24) & ((\inst1|cuenta[23]~71\) # (GND)))
-- \inst1|cuenta[24]~73\ = CARRY((!\inst1|cuenta[23]~71\) # (!\inst1|cuenta\(24)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst1|cuenta\(24),
	datad => VCC,
	cin => \inst1|cuenta[23]~71\,
	combout => \inst1|cuenta[24]~72_combout\,
	cout => \inst1|cuenta[24]~73\);

-- Location: FF_X77_Y39_N21
\inst1|cuenta[24]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst1|cuenta[24]~72_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|cuenta\(24));

-- Location: LCCOMB_X77_Y39_N22
\inst1|cuenta[25]~74\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst1|cuenta[25]~74_combout\ = (\inst1|cuenta\(25) & (\inst1|cuenta[24]~73\ $ (GND))) # (!\inst1|cuenta\(25) & (!\inst1|cuenta[24]~73\ & VCC))
-- \inst1|cuenta[25]~75\ = CARRY((\inst1|cuenta\(25) & !\inst1|cuenta[24]~73\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|cuenta\(25),
	datad => VCC,
	cin => \inst1|cuenta[24]~73\,
	combout => \inst1|cuenta[25]~74_combout\,
	cout => \inst1|cuenta[25]~75\);

-- Location: FF_X77_Y39_N23
\inst1|cuenta[25]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst1|cuenta[25]~74_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|cuenta\(25));

-- Location: LCCOMB_X77_Y39_N24
\inst1|cuenta[26]~76\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst1|cuenta[26]~76_combout\ = \inst1|cuenta\(26) $ (\inst1|cuenta[25]~75\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst1|cuenta\(26),
	cin => \inst1|cuenta[25]~75\,
	combout => \inst1|cuenta[26]~76_combout\);

-- Location: FF_X77_Y39_N25
\inst1|cuenta[26]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst1|cuenta[26]~76_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|cuenta\(26));

-- Location: CLKCTRL_G8
\inst1|cuenta[26]~clkctrl\ : fiftyfivenm_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \inst1|cuenta[26]~clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \inst1|cuenta[26]~clkctrl_outclk\);

-- Location: LCCOMB_X56_Y50_N6
\inst|inst|Add0~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|inst|Add0~2_combout\ = \inst|inst4|L[1]~8_combout\ $ (\inst|inst4|L[0]~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst|inst4|L[1]~8_combout\,
	datad => \inst|inst4|L[0]~10_combout\,
	combout => \inst|inst|Add0~2_combout\);

-- Location: IOIBUF_X49_Y54_N29
\RESET~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_RESET,
	o => \RESET~input_o\);

-- Location: FF_X56_Y50_N7
\inst|inst3|internal_value[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst1|cuenta[26]~clkctrl_outclk\,
	d => \inst|inst|Add0~2_combout\,
	clrn => \RESET~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|inst3|internal_value\(1));

-- Location: LCCOMB_X54_Y50_N8
\Memoria|Mux6~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Memoria|Mux6~0_combout\ = (!\inst|inst4|L[3]~3_combout\ & (\inst|inst4|L[0]~10_combout\ & !\inst|inst4|L[2]~6_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst4|L[3]~3_combout\,
	datac => \inst|inst4|L[0]~10_combout\,
	datad => \inst|inst4|L[2]~6_combout\,
	combout => \Memoria|Mux6~0_combout\);

-- Location: FF_X54_Y50_N9
\Liga|internal_value[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst1|cuenta[26]~clkctrl_outclk\,
	d => \Memoria|Mux6~0_combout\,
	clrn => \RESET~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Liga|internal_value\(2));

-- Location: IOIBUF_X49_Y54_N1
\Entradatrans[2]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Entradatrans(2),
	o => \Entradatrans[2]~input_o\);

-- Location: FF_X55_Y50_N27
\Transformacion|internal_value[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst1|cuenta[26]~clkctrl_outclk\,
	asdata => \Entradatrans[2]~input_o\,
	clrn => \RESET~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Transformacion|internal_value\(2));

-- Location: LCCOMB_X56_Y50_N4
\inst|inst|Add0~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|inst|Add0~1_combout\ = \inst|inst4|L[2]~6_combout\ $ (((\inst|inst4|L[1]~8_combout\ & \inst|inst4|L[0]~10_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst4|L[2]~6_combout\,
	datac => \inst|inst4|L[1]~8_combout\,
	datad => \inst|inst4|L[0]~10_combout\,
	combout => \inst|inst|Add0~1_combout\);

-- Location: FF_X56_Y50_N5
\inst|inst3|internal_value[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst1|cuenta[26]~clkctrl_outclk\,
	d => \inst|inst|Add0~1_combout\,
	clrn => \RESET~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|inst3|internal_value\(2));

-- Location: IOIBUF_X56_Y54_N1
\Entradaint[2]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Entradaint(2),
	o => \Entradaint[2]~input_o\);

-- Location: FF_X55_Y50_N21
\Interrupcion|internal_value[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst1|cuenta[26]~clkctrl_outclk\,
	asdata => \Entradaint[2]~input_o\,
	clrn => \RESET~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Interrupcion|internal_value\(2));

-- Location: LCCOMB_X55_Y50_N20
\inst|inst4|L[2]~5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|inst4|L[2]~5_combout\ = (\inst|inst4|L[3]~4_combout\ & (((\inst|inst4|L[3]~0_combout\)))) # (!\inst|inst4|L[3]~4_combout\ & ((\inst|inst4|L[3]~0_combout\ & (\inst|inst3|internal_value\(2))) # (!\inst|inst4|L[3]~0_combout\ & 
-- ((\Interrupcion|internal_value\(2))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst4|L[3]~4_combout\,
	datab => \inst|inst3|internal_value\(2),
	datac => \Interrupcion|internal_value\(2),
	datad => \inst|inst4|L[3]~0_combout\,
	combout => \inst|inst4|L[2]~5_combout\);

-- Location: LCCOMB_X55_Y50_N26
\inst|inst4|L[2]~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|inst4|L[2]~6_combout\ = (\inst|inst4|L[3]~4_combout\ & ((\inst|inst4|L[2]~5_combout\ & ((\Transformacion|internal_value\(2)))) # (!\inst|inst4|L[2]~5_combout\ & (\Liga|internal_value\(2))))) # (!\inst|inst4|L[3]~4_combout\ & 
-- (((\inst|inst4|L[2]~5_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst4|L[3]~4_combout\,
	datab => \Liga|internal_value\(2),
	datac => \Transformacion|internal_value\(2),
	datad => \inst|inst4|L[2]~5_combout\,
	combout => \inst|inst4|L[2]~6_combout\);

-- Location: LCCOMB_X54_Y50_N24
\Memoria|Mux4~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Memoria|Mux4~0_combout\ = (\inst|inst4|L[0]~10_combout\ & (((\inst|inst4|L[2]~6_combout\) # (!\inst|inst4|L[1]~8_combout\)))) # (!\inst|inst4|L[0]~10_combout\ & ((\inst|inst4|L[3]~3_combout\) # ((\inst|inst4|L[1]~8_combout\ & 
-- \inst|inst4|L[2]~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111000101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst4|L[3]~3_combout\,
	datab => \inst|inst4|L[0]~10_combout\,
	datac => \inst|inst4|L[1]~8_combout\,
	datad => \inst|inst4|L[2]~6_combout\,
	combout => \Memoria|Mux4~0_combout\);

-- Location: FF_X54_Y50_N25
\MI|internal_value[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst1|cuenta[26]~clkctrl_outclk\,
	d => \Memoria|Mux4~0_combout\,
	clrn => \RESET~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MI|internal_value\(0));

-- Location: LCCOMB_X55_Y50_N6
\Memoria|Mux0~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Memoria|Mux0~0_combout\ = (\inst|inst4|L[1]~8_combout\ & ((\inst|inst4|L[2]~6_combout\) # ((!\inst|inst4|L[0]~10_combout\ & \inst|inst4|L[3]~3_combout\)))) # (!\inst|inst4|L[1]~8_combout\ & (((\inst|inst4|L[3]~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111011111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst4|L[0]~10_combout\,
	datab => \inst|inst4|L[1]~8_combout\,
	datac => \inst|inst4|L[2]~6_combout\,
	datad => \inst|inst4|L[3]~3_combout\,
	combout => \Memoria|Mux0~0_combout\);

-- Location: FF_X55_Y50_N7
\Prueba|internal_value[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst1|cuenta[26]~clkctrl_outclk\,
	d => \Memoria|Mux0~0_combout\,
	clrn => \RESET~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Prueba|internal_value\(1));

-- Location: LCCOMB_X55_Y50_N4
\Memoria|Mux1~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Memoria|Mux1~0_combout\ = (\inst|inst4|L[2]~6_combout\ & ((\inst|inst4|L[3]~3_combout\) # (\inst|inst4|L[0]~10_combout\ $ (\inst|inst4|L[1]~8_combout\)))) # (!\inst|inst4|L[2]~6_combout\ & (!\inst|inst4|L[0]~10_combout\ & 
-- ((\inst|inst4|L[3]~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010101100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst4|L[0]~10_combout\,
	datab => \inst|inst4|L[1]~8_combout\,
	datac => \inst|inst4|L[2]~6_combout\,
	datad => \inst|inst4|L[3]~3_combout\,
	combout => \Memoria|Mux1~0_combout\);

-- Location: FF_X55_Y50_N5
\Prueba|internal_value[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst1|cuenta[26]~clkctrl_outclk\,
	d => \Memoria|Mux1~0_combout\,
	clrn => \RESET~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Prueba|internal_value\(0));

-- Location: IOIBUF_X51_Y54_N1
\INT~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_INT,
	o => \INT~input_o\);

-- Location: IOIBUF_X51_Y54_N29
\Y~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Y,
	o => \Y~input_o\);

-- Location: IOIBUF_X51_Y54_N22
\X~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_X,
	o => \X~input_o\);

-- Location: LCCOMB_X55_Y50_N16
\muxEn|L~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \muxEn|L~0_combout\ = (!\Prueba|internal_value\(1) & ((\Prueba|internal_value\(0) & (\Y~input_o\)) # (!\Prueba|internal_value\(0) & ((\X~input_o\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Y~input_o\,
	datab => \X~input_o\,
	datac => \Prueba|internal_value\(0),
	datad => \Prueba|internal_value\(1),
	combout => \muxEn|L~0_combout\);

-- Location: LCCOMB_X55_Y50_N2
\muxEn|L~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \muxEn|L~1_combout\ = (\muxEn|L~0_combout\) # ((\Prueba|internal_value\(1) & (!\Prueba|internal_value\(0) & \INT~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Prueba|internal_value\(1),
	datab => \Prueba|internal_value\(0),
	datac => \INT~input_o\,
	datad => \muxEn|L~0_combout\,
	combout => \muxEn|L~1_combout\);

-- Location: LCCOMB_X55_Y50_N28
\inst|inst4|L[3]~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|inst4|L[3]~0_combout\ = (\VF|internal_value~q\ $ (\muxEn|L~1_combout\)) # (!\MI|internal_value\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111011110111011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \VF|internal_value~q\,
	datab => \MI|internal_value\(0),
	datad => \muxEn|L~1_combout\,
	combout => \inst|inst4|L[3]~0_combout\);

-- Location: IOIBUF_X54_Y54_N22
\Entradatrans[1]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Entradatrans(1),
	o => \Entradatrans[1]~input_o\);

-- Location: FF_X55_Y50_N1
\Transformacion|internal_value[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst1|cuenta[26]~clkctrl_outclk\,
	asdata => \Entradatrans[1]~input_o\,
	clrn => \RESET~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Transformacion|internal_value\(1));

-- Location: LCCOMB_X55_Y50_N24
\Memoria|Mux7~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Memoria|Mux7~0_combout\ = (!\inst|inst4|L[3]~3_combout\ & ((\inst|inst4|L[0]~10_combout\ & (!\inst|inst4|L[1]~8_combout\)) # (!\inst|inst4|L[0]~10_combout\ & (\inst|inst4|L[1]~8_combout\ & \inst|inst4|L[2]~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst4|L[0]~10_combout\,
	datab => \inst|inst4|L[1]~8_combout\,
	datac => \inst|inst4|L[2]~6_combout\,
	datad => \inst|inst4|L[3]~3_combout\,
	combout => \Memoria|Mux7~0_combout\);

-- Location: FF_X55_Y50_N25
\Liga|internal_value[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst1|cuenta[26]~clkctrl_outclk\,
	d => \Memoria|Mux7~0_combout\,
	clrn => \RESET~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Liga|internal_value\(1));

-- Location: IOIBUF_X58_Y54_N29
\Entradaint[1]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Entradaint(1),
	o => \Entradaint[1]~input_o\);

-- Location: FF_X55_Y50_N19
\Interrupcion|internal_value[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst1|cuenta[26]~clkctrl_outclk\,
	asdata => \Entradaint[1]~input_o\,
	clrn => \RESET~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Interrupcion|internal_value\(1));

-- Location: LCCOMB_X55_Y50_N18
\inst|inst4|L[1]~7\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|inst4|L[1]~7_combout\ = (\inst|inst4|L[3]~4_combout\ & ((\Liga|internal_value\(1)) # ((\inst|inst4|L[3]~0_combout\)))) # (!\inst|inst4|L[3]~4_combout\ & (((\Interrupcion|internal_value\(1) & !\inst|inst4|L[3]~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst4|L[3]~4_combout\,
	datab => \Liga|internal_value\(1),
	datac => \Interrupcion|internal_value\(1),
	datad => \inst|inst4|L[3]~0_combout\,
	combout => \inst|inst4|L[1]~7_combout\);

-- Location: LCCOMB_X55_Y50_N0
\inst|inst4|L[1]~8\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|inst4|L[1]~8_combout\ = (\inst|inst4|L[3]~0_combout\ & ((\inst|inst4|L[1]~7_combout\ & ((\Transformacion|internal_value\(1)))) # (!\inst|inst4|L[1]~7_combout\ & (\inst|inst3|internal_value\(1))))) # (!\inst|inst4|L[3]~0_combout\ & 
-- (((\inst|inst4|L[1]~7_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst3|internal_value\(1),
	datab => \inst|inst4|L[3]~0_combout\,
	datac => \Transformacion|internal_value\(1),
	datad => \inst|inst4|L[1]~7_combout\,
	combout => \inst|inst4|L[1]~8_combout\);

-- Location: LCCOMB_X54_Y50_N10
\Memoria|Mux2~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Memoria|Mux2~0_combout\ = (\inst|inst4|L[3]~3_combout\ & (\inst|inst4|L[0]~10_combout\ & ((!\inst|inst4|L[2]~6_combout\)))) # (!\inst|inst4|L[3]~3_combout\ & (!\inst|inst4|L[1]~8_combout\ & (\inst|inst4|L[0]~10_combout\ $ (\inst|inst4|L[2]~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000110001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst4|L[3]~3_combout\,
	datab => \inst|inst4|L[0]~10_combout\,
	datac => \inst|inst4|L[1]~8_combout\,
	datad => \inst|inst4|L[2]~6_combout\,
	combout => \Memoria|Mux2~0_combout\);

-- Location: FF_X54_Y50_N11
\VF|internal_value\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst1|cuenta[26]~clkctrl_outclk\,
	d => \Memoria|Mux2~0_combout\,
	clrn => \RESET~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \VF|internal_value~q\);

-- Location: LCCOMB_X54_Y50_N6
\Memoria|Mux3~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Memoria|Mux3~0_combout\ = (\inst|inst4|L[3]~3_combout\ & (\inst|inst4|L[0]~10_combout\ & ((!\inst|inst4|L[2]~6_combout\)))) # (!\inst|inst4|L[3]~3_combout\ & (\inst|inst4|L[2]~6_combout\ & (\inst|inst4|L[0]~10_combout\ $ (!\inst|inst4|L[1]~8_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst4|L[3]~3_combout\,
	datab => \inst|inst4|L[0]~10_combout\,
	datac => \inst|inst4|L[1]~8_combout\,
	datad => \inst|inst4|L[2]~6_combout\,
	combout => \Memoria|Mux3~0_combout\);

-- Location: FF_X54_Y50_N7
\MI|internal_value[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst1|cuenta[26]~clkctrl_outclk\,
	d => \Memoria|Mux3~0_combout\,
	clrn => \RESET~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MI|internal_value\(1));

-- Location: LCCOMB_X55_Y50_N22
\inst|inst4|L[3]~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|inst4|L[3]~4_combout\ = (\MI|internal_value\(0) & (!\MI|internal_value\(1) & (\VF|internal_value~q\ $ (!\muxEn|L~1_combout\)))) # (!\MI|internal_value\(0) & (((\MI|internal_value\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011100000110100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \VF|internal_value~q\,
	datab => \MI|internal_value\(0),
	datac => \MI|internal_value\(1),
	datad => \muxEn|L~1_combout\,
	combout => \inst|inst4|L[3]~4_combout\);

-- Location: LCCOMB_X54_Y50_N2
\Memoria|Mux8~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Memoria|Mux8~0_combout\ = (!\inst|inst4|L[1]~8_combout\ & (!\inst|inst4|L[2]~6_combout\ & (\inst|inst4|L[3]~3_combout\ $ (\inst|inst4|L[0]~10_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst4|L[3]~3_combout\,
	datab => \inst|inst4|L[0]~10_combout\,
	datac => \inst|inst4|L[1]~8_combout\,
	datad => \inst|inst4|L[2]~6_combout\,
	combout => \Memoria|Mux8~0_combout\);

-- Location: FF_X54_Y50_N3
\Liga|internal_value[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst1|cuenta[26]~clkctrl_outclk\,
	d => \Memoria|Mux8~0_combout\,
	clrn => \RESET~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Liga|internal_value\(0));

-- Location: IOIBUF_X54_Y54_N29
\Entradatrans[0]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Entradatrans(0),
	o => \Entradatrans[0]~input_o\);

-- Location: FF_X55_Y50_N11
\Transformacion|internal_value[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst1|cuenta[26]~clkctrl_outclk\,
	asdata => \Entradatrans[0]~input_o\,
	clrn => \RESET~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Transformacion|internal_value\(0));

-- Location: LCCOMB_X55_Y50_N14
\inst|inst3|internal_value[0]~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|inst3|internal_value[0]~0_combout\ = !\inst|inst4|L[0]~10_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst|inst4|L[0]~10_combout\,
	combout => \inst|inst3|internal_value[0]~0_combout\);

-- Location: FF_X55_Y50_N15
\inst|inst3|internal_value[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst1|cuenta[26]~clkctrl_outclk\,
	d => \inst|inst3|internal_value[0]~0_combout\,
	clrn => \RESET~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|inst3|internal_value\(0));

-- Location: IOIBUF_X40_Y0_N1
\Entradaint[0]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Entradaint(0),
	o => \Entradaint[0]~input_o\);

-- Location: FF_X55_Y50_N13
\Interrupcion|internal_value[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst1|cuenta[26]~clkctrl_outclk\,
	asdata => \Entradaint[0]~input_o\,
	clrn => \RESET~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Interrupcion|internal_value\(0));

-- Location: LCCOMB_X55_Y50_N12
\inst|inst4|L[0]~9\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|inst4|L[0]~9_combout\ = (\inst|inst4|L[3]~4_combout\ & (((\inst|inst4|L[3]~0_combout\)))) # (!\inst|inst4|L[3]~4_combout\ & ((\inst|inst4|L[3]~0_combout\ & (\inst|inst3|internal_value\(0))) # (!\inst|inst4|L[3]~0_combout\ & 
-- ((\Interrupcion|internal_value\(0))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst4|L[3]~4_combout\,
	datab => \inst|inst3|internal_value\(0),
	datac => \Interrupcion|internal_value\(0),
	datad => \inst|inst4|L[3]~0_combout\,
	combout => \inst|inst4|L[0]~9_combout\);

-- Location: LCCOMB_X55_Y50_N10
\inst|inst4|L[0]~10\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|inst4|L[0]~10_combout\ = (\inst|inst4|L[3]~4_combout\ & ((\inst|inst4|L[0]~9_combout\ & ((\Transformacion|internal_value\(0)))) # (!\inst|inst4|L[0]~9_combout\ & (\Liga|internal_value\(0))))) # (!\inst|inst4|L[3]~4_combout\ & 
-- (((\inst|inst4|L[0]~9_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst4|L[3]~4_combout\,
	datab => \Liga|internal_value\(0),
	datac => \Transformacion|internal_value\(0),
	datad => \inst|inst4|L[0]~9_combout\,
	combout => \inst|inst4|L[0]~10_combout\);

-- Location: LCCOMB_X54_Y50_N12
\inst|inst|Add0~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|inst|Add0~0_combout\ = \inst|inst4|L[3]~3_combout\ $ (((\inst|inst4|L[0]~10_combout\ & (\inst|inst4|L[1]~8_combout\ & \inst|inst4|L[2]~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst4|L[3]~3_combout\,
	datab => \inst|inst4|L[0]~10_combout\,
	datac => \inst|inst4|L[1]~8_combout\,
	datad => \inst|inst4|L[2]~6_combout\,
	combout => \inst|inst|Add0~0_combout\);

-- Location: FF_X54_Y50_N13
\inst|inst3|internal_value[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst1|cuenta[26]~clkctrl_outclk\,
	d => \inst|inst|Add0~0_combout\,
	clrn => \RESET~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|inst3|internal_value\(3));

-- Location: LCCOMB_X54_Y50_N30
\Memoria|Mux5~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Memoria|Mux5~0_combout\ = (!\inst|inst4|L[3]~3_combout\ & (\inst|inst4|L[0]~10_combout\ & (!\inst|inst4|L[1]~8_combout\ & \inst|inst4|L[2]~6_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst4|L[3]~3_combout\,
	datab => \inst|inst4|L[0]~10_combout\,
	datac => \inst|inst4|L[1]~8_combout\,
	datad => \inst|inst4|L[2]~6_combout\,
	combout => \Memoria|Mux5~0_combout\);

-- Location: FF_X54_Y50_N31
\Liga|internal_value[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst1|cuenta[26]~clkctrl_outclk\,
	d => \Memoria|Mux5~0_combout\,
	clrn => \RESET~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Liga|internal_value\(3));

-- Location: IOIBUF_X69_Y54_N1
\Entradaint[3]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Entradaint(3),
	o => \Entradaint[3]~input_o\);

-- Location: FF_X54_Y50_N29
\Interrupcion|internal_value[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst1|cuenta[26]~clkctrl_outclk\,
	asdata => \Entradaint[3]~input_o\,
	clrn => \RESET~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Interrupcion|internal_value\(3));

-- Location: LCCOMB_X54_Y50_N28
\inst|inst4|L[3]~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|inst4|L[3]~1_combout\ = (\MI|internal_value\(0) & ((\MI|internal_value\(1) & ((\Interrupcion|internal_value\(3)))) # (!\MI|internal_value\(1) & (\Liga|internal_value\(3))))) # (!\MI|internal_value\(0) & (((\MI|internal_value\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Liga|internal_value\(3),
	datab => \MI|internal_value\(0),
	datac => \Interrupcion|internal_value\(3),
	datad => \MI|internal_value\(1),
	combout => \inst|inst4|L[3]~1_combout\);

-- Location: LCCOMB_X54_Y50_N16
\inst|inst4|L[3]~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|inst4|L[3]~2_combout\ = (\inst|inst4|L[3]~1_combout\ & ((\VF|internal_value~q\ $ (!\muxEn|L~1_combout\)) # (!\MI|internal_value\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011000001110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \VF|internal_value~q\,
	datab => \MI|internal_value\(0),
	datac => \inst|inst4|L[3]~1_combout\,
	datad => \muxEn|L~1_combout\,
	combout => \inst|inst4|L[3]~2_combout\);

-- Location: IOIBUF_X54_Y54_N15
\Entradatrans[3]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Entradatrans(3),
	o => \Entradatrans[3]~input_o\);

-- Location: FF_X54_Y50_N23
\Transformacion|internal_value[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst1|cuenta[26]~clkctrl_outclk\,
	asdata => \Entradatrans[3]~input_o\,
	clrn => \RESET~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Transformacion|internal_value\(3));

-- Location: LCCOMB_X54_Y50_N22
\inst|inst4|L[3]~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|inst4|L[3]~3_combout\ = (\inst|inst4|L[3]~2_combout\ & (((\Transformacion|internal_value\(3)) # (!\inst|inst4|L[3]~0_combout\)))) # (!\inst|inst4|L[3]~2_combout\ & (\inst|inst3|internal_value\(3) & ((\inst|inst4|L[3]~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst3|internal_value\(3),
	datab => \inst|inst4|L[3]~2_combout\,
	datac => \Transformacion|internal_value\(3),
	datad => \inst|inst4|L[3]~0_combout\,
	combout => \inst|inst4|L[3]~3_combout\);

-- Location: LCCOMB_X54_Y50_N18
\Memoria|Mux9~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Memoria|Mux9~0_combout\ = (\inst|inst4|L[3]~3_combout\ & (!\inst|inst4|L[1]~8_combout\ & ((\inst|inst4|L[0]~10_combout\) # (!\inst|inst4|L[2]~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst4|L[3]~3_combout\,
	datab => \inst|inst4|L[0]~10_combout\,
	datac => \inst|inst4|L[1]~8_combout\,
	datad => \inst|inst4|L[2]~6_combout\,
	combout => \Memoria|Mux9~0_combout\);

-- Location: FF_X54_Y50_N19
\salidaF|internal_value[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst1|cuenta[26]~clkctrl_outclk\,
	d => \Memoria|Mux9~0_combout\,
	clrn => \RESET~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \salidaF|internal_value\(5));

-- Location: LCCOMB_X54_Y50_N4
\Memoria|Mux15~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Memoria|Mux15~0_combout\ = (!\inst|inst4|L[1]~8_combout\ & ((\inst|inst4|L[0]~10_combout\ & ((\inst|inst4|L[2]~6_combout\))) # (!\inst|inst4|L[0]~10_combout\ & (\inst|inst4|L[3]~3_combout\ & !\inst|inst4|L[2]~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst4|L[3]~3_combout\,
	datab => \inst|inst4|L[0]~10_combout\,
	datac => \inst|inst4|L[1]~8_combout\,
	datad => \inst|inst4|L[2]~6_combout\,
	combout => \Memoria|Mux15~0_combout\);

-- Location: FF_X54_Y50_N5
\SalidaV|internal_value[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst1|cuenta[26]~clkctrl_outclk\,
	d => \Memoria|Mux15~0_combout\,
	clrn => \RESET~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \SalidaV|internal_value\(5));

-- Location: LCCOMB_X58_Y50_N4
\muxsalida|L[5]~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \muxsalida|L[5]~0_combout\ = (\muxEn|L~1_combout\ & ((\SalidaV|internal_value\(5)))) # (!\muxEn|L~1_combout\ & (\salidaF|internal_value\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \salidaF|internal_value\(5),
	datac => \muxEn|L~1_combout\,
	datad => \SalidaV|internal_value\(5),
	combout => \muxsalida|L[5]~0_combout\);

-- Location: LCCOMB_X54_Y50_N20
\Memoria|Mux16~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Memoria|Mux16~0_combout\ = (\inst|inst4|L[2]~6_combout\ & (\inst|inst4|L[3]~3_combout\ $ (((\inst|inst4|L[0]~10_combout\) # (!\inst|inst4|L[1]~8_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst4|L[3]~3_combout\,
	datab => \inst|inst4|L[0]~10_combout\,
	datac => \inst|inst4|L[1]~8_combout\,
	datad => \inst|inst4|L[2]~6_combout\,
	combout => \Memoria|Mux16~0_combout\);

-- Location: FF_X54_Y50_N21
\SalidaV|internal_value[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst1|cuenta[26]~clkctrl_outclk\,
	d => \Memoria|Mux16~0_combout\,
	clrn => \RESET~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \SalidaV|internal_value\(4));

-- Location: LCCOMB_X54_Y50_N14
\Memoria|Mux17~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Memoria|Mux17~0_combout\ = (\inst|inst4|L[3]~3_combout\ & (\inst|inst4|L[0]~10_combout\ & (!\inst|inst4|L[1]~8_combout\))) # (!\inst|inst4|L[3]~3_combout\ & ((\inst|inst4|L[0]~10_combout\ & ((!\inst|inst4|L[2]~6_combout\))) # 
-- (!\inst|inst4|L[0]~10_combout\ & (\inst|inst4|L[1]~8_combout\ & \inst|inst4|L[2]~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001100001001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst4|L[3]~3_combout\,
	datab => \inst|inst4|L[0]~10_combout\,
	datac => \inst|inst4|L[1]~8_combout\,
	datad => \inst|inst4|L[2]~6_combout\,
	combout => \Memoria|Mux17~0_combout\);

-- Location: FF_X54_Y50_N15
\SalidaV|internal_value[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst1|cuenta[26]~clkctrl_outclk\,
	d => \Memoria|Mux17~0_combout\,
	clrn => \RESET~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \SalidaV|internal_value\(3));

-- Location: LCCOMB_X54_Y50_N0
\Memoria|Mux18~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Memoria|Mux18~0_combout\ = (\inst|inst4|L[0]~10_combout\ & (!\inst|inst4|L[2]~6_combout\ & (\inst|inst4|L[3]~3_combout\ $ (!\inst|inst4|L[1]~8_combout\)))) # (!\inst|inst4|L[0]~10_combout\ & (\inst|inst4|L[3]~3_combout\ & (!\inst|inst4|L[1]~8_combout\ & 
-- \inst|inst4|L[2]~6_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001010000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst4|L[3]~3_combout\,
	datab => \inst|inst4|L[0]~10_combout\,
	datac => \inst|inst4|L[1]~8_combout\,
	datad => \inst|inst4|L[2]~6_combout\,
	combout => \Memoria|Mux18~0_combout\);

-- Location: FF_X54_Y50_N1
\SalidaV|internal_value[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst1|cuenta[26]~clkctrl_outclk\,
	d => \Memoria|Mux18~0_combout\,
	clrn => \RESET~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \SalidaV|internal_value\(2));

-- Location: LCCOMB_X54_Y50_N26
\Memoria|Mux19~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Memoria|Mux19~0_combout\ = (\inst|inst4|L[1]~8_combout\ & ((\inst|inst4|L[3]~3_combout\ & (!\inst|inst4|L[0]~10_combout\ & \inst|inst4|L[2]~6_combout\)) # (!\inst|inst4|L[3]~3_combout\ & ((!\inst|inst4|L[2]~6_combout\))))) # (!\inst|inst4|L[1]~8_combout\ 
-- & (\inst|inst4|L[0]~10_combout\ & ((!\inst|inst4|L[2]~6_combout\) # (!\inst|inst4|L[3]~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010010001011100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst4|L[3]~3_combout\,
	datab => \inst|inst4|L[0]~10_combout\,
	datac => \inst|inst4|L[1]~8_combout\,
	datad => \inst|inst4|L[2]~6_combout\,
	combout => \Memoria|Mux19~0_combout\);

-- Location: FF_X54_Y50_N27
\SalidaV|internal_value[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst1|cuenta[26]~clkctrl_outclk\,
	d => \Memoria|Mux19~0_combout\,
	clrn => \RESET~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \SalidaV|internal_value\(1));

-- Location: LCCOMB_X55_Y50_N8
\Memoria|Mux20~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Memoria|Mux20~0_combout\ = (\inst|inst4|L[0]~10_combout\ & (!\inst|inst4|L[3]~3_combout\ & (\inst|inst4|L[1]~8_combout\ $ (!\inst|inst4|L[2]~6_combout\)))) # (!\inst|inst4|L[0]~10_combout\ & ((\inst|inst4|L[2]~6_combout\ & 
-- ((\inst|inst4|L[1]~8_combout\))) # (!\inst|inst4|L[2]~6_combout\ & (!\inst|inst4|L[3]~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111000000010011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst4|L[0]~10_combout\,
	datab => \inst|inst4|L[3]~3_combout\,
	datac => \inst|inst4|L[1]~8_combout\,
	datad => \inst|inst4|L[2]~6_combout\,
	combout => \Memoria|Mux20~0_combout\);

-- Location: FF_X55_Y50_N9
\SalidaV|internal_value[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst1|cuenta[26]~clkctrl_outclk\,
	d => \Memoria|Mux20~0_combout\,
	clrn => \RESET~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \SalidaV|internal_value\(0));

-- Location: LCCOMB_X55_Y50_N30
\Memoria|Mux14~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Memoria|Mux14~0_combout\ = (\inst|inst4|L[0]~10_combout\ & (!\inst|inst4|L[1]~8_combout\ & (!\inst|inst4|L[2]~6_combout\))) # (!\inst|inst4|L[0]~10_combout\ & ((\inst|inst4|L[2]~6_combout\ & (\inst|inst4|L[1]~8_combout\)) # (!\inst|inst4|L[2]~6_combout\ 
-- & ((!\inst|inst4|L[3]~3_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100001001000111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst4|L[0]~10_combout\,
	datab => \inst|inst4|L[1]~8_combout\,
	datac => \inst|inst4|L[2]~6_combout\,
	datad => \inst|inst4|L[3]~3_combout\,
	combout => \Memoria|Mux14~0_combout\);

-- Location: FF_X55_Y50_N31
\salidaF|internal_value[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst1|cuenta[26]~clkctrl_outclk\,
	d => \Memoria|Mux14~0_combout\,
	clrn => \RESET~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \salidaF|internal_value\(0));

-- Location: LCCOMB_X51_Y50_N28
\muxsalida|L[0]~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \muxsalida|L[0]~1_combout\ = (\muxEn|L~1_combout\ & (\SalidaV|internal_value\(0))) # (!\muxEn|L~1_combout\ & ((\salidaF|internal_value\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \SalidaV|internal_value\(0),
	datac => \muxEn|L~1_combout\,
	datad => \salidaF|internal_value\(0),
	combout => \muxsalida|L[0]~1_combout\);

-- Location: UNVM_X0_Y40_N40
\~QUARTUS_CREATED_UNVM~\ : fiftyfivenm_unvm
-- pragma translate_off
GENERIC MAP (
	addr_range1_end_addr => -1,
	addr_range1_offset => -1,
	addr_range2_end_addr => -1,
	addr_range2_offset => -1,
	addr_range3_offset => -1,
	is_compressed_image => "false",
	is_dual_boot => "false",
	is_eram_skip => "false",
	max_ufm_valid_addr => -1,
	max_valid_addr => -1,
	min_ufm_valid_addr => -1,
	min_valid_addr => -1,
	part_name => "quartus_created_unvm",
	reserve_block => "true")
-- pragma translate_on
PORT MAP (
	nosc_ena => \~QUARTUS_CREATED_GND~I_combout\,
	xe_ye => \~QUARTUS_CREATED_GND~I_combout\,
	se => \~QUARTUS_CREATED_GND~I_combout\,
	busy => \~QUARTUS_CREATED_UNVM~~busy\);

-- Location: ADCBLOCK_X43_Y52_N0
\~QUARTUS_CREATED_ADC1~\ : fiftyfivenm_adcblock
-- pragma translate_off
GENERIC MAP (
	analog_input_pin_mask => 0,
	clkdiv => 1,
	device_partname_fivechar_prefix => "none",
	is_this_first_or_second_adc => 1,
	prescalar => 0,
	pwd => 1,
	refsel => 0,
	reserve_block => "true",
	testbits => 66,
	tsclkdiv => 1,
	tsclksel => 0)
-- pragma translate_on
PORT MAP (
	soc => \~QUARTUS_CREATED_GND~I_combout\,
	usr_pwd => VCC,
	tsen => \~QUARTUS_CREATED_GND~I_combout\,
	chsel => \~QUARTUS_CREATED_ADC1~_CHSEL_bus\,
	eoc => \~QUARTUS_CREATED_ADC1~~eoc\);

-- Location: ADCBLOCK_X43_Y51_N0
\~QUARTUS_CREATED_ADC2~\ : fiftyfivenm_adcblock
-- pragma translate_off
GENERIC MAP (
	analog_input_pin_mask => 0,
	clkdiv => 1,
	device_partname_fivechar_prefix => "none",
	is_this_first_or_second_adc => 2,
	prescalar => 0,
	pwd => 1,
	refsel => 0,
	reserve_block => "true",
	testbits => 66,
	tsclkdiv => 1,
	tsclksel => 0)
-- pragma translate_on
PORT MAP (
	soc => \~QUARTUS_CREATED_GND~I_combout\,
	usr_pwd => VCC,
	tsen => \~QUARTUS_CREATED_GND~I_combout\,
	chsel => \~QUARTUS_CREATED_ADC2~_CHSEL_bus\,
	eoc => \~QUARTUS_CREATED_ADC2~~eoc\);

ww_Entrada(3) <= \Entrada[3]~output_o\;

ww_Entrada(2) <= \Entrada[2]~output_o\;

ww_Entrada(1) <= \Entrada[1]~output_o\;

ww_Entrada(0) <= \Entrada[0]~output_o\;

ww_Salidas(5) <= \Salidas[5]~output_o\;

ww_Salidas(4) <= \Salidas[4]~output_o\;

ww_Salidas(3) <= \Salidas[3]~output_o\;

ww_Salidas(2) <= \Salidas[2]~output_o\;

ww_Salidas(1) <= \Salidas[1]~output_o\;

ww_Salidas(0) <= \Salidas[0]~output_o\;
END structure;


