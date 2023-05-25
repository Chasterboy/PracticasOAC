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

-- DATE "05/07/2023 14:27:04"

-- 
-- Device: Altera 10M50DAF484I7P Package FBGA484
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

ENTITY 	Practica5 IS
    PORT (
	DIR : OUT std_logic_vector(2 DOWNTO 0);
	clk : IN std_logic;
	reset : IN std_logic;
	V : IN std_logic;
	W : IN std_logic;
	X : IN std_logic;
	Z : IN std_logic;
	salida : OUT std_logic_vector(3 DOWNTO 0)
	);
END Practica5;

-- Design Ports Information
-- DIR[2]	=>  Location: PIN_V10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DIR[1]	=>  Location: PIN_V9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DIR[0]	=>  Location: PIN_V8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- salida[3]	=>  Location: PIN_A8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- salida[2]	=>  Location: PIN_A9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- salida[1]	=>  Location: PIN_A10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- salida[0]	=>  Location: PIN_B10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- W	=>  Location: PIN_D12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Z	=>  Location: PIN_C10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- X	=>  Location: PIN_C11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- V	=>  Location: PIN_C12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- clk	=>  Location: PIN_P11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- reset	=>  Location: PIN_B8,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF Practica5 IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_DIR : std_logic_vector(2 DOWNTO 0);
SIGNAL ww_clk : std_logic;
SIGNAL ww_reset : std_logic;
SIGNAL ww_V : std_logic;
SIGNAL ww_W : std_logic;
SIGNAL ww_X : std_logic;
SIGNAL ww_Z : std_logic;
SIGNAL ww_salida : std_logic_vector(3 DOWNTO 0);
SIGNAL \~QUARTUS_CREATED_ADC1~_CHSEL_bus\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \~QUARTUS_CREATED_ADC2~_CHSEL_bus\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \clk~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \~QUARTUS_CREATED_GND~I_combout\ : std_logic;
SIGNAL \~QUARTUS_CREATED_UNVM~~busy\ : std_logic;
SIGNAL \~QUARTUS_CREATED_ADC1~~eoc\ : std_logic;
SIGNAL \~QUARTUS_CREATED_ADC2~~eoc\ : std_logic;
SIGNAL \DIR[2]~output_o\ : std_logic;
SIGNAL \DIR[1]~output_o\ : std_logic;
SIGNAL \DIR[0]~output_o\ : std_logic;
SIGNAL \salida[3]~output_o\ : std_logic;
SIGNAL \salida[2]~output_o\ : std_logic;
SIGNAL \salida[1]~output_o\ : std_logic;
SIGNAL \salida[0]~output_o\ : std_logic;
SIGNAL \clk~input_o\ : std_logic;
SIGNAL \clk~inputclkctrl_outclk\ : std_logic;
SIGNAL \W~input_o\ : std_logic;
SIGNAL \Z~input_o\ : std_logic;
SIGNAL \inst13|salida~1_combout\ : std_logic;
SIGNAL \V~input_o\ : std_logic;
SIGNAL \X~input_o\ : std_logic;
SIGNAL \inst13|salida~0_combout\ : std_logic;
SIGNAL \inst13|salida~2_combout\ : std_logic;
SIGNAL \inst|inst2|salida[1]~1_combout\ : std_logic;
SIGNAL \reset~input_o\ : std_logic;
SIGNAL \inst|inst2|salida[0]~2_combout\ : std_logic;
SIGNAL \inst|inst2|salida[2]~0_combout\ : std_logic;
SIGNAL \inst16|Mux11~0_combout\ : std_logic;
SIGNAL \inst16|Mux8~0_combout\ : std_logic;
SIGNAL \inst16|Mux9~0_combout\ : std_logic;
SIGNAL \inst16|Mux10~0_combout\ : std_logic;
SIGNAL \inst|inst|internal_value\ : std_logic_vector(2 DOWNTO 0);
SIGNAL \inst16|ALT_INV_Mux10~0_combout\ : std_logic;
SIGNAL \inst16|ALT_INV_Mux9~0_combout\ : std_logic;

COMPONENT hard_block
    PORT (
	devoe : IN std_logic;
	devclrn : IN std_logic;
	devpor : IN std_logic);
END COMPONENT;

BEGIN

DIR <= ww_DIR;
ww_clk <= clk;
ww_reset <= reset;
ww_V <= V;
ww_W <= W;
ww_X <= X;
ww_Z <= Z;
salida <= ww_salida;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\~QUARTUS_CREATED_ADC1~_CHSEL_bus\ <= (\~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\);

\~QUARTUS_CREATED_ADC2~_CHSEL_bus\ <= (\~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\);

