library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_arith.all;
use ieee.std_logic_unsigned.all;


entity FinalNiosUART_3 is
	port
	(
		CLOCK_50   : in std_logic;
		LEDG       : out std_logic_vector(7 downto 0);
		LEDR       : out std_logic_vector(17 downto 0);
		SW         : in std_logic_vector(17 downto 0);
		--HEX0		  : out std_logic_vector(6 downto 0);
		--HEX1		  : out std_logic_vector(6 downto 0);
		HEX2		  : out std_logic_vector(6 downto 0);
	--	HEX3		  : out std_logic_vector(6 downto 0);
		HEX4		  : out std_logic_vector(6 downto 0);
		HEX5		  : out std_logic_vector(6 downto 0);
		HEX6		  : out std_logic_vector(6 downto 0);
		HEX7		  : out std_logic_vector(6 downto 0);
		--LCD
		LCD_DATA   : inout std_logic_vector(7 downto 0);
		LCD_EN     : out std_logic;
		LCD_RS     : out std_logic;
		LCD_RW     : out std_logic;
		--UART
		--KEY        : in std_logic_vector(3 downto 0);
		UART_RXD   : in std_logic;
		UART_TXD   : out std_logic;
		--RAM
		SRAM_ADDR  : OUT std_logic_vector(19 downto 0);
      SRAM_WE_N  : OUT std_logic;
      SRAM_CE_N  : OUT std_logic;
      SRAM_OE_N  : OUT std_logic;
      SRAM_DQ    : INOUT std_logic_vector(15 downto 0);
      SRAM_LB_N  : OUT std_logic;
      SRAM_UB_N  : OUT std_logic;
		--SMA
		SMA_CLKOUT : OUT std_logic;
		--HSMC
		HSMC_CLKIN_P2 : in std_logic;
		HSMC_RX_D_P   : in std_logic_vector(15 downto 0);
		--VGA
		VGA_R:		out std_logic_vector(7 downto 0);
		VGA_G:		out std_logic_vector(7 downto 0);
		VGA_B:		out std_logic_vector(7 downto 0);
		VGA_BLANK_N:out std_logic;
		VGA_SYNC_N: out std_logic;
		VGA_HS:		out std_logic;
		VGA_VS:		out std_logic;
		VGA_CLK:	   buffer std_logic
	

		
	);
	
end FinalNiosUART_3;

