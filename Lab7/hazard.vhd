library ieee;
use ieee.std_logic_1164.all;

entity hazard is 
	port (A, B, C, D: in std_logic;
			F: out std_logic);
end hazard;

architecture Structure of hazard is
	
	component twoInputNand is
		port (x, y: in std_logic;
			z: out std_logic);
	end component;
	
	signal g1out, g2out, g3out, g4out, g5out, g6out, g7out, g8out, g9out, g10out: std_logic;
	begin
	g1: twoInputNand port map (A, A, g1out);
	g2: twoInputNand port map (C, C, g2out);
	
	g3: twoInputNand port map (B, C, g3out);
	
	g4: twoInputNand port map (B, B, g4out);
	g5: twoInputNand port map (D, D, g5out);
	
	--2ND LEVEL
	g6: twoInputNand port map (g1out, g2out, g6out);
	g7: twoInputNand port map (g4out, g5out, g7out);
	
	
	--3RD LEVEL
	g8: twoInputNand port map (g6out, g7out, g8out);
	
	--4TH LEVEL
	g9: twoInputNand port map (g8out, g8out, g9out);
	
	--5TH LEVEL
	g10: twoInputNand port map (g3out, g9out, g10out);
	
	F<= g10out;
	
end Structure;    