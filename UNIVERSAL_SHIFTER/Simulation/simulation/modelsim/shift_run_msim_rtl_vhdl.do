transcript on
if {[file exists rtl_work]} {
	vdel -lib rtl_work -all
}
vlib rtl_work
vmap work rtl_work

vcom -93 -work work {C:/iitnew/shift/Gates.vhdl}
vcom -93 -work work {C:/iitnew/shift/DUT.vhdl}
vcom -93 -work work {C:/iitnew/5task/muxtask.vhd}
vcom -93 -work work {C:/iitnew/shift/shift.vhd}

vcom -93 -work work {C:/iitnew/shift/Testbench.vhdl}

vsim -t 1ps -L altera -L lpm -L sgate -L altera_mf -L altera_lnsim -L maxv -L rtl_work -L work -voptargs="+acc"  Testbench

add wave *
view structure
view signals
run -all