architecture bh of FinalNiosUART_3 is

	component pll1
		port
		(
		inclk0		: IN STD_LOGIC  := '0';
		c0		: OUT STD_LOGIC ;
		c1		: OUT STD_LOGIC ;
		c2		: OUT STD_LOGIC ;
		c3		: OUT STD_LOGIC 
		);
	end component;
	
		
	component BufferDetector_1 -- buffer de 8 posiciones con detector de señal
		port
		(
			  clk : 			 in std_logic;  
			  EnR : 			 in std_logic;   
			  DataOut :		 out std_logic_vector(11 downto 0);    --output data  
			  DataIn :		 in std_logic_vector (11 downto 0);     --input data  
			  Trigger :		 out std_logic
		);
	end component;
		
	component FifoNM
		PORT
		(
			data		: IN STD_LOGIC_VECTOR (11 DOWNTO 0);
			rdclk		: IN STD_LOGIC ;
			rdreq		: IN STD_LOGIC ;
			wrclk		: IN STD_LOGIC ;
			wrreq		: IN STD_LOGIC ;
			q			: OUT STD_LOGIC_VECTOR (11 DOWNTO 0);
			rdempty	: OUT STD_LOGIC ;
			wrfull	: OUT STD_LOGIC 
		);
	end component;
		
    component Nios1 is
        port (
            clk_clk             : in    std_logic                     := 'X';             -- clk
            reset_reset_n       : in    std_logic                     := 'X';             -- reset_n
            pio_ledg_export     : out   std_logic_vector(7 downto 0);                     -- export
            pio_ledr_export     : out   std_logic_vector(17 downto 0);                    -- export
            pio_sw_export       : in    std_logic_vector(17 downto 0) := (others => 'X'); -- export
            pio_button_export   : in    std_logic_vector(2 downto 0)  := (others => 'X'); -- export
            lcd_external_data   : inout std_logic_vector(7 downto 0)  := (others => 'X'); -- data
            lcd_external_E      : out   std_logic;                                        -- E
            lcd_external_RS     : out   std_logic;                                        -- RS
            lcd_external_RW     : out   std_logic;                                        -- RW
            uart_external_rxd   : in    std_logic                     := 'X';             -- rxd
            uart_external_txd   : out   std_logic;                                        -- txd
            pio_data_export     : in    std_logic_vector(11 downto 0) := (others => 'X'); -- export
            pio_rdydata_export  : in    std_logic                     := 'X';             -- export
            pio_dataread_export : out   std_logic_vector(1 downto 0)                      -- export
        );
    end component Nios1;
	
	
	COMPONENT VGA IS
		PORT(
			CLOCK_50: 	in std_logic;
			--VGA_R:		out std_logic_vector(7 downto 0);
			--VGA_G:		out std_logic_vector(7 downto 0);
			--VGA_B:		out std_logic_vector(7 downto 0);
			VGA_BLANK_N:out std_logic;
			VGA_SYNC_N: out std_logic;
			VGA_HS:		out std_logic;
			VGA_VS:		out std_logic;
			VGA_CLK:	   buffer std_logic;
			Row, Column : out std_logic_vector(20 downto 0);
			CLOCK_25:	buffer std_logic
		);
	END COMPONENT;
	
	
	
	
	
	signal counter:		std_logic_vector(25 downto 0) :="00000000000000000000000000";
   signal clk:         	std_logic   :='0';
	signal clk_send1:     std_logic   :='0';
	signal clk_send2:     std_logic   :='0';
	signal clk_send3:     std_logic   :='0';
	
	signal clk_10:     std_logic   :='0';
	signal clk_25:     std_logic   :='0';
	signal clk_50:     std_logic   :='0';
	signal clk_125:    std_logic   :='0';

	
	
	
	signal ReadBuffer:				std_logic;
	
	
	
	
	
	
	signal Row, Column : std_logic_vector(20 downto 0);
	
	signal CLOCK_25 :  std_LOGIC;
	
	type memory_type is array (0 to 640) of std_logic_vector(6 downto 0);  
signal memory : memory_type :=(others => (others => '0')); --memory for queue.


signal writeP : std_logic_vector(9 downto 0) :="0000000000"; --read/write pointers.
	
	
	
	
			 
   signal FIFOClkNIOS:			std_logic;
   signal FIFOEmptyNIOS:		std_logic;
   signal FIFOFullNIOS:		std_logic;
	signal FIFOWriteNIOS:		std_logic;
   signal DataFIFOPIO:			std_logic_vector(11 downto 0);
   signal FIFOControlNIOS:	std_logic_vector(1 downto 0);
			 
	signal LEDRfake	: std_logic_vector(17 downto 0);
	signal LEDGfake	: std_logic_vector(7 downto 0);	
			 

	
	signal aux:				std_logic_vector(11 downto 0) :="000000000000";
	
	signal DataGen2Buff:		std_logic_vector(11 downto 0);
	signal DataBuff2FIFO:	std_logic_vector(11 downto 0);
	signal DataFIFO2SRAM:	std_logic_vector(11 downto 0);
	signal DataSRAM2Fpio:	std_logic_vector(11 downto 0);
	signal DataFpio2Nios:	std_logic_vector(11 downto 0); 
	
	signal DataReg:			std_logic_vector(11 downto 0);
	signal DataACD:			std_logic_vector(11 downto 0);
	signal DataACDaux:		std_logic_vector(11 downto 0);
	
	signal AUX0:					std_logic;
	signal AUX1:					std_logic;
	signal AUX2:					std_logic;
	signal AUX3:					std_logic;
	
	signal Trigger_reg:				std_logic := '0';
	signal Trigger:					std_logic := '0';
	signal Counter_Long:				std_logic_vector(6 downto 0):="0000000";
	signal Counter_DP_FIFO:			std_logic_vector(2 downto 0):="000";
	signal Counter_DP_FIFO_Up:		std_logic := '0';
	signal Counter_DP_FIFO_Down:	std_logic := '0';
	
	signal WriteFIFO:					std_logic;
	signal ReadFIFO:					std_logic;
	signal Counter_Full:				std_logic := '0';
	signal DP_readed:					std_logic;
	signal FIFO1empty:				std_logic;
	signal FIFO2empty:				std_logic;
	signal Reset:						std_logic;
	signal Emen:						std_logic;
	signal Rdymen:						std_logic;
	signal Addr2W:						std_logic_vector(19 downto 0):="00000000000000000000";
	signal Addr2R:						std_logic_vector(19 downto 0):="00000000000000000000";
	signal Addr:						std_logic_vector(19 downto 0);
	signal RW_RAM:						std_logic;
	signal WriteFIFOpio:				std_logic;
	signal ReadFIFOpio:				std_logic;
	signal FIFO1full:					std_logic;
	signal FIFO2full:					std_logic;
	 
