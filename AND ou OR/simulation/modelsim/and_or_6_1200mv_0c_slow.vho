-- Copyright (C) 1991-2013 Altera Corporation
-- Your use of Altera Corporation's design tools, logic functions 
-- and other software and tools, and its AMPP partner logic 
-- functions, and any output files from any of the foregoing 
-- (including device programming or simulation files), and any 
-- associated documentation or information are expressly subject 
-- to the terms and conditions of the Altera Program License 
-- Subscription Agreement, Altera MegaCore Function License 
-- Agreement, or other applicable license agreement, including, 
-- without limitation, that your use is for the sole purpose of 
-- programming logic devices manufactured by Altera and sold by 
-- Altera or its authorized distributors.  Please refer to the 
-- applicable agreement for further details.

-- VENDOR "Altera"
-- PROGRAM "Quartus II 64-Bit"
-- VERSION "Version 13.1.0 Build 162 10/23/2013 SJ Web Edition"

-- DATE "09/11/2018 19:42:35"

-- 
-- Device: Altera EP3C16F484C6 Package FBGA484
-- 

-- 
-- This VHDL file should be used for ModelSim-Altera (VHDL) only
-- 

LIBRARY ALTERA;
LIBRARY CYCLONEIII;
LIBRARY IEEE;
USE ALTERA.ALTERA_PRIMITIVES_COMPONENTS.ALL;
USE CYCLONEIII.CYCLONEIII_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	and_or IS
    PORT (
	i_data1 : IN std_logic_vector(7 DOWNTO 0);
	i_data2 : IN std_logic_vector(7 DOWNTO 0);
	o_data : OUT std_logic_vector(7 DOWNTO 0);
	i_Clk : IN std_logic;
	i_rst : IN std_logic;
	i_en : IN std_logic
	);
END and_or;

-- Design Ports Information
-- o_data[0]	=>  Location: PIN_V4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- o_data[1]	=>  Location: PIN_V2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- o_data[2]	=>  Location: PIN_V5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- o_data[3]	=>  Location: PIN_N8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- o_data[4]	=>  Location: PIN_P3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- o_data[5]	=>  Location: PIN_U2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- o_data[6]	=>  Location: PIN_M8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- o_data[7]	=>  Location: PIN_T4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- i_data1[0]	=>  Location: PIN_V6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- i_data2[0]	=>  Location: PIN_AA2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- i_rst	=>  Location: PIN_P5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- i_Clk	=>  Location: PIN_G2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- i_en	=>  Location: PIN_M6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- i_data1[1]	=>  Location: PIN_P6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- i_data2[1]	=>  Location: PIN_W1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- i_data1[2]	=>  Location: PIN_Y8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- i_data2[2]	=>  Location: PIN_R5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- i_data1[3]	=>  Location: PIN_N7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- i_data2[3]	=>  Location: PIN_V1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- i_data1[4]	=>  Location: PIN_P7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- i_data2[4]	=>  Location: PIN_W2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- i_data1[5]	=>  Location: PIN_P8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- i_data2[5]	=>  Location: PIN_L7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- i_data1[6]	=>  Location: PIN_T7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- i_data2[6]	=>  Location: PIN_T8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- i_data1[7]	=>  Location: PIN_Y1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- i_data2[7]	=>  Location: PIN_T3,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF and_or IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_i_data1 : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_i_data2 : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_o_data : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_i_Clk : std_logic;
SIGNAL ww_i_rst : std_logic;
SIGNAL ww_i_en : std_logic;
SIGNAL \i_Clk~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \o_data[0]~output_o\ : std_logic;
SIGNAL \o_data[1]~output_o\ : std_logic;
SIGNAL \o_data[2]~output_o\ : std_logic;
SIGNAL \o_data[3]~output_o\ : std_logic;
SIGNAL \o_data[4]~output_o\ : std_logic;
SIGNAL \o_data[5]~output_o\ : std_logic;
SIGNAL \o_data[6]~output_o\ : std_logic;
SIGNAL \o_data[7]~output_o\ : std_logic;
SIGNAL \i_Clk~input_o\ : std_logic;
SIGNAL \i_Clk~inputclkctrl_outclk\ : std_logic;
SIGNAL \i_rst~input_o\ : std_logic;
SIGNAL \i_data2[0]~input_o\ : std_logic;
SIGNAL \i_data1[0]~input_o\ : std_logic;
SIGNAL \o_data~0_combout\ : std_logic;
SIGNAL \i_en~input_o\ : std_logic;
SIGNAL \o_data[0]~1_combout\ : std_logic;
SIGNAL \o_data[0]~reg0_q\ : std_logic;
SIGNAL \i_data2[1]~input_o\ : std_logic;
SIGNAL \i_data1[1]~input_o\ : std_logic;
SIGNAL \o_data~2_combout\ : std_logic;
SIGNAL \o_data[1]~reg0_q\ : std_logic;
SIGNAL \i_data2[2]~input_o\ : std_logic;
SIGNAL \i_data1[2]~input_o\ : std_logic;
SIGNAL \o_data~3_combout\ : std_logic;
SIGNAL \o_data[2]~reg0_q\ : std_logic;
SIGNAL \i_data2[3]~input_o\ : std_logic;
SIGNAL \i_data1[3]~input_o\ : std_logic;
SIGNAL \o_data~4_combout\ : std_logic;
SIGNAL \o_data[3]~reg0_q\ : std_logic;
SIGNAL \i_data1[4]~input_o\ : std_logic;
SIGNAL \i_data2[4]~input_o\ : std_logic;
SIGNAL \o_data~5_combout\ : std_logic;
SIGNAL \o_data[4]~reg0_q\ : std_logic;
SIGNAL \i_data1[5]~input_o\ : std_logic;
SIGNAL \i_data2[5]~input_o\ : std_logic;
SIGNAL \o_data~6_combout\ : std_logic;
SIGNAL \o_data[5]~reg0_q\ : std_logic;
SIGNAL \i_data1[6]~input_o\ : std_logic;
SIGNAL \i_data2[6]~input_o\ : std_logic;
SIGNAL \o_data~7_combout\ : std_logic;
SIGNAL \o_data[6]~reg0_q\ : std_logic;
SIGNAL \i_data2[7]~input_o\ : std_logic;
SIGNAL \i_data1[7]~input_o\ : std_logic;
SIGNAL \o_data~8_combout\ : std_logic;
SIGNAL \o_data[7]~reg0_q\ : std_logic;

