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
-- Generated on "03/20/2023 02:23:09"
                                                             
-- Vhdl Test Bench(with test vectors) for design  :          P3_OAC
-- 
-- Simulation tool : 3rd Party
-- 

LIBRARY ieee;                                               
USE ieee.std_logic_1164.all;                                

ENTITY P3_OAC_vhd_vec_tst IS
END P3_OAC_vhd_vec_tst;
ARCHITECTURE P3_OAC_arch OF P3_OAC_vhd_vec_tst IS
-- constants                                                 
-- signals                                                   
SIGNAL CLK : STD_LOGIC;
SIGNAL edoPres : STD_LOGIC_VECTOR(2 DOWNTO 0);
SIGNAL entradaA : STD_LOGIC_VECTOR(2 DOWNTO 0);
SIGNAL liga : STD_LOGIC_VECTOR(2 DOWNTO 0);
SIGNAL RESET : STD_LOGIC;
SIGNAL salidas : STD_LOGIC_VECTOR(2 DOWNTO 0);
COMPONENT P3_OAC
	PORT (
	CLK : IN STD_LOGIC;
	edoPres : OUT STD_LOGIC_VECTOR(2 DOWNTO 0);
	entradaA : IN STD_LOGIC_VECTOR(2 DOWNTO 0);
	liga : OUT STD_LOGIC_VECTOR(2 DOWNTO 0);
	RESET : IN STD_LOGIC;
	salidas : OUT STD_LOGIC_VECTOR(2 DOWNTO 0)
	);
END COMPONENT;
BEGIN
	i1 : P3_OAC
	PORT MAP (
-- list connections between master ports and signals
	CLK => CLK,
	edoPres => edoPres,
	entradaA => entradaA,
	liga => liga,
	RESET => RESET,
	salidas => salidas
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

-- entradaA[2]
t_prcs_entradaA_2: PROCESS
BEGIN
	entradaA(2) <= '1';
WAIT;
END PROCESS t_prcs_entradaA_2;

-- entradaA[1]
t_prcs_entradaA_1: PROCESS
BEGIN
	entradaA(1) <= '0';
WAIT;
END PROCESS t_prcs_entradaA_1;

-- entradaA[0]
t_prcs_entradaA_0: PROCESS
BEGIN
	entradaA(0) <= '0';
WAIT;
END PROCESS t_prcs_entradaA_0;

-- RESET
t_prcs_RESET: PROCESS
BEGIN
	RESET <= '1';
WAIT;
END PROCESS t_prcs_RESET;
END P3_OAC_arch;
