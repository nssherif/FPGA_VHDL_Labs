library ieee;
use ieee.std_logic_1164.all;

entity hazard2 is 
	port (A, B, C, D: in std_logic;
			F: out std_logic);
end hazard2;

architecture Structure of hazard2 is
	
	component twoInputNand is
		port (x, y: in std_logic;
			z: out std_logic);
	end component;
	
	signal g1out, g2out, g3out, g4out, g5out, g6out, g7out, g8out, g9out, g10out, g11out, g12out, g13out, g14out, g15out, g16out, g17out, g18out: std_logic;
begin
	--1ST LEVEL
	g1: twoInputNand port map (B, C, g1out);
	
	g2: twoInputNand port map (A, A, g2out);
	g3: twoInputNand port map (C, C, g3out);
	
	g4: twoInputNand port map (B, B, g4out);
	g5: twoInputNand port map (D, D, g5out);
	
	
	g6: twoInputNand port map (D, D, g6out);
	g7: twoInputNand port map (A, A, g7out);
	--2ND LEVEL
	g8: twoInputNand port map (g2out, g3out, g8out);
	g9: twoInputNand port map (g4out, g5out, g9out);
	g10: twoInputNand port map (C, g6out, g10out);
	g11: twoInputNand port map (g7out, B, g11out);
	--3RD LEVEL
	g12: twoInputNand port map (g1out, g8out, g12out);
	g14: twoInputNand port map (g10out, g11out, g14out);
	g13: twoInputNand port map (g14out, g14out, g13out);
	--4TH LEVEL
	g15: twoInputNand port map (g9out, g13out, g15out);
	
	--5TH LEVEL
	g16: twoInputNand port map (g12out, g12out, g16out);
	g17: twoInputNand port map (g15out, g15out, g17out);
	
	g18: twoInputNand port map (g16out, g17out, g18out);
	F<= g18out;
	
end Structure;    