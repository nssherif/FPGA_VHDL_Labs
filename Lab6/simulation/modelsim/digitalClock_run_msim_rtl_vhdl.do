transcript on
if {[file exists rtl_work]} {
	vdel -lib rtl_work -all
}
vlib rtl_work
vmap work rtl_work

vcom -93 -work work {H:/My Documents/Downloads/ECE5500/Lab6/twentySixBitCounter.vhd}
vcom -93 -work work {H:/My Documents/Downloads/ECE5500/Lab6/fourBitCounter.vhd}
vcom -93 -work work {H:/My Documents/Downloads/ECE5500/Lab6/sevenSegment.vhd}
vcom -93 -work work {H:/My Documents/Downloads/ECE5500/Lab6/digitalClock.vhd}

vcom -93 -work work {H:/My Documents/Downloads/ECE5500/Lab6/simulation/modelsim/digitalClock.vht}

vsim -t 1ps -L altera -L lpm -L sgate -L altera_mf -L altera_lnsim -L cyclonev -L rtl_work -L work -voptargs="+acc"  digitalClock_vhd_tst

add wave *
view structure
view signals
run -all
