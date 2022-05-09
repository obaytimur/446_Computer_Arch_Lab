onerror {exit -code 1}
vlib work
vcom -work work single_cycle_processor.vho
vcom -work work simulation.vwf.vht
vsim -t 1ps -L cyclonev -L altera -L altera_mf -L 220model -L sgate -L altera_lnsim work.single_cycle_processor_vhd_vec_tst
vcd file -direction single_cycle_processor.msim.vcd
vcd add -internal single_cycle_processor_vhd_vec_tst/*
vcd add -internal single_cycle_processor_vhd_vec_tst/i1/*
proc simTimestamp {} {
    echo "Simulation time: $::now ps"
    if { [string equal running [runStatus]] } {
        after 2500 simTimestamp
    }
}
after 2500 simTimestamp
run -all
quit -f


