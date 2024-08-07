-- Copyright (C) 2020  Intel Corporation. All rights reserved.
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
-- VERSION "Version 20.1.1 Build 720 11/11/2020 SJ Lite Edition"

-- DATE "06/12/2024 10:39:16"

-- 
-- Device: Altera 5M1270ZT144C5 Package TQFP144
-- 

-- 
-- This VHDL file should be used for ModelSim-Altera (VHDL) only
-- 

LIBRARY IEEE;
LIBRARY MAXV;
USE IEEE.STD_LOGIC_1164.ALL;
USE MAXV.MAXV_COMPONENTS.ALL;

ENTITY 	DUT IS
    PORT (
	input_vector : IN std_logic_vector(9 DOWNTO 0);
	output_vector : BUFFER std_logic_vector(7 DOWNTO 0)
	);
END DUT;

-- Design Ports Information


ARCHITECTURE structure OF DUT IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_input_vector : std_logic_vector(9 DOWNTO 0);
SIGNAL ww_output_vector : std_logic_vector(7 DOWNTO 0);
SIGNAL \add_instance|Mux15~0_combout\ : std_logic;
SIGNAL \add_instance|Mux7~0_combout\ : std_logic;
SIGNAL \add_instance|out1~0_combout\ : std_logic;
SIGNAL \add_instance|out1~1_combout\ : std_logic;
SIGNAL \add_instance|Add0~0_combout\ : std_logic;
SIGNAL \add_instance|Mux15~1_combout\ : std_logic;
SIGNAL \add_instance|Add0~2\ : std_logic;
SIGNAL \add_instance|Add0~2COUT1_21\ : std_logic;
SIGNAL \add_instance|Add0~5_combout\ : std_logic;
SIGNAL \add_instance|Mux7~2_combout\ : std_logic;
SIGNAL \add_instance|Mux7~1_combout\ : std_logic;
SIGNAL \add_instance|out1~2_combout\ : std_logic;
SIGNAL \add_instance|Mux7~3_combout\ : std_logic;
SIGNAL \add_instance|out1~3_combout\ : std_logic;
SIGNAL \add_instance|Mux14~0_combout\ : std_logic;
SIGNAL \add_instance|Mux14~1_combout\ : std_logic;
SIGNAL \add_instance|Mux13~0_combout\ : std_logic;
SIGNAL \add_instance|Mux7~4_combout\ : std_logic;
SIGNAL \add_instance|out1~4_combout\ : std_logic;
SIGNAL \add_instance|Mux13~1_combout\ : std_logic;
SIGNAL \add_instance|Add0~7\ : std_logic;
SIGNAL \add_instance|Add0~7COUT1_22\ : std_logic;
SIGNAL \add_instance|Add0~10_combout\ : std_logic;
SIGNAL \add_instance|Mux13~2_combout\ : std_logic;
SIGNAL \add_instance|Mux13~3_combout\ : std_logic;
SIGNAL \add_instance|Add0~12\ : std_logic;
SIGNAL \add_instance|Add0~12COUT1_23\ : std_logic;
SIGNAL \add_instance|Add0~15_combout\ : std_logic;
SIGNAL \add_instance|Mux12~0_combout\ : std_logic;
SIGNAL \add_instance|out1~5_combout\ : std_logic;
SIGNAL \add_instance|out1~6_combout\ : std_logic;
SIGNAL \add_instance|Mux12~1_combout\ : std_logic;
SIGNAL \add_instance|Mux11~0_combout\ : std_logic;
SIGNAL \add_instance|Mux10~0_combout\ : std_logic;
SIGNAL \add_instance|Mux9~0_combout\ : std_logic;
SIGNAL \add_instance|Mux8~0_combout\ : std_logic;
SIGNAL \input_vector~combout\ : std_logic_vector(9 DOWNTO 0);

BEGIN

ww_input_vector <= input_vector;
output_vector <= ww_output_vector;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

-- Location: PIN_122,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\input_vector[9]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_input_vector(9),
	combout => \input_vector~combout\(9));

-- Location: PIN_95,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\input_vector[4]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_input_vector(4),
	combout => \input_vector~combout\(4));

