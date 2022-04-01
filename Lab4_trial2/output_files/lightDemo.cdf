/* Quartus Prime Version 16.1.1 Build 200 11/30/2016 SJ Lite Edition */
JedecChain;
	FileRevision(JESD32A);
	DefaultMfr(6E);

	P ActionCode(Ign)
		Device PartName(5CSEMA5) MfrSpec(OpMask(0));
	P ActionCode(Cfg)
		Device PartName(5CSEMA5F31) Path("H:/My Documents/Downloads/ECE5500/Lab4_trial2/output_files/") File("light.sof") MfrSpec(OpMask(1));

ChainEnd;

AlteraBegin;
	ChainType(JTAG);
AlteraEnd;
