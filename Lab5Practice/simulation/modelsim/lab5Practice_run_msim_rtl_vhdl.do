transcript on
if {[file exists rtl_work]} {
	vdel -lib rtl_work -all
}
vlib rtl_work
vmap work rtl_work

vcom -93 -work work {H:/My Documents/Downloads/ECE5500/Lab5Practice/fourBitCounter.vhd}
vcom -93 -work work {H:/My Documents/Downloads/ECE5500/Lab5Practice/twentyBitCounter.vhd}
vcom -93 -work work {H:/My Documents/Downloads/ECE5500/Lab5Practice/tenBitShiftRegister.vhd}
vcom -93 -work work {H:/My Documents/Downloads/ECE5500/Lab5Practice/demo_Display.vhd}

