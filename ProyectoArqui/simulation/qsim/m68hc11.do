onerror {exit -code 1}
vlib work
vcom -work work m68hc11.vho
vcom -work work Waveform9.vwf.vht
vsim -c -t 1ps -L fiftyfivenm -L altera -L altera_mf -L 220model -L sgate -L altera_lnsim work.m68hc11_vhd_vec_tst
vcd file -direction m68hc11.msim.vcd
vcd add -internal m68hc11_vhd_vec_tst/*
vcd add -internal m68hc11_vhd_vec_tst/i1/*
proc simTimestamp {} {
    echo "Simulation time: $::now ps"
    if { [string equal running [runStatus]] } {
        after 2500 simTimestamp
    }
}
after 2500 simTimestamp
run -all
quit -f

