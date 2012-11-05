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

--synthesis_resources = lut 17 mux21 15 oper_add 1 oper_less_than 2 
 LIBRARY ieee;
 USE ieee.std_logic_1164.all;

 ENTITY  Nios1_lcd_control_slave_translator IS 
	 PORT 
	 ( 
		 av_address	:	OUT  STD_LOGIC_VECTOR (1 DOWNTO 0);
		 av_begintransfer	:	OUT  STD_LOGIC;
		 av_read	:	OUT  STD_LOGIC;
		 av_readdata	:	IN  STD_LOGIC_VECTOR (7 DOWNTO 0);
		 av_write	:	OUT  STD_LOGIC;
		 av_writedata	:	OUT  STD_LOGIC_VECTOR (7 DOWNTO 0);
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
 END Nios1_lcd_control_slave_translator;

 ARCHITECTURE RTL OF Nios1_lcd_control_slave_translator IS

	 ATTRIBUTE synthesis_clearbox : natural;
	 ATTRIBUTE synthesis_clearbox OF RTL : ARCHITECTURE IS 1;
	 SIGNAL	nios1_lcd_control_slave_translator_altera_merlin_slave_translator_lcd_control_slave_translator_waitrequest_reset_override_153q	:	STD_LOGIC := '0';
	 SIGNAL  wire_nl_w171w	:	STD_LOGIC_VECTOR (0 DOWNTO 0);
	 SIGNAL	nios1_lcd_control_slave_translator_altera_merlin_slave_translator_lcd_control_slave_translator_av_readdata_pre_0_165q	:	STD_LOGIC := '0';
	 SIGNAL	nios1_lcd_control_slave_translator_altera_merlin_slave_translator_lcd_control_slave_translator_av_readdata_pre_1_160q	:	STD_LOGIC := '0';
	 SIGNAL	nios1_lcd_control_slave_translator_altera_merlin_slave_translator_lcd_control_slave_translator_av_readdata_pre_2_159q	:	STD_LOGIC := '0';
	 SIGNAL	nios1_lcd_control_slave_translator_altera_merlin_slave_translator_lcd_control_slave_translator_av_readdata_pre_3_158q	:	STD_LOGIC := '0';
	 SIGNAL	nios1_lcd_control_slave_translator_altera_merlin_slave_translator_lcd_control_slave_translator_av_readdata_pre_4_157q	:	STD_LOGIC := '0';
	 SIGNAL	nios1_lcd_control_slave_translator_altera_merlin_slave_translator_lcd_control_slave_translator_av_readdata_pre_5_156q	:	STD_LOGIC := '0';
	 SIGNAL	nios1_lcd_control_slave_translator_altera_merlin_slave_translator_lcd_control_slave_translator_av_readdata_pre_6_155q	:	STD_LOGIC := '0';
	 SIGNAL	nios1_lcd_control_slave_translator_altera_merlin_slave_translator_lcd_control_slave_translator_av_readdata_pre_7_154q	:	STD_LOGIC := '0';
	 SIGNAL	nios1_lcd_control_slave_translator_altera_merlin_slave_translator_lcd_control_slave_translator_end_begintransfer_190q	:	STD_LOGIC := '0';
	 SIGNAL	nios1_lcd_control_slave_translator_altera_merlin_slave_translator_lcd_control_slave_translator_read_latency_shift_reg_0_168q	:	STD_LOGIC := '0';
	 SIGNAL	nios1_lcd_control_slave_translator_altera_merlin_slave_translator_lcd_control_slave_translator_wait_latency_counter_0_141q	:	STD_LOGIC := '0';
	 SIGNAL	nios1_lcd_control_slave_translator_altera_merlin_slave_translator_lcd_control_slave_translator_wait_latency_counter_1_140q	:	STD_LOGIC := '0';
	 SIGNAL	nios1_lcd_control_slave_translator_altera_merlin_slave_translator_lcd_control_slave_translator_wait_latency_counter_2_139q	:	STD_LOGIC := '0';
	 SIGNAL	nios1_lcd_control_slave_translator_altera_merlin_slave_translator_lcd_control_slave_translator_wait_latency_counter_3_138q	:	STD_LOGIC := '0';
	 SIGNAL	nios1_lcd_control_slave_translator_altera_merlin_slave_translator_lcd_control_slave_translator_wait_latency_counter_4_137q	:	STD_LOGIC := '0';
	 SIGNAL	nios1_lcd_control_slave_translator_altera_merlin_slave_translator_lcd_control_slave_translator_wait_latency_counter_5_136q	:	STD_LOGIC := '0';
	 SIGNAL  wire_nO_w_lg_w_lg_w_lg_w_lg_w179w180w181w183w184w	:	STD_LOGIC_VECTOR (0 DOWNTO 0);
	 SIGNAL  wire_nO_w_lg_w_lg_w_lg_w179w180w181w183w	:	STD_LOGIC_VECTOR (0 DOWNTO 0);
	 SIGNAL  wire_nO_w_lg_w_lg_w179w180w181w	:	STD_LOGIC_VECTOR (0 DOWNTO 0);
	 SIGNAL  wire_nO_w_lg_w179w180w	:	STD_LOGIC_VECTOR (0 DOWNTO 0);
	 SIGNAL  wire_nO_w188w	:	STD_LOGIC_VECTOR (0 DOWNTO 0);
	 SIGNAL  wire_nO_w175w	:	STD_LOGIC_VECTOR (0 DOWNTO 0);
	 SIGNAL  wire_nO_w185w	:	STD_LOGIC_VECTOR (0 DOWNTO 0);
	 SIGNAL  wire_nO_w182w	:	STD_LOGIC_VECTOR (0 DOWNTO 0);
	 SIGNAL  wire_nO_w189w	:	STD_LOGIC_VECTOR (0 DOWNTO 0);
	 SIGNAL  wire_nO_w187w	:	STD_LOGIC_VECTOR (0 DOWNTO 0);
	 SIGNAL  wire_nO_w179w	:	STD_LOGIC_VECTOR (0 DOWNTO 0);
	 SIGNAL	wire_nios1_lcd_control_slave_translator_altera_merlin_slave_translator_lcd_control_slave_translator_av_waitrequest_generated_151m_dataout	:	STD_LOGIC;
	 SIGNAL	wire_nios1_lcd_control_slave_translator_altera_merlin_slave_translator_lcd_control_slave_translator_end_begintransfer_175m_dataout	:	STD_LOGIC;
	 SIGNAL	wire_nios1_lcd_control_slave_translator_altera_merlin_slave_translator_lcd_control_slave_translator_end_begintransfer_176m_dataout	:	STD_LOGIC;
	 SIGNAL	wire_nios1_lcd_control_slave_translator_altera_merlin_slave_translator_lcd_control_slave_translator_wait_latency_counter_123m_dataout	:	STD_LOGIC;
	 SIGNAL	wire_nios1_lcd_control_slave_translator_altera_merlin_slave_translator_lcd_control_slave_translator_wait_latency_counter_124m_dataout	:	STD_LOGIC;
	 SIGNAL	wire_nios1_lcd_control_slave_translator_altera_merlin_slave_translator_lcd_control_slave_translator_wait_latency_counter_125m_dataout	:	STD_LOGIC;
	 SIGNAL	wire_nios1_lcd_control_slave_translator_altera_merlin_slave_translator_lcd_control_slave_translator_wait_latency_counter_126m_dataout	:	STD_LOGIC;
	 SIGNAL	wire_nios1_lcd_control_slave_translator_altera_merlin_slave_translator_lcd_control_slave_translator_wait_latency_counter_127m_dataout	:	STD_LOGIC;
	 SIGNAL	wire_nios1_lcd_control_slave_translator_altera_merlin_slave_translator_lcd_control_slave_translator_wait_latency_counter_128m_dataout	:	STD_LOGIC;
	 SIGNAL	wire_nios1_lcd_control_slave_translator_altera_merlin_slave_translator_lcd_control_slave_translator_wait_latency_counter_130m_dataout	:	STD_LOGIC;
	 SIGNAL	wire_nios1_lcd_control_slave_translator_altera_merlin_slave_translator_lcd_control_slave_translator_wait_latency_counter_131m_dataout	:	STD_LOGIC;
	 SIGNAL	wire_nios1_lcd_control_slave_translator_altera_merlin_slave_translator_lcd_control_slave_translator_wait_latency_counter_132m_dataout	:	STD_LOGIC;
	 SIGNAL	wire_nios1_lcd_control_slave_translator_altera_merlin_slave_translator_lcd_control_slave_translator_wait_latency_counter_133m_dataout	:	STD_LOGIC;
	 SIGNAL	wire_nios1_lcd_control_slave_translator_altera_merlin_slave_translator_lcd_control_slave_translator_wait_latency_counter_134m_dataout	:	STD_LOGIC;
	 SIGNAL	wire_nios1_lcd_control_slave_translator_altera_merlin_slave_translator_lcd_control_slave_translator_wait_latency_counter_135m_dataout	:	STD_LOGIC;
	 SIGNAL  wire_nios1_lcd_control_slave_translator_altera_merlin_slave_translator_lcd_control_slave_translator_add0_122_a	:	STD_LOGIC_VECTOR (5 DOWNTO 0);
	 SIGNAL  wire_nios1_lcd_control_slave_translator_altera_merlin_slave_translator_lcd_control_slave_translator_add0_122_b	:	STD_LOGIC_VECTOR (5 DOWNTO 0);
	 SIGNAL  wire_gnd	:	STD_LOGIC;
	 SIGNAL  wire_nios1_lcd_control_slave_translator_altera_merlin_slave_translator_lcd_control_slave_translator_add0_122_o	:	STD_LOGIC_VECTOR (5 DOWNTO 0);
	 SIGNAL  wire_nios1_lcd_control_slave_translator_altera_merlin_slave_translator_lcd_control_slave_translator_lessthan0_143_a	:	STD_LOGIC_VECTOR (5 DOWNTO 0);
	 SIGNAL  wire_nios1_lcd_control_slave_translator_altera_merlin_slave_translator_lcd_control_slave_translator_lessthan0_143_b	:	STD_LOGIC_VECTOR (5 DOWNTO 0);
	 SIGNAL  wire_vcc	:	STD_LOGIC;
	 SIGNAL  wire_nios1_lcd_control_slave_translator_altera_merlin_slave_translator_lcd_control_slave_translator_lessthan0_143_o	:	STD_LOGIC;
	 SIGNAL  wire_nios1_lcd_control_slave_translator_altera_merlin_slave_translator_lcd_control_slave_translator_lessthan1_145_a	:	STD_LOGIC_VECTOR (5 DOWNTO 0);
	 SIGNAL  wire_nios1_lcd_control_slave_translator_altera_merlin_slave_translator_lcd_control_slave_translator_lessthan1_145_b	:	STD_LOGIC_VECTOR (5 DOWNTO 0);
	 SIGNAL  wire_nios1_lcd_control_slave_translator_altera_merlin_slave_translator_lcd_control_slave_translator_lessthan1_145_o	:	STD_LOGIC;
	 SIGNAL  wire_w_lg_reset119w	:	STD_LOGIC_VECTOR (0 DOWNTO 0);
	 SIGNAL  wire_w160w	:	STD_LOGIC_VECTOR (0 DOWNTO 0);
	 SIGNAL  wire_w161w	:	STD_LOGIC_VECTOR (0 DOWNTO 0);
	 SIGNAL  wire_w117w	:	STD_LOGIC_VECTOR (0 DOWNTO 0);
	 SIGNAL  s_wire_gnd :	STD_LOGIC;
	 SIGNAL  s_wire_nios1_lcd_control_slave_translator_altera_merlin_slave_translator_lcd_control_slave_translator_always7_129_dataout :	STD_LOGIC;
	 SIGNAL  s_wire_nios1_lcd_control_slave_translator_altera_merlin_slave_translator_lcd_control_slave_translator_av_begintransfer_170_dataout :	STD_LOGIC;
	 SIGNAL  s_wire_nios1_lcd_control_slave_translator_altera_merlin_slave_translator_lcd_control_slave_translator_av_begintransfer_172_dataout :	STD_LOGIC;
	 SIGNAL  s_wire_nios1_lcd_control_slave_translator_altera_merlin_slave_translator_lcd_control_slave_translator_av_waitrequest_generated_355_dataout :	STD_LOGIC;
	 SIGNAL  s_wire_nios1_lcd_control_slave_translator_altera_merlin_slave_translator_lcd_control_slave_translator_av_waitrequest_generated_388_dataout :	STD_LOGIC;
	 SIGNAL  s_wire_nios1_lcd_control_slave_translator_altera_merlin_slave_translator_lcd_control_slave_translator_uav_waitrequest_152_dataout :	STD_LOGIC;
	 SIGNAL  s_wire_vcc :	STD_LOGIC;
 BEGIN

	wire_gnd <= '0';
	wire_vcc <= '1';
	wire_w_lg_reset119w(0) <= NOT reset;
	wire_w160w(0) <= NOT s_wire_nios1_lcd_control_slave_translator_altera_merlin_slave_translator_lcd_control_slave_translator_av_waitrequest_generated_355_dataout;
	wire_w161w(0) <= NOT s_wire_nios1_lcd_control_slave_translator_altera_merlin_slave_translator_lcd_control_slave_translator_av_waitrequest_generated_388_dataout;
	wire_w117w(0) <= NOT s_wire_nios1_lcd_control_slave_translator_altera_merlin_slave_translator_lcd_control_slave_translator_uav_waitrequest_152_dataout;
	av_address <= ( uav_address(3 DOWNTO 2));
	av_begintransfer <= s_wire_nios1_lcd_control_slave_translator_altera_merlin_slave_translator_lcd_control_slave_translator_av_begintransfer_172_dataout;
	av_read <= (uav_read AND wire_nios1_lcd_control_slave_translator_altera_merlin_slave_translator_lcd_control_slave_translator_lessthan0_143_o);
	av_write <= ((uav_write AND wire_nios1_lcd_control_slave_translator_altera_merlin_slave_translator_lcd_control_slave_translator_lessthan0_143_o) AND wire_nios1_lcd_control_slave_translator_altera_merlin_slave_translator_lcd_control_slave_translator_lessthan1_145_o);
	av_writedata <= ( uav_writedata(7 DOWNTO 0));
	s_wire_gnd <= '0';
	s_wire_nios1_lcd_control_slave_translator_altera_merlin_slave_translator_lcd_control_slave_translator_always7_129_dataout <= (wire_w117w(0) OR nios1_lcd_control_slave_translator_altera_merlin_slave_translator_lcd_control_slave_translator_waitrequest_reset_override_153q);
	s_wire_nios1_lcd_control_slave_translator_altera_merlin_slave_translator_lcd_control_slave_translator_av_begintransfer_170_dataout <= (uav_read OR uav_write);
	s_wire_nios1_lcd_control_slave_translator_altera_merlin_slave_translator_lcd_control_slave_translator_av_begintransfer_172_dataout <= (s_wire_nios1_lcd_control_slave_translator_altera_merlin_slave_translator_lcd_control_slave_translator_av_begintransfer_170_dataout AND wire_nO_w175w(0));
	s_wire_nios1_lcd_control_slave_translator_altera_merlin_slave_translator_lcd_control_slave_translator_av_waitrequest_generated_355_dataout <= (wire_nO_w_lg_w_lg_w_lg_w_lg_w179w180w181w183w184w(0) AND wire_nO_w185w(0));
	s_wire_nios1_lcd_control_slave_translator_altera_merlin_slave_translator_lcd_control_slave_translator_av_waitrequest_generated_388_dataout <= ((((wire_nO_w188w(0) AND wire_nO_w189w(0)) AND nios1_lcd_control_slave_translator_altera_merlin_slave_translator_lcd_control_slave_translator_wait_latency_counter_2_139q) AND nios1_lcd_control_slave_translator_altera_merlin_slave_translator_lcd_control_slave_translator_wait_latency_counter_1_140q) AND nios1_lcd_control_slave_translator_altera_merlin_slave_translator_lcd_control_slave_translator_wait_latency_counter_0_141q);
	s_wire_nios1_lcd_control_slave_translator_altera_merlin_slave_translator_lcd_control_slave_translator_uav_waitrequest_152_dataout <= (wire_nios1_lcd_control_slave_translator_altera_merlin_slave_translator_lcd_control_slave_translator_av_waitrequest_generated_151m_dataout OR nios1_lcd_control_slave_translator_altera_merlin_slave_translator_lcd_control_slave_translator_waitrequest_reset_override_153q);
	s_wire_vcc <= '1';
	uav_readdata <= ( "0" & "0" & "0" & "0" & "0" & "0" & "0" & "0" & "0" & "0" & "0" & "0" & "0" & "0" & "0" & "0" & "0" & "0" & "0" & "0" & "0" & "0" & "0" & "0" & nios1_lcd_control_slave_translator_altera_merlin_slave_translator_lcd_control_slave_translator_av_readdata_pre_7_154q & nios1_lcd_control_slave_translator_altera_merlin_slave_translator_lcd_control_slave_translator_av_readdata_pre_6_155q & nios1_lcd_control_slave_translator_altera_merlin_slave_translator_lcd_control_slave_translator_av_readdata_pre_5_156q & nios1_lcd_control_slave_translator_altera_merlin_slave_translator_lcd_control_slave_translator_av_readdata_pre_4_157q & nios1_lcd_control_slave_translator_altera_merlin_slave_translator_lcd_control_slave_translator_av_readdata_pre_3_158q & nios1_lcd_control_slave_translator_altera_merlin_slave_translator_lcd_control_slave_translator_av_readdata_pre_2_159q & nios1_lcd_control_slave_translator_altera_merlin_slave_translator_lcd_control_slave_translator_av_readdata_pre_1_160q & nios1_lcd_control_slave_translator_altera_merlin_slave_translator_lcd_control_slave_translator_av_readdata_pre_0_165q);
	uav_readdatavalid <= nios1_lcd_control_slave_translator_altera_merlin_slave_translator_lcd_control_slave_translator_read_latency_shift_reg_0_168q;
	uav_waitrequest <= s_wire_nios1_lcd_control_slave_translator_altera_merlin_slave_translator_lcd_control_slave_translator_uav_waitrequest_152_dataout;
	PROCESS (clk, reset)
	BEGIN
		IF (reset = '1') THEN
				nios1_lcd_control_slave_translator_altera_merlin_slave_translator_lcd_control_slave_translator_waitrequest_reset_override_153q <= '1';
		ELSIF (clk = '1' AND clk'event) THEN
				nios1_lcd_control_slave_translator_altera_merlin_slave_translator_lcd_control_slave_translator_waitrequest_reset_override_153q <= s_wire_gnd;
		END IF;
		if (now = 0 ns) then
			nios1_lcd_control_slave_translator_altera_merlin_slave_translator_lcd_control_slave_translator_waitrequest_reset_override_153q <= '1' after 1 ps;
		end if;
	END PROCESS;
	wire_nl_w171w(0) <= NOT nios1_lcd_control_slave_translator_altera_merlin_slave_translator_lcd_control_slave_translator_waitrequest_reset_override_153q;
	PROCESS (clk, reset)
	BEGIN
		IF (reset = '1') THEN
				nios1_lcd_control_slave_translator_altera_merlin_slave_translator_lcd_control_slave_translator_av_readdata_pre_0_165q <= '0';
				nios1_lcd_control_slave_translator_altera_merlin_slave_translator_lcd_control_slave_translator_av_readdata_pre_1_160q <= '0';
				nios1_lcd_control_slave_translator_altera_merlin_slave_translator_lcd_control_slave_translator_av_readdata_pre_2_159q <= '0';
				nios1_lcd_control_slave_translator_altera_merlin_slave_translator_lcd_control_slave_translator_av_readdata_pre_3_158q <= '0';
				nios1_lcd_control_slave_translator_altera_merlin_slave_translator_lcd_control_slave_translator_av_readdata_pre_4_157q <= '0';
				nios1_lcd_control_slave_translator_altera_merlin_slave_translator_lcd_control_slave_translator_av_readdata_pre_5_156q <= '0';
				nios1_lcd_control_slave_translator_altera_merlin_slave_translator_lcd_control_slave_translator_av_readdata_pre_6_155q <= '0';
				nios1_lcd_control_slave_translator_altera_merlin_slave_translator_lcd_control_slave_translator_av_readdata_pre_7_154q <= '0';
				nios1_lcd_control_slave_translator_altera_merlin_slave_translator_lcd_control_slave_translator_end_begintransfer_190q <= '0';
				nios1_lcd_control_slave_translator_altera_merlin_slave_translator_lcd_control_slave_translator_read_latency_shift_reg_0_168q <= '0';
				nios1_lcd_control_slave_translator_altera_merlin_slave_translator_lcd_control_slave_translator_wait_latency_counter_0_141q <= '0';
				nios1_lcd_control_slave_translator_altera_merlin_slave_translator_lcd_control_slave_translator_wait_latency_counter_1_140q <= '0';
				nios1_lcd_control_slave_translator_altera_merlin_slave_translator_lcd_control_slave_translator_wait_latency_counter_2_139q <= '0';
				nios1_lcd_control_slave_translator_altera_merlin_slave_translator_lcd_control_slave_translator_wait_latency_counter_3_138q <= '0';
				nios1_lcd_control_slave_translator_altera_merlin_slave_translator_lcd_control_slave_translator_wait_latency_counter_4_137q <= '0';
				nios1_lcd_control_slave_translator_altera_merlin_slave_translator_lcd_control_slave_translator_wait_latency_counter_5_136q <= '0';
		ELSIF (clk = '1' AND clk'event) THEN
				nios1_lcd_control_slave_translator_altera_merlin_slave_translator_lcd_control_slave_translator_av_readdata_pre_0_165q <= av_readdata(0);
				nios1_lcd_control_slave_translator_altera_merlin_slave_translator_lcd_control_slave_translator_av_readdata_pre_1_160q <= av_readdata(1);
				nios1_lcd_control_slave_translator_altera_merlin_slave_translator_lcd_control_slave_translator_av_readdata_pre_2_159q <= av_readdata(2);
				nios1_lcd_control_slave_translator_altera_merlin_slave_translator_lcd_control_slave_translator_av_readdata_pre_3_158q <= av_readdata(3);
				nios1_lcd_control_slave_translator_altera_merlin_slave_translator_lcd_control_slave_translator_av_readdata_pre_4_157q <= av_readdata(4);
				nios1_lcd_control_slave_translator_altera_merlin_slave_translator_lcd_control_slave_translator_av_readdata_pre_5_156q <= av_readdata(5);
				nios1_lcd_control_slave_translator_altera_merlin_slave_translator_lcd_control_slave_translator_av_readdata_pre_6_155q <= av_readdata(6);
				nios1_lcd_control_slave_translator_altera_merlin_slave_translator_lcd_control_slave_translator_av_readdata_pre_7_154q <= av_readdata(7);
				nios1_lcd_control_slave_translator_altera_merlin_slave_translator_lcd_control_slave_translator_end_begintransfer_190q <= wire_nios1_lcd_control_slave_translator_altera_merlin_slave_translator_lcd_control_slave_translator_end_begintransfer_176m_dataout;
				nios1_lcd_control_slave_translator_altera_merlin_slave_translator_lcd_control_slave_translator_read_latency_shift_reg_0_168q <= (uav_read AND (wire_w117w(0) AND wire_nl_w171w(0)));
				nios1_lcd_control_slave_translator_altera_merlin_slave_translator_lcd_control_slave_translator_wait_latency_counter_0_141q <= wire_nios1_lcd_control_slave_translator_altera_merlin_slave_translator_lcd_control_slave_translator_wait_latency_counter_135m_dataout;
				nios1_lcd_control_slave_translator_altera_merlin_slave_translator_lcd_control_slave_translator_wait_latency_counter_1_140q <= wire_nios1_lcd_control_slave_translator_altera_merlin_slave_translator_lcd_control_slave_translator_wait_latency_counter_134m_dataout;
				nios1_lcd_control_slave_translator_altera_merlin_slave_translator_lcd_control_slave_translator_wait_latency_counter_2_139q <= wire_nios1_lcd_control_slave_translator_altera_merlin_slave_translator_lcd_control_slave_translator_wait_latency_counter_133m_dataout;
				nios1_lcd_control_slave_translator_altera_merlin_slave_translator_lcd_control_slave_translator_wait_latency_counter_3_138q <= wire_nios1_lcd_control_slave_translator_altera_merlin_slave_translator_lcd_control_slave_translator_wait_latency_counter_132m_dataout;
				nios1_lcd_control_slave_translator_altera_merlin_slave_translator_lcd_control_slave_translator_wait_latency_counter_4_137q <= wire_nios1_lcd_control_slave_translator_altera_merlin_slave_translator_lcd_control_slave_translator_wait_latency_counter_131m_dataout;
				nios1_lcd_control_slave_translator_altera_merlin_slave_translator_lcd_control_slave_translator_wait_latency_counter_5_136q <= wire_nios1_lcd_control_slave_translator_altera_merlin_slave_translator_lcd_control_slave_translator_wait_latency_counter_130m_dataout;
		END IF;
	END PROCESS;
	wire_nO_w_lg_w_lg_w_lg_w_lg_w179w180w181w183w184w(0) <= wire_nO_w_lg_w_lg_w_lg_w179w180w181w183w(0) AND nios1_lcd_control_slave_translator_altera_merlin_slave_translator_lcd_control_slave_translator_wait_latency_counter_1_140q;
	wire_nO_w_lg_w_lg_w_lg_w179w180w181w183w(0) <= wire_nO_w_lg_w_lg_w179w180w181w(0) AND wire_nO_w182w(0);
	wire_nO_w_lg_w_lg_w179w180w181w(0) <= wire_nO_w_lg_w179w180w(0) AND nios1_lcd_control_slave_translator_altera_merlin_slave_translator_lcd_control_slave_translator_wait_latency_counter_3_138q;
	wire_nO_w_lg_w179w180w(0) <= wire_nO_w179w(0) AND nios1_lcd_control_slave_translator_altera_merlin_slave_translator_lcd_control_slave_translator_wait_latency_counter_4_137q;
	wire_nO_w188w(0) <= nios1_lcd_control_slave_translator_altera_merlin_slave_translator_lcd_control_slave_translator_wait_latency_counter_5_136q AND wire_nO_w187w(0);
	wire_nO_w175w(0) <= NOT nios1_lcd_control_slave_translator_altera_merlin_slave_translator_lcd_control_slave_translator_end_begintransfer_190q;
	wire_nO_w185w(0) <= NOT nios1_lcd_control_slave_translator_altera_merlin_slave_translator_lcd_control_slave_translator_wait_latency_counter_0_141q;
	wire_nO_w182w(0) <= NOT nios1_lcd_control_slave_translator_altera_merlin_slave_translator_lcd_control_slave_translator_wait_latency_counter_2_139q;
	wire_nO_w189w(0) <= NOT nios1_lcd_control_slave_translator_altera_merlin_slave_translator_lcd_control_slave_translator_wait_latency_counter_3_138q;
	wire_nO_w187w(0) <= NOT nios1_lcd_control_slave_translator_altera_merlin_slave_translator_lcd_control_slave_translator_wait_latency_counter_4_137q;
	wire_nO_w179w(0) <= NOT nios1_lcd_control_slave_translator_altera_merlin_slave_translator_lcd_control_slave_translator_wait_latency_counter_5_136q;
	wire_nios1_lcd_control_slave_translator_altera_merlin_slave_translator_lcd_control_slave_translator_av_waitrequest_generated_151m_dataout <= wire_w161w(0) WHEN uav_write = '1'  ELSE wire_w160w(0);
	wire_nios1_lcd_control_slave_translator_altera_merlin_slave_translator_lcd_control_slave_translator_end_begintransfer_175m_dataout <= nios1_lcd_control_slave_translator_altera_merlin_slave_translator_lcd_control_slave_translator_end_begintransfer_190q AND s_wire_nios1_lcd_control_slave_translator_altera_merlin_slave_translator_lcd_control_slave_translator_uav_waitrequest_152_dataout;
	wire_nios1_lcd_control_slave_translator_altera_merlin_slave_translator_lcd_control_slave_translator_end_begintransfer_176m_dataout <= wire_nios1_lcd_control_slave_translator_altera_merlin_slave_translator_lcd_control_slave_translator_end_begintransfer_175m_dataout OR (wire_nl_w171w(0) AND (s_wire_nios1_lcd_control_slave_translator_altera_merlin_slave_translator_lcd_control_slave_translator_uav_waitrequest_152_dataout AND s_wire_nios1_lcd_control_slave_translator_altera_merlin_slave_translator_lcd_control_slave_translator_av_begintransfer_172_dataout));
	wire_nios1_lcd_control_slave_translator_altera_merlin_slave_translator_lcd_control_slave_translator_wait_latency_counter_123m_dataout <= wire_nios1_lcd_control_slave_translator_altera_merlin_slave_translator_lcd_control_slave_translator_add0_122_o(5) AND s_wire_nios1_lcd_control_slave_translator_altera_merlin_slave_translator_lcd_control_slave_translator_av_begintransfer_170_dataout;
	wire_nios1_lcd_control_slave_translator_altera_merlin_slave_translator_lcd_control_slave_translator_wait_latency_counter_124m_dataout <= wire_nios1_lcd_control_slave_translator_altera_merlin_slave_translator_lcd_control_slave_translator_add0_122_o(4) AND s_wire_nios1_lcd_control_slave_translator_altera_merlin_slave_translator_lcd_control_slave_translator_av_begintransfer_170_dataout;
	wire_nios1_lcd_control_slave_translator_altera_merlin_slave_translator_lcd_control_slave_translator_wait_latency_counter_125m_dataout <= wire_nios1_lcd_control_slave_translator_altera_merlin_slave_translator_lcd_control_slave_translator_add0_122_o(3) AND s_wire_nios1_lcd_control_slave_translator_altera_merlin_slave_translator_lcd_control_slave_translator_av_begintransfer_170_dataout;
	wire_nios1_lcd_control_slave_translator_altera_merlin_slave_translator_lcd_control_slave_translator_wait_latency_counter_126m_dataout <= wire_nios1_lcd_control_slave_translator_altera_merlin_slave_translator_lcd_control_slave_translator_add0_122_o(2) AND s_wire_nios1_lcd_control_slave_translator_altera_merlin_slave_translator_lcd_control_slave_translator_av_begintransfer_170_dataout;
	wire_nios1_lcd_control_slave_translator_altera_merlin_slave_translator_lcd_control_slave_translator_wait_latency_counter_127m_dataout <= wire_nios1_lcd_control_slave_translator_altera_merlin_slave_translator_lcd_control_slave_translator_add0_122_o(1) AND s_wire_nios1_lcd_control_slave_translator_altera_merlin_slave_translator_lcd_control_slave_translator_av_begintransfer_170_dataout;
	wire_nios1_lcd_control_slave_translator_altera_merlin_slave_translator_lcd_control_slave_translator_wait_latency_counter_128m_dataout <= wire_nios1_lcd_control_slave_translator_altera_merlin_slave_translator_lcd_control_slave_translator_add0_122_o(0) AND s_wire_nios1_lcd_control_slave_translator_altera_merlin_slave_translator_lcd_control_slave_translator_av_begintransfer_170_dataout;
	wire_nios1_lcd_control_slave_translator_altera_merlin_slave_translator_lcd_control_slave_translator_wait_latency_counter_130m_dataout <= wire_nios1_lcd_control_slave_translator_altera_merlin_slave_translator_lcd_control_slave_translator_wait_latency_counter_123m_dataout AND NOT(s_wire_nios1_lcd_control_slave_translator_altera_merlin_slave_translator_lcd_control_slave_translator_always7_129_dataout);
	wire_nios1_lcd_control_slave_translator_altera_merlin_slave_translator_lcd_control_slave_translator_wait_latency_counter_131m_dataout <= wire_nios1_lcd_control_slave_translator_altera_merlin_slave_translator_lcd_control_slave_translator_wait_latency_counter_124m_dataout AND NOT(s_wire_nios1_lcd_control_slave_translator_altera_merlin_slave_translator_lcd_control_slave_translator_always7_129_dataout);
	wire_nios1_lcd_control_slave_translator_altera_merlin_slave_translator_lcd_control_slave_translator_wait_latency_counter_132m_dataout <= wire_nios1_lcd_control_slave_translator_altera_merlin_slave_translator_lcd_control_slave_translator_wait_latency_counter_125m_dataout AND NOT(s_wire_nios1_lcd_control_slave_translator_altera_merlin_slave_translator_lcd_control_slave_translator_always7_129_dataout);
	wire_nios1_lcd_control_slave_translator_altera_merlin_slave_translator_lcd_control_slave_translator_wait_latency_counter_133m_dataout <= wire_nios1_lcd_control_slave_translator_altera_merlin_slave_translator_lcd_control_slave_translator_wait_latency_counter_126m_dataout AND NOT(s_wire_nios1_lcd_control_slave_translator_altera_merlin_slave_translator_lcd_control_slave_translator_always7_129_dataout);
	wire_nios1_lcd_control_slave_translator_altera_merlin_slave_translator_lcd_control_slave_translator_wait_latency_counter_134m_dataout <= wire_nios1_lcd_control_slave_translator_altera_merlin_slave_translator_lcd_control_slave_translator_wait_latency_counter_127m_dataout AND NOT(s_wire_nios1_lcd_control_slave_translator_altera_merlin_slave_translator_lcd_control_slave_translator_always7_129_dataout);
	wire_nios1_lcd_control_slave_translator_altera_merlin_slave_translator_lcd_control_slave_translator_wait_latency_counter_135m_dataout <= wire_nios1_lcd_control_slave_translator_altera_merlin_slave_translator_lcd_control_slave_translator_wait_latency_counter_128m_dataout AND NOT(s_wire_nios1_lcd_control_slave_translator_altera_merlin_slave_translator_lcd_control_slave_translator_always7_129_dataout);
	wire_nios1_lcd_control_slave_translator_altera_merlin_slave_translator_lcd_control_slave_translator_add0_122_a <= ( nios1_lcd_control_slave_translator_altera_merlin_slave_translator_lcd_control_slave_translator_wait_latency_counter_5_136q & nios1_lcd_control_slave_translator_altera_merlin_slave_translator_lcd_control_slave_translator_wait_latency_counter_4_137q & nios1_lcd_control_slave_translator_altera_merlin_slave_translator_lcd_control_slave_translator_wait_latency_counter_3_138q & nios1_lcd_control_slave_translator_altera_merlin_slave_translator_lcd_control_slave_translator_wait_latency_counter_2_139q & nios1_lcd_control_slave_translator_altera_merlin_slave_translator_lcd_control_slave_translator_wait_latency_counter_1_140q & nios1_lcd_control_slave_translator_altera_merlin_slave_translator_lcd_control_slave_translator_wait_latency_counter_0_141q);
	wire_nios1_lcd_control_slave_translator_altera_merlin_slave_translator_lcd_control_slave_translator_add0_122_b <= ( "0" & "0" & "0" & "0" & "0" & "1");
	nios1_lcd_control_slave_translator_altera_merlin_slave_translator_lcd_control_slave_translator_add0_122 :  oper_add
	  GENERIC MAP (
		sgate_representation => 0,
		width_a => 6,
		width_b => 6,
		width_o => 6
	  )
	  PORT MAP ( 
		a => wire_nios1_lcd_control_slave_translator_altera_merlin_slave_translator_lcd_control_slave_translator_add0_122_a,
		b => wire_nios1_lcd_control_slave_translator_altera_merlin_slave_translator_lcd_control_slave_translator_add0_122_b,
		cin => wire_gnd,
		o => wire_nios1_lcd_control_slave_translator_altera_merlin_slave_translator_lcd_control_slave_translator_add0_122_o
	  );
	wire_nios1_lcd_control_slave_translator_altera_merlin_slave_translator_lcd_control_slave_translator_lessthan0_143_a <= ( "0" & "0" & "1" & "1" & "0" & "1");
	wire_nios1_lcd_control_slave_translator_altera_merlin_slave_translator_lcd_control_slave_translator_lessthan0_143_b <= ( nios1_lcd_control_slave_translator_altera_merlin_slave_translator_lcd_control_slave_translator_wait_latency_counter_5_136q & nios1_lcd_control_slave_translator_altera_merlin_slave_translator_lcd_control_slave_translator_wait_latency_counter_4_137q & nios1_lcd_control_slave_translator_altera_merlin_slave_translator_lcd_control_slave_translator_wait_latency_counter_3_138q & nios1_lcd_control_slave_translator_altera_merlin_slave_translator_lcd_control_slave_translator_wait_latency_counter_2_139q & nios1_lcd_control_slave_translator_altera_merlin_slave_translator_lcd_control_slave_translator_wait_latency_counter_1_140q & nios1_lcd_control_slave_translator_altera_merlin_slave_translator_lcd_control_slave_translator_wait_latency_counter_0_141q);
	nios1_lcd_control_slave_translator_altera_merlin_slave_translator_lcd_control_slave_translator_lessthan0_143 :  oper_less_than
	  GENERIC MAP (
		sgate_representation => 0,
		width_a => 6,
		width_b => 6
	  )
	  PORT MAP ( 
		a => wire_nios1_lcd_control_slave_translator_altera_merlin_slave_translator_lcd_control_slave_translator_lessthan0_143_a,
		b => wire_nios1_lcd_control_slave_translator_altera_merlin_slave_translator_lcd_control_slave_translator_lessthan0_143_b,
		cin => wire_vcc,
		o => wire_nios1_lcd_control_slave_translator_altera_merlin_slave_translator_lcd_control_slave_translator_lessthan0_143_o
	  );
	wire_nios1_lcd_control_slave_translator_altera_merlin_slave_translator_lcd_control_slave_translator_lessthan1_145_a <= ( nios1_lcd_control_slave_translator_altera_merlin_slave_translator_lcd_control_slave_translator_wait_latency_counter_5_136q & nios1_lcd_control_slave_translator_altera_merlin_slave_translator_lcd_control_slave_translator_wait_latency_counter_4_137q & nios1_lcd_control_slave_translator_altera_merlin_slave_translator_lcd_control_slave_translator_wait_latency_counter_3_138q & nios1_lcd_control_slave_translator_altera_merlin_slave_translator_lcd_control_slave_translator_wait_latency_counter_2_139q & nios1_lcd_control_slave_translator_altera_merlin_slave_translator_lcd_control_slave_translator_wait_latency_counter_1_140q & nios1_lcd_control_slave_translator_altera_merlin_slave_translator_lcd_control_slave_translator_wait_latency_counter_0_141q);
	wire_nios1_lcd_control_slave_translator_altera_merlin_slave_translator_lcd_control_slave_translator_lessthan1_145_b <= ( "0" & "1" & "1" & "0" & "1" & "0");
	nios1_lcd_control_slave_translator_altera_merlin_slave_translator_lcd_control_slave_translator_lessthan1_145 :  oper_less_than
	  GENERIC MAP (
		sgate_representation => 0,
		width_a => 6,
		width_b => 6
	  )
	  PORT MAP ( 
		a => wire_nios1_lcd_control_slave_translator_altera_merlin_slave_translator_lcd_control_slave_translator_lessthan1_145_a,
		b => wire_nios1_lcd_control_slave_translator_altera_merlin_slave_translator_lcd_control_slave_translator_lessthan1_145_b,
		cin => wire_vcc,
		o => wire_nios1_lcd_control_slave_translator_altera_merlin_slave_translator_lcd_control_slave_translator_lessthan1_145_o
	  );

 END RTL; --Nios1_lcd_control_slave_translator
--synopsys translate_on
--VALID FILE
