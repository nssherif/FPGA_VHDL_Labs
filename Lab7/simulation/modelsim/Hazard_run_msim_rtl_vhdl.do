transcript on
if {[file exists rtl_work]} {
	vdel -lib rtl_work -all
}
vlib rtl_work
vmap work rtl_work

vcom -93 -work work {H:/My Documents/Downloads/ECE5500/Lab7/twoInputNand.vhd}
vcom -93 -work work {H:/My Documents/Downloads/ECE5500/Lab7/hazard.vhd}

vcom -93 -work work {H:/My Documents/Downloads/ECE5500/Lab7/simulation/modelsim/twoinputnand.vhd}

vsim -t 1ps -L altera -L lpm -L sgate -L altera_mf -L altera_lnsim -L cyclonev -L rtl_work -L work -voptargs="+acc"  nandTB

add wave *
view structure
view signals
run -all
