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

-- DATE "03/31/2023 08:37:53"

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

ENTITY 	Practica_4 IS
    PORT (
	Data_out : OUT std_logic_vector(2 DOWNTO 0);
	CLK : IN std_logic;
	RESET : IN std_logic;
	W : IN std_logic;
	X : IN std_logic;
	Y : IN std_logic;
	Z : IN std_logic;
	salida : OUT std_logic_vector(4 DOWNTO 0)
	);
END Practica_4;

-- Design Ports Information
-- Data_out[2]	=>  Location: PIN_D14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Data_out[1]	=>  Location: PIN_A11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Data_out[0]	=>  Location: PIN_B11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- salida[4]	=>  Location: PIN_A8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- salida[3]	=>  Location: PIN_A9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- salida[2]	=>  Location: PIN_A10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- salida[1]	=>  Location: PIN_B10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- salida[0]	=>  Location: PIN_D13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Y	=>  Location: PIN_D12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Z	=>  Location: PIN_C12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- X	=>  Location: PIN_C11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- W	=>  Location: PIN_A12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- CLK	=>  Location: PIN_P11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- RESET	=>  Location: PIN_A7,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF Practica_4 IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_Data_out : std_logic_vector(2 DOWNTO 0);
SIGNAL ww_CLK : std_logic;
SIGNAL ww_RESET : std_logic;
SIGNAL ww_W : std_logic;
SIGNAL ww_X : std_logic;
SIGNAL ww_Y : std_logic;
SIGNAL ww_Z : std_logic;
SIGNAL ww_salida : std_logic_vector(4 DOWNTO 0);
SIGNAL \~QUARTUS_CREATED_ADC1~_CHSEL_bus\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \~QUARTUS_CREATED_ADC2~_CHSEL_bus\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \CLK~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \~QUARTUS_CREATED_GND~I_combout\ : std_logic;
SIGNAL \~QUARTUS_CREATED_UNVM~~busy\ : std_logic;
SIGNAL \~QUARTUS_CREATED_ADC1~~eoc\ : std_logic;
SIGNAL \~QUARTUS_CREATED_ADC2~~eoc\ : std_logic;
SIGNAL \Data_out[2]~output_o\ : std_logic;
SIGNAL \Data_out[1]~output_o\ : std_logic;
SIGNAL \Data_out[0]~output_o\ : std_logic;
SIGNAL \salida[4]~output_o\ : std_logic;
SIGNAL \salida[3]~output_o\ : std_logic;
SIGNAL \salida[2]~output_o\ : std_logic;
SIGNAL \salida[1]~output_o\ : std_logic;
SIGNAL \salida[0]~output_o\ : std_logic;
SIGNAL \CLK~input_o\ : std_logic;
SIGNAL \CLK~inputclkctrl_outclk\ : std_logic;
SIGNAL \Z~input_o\ : std_logic;
SIGNAL \Y~input_o\ : std_logic;
SIGNAL \inst4|entrada~0_combout\ : std_logic;
SIGNAL \inst2|Mux17~0_combout\ : std_logic;
SIGNAL \W~input_o\ : std_logic;
SIGNAL \X~input_o\ : std_logic;
SIGNAL \inst4|entrada~1_combout\ : std_logic;
SIGNAL \inst4|entrada~2_combout\ : std_logic;
SIGNAL \inst2|Mux3~0_combout\ : std_logic;
SIGNAL \RESET~input_o\ : std_logic;
SIGNAL \inst2|Mux4~0_combout\ : std_logic;
SIGNAL \inst5|liga[2]~0_combout\ : std_logic;
SIGNAL \inst2|Mux8~0_combout\ : std_logic;
SIGNAL \inst7|salida[3]~0_combout\ : std_logic;
SIGNAL \inst2|Mux15~0_combout\ : std_logic;
SIGNAL \inst7|salida[1]~1_combout\ : std_logic;
SIGNAL \inst10|internal_value\ : std_logic_vector(2 DOWNTO 0);
SIGNAL \inst2|ALT_INV_Mux8~0_combout\ : std_logic;

COMPONENT hard_block
    PORT (
	devoe : IN std_logic;
	devclrn : IN std_logic;
	devpor : IN std_logic);
END COMPONENT;

BEGIN

Data_out <= ww_Data_out;
ww_CLK <= CLK;
ww_RESET <= RESET;
ww_W <= W;
ww_X <= X;
ww_Y <= Y;
ww_Z <= Z;
salida <= ww_salida;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\~QUARTUS_CREATED_ADC1~_CHSEL_bus\ <= (\~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\);