begin
	
	DriverVGA: VGA port map (CLOCK_50, VGA_BLANK_N, VGA_SYNC_N, VGA_HS, VGA_VS, VGA_CLK, Row, Column, CLOCK_25);
	
	
	PLOT: process(Row, Column)
	begin
		if memory(conv_integer(Column)) = Row then
			VGA_B<= "11111111";	
		else
			VGA_B<= "00000000";	
		end if;
		VGA_R<= "00000000";
		VGA_G<= "00000000";	
		
	end process;
	
	RegistrarDatos: process(clk)
	begin
		 if clk'event and clk='1' and SW(0)='1' then
			--memory(conv_integer(writeP)) <= DataReg(4) & DataReg(5) & DataReg(6) & DataReg(7) & DataReg(8) & DataReg(9) & DataReg(10) & DataReg(11);
			memory(conv_integer(writeP)) <= DataReg(11 downto 5) + 100;
			writeP <= writeP + '1';
		 
		 end if;
		 
	end process;
	
	

	HEX5 <= "1111111";
	HEX6 <= "1111111";
	HEX7 <= "1111111";

	

	
	HEX2(0) <= not clk;
		 
   --El buff siempre esta cogiendo valores
	
	U2 : BufferDetector_1
	port map (
		  clk 		=> clk,
		  EnR 		=> ReadBuffer,
        DataOut	=> DataBuff2FIFO,
        DataIn 	=> DataReg,
        Trigger	=> Trigger
	);
	
	 DataReg <= DataACD when SW(12)='1' else
					SW(11 downto 0) when SW(12)='0';
	
	 ReadBuffer	<= Trigger_reg;
	 
	 WriteFIFO	<= SW(17);
	
	 HEX2(1) <=  not Trigger;
    HEX2(2) <=  not Trigger_reg;
	 HEX2(3) <= '1';
	 HEX2(4) <= '1';
	 HEX2(5) <= '1';
	 HEX2(6) <= '1';
	 
	
	 Reg_Trigger: process(clk,Counter_Full) -- Biestable raro que retiene el Trigger!
	 begin
	 
		if clk'event and clk = '1' then 
			if Counter_Full = '1' then
				Trigger_reg <= '0';
			else
				Trigger_reg <= Trigger OR Trigger_reg;  -- La gran patillada!
			end if;
		end if;
	 end process;
	 
	 Counter_Full <= '1' when Counter_long = "1111111" else '0';
	 
	 Contador_Trigger: process(clk) -- Contador de logitud de descarga
	 begin
		 if (clk'event and clk = '1') then
			if (Trigger_reg = '1') then
				Counter_long <= Counter_long + '1';
			end if;
		end if;
	 end process;
	
	
	
	U3 : FifoNM		-- fifo 
	port map (
			data		=> DataReg,
			rdclk		=> FIFOControlNIOS(0),
			rdreq		=> FIFOControlNIOS(1),
			wrclk		=> clk,
			wrreq		=> WriteFIFO, 
			q			=> DataFIFOPIO,
			rdempty	=> FIFO1empty,
			wrfull	=> FIFO1full
	);
	
	HEX4(0) <= not FIFO1empty;
   HEX4(1) <= not WriteFIFO;
	HEX4(2) <= not FIFOControlNIOS(1);
	HEX4(3) <= not FIFO1full;
	HEX4(4) <= not FIFOControlNIOS(0);
	HEX4(5) <= '1';
	HEX4(6) <= '1';
	

	 Reloj: process(CLOCK_50)   --- reloj de 1,2 segundos 
    begin

        if (CLOCK_50'event and CLOCK_50 = '1') then
					counter <= counter + '1';
					if (counter = "10000000000000000000000000") then
						 counter <= "00000000000000000000000000";
						 clk_send1 <= not clk_send1;
					end if;
					
					if (counter = "00000000100000000000000000") then
						 counter <= "00000000000000000000000000";
						 clk_send2 <= not clk_send2;
					end if;
			  
			  
					if (counter = "00000000000000010000000000") then
						 counter <= "00000000000000000000000000";
						 clk_send3 <= not clk_send3;
					end if;
        end if;
    end process;
	 
	 
	 SMA_CLKOUT <=  	clk_send1 when SW(15 downto 13)= "101" else
							clk_send2 when SW(15 downto 13)= "110" else
							clk_send3 when SW(15 downto 13)= "111" else	
							clk_10   when SW(15 downto 13)= "000" else
							clk_25   when SW(15 downto 13)= "001" else
							clk_50   when SW(15 downto 13)= "010" else
							clk_125  when SW(15 downto 13)= "011";
	 
	 
	 clk <= HSMC_CLKIN_P2;
	 
	 LEDG(0)<= HSMC_CLKIN_P2;
	 
	 LEDG(1)<= clk_10;
	 LEDG(2)<= clk_25;
	 LEDG(3)<= clk_50;
	 LEDG(4)<= clk_125;
	 LEDG(5)<= clk_send1;
	 LEDG(6)<= clk_send2;
	 LEDG(7)<= clk_send3;
	 
	 
	 LEDR (11 downto 0) <= DataACD;
	 

	ADC_Datos1: process(HSMC_CLKIN_P2) -- datos de flaco de bajada
	begin
		
		if (HSMC_CLKIN_P2'event and HSMC_CLKIN_P2 = '1') then
		
			
		
			DataACDaux(0) <=  HSMC_RX_D_P(6);
			DataACDaux(2) <=  HSMC_RX_D_P(7);
			DataACDaux(4) <=  HSMC_RX_D_P(8);
			DataACDaux(6) <=  HSMC_RX_D_P(9);
			DataACDaux(8) <=  HSMC_RX_D_P(10);
			DataACDaux(10)<=  HSMC_RX_D_P(11);
			
			DataACD <= DataACDaux;
			
		end if;
	end process;
	
	ADC_Datos2: process(HSMC_CLKIN_P2) -- datos de flaco de subida
	begin
	
		
		if (HSMC_CLKIN_P2'event and HSMC_CLKIN_P2 = '0') then
			DataACDaux(1) <=  HSMC_RX_D_P(6);
			DataACDaux(3) <=  HSMC_RX_D_P(7);
			DataACDaux(5) <=  HSMC_RX_D_P(8);
			DataACDaux(7) <=  HSMC_RX_D_P(9);
			DataACDaux(9) <=  HSMC_RX_D_P(10);
			DataACDaux(11)<=	HSMC_RX_D_P(11);
		end if;
	end process;
 

	PllDeMierda: component pll1
		port map (
			inclk0		=> CLOCK_50,
			c0				=> clk_10,
			c1				=> clk_25,
			c2				=> clk_50,
			c3				=> clk_125
		);
	 
	nioss : component Nios1
        port map (
            clk_clk           => CLOCK_50,           --           clk.clk
            reset_reset_n     => not SW(16),     --         reset.reset_n
            pio_ledg_export   => LEDGfake,   --      pio_ledg.export
            pio_ledr_export   => LEDRfake,   --      pio_ledr.export
            pio_sw_export     => SW,     --        pio_sw.export
            pio_button_export => open, --    pio_button.export
            lcd_external_data => LCD_DATA, --  lcd_external.data
				lcd_external_E    => LCD_EN,    --              .E
            lcd_external_RS   => LCD_RS,   --              .RS
            lcd_external_RW   => LCD_RW,   --              .RW
            uart_external_rxd => UART_RXD, -- uart_external.rxd
            uart_external_txd => UART_TXD, --              .txd
				pio_data_export     => DataFIFOPIO,     --      pio_data.export
            pio_rdydata_export  => not FIFO1empty,  --   pio_rdydata.export
            pio_dataread_export => FIFOControlNIOS  --  pio_dataread.export	
        );
		  
		  


end bh;
