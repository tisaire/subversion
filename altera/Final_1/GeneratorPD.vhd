library IEEE;  
use IEEE.STD_LOGIC_1164.ALL;  
use IEEE.STD_LOGIC_ARITH.ALL;  
use IEEE.STD_LOGIC_UNSIGNED.ALL;  

entity GeneratorPD is  

port (  
		  clk :			 in std_logic;  
        InPD  :  	 	 in std_logic;    
        DataOut : 	 out std_logic_vector(11 downto 0)   --output data registered
     );  
	  
end GeneratorPD;

architecture BH of GeneratorPD is

	signal DataOut_buz:  	std_logic_vector(5 downto 0) :="000000";
	signal DP:					std_logic;

begin
	
	Gen: process(clk)
	begin
	
		if (clk'event and clk='1') then
			DataOut_buz <= DataOut_buz + '1';
			if (DataOut_buz = "111111")	then 
				DataOut_buz <= "000000";
			end if;
			
			--DP <= InPD;
			
		end if;
	end process;
	
	DP <= InPD;
	
	DataOut <= ("000000" & DataOut_buz) when InPD='0' else "111111111111";

end BH;