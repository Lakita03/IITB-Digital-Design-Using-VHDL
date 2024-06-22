transcript on
if {[file exists rtl_work]} {
	vdel -lib rtl_work -all
}
vlib rtl_work
vmap work rtl_work

vcom -93 -work work {C:/iitnew/add4_sub/Gates.vhdl}
vcom -93 -work work {C:/iitnew/add4_sub/DUT.vhdl}
vcom -93 -work work {C:/iitnew/add4_sub/add4.vhd}
vcom -93 -work work {C:/iitnew/add4_sub/f_add.vhd}

vcom -93 -work work {C:/iitnew/add4_sub/Testbench.vhdl}

vsim -t 1ps -L altera -L lpm -L sgate -L altera_mf -L altera_lnsim -L maxv -L rtl_work -L work -voptargs="+acc"  Testbench

add wave *
view structure
view signals
run -all
