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

--synthesis_resources = lut 21 mux21 6 oper_add 1 oper_less_than 2 
 LIBRARY ieee;
 USE ieee.std_logic_1164.all;

 ENTITY  Nios1_uart_s1_translator IS 
	 PORT 
	 ( 
		 av_address	:	OUT  STD_LOGIC_VECTOR (2 DOWNTO 0);
		 av_begintransfer	:	OUT  STD_LOGIC;
		 av_chipselect	:	OUT  STD_LOGIC;
		 av_read	:	OUT  STD_LOGIC;
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
 END Nios1_uart_s1_translator;

 ARCHITECTURE RTL OF Nios1_uart_s1_translator IS

	 ATTRIBUTE synthesis_clearbox : natural;
	 ATTRIBUTE synthesis_clearbox OF RTL : ARCHITECTURE IS 1;
	 SIGNAL	nios1_uart_s1_translator_altera_merlin_slave_translator_uart_s1_translator_waitrequest_reset_override_158q	:	STD_LOGIC := '0';
	 SIGNAL  wire_nl_w159w	:	STD_LOGIC_VECTOR (0 DOWNTO 0);
	 SIGNAL	nios1_uart_s1_translator_altera_merlin_slave_translator_uart_s1_translator_av_readdata_pre_0_178q	:	STD_LOGIC := '0';
	 SIGNAL	nios1_uart_s1_translator_altera_merlin_slave_translator_uart_s1_translator_av_readdata_pre_10_164q	:	STD_LOGIC := '0';
	 SIGNAL	nios1_uart_s1_translator_altera_merlin_slave_translator_uart_s1_translator_av_readdata_pre_11_163q	:	STD_LOGIC := '0';
	 SIGNAL	nios1_uart_s1_translator_altera_merlin_slave_translator_uart_s1_translator_av_readdata_pre_12_162q	:	STD_LOGIC := '0';
	 SIGNAL	nios1_uart_s1_translator_altera_merlin_slave_translator_uart_s1_translator_av_readdata_pre_13_161q	:	STD_LOGIC := '0';
	 SIGNAL	nios1_uart_s1_translator_altera_merlin_slave_translator_uart_s1_translator_av_readdata_pre_14_160q	:	STD_LOGIC := '0';
	 SIGNAL	nios1_uart_s1_translator_altera_merlin_slave_translator_uart_s1_translator_av_readdata_pre_15_159q	:	STD_LOGIC := '0';
	 SIGNAL	nios1_uart_s1_translator_altera_merlin_slave_translator_uart_s1_translator_av_readdata_pre_1_173q	:	STD_LOGIC := '0';
	 SIGNAL	nios1_uart_s1_translator_altera_merlin_slave_translator_uart_s1_translator_av_readdata_pre_2_172q	:	STD_LOGIC := '0';
	 SIGNAL	nios1_uart_s1_translator_altera_merlin_slave_translator_uart_s1_translator_av_readdata_pre_3_171q	:	STD_LOGIC := '0';
	 SIGNAL	nios1_uart_s1_translator_altera_merlin_slave_translator_uart_s1_translator_av_readdata_pre_4_170q	:	STD_LOGIC := '0';
	 SIGNAL	nios1_uart_s1_translator_altera_merlin_slave_translator_uart_s1_translator_av_readdata_pre_5_169q	:	STD_LOGIC := '0';
	 SIGNAL	nios1_uart_s1_translator_altera_merlin_slave_translator_uart_s1_translator_av_readdata_pre_6_168q	:	STD_LOGIC := '0';
	 SIGNAL	nios1_uart_s1_translator_altera_merlin_slave_translator_uart_s1_translator_av_readdata_pre_7_167q	:	STD_LOGIC := '0';
	 SIGNAL	nios1_uart_s1_translator_altera_merlin_slave_translator_uart_s1_translator_av_readdata_pre_8_166q	:	STD_LOGIC := '0';
	 SIGNAL	nios1_uart_s1_translator_altera_merlin_slave_translator_uart_s1_translator_av_readdata_pre_9_165q	:	STD_LOGIC := '0';
	 SIGNAL	nios1_uart_s1_translator_altera_merlin_slave_translator_uart_s1_translator_end_begintransfer_203q	:	STD_LOGIC := '0';
	 SIGNAL	nios1_uart_s1_translator_altera_merlin_slave_translator_uart_s1_translator_read_latency_shift_reg_0_181q	:	STD_LOGIC := '0';
	 SIGNAL	nios1_uart_s1_translator_altera_merlin_slave_translator_uart_s1_translator_wait_latency_counter_0_147q	:	STD_LOGIC := '0';
	 SIGNAL	nios1_uart_s1_translator_altera_merlin_slave_translator_uart_s1_translator_wait_latency_counter_1_146q	:	STD_LOGIC := '0';
	 SIGNAL  wire_nO_w163w	:	STD_LOGIC_VECTOR (0 DOWNTO 0);
	 SIGNAL  wire_nO_w139w	:	STD_LOGIC_VECTOR (0 DOWNTO 0);
	 SIGNAL	wire_nios1_uart_s1_translator_altera_merlin_slave_translator_uart_s1_translator_end_begintransfer_188m_dataout	:	STD_LOGIC;
	 SIGNAL	wire_nios1_uart_s1_translator_altera_merlin_slave_translator_uart_s1_translator_end_begintransfer_189m_dataout	:	STD_LOGIC;
	 SIGNAL	wire_nios1_uart_s1_translator_altera_merlin_slave_translator_uart_s1_translator_wait_latency_counter_141m_dataout	:	STD_LOGIC;
	 SIGNAL	wire_nios1_uart_s1_translator_altera_merlin_slave_translator_uart_s1_translator_wait_latency_counter_142m_dataout	:	STD_LOGIC;
	 SIGNAL	wire_nios1_uart_s1_translator_altera_merlin_slave_translator_uart_s1_translator_wait_latency_counter_144m_dataout	:	STD_LOGIC;
	 SIGNAL	wire_nios1_uart_s1_translator_altera_merlin_slave_translator_uart_s1_translator_wait_latency_counter_145m_dataout	:	STD_LOGIC;
	 SIGNAL  wire_nios1_uart_s1_translator_altera_merlin_slave_translator_uart_s1_translator_add0_140_a	:	STD_LOGIC_VECTOR (1 DOWNTO 0);
	 SIGNAL  wire_nios1_uart_s1_translator_altera_merlin_slave_translator_uart_s1_translator_add0_140_b	:	STD_LOGIC_VECTOR (1 DOWNTO 0);
	 SIGNAL  wire_gnd	:	STD_LOGIC;
	 SIGNAL  wire_nios1_uart_s1_translator_altera_merlin_slave_translator_uart_s1_translator_add0_140_o	:	STD_LOGIC_VECTOR (1 DOWNTO 0);
	 SIGNAL  wire_nios1_uart_s1_translator_altera_merlin_slave_translator_uart_s1_translator_lessthan0_149_a	:	STD_LOGIC_VECTOR (1 DOWNTO 0);
	 SIGNAL  wire_nios1_uart_s1_translator_altera_merlin_slave_translator_uart_s1_translator_lessthan0_149_b	:	STD_LOGIC_VECTOR (1 DOWNTO 0);
	 SIGNAL  wire_vcc	:	STD_LOGIC;
	 SIGNAL  wire_nios1_uart_s1_translator_altera_merlin_slave_translator_uart_s1_translator_lessthan0_149_o	:	STD_LOGIC;
	 SIGNAL  wire_nios1_uart_s1_translator_altera_merlin_slave_translator_uart_s1_translator_lessthan1_151_a	:	STD_LOGIC_VECTOR (1 DOWNTO 0);
	 SIGNAL  wire_nios1_uart_s1_translator_altera_merlin_slave_translator_uart_s1_translator_lessthan1_151_b	:	STD_LOGIC_VECTOR (1 DOWNTO 0);
	 SIGNAL  wire_nios1_uart_s1_translator_altera_merlin_slave_translator_uart_s1_translator_lessthan1_151_o	:	STD_LOGIC;
	 SIGNAL  wire_w_lg_reset122w	:	STD_LOGIC_VECTOR (0 DOWNTO 0);
	 SIGNAL  wire_w120w	:	STD_LOGIC_VECTOR (0 DOWNTO 0);
	 SIGNAL  s_wire_gnd :	STD_LOGIC;
	 SIGNAL  s_wire_nios1_uart_s1_translator_altera_merlin_slave_translator_uart_s1_translator_always7_143_dataout :	STD_LOGIC;
	 SIGNAL  s_wire_nios1_uart_s1_translator_altera_merlin_slave_translator_uart_s1_translator_av_begintransfer_183_dataout :	STD_LOGIC;
	 SIGNAL  s_wire_nios1_uart_s1_translator_altera_merlin_slave_translator_uart_s1_translator_av_begintransfer_185_dataout :	STD_LOGIC;
	 SIGNAL  s_wire_nios1_uart_s1_translator_altera_merlin_slave_translator_uart_s1_translator_uav_waitrequest_157_dataout :	STD_LOGIC;
	 SIGNAL  s_wire_vcc :	STD_LOGIC;
 BEGIN

	wire_gnd <= '0';
	wire_vcc <= '1';
	wire_w_lg_reset122w(0) <= NOT reset;
	wire_w120w(0) <= NOT s_wire_nios1_uart_s1_translator_altera_merlin_slave_translator_uart_s1_translator_uav_waitrequest_157_dataout;
	av_address <= ( uav_address(4 DOWNTO 2));
	av_begintransfer <= s_wire_nios1_uart_s1_translator_altera_merlin_slave_translator_uart_s1_translator_av_begintransfer_185_dataout;
	av_chipselect <= s_wire_nios1_uart_s1_translator_altera_merlin_slave_translator_uart_s1_translator_av_begintransfer_183_dataout;
	av_read <= (uav_read AND wire_nios1_uart_s1_translator_altera_merlin_slave_translator_uart_s1_translator_lessthan0_149_o);
	av_write <= ((uav_write AND wire_nios1_uart_s1_translator_altera_merlin_slave_translator_uart_s1_translator_lessthan0_149_o) AND wire_nios1_uart_s1_translator_altera_merlin_slave_translator_uart_s1_translator_lessthan1_151_o);
	av_writedata <= ( uav_writedata(15 DOWNTO 0));
	s_wire_gnd <= '0';
	s_wire_nios1_uart_s1_translator_altera_merlin_slave_translator_uart_s1_translator_always7_143_dataout <= (wire_w120w(0) OR nios1_uart_s1_translator_altera_merlin_slave_translator_uart_s1_translator_waitrequest_reset_override_158q);
	s_wire_nios1_uart_s1_translator_altera_merlin_slave_translator_uart_s1_translator_av_begintransfer_183_dataout <= (uav_read OR uav_write);
	s_wire_nios1_uart_s1_translator_altera_merlin_slave_translator_uart_s1_translator_av_begintransfer_185_dataout <= (s_wire_nios1_uart_s1_translator_altera_merlin_slave_translator_uart_s1_translator_av_begintransfer_183_dataout AND wire_nO_w163w(0));
	s_wire_nios1_uart_s1_translator_altera_merlin_slave_translator_uart_s1_translator_uav_waitrequest_157_dataout <= (nios1_uart_s1_translator_altera_merlin_slave_translator_uart_s1_translator_waitrequest_reset_override_158q OR (NOT (wire_nO_w139w(0) AND nios1_uart_s1_translator_altera_merlin_slave_translator_uart_s1_translator_wait_latency_counter_0_147q)));
	s_wire_vcc <= '1';
	uav_readdata <= ( "0" & "0" & "0" & "0" & "0" & "0" & "0" & "0" & "0" & "0" & "0" & "0" & "0" & "0" & "0" & "0" & nios1_uart_s1_translator_altera_merlin_slave_translator_uart_s1_translator_av_readdata_pre_15_159q & nios1_uart_s1_translator_altera_merlin_slave_translator_uart_s1_translator_av_readdata_pre_14_160q & nios1_uart_s1_translator_altera_merlin_slave_translator_uart_s1_translator_av_readdata_pre_13_161q & nios1_uart_s1_translator_altera_merlin_slave_translator_uart_s1_translator_av_readdata_pre_12_162q & nios1_uart_s1_translator_altera_merlin_slave_translator_uart_s1_translator_av_readdata_pre_11_163q & nios1_uart_s1_translator_altera_merlin_slave_translator_uart_s1_translator_av_readdata_pre_10_164q & nios1_uart_s1_translator_altera_merlin_slave_translator_uart_s1_translator_av_readdata_pre_9_165q & nios1_uart_s1_translator_altera_merlin_slave_translator_uart_s1_translator_av_readdata_pre_8_166q & nios1_uart_s1_translator_altera_merlin_slave_translator_uart_s1_translator_av_readdata_pre_7_167q & nios1_uart_s1_translator_altera_merlin_slave_translator_uart_s1_translator_av_readdata_pre_6_168q & nios1_uart_s1_translator_altera_merlin_slave_translator_uart_s1_translator_av_readdata_pre_5_169q & nios1_uart_s1_translator_altera_merlin_slave_translator_uart_s1_translator_av_readdata_pre_4_170q & nios1_uart_s1_translator_altera_merlin_slave_translator_uart_s1_translator_av_readdata_pre_3_171q & nios1_uart_s1_translator_altera_merlin_slave_translator_uart_s1_translator_av_readdata_pre_2_172q & nios1_uart_s1_translator_altera_merlin_slave_translator_uart_s1_translator_av_readdata_pre_1_173q & nios1_uart_s1_translator_altera_merlin_slave_translator_uart_s1_translator_av_readdata_pre_0_178q);
	uav_readdatavalid <= nios1_uart_s1_translator_altera_merlin_slave_translator_uart_s1_translator_read_latency_shift_reg_0_181q;
	uav_waitrequest <= s_wire_nios1_uart_s1_translator_altera_merlin_slave_translator_uart_s1_translator_uav_waitrequest_157_dataout;
	PROCESS (clk, reset)
	BEGIN
		IF (reset = '1') THEN
				nios1_uart_s1_translator_altera_merlin_slave_translator_uart_s1_translator_waitrequest_reset_override_158q <= '1';
		ELSIF (clk = '1' AND clk'event) THEN
				nios1_uart_s1_translator_altera_merlin_slave_translator_uart_s1_translator_waitrequest_reset_override_158q <= s_wire_gnd;
		END IF;
		if (now = 0 ns) then
			nios1_uart_s1_translator_altera_merlin_slave_translator_uart_s1_translator_waitrequest_reset_override_158q <= '1' after 1 ps;
		end if;
	END PROCESS;
	wire_nl_w159w(0) <= NOT nios1_uart_s1_translator_altera_merlin_slave_translator_uart_s1_translator_waitrequest_reset_override_158q;
	PROCESS (clk, reset)
	BEGIN
		IF (reset = '1') THEN
				nios1_uart_s1_translator_altera_merlin_slave_translator_uart_s1_translator_av_readdata_pre_0_178q <= '0';
				nios1_uart_s1_translator_altera_merlin_slave_translator_uart_s1_translator_av_readdata_pre_10_164q <= '0';
				nios1_uart_s1_translator_altera_merlin_slave_translator_uart_s1_translator_av_readdata_pre_11_163q <= '0';
				nios1_uart_s1_translator_altera_merlin_slave_translator_uart_s1_translator_av_readdata_pre_12_162q <= '0';
				nios1_uart_s1_translator_altera_merlin_slave_translator_uart_s1_translator_av_readdata_pre_13_161q <= '0';
				nios1_uart_s1_translator_altera_merlin_slave_translator_uart_s1_translator_av_readdata_pre_14_160q <= '0';
				nios1_uart_s1_translator_altera_merlin_slave_translator_uart_s1_translator_av_readdata_pre_15_159q <= '0';
				nios1_uart_s1_translator_altera_merlin_slave_translator_uart_s1_translator_av_readdata_pre_1_173q <= '0';
				nios1_uart_s1_translator_altera_merlin_slave_translator_uart_s1_translator_av_readdata_pre_2_172q <= '0';
				nios1_uart_s1_translator_altera_merlin_slave_translator_uart_s1_translator_av_readdata_pre_3_171q <= '0';
				nios1_uart_s1_translator_altera_merlin_slave_translator_uart_s1_translator_av_readdata_pre_4_170q <= '0';
				nios1_uart_s1_translator_altera_merlin_slave_translator_uart_s1_translator_av_readdata_pre_5_169q <= '0';
				nios1_uart_s1_translator_altera_merlin_slave_translator_uart_s1_translator_av_readdata_pre_6_168q <= '0';
				nios1_uart_s1_translator_altera_merlin_slave_translator_uart_s1_translator_av_readdata_pre_7_167q <= '0';
				nios1_uart_s1_translator_altera_merlin_slave_translator_uart_s1_translator_av_readdata_pre_8_166q <= '0';
				nios1_uart_s1_translator_altera_merlin_slave_translator_uart_s1_translator_av_readdata_pre_9_165q <= '0';
				nios1_uart_s1_translator_altera_merlin_slave_translator_uart_s1_translator_end_begintransfer_203q <= '0';
				nios1_uart_s1_translator_altera_merlin_slave_translator_uart_s1_translator_read_latency_shift_reg_0_181q <= '0';
				nios1_uart_s1_translator_altera_merlin_slave_translator_uart_s1_translator_wait_latency_counter_0_147q <= '0';
				nios1_uart_s1_translator_altera_merlin_slave_translator_uart_s1_translator_wait_latency_counter_1_146q <= '0';
		ELSIF (clk = '1' AND clk'event) THEN
				nios1_uart_s1_translator_altera_merlin_slave_translator_uart_s1_translator_av_readdata_pre_0_178q <= av_readdata(0);
				nios1_uart_s1_translator_altera_merlin_slave_translator_uart_s1_translator_av_readdata_pre_10_164q <= av_readdata(10);
				nios1_uart_s1_translator_altera_merlin_slave_translator_uart_s1_translator_av_readdata_pre_11_163q <= av_readdata(11);
				nios1_uart_s1_translator_altera_merlin_slave_translator_uart_s1_translator_av_readdata_pre_12_162q <= av_readdata(12);
				nios1_uart_s1_translator_altera_merlin_slave_translator_uart_s1_translator_av_readdata_pre_13_161q <= av_readdata(13);
				nios1_uart_s1_translator_altera_merlin_slave_translator_uart_s1_translator_av_readdata_pre_14_160q <= av_readdata(14);
				nios1_uart_s1_translator_altera_merlin_slave_translator_uart_s1_translator_av_readdata_pre_15_159q <= av_readdata(15);
				nios1_uart_s1_translator_altera_merlin_slave_translator_uart_s1_translator_av_readdata_pre_1_173q <= av_readdata(1);
				nios1_uart_s1_translator_altera_merlin_slave_translator_uart_s1_translator_av_readdata_pre_2_172q <= av_readdata(2);
				nios1_uart_s1_translator_altera_merlin_slave_translator_uart_s1_translator_av_readdata_pre_3_171q <= av_readdata(3);
				nios1_uart_s1_translator_altera_merlin_slave_translator_uart_s1_translator_av_readdata_pre_4_170q <= av_readdata(4);
				nios1_uart_s1_translator_altera_merlin_slave_translator_uart_s1_translator_av_readdata_pre_5_169q <= av_readdata(5);
				nios1_uart_s1_translator_altera_merlin_slave_translator_uart_s1_translator_av_readdata_pre_6_168q <= av_readdata(6);
				nios1_uart_s1_translator_altera_merlin_slave_translator_uart_s1_translator_av_readdata_pre_7_167q <= av_readdata(7);
				nios1_uart_s1_translator_altera_merlin_slave_translator_uart_s1_translator_av_readdata_pre_8_166q <= av_readdata(8);
				nios1_uart_s1_translator_altera_merlin_slave_translator_uart_s1_translator_av_readdata_pre_9_165q <= av_readdata(9);
				nios1_uart_s1_translator_altera_merlin_slave_translator_uart_s1_translator_end_begintransfer_203q <= wire_nios1_uart_s1_translator_altera_merlin_slave_translator_uart_s1_translator_end_begintransfer_189m_dataout;
				nios1_uart_s1_translator_altera_merlin_slave_translator_uart_s1_translator_read_latency_shift_reg_0_181q <= (uav_read AND (wire_w120w(0) AND wire_nl_w159w(0)));
				nios1_uart_s1_translator_altera_merlin_slave_translator_uart_s1_translator_wait_latency_counter_0_147q <= wire_nios1_uart_s1_translator_altera_merlin_slave_translator_uart_s1_translator_wait_latency_counter_145m_dataout;
				nios1_uart_s1_translator_altera_merlin_slave_translator_uart_s1_translator_wait_latency_counter_1_146q <= wire_nios1_uart_s1_translator_altera_merlin_slave_translator_uart_s1_translator_wait_latency_counter_144m_dataout;
		END IF;
	END PROCESS;
	wire_nO_w163w(0) <= NOT nios1_uart_s1_translator_altera_merlin_slave_translator_uart_s1_translator_end_begintransfer_203q;
	wire_nO_w139w(0) <= NOT nios1_uart_s1_translator_altera_merlin_slave_translator_uart_s1_translator_wait_latency_counter_1_146q;
	wire_nios1_uart_s1_translator_altera_merlin_slave_translator_uart_s1_translator_end_begintransfer_188m_dataout <= nios1_uart_s1_translator_altera_merlin_slave_translator_uart_s1_translator_end_begintransfer_203q AND s_wire_nios1_uart_s1_translator_altera_merlin_slave_translator_uart_s1_translator_uav_waitrequest_157_dataout;
	wire_nios1_uart_s1_translator_altera_merlin_slave_translator_uart_s1_translator_end_begintransfer_189m_dataout <= wire_nios1_uart_s1_translator_altera_merlin_slave_translator_uart_s1_translator_end_begintransfer_188m_dataout OR (wire_nl_w159w(0) AND (s_wire_nios1_uart_s1_translator_altera_merlin_slave_translator_uart_s1_translator_uav_waitrequest_157_dataout AND s_wire_nios1_uart_s1_translator_altera_merlin_slave_translator_uart_s1_translator_av_begintransfer_185_dataout));
	wire_nios1_uart_s1_translator_altera_merlin_slave_translator_uart_s1_translator_wait_latency_counter_141m_dataout <= wire_nios1_uart_s1_translator_altera_merlin_slave_translator_uart_s1_translator_add0_140_o(1) AND s_wire_nios1_uart_s1_translator_altera_merlin_slave_translator_uart_s1_translator_av_begintransfer_183_dataout;
	wire_nios1_uart_s1_translator_altera_merlin_slave_translator_uart_s1_translator_wait_latency_counter_142m_dataout <= wire_nios1_uart_s1_translator_altera_merlin_slave_translator_uart_s1_translator_add0_140_o(0) AND s_wire_nios1_uart_s1_translator_altera_merlin_slave_translator_uart_s1_translator_av_begintransfer_183_dataout;
	wire_nios1_uart_s1_translator_altera_merlin_slave_translator_uart_s1_translator_wait_latency_counter_144m_dataout <= wire_nios1_uart_s1_translator_altera_merlin_slave_translator_uart_s1_translator_wait_latency_counter_141m_dataout AND NOT(s_wire_nios1_uart_s1_translator_altera_merlin_slave_translator_uart_s1_translator_always7_143_dataout);
	wire_nios1_uart_s1_translator_altera_merlin_slave_translator_uart_s1_translator_wait_latency_counter_145m_dataout <= wire_nios1_uart_s1_translator_altera_merlin_slave_translator_uart_s1_translator_wait_latency_counter_142m_dataout AND NOT(s_wire_nios1_uart_s1_translator_altera_merlin_slave_translator_uart_s1_translator_always7_143_dataout);
	wire_nios1_uart_s1_translator_altera_merlin_slave_translator_uart_s1_translator_add0_140_a <= ( nios1_uart_s1_translator_altera_merlin_slave_translator_uart_s1_translator_wait_latency_counter_1_146q & nios1_uart_s1_translator_altera_merlin_slave_translator_uart_s1_translator_wait_latency_counter_0_147q);
	wire_nios1_uart_s1_translator_altera_merlin_slave_translator_uart_s1_translator_add0_140_b <= ( "0" & "1");
	nios1_uart_s1_translator_altera_merlin_slave_translator_uart_s1_translator_add0_140 :  oper_add
	  GENERIC MAP (
		sgate_representation => 0,
		width_a => 2,
		width_b => 2,
		width_o => 2
	  )
	  PORT MAP ( 
		a => wire_nios1_uart_s1_translator_altera_merlin_slave_translator_uart_s1_translator_add0_140_a,
		b => wire_nios1_uart_s1_translator_altera_merlin_slave_translator_uart_s1_translator_add0_140_b,
		cin => wire_gnd,
		o => wire_nios1_uart_s1_translator_altera_merlin_slave_translator_uart_s1_translator_add0_140_o
	  );
	wire_nios1_uart_s1_translator_altera_merlin_slave_translator_uart_s1_translator_lessthan0_149_a <= ( "0" & "0");
	wire_nios1_uart_s1_translator_altera_merlin_slave_translator_uart_s1_translator_lessthan0_149_b <= ( nios1_uart_s1_translator_altera_merlin_slave_translator_uart_s1_translator_wait_latency_counter_1_146q & nios1_uart_s1_translator_altera_merlin_slave_translator_uart_s1_translator_wait_latency_counter_0_147q);
	nios1_uart_s1_translator_altera_merlin_slave_translator_uart_s1_translator_lessthan0_149 :  oper_less_than
	  GENERIC MAP (
		sgate_representation => 0,
		width_a => 2,
		width_b => 2
	  )
	  PORT MAP ( 
		a => wire_nios1_uart_s1_translator_altera_merlin_slave_translator_uart_s1_translator_lessthan0_149_a,
		b => wire_nios1_uart_s1_translator_altera_merlin_slave_translator_uart_s1_translator_lessthan0_149_b,
		cin => wire_vcc,
		o => wire_nios1_uart_s1_translator_altera_merlin_slave_translator_uart_s1_translator_lessthan0_149_o
	  );
	wire_nios1_uart_s1_translator_altera_merlin_slave_translator_uart_s1_translator_lessthan1_151_a <= ( nios1_uart_s1_translator_altera_merlin_slave_translator_uart_s1_translator_wait_latency_counter_1_146q & nios1_uart_s1_translator_altera_merlin_slave_translator_uart_s1_translator_wait_latency_counter_0_147q);
	wire_nios1_uart_s1_translator_altera_merlin_slave_translator_uart_s1_translator_lessthan1_151_b <= ( "0" & "1");
	nios1_uart_s1_translator_altera_merlin_slave_translator_uart_s1_translator_lessthan1_151 :  oper_less_than
	  GENERIC MAP (
		sgate_representation => 0,
		width_a => 2,
		width_b => 2
	  )
	  PORT MAP ( 
		a => wire_nios1_uart_s1_translator_altera_merlin_slave_translator_uart_s1_translator_lessthan1_151_a,
		b => wire_nios1_uart_s1_translator_altera_merlin_slave_translator_uart_s1_translator_lessthan1_151_b,
		cin => wire_vcc,
		o => wire_nios1_uart_s1_translator_altera_merlin_slave_translator_uart_s1_translator_lessthan1_151_o
	  );

 END RTL; --Nios1_uart_s1_translator
--synopsys translate_on
--VALID FILE
