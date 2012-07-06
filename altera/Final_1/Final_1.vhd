library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_arith.all;
use ieee.std_logic_unsigned.all;

entity Final_1 is
	port
	(
		CLOCK_50:		 in std_logic;
		
		SW:			 in std_logic_vector(17 downto 0);
		KEY:			 in std_logic_vector(3 downto 0);
		LEDR:			 out std_logic_vector(17 downto 0);
		LEDG:			 out std_logic_vector(8 downto 0);
		
		--To SRAM
        SRAM_ADDR:          OUT std_logic_vector(19 downto 0);
        SRAM_WE_N:          OUT std_logic;
        SRAM_CE_N:          OUT std_logic;
        SRAM_OE_N:          OUT std_logic;
        SRAM_DQ:            INOUT std_logic_vector(15 downto 0);
        SRAM_LB_N:          OUT std_logic;
        SRAM_UB_N:          OUT std_logic
	);
	
end Final_1;


architecture rtl of Final_1 is

	component Fifo_1   -- fifo 12x128 
	port 
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
	
	component GeneratorPD -- generador de descargas parciales
	port
	(
		  clk :			 in std_logic;  
        InPD  :  	 	 in std_logic;    
        DataOut : 	 out std_logic_vector(11 downto 0)   --output data registered
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
	
	component DriverSRAM
	port
	(
		clk:                        in std_logic;
		reset:                      in std_logic;
		mem:                        in std_logic;
		rw:                         in std_logic;
		addr:                       in std_logic_vector(19 downto 0);
		data_f2s:                   in std_logic_vector(11 downto 0);
		ready:                      out std_logic;
		data_s2f_r, data_s2f_ur:    out std_logic_vector(11 downto 0);
		ad:                         out std_logic_vector(19 downto 0);
		we_n, oe_n:                 out std_logic;
		dio:                        inout std_logic_vector(11 downto 0);
		ce_n:                       out std_logic;
		lb_n:								 out std_logic;
		ub_n:							  	 out std_logic;
		LEDG:               		    OUT std_logic_vector(4 downto 0) 
	);
	
	end component;
	
	signal counter:		std_logic_vector(25 downto 0) :="00000000000000000000000000";
   signal clk:         	std_logic   :='0';
	
	signal aux:				std_logic_vector(11 downto 0) :="000000000000";
	
	signal DataGen2Buff:		std_logic_vector(11 downto 0);
	signal DataBuff2FIFO:	std_logic_vector(11 downto 0);
	signal DataFIFO2SRAM:	std_logic_vector(11 downto 0);
	signal DataSRAM2Fpio:	std_logic_vector(11 downto 0);
	
	signal AUX1:					std_logic_vector(11 downto 0);
	signal AUX2:					std_logic_vector(11 downto 0);
	signal AUX3:					std_logic_vector(3 downto 0);
	
	signal Trigger_reg:				std_logic := '0';
	signal Trigger:					std_logic := '0';
	signal Counter_Long:				std_logic_vector(3 downto 0):="0000";
	signal Counter_DP_FIFO:			std_logic_vector(2 downto 0):="000";
	signal Counter_DP_FIFO_Up:		std_logic := '0';
	signal Counter_DP_FIFO_Down:	std_logic := '0';
	signal ReadBuffer:				std_logic;
	signal WriteFIFO:					std_logic;
	signal ReadFIFO:					std_logic;
	signal Counter_Full:				std_logic := '0';
	signal DP_readed:					std_logic;
	signal FIFO1empty:					std_logic;
	signal FIFO2empty:					std_logic;
	signal Reset:						std_logic;
	signal Emen:						std_logic;
	signal Rdymen:						std_logic;
	signal Addr2W:						std_logic_vector(19 downto 0):="00000000000000000000";
	signal Addr2R:						std_logic_vector(19 downto 0):="00000000000000000000";
	signal Addr:						std_logic_vector(19 downto 0):="00000000000000000000";
	signal RW_RAM:						std_logic;
	signal WriteFIFOpio:				std_logic;
	signal ReadFIFOpio:				std_logic;
	signal FIFO1full:					std_logic;
	signal FIFO2full:					std_logic;
	
	
	
	
begin


	
	
	
	U1 : GeneratorPD	-- fifo antes de la SRAM 
	port map  (
		  clk 		=> clk,
        InPD 		=> not KEY(3),
        DataOut	=> DataGen2Buff
	);
	
	U2 : BufferDetector_1
	port map (
		  clk 		=> clk,
		  EnR 		=> ReadBuffer,
        DataOut	=> DataBuff2FIFO,
        DataIn 	=> DataGen2Buff,
        Trigger	=> Trigger
	);
	
	U3 : Fifo_1		-- fifo antes de la SRAM 
	port map (
			data		=> DataBuff2FIFO,
			rdclk		=> clk,
			rdreq		=> ReadFIFO,
			wrclk		=> clk,
			wrreq		=> WriteFIFO, 
			q			=> DataFIFO2SRAM,
			rdempty	=> FIFO1empty,
			wrfull	=> FIFO1full
	);
	
	
	
	SRAM: DriverSRAM 
	port map (
        clk             => clk,
        reset           => Reset,
        mem             => Emen,      
        rw              => RW_RAM,
        addr            => Addr,
        data_f2s        => DataFIFO2SRAM,
        ready           => Rdymen,
        data_s2f_r      => AUX1,
        data_s2f_ur     => DataSRAM2Fpio,
        -- To SRAM
        ad              => SRAM_ADDR,
        we_n            => SRAM_WE_N,
        oe_n            => SRAM_OE_N,
        dio             => SRAM_DQ (11 downto 0),
        ce_n            => SRAM_CE_N,
        lb_n            => SRAM_LB_N,
        ub_n            => SRAM_UB_N,
        LEDG(4 downto 0)=> LEDG(4 downto 0)

    );
	
	U4 : Fifo_1		-- fifo despues de la SRAM 
	port map (
			data		=> DataSRAM2Fpio,
			rdclk		=> clk,
			rdreq		=> ReadFIFOpio,
			wrclk		=> clk,
			wrreq		=> WriteFIFOpio, 
			q			=> LEDR(11 downto 0),
			rdempty	=> FIFO2empty,
			wrfull	=> FIFO2full
	);
	
	
	EscrivirSRAM: process(ReadFIFO)
	begin
	
		if ReadFIFO'event and ReadFIFO = '1' then
			if (RW_RAM ='0') then
				Addr2W <= Addr2W +'1';
			end if;
		end if; 
	end process;
	
	
	LeerSRAM: process(Emen)
	begin
	
		if Emen'event and Emen = '1' then
			if (RW_RAM ='1') then
				Addr2R <= Addr2R +'1';
			end if;
		end if; 
	end process;
	
	WriteFIFOpio <= (not Emen) and (RW_RAM);
	
	LEDG(7) <= FIFO2empty;
	
	Addr <= Addr2W when (RW_RAM = '0') else Addr2R;
	
	--Addr2R <= "000000000000" & SW(7 downto 0);
	
	RW_RAM <= SW(17);
	
	LEDG(5) <= WriteFIFOpio;
	
	Emen <= ( Rdymen and (not FIFO1empty) and (not RW_RAM) ) or ( Rdymen and (not FIFO2full) and RW_RAM );
	
	ReadFIFO <= Emen and (not RW_RAM);
	
	ReadFIFOpio <= not KEY(1);
	
	--LEDR(11 downto 0) <= DataFIFO2SRAM;
	
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
	 
	 Contador_Trigger: process(clk) -- Contador de logitud de descarga
	 begin
		 if (clk'event and clk = '1') then
			if (Trigger_reg = '1') then
				Counter_long <= Counter_long + '1';
			end if;
		end if;
	 end process;
	 
	 
	 --LEDG(7 downto 4) <= Counter_Long;
	 
	 
	 Contador_D_FIFO: process(clk) -- Contador de descargar dentro de la FIFO
	 begin
		if clk'event and clk = '1' then
			if Counter_DP_FIFO_Up = '1' and Counter_DP_FIFO_Down = '1' then
			elsif Counter_DP_FIFO_Up = '1' then
				Counter_DP_FIFO <= Counter_DP_FIFO + '1';
			elsif Counter_DP_FIFO_Down = '1' then
				Counter_DP_FIFO <= Counter_DP_FIFO - '1';
			end if;
		end if;
	 end process;
	 
	 Flanco_Triger_Contador: process(clk) -- Gennerador del Down para en contador a partir de Trigger_reg
	 begin
	 
		if clk'event and clk ='1' then
	
			if Counter_DP_FIFO_Up = '1' then
				Counter_DP_FIFO_Up <= '0';
			else
				If Trigger_reg = '1' and Counter_DP_FIFO_Up = '0' then
					Counter_DP_FIFO_Up <= Trigger_reg;
				end if;
			end if;
		end if;
	 end process;
	 
	 
	 
	 
	
	 Counter_Full <= '1' when Counter_long = "1111" else '0';

	 Reloj: process(CLOCK_50)
    begin

        if (CLOCK_50'event and CLOCK_50 = '1') then
            counter <= counter + '1';
            if (counter = "11111111111111111111111111") then
                counter <= "00000000000000000000000000";
                clk <= not clk;
					 aux <= aux + '1';
            end if;
        end if;
    end process;
	 
	 
	ReadBuffer	<=Trigger_reg;
	WriteFIFO	<=Trigger_reg;
	
	LEDR(17) <= clk;
	
	LEDR(16) <= Trigger;
	
	LEDR(15) <= Trigger_reg;
	
	DP_readed <= '0' when KEY(2)= '0' else '1';
	
	--LEDR(14 downto 12) <= Counter_DP_FIFO;
	
	--Counter_DP_FIFO_Down <= not KEY(2);
	
end rtl;