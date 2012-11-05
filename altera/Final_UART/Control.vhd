
library ieee;
use ieee.std_logic_unsigned.all;
use ieee.std_logic_arith.all;
use ieee.std_logic_1164.all;


ENTITY Control is
port(
 CLOCK_50: 	in std_logic;
	KEY:	 		in std_logic_vector(3 downto 0);
	SW:			in std_logic_vector(17 downto 0);
	LEDR: 		out std_logic_vector(17 downto 0);
	LEDG: 		out std_logic_vector(7 downto 0);
	VGA_R:		out std_logic_vector(7 downto 0);
	VGA_G:		out std_logic_vector(7 downto 0);
	VGA_B:		out std_logic_vector(7 downto 0);
	VGA_BLANK_N:out std_logic;
	VGA_SYNC_N: out std_logic;
	VGA_HS:		out std_logic;
	VGA_VS:		out std_logic;
	VGA_CLK:	   buffer std_logic;
	CLOCK_25:	buffer std_logic
	);
end Control;

architecture behaviour of Control is

	signal Row, Column : std_logic_vector(20 downto 0);

	constant B :		natural := 80; 
	constant CentroX:	natural := 320;  
	constant CentroY:	natural := 250; 
	constant Radio:	natural := 10000;
	
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
	
	begin
	
	DriverVGA: VGA port map (CLOCK_50, VGA_BLANK_N, VGA_SYNC_N, VGA_HS, VGA_VS, VGA_CLK, Row, Column, CLOCK_25);
	
	
	Seletor: process(KEY, Row, Column)
	
	variable Aux_R, Aux_G, Aux_B: std_logic_vector(7 downto 0);
		
	begin
	
			if Column < B then --1
				Aux_R:=x"FF";
				Aux_G:=x"FF";
				Aux_B:=x"FF";
			end if;
			if Column >= B and Column < B*2 then --2
				Aux_R:=x"FF";
				Aux_G:=x"FF";
				Aux_B:=x"00";
			end if;
			if Column >= B*2 and Column < B*3 then --3
				Aux_R:=x"00";
				Aux_G:=x"FF";
				Aux_B:=x"FF";
			end if;
			if Column >= B*3 and Column < B*4 then --4
				Aux_R:=x"00";
				Aux_G:=x"FF";
				Aux_B:=x"00";
			end if;
			if Column >= B*4 and Column < B*5 then --5
				Aux_R:=x"FF";
				Aux_G:=x"00";
				Aux_B:=x"FF";
			end if;
			if Column >= B*5 and Column < B*6 then --6
				Aux_R:=x"FF";
				Aux_G:=x"00";
				Aux_B:=x"00";
			end if;
			if Column >= B*6 and Column < B*7 then --7
				Aux_R:=x"00";
				Aux_G:=x"00";
				Aux_B:=x"FF";
			end if;
			if Column >= B*7 then --8
				Aux_R:=x"00";
				Aux_G:=x"00";
				Aux_B:=x"00";
			end if;

		
		if SW(0)='1' then		-- Activamos el Azul
				--Aux_R:=x"00";
				--Aux_G:=x"00";
				Aux_B:=x"FF";
		end if;
		if SW(1)='1' then		-- Activamos el Verde
				--Aux_R:=x"00";
				Aux_G:=x"FF";
				--Aux_B:=x"00";
		end if;
		if SW(2)='1' then		-- Activamos el Rojo
				Aux_R:=x"FF";
				--Aux_G:=x"00";
				--Aux_B:=x"00";
		end if;
		
		
		
		
		if SW(4)='1' then		--Dibujamos la bandera Japonesa
		
				Aux_R:=x"FF";
				Aux_G:=x"FF";
				Aux_B:=x"FF";
			
			if ( ((Column-CentroX)*(Column-CentroX)) + ((Row-CentroY)*(Row-CentroY)) ) < Radio then
				Aux_R:=x"FF";
				Aux_G:=x"00";
				Aux_B:=x"00";	
			end if;
			
			if ( ((CentroX-Column)*(CentroX-Column)) + ((CentroY-Row)*(CentroY-Row)) ) < Radio then
				Aux_R:=x"FF";
				Aux_G:=x"00";
				Aux_B:=x"00";	
			end if;
			
			if ( ((CentroX-Column)*(CentroX-Column)) + ((Row-CentroY)*(Row-CentroY)) ) < Radio then
				Aux_R:=x"FF";
				Aux_G:=x"00";
				Aux_B:=x"00";	
				
			end if;
			if ( ((Column-CentroX)*(Column-CentroX)) + ((CentroY-Row)*(CentroY-Row)) ) < Radio then
				Aux_R:=x"FF";
				Aux_G:=x"00";
				Aux_B:=x"00";	
			end if;	

		end if;
		
		if SW(3)='1' then  -- Negamos los colores
		
				if Aux_R=x"00"then
					Aux_R:=x"FF"; 
				else
					Aux_R:=x"00"; 
				end if;
								
				if Aux_G=x"00" then
					Aux_G:=x"FF";
				else
					Aux_G:=x"00"; 
				end if;
				
				if  Aux_B=x"00" then
					Aux_B:=x"FF";
				else
					Aux_B:=x"00"; 	
				end if;
				
		end if;
		
		VGA_R<= Aux_R;
		VGA_G<= Aux_G;	
		VGA_B<= Aux_B;	
		
	end process;
	
end behaviour;
	