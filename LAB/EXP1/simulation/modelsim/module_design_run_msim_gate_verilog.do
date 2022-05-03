transcript on
if {[file exists gate_work]} {
	vdel -lib gate_work -all
}
vlib gate_work
vmap work gate_work

vlog -vlog01compat -work work +incdir+. {module_design.vo}

vlog -vlog01compat -work work +incdir+D:/OKUL/4-2/446/LAB/EXP1 {D:/OKUL/4-2/446/LAB/EXP1/mux_2x1_test_bench.v}

vsim -t 1ps -L altera_ver -L altera_lnsim_ver -L cyclonev_ver -L lpm_ver -L sgate_ver -L cyclonev_hssi_ver -L altera_mf_ver -L cyclonev_pcie_hip_ver -L gate_work -L work -voptargs="+acc"  mux_2x1_test_bench

add wave *
view structure
view signals
run -all
