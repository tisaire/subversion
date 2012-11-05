library IEEE;  
use IEEE.STD_LOGIC_1164.ALL;  
use IEEE.STD_LOGIC_ARITH.ALL;  
use IEEE.STD_LOGIC_UNSIGNED.ALL;  

entity BufferDetector_1 is  

port (  clk : in std_logic;  
        EnR : in std_logic;   
        DataOut : out std_logic_vector(11 downto 0);    --output data  
        DataIn : in std_logic_vector (11 downto 0);     --input data  
        Trigger : out std_logic
     );  
	  
end BufferDetector_1;

architecture Behavioral of BufferDetector_1 is  

type memory_type is array (0 to 7) of std_logic_vector(11 downto 0);  
signal memory : memory_type :=(others => (others => '0')); --memory for queue.
  
signal readptr : std_logic_vector(2 downto 0) :="001"; --read/write pointers.
signal writeptr : std_logic_vector(2 downto 0) :="000"; --read/write pointers.  
 

begin  

  process(clk)  
  begin   
    if(clk'event and clk='1' and EnR ='1') then  
	 
      DataOut <= memory(conv_integer(readptr));  
	  
    end if;
    if(clk'event and clk='1') then

      memory(conv_integer(writeptr)) <= DataIn;  
		
      writeptr <= writeptr + '1';  
		readptr <= readptr + '1';
		
		if(readptr = "111") then      --resetting read pointer.  
      readptr <= "000";  
      end if;  
      if(writeptr = "111") then     --checking whether queue is full or not 
      writeptr <= "000";  
		end if; 
		
	 end if;  
     
  end process; 
 
Trigger <= '1' when (memory(0) > 2048) or (memory(1) > 2048) or (memory(2) > 2048) or (memory(3) > 2048) or (memory(4) > 2048) or (memory(5) > 2048) or (memory(6) > 2048) or (memory(7) > 2048) else '0';

end Behavioral; 


