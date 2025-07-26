v {xschem version=3.4.6 file_version=1.2}
G {}
K {}
V {}
S {}
E {}
B 2 -670 -760 130 -360 {flags=graph
y1=-55
y2=67
ypos1=0
ypos2=2
divy=5
subdivy=4
unity=1
x1=0
x2=10
divx=5
subdivx=8
xlabmag=1.0
ylabmag=1.0
node="vout1 db20()
vout2 db20()"
color="4 12"
dataset=-1
unitx=1
logx=1
logy=0
linewidth_mult=5
}
N -510 90 -510 110 {lab=GND}
N -510 0 -510 30 {lab=#net1}
N -510 0 -490 0 {lab=#net1}
N -430 0 -400 0 {lab=VSIG}
N -140 30 -140 90 {lab=GND}
N -140 0 -110 0 {lab=GND}
N -110 0 -110 40 {lab=GND}
N -140 40 -110 40 {lab=GND}
N -140 -180 -140 -160 {lab=VDD}
N -140 -40 -40 -40 {lab=VOUT1}
N -40 -40 -40 -20 {lab=VOUT1}
N -620 90 -620 110 {lab=GND}
N -620 -10 -620 30 {lab=VDD}
N -140 -40 -140 -30 {lab=VOUT1}
N -140 -100 -140 -40 {lab=VOUT1}
N 200 -70 200 -30 {lab=VD1}
N 200 30 200 90 {lab=GND}
N 200 -190 200 -130 {lab=VOUT2}
N 110 -100 160 -100 {lab=VB}
N 200 -100 250 -100 {lab=GND}
N 250 -100 250 60 {lab=GND}
N 200 60 250 60 {lab=GND}
N 200 0 250 0 {lab=GND}
N 200 -150 300 -150 {lab=VOUT2}
N 300 -150 300 -130 {lab=VOUT2}
N 450 60 450 100 {lab=GND}
N 450 -50 450 0 {lab=VD3}
N 440 -80 500 -80 {lab=GND}
N 500 -80 500 80 {lab=GND}
N 450 80 500 80 {lab=GND}
N 450 30 500 30 {lab=GND}
N 450 -170 450 -110 {lab=VB}
N 450 -250 450 -230 {lab=VDD}
N 370 -140 450 -140 {lab=VB}
N 370 -140 370 30 {lab=VB}
N 370 30 410 30 {lab=VB}
N 370 -80 410 -80 {lab=VB}
N 200 -270 200 -250 {lab=VDD}
N 50 0 160 0 {lab=VSIG}
N 640 40 640 100 {lab=GND}
N 640 10 670 10 {lab=GND}
N 670 10 670 50 {lab=GND}
N 640 50 670 50 {lab=GND}
N 640 -170 640 -150 {lab=VDD}
N 640 -30 640 -20 {lab=#net2}
N 640 -90 640 -30 {lab=#net2}
N 580 -40 640 -40 {lab=#net2}
N 580 -40 580 10 {lab=#net2}
N 580 10 600 10 {lab=#net2}
N 640 -50 720 -50 {lab=#net2}
N 780 -50 840 -50 {lab=VSIG}
N -320 -0 -280 -0 {lab=VSIG}
N -220 -0 -180 -0 {lab=#net3}
C {devices/vsource.sym} -510 60 0 0 {name=V1 value="DC 0 AC 1" savecurrent=false}
C {devices/gnd.sym} -510 110 0 0 {name=l1 lab=GND}
C {devices/lab_pin.sym} -400 0 1 0 {name=p1 sig_type=std_logic lab=VSIG}
C {devices/res_ac.sym} -460 0 1 0 {name=R1
value=1e12
ac=1m
m=1}
C {symbols/nmos_3p3.sym} -160 0 0 0 {name=M0
L=350n
W=3.5u
nf=1
mult=1
ad="'int((nf+1)/2) * W/nf * 0.18u'"
pd="'2*int((nf+1)/2) * (W/nf + 0.18u)'"
as="'int((nf+2)/2) * W/nf * 0.18u'"
ps="'2*int((nf+2)/2) * (W/nf + 0.18u)'"
nrd="'0.18u / W'" nrs="'0.18u / W'"
sa=0 sb=0 sd=0
model=nmos_3p3
spiceprefix=X
}
C {devices/code_shown.sym} -370 230 0 0 {name=MODELS only_toplevel=true
format="tcleval( @value )"
value="
.include $::180MCU_MODELS/design.ngspice
.lib $::180MCU_MODELS/sm141064.ngspice typical
"}
C {devices/gnd.sym} -140 90 0 0 {name=l2 lab=GND}
C {devices/vdd.sym} -140 -180 0 0 {name=l3 lab=VDD}
C {devices/capa.sym} -40 10 0 0 {name=C1
m=1
value=1p
footprint=1206
device="ceramic capacitor"}
C {devices/gnd.sym} -40 40 0 0 {name=l4 lab=GND}
C {devices/vsource.sym} -620 60 0 0 {name=V2 value=1.8 savecurrent=false}
C {devices/gnd.sym} -620 110 0 0 {name=l5 lab=GND}
C {devices/vdd.sym} -620 -10 0 0 {name=l6 lab=VDD}
C {devices/lab_pin.sym} -320 0 1 0 {name=p2 sig_type=std_logic lab=VSIG}
C {symbols/nmos_3p3.sym} 180 0 0 0 {name=M1
L=350n
W=3.5u
nf=1
mult=1
ad="'int((nf+1)/2) * W/nf * 0.18u'"
pd="'2*int((nf+1)/2) * (W/nf + 0.18u)'"
as="'int((nf+2)/2) * W/nf * 0.18u'"
ps="'2*int((nf+2)/2) * (W/nf + 0.18u)'"
nrd="'0.18u / W'" nrs="'0.18u / W'"
sa=0 sb=0 sd=0
model=nmos_3p3
spiceprefix=X
}
C {symbols/nmos_3p3.sym} 180 -100 0 0 {name=M2
L=350n
W=3.5u
nf=1
mult=1
ad="'int((nf+1)/2) * W/nf * 0.18u'"
pd="'2*int((nf+1)/2) * (W/nf + 0.18u)'"
as="'int((nf+2)/2) * W/nf * 0.18u'"
ps="'2*int((nf+2)/2) * (W/nf + 0.18u)'"
nrd="'0.18u / W'" nrs="'0.18u / W'"
sa=0 sb=0 sd=0
model=nmos_3p3
spiceprefix=X
}
C {devices/gnd.sym} 200 90 0 0 {name=l7 lab=GND}
C {devices/lab_pin.sym} 50 0 1 0 {name=p3 sig_type=std_logic lab=VSIG}
C {devices/vdd.sym} 200 -270 0 0 {name=l8 lab=VDD}
C {devices/lab_pin.sym} 110 -100 0 0 {name=p4 sig_type=std_logic lab=VB}
C {devices/capa.sym} 300 -100 0 0 {name=C2
m=1
value=1p
footprint=1206
device="ceramic capacitor"}
C {devices/gnd.sym} 300 -70 0 0 {name=l9 lab=GND}
C {symbols/nmos_3p3.sym} 430 -80 0 0 {name=M4
L=350n
W=3.5u
nf=1
mult=1
ad="'int((nf+1)/2) * W/nf * 0.18u'"
pd="'2*int((nf+1)/2) * (W/nf + 0.18u)'"
as="'int((nf+2)/2) * W/nf * 0.18u'"
ps="'2*int((nf+2)/2) * (W/nf + 0.18u)'"
nrd="'0.18u / W'" nrs="'0.18u / W'"
sa=0 sb=0 sd=0
model=nmos_3p3
spiceprefix=X
}
C {devices/vdd.sym} 450 -250 0 0 {name=l10 lab=VDD}
C {devices/isource.sym} 450 -200 0 0 {name=I2 value=20u}
C {symbols/nmos_3p3.sym} 430 30 0 0 {name=M3
L=5.254u
W=3.5u
nf=1
mult=1
ad="'int((nf+1)/2) * W/nf * 0.18u'"
pd="'2*int((nf+1)/2) * (W/nf + 0.18u)'"
as="'int((nf+2)/2) * W/nf * 0.18u'"
ps="'2*int((nf+2)/2) * (W/nf + 0.18u)'"
nrd="'0.18u / W'" nrs="'0.18u / W'"
sa=0 sb=0 sd=0
model=nmos_3p3
spiceprefix=X
}
C {devices/gnd.sym} 450 100 0 0 {name=l11 lab=GND}
C {devices/lab_pin.sym} 370 -140 0 0 {name=p5 sig_type=std_logic lab=VB}
C {devices/lab_pin.sym} -40 -40 2 0 {name=p6 sig_type=std_logic lab=VOUT1}
C {devices/lab_pin.sym} 280 -150 1 0 {name=p7 sig_type=std_logic lab=VOUT2}
C {devices/res.sym} -140 -130 0 0 {name=R4
value=45k
footprint=1206
device=resistor
m=1}
C {devices/res.sym} 200 -220 0 0 {name=R3
value=45k
footprint=1206
device=resistor
m=1}
C {symbols/nmos_3p3.sym} 620 10 0 0 {name=M5
L=350n
W=3.5u
nf=1
mult=1
ad="'int((nf+1)/2) * W/nf * 0.18u'"
pd="'2*int((nf+1)/2) * (W/nf + 0.18u)'"
as="'int((nf+2)/2) * W/nf * 0.18u'"
ps="'2*int((nf+2)/2) * (W/nf + 0.18u)'"
nrd="'0.18u / W'" nrs="'0.18u / W'"
sa=0 sb=0 sd=0
model=nmos_3p3
spiceprefix=X
}
C {devices/gnd.sym} 640 100 0 0 {name=l12 lab=GND}
C {devices/vdd.sym} 640 -170 0 0 {name=l13 lab=VDD}
C {devices/isource.sym} 640 -120 0 0 {name=I0 value=20u}
C {devices/lab_pin.sym} 840 -50 2 0 {name=p8 sig_type=std_logic lab=VSIG}
C {devices/res_ac.sym} 750 -50 1 0 {name=R5
value=1m
ac=1e12
m=1}
C {devices/code.sym} 340 -580 0 0 {name=NGSPICE1 only_toplevel=true
value="
.include "sim_script.sim"
"}
C {devices/res.sym} -250 0 1 0 {name=R2
value=10meg
footprint=1206
device=resistor
m=1}
C {devices/lab_pin.sym} 200 -50 0 0 {name=p9 sig_type=std_logic lab=VD1}
C {devices/lab_pin.sym} 450 -20 0 0 {name=p10 sig_type=std_logic lab=VD3}