-- Location: PIN_113,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\input_vector[0]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_input_vector(0),
	combout => \input_vector~combout\(0));

-- Location: PIN_96,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\input_vector[8]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_input_vector(8),
	combout => \input_vector~combout\(8));

-- Location: LC_X13_Y7_N4
\add_instance|Mux15~0\ : maxv_lcell
-- Equation(s):
-- \add_instance|Mux15~0_combout\ = (\input_vector~combout\(8) & (!\input_vector~combout\(9))) # (!\input_vector~combout\(8) & (\input_vector~combout\(0) $ (((\input_vector~combout\(9) & \input_vector~combout\(4))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "5578",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \input_vector~combout\(9),
	datab => \input_vector~combout\(4),
	datac => \input_vector~combout\(0),
	datad => \input_vector~combout\(8),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \add_instance|Mux15~0_combout\);

-- Location: PIN_61,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\input_vector[1]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_input_vector(1),
	combout => \input_vector~combout\(1));

-- Location: PIN_93,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\input_vector[7]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_input_vector(7),
	combout => \input_vector~combout\(7));

-- Location: PIN_101,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\input_vector[5]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_input_vector(5),
	combout => \input_vector~combout\(5));

-- Location: LC_X12_Y7_N5
\add_instance|Mux7~0\ : maxv_lcell
-- Equation(s):
-- \add_instance|Mux7~0_combout\ = (\input_vector~combout\(1) & (\input_vector~combout\(7))) # (!\input_vector~combout\(1) & (((\input_vector~combout\(5)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "d8d8",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \input_vector~combout\(1),
	datab => \input_vector~combout\(7),
	datac => \input_vector~combout\(5),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \add_instance|Mux7~0_combout\);

-- Location: PIN_114,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\input_vector[6]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_input_vector(6),
	combout => \input_vector~combout\(6));

-- Location: PIN_102,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\input_vector[3]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_input_vector(3),
	combout => \input_vector~combout\(3));

-- Location: LC_X12_Y7_N0
\add_instance|out1~0\ : maxv_lcell
-- Equation(s):
-- \add_instance|out1~0_combout\ = (\input_vector~combout\(1) & (\input_vector~combout\(6) & ((\input_vector~combout\(3))))) # (!\input_vector~combout\(1) & (((\input_vector~combout\(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ac0c",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \input_vector~combout\(6),
	datab => \input_vector~combout\(4),
	datac => \input_vector~combout\(1),
	datad => \input_vector~combout\(3),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \add_instance|out1~0_combout\);

-- Location: LC_X12_Y7_N2
\add_instance|out1~1\ : maxv_lcell
-- Equation(s):
-- \add_instance|out1~1_combout\ = (\input_vector~combout\(0) & (\add_instance|Mux7~0_combout\ & ((\input_vector~combout\(3))))) # (!\input_vector~combout\(0) & (((\add_instance|out1~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ac0c",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \add_instance|Mux7~0_combout\,
	datab => \add_instance|out1~0_combout\,
	datac => \input_vector~combout\(0),
	datad => \input_vector~combout\(3),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \add_instance|out1~1_combout\);

