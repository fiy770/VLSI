.protect
.lib 'cic018.l' TT
.unprot
.inc 'inverter_chain_2.spi'
.include "/home/u103/u103061218/VLSI/laker/HW2_inverter_all_2.spi"
.temp 25
.option post
.param vddv=1.8

x1 vdd vin vout vss inverter_chain
x3 vin vss vdd vout3 inverter_chain_load2

Cload vout vss 2pF
Cload3 vout3 vss 2pF
Vsup vdd vss vddv
Vin vin vss pulse (0 vddv 0n 0.1n 0.1n 4.9n 10n)
Vss vss gnd 0V

.op
.probe(vout)
.tran 0.1ns 30ns
.alter
.lib 'cic018.l' FF
.temp -40
.param vddv=2
.alter
.lib 'cic018.l' SS
.temp 125
.param vddv=1.6
.alter
.lib 'cic018.l' SF
.temp 25
.param vddv=1.8
.alter
.lib 'cic018.l' FS
.temp 25
.param vddv=1.8
.end
