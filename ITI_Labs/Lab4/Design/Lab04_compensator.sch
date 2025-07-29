v {xschem version=3.4.6 file_version=1.2}
G {}
K {}
V {}
S {}
E {}
B 2 -360 200 440 600 {flags=graph
y1=1200
y2=23000
ypos1=0
ypos2=2
divy=5
subdivy=1
unity=1
x1=0
x2=10
divx=5
subdivx=8
xlabmag=1.0
ylabmag=1
node="ROUT;vout"
color=4
unitx=1
logx=1
logy=0
rainbow=1
hcursor1_y=10431
hcursor2_y=9785}
N -190 -30 -190 -10 {lab=GND}
N -190 -120 -190 -90 {lab=VSIG}
N -190 -120 -170 -120 {lab=VSIG}
N -110 -120 -80 -120 {lab=VSIG}
N 180 -80 180 -30 {lab=GND}
N 180 -300 180 -280 {lab=VDD}
N -370 -30 -370 -10 {lab=GND}
N -370 -130 -370 -90 {lab=VDD}
N 180 -160 180 -150 {lab=VOUT}
N 180 -210 180 -160 {lab=VOUT}
N 180 -90 180 -80 {lab=GND}
N 180 -220 180 -210 {lab=VOUT}
N 0 -120 40 -120 {lab=VSIG}
N 100 -120 140 -120 {lab=VIN}
N 180 -120 210 -120 {lab=VOUT}
N 210 -170 210 -120 {lab=VOUT}
N 180 -170 210 -170 {lab=VOUT}
N 180 -190 310 -190 {lab=VOUT}
N 310 -190 310 -170 {lab=VOUT}
N 310 -110 310 -70 {lab=GND}
N -280 -120 -190 -120 {lab=VSIG}
N -280 -120 -280 -90 {lab=VSIG}
N -280 -30 -280 -10 {lab=GND}
N -170 -120 -110 -120 {lab=VSIG}
N 400 -190 400 -170 {lab=VOUT}
N 310 -190 400 -190 {lab=VOUT}
N 400 -110 400 -70 {lab=GND}
N 310 -70 310 -30 {lab=GND}
N 400 -70 400 -30 {lab=GND}
N 120 50 120 70 {lab=GND}
N 120 -120 120 -100 {lab=VIN}
N 120 -100 120 -40 {lab=VIN}
N 120 40 120 50 {lab=GND}
N 120 -40 120 -20 {lab=VIN}
C {devices/vsource.sym} -190 -60 0 0 {name=V1 value="DC 0 AC 0" savecurrent=false
}
C {devices/gnd.sym} -190 -10 0 0 {name=l1 lab=GND
}
C {devices/lab_pin.sym} -80 -120 1 0 {name=p1 sig_type=std_logic lab=VSIG
}
C {devices/code_shown.sym} -290 90 0 0 {name=MODELS only_toplevel=true
format="tcleval( @value )"
value="
.include $::180MCU_MODELS/design.ngspice
.lib $::180MCU_MODELS/sm141064.ngspice typical
"}
C {devices/gnd.sym} 180 -30 0 0 {name=l2 lab=GND
}
C {devices/vdd.sym} 180 -300 0 0 {name=l3 lab=VDD
}
C {devices/isource.sym} 180 -250 0 0 {name=I0 value=10u
}
C {devices/vsource.sym} -370 -60 0 0 {name=V2 value=1.8 savecurrent=false
}
C {devices/gnd.sym} -370 -10 0 0 {name=l5 lab=GND
}
C {devices/vdd.sym} -370 -130 0 0 {name=l6 lab=VDD
}
C {devices/lab_pin.sym} 0 -120 1 0 {name=p2 sig_type=std_logic lab=VSIG
}
C {devices/code.sym} 490 -180 0 0 {name="NGSPICE" only_toplevel=true
value="
.include "sim_script_Comepnsator.sim
"}
C {devices/res.sym} 70 -120 1 0 {name=RSIG
value=2meg
footprint=1206
device=resistor
m=1
}
C {devices/lab_pin.sym} 180 -190 0 0 {name=p3 sig_type=std_logic lab=VOUT
}
C {symbols/pmos_3p3.sym} 160 -120 0 0 {name=M0
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
C {devices/capa.sym} 310 -140 0 0 {name=C1
m=1
value=2p
footprint=1206
device="ceramic capacitor"
spice_ignore=true}
C {devices/gnd.sym} 310 -30 0 0 {name=l4 lab=GND
}
C {devices/gnd.sym} -280 -10 0 0 {name=l7 lab=GND
}
C {devices/vsource.sym} -280 -60 0 0 {name=V3 value="pulse(0 0.1 2u 1n 1n 4u 8u)" savecurrent=false
spice_ignore=true}
C {devices/isource.sym} 400 -140 2 0 {name=I1 value="DC 0 AC 1"
}
C {devices/gnd.sym} 400 -30 0 0 {name=l8 lab=GND
}
C {devices/lab_pin.sym} 120 -120 1 0 {name=p4 sig_type=std_logic lab=VIN
}
C {devices/res.sym} 120 10 0 0 {name=R1
value=2k
footprint=1206
device=resistor
m=1
}
C {devices/gnd.sym} 120 70 0 0 {name=l9 lab=GND
}
