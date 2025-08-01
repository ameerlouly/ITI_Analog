v {xschem version=3.4.6 file_version=1.2}
G {}
K {}
V {}
S {}
E {}
B 2 -1130 -850 -330 -450 {flags=graph
y1=0.11
y2=0.21
ypos1=0
ypos2=2
divy=5
subdivy=1
unity=1
x1=0
x2=1.8
divx=5
subdivx=1
xlabmag=1.0
ylabmag=1.0
node=vds3
color=4
dataset=-1
unitx=1
logx=0
logy=0
hcursor1_y=0.2}
B 2 -1130 -340 -330 60 {flags=graph
y1=0
y2=2.1e-05
ypos1=0
ypos2=2
divy=5
subdivy=1
unity=1
x1=0
x2=1.8
divx=5
subdivx=1
xlabmag=1.0
ylabmag=1.0
node="IOUT1;i(@m.xm1.m0[id])
IOUT2;i(@m.xm5.m0[id])"
color="4 12"
dataset=-1
unitx=1
logx=0
logy=0
}
B 2 -190 -830 610 -430 {flags=graph
y1=0
y2=0.01
ypos1=0
ypos2=2
divy=5
subdivy=4
unity=1
x1=-35
x2=0.25527251
divx=5
subdivx=8
xlabmag=1.0
ylabmag=1.0
dataset=-1
unitx=1
logx=1
logy=0
color=4
node=ROUT1}
N -170 -110 -170 -90 {lab=GND}
N -170 -190 -170 -170 {lab=VDD}
N -70 -150 -70 -130 {lab=VDD}
N -70 -70 -70 -40 {lab=#net1}
N -70 20 -70 50 {lab=GND}
N -90 -10 -70 -10 {lab=GND}
N -90 -10 -90 30 {lab=GND}
N -90 30 -70 30 {lab=GND}
N -30 -10 -0 -10 {lab=#net1}
N 60 -10 80 -10 {lab=#net2}
N 120 20 120 50 {lab=GND}
N 120 -90 120 -40 {lab=VOUT}
N 360 -70 360 -40 {lab=#net3}
N 400 -10 430 -10 {lab=#net4}
N 490 -100 510 -100 {lab=#net5}
N 340 -60 340 -10 {lab=GND}
N 550 -100 570 -100 {lab=GND}
N 570 -100 570 -10 {lab=GND}
N 360 -150 360 -130 {lab=#net4}
N -70 -50 -20 -50 {lab=#net1}
N -20 -50 -20 -10 {lab=#net1}
N 120 -10 140 -10 {lab=GND}
N 140 -10 140 40 {lab=GND}
N 120 40 140 40 {lab=GND}
N 360 -310 360 -290 {lab=VDD}
N 360 20 360 50 {lab=GND}
N 340 -10 360 -10 {lab=GND}
N 340 -10 340 30 {lab=GND}
N 340 30 360 30 {lab=GND}
N 490 -10 510 -10 {lab=#net6}
N 550 20 550 50 {lab=GND}
N 340 -100 360 -100 {lab=GND}
N 340 -100 340 -60 {lab=GND}
N 400 -100 430 -100 {lab=#net7}
N 550 -70 550 -40 {lab=VDS3}
N 550 -10 570 -10 {lab=GND}
N 570 -10 570 30 {lab=GND}
N 550 30 570 30 {lab=GND}
N 360 -230 360 -210 {lab=#net7}
N 550 -160 550 -130 {lab=VOUT}
N 360 -220 420 -220 {lab=#net7}
N 420 -220 420 -100 {lab=#net7}
N 360 -140 410 -140 {lab=#net4}
N 410 -140 410 -10 {lab=#net4}
N 740 -120 740 -90 {lab=VOUT}
N 740 -160 740 -120 {lab=VOUT}
N 200 -150 200 -130 {lab=VOUT}
N 120 -150 200 -150 {lab=VOUT}
N 120 -150 120 -90 {lab=VOUT}
C {symbols/nmos_3p3.sym} -50 -10 0 1 {name=M0
L=1.42u
W=14.58u
nf=1
m=1
ad="'int((nf+1)/2) * W/nf * 0.18u'"
pd="'2*int((nf+1)/2) * (W/nf + 0.18u)'"
as="'int((nf+2)/2) * W/nf * 0.18u'"
ps="'2*int((nf+2)/2) * (W/nf + 0.18u)'"
nrd="'0.18u / W'" nrs="'0.18u / W'"
sa=0 sb=0 sd=0
model=nmos_3p3
spiceprefix=X
}
C {devices/code.sym} 880 -80 0 0 {name=NGSPICE only_toplevel=false value="
.include "sim_script.sim"
"}
C {devices/vsource.sym} -170 -140 0 0 {name=VDD value=1.8 savecurrent=false}
C {devices/vdd.sym} -170 -190 0 0 {name=l1 lab=VDD}
C {devices/gnd.sym} -170 -90 0 0 {name=l2 lab=GND}
C {devices/isource.sym} -70 -100 0 0 {name=IB1 value=10u}
C {devices/vdd.sym} -70 -150 0 0 {name=l3 lab=VDD}
C {devices/gnd.sym} -70 50 0 0 {name=l4 lab=GND}
C {devices/gnd.sym} 120 50 0 0 {name=l5 lab=GND}
C {devices/vsource.sym} 30 -10 1 0 {name=VGMIS0 value=0 savecurrent=false}
C {devices/gnd.sym} 740 -30 0 0 {name=l6 lab=GND}
C {devices/vdd.sym} 360 -310 0 0 {name=l7 lab=VDD}
C {devices/gnd.sym} 360 50 0 0 {name=l8 lab=GND}
C {devices/gnd.sym} 550 50 0 0 {name=l9 lab=GND}
C {devices/res.sym} 360 -180 0 0 {name=RB
value=27.258k
footprint=1206
device=resistor
m=1}
C {symbols/nmos_3p3.sym} 100 -10 0 0 {name=M1
L=1.42u
W=2*14.58u
nf=1
m=1
ad="'int((nf+1)/2) * W/nf * 0.18u'"
pd="'2*int((nf+1)/2) * (W/nf + 0.18u)'"
as="'int((nf+2)/2) * W/nf * 0.18u'"
ps="'2*int((nf+2)/2) * (W/nf + 0.18u)'"
nrd="'0.18u / W'" nrs="'0.18u / W'"
sa=0 sb=0 sd=0
model=nmos_3p3
spiceprefix=X
}
C {devices/isource.sym} 360 -260 0 0 {name=IB2 value=10u}
C {symbols/nmos_3p3.sym} 380 -10 0 1 {name=M2
L=1.42u
W=14.58u
nf=1
m=1
ad="'int((nf+1)/2) * W/nf * 0.18u'"
pd="'2*int((nf+1)/2) * (W/nf + 0.18u)'"
as="'int((nf+2)/2) * W/nf * 0.18u'"
ps="'2*int((nf+2)/2) * (W/nf + 0.18u)'"
nrd="'0.18u / W'" nrs="'0.18u / W'"
sa=0 sb=0 sd=0
model=nmos_3p3
spiceprefix=X
}
C {symbols/nmos_3p3.sym} 530 -10 0 0 {name=M3
L=1.42u
W=2*14.58u
nf=1
m=1
ad="'int((nf+1)/2) * W/nf * 0.18u'"
pd="'2*int((nf+1)/2) * (W/nf + 0.18u)'"
as="'int((nf+2)/2) * W/nf * 0.18u'"
ps="'2*int((nf+2)/2) * (W/nf + 0.18u)'"
nrd="'0.18u / W'" nrs="'0.18u / W'"
sa=0 sb=0 sd=0
model=nmos_3p3
spiceprefix=X
}
C {symbols/nmos_3p3.sym} 380 -100 0 1 {name=M4
L=1.42u
W=14.58u
nf=1
m=1
ad="'int((nf+1)/2) * W/nf * 0.18u'"
pd="'2*int((nf+1)/2) * (W/nf + 0.18u)'"
as="'int((nf+2)/2) * W/nf * 0.18u'"
ps="'2*int((nf+2)/2) * (W/nf + 0.18u)'"
nrd="'0.18u / W'" nrs="'0.18u / W'"
sa=0 sb=0 sd=0
model=nmos_3p3
spiceprefix=X
}
C {symbols/nmos_3p3.sym} 530 -100 0 0 {name=M5
L=1.42u
W=2*14.58u
nf=1
m=1
ad="'int((nf+1)/2) * W/nf * 0.18u'"
pd="'2*int((nf+1)/2) * (W/nf + 0.18u)'"
as="'int((nf+2)/2) * W/nf * 0.18u'"
ps="'2*int((nf+2)/2) * (W/nf + 0.18u)'"
nrd="'0.18u / W'" nrs="'0.18u / W'"
sa=0 sb=0 sd=0
model=nmos_3p3
spiceprefix=X
}
C {devices/code_shown.sym} 140 150 0 0 {name=MODELS only_toplevel=true
format="tcleval( @value )"
value="
.include $::180MCU_MODELS/design.ngspice
.lib $::180MCU_MODELS/sm141064.ngspice typical
"}
C {devices/vsource.sym} 460 -10 1 0 {name=VGMIS1 value=0 savecurrent=false}
C {devices/vsource.sym} 460 -100 1 0 {name=VGMIS2 value=0 savecurrent=false}
C {devices/lab_pin.sym} 550 -60 0 0 {name=p3 sig_type=std_logic lab=VDS3}
C {devices/lab_pin.sym} 740 -160 0 0 {name=p4 sig_type=std_logic lab=VOUT
}
C {devices/vsource.sym} 740 -60 0 0 {name=VOUT value="DC 0.9 AC 1" savecurrent=false
}
C {devices/lab_pin.sym} 550 -160 0 0 {name=p1 sig_type=std_logic lab=VOUT
}
C {devices/lab_pin.sym} 120 -90 0 0 {name=p2 sig_type=std_logic lab=VOUT
spice_ignore=true}
C {devices/gnd.sym} 200 -70 0 0 {name=l10 lab=GND}
C {devices/vsource.sym} 200 -100 0 0 {name=VOUT1 value="DC 0.9 AC 1" savecurrent=false
}
