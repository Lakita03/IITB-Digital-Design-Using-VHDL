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

-- DATE "06/10/2024 17:25:10"

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
	output_vector : BUFFER std_logic_vector(0 DOWNTO 0)
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
SIGNAL ww_output_vector : std_logic_vector(0 DOWNTO 0);
SIGNAL \add_instance|WideNor0~5_combout\ : std_logic;
SIGNAL \add_instance|WideNor0~4_combout\ : std_logic;
SIGNAL \add_instance|WideNor0~6_combout\ : std_logic;
SIGNAL \add_instance|WideNor0~9_combout\ : std_logic;
SIGNAL \add_instance|WideNor0~1_combout\ : std_logic;
SIGNAL \add_instance|WideNor0~0_combout\ : std_logic;
SIGNAL \add_instance|WideNor0~3_combout\ : std_logic;
SIGNAL \add_instance|WideNor0~7_combout\ : std_logic;
SIGNAL \add_instance|WideNor0~10_combout\ : std_logic;
SIGNAL \add_instance|WideNor0~8_combout\ : std_logic;
SIGNAL \add_instance|WideNor0~11_combout\ : std_logic;
SIGNAL \add_instance|WideNor0~2_combout\ : std_logic;
SIGNAL \add_instance|WideNor0~12_combout\ : std_logic;
SIGNAL \input_vector~combout\ : std_logic_vector(9 DOWNTO 0);

BEGIN

ww_input_vector <= input_vector;
output_vector <= ww_output_vector;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

-- Location: PIN_130,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\input_vector[5]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_input_vector(5),
	combout => \input_vector~combout\(5));

-- Location: PIN_120,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\input_vector[8]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_input_vector(8),
	combout => \input_vector~combout\(8));

-- Location: PIN_121,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\input_vector[0]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_input_vector(0),
	combout => \input_vector~combout\(0));

-- Location: PIN_125,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\input_vector[2]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_input_vector(2),
	combout => \input_vector~combout\(2));

-- Location: PIN_101,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\input_vector[3]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_input_vector(3),
	combout => \input_vector~combout\(3));

-- Location: LC_X10_Y7_N7
\add_instance|WideNor0~5\ : maxv_lcell
-- Equation(s):
-- \add_instance|WideNor0~5_combout\ = (\input_vector~combout\(8)) # ((\input_vector~combout\(2) & ((!\input_vector~combout\(3)) # (!\input_vector~combout\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "bafa",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \input_vector~combout\(8),
	datab => \input_vector~combout\(0),
	datac => \input_vector~combout\(2),
	datad => \input_vector~combout\(3),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \add_instance|WideNor0~5_combout\);

-- Location: PIN_31,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\input_vector[7]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_input_vector(7),
	combout => \input_vector~combout\(7));

-- Location: PIN_42,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\input_vector[1]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_input_vector(1),
	combout => \input_vector~combout\(1));

-- Location: PIN_32,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\input_vector[9]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_input_vector(9),
	combout => \input_vector~combout\(9));

