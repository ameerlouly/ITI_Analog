v {xschem version=3.4.6 file_version=1.2}
G {}
K {}
V {}
S {}
E {}
B 2 -970 -280 -170 120 {flags=graph
y1=-110
y2=7
ypos1=0
ypos2=2
divy=5
subdivy=1
unity=1
x1=-0.5
x2=9.5
divx=5
subdivx=8
xlabmag=1.0
ylabmag=1.0
node="vout db20()"
color=4
dataset=-1
unitx=1
logx=1
logy=0
linewidth_mult=5}
N 0 20 0 40 {lab=GND}
N -0 -70 0 -40 {lab=#net1}
N 0 -70 20 -70 {lab=#net1}
N 80 -70 110 -70 {lab=VSIG}
N 370 -30 370 20 {lab=GND}
N 370 -250 370 -230 {lab=VDD}
N -110 20 -110 40 {lab=GND}
N -110 -80 -110 -40 {lab=VDD}
N 370 -110 370 -100 {lab=VOUT}
N 370 -160 370 -110 {lab=VOUT}
N 370 -40 370 -30 {lab=GND}
N 370 -170 370 -160 {lab=VOUT}
N 190 -70 230 -70 {lab=VSIG}
N 290 -70 330 -70 {lab=#net2}
N 370 -70 400 -70 {lab=VOUT}
N 400 -120 400 -70 {lab=VOUT}
N 370 -120 400 -120 {lab=VOUT}
N 370 -140 500 -140 {lab=VOUT}
N 500 -140 500 -120 {lab=VOUT}
N 500 -60 500 -20 {lab=GND}
C {devices/vsource.sym} 0 -10 0 0 {name=V1 value="AC 1" savecurrent=false}
C {devices/gnd.sym} 0 40 0 0 {name=l1 lab=GND}
C {devices/lab_pin.sym} 110 -70 1 0 {name=p1 sig_type=std_logic lab=VSIG}
C {devices/res_ac.sym} 50 -70 1 0 {name=R1
value=1e12
ac=1m
m=1}
C {devices/code_shown.sym} -90 110 0 0 {name=MODELS only_toplevel=true
format="tcleval( @value )"
value="
.include $::180MCU_MODELS/design.ngspice
.lib $::180MCU_MODELS/sm141064.ngspice typical
"}
C {devices/gnd.sym} 370 20 0 0 {name=l2 lab=GND}
C {devices/vdd.sym} 370 -250 0 0 {name=l3 lab=VDD}
C {devices/isource.sym} 370 -200 0 0 {name=I0 value=10u}
C {devices/vsource.sym} -110 -10 0 0 {name=V2 value=1.8 savecurrent=false}
C {devices/gnd.sym} -110 40 0 0 {name=l5 lab=GND}
C {devices/vdd.sym} -110 -80 0 0 {name=l6 lab=VDD}
C {devices/lab_pin.sym} 190 -70 1 0 {name=p2 sig_type=std_logic lab=VSIG}
C {devices/code.sym} 630 -130 0 0 {name="NGSPICE" only_toplevel=true
value="
.include "sim_script.sim"
"}
C {devices/res.sym} 260 -70 1 0 {name=R2
value=2meg
footprint=1206
device=resistor
m=1}
C {devices/lab_pin.sym} 370 -140 0 0 {name=p3 sig_type=std_logic lab=VOUT}
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
value=1p
footprint=1206
device="ceramic capacitor"}
C {devices/gnd.sym} 500 -20 0 0 {name=l4 lab=GND}
