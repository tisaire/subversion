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

--synthesis_resources = 
 LIBRARY ieee;
 USE ieee.std_logic_1164.all;

 ENTITY  Nios1_nios2_qsys_instruction_master_translator_avalon_universal_master_0_agent IS 
	 PORT 
	 ( 
		 av_address	:	IN  STD_LOGIC_VECTOR (18 DOWNTO 0);
		 av_burstcount	:	IN  STD_LOGIC_VECTOR (2 DOWNTO 0);
		 av_byteenable	:	IN  STD_LOGIC_VECTOR (3 DOWNTO 0);
		 av_debugaccess	:	IN  STD_LOGIC;
		 av_lock	:	IN  STD_LOGIC;
		 av_read	:	IN  STD_LOGIC;
		 av_readdata	:	OUT  STD_LOGIC_VECTOR (31 DOWNTO 0);
		 av_readdatavalid	:	OUT  STD_LOGIC;
		 av_waitrequest	:	OUT  STD_LOGIC;
		 av_write	:	IN  STD_LOGIC;
		 av_writedata	:	IN  STD_LOGIC_VECTOR (31 DOWNTO 0);
		 clk	:	IN  STD_LOGIC;
		 cp_data	:	OUT  STD_LOGIC_VECTOR (75 DOWNTO 0);
		 cp_endofpacket	:	OUT  STD_LOGIC;
		 cp_ready	:	IN  STD_LOGIC;
		 cp_startofpacket	:	OUT  STD_LOGIC;
		 cp_valid	:	OUT  STD_LOGIC;
		 reset	:	IN  STD_LOGIC;
		 rp_channel	:	IN  STD_LOGIC_VECTOR (13 DOWNTO 0);
		 rp_data	:	IN  STD_LOGIC_VECTOR (75 DOWNTO 0);
		 rp_endofpacket	:	IN  STD_LOGIC;
		 rp_ready	:	OUT  STD_LOGIC;
		 rp_startofpacket	:	IN  STD_LOGIC;
		 rp_valid	:	IN  STD_LOGIC
	 ); 
 END Nios1_nios2_qsys_instruction_master_translator_avalon_universal_master_0_agent;

 ARCHITECTURE RTL OF Nios1_nios2_qsys_instruction_master_translator_avalon_universal_master_0_agent IS

	 ATTRIBUTE synthesis_clearbox : natural;
	 ATTRIBUTE synthesis_clearbox OF RTL : ARCHITECTURE IS 1;
	 SIGNAL  wire_w_lg_cp_ready97w	:	STD_LOGIC_VECTOR (0 DOWNTO 0);
 BEGIN

	wire_w_lg_cp_ready97w(0) <= NOT cp_ready;
	av_readdata <= ( rp_data(31 DOWNTO 0));
	av_readdatavalid <= rp_valid;
	av_waitrequest <= wire_w_lg_cp_ready97w(0);
	cp_data <= ( av_debugaccess & "0" & "0" & "0" & "0" & "0" & "0" & "0" & "0" & "0" & "0" & "1" & "1" & av_burstcount(2 DOWNTO 0) & av_lock & av_read & av_write & av_write & "0" & av_address(18 DOWNTO 2) & "0" & "0" & av_byteenable(3 DOWNTO 0) & av_writedata(31 DOWNTO 0));
	cp_endofpacket <= '1';
	cp_startofpacket <= '1';
	cp_valid <= (av_write OR av_read);
	rp_ready <= '1';

 END RTL; --Nios1_nios2_qsys_instruction_master_translator_avalon_universal_master_0_agent
--synopsys translate_on
--VALID FILE
