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

 ENTITY  Nios1_pio_Button_s1_translator IS 
	 PORT 
	 ( 
		 av_address	:	OUT  STD_LOGIC_VECTOR (1 DOWNTO 0);
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
 END Nios1_pio_Button_s1_translator;

 ARCHITECTURE RTL OF Nios1_pio_Button_s1_translator IS

	 ATTRIBUTE synthesis_clearbox : natural;
	 ATTRIBUTE synthesis_clearbox OF RTL : ARCHITECTURE IS 1;
	 SIGNAL	nios1_pio_button_s1_translator_altera_merlin_slave_translator_pio_button_s1_translator_waitrequest_reset_override_188q	:	STD_LOGIC := '0';
	 SIGNAL  wire_nl_w206w	:	STD_LOGIC_VECTOR (0 DOWNTO 0);
	 SIGNAL	nios1_pio_button_s1_translator_altera_merlin_slave_translator_pio_button_s1_translator_av_readdata_pre_0_224q	:	STD_LOGIC := '0';
	 SIGNAL	nios1_pio_button_s1_translator_altera_merlin_slave_translator_pio_button_s1_translator_av_readdata_pre_10_210q	:	STD_LOGIC := '0';
	 SIGNAL	nios1_pio_button_s1_translator_altera_merlin_slave_translator_pio_button_s1_translator_av_readdata_pre_11_209q	:	STD_LOGIC := '0';
	 SIGNAL	nios1_pio_button_s1_translator_altera_merlin_slave_translator_pio_button_s1_translator_av_readdata_pre_12_208q	:	STD_LOGIC := '0';
	 SIGNAL	nios1_pio_button_s1_translator_altera_merlin_slave_translator_pio_button_s1_translator_av_readdata_pre_13_207q	:	STD_LOGIC := '0';
	 SIGNAL	nios1_pio_button_s1_translator_altera_merlin_slave_translator_pio_button_s1_translator_av_readdata_pre_14_206q	:	STD_LOGIC := '0';
	 SIGNAL	nios1_pio_button_s1_translator_altera_merlin_slave_translator_pio_button_s1_translator_av_readdata_pre_15_205q	:	STD_LOGIC := '0';
	 SIGNAL	nios1_pio_button_s1_translator_altera_merlin_slave_translator_pio_button_s1_translator_av_readdata_pre_16_204q	:	STD_LOGIC := '0';
	 SIGNAL	nios1_pio_button_s1_translator_altera_merlin_slave_translator_pio_button_s1_translator_av_readdata_pre_17_203q	:	STD_LOGIC := '0';
	 SIGNAL	nios1_pio_button_s1_translator_altera_merlin_slave_translator_pio_button_s1_translator_av_readdata_pre_18_202q	:	STD_LOGIC := '0';
	 SIGNAL	nios1_pio_button_s1_translator_altera_merlin_slave_translator_pio_button_s1_translator_av_readdata_pre_19_201q	:	STD_LOGIC := '0';
	 SIGNAL	nios1_pio_button_s1_translator_altera_merlin_slave_translator_pio_button_s1_translator_av_readdata_pre_1_219q	:	STD_LOGIC := '0';
	 SIGNAL	nios1_pio_button_s1_translator_altera_merlin_slave_translator_pio_button_s1_translator_av_readdata_pre_20_200q	:	STD_LOGIC := '0';
	 SIGNAL	nios1_pio_button_s1_translator_altera_merlin_slave_translator_pio_button_s1_translator_av_readdata_pre_21_199q	:	STD_LOGIC := '0';
	 SIGNAL	nios1_pio_button_s1_translator_altera_merlin_slave_translator_pio_button_s1_translator_av_readdata_pre_22_198q	:	STD_LOGIC := '0';
	 SIGNAL	nios1_pio_button_s1_translator_altera_merlin_slave_translator_pio_button_s1_translator_av_readdata_pre_23_197q	:	STD_LOGIC := '0';
	 SIGNAL	nios1_pio_button_s1_translator_altera_merlin_slave_translator_pio_button_s1_translator_av_readdata_pre_24_196q	:	STD_LOGIC := '0';
	 SIGNAL	nios1_pio_button_s1_translator_altera_merlin_slave_translator_pio_button_s1_translator_av_readdata_pre_25_195q	:	STD_LOGIC := '0';
	 SIGNAL	nios1_pio_button_s1_translator_altera_merlin_slave_translator_pio_button_s1_translator_av_readdata_pre_26_194q	:	STD_LOGIC := '0';
	 SIGNAL	nios1_pio_button_s1_translator_altera_merlin_slave_translator_pio_button_s1_translator_av_readdata_pre_27_193q	:	STD_LOGIC := '0';
	 SIGNAL	nios1_pio_button_s1_translator_altera_merlin_slave_translator_pio_button_s1_translator_av_readdata_pre_28_192q	:	STD_LOGIC := '0';
	 SIGNAL	nios1_pio_button_s1_translator_altera_merlin_slave_translator_pio_button_s1_translator_av_readdata_pre_29_191q	:	STD_LOGIC := '0';
	 SIGNAL	nios1_pio_button_s1_translator_altera_merlin_slave_translator_pio_button_s1_translator_av_readdata_pre_2_218q	:	STD_LOGIC := '0';
	 SIGNAL	nios1_pio_button_s1_translator_altera_merlin_slave_translator_pio_button_s1_translator_av_readdata_pre_30_190q	:	STD_LOGIC := '0';
	 SIGNAL	nios1_pio_button_s1_translator_altera_merlin_slave_translator_pio_button_s1_translator_av_readdata_pre_31_189q	:	STD_LOGIC := '0';
	 SIGNAL	nios1_pio_button_s1_translator_altera_merlin_slave_translator_pio_button_s1_translator_av_readdata_pre_3_217q	:	STD_LOGIC := '0';
	 SIGNAL	nios1_pio_button_s1_translator_altera_merlin_slave_translator_pio_button_s1_translator_av_readdata_pre_4_216q	:	STD_LOGIC := '0';
	 SIGNAL	nios1_pio_button_s1_translator_altera_merlin_slave_translator_pio_button_s1_translator_av_readdata_pre_5_215q	:	STD_LOGIC := '0';
	 SIGNAL	nios1_pio_button_s1_translator_altera_merlin_slave_translator_pio_button_s1_translator_av_readdata_pre_6_214q	:	STD_LOGIC := '0';
	 SIGNAL	nios1_pio_button_s1_translator_altera_merlin_slave_translator_pio_button_s1_translator_av_readdata_pre_7_213q	:	STD_LOGIC := '0';
	 SIGNAL	nios1_pio_button_s1_translator_altera_merlin_slave_translator_pio_button_s1_translator_av_readdata_pre_8_212q	:	STD_LOGIC := '0';
	 SIGNAL	nios1_pio_button_s1_translator_altera_merlin_slave_translator_pio_button_s1_translator_av_readdata_pre_9_211q	:	STD_LOGIC := '0';
	 SIGNAL	nios1_pio_button_s1_translator_altera_merlin_slave_translator_pio_button_s1_translator_read_latency_shift_reg_0_227q	:	STD_LOGIC := '0';
	 SIGNAL	nios1_pio_button_s1_translator_altera_merlin_slave_translator_pio_button_s1_translator_wait_latency_counter_0_176q	:	STD_LOGIC := '0';
	 SIGNAL	nios1_pio_button_s1_translator_altera_merlin_slave_translator_pio_button_s1_translator_wait_latency_counter_1_175q	:	STD_LOGIC := '0';
	 SIGNAL  wire_nO_w170w	:	STD_LOGIC_VECTOR (0 DOWNTO 0);
	 SIGNAL  wire_nO_w167w	:	STD_LOGIC_VECTOR (0 DOWNTO 0);
	 SIGNAL	wire_nios1_pio_button_s1_translator_altera_merlin_slave_translator_pio_button_s1_translator_av_waitrequest_generated_186m_dataout	:	STD_LOGIC;
	 SIGNAL	wire_nios1_pio_button_s1_translator_altera_merlin_slave_translator_pio_button_s1_translator_wait_latency_counter_170m_dataout	:	STD_LOGIC;
	 SIGNAL	wire_nios1_pio_button_s1_translator_altera_merlin_slave_translator_pio_button_s1_translator_wait_latency_counter_171m_dataout	:	STD_LOGIC;
	 SIGNAL	wire_nios1_pio_button_s1_translator_altera_merlin_slave_translator_pio_button_s1_translator_wait_latency_counter_173m_dataout	:	STD_LOGIC;
	 SIGNAL	wire_nios1_pio_button_s1_translator_altera_merlin_slave_translator_pio_button_s1_translator_wait_latency_counter_174m_dataout	:	STD_LOGIC;
	 SIGNAL  wire_nios1_pio_button_s1_translator_altera_merlin_slave_translator_pio_button_s1_translator_add0_169_a	:	STD_LOGIC_VECTOR (1 DOWNTO 0);
	 SIGNAL  wire_nios1_pio_button_s1_translator_altera_merlin_slave_translator_pio_button_s1_translator_add0_169_b	:	STD_LOGIC_VECTOR (1 DOWNTO 0);
	 SIGNAL  wire_gnd	:	STD_LOGIC;
	 SIGNAL  wire_nios1_pio_button_s1_translator_altera_merlin_slave_translator_pio_button_s1_translator_add0_169_o	:	STD_LOGIC_VECTOR (1 DOWNTO 0);
	 SIGNAL  wire_nios1_pio_button_s1_translator_altera_merlin_slave_translator_pio_button_s1_translator_lessthan0_178_a	:	STD_LOGIC_VECTOR (1 DOWNTO 0);
	 SIGNAL  wire_nios1_pio_button_s1_translator_altera_merlin_slave_translator_pio_button_s1_translator_lessthan0_178_b	:	STD_LOGIC_VECTOR (1 DOWNTO 0);
	 SIGNAL  wire_vcc	:	STD_LOGIC;
	 SIGNAL  wire_nios1_pio_button_s1_translator_altera_merlin_slave_translator_pio_button_s1_translator_lessthan0_178_o	:	STD_LOGIC;
	 SIGNAL  wire_nios1_pio_button_s1_translator_altera_merlin_slave_translator_pio_button_s1_translator_lessthan1_180_a	:	STD_LOGIC_VECTOR (1 DOWNTO 0);
	 SIGNAL  wire_nios1_pio_button_s1_translator_altera_merlin_slave_translator_pio_button_s1_translator_lessthan1_180_b	:	STD_LOGIC_VECTOR (1 DOWNTO 0);
	 SIGNAL  wire_nios1_pio_button_s1_translator_altera_merlin_slave_translator_pio_button_s1_translator_lessthan1_180_o	:	STD_LOGIC;
	 SIGNAL  wire_w_lg_reset150w	:	STD_LOGIC_VECTOR (0 DOWNTO 0);
	 SIGNAL  wire_w148w	:	STD_LOGIC_VECTOR (0 DOWNTO 0);
	 SIGNAL  s_wire_gnd :	STD_LOGIC;
	 SIGNAL  s_wire_nios1_pio_button_s1_translator_altera_merlin_slave_translator_pio_button_s1_translator_always7_172_dataout :	STD_LOGIC;
	 SIGNAL  s_wire_nios1_pio_button_s1_translator_altera_merlin_slave_translator_pio_button_s1_translator_av_begintransfer_229_dataout :	STD_LOGIC;
	 SIGNAL  s_wire_nios1_pio_button_s1_translator_altera_merlin_slave_translator_pio_button_s1_translator_uav_waitrequest_187_dataout :	STD_LOGIC;
	 SIGNAL  s_wire_vcc :	STD_LOGIC;
 BEGIN

	wire_gnd <= '0';
	wire_vcc <= '1';
	wire_w_lg_reset150w(0) <= NOT reset;
	wire_w148w(0) <= NOT s_wire_nios1_pio_button_s1_translator_altera_merlin_slave_translator_pio_button_s1_translator_uav_waitrequest_187_dataout;
	av_address <= ( uav_address(3 DOWNTO 2));
	av_chipselect <= s_wire_nios1_pio_button_s1_translator_altera_merlin_slave_translator_pio_button_s1_translator_av_begintransfer_229_dataout;
	av_write <= ((uav_write AND wire_nios1_pio_button_s1_translator_altera_merlin_slave_translator_pio_button_s1_translator_lessthan0_178_o) AND wire_nios1_pio_button_s1_translator_altera_merlin_slave_translator_pio_button_s1_translator_lessthan1_180_o);
	av_writedata <= ( uav_writedata(31 DOWNTO 0));
	s_wire_gnd <= '0';
	s_wire_nios1_pio_button_s1_translator_altera_merlin_slave_translator_pio_button_s1_translator_always7_172_dataout <= (wire_w148w(0) OR nios1_pio_button_s1_translator_altera_merlin_slave_translator_pio_button_s1_translator_waitrequest_reset_override_188q);
	s_wire_nios1_pio_button_s1_translator_altera_merlin_slave_translator_pio_button_s1_translator_av_begintransfer_229_dataout <= (uav_read OR uav_write);
	s_wire_nios1_pio_button_s1_translator_altera_merlin_slave_translator_pio_button_s1_translator_uav_waitrequest_187_dataout <= (wire_nios1_pio_button_s1_translator_altera_merlin_slave_translator_pio_button_s1_translator_av_waitrequest_generated_186m_dataout OR nios1_pio_button_s1_translator_altera_merlin_slave_translator_pio_button_s1_translator_waitrequest_reset_override_188q);
	s_wire_vcc <= '1';
	uav_readdata <= ( nios1_pio_button_s1_translator_altera_merlin_slave_translator_pio_button_s1_translator_av_readdata_pre_31_189q & nios1_pio_button_s1_translator_altera_merlin_slave_translator_pio_button_s1_translator_av_readdata_pre_30_190q & nios1_pio_button_s1_translator_altera_merlin_slave_translator_pio_button_s1_translator_av_readdata_pre_29_191q & nios1_pio_button_s1_translator_altera_merlin_slave_translator_pio_button_s1_translator_av_readdata_pre_28_192q & nios1_pio_button_s1_translator_altera_merlin_slave_translator_pio_button_s1_translator_av_readdata_pre_27_193q & nios1_pio_button_s1_translator_altera_merlin_slave_translator_pio_button_s1_translator_av_readdata_pre_26_194q & nios1_pio_button_s1_translator_altera_merlin_slave_translator_pio_button_s1_translator_av_readdata_pre_25_195q & nios1_pio_button_s1_translator_altera_merlin_slave_translator_pio_button_s1_translator_av_readdata_pre_24_196q & nios1_pio_button_s1_translator_altera_merlin_slave_translator_pio_button_s1_translator_av_readdata_pre_23_197q & nios1_pio_button_s1_translator_altera_merlin_slave_translator_pio_button_s1_translator_av_readdata_pre_22_198q & nios1_pio_button_s1_translator_altera_merlin_slave_translator_pio_button_s1_translator_av_readdata_pre_21_199q & nios1_pio_button_s1_translator_altera_merlin_slave_translator_pio_button_s1_translator_av_readdata_pre_20_200q & nios1_pio_button_s1_translator_altera_merlin_slave_translator_pio_button_s1_translator_av_readdata_pre_19_201q & nios1_pio_button_s1_translator_altera_merlin_slave_translator_pio_button_s1_translator_av_readdata_pre_18_202q & nios1_pio_button_s1_translator_altera_merlin_slave_translator_pio_button_s1_translator_av_readdata_pre_17_203q & nios1_pio_button_s1_translator_altera_merlin_slave_translator_pio_button_s1_translator_av_readdata_pre_16_204q & nios1_pio_button_s1_translator_altera_merlin_slave_translator_pio_button_s1_translator_av_readdata_pre_15_205q & nios1_pio_button_s1_translator_altera_merlin_slave_translator_pio_button_s1_translator_av_readdata_pre_14_206q
 & nios1_pio_button_s1_translator_altera_merlin_slave_translator_pio_button_s1_translator_av_readdata_pre_13_207q & nios1_pio_button_s1_translator_altera_merlin_slave_translator_pio_button_s1_translator_av_readdata_pre_12_208q & nios1_pio_button_s1_translator_altera_merlin_slave_translator_pio_button_s1_translator_av_readdata_pre_11_209q & nios1_pio_button_s1_translator_altera_merlin_slave_translator_pio_button_s1_translator_av_readdata_pre_10_210q & nios1_pio_button_s1_translator_altera_merlin_slave_translator_pio_button_s1_translator_av_readdata_pre_9_211q & nios1_pio_button_s1_translator_altera_merlin_slave_translator_pio_button_s1_translator_av_readdata_pre_8_212q & nios1_pio_button_s1_translator_altera_merlin_slave_translator_pio_button_s1_translator_av_readdata_pre_7_213q & nios1_pio_button_s1_translator_altera_merlin_slave_translator_pio_button_s1_translator_av_readdata_pre_6_214q & nios1_pio_button_s1_translator_altera_merlin_slave_translator_pio_button_s1_translator_av_readdata_pre_5_215q & nios1_pio_button_s1_translator_altera_merlin_slave_translator_pio_button_s1_translator_av_readdata_pre_4_216q & nios1_pio_button_s1_translator_altera_merlin_slave_translator_pio_button_s1_translator_av_readdata_pre_3_217q & nios1_pio_button_s1_translator_altera_merlin_slave_translator_pio_button_s1_translator_av_readdata_pre_2_218q & nios1_pio_button_s1_translator_altera_merlin_slave_translator_pio_button_s1_translator_av_readdata_pre_1_219q & nios1_pio_button_s1_translator_altera_merlin_slave_translator_pio_button_s1_translator_av_readdata_pre_0_224q);
	uav_readdatavalid <= nios1_pio_button_s1_translator_altera_merlin_slave_translator_pio_button_s1_translator_read_latency_shift_reg_0_227q;
	uav_waitrequest <= s_wire_nios1_pio_button_s1_translator_altera_merlin_slave_translator_pio_button_s1_translator_uav_waitrequest_187_dataout;
	PROCESS (clk, reset)
	BEGIN
		IF (reset = '1') THEN
				nios1_pio_button_s1_translator_altera_merlin_slave_translator_pio_button_s1_translator_waitrequest_reset_override_188q <= '1';
		ELSIF (clk = '1' AND clk'event) THEN
				nios1_pio_button_s1_translator_altera_merlin_slave_translator_pio_button_s1_translator_waitrequest_reset_override_188q <= s_wire_gnd;
		END IF;
		if (now = 0 ns) then
			nios1_pio_button_s1_translator_altera_merlin_slave_translator_pio_button_s1_translator_waitrequest_reset_override_188q <= '1' after 1 ps;
		end if;
	END PROCESS;
	wire_nl_w206w(0) <= NOT nios1_pio_button_s1_translator_altera_merlin_slave_translator_pio_button_s1_translator_waitrequest_reset_override_188q;
	PROCESS (clk, reset)
	BEGIN
		IF (reset = '1') THEN
				nios1_pio_button_s1_translator_altera_merlin_slave_translator_pio_button_s1_translator_av_readdata_pre_0_224q <= '0';
				nios1_pio_button_s1_translator_altera_merlin_slave_translator_pio_button_s1_translator_av_readdata_pre_10_210q <= '0';
				nios1_pio_button_s1_translator_altera_merlin_slave_translator_pio_button_s1_translator_av_readdata_pre_11_209q <= '0';
				nios1_pio_button_s1_translator_altera_merlin_slave_translator_pio_button_s1_translator_av_readdata_pre_12_208q <= '0';
				nios1_pio_button_s1_translator_altera_merlin_slave_translator_pio_button_s1_translator_av_readdata_pre_13_207q <= '0';
				nios1_pio_button_s1_translator_altera_merlin_slave_translator_pio_button_s1_translator_av_readdata_pre_14_206q <= '0';
				nios1_pio_button_s1_translator_altera_merlin_slave_translator_pio_button_s1_translator_av_readdata_pre_15_205q <= '0';
				nios1_pio_button_s1_translator_altera_merlin_slave_translator_pio_button_s1_translator_av_readdata_pre_16_204q <= '0';
				nios1_pio_button_s1_translator_altera_merlin_slave_translator_pio_button_s1_translator_av_readdata_pre_17_203q <= '0';
				nios1_pio_button_s1_translator_altera_merlin_slave_translator_pio_button_s1_translator_av_readdata_pre_18_202q <= '0';
				nios1_pio_button_s1_translator_altera_merlin_slave_translator_pio_button_s1_translator_av_readdata_pre_19_201q <= '0';
				nios1_pio_button_s1_translator_altera_merlin_slave_translator_pio_button_s1_translator_av_readdata_pre_1_219q <= '0';
				nios1_pio_button_s1_translator_altera_merlin_slave_translator_pio_button_s1_translator_av_readdata_pre_20_200q <= '0';
				nios1_pio_button_s1_translator_altera_merlin_slave_translator_pio_button_s1_translator_av_readdata_pre_21_199q <= '0';
				nios1_pio_button_s1_translator_altera_merlin_slave_translator_pio_button_s1_translator_av_readdata_pre_22_198q <= '0';
				nios1_pio_button_s1_translator_altera_merlin_slave_translator_pio_button_s1_translator_av_readdata_pre_23_197q <= '0';
				nios1_pio_button_s1_translator_altera_merlin_slave_translator_pio_button_s1_translator_av_readdata_pre_24_196q <= '0';
				nios1_pio_button_s1_translator_altera_merlin_slave_translator_pio_button_s1_translator_av_readdata_pre_25_195q <= '0';
				nios1_pio_button_s1_translator_altera_merlin_slave_translator_pio_button_s1_translator_av_readdata_pre_26_194q <= '0';
				nios1_pio_button_s1_translator_altera_merlin_slave_translator_pio_button_s1_translator_av_readdata_pre_27_193q <= '0';
				nios1_pio_button_s1_translator_altera_merlin_slave_translator_pio_button_s1_translator_av_readdata_pre_28_192q <= '0';
				nios1_pio_button_s1_translator_altera_merlin_slave_translator_pio_button_s1_translator_av_readdata_pre_29_191q <= '0';
				nios1_pio_button_s1_translator_altera_merlin_slave_translator_pio_button_s1_translator_av_readdata_pre_2_218q <= '0';
				nios1_pio_button_s1_translator_altera_merlin_slave_translator_pio_button_s1_translator_av_readdata_pre_30_190q <= '0';
				nios1_pio_button_s1_translator_altera_merlin_slave_translator_pio_button_s1_translator_av_readdata_pre_31_189q <= '0';
				nios1_pio_button_s1_translator_altera_merlin_slave_translator_pio_button_s1_translator_av_readdata_pre_3_217q <= '0';
				nios1_pio_button_s1_translator_altera_merlin_slave_translator_pio_button_s1_translator_av_readdata_pre_4_216q <= '0';
				nios1_pio_button_s1_translator_altera_merlin_slave_translator_pio_button_s1_translator_av_readdata_pre_5_215q <= '0';
				nios1_pio_button_s1_translator_altera_merlin_slave_translator_pio_button_s1_translator_av_readdata_pre_6_214q <= '0';
				nios1_pio_button_s1_translator_altera_merlin_slave_translator_pio_button_s1_translator_av_readdata_pre_7_213q <= '0';
				nios1_pio_button_s1_translator_altera_merlin_slave_translator_pio_button_s1_translator_av_readdata_pre_8_212q <= '0';
				nios1_pio_button_s1_translator_altera_merlin_slave_translator_pio_button_s1_translator_av_readdata_pre_9_211q <= '0';
				nios1_pio_button_s1_translator_altera_merlin_slave_translator_pio_button_s1_translator_read_latency_shift_reg_0_227q <= '0';
				nios1_pio_button_s1_translator_altera_merlin_slave_translator_pio_button_s1_translator_wait_latency_counter_0_176q <= '0';
				nios1_pio_button_s1_translator_altera_merlin_slave_translator_pio_button_s1_translator_wait_latency_counter_1_175q <= '0';
		ELSIF (clk = '1' AND clk'event) THEN
				nios1_pio_button_s1_translator_altera_merlin_slave_translator_pio_button_s1_translator_av_readdata_pre_0_224q <= av_readdata(0);
				nios1_pio_button_s1_translator_altera_merlin_slave_translator_pio_button_s1_translator_av_readdata_pre_10_210q <= av_readdata(10);
				nios1_pio_button_s1_translator_altera_merlin_slave_translator_pio_button_s1_translator_av_readdata_pre_11_209q <= av_readdata(11);
				nios1_pio_button_s1_translator_altera_merlin_slave_translator_pio_button_s1_translator_av_readdata_pre_12_208q <= av_readdata(12);
				nios1_pio_button_s1_translator_altera_merlin_slave_translator_pio_button_s1_translator_av_readdata_pre_13_207q <= av_readdata(13);
				nios1_pio_button_s1_translator_altera_merlin_slave_translator_pio_button_s1_translator_av_readdata_pre_14_206q <= av_readdata(14);
				nios1_pio_button_s1_translator_altera_merlin_slave_translator_pio_button_s1_translator_av_readdata_pre_15_205q <= av_readdata(15);
				nios1_pio_button_s1_translator_altera_merlin_slave_translator_pio_button_s1_translator_av_readdata_pre_16_204q <= av_readdata(16);
				nios1_pio_button_s1_translator_altera_merlin_slave_translator_pio_button_s1_translator_av_readdata_pre_17_203q <= av_readdata(17);
				nios1_pio_button_s1_translator_altera_merlin_slave_translator_pio_button_s1_translator_av_readdata_pre_18_202q <= av_readdata(18);
				nios1_pio_button_s1_translator_altera_merlin_slave_translator_pio_button_s1_translator_av_readdata_pre_19_201q <= av_readdata(19);
				nios1_pio_button_s1_translator_altera_merlin_slave_translator_pio_button_s1_translator_av_readdata_pre_1_219q <= av_readdata(1);
				nios1_pio_button_s1_translator_altera_merlin_slave_translator_pio_button_s1_translator_av_readdata_pre_20_200q <= av_readdata(20);
				nios1_pio_button_s1_translator_altera_merlin_slave_translator_pio_button_s1_translator_av_readdata_pre_21_199q <= av_readdata(21);
				nios1_pio_button_s1_translator_altera_merlin_slave_translator_pio_button_s1_translator_av_readdata_pre_22_198q <= av_readdata(22);
				nios1_pio_button_s1_translator_altera_merlin_slave_translator_pio_button_s1_translator_av_readdata_pre_23_197q <= av_readdata(23);
				nios1_pio_button_s1_translator_altera_merlin_slave_translator_pio_button_s1_translator_av_readdata_pre_24_196q <= av_readdata(24);
				nios1_pio_button_s1_translator_altera_merlin_slave_translator_pio_button_s1_translator_av_readdata_pre_25_195q <= av_readdata(25);
				nios1_pio_button_s1_translator_altera_merlin_slave_translator_pio_button_s1_translator_av_readdata_pre_26_194q <= av_readdata(26);
				nios1_pio_button_s1_translator_altera_merlin_slave_translator_pio_button_s1_translator_av_readdata_pre_27_193q <= av_readdata(27);
				nios1_pio_button_s1_translator_altera_merlin_slave_translator_pio_button_s1_translator_av_readdata_pre_28_192q <= av_readdata(28);
				nios1_pio_button_s1_translator_altera_merlin_slave_translator_pio_button_s1_translator_av_readdata_pre_29_191q <= av_readdata(29);
				nios1_pio_button_s1_translator_altera_merlin_slave_translator_pio_button_s1_translator_av_readdata_pre_2_218q <= av_readdata(2);
				nios1_pio_button_s1_translator_altera_merlin_slave_translator_pio_button_s1_translator_av_readdata_pre_30_190q <= av_readdata(30);
				nios1_pio_button_s1_translator_altera_merlin_slave_translator_pio_button_s1_translator_av_readdata_pre_31_189q <= av_readdata(31);
				nios1_pio_button_s1_translator_altera_merlin_slave_translator_pio_button_s1_translator_av_readdata_pre_3_217q <= av_readdata(3);
				nios1_pio_button_s1_translator_altera_merlin_slave_translator_pio_button_s1_translator_av_readdata_pre_4_216q <= av_readdata(4);
				nios1_pio_button_s1_translator_altera_merlin_slave_translator_pio_button_s1_translator_av_readdata_pre_5_215q <= av_readdata(5);
				nios1_pio_button_s1_translator_altera_merlin_slave_translator_pio_button_s1_translator_av_readdata_pre_6_214q <= av_readdata(6);
				nios1_pio_button_s1_translator_altera_merlin_slave_translator_pio_button_s1_translator_av_readdata_pre_7_213q <= av_readdata(7);
				nios1_pio_button_s1_translator_altera_merlin_slave_translator_pio_button_s1_translator_av_readdata_pre_8_212q <= av_readdata(8);
				nios1_pio_button_s1_translator_altera_merlin_slave_translator_pio_button_s1_translator_av_readdata_pre_9_211q <= av_readdata(9);
				nios1_pio_button_s1_translator_altera_merlin_slave_translator_pio_button_s1_translator_read_latency_shift_reg_0_227q <= (uav_read AND (wire_w148w(0) AND wire_nl_w206w(0)));
				nios1_pio_button_s1_translator_altera_merlin_slave_translator_pio_button_s1_translator_wait_latency_counter_0_176q <= wire_nios1_pio_button_s1_translator_altera_merlin_slave_translator_pio_button_s1_translator_wait_latency_counter_174m_dataout;
				nios1_pio_button_s1_translator_altera_merlin_slave_translator_pio_button_s1_translator_wait_latency_counter_1_175q <= wire_nios1_pio_button_s1_translator_altera_merlin_slave_translator_pio_button_s1_translator_wait_latency_counter_173m_dataout;
		END IF;
	END PROCESS;
	wire_nO_w170w(0) <= NOT nios1_pio_button_s1_translator_altera_merlin_slave_translator_pio_button_s1_translator_wait_latency_counter_0_176q;
	wire_nO_w167w(0) <= NOT nios1_pio_button_s1_translator_altera_merlin_slave_translator_pio_button_s1_translator_wait_latency_counter_1_175q;
	wire_nios1_pio_button_s1_translator_altera_merlin_slave_translator_pio_button_s1_translator_av_waitrequest_generated_186m_dataout <= (NOT (wire_nO_w167w(0) AND wire_nO_w170w(0))) WHEN uav_write = '1'  ELSE (NOT (wire_nO_w167w(0) AND nios1_pio_button_s1_translator_altera_merlin_slave_translator_pio_button_s1_translator_wait_latency_counter_0_176q));
	wire_nios1_pio_button_s1_translator_altera_merlin_slave_translator_pio_button_s1_translator_wait_latency_counter_170m_dataout <= wire_nios1_pio_button_s1_translator_altera_merlin_slave_translator_pio_button_s1_translator_add0_169_o(1) AND s_wire_nios1_pio_button_s1_translator_altera_merlin_slave_translator_pio_button_s1_translator_av_begintransfer_229_dataout;
	wire_nios1_pio_button_s1_translator_altera_merlin_slave_translator_pio_button_s1_translator_wait_latency_counter_171m_dataout <= wire_nios1_pio_button_s1_translator_altera_merlin_slave_translator_pio_button_s1_translator_add0_169_o(0) AND s_wire_nios1_pio_button_s1_translator_altera_merlin_slave_translator_pio_button_s1_translator_av_begintransfer_229_dataout;
	wire_nios1_pio_button_s1_translator_altera_merlin_slave_translator_pio_button_s1_translator_wait_latency_counter_173m_dataout <= wire_nios1_pio_button_s1_translator_altera_merlin_slave_translator_pio_button_s1_translator_wait_latency_counter_170m_dataout AND NOT(s_wire_nios1_pio_button_s1_translator_altera_merlin_slave_translator_pio_button_s1_translator_always7_172_dataout);
	wire_nios1_pio_button_s1_translator_altera_merlin_slave_translator_pio_button_s1_translator_wait_latency_counter_174m_dataout <= wire_nios1_pio_button_s1_translator_altera_merlin_slave_translator_pio_button_s1_translator_wait_latency_counter_171m_dataout AND NOT(s_wire_nios1_pio_button_s1_translator_altera_merlin_slave_translator_pio_button_s1_translator_always7_172_dataout);
	wire_nios1_pio_button_s1_translator_altera_merlin_slave_translator_pio_button_s1_translator_add0_169_a <= ( nios1_pio_button_s1_translator_altera_merlin_slave_translator_pio_button_s1_translator_wait_latency_counter_1_175q & nios1_pio_button_s1_translator_altera_merlin_slave_translator_pio_button_s1_translator_wait_latency_counter_0_176q);
	wire_nios1_pio_button_s1_translator_altera_merlin_slave_translator_pio_button_s1_translator_add0_169_b <= ( "0" & "1");
	nios1_pio_button_s1_translator_altera_merlin_slave_translator_pio_button_s1_translator_add0_169 :  oper_add
	  GENERIC MAP (
		sgate_representation => 0,
		width_a => 2,
		width_b => 2,
		width_o => 2
	  )
	  PORT MAP ( 
		a => wire_nios1_pio_button_s1_translator_altera_merlin_slave_translator_pio_button_s1_translator_add0_169_a,
		b => wire_nios1_pio_button_s1_translator_altera_merlin_slave_translator_pio_button_s1_translator_add0_169_b,
		cin => wire_gnd,
		o => wire_nios1_pio_button_s1_translator_altera_merlin_slave_translator_pio_button_s1_translator_add0_169_o
	  );
	wire_nios1_pio_button_s1_translator_altera_merlin_slave_translator_pio_button_s1_translator_lessthan0_178_a <= ( "0" & "0");
	wire_nios1_pio_button_s1_translator_altera_merlin_slave_translator_pio_button_s1_translator_lessthan0_178_b <= ( nios1_pio_button_s1_translator_altera_merlin_slave_translator_pio_button_s1_translator_wait_latency_counter_1_175q & nios1_pio_button_s1_translator_altera_merlin_slave_translator_pio_button_s1_translator_wait_latency_counter_0_176q);
	nios1_pio_button_s1_translator_altera_merlin_slave_translator_pio_button_s1_translator_lessthan0_178 :  oper_less_than
	  GENERIC MAP (
		sgate_representation => 0,
		width_a => 2,
		width_b => 2
	  )
	  PORT MAP ( 
		a => wire_nios1_pio_button_s1_translator_altera_merlin_slave_translator_pio_button_s1_translator_lessthan0_178_a,
		b => wire_nios1_pio_button_s1_translator_altera_merlin_slave_translator_pio_button_s1_translator_lessthan0_178_b,
		cin => wire_vcc,
		o => wire_nios1_pio_button_s1_translator_altera_merlin_slave_translator_pio_button_s1_translator_lessthan0_178_o
	  );
	wire_nios1_pio_button_s1_translator_altera_merlin_slave_translator_pio_button_s1_translator_lessthan1_180_a <= ( nios1_pio_button_s1_translator_altera_merlin_slave_translator_pio_button_s1_translator_wait_latency_counter_1_175q & nios1_pio_button_s1_translator_altera_merlin_slave_translator_pio_button_s1_translator_wait_latency_counter_0_176q);
	wire_nios1_pio_button_s1_translator_altera_merlin_slave_translator_pio_button_s1_translator_lessthan1_180_b <= ( "0" & "0");
	nios1_pio_button_s1_translator_altera_merlin_slave_translator_pio_button_s1_translator_lessthan1_180 :  oper_less_than
	  GENERIC MAP (
		sgate_representation => 0,
		width_a => 2,
		width_b => 2
	  )
	  PORT MAP ( 
		a => wire_nios1_pio_button_s1_translator_altera_merlin_slave_translator_pio_button_s1_translator_lessthan1_180_a,
		b => wire_nios1_pio_button_s1_translator_altera_merlin_slave_translator_pio_button_s1_translator_lessthan1_180_b,
		cin => wire_vcc,
		o => wire_nios1_pio_button_s1_translator_altera_merlin_slave_translator_pio_button_s1_translator_lessthan1_180_o
	  );

 END RTL; --Nios1_pio_Button_s1_translator
--synopsys translate_on
--VALID FILE
