onerror {quit -f}
vlib work
vlog -work work HillCipher.vo
vlog -work work HillCipher.vt
vsim -novopt -c -t 1ps -L cycloneii_ver -L altera_ver -L altera_mf_ver -L 220model_ver -L sgate work.key_inverter_vlg_vec_tst
vcd file -direction HillCipher.msim.vcd
vcd add -internal key_inverter_vlg_vec_tst/*
vcd add -internal key_inverter_vlg_vec_tst/i1/*
add wave /*
run -all