\~QUARTUS_CREATED_ADC2~_CHSEL_bus\ <= (\~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\);

\CLK~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \CLK~input_o\);
\inst2|ALT_INV_Mux8~0_combout\ <= NOT \inst2|Mux8~0_combout\;
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

-- Location: IOOBUF_X56_Y54_N9
\Data_out[2]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst10|internal_value\(2),
	devoe => ww_devoe,
	o => \Data_out[2]~output_o\);

-- Location: IOOBUF_X51_Y54_N9
\Data_out[1]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst10|internal_value\(1),
	devoe => ww_devoe,
	o => \Data_out[1]~output_o\);

-- Location: IOOBUF_X49_Y54_N9
\Data_out[0]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst10|internal_value\(0),
	devoe => ww_devoe,
	o => \Data_out[0]~output_o\);

-- Location: IOOBUF_X46_Y54_N2
\salida[4]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst2|ALT_INV_Mux8~0_combout\,
	devoe => ww_devoe,
	o => \salida[4]~output_o\);

-- Location: IOOBUF_X46_Y54_N23
\salida[3]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst7|salida[3]~0_combout\,
	devoe => ww_devoe,
	o => \salida[3]~output_o\);

-- Location: IOOBUF_X51_Y54_N16
\salida[2]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst2|Mux15~0_combout\,
	devoe => ww_devoe,
	o => \salida[2]~output_o\);

-- Location: IOOBUF_X46_Y54_N9
\salida[1]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst7|salida[1]~1_combout\,
	devoe => ww_devoe,
	o => \salida[1]~output_o\);

-- Location: IOOBUF_X56_Y54_N30
\salida[0]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst2|Mux17~0_combout\,
	devoe => ww_devoe,
	o => \salida[0]~output_o\);

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

-- Location: IOIBUF_X54_Y54_N29
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

-- Location: IOIBUF_X51_Y54_N1
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

-- Location: LCCOMB_X51_Y53_N4
\inst4|entrada~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst4|entrada~0_combout\ = (\inst10|internal_value\(0) & ((\inst10|internal_value\(2) & ((\Y~input_o\))) # (!\inst10|internal_value\(2) & (\Z~input_o\)))) # (!\inst10|internal_value\(0) & (((\Y~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Z~input_o\,
	datab => \Y~input_o\,
	datac => \inst10|internal_value\(0),
	datad => \inst10|internal_value\(2),
	combout => \inst4|entrada~0_combout\);

-- Location: LCCOMB_X51_Y53_N30
\inst2|Mux17~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst2|Mux17~0_combout\ = (\inst10|internal_value\(2) & (!\inst10|internal_value\(0) & \inst10|internal_value\(1))) # (!\inst10|internal_value\(2) & (\inst10|internal_value\(0) & !\inst10|internal_value\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst10|internal_value\(2),
	datac => \inst10|internal_value\(0),
	datad => \inst10|internal_value\(1),
	combout => \inst2|Mux17~0_combout\);

-- Location: IOIBUF_X54_Y54_N22
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

-- Location: LCCOMB_X51_Y53_N18
\inst4|entrada~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst4|entrada~1_combout\ = (\inst10|internal_value\(0) & ((\inst10|internal_value\(2) & (\W~input_o\)) # (!\inst10|internal_value\(2) & ((\X~input_o\))))) # (!\inst10|internal_value\(0) & (\W~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \W~input_o\,
	datab => \X~input_o\,
	datac => \inst10|internal_value\(0),
	datad => \inst10|internal_value\(2),
	combout => \inst4|entrada~1_combout\);

-- Location: LCCOMB_X51_Y53_N24
\inst4|entrada~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst4|entrada~2_combout\ = (\inst2|Mux17~0_combout\ & (\inst4|entrada~0_combout\)) # (!\inst2|Mux17~0_combout\ & ((\inst4|entrada~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst4|entrada~0_combout\,
	datac => \inst2|Mux17~0_combout\,
	datad => \inst4|entrada~1_combout\,
	combout => \inst4|entrada~2_combout\);

