--IP Functional Simulation Model
--VERSION_BEGIN 11.1SP2 cbx_mgl 2012:01:25:21:15:41:SJ cbx_simgen 2012:01:25:21:13:53:SJ  VERSION_END


-- Copyright (C) 1991-2011 Altera Corporation
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

-- You may only use these simulation model output files for simulation
-- purposes and expressly not for synthesis or any other purposes (in which
-- event Altera disclaims all warranties of any kind).


--synopsys translate_off

--synthesis_resources = lut 2 
 LIBRARY ieee;
 USE ieee.std_logic_1164.all;

 ENTITY  Nios1_onchip_memory_s1_translator IS 
	 PORT 
	 ( 
		 av_address	:	OUT  STD_LOGIC_VECTOR (14 DOWNTO 0);
		 av_byteenable	:	OUT  STD_LOGIC_VECTOR (3 DOWNTO 0);
		 av_chipselect	:	OUT  STD_LOGIC;
		 av_clken	:	OUT  STD_LOGIC;
		 av_readdata	:	IN  STD_LOGIC_VECTOR (31 DOWNTO 0);
		 av_write	:	OUT  STD_LOGIC;
		 av_writedata	:	OUT  STD_LOGIC_VECTOR (31 DOWNTO 0);
		 clk	:	IN  STD_LOGIC;
		 reset	:	IN  STD_LOGIC;
		 uav_address	:	IN  STD_LOGIC_VECTOR (18 DOWNTO 0);
		 uav_burstcount	:	IN  STD_LOGIC_VECTOR (2 DOWNTO 0);
		 uav_byteenable	:	IN  STD_LOGIC_VECTOR (3 DOWNTO 0);
		 uav_debugaccess	:	IN  STD_LOGIC;
		 uav_lock	:	IN  STD_LOGIC;
		 uav_read	:	IN  STD_LOGIC;
		 uav_readdata	:	OUT  STD_LOGIC_VECTOR (31 DOWNTO 0);
		 uav_readdatavalid	:	OUT  STD_LOGIC;
		 uav_waitrequest	:	OUT  STD_LOGIC;
		 uav_write	:	IN  STD_LOGIC;
		 uav_writedata	:	IN  STD_LOGIC_VECTOR (31 DOWNTO 0)
	 ); 
 END Nios1_onchip_memory_s1_translator;

 ARCHITECTURE RTL OF Nios1_onchip_memory_s1_translator IS

	 ATTRIBUTE synthesis_clearbox : natural;
	 ATTRIBUTE synthesis_clearbox OF RTL : ARCHITECTURE IS 1;
	 SIGNAL	nios1_onchip_memory_s1_translator_altera_merlin_slave_translator_onchip_memory_s1_translator_read_latency_shift_reg_0_199q	:	STD_LOGIC := '0';
	 SIGNAL	nios1_onchip_memory_s1_translator_altera_merlin_slave_translator_onchip_memory_s1_translator_waitrequest_reset_override_192q	:	STD_LOGIC := '0';
	 SIGNAL  wire_nO_w252w	:	STD_LOGIC_VECTOR (0 DOWNTO 0);
	 SIGNAL  wire_w_lg_reset251w	:	STD_LOGIC_VECTOR (0 DOWNTO 0);
	 SIGNAL  s_wire_gnd :	STD_LOGIC;
	 SIGNAL  s_wire_vcc :	STD_LOGIC;
 BEGIN

	wire_w_lg_reset251w(0) <= NOT reset;
	av_address <= ( uav_address(16 DOWNTO 2));
	av_byteenable <= ( uav_byteenable(3 DOWNTO 0));
	av_chipselect <= (uav_read OR uav_write);
	av_clken <= '1';
	av_write <= uav_write;
	av_writedata <= ( uav_writedata(31 DOWNTO 0));
	s_wire_gnd <= '0';
	s_wire_vcc <= '1';
	uav_readdata <= ( av_readdata(31 DOWNTO 0));
	uav_readdatavalid <= nios1_onchip_memory_s1_translator_altera_merlin_slave_translator_onchip_memory_s1_translator_read_latency_shift_reg_0_199q;
	uav_waitrequest <= nios1_onchip_memory_s1_translator_altera_merlin_slave_translator_onchip_memory_s1_translator_waitrequest_reset_override_192q;
	PROCESS (clk, reset)
	BEGIN
		IF (reset = '1') THEN
				nios1_onchip_memory_s1_translator_altera_merlin_slave_translator_onchip_memory_s1_translator_read_latency_shift_reg_0_199q <= '0';
		ELSIF (clk = '1' AND clk'event) THEN
				nios1_onchip_memory_s1_translator_altera_merlin_slave_translator_onchip_memory_s1_translator_read_latency_shift_reg_0_199q <= (uav_read AND wire_nO_w252w(0));
		END IF;
	END PROCESS;
	PROCESS (clk, reset)
	BEGIN
		IF (reset = '1') THEN
				nios1_onchip_memory_s1_translator_altera_merlin_slave_translator_onchip_memory_s1_translator_waitrequest_reset_override_192q <= '1';
		ELSIF (clk = '1' AND clk'event) THEN
				nios1_onchip_memory_s1_translator_altera_merlin_slave_translator_onchip_memory_s1_translator_waitrequest_reset_override_192q <= s_wire_gnd;
		END IF;
		if (now = 0 ns) then
			nios1_onchip_memory_s1_translator_altera_merlin_slave_translator_onchip_memory_s1_translator_waitrequest_reset_override_192q <= '1' after 1 ps;
		end if;
	END PROCESS;
	wire_nO_w252w(0) <= NOT nios1_onchip_memory_s1_translator_altera_merlin_slave_translator_onchip_memory_s1_translator_waitrequest_reset_override_192q;

 END RTL; --Nios1_onchip_memory_s1_translator
--synopsys translate_on
--VALID FILE
