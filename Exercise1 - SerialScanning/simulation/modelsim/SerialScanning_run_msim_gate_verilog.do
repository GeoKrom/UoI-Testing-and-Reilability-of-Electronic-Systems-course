transcript on
if {[file exists gate_work]} {
	vdel -lib gate_work -all
}
vlib gate_work
vmap work gate_work

vlog -vlog01compat -work work +incdir+. {SerialScanning_6_1200mv_85c_slow.vo}

vlog -vlog01compat -work work +incdir+C:/Users/geokr/OneDrive/Desktop/Projects/TestingRelElecSys {C:/Users/geokr/OneDrive/Desktop/Projects/TestingRelElecSys/SDFFChaintb.v}

vsim -t 1ps +transport_int_delays +transport_path_delays -L altera_mf_ver -L altera_ver -L lpm_ver -L sgate_ver -L cycloneiv_hssi_ver -L cycloneiv_pcie_hip_ver -L cycloneiv_ver -L gate_work -L work -voptargs="+acc"  SDFFChaintb

add wave *
view structure
view signals
run -all