BEGIN

ww_i_data1 <= i_data1;
ww_i_data2 <= i_data2;
o_data <= ww_o_data;
ww_i_Clk <= i_Clk;
ww_i_rst <= i_rst;
ww_i_en <= i_en;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\i_Clk~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \i_Clk~input_o\);

-- Location: IOOBUF_X0_Y5_N23
\o_data[0]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \o_data[0]~reg0_q\,
	devoe => ww_devoe,
	o => \o_data[0]~output_o\);

-- Location: IOOBUF_X0_Y9_N23
\o_data[1]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \o_data[1]~reg0_q\,
	devoe => ww_devoe,
	o => \o_data[1]~output_o\);

-- Location: IOOBUF_X3_Y0_N30
\o_data[2]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \o_data[2]~reg0_q\,
	devoe => ww_devoe,
	o => \o_data[2]~output_o\);

-- Location: IOOBUF_X0_Y7_N9
\o_data[3]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \o_data[3]~reg0_q\,
	devoe => ww_devoe,
	o => \o_data[3]~output_o\);

-- Location: IOOBUF_X0_Y9_N2
\o_data[4]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \o_data[4]~reg0_q\,
	devoe => ww_devoe,
	o => \o_data[4]~output_o\);

-- Location: IOOBUF_X0_Y9_N9
\o_data[5]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \o_data[5]~reg0_q\,
	devoe => ww_devoe,
	o => \o_data[5]~output_o\);

-- Location: IOOBUF_X0_Y7_N2
\o_data[6]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \o_data[6]~reg0_q\,
	devoe => ww_devoe,
	o => \o_data[6]~output_o\);

-- Location: IOOBUF_X0_Y4_N23
\o_data[7]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \o_data[7]~reg0_q\,
	devoe => ww_devoe,
	o => \o_data[7]~output_o\);

-- Location: IOIBUF_X0_Y14_N1
\i_Clk~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_i_Clk,
	o => \i_Clk~input_o\);

