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

 ENTITY  Nios1_sysid_qsys_control_slave_translator IS 
	 PORT 
	 ( 
		 av_address	:	OUT  STD_LOGIC;
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
 END Nios1_sysid_qsys_control_slave_translator;

 ARCHITECTURE RTL OF Nios1_sysid_qsys_control_slave_translator IS

	 ATTRIBUTE synthesis_clearbox : natural;
	 ATTRIBUTE synthesis_clearbox OF RTL : ARCHITECTURE IS 1;
	 SIGNAL	nios1_sysid_qsys_control_slave_translator_altera_merlin_slave_translator_sysid_qsys_control_slave_translator_waitrequest_reset_override_156q	:	STD_LOGIC := '0';
	 SIGNAL  wire_nl_w87w	:	STD_LOGIC_VECTOR (0 DOWNTO 0);
	 SIGNAL	nios1_sysid_qsys_control_slave_translator_altera_merlin_slave_translator_sysid_qsys_control_slave_translator_av_readdata_pre_0_192q	:	STD_LOGIC := '0';
	 SIGNAL	nios1_sysid_qsys_control_slave_translator_altera_merlin_slave_translator_sysid_qsys_control_slave_translator_av_readdata_pre_10_178q	:	STD_LOGIC := '0';
	 SIGNAL	nios1_sysid_qsys_control_slave_translator_altera_merlin_slave_translator_sysid_qsys_control_slave_translator_av_readdata_pre_11_177q	:	STD_LOGIC := '0';
	 SIGNAL	nios1_sysid_qsys_control_slave_translator_altera_merlin_slave_translator_sysid_qsys_control_slave_translator_av_readdata_pre_12_176q	:	STD_LOGIC := '0';
	 SIGNAL	nios1_sysid_qsys_control_slave_translator_altera_merlin_slave_translator_sysid_qsys_control_slave_translator_av_readdata_pre_13_175q	:	STD_LOGIC := '0';
	 SIGNAL	nios1_sysid_qsys_control_slave_translator_altera_merlin_slave_translator_sysid_qsys_control_slave_translator_av_readdata_pre_14_174q	:	STD_LOGIC := '0';
	 SIGNAL	nios1_sysid_qsys_control_slave_translator_altera_merlin_slave_translator_sysid_qsys_control_slave_translator_av_readdata_pre_15_173q	:	STD_LOGIC := '0';
	 SIGNAL	nios1_sysid_qsys_control_slave_translator_altera_merlin_slave_translator_sysid_qsys_control_slave_translator_av_readdata_pre_16_172q	:	STD_LOGIC := '0';
	 SIGNAL	nios1_sysid_qsys_control_slave_translator_altera_merlin_slave_translator_sysid_qsys_control_slave_translator_av_readdata_pre_17_171q	:	STD_LOGIC := '0';
	 SIGNAL	nios1_sysid_qsys_control_slave_translator_altera_merlin_slave_translator_sysid_qsys_control_slave_translator_av_readdata_pre_18_170q	:	STD_LOGIC := '0';
	 SIGNAL	nios1_sysid_qsys_control_slave_translator_altera_merlin_slave_translator_sysid_qsys_control_slave_translator_av_readdata_pre_19_169q	:	STD_LOGIC := '0';
	 SIGNAL	nios1_sysid_qsys_control_slave_translator_altera_merlin_slave_translator_sysid_qsys_control_slave_translator_av_readdata_pre_1_187q	:	STD_LOGIC := '0';
	 SIGNAL	nios1_sysid_qsys_control_slave_translator_altera_merlin_slave_translator_sysid_qsys_control_slave_translator_av_readdata_pre_20_168q	:	STD_LOGIC := '0';
	 SIGNAL	nios1_sysid_qsys_control_slave_translator_altera_merlin_slave_translator_sysid_qsys_control_slave_translator_av_readdata_pre_21_167q	:	STD_LOGIC := '0';
	 SIGNAL	nios1_sysid_qsys_control_slave_translator_altera_merlin_slave_translator_sysid_qsys_control_slave_translator_av_readdata_pre_22_166q	:	STD_LOGIC := '0';
	 SIGNAL	nios1_sysid_qsys_control_slave_translator_altera_merlin_slave_translator_sysid_qsys_control_slave_translator_av_readdata_pre_23_165q	:	STD_LOGIC := '0';
	 SIGNAL	nios1_sysid_qsys_control_slave_translator_altera_merlin_slave_translator_sysid_qsys_control_slave_translator_av_readdata_pre_24_164q	:	STD_LOGIC := '0';
	 SIGNAL	nios1_sysid_qsys_control_slave_translator_altera_merlin_slave_translator_sysid_qsys_control_slave_translator_av_readdata_pre_25_163q	:	STD_LOGIC := '0';
	 SIGNAL	nios1_sysid_qsys_control_slave_translator_altera_merlin_slave_translator_sysid_qsys_control_slave_translator_av_readdata_pre_26_162q	:	STD_LOGIC := '0';
	 SIGNAL	nios1_sysid_qsys_control_slave_translator_altera_merlin_slave_translator_sysid_qsys_control_slave_translator_av_readdata_pre_27_161q	:	STD_LOGIC := '0';
	 SIGNAL	nios1_sysid_qsys_control_slave_translator_altera_merlin_slave_translator_sysid_qsys_control_slave_translator_av_readdata_pre_28_160q	:	STD_LOGIC := '0';
	 SIGNAL	nios1_sysid_qsys_control_slave_translator_altera_merlin_slave_translator_sysid_qsys_control_slave_translator_av_readdata_pre_29_159q	:	STD_LOGIC := '0';
	 SIGNAL	nios1_sysid_qsys_control_slave_translator_altera_merlin_slave_translator_sysid_qsys_control_slave_translator_av_readdata_pre_2_186q	:	STD_LOGIC := '0';
	 SIGNAL	nios1_sysid_qsys_control_slave_translator_altera_merlin_slave_translator_sysid_qsys_control_slave_translator_av_readdata_pre_30_158q	:	STD_LOGIC := '0';
	 SIGNAL	nios1_sysid_qsys_control_slave_translator_altera_merlin_slave_translator_sysid_qsys_control_slave_translator_av_readdata_pre_31_157q	:	STD_LOGIC := '0';
	 SIGNAL	nios1_sysid_qsys_control_slave_translator_altera_merlin_slave_translator_sysid_qsys_control_slave_translator_av_readdata_pre_3_185q	:	STD_LOGIC := '0';
	 SIGNAL	nios1_sysid_qsys_control_slave_translator_altera_merlin_slave_translator_sysid_qsys_control_slave_translator_av_readdata_pre_4_184q	:	STD_LOGIC := '0';
	 SIGNAL	nios1_sysid_qsys_control_slave_translator_altera_merlin_slave_translator_sysid_qsys_control_slave_translator_av_readdata_pre_5_183q	:	STD_LOGIC := '0';
	 SIGNAL	nios1_sysid_qsys_control_slave_translator_altera_merlin_slave_translator_sysid_qsys_control_slave_translator_av_readdata_pre_6_182q	:	STD_LOGIC := '0';
	 SIGNAL	nios1_sysid_qsys_control_slave_translator_altera_merlin_slave_translator_sysid_qsys_control_slave_translator_av_readdata_pre_7_181q	:	STD_LOGIC := '0';
	 SIGNAL	nios1_sysid_qsys_control_slave_translator_altera_merlin_slave_translator_sysid_qsys_control_slave_translator_av_readdata_pre_8_180q	:	STD_LOGIC := '0';
	 SIGNAL	nios1_sysid_qsys_control_slave_translator_altera_merlin_slave_translator_sysid_qsys_control_slave_translator_av_readdata_pre_9_179q	:	STD_LOGIC := '0';
	 SIGNAL	nios1_sysid_qsys_control_slave_translator_altera_merlin_slave_translator_sysid_qsys_control_slave_translator_read_latency_shift_reg_0_195q	:	STD_LOGIC := '0';
	 SIGNAL	nios1_sysid_qsys_control_slave_translator_altera_merlin_slave_translator_sysid_qsys_control_slave_translator_wait_latency_counter_0_144q	:	STD_LOGIC := '0';
	 SIGNAL	nios1_sysid_qsys_control_slave_translator_altera_merlin_slave_translator_sysid_qsys_control_slave_translator_wait_latency_counter_1_143q	:	STD_LOGIC := '0';
	 SIGNAL  wire_nO_w51w	:	STD_LOGIC_VECTOR (0 DOWNTO 0);
	 SIGNAL  wire_nO_w48w	:	STD_LOGIC_VECTOR (0 DOWNTO 0);
	 SIGNAL	wire_nios1_sysid_qsys_control_slave_translator_altera_merlin_slave_translator_sysid_qsys_control_slave_translator_av_waitrequest_generated_154m_dataout	:	STD_LOGIC;
	 SIGNAL	wire_nios1_sysid_qsys_control_slave_translator_altera_merlin_slave_translator_sysid_qsys_control_slave_translator_wait_latency_counter_138m_dataout	:	STD_LOGIC;
	 SIGNAL	wire_nios1_sysid_qsys_control_slave_translator_altera_merlin_slave_translator_sysid_qsys_control_slave_translator_wait_latency_counter_139m_dataout	:	STD_LOGIC;
	 SIGNAL	wire_nios1_sysid_qsys_control_slave_translator_altera_merlin_slave_translator_sysid_qsys_control_slave_translator_wait_latency_counter_141m_dataout	:	STD_LOGIC;
	 SIGNAL	wire_nios1_sysid_qsys_control_slave_translator_altera_merlin_slave_translator_sysid_qsys_control_slave_translator_wait_latency_counter_142m_dataout	:	STD_LOGIC;
	 SIGNAL  wire_nios1_sysid_qsys_control_slave_translator_altera_merlin_slave_translator_sysid_qsys_control_slave_translator_add0_137_a	:	STD_LOGIC_VECTOR (1 DOWNTO 0);
	 SIGNAL  wire_nios1_sysid_qsys_control_slave_translator_altera_merlin_slave_translator_sysid_qsys_control_slave_translator_add0_137_b	:	STD_LOGIC_VECTOR (1 DOWNTO 0);
	 SIGNAL  wire_gnd	:	STD_LOGIC;
	 SIGNAL  wire_nios1_sysid_qsys_control_slave_translator_altera_merlin_slave_translator_sysid_qsys_control_slave_translator_add0_137_o	:	STD_LOGIC_VECTOR (1 DOWNTO 0);
	 SIGNAL  wire_w_lg_reset47w	:	STD_LOGIC_VECTOR (0 DOWNTO 0);
	 SIGNAL  wire_w45w	:	STD_LOGIC_VECTOR (0 DOWNTO 0);
	 SIGNAL  s_wire_gnd :	STD_LOGIC;
	 SIGNAL  s_wire_nios1_sysid_qsys_control_slave_translator_altera_merlin_slave_translator_sysid_qsys_control_slave_translator_always7_140_dataout :	STD_LOGIC;
	 SIGNAL  s_wire_nios1_sysid_qsys_control_slave_translator_altera_merlin_slave_translator_sysid_qsys_control_slave_translator_av_begintransfer_197_dataout :	STD_LOGIC;
	 SIGNAL  s_wire_nios1_sysid_qsys_control_slave_translator_altera_merlin_slave_translator_sysid_qsys_control_slave_translator_uav_waitrequest_155_dataout :	STD_LOGIC;
	 SIGNAL  s_wire_vcc :	STD_LOGIC;
 BEGIN

	wire_gnd <= '0';
	wire_w_lg_reset47w(0) <= NOT reset;
	wire_w45w(0) <= NOT s_wire_nios1_sysid_qsys_control_slave_translator_altera_merlin_slave_translator_sysid_qsys_control_slave_translator_uav_waitrequest_155_dataout;
	av_address <= uav_address(2);
	s_wire_gnd <= '0';
	s_wire_nios1_sysid_qsys_control_slave_translator_altera_merlin_slave_translator_sysid_qsys_control_slave_translator_always7_140_dataout <= (wire_w45w(0) OR nios1_sysid_qsys_control_slave_translator_altera_merlin_slave_translator_sysid_qsys_control_slave_translator_waitrequest_reset_override_156q);
	s_wire_nios1_sysid_qsys_control_slave_translator_altera_merlin_slave_translator_sysid_qsys_control_slave_translator_av_begintransfer_197_dataout <= (uav_read OR uav_write);
	s_wire_nios1_sysid_qsys_control_slave_translator_altera_merlin_slave_translator_sysid_qsys_control_slave_translator_uav_waitrequest_155_dataout <= (wire_nios1_sysid_qsys_control_slave_translator_altera_merlin_slave_translator_sysid_qsys_control_slave_translator_av_waitrequest_generated_154m_dataout OR nios1_sysid_qsys_control_slave_translator_altera_merlin_slave_translator_sysid_qsys_control_slave_translator_waitrequest_reset_override_156q);
	s_wire_vcc <= '1';
	uav_readdata <= ( nios1_sysid_qsys_control_slave_translator_altera_merlin_slave_translator_sysid_qsys_control_slave_translator_av_readdata_pre_31_157q & nios1_sysid_qsys_control_slave_translator_altera_merlin_slave_translator_sysid_qsys_control_slave_translator_av_readdata_pre_30_158q & nios1_sysid_qsys_control_slave_translator_altera_merlin_slave_translator_sysid_qsys_control_slave_translator_av_readdata_pre_29_159q & nios1_sysid_qsys_control_slave_translator_altera_merlin_slave_translator_sysid_qsys_control_slave_translator_av_readdata_pre_28_160q & nios1_sysid_qsys_control_slave_translator_altera_merlin_slave_translator_sysid_qsys_control_slave_translator_av_readdata_pre_27_161q & nios1_sysid_qsys_control_slave_translator_altera_merlin_slave_translator_sysid_qsys_control_slave_translator_av_readdata_pre_26_162q & nios1_sysid_qsys_control_slave_translator_altera_merlin_slave_translator_sysid_qsys_control_slave_translator_av_readdata_pre_25_163q & nios1_sysid_qsys_control_slave_translator_altera_merlin_slave_translator_sysid_qsys_control_slave_translator_av_readdata_pre_24_164q & nios1_sysid_qsys_control_slave_translator_altera_merlin_slave_translator_sysid_qsys_control_slave_translator_av_readdata_pre_23_165q & nios1_sysid_qsys_control_slave_translator_altera_merlin_slave_translator_sysid_qsys_control_slave_translator_av_readdata_pre_22_166q & nios1_sysid_qsys_control_slave_translator_altera_merlin_slave_translator_sysid_qsys_control_slave_translator_av_readdata_pre_21_167q & nios1_sysid_qsys_control_slave_translator_altera_merlin_slave_translator_sysid_qsys_control_slave_translator_av_readdata_pre_20_168q & nios1_sysid_qsys_control_slave_translator_altera_merlin_slave_translator_sysid_qsys_control_slave_translator_av_readdata_pre_19_169q & nios1_sysid_qsys_control_slave_translator_altera_merlin_slave_translator_sysid_qsys_control_slave_translator_av_readdata_pre_18_170q & nios1_sysid_qsys_control_slave_translator_altera_merlin_slave_translator_sysid_qsys_control_slave_translator_av_readdata_pre_17_171q & nios1_sysid_qsys_control_slave_translator_altera_merlin_slave_translator_sysid_qsys_control_slave_translator_av_readdata_pre_16_172q
 & nios1_sysid_qsys_control_slave_translator_altera_merlin_slave_translator_sysid_qsys_control_slave_translator_av_readdata_pre_15_173q & nios1_sysid_qsys_control_slave_translator_altera_merlin_slave_translator_sysid_qsys_control_slave_translator_av_readdata_pre_14_174q & nios1_sysid_qsys_control_slave_translator_altera_merlin_slave_translator_sysid_qsys_control_slave_translator_av_readdata_pre_13_175q & nios1_sysid_qsys_control_slave_translator_altera_merlin_slave_translator_sysid_qsys_control_slave_translator_av_readdata_pre_12_176q & nios1_sysid_qsys_control_slave_translator_altera_merlin_slave_translator_sysid_qsys_control_slave_translator_av_readdata_pre_11_177q & nios1_sysid_qsys_control_slave_translator_altera_merlin_slave_translator_sysid_qsys_control_slave_translator_av_readdata_pre_10_178q & nios1_sysid_qsys_control_slave_translator_altera_merlin_slave_translator_sysid_qsys_control_slave_translator_av_readdata_pre_9_179q & nios1_sysid_qsys_control_slave_translator_altera_merlin_slave_translator_sysid_qsys_control_slave_translator_av_readdata_pre_8_180q & nios1_sysid_qsys_control_slave_translator_altera_merlin_slave_translator_sysid_qsys_control_slave_translator_av_readdata_pre_7_181q & nios1_sysid_qsys_control_slave_translator_altera_merlin_slave_translator_sysid_qsys_control_slave_translator_av_readdata_pre_6_182q & nios1_sysid_qsys_control_slave_translator_altera_merlin_slave_translator_sysid_qsys_control_slave_translator_av_readdata_pre_5_183q & nios1_sysid_qsys_control_slave_translator_altera_merlin_slave_translator_sysid_qsys_control_slave_translator_av_readdata_pre_4_184q & nios1_sysid_qsys_control_slave_translator_altera_merlin_slave_translator_sysid_qsys_control_slave_translator_av_readdata_pre_3_185q & nios1_sysid_qsys_control_slave_translator_altera_merlin_slave_translator_sysid_qsys_control_slave_translator_av_readdata_pre_2_186q & nios1_sysid_qsys_control_slave_translator_altera_merlin_slave_translator_sysid_qsys_control_slave_translator_av_readdata_pre_1_187q & nios1_sysid_qsys_control_slave_translator_altera_merlin_slave_translator_sysid_qsys_control_slave_translator_av_readdata_pre_0_192q
);
	uav_readdatavalid <= nios1_sysid_qsys_control_slave_translator_altera_merlin_slave_translator_sysid_qsys_control_slave_translator_read_latency_shift_reg_0_195q;
	uav_waitrequest <= s_wire_nios1_sysid_qsys_control_slave_translator_altera_merlin_slave_translator_sysid_qsys_control_slave_translator_uav_waitrequest_155_dataout;
	PROCESS (clk, reset)
	BEGIN
		IF (reset = '1') THEN
				nios1_sysid_qsys_control_slave_translator_altera_merlin_slave_translator_sysid_qsys_control_slave_translator_waitrequest_reset_override_156q <= '1';
		ELSIF (clk = '1' AND clk'event) THEN
				nios1_sysid_qsys_control_slave_translator_altera_merlin_slave_translator_sysid_qsys_control_slave_translator_waitrequest_reset_override_156q <= s_wire_gnd;
		END IF;
		if (now = 0 ns) then
			nios1_sysid_qsys_control_slave_translator_altera_merlin_slave_translator_sysid_qsys_control_slave_translator_waitrequest_reset_override_156q <= '1' after 1 ps;
		end if;
	END PROCESS;
	wire_nl_w87w(0) <= NOT nios1_sysid_qsys_control_slave_translator_altera_merlin_slave_translator_sysid_qsys_control_slave_translator_waitrequest_reset_override_156q;
	PROCESS (clk, reset)
	BEGIN
		IF (reset = '1') THEN
				nios1_sysid_qsys_control_slave_translator_altera_merlin_slave_translator_sysid_qsys_control_slave_translator_av_readdata_pre_0_192q <= '0';
				nios1_sysid_qsys_control_slave_translator_altera_merlin_slave_translator_sysid_qsys_control_slave_translator_av_readdata_pre_10_178q <= '0';
				nios1_sysid_qsys_control_slave_translator_altera_merlin_slave_translator_sysid_qsys_control_slave_translator_av_readdata_pre_11_177q <= '0';
				nios1_sysid_qsys_control_slave_translator_altera_merlin_slave_translator_sysid_qsys_control_slave_translator_av_readdata_pre_12_176q <= '0';
				nios1_sysid_qsys_control_slave_translator_altera_merlin_slave_translator_sysid_qsys_control_slave_translator_av_readdata_pre_13_175q <= '0';
				nios1_sysid_qsys_control_slave_translator_altera_merlin_slave_translator_sysid_qsys_control_slave_translator_av_readdata_pre_14_174q <= '0';
				nios1_sysid_qsys_control_slave_translator_altera_merlin_slave_translator_sysid_qsys_control_slave_translator_av_readdata_pre_15_173q <= '0';
				nios1_sysid_qsys_control_slave_translator_altera_merlin_slave_translator_sysid_qsys_control_slave_translator_av_readdata_pre_16_172q <= '0';
				nios1_sysid_qsys_control_slave_translator_altera_merlin_slave_translator_sysid_qsys_control_slave_translator_av_readdata_pre_17_171q <= '0';
				nios1_sysid_qsys_control_slave_translator_altera_merlin_slave_translator_sysid_qsys_control_slave_translator_av_readdata_pre_18_170q <= '0';
				nios1_sysid_qsys_control_slave_translator_altera_merlin_slave_translator_sysid_qsys_control_slave_translator_av_readdata_pre_19_169q <= '0';
				nios1_sysid_qsys_control_slave_translator_altera_merlin_slave_translator_sysid_qsys_control_slave_translator_av_readdata_pre_1_187q <= '0';
				nios1_sysid_qsys_control_slave_translator_altera_merlin_slave_translator_sysid_qsys_control_slave_translator_av_readdata_pre_20_168q <= '0';
				nios1_sysid_qsys_control_slave_translator_altera_merlin_slave_translator_sysid_qsys_control_slave_translator_av_readdata_pre_21_167q <= '0';
				nios1_sysid_qsys_control_slave_translator_altera_merlin_slave_translator_sysid_qsys_control_slave_translator_av_readdata_pre_22_166q <= '0';
				nios1_sysid_qsys_control_slave_translator_altera_merlin_slave_translator_sysid_qsys_control_slave_translator_av_readdata_pre_23_165q <= '0';
				nios1_sysid_qsys_control_slave_translator_altera_merlin_slave_translator_sysid_qsys_control_slave_translator_av_readdata_pre_24_164q <= '0';
				nios1_sysid_qsys_control_slave_translator_altera_merlin_slave_translator_sysid_qsys_control_slave_translator_av_readdata_pre_25_163q <= '0';
				nios1_sysid_qsys_control_slave_translator_altera_merlin_slave_translator_sysid_qsys_control_slave_translator_av_readdata_pre_26_162q <= '0';
				nios1_sysid_qsys_control_slave_translator_altera_merlin_slave_translator_sysid_qsys_control_slave_translator_av_readdata_pre_27_161q <= '0';
				nios1_sysid_qsys_control_slave_translator_altera_merlin_slave_translator_sysid_qsys_control_slave_translator_av_readdata_pre_28_160q <= '0';
				nios1_sysid_qsys_control_slave_translator_altera_merlin_slave_translator_sysid_qsys_control_slave_translator_av_readdata_pre_29_159q <= '0';
				nios1_sysid_qsys_control_slave_translator_altera_merlin_slave_translator_sysid_qsys_control_slave_translator_av_readdata_pre_2_186q <= '0';
				nios1_sysid_qsys_control_slave_translator_altera_merlin_slave_translator_sysid_qsys_control_slave_translator_av_readdata_pre_30_158q <= '0';
				nios1_sysid_qsys_control_slave_translator_altera_merlin_slave_translator_sysid_qsys_control_slave_translator_av_readdata_pre_31_157q <= '0';
				nios1_sysid_qsys_control_slave_translator_altera_merlin_slave_translator_sysid_qsys_control_slave_translator_av_readdata_pre_3_185q <= '0';
				nios1_sysid_qsys_control_slave_translator_altera_merlin_slave_translator_sysid_qsys_control_slave_translator_av_readdata_pre_4_184q <= '0';
				nios1_sysid_qsys_control_slave_translator_altera_merlin_slave_translator_sysid_qsys_control_slave_translator_av_readdata_pre_5_183q <= '0';
				nios1_sysid_qsys_control_slave_translator_altera_merlin_slave_translator_sysid_qsys_control_slave_translator_av_readdata_pre_6_182q <= '0';
				nios1_sysid_qsys_control_slave_translator_altera_merlin_slave_translator_sysid_qsys_control_slave_translator_av_readdata_pre_7_181q <= '0';
				nios1_sysid_qsys_control_slave_translator_altera_merlin_slave_translator_sysid_qsys_control_slave_translator_av_readdata_pre_8_180q <= '0';
				nios1_sysid_qsys_control_slave_translator_altera_merlin_slave_translator_sysid_qsys_control_slave_translator_av_readdata_pre_9_179q <= '0';
				nios1_sysid_qsys_control_slave_translator_altera_merlin_slave_translator_sysid_qsys_control_slave_translator_read_latency_shift_reg_0_195q <= '0';
				nios1_sysid_qsys_control_slave_translator_altera_merlin_slave_translator_sysid_qsys_control_slave_translator_wait_latency_counter_0_144q <= '0';
				nios1_sysid_qsys_control_slave_translator_altera_merlin_slave_translator_sysid_qsys_control_slave_translator_wait_latency_counter_1_143q <= '0';
		ELSIF (clk = '1' AND clk'event) THEN
				nios1_sysid_qsys_control_slave_translator_altera_merlin_slave_translator_sysid_qsys_control_slave_translator_av_readdata_pre_0_192q <= av_readdata(0);
				nios1_sysid_qsys_control_slave_translator_altera_merlin_slave_translator_sysid_qsys_control_slave_translator_av_readdata_pre_10_178q <= av_readdata(10);
				nios1_sysid_qsys_control_slave_translator_altera_merlin_slave_translator_sysid_qsys_control_slave_translator_av_readdata_pre_11_177q <= av_readdata(11);
				nios1_sysid_qsys_control_slave_translator_altera_merlin_slave_translator_sysid_qsys_control_slave_translator_av_readdata_pre_12_176q <= av_readdata(12);
				nios1_sysid_qsys_control_slave_translator_altera_merlin_slave_translator_sysid_qsys_control_slave_translator_av_readdata_pre_13_175q <= av_readdata(13);
				nios1_sysid_qsys_control_slave_translator_altera_merlin_slave_translator_sysid_qsys_control_slave_translator_av_readdata_pre_14_174q <= av_readdata(14);
				nios1_sysid_qsys_control_slave_translator_altera_merlin_slave_translator_sysid_qsys_control_slave_translator_av_readdata_pre_15_173q <= av_readdata(15);
				nios1_sysid_qsys_control_slave_translator_altera_merlin_slave_translator_sysid_qsys_control_slave_translator_av_readdata_pre_16_172q <= av_readdata(16);
				nios1_sysid_qsys_control_slave_translator_altera_merlin_slave_translator_sysid_qsys_control_slave_translator_av_readdata_pre_17_171q <= av_readdata(17);
				nios1_sysid_qsys_control_slave_translator_altera_merlin_slave_translator_sysid_qsys_control_slave_translator_av_readdata_pre_18_170q <= av_readdata(18);
				nios1_sysid_qsys_control_slave_translator_altera_merlin_slave_translator_sysid_qsys_control_slave_translator_av_readdata_pre_19_169q <= av_readdata(19);
				nios1_sysid_qsys_control_slave_translator_altera_merlin_slave_translator_sysid_qsys_control_slave_translator_av_readdata_pre_1_187q <= av_readdata(1);
				nios1_sysid_qsys_control_slave_translator_altera_merlin_slave_translator_sysid_qsys_control_slave_translator_av_readdata_pre_20_168q <= av_readdata(20);
				nios1_sysid_qsys_control_slave_translator_altera_merlin_slave_translator_sysid_qsys_control_slave_translator_av_readdata_pre_21_167q <= av_readdata(21);
				nios1_sysid_qsys_control_slave_translator_altera_merlin_slave_translator_sysid_qsys_control_slave_translator_av_readdata_pre_22_166q <= av_readdata(22);
				nios1_sysid_qsys_control_slave_translator_altera_merlin_slave_translator_sysid_qsys_control_slave_translator_av_readdata_pre_23_165q <= av_readdata(23);
				nios1_sysid_qsys_control_slave_translator_altera_merlin_slave_translator_sysid_qsys_control_slave_translator_av_readdata_pre_24_164q <= av_readdata(24);
				nios1_sysid_qsys_control_slave_translator_altera_merlin_slave_translator_sysid_qsys_control_slave_translator_av_readdata_pre_25_163q <= av_readdata(25);
				nios1_sysid_qsys_control_slave_translator_altera_merlin_slave_translator_sysid_qsys_control_slave_translator_av_readdata_pre_26_162q <= av_readdata(26);
				nios1_sysid_qsys_control_slave_translator_altera_merlin_slave_translator_sysid_qsys_control_slave_translator_av_readdata_pre_27_161q <= av_readdata(27);
				nios1_sysid_qsys_control_slave_translator_altera_merlin_slave_translator_sysid_qsys_control_slave_translator_av_readdata_pre_28_160q <= av_readdata(28);
				nios1_sysid_qsys_control_slave_translator_altera_merlin_slave_translator_sysid_qsys_control_slave_translator_av_readdata_pre_29_159q <= av_readdata(29);
				nios1_sysid_qsys_control_slave_translator_altera_merlin_slave_translator_sysid_qsys_control_slave_translator_av_readdata_pre_2_186q <= av_readdata(2);
				nios1_sysid_qsys_control_slave_translator_altera_merlin_slave_translator_sysid_qsys_control_slave_translator_av_readdata_pre_30_158q <= av_readdata(30);
				nios1_sysid_qsys_control_slave_translator_altera_merlin_slave_translator_sysid_qsys_control_slave_translator_av_readdata_pre_31_157q <= av_readdata(31);
				nios1_sysid_qsys_control_slave_translator_altera_merlin_slave_translator_sysid_qsys_control_slave_translator_av_readdata_pre_3_185q <= av_readdata(3);
				nios1_sysid_qsys_control_slave_translator_altera_merlin_slave_translator_sysid_qsys_control_slave_translator_av_readdata_pre_4_184q <= av_readdata(4);
				nios1_sysid_qsys_control_slave_translator_altera_merlin_slave_translator_sysid_qsys_control_slave_translator_av_readdata_pre_5_183q <= av_readdata(5);
				nios1_sysid_qsys_control_slave_translator_altera_merlin_slave_translator_sysid_qsys_control_slave_translator_av_readdata_pre_6_182q <= av_readdata(6);
				nios1_sysid_qsys_control_slave_translator_altera_merlin_slave_translator_sysid_qsys_control_slave_translator_av_readdata_pre_7_181q <= av_readdata(7);
				nios1_sysid_qsys_control_slave_translator_altera_merlin_slave_translator_sysid_qsys_control_slave_translator_av_readdata_pre_8_180q <= av_readdata(8);
				nios1_sysid_qsys_control_slave_translator_altera_merlin_slave_translator_sysid_qsys_control_slave_translator_av_readdata_pre_9_179q <= av_readdata(9);
				nios1_sysid_qsys_control_slave_translator_altera_merlin_slave_translator_sysid_qsys_control_slave_translator_read_latency_shift_reg_0_195q <= (uav_read AND (wire_w45w(0) AND wire_nl_w87w(0)));
				nios1_sysid_qsys_control_slave_translator_altera_merlin_slave_translator_sysid_qsys_control_slave_translator_wait_latency_counter_0_144q <= wire_nios1_sysid_qsys_control_slave_translator_altera_merlin_slave_translator_sysid_qsys_control_slave_translator_wait_latency_counter_142m_dataout;
				nios1_sysid_qsys_control_slave_translator_altera_merlin_slave_translator_sysid_qsys_control_slave_translator_wait_latency_counter_1_143q <= wire_nios1_sysid_qsys_control_slave_translator_altera_merlin_slave_translator_sysid_qsys_control_slave_translator_wait_latency_counter_141m_dataout;
		END IF;
	END PROCESS;
	wire_nO_w51w(0) <= NOT nios1_sysid_qsys_control_slave_translator_altera_merlin_slave_translator_sysid_qsys_control_slave_translator_wait_latency_counter_0_144q;
	wire_nO_w48w(0) <= NOT nios1_sysid_qsys_control_slave_translator_altera_merlin_slave_translator_sysid_qsys_control_slave_translator_wait_latency_counter_1_143q;
	wire_nios1_sysid_qsys_control_slave_translator_altera_merlin_slave_translator_sysid_qsys_control_slave_translator_av_waitrequest_generated_154m_dataout <= (NOT (wire_nO_w48w(0) AND wire_nO_w51w(0))) WHEN uav_write = '1'  ELSE (NOT (wire_nO_w48w(0) AND nios1_sysid_qsys_control_slave_translator_altera_merlin_slave_translator_sysid_qsys_control_slave_translator_wait_latency_counter_0_144q));
	wire_nios1_sysid_qsys_control_slave_translator_altera_merlin_slave_translator_sysid_qsys_control_slave_translator_wait_latency_counter_138m_dataout <= wire_nios1_sysid_qsys_control_slave_translator_altera_merlin_slave_translator_sysid_qsys_control_slave_translator_add0_137_o(1) AND s_wire_nios1_sysid_qsys_control_slave_translator_altera_merlin_slave_translator_sysid_qsys_control_slave_translator_av_begintransfer_197_dataout;
	wire_nios1_sysid_qsys_control_slave_translator_altera_merlin_slave_translator_sysid_qsys_control_slave_translator_wait_latency_counter_139m_dataout <= wire_nios1_sysid_qsys_control_slave_translator_altera_merlin_slave_translator_sysid_qsys_control_slave_translator_add0_137_o(0) AND s_wire_nios1_sysid_qsys_control_slave_translator_altera_merlin_slave_translator_sysid_qsys_control_slave_translator_av_begintransfer_197_dataout;
	wire_nios1_sysid_qsys_control_slave_translator_altera_merlin_slave_translator_sysid_qsys_control_slave_translator_wait_latency_counter_141m_dataout <= wire_nios1_sysid_qsys_control_slave_translator_altera_merlin_slave_translator_sysid_qsys_control_slave_translator_wait_latency_counter_138m_dataout AND NOT(s_wire_nios1_sysid_qsys_control_slave_translator_altera_merlin_slave_translator_sysid_qsys_control_slave_translator_always7_140_dataout);
	wire_nios1_sysid_qsys_control_slave_translator_altera_merlin_slave_translator_sysid_qsys_control_slave_translator_wait_latency_counter_142m_dataout <= wire_nios1_sysid_qsys_control_slave_translator_altera_merlin_slave_translator_sysid_qsys_control_slave_translator_wait_latency_counter_139m_dataout AND NOT(s_wire_nios1_sysid_qsys_control_slave_translator_altera_merlin_slave_translator_sysid_qsys_control_slave_translator_always7_140_dataout);
	wire_nios1_sysid_qsys_control_slave_translator_altera_merlin_slave_translator_sysid_qsys_control_slave_translator_add0_137_a <= ( nios1_sysid_qsys_control_slave_translator_altera_merlin_slave_translator_sysid_qsys_control_slave_translator_wait_latency_counter_1_143q & nios1_sysid_qsys_control_slave_translator_altera_merlin_slave_translator_sysid_qsys_control_slave_translator_wait_latency_counter_0_144q);
	wire_nios1_sysid_qsys_control_slave_translator_altera_merlin_slave_translator_sysid_qsys_control_slave_translator_add0_137_b <= ( "0" & "1");
	nios1_sysid_qsys_control_slave_translator_altera_merlin_slave_translator_sysid_qsys_control_slave_translator_add0_137 :  oper_add
	  GENERIC MAP (
		sgate_representation => 0,
		width_a => 2,
		width_b => 2,
		width_o => 2
	  )
	  PORT MAP ( 
		a => wire_nios1_sysid_qsys_control_slave_translator_altera_merlin_slave_translator_sysid_qsys_control_slave_translator_add0_137_a,
		b => wire_nios1_sysid_qsys_control_slave_translator_altera_merlin_slave_translator_sysid_qsys_control_slave_translator_add0_137_b,
		cin => wire_gnd,
		o => wire_nios1_sysid_qsys_control_slave_translator_altera_merlin_slave_translator_sysid_qsys_control_slave_translator_add0_137_o
	  );

 END RTL; --Nios1_sysid_qsys_control_slave_translator
--synopsys translate_on
--VALID FILE