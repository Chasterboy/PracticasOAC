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

-- DATE "03/20/2023 02:23:10"

-- 
-- Device: Altera 10M50DAF484C7G Package FBGA484
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

ENTITY 	P3_OAC IS
    PORT (
	edoPres : OUT std_logic_vector(2 DOWNTO 0);
	CLK : IN std_logic;
	RESET : IN std_logic;
	entradaA : IN std_logic_vector(2 DOWNTO 0);
	liga : OUT std_logic_vector(2 DOWNTO 0);
	salidas : OUT std_logic_vector(2 DOWNTO 0)
	);
END P3_OAC;

-- Design Ports Information
-- edoPres[2]	=>  Location: PIN_B12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- edoPres[1]	=>  Location: PIN_H12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- edoPres[0]	=>  Location: PIN_B10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- liga[2]	=>  Location: PIN_J11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- liga[1]	=>  Location: PIN_B11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- liga[0]	=>  Location: PIN_A11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- salidas[2]	=>  Location: PIN_A10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- salidas[1]	=>  Location: PIN_A9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- salidas[0]	=>  Location: PIN_A8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- entradaA[0]	=>  Location: PIN_C10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- entradaA[2]	=>  Location: PIN_D12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- entradaA[1]	=>  Location: PIN_C11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- CLK	=>  Location: PIN_P11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- RESET	=>  Location: PIN_A7,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF P3_OAC IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_edoPres : std_logic_vector(2 DOWNTO 0);
SIGNAL ww_CLK : std_logic;
SIGNAL ww_RESET : std_logic;
SIGNAL ww_entradaA : std_logic_vector(2 DOWNTO 0);
SIGNAL ww_liga : std_logic_vector(2 DOWNTO 0);
SIGNAL ww_salidas : std_logic_vector(2 DOWNTO 0);
SIGNAL \~QUARTUS_CREATED_ADC1~_CHSEL_bus\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \~QUARTUS_CREATED_ADC2~_CHSEL_bus\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \CLK~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \~QUARTUS_CREATED_GND~I_combout\ : std_logic;
SIGNAL \~QUARTUS_CREATED_UNVM~~busy\ : std_logic;
SIGNAL \~QUARTUS_CREATED_ADC1~~eoc\ : std_logic;
SIGNAL \~QUARTUS_CREATED_ADC2~~eoc\ : std_logic;
SIGNAL \edoPres[2]~output_o\ : std_logic;
SIGNAL \edoPres[1]~output_o\ : std_logic;
SIGNAL \edoPres[0]~output_o\ : std_logic;
SIGNAL \liga[2]~output_o\ : std_logic;
SIGNAL \liga[1]~output_o\ : std_logic;
SIGNAL \liga[0]~output_o\ : std_logic;
SIGNAL \salidas[2]~output_o\ : std_logic;
SIGNAL \salidas[1]~output_o\ : std_logic;
SIGNAL \salidas[0]~output_o\ : std_logic;
SIGNAL \CLK~input_o\ : std_logic;
SIGNAL \CLK~inputclkctrl_outclk\ : std_logic;
SIGNAL \entradaA[2]~input_o\ : std_logic;
SIGNAL \entradaA[1]~input_o\ : std_logic;
SIGNAL \inst2|Mux2~0_combout\ : std_logic;
SIGNAL \entradaA[0]~input_o\ : std_logic;
SIGNAL \inst2|Mux2~1_combout\ : std_logic;
SIGNAL \inst2|Mux2~2_combout\ : std_logic;
SIGNAL \RESET~input_o\ : std_logic;
SIGNAL \inst2|Mux1~0_combout\ : std_logic;
SIGNAL \inst2|Mux1~1_combout\ : std_logic;
SIGNAL \inst2|Mux1~2_combout\ : std_logic;
SIGNAL \inst2|Mux0~0_combout\ : std_logic;
SIGNAL \inst2|Mux0~1_combout\ : std_logic;
SIGNAL \inst2|Mux0~2_combout\ : std_logic;
SIGNAL \inst6|internal_value[2]~0_combout\ : std_logic;
SIGNAL \inst2|Mux3~1_combout\ : std_logic;
SIGNAL \inst2|Mux3~0_combout\ : std_logic;
SIGNAL \inst2|Mux3~2_combout\ : std_logic;
SIGNAL \inst2|Mux4~0_combout\ : std_logic;
SIGNAL \inst2|Mux5~0_combout\ : std_logic;
SIGNAL \inst2|Mux5~1_combout\ : std_logic;
SIGNAL \inst6|internal_value\ : std_logic_vector(2 DOWNTO 0);
SIGNAL \inst2|ALT_INV_Mux4~0_combout\ : std_logic;
SIGNAL \inst2|ALT_INV_Mux0~2_combout\ : std_logic;

