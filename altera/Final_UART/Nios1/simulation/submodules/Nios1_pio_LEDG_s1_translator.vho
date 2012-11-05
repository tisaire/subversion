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

--synthesis_resources = lut 36 mux21 5 oper_add 1 oper_less_than 2 
 LIBRARY ieee;
 USE ieee.std_logic_1164.all;

 ENTITY  Nios1_pio_LEDG_s1_translator IS 
	 PORT 
	 ( 
		 av_address	:	OUT  STD_LOGIC_VECTOR (2 DOWNTO 0);
		 av_chipselect	:	OUT  STD_LOGIC;
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
 END Nios1_pio_LEDG_s1_translator;

 ARCHITECTURE RTL OF Nios1_pio_LEDG_s1_translator IS

	 ATTRIBUTE synthesis_clearbox : natural;
	 ATTRIBUTE synthesis_clearbox OF RTL : ARCHITECTURE IS 1;
	 SIGNAL	nios1_pio_ledg_s1_translator_altera_merlin_slave_translator_pio_ledg_s1_translator_waitrequest_reset_override_189q	:	STD_LOGIC := '0';
	 SIGNAL  wire_nl_w209w	:	STD_LOGIC_VECTOR (0 DOWNTO 0);
	 SIGNAL	nios1_pio_ledg_s1_translator_altera_merlin_slave_translator_pio_ledg_s1_translator_av_readdata_pre_0_225q	:	STD_LOGIC := '0';
	 SIGNAL	nios1_pio_ledg_s1_translator_altera_merlin_slave_translator_pio_ledg_s1_translator_av_readdata_pre_10_211q	:	STD_LOGIC := '0';
	 SIGNAL	nios1_pio_ledg_s1_translator_altera_merlin_slave_translator_pio_ledg_s1_translator_av_readdata_pre_11_210q	:	STD_LOGIC := '0';
	 SIGNAL	nios1_pio_ledg_s1_translator_altera_merlin_slave_translator_pio_ledg_s1_translator_av_readdata_pre_12_209q	:	STD_LOGIC := '0';
	 SIGNAL	nios1_pio_ledg_s1_translator_altera_merlin_slave_translator_pio_ledg_s1_translator_av_readdata_pre_13_208q	:	STD_LOGIC := '0';
	 SIGNAL	nios1_pio_ledg_s1_translator_altera_merlin_slave_translator_pio_ledg_s1_translator_av_readdata_pre_14_207q	:	STD_LOGIC := '0';
	 SIGNAL	nios1_pio_ledg_s1_translator_altera_merlin_slave_translator_pio_ledg_s1_translator_av_readdata_pre_15_206q	:	STD_LOGIC := '0';
	 SIGNAL	nios1_pio_ledg_s1_translator_altera_merlin_slave_translator_pio_ledg_s1_translator_av_readdata_pre_16_205q	:	STD_LOGIC := '0';
	 SIGNAL	nios1_pio_ledg_s1_translator_altera_merlin_slave_translator_pio_ledg_s1_translator_av_readdata_pre_17_204q	:	STD_LOGIC := '0';
	 SIGNAL	nios1_pio_ledg_s1_translator_altera_merlin_slave_translator_pio_ledg_s1_translator_av_readdata_pre_18_203q	:	STD_LOGIC := '0';
	 SIGNAL	nios1_pio_ledg_s1_translator_altera_merlin_slave_translator_pio_ledg_s1_translator_av_readdata_pre_19_202q	:	STD_LOGIC := '0';
	 SIGNAL	nios1_pio_ledg_s1_translator_altera_merlin_slave_translator_pio_ledg_s1_translator_av_readdata_pre_1_220q	:	STD_LOGIC := '0';
	 SIGNAL	nios1_pio_ledg_s1_translator_altera_merlin_slave_translator_pio_ledg_s1_translator_av_readdata_pre_20_201q	:	STD_LOGIC := '0';
	 SIGNAL	nios1_pio_ledg_s1_translator_altera_merlin_slave_translator_pio_ledg_s1_translator_av_readdata_pre_21_200q	:	STD_LOGIC := '0';
	 SIGNAL	nios1_pio_ledg_s1_translator_altera_merlin_slave_translator_pio_ledg_s1_translator_av_readdata_pre_22_199q	:	STD_LOGIC := '0';
	 SIGNAL	nios1_pio_ledg_s1_translator_altera_merlin_slave_translator_pio_ledg_s1_translator_av_readdata_pre_23_198q	:	STD_LOGIC := '0';
	 SIGNAL	nios1_pio_ledg_s1_translator_altera_merlin_slave_translator_pio_ledg_s1_translator_av_readdata_pre_24_197q	:	STD_LOGIC := '0';
	 SIGNAL	nios1_pio_ledg_s1_translator_altera_merlin_slave_translator_pio_ledg_s1_translator_av_readdata_pre_25_196q	:	STD_LOGIC := '0';
	 SIGNAL	nios1_pio_ledg_s1_translator_altera_merlin_slave_translator_pio_ledg_s1_translator_av_readdata_pre_26_195q	:	STD_LOGIC := '0';
	 SIGNAL	nios1_pio_ledg_s1_translator_altera_merlin_slave_translator_pio_ledg_s1_translator_av_readdata_pre_27_194q	:	STD_LOGIC := '0';
	 SIGNAL	nios1_pio_ledg_s1_translator_altera_merlin_slave_translator_pio_ledg_s1_translator_av_readdata_pre_28_193q	:	STD_LOGIC := '0';
	 SIGNAL	nios1_pio_ledg_s1_translator_altera_merlin_slave_translator_pio_ledg_s1_translator_av_readdata_pre_29_192q	:	STD_LOGIC := '0';
	 SIGNAL	nios1_pio_ledg_s1_translator_altera_merlin_slave_translator_pio_ledg_s1_translator_av_readdata_pre_2_219q	:	STD_LOGIC := '0';
	 SIGNAL	nios1_pio_ledg_s1_translator_altera_merlin_slave_translator_pio_ledg_s1_translator_av_readdata_pre_30_191q	:	STD_LOGIC := '0';
	 SIGNAL	nios1_pio_ledg_s1_translator_altera_merlin_slave_translator_pio_ledg_s1_translator_av_readdata_pre_31_190q	:	STD_LOGIC := '0';
	 SIGNAL	nios1_pio_ledg_s1_translator_altera_merlin_slave_translator_pio_ledg_s1_translator_av_readdata_pre_3_218q	:	STD_LOGIC := '0';
	 SIGNAL	nios1_pio_ledg_s1_translator_altera_merlin_slave_translator_pio_ledg_s1_translator_av_readdata_pre_4_217q	:	STD_LOGIC := '0';
	 SIGNAL	nios1_pio_ledg_s1_translator_altera_merlin_slave_translator_pio_ledg_s1_translator_av_readdata_pre_5_216q	:	STD_LOGIC := '0';
	 SIGNAL	nios1_pio_ledg_s1_translator_altera_merlin_slave_translator_pio_ledg_s1_translator_av_readdata_pre_6_215q	:	STD_LOGIC := '0';
	 SIGNAL	nios1_pio_ledg_s1_translator_altera_merlin_slave_translator_pio_ledg_s1_translator_av_readdata_pre_7_214q	:	STD_LOGIC := '0';
	 SIGNAL	nios1_pio_ledg_s1_translator_altera_merlin_slave_translator_pio_ledg_s1_translator_av_readdata_pre_8_213q	:	STD_LOGIC := '0';
	 SIGNAL	nios1_pio_ledg_s1_translator_altera_merlin_slave_translator_pio_ledg_s1_translator_av_readdata_pre_9_212q	:	STD_LOGIC := '0';
	 SIGNAL	nios1_pio_ledg_s1_translator_altera_merlin_slave_translator_pio_ledg_s1_translator_read_latency_shift_reg_0_228q	:	STD_LOGIC := '0';
	 SIGNAL	nios1_pio_ledg_s1_translator_altera_merlin_slave_translator_pio_ledg_s1_translator_wait_latency_counter_0_177q	:	STD_LOGIC := '0';
	 SIGNAL	nios1_pio_ledg_s1_translator_altera_merlin_slave_translator_pio_ledg_s1_translator_wait_latency_counter_1_176q	:	STD_LOGIC := '0';
	 SIGNAL  wire_nO_w173w	:	STD_LOGIC_VECTOR (0 DOWNTO 0);
	 SIGNAL  wire_nO_w170w	:	STD_LOGIC_VECTOR (0 DOWNTO 0);
	 SIGNAL	wire_nios1_pio_ledg_s1_translator_altera_merlin_slave_translator_pio_ledg_s1_translator_av_waitrequest_generated_187m_dataout	:	STD_LOGIC;
	 SIGNAL	wire_nios1_pio_ledg_s1_translator_altera_merlin_slave_translator_pio_ledg_s1_translator_wait_latency_counter_171m_dataout	:	STD_LOGIC;
	 SIGNAL	wire_nios1_pio_ledg_s1_translator_altera_merlin_slave_translator_pio_ledg_s1_translator_wait_latency_counter_172m_dataout	:	STD_LOGIC;
	 SIGNAL	wire_nios1_pio_ledg_s1_translator_altera_merlin_slave_translator_pio_ledg_s1_translator_wait_latency_counter_174m_dataout	:	STD_LOGIC;
	 SIGNAL	wire_nios1_pio_ledg_s1_translator_altera_merlin_slave_translator_pio_ledg_s1_translator_wait_latency_counter_175m_dataout	:	STD_LOGIC;
	 SIGNAL  wire_nios1_pio_ledg_s1_translator_altera_merlin_slave_translator_pio_ledg_s1_translator_add0_170_a	:	STD_LOGIC_VECTOR (1 DOWNTO 0);
	 SIGNAL  wire_nios1_pio_ledg_s1_translator_altera_merlin_slave_translator_pio_ledg_s1_translator_add0_170_b	:	STD_LOGIC_VECTOR (1 DOWNTO 0);
	 SIGNAL  wire_gnd	:	STD_LOGIC;
	 SIGNAL  wire_nios1_pio_ledg_s1_translator_altera_merlin_slave_translator_pio_ledg_s1_translator_add0_170_o	:	STD_LOGIC_VECTOR (1 DOWNTO 0);
	 SIGNAL  wire_nios1_pio_ledg_s1_translator_altera_merlin_slave_translator_pio_ledg_s1_translator_lessthan0_179_a	:	STD_LOGIC_VECTOR (1 DOWNTO 0);
	 SIGNAL  wire_nios1_pio_ledg_s1_translator_altera_merlin_slave_translator_pio_ledg_s1_translator_lessthan0_179_b	:	STD_LOGIC_VECTOR (1 DOWNTO 0);
	 SIGNAL  wire_vcc	:	STD_LOGIC;
	 SIGNAL  wire_nios1_pio_ledg_s1_translator_altera_merlin_slave_translator_pio_ledg_s1_translator_lessthan0_179_o	:	STD_LOGIC;
	 SIGNAL  wire_nios1_pio_ledg_s1_translator_altera_merlin_slave_translator_pio_ledg_s1_translator_lessthan1_181_a	:	STD_LOGIC_VECTOR (1 DOWNTO 0);
	 SIGNAL  wire_nios1_pio_ledg_s1_translator_altera_merlin_slave_translator_pio_ledg_s1_translator_lessthan1_181_b	:	STD_LOGIC_VECTOR (1 DOWNTO 0);
	 SIGNAL  wire_nios1_pio_ledg_s1_translator_altera_merlin_slave_translator_pio_ledg_s1_translator_lessthan1_181_o	:	STD_LOGIC;
	 SIGNAL  wire_w_lg_reset153w	:	STD_LOGIC_VECTOR (0 DOWNTO 0);
	 SIGNAL  wire_w151w	:	STD_LOGIC_VECTOR (0 DOWNTO 0);
	 SIGNAL  s_wire_gnd :	STD_LOGIC;
	 SIGNAL  s_wire_nios1_pio_ledg_s1_translator_altera_merlin_slave_translator_pio_ledg_s1_translator_always7_173_dataout :	STD_LOGIC;
	 SIGNAL  s_wire_nios1_pio_ledg_s1_translator_altera_merlin_slave_translator_pio_ledg_s1_translator_av_begintransfer_230_dataout :	STD_LOGIC;
	 SIGNAL  s_wire_nios1_pio_ledg_s1_translator_altera_merlin_slave_translator_pio_ledg_s1_translator_uav_waitrequest_188_dataout :	STD_LOGIC;
	 SIGNAL  s_wire_vcc :	STD_LOGIC;
 BEGIN

	wire_gnd <= '0';
	wire_vcc <= '1';
	wire_w_lg_reset153w(0) <= NOT reset;
	wire_w151w(0) <= NOT s_wire_nios1_pio_ledg_s1_translator_altera_merlin_slave_translator_pio_ledg_s1_translator_uav_waitrequest_188_dataout;
	av_address <= ( uav_address(4 DOWNTO 2));
	av_chipselect <= s_wire_nios1_pio_ledg_s1_translator_altera_merlin_slave_translator_pio_ledg_s1_translator_av_begintransfer_230_dataout;
	av_write <= ((uav_write AND wire_nios1_pio_ledg_s1_translator_altera_merlin_slave_translator_pio_ledg_s1_translator_lessthan0_179_o) AND wire_nios1_pio_ledg_s1_translator_altera_merlin_slave_translator_pio_ledg_s1_translator_lessthan1_181_o);
	av_writedata <= ( uav_writedata(31 DOWNTO 0));
	s_wire_gnd <= '0';
	s_wire_nios1_pio_ledg_s1_translator_altera_merlin_slave_translator_pio_ledg_s1_translator_always7_173_dataout <= (wire_w151w(0) OR nios1_pio_ledg_s1_translator_altera_merlin_slave_translator_pio_ledg_s1_translator_waitrequest_reset_override_189q);
	s_wire_nios1_pio_ledg_s1_translator_altera_merlin_slave_translator_pio_ledg_s1_translator_av_begintransfer_230_dataout <= (uav_read OR uav_write);
	s_wire_nios1_pio_ledg_s1_translator_altera_merlin_slave_translator_pio_ledg_s1_translator_uav_waitrequest_188_dataout <= (wire_nios1_pio_ledg_s1_translator_altera_merlin_slave_translator_pio_ledg_s1_translator_av_waitrequest_generated_187m_dataout OR nios1_pio_ledg_s1_translator_altera_merlin_slave_translator_pio_ledg_s1_translator_waitrequest_reset_override_189q);
	s_wire_vcc <= '1';
	uav_readdata <= ( nios1_pio_ledg_s1_translator_altera_merlin_slave_translator_pio_ledg_s1_translator_av_readdata_pre_31_190q & nios1_pio_ledg_s1_translator_altera_merlin_slave_translator_pio_ledg_s1_translator_av_readdata_pre_30_191q & nios1_pio_ledg_s1_translator_altera_merlin_slave_translator_pio_ledg_s1_translator_av_readdata_pre_29_192q & nios1_pio_ledg_s1_translator_altera_merlin_slave_translator_pio_ledg_s1_translator_av_readdata_pre_28_193q & nios1_pio_ledg_s1_translator_altera_merlin_slave_translator_pio_ledg_s1_translator_av_readdata_pre_27_194q & nios1_pio_ledg_s1_translator_altera_merlin_slave_translator_pio_ledg_s1_translator_av_readdata_pre_26_195q & nios1_pio_ledg_s1_translator_altera_merlin_slave_translator_pio_ledg_s1_translator_av_readdata_pre_25_196q & nios1_pio_ledg_s1_translator_altera_merlin_slave_translator_pio_ledg_s1_translator_av_readdata_pre_24_197q & nios1_pio_ledg_s1_translator_altera_merlin_slave_translator_pio_ledg_s1_translator_av_readdata_pre_23_198q & nios1_pio_ledg_s1_translator_altera_merlin_slave_translator_pio_ledg_s1_translator_av_readdata_pre_22_199q & nios1_pio_ledg_s1_translator_altera_merlin_slave_translator_pio_ledg_s1_translator_av_readdata_pre_21_200q & nios1_pio_ledg_s1_translator_altera_merlin_slave_translator_pio_ledg_s1_translator_av_readdata_pre_20_201q & nios1_pio_ledg_s1_translator_altera_merlin_slave_translator_pio_ledg_s1_translator_av_readdata_pre_19_202q & nios1_pio_ledg_s1_translator_altera_merlin_slave_translator_pio_ledg_s1_translator_av_readdata_pre_18_203q & nios1_pio_ledg_s1_translator_altera_merlin_slave_translator_pio_ledg_s1_translator_av_readdata_pre_17_204q & nios1_pio_ledg_s1_translator_altera_merlin_slave_translator_pio_ledg_s1_translator_av_readdata_pre_16_205q & nios1_pio_ledg_s1_translator_altera_merlin_slave_translator_pio_ledg_s1_translator_av_readdata_pre_15_206q & nios1_pio_ledg_s1_translator_altera_merlin_slave_translator_pio_ledg_s1_translator_av_readdata_pre_14_207q & nios1_pio_ledg_s1_translator_altera_merlin_slave_translator_pio_ledg_s1_translator_av_readdata_pre_13_208q
 & nios1_pio_ledg_s1_translator_altera_merlin_slave_translator_pio_ledg_s1_translator_av_readdata_pre_12_209q & nios1_pio_ledg_s1_translator_altera_merlin_slave_translator_pio_ledg_s1_translator_av_readdata_pre_11_210q & nios1_pio_ledg_s1_translator_altera_merlin_slave_translator_pio_ledg_s1_translator_av_readdata_pre_10_211q & nios1_pio_ledg_s1_translator_altera_merlin_slave_translator_pio_ledg_s1_translator_av_readdata_pre_9_212q & nios1_pio_ledg_s1_translator_altera_merlin_slave_translator_pio_ledg_s1_translator_av_readdata_pre_8_213q & nios1_pio_ledg_s1_translator_altera_merlin_slave_translator_pio_ledg_s1_translator_av_readdata_pre_7_214q & nios1_pio_ledg_s1_translator_altera_merlin_slave_translator_pio_ledg_s1_translator_av_readdata_pre_6_215q & nios1_pio_ledg_s1_translator_altera_merlin_slave_translator_pio_ledg_s1_translator_av_readdata_pre_5_216q & nios1_pio_ledg_s1_translator_altera_merlin_slave_translator_pio_ledg_s1_translator_av_readdata_pre_4_217q & nios1_pio_ledg_s1_translator_altera_merlin_slave_translator_pio_ledg_s1_translator_av_readdata_pre_3_218q & nios1_pio_ledg_s1_translator_altera_merlin_slave_translator_pio_ledg_s1_translator_av_readdata_pre_2_219q & nios1_pio_ledg_s1_translator_altera_merlin_slave_translator_pio_ledg_s1_translator_av_readdata_pre_1_220q & nios1_pio_ledg_s1_translator_altera_merlin_slave_translator_pio_ledg_s1_translator_av_readdata_pre_0_225q);
	uav_readdatavalid <= nios1_pio_ledg_s1_translator_altera_merlin_slave_translator_pio_ledg_s1_translator_read_latency_shift_reg_0_228q;
	uav_waitrequest <= s_wire_nios1_pio_ledg_s1_translator_altera_merlin_slave_translator_pio_ledg_s1_translator_uav_waitrequest_188_dataout;
	PROCESS (clk, reset)
	BEGIN
		IF (reset = '1') THEN
				nios1_pio_ledg_s1_translator_altera_merlin_slave_translator_pio_ledg_s1_translator_waitrequest_reset_override_189q <= '1';
		ELSIF (clk = '1' AND clk'event) THEN
				nios1_pio_ledg_s1_translator_altera_merlin_slave_translator_pio_ledg_s1_translator_waitrequest_reset_override_189q <= s_wire_gnd;
		END IF;
		if (now = 0 ns) then
			nios1_pio_ledg_s1_translator_altera_merlin_slave_translator_pio_ledg_s1_translator_waitrequest_reset_override_189q <= '1' after 1 ps;
		end if;
	END PROCESS;
	wire_nl_w209w(0) <= NOT nios1_pio_ledg_s1_translator_altera_merlin_slave_translator_pio_ledg_s1_translator_waitrequest_reset_override_189q;
	PROCESS (clk, reset)
	BEGIN
		IF (reset = '1') THEN
				nios1_pio_ledg_s1_translator_altera_merlin_slave_translator_pio_ledg_s1_translator_av_readdata_pre_0_225q <= '0';
				nios1_pio_ledg_s1_translator_altera_merlin_slave_translator_pio_ledg_s1_translator_av_readdata_pre_10_211q <= '0';
				nios1_pio_ledg_s1_translator_altera_merlin_slave_translator_pio_ledg_s1_translator_av_readdata_pre_11_210q <= '0';
				nios1_pio_ledg_s1_translator_altera_merlin_slave_translator_pio_ledg_s1_translator_av_readdata_pre_12_209q <= '0';
				nios1_pio_ledg_s1_translator_altera_merlin_slave_translator_pio_ledg_s1_translator_av_readdata_pre_13_208q <= '0';
				nios1_pio_ledg_s1_translator_altera_merlin_slave_translator_pio_ledg_s1_translator_av_readdata_pre_14_207q <= '0';
				nios1_pio_ledg_s1_translator_altera_merlin_slave_translator_pio_ledg_s1_translator_av_readdata_pre_15_206q <= '0';
				nios1_pio_ledg_s1_translator_altera_merlin_slave_translator_pio_ledg_s1_translator_av_readdata_pre_16_205q <= '0';
				nios1_pio_ledg_s1_translator_altera_merlin_slave_translator_pio_ledg_s1_translator_av_readdata_pre_17_204q <= '0';
				nios1_pio_ledg_s1_translator_altera_merlin_slave_translator_pio_ledg_s1_translator_av_readdata_pre_18_203q <= '0';
				nios1_pio_ledg_s1_translator_altera_merlin_slave_translator_pio_ledg_s1_translator_av_readdata_pre_19_202q <= '0';
				nios1_pio_ledg_s1_translator_altera_merlin_slave_translator_pio_ledg_s1_translator_av_readdata_pre_1_220q <= '0';
				nios1_pio_ledg_s1_translator_altera_merlin_slave_translator_pio_ledg_s1_translator_av_readdata_pre_20_201q <= '0';
				nios1_pio_ledg_s1_translator_altera_merlin_slave_translator_pio_ledg_s1_translator_av_readdata_pre_21_200q <= '0';
				nios1_pio_ledg_s1_translator_altera_merlin_slave_translator_pio_ledg_s1_translator_av_readdata_pre_22_199q <= '0';
				nios1_pio_ledg_s1_translator_altera_merlin_slave_translator_pio_ledg_s1_translator_av_readdata_pre_23_198q <= '0';
				nios1_pio_ledg_s1_translator_altera_merlin_slave_translator_pio_ledg_s1_translator_av_readdata_pre_24_197q <= '0';
				nios1_pio_ledg_s1_translator_altera_merlin_slave_translator_pio_ledg_s1_translator_av_readdata_pre_25_196q <= '0';
				nios1_pio_ledg_s1_translator_altera_merlin_slave_translator_pio_ledg_s1_translator_av_readdata_pre_26_195q <= '0';
				nios1_pio_ledg_s1_translator_altera_merlin_slave_translator_pio_ledg_s1_translator_av_readdata_pre_27_194q <= '0';
				nios1_pio_ledg_s1_translator_altera_merlin_slave_translator_pio_ledg_s1_translator_av_readdata_pre_28_193q <= '0';
				nios1_pio_ledg_s1_translator_altera_merlin_slave_translator_pio_ledg_s1_translator_av_readdata_pre_29_192q <= '0';
				nios1_pio_ledg_s1_translator_altera_merlin_slave_translator_pio_ledg_s1_translator_av_readdata_pre_2_219q <= '0';
				nios1_pio_ledg_s1_translator_altera_merlin_slave_translator_pio_ledg_s1_translator_av_readdata_pre_30_191q <= '0';
				nios1_pio_ledg_s1_translator_altera_merlin_slave_translator_pio_ledg_s1_translator_av_readdata_pre_31_190q <= '0';
				nios1_pio_ledg_s1_translator_altera_merlin_slave_translator_pio_ledg_s1_translator_av_readdata_pre_3_218q <= '0';
				nios1_pio_ledg_s1_translator_altera_merlin_slave_translator_pio_ledg_s1_translator_av_readdata_pre_4_217q <= '0';
				nios1_pio_ledg_s1_translator_altera_merlin_slave_translator_pio_ledg_s1_translator_av_readdata_pre_5_216q <= '0';
				nios1_pio_ledg_s1_translator_altera_merlin_slave_translator_pio_ledg_s1_translator_av_readdata_pre_6_215q <= '0';
				nios1_pio_ledg_s1_translator_altera_merlin_slave_translator_pio_ledg_s1_translator_av_readdata_pre_7_214q <= '0';
				nios1_pio_ledg_s1_translator_altera_merlin_slave_translator_pio_ledg_s1_translator_av_readdata_pre_8_213q <= '0';
				nios1_pio_ledg_s1_translator_altera_merlin_slave_translator_pio_ledg_s1_translator_av_readdata_pre_9_212q <= '0';
				nios1_pio_ledg_s1_translator_altera_merlin_slave_translator_pio_ledg_s1_translator_read_latency_shift_reg_0_228q <= '0';
				nios1_pio_ledg_s1_translator_altera_merlin_slave_translator_pio_ledg_s1_translator_wait_latency_counter_0_177q <= '0';
				nios1_pio_ledg_s1_translator_altera_merlin_slave_translator_pio_ledg_s1_translator_wait_latency_counter_1_176q <= '0';
		ELSIF (clk = '1' AND clk'event) THEN
				nios1_pio_ledg_s1_translator_altera_merlin_slave_translator_pio_ledg_s1_translator_av_readdata_pre_0_225q <= av_readdata(0);
				nios1_pio_ledg_s1_translator_altera_merlin_slave_translator_pio_ledg_s1_translator_av_readdata_pre_10_211q <= av_readdata(10);
				nios1_pio_ledg_s1_translator_altera_merlin_slave_translator_pio_ledg_s1_translator_av_readdata_pre_11_210q <= av_readdata(11);
				nios1_pio_ledg_s1_translator_altera_merlin_slave_translator_pio_ledg_s1_translator_av_readdata_pre_12_209q <= av_readdata(12);
				nios1_pio_ledg_s1_translator_altera_merlin_slave_translator_pio_ledg_s1_translator_av_readdata_pre_13_208q <= av_readdata(13);
				nios1_pio_ledg_s1_translator_altera_merlin_slave_translator_pio_ledg_s1_translator_av_readdata_pre_14_207q <= av_readdata(14);
				nios1_pio_ledg_s1_translator_altera_merlin_slave_translator_pio_ledg_s1_translator_av_readdata_pre_15_206q <= av_readdata(15);
				nios1_pio_ledg_s1_translator_altera_merlin_slave_translator_pio_ledg_s1_translator_av_readdata_pre_16_205q <= av_readdata(16);
				nios1_pio_ledg_s1_translator_altera_merlin_slave_translator_pio_ledg_s1_translator_av_readdata_pre_17_204q <= av_readdata(17);
				nios1_pio_ledg_s1_translator_altera_merlin_slave_translator_pio_ledg_s1_translator_av_readdata_pre_18_203q <= av_readdata(18);
				nios1_pio_ledg_s1_translator_altera_merlin_slave_translator_pio_ledg_s1_translator_av_readdata_pre_19_202q <= av_readdata(19);
				nios1_pio_ledg_s1_translator_altera_merlin_slave_translator_pio_ledg_s1_translator_av_readdata_pre_1_220q <= av_readdata(1);
				nios1_pio_ledg_s1_translator_altera_merlin_slave_translator_pio_ledg_s1_translator_av_readdata_pre_20_201q <= av_readdata(20);
				nios1_pio_ledg_s1_translator_altera_merlin_slave_translator_pio_ledg_s1_translator_av_readdata_pre_21_200q <= av_readdata(21);
				nios1_pio_ledg_s1_translator_altera_merlin_slave_translator_pio_ledg_s1_translator_av_readdata_pre_22_199q <= av_readdata(22);
				nios1_pio_ledg_s1_translator_altera_merlin_slave_translator_pio_ledg_s1_translator_av_readdata_pre_23_198q <= av_readdata(23);
				nios1_pio_ledg_s1_translator_altera_merlin_slave_translator_pio_ledg_s1_translator_av_readdata_pre_24_197q <= av_readdata(24);
				nios1_pio_ledg_s1_translator_altera_merlin_slave_translator_pio_ledg_s1_translator_av_readdata_pre_25_196q <= av_readdata(25);
				nios1_pio_ledg_s1_translator_altera_merlin_slave_translator_pio_ledg_s1_translator_av_readdata_pre_26_195q <= av_readdata(26);
				nios1_pio_ledg_s1_translator_altera_merlin_slave_translator_pio_ledg_s1_translator_av_readdata_pre_27_194q <= av_readdata(27);
				nios1_pio_ledg_s1_translator_altera_merlin_slave_translator_pio_ledg_s1_translator_av_readdata_pre_28_193q <= av_readdata(28);
				nios1_pio_ledg_s1_translator_altera_merlin_slave_translator_pio_ledg_s1_translator_av_readdata_pre_29_192q <= av_readdata(29);
				nios1_pio_ledg_s1_translator_altera_merlin_slave_translator_pio_ledg_s1_translator_av_readdata_pre_2_219q <= av_readdata(2);
				nios1_pio_ledg_s1_translator_altera_merlin_slave_translator_pio_ledg_s1_translator_av_readdata_pre_30_191q <= av_readdata(30);
				nios1_pio_ledg_s1_translator_altera_merlin_slave_translator_pio_ledg_s1_translator_av_readdata_pre_31_190q <= av_readdata(31);
				nios1_pio_ledg_s1_translator_altera_merlin_slave_translator_pio_ledg_s1_translator_av_readdata_pre_3_218q <= av_readdata(3);
				nios1_pio_ledg_s1_translator_altera_merlin_slave_translator_pio_ledg_s1_translator_av_readdata_pre_4_217q <= av_readdata(4);
				nios1_pio_ledg_s1_translator_altera_merlin_slave_translator_pio_ledg_s1_translator_av_readdata_pre_5_216q <= av_readdata(5);
				nios1_pio_ledg_s1_translator_altera_merlin_slave_translator_pio_ledg_s1_translator_av_readdata_pre_6_215q <= av_readdata(6);
				nios1_pio_ledg_s1_translator_altera_merlin_slave_translator_pio_ledg_s1_translator_av_readdata_pre_7_214q <= av_readdata(7);
				nios1_pio_ledg_s1_translator_altera_merlin_slave_translator_pio_ledg_s1_translator_av_readdata_pre_8_213q <= av_readdata(8);
				nios1_pio_ledg_s1_translator_altera_merlin_slave_translator_pio_ledg_s1_translator_av_readdata_pre_9_212q <= av_readdata(9);
				nios1_pio_ledg_s1_translator_altera_merlin_slave_translator_pio_ledg_s1_translator_read_latency_shift_reg_0_228q <= (uav_read AND (wire_w151w(0) AND wire_nl_w209w(0)));
				nios1_pio_ledg_s1_translator_altera_merlin_slave_translator_pio_ledg_s1_translator_wait_latency_counter_0_177q <= wire_nios1_pio_ledg_s1_translator_altera_merlin_slave_translator_pio_ledg_s1_translator_wait_latency_counter_175m_dataout;
				nios1_pio_ledg_s1_translator_altera_merlin_slave_translator_pio_ledg_s1_translator_wait_latency_counter_1_176q <= wire_nios1_pio_ledg_s1_translator_altera_merlin_slave_translator_pio_ledg_s1_translator_wait_latency_counter_174m_dataout;
		END IF;
	END PROCESS;
	wire_nO_w173w(0) <= NOT nios1_pio_ledg_s1_translator_altera_merlin_slave_translator_pio_ledg_s1_translator_wait_latency_counter_0_177q;
	wire_nO_w170w(0) <= NOT nios1_pio_ledg_s1_translator_altera_merlin_slave_translator_pio_ledg_s1_translator_wait_latency_counter_1_176q;
	wire_nios1_pio_ledg_s1_translator_altera_merlin_slave_translator_pio_ledg_s1_translator_av_waitrequest_generated_187m_dataout <= (NOT (wire_nO_w170w(0) AND wire_nO_w173w(0))) WHEN uav_write = '1'  ELSE (NOT (wire_nO_w170w(0) AND nios1_pio_ledg_s1_translator_altera_merlin_slave_translator_pio_ledg_s1_translator_wait_latency_counter_0_177q));
	wire_nios1_pio_ledg_s1_translator_altera_merlin_slave_translator_pio_ledg_s1_translator_wait_latency_counter_171m_dataout <= wire_nios1_pio_ledg_s1_translator_altera_merlin_slave_translator_pio_ledg_s1_translator_add0_170_o(1) AND s_wire_nios1_pio_ledg_s1_translator_altera_merlin_slave_translator_pio_ledg_s1_translator_av_begintransfer_230_dataout;
	wire_nios1_pio_ledg_s1_translator_altera_merlin_slave_translator_pio_ledg_s1_translator_wait_latency_counter_172m_dataout <= wire_nios1_pio_ledg_s1_translator_altera_merlin_slave_translator_pio_ledg_s1_translator_add0_170_o(0) AND s_wire_nios1_pio_ledg_s1_translator_altera_merlin_slave_translator_pio_ledg_s1_translator_av_begintransfer_230_dataout;
	wire_nios1_pio_ledg_s1_translator_altera_merlin_slave_translator_pio_ledg_s1_translator_wait_latency_counter_174m_dataout <= wire_nios1_pio_ledg_s1_translator_altera_merlin_slave_translator_pio_ledg_s1_translator_wait_latency_counter_171m_dataout AND NOT(s_wire_nios1_pio_ledg_s1_translator_altera_merlin_slave_translator_pio_ledg_s1_translator_always7_173_dataout);
	wire_nios1_pio_ledg_s1_translator_altera_merlin_slave_translator_pio_ledg_s1_translator_wait_latency_counter_175m_dataout <= wire_nios1_pio_ledg_s1_translator_altera_merlin_slave_translator_pio_ledg_s1_translator_wait_latency_counter_172m_dataout AND NOT(s_wire_nios1_pio_ledg_s1_translator_altera_merlin_slave_translator_pio_ledg_s1_translator_always7_173_dataout);
	wire_nios1_pio_ledg_s1_translator_altera_merlin_slave_translator_pio_ledg_s1_translator_add0_170_a <= ( nios1_pio_ledg_s1_translator_altera_merlin_slave_translator_pio_ledg_s1_translator_wait_latency_counter_1_176q & nios1_pio_ledg_s1_translator_altera_merlin_slave_translator_pio_ledg_s1_translator_wait_latency_counter_0_177q);
	wire_nios1_pio_ledg_s1_translator_altera_merlin_slave_translator_pio_ledg_s1_translator_add0_170_b <= ( "0" & "1");
	nios1_pio_ledg_s1_translator_altera_merlin_slave_translator_pio_ledg_s1_translator_add0_170 :  oper_add
	  GENERIC MAP (
		sgate_representation => 0,
		width_a => 2,
		width_b => 2,
		width_o => 2
	  )
	  PORT MAP ( 
		a => wire_nios1_pio_ledg_s1_translator_altera_merlin_slave_translator_pio_ledg_s1_translator_add0_170_a,
		b => wire_nios1_pio_ledg_s1_translator_altera_merlin_slave_translator_pio_ledg_s1_translator_add0_170_b,
		cin => wire_gnd,
		o => wire_nios1_pio_ledg_s1_translator_altera_merlin_slave_translator_pio_ledg_s1_translator_add0_170_o
	  );
	wire_nios1_pio_ledg_s1_translator_altera_merlin_slave_translator_pio_ledg_s1_translator_lessthan0_179_a <= ( "0" & "0");
	wire_nios1_pio_ledg_s1_translator_altera_merlin_slave_translator_pio_ledg_s1_translator_lessthan0_179_b <= ( nios1_pio_ledg_s1_translator_altera_merlin_slave_translator_pio_ledg_s1_translator_wait_latency_counter_1_176q & nios1_pio_ledg_s1_translator_altera_merlin_slave_translator_pio_ledg_s1_translator_wait_latency_counter_0_177q);
	nios1_pio_ledg_s1_translator_altera_merlin_slave_translator_pio_ledg_s1_translator_lessthan0_179 :  oper_less_than
	  GENERIC MAP (
		sgate_representation => 0,
		width_a => 2,
		width_b => 2
	  )
	  PORT MAP ( 
		a => wire_nios1_pio_ledg_s1_translator_altera_merlin_slave_translator_pio_ledg_s1_translator_lessthan0_179_a,
		b => wire_nios1_pio_ledg_s1_translator_altera_merlin_slave_translator_pio_ledg_s1_translator_lessthan0_179_b,
		cin => wire_vcc,
		o => wire_nios1_pio_ledg_s1_translator_altera_merlin_slave_translator_pio_ledg_s1_translator_lessthan0_179_o
	  );
	wire_nios1_pio_ledg_s1_translator_altera_merlin_slave_translator_pio_ledg_s1_translator_lessthan1_181_a <= ( nios1_pio_ledg_s1_translator_altera_merlin_slave_translator_pio_ledg_s1_translator_wait_latency_counter_1_176q & nios1_pio_ledg_s1_translator_altera_merlin_slave_translator_pio_ledg_s1_translator_wait_latency_counter_0_177q);
	wire_nios1_pio_ledg_s1_translator_altera_merlin_slave_translator_pio_ledg_s1_translator_lessthan1_181_b <= ( "0" & "0");
	nios1_pio_ledg_s1_translator_altera_merlin_slave_translator_pio_ledg_s1_translator_lessthan1_181 :  oper_less_than
	  GENERIC MAP (
		sgate_representation => 0,
		width_a => 2,
		width_b => 2
	  )
	  PORT MAP ( 
		a => wire_nios1_pio_ledg_s1_translator_altera_merlin_slave_translator_pio_ledg_s1_translator_lessthan1_181_a,
		b => wire_nios1_pio_ledg_s1_translator_altera_merlin_slave_translator_pio_ledg_s1_translator_lessthan1_181_b,
		cin => wire_vcc,
		o => wire_nios1_pio_ledg_s1_translator_altera_merlin_slave_translator_pio_ledg_s1_translator_lessthan1_181_o
	  );

 END RTL; --Nios1_pio_LEDG_s1_translator
--synopsys translate_on
--VALID FILE
