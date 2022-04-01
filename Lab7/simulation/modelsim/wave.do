view wave 
wave clipboard store
wave create -pattern none -portmode in -language vhdl /twoinputnand/x 
wave create -pattern none -portmode in -language vhdl /twoinputnand/y 
wave create -pattern none -portmode out -language vhdl /twoinputnand/z 
wave modify -driver freeze -pattern constant -value 0,1 -starttime 0ns -endtime 1000ns NewSig:/twoinputnand/x 
wave modify -driver freeze -pattern random -initialvalue 0 1 -period 50ns -random_type Uniform -seed 5 -starttime 0ns -endtime 1000ns NewSig:/twoinputnand/x 
wave modify -driver freeze -pattern random -initialvalue 0 -period 50ns -random_type Uniform -seed 5 -starttime 0ns -endtime 1000ns NewSig:/twoinputnand/x 
wave modify -driver freeze -pattern constant -value 0 -starttime 0ns -endtime 1000ns NewSig:/twoinputnand/y 
wave modify -driver expectedOutput -pattern constant -value 0 -starttime 0ns -endtime 1000ns NewSig:/twoinputnand/z 
wave modify -driver freeze -pattern constant -value 0 -starttime 0ns -endtime 1000ns NewSig:/twoinputnand/x 
{wave export -file {H:/My Documents/Downloads/ECE5500/Lab7/simulation/modelsim/twoinputnand} -starttime 0 -endtime 1000 -format vhdl -designunit twoinputnand} 
WaveCollapseAll -1
wave clipboard restore
