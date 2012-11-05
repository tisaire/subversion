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

 ENTITY  Nios1_nios2_qsys_instruction_master_translator IS 
	 PORT 
	 ( 
		 av_address	:	IN  STD_LOGIC_VECTOR (18 DOWNTO 0);
		 av_read	:	IN  STD_LOGIC;
		 av_readdata	:	OUT  STD_LOGIC_VECTOR (31 DOWNTO 0);
		 av_readdatavalid	:	OUT  STD_LOGIC;
		 av_waitrequest	:	OUT  STD_LOGIC;
		 clk	:	IN  STD_LOGIC;
		 reset	:	IN  STD_LOGIC;
		 uav_address	:	OUT  STD_LOGIC_VECTOR (18 DOWNTO 0);
		 uav_burstcount	:	OUT  STD_LOGIC_VECTOR (2 DOWNTO 0);
		 uav_byteenable	:	OUT  STD_LOGIC_VECTOR (3 DOWNTO 0);
		 uav_debugaccess	:	OUT  STD_LOGIC;
		 uav_lock	:	OUT  STD_LOGIC;
		 uav_read	:	OUT  STD_LOGIC;
		 uav_readdata	:	IN  STD_LOGIC_VECTOR (31 DOWNTO 0);
		 uav_readdatavalid	:	IN  STD_LOGIC;
		 uav_waitrequest	:	IN  STD_LOGIC;
		 uav_write	:	OUT  STD_LOGIC;
		 uav_writedata	:	OUT  STD_LOGIC_VECTOR (31 DOWNTO 0)
	 ); 
 END Nios1_nios2_qsys_instruction_master_translator;

 ARCHITECTURE RTL OF Nios1_nios2_qsys_instruction_master_translator IS

	 ATTRIBUTE synthesis_clearbox : natural;
	 ATTRIBUTE synthesis_clearbox OF RTL : ARCHITECTURE IS 1;
 BEGIN

	av_readdata <= ( uav_readdata(31 DOWNTO 0));
	av_readdatavalid <= uav_readdatavalid;
	av_waitrequest <= uav_waitrequest;
	uav_address <= ( av_address(18 DOWNTO 0));
	uav_burstcount <= ( "1" & "0" & "0");
	uav_byteenable <= ( "1" & "1" & "1" & "1");
	uav_debugaccess <= '0';
	uav_lock <= '0';
	uav_read <= av_read;
	uav_write <= '0';
	uav_writedata <= ( "0" & "0" & "0" & "0" & "0" & "0" & "0" & "0" & "0" & "0" & "0" & "0" & "0" & "0" & "0" & "0" & "0" & "0" & "0" & "0" & "0" & "0" & "0" & "0" & "0" & "0" & "0" & "0" & "0" & "0" & "0" & "0");

 END RTL; --Nios1_nios2_qsys_instruction_master_translator
--synopsys translate_on
--VALID FILE