COMPONENT hard_block
    PORT (
	devoe : IN std_logic;
	devclrn : IN std_logic;
	devpor : IN std_logic);
END COMPONENT;

BEGIN

edoPres <= ww_edoPres;
ww_CLK <= CLK;
ww_RESET <= RESET;
ww_entradaA <= entradaA;
liga <= ww_liga;
salidas <= ww_salidas;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\~QUARTUS_CREATED_ADC1~_CHSEL_bus\ <= (\~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\);

\~QUARTUS_CREATED_ADC2~_CHSEL_bus\ <= (\~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\);

\CLK~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \CLK~input_o\);
\inst2|ALT_INV_Mux4~0_combout\ <= NOT \inst2|Mux4~0_combout\;
\inst2|ALT_INV_Mux0~2_combout\ <= NOT \inst2|Mux0~2_combout\;
auto_generated_inst : hard_block
PORT MAP (
	devoe => ww_devoe,
	devclrn => ww_devclrn,
	devpor => ww_devpor);

-- Location: LCCOMB_X44_Y52_N4
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

-- Location: IOOBUF_X49_Y54_N2
\edoPres[2]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst6|internal_value\(2),
	devoe => ww_devoe,
	o => \edoPres[2]~output_o\);

-- Location: IOOBUF_X49_Y54_N16
\edoPres[1]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst6|internal_value\(1),
	devoe => ww_devoe,
	o => \edoPres[1]~output_o\);

-- Location: IOOBUF_X46_Y54_N9
\edoPres[0]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst6|internal_value\(0),
	devoe => ww_devoe,
	o => \edoPres[0]~output_o\);

-- Location: IOOBUF_X49_Y54_N23
\liga[2]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst2|ALT_INV_Mux0~2_combout\,
	devoe => ww_devoe,
	o => \liga[2]~output_o\);

-- Location: IOOBUF_X49_Y54_N9
\liga[1]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst2|Mux1~2_combout\,
	devoe => ww_devoe,
	o => \liga[1]~output_o\);

-- Location: IOOBUF_X51_Y54_N9
\liga[0]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst2|Mux2~2_combout\,
	devoe => ww_devoe,
	o => \liga[0]~output_o\);

-- Location: IOOBUF_X51_Y54_N16
\salidas[2]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst2|Mux3~2_combout\,
	devoe => ww_devoe,
	o => \salidas[2]~output_o\);

-- Location: IOOBUF_X46_Y54_N23
\salidas[1]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst2|ALT_INV_Mux4~0_combout\,
	devoe => ww_devoe,
	o => \salidas[1]~output_o\);

-- Location: IOOBUF_X46_Y54_N2
\salidas[0]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst2|Mux5~1_combout\,
	devoe => ww_devoe,
	o => \salidas[0]~output_o\);

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

-- Location: IOIBUF_X51_Y54_N1
\entradaA[2]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_entradaA(2),
	o => \entradaA[2]~input_o\);

-- Location: IOIBUF_X51_Y54_N22
\entradaA[1]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_entradaA(1),
	o => \entradaA[1]~input_o\);

-- Location: LCCOMB_X50_Y53_N30
\inst2|Mux2~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst2|Mux2~0_combout\ = (\inst6|internal_value\(1) & (((!\inst6|internal_value\(0))))) # (!\inst6|internal_value\(1) & ((\inst6|internal_value\(0) & ((!\entradaA[1]~input_o\))) # (!\inst6|internal_value\(0) & (\entradaA[2]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001111111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \entradaA[2]~input_o\,
	datab => \entradaA[1]~input_o\,
	datac => \inst6|internal_value\(1),
	datad => \inst6|internal_value\(0),
	combout => \inst2|Mux2~0_combout\);

-- Location: IOIBUF_X51_Y54_N29
\entradaA[0]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_entradaA(0),
	o => \entradaA[0]~input_o\);