\clk~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \clk~input_o\);
\inst16|ALT_INV_Mux10~0_combout\ <= NOT \inst16|Mux10~0_combout\;
\inst16|ALT_INV_Mux9~0_combout\ <= NOT \inst16|Mux9~0_combout\;
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
\DIR[2]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|inst|internal_value\(2),
	devoe => ww_devoe,
	o => \DIR[2]~output_o\);

-- Location: IOOBUF_X31_Y0_N30
\DIR[1]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|inst|internal_value\(1),
	devoe => ww_devoe,
	o => \DIR[1]~output_o\);

-- Location: IOOBUF_X20_Y0_N16
\DIR[0]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|inst|internal_value\(0),
	devoe => ww_devoe,
	o => \DIR[0]~output_o\);

-- Location: IOOBUF_X46_Y54_N2
\salida[3]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst16|Mux11~0_combout\,
	devoe => ww_devoe,
	o => \salida[3]~output_o\);

-- Location: IOOBUF_X46_Y54_N23
\salida[2]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst16|Mux8~0_combout\,
	devoe => ww_devoe,
	o => \salida[2]~output_o\);

-- Location: IOOBUF_X51_Y54_N16
\salida[1]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst16|ALT_INV_Mux9~0_combout\,
	devoe => ww_devoe,
	o => \salida[1]~output_o\);

-- Location: IOOBUF_X46_Y54_N9
\salida[0]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst16|ALT_INV_Mux10~0_combout\,
	devoe => ww_devoe,
	o => \salida[0]~output_o\);

-- Location: IOIBUF_X34_Y0_N29
\clk~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_clk,
	o => \clk~input_o\);

-- Location: CLKCTRL_G19
\clk~inputclkctrl\ : fiftyfivenm_clkctrl
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

-- Location: IOIBUF_X51_Y54_N1
\W~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_W,
	o => \W~input_o\);

-- Location: IOIBUF_X51_Y54_N29
\Z~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Z,
	o => \Z~input_o\);

-- Location: LCCOMB_X47_Y53_N4
\inst13|salida~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst13|salida~1_combout\ = (!\inst|inst|internal_value\(0) & ((\inst|inst|internal_value\(2) & (\W~input_o\)) # (!\inst|inst|internal_value\(2) & ((\Z~input_o\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \W~input_o\,
	datab => \Z~input_o\,
	datac => \inst|inst|internal_value\(0),
	datad => \inst|inst|internal_value\(2),
	combout => \inst13|salida~1_combout\);

-- Location: IOIBUF_X54_Y54_N29
\V~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_V,
	o => \V~input_o\);

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

-- Location: LCCOMB_X47_Y53_N16
\inst13|salida~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst13|salida~0_combout\ = (!\inst|inst|internal_value\(2) & ((\inst|inst|internal_value\(0) & ((\X~input_o\))) # (!\inst|inst|internal_value\(0) & (\V~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \V~input_o\,
	datab => \X~input_o\,
	datac => \inst|inst|internal_value\(0),
	datad => \inst|inst|internal_value\(2),
	combout => \inst13|salida~0_combout\);

-- Location: LCCOMB_X47_Y53_N18
\inst13|salida~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst13|salida~2_combout\ = (\inst|inst|internal_value\(1) & (!\inst|inst|internal_value\(2) & (\inst13|salida~1_combout\))) # (!\inst|inst|internal_value\(1) & ((\inst13|salida~0_combout\) # ((\inst|inst|internal_value\(2) & \inst13|salida~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111001101100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst|internal_value\(2),
	datab => \inst|inst|internal_value\(1),
	datac => \inst13|salida~1_combout\,
	datad => \inst13|salida~0_combout\,
	combout => \inst13|salida~2_combout\);

-- Location: LCCOMB_X47_Y53_N30
\inst|inst2|salida[1]~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|inst2|salida[1]~1_combout\ = (\inst|inst|internal_value\(0) & (!\inst|inst|internal_value\(1))) # (!\inst|inst|internal_value\(0) & ((\inst13|salida~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101111100001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst|internal_value\(0),
	datac => \inst|inst|internal_value\(1),
	datad => \inst13|salida~2_combout\,
	combout => \inst|inst2|salida[1]~1_combout\);

-- Location: IOIBUF_X46_Y54_N29
\reset~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_reset,
	o => \reset~input_o\);

-- Location: FF_X47_Y53_N31
\inst|inst|internal_value[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst|inst2|salida[1]~1_combout\,
	clrn => \reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|inst|internal_value\(1));

