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
-- Generated on "05/17/2023 17:11:45"
                                                             
-- Vhdl Test Bench(with test vectors) for design  :          Practica6
-- 
-- Simulation tool : 3rd Party
-- 

LIBRARY ieee;                                               
USE ieee.std_logic_1164.all;                                

ENTITY Practica6_vhd_vec_tst IS
END Practica6_vhd_vec_tst;
ARCHITECTURE Practica6_arch OF Practica6_vhd_vec_tst IS
-- constants                                                 
-- signals                                                   
SIGNAL CLK : STD_LOGIC;
SIGNAL Entrada : STD_LOGIC_VECTOR(3 DOWNTO 0);
SIGNAL Entradaint : STD_LOGIC_VECTOR(3 DOWNTO 0);
SIGNAL Entradatrans : STD_LOGIC_VECTOR(3 DOWNTO 0);
SIGNAL INT : STD_LOGIC;
SIGNAL RESET : STD_LOGIC;
SIGNAL Salidas : STD_LOGIC_VECTOR(5 DOWNTO 0);
SIGNAL X : STD_LOGIC;
SIGNAL Y : STD_LOGIC;
COMPONENT Practica6
	PORT (
	CLK : IN STD_LOGIC;
	Entrada : OUT STD_LOGIC_VECTOR(3 DOWNTO 0);
	Entradaint : IN STD_LOGIC_VECTOR(3 DOWNTO 0);
	Entradatrans : IN STD_LOGIC_VECTOR(3 DOWNTO 0);
	INT : IN STD_LOGIC;
	RESET : IN STD_LOGIC;
	Salidas : OUT STD_LOGIC_VECTOR(5 DOWNTO 0);
	X : IN STD_LOGIC;
	Y : IN STD_LOGIC
	);
END COMPONENT;
BEGIN
	i1 : Practica6
	PORT MAP (
-- list connections between master ports and signals
	CLK => CLK,
	Entrada => Entrada,
	Entradaint => Entradaint,
	Entradatrans => Entradatrans,
	INT => INT,
	RESET => RESET,
	Salidas => Salidas,
	X => X,
	Y => Y
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
-- Entradaint[3]
t_prcs_Entradaint_3: PROCESS
BEGIN
	Entradaint(3) <= '1';
WAIT;
END PROCESS t_prcs_Entradaint_3;
-- Entradaint[2]
t_prcs_Entradaint_2: PROCESS
BEGIN
	Entradaint(2) <= '0';
WAIT;
END PROCESS t_prcs_Entradaint_2;
-- Entradaint[1]
t_prcs_Entradaint_1: PROCESS
BEGIN
	Entradaint(1) <= '1';
WAIT;
END PROCESS t_prcs_Entradaint_1;
-- Entradaint[0]
t_prcs_Entradaint_0: PROCESS
BEGIN
	Entradaint(0) <= '1';
WAIT;
END PROCESS t_prcs_Entradaint_0;
-- Entradatrans[3]
t_prcs_Entradatrans_3: PROCESS
BEGIN
	Entradatrans(3) <= '0';
WAIT;
END PROCESS t_prcs_Entradatrans_3;
-- Entradatrans[2]
t_prcs_Entradatrans_2: PROCESS
BEGIN
	Entradatrans(2) <= '1';
WAIT;
END PROCESS t_prcs_Entradatrans_2;
-- Entradatrans[1]
t_prcs_Entradatrans_1: PROCESS
BEGIN
	Entradatrans(1) <= '0';
WAIT;
END PROCESS t_prcs_Entradatrans_1;
-- Entradatrans[0]
t_prcs_Entradatrans_0: PROCESS
BEGIN
	Entradatrans(0) <= '1';
WAIT;
END PROCESS t_prcs_Entradatrans_0;

-- INT
t_prcs_INT: PROCESS
BEGIN
	INT <= '0';
WAIT;
END PROCESS t_prcs_INT;

-- RESET
t_prcs_RESET: PROCESS
BEGIN
	RESET <= '1';
WAIT;
END PROCESS t_prcs_RESET;

-- X
t_prcs_X: PROCESS
BEGIN
	X <= '0';
WAIT;
END PROCESS t_prcs_X;

-- Y
t_prcs_Y: PROCESS
BEGIN
	Y <= '0';
WAIT;
END PROCESS t_prcs_Y;
END Practica6_arch;
