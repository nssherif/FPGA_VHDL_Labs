LIBRARY ieee  ; 
LIBRARY std  ; 
USE ieee.std_logic_1164.all  ; 
USE ieee.std_logic_textio.all  ; 
USE ieee.std_logic_unsigned.all  ; 
USE std.textio.all  ; 
ENTITY twoinputnand  IS 
END ; 
 
ARCHITECTURE twoinputnand_arch OF twoinputnand IS
  SIGNAL x   :  STD_LOGIC  ; 
  SIGNAL y   :  STD_LOGIC  ; 
  SIGNAL z   :  STD_LOGIC  ; 
  COMPONENT twoInputNand  
    PORT ( 
      x  : in STD_LOGIC ; 
      y  : in STD_LOGIC ; 
      z  : out STD_LOGIC ); 
  END COMPONENT ; 
BEGIN
  DUT  : twoInputNand  
    PORT MAP ( 
      x   => x  ,
      y   => y  ,
      z   => z   ) ; 

	x <= not x after 20 ns ;
	y <= not y after 40 ns ;
END;
