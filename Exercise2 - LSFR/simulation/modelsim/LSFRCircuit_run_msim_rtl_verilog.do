transcript on
if {[file exists rtl_work]} {
	vdel -lib rtl_work -all
}
vlib rtl_work
vmap work rtl_work

vlog -vlog01compat -work work +incdir+C:/Users/geokr/OneDrive/Desktop/Projects/TestingRelElecSys/LSFR {C:/Users/geokr/OneDrive/Desktop/Projects/TestingRelElecSys/LSFR/LFSR_8bit.v}
vlog -vlog01compat -work work +incdir+C:/Users/geokr/OneDrive/Desktop/Projects/TestingRelElecSys/LSFR {C:/Users/geokr/OneDrive/Desktop/Projects/TestingRelElecSys/LSFR/TRCUT.v}
vlog -vlog01compat -work work +incdir+C:/Users/geokr/OneDrive/Desktop/Projects/TestingRelElecSys/LSFR {C:/Users/geokr/OneDrive/Desktop/Projects/TestingRelElecSys/LSFR/SDFFChain.v}
vlog -vlog01compat -work work +incdir+C:/Users/geokr/OneDrive/Desktop/Projects/TestingRelElecSys/LSFR {C:/Users/geokr/OneDrive/Desktop/Projects/TestingRelElecSys/LSFR/CUT.v}
vlog -vlog01compat -work work +incdir+C:/Users/geokr/OneDrive/Desktop/Projects/TestingRelElecSys/LSFR {C:/Users/geokr/OneDrive/Desktop/Projects/TestingRelElecSys/LSFR/SDFF.v}
vlog -vlog01compat -work work +incdir+C:/Users/geokr/OneDrive/Desktop/Projects/TestingRelElecSys/LSFR {C:/Users/geokr/OneDrive/Desktop/Projects/TestingRelElecSys/LSFR/MyDFF.v}
vlog -vlog01compat -work work +incdir+C:/Users/geokr/OneDrive/Desktop/Projects/TestingRelElecSys/LSFR {C:/Users/geokr/OneDrive/Desktop/Projects/TestingRelElecSys/LSFR/MISR_16bits.v}
vlog -vlog01compat -work work +incdir+C:/Users/geokr/OneDrive/Desktop/Projects/TestingRelElecSys/LSFR {C:/Users/geokr/OneDrive/Desktop/Projects/TestingRelElecSys/LSFR/TRCUTwithMISR.v}

vlog -vlog01compat -work work +incdir+C:/Users/geokr/OneDrive/Desktop/Projects/TestingRelElecSys/LSFR {C:/Users/geokr/OneDrive/Desktop/Projects/TestingRelElecSys/LSFR/TRCUTwithMISRtb.v}

vsim -t 1ps -L altera_ver -L lpm_ver -L sgate_ver -L altera_mf_ver -L altera_lnsim_ver -L cycloneiv_hssi_ver -L cycloneiv_pcie_hip_ver -L cycloneiv_ver -L rtl_work -L work -voptargs="+acc"  TRCUTwithMISRtb

add wave *
view structure
view signals
run -all
