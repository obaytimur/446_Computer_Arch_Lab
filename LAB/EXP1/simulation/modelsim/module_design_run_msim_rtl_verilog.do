transcript on
if {[file exists rtl_work]} {
	vdel -lib rtl_work -all
}
vlib rtl_work
vmap work rtl_work

vlog -vlog01compat -work work +incdir+D:/OKUL/4-2/446/LAB/EXP1 {D:/OKUL/4-2/446/LAB/EXP1/const_value.v}
vlog -vlog01compat -work work +incdir+D:/OKUL/4-2/446/LAB/EXP1 {D:/OKUL/4-2/446/LAB/EXP1/mux_2x1.v}
vlog -vlog01compat -work work +incdir+D:/OKUL/4-2/446/LAB/EXP1 {D:/OKUL/4-2/446/LAB/EXP1/alu_8op.v}
vlog -vlog01compat -work work +incdir+D:/OKUL/4-2/446/LAB/EXP1 {D:/OKUL/4-2/446/LAB/EXP1/simp_reg_sync_reset.v}
vlog -vlog01compat -work work +incdir+D:/OKUL/4-2/446/LAB/EXP1 {D:/OKUL/4-2/446/LAB/EXP1/shift_reg.v}

vlog -vlog01compat -work work +incdir+D:/OKUL/4-2/446/LAB/EXP1 {D:/OKUL/4-2/446/LAB/EXP1/mux_2x1_test_bench.v}

vsim -t 1ps -L altera_ver -L lpm_ver -L sgate_ver -L altera_mf_ver -L altera_lnsim_ver -L cyclonev_ver -L cyclonev_hssi_ver -L cyclonev_pcie_hip_ver -L rtl_work -L work -voptargs="+acc"  mux_2x1_test_bench

add wave *
view structure
view signals
run -all
