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

-- DATE "05/17/2023 17:11:47"

-- 
-- Device: Altera 10M50DDF484I7G Package FBGA484
-- 

-- 
-- This VHDL file should be used for Questa Intel FPGA (VHDL) only
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
-- Entrada[3]	=>  Location: PIN_B3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Entrada[2]	=>  Location: PIN_C6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Entrada[1]	=>  Location: PIN_A2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Entrada[0]	=>  Location: PIN_A3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Salidas[5]	=>  Location: PIN_C4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Salidas[4]	=>  Location: PIN_B4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Salidas[3]	=>  Location: PIN_B5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Salidas[2]	=>  Location: PIN_E8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Salidas[1]	=>  Location: PIN_B7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Salidas[0]	=>  Location: PIN_F7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Y	=>  Location: PIN_H11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- X	=>  Location: PIN_A4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- INT	=>  Location: PIN_D10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- CLK	=>  Location: PIN_M8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- RESET	=>  Location: PIN_M9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Entradaint[3]	=>  Location: PIN_D7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Entradatrans[3]	=>  Location: PIN_E9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Entradaint[2]	=>  Location: PIN_D8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Entradatrans[2]	=>  Location: PIN_D9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Entradaint[1]	=>  Location: PIN_J10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Entradatrans[1]	=>  Location: PIN_A6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Entradaint[0]	=>  Location: PIN_C7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Entradatrans[0]	=>  Location: PIN_A5,	 I/O Standard: 2.5 V,	 Current Strength: Default


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
SIGNAL \RESET~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
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
SIGNAL \Memoria|Mux6~0_combout\ : std_logic;
SIGNAL \RESET~input_o\ : std_logic;
SIGNAL \RESET~inputclkctrl_outclk\ : std_logic;
SIGNAL \Entradatrans[2]~input_o\ : std_logic;
SIGNAL \inst|inst|Add0~1_combout\ : std_logic;
SIGNAL \Entradaint[2]~input_o\ : std_logic;
SIGNAL \inst|inst4|L[2]~5_combout\ : std_logic;
SIGNAL \inst|inst4|L[2]~6_combout\ : std_logic;
SIGNAL \Memoria|Mux4~0_combout\ : std_logic;
SIGNAL \Memoria|Mux3~0_combout\ : std_logic;
SIGNAL \INT~input_o\ : std_logic;
SIGNAL \Memoria|Mux1~0_combout\ : std_logic;
SIGNAL \Memoria|Mux0~0_combout\ : std_logic;
SIGNAL \Y~input_o\ : std_logic;
SIGNAL \X~input_o\ : std_logic;
SIGNAL \muxEn|L~0_combout\ : std_logic;
SIGNAL \muxEn|L~1_combout\ : std_logic;
SIGNAL \inst|inst4|L[3]~4_combout\ : std_logic;
SIGNAL \Memoria|Mux8~0_combout\ : std_logic;
SIGNAL \Entradatrans[0]~input_o\ : std_logic;
SIGNAL \inst|inst3|internal_value[0]~0_combout\ : std_logic;
SIGNAL \Entradaint[0]~input_o\ : std_logic;
SIGNAL \inst|inst4|L[0]~9_combout\ : std_logic;
SIGNAL \inst|inst4|L[0]~10_combout\ : std_logic;
SIGNAL \Memoria|Mux2~0_combout\ : std_logic;
SIGNAL \VF|internal_value~q\ : std_logic;
SIGNAL \inst|inst4|L[3]~0_combout\ : std_logic;
SIGNAL \inst|inst|Add0~2_combout\ : std_logic;
SIGNAL \Entradatrans[1]~input_o\ : std_logic;
SIGNAL \Memoria|Mux7~0_combout\ : std_logic;
SIGNAL \Entradaint[1]~input_o\ : std_logic;
SIGNAL \inst|inst4|L[1]~7_combout\ : std_logic;
SIGNAL \inst|inst4|L[1]~8_combout\ : std_logic;
SIGNAL \inst|inst|Add0~0_combout\ : std_logic;
SIGNAL \Entradatrans[3]~input_o\ : std_logic;
SIGNAL \Entradaint[3]~input_o\ : std_logic;
SIGNAL \Memoria|Mux5~0_combout\ : std_logic;
SIGNAL \inst|inst4|L[3]~1_combout\ : std_logic;
SIGNAL \inst|inst4|L[3]~2_combout\ : std_logic;
SIGNAL \inst|inst4|L[3]~3_combout\ : std_logic;
SIGNAL \Memoria|Mux15~0_combout\ : std_logic;
SIGNAL \Memoria|Mux9~0_combout\ : std_logic;
SIGNAL \muxsalida|L[5]~0_combout\ : std_logic;
SIGNAL \Memoria|Mux16~0_combout\ : std_logic;
SIGNAL \Memoria|Mux17~0_combout\ : std_logic;
SIGNAL \Memoria|Mux18~0_combout\ : std_logic;
SIGNAL \Memoria|Mux19~0_combout\ : std_logic;
SIGNAL \Memoria|Mux20~0_combout\ : std_logic;
SIGNAL \inst|inst3|internal_value\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \SalidaV|internal_value\ : std_logic_vector(5 DOWNTO 0);
SIGNAL \Prueba|internal_value\ : std_logic_vector(1 DOWNTO 0);
SIGNAL \Transformacion|internal_value\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \MI|internal_value\ : std_logic_vector(1 DOWNTO 0);
SIGNAL \Liga|internal_value\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \salidaF|internal_value\ : std_logic_vector(5 DOWNTO 0);
SIGNAL \Interrupcion|internal_value\ : std_logic_vector(3 DOWNTO 0);

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

