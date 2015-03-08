transcript on
if {[file exists rtl_work]} {
	vdel -lib rtl_work -all
}
vlib rtl_work
vmap work rtl_work

vlog -vlog01compat -work work +incdir+/home/ghg/laba/part3 {/home/ghg/laba/part3/TFFx.v}
vlog -vlog01compat -work work +incdir+/home/ghg/laba/part3 {/home/ghg/laba/part3/Hex7seg.v}
vlog -vlog01compat -work work +incdir+/home/ghg/laba/part3 {/home/ghg/laba/part3/CountNG.v}
vlog -vlog01compat -work work +incdir+/home/ghg/laba/part3 {/home/ghg/laba/part3/Part3.v}

