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

--synthesis_resources = lut 36 mux21 5 oper_add 1 
 LIBRARY ieee;
 USE ieee.std_logic_1164.all;

 ENTITY  Nios1_pio_SW_s1_translator IS 
	 PORT 
	 ( 
		 av_address	:	OUT  STD_LOGIC_VECTOR (1 DOWNTO 0);
		 av_readdata	:	IN  STD_LOGIC_VECTOR (31 DOWNTO 0);
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
 END Nios1_pio_SW_s1_translator;

 ARCHITECTURE RTL OF Nios1_pio_SW_s1_translator IS

	 ATTRIBUTE synthesis_clearbox : natural;
	 ATTRIBUTE synthesis_clearbox OF RTL : ARCHITECTURE IS 1;
	 SIGNAL	nios1_pio_sw_s1_translator_altera_merlin_slave_translator_pio_sw_s1_translator_waitrequest_reset_override_154q	:	STD_LOGIC := '0';
	 SIGNAL  wire_nl_w92w	:	STD_LOGIC_VECTOR (0 DOWNTO 0);
	 SIGNAL	nios1_pio_sw_s1_translator_altera_merlin_slave_translator_pio_sw_s1_translator_av_readdata_pre_0_190q	:	STD_LOGIC := '0';
	 SIGNAL	nios1_pio_sw_s1_translator_altera_merlin_slave_translator_pio_sw_s1_translator_av_readdata_pre_10_176q	:	STD_LOGIC := '0';
	 SIGNAL	nios1_pio_sw_s1_translator_altera_merlin_slave_translator_pio_sw_s1_translator_av_readdata_pre_11_175q	:	STD_LOGIC := '0';
	 SIGNAL	nios1_pio_sw_s1_translator_altera_merlin_slave_translator_pio_sw_s1_translator_av_readdata_pre_12_174q	:	STD_LOGIC := '0';
	 SIGNAL	nios1_pio_sw_s1_translator_altera_merlin_slave_translator_pio_sw_s1_translator_av_readdata_pre_13_173q	:	STD_LOGIC := '0';
	 SIGNAL	nios1_pio_sw_s1_translator_altera_merlin_slave_translator_pio_sw_s1_translator_av_readdata_pre_14_172q	:	STD_LOGIC := '0';
	 SIGNAL	nios1_pio_sw_s1_translator_altera_merlin_slave_translator_pio_sw_s1_translator_av_readdata_pre_15_171q	:	STD_LOGIC := '0';
	 SIGNAL	nios1_pio_sw_s1_translator_altera_merlin_slave_translator_pio_sw_s1_translator_av_readdata_pre_16_170q	:	STD_LOGIC := '0';
	 SIGNAL	nios1_pio_sw_s1_translator_altera_merlin_slave_translator_pio_sw_s1_translator_av_readdata_pre_17_169q	:	STD_LOGIC := '0';
	 SIGNAL	nios1_pio_sw_s1_translator_altera_merlin_slave_translator_pio_sw_s1_translator_av_readdata_pre_18_168q	:	STD_LOGIC := '0';
	 SIGNAL	nios1_pio_sw_s1_translator_altera_merlin_slave_translator_pio_sw_s1_translator_av_readdata_pre_19_167q	:	STD_LOGIC := '0';
	 SIGNAL	nios1_pio_sw_s1_translator_altera_merlin_slave_translator_pio_sw_s1_translator_av_readdata_pre_1_185q	:	STD_LOGIC := '0';
	 SIGNAL	nios1_pio_sw_s1_translator_altera_merlin_slave_translator_pio_sw_s1_translator_av_readdata_pre_20_166q	:	STD_LOGIC := '0';
	 SIGNAL	nios1_pio_sw_s1_translator_altera_merlin_slave_translator_pio_sw_s1_translator_av_readdata_pre_21_165q	:	STD_LOGIC := '0';
	 SIGNAL	nios1_pio_sw_s1_translator_altera_merlin_slave_translator_pio_sw_s1_translator_av_readdata_pre_22_164q	:	STD_LOGIC := '0';
	 SIGNAL	nios1_pio_sw_s1_translator_altera_merlin_slave_translator_pio_sw_s1_translator_av_readdata_pre_23_163q	:	STD_LOGIC := '0';
	 SIGNAL	nios1_pio_sw_s1_translator_altera_merlin_slave_translator_pio_sw_s1_translator_av_readdata_pre_24_162q	:	STD_LOGIC := '0';
	 SIGNAL	nios1_pio_sw_s1_translator_altera_merlin_slave_translator_pio_sw_s1_translator_av_readdata_pre_25_161q	:	STD_LOGIC := '0';
	 SIGNAL	nios1_pio_sw_s1_translator_altera_merlin_slave_translator_pio_sw_s1_translator_av_readdata_pre_26_160q	:	STD_LOGIC := '0';
	 SIGNAL	nios1_pio_sw_s1_translator_altera_merlin_slave_translator_pio_sw_s1_translator_av_readdata_pre_27_159q	:	STD_LOGIC := '0';
	 SIGNAL	nios1_pio_sw_s1_translator_altera_merlin_slave_translator_pio_sw_s1_translator_av_readdata_pre_28_158q	:	STD_LOGIC := '0';
	 SIGNAL	nios1_pio_sw_s1_translator_altera_merlin_slave_translator_pio_sw_s1_translator_av_readdata_pre_29_157q	:	STD_LOGIC := '0';
	 SIGNAL	nios1_pio_sw_s1_translator_altera_merlin_slave_translator_pio_sw_s1_translator_av_readdata_pre_2_184q	:	STD_LOGIC := '0';
	 SIGNAL	nios1_pio_sw_s1_translator_altera_merlin_slave_translator_pio_sw_s1_translator_av_readdata_pre_30_156q	:	STD_LOGIC := '0';
	 SIGNAL	nios1_pio_sw_s1_translator_altera_merlin_slave_translator_pio_sw_s1_translator_av_readdata_pre_31_155q	:	STD_LOGIC := '0';
	 SIGNAL	nios1_pio_sw_s1_translator_altera_merlin_slave_translator_pio_sw_s1_translator_av_readdata_pre_3_183q	:	STD_LOGIC := '0';
	 SIGNAL	nios1_pio_sw_s1_translator_altera_merlin_slave_translator_pio_sw_s1_translator_av_readdata_pre_4_182q	:	STD_LOGIC := '0';
	 SIGNAL	nios1_pio_sw_s1_translator_altera_merlin_slave_translator_pio_sw_s1_translator_av_readdata_pre_5_181q	:	STD_LOGIC := '0';
	 SIGNAL	nios1_pio_sw_s1_translator_altera_merlin_slave_translator_pio_sw_s1_translator_av_readdata_pre_6_180q	:	STD_LOGIC := '0';
	 SIGNAL	nios1_pio_sw_s1_translator_altera_merlin_slave_translator_pio_sw_s1_translator_av_readdata_pre_7_179q	:	STD_LOGIC := '0';
	 SIGNAL	nios1_pio_sw_s1_translator_altera_merlin_slave_translator_pio_sw_s1_translator_av_readdata_pre_8_178q	:	STD_LOGIC := '0';
	 SIGNAL	nios1_pio_sw_s1_translator_altera_merlin_slave_translator_pio_sw_s1_translator_av_readdata_pre_9_177q	:	STD_LOGIC := '0';
	 SIGNAL	nios1_pio_sw_s1_translator_altera_merlin_slave_translator_pio_sw_s1_translator_read_latency_shift_reg_0_193q	:	STD_LOGIC := '0';
	 SIGNAL	nios1_pio_sw_s1_translator_altera_merlin_slave_translator_pio_sw_s1_translator_wait_latency_counter_0_142q	:	STD_LOGIC := '0';
	 SIGNAL	nios1_pio_sw_s1_translator_altera_merlin_slave_translator_pio_sw_s1_translator_wait_latency_counter_1_141q	:	STD_LOGIC := '0';
	 SIGNAL  wire_nO_w56w	:	STD_LOGIC_VECTOR (0 DOWNTO 0);
	 SIGNAL  wire_nO_w53w	:	STD_LOGIC_VECTOR (0 DOWNTO 0);
	 SIGNAL	wire_nios1_pio_sw_s1_translator_altera_merlin_slave_translator_pio_sw_s1_translator_av_waitrequest_generated_152m_dataout	:	STD_LOGIC;
	 SIGNAL	wire_nios1_pio_sw_s1_translator_altera_merlin_slave_translator_pio_sw_s1_translator_wait_latency_counter_136m_dataout	:	STD_LOGIC;
	 SIGNAL	wire_nios1_pio_sw_s1_translator_altera_merlin_slave_translator_pio_sw_s1_translator_wait_latency_counter_137m_dataout	:	STD_LOGIC;
	 SIGNAL	wire_nios1_pio_sw_s1_translator_altera_merlin_slave_translator_pio_sw_s1_translator_wait_latency_counter_139m_dataout	:	STD_LOGIC;
	 SIGNAL	wire_nios1_pio_sw_s1_translator_altera_merlin_slave_translator_pio_sw_s1_translator_wait_latency_counter_140m_dataout	:	STD_LOGIC;
	 SIGNAL  wire_nios1_pio_sw_s1_translator_altera_merlin_slave_translator_pio_sw_s1_translator_add0_135_a	:	STD_LOGIC_VECTOR (1 DOWNTO 0);
	 SIGNAL  wire_nios1_pio_sw_s1_translator_altera_merlin_slave_translator_pio_sw_s1_translator_add0_135_b	:	STD_LOGIC_VECTOR (1 DOWNTO 0);
	 SIGNAL  wire_gnd	:	STD_LOGIC;
	 SIGNAL  wire_nios1_pio_sw_s1_translator_altera_merlin_slave_translator_pio_sw_s1_translator_add0_135_o	:	STD_LOGIC_VECTOR (1 DOWNTO 0);
	 SIGNAL  wire_w_lg_reset52w	:	STD_LOGIC_VECTOR (0 DOWNTO 0);
	 SIGNAL  wire_w50w	:	STD_LOGIC_VECTOR (0 DOWNTO 0);
	 SIGNAL  s_wire_gnd :	STD_LOGIC;
	 SIGNAL  s_wire_nios1_pio_sw_s1_translator_altera_merlin_slave_translator_pio_sw_s1_translator_always7_138_dataout :	STD_LOGIC;
	 SIGNAL  s_wire_nios1_pio_sw_s1_translator_altera_merlin_slave_translator_pio_sw_s1_translator_av_begintransfer_195_dataout :	STD_LOGIC;
	 SIGNAL  s_wire_nios1_pio_sw_s1_translator_altera_merlin_slave_translator_pio_sw_s1_translator_uav_waitrequest_153_dataout :	STD_LOGIC;
	 SIGNAL  s_wire_vcc :	STD_LOGIC;
 BEGIN

	wire_gnd <= '0';
	wire_w_lg_reset52w(0) <= NOT reset;
	wire_w50w(0) <= NOT s_wire_nios1_pio_sw_s1_translator_altera_merlin_slave_translator_pio_sw_s1_translator_uav_waitrequest_153_dataout;
	av_address <= ( uav_address(3 DOWNTO 2));
	s_wire_gnd <= '0';
	s_wire_nios1_pio_sw_s1_translator_altera_merlin_slave_translator_pio_sw_s1_translator_always7_138_dataout <= (wire_w50w(0) OR nios1_pio_sw_s1_translator_altera_merlin_slave_translator_pio_sw_s1_translator_waitrequest_reset_override_154q);
	s_wire_nios1_pio_sw_s1_translator_altera_merlin_slave_translator_pio_sw_s1_translator_av_begintransfer_195_dataout <= (uav_read OR uav_write);
	s_wire_nios1_pio_sw_s1_translator_altera_merlin_slave_translator_pio_sw_s1_translator_uav_waitrequest_153_dataout <= (wire_nios1_pio_sw_s1_translator_altera_merlin_slave_translator_pio_sw_s1_translator_av_waitrequest_generated_152m_dataout OR nios1_pio_sw_s1_translator_altera_merlin_slave_translator_pio_sw_s1_translator_waitrequest_reset_override_154q);
	s_wire_vcc <= '1';
	uav_readdata <= ( nios1_pio_sw_s1_translator_altera_merlin_slave_translator_pio_sw_s1_translator_av_readdata_pre_31_155q & nios1_pio_sw_s1_translator_altera_merlin_slave_translator_pio_sw_s1_translator_av_readdata_pre_30_156q & nios1_pio_sw_s1_translator_altera_merlin_slave_translator_pio_sw_s1_translator_av_readdata_pre_29_157q & nios1_pio_sw_s1_translator_altera_merlin_slave_translator_pio_sw_s1_translator_av_readdata_pre_28_158q & nios1_pio_sw_s1_translator_altera_merlin_slave_translator_pio_sw_s1_translator_av_readdata_pre_27_159q & nios1_pio_sw_s1_translator_altera_merlin_slave_translator_pio_sw_s1_translator_av_readdata_pre_26_160q & nios1_pio_sw_s1_translator_altera_merlin_slave_translator_pio_sw_s1_translator_av_readdata_pre_25_161q & nios1_pio_sw_s1_translator_altera_merlin_slave_translator_pio_sw_s1_translator_av_readdata_pre_24_162q & nios1_pio_sw_s1_translator_altera_merlin_slave_translator_pio_sw_s1_translator_av_readdata_pre_23_163q & nios1_pio_sw_s1_translator_altera_merlin_slave_translator_pio_sw_s1_translator_av_readdata_pre_22_164q & nios1_pio_sw_s1_translator_altera_merlin_slave_translator_pio_sw_s1_translator_av_readdata_pre_21_165q & nios1_pio_sw_s1_translator_altera_merlin_slave_translator_pio_sw_s1_translator_av_readdata_pre_20_166q & nios1_pio_sw_s1_translator_altera_merlin_slave_translator_pio_sw_s1_translator_av_readdata_pre_19_167q & nios1_pio_sw_s1_translator_altera_merlin_slave_translator_pio_sw_s1_translator_av_readdata_pre_18_168q & nios1_pio_sw_s1_translator_altera_merlin_slave_translator_pio_sw_s1_translator_av_readdata_pre_17_169q & nios1_pio_sw_s1_translator_altera_merlin_slave_translator_pio_sw_s1_translator_av_readdata_pre_16_170q & nios1_pio_sw_s1_translator_altera_merlin_slave_translator_pio_sw_s1_translator_av_readdata_pre_15_171q & nios1_pio_sw_s1_translator_altera_merlin_slave_translator_pio_sw_s1_translator_av_readdata_pre_14_172q & nios1_pio_sw_s1_translator_altera_merlin_slave_translator_pio_sw_s1_translator_av_readdata_pre_13_173q & nios1_pio_sw_s1_translator_altera_merlin_slave_translator_pio_sw_s1_translator_av_readdata_pre_12_174q
 & nios1_pio_sw_s1_translator_altera_merlin_slave_translator_pio_sw_s1_translator_av_readdata_pre_11_175q & nios1_pio_sw_s1_translator_altera_merlin_slave_translator_pio_sw_s1_translator_av_readdata_pre_10_176q & nios1_pio_sw_s1_translator_altera_merlin_slave_translator_pio_sw_s1_translator_av_readdata_pre_9_177q & nios1_pio_sw_s1_translator_altera_merlin_slave_translator_pio_sw_s1_translator_av_readdata_pre_8_178q & nios1_pio_sw_s1_translator_altera_merlin_slave_translator_pio_sw_s1_translator_av_readdata_pre_7_179q & nios1_pio_sw_s1_translator_altera_merlin_slave_translator_pio_sw_s1_translator_av_readdata_pre_6_180q & nios1_pio_sw_s1_translator_altera_merlin_slave_translator_pio_sw_s1_translator_av_readdata_pre_5_181q & nios1_pio_sw_s1_translator_altera_merlin_slave_translator_pio_sw_s1_translator_av_readdata_pre_4_182q & nios1_pio_sw_s1_translator_altera_merlin_slave_translator_pio_sw_s1_translator_av_readdata_pre_3_183q & nios1_pio_sw_s1_translator_altera_merlin_slave_translator_pio_sw_s1_translator_av_readdata_pre_2_184q & nios1_pio_sw_s1_translator_altera_merlin_slave_translator_pio_sw_s1_translator_av_readdata_pre_1_185q & nios1_pio_sw_s1_translator_altera_merlin_slave_translator_pio_sw_s1_translator_av_readdata_pre_0_190q);
	uav_readdatavalid <= nios1_pio_sw_s1_translator_altera_merlin_slave_translator_pio_sw_s1_translator_read_latency_shift_reg_0_193q;
	uav_waitrequest <= s_wire_nios1_pio_sw_s1_translator_altera_merlin_slave_translator_pio_sw_s1_translator_uav_waitrequest_153_dataout;
	PROCESS (clk, reset)
	BEGIN
		IF (reset = '1') THEN
				nios1_pio_sw_s1_translator_altera_merlin_slave_translator_pio_sw_s1_translator_waitrequest_reset_override_154q <= '1';
		ELSIF (clk = '1' AND clk'event) THEN
				nios1_pio_sw_s1_translator_altera_merlin_slave_translator_pio_sw_s1_translator_waitrequest_reset_override_154q <= s_wire_gnd;
		END IF;
		if (now = 0 ns) then
			nios1_pio_sw_s1_translator_altera_merlin_slave_translator_pio_sw_s1_translator_waitrequest_reset_override_154q <= '1' after 1 ps;
		end if;
	END PROCESS;
	wire_nl_w92w(0) <= NOT nios1_pio_sw_s1_translator_altera_merlin_slave_translator_pio_sw_s1_translator_waitrequest_reset_override_154q;
	PROCESS (clk, reset)
	BEGIN
		IF (reset = '1') THEN
				nios1_pio_sw_s1_translator_altera_merlin_slave_translator_pio_sw_s1_translator_av_readdata_pre_0_190q <= '0';
				nios1_pio_sw_s1_translator_altera_merlin_slave_translator_pio_sw_s1_translator_av_readdata_pre_10_176q <= '0';
				nios1_pio_sw_s1_translator_altera_merlin_slave_translator_pio_sw_s1_translator_av_readdata_pre_11_175q <= '0';
				nios1_pio_sw_s1_translator_altera_merlin_slave_translator_pio_sw_s1_translator_av_readdata_pre_12_174q <= '0';
				nios1_pio_sw_s1_translator_altera_merlin_slave_translator_pio_sw_s1_translator_av_readdata_pre_13_173q <= '0';
				nios1_pio_sw_s1_translator_altera_merlin_slave_translator_pio_sw_s1_translator_av_readdata_pre_14_172q <= '0';
				nios1_pio_sw_s1_translator_altera_merlin_slave_translator_pio_sw_s1_translator_av_readdata_pre_15_171q <= '0';
				nios1_pio_sw_s1_translator_altera_merlin_slave_translator_pio_sw_s1_translator_av_readdata_pre_16_170q <= '0';
				nios1_pio_sw_s1_translator_altera_merlin_slave_translator_pio_sw_s1_translator_av_readdata_pre_17_169q <= '0';
				nios1_pio_sw_s1_translator_altera_merlin_slave_translator_pio_sw_s1_translator_av_readdata_pre_18_168q <= '0';
				nios1_pio_sw_s1_translator_altera_merlin_slave_translator_pio_sw_s1_translator_av_readdata_pre_19_167q <= '0';
				nios1_pio_sw_s1_translator_altera_merlin_slave_translator_pio_sw_s1_translator_av_readdata_pre_1_185q <= '0';
				nios1_pio_sw_s1_translator_altera_merlin_slave_translator_pio_sw_s1_translator_av_readdata_pre_20_166q <= '0';
				nios1_pio_sw_s1_translator_altera_merlin_slave_translator_pio_sw_s1_translator_av_readdata_pre_21_165q <= '0';
				nios1_pio_sw_s1_translator_altera_merlin_slave_translator_pio_sw_s1_translator_av_readdata_pre_22_164q <= '0';
				nios1_pio_sw_s1_translator_altera_merlin_slave_translator_pio_sw_s1_translator_av_readdata_pre_23_163q <= '0';
				nios1_pio_sw_s1_translator_altera_merlin_slave_translator_pio_sw_s1_translator_av_readdata_pre_24_162q <= '0';
				nios1_pio_sw_s1_translator_altera_merlin_slave_translator_pio_sw_s1_translator_av_readdata_pre_25_161q <= '0';
				nios1_pio_sw_s1_translator_altera_merlin_slave_translator_pio_sw_s1_translator_av_readdata_pre_26_160q <= '0';
				nios1_pio_sw_s1_translator_altera_merlin_slave_translator_pio_sw_s1_translator_av_readdata_pre_27_159q <= '0';
				nios1_pio_sw_s1_translator_altera_merlin_slave_translator_pio_sw_s1_translator_av_readdata_pre_28_158q <= '0';
				nios1_pio_sw_s1_translator_altera_merlin_slave_translator_pio_sw_s1_translator_av_readdata_pre_29_157q <= '0';
				nios1_pio_sw_s1_translator_altera_merlin_slave_translator_pio_sw_s1_translator_av_readdata_pre_2_184q <= '0';
				nios1_pio_sw_s1_translator_altera_merlin_slave_translator_pio_sw_s1_translator_av_readdata_pre_30_156q <= '0';
				nios1_pio_sw_s1_translator_altera_merlin_slave_translator_pio_sw_s1_translator_av_readdata_pre_31_155q <= '0';
				nios1_pio_sw_s1_translator_altera_merlin_slave_translator_pio_sw_s1_translator_av_readdata_pre_3_183q <= '0';
				nios1_pio_sw_s1_translator_altera_merlin_slave_translator_pio_sw_s1_translator_av_readdata_pre_4_182q <= '0';
				nios1_pio_sw_s1_translator_altera_merlin_slave_translator_pio_sw_s1_translator_av_readdata_pre_5_181q <= '0';
				nios1_pio_sw_s1_translator_altera_merlin_slave_translator_pio_sw_s1_translator_av_readdata_pre_6_180q <= '0';
				nios1_pio_sw_s1_translator_altera_merlin_slave_translator_pio_sw_s1_translator_av_readdata_pre_7_179q <= '0';
				nios1_pio_sw_s1_translator_altera_merlin_slave_translator_pio_sw_s1_translator_av_readdata_pre_8_178q <= '0';
				nios1_pio_sw_s1_translator_altera_merlin_slave_translator_pio_sw_s1_translator_av_readdata_pre_9_177q <= '0';
				nios1_pio_sw_s1_translator_altera_merlin_slave_translator_pio_sw_s1_translator_read_latency_shift_reg_0_193q <= '0';
				nios1_pio_sw_s1_translator_altera_merlin_slave_translator_pio_sw_s1_translator_wait_latency_counter_0_142q <= '0';
				nios1_pio_sw_s1_translator_altera_merlin_slave_translator_pio_sw_s1_translator_wait_latency_counter_1_141q <= '0';
		ELSIF (clk = '1' AND clk'event) THEN
				nios1_pio_sw_s1_translator_altera_merlin_slave_translator_pio_sw_s1_translator_av_readdata_pre_0_190q <= av_readdata(0);
				nios1_pio_sw_s1_translator_altera_merlin_slave_translator_pio_sw_s1_translator_av_readdata_pre_10_176q <= av_readdata(10);
				nios1_pio_sw_s1_translator_altera_merlin_slave_translator_pio_sw_s1_translator_av_readdata_pre_11_175q <= av_readdata(11);
				nios1_pio_sw_s1_translator_altera_merlin_slave_translator_pio_sw_s1_translator_av_readdata_pre_12_174q <= av_readdata(12);
				nios1_pio_sw_s1_translator_altera_merlin_slave_translator_pio_sw_s1_translator_av_readdata_pre_13_173q <= av_readdata(13);
				nios1_pio_sw_s1_translator_altera_merlin_slave_translator_pio_sw_s1_translator_av_readdata_pre_14_172q <= av_readdata(14);
				nios1_pio_sw_s1_translator_altera_merlin_slave_translator_pio_sw_s1_translator_av_readdata_pre_15_171q <= av_readdata(15);
				nios1_pio_sw_s1_translator_altera_merlin_slave_translator_pio_sw_s1_translator_av_readdata_pre_16_170q <= av_readdata(16);
				nios1_pio_sw_s1_translator_altera_merlin_slave_translator_pio_sw_s1_translator_av_readdata_pre_17_169q <= av_readdata(17);
				nios1_pio_sw_s1_translator_altera_merlin_slave_translator_pio_sw_s1_translator_av_readdata_pre_18_168q <= av_readdata(18);
				nios1_pio_sw_s1_translator_altera_merlin_slave_translator_pio_sw_s1_translator_av_readdata_pre_19_167q <= av_readdata(19);
				nios1_pio_sw_s1_translator_altera_merlin_slave_translator_pio_sw_s1_translator_av_readdata_pre_1_185q <= av_readdata(1);
				nios1_pio_sw_s1_translator_altera_merlin_slave_translator_pio_sw_s1_translator_av_readdata_pre_20_166q <= av_readdata(20);
				nios1_pio_sw_s1_translator_altera_merlin_slave_translator_pio_sw_s1_translator_av_readdata_pre_21_165q <= av_readdata(21);
				nios1_pio_sw_s1_translator_altera_merlin_slave_translator_pio_sw_s1_translator_av_readdata_pre_22_164q <= av_readdata(22);
				nios1_pio_sw_s1_translator_altera_merlin_slave_translator_pio_sw_s1_translator_av_readdata_pre_23_163q <= av_readdata(23);
				nios1_pio_sw_s1_translator_altera_merlin_slave_translator_pio_sw_s1_translator_av_readdata_pre_24_162q <= av_readdata(24);
				nios1_pio_sw_s1_translator_altera_merlin_slave_translator_pio_sw_s1_translator_av_readdata_pre_25_161q <= av_readdata(25);
				nios1_pio_sw_s1_translator_altera_merlin_slave_translator_pio_sw_s1_translator_av_readdata_pre_26_160q <= av_readdata(26);
				nios1_pio_sw_s1_translator_altera_merlin_slave_translator_pio_sw_s1_translator_av_readdata_pre_27_159q <= av_readdata(27);
				nios1_pio_sw_s1_translator_altera_merlin_slave_translator_pio_sw_s1_translator_av_readdata_pre_28_158q <= av_readdata(28);
				nios1_pio_sw_s1_translator_altera_merlin_slave_translator_pio_sw_s1_translator_av_readdata_pre_29_157q <= av_readdata(29);
				nios1_pio_sw_s1_translator_altera_merlin_slave_translator_pio_sw_s1_translator_av_readdata_pre_2_184q <= av_readdata(2);
				nios1_pio_sw_s1_translator_altera_merlin_slave_translator_pio_sw_s1_translator_av_readdata_pre_30_156q <= av_readdata(30);
				nios1_pio_sw_s1_translator_altera_merlin_slave_translator_pio_sw_s1_translator_av_readdata_pre_31_155q <= av_readdata(31);
				nios1_pio_sw_s1_translator_altera_merlin_slave_translator_pio_sw_s1_translator_av_readdata_pre_3_183q <= av_readdata(3);
				nios1_pio_sw_s1_translator_altera_merlin_slave_translator_pio_sw_s1_translator_av_readdata_pre_4_182q <= av_readdata(4);
				nios1_pio_sw_s1_translator_altera_merlin_slave_translator_pio_sw_s1_translator_av_readdata_pre_5_181q <= av_readdata(5);
				nios1_pio_sw_s1_translator_altera_merlin_slave_translator_pio_sw_s1_translator_av_readdata_pre_6_180q <= av_readdata(6);
				nios1_pio_sw_s1_translator_altera_merlin_slave_translator_pio_sw_s1_translator_av_readdata_pre_7_179q <= av_readdata(7);
				nios1_pio_sw_s1_translator_altera_merlin_slave_translator_pio_sw_s1_translator_av_readdata_pre_8_178q <= av_readdata(8);
				nios1_pio_sw_s1_translator_altera_merlin_slave_translator_pio_sw_s1_translator_av_readdata_pre_9_177q <= av_readdata(9);
				nios1_pio_sw_s1_translator_altera_merlin_slave_translator_pio_sw_s1_translator_read_latency_shift_reg_0_193q <= (uav_read AND (wire_w50w(0) AND wire_nl_w92w(0)));
				nios1_pio_sw_s1_translator_altera_merlin_slave_translator_pio_sw_s1_translator_wait_latency_counter_0_142q <= wire_nios1_pio_sw_s1_translator_altera_merlin_slave_translator_pio_sw_s1_translator_wait_latency_counter_140m_dataout;
				nios1_pio_sw_s1_translator_altera_merlin_slave_translator_pio_sw_s1_translator_wait_latency_counter_1_141q <= wire_nios1_pio_sw_s1_translator_altera_merlin_slave_translator_pio_sw_s1_translator_wait_latency_counter_139m_dataout;
		END IF;
	END PROCESS;
	wire_nO_w56w(0) <= NOT nios1_pio_sw_s1_translator_altera_merlin_slave_translator_pio_sw_s1_translator_wait_latency_counter_0_142q;
	wire_nO_w53w(0) <= NOT nios1_pio_sw_s1_translator_altera_merlin_slave_translator_pio_sw_s1_translator_wait_latency_counter_1_141q;
	wire_nios1_pio_sw_s1_translator_altera_merlin_slave_translator_pio_sw_s1_translator_av_waitrequest_generated_152m_dataout <= (NOT (wire_nO_w53w(0) AND wire_nO_w56w(0))) WHEN uav_write = '1'  ELSE (NOT (wire_nO_w53w(0) AND nios1_pio_sw_s1_translator_altera_merlin_slave_translator_pio_sw_s1_translator_wait_latency_counter_0_142q));
	wire_nios1_pio_sw_s1_translator_altera_merlin_slave_translator_pio_sw_s1_translator_wait_latency_counter_136m_dataout <= wire_nios1_pio_sw_s1_translator_altera_merlin_slave_translator_pio_sw_s1_translator_add0_135_o(1) AND s_wire_nios1_pio_sw_s1_translator_altera_merlin_slave_translator_pio_sw_s1_translator_av_begintransfer_195_dataout;
	wire_nios1_pio_sw_s1_translator_altera_merlin_slave_translator_pio_sw_s1_translator_wait_latency_counter_137m_dataout <= wire_nios1_pio_sw_s1_translator_altera_merlin_slave_translator_pio_sw_s1_translator_add0_135_o(0) AND s_wire_nios1_pio_sw_s1_translator_altera_merlin_slave_translator_pio_sw_s1_translator_av_begintransfer_195_dataout;
	wire_nios1_pio_sw_s1_translator_altera_merlin_slave_translator_pio_sw_s1_translator_wait_latency_counter_139m_dataout <= wire_nios1_pio_sw_s1_translator_altera_merlin_slave_translator_pio_sw_s1_translator_wait_latency_counter_136m_dataout AND NOT(s_wire_nios1_pio_sw_s1_translator_altera_merlin_slave_translator_pio_sw_s1_translator_always7_138_dataout);
	wire_nios1_pio_sw_s1_translator_altera_merlin_slave_translator_pio_sw_s1_translator_wait_latency_counter_140m_dataout <= wire_nios1_pio_sw_s1_translator_altera_merlin_slave_translator_pio_sw_s1_translator_wait_latency_counter_137m_dataout AND NOT(s_wire_nios1_pio_sw_s1_translator_altera_merlin_slave_translator_pio_sw_s1_translator_always7_138_dataout);
	wire_nios1_pio_sw_s1_translator_altera_merlin_slave_translator_pio_sw_s1_translator_add0_135_a <= ( nios1_pio_sw_s1_translator_altera_merlin_slave_translator_pio_sw_s1_translator_wait_latency_counter_1_141q & nios1_pio_sw_s1_translator_altera_merlin_slave_translator_pio_sw_s1_translator_wait_latency_counter_0_142q);
	wire_nios1_pio_sw_s1_translator_altera_merlin_slave_translator_pio_sw_s1_translator_add0_135_b <= ( "0" & "1");
	nios1_pio_sw_s1_translator_altera_merlin_slave_translator_pio_sw_s1_translator_add0_135 :  oper_add
	  GENERIC MAP (
		sgate_representation => 0,
		width_a => 2,
		width_b => 2,
		width_o => 2
	  )
	  PORT MAP ( 
		a => wire_nios1_pio_sw_s1_translator_altera_merlin_slave_translator_pio_sw_s1_translator_add0_135_a,
		b => wire_nios1_pio_sw_s1_translator_altera_merlin_slave_translator_pio_sw_s1_translator_add0_135_b,
		cin => wire_gnd,
		o => wire_nios1_pio_sw_s1_translator_altera_merlin_slave_translator_pio_sw_s1_translator_add0_135_o
	  );

 END RTL; --Nios1_pio_SW_s1_translator
--synopsys translate_on
--VALID FILE