\RESET~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \RESET~input_o\);

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

-- Location: IOOBUF_X26_Y39_N16
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

-- Location: IOOBUF_X29_Y39_N9
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

-- Location: IOOBUF_X26_Y39_N2
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

-- Location: IOOBUF_X26_Y39_N9
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

-- Location: IOOBUF_X24_Y39_N2
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

-- Location: IOOBUF_X26_Y39_N23
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

-- Location: IOOBUF_X26_Y39_N30
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

-- Location: IOOBUF_X24_Y39_N9
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

-- Location: IOOBUF_X34_Y39_N23
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

-- Location: IOOBUF_X24_Y39_N16
\Salidas[0]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \SalidaV|internal_value\(0),
	devoe => ww_devoe,
	o => \Salidas[0]~output_o\);

-- Location: IOIBUF_X0_Y18_N15
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

-- Location: CLKCTRL_G3
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

-- Location: LCCOMB_X29_Y35_N8
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

-- Location: IOIBUF_X0_Y18_N22
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

-- Location: CLKCTRL_G4
\RESET~inputclkctrl\ : fiftyfivenm_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \RESET~inputclkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \RESET~inputclkctrl_outclk\);

-- Location: FF_X29_Y35_N9
\Liga|internal_value[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \Memoria|Mux6~0_combout\,
	clrn => \RESET~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Liga|internal_value\(2));

-- Location: IOIBUF_X31_Y39_N8
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

-- Location: FF_X30_Y35_N23
\Transformacion|internal_value[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	asdata => \Entradatrans[2]~input_o\,
	clrn => \RESET~inputclkctrl_outclk\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Transformacion|internal_value\(2));

