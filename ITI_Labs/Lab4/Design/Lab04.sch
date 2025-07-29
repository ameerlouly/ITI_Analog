v {xschem version=3.4.6 file_version=1.2}
G {}
K {}
V {}
S {}
E {}
B 2 -1070 -240 -270 160 {flags=graph
y1=-0.96
y2=0.69
ypos1=0
ypos2=2
divy=5
subdivy=1
unity=1
x1=1
x2=1e+10
divx=5
subdivx=4
xlabmag=1.0
ylabmag=1
node="GAIN;vout db20()"
color=4
unitx=1
logx=0
logy=0
linewidth_mult=5
rainbow=1
}
B 2 -1070 -960 -270 -560 {flags=graph
y1=0.89
y2=1.1
ypos1=0
ypos2=2
divy=5
subdivy=1
unity=1
x1=1
x2=1e+10
divx=5
subdivx=4
xlabmag=1.0
ylabmag=1
node="cp=2p ; vout%0
cp=4p ; vout%1
cp=8p ; vout%2"
color="4 5 6"
unitx=1
logx=0
logy=0
rainbow=0
linewidth_mult=2
dataset=-1}
B 2 -260 -960 540 -560 {flags=graph
y1=0.02
y2=0.12
ypos1=0
ypos2=2
divy=5
subdivy=1
unity=1
x1=1
x2=1e+10
divx=5
subdivx=4
xlabmag=1.0
ylabmag=1
node=vsig
color=4
unitx=1
logx=0
logy=0
linewidth_mult=5
rainbow=1
}
B 2 -1890 -960 -1090 -560 {flags=graph
y1=0.89
y2=1.1
ypos1=0
ypos2=2
divy=5
subdivy=1
unity=1
x1=1
x2=1e+10
divx=5
subdivx=4
xlabmag=1.0
ylabmag=1
node="RSIG=20K ; vout%0
RSIG=200K ; vout%1
RSIG=2M ; vout%2"
color="4 5 6"
unitx=1
logx=0
logy=0
rainbow=0
linewidth_mult=2
dataset=-1}
B 2 -170 250 630 650 {flags=graph
y1=1.7
y2=2.1
ypos1=0
ypos2=2
divy=5
subdivy=8
unity=1
x1=0
x2=10
divx=5
subdivx=8
xlabmag=1.0
ylabmag=1
node="ROUT;vout db20()"
color=4
unitx=1
logx=1
logy=1
linewidth_mult=5
rainbow=1
}
N 0 20 0 40 {lab=GND}
N -0 -70 0 -40 {lab=VSIG}
N 0 -70 20 -70 {lab=VSIG}
N 80 -70 110 -70 {lab=VSIG}
N 370 -30 370 20 {lab=GND}
N 370 -250 370 -230 {lab=VDD}
N -180 20 -180 40 {lab=GND}
N -180 -80 -180 -40 {lab=VDD}
N 370 -110 370 -100 {lab=VOUT}
N 370 -160 370 -110 {lab=VOUT}
N 370 -40 370 -30 {lab=GND}
N 370 -170 370 -160 {lab=VOUT}
N 190 -70 230 -70 {lab=VSIG}
N 290 -70 330 -70 {lab=VIN}
N 370 -70 400 -70 {lab=VOUT}
N 400 -120 400 -70 {lab=VOUT}
N 370 -120 400 -120 {lab=VOUT}
N 370 -140 500 -140 {lab=VOUT}
N 500 -140 500 -120 {lab=VOUT}
N 500 -60 500 -20 {lab=GND}
N -90 -70 -0 -70 {lab=VSIG}
N -90 -70 -90 -40 {lab=VSIG}
N -90 20 -90 40 {lab=GND}
N 20 -70 80 -70 {lab=VSIG}
N 590 -140 590 -120 {lab=VOUT}
N 500 -140 590 -140 {lab=VOUT}
N 590 -60 590 -20 {lab=GND}
N 500 -20 500 20 {lab=GND}
N 590 -20 590 20 {lab=GND}
C {devices/vsource.sym} 0 -10 0 0 {name=V1 value="DC 0 AC 0" savecurrent=false
}
C {devices/gnd.sym} 0 40 0 0 {name=l1 lab=GND
}
C {devices/lab_pin.sym} 110 -70 1 0 {name=p1 sig_type=std_logic lab=VSIG
}
C {devices/code_shown.sym} -100 140 0 0 {name=MODELS only_toplevel=true
format="tcleval( @value )"
value="
.include $::180MCU_MODELS/design.ngspice
.lib $::180MCU_MODELS/sm141064.ngspice typical
"}
C {devices/gnd.sym} 370 20 0 0 {name=l2 lab=GND
}
C {devices/vdd.sym} 370 -250 0 0 {name=l3 lab=VDD
}
C {devices/isource.sym} 370 -200 0 0 {name=I0 value=10u
}
C {devices/vsource.sym} -180 -10 0 0 {name=V2 value=1.8 savecurrent=false
}
C {devices/gnd.sym} -180 40 0 0 {name=l5 lab=GND
}
C {devices/vdd.sym} -180 -80 0 0 {name=l6 lab=VDD
}
C {devices/lab_pin.sym} 190 -70 1 0 {name=p2 sig_type=std_logic lab=VSIG
}
C {devices/code.sym} 680 -130 0 0 {name="NGSPICE" only_toplevel=true
value="
.include "sim_script.sim"
"}
C {devices/res.sym} 260 -70 1 0 {name=RSIG
value=2meg
footprint=1206
device=resistor
m=1
}
C {devices/lab_pin.sym} 370 -140 0 0 {name=p3 sig_type=std_logic lab=VOUT
}
C {symbols/pmos_3p3.sym} 350 -70 0 0 {name=M0
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
C {devices/capa.sym} 500 -90 0 0 {name=C1
m=1
value=2p
footprint=1206
device="ceramic capacitor"
spice_ignore=true}
C {devices/gnd.sym} 500 20 0 0 {name=l4 lab=GND
}
C {devices/gnd.sym} -90 40 0 0 {name=l7 lab=GND
}
C {devices/vsource.sym} -90 -10 0 0 {name=V3 value="pulse(0 0.1 2u 1n 1n 4u 8u)" savecurrent=false
spice_ignore=true}
C {devices/isource.sym} 590 -90 2 0 {name=I1 value="DC 0 AC 1"
}
C {devices/gnd.sym} 590 20 0 0 {name=l8 lab=GND
}
C {devices/lab_pin.sym} 310 -70 1 0 {name=p4 sig_type=std_logic lab=VIN
}