-- Location: LCCOMB_X50_Y53_N20
\inst2|Mux2~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst2|Mux2~1_combout\ = (\entradaA[2]~input_o\ & (!\inst6|internal_value\(0) & (!\entradaA[0]~input_o\))) # (!\entradaA[2]~input_o\ & (\inst6|internal_value\(2) & ((\inst6|internal_value\(0)) # (!\entradaA[0]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100011100000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \entradaA[2]~input_o\,
	datab => \inst6|internal_value\(0),
	datac => \entradaA[0]~input_o\,
	datad => \inst6|internal_value\(2),
	combout => \inst2|Mux2~1_combout\);

-- Location: LCCOMB_X50_Y53_N22
\inst2|Mux2~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst2|Mux2~2_combout\ = (\inst6|internal_value\(1) & (!\inst6|internal_value\(2) & (\inst2|Mux2~0_combout\))) # (!\inst6|internal_value\(1) & ((\inst2|Mux2~1_combout\) # ((!\inst6|internal_value\(2) & \inst2|Mux2~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111010100110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|internal_value\(1),
	datab => \inst6|internal_value\(2),
	datac => \inst2|Mux2~0_combout\,
	datad => \inst2|Mux2~1_combout\,
	combout => \inst2|Mux2~2_combout\);

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

-- Location: FF_X50_Y53_N17
\inst6|internal_value[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	asdata => \inst2|Mux2~2_combout\,
	clrn => \RESET~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst6|internal_value\(0));

-- Location: LCCOMB_X50_Y53_N4
\inst2|Mux1~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst2|Mux1~0_combout\ = (\inst6|internal_value\(2) & (!\entradaA[2]~input_o\)) # (!\inst6|internal_value\(2) & (((!\entradaA[0]~input_o\ & \entradaA[1]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010100110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \entradaA[2]~input_o\,
	datab => \entradaA[0]~input_o\,
	datac => \entradaA[1]~input_o\,
	datad => \inst6|internal_value\(2),
	combout => \inst2|Mux1~0_combout\);

-- Location: LCCOMB_X50_Y53_N18
\inst2|Mux1~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst2|Mux1~1_combout\ = (\inst6|internal_value\(1) & ((!\inst6|internal_value\(2)))) # (!\inst6|internal_value\(1) & (\entradaA[0]~input_o\ & \inst6|internal_value\(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \entradaA[0]~input_o\,
	datac => \inst6|internal_value\(1),
	datad => \inst6|internal_value\(2),
	combout => \inst2|Mux1~1_combout\);

-- Location: LCCOMB_X50_Y53_N8
\inst2|Mux1~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst2|Mux1~2_combout\ = (\inst6|internal_value\(0) & (!\inst6|internal_value\(1) & (\inst2|Mux1~0_combout\))) # (!\inst6|internal_value\(0) & (((\inst2|Mux1~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111001101000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|internal_value\(1),
	datab => \inst6|internal_value\(0),
	datac => \inst2|Mux1~0_combout\,
	datad => \inst2|Mux1~1_combout\,
	combout => \inst2|Mux1~2_combout\);

-- Location: FF_X50_Y53_N27
\inst6|internal_value[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	asdata => \inst2|Mux1~2_combout\,
	clrn => \RESET~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst6|internal_value\(1));

-- Location: LCCOMB_X50_Y53_N14
\inst2|Mux0~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst2|Mux0~0_combout\ = (\inst6|internal_value\(2) & ((\inst6|internal_value\(0) & (!\entradaA[2]~input_o\)) # (!\inst6|internal_value\(0) & ((\entradaA[0]~input_o\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \entradaA[2]~input_o\,
	datab => \entradaA[0]~input_o\,
	datac => \inst6|internal_value\(2),
	datad => \inst6|internal_value\(0),
	combout => \inst2|Mux0~0_combout\);

-- Location: LCCOMB_X50_Y53_N0
\inst2|Mux0~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst2|Mux0~1_combout\ = (\inst6|internal_value\(0) & (((!\entradaA[1]~input_o\) # (!\entradaA[0]~input_o\)))) # (!\inst6|internal_value\(0) & (\entradaA[2]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011111110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \entradaA[2]~input_o\,
	datab => \entradaA[0]~input_o\,
	datac => \entradaA[1]~input_o\,
	datad => \inst6|internal_value\(0),
	combout => \inst2|Mux0~1_combout\);

-- Location: LCCOMB_X50_Y53_N10
\inst2|Mux0~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst2|Mux0~2_combout\ = (\inst6|internal_value\(1)) # ((\inst2|Mux0~0_combout\) # ((!\inst6|internal_value\(2) & \inst2|Mux0~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101111111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|internal_value\(1),
	datab => \inst6|internal_value\(2),
	datac => \inst2|Mux0~0_combout\,
	datad => \inst2|Mux0~1_combout\,
	combout => \inst2|Mux0~2_combout\);

-- Location: LCCOMB_X50_Y53_N12
\inst6|internal_value[2]~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst6|internal_value[2]~0_combout\ = !\inst2|Mux0~2_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst2|Mux0~2_combout\,
	combout => \inst6|internal_value[2]~0_combout\);

-- Location: FF_X50_Y53_N13
\inst6|internal_value[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst6|internal_value[2]~0_combout\,
	clrn => \RESET~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst6|internal_value\(2));

-- Location: LCCOMB_X50_Y53_N24
\inst2|Mux3~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst2|Mux3~1_combout\ = (\entradaA[2]~input_o\ & (((!\inst6|internal_value\(2))))) # (!\entradaA[2]~input_o\ & ((\inst6|internal_value\(1) & ((!\inst6|internal_value\(2)))) # (!\inst6|internal_value\(1) & (!\entradaA[0]~input_o\ & 
-- \inst6|internal_value\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000111111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \entradaA[2]~input_o\,
	datab => \entradaA[0]~input_o\,
	datac => \inst6|internal_value\(1),
	datad => \inst6|internal_value\(2),
	combout => \inst2|Mux3~1_combout\);

