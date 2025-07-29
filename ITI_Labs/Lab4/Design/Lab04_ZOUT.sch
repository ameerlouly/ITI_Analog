v {xschem version=3.4.6 file_version=1.2}
G {}
K {}
V {}
S {}
E {}
N 200 -230 200 -180 {lab=GND}
N 200 -450 200 -430 {lab=VDD}
N -100 -260 -100 -240 {lab=GND}
N -100 -360 -100 -320 {lab=VDD}
N 200 -310 200 -300 {lab=VOUT}
N 200 -360 200 -310 {lab=VOUT}
N 200 -240 200 -230 {lab=GND}
N 200 -370 200 -360 {lab=VOUT}
N 20 -270 60 -270 {lab=GND}
N 120 -270 160 -270 {lab=VIN}
N 200 -270 230 -270 {lab=VOUT}
N 230 -320 230 -270 {lab=VOUT}
N 200 -320 230 -320 {lab=VOUT}
N 200 -340 330 -340 {lab=VOUT}
N 420 -340 420 -320 {lab=VOUT}
N 330 -340 420 -340 {lab=VOUT}
N 420 -260 420 -220 {lab=GND}
N 420 -220 420 -180 {lab=GND}
C {devices/code_shown.sym} -50 -110 0 0 {name=MODELS only_toplevel=true
format="tcleval( @value )"
value="
.include $::180MCU_MODELS/design.ngspice
.lib $::180MCU_MODELS/sm141064.ngspice typical
"}
C {devices/gnd.sym} 200 -180 0 0 {name=l2 lab=GND
}
C {devices/vdd.sym} 200 -450 0 0 {name=l3 lab=VDD
}
C {devices/isource.sym} 200 -400 0 0 {name=I0 value=10u
}
C {devices/vsource.sym} -100 -290 0 0 {name=V2 value=1.8 savecurrent=false
}
C {devices/gnd.sym} -100 -240 0 0 {name=l5 lab=GND
}
C {devices/vdd.sym} -100 -360 0 0 {name=l6 lab=VDD
}
C {devices/code.sym} 510 -330 0 0 {name="NGSPICE" only_toplevel=true
value="
.include "sim_script_zout.sim"
"}
C {devices/res.sym} 90 -270 1 0 {name=RSIG
value=2meg
footprint=1206
device=resistor
m=1
}
C {devices/lab_pin.sym} 200 -340 0 0 {name=p3 sig_type=std_logic lab=VOUT
}
C {symbols/pmos_3p3.sym} 180 -270 0 0 {name=M0
L=1u
W=20u
nf=1
m=1
ad="'int((nf+1)/2) * W/nf * 0.18u'"
pd="'2*int((nf+1)/2) * (W/nf + 0.18u)'"
as="'int((nf+2)/2) * W/nf * 0.18u'"
ps="'2*int((nf+2)/2) * (W/nf + 0.18u)'"
nrd="'0.18u / W'" nrs="'0.18u / W'"
sa=0 sb=0 sd=0
model=pmos_3p3
spiceprefix=X
}
C {devices/isource.sym} 420 -290 2 0 {name=I1 value="DC 0 AC 1"
}
C {devices/gnd.sym} 420 -180 0 0 {name=l8 lab=GND
}
C {devices/lab_pin.sym} 140 -270 1 0 {name=p4 sig_type=std_logic lab=VIN
}
C {devices/gnd.sym} 20 -270 0 0 {name=l1 lab=GND
}