-- Location: LCCOMB_X51_Y53_N2
\inst2|Mux3~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst2|Mux3~0_combout\ = (\inst10|internal_value\(2) & ((\inst10|internal_value\(0) & (!\inst10|internal_value\(1))) # (!\inst10|internal_value\(0) & ((\inst4|entrada~2_combout\))))) # (!\inst10|internal_value\(2) & (\inst10|internal_value\(1) $ 
-- (((\inst10|internal_value\(0) & !\inst4|entrada~2_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111101000011100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst10|internal_value\(2),
	datab => \inst10|internal_value\(0),
	datac => \inst10|internal_value\(1),
	datad => \inst4|entrada~2_combout\,
	combout => \inst2|Mux3~0_combout\);

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

-- Location: FF_X51_Y53_N3
\inst10|internal_value[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst2|Mux3~0_combout\,
	clrn => \RESET~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst10|internal_value\(1));

-- Location: LCCOMB_X51_Y53_N8
\inst2|Mux4~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst2|Mux4~0_combout\ = (\inst10|internal_value\(2) & ((\inst10|internal_value\(0) & (!\inst10|internal_value\(1))) # (!\inst10|internal_value\(0) & ((!\inst4|entrada~2_combout\))))) # (!\inst10|internal_value\(2) & (((\inst10|internal_value\(1) & 
-- !\inst4|entrada~2_combout\)) # (!\inst10|internal_value\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010010101101111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst10|internal_value\(2),
	datab => \inst10|internal_value\(1),
	datac => \inst10|internal_value\(0),
	datad => \inst4|entrada~2_combout\,
	combout => \inst2|Mux4~0_combout\);

-- Location: FF_X51_Y53_N9
\inst10|internal_value[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst2|Mux4~0_combout\,
	clrn => \RESET~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst10|internal_value\(0));

-- Location: LCCOMB_X51_Y53_N16
\inst5|liga[2]~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst5|liga[2]~0_combout\ = (\inst4|entrada~2_combout\ & (\inst10|internal_value\(0) & ((!\inst10|internal_value\(2))))) # (!\inst4|entrada~2_combout\ & (\inst10|internal_value\(1) & (\inst10|internal_value\(0) $ (\inst10|internal_value\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101001001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst10|internal_value\(0),
	datab => \inst10|internal_value\(1),
	datac => \inst10|internal_value\(2),
	datad => \inst4|entrada~2_combout\,
	combout => \inst5|liga[2]~0_combout\);

-- Location: FF_X51_Y53_N17
\inst10|internal_value[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst5|liga[2]~0_combout\,
	clrn => \RESET~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst10|internal_value\(2));

-- Location: LCCOMB_X51_Y53_N14
\inst2|Mux8~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst2|Mux8~0_combout\ = (\inst10|internal_value\(1) & (\inst10|internal_value\(0) & ((\inst4|entrada~2_combout\) # (\inst10|internal_value\(2))))) # (!\inst10|internal_value\(1) & (((\inst10|internal_value\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst10|internal_value\(1),
	datab => \inst10|internal_value\(0),
	datac => \inst4|entrada~2_combout\,
	datad => \inst10|internal_value\(2),
	combout => \inst2|Mux8~0_combout\);

-- Location: LCCOMB_X51_Y53_N28
\inst7|salida[3]~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst7|salida[3]~0_combout\ = (\inst10|internal_value\(1) & (!\inst10|internal_value\(0))) # (!\inst10|internal_value\(1) & ((\inst4|entrada~2_combout\) # (\inst10|internal_value\(0) $ (!\inst10|internal_value\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111011001110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst10|internal_value\(1),
	datab => \inst10|internal_value\(0),
	datac => \inst4|entrada~2_combout\,
	datad => \inst10|internal_value\(2),
	combout => \inst7|salida[3]~0_combout\);

-- Location: LCCOMB_X51_Y53_N26
\inst2|Mux15~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst2|Mux15~0_combout\ = (!\inst10|internal_value\(2) & (\inst10|internal_value\(1) & \inst10|internal_value\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst10|internal_value\(2),
	datab => \inst10|internal_value\(1),
	datad => \inst10|internal_value\(0),
	combout => \inst2|Mux15~0_combout\);

-- Location: LCCOMB_X51_Y53_N20
\inst7|salida[1]~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst7|salida[1]~1_combout\ = (!\inst10|internal_value\(0) & (\inst10|internal_value\(2) & ((\inst4|entrada~2_combout\) # (!\inst10|internal_value\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst10|internal_value\(1),
	datab => \inst10|internal_value\(0),
	datac => \inst4|entrada~2_combout\,
	datad => \inst10|internal_value\(2),
	combout => \inst7|salida[1]~1_combout\);

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

ww_Data_out(2) <= \Data_out[2]~output_o\;

ww_Data_out(1) <= \Data_out[1]~output_o\;

ww_Data_out(0) <= \Data_out[0]~output_o\;

ww_salida(4) <= \salida[4]~output_o\;

ww_salida(3) <= \salida[3]~output_o\;

ww_salida(2) <= \salida[2]~output_o\;

ww_salida(1) <= \salida[1]~output_o\;

ww_salida(0) <= \salida[0]~output_o\;
END structure;


