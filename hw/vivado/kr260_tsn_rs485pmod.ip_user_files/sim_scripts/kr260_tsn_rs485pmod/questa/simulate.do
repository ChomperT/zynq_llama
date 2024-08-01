onbreak {quit -f}
onerror {quit -f}

vsim  -lib xil_defaultlib kr260_tsn_rs485pmod_opt

set NumericStdNoWarnings 1
set StdArithNoWarnings 1

do {wave.do}

view wave
view structure
view signals

do {kr260_tsn_rs485pmod.udo}

run 1000ns

quit -force