-- Location: LCCOMB_X47_Y53_N8
\inst|inst2|salida[0]~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|inst2|salida[0]~2_combout\ = (\inst|inst|internal_value\(1) & (\inst|inst|internal_value\(0) $ (((\inst13|salida~2_combout\) # (!\inst|inst|internal_value\(2)))))) # (!\inst|inst|internal_value\(1) & (((!\inst13|salida~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110010110111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst|internal_value\(2),
	datab => \inst|inst|internal_value\(1),
	datac => \inst|inst|internal_value\(0),
	datad => \inst13|salida~2_combout\,
	combout => \inst|inst2|salida[0]~2_combout\);

-- Location: FF_X47_Y53_N9
\inst|inst|internal_value[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst|inst2|salida[0]~2_combout\,
	clrn => \reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|inst|internal_value\(0));

-- Location: LCCOMB_X47_Y53_N20
\inst|inst2|salida[2]~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|inst2|salida[2]~0_combout\ = (\inst|inst|internal_value\(1) & ((\inst|inst|internal_value\(0) & (!\inst|inst|internal_value\(2))) # (!\inst|inst|internal_value\(0) & ((\inst|inst|internal_value\(2)) # (!\inst13|salida~2_combout\))))) # 
-- (!\inst|inst|internal_value\(1) & (\inst|inst|internal_value\(0) $ (\inst|inst|internal_value\(2) $ (\inst13|salida~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100101011110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst|internal_value\(0),
	datab => \inst|inst|internal_value\(1),
	datac => \inst|inst|internal_value\(2),
	datad => \inst13|salida~2_combout\,
	combout => \inst|inst2|salida[2]~0_combout\);

-- Location: FF_X47_Y53_N21
\inst|inst|internal_value[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst|inst2|salida[2]~0_combout\,
	clrn => \reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|inst|internal_value\(2));

-- Location: LCCOMB_X47_Y53_N26
\inst16|Mux11~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst16|Mux11~0_combout\ = \inst|inst|internal_value\(1) $ (((\inst|inst|internal_value\(2)) # (\inst|inst|internal_value\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010101011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst|internal_value\(1),
	datac => \inst|inst|internal_value\(2),
	datad => \inst|inst|internal_value\(0),
	combout => \inst16|Mux11~0_combout\);

-- Location: LCCOMB_X47_Y53_N14
\inst16|Mux8~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst16|Mux8~0_combout\ = (\inst|inst|internal_value\(0) & (!\inst|inst|internal_value\(2) & (\inst|inst|internal_value\(1)))) # (!\inst|inst|internal_value\(0) & ((\inst|inst|internal_value\(2)) # ((\inst13|salida~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111010101100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst|internal_value\(0),
	datab => \inst|inst|internal_value\(2),
	datac => \inst|inst|internal_value\(1),
	datad => \inst13|salida~2_combout\,
	combout => \inst16|Mux8~0_combout\);

-- Location: LCCOMB_X47_Y53_N24
\inst16|Mux9~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst16|Mux9~0_combout\ = (\inst|inst|internal_value\(2) & (((\inst|inst|internal_value\(1))))) # (!\inst|inst|internal_value\(2) & ((\inst|inst|internal_value\(1) & (\inst|inst|internal_value\(0))) # (!\inst|inst|internal_value\(1) & 
-- ((\inst13|salida~2_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001111100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst|internal_value\(0),
	datab => \inst|inst|internal_value\(2),
	datac => \inst|inst|internal_value\(1),
	datad => \inst13|salida~2_combout\,
	combout => \inst16|Mux9~0_combout\);

-- Location: LCCOMB_X47_Y53_N22
\inst16|Mux10~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst16|Mux10~0_combout\ = (\inst13|salida~2_combout\ & (\inst|inst|internal_value\(0) & (\inst|inst|internal_value\(2) $ (!\inst|inst|internal_value\(1))))) # (!\inst13|salida~2_combout\ & (\inst|inst|internal_value\(1) & (\inst|inst|internal_value\(0) $ 
-- (!\inst|inst|internal_value\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000001010010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst|internal_value\(0),
	datab => \inst|inst|internal_value\(2),
	datac => \inst|inst|internal_value\(1),
	datad => \inst13|salida~2_combout\,
	combout => \inst16|Mux10~0_combout\);

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

ww_DIR(2) <= \DIR[2]~output_o\;

ww_DIR(1) <= \DIR[1]~output_o\;

ww_DIR(0) <= \DIR[0]~output_o\;

ww_salida(3) <= \salida[3]~output_o\;

ww_salida(2) <= \salida[2]~output_o\;

ww_salida(1) <= \salida[1]~output_o\;

ww_salida(0) <= \salida[0]~output_o\;
END structure;


