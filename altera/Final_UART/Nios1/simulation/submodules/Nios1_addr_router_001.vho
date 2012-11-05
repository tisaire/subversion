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

--synthesis_resources = mux21 130 
 LIBRARY ieee;
 USE ieee.std_logic_1164.all;

 ENTITY  Nios1_addr_router_001 IS 
	 PORT 
	 ( 
		 clk	:	IN  STD_LOGIC;
		 reset	:	IN  STD_LOGIC;
		 sink_data	:	IN  STD_LOGIC_VECTOR (75 DOWNTO 0);
		 sink_endofpacket	:	IN  STD_LOGIC;
		 sink_ready	:	OUT  STD_LOGIC;
		 sink_startofpacket	:	IN  STD_LOGIC;
		 sink_valid	:	IN  STD_LOGIC;
		 src_channel	:	OUT  STD_LOGIC_VECTOR (13 DOWNTO 0);
		 src_data	:	OUT  STD_LOGIC_VECTOR (75 DOWNTO 0);
		 src_endofpacket	:	OUT  STD_LOGIC;
		 src_ready	:	IN  STD_LOGIC;
		 src_startofpacket	:	OUT  STD_LOGIC;
		 src_valid	:	OUT  STD_LOGIC
	 ); 
 END Nios1_addr_router_001;

 ARCHITECTURE RTL OF Nios1_addr_router_001 IS

	 ATTRIBUTE synthesis_clearbox : natural;
	 ATTRIBUTE synthesis_clearbox OF RTL : ARCHITECTURE IS 1;
	 SIGNAL	wire_nios1_addr_router_001_src_channel_102m_dataout	:	STD_LOGIC;
	 SIGNAL	wire_nios1_addr_router_001_src_channel_106m_dataout	:	STD_LOGIC;
	 SIGNAL	wire_nios1_addr_router_001_src_channel_107m_dataout	:	STD_LOGIC;
	 SIGNAL	wire_nios1_addr_router_001_src_channel_110m_dataout	:	STD_LOGIC;
	 SIGNAL	wire_nios1_addr_router_001_src_channel_111m_dataout	:	STD_LOGIC;
	 SIGNAL	wire_nios1_addr_router_001_src_channel_120m_dataout	:	STD_LOGIC;
	 SIGNAL	wire_nios1_addr_router_001_src_channel_121m_dataout	:	STD_LOGIC;
	 SIGNAL	wire_nios1_addr_router_001_src_channel_125m_dataout	:	STD_LOGIC;
	 SIGNAL	wire_nios1_addr_router_001_src_channel_126m_dataout	:	STD_LOGIC;
	 SIGNAL	wire_nios1_addr_router_001_src_channel_129m_dataout	:	STD_LOGIC;
	 SIGNAL	wire_nios1_addr_router_001_src_channel_130m_dataout	:	STD_LOGIC;
	 SIGNAL	wire_nios1_addr_router_001_src_channel_136m_dataout	:	STD_LOGIC;
	 SIGNAL	wire_nios1_addr_router_001_src_channel_139m_dataout	:	STD_LOGIC;
	 SIGNAL	wire_nios1_addr_router_001_src_channel_140m_dataout	:	STD_LOGIC;
	 SIGNAL	wire_nios1_addr_router_001_src_channel_144m_dataout	:	STD_LOGIC;
	 SIGNAL	wire_nios1_addr_router_001_src_channel_145m_dataout	:	STD_LOGIC;
	 SIGNAL	wire_nios1_addr_router_001_src_channel_148m_dataout	:	STD_LOGIC;
	 SIGNAL	wire_nios1_addr_router_001_src_channel_149m_dataout	:	STD_LOGIC;
	 SIGNAL	wire_nios1_addr_router_001_src_channel_155m_dataout	:	STD_LOGIC;
	 SIGNAL	wire_nios1_addr_router_001_src_channel_158m_dataout	:	STD_LOGIC;
	 SIGNAL	wire_nios1_addr_router_001_src_channel_159m_dataout	:	STD_LOGIC;
	 SIGNAL	wire_nios1_addr_router_001_src_channel_162m_dataout	:	STD_LOGIC;
	 SIGNAL	wire_nios1_addr_router_001_src_channel_163m_dataout	:	STD_LOGIC;
	 SIGNAL	wire_nios1_addr_router_001_src_channel_164m_dataout	:	STD_LOGIC;
	 SIGNAL	wire_nios1_addr_router_001_src_channel_167m_dataout	:	STD_LOGIC;
	 SIGNAL	wire_nios1_addr_router_001_src_channel_168m_dataout	:	STD_LOGIC;
	 SIGNAL	wire_nios1_addr_router_001_src_channel_174m_dataout	:	STD_LOGIC;
	 SIGNAL	wire_nios1_addr_router_001_src_channel_177m_dataout	:	STD_LOGIC;
	 SIGNAL	wire_nios1_addr_router_001_src_channel_178m_dataout	:	STD_LOGIC;
	 SIGNAL	wire_nios1_addr_router_001_src_channel_180m_dataout	:	STD_LOGIC;
	 SIGNAL	wire_nios1_addr_router_001_src_channel_181m_dataout	:	STD_LOGIC;
	 SIGNAL	wire_nios1_addr_router_001_src_channel_182m_dataout	:	STD_LOGIC;
	 SIGNAL	wire_nios1_addr_router_001_src_channel_183m_dataout	:	STD_LOGIC;
	 SIGNAL	wire_nios1_addr_router_001_src_channel_186m_dataout	:	STD_LOGIC;
	 SIGNAL	wire_nios1_addr_router_001_src_channel_187m_dataout	:	STD_LOGIC;
	 SIGNAL	wire_nios1_addr_router_001_src_channel_193m_dataout	:	STD_LOGIC;
	 SIGNAL	wire_nios1_addr_router_001_src_channel_196m_dataout	:	STD_LOGIC;
	 SIGNAL	wire_nios1_addr_router_001_src_channel_197m_dataout	:	STD_LOGIC;
	 SIGNAL	wire_nios1_addr_router_001_src_channel_198m_dataout	:	STD_LOGIC;
	 SIGNAL	wire_nios1_addr_router_001_src_channel_199m_dataout	:	STD_LOGIC;
	 SIGNAL	wire_nios1_addr_router_001_src_channel_200m_dataout	:	STD_LOGIC;
	 SIGNAL	wire_nios1_addr_router_001_src_channel_201m_dataout	:	STD_LOGIC;
	 SIGNAL	wire_nios1_addr_router_001_src_channel_202m_dataout	:	STD_LOGIC;
	 SIGNAL	wire_nios1_addr_router_001_src_channel_205m_dataout	:	STD_LOGIC;
	 SIGNAL	wire_nios1_addr_router_001_src_channel_206m_dataout	:	STD_LOGIC;
	 SIGNAL	wire_nios1_addr_router_001_src_channel_212m_dataout	:	STD_LOGIC;
	 SIGNAL	wire_nios1_addr_router_001_src_channel_214m_dataout	:	STD_LOGIC;
	 SIGNAL	wire_nios1_addr_router_001_src_channel_215m_dataout	:	STD_LOGIC;
	 SIGNAL	wire_nios1_addr_router_001_src_channel_216m_dataout	:	STD_LOGIC;
	 SIGNAL	wire_nios1_addr_router_001_src_channel_217m_dataout	:	STD_LOGIC;
	 SIGNAL	wire_nios1_addr_router_001_src_channel_218m_dataout	:	STD_LOGIC;
	 SIGNAL	wire_nios1_addr_router_001_src_channel_219m_dataout	:	STD_LOGIC;
	 SIGNAL	wire_nios1_addr_router_001_src_channel_220m_dataout	:	STD_LOGIC;
	 SIGNAL	wire_nios1_addr_router_001_src_channel_221m_dataout	:	STD_LOGIC;
	 SIGNAL	wire_nios1_addr_router_001_src_channel_224m_dataout	:	STD_LOGIC;
	 SIGNAL	wire_nios1_addr_router_001_src_channel_225m_dataout	:	STD_LOGIC;
	 SIGNAL	wire_nios1_addr_router_001_src_channel_231m_dataout	:	STD_LOGIC;
	 SIGNAL	wire_nios1_addr_router_001_src_channel_232m_dataout	:	STD_LOGIC;
	 SIGNAL	wire_nios1_addr_router_001_src_channel_233m_dataout	:	STD_LOGIC;
	 SIGNAL	wire_nios1_addr_router_001_src_channel_234m_dataout	:	STD_LOGIC;
	 SIGNAL	wire_nios1_addr_router_001_src_channel_235m_dataout	:	STD_LOGIC;
	 SIGNAL	wire_nios1_addr_router_001_src_channel_236m_dataout	:	STD_LOGIC;
	 SIGNAL	wire_nios1_addr_router_001_src_channel_237m_dataout	:	STD_LOGIC;
	 SIGNAL	wire_nios1_addr_router_001_src_channel_238m_dataout	:	STD_LOGIC;
	 SIGNAL	wire_nios1_addr_router_001_src_channel_239m_dataout	:	STD_LOGIC;
	 SIGNAL	wire_nios1_addr_router_001_src_channel_240m_dataout	:	STD_LOGIC;
	 SIGNAL	wire_nios1_addr_router_001_src_channel_243m_dataout	:	STD_LOGIC;
	 SIGNAL	wire_nios1_addr_router_001_src_channel_244m_dataout	:	STD_LOGIC;
	 SIGNAL	wire_nios1_addr_router_001_src_channel_250m_dataout	:	STD_LOGIC;
	 SIGNAL	wire_nios1_addr_router_001_src_channel_251m_dataout	:	STD_LOGIC;
	 SIGNAL	wire_nios1_addr_router_001_src_channel_252m_dataout	:	STD_LOGIC;
	 SIGNAL	wire_nios1_addr_router_001_src_channel_253m_dataout	:	STD_LOGIC;
	 SIGNAL	wire_nios1_addr_router_001_src_channel_254m_dataout	:	STD_LOGIC;
	 SIGNAL	wire_nios1_addr_router_001_src_channel_255m_dataout	:	STD_LOGIC;
	 SIGNAL	wire_nios1_addr_router_001_src_channel_256m_dataout	:	STD_LOGIC;
	 SIGNAL	wire_nios1_addr_router_001_src_channel_257m_dataout	:	STD_LOGIC;
	 SIGNAL	wire_nios1_addr_router_001_src_channel_258m_dataout	:	STD_LOGIC;
	 SIGNAL	wire_nios1_addr_router_001_src_channel_259m_dataout	:	STD_LOGIC;
	 SIGNAL	wire_nios1_addr_router_001_src_channel_261m_dataout	:	STD_LOGIC;
	 SIGNAL	wire_nios1_addr_router_001_src_channel_262m_dataout	:	STD_LOGIC;
	 SIGNAL	wire_nios1_addr_router_001_src_channel_263m_dataout	:	STD_LOGIC;
	 SIGNAL	wire_nios1_addr_router_001_src_channel_53m_dataout	:	STD_LOGIC;
	 SIGNAL	wire_nios1_addr_router_001_src_channel_54m_dataout	:	STD_LOGIC;
	 SIGNAL	wire_nios1_addr_router_001_src_channel_69m_dataout	:	STD_LOGIC;
	 SIGNAL	wire_nios1_addr_router_001_src_channel_72m_dataout	:	STD_LOGIC;
	 SIGNAL	wire_nios1_addr_router_001_src_channel_73m_dataout	:	STD_LOGIC;
	 SIGNAL	wire_nios1_addr_router_001_src_channel_87m_dataout	:	STD_LOGIC;
	 SIGNAL	wire_nios1_addr_router_001_src_channel_88m_dataout	:	STD_LOGIC;
	 SIGNAL	wire_nios1_addr_router_001_src_channel_91m_dataout	:	STD_LOGIC;
	 SIGNAL	wire_nios1_addr_router_001_src_channel_92m_dataout	:	STD_LOGIC;
	 SIGNAL	wire_nios1_addr_router_001_src_data_112m_dataout	:	STD_LOGIC;
	 SIGNAL	wire_nios1_addr_router_001_src_data_113m_dataout	:	STD_LOGIC;
	 SIGNAL	wire_nios1_addr_router_001_src_data_115m_dataout	:	STD_LOGIC;
	 SIGNAL	wire_nios1_addr_router_001_src_data_131m_dataout	:	STD_LOGIC;
	 SIGNAL	wire_nios1_addr_router_001_src_data_132m_dataout	:	STD_LOGIC;
	 SIGNAL	wire_nios1_addr_router_001_src_data_133m_dataout	:	STD_LOGIC;
	 SIGNAL	wire_nios1_addr_router_001_src_data_134m_dataout	:	STD_LOGIC;
	 SIGNAL	wire_nios1_addr_router_001_src_data_150m_dataout	:	STD_LOGIC;
	 SIGNAL	wire_nios1_addr_router_001_src_data_151m_dataout	:	STD_LOGIC;
	 SIGNAL	wire_nios1_addr_router_001_src_data_152m_dataout	:	STD_LOGIC;
	 SIGNAL	wire_nios1_addr_router_001_src_data_153m_dataout	:	STD_LOGIC;
	 SIGNAL	wire_nios1_addr_router_001_src_data_169m_dataout	:	STD_LOGIC;
	 SIGNAL	wire_nios1_addr_router_001_src_data_170m_dataout	:	STD_LOGIC;
	 SIGNAL	wire_nios1_addr_router_001_src_data_171m_dataout	:	STD_LOGIC;
	 SIGNAL	wire_nios1_addr_router_001_src_data_172m_dataout	:	STD_LOGIC;
	 SIGNAL	wire_nios1_addr_router_001_src_data_188m_dataout	:	STD_LOGIC;
	 SIGNAL	wire_nios1_addr_router_001_src_data_189m_dataout	:	STD_LOGIC;
	 SIGNAL	wire_nios1_addr_router_001_src_data_190m_dataout	:	STD_LOGIC;
	 SIGNAL	wire_nios1_addr_router_001_src_data_191m_dataout	:	STD_LOGIC;
	 SIGNAL	wire_nios1_addr_router_001_src_data_207m_dataout	:	STD_LOGIC;
	 SIGNAL	wire_nios1_addr_router_001_src_data_208m_dataout	:	STD_LOGIC;
	 SIGNAL	wire_nios1_addr_router_001_src_data_209m_dataout	:	STD_LOGIC;
	 SIGNAL	wire_nios1_addr_router_001_src_data_210m_dataout	:	STD_LOGIC;
	 SIGNAL	wire_nios1_addr_router_001_src_data_226m_dataout	:	STD_LOGIC;
	 SIGNAL	wire_nios1_addr_router_001_src_data_227m_dataout	:	STD_LOGIC;
	 SIGNAL	wire_nios1_addr_router_001_src_data_228m_dataout	:	STD_LOGIC;
	 SIGNAL	wire_nios1_addr_router_001_src_data_229m_dataout	:	STD_LOGIC;
	 SIGNAL	wire_nios1_addr_router_001_src_data_245m_dataout	:	STD_LOGIC;
	 SIGNAL	wire_nios1_addr_router_001_src_data_246m_dataout	:	STD_LOGIC;
	 SIGNAL	wire_nios1_addr_router_001_src_data_247m_dataout	:	STD_LOGIC;
	 SIGNAL	wire_nios1_addr_router_001_src_data_248m_dataout	:	STD_LOGIC;
	 SIGNAL	wire_nios1_addr_router_001_src_data_264m_dataout	:	STD_LOGIC;
	 SIGNAL	wire_nios1_addr_router_001_src_data_265m_dataout	:	STD_LOGIC;
	 SIGNAL	wire_nios1_addr_router_001_src_data_266m_dataout	:	STD_LOGIC;
	 SIGNAL	wire_nios1_addr_router_001_src_data_267m_dataout	:	STD_LOGIC;
	 SIGNAL	wire_nios1_addr_router_001_src_data_58m_dataout	:	STD_LOGIC;
	 SIGNAL	wire_nios1_addr_router_001_src_data_75m_dataout	:	STD_LOGIC;
	 SIGNAL	wire_nios1_addr_router_001_src_data_77m_dataout	:	STD_LOGIC;
	 SIGNAL	wire_nios1_addr_router_001_src_data_94m_dataout	:	STD_LOGIC;
	 SIGNAL	wire_nios1_addr_router_001_src_data_96m_dataout	:	STD_LOGIC;
	 SIGNAL  wire_w_lg_w_sink_data_range122w363w	:	STD_LOGIC_VECTOR (0 DOWNTO 0);
	 SIGNAL  wire_w_lg_w_sink_data_range125w269w	:	STD_LOGIC_VECTOR (0 DOWNTO 0);
	 SIGNAL  wire_w_lg_w_sink_data_range143w237w	:	STD_LOGIC_VECTOR (0 DOWNTO 0);
	 SIGNAL  wire_w1w	:	STD_LOGIC_VECTOR (0 DOWNTO 0);
	 SIGNAL  wire_w_lg_w_sink_data_range125w249w	:	STD_LOGIC_VECTOR (0 DOWNTO 0);
	 SIGNAL  wire_w_lg_w_sink_data_range128w250w	:	STD_LOGIC_VECTOR (0 DOWNTO 0);
	 SIGNAL  wire_w_lg_w_sink_data_range146w236w	:	STD_LOGIC_VECTOR (0 DOWNTO 0);
	 SIGNAL  s_wire_nios1_addr_router_001_src_channel_10_824_dataout :	STD_LOGIC;
	 SIGNAL  s_wire_nios1_addr_router_001_src_channel_11_857_dataout :	STD_LOGIC;
	 SIGNAL  s_wire_nios1_addr_router_001_src_channel_12_890_dataout :	STD_LOGIC;
	 SIGNAL  s_wire_nios1_addr_router_001_src_channel_13_923_dataout :	STD_LOGIC;
	 SIGNAL  s_wire_nios1_addr_router_001_src_channel_1_527_dataout :	STD_LOGIC;
	 SIGNAL  s_wire_nios1_addr_router_001_src_channel_2_560_dataout :	STD_LOGIC;
	 SIGNAL  s_wire_nios1_addr_router_001_src_channel_3_593_dataout :	STD_LOGIC;
	 SIGNAL  s_wire_nios1_addr_router_001_src_channel_4_626_dataout :	STD_LOGIC;
	 SIGNAL  s_wire_nios1_addr_router_001_src_channel_5_659_dataout :	STD_LOGIC;
	 SIGNAL  s_wire_nios1_addr_router_001_src_channel_6_692_dataout :	STD_LOGIC;
	 SIGNAL  s_wire_nios1_addr_router_001_src_channel_7_725_dataout :	STD_LOGIC;
	 SIGNAL  s_wire_nios1_addr_router_001_src_channel_8_758_dataout :	STD_LOGIC;
	 SIGNAL  s_wire_nios1_addr_router_001_src_channel_9_791_dataout :	STD_LOGIC;
	 SIGNAL  wire_w_sink_data_range122w	:	STD_LOGIC_VECTOR (0 DOWNTO 0);
	 SIGNAL  wire_w_sink_data_range125w	:	STD_LOGIC_VECTOR (0 DOWNTO 0);
	 SIGNAL  wire_w_sink_data_range128w	:	STD_LOGIC_VECTOR (0 DOWNTO 0);
	 SIGNAL  wire_w_sink_data_range143w	:	STD_LOGIC_VECTOR (0 DOWNTO 0);
	 SIGNAL  wire_w_sink_data_range146w	:	STD_LOGIC_VECTOR (0 DOWNTO 0);
 BEGIN

	wire_w_lg_w_sink_data_range122w363w(0) <= wire_w_sink_data_range122w(0) AND wire_w_lg_w_sink_data_range125w249w(0);
	wire_w_lg_w_sink_data_range125w269w(0) <= wire_w_sink_data_range125w(0) AND wire_w_lg_w_sink_data_range128w250w(0);
	wire_w_lg_w_sink_data_range143w237w(0) <= wire_w_sink_data_range143w(0) AND wire_w_lg_w_sink_data_range146w236w(0);
	wire_w1w(0) <= NOT s_wire_nios1_addr_router_001_src_channel_1_527_dataout;
	wire_w_lg_w_sink_data_range125w249w(0) <= NOT wire_w_sink_data_range125w(0);
	wire_w_lg_w_sink_data_range128w250w(0) <= NOT wire_w_sink_data_range128w(0);
	wire_w_lg_w_sink_data_range146w236w(0) <= NOT wire_w_sink_data_range146w(0);
	s_wire_nios1_addr_router_001_src_channel_10_824_dataout <= (((((((((((((wire_w_lg_w_sink_data_range122w363w(0) AND sink_data(42)) AND sink_data(43)) AND (NOT sink_data(44))) AND (NOT sink_data(45))) AND (NOT sink_data(46))) AND (NOT sink_data(47))) AND sink_data(48)) AND (NOT sink_data(49))) AND (NOT sink_data(50))) AND (NOT sink_data(51))) AND (NOT sink_data(52))) AND (NOT sink_data(53))) AND sink_data(54));
	s_wire_nios1_addr_router_001_src_channel_11_857_dataout <= (((((((((((((((NOT sink_data(40)) AND sink_data(41)) AND sink_data(42)) AND sink_data(43)) AND (NOT sink_data(44))) AND (NOT sink_data(45))) AND (NOT sink_data(46))) AND (NOT sink_data(47))) AND sink_data(48)) AND (NOT sink_data(49))) AND (NOT sink_data(50))) AND (NOT sink_data(51))) AND (NOT sink_data(52))) AND (NOT sink_data(53))) AND sink_data(54));
	s_wire_nios1_addr_router_001_src_channel_12_890_dataout <= ((((((((((((((((NOT sink_data(39)) AND sink_data(40)) AND sink_data(41)) AND sink_data(42)) AND sink_data(43)) AND (NOT sink_data(44))) AND (NOT sink_data(45))) AND (NOT sink_data(46))) AND (NOT sink_data(47))) AND sink_data(48)) AND (NOT sink_data(49))) AND (NOT sink_data(50))) AND (NOT sink_data(51))) AND (NOT sink_data(52))) AND (NOT sink_data(53))) AND sink_data(54));
	s_wire_nios1_addr_router_001_src_channel_13_923_dataout <= (((((((((((((((sink_data(39) AND sink_data(40)) AND sink_data(41)) AND sink_data(42)) AND sink_data(43)) AND (NOT sink_data(44))) AND (NOT sink_data(45))) AND (NOT sink_data(46))) AND (NOT sink_data(47))) AND sink_data(48)) AND (NOT sink_data(49))) AND (NOT sink_data(50))) AND (NOT sink_data(51))) AND (NOT sink_data(52))) AND (NOT sink_data(53))) AND sink_data(54));
	s_wire_nios1_addr_router_001_src_channel_1_527_dataout <= ((((((wire_w_lg_w_sink_data_range143w237w(0) AND (NOT sink_data(49))) AND (NOT sink_data(50))) AND (NOT sink_data(51))) AND (NOT sink_data(52))) AND (NOT sink_data(53))) AND sink_data(54));
	s_wire_nios1_addr_router_001_src_channel_2_560_dataout <= (((((((((((((wire_w_lg_w_sink_data_range125w249w(0) AND wire_w_lg_w_sink_data_range128w250w(0)) AND (NOT sink_data(43))) AND (NOT sink_data(44))) AND (NOT sink_data(45))) AND (NOT sink_data(46))) AND (NOT sink_data(47))) AND sink_data(48)) AND (NOT sink_data(49))) AND (NOT sink_data(50))) AND (NOT sink_data(51))) AND (NOT sink_data(52))) AND (NOT sink_data(53))) AND sink_data(54));
	s_wire_nios1_addr_router_001_src_channel_3_593_dataout <= ((((((((((((wire_w_lg_w_sink_data_range125w269w(0) AND (NOT sink_data(43))) AND (NOT sink_data(44))) AND (NOT sink_data(45))) AND (NOT sink_data(46))) AND (NOT sink_data(47))) AND sink_data(48)) AND (NOT sink_data(49))) AND (NOT sink_data(50))) AND (NOT sink_data(51))) AND (NOT sink_data(52))) AND (NOT sink_data(53))) AND sink_data(54));
	s_wire_nios1_addr_router_001_src_channel_4_626_dataout <= (((((((((((((wire_w_lg_w_sink_data_range125w249w(0) AND sink_data(42)) AND (NOT sink_data(43))) AND (NOT sink_data(44))) AND (NOT sink_data(45))) AND (NOT sink_data(46))) AND (NOT sink_data(47))) AND sink_data(48)) AND (NOT sink_data(49))) AND (NOT sink_data(50))) AND (NOT sink_data(51))) AND (NOT sink_data(52))) AND (NOT sink_data(53))) AND sink_data(54));
	s_wire_nios1_addr_router_001_src_channel_5_659_dataout <= (((((((((((((sink_data(41) AND sink_data(42)) AND (NOT sink_data(43))) AND (NOT sink_data(44))) AND (NOT sink_data(45))) AND (NOT sink_data(46))) AND (NOT sink_data(47))) AND sink_data(48)) AND (NOT sink_data(49))) AND (NOT sink_data(50))) AND (NOT sink_data(51))) AND (NOT sink_data(52))) AND (NOT sink_data(53))) AND sink_data(54));
	s_wire_nios1_addr_router_001_src_channel_6_692_dataout <= (((((((((((((wire_w_lg_w_sink_data_range125w249w(0) AND wire_w_lg_w_sink_data_range128w250w(0)) AND sink_data(43)) AND (NOT sink_data(44))) AND (NOT sink_data(45))) AND (NOT sink_data(46))) AND (NOT sink_data(47))) AND sink_data(48)) AND (NOT sink_data(49))) AND (NOT sink_data(50))) AND (NOT sink_data(51))) AND (NOT sink_data(52))) AND (NOT sink_data(53))) AND sink_data(54));
	s_wire_nios1_addr_router_001_src_channel_7_725_dataout <= (((((((((((((((NOT sink_data(40)) AND sink_data(41)) AND wire_w_lg_w_sink_data_range128w250w(0)) AND sink_data(43)) AND (NOT sink_data(44))) AND (NOT sink_data(45))) AND (NOT sink_data(46))) AND (NOT sink_data(47))) AND sink_data(48)) AND (NOT sink_data(49))) AND (NOT sink_data(50))) AND (NOT sink_data(51))) AND (NOT sink_data(52))) AND (NOT sink_data(53))) AND sink_data(54));
	s_wire_nios1_addr_router_001_src_channel_8_758_dataout <= ((((((((((((((sink_data(40) AND sink_data(41)) AND wire_w_lg_w_sink_data_range128w250w(0)) AND sink_data(43)) AND (NOT sink_data(44))) AND (NOT sink_data(45))) AND (NOT sink_data(46))) AND (NOT sink_data(47))) AND sink_data(48)) AND (NOT sink_data(49))) AND (NOT sink_data(50))) AND (NOT sink_data(51))) AND (NOT sink_data(52))) AND (NOT sink_data(53))) AND sink_data(54));
	s_wire_nios1_addr_router_001_src_channel_9_791_dataout <= (((((((((((((((NOT sink_data(40)) AND wire_w_lg_w_sink_data_range125w249w(0)) AND sink_data(42)) AND sink_data(43)) AND (NOT sink_data(44))) AND (NOT sink_data(45))) AND (NOT sink_data(46))) AND (NOT sink_data(47))) AND sink_data(48)) AND (NOT sink_data(49))) AND (NOT sink_data(50))) AND (NOT sink_data(51))) AND (NOT sink_data(52))) AND (NOT sink_data(53))) AND sink_data(54));
	sink_ready <= src_ready;
	src_channel <= ( wire_nios1_addr_router_001_src_channel_250m_dataout & wire_nios1_addr_router_001_src_channel_251m_dataout & wire_nios1_addr_router_001_src_channel_252m_dataout & wire_nios1_addr_router_001_src_channel_253m_dataout & wire_nios1_addr_router_001_src_channel_254m_dataout & wire_nios1_addr_router_001_src_channel_255m_dataout & wire_nios1_addr_router_001_src_channel_256m_dataout & wire_nios1_addr_router_001_src_channel_257m_dataout & wire_nios1_addr_router_001_src_channel_258m_dataout & wire_nios1_addr_router_001_src_channel_259m_dataout & s_wire_nios1_addr_router_001_src_channel_13_923_dataout & wire_nios1_addr_router_001_src_channel_261m_dataout & wire_nios1_addr_router_001_src_channel_262m_dataout & wire_nios1_addr_router_001_src_channel_263m_dataout);
	src_data <= ( sink_data(75) & wire_nios1_addr_router_001_src_data_264m_dataout & wire_nios1_addr_router_001_src_data_265m_dataout & wire_nios1_addr_router_001_src_data_266m_dataout & wire_nios1_addr_router_001_src_data_267m_dataout & sink_data(70 DOWNTO 0));
	src_endofpacket <= sink_endofpacket;
	src_startofpacket <= sink_startofpacket;
	src_valid <= sink_valid;
	wire_w_sink_data_range122w(0) <= sink_data(40);
	wire_w_sink_data_range125w(0) <= sink_data(41);
	wire_w_sink_data_range128w(0) <= sink_data(42);
	wire_w_sink_data_range143w(0) <= sink_data(47);
	wire_w_sink_data_range146w(0) <= sink_data(48);
	wire_nios1_addr_router_001_src_channel_102m_dataout <= s_wire_nios1_addr_router_001_src_channel_4_626_dataout AND NOT(s_wire_nios1_addr_router_001_src_channel_5_659_dataout);
	wire_nios1_addr_router_001_src_channel_106m_dataout <= wire_nios1_addr_router_001_src_channel_87m_dataout AND NOT(s_wire_nios1_addr_router_001_src_channel_5_659_dataout);
	wire_nios1_addr_router_001_src_channel_107m_dataout <= wire_nios1_addr_router_001_src_channel_88m_dataout AND NOT(s_wire_nios1_addr_router_001_src_channel_5_659_dataout);
	wire_nios1_addr_router_001_src_channel_110m_dataout <= wire_nios1_addr_router_001_src_channel_91m_dataout AND NOT(s_wire_nios1_addr_router_001_src_channel_5_659_dataout);
	wire_nios1_addr_router_001_src_channel_111m_dataout <= wire_nios1_addr_router_001_src_channel_92m_dataout AND NOT(s_wire_nios1_addr_router_001_src_channel_5_659_dataout);
	wire_nios1_addr_router_001_src_channel_120m_dataout <= s_wire_nios1_addr_router_001_src_channel_5_659_dataout AND NOT(s_wire_nios1_addr_router_001_src_channel_6_692_dataout);
	wire_nios1_addr_router_001_src_channel_121m_dataout <= wire_nios1_addr_router_001_src_channel_102m_dataout AND NOT(s_wire_nios1_addr_router_001_src_channel_6_692_dataout);
	wire_nios1_addr_router_001_src_channel_125m_dataout <= wire_nios1_addr_router_001_src_channel_106m_dataout AND NOT(s_wire_nios1_addr_router_001_src_channel_6_692_dataout);
	wire_nios1_addr_router_001_src_channel_126m_dataout <= wire_nios1_addr_router_001_src_channel_107m_dataout AND NOT(s_wire_nios1_addr_router_001_src_channel_6_692_dataout);
	wire_nios1_addr_router_001_src_channel_129m_dataout <= wire_nios1_addr_router_001_src_channel_110m_dataout AND NOT(s_wire_nios1_addr_router_001_src_channel_6_692_dataout);
	wire_nios1_addr_router_001_src_channel_130m_dataout <= wire_nios1_addr_router_001_src_channel_111m_dataout AND NOT(s_wire_nios1_addr_router_001_src_channel_6_692_dataout);
	wire_nios1_addr_router_001_src_channel_136m_dataout <= s_wire_nios1_addr_router_001_src_channel_6_692_dataout AND NOT(s_wire_nios1_addr_router_001_src_channel_7_725_dataout);
	wire_nios1_addr_router_001_src_channel_139m_dataout <= wire_nios1_addr_router_001_src_channel_120m_dataout AND NOT(s_wire_nios1_addr_router_001_src_channel_7_725_dataout);
	wire_nios1_addr_router_001_src_channel_140m_dataout <= wire_nios1_addr_router_001_src_channel_121m_dataout AND NOT(s_wire_nios1_addr_router_001_src_channel_7_725_dataout);
	wire_nios1_addr_router_001_src_channel_144m_dataout <= wire_nios1_addr_router_001_src_channel_125m_dataout AND NOT(s_wire_nios1_addr_router_001_src_channel_7_725_dataout);
	wire_nios1_addr_router_001_src_channel_145m_dataout <= wire_nios1_addr_router_001_src_channel_126m_dataout AND NOT(s_wire_nios1_addr_router_001_src_channel_7_725_dataout);
	wire_nios1_addr_router_001_src_channel_148m_dataout <= wire_nios1_addr_router_001_src_channel_129m_dataout AND NOT(s_wire_nios1_addr_router_001_src_channel_7_725_dataout);
	wire_nios1_addr_router_001_src_channel_149m_dataout <= wire_nios1_addr_router_001_src_channel_130m_dataout AND NOT(s_wire_nios1_addr_router_001_src_channel_7_725_dataout);
	wire_nios1_addr_router_001_src_channel_155m_dataout <= wire_nios1_addr_router_001_src_channel_136m_dataout AND NOT(s_wire_nios1_addr_router_001_src_channel_8_758_dataout);
	wire_nios1_addr_router_001_src_channel_158m_dataout <= wire_nios1_addr_router_001_src_channel_139m_dataout AND NOT(s_wire_nios1_addr_router_001_src_channel_8_758_dataout);
	wire_nios1_addr_router_001_src_channel_159m_dataout <= wire_nios1_addr_router_001_src_channel_140m_dataout AND NOT(s_wire_nios1_addr_router_001_src_channel_8_758_dataout);
	wire_nios1_addr_router_001_src_channel_162m_dataout <= s_wire_nios1_addr_router_001_src_channel_7_725_dataout AND NOT(s_wire_nios1_addr_router_001_src_channel_8_758_dataout);
	wire_nios1_addr_router_001_src_channel_163m_dataout <= wire_nios1_addr_router_001_src_channel_144m_dataout AND NOT(s_wire_nios1_addr_router_001_src_channel_8_758_dataout);
	wire_nios1_addr_router_001_src_channel_164m_dataout <= wire_nios1_addr_router_001_src_channel_145m_dataout AND NOT(s_wire_nios1_addr_router_001_src_channel_8_758_dataout);
	wire_nios1_addr_router_001_src_channel_167m_dataout <= wire_nios1_addr_router_001_src_channel_148m_dataout AND NOT(s_wire_nios1_addr_router_001_src_channel_8_758_dataout);
	wire_nios1_addr_router_001_src_channel_168m_dataout <= wire_nios1_addr_router_001_src_channel_149m_dataout AND NOT(s_wire_nios1_addr_router_001_src_channel_8_758_dataout);
	wire_nios1_addr_router_001_src_channel_174m_dataout <= wire_nios1_addr_router_001_src_channel_155m_dataout AND NOT(s_wire_nios1_addr_router_001_src_channel_9_791_dataout);
	wire_nios1_addr_router_001_src_channel_177m_dataout <= wire_nios1_addr_router_001_src_channel_158m_dataout AND NOT(s_wire_nios1_addr_router_001_src_channel_9_791_dataout);
	wire_nios1_addr_router_001_src_channel_178m_dataout <= wire_nios1_addr_router_001_src_channel_159m_dataout AND NOT(s_wire_nios1_addr_router_001_src_channel_9_791_dataout);
	wire_nios1_addr_router_001_src_channel_180m_dataout <= s_wire_nios1_addr_router_001_src_channel_8_758_dataout AND NOT(s_wire_nios1_addr_router_001_src_channel_9_791_dataout);
	wire_nios1_addr_router_001_src_channel_181m_dataout <= wire_nios1_addr_router_001_src_channel_162m_dataout AND NOT(s_wire_nios1_addr_router_001_src_channel_9_791_dataout);
	wire_nios1_addr_router_001_src_channel_182m_dataout <= wire_nios1_addr_router_001_src_channel_163m_dataout AND NOT(s_wire_nios1_addr_router_001_src_channel_9_791_dataout);
	wire_nios1_addr_router_001_src_channel_183m_dataout <= wire_nios1_addr_router_001_src_channel_164m_dataout AND NOT(s_wire_nios1_addr_router_001_src_channel_9_791_dataout);
	wire_nios1_addr_router_001_src_channel_186m_dataout <= wire_nios1_addr_router_001_src_channel_167m_dataout AND NOT(s_wire_nios1_addr_router_001_src_channel_9_791_dataout);
	wire_nios1_addr_router_001_src_channel_187m_dataout <= wire_nios1_addr_router_001_src_channel_168m_dataout AND NOT(s_wire_nios1_addr_router_001_src_channel_9_791_dataout);
	wire_nios1_addr_router_001_src_channel_193m_dataout <= wire_nios1_addr_router_001_src_channel_174m_dataout AND NOT(s_wire_nios1_addr_router_001_src_channel_10_824_dataout);
	wire_nios1_addr_router_001_src_channel_196m_dataout <= wire_nios1_addr_router_001_src_channel_177m_dataout AND NOT(s_wire_nios1_addr_router_001_src_channel_10_824_dataout);
	wire_nios1_addr_router_001_src_channel_197m_dataout <= wire_nios1_addr_router_001_src_channel_178m_dataout AND NOT(s_wire_nios1_addr_router_001_src_channel_10_824_dataout);
	wire_nios1_addr_router_001_src_channel_198m_dataout <= s_wire_nios1_addr_router_001_src_channel_9_791_dataout AND NOT(s_wire_nios1_addr_router_001_src_channel_10_824_dataout);
	wire_nios1_addr_router_001_src_channel_199m_dataout <= wire_nios1_addr_router_001_src_channel_180m_dataout AND NOT(s_wire_nios1_addr_router_001_src_channel_10_824_dataout);
	wire_nios1_addr_router_001_src_channel_200m_dataout <= wire_nios1_addr_router_001_src_channel_181m_dataout AND NOT(s_wire_nios1_addr_router_001_src_channel_10_824_dataout);
	wire_nios1_addr_router_001_src_channel_201m_dataout <= wire_nios1_addr_router_001_src_channel_182m_dataout AND NOT(s_wire_nios1_addr_router_001_src_channel_10_824_dataout);
	wire_nios1_addr_router_001_src_channel_202m_dataout <= wire_nios1_addr_router_001_src_channel_183m_dataout AND NOT(s_wire_nios1_addr_router_001_src_channel_10_824_dataout);
	wire_nios1_addr_router_001_src_channel_205m_dataout <= wire_nios1_addr_router_001_src_channel_186m_dataout AND NOT(s_wire_nios1_addr_router_001_src_channel_10_824_dataout);
	wire_nios1_addr_router_001_src_channel_206m_dataout <= wire_nios1_addr_router_001_src_channel_187m_dataout AND NOT(s_wire_nios1_addr_router_001_src_channel_10_824_dataout);
	wire_nios1_addr_router_001_src_channel_212m_dataout <= wire_nios1_addr_router_001_src_channel_193m_dataout AND NOT(s_wire_nios1_addr_router_001_src_channel_11_857_dataout);
	wire_nios1_addr_router_001_src_channel_214m_dataout <= s_wire_nios1_addr_router_001_src_channel_10_824_dataout AND NOT(s_wire_nios1_addr_router_001_src_channel_11_857_dataout);
	wire_nios1_addr_router_001_src_channel_215m_dataout <= wire_nios1_addr_router_001_src_channel_196m_dataout AND NOT(s_wire_nios1_addr_router_001_src_channel_11_857_dataout);
	wire_nios1_addr_router_001_src_channel_216m_dataout <= wire_nios1_addr_router_001_src_channel_197m_dataout AND NOT(s_wire_nios1_addr_router_001_src_channel_11_857_dataout);
	wire_nios1_addr_router_001_src_channel_217m_dataout <= wire_nios1_addr_router_001_src_channel_198m_dataout AND NOT(s_wire_nios1_addr_router_001_src_channel_11_857_dataout);
	wire_nios1_addr_router_001_src_channel_218m_dataout <= wire_nios1_addr_router_001_src_channel_199m_dataout AND NOT(s_wire_nios1_addr_router_001_src_channel_11_857_dataout);
	wire_nios1_addr_router_001_src_channel_219m_dataout <= wire_nios1_addr_router_001_src_channel_200m_dataout AND NOT(s_wire_nios1_addr_router_001_src_channel_11_857_dataout);
	wire_nios1_addr_router_001_src_channel_220m_dataout <= wire_nios1_addr_router_001_src_channel_201m_dataout AND NOT(s_wire_nios1_addr_router_001_src_channel_11_857_dataout);
	wire_nios1_addr_router_001_src_channel_221m_dataout <= wire_nios1_addr_router_001_src_channel_202m_dataout AND NOT(s_wire_nios1_addr_router_001_src_channel_11_857_dataout);
	wire_nios1_addr_router_001_src_channel_224m_dataout <= wire_nios1_addr_router_001_src_channel_205m_dataout AND NOT(s_wire_nios1_addr_router_001_src_channel_11_857_dataout);
	wire_nios1_addr_router_001_src_channel_225m_dataout <= wire_nios1_addr_router_001_src_channel_206m_dataout AND NOT(s_wire_nios1_addr_router_001_src_channel_11_857_dataout);
	wire_nios1_addr_router_001_src_channel_231m_dataout <= wire_nios1_addr_router_001_src_channel_212m_dataout AND NOT(s_wire_nios1_addr_router_001_src_channel_12_890_dataout);
	wire_nios1_addr_router_001_src_channel_232m_dataout <= s_wire_nios1_addr_router_001_src_channel_11_857_dataout AND NOT(s_wire_nios1_addr_router_001_src_channel_12_890_dataout);
	wire_nios1_addr_router_001_src_channel_233m_dataout <= wire_nios1_addr_router_001_src_channel_214m_dataout AND NOT(s_wire_nios1_addr_router_001_src_channel_12_890_dataout);
	wire_nios1_addr_router_001_src_channel_234m_dataout <= wire_nios1_addr_router_001_src_channel_215m_dataout AND NOT(s_wire_nios1_addr_router_001_src_channel_12_890_dataout);
	wire_nios1_addr_router_001_src_channel_235m_dataout <= wire_nios1_addr_router_001_src_channel_216m_dataout AND NOT(s_wire_nios1_addr_router_001_src_channel_12_890_dataout);
	wire_nios1_addr_router_001_src_channel_236m_dataout <= wire_nios1_addr_router_001_src_channel_217m_dataout AND NOT(s_wire_nios1_addr_router_001_src_channel_12_890_dataout);
	wire_nios1_addr_router_001_src_channel_237m_dataout <= wire_nios1_addr_router_001_src_channel_218m_dataout AND NOT(s_wire_nios1_addr_router_001_src_channel_12_890_dataout);
	wire_nios1_addr_router_001_src_channel_238m_dataout <= wire_nios1_addr_router_001_src_channel_219m_dataout AND NOT(s_wire_nios1_addr_router_001_src_channel_12_890_dataout);
	wire_nios1_addr_router_001_src_channel_239m_dataout <= wire_nios1_addr_router_001_src_channel_220m_dataout AND NOT(s_wire_nios1_addr_router_001_src_channel_12_890_dataout);
	wire_nios1_addr_router_001_src_channel_240m_dataout <= wire_nios1_addr_router_001_src_channel_221m_dataout AND NOT(s_wire_nios1_addr_router_001_src_channel_12_890_dataout);
	wire_nios1_addr_router_001_src_channel_243m_dataout <= wire_nios1_addr_router_001_src_channel_224m_dataout AND NOT(s_wire_nios1_addr_router_001_src_channel_12_890_dataout);
	wire_nios1_addr_router_001_src_channel_244m_dataout <= wire_nios1_addr_router_001_src_channel_225m_dataout AND NOT(s_wire_nios1_addr_router_001_src_channel_12_890_dataout);
	wire_nios1_addr_router_001_src_channel_250m_dataout <= wire_nios1_addr_router_001_src_channel_231m_dataout AND NOT(s_wire_nios1_addr_router_001_src_channel_13_923_dataout);
	wire_nios1_addr_router_001_src_channel_251m_dataout <= wire_nios1_addr_router_001_src_channel_232m_dataout AND NOT(s_wire_nios1_addr_router_001_src_channel_13_923_dataout);
	wire_nios1_addr_router_001_src_channel_252m_dataout <= wire_nios1_addr_router_001_src_channel_233m_dataout AND NOT(s_wire_nios1_addr_router_001_src_channel_13_923_dataout);
	wire_nios1_addr_router_001_src_channel_253m_dataout <= wire_nios1_addr_router_001_src_channel_234m_dataout AND NOT(s_wire_nios1_addr_router_001_src_channel_13_923_dataout);
	wire_nios1_addr_router_001_src_channel_254m_dataout <= wire_nios1_addr_router_001_src_channel_235m_dataout AND NOT(s_wire_nios1_addr_router_001_src_channel_13_923_dataout);
	wire_nios1_addr_router_001_src_channel_255m_dataout <= wire_nios1_addr_router_001_src_channel_236m_dataout AND NOT(s_wire_nios1_addr_router_001_src_channel_13_923_dataout);
	wire_nios1_addr_router_001_src_channel_256m_dataout <= wire_nios1_addr_router_001_src_channel_237m_dataout AND NOT(s_wire_nios1_addr_router_001_src_channel_13_923_dataout);
	wire_nios1_addr_router_001_src_channel_257m_dataout <= wire_nios1_addr_router_001_src_channel_238m_dataout AND NOT(s_wire_nios1_addr_router_001_src_channel_13_923_dataout);
	wire_nios1_addr_router_001_src_channel_258m_dataout <= wire_nios1_addr_router_001_src_channel_239m_dataout AND NOT(s_wire_nios1_addr_router_001_src_channel_13_923_dataout);
	wire_nios1_addr_router_001_src_channel_259m_dataout <= wire_nios1_addr_router_001_src_channel_240m_dataout AND NOT(s_wire_nios1_addr_router_001_src_channel_13_923_dataout);
	wire_nios1_addr_router_001_src_channel_261m_dataout <= s_wire_nios1_addr_router_001_src_channel_12_890_dataout AND NOT(s_wire_nios1_addr_router_001_src_channel_13_923_dataout);
	wire_nios1_addr_router_001_src_channel_262m_dataout <= wire_nios1_addr_router_001_src_channel_243m_dataout AND NOT(s_wire_nios1_addr_router_001_src_channel_13_923_dataout);
	wire_nios1_addr_router_001_src_channel_263m_dataout <= wire_nios1_addr_router_001_src_channel_244m_dataout AND NOT(s_wire_nios1_addr_router_001_src_channel_13_923_dataout);
	wire_nios1_addr_router_001_src_channel_53m_dataout <= wire_w1w(0) AND NOT(s_wire_nios1_addr_router_001_src_channel_2_560_dataout);
	wire_nios1_addr_router_001_src_channel_54m_dataout <= s_wire_nios1_addr_router_001_src_channel_1_527_dataout AND NOT(s_wire_nios1_addr_router_001_src_channel_2_560_dataout);
	wire_nios1_addr_router_001_src_channel_69m_dataout <= s_wire_nios1_addr_router_001_src_channel_2_560_dataout AND NOT(s_wire_nios1_addr_router_001_src_channel_3_593_dataout);
	wire_nios1_addr_router_001_src_channel_72m_dataout <= wire_nios1_addr_router_001_src_channel_53m_dataout AND NOT(s_wire_nios1_addr_router_001_src_channel_3_593_dataout);
	wire_nios1_addr_router_001_src_channel_73m_dataout <= wire_nios1_addr_router_001_src_channel_54m_dataout AND NOT(s_wire_nios1_addr_router_001_src_channel_3_593_dataout);
	wire_nios1_addr_router_001_src_channel_87m_dataout <= s_wire_nios1_addr_router_001_src_channel_3_593_dataout AND NOT(s_wire_nios1_addr_router_001_src_channel_4_626_dataout);
	wire_nios1_addr_router_001_src_channel_88m_dataout <= wire_nios1_addr_router_001_src_channel_69m_dataout AND NOT(s_wire_nios1_addr_router_001_src_channel_4_626_dataout);
	wire_nios1_addr_router_001_src_channel_91m_dataout <= wire_nios1_addr_router_001_src_channel_72m_dataout AND NOT(s_wire_nios1_addr_router_001_src_channel_4_626_dataout);
	wire_nios1_addr_router_001_src_channel_92m_dataout <= wire_nios1_addr_router_001_src_channel_73m_dataout AND NOT(s_wire_nios1_addr_router_001_src_channel_4_626_dataout);
	wire_nios1_addr_router_001_src_data_112m_dataout <= s_wire_nios1_addr_router_001_src_channel_4_626_dataout OR s_wire_nios1_addr_router_001_src_channel_5_659_dataout;
	wire_nios1_addr_router_001_src_data_113m_dataout <= wire_nios1_addr_router_001_src_data_94m_dataout AND NOT(s_wire_nios1_addr_router_001_src_channel_5_659_dataout);
	wire_nios1_addr_router_001_src_data_115m_dataout <= wire_nios1_addr_router_001_src_data_96m_dataout AND NOT(s_wire_nios1_addr_router_001_src_channel_5_659_dataout);
	wire_nios1_addr_router_001_src_data_131m_dataout <= wire_nios1_addr_router_001_src_data_112m_dataout OR s_wire_nios1_addr_router_001_src_channel_6_692_dataout;
	wire_nios1_addr_router_001_src_data_132m_dataout <= wire_nios1_addr_router_001_src_data_113m_dataout OR s_wire_nios1_addr_router_001_src_channel_6_692_dataout;
	wire_nios1_addr_router_001_src_data_133m_dataout <= s_wire_nios1_addr_router_001_src_channel_5_659_dataout AND NOT(s_wire_nios1_addr_router_001_src_channel_6_692_dataout);
	wire_nios1_addr_router_001_src_data_134m_dataout <= wire_nios1_addr_router_001_src_data_115m_dataout OR s_wire_nios1_addr_router_001_src_channel_6_692_dataout;
	wire_nios1_addr_router_001_src_data_150m_dataout <= wire_nios1_addr_router_001_src_data_131m_dataout AND NOT(s_wire_nios1_addr_router_001_src_channel_7_725_dataout);
	wire_nios1_addr_router_001_src_data_151m_dataout <= wire_nios1_addr_router_001_src_data_132m_dataout OR s_wire_nios1_addr_router_001_src_channel_7_725_dataout;
	wire_nios1_addr_router_001_src_data_152m_dataout <= wire_nios1_addr_router_001_src_data_133m_dataout OR s_wire_nios1_addr_router_001_src_channel_7_725_dataout;
	wire_nios1_addr_router_001_src_data_153m_dataout <= wire_nios1_addr_router_001_src_data_134m_dataout AND NOT(s_wire_nios1_addr_router_001_src_channel_7_725_dataout);
	wire_nios1_addr_router_001_src_data_169m_dataout <= wire_nios1_addr_router_001_src_data_150m_dataout AND NOT(s_wire_nios1_addr_router_001_src_channel_8_758_dataout);
	wire_nios1_addr_router_001_src_data_170m_dataout <= wire_nios1_addr_router_001_src_data_151m_dataout OR s_wire_nios1_addr_router_001_src_channel_8_758_dataout;
	wire_nios1_addr_router_001_src_data_171m_dataout <= wire_nios1_addr_router_001_src_data_152m_dataout OR s_wire_nios1_addr_router_001_src_channel_8_758_dataout;
	wire_nios1_addr_router_001_src_data_172m_dataout <= wire_nios1_addr_router_001_src_data_153m_dataout OR s_wire_nios1_addr_router_001_src_channel_8_758_dataout;
	wire_nios1_addr_router_001_src_data_188m_dataout <= wire_nios1_addr_router_001_src_data_169m_dataout OR s_wire_nios1_addr_router_001_src_channel_9_791_dataout;
	wire_nios1_addr_router_001_src_data_189m_dataout <= wire_nios1_addr_router_001_src_data_170m_dataout AND NOT(s_wire_nios1_addr_router_001_src_channel_9_791_dataout);
	wire_nios1_addr_router_001_src_data_190m_dataout <= wire_nios1_addr_router_001_src_data_171m_dataout AND NOT(s_wire_nios1_addr_router_001_src_channel_9_791_dataout);
	wire_nios1_addr_router_001_src_data_191m_dataout <= wire_nios1_addr_router_001_src_data_172m_dataout AND NOT(s_wire_nios1_addr_router_001_src_channel_9_791_dataout);
	wire_nios1_addr_router_001_src_data_207m_dataout <= wire_nios1_addr_router_001_src_data_188m_dataout OR s_wire_nios1_addr_router_001_src_channel_10_824_dataout;
	wire_nios1_addr_router_001_src_data_208m_dataout <= wire_nios1_addr_router_001_src_data_189m_dataout AND NOT(s_wire_nios1_addr_router_001_src_channel_10_824_dataout);
	wire_nios1_addr_router_001_src_data_209m_dataout <= wire_nios1_addr_router_001_src_data_190m_dataout OR s_wire_nios1_addr_router_001_src_channel_10_824_dataout;
	wire_nios1_addr_router_001_src_data_210m_dataout <= wire_nios1_addr_router_001_src_data_191m_dataout OR s_wire_nios1_addr_router_001_src_channel_10_824_dataout;
	wire_nios1_addr_router_001_src_data_226m_dataout <= wire_nios1_addr_router_001_src_data_207m_dataout OR s_wire_nios1_addr_router_001_src_channel_11_857_dataout;
	wire_nios1_addr_router_001_src_data_227m_dataout <= wire_nios1_addr_router_001_src_data_208m_dataout OR s_wire_nios1_addr_router_001_src_channel_11_857_dataout;
	wire_nios1_addr_router_001_src_data_228m_dataout <= wire_nios1_addr_router_001_src_data_209m_dataout AND NOT(s_wire_nios1_addr_router_001_src_channel_11_857_dataout);
	wire_nios1_addr_router_001_src_data_229m_dataout <= wire_nios1_addr_router_001_src_data_210m_dataout AND NOT(s_wire_nios1_addr_router_001_src_channel_11_857_dataout);
	wire_nios1_addr_router_001_src_data_245m_dataout <= wire_nios1_addr_router_001_src_data_226m_dataout AND NOT(s_wire_nios1_addr_router_001_src_channel_12_890_dataout);
	wire_nios1_addr_router_001_src_data_246m_dataout <= wire_nios1_addr_router_001_src_data_227m_dataout AND NOT(s_wire_nios1_addr_router_001_src_channel_12_890_dataout);
	wire_nios1_addr_router_001_src_data_247m_dataout <= wire_nios1_addr_router_001_src_data_228m_dataout OR s_wire_nios1_addr_router_001_src_channel_12_890_dataout;
	wire_nios1_addr_router_001_src_data_248m_dataout <= wire_nios1_addr_router_001_src_data_229m_dataout AND NOT(s_wire_nios1_addr_router_001_src_channel_12_890_dataout);
	wire_nios1_addr_router_001_src_data_264m_dataout <= wire_nios1_addr_router_001_src_data_245m_dataout AND NOT(s_wire_nios1_addr_router_001_src_channel_13_923_dataout);
	wire_nios1_addr_router_001_src_data_265m_dataout <= wire_nios1_addr_router_001_src_data_246m_dataout AND NOT(s_wire_nios1_addr_router_001_src_channel_13_923_dataout);
	wire_nios1_addr_router_001_src_data_266m_dataout <= wire_nios1_addr_router_001_src_data_247m_dataout OR s_wire_nios1_addr_router_001_src_channel_13_923_dataout;
	wire_nios1_addr_router_001_src_data_267m_dataout <= wire_nios1_addr_router_001_src_data_248m_dataout OR s_wire_nios1_addr_router_001_src_channel_13_923_dataout;
	wire_nios1_addr_router_001_src_data_58m_dataout <= wire_w1w(0) AND NOT(s_wire_nios1_addr_router_001_src_channel_2_560_dataout);
	wire_nios1_addr_router_001_src_data_75m_dataout <= s_wire_nios1_addr_router_001_src_channel_2_560_dataout OR s_wire_nios1_addr_router_001_src_channel_3_593_dataout;
	wire_nios1_addr_router_001_src_data_77m_dataout <= wire_nios1_addr_router_001_src_data_58m_dataout OR s_wire_nios1_addr_router_001_src_channel_3_593_dataout;
	wire_nios1_addr_router_001_src_data_94m_dataout <= wire_nios1_addr_router_001_src_data_75m_dataout AND NOT(s_wire_nios1_addr_router_001_src_channel_4_626_dataout);
	wire_nios1_addr_router_001_src_data_96m_dataout <= wire_nios1_addr_router_001_src_data_77m_dataout OR s_wire_nios1_addr_router_001_src_channel_4_626_dataout;

 END RTL; --Nios1_addr_router_001
--synopsys translate_on
--VALID FILE
