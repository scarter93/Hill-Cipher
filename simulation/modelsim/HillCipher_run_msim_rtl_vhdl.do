transcript on
if {[file exists rtl_work]} {
	vdel -lib rtl_work -all
}
vlib rtl_work
vmap work rtl_work

vcom -93 -work work {C:/Users/scarte9/ECSE487-Ass/HillCipher.vhd}
vcom -93 -work work {C:/Users/scarte9/ECSE487-Ass/vector_mult.vhd}
vcom -93 -work work {C:/Users/scarte9/ECSE487-Ass/matrix_mult_struct.vhd}

