transcript on
if {[file exists rtl_work]} {
	vdel -lib rtl_work -all
}
vlib rtl_work
vmap work rtl_work

vcom -93 -work work {C:/Users/tiago_nevoa/QuartusProjects/ParkCounter/VHDL/FA.vhd}
vcom -93 -work work {C:/Users/tiago_nevoa/QuartusProjects/ParkCounter/VHDL/adder3bit.vhd}