-- Location: LC_X4_Y4_N4
\add_instance|WideNor0~4\ : maxv_lcell
-- Equation(s):
-- \add_instance|WideNor0~4_combout\ = ((!\input_vector~combout\(9) & (\input_vector~combout\(7) $ (\input_vector~combout\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "005a",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \input_vector~combout\(7),
	datac => \input_vector~combout\(1),
	datad => \input_vector~combout\(9),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \add_instance|WideNor0~4_combout\);

-- Location: PIN_122,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\input_vector[4]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_input_vector(4),
	combout => \input_vector~combout\(4));

-- Location: LC_X10_Y7_N3
\add_instance|WideNor0~6\ : maxv_lcell
-- Equation(s):
-- \add_instance|WideNor0~6_combout\ = (\input_vector~combout\(5) & (((!\input_vector~combout\(4)) # (!\add_instance|WideNor0~4_combout\)) # (!\add_instance|WideNor0~5_combout\))) # (!\input_vector~combout\(5) & ((\add_instance|WideNor0~5_combout\ & 
-- (\add_instance|WideNor0~4_combout\)) # (!\add_instance|WideNor0~5_combout\ & (!\add_instance|WideNor0~4_combout\ & \input_vector~combout\(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "6bea",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \input_vector~combout\(5),
	datab => \add_instance|WideNor0~5_combout\,
	datac => \add_instance|WideNor0~4_combout\,
	datad => \input_vector~combout\(4),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \add_instance|WideNor0~6_combout\);

-- Location: LC_X10_Y7_N9
\add_instance|WideNor0~9\ : maxv_lcell
-- Equation(s):
-- \add_instance|WideNor0~9_combout\ = (!\add_instance|WideNor0~5_combout\ & (\add_instance|WideNor0~4_combout\ & ((!\input_vector~combout\(4)) # (!\input_vector~combout\(5)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1030",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \input_vector~combout\(5),
	datab => \add_instance|WideNor0~5_combout\,
	datac => \add_instance|WideNor0~4_combout\,
	datad => \input_vector~combout\(4),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \add_instance|WideNor0~9_combout\);

-- Location: LC_X10_Y7_N6
\add_instance|WideNor0~1\ : maxv_lcell
-- Equation(s):
-- \add_instance|WideNor0~1_combout\ = (\input_vector~combout\(0) & ((\input_vector~combout\(3) & ((!\input_vector~combout\(2)))) # (!\input_vector~combout\(3) & (!\input_vector~combout\(8)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0c44",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \input_vector~combout\(8),
	datab => \input_vector~combout\(0),
	datac => \input_vector~combout\(2),
	datad => \input_vector~combout\(3),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \add_instance|WideNor0~1_combout\);

-- Location: PIN_61,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\input_vector[6]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_input_vector(6),
	combout => \input_vector~combout\(6));

-- Location: LC_X4_Y4_N2
\add_instance|WideNor0~0\ : maxv_lcell
-- Equation(s):
-- \add_instance|WideNor0~0_combout\ = (((\input_vector~combout\(7)) # (\input_vector~combout\(9))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "fff0",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datac => \input_vector~combout\(7),
	datad => \input_vector~combout\(9),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \add_instance|WideNor0~0_combout\);

-- Location: LC_X10_Y7_N2
\add_instance|WideNor0~3\ : maxv_lcell
-- Equation(s):
-- \add_instance|WideNor0~3_combout\ = (\add_instance|WideNor0~1_combout\ & (\add_instance|WideNor0~0_combout\ $ (((\input_vector~combout\(4)) # (!\input_vector~combout\(6))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0a82",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \add_instance|WideNor0~1_combout\,
	datab => \input_vector~combout\(6),
	datac => \add_instance|WideNor0~0_combout\,
	datad => \input_vector~combout\(4),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \add_instance|WideNor0~3_combout\);

-- Location: LC_X10_Y7_N1
\add_instance|WideNor0~7\ : maxv_lcell
-- Equation(s):
-- \add_instance|WideNor0~7_combout\ = (\input_vector~combout\(5) & (\add_instance|WideNor0~5_combout\ & ((\input_vector~combout\(4))))) # (!\input_vector~combout\(5) & ((\add_instance|WideNor0~5_combout\ & (!\add_instance|WideNor0~4_combout\)) # 
-- (!\add_instance|WideNor0~5_combout\ & ((\input_vector~combout\(4))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "9d04",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \input_vector~combout\(5),
	datab => \add_instance|WideNor0~5_combout\,
	datac => \add_instance|WideNor0~4_combout\,
	datad => \input_vector~combout\(4),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \add_instance|WideNor0~7_combout\);

-- Location: LC_X10_Y7_N4
\add_instance|WideNor0~10\ : maxv_lcell
-- Equation(s):
-- \add_instance|WideNor0~10_combout\ = (\add_instance|WideNor0~7_combout\ & ((\add_instance|WideNor0~6_combout\ & (\add_instance|WideNor0~3_combout\ & \input_vector~combout\(3))) # (!\add_instance|WideNor0~6_combout\ & ((!\input_vector~combout\(3)))))) # 
-- (!\add_instance|WideNor0~7_combout\ & ((\add_instance|WideNor0~3_combout\ & (\add_instance|WideNor0~6_combout\ & !\input_vector~combout\(3))) # (!\add_instance|WideNor0~3_combout\ & ((\input_vector~combout\(3))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "8358",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \add_instance|WideNor0~6_combout\,
	datab => \add_instance|WideNor0~3_combout\,
	datac => \add_instance|WideNor0~7_combout\,
	datad => \input_vector~combout\(3),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \add_instance|WideNor0~10_combout\);

-- Location: LC_X10_Y7_N5
\add_instance|WideNor0~8\ : maxv_lcell
-- Equation(s):
-- \add_instance|WideNor0~8_combout\ = (\add_instance|WideNor0~3_combout\ & (((\input_vector~combout\(3))))) # (!\add_instance|WideNor0~3_combout\ & (!\add_instance|WideNor0~6_combout\ & (\add_instance|WideNor0~7_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "dc10",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \add_instance|WideNor0~6_combout\,
	datab => \add_instance|WideNor0~3_combout\,
	datac => \add_instance|WideNor0~7_combout\,
	datad => \input_vector~combout\(3),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \add_instance|WideNor0~8_combout\);

-- Location: LC_X10_Y7_N0
\add_instance|WideNor0~11\ : maxv_lcell
-- Equation(s):
-- \add_instance|WideNor0~11_combout\ = (\add_instance|WideNor0~9_combout\ & (\add_instance|WideNor0~10_combout\ $ (((\add_instance|WideNor0~6_combout\ & \add_instance|WideNor0~8_combout\))))) # (!\add_instance|WideNor0~9_combout\ & 
-- (\add_instance|WideNor0~6_combout\ & ((\add_instance|WideNor0~10_combout\) # (!\add_instance|WideNor0~8_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "68e2",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \add_instance|WideNor0~6_combout\,
	datab => \add_instance|WideNor0~9_combout\,
	datac => \add_instance|WideNor0~10_combout\,
	datad => \add_instance|WideNor0~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \add_instance|WideNor0~11_combout\);

-- Location: LC_X10_Y7_N8
\add_instance|WideNor0~2\ : maxv_lcell
-- Equation(s):
-- \add_instance|WideNor0~2_combout\ = (\add_instance|WideNor0~1_combout\ & ((\add_instance|WideNor0~0_combout\ & ((!\input_vector~combout\(4)))) # (!\add_instance|WideNor0~0_combout\ & (\input_vector~combout\(6))))) # (!\add_instance|WideNor0~1_combout\ & 
-- ((\input_vector~combout\(6) & ((!\input_vector~combout\(4)))) # (!\input_vector~combout\(6) & (\add_instance|WideNor0~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "18fc",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \add_instance|WideNor0~1_combout\,
	datab => \input_vector~combout\(6),
	datac => \add_instance|WideNor0~0_combout\,
	datad => \input_vector~combout\(4),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \add_instance|WideNor0~2_combout\);

-- Location: LC_X15_Y6_N2
\add_instance|WideNor0~12\ : maxv_lcell
-- Equation(s):
-- \add_instance|WideNor0~12_combout\ = ((\add_instance|WideNor0~11_combout\ & (\add_instance|WideNor0~2_combout\ & \add_instance|WideNor0~8_combout\)) # (!\add_instance|WideNor0~11_combout\ & (!\add_instance|WideNor0~2_combout\ & 
-- !\add_instance|WideNor0~8_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "c003",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \add_instance|WideNor0~11_combout\,
	datac => \add_instance|WideNor0~2_combout\,
	datad => \add_instance|WideNor0~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \add_instance|WideNor0~12_combout\);

-- Location: PIN_95,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\output_vector[0]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \add_instance|WideNor0~12_combout\,
	oe => VCC,
	padio => ww_output_vector(0));
END structure;


