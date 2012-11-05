
library ieee;
use ieee.std_logic_unsigned.all;
use ieee.std_logic_arith.all;
use ieee.std_logic_1164.all;



ENTITY VGA is
port(
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
end VGA;


architecture behaviour of VGA is

  subtype counter is std_logic_vector(20 downto 0);
  constant B : natural := 95;  
  constant C : natural := 45;  
  constant D : natural := 640; 
  constant E : natural := 20;  
  constant A : natural := B + C + D + E;  
  constant P : natural := 4;   
  constant Q : natural := 30;  
  constant R : natural := 480; 
  constant S : natural := 14;  
  constant O : natural := P + Q + R + S; 
  constant Res_Fila    : natural := 480;
  constant Res_Columna : natural := 640;
 
   
begin

	Reloj: process(CLOCK_50)		--Generamos un clock de 25 Mhz
		begin
		if CLOCK_50'event AND CLOCK_50='1' then
			CLOCK_25 <= (not CLOCK_25);
			VGA_CLK <=  (not VGA_CLK);  --25 MHz
		end if;
	end process;


  Sincronizacion: process(CLOCK_25)
		variable vertical, horizontal: counter := (others => '0');
		variable Fila, Columna : std_logic_vector(20 downto 0):= (others => '0');
		
		begin
		
		if CLOCK_25'event AND CLOCK_25='1' then
	
		VGA_SYNC_N <= '1';

				if horizontal < A - 1  then
					horizontal := horizontal + 1;
					Columna:= Columna + 1;
				else
					Fila := Fila + 1;
					horizontal := (others => '0');
					Columna:= (others => '0');

					if vertical < O - 1  then 
						vertical := vertical + 1;
					else
						vertical := (others => '0');
						Fila := (others => '0');  
					end if;
				end if;
			
		  -- Pulsos horizontales
				 if  horizontal >= (D + E)  and  horizontal < (D + E + B)  then
				  VGA_HS <= '0';
				else
				  VGA_HS <= '1';
				end if;

		  -- Pulsos veticales
				  if  vertical >= (R + S)  and  vertical < (R + S + P)  then
				  VGA_VS <= '0';
				else
				  VGA_VS <= '1';
				end if;

			--Blanking
				if horizontal <= D and vertical < R then
					VGA_BLANK_N <= '1';
				else
					VGA_BLANK_N <= '0';
				end if;
				
			--VGA_R	<= x"FF";
			Row <= Fila;
			Column <= Columna;
			
	end if;
   end process;

end architecture;