-- Location: CLKCTRL_G4
\i_Clk~inputclkctrl\ : cycloneiii_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \i_Clk~inputclkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \i_Clk~inputclkctrl_outclk\);

-- Location: IOIBUF_X0_Y8_N8
\i_rst~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_i_rst,
	o => \i_rst~input_o\);

-- Location: IOIBUF_X0_Y5_N8
\i_data2[0]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_i_data2(0),
	o => \i_data2[0]~input_o\);

-- Location: IOIBUF_X1_Y0_N1
\i_data1[0]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_i_data1(0),
	o => \i_data1[0]~input_o\);

-- Location: LCCOMB_X1_Y5_N16
\o_data~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \o_data~0_combout\ = (\i_rst~input_o\ & (\i_data2[0]~input_o\ & \i_data1[0]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_rst~input_o\,
	datac => \i_data2[0]~input_o\,
	datad => \i_data1[0]~input_o\,
	combout => \o_data~0_combout\);

-- Location: IOIBUF_X0_Y13_N8
\i_en~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_i_en,
	o => \i_en~input_o\);

-- Location: LCCOMB_X1_Y5_N0
\o_data[0]~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \o_data[0]~1_combout\ = (!\i_en~input_o\) # (!\i_rst~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_rst~input_o\,
	datad => \i_en~input_o\,
	combout => \o_data[0]~1_combout\);

-- Location: FF_X1_Y5_N17
\o_data[0]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_Clk~inputclkctrl_outclk\,
	d => \o_data~0_combout\,
	ena => \o_data[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \o_data[0]~reg0_q\);

-- Location: IOIBUF_X0_Y7_N22
\i_data2[1]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_i_data2(1),
	o => \i_data2[1]~input_o\);

-- Location: IOIBUF_X0_Y4_N8
\i_data1[1]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_i_data1(1),
	o => \i_data1[1]~input_o\);

-- Location: LCCOMB_X1_Y5_N10
\o_data~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \o_data~2_combout\ = (\i_data2[1]~input_o\ & (\i_data1[1]~input_o\ & \i_rst~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \i_data2[1]~input_o\,
	datac => \i_data1[1]~input_o\,
	datad => \i_rst~input_o\,
	combout => \o_data~2_combout\);

-- Location: FF_X1_Y5_N11
\o_data[1]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_Clk~inputclkctrl_outclk\,
	d => \o_data~2_combout\,
	ena => \o_data[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \o_data[1]~reg0_q\);

-- Location: IOIBUF_X0_Y4_N15
\i_data2[2]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_i_data2(2),
	o => \i_data2[2]~input_o\);

-- Location: IOIBUF_X11_Y0_N1
\i_data1[2]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_i_data1(2),
	o => \i_data1[2]~input_o\);

-- Location: LCCOMB_X1_Y5_N28
\o_data~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \o_data~3_combout\ = (\i_data2[2]~input_o\ & (\i_data1[2]~input_o\ & \i_rst~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_data2[2]~input_o\,
	datab => \i_data1[2]~input_o\,
	datad => \i_rst~input_o\,
	combout => \o_data~3_combout\);

-- Location: FF_X1_Y5_N29
\o_data[2]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_Clk~inputclkctrl_outclk\,
	d => \o_data~3_combout\,
	ena => \o_data[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \o_data[2]~reg0_q\);

-- Location: IOIBUF_X0_Y8_N1
\i_data2[3]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_i_data2(3),
	o => \i_data2[3]~input_o\);

-- Location: IOIBUF_X0_Y6_N22
\i_data1[3]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_i_data1(3),
	o => \i_data1[3]~input_o\);

-- Location: LCCOMB_X1_Y5_N22
\o_data~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \o_data~4_combout\ = (\i_data2[3]~input_o\ & (\i_data1[3]~input_o\ & \i_rst~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_data2[3]~input_o\,
	datac => \i_data1[3]~input_o\,
	datad => \i_rst~input_o\,
	combout => \o_data~4_combout\);

-- Location: FF_X1_Y5_N23
\o_data[3]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_Clk~inputclkctrl_outclk\,
	d => \o_data~4_combout\,
	ena => \o_data[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \o_data[3]~reg0_q\);

-- Location: IOIBUF_X0_Y5_N1
\i_data1[4]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_i_data1(4),
	o => \i_data1[4]~input_o\);