-- Location: LCCOMB_X29_Y35_N14
\inst|inst|Add0~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|inst|Add0~1_combout\ = \inst|inst4|L[2]~6_combout\ $ (((\inst|inst4|L[0]~10_combout\ & \inst|inst4|L[1]~8_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|inst4|L[2]~6_combout\,
	datac => \inst|inst4|L[0]~10_combout\,
	datad => \inst|inst4|L[1]~8_combout\,
	combout => \inst|inst|Add0~1_combout\);

-- Location: FF_X29_Y35_N15
\inst|inst3|internal_value[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst|inst|Add0~1_combout\,
	clrn => \RESET~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|inst3|internal_value\(2));

-- Location: IOIBUF_X31_Y39_N1
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

-- Location: FF_X30_Y35_N13
\Interrupcion|internal_value[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	asdata => \Entradaint[2]~input_o\,
	clrn => \RESET~inputclkctrl_outclk\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Interrupcion|internal_value\(2));

-- Location: LCCOMB_X30_Y35_N12
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

-- Location: LCCOMB_X30_Y35_N22
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

-- Location: LCCOMB_X29_Y35_N26
\Memoria|Mux4~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Memoria|Mux4~0_combout\ = (\inst|inst4|L[0]~10_combout\ & (((\inst|inst4|L[2]~6_combout\) # (!\inst|inst4|L[1]~8_combout\)))) # (!\inst|inst4|L[0]~10_combout\ & ((\inst|inst4|L[3]~3_combout\) # ((\inst|inst4|L[2]~6_combout\ & 
-- \inst|inst4|L[1]~8_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111011111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst4|L[3]~3_combout\,
	datab => \inst|inst4|L[2]~6_combout\,
	datac => \inst|inst4|L[0]~10_combout\,
	datad => \inst|inst4|L[1]~8_combout\,
	combout => \Memoria|Mux4~0_combout\);

-- Location: FF_X29_Y35_N27
\MI|internal_value[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \Memoria|Mux4~0_combout\,
	clrn => \RESET~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MI|internal_value\(0));

-- Location: LCCOMB_X30_Y35_N0
\Memoria|Mux3~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Memoria|Mux3~0_combout\ = (\inst|inst4|L[2]~6_combout\ & (!\inst|inst4|L[3]~3_combout\ & (\inst|inst4|L[1]~8_combout\ $ (!\inst|inst4|L[0]~10_combout\)))) # (!\inst|inst4|L[2]~6_combout\ & (((\inst|inst4|L[0]~10_combout\ & \inst|inst4|L[3]~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110010010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst4|L[1]~8_combout\,
	datab => \inst|inst4|L[0]~10_combout\,
	datac => \inst|inst4|L[2]~6_combout\,
	datad => \inst|inst4|L[3]~3_combout\,
	combout => \Memoria|Mux3~0_combout\);

-- Location: FF_X30_Y35_N1
\MI|internal_value[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \Memoria|Mux3~0_combout\,
	clrn => \RESET~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MI|internal_value\(1));

-- Location: IOIBUF_X31_Y39_N29
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

-- Location: LCCOMB_X30_Y35_N2
\Memoria|Mux1~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Memoria|Mux1~0_combout\ = (\inst|inst4|L[2]~6_combout\ & ((\inst|inst4|L[3]~3_combout\) # (\inst|inst4|L[1]~8_combout\ $ (\inst|inst4|L[0]~10_combout\)))) # (!\inst|inst4|L[2]~6_combout\ & (((!\inst|inst4|L[0]~10_combout\ & 
-- \inst|inst4|L[3]~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001101100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst4|L[1]~8_combout\,
	datab => \inst|inst4|L[0]~10_combout\,
	datac => \inst|inst4|L[2]~6_combout\,
	datad => \inst|inst4|L[3]~3_combout\,
	combout => \Memoria|Mux1~0_combout\);

-- Location: FF_X30_Y35_N3
\Prueba|internal_value[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \Memoria|Mux1~0_combout\,
	clrn => \RESET~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Prueba|internal_value\(0));

-- Location: LCCOMB_X30_Y35_N4
\Memoria|Mux0~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Memoria|Mux0~0_combout\ = (\inst|inst4|L[1]~8_combout\ & ((\inst|inst4|L[2]~6_combout\) # ((!\inst|inst4|L[0]~10_combout\ & \inst|inst4|L[3]~3_combout\)))) # (!\inst|inst4|L[1]~8_combout\ & (((\inst|inst4|L[3]~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111011110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst4|L[1]~8_combout\,
	datab => \inst|inst4|L[0]~10_combout\,
	datac => \inst|inst4|L[2]~6_combout\,
	datad => \inst|inst4|L[3]~3_combout\,
	combout => \Memoria|Mux0~0_combout\);

-- Location: FF_X30_Y35_N5
\Prueba|internal_value[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \Memoria|Mux0~0_combout\,
	clrn => \RESET~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Prueba|internal_value\(1));

-- Location: IOIBUF_X34_Y39_N15
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

-- Location: IOIBUF_X31_Y39_N22
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

-- Location: LCCOMB_X30_Y35_N6
\muxEn|L~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \muxEn|L~0_combout\ = (!\Prueba|internal_value\(1) & ((\Prueba|internal_value\(0) & (\Y~input_o\)) # (!\Prueba|internal_value\(0) & ((\X~input_o\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Y~input_o\,
	datab => \X~input_o\,
	datac => \Prueba|internal_value\(1),
	datad => \Prueba|internal_value\(0),
	combout => \muxEn|L~0_combout\);

-- Location: LCCOMB_X30_Y35_N16
\muxEn|L~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \muxEn|L~1_combout\ = (\muxEn|L~0_combout\) # ((\INT~input_o\ & (!\Prueba|internal_value\(0) & \Prueba|internal_value\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \INT~input_o\,
	datab => \Prueba|internal_value\(0),
	datac => \Prueba|internal_value\(1),
	datad => \muxEn|L~0_combout\,
	combout => \muxEn|L~1_combout\);

-- Location: LCCOMB_X30_Y35_N30
\inst|inst4|L[3]~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|inst4|L[3]~4_combout\ = (\MI|internal_value\(0) & (!\MI|internal_value\(1) & (\VF|internal_value~q\ $ (!\muxEn|L~1_combout\)))) # (!\MI|internal_value\(0) & (((\MI|internal_value\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101100001010010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MI|internal_value\(0),
	datab => \VF|internal_value~q\,
	datac => \MI|internal_value\(1),
	datad => \muxEn|L~1_combout\,
	combout => \inst|inst4|L[3]~4_combout\);

-- Location: LCCOMB_X30_Y35_N28
\Memoria|Mux8~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Memoria|Mux8~0_combout\ = (!\inst|inst4|L[2]~6_combout\ & (!\inst|inst4|L[1]~8_combout\ & (\inst|inst4|L[0]~10_combout\ $ (\inst|inst4|L[3]~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst4|L[2]~6_combout\,
	datab => \inst|inst4|L[0]~10_combout\,
	datac => \inst|inst4|L[1]~8_combout\,
	datad => \inst|inst4|L[3]~3_combout\,
	combout => \Memoria|Mux8~0_combout\);

-- Location: FF_X30_Y35_N29
\Liga|internal_value[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \Memoria|Mux8~0_combout\,
	clrn => \RESET~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Liga|internal_value\(0));

-- Location: IOIBUF_X31_Y39_N15
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

-- Location: FF_X30_Y35_N9
\Transformacion|internal_value[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	asdata => \Entradatrans[0]~input_o\,
	clrn => \RESET~inputclkctrl_outclk\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Transformacion|internal_value\(0));

-- Location: LCCOMB_X31_Y35_N2
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

-- Location: FF_X31_Y35_N3
\inst|inst3|internal_value[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst|inst3|internal_value[0]~0_combout\,
	clrn => \RESET~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|inst3|internal_value\(0));

-- Location: IOIBUF_X34_Y39_N1
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

-- Location: FF_X30_Y35_N19
\Interrupcion|internal_value[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	asdata => \Entradaint[0]~input_o\,
	clrn => \RESET~inputclkctrl_outclk\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Interrupcion|internal_value\(0));

-- Location: LCCOMB_X30_Y35_N18
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

-- Location: LCCOMB_X30_Y35_N8
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

-- Location: LCCOMB_X30_Y35_N24
\Memoria|Mux2~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Memoria|Mux2~0_combout\ = (\inst|inst4|L[3]~3_combout\ & (((\inst|inst4|L[0]~10_combout\ & !\inst|inst4|L[2]~6_combout\)))) # (!\inst|inst4|L[3]~3_combout\ & (!\inst|inst4|L[1]~8_combout\ & (\inst|inst4|L[0]~10_combout\ $ (\inst|inst4|L[2]~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000010100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst4|L[1]~8_combout\,
	datab => \inst|inst4|L[0]~10_combout\,
	datac => \inst|inst4|L[2]~6_combout\,
	datad => \inst|inst4|L[3]~3_combout\,
	combout => \Memoria|Mux2~0_combout\);

-- Location: FF_X30_Y35_N25
\VF|internal_value\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \Memoria|Mux2~0_combout\,
	clrn => \RESET~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \VF|internal_value~q\);

-- Location: LCCOMB_X30_Y35_N10
\inst|inst4|L[3]~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|inst4|L[3]~0_combout\ = (\VF|internal_value~q\ $ (\muxEn|L~1_combout\)) # (!\MI|internal_value\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101111110101111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \VF|internal_value~q\,
	datac => \MI|internal_value\(0),
	datad => \muxEn|L~1_combout\,
	combout => \inst|inst4|L[3]~0_combout\);

-- Location: LCCOMB_X31_Y35_N16
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

-- Location: FF_X31_Y35_N17
\inst|inst3|internal_value[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst|inst|Add0~2_combout\,
	clrn => \RESET~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|inst3|internal_value\(1));

-- Location: IOIBUF_X34_Y39_N29
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

-- Location: FF_X30_Y35_N27
\Transformacion|internal_value[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	asdata => \Entradatrans[1]~input_o\,
	clrn => \RESET~inputclkctrl_outclk\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Transformacion|internal_value\(1));

-- Location: LCCOMB_X29_Y35_N24
\Memoria|Mux7~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Memoria|Mux7~0_combout\ = (!\inst|inst4|L[3]~3_combout\ & ((\inst|inst4|L[0]~10_combout\ & ((!\inst|inst4|L[1]~8_combout\))) # (!\inst|inst4|L[0]~10_combout\ & (\inst|inst4|L[2]~6_combout\ & \inst|inst4|L[1]~8_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst4|L[3]~3_combout\,
	datab => \inst|inst4|L[2]~6_combout\,
	datac => \inst|inst4|L[0]~10_combout\,
	datad => \inst|inst4|L[1]~8_combout\,
	combout => \Memoria|Mux7~0_combout\);

-- Location: FF_X29_Y35_N25
\Liga|internal_value[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \Memoria|Mux7~0_combout\,
	clrn => \RESET~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Liga|internal_value\(1));

-- Location: IOIBUF_X34_Y39_N8
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

-- Location: FF_X30_Y35_N21
\Interrupcion|internal_value[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	asdata => \Entradaint[1]~input_o\,
	clrn => \RESET~inputclkctrl_outclk\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Interrupcion|internal_value\(1));

-- Location: LCCOMB_X30_Y35_N20
\inst|inst4|L[1]~7\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|inst4|L[1]~7_combout\ = (\inst|inst4|L[3]~0_combout\ & (((\inst|inst4|L[3]~4_combout\)))) # (!\inst|inst4|L[3]~0_combout\ & ((\inst|inst4|L[3]~4_combout\ & (\Liga|internal_value\(1))) # (!\inst|inst4|L[3]~4_combout\ & 
-- ((\Interrupcion|internal_value\(1))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst4|L[3]~0_combout\,
	datab => \Liga|internal_value\(1),
	datac => \Interrupcion|internal_value\(1),
	datad => \inst|inst4|L[3]~4_combout\,
	combout => \inst|inst4|L[1]~7_combout\);

-- Location: LCCOMB_X30_Y35_N26
\inst|inst4|L[1]~8\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|inst4|L[1]~8_combout\ = (\inst|inst4|L[3]~0_combout\ & ((\inst|inst4|L[1]~7_combout\ & ((\Transformacion|internal_value\(1)))) # (!\inst|inst4|L[1]~7_combout\ & (\inst|inst3|internal_value\(1))))) # (!\inst|inst4|L[3]~0_combout\ & 
-- (((\inst|inst4|L[1]~7_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst4|L[3]~0_combout\,
	datab => \inst|inst3|internal_value\(1),
	datac => \Transformacion|internal_value\(1),
	datad => \inst|inst4|L[1]~7_combout\,
	combout => \inst|inst4|L[1]~8_combout\);

-- Location: LCCOMB_X29_Y35_N16
\inst|inst|Add0~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|inst|Add0~0_combout\ = \inst|inst4|L[3]~3_combout\ $ (((\inst|inst4|L[1]~8_combout\ & (\inst|inst4|L[0]~10_combout\ & \inst|inst4|L[2]~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst4|L[3]~3_combout\,
	datab => \inst|inst4|L[1]~8_combout\,
	datac => \inst|inst4|L[0]~10_combout\,
	datad => \inst|inst4|L[2]~6_combout\,
	combout => \inst|inst|Add0~0_combout\);

-- Location: FF_X29_Y35_N17
\inst|inst3|internal_value[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst|inst|Add0~0_combout\,
	clrn => \RESET~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|inst3|internal_value\(3));

-- Location: IOIBUF_X29_Y39_N1
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

-- Location: FF_X29_Y35_N11
\Transformacion|internal_value[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	asdata => \Entradatrans[3]~input_o\,
	clrn => \RESET~inputclkctrl_outclk\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Transformacion|internal_value\(3));

-- Location: IOIBUF_X29_Y39_N15
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

-- Location: FF_X29_Y35_N7
\Interrupcion|internal_value[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	asdata => \Entradaint[3]~input_o\,
	clrn => \RESET~inputclkctrl_outclk\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Interrupcion|internal_value\(3));

-- Location: LCCOMB_X29_Y35_N0
\Memoria|Mux5~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Memoria|Mux5~0_combout\ = (!\inst|inst4|L[3]~3_combout\ & (\inst|inst4|L[2]~6_combout\ & (\inst|inst4|L[0]~10_combout\ & !\inst|inst4|L[1]~8_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst4|L[3]~3_combout\,
	datab => \inst|inst4|L[2]~6_combout\,
	datac => \inst|inst4|L[0]~10_combout\,
	datad => \inst|inst4|L[1]~8_combout\,
	combout => \Memoria|Mux5~0_combout\);

-- Location: FF_X29_Y35_N1
\Liga|internal_value[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \Memoria|Mux5~0_combout\,
	clrn => \RESET~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Liga|internal_value\(3));

-- Location: LCCOMB_X29_Y35_N6
\inst|inst4|L[3]~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|inst4|L[3]~1_combout\ = (\MI|internal_value\(0) & ((\MI|internal_value\(1) & (\Interrupcion|internal_value\(3))) # (!\MI|internal_value\(1) & ((\Liga|internal_value\(3)))))) # (!\MI|internal_value\(0) & (\MI|internal_value\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110011011000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MI|internal_value\(0),
	datab => \MI|internal_value\(1),
	datac => \Interrupcion|internal_value\(3),
	datad => \Liga|internal_value\(3),
	combout => \inst|inst4|L[3]~1_combout\);

-- Location: LCCOMB_X29_Y35_N20
\inst|inst4|L[3]~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|inst4|L[3]~2_combout\ = (\inst|inst4|L[3]~1_combout\ & ((\VF|internal_value~q\ $ (!\muxEn|L~1_combout\)) # (!\MI|internal_value\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101000001110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MI|internal_value\(0),
	datab => \VF|internal_value~q\,
	datac => \inst|inst4|L[3]~1_combout\,
	datad => \muxEn|L~1_combout\,
	combout => \inst|inst4|L[3]~2_combout\);

-- Location: LCCOMB_X29_Y35_N10
\inst|inst4|L[3]~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|inst4|L[3]~3_combout\ = (\inst|inst4|L[3]~0_combout\ & ((\inst|inst4|L[3]~2_combout\ & ((\Transformacion|internal_value\(3)))) # (!\inst|inst4|L[3]~2_combout\ & (\inst|inst3|internal_value\(3))))) # (!\inst|inst4|L[3]~0_combout\ & 
-- (((\inst|inst4|L[3]~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst3|internal_value\(3),
	datab => \inst|inst4|L[3]~0_combout\,
	datac => \Transformacion|internal_value\(3),
	datad => \inst|inst4|L[3]~2_combout\,
	combout => \inst|inst4|L[3]~3_combout\);

-- Location: LCCOMB_X29_Y35_N22
\Memoria|Mux15~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Memoria|Mux15~0_combout\ = (\inst|inst4|L[3]~3_combout\ & (!\inst|inst4|L[1]~8_combout\ & (\inst|inst4|L[0]~10_combout\ $ (!\inst|inst4|L[2]~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst4|L[3]~3_combout\,
	datab => \inst|inst4|L[1]~8_combout\,
	datac => \inst|inst4|L[0]~10_combout\,
	datad => \inst|inst4|L[2]~6_combout\,
	combout => \Memoria|Mux15~0_combout\);

-- Location: FF_X29_Y35_N23
\SalidaV|internal_value[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \Memoria|Mux15~0_combout\,
	clrn => \RESET~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \SalidaV|internal_value\(5));

-- Location: LCCOMB_X29_Y35_N28
\Memoria|Mux9~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Memoria|Mux9~0_combout\ = (!\inst|inst4|L[1]~8_combout\ & ((\inst|inst4|L[2]~6_combout\ & ((\inst|inst4|L[0]~10_combout\))) # (!\inst|inst4|L[2]~6_combout\ & (\inst|inst4|L[3]~3_combout\ & !\inst|inst4|L[0]~10_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst4|L[3]~3_combout\,
	datab => \inst|inst4|L[2]~6_combout\,
	datac => \inst|inst4|L[0]~10_combout\,
	datad => \inst|inst4|L[1]~8_combout\,
	combout => \Memoria|Mux9~0_combout\);

-- Location: FF_X29_Y35_N29
\salidaF|internal_value[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \Memoria|Mux9~0_combout\,
	clrn => \RESET~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \salidaF|internal_value\(5));

-- Location: LCCOMB_X29_Y35_N18
\muxsalida|L[5]~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \muxsalida|L[5]~0_combout\ = (\muxEn|L~1_combout\ & (\SalidaV|internal_value\(5))) # (!\muxEn|L~1_combout\ & ((\salidaF|internal_value\(5))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SalidaV|internal_value\(5),
	datab => \salidaF|internal_value\(5),
	datad => \muxEn|L~1_combout\,
	combout => \muxsalida|L[5]~0_combout\);

-- Location: LCCOMB_X29_Y35_N12
\Memoria|Mux16~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Memoria|Mux16~0_combout\ = (\inst|inst4|L[2]~6_combout\ & (\inst|inst4|L[3]~3_combout\ $ (((\inst|inst4|L[0]~10_combout\) # (!\inst|inst4|L[1]~8_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101100100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst4|L[3]~3_combout\,
	datab => \inst|inst4|L[1]~8_combout\,
	datac => \inst|inst4|L[0]~10_combout\,
	datad => \inst|inst4|L[2]~6_combout\,
	combout => \Memoria|Mux16~0_combout\);

-- Location: FF_X29_Y35_N13
\SalidaV|internal_value[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \Memoria|Mux16~0_combout\,
	clrn => \RESET~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \SalidaV|internal_value\(4));

-- Location: LCCOMB_X29_Y35_N2
\Memoria|Mux17~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Memoria|Mux17~0_combout\ = (\inst|inst4|L[3]~3_combout\ & (!\inst|inst4|L[1]~8_combout\ & (\inst|inst4|L[0]~10_combout\))) # (!\inst|inst4|L[3]~3_combout\ & ((\inst|inst4|L[0]~10_combout\ & ((!\inst|inst4|L[2]~6_combout\))) # 
-- (!\inst|inst4|L[0]~10_combout\ & (\inst|inst4|L[1]~8_combout\ & \inst|inst4|L[2]~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010010001110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst4|L[3]~3_combout\,
	datab => \inst|inst4|L[1]~8_combout\,
	datac => \inst|inst4|L[0]~10_combout\,
	datad => \inst|inst4|L[2]~6_combout\,
	combout => \Memoria|Mux17~0_combout\);

-- Location: FF_X29_Y35_N3
\SalidaV|internal_value[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \Memoria|Mux17~0_combout\,
	clrn => \RESET~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \SalidaV|internal_value\(3));

-- Location: LCCOMB_X29_Y35_N4
\Memoria|Mux18~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Memoria|Mux18~0_combout\ = (\inst|inst4|L[2]~6_combout\ & (\inst|inst4|L[3]~3_combout\ & (!\inst|inst4|L[0]~10_combout\ & !\inst|inst4|L[1]~8_combout\))) # (!\inst|inst4|L[2]~6_combout\ & (\inst|inst4|L[0]~10_combout\ & (\inst|inst4|L[3]~3_combout\ $ 
-- (!\inst|inst4|L[1]~8_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000000011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst4|L[3]~3_combout\,
	datab => \inst|inst4|L[2]~6_combout\,
	datac => \inst|inst4|L[0]~10_combout\,
	datad => \inst|inst4|L[1]~8_combout\,
	combout => \Memoria|Mux18~0_combout\);

-- Location: FF_X29_Y35_N5
\SalidaV|internal_value[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \Memoria|Mux18~0_combout\,
	clrn => \RESET~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \SalidaV|internal_value\(2));

-- Location: LCCOMB_X30_Y35_N14
\Memoria|Mux19~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Memoria|Mux19~0_combout\ = (\inst|inst4|L[1]~8_combout\ & ((\inst|inst4|L[2]~6_combout\ & (!\inst|inst4|L[0]~10_combout\ & \inst|inst4|L[3]~3_combout\)) # (!\inst|inst4|L[2]~6_combout\ & ((!\inst|inst4|L[3]~3_combout\))))) # (!\inst|inst4|L[1]~8_combout\ 
-- & (\inst|inst4|L[0]~10_combout\ & ((!\inst|inst4|L[3]~3_combout\) # (!\inst|inst4|L[2]~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010010001001110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst4|L[1]~8_combout\,
	datab => \inst|inst4|L[0]~10_combout\,
	datac => \inst|inst4|L[2]~6_combout\,
	datad => \inst|inst4|L[3]~3_combout\,
	combout => \Memoria|Mux19~0_combout\);

-- Location: FF_X30_Y35_N15
\SalidaV|internal_value[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \Memoria|Mux19~0_combout\,
	clrn => \RESET~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \SalidaV|internal_value\(1));

-- Location: LCCOMB_X29_Y35_N30
\Memoria|Mux20~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Memoria|Mux20~0_combout\ = (\inst|inst4|L[2]~6_combout\ & (((!\inst|inst4|L[0]~10_combout\ & \inst|inst4|L[1]~8_combout\)))) # (!\inst|inst4|L[2]~6_combout\ & (!\inst|inst4|L[3]~3_combout\ & ((!\inst|inst4|L[1]~8_combout\) # 
-- (!\inst|inst4|L[0]~10_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110100010001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst4|L[3]~3_combout\,
	datab => \inst|inst4|L[2]~6_combout\,
	datac => \inst|inst4|L[0]~10_combout\,
	datad => \inst|inst4|L[1]~8_combout\,
	combout => \Memoria|Mux20~0_combout\);

-- Location: FF_X29_Y35_N31
\SalidaV|internal_value[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \Memoria|Mux20~0_combout\,
	clrn => \RESET~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \SalidaV|internal_value\(0));

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


