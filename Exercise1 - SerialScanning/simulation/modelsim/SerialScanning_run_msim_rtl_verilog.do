transcript on
if {[file exists rtl_work]} {
	vdel -lib rtl_work -all
}
vlib rtl_work
vmap work rtl_work

vlog -vlog01compat -work work +incdir+C:/Users/geokr/OneDrive/Desktop/Projects/TestingRelElecSys {C:/Users/geokr/OneDrive/Desktop/Projects/TestingRelElecSys/SDFF.v}
vlog -vlog01compat -work work +incdir+C:/Users/geokr/OneDrive/Desktop/Projects/TestingRelElecSys {C:/Users/geokr/OneDrive/Desktop/Projects/TestingRelElecSys/MyDFF.v}
vlog -vlog01compat -work work +incdir+C:/Users/geokr/OneDrive/Desktop/Projects/TestingRelElecSys {C:/Users/geokr/OneDrive/Desktop/Projects/TestingRelElecSys/CUT.v}
vlog -vlog01compat -work work +incdir+C:/Users/geokr/OneDrive/Desktop/Projects/TestingRelElecSys {C:/Users/geokr/OneDrive/Desktop/Projects/TestingRelElecSys/SDFFChain.v}
vlog -vlog01compat -work work +incdir+C:/Users/geokr/OneDrive/Desktop/Projects/TestingRelElecSys {C:/Users/geokr/OneDrive/Desktop/Projects/TestingRelElecSys/TRCUT.v}

vlog -vlog01compat -work work +incdir+C:/Users/geokr/OneDrive/Desktop/Projects/TestingRelElecSys {C:/Users/geokr/OneDrive/Desktop/Projects/TestingRelElecSys/TRCUTtb.v}

vsim -t 1ps -L altera_ver -L lpm_ver -L sgate_ver -L altera_mf_ver -L altera_lnsim_ver -L cycloneiv_hssi_ver -L cycloneiv_pcie_hip_ver -L cycloneiv_ver -L rtl_work -L work -voptargs="+acc"  TRCUTtb

add wave *
view structure
view signals
run -all