-- Location: IOIBUF_X0_Y7_N15
\i_data2[4]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_i_data2(4),
	o => \i_data2[4]~input_o\);

-- Location: LCCOMB_X1_Y5_N24
\o_data~5\ : cycloneiii_lcell_comb
-- Equation(s):
-- \o_data~5_combout\ = (\i_data1[4]~input_o\ & (\i_data2[4]~input_o\ & \i_rst~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_data1[4]~input_o\,
	datac => \i_data2[4]~input_o\,
	datad => \i_rst~input_o\,
	combout => \o_data~5_combout\);

-- Location: FF_X1_Y5_N25
\o_data[4]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_Clk~inputclkctrl_outclk\,
	d => \o_data~5_combout\,
	ena => \o_data[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \o_data[4]~reg0_q\);

-- Location: IOIBUF_X0_Y2_N15
\i_data1[5]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_i_data1(5),
	o => \i_data1[5]~input_o\);

-- Location: IOIBUF_X0_Y11_N1
\i_data2[5]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_i_data2(5),
	o => \i_data2[5]~input_o\);

-- Location: LCCOMB_X1_Y5_N26
\o_data~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \o_data~6_combout\ = (\i_data1[5]~input_o\ & (\i_data2[5]~input_o\ & \i_rst~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_data1[5]~input_o\,
	datab => \i_data2[5]~input_o\,
	datad => \i_rst~input_o\,
	combout => \o_data~6_combout\);

-- Location: FF_X1_Y5_N27
\o_data[5]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_Clk~inputclkctrl_outclk\,
	d => \o_data~6_combout\,
	ena => \o_data[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \o_data[5]~reg0_q\);

-- Location: IOIBUF_X0_Y2_N8
\i_data1[6]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_i_data1(6),
	o => \i_data1[6]~input_o\);

-- Location: IOIBUF_X1_Y0_N22
\i_data2[6]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_i_data2(6),
	o => \i_data2[6]~input_o\);

-- Location: LCCOMB_X1_Y5_N12
\o_data~7\ : cycloneiii_lcell_comb
-- Equation(s):
-- \o_data~7_combout\ = (\i_data1[6]~input_o\ & (\i_data2[6]~input_o\ & \i_rst~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_data1[6]~input_o\,
	datac => \i_data2[6]~input_o\,
	datad => \i_rst~input_o\,
	combout => \o_data~7_combout\);

-- Location: FF_X1_Y5_N13
\o_data[6]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_Clk~inputclkctrl_outclk\,
	d => \o_data~7_combout\,
	ena => \o_data[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \o_data[6]~reg0_q\);

-- Location: IOIBUF_X0_Y6_N15
\i_data2[7]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_i_data2(7),
	o => \i_data2[7]~input_o\);

-- Location: IOIBUF_X0_Y6_N8
\i_data1[7]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_i_data1(7),
	o => \i_data1[7]~input_o\);

-- Location: LCCOMB_X1_Y5_N30
\o_data~8\ : cycloneiii_lcell_comb
-- Equation(s):
-- \o_data~8_combout\ = (\i_data2[7]~input_o\ & (\i_data1[7]~input_o\ & \i_rst~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \i_data2[7]~input_o\,
	datac => \i_data1[7]~input_o\,
	datad => \i_rst~input_o\,
	combout => \o_data~8_combout\);

-- Location: FF_X1_Y5_N31
\o_data[7]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_Clk~inputclkctrl_outclk\,
	d => \o_data~8_combout\,
	ena => \o_data[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \o_data[7]~reg0_q\);

ww_o_data(0) <= \o_data[0]~output_o\;

ww_o_data(1) <= \o_data[1]~output_o\;

ww_o_data(2) <= \o_data[2]~output_o\;

ww_o_data(3) <= \o_data[3]~output_o\;

ww_o_data(4) <= \o_data[4]~output_o\;

ww_o_data(5) <= \o_data[5]~output_o\;

ww_o_data(6) <= \o_data[6]~output_o\;

ww_o_data(7) <= \o_data[7]~output_o\;
END structure;


