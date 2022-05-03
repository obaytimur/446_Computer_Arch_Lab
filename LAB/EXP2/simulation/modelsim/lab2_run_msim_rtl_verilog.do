transcript on
if {[file exists rtl_work]} {
	vdel -lib rtl_work -all
}
vlib rtl_work
vmap work rtl_work

vlog -vlog01compat -work work +incdir+D:/OKUL/4-2/446/LAB/EXP1 {D:/OKUL/4-2/446/LAB/EXP1/simp_reg_sync_reset_with_enable.v}
vlog -vlog01compat -work work +incdir+D:/OKUL/4-2/446/LAB/EXP1 {D:/OKUL/4-2/446/LAB/EXP1/shift_reg.v}
vlog -vlog01compat -work work +incdir+D:/OKUL/4-2/446/LAB/EXP1 {D:/OKUL/4-2/446/LAB/EXP1/mux_4x1.v}
vlog -vlog01compat -work work +incdir+D:/OKUL/4-2/446/LAB/EXP1 {D:/OKUL/4-2/446/LAB/EXP1/mux_2x1.v}
vlog -vlog01compat -work work +incdir+D:/OKUL/4-2/446/LAB/EXP1 {D:/OKUL/4-2/446/LAB/EXP1/const_value.v}
vlog -vlog01compat -work work +incdir+D:/OKUL/4-2/446/LAB/EXP1 {D:/OKUL/4-2/446/LAB/EXP1/alu_8op.v}

