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

-- DATE "06/10/2024 10:17:26"

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

ENTITY 	dec3_8 IS
    PORT (
	A1 : IN std_logic;
	A2 : IN std_logic;
	A3 : IN std_logic;
	E : IN std_logic;
	Y0 : BUFFER std_logic;
	Y1 : BUFFER std_logic;
	Y2 : BUFFER std_logic;
	Y3 : BUFFER std_logic;
	Y4 : BUFFER std_logic;
	Y5 : BUFFER std_logic;
	Y6 : BUFFER std_logic;
	Y7 : BUFFER std_logic
	);
END dec3_8;

-- Design Ports Information


ARCHITECTURE structure OF dec3_8 IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_A1 : std_logic;
SIGNAL ww_A2 : std_logic;
SIGNAL ww_A3 : std_logic;
SIGNAL ww_E : std_logic;
SIGNAL ww_Y0 : std_logic;
SIGNAL ww_Y1 : std_logic;
SIGNAL ww_Y2 : std_logic;
SIGNAL ww_Y3 : std_logic;
SIGNAL ww_Y4 : std_logic;
SIGNAL ww_Y5 : std_logic;
SIGNAL ww_Y6 : std_logic;
SIGNAL ww_Y7 : std_logic;
SIGNAL \A3~combout\ : std_logic;
SIGNAL \A2~combout\ : std_logic;
SIGNAL \E~combout\ : std_logic;
SIGNAL \A1~combout\ : std_logic;
SIGNAL \inst5|inst4|Y~0_combout\ : std_logic;
SIGNAL \inst5|inst6|Y~0_combout\ : std_logic;
SIGNAL \inst5|inst8|Y~0_combout\ : std_logic;
SIGNAL \inst5|inst10|Y~0_combout\ : std_logic;
SIGNAL \inst4|inst4|Y~0_combout\ : std_logic;
SIGNAL \inst4|inst6|Y~0_combout\ : std_logic;
SIGNAL \inst4|inst8|Y~0_combout\ : std_logic;
SIGNAL \inst4|inst10|Y~0_combout\ : std_logic;

BEGIN

ww_A1 <= A1;
ww_A2 <= A2;
ww_A3 <= A3;
ww_E <= E;
Y0 <= ww_Y0;
Y1 <= ww_Y1;
Y2 <= ww_Y2;
Y3 <= ww_Y3;
Y4 <= ww_Y4;
Y5 <= ww_Y5;
Y6 <= ww_Y6;
Y7 <= ww_Y7;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

-- Location: PIN_61,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\A3~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_A3,
	combout => \A3~combout\);

-- Location: PIN_62,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\A2~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_A2,
	combout => \A2~combout\);

-- Location: PIN_53,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\E~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_E,
	combout => \E~combout\);

-- Location: PIN_69,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\A1~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_A1,
	combout => \A1~combout\);

-- Location: LC_X12_Y1_N8
\inst5|inst4|Y~0\ : maxv_lcell
-- Equation(s):
-- \inst5|inst4|Y~0_combout\ = (!\A3~combout\ & (!\A2~combout\ & (\E~combout\ & !\A1~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \A3~combout\,
	datab => \A2~combout\,
	datac => \E~combout\,
	datad => \A1~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \inst5|inst4|Y~0_combout\);

-- Location: LC_X12_Y1_N4
\inst5|inst6|Y~0\ : maxv_lcell
-- Equation(s):
-- \inst5|inst6|Y~0_combout\ = (!\A3~combout\ & (!\A2~combout\ & (\E~combout\ & \A1~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \A3~combout\,
	datab => \A2~combout\,
	datac => \E~combout\,
	datad => \A1~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \inst5|inst6|Y~0_combout\);

-- Location: LC_X12_Y1_N2
\inst5|inst8|Y~0\ : maxv_lcell
-- Equation(s):
-- \inst5|inst8|Y~0_combout\ = (!\A3~combout\ & (\A2~combout\ & (\E~combout\ & !\A1~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0040",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \A3~combout\,
	datab => \A2~combout\,
	datac => \E~combout\,
	datad => \A1~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \inst5|inst8|Y~0_combout\);

-- Location: LC_X12_Y1_N5
\inst5|inst10|Y~0\ : maxv_lcell
-- Equation(s):
-- \inst5|inst10|Y~0_combout\ = (!\A3~combout\ & (\A2~combout\ & (\E~combout\ & \A1~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "4000",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \A3~combout\,
	datab => \A2~combout\,
	datac => \E~combout\,
	datad => \A1~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \inst5|inst10|Y~0_combout\);

-- Location: LC_X12_Y1_N7
\inst4|inst4|Y~0\ : maxv_lcell
-- Equation(s):
-- \inst4|inst4|Y~0_combout\ = (\A3~combout\ & (!\A2~combout\ & (\E~combout\ & !\A1~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0020",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \A3~combout\,
	datab => \A2~combout\,
	datac => \E~combout\,
	datad => \A1~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \inst4|inst4|Y~0_combout\);

-- Location: LC_X12_Y1_N3
\inst4|inst6|Y~0\ : maxv_lcell
-- Equation(s):
-- \inst4|inst6|Y~0_combout\ = (\A3~combout\ & (!\A2~combout\ & (\E~combout\ & \A1~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "2000",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \A3~combout\,
	datab => \A2~combout\,
	datac => \E~combout\,
	datad => \A1~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \inst4|inst6|Y~0_combout\);

-- Location: LC_X12_Y1_N9
\inst4|inst8|Y~0\ : maxv_lcell
-- Equation(s):
-- \inst4|inst8|Y~0_combout\ = (\A3~combout\ & (\A2~combout\ & (\E~combout\ & !\A1~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0080",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \A3~combout\,
	datab => \A2~combout\,
	datac => \E~combout\,
	datad => \A1~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \inst4|inst8|Y~0_combout\);

-- Location: LC_X12_Y1_N6
\inst4|inst10|Y~0\ : maxv_lcell
-- Equation(s):
-- \inst4|inst10|Y~0_combout\ = (\A3~combout\ & (\A2~combout\ & (\E~combout\ & \A1~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "8000",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \A3~combout\,
	datab => \A2~combout\,
	datac => \E~combout\,
	datad => \A1~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \inst4|inst10|Y~0_combout\);

-- Location: PIN_59,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\Y0~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \inst5|inst4|Y~0_combout\,
	oe => VCC,
	padio => ww_Y0);

-- Location: PIN_63,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\Y1~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \inst5|inst6|Y~0_combout\,
	oe => VCC,
	padio => ww_Y1);

-- Location: PIN_58,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\Y2~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \inst5|inst8|Y~0_combout\,
	oe => VCC,
	padio => ww_Y2);

-- Location: PIN_67,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\Y3~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \inst5|inst10|Y~0_combout\,
	oe => VCC,
	padio => ww_Y3);

-- Location: PIN_68,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\Y4~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \inst4|inst4|Y~0_combout\,
	oe => VCC,
	padio => ww_Y4);

-- Location: PIN_74,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\Y5~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \inst4|inst6|Y~0_combout\,
	oe => VCC,
	padio => ww_Y5);

-- Location: PIN_70,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\Y6~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \inst4|inst8|Y~0_combout\,
	oe => VCC,
	padio => ww_Y6);

-- Location: PIN_66,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\Y7~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \inst4|inst10|Y~0_combout\,
	oe => VCC,
	padio => ww_Y7);
END structure;