-- Location: LCCOMB_X50_Y53_N26
\inst2|Mux3~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst2|Mux3~0_combout\ = (!\inst6|internal_value\(1) & !\entradaA[2]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst6|internal_value\(1),
	datad => \entradaA[2]~input_o\,
	combout => \inst2|Mux3~0_combout\);

-- Location: LCCOMB_X50_Y53_N16
\inst2|Mux3~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst2|Mux3~2_combout\ = (\inst6|internal_value\(0) & (((\inst2|Mux3~0_combout\ & \inst6|internal_value\(2))))) # (!\inst6|internal_value\(0) & (\inst2|Mux3~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|Mux3~1_combout\,
	datab => \inst2|Mux3~0_combout\,
	datac => \inst6|internal_value\(0),
	datad => \inst6|internal_value\(2),
	combout => \inst2|Mux3~2_combout\);

-- Location: LCCOMB_X50_Y53_N2
\inst2|Mux4~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst2|Mux4~0_combout\ = (\inst6|internal_value\(2) & (\inst6|internal_value\(1))) # (!\inst6|internal_value\(2) & (\inst6|internal_value\(0) & ((\inst6|internal_value\(1)) # (\entradaA[1]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|internal_value\(1),
	datab => \inst6|internal_value\(2),
	datac => \entradaA[1]~input_o\,
	datad => \inst6|internal_value\(0),
	combout => \inst2|Mux4~0_combout\);

-- Location: LCCOMB_X50_Y53_N28
\inst2|Mux5~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst2|Mux5~0_combout\ = (\inst6|internal_value\(0) & (!\inst6|internal_value\(1) & (\entradaA[1]~input_o\))) # (!\inst6|internal_value\(0) & ((\inst6|internal_value\(1)) # ((\entradaA[2]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111010101100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|internal_value\(0),
	datab => \inst6|internal_value\(1),
	datac => \entradaA[1]~input_o\,
	datad => \entradaA[2]~input_o\,
	combout => \inst2|Mux5~0_combout\);

-- Location: LCCOMB_X50_Y53_N6
\inst2|Mux5~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst2|Mux5~1_combout\ = (\inst6|internal_value\(2) & ((\inst6|internal_value\(0)) # ((!\inst2|Mux3~0_combout\)))) # (!\inst6|internal_value\(2) & (((\inst2|Mux5~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|internal_value\(0),
	datab => \inst2|Mux3~0_combout\,
	datac => \inst2|Mux5~0_combout\,
	datad => \inst6|internal_value\(2),
	combout => \inst2|Mux5~1_combout\);

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

ww_edoPres(2) <= \edoPres[2]~output_o\;

ww_edoPres(1) <= \edoPres[1]~output_o\;

ww_edoPres(0) <= \edoPres[0]~output_o\;

ww_liga(2) <= \liga[2]~output_o\;

ww_liga(1) <= \liga[1]~output_o\;

ww_liga(0) <= \liga[0]~output_o\;

ww_salidas(2) <= \salidas[2]~output_o\;

ww_salidas(1) <= \salidas[1]~output_o\;

ww_salidas(0) <= \salidas[0]~output_o\;
END structure;