-- Location: LC_X13_Y7_N5
\add_instance|Add0~0\ : maxv_lcell
-- Equation(s):
-- \add_instance|Add0~0_combout\ = \input_vector~combout\(0) $ ((\input_vector~combout\(4)))
-- \add_instance|Add0~2\ = CARRY(((\input_vector~combout\(4))) # (!\input_vector~combout\(0)))
-- \add_instance|Add0~2COUT1_21\ = CARRY(((\input_vector~combout\(4))) # (!\input_vector~combout\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "66dd",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \input_vector~combout\(0),
	datab => \input_vector~combout\(4),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \add_instance|Add0~0_combout\,
	cout0 => \add_instance|Add0~2\,
	cout1 => \add_instance|Add0~2COUT1_21\);

-- Location: LC_X13_Y7_N1
\add_instance|Mux15~1\ : maxv_lcell
-- Equation(s):
-- \add_instance|Mux15~1_combout\ = (\add_instance|Mux15~0_combout\ & (((\add_instance|Add0~0_combout\) # (!\input_vector~combout\(8))))) # (!\add_instance|Mux15~0_combout\ & (\add_instance|out1~1_combout\ & ((\input_vector~combout\(8)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "e4aa",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \add_instance|Mux15~0_combout\,
	datab => \add_instance|out1~1_combout\,
	datac => \add_instance|Add0~0_combout\,
	datad => \input_vector~combout\(8),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \add_instance|Mux15~1_combout\);

-- Location: LC_X13_Y7_N6
\add_instance|Add0~5\ : maxv_lcell
-- Equation(s):
-- \add_instance|Add0~5_combout\ = \input_vector~combout\(1) $ (\input_vector~combout\(5) $ ((!\add_instance|Add0~2\)))
-- \add_instance|Add0~7\ = CARRY((\input_vector~combout\(1) & ((!\add_instance|Add0~2\) # (!\input_vector~combout\(5)))) # (!\input_vector~combout\(1) & (!\input_vector~combout\(5) & !\add_instance|Add0~2\)))
-- \add_instance|Add0~7COUT1_22\ = CARRY((\input_vector~combout\(1) & ((!\add_instance|Add0~2COUT1_21\) # (!\input_vector~combout\(5)))) # (!\input_vector~combout\(1) & (!\input_vector~combout\(5) & !\add_instance|Add0~2COUT1_21\)))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	lut_mask => "692b",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \input_vector~combout\(1),
	datab => \input_vector~combout\(5),
	cin0 => \add_instance|Add0~2\,
	cin1 => \add_instance|Add0~2COUT1_21\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \add_instance|Add0~5_combout\,
	cout0 => \add_instance|Add0~7\,
	cout1 => \add_instance|Add0~7COUT1_22\);

-- Location: LC_X12_Y7_N1
\add_instance|Mux7~2\ : maxv_lcell
-- Equation(s):
-- \add_instance|Mux7~2_combout\ = (\input_vector~combout\(5) & (((!\input_vector~combout\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0a0a",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \input_vector~combout\(5),
	datac => \input_vector~combout\(1),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \add_instance|Mux7~2_combout\);

-- Location: LC_X11_Y7_N8
\add_instance|Mux7~1\ : maxv_lcell
-- Equation(s):
-- \add_instance|Mux7~1_combout\ = (!\input_vector~combout\(1) & (((\input_vector~combout\(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "5500",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \input_vector~combout\(1),
	datad => \input_vector~combout\(4),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \add_instance|Mux7~1_combout\);

-- Location: LC_X12_Y7_N3
\add_instance|out1~2\ : maxv_lcell
-- Equation(s):
-- \add_instance|out1~2_combout\ = (\input_vector~combout\(0) & (((\add_instance|Mux7~1_combout\) # (\input_vector~combout\(3))))) # (!\input_vector~combout\(0) & (\add_instance|Mux7~2_combout\ & ((!\input_vector~combout\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "aae4",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \input_vector~combout\(0),
	datab => \add_instance|Mux7~2_combout\,
	datac => \add_instance|Mux7~1_combout\,
	datad => \input_vector~combout\(3),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \add_instance|out1~2_combout\);

-- Location: LC_X12_Y7_N9
\add_instance|Mux7~3\ : maxv_lcell
-- Equation(s):
-- \add_instance|Mux7~3_combout\ = (\input_vector~combout\(6) & (((!\input_vector~combout\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0a0a",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \input_vector~combout\(6),
	datac => \input_vector~combout\(1),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \add_instance|Mux7~3_combout\);

-- Location: LC_X12_Y7_N8
\add_instance|out1~3\ : maxv_lcell
-- Equation(s):
-- \add_instance|out1~3_combout\ = (\add_instance|out1~2_combout\ & ((\add_instance|Mux7~3_combout\) # ((!\input_vector~combout\(3))))) # (!\add_instance|out1~2_combout\ & (((\add_instance|Mux7~0_combout\ & \input_vector~combout\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "d8aa",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \add_instance|out1~2_combout\,
	datab => \add_instance|Mux7~3_combout\,
	datac => \add_instance|Mux7~0_combout\,
	datad => \input_vector~combout\(3),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \add_instance|out1~3_combout\);

-- Location: LC_X11_Y7_N6
\add_instance|Mux14~0\ : maxv_lcell
-- Equation(s):
-- \add_instance|Mux14~0_combout\ = (\input_vector~combout\(8) & (\input_vector~combout\(9))) # (!\input_vector~combout\(8) & (\input_vector~combout\(1) $ (((\input_vector~combout\(9) & \input_vector~combout\(5))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "aa78",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \input_vector~combout\(9),
	datab => \input_vector~combout\(5),
	datac => \input_vector~combout\(1),
	datad => \input_vector~combout\(8),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \add_instance|Mux14~0_combout\);

-- Location: LC_X11_Y7_N9
\add_instance|Mux14~1\ : maxv_lcell
-- Equation(s):
-- \add_instance|Mux14~1_combout\ = (\add_instance|Mux14~0_combout\ & (((\add_instance|out1~3_combout\) # (!\input_vector~combout\(8))))) # (!\add_instance|Mux14~0_combout\ & (\add_instance|Add0~5_combout\ & ((\input_vector~combout\(8)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "caf0",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \add_instance|Add0~5_combout\,
	datab => \add_instance|out1~3_combout\,
	datac => \add_instance|Mux14~0_combout\,
	datad => \input_vector~combout\(8),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \add_instance|Mux14~1_combout\);

-- Location: PIN_104,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\input_vector[2]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_input_vector(2),
	combout => \input_vector~combout\(2));

-- Location: LC_X11_Y7_N4
\add_instance|Mux13~0\ : maxv_lcell
-- Equation(s):
-- \add_instance|Mux13~0_combout\ = (\input_vector~combout\(8) & (\input_vector~combout\(7) & ((!\input_vector~combout\(1))))) # (!\input_vector~combout\(8) & (((\input_vector~combout\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "50d8",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \input_vector~combout\(8),
	datab => \input_vector~combout\(7),
	datac => \input_vector~combout\(2),
	datad => \input_vector~combout\(1),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \add_instance|Mux13~0_combout\);

-- Location: LC_X12_Y7_N4
\add_instance|Mux7~4\ : maxv_lcell
-- Equation(s):
-- \add_instance|Mux7~4_combout\ = ((\input_vector~combout\(1) & ((\input_vector~combout\(4)))) # (!\input_vector~combout\(1) & (\input_vector~combout\(6))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "fa0a",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \input_vector~combout\(6),
	datac => \input_vector~combout\(1),
	datad => \input_vector~combout\(4),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \add_instance|Mux7~4_combout\);

-- Location: LC_X12_Y7_N7
\add_instance|out1~4\ : maxv_lcell
-- Equation(s):
-- \add_instance|out1~4_combout\ = (\input_vector~combout\(0) & ((\add_instance|Mux7~2_combout\) # ((\input_vector~combout\(3))))) # (!\input_vector~combout\(0) & (((\add_instance|Mux7~4_combout\ & !\input_vector~combout\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "aad8",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \input_vector~combout\(0),
	datab => \add_instance|Mux7~2_combout\,
	datac => \add_instance|Mux7~4_combout\,
	datad => \input_vector~combout\(3),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \add_instance|out1~4_combout\);

-- Location: LC_X12_Y7_N6
\add_instance|Mux13~1\ : maxv_lcell
-- Equation(s):
-- \add_instance|Mux13~1_combout\ = (\input_vector~combout\(3) & ((\add_instance|out1~4_combout\ & (\add_instance|Mux13~0_combout\)) # (!\add_instance|out1~4_combout\ & ((\add_instance|Mux7~3_combout\))))) # (!\input_vector~combout\(3) & 
-- (((\add_instance|out1~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "dad0",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \input_vector~combout\(3),
	datab => \add_instance|Mux13~0_combout\,
	datac => \add_instance|out1~4_combout\,
	datad => \add_instance|Mux7~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \add_instance|Mux13~1_combout\);

-- Location: LC_X13_Y7_N7
\add_instance|Add0~10\ : maxv_lcell
-- Equation(s):
-- \add_instance|Add0~10_combout\ = \input_vector~combout\(2) $ (\input_vector~combout\(6) $ ((\add_instance|Add0~7\)))
-- \add_instance|Add0~12\ = CARRY((\input_vector~combout\(2) & (\input_vector~combout\(6) & !\add_instance|Add0~7\)) # (!\input_vector~combout\(2) & ((\input_vector~combout\(6)) # (!\add_instance|Add0~7\))))
-- \add_instance|Add0~12COUT1_23\ = CARRY((\input_vector~combout\(2) & (\input_vector~combout\(6) & !\add_instance|Add0~7COUT1_22\)) # (!\input_vector~combout\(2) & ((\input_vector~combout\(6)) # (!\add_instance|Add0~7COUT1_22\))))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	lut_mask => "964d",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \input_vector~combout\(2),
	datab => \input_vector~combout\(6),
	cin0 => \add_instance|Add0~7\,
	cin1 => \add_instance|Add0~7COUT1_22\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \add_instance|Add0~10_combout\,
	cout0 => \add_instance|Add0~12\,
	cout1 => \add_instance|Add0~12COUT1_23\);

-- Location: LC_X11_Y7_N5
\add_instance|Mux13~2\ : maxv_lcell
-- Equation(s):
-- \add_instance|Mux13~2_combout\ = (\input_vector~combout\(8) & (\input_vector~combout\(9))) # (!\input_vector~combout\(8) & (\add_instance|Mux13~0_combout\ $ (((\input_vector~combout\(9) & \input_vector~combout\(6))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "aa6c",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \input_vector~combout\(9),
	datab => \add_instance|Mux13~0_combout\,
	datac => \input_vector~combout\(6),
	datad => \input_vector~combout\(8),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \add_instance|Mux13~2_combout\);

-- Location: LC_X11_Y7_N2
\add_instance|Mux13~3\ : maxv_lcell
-- Equation(s):
-- \add_instance|Mux13~3_combout\ = (\add_instance|Mux13~2_combout\ & ((\add_instance|Mux13~1_combout\) # ((!\input_vector~combout\(8))))) # (!\add_instance|Mux13~2_combout\ & (((\add_instance|Add0~10_combout\ & \input_vector~combout\(8)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "acf0",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \add_instance|Mux13~1_combout\,
	datab => \add_instance|Add0~10_combout\,
	datac => \add_instance|Mux13~2_combout\,
	datad => \input_vector~combout\(8),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \add_instance|Mux13~3_combout\);

-- Location: LC_X13_Y7_N8
\add_instance|Add0~15\ : maxv_lcell
-- Equation(s):
-- \add_instance|Add0~15_combout\ = (\input_vector~combout\(7) $ (\add_instance|Add0~12\ $ (!\input_vector~combout\(3))))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	lut_mask => "3cc3",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \input_vector~combout\(7),
	datad => \input_vector~combout\(3),
	cin0 => \add_instance|Add0~12\,
	cin1 => \add_instance|Add0~12COUT1_23\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \add_instance|Add0~15_combout\);

-- Location: LC_X13_Y7_N9
\add_instance|Mux12~0\ : maxv_lcell
-- Equation(s):
-- \add_instance|Mux12~0_combout\ = (\input_vector~combout\(8) & (((\input_vector~combout\(9))))) # (!\input_vector~combout\(8) & (\input_vector~combout\(3) $ (((\input_vector~combout\(7) & \input_vector~combout\(9))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "b5e0",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \input_vector~combout\(8),
	datab => \input_vector~combout\(7),
	datac => \input_vector~combout\(9),
	datad => \input_vector~combout\(3),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \add_instance|Mux12~0_combout\);

-- Location: LC_X13_Y7_N2
\add_instance|out1~5\ : maxv_lcell
-- Equation(s):
-- \add_instance|out1~5_combout\ = (\input_vector~combout\(1) & (((!\input_vector~combout\(3) & \input_vector~combout\(5))))) # (!\input_vector~combout\(1) & (\input_vector~combout\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "4e44",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \input_vector~combout\(1),
	datab => \input_vector~combout\(7),
	datac => \input_vector~combout\(3),
	datad => \input_vector~combout\(5),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \add_instance|out1~5_combout\);

-- Location: LC_X13_Y7_N0
\add_instance|out1~6\ : maxv_lcell
-- Equation(s):
-- \add_instance|out1~6_combout\ = (\input_vector~combout\(0) & (\add_instance|Mux7~4_combout\ & ((!\input_vector~combout\(3))))) # (!\input_vector~combout\(0) & (((\add_instance|out1~5_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "50d8",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \input_vector~combout\(0),
	datab => \add_instance|Mux7~4_combout\,
	datac => \add_instance|out1~5_combout\,
	datad => \input_vector~combout\(3),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \add_instance|out1~6_combout\);

-- Location: LC_X13_Y7_N3
\add_instance|Mux12~1\ : maxv_lcell
-- Equation(s):
-- \add_instance|Mux12~1_combout\ = (\add_instance|Mux12~0_combout\ & (((\add_instance|out1~6_combout\) # (!\input_vector~combout\(8))))) # (!\add_instance|Mux12~0_combout\ & (\add_instance|Add0~15_combout\ & ((\input_vector~combout\(8)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "e2cc",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \add_instance|Add0~15_combout\,
	datab => \add_instance|Mux12~0_combout\,
	datac => \add_instance|out1~6_combout\,
	datad => \input_vector~combout\(8),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \add_instance|Mux12~1_combout\);

-- Location: LC_X11_Y7_N7
\add_instance|Mux11~0\ : maxv_lcell
-- Equation(s):
-- \add_instance|Mux11~0_combout\ = (!\input_vector~combout\(8) & (((!\input_vector~combout\(9) & \input_vector~combout\(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0500",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \input_vector~combout\(8),
	datac => \input_vector~combout\(9),
	datad => \input_vector~combout\(4),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \add_instance|Mux11~0_combout\);

-- Location: LC_X11_Y7_N1
\add_instance|Mux10~0\ : maxv_lcell
-- Equation(s):
-- \add_instance|Mux10~0_combout\ = (!\input_vector~combout\(9) & (\input_vector~combout\(5) & ((!\input_vector~combout\(8)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0044",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \input_vector~combout\(9),
	datab => \input_vector~combout\(5),
	datad => \input_vector~combout\(8),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \add_instance|Mux10~0_combout\);

-- Location: LC_X11_Y7_N3
\add_instance|Mux9~0\ : maxv_lcell
-- Equation(s):
-- \add_instance|Mux9~0_combout\ = (!\input_vector~combout\(9) & (((\input_vector~combout\(6) & !\input_vector~combout\(8)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0050",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \input_vector~combout\(9),
	datac => \input_vector~combout\(6),
	datad => \input_vector~combout\(8),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \add_instance|Mux9~0_combout\);

-- Location: LC_X11_Y7_N0
\add_instance|Mux8~0\ : maxv_lcell
-- Equation(s):
-- \add_instance|Mux8~0_combout\ = (!\input_vector~combout\(9) & (\input_vector~combout\(7) & ((!\input_vector~combout\(8)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0044",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \input_vector~combout\(9),
	datab => \input_vector~combout\(7),
	datad => \input_vector~combout\(8),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \add_instance|Mux8~0_combout\);

-- Location: PIN_97,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\output_vector[0]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \add_instance|Mux15~1_combout\,
	oe => VCC,
	padio => ww_output_vector(0));

-- Location: PIN_62,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\output_vector[1]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \add_instance|Mux14~1_combout\,
	oe => VCC,
	padio => ww_output_vector(1));

-- Location: PIN_125,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\output_vector[2]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \add_instance|Mux13~3_combout\,
	oe => VCC,
	padio => ww_output_vector(2));

-- Location: PIN_103,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\output_vector[3]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \add_instance|Mux12~1_combout\,
	oe => VCC,
	padio => ww_output_vector(3));

-- Location: PIN_124,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\output_vector[4]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \add_instance|Mux11~0_combout\,
	oe => VCC,
	padio => ww_output_vector(4));

-- Location: PIN_121,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\output_vector[5]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \add_instance|Mux10~0_combout\,
	oe => VCC,
	padio => ww_output_vector(5));

-- Location: PIN_119,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\output_vector[6]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \add_instance|Mux9~0_combout\,
	oe => VCC,
	padio => ww_output_vector(6));

-- Location: PIN_120,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\output_vector[7]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \add_instance|Mux8~0_combout\,
	oe => VCC,
	padio => ww_output_vector(7));
END structure;


