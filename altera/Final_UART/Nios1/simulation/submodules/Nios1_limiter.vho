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

--synthesis_resources = lut 20 mux21 18 oper_add 2 
 LIBRARY ieee;
 USE ieee.std_logic_1164.all;

 ENTITY  Nios1_limiter IS 
	 PORT 
	 ( 
		 clk	:	IN  STD_LOGIC;
		 cmd_sink_channel	:	IN  STD_LOGIC_VECTOR (13 DOWNTO 0);
		 cmd_sink_data	:	IN  STD_LOGIC_VECTOR (75 DOWNTO 0);
		 cmd_sink_endofpacket	:	IN  STD_LOGIC;
		 cmd_sink_ready	:	OUT  STD_LOGIC;
		 cmd_sink_startofpacket	:	IN  STD_LOGIC;
		 cmd_sink_valid	:	IN  STD_LOGIC;
		 cmd_src_channel	:	OUT  STD_LOGIC_VECTOR (13 DOWNTO 0);
		 cmd_src_data	:	OUT  STD_LOGIC_VECTOR (75 DOWNTO 0);
		 cmd_src_endofpacket	:	OUT  STD_LOGIC;
		 cmd_src_ready	:	IN  STD_LOGIC;
		 cmd_src_startofpacket	:	OUT  STD_LOGIC;
		 cmd_src_valid	:	OUT  STD_LOGIC_VECTOR (13 DOWNTO 0);
		 reset	:	IN  STD_LOGIC;
		 rsp_sink_channel	:	IN  STD_LOGIC_VECTOR (13 DOWNTO 0);
		 rsp_sink_data	:	IN  STD_LOGIC_VECTOR (75 DOWNTO 0);
		 rsp_sink_endofpacket	:	IN  STD_LOGIC;
		 rsp_sink_ready	:	OUT  STD_LOGIC;
		 rsp_sink_startofpacket	:	IN  STD_LOGIC;
		 rsp_sink_valid	:	IN  STD_LOGIC;
		 rsp_src_channel	:	OUT  STD_LOGIC_VECTOR (13 DOWNTO 0);
		 rsp_src_data	:	OUT  STD_LOGIC_VECTOR (75 DOWNTO 0);
		 rsp_src_endofpacket	:	OUT  STD_LOGIC;
		 rsp_src_ready	:	IN  STD_LOGIC;
		 rsp_src_startofpacket	:	OUT  STD_LOGIC;
		 rsp_src_valid	:	OUT  STD_LOGIC
	 ); 
 END Nios1_limiter;

 ARCHITECTURE RTL OF Nios1_limiter IS

	 ATTRIBUTE synthesis_clearbox : natural;
	 ATTRIBUTE synthesis_clearbox OF RTL : ARCHITECTURE IS 1;
	 SIGNAL	nios1_limiter_altera_merlin_traffic_limiter_limiter_pending_response_count_0_478q	:	STD_LOGIC := '0';
	 SIGNAL	wire_ni_ENA	:	STD_LOGIC;
	 SIGNAL  wire_ni_w567w	:	STD_LOGIC_VECTOR (0 DOWNTO 0);
	 SIGNAL	nios1_limiter_altera_merlin_traffic_limiter_limiter_has_pending_responses_449q	:	STD_LOGIC := '0';
	 SIGNAL  wire_nl_w565w	:	STD_LOGIC_VECTOR (0 DOWNTO 0);
	 SIGNAL	nios1_limiter_altera_merlin_traffic_limiter_limiter_last_channel_0_476q	:	STD_LOGIC := '0';
	 SIGNAL	nios1_limiter_altera_merlin_traffic_limiter_limiter_last_channel_10_439q	:	STD_LOGIC := '0';
	 SIGNAL	nios1_limiter_altera_merlin_traffic_limiter_limiter_last_channel_11_438q	:	STD_LOGIC := '0';
	 SIGNAL	nios1_limiter_altera_merlin_traffic_limiter_limiter_last_channel_12_437q	:	STD_LOGIC := '0';
	 SIGNAL	nios1_limiter_altera_merlin_traffic_limiter_limiter_last_channel_13_436q	:	STD_LOGIC := '0';
	 SIGNAL	nios1_limiter_altera_merlin_traffic_limiter_limiter_last_channel_1_448q	:	STD_LOGIC := '0';
	 SIGNAL	nios1_limiter_altera_merlin_traffic_limiter_limiter_last_channel_2_447q	:	STD_LOGIC := '0';
	 SIGNAL	nios1_limiter_altera_merlin_traffic_limiter_limiter_last_channel_3_446q	:	STD_LOGIC := '0';
	 SIGNAL	nios1_limiter_altera_merlin_traffic_limiter_limiter_last_channel_4_445q	:	STD_LOGIC := '0';
	 SIGNAL	nios1_limiter_altera_merlin_traffic_limiter_limiter_last_channel_5_444q	:	STD_LOGIC := '0';
	 SIGNAL	nios1_limiter_altera_merlin_traffic_limiter_limiter_last_channel_6_443q	:	STD_LOGIC := '0';
	 SIGNAL	nios1_limiter_altera_merlin_traffic_limiter_limiter_last_channel_7_442q	:	STD_LOGIC := '0';
	 SIGNAL	nios1_limiter_altera_merlin_traffic_limiter_limiter_last_channel_8_441q	:	STD_LOGIC := '0';
	 SIGNAL	nios1_limiter_altera_merlin_traffic_limiter_limiter_last_channel_9_440q	:	STD_LOGIC := '0';
	 SIGNAL	nios1_limiter_altera_merlin_traffic_limiter_limiter_last_dest_id_0_435q	:	STD_LOGIC := '0';
	 SIGNAL	nios1_limiter_altera_merlin_traffic_limiter_limiter_last_dest_id_1_434q	:	STD_LOGIC := '0';
	 SIGNAL	nios1_limiter_altera_merlin_traffic_limiter_limiter_last_dest_id_2_433q	:	STD_LOGIC := '0';
	 SIGNAL	nios1_limiter_altera_merlin_traffic_limiter_limiter_last_dest_id_3_432q	:	STD_LOGIC := '0';
	 SIGNAL	wire_nios1_limiter_altera_merlin_traffic_limiter_limiter_cmd_sink_ready_481m_dataout	:	STD_LOGIC;
	 SIGNAL	wire_nios1_limiter_altera_merlin_traffic_limiter_limiter_cmd_src_valid_0_524m_dataout	:	STD_LOGIC;
	 SIGNAL	wire_nios1_limiter_altera_merlin_traffic_limiter_limiter_cmd_src_valid_10_514m_dataout	:	STD_LOGIC;
	 SIGNAL	wire_nios1_limiter_altera_merlin_traffic_limiter_limiter_cmd_src_valid_11_513m_dataout	:	STD_LOGIC;
	 SIGNAL	wire_nios1_limiter_altera_merlin_traffic_limiter_limiter_cmd_src_valid_12_512m_dataout	:	STD_LOGIC;
	 SIGNAL	wire_nios1_limiter_altera_merlin_traffic_limiter_limiter_cmd_src_valid_13_511m_dataout	:	STD_LOGIC;
	 SIGNAL	wire_nios1_limiter_altera_merlin_traffic_limiter_limiter_cmd_src_valid_1_523m_dataout	:	STD_LOGIC;
	 SIGNAL	wire_nios1_limiter_altera_merlin_traffic_limiter_limiter_cmd_src_valid_2_522m_dataout	:	STD_LOGIC;
	 SIGNAL	wire_nios1_limiter_altera_merlin_traffic_limiter_limiter_cmd_src_valid_3_521m_dataout	:	STD_LOGIC;
	 SIGNAL	wire_nios1_limiter_altera_merlin_traffic_limiter_limiter_cmd_src_valid_4_520m_dataout	:	STD_LOGIC;
	 SIGNAL	wire_nios1_limiter_altera_merlin_traffic_limiter_limiter_cmd_src_valid_5_519m_dataout	:	STD_LOGIC;
	 SIGNAL	wire_nios1_limiter_altera_merlin_traffic_limiter_limiter_cmd_src_valid_6_518m_dataout	:	STD_LOGIC;
	 SIGNAL	wire_nios1_limiter_altera_merlin_traffic_limiter_limiter_cmd_src_valid_7_517m_dataout	:	STD_LOGIC;
	 SIGNAL	wire_nios1_limiter_altera_merlin_traffic_limiter_limiter_cmd_src_valid_8_516m_dataout	:	STD_LOGIC;
	 SIGNAL	wire_nios1_limiter_altera_merlin_traffic_limiter_limiter_cmd_src_valid_9_515m_dataout	:	STD_LOGIC;
	 SIGNAL	wire_nios1_limiter_altera_merlin_traffic_limiter_limiter_internal_valid_482m_dataout	:	STD_LOGIC;
	 SIGNAL	wire_nios1_limiter_altera_merlin_traffic_limiter_limiter_next_pending_response_count_460m_dataout	:	STD_LOGIC;
	 SIGNAL	wire_nios1_limiter_altera_merlin_traffic_limiter_limiter_next_pending_response_count_462m_dataout	:	STD_LOGIC;
	 SIGNAL  wire_nios1_limiter_altera_merlin_traffic_limiter_limiter_add0_459_a	:	STD_LOGIC_VECTOR (0 DOWNTO 0);
	 SIGNAL  wire_nios1_limiter_altera_merlin_traffic_limiter_limiter_add0_459_b	:	STD_LOGIC_VECTOR (0 DOWNTO 0);
	 SIGNAL  wire_gnd	:	STD_LOGIC;
	 SIGNAL  wire_nios1_limiter_altera_merlin_traffic_limiter_limiter_add0_459_o	:	STD_LOGIC_VECTOR (0 DOWNTO 0);
	 SIGNAL  wire_nios1_limiter_altera_merlin_traffic_limiter_limiter_add1_461_a	:	STD_LOGIC_VECTOR (1 DOWNTO 0);
	 SIGNAL  wire_nios1_limiter_altera_merlin_traffic_limiter_limiter_add1_461_b	:	STD_LOGIC_VECTOR (1 DOWNTO 0);
	 SIGNAL  wire_nios1_limiter_altera_merlin_traffic_limiter_limiter_add1_461_o	:	STD_LOGIC_VECTOR (1 DOWNTO 0);
	 SIGNAL  wire_w_lg_w561w563w	:	STD_LOGIC_VECTOR (0 DOWNTO 0);
	 SIGNAL  wire_w_lg_w_lg_w_cmd_sink_data_range169w556w571w	:	STD_LOGIC_VECTOR (0 DOWNTO 0);
	 SIGNAL  wire_w_lg_cmd_sink_valid558w	:	STD_LOGIC_VECTOR (0 DOWNTO 0);
	 SIGNAL  wire_w568w	:	STD_LOGIC_VECTOR (0 DOWNTO 0);
	 SIGNAL  wire_w562w	:	STD_LOGIC_VECTOR (0 DOWNTO 0);
	 SIGNAL  wire_w_lg_w_lg_w561w563w564w	:	STD_LOGIC_VECTOR (0 DOWNTO 0);
	 SIGNAL  wire_w_lg_reset560w	:	STD_LOGIC_VECTOR (0 DOWNTO 0);
	 SIGNAL  wire_w561w	:	STD_LOGIC_VECTOR (0 DOWNTO 0);
	 SIGNAL  wire_w566w	:	STD_LOGIC_VECTOR (0 DOWNTO 0);
	 SIGNAL  wire_w557w	:	STD_LOGIC_VECTOR (0 DOWNTO 0);
	 SIGNAL  wire_w_lg_w_cmd_sink_data_range169w556w	:	STD_LOGIC_VECTOR (0 DOWNTO 0);
	 SIGNAL  s_wire_nios1_limiter_altera_merlin_traffic_limiter_limiter_cmd_src_valid_483_dataout :	STD_LOGIC;
	 SIGNAL  s_wire_nios1_limiter_altera_merlin_traffic_limiter_limiter_cmd_src_valid_484_dataout :	STD_LOGIC;
	 SIGNAL  s_wire_nios1_limiter_altera_merlin_traffic_limiter_limiter_cmd_src_valid_485_dataout :	STD_LOGIC;
	 SIGNAL  s_wire_nios1_limiter_altera_merlin_traffic_limiter_limiter_cmd_src_valid_486_dataout :	STD_LOGIC;
	 SIGNAL  s_wire_nios1_limiter_altera_merlin_traffic_limiter_limiter_cmd_src_valid_487_dataout :	STD_LOGIC;
	 SIGNAL  s_wire_nios1_limiter_altera_merlin_traffic_limiter_limiter_cmd_src_valid_488_dataout :	STD_LOGIC;
	 SIGNAL  s_wire_nios1_limiter_altera_merlin_traffic_limiter_limiter_cmd_src_valid_489_dataout :	STD_LOGIC;
	 SIGNAL  s_wire_nios1_limiter_altera_merlin_traffic_limiter_limiter_cmd_src_valid_490_dataout :	STD_LOGIC;
	 SIGNAL  s_wire_nios1_limiter_altera_merlin_traffic_limiter_limiter_cmd_src_valid_491_dataout :	STD_LOGIC;
	 SIGNAL  s_wire_nios1_limiter_altera_merlin_traffic_limiter_limiter_cmd_src_valid_492_dataout :	STD_LOGIC;
	 SIGNAL  s_wire_nios1_limiter_altera_merlin_traffic_limiter_limiter_cmd_src_valid_493_dataout :	STD_LOGIC;
	 SIGNAL  s_wire_nios1_limiter_altera_merlin_traffic_limiter_limiter_cmd_src_valid_494_dataout :	STD_LOGIC;
	 SIGNAL  s_wire_nios1_limiter_altera_merlin_traffic_limiter_limiter_cmd_src_valid_495_dataout :	STD_LOGIC;
	 SIGNAL  s_wire_nios1_limiter_altera_merlin_traffic_limiter_limiter_cmd_src_valid_496_dataout :	STD_LOGIC;
	 SIGNAL  s_wire_nios1_limiter_altera_merlin_traffic_limiter_limiter_nonposted_cmd_accepted_456_dataout :	STD_LOGIC;
	 SIGNAL  s_wire_nios1_limiter_altera_merlin_traffic_limiter_limiter_response_accepted_458_dataout :	STD_LOGIC;
	 SIGNAL  s_wire_nios1_limiter_altera_merlin_traffic_limiter_limiter_save_dest_id_396_dataout :	STD_LOGIC;
	 SIGNAL  s_wire_nios1_limiter_altera_merlin_traffic_limiter_limiter_suppress_479_dataout :	STD_LOGIC;
	 SIGNAL  s_wire_nios1_limiter_altera_merlin_traffic_limiter_limiter_suppress_480_dataout :	STD_LOGIC;
	 SIGNAL  s_wire_vcc :	STD_LOGIC;
	 SIGNAL  wire_w_cmd_sink_data_range169w	:	STD_LOGIC_VECTOR (0 DOWNTO 0);
 BEGIN

	wire_gnd <= '0';
	wire_w_lg_w561w563w(0) <= wire_w561w(0) AND wire_w562w(0);
	wire_w_lg_w_lg_w_cmd_sink_data_range169w556w571w(0) <= wire_w_lg_w_cmd_sink_data_range169w556w(0) AND wire_nios1_limiter_altera_merlin_traffic_limiter_limiter_internal_valid_482m_dataout;
	wire_w_lg_cmd_sink_valid558w(0) <= cmd_sink_valid AND wire_w557w(0);
	wire_w568w(0) <= s_wire_nios1_limiter_altera_merlin_traffic_limiter_limiter_nonposted_cmd_accepted_456_dataout AND wire_ni_w567w(0);
	wire_w562w(0) <= s_wire_nios1_limiter_altera_merlin_traffic_limiter_limiter_response_accepted_458_dataout AND nios1_limiter_altera_merlin_traffic_limiter_limiter_pending_response_count_0_478q;
	wire_w_lg_w_lg_w561w563w564w(0) <= NOT wire_w_lg_w561w563w(0);
	wire_w_lg_reset560w(0) <= NOT reset;
	wire_w561w(0) <= NOT s_wire_nios1_limiter_altera_merlin_traffic_limiter_limiter_nonposted_cmd_accepted_456_dataout;
	wire_w566w(0) <= NOT s_wire_nios1_limiter_altera_merlin_traffic_limiter_limiter_response_accepted_458_dataout;
	wire_w557w(0) <= NOT s_wire_nios1_limiter_altera_merlin_traffic_limiter_limiter_suppress_480_dataout;
	wire_w_lg_w_cmd_sink_data_range169w556w(0) <= NOT wire_w_cmd_sink_data_range169w(0);
	cmd_sink_ready <= wire_nios1_limiter_altera_merlin_traffic_limiter_limiter_cmd_sink_ready_481m_dataout;
	cmd_src_channel <= ( cmd_sink_channel(13 DOWNTO 0));
	cmd_src_data <= ( cmd_sink_data(75 DOWNTO 0));
	cmd_src_endofpacket <= cmd_sink_endofpacket;
	cmd_src_startofpacket <= cmd_sink_startofpacket;
	cmd_src_valid <= ( wire_nios1_limiter_altera_merlin_traffic_limiter_limiter_cmd_src_valid_13_511m_dataout & wire_nios1_limiter_altera_merlin_traffic_limiter_limiter_cmd_src_valid_12_512m_dataout & wire_nios1_limiter_altera_merlin_traffic_limiter_limiter_cmd_src_valid_11_513m_dataout & wire_nios1_limiter_altera_merlin_traffic_limiter_limiter_cmd_src_valid_10_514m_dataout & wire_nios1_limiter_altera_merlin_traffic_limiter_limiter_cmd_src_valid_9_515m_dataout & wire_nios1_limiter_altera_merlin_traffic_limiter_limiter_cmd_src_valid_8_516m_dataout & wire_nios1_limiter_altera_merlin_traffic_limiter_limiter_cmd_src_valid_7_517m_dataout & wire_nios1_limiter_altera_merlin_traffic_limiter_limiter_cmd_src_valid_6_518m_dataout & wire_nios1_limiter_altera_merlin_traffic_limiter_limiter_cmd_src_valid_5_519m_dataout & wire_nios1_limiter_altera_merlin_traffic_limiter_limiter_cmd_src_valid_4_520m_dataout & wire_nios1_limiter_altera_merlin_traffic_limiter_limiter_cmd_src_valid_3_521m_dataout & wire_nios1_limiter_altera_merlin_traffic_limiter_limiter_cmd_src_valid_2_522m_dataout & wire_nios1_limiter_altera_merlin_traffic_limiter_limiter_cmd_src_valid_1_523m_dataout & wire_nios1_limiter_altera_merlin_traffic_limiter_limiter_cmd_src_valid_0_524m_dataout);
	rsp_sink_ready <= rsp_src_ready;
	rsp_src_channel <= ( rsp_sink_channel(13 DOWNTO 0));
	rsp_src_data <= ( rsp_sink_data(75 DOWNTO 0));
	rsp_src_endofpacket <= rsp_sink_endofpacket;
	rsp_src_startofpacket <= rsp_sink_startofpacket;
	rsp_src_valid <= rsp_sink_valid;
	s_wire_nios1_limiter_altera_merlin_traffic_limiter_limiter_cmd_src_valid_483_dataout <= (cmd_sink_valid AND cmd_sink_channel(0));
	s_wire_nios1_limiter_altera_merlin_traffic_limiter_limiter_cmd_src_valid_484_dataout <= (cmd_sink_valid AND cmd_sink_channel(1));
	s_wire_nios1_limiter_altera_merlin_traffic_limiter_limiter_cmd_src_valid_485_dataout <= (cmd_sink_valid AND cmd_sink_channel(2));
	s_wire_nios1_limiter_altera_merlin_traffic_limiter_limiter_cmd_src_valid_486_dataout <= (cmd_sink_valid AND cmd_sink_channel(3));
	s_wire_nios1_limiter_altera_merlin_traffic_limiter_limiter_cmd_src_valid_487_dataout <= (cmd_sink_valid AND cmd_sink_channel(4));
	s_wire_nios1_limiter_altera_merlin_traffic_limiter_limiter_cmd_src_valid_488_dataout <= (cmd_sink_valid AND cmd_sink_channel(5));
	s_wire_nios1_limiter_altera_merlin_traffic_limiter_limiter_cmd_src_valid_489_dataout <= (cmd_sink_valid AND cmd_sink_channel(6));
	s_wire_nios1_limiter_altera_merlin_traffic_limiter_limiter_cmd_src_valid_490_dataout <= (cmd_sink_valid AND cmd_sink_channel(7));
	s_wire_nios1_limiter_altera_merlin_traffic_limiter_limiter_cmd_src_valid_491_dataout <= (cmd_sink_valid AND cmd_sink_channel(8));
	s_wire_nios1_limiter_altera_merlin_traffic_limiter_limiter_cmd_src_valid_492_dataout <= (cmd_sink_valid AND cmd_sink_channel(9));
	s_wire_nios1_limiter_altera_merlin_traffic_limiter_limiter_cmd_src_valid_493_dataout <= (cmd_sink_valid AND cmd_sink_channel(10));
	s_wire_nios1_limiter_altera_merlin_traffic_limiter_limiter_cmd_src_valid_494_dataout <= (cmd_sink_valid AND cmd_sink_channel(11));
	s_wire_nios1_limiter_altera_merlin_traffic_limiter_limiter_cmd_src_valid_495_dataout <= (cmd_sink_valid AND cmd_sink_channel(12));
	s_wire_nios1_limiter_altera_merlin_traffic_limiter_limiter_cmd_src_valid_496_dataout <= (cmd_sink_valid AND cmd_sink_channel(13));
	s_wire_nios1_limiter_altera_merlin_traffic_limiter_limiter_nonposted_cmd_accepted_456_dataout <= (wire_w_lg_w_lg_w_cmd_sink_data_range169w556w571w(0) AND (cmd_sink_endofpacket AND cmd_src_ready));
	s_wire_nios1_limiter_altera_merlin_traffic_limiter_limiter_response_accepted_458_dataout <= (rsp_sink_endofpacket AND (rsp_sink_valid AND rsp_src_ready));
	s_wire_nios1_limiter_altera_merlin_traffic_limiter_limiter_save_dest_id_396_dataout <= (wire_w_lg_w_cmd_sink_data_range169w556w(0) AND wire_w_lg_cmd_sink_valid558w(0));
	s_wire_nios1_limiter_altera_merlin_traffic_limiter_limiter_suppress_479_dataout <= (wire_w_lg_w_cmd_sink_data_range169w556w(0) AND nios1_limiter_altera_merlin_traffic_limiter_limiter_has_pending_responses_449q);
	s_wire_nios1_limiter_altera_merlin_traffic_limiter_limiter_suppress_480_dataout <= (s_wire_nios1_limiter_altera_merlin_traffic_limiter_limiter_suppress_479_dataout AND (NOT ((((NOT (cmd_sink_data(71) XOR nios1_limiter_altera_merlin_traffic_limiter_limiter_last_dest_id_0_435q)) AND (NOT (cmd_sink_data(72) XOR nios1_limiter_altera_merlin_traffic_limiter_limiter_last_dest_id_1_434q))) AND (NOT (cmd_sink_data(73) XOR nios1_limiter_altera_merlin_traffic_limiter_limiter_last_dest_id_2_433q))) AND (NOT (cmd_sink_data(74) XOR nios1_limiter_altera_merlin_traffic_limiter_limiter_last_dest_id_3_432q)))));
	s_wire_vcc <= '1';
	wire_w_cmd_sink_data_range169w(0) <= cmd_sink_data(56);
	PROCESS (clk, reset)
	BEGIN
		IF (reset = '1') THEN
				nios1_limiter_altera_merlin_traffic_limiter_limiter_pending_response_count_0_478q <= '0';
		ELSIF (clk = '1' AND clk'event) THEN
			IF (wire_ni_ENA = '1') THEN
				nios1_limiter_altera_merlin_traffic_limiter_limiter_pending_response_count_0_478q <= wire_nios1_limiter_altera_merlin_traffic_limiter_limiter_next_pending_response_count_462m_dataout;
			END IF;
		END IF;
	END PROCESS;
	wire_ni_ENA <= (NOT (s_wire_nios1_limiter_altera_merlin_traffic_limiter_limiter_nonposted_cmd_accepted_456_dataout AND s_wire_nios1_limiter_altera_merlin_traffic_limiter_limiter_response_accepted_458_dataout));
	wire_ni_w567w(0) <= NOT nios1_limiter_altera_merlin_traffic_limiter_limiter_pending_response_count_0_478q;
	PROCESS (clk, reset)
	BEGIN
		IF (reset = '1') THEN
				nios1_limiter_altera_merlin_traffic_limiter_limiter_has_pending_responses_449q <= '0';
		ELSIF (clk = '1' AND clk'event) THEN
				nios1_limiter_altera_merlin_traffic_limiter_limiter_has_pending_responses_449q <= (wire_nl_w565w(0) OR (wire_w566w(0) AND wire_w568w(0)));
		END IF;
	END PROCESS;
	wire_nl_w565w(0) <= nios1_limiter_altera_merlin_traffic_limiter_limiter_has_pending_responses_449q AND wire_w_lg_w_lg_w561w563w564w(0);
	PROCESS (clk, reset)
	BEGIN
		IF (reset = '1') THEN
				nios1_limiter_altera_merlin_traffic_limiter_limiter_last_channel_0_476q <= '0';
				nios1_limiter_altera_merlin_traffic_limiter_limiter_last_channel_10_439q <= '0';
				nios1_limiter_altera_merlin_traffic_limiter_limiter_last_channel_11_438q <= '0';
				nios1_limiter_altera_merlin_traffic_limiter_limiter_last_channel_12_437q <= '0';
				nios1_limiter_altera_merlin_traffic_limiter_limiter_last_channel_13_436q <= '0';
				nios1_limiter_altera_merlin_traffic_limiter_limiter_last_channel_1_448q <= '0';
				nios1_limiter_altera_merlin_traffic_limiter_limiter_last_channel_2_447q <= '0';
				nios1_limiter_altera_merlin_traffic_limiter_limiter_last_channel_3_446q <= '0';
				nios1_limiter_altera_merlin_traffic_limiter_limiter_last_channel_4_445q <= '0';
				nios1_limiter_altera_merlin_traffic_limiter_limiter_last_channel_5_444q <= '0';
				nios1_limiter_altera_merlin_traffic_limiter_limiter_last_channel_6_443q <= '0';
				nios1_limiter_altera_merlin_traffic_limiter_limiter_last_channel_7_442q <= '0';
				nios1_limiter_altera_merlin_traffic_limiter_limiter_last_channel_8_441q <= '0';
				nios1_limiter_altera_merlin_traffic_limiter_limiter_last_channel_9_440q <= '0';
				nios1_limiter_altera_merlin_traffic_limiter_limiter_last_dest_id_0_435q <= '0';
				nios1_limiter_altera_merlin_traffic_limiter_limiter_last_dest_id_1_434q <= '0';
				nios1_limiter_altera_merlin_traffic_limiter_limiter_last_dest_id_2_433q <= '0';
				nios1_limiter_altera_merlin_traffic_limiter_limiter_last_dest_id_3_432q <= '0';
		ELSIF (clk = '1' AND clk'event) THEN
			IF (s_wire_nios1_limiter_altera_merlin_traffic_limiter_limiter_save_dest_id_396_dataout = '1') THEN
				nios1_limiter_altera_merlin_traffic_limiter_limiter_last_channel_0_476q <= cmd_sink_channel(0);
				nios1_limiter_altera_merlin_traffic_limiter_limiter_last_channel_10_439q <= cmd_sink_channel(10);
				nios1_limiter_altera_merlin_traffic_limiter_limiter_last_channel_11_438q <= cmd_sink_channel(11);
				nios1_limiter_altera_merlin_traffic_limiter_limiter_last_channel_12_437q <= cmd_sink_channel(12);
				nios1_limiter_altera_merlin_traffic_limiter_limiter_last_channel_13_436q <= cmd_sink_channel(13);
				nios1_limiter_altera_merlin_traffic_limiter_limiter_last_channel_1_448q <= cmd_sink_channel(1);
				nios1_limiter_altera_merlin_traffic_limiter_limiter_last_channel_2_447q <= cmd_sink_channel(2);
				nios1_limiter_altera_merlin_traffic_limiter_limiter_last_channel_3_446q <= cmd_sink_channel(3);
				nios1_limiter_altera_merlin_traffic_limiter_limiter_last_channel_4_445q <= cmd_sink_channel(4);
				nios1_limiter_altera_merlin_traffic_limiter_limiter_last_channel_5_444q <= cmd_sink_channel(5);
				nios1_limiter_altera_merlin_traffic_limiter_limiter_last_channel_6_443q <= cmd_sink_channel(6);
				nios1_limiter_altera_merlin_traffic_limiter_limiter_last_channel_7_442q <= cmd_sink_channel(7);
				nios1_limiter_altera_merlin_traffic_limiter_limiter_last_channel_8_441q <= cmd_sink_channel(8);
				nios1_limiter_altera_merlin_traffic_limiter_limiter_last_channel_9_440q <= cmd_sink_channel(9);
				nios1_limiter_altera_merlin_traffic_limiter_limiter_last_dest_id_0_435q <= cmd_sink_data(71);
				nios1_limiter_altera_merlin_traffic_limiter_limiter_last_dest_id_1_434q <= cmd_sink_data(72);
				nios1_limiter_altera_merlin_traffic_limiter_limiter_last_dest_id_2_433q <= cmd_sink_data(73);
				nios1_limiter_altera_merlin_traffic_limiter_limiter_last_dest_id_3_432q <= cmd_sink_data(74);
			END IF;
		END IF;
	END PROCESS;
	wire_nios1_limiter_altera_merlin_traffic_limiter_limiter_cmd_sink_ready_481m_dataout <= cmd_src_ready AND NOT(s_wire_nios1_limiter_altera_merlin_traffic_limiter_limiter_suppress_480_dataout);
	wire_nios1_limiter_altera_merlin_traffic_limiter_limiter_cmd_src_valid_0_524m_dataout <= (nios1_limiter_altera_merlin_traffic_limiter_limiter_last_channel_0_476q AND s_wire_nios1_limiter_altera_merlin_traffic_limiter_limiter_cmd_src_valid_483_dataout) WHEN s_wire_nios1_limiter_altera_merlin_traffic_limiter_limiter_suppress_479_dataout = '1'  ELSE s_wire_nios1_limiter_altera_merlin_traffic_limiter_limiter_cmd_src_valid_483_dataout;
	wire_nios1_limiter_altera_merlin_traffic_limiter_limiter_cmd_src_valid_10_514m_dataout <= (nios1_limiter_altera_merlin_traffic_limiter_limiter_last_channel_10_439q AND s_wire_nios1_limiter_altera_merlin_traffic_limiter_limiter_cmd_src_valid_493_dataout) WHEN s_wire_nios1_limiter_altera_merlin_traffic_limiter_limiter_suppress_479_dataout = '1'  ELSE s_wire_nios1_limiter_altera_merlin_traffic_limiter_limiter_cmd_src_valid_493_dataout;
	wire_nios1_limiter_altera_merlin_traffic_limiter_limiter_cmd_src_valid_11_513m_dataout <= (nios1_limiter_altera_merlin_traffic_limiter_limiter_last_channel_11_438q AND s_wire_nios1_limiter_altera_merlin_traffic_limiter_limiter_cmd_src_valid_494_dataout) WHEN s_wire_nios1_limiter_altera_merlin_traffic_limiter_limiter_suppress_479_dataout = '1'  ELSE s_wire_nios1_limiter_altera_merlin_traffic_limiter_limiter_cmd_src_valid_494_dataout;
	wire_nios1_limiter_altera_merlin_traffic_limiter_limiter_cmd_src_valid_12_512m_dataout <= (nios1_limiter_altera_merlin_traffic_limiter_limiter_last_channel_12_437q AND s_wire_nios1_limiter_altera_merlin_traffic_limiter_limiter_cmd_src_valid_495_dataout) WHEN s_wire_nios1_limiter_altera_merlin_traffic_limiter_limiter_suppress_479_dataout = '1'  ELSE s_wire_nios1_limiter_altera_merlin_traffic_limiter_limiter_cmd_src_valid_495_dataout;
	wire_nios1_limiter_altera_merlin_traffic_limiter_limiter_cmd_src_valid_13_511m_dataout <= (nios1_limiter_altera_merlin_traffic_limiter_limiter_last_channel_13_436q AND s_wire_nios1_limiter_altera_merlin_traffic_limiter_limiter_cmd_src_valid_496_dataout) WHEN s_wire_nios1_limiter_altera_merlin_traffic_limiter_limiter_suppress_479_dataout = '1'  ELSE s_wire_nios1_limiter_altera_merlin_traffic_limiter_limiter_cmd_src_valid_496_dataout;
	wire_nios1_limiter_altera_merlin_traffic_limiter_limiter_cmd_src_valid_1_523m_dataout <= (nios1_limiter_altera_merlin_traffic_limiter_limiter_last_channel_1_448q AND s_wire_nios1_limiter_altera_merlin_traffic_limiter_limiter_cmd_src_valid_484_dataout) WHEN s_wire_nios1_limiter_altera_merlin_traffic_limiter_limiter_suppress_479_dataout = '1'  ELSE s_wire_nios1_limiter_altera_merlin_traffic_limiter_limiter_cmd_src_valid_484_dataout;
	wire_nios1_limiter_altera_merlin_traffic_limiter_limiter_cmd_src_valid_2_522m_dataout <= (nios1_limiter_altera_merlin_traffic_limiter_limiter_last_channel_2_447q AND s_wire_nios1_limiter_altera_merlin_traffic_limiter_limiter_cmd_src_valid_485_dataout) WHEN s_wire_nios1_limiter_altera_merlin_traffic_limiter_limiter_suppress_479_dataout = '1'  ELSE s_wire_nios1_limiter_altera_merlin_traffic_limiter_limiter_cmd_src_valid_485_dataout;
	wire_nios1_limiter_altera_merlin_traffic_limiter_limiter_cmd_src_valid_3_521m_dataout <= (nios1_limiter_altera_merlin_traffic_limiter_limiter_last_channel_3_446q AND s_wire_nios1_limiter_altera_merlin_traffic_limiter_limiter_cmd_src_valid_486_dataout) WHEN s_wire_nios1_limiter_altera_merlin_traffic_limiter_limiter_suppress_479_dataout = '1'  ELSE s_wire_nios1_limiter_altera_merlin_traffic_limiter_limiter_cmd_src_valid_486_dataout;
	wire_nios1_limiter_altera_merlin_traffic_limiter_limiter_cmd_src_valid_4_520m_dataout <= (nios1_limiter_altera_merlin_traffic_limiter_limiter_last_channel_4_445q AND s_wire_nios1_limiter_altera_merlin_traffic_limiter_limiter_cmd_src_valid_487_dataout) WHEN s_wire_nios1_limiter_altera_merlin_traffic_limiter_limiter_suppress_479_dataout = '1'  ELSE s_wire_nios1_limiter_altera_merlin_traffic_limiter_limiter_cmd_src_valid_487_dataout;
	wire_nios1_limiter_altera_merlin_traffic_limiter_limiter_cmd_src_valid_5_519m_dataout <= (nios1_limiter_altera_merlin_traffic_limiter_limiter_last_channel_5_444q AND s_wire_nios1_limiter_altera_merlin_traffic_limiter_limiter_cmd_src_valid_488_dataout) WHEN s_wire_nios1_limiter_altera_merlin_traffic_limiter_limiter_suppress_479_dataout = '1'  ELSE s_wire_nios1_limiter_altera_merlin_traffic_limiter_limiter_cmd_src_valid_488_dataout;
	wire_nios1_limiter_altera_merlin_traffic_limiter_limiter_cmd_src_valid_6_518m_dataout <= (nios1_limiter_altera_merlin_traffic_limiter_limiter_last_channel_6_443q AND s_wire_nios1_limiter_altera_merlin_traffic_limiter_limiter_cmd_src_valid_489_dataout) WHEN s_wire_nios1_limiter_altera_merlin_traffic_limiter_limiter_suppress_479_dataout = '1'  ELSE s_wire_nios1_limiter_altera_merlin_traffic_limiter_limiter_cmd_src_valid_489_dataout;
	wire_nios1_limiter_altera_merlin_traffic_limiter_limiter_cmd_src_valid_7_517m_dataout <= (nios1_limiter_altera_merlin_traffic_limiter_limiter_last_channel_7_442q AND s_wire_nios1_limiter_altera_merlin_traffic_limiter_limiter_cmd_src_valid_490_dataout) WHEN s_wire_nios1_limiter_altera_merlin_traffic_limiter_limiter_suppress_479_dataout = '1'  ELSE s_wire_nios1_limiter_altera_merlin_traffic_limiter_limiter_cmd_src_valid_490_dataout;
	wire_nios1_limiter_altera_merlin_traffic_limiter_limiter_cmd_src_valid_8_516m_dataout <= (nios1_limiter_altera_merlin_traffic_limiter_limiter_last_channel_8_441q AND s_wire_nios1_limiter_altera_merlin_traffic_limiter_limiter_cmd_src_valid_491_dataout) WHEN s_wire_nios1_limiter_altera_merlin_traffic_limiter_limiter_suppress_479_dataout = '1'  ELSE s_wire_nios1_limiter_altera_merlin_traffic_limiter_limiter_cmd_src_valid_491_dataout;
	wire_nios1_limiter_altera_merlin_traffic_limiter_limiter_cmd_src_valid_9_515m_dataout <= (nios1_limiter_altera_merlin_traffic_limiter_limiter_last_channel_9_440q AND s_wire_nios1_limiter_altera_merlin_traffic_limiter_limiter_cmd_src_valid_492_dataout) WHEN s_wire_nios1_limiter_altera_merlin_traffic_limiter_limiter_suppress_479_dataout = '1'  ELSE s_wire_nios1_limiter_altera_merlin_traffic_limiter_limiter_cmd_src_valid_492_dataout;
	wire_nios1_limiter_altera_merlin_traffic_limiter_limiter_internal_valid_482m_dataout <= cmd_sink_valid AND NOT(s_wire_nios1_limiter_altera_merlin_traffic_limiter_limiter_suppress_480_dataout);
	wire_nios1_limiter_altera_merlin_traffic_limiter_limiter_next_pending_response_count_460m_dataout <= wire_nios1_limiter_altera_merlin_traffic_limiter_limiter_add0_459_o(0) WHEN s_wire_nios1_limiter_altera_merlin_traffic_limiter_limiter_nonposted_cmd_accepted_456_dataout = '1'  ELSE nios1_limiter_altera_merlin_traffic_limiter_limiter_pending_response_count_0_478q;
	wire_nios1_limiter_altera_merlin_traffic_limiter_limiter_next_pending_response_count_462m_dataout <= wire_nios1_limiter_altera_merlin_traffic_limiter_limiter_add1_461_o(1) WHEN s_wire_nios1_limiter_altera_merlin_traffic_limiter_limiter_response_accepted_458_dataout = '1'  ELSE wire_nios1_limiter_altera_merlin_traffic_limiter_limiter_next_pending_response_count_460m_dataout;
	wire_nios1_limiter_altera_merlin_traffic_limiter_limiter_add0_459_a(0) <= ( nios1_limiter_altera_merlin_traffic_limiter_limiter_pending_response_count_0_478q);
	wire_nios1_limiter_altera_merlin_traffic_limiter_limiter_add0_459_b <= ( "1");
	nios1_limiter_altera_merlin_traffic_limiter_limiter_add0_459 :  oper_add
	  GENERIC MAP (
		sgate_representation => 0,
		width_a => 1,
		width_b => 1,
		width_o => 1
	  )
	  PORT MAP ( 
		a => wire_nios1_limiter_altera_merlin_traffic_limiter_limiter_add0_459_a,
		b => wire_nios1_limiter_altera_merlin_traffic_limiter_limiter_add0_459_b,
		cin => wire_gnd,
		o => wire_nios1_limiter_altera_merlin_traffic_limiter_limiter_add0_459_o
	  );
	wire_nios1_limiter_altera_merlin_traffic_limiter_limiter_add1_461_a <= ( nios1_limiter_altera_merlin_traffic_limiter_limiter_pending_response_count_0_478q & "1");
	wire_nios1_limiter_altera_merlin_traffic_limiter_limiter_add1_461_b <= ( "0" & "1");
	nios1_limiter_altera_merlin_traffic_limiter_limiter_add1_461 :  oper_add
	  GENERIC MAP (
		sgate_representation => 0,
		width_a => 2,
		width_b => 2,
		width_o => 2
	  )
	  PORT MAP ( 
		a => wire_nios1_limiter_altera_merlin_traffic_limiter_limiter_add1_461_a,
		b => wire_nios1_limiter_altera_merlin_traffic_limiter_limiter_add1_461_b,
		cin => wire_gnd,
		o => wire_nios1_limiter_altera_merlin_traffic_limiter_limiter_add1_461_o
	  );

 END RTL; --Nios1_limiter
--synopsys translate_on
--VALID FILE
