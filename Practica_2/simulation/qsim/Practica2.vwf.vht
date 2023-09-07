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

-- *****************************************************************************
-- This file contains a Vhdl test bench with test vectors .The test vectors     
-- are exported from a vector file in the Quartus Waveform Editor and apply to  
-- the top level entity of the current Quartus project .The user can use this   
-- testbench to simulate his design using a third-party simulation tool .       
-- *****************************************************************************
-- Generated on "03/09/2023 22:17:51"
                                                             
-- Vhdl Test Bench(with test vectors) for design  :          Practica2
-- 
-- Simulation tool : 3rd Party
-- 

LIBRARY ieee;                                               
USE ieee.std_logic_1164.all;                                

ENTITY Practica2_vhd_vec_tst IS
END Practica2_vhd_vec_tst;
ARCHITECTURE Practica2_arch OF Practica2_vhd_vec_tst IS
-- constants                                                 
-- signals                                                   
SIGNAL CLK : STD_LOGIC;
SIGNAL E1 : STD_LOGIC;
SIGNAL E2 : STD_LOGIC;
SIGNAL S1 : STD_LOGIC;
SIGNAL S2 : STD_LOGIC;
COMPONENT Practica2
	PORT (
	CLK : IN STD_LOGIC;
	E1 : IN STD_LOGIC;
	E2 : IN STD_LOGIC;
	S1 : OUT STD_LOGIC;
	S2 : OUT STD_LOGIC
	);
END COMPONENT;
BEGIN
	i1 : Practica2
	PORT MAP (
-- list connections between master ports and signals
	CLK => CLK,
	E1 => E1,
	E2 => E2,
	S1 => S1,
	S2 => S2
	);

-- CLK
t_prcs_CLK: PROCESS
BEGIN
LOOP
	CLK <= '0';
	WAIT FOR 5000 ps;
	CLK <= '1';
	WAIT FOR 5000 ps;
	IF (NOW >= 1000000 ps) THEN WAIT; END IF;
END LOOP;
END PROCESS t_prcs_CLK;

-- E1
t_prcs_E1: PROCESS
BEGIN
	E1 <= '0';
	WAIT FOR 150000 ps;
	E1 <= '1';
	WAIT FOR 170000 ps;
	E1 <= '0';
	WAIT FOR 190000 ps;
	E1 <= '1';
	WAIT FOR 90000 ps;
	E1 <= '0';
WAIT;
END PROCESS t_prcs_E1;

-- E2
t_prcs_E2: PROCESS
BEGIN
	E2 <= '0';
	WAIT FOR 150000 ps;
	E2 <= '1';
	WAIT FOR 170000 ps;
	E2 <= '0';
	WAIT FOR 450000 ps;
	E2 <= '1';
	WAIT FOR 160000 ps;
	E2 <= '0';
WAIT;
END PROCESS t_prcs_E2;
END Practica2_arch;
