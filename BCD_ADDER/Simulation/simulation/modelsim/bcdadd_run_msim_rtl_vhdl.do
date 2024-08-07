transcript on
if {[file exists rtl_work]} {
	vdel -lib rtl_work -all
}
vlib rtl_work
vmap work rtl_work

vcom -93 -work work {C:/iitnew/bcdadd/Gates.vhdl}
vcom -93 -work work {C:/iitnew/bcdadd/DUT.vhdl}
vcom -93 -work work {C:/iitnew/add_half/add_half.vhd}
vcom -93 -work work {C:/iitnew/addfulltask/addfulltask.vhd}
vcom -93 -work work {C:/iitnew/bcdadd/bcdadd.vhd}

vcom -93 -work work {C:/iitnew/bcdadd/Testbench.vhdl}

vsim -t 1ps -L altera -L lpm -L sgate -L altera_mf -L altera_lnsim -L maxv -L rtl_work -L work -voptargs="+acc"  Testbench

add wave *
view structure
view signals
run -all
