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

 LIBRARY sgate;
 USE sgate.sgate_pack.all;

--synthesis_resources = lut 20 mux21 5 oper_add 1 oper_less_than 2 
 LIBRARY ieee;
 USE ieee.std_logic_1164.all;

 ENTITY  Nios1_timer_0_s1_translator IS 
	 PORT 
	 ( 
		 av_address	:	OUT  STD_LOGIC_VECTOR (2 DOWNTO 0);
		 av_chipselect	:	OUT  STD_LOGIC;
		 av_readdata	:	IN  STD_LOGIC_VECTOR (15 DOWNTO 0);
		 av_write	:	OUT  STD_LOGIC;
		 av_writedata	:	OUT  STD_LOGIC_VECTOR (15 DOWNTO 0);
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
 END Nios1_timer_0_s1_translator;

 ARCHITECTURE RTL OF Nios1_timer_0_s1_translator IS

	 ATTRIBUTE synthesis_clearbox : natural;
	 ATTRIBUTE synthesis_clearbox OF RTL : ARCHITECTURE IS 1;
	 SIGNAL	nios1_timer_0_s1_translator_altera_merlin_slave_translator_timer_0_s1_translator_waitrequest_reset_override_157q	:	STD_LOGIC := '0';
	 SIGNAL  wire_nl_w161w	:	STD_LOGIC_VECTOR (0 DOWNTO 0);
	 SIGNAL	nios1_timer_0_s1_translator_altera_merlin_slave_translator_timer_0_s1_translator_av_readdata_pre_0_177q	:	STD_LOGIC := '0';
	 SIGNAL	nios1_timer_0_s1_translator_altera_merlin_slave_translator_timer_0_s1_translator_av_readdata_pre_10_163q	:	STD_LOGIC := '0';
	 SIGNAL	nios1_timer_0_s1_translator_altera_merlin_slave_translator_timer_0_s1_translator_av_readdata_pre_11_162q	:	STD_LOGIC := '0';
	 SIGNAL	nios1_timer_0_s1_translator_altera_merlin_slave_translator_timer_0_s1_translator_av_readdata_pre_12_161q	:	STD_LOGIC := '0';
	 SIGNAL	nios1_timer_0_s1_translator_altera_merlin_slave_translator_timer_0_s1_translator_av_readdata_pre_13_160q	:	STD_LOGIC := '0';
	 SIGNAL	nios1_timer_0_s1_translator_altera_merlin_slave_translator_timer_0_s1_translator_av_readdata_pre_14_159q	:	STD_LOGIC := '0';
	 SIGNAL	nios1_timer_0_s1_translator_altera_merlin_slave_translator_timer_0_s1_translator_av_readdata_pre_15_158q	:	STD_LOGIC := '0';
	 SIGNAL	nios1_timer_0_s1_translator_altera_merlin_slave_translator_timer_0_s1_translator_av_readdata_pre_1_172q	:	STD_LOGIC := '0';
	 SIGNAL	nios1_timer_0_s1_translator_altera_merlin_slave_translator_timer_0_s1_translator_av_readdata_pre_2_171q	:	STD_LOGIC := '0';
	 SIGNAL	nios1_timer_0_s1_translator_altera_merlin_slave_translator_timer_0_s1_translator_av_readdata_pre_3_170q	:	STD_LOGIC := '0';
	 SIGNAL	nios1_timer_0_s1_translator_altera_merlin_slave_translator_timer_0_s1_translator_av_readdata_pre_4_169q	:	STD_LOGIC := '0';
	 SIGNAL	nios1_timer_0_s1_translator_altera_merlin_slave_translator_timer_0_s1_translator_av_readdata_pre_5_168q	:	STD_LOGIC := '0';
	 SIGNAL	nios1_timer_0_s1_translator_altera_merlin_slave_translator_timer_0_s1_translator_av_readdata_pre_6_167q	:	STD_LOGIC := '0';
	 SIGNAL	nios1_timer_0_s1_translator_altera_merlin_slave_translator_timer_0_s1_translator_av_readdata_pre_7_166q	:	STD_LOGIC := '0';
	 SIGNAL	nios1_timer_0_s1_translator_altera_merlin_slave_translator_timer_0_s1_translator_av_readdata_pre_8_165q	:	STD_LOGIC := '0';
	 SIGNAL	nios1_timer_0_s1_translator_altera_merlin_slave_translator_timer_0_s1_translator_av_readdata_pre_9_164q	:	STD_LOGIC := '0';
	 SIGNAL	nios1_timer_0_s1_translator_altera_merlin_slave_translator_timer_0_s1_translator_read_latency_shift_reg_0_180q	:	STD_LOGIC := '0';
	 SIGNAL	nios1_timer_0_s1_translator_altera_merlin_slave_translator_timer_0_s1_translator_wait_latency_counter_0_145q	:	STD_LOGIC := '0';
	 SIGNAL	nios1_timer_0_s1_translator_altera_merlin_slave_translator_timer_0_s1_translator_wait_latency_counter_1_144q	:	STD_LOGIC := '0';
	 SIGNAL  wire_nO_w141w	:	STD_LOGIC_VECTOR (0 DOWNTO 0);
	 SIGNAL  wire_nO_w138w	:	STD_LOGIC_VECTOR (0 DOWNTO 0);
	 SIGNAL	wire_nios1_timer_0_s1_translator_altera_merlin_slave_translator_timer_0_s1_translator_av_waitrequest_generated_155m_dataout	:	STD_LOGIC;
	 SIGNAL	wire_nios1_timer_0_s1_translator_altera_merlin_slave_translator_timer_0_s1_translator_wait_latency_counter_139m_dataout	:	STD_LOGIC;
	 SIGNAL	wire_nios1_timer_0_s1_translator_altera_merlin_slave_translator_timer_0_s1_translator_wait_latency_counter_140m_dataout	:	STD_LOGIC;
	 SIGNAL	wire_nios1_timer_0_s1_translator_altera_merlin_slave_translator_timer_0_s1_translator_wait_latency_counter_142m_dataout	:	STD_LOGIC;
	 SIGNAL	wire_nios1_timer_0_s1_translator_altera_merlin_slave_translator_timer_0_s1_translator_wait_latency_counter_143m_dataout	:	STD_LOGIC;
	 SIGNAL  wire_nios1_timer_0_s1_translator_altera_merlin_slave_translator_timer_0_s1_translator_add0_138_a	:	STD_LOGIC_VECTOR (1 DOWNTO 0);
	 SIGNAL  wire_nios1_timer_0_s1_translator_altera_merlin_slave_translator_timer_0_s1_translator_add0_138_b	:	STD_LOGIC_VECTOR (1 DOWNTO 0);
	 SIGNAL  wire_gnd	:	STD_LOGIC;
	 SIGNAL  wire_nios1_timer_0_s1_translator_altera_merlin_slave_translator_timer_0_s1_translator_add0_138_o	:	STD_LOGIC_VECTOR (1 DOWNTO 0);
	 SIGNAL  wire_nios1_timer_0_s1_translator_altera_merlin_slave_translator_timer_0_s1_translator_lessthan0_147_a	:	STD_LOGIC_VECTOR (1 DOWNTO 0);
	 SIGNAL  wire_nios1_timer_0_s1_translator_altera_merlin_slave_translator_timer_0_s1_translator_lessthan0_147_b	:	STD_LOGIC_VECTOR (1 DOWNTO 0);
	 SIGNAL  wire_vcc	:	STD_LOGIC;
	 SIGNAL  wire_nios1_timer_0_s1_translator_altera_merlin_slave_translator_timer_0_s1_translator_lessthan0_147_o	:	STD_LOGIC;
	 SIGNAL  wire_nios1_timer_0_s1_translator_altera_merlin_slave_translator_timer_0_s1_translator_lessthan1_149_a	:	STD_LOGIC_VECTOR (1 DOWNTO 0);
	 SIGNAL  wire_nios1_timer_0_s1_translator_altera_merlin_slave_translator_timer_0_s1_translator_lessthan1_149_b	:	STD_LOGIC_VECTOR (1 DOWNTO 0);
	 SIGNAL  wire_nios1_timer_0_s1_translator_altera_merlin_slave_translator_timer_0_s1_translator_lessthan1_149_o	:	STD_LOGIC;
	 SIGNAL  wire_w_lg_reset121w	:	STD_LOGIC_VECTOR (0 DOWNTO 0);
	 SIGNAL  wire_w119w	:	STD_LOGIC_VECTOR (0 DOWNTO 0);
	 SIGNAL  s_wire_gnd :	STD_LOGIC;
	 SIGNAL  s_wire_nios1_timer_0_s1_translator_altera_merlin_slave_translator_timer_0_s1_translator_always7_141_dataout :	STD_LOGIC;
	 SIGNAL  s_wire_nios1_timer_0_s1_translator_altera_merlin_slave_translator_timer_0_s1_translator_av_begintransfer_182_dataout :	STD_LOGIC;
	 SIGNAL  s_wire_nios1_timer_0_s1_translator_altera_merlin_slave_translator_timer_0_s1_translator_uav_waitrequest_156_dataout :	STD_LOGIC;
	 SIGNAL  s_wire_vcc :	STD_LOGIC;
 BEGIN

	wire_gnd <= '0';
	wire_vcc <= '1';
	wire_w_lg_reset121w(0) <= NOT reset;
	wire_w119w(0) <= NOT s_wire_nios1_timer_0_s1_translator_altera_merlin_slave_translator_timer_0_s1_translator_uav_waitrequest_156_dataout;
	av_address <= ( uav_address(4 DOWNTO 2));
	av_chipselect <= s_wire_nios1_timer_0_s1_translator_altera_merlin_slave_translator_timer_0_s1_translator_av_begintransfer_182_dataout;
	av_write <= ((uav_write AND wire_nios1_timer_0_s1_translator_altera_merlin_slave_translator_timer_0_s1_translator_lessthan0_147_o) AND wire_nios1_timer_0_s1_translator_altera_merlin_slave_translator_timer_0_s1_translator_lessthan1_149_o);
	av_writedata <= ( uav_writedata(15 DOWNTO 0));
	s_wire_gnd <= '0';
	s_wire_nios1_timer_0_s1_translator_altera_merlin_slave_translator_timer_0_s1_translator_always7_141_dataout <= (wire_w119w(0) OR nios1_timer_0_s1_translator_altera_merlin_slave_translator_timer_0_s1_translator_waitrequest_reset_override_157q);
	s_wire_nios1_timer_0_s1_translator_altera_merlin_slave_translator_timer_0_s1_translator_av_begintransfer_182_dataout <= (uav_read OR uav_write);
	s_wire_nios1_timer_0_s1_translator_altera_merlin_slave_translator_timer_0_s1_translator_uav_waitrequest_156_dataout <= (wire_nios1_timer_0_s1_translator_altera_merlin_slave_translator_timer_0_s1_translator_av_waitrequest_generated_155m_dataout OR nios1_timer_0_s1_translator_altera_merlin_slave_translator_timer_0_s1_translator_waitrequest_reset_override_157q);
	s_wire_vcc <= '1';
	uav_readdata <= ( "0" & "0" & "0" & "0" & "0" & "0" & "0" & "0" & "0" & "0" & "0" & "0" & "0" & "0" & "0" & "0" & nios1_timer_0_s1_translator_altera_merlin_slave_translator_timer_0_s1_translator_av_readdata_pre_15_158q & nios1_timer_0_s1_translator_altera_merlin_slave_translator_timer_0_s1_translator_av_readdata_pre_14_159q & nios1_timer_0_s1_translator_altera_merlin_slave_translator_timer_0_s1_translator_av_readdata_pre_13_160q & nios1_timer_0_s1_translator_altera_merlin_slave_translator_timer_0_s1_translator_av_readdata_pre_12_161q & nios1_timer_0_s1_translator_altera_merlin_slave_translator_timer_0_s1_translator_av_readdata_pre_11_162q & nios1_timer_0_s1_translator_altera_merlin_slave_translator_timer_0_s1_translator_av_readdata_pre_10_163q & nios1_timer_0_s1_translator_altera_merlin_slave_translator_timer_0_s1_translator_av_readdata_pre_9_164q & nios1_timer_0_s1_translator_altera_merlin_slave_translator_timer_0_s1_translator_av_readdata_pre_8_165q & nios1_timer_0_s1_translator_altera_merlin_slave_translator_timer_0_s1_translator_av_readdata_pre_7_166q & nios1_timer_0_s1_translator_altera_merlin_slave_translator_timer_0_s1_translator_av_readdata_pre_6_167q & nios1_timer_0_s1_translator_altera_merlin_slave_translator_timer_0_s1_translator_av_readdata_pre_5_168q & nios1_timer_0_s1_translator_altera_merlin_slave_translator_timer_0_s1_translator_av_readdata_pre_4_169q & nios1_timer_0_s1_translator_altera_merlin_slave_translator_timer_0_s1_translator_av_readdata_pre_3_170q & nios1_timer_0_s1_translator_altera_merlin_slave_translator_timer_0_s1_translator_av_readdata_pre_2_171q & nios1_timer_0_s1_translator_altera_merlin_slave_translator_timer_0_s1_translator_av_readdata_pre_1_172q & nios1_timer_0_s1_translator_altera_merlin_slave_translator_timer_0_s1_translator_av_readdata_pre_0_177q);
	uav_readdatavalid <= nios1_timer_0_s1_translator_altera_merlin_slave_translator_timer_0_s1_translator_read_latency_shift_reg_0_180q;
	uav_waitrequest <= s_wire_nios1_timer_0_s1_translator_altera_merlin_slave_translator_timer_0_s1_translator_uav_waitrequest_156_dataout;
	PROCESS (clk, reset)
	BEGIN
		IF (reset = '1') THEN
				nios1_timer_0_s1_translator_altera_merlin_slave_translator_timer_0_s1_translator_waitrequest_reset_override_157q <= '1';
		ELSIF (clk = '1' AND clk'event) THEN
				nios1_timer_0_s1_translator_altera_merlin_slave_translator_timer_0_s1_translator_waitrequest_reset_override_157q <= s_wire_gnd;
		END IF;
		if (now = 0 ns) then
			nios1_timer_0_s1_translator_altera_merlin_slave_translator_timer_0_s1_translator_waitrequest_reset_override_157q <= '1' after 1 ps;
		end if;
	END PROCESS;
	wire_nl_w161w(0) <= NOT nios1_timer_0_s1_translator_altera_merlin_slave_translator_timer_0_s1_translator_waitrequest_reset_override_157q;
	PROCESS (clk, reset)
	BEGIN
		IF (reset = '1') THEN
				nios1_timer_0_s1_translator_altera_merlin_slave_translator_timer_0_s1_translator_av_readdata_pre_0_177q <= '0';
				nios1_timer_0_s1_translator_altera_merlin_slave_translator_timer_0_s1_translator_av_readdata_pre_10_163q <= '0';
				nios1_timer_0_s1_translator_altera_merlin_slave_translator_timer_0_s1_translator_av_readdata_pre_11_162q <= '0';
				nios1_timer_0_s1_translator_altera_merlin_slave_translator_timer_0_s1_translator_av_readdata_pre_12_161q <= '0';
				nios1_timer_0_s1_translator_altera_merlin_slave_translator_timer_0_s1_translator_av_readdata_pre_13_160q <= '0';
				nios1_timer_0_s1_translator_altera_merlin_slave_translator_timer_0_s1_translator_av_readdata_pre_14_159q <= '0';
				nios1_timer_0_s1_translator_altera_merlin_slave_translator_timer_0_s1_translator_av_readdata_pre_15_158q <= '0';
				nios1_timer_0_s1_translator_altera_merlin_slave_translator_timer_0_s1_translator_av_readdata_pre_1_172q <= '0';
				nios1_timer_0_s1_translator_altera_merlin_slave_translator_timer_0_s1_translator_av_readdata_pre_2_171q <= '0';
				nios1_timer_0_s1_translator_altera_merlin_slave_translator_timer_0_s1_translator_av_readdata_pre_3_170q <= '0';
				nios1_timer_0_s1_translator_altera_merlin_slave_translator_timer_0_s1_translator_av_readdata_pre_4_169q <= '0';
				nios1_timer_0_s1_translator_altera_merlin_slave_translator_timer_0_s1_translator_av_readdata_pre_5_168q <= '0';
				nios1_timer_0_s1_translator_altera_merlin_slave_translator_timer_0_s1_translator_av_readdata_pre_6_167q <= '0';
				nios1_timer_0_s1_translator_altera_merlin_slave_translator_timer_0_s1_translator_av_readdata_pre_7_166q <= '0';
				nios1_timer_0_s1_translator_altera_merlin_slave_translator_timer_0_s1_translator_av_readdata_pre_8_165q <= '0';
				nios1_timer_0_s1_translator_altera_merlin_slave_translator_timer_0_s1_translator_av_readdata_pre_9_164q <= '0';
				nios1_timer_0_s1_translator_altera_merlin_slave_translator_timer_0_s1_translator_read_latency_shift_reg_0_180q <= '0';
				nios1_timer_0_s1_translator_altera_merlin_slave_translator_timer_0_s1_translator_wait_latency_counter_0_145q <= '0';
				nios1_timer_0_s1_translator_altera_merlin_slave_translator_timer_0_s1_translator_wait_latency_counter_1_144q <= '0';
		ELSIF (clk = '1' AND clk'event) THEN
				nios1_timer_0_s1_translator_altera_merlin_slave_translator_timer_0_s1_translator_av_readdata_pre_0_177q <= av_readdata(0);
				nios1_timer_0_s1_translator_altera_merlin_slave_translator_timer_0_s1_translator_av_readdata_pre_10_163q <= av_readdata(10);
				nios1_timer_0_s1_translator_altera_merlin_slave_translator_timer_0_s1_translator_av_readdata_pre_11_162q <= av_readdata(11);
				nios1_timer_0_s1_translator_altera_merlin_slave_translator_timer_0_s1_translator_av_readdata_pre_12_161q <= av_readdata(12);
				nios1_timer_0_s1_translator_altera_merlin_slave_translator_timer_0_s1_translator_av_readdata_pre_13_160q <= av_readdata(13);
				nios1_timer_0_s1_translator_altera_merlin_slave_translator_timer_0_s1_translator_av_readdata_pre_14_159q <= av_readdata(14);
				nios1_timer_0_s1_translator_altera_merlin_slave_translator_timer_0_s1_translator_av_readdata_pre_15_158q <= av_readdata(15);
				nios1_timer_0_s1_translator_altera_merlin_slave_translator_timer_0_s1_translator_av_readdata_pre_1_172q <= av_readdata(1);
				nios1_timer_0_s1_translator_altera_merlin_slave_translator_timer_0_s1_translator_av_readdata_pre_2_171q <= av_readdata(2);
				nios1_timer_0_s1_translator_altera_merlin_slave_translator_timer_0_s1_translator_av_readdata_pre_3_170q <= av_readdata(3);
				nios1_timer_0_s1_translator_altera_merlin_slave_translator_timer_0_s1_translator_av_readdata_pre_4_169q <= av_readdata(4);
				nios1_timer_0_s1_translator_altera_merlin_slave_translator_timer_0_s1_translator_av_readdata_pre_5_168q <= av_readdata(5);
				nios1_timer_0_s1_translator_altera_merlin_slave_translator_timer_0_s1_translator_av_readdata_pre_6_167q <= av_readdata(6);
				nios1_timer_0_s1_translator_altera_merlin_slave_translator_timer_0_s1_translator_av_readdata_pre_7_166q <= av_readdata(7);
				nios1_timer_0_s1_translator_altera_merlin_slave_translator_timer_0_s1_translator_av_readdata_pre_8_165q <= av_readdata(8);
				nios1_timer_0_s1_translator_altera_merlin_slave_translator_timer_0_s1_translator_av_readdata_pre_9_164q <= av_readdata(9);
				nios1_timer_0_s1_translator_altera_merlin_slave_translator_timer_0_s1_translator_read_latency_shift_reg_0_180q <= (uav_read AND (wire_w119w(0) AND wire_nl_w161w(0)));
				nios1_timer_0_s1_translator_altera_merlin_slave_translator_timer_0_s1_translator_wait_latency_counter_0_145q <= wire_nios1_timer_0_s1_translator_altera_merlin_slave_translator_timer_0_s1_translator_wait_latency_counter_143m_dataout;
				nios1_timer_0_s1_translator_altera_merlin_slave_translator_timer_0_s1_translator_wait_latency_counter_1_144q <= wire_nios1_timer_0_s1_translator_altera_merlin_slave_translator_timer_0_s1_translator_wait_latency_counter_142m_dataout;
		END IF;
	END PROCESS;
	wire_nO_w141w(0) <= NOT nios1_timer_0_s1_translator_altera_merlin_slave_translator_timer_0_s1_translator_wait_latency_counter_0_145q;
	wire_nO_w138w(0) <= NOT nios1_timer_0_s1_translator_altera_merlin_slave_translator_timer_0_s1_translator_wait_latency_counter_1_144q;
	wire_nios1_timer_0_s1_translator_altera_merlin_slave_translator_timer_0_s1_translator_av_waitrequest_generated_155m_dataout <= (NOT (wire_nO_w138w(0) AND wire_nO_w141w(0))) WHEN uav_write = '1'  ELSE (NOT (wire_nO_w138w(0) AND nios1_timer_0_s1_translator_altera_merlin_slave_translator_timer_0_s1_translator_wait_latency_counter_0_145q));
	wire_nios1_timer_0_s1_translator_altera_merlin_slave_translator_timer_0_s1_translator_wait_latency_counter_139m_dataout <= wire_nios1_timer_0_s1_translator_altera_merlin_slave_translator_timer_0_s1_translator_add0_138_o(1) AND s_wire_nios1_timer_0_s1_translator_altera_merlin_slave_translator_timer_0_s1_translator_av_begintransfer_182_dataout;
	wire_nios1_timer_0_s1_translator_altera_merlin_slave_translator_timer_0_s1_translator_wait_latency_counter_140m_dataout <= wire_nios1_timer_0_s1_translator_altera_merlin_slave_translator_timer_0_s1_translator_add0_138_o(0) AND s_wire_nios1_timer_0_s1_translator_altera_merlin_slave_translator_timer_0_s1_translator_av_begintransfer_182_dataout;
	wire_nios1_timer_0_s1_translator_altera_merlin_slave_translator_timer_0_s1_translator_wait_latency_counter_142m_dataout <= wire_nios1_timer_0_s1_translator_altera_merlin_slave_translator_timer_0_s1_translator_wait_latency_counter_139m_dataout AND NOT(s_wire_nios1_timer_0_s1_translator_altera_merlin_slave_translator_timer_0_s1_translator_always7_141_dataout);
	wire_nios1_timer_0_s1_translator_altera_merlin_slave_translator_timer_0_s1_translator_wait_latency_counter_143m_dataout <= wire_nios1_timer_0_s1_translator_altera_merlin_slave_translator_timer_0_s1_translator_wait_latency_counter_140m_dataout AND NOT(s_wire_nios1_timer_0_s1_translator_altera_merlin_slave_translator_timer_0_s1_translator_always7_141_dataout);
	wire_nios1_timer_0_s1_translator_altera_merlin_slave_translator_timer_0_s1_translator_add0_138_a <= ( nios1_timer_0_s1_translator_altera_merlin_slave_translator_timer_0_s1_translator_wait_latency_counter_1_144q & nios1_timer_0_s1_translator_altera_merlin_slave_translator_timer_0_s1_translator_wait_latency_counter_0_145q);
	wire_nios1_timer_0_s1_translator_altera_merlin_slave_translator_timer_0_s1_translator_add0_138_b <= ( "0" & "1");
	nios1_timer_0_s1_translator_altera_merlin_slave_translator_timer_0_s1_translator_add0_138 :  oper_add
	  GENERIC MAP (
		sgate_representation => 0,
		width_a => 2,
		width_b => 2,
		width_o => 2
	  )
	  PORT MAP ( 
		a => wire_nios1_timer_0_s1_translator_altera_merlin_slave_translator_timer_0_s1_translator_add0_138_a,
		b => wire_nios1_timer_0_s1_translator_altera_merlin_slave_translator_timer_0_s1_translator_add0_138_b,
		cin => wire_gnd,
		o => wire_nios1_timer_0_s1_translator_altera_merlin_slave_translator_timer_0_s1_translator_add0_138_o
	  );
	wire_nios1_timer_0_s1_translator_altera_merlin_slave_translator_timer_0_s1_translator_lessthan0_147_a <= ( "0" & "0");
	wire_nios1_timer_0_s1_translator_altera_merlin_slave_translator_timer_0_s1_translator_lessthan0_147_b <= ( nios1_timer_0_s1_translator_altera_merlin_slave_translator_timer_0_s1_translator_wait_latency_counter_1_144q & nios1_timer_0_s1_translator_altera_merlin_slave_translator_timer_0_s1_translator_wait_latency_counter_0_145q);
	nios1_timer_0_s1_translator_altera_merlin_slave_translator_timer_0_s1_translator_lessthan0_147 :  oper_less_than
	  GENERIC MAP (
		sgate_representation => 0,
		width_a => 2,
		width_b => 2
	  )
	  PORT MAP ( 
		a => wire_nios1_timer_0_s1_translator_altera_merlin_slave_translator_timer_0_s1_translator_lessthan0_147_a,
		b => wire_nios1_timer_0_s1_translator_altera_merlin_slave_translator_timer_0_s1_translator_lessthan0_147_b,
		cin => wire_vcc,
		o => wire_nios1_timer_0_s1_translator_altera_merlin_slave_translator_timer_0_s1_translator_lessthan0_147_o
	  );
	wire_nios1_timer_0_s1_translator_altera_merlin_slave_translator_timer_0_s1_translator_lessthan1_149_a <= ( nios1_timer_0_s1_translator_altera_merlin_slave_translator_timer_0_s1_translator_wait_latency_counter_1_144q & nios1_timer_0_s1_translator_altera_merlin_slave_translator_timer_0_s1_translator_wait_latency_counter_0_145q);
	wire_nios1_timer_0_s1_translator_altera_merlin_slave_translator_timer_0_s1_translator_lessthan1_149_b <= ( "0" & "0");
	nios1_timer_0_s1_translator_altera_merlin_slave_translator_timer_0_s1_translator_lessthan1_149 :  oper_less_than
	  GENERIC MAP (
		sgate_representation => 0,
		width_a => 2,
		width_b => 2
	  )
	  PORT MAP ( 
		a => wire_nios1_timer_0_s1_translator_altera_merlin_slave_translator_timer_0_s1_translator_lessthan1_149_a,
		b => wire_nios1_timer_0_s1_translator_altera_merlin_slave_translator_timer_0_s1_translator_lessthan1_149_b,
		cin => wire_vcc,
		o => wire_nios1_timer_0_s1_translator_altera_merlin_slave_translator_timer_0_s1_translator_lessthan1_149_o
	  );

 END RTL; --Nios1_timer_0_s1_translator
--synopsys translate_on
--VALID FILE
