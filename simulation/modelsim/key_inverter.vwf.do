vlog -work work C:/Users/scarte9/ECSE487-Ass/simulation/modelsim/key_inverter.vwf.vt
vsim -novopt -c -t 1ps -L cycloneii_ver -L altera_ver -L altera_mf_ver -L 220model_ver -L sgate work.key_inverter_vlg_vec_tst
onerror {resume}
add wave {key_inverter_vlg_vec_tst/i1/clk}
add wave {key_inverter_vlg_vec_tst/i1/ek11}
add wave {key_inverter_vlg_vec_tst/i1/ek11[3]}
add wave {key_inverter_vlg_vec_tst/i1/ek11[2]}
add wave {key_inverter_vlg_vec_tst/i1/ek11[1]}
add wave {key_inverter_vlg_vec_tst/i1/ek11[0]}
add wave {key_inverter_vlg_vec_tst/i1/ek12}
add wave {key_inverter_vlg_vec_tst/i1/ek12[3]}
add wave {key_inverter_vlg_vec_tst/i1/ek12[2]}
add wave {key_inverter_vlg_vec_tst/i1/ek12[1]}
add wave {key_inverter_vlg_vec_tst/i1/ek12[0]}
add wave {key_inverter_vlg_vec_tst/i1/ek13}
add wave {key_inverter_vlg_vec_tst/i1/ek13[3]}
add wave {key_inverter_vlg_vec_tst/i1/ek13[2]}
add wave {key_inverter_vlg_vec_tst/i1/ek13[1]}
add wave {key_inverter_vlg_vec_tst/i1/ek13[0]}
add wave {key_inverter_vlg_vec_tst/i1/ek21}
add wave {key_inverter_vlg_vec_tst/i1/ek21[3]}
add wave {key_inverter_vlg_vec_tst/i1/ek21[2]}
add wave {key_inverter_vlg_vec_tst/i1/ek21[1]}
add wave {key_inverter_vlg_vec_tst/i1/ek21[0]}
add wave {key_inverter_vlg_vec_tst/i1/ek22}
add wave {key_inverter_vlg_vec_tst/i1/ek22[3]}
add wave {key_inverter_vlg_vec_tst/i1/ek22[2]}
add wave {key_inverter_vlg_vec_tst/i1/ek22[1]}
add wave {key_inverter_vlg_vec_tst/i1/ek22[0]}
add wave {key_inverter_vlg_vec_tst/i1/ek23}
add wave {key_inverter_vlg_vec_tst/i1/ek23[3]}
add wave {key_inverter_vlg_vec_tst/i1/ek23[2]}
add wave {key_inverter_vlg_vec_tst/i1/ek23[1]}
add wave {key_inverter_vlg_vec_tst/i1/ek23[0]}
add wave {key_inverter_vlg_vec_tst/i1/ek31}
add wave {key_inverter_vlg_vec_tst/i1/ek31[3]}
add wave {key_inverter_vlg_vec_tst/i1/ek31[2]}
add wave {key_inverter_vlg_vec_tst/i1/ek31[1]}
add wave {key_inverter_vlg_vec_tst/i1/ek31[0]}
add wave {key_inverter_vlg_vec_tst/i1/ek32}
add wave {key_inverter_vlg_vec_tst/i1/ek32[3]}
add wave {key_inverter_vlg_vec_tst/i1/ek32[2]}
add wave {key_inverter_vlg_vec_tst/i1/ek32[1]}
add wave {key_inverter_vlg_vec_tst/i1/ek32[0]}
add wave {key_inverter_vlg_vec_tst/i1/ek33}
add wave {key_inverter_vlg_vec_tst/i1/ek33[3]}
add wave {key_inverter_vlg_vec_tst/i1/ek33[2]}
add wave {key_inverter_vlg_vec_tst/i1/ek33[1]}
add wave {key_inverter_vlg_vec_tst/i1/ek33[0]}
add wave {key_inverter_vlg_vec_tst/i1/dk11}
add wave {key_inverter_vlg_vec_tst/i1/dk11[3]}
add wave {key_inverter_vlg_vec_tst/i1/dk11[2]}
add wave {key_inverter_vlg_vec_tst/i1/dk11[1]}
add wave {key_inverter_vlg_vec_tst/i1/dk11[0]}
add wave {key_inverter_vlg_vec_tst/i1/dk12}
add wave {key_inverter_vlg_vec_tst/i1/dk12[3]}
add wave {key_inverter_vlg_vec_tst/i1/dk12[2]}
add wave {key_inverter_vlg_vec_tst/i1/dk12[1]}
add wave {key_inverter_vlg_vec_tst/i1/dk12[0]}
add wave {key_inverter_vlg_vec_tst/i1/dk13}
add wave {key_inverter_vlg_vec_tst/i1/dk13[3]}
add wave {key_inverter_vlg_vec_tst/i1/dk13[2]}
add wave {key_inverter_vlg_vec_tst/i1/dk13[1]}
add wave {key_inverter_vlg_vec_tst/i1/dk13[0]}
add wave {key_inverter_vlg_vec_tst/i1/dk21}
add wave {key_inverter_vlg_vec_tst/i1/dk21[3]}
add wave {key_inverter_vlg_vec_tst/i1/dk21[2]}
add wave {key_inverter_vlg_vec_tst/i1/dk21[1]}
add wave {key_inverter_vlg_vec_tst/i1/dk21[0]}
add wave {key_inverter_vlg_vec_tst/i1/dk22}
add wave {key_inverter_vlg_vec_tst/i1/dk22[3]}
add wave {key_inverter_vlg_vec_tst/i1/dk22[2]}
add wave {key_inverter_vlg_vec_tst/i1/dk22[1]}
add wave {key_inverter_vlg_vec_tst/i1/dk22[0]}
add wave {key_inverter_vlg_vec_tst/i1/dk23}
add wave {key_inverter_vlg_vec_tst/i1/dk23[3]}
add wave {key_inverter_vlg_vec_tst/i1/dk23[2]}
add wave {key_inverter_vlg_vec_tst/i1/dk23[1]}
add wave {key_inverter_vlg_vec_tst/i1/dk23[0]}
add wave {key_inverter_vlg_vec_tst/i1/dk31}
add wave {key_inverter_vlg_vec_tst/i1/dk31[3]}
add wave {key_inverter_vlg_vec_tst/i1/dk31[2]}
add wave {key_inverter_vlg_vec_tst/i1/dk31[1]}
add wave {key_inverter_vlg_vec_tst/i1/dk31[0]}
add wave {key_inverter_vlg_vec_tst/i1/dk32}
add wave {key_inverter_vlg_vec_tst/i1/dk32[3]}
add wave {key_inverter_vlg_vec_tst/i1/dk32[2]}
add wave {key_inverter_vlg_vec_tst/i1/dk32[1]}
add wave {key_inverter_vlg_vec_tst/i1/dk32[0]}
add wave {key_inverter_vlg_vec_tst/i1/dk33}
add wave {key_inverter_vlg_vec_tst/i1/dk33[3]}
add wave {key_inverter_vlg_vec_tst/i1/dk33[2]}
add wave {key_inverter_vlg_vec_tst/i1/dk33[1]}
add wave {key_inverter_vlg_vec_tst/i1/dk33[0]}
run -all
