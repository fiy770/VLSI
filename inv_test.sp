.protect
.lib 'cic018.l' TT
.unprot
.temp 25
.option post 
.parameter WP=1u


MM1 vout vin vdd vdd p_18 W=WP L=0.4u m=1    $
MM0 vout vin gnd gnd n_18 W=4u L=0.4u m=1  $
Vsup vdd gnd 1.8V
Vin vin gnd 0.9V

.op
.dc Vin 0 1.8 0.01 sweep WP 11u 20u 0.05u
.probe V(vout)
.end
