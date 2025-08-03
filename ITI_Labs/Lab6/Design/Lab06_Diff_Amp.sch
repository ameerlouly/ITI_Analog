v {xschem version=3.4.6 file_version=1.2}
G {}
K {}
V {}
S {}
E {}
B 2 -460 -580 340 -180 {flags=graph
y1=0.67
y2=7.8
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
ylabmag=1.0
node=VDIFF
color=4
dataset=-1
unitx=1
logx=1
logy=0
}
B 2 370 -580 1170 -180 {flags=graph
y1=-24
y2=-4.3
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
ylabmag=1.0
node="VCM db20()"
color=4
dataset=-1
unitx=1
logx=1
logy=0
}
N -340 30 -340 50 {lab=#net1}
N -340 30 -300 30 {lab=#net1}
N -400 -30 -400 -10 {lab=#net2}
N -400 -30 -300 -30 {lab=#net2}
N -220 -30 -70 -30 {lab=#net3}
N -220 30 -100 30 {lab=#net4}
N -100 20 -100 30 {lab=#net4}
N -100 20 -70 20 {lab=#net4}
N 110 -10 150 -10 {lab=#net5}
N 150 -20 150 -10 {lab=#net5}
N 150 -20 220 -20 {lab=#net5}
N 110 10 220 10 {lab=#net6}
N 220 10 220 40 {lab=#net6}
N 300 -20 350 -20 {lab=VDIFF}
N 300 40 340 40 {lab=VCM}
C {Lab06.sym} -10 0 0 0 {name=X1}
C {balun.sym} -260 0 0 0 {name=balun1}
C {balun.sym} 260 10 0 1 {name=balun2}
C {devices/vdd.sym} -180 130 0 0 {name=l1 lab=VDD}
C {devices/vsource.sym} -180 160 0 0 {name=V1 value=1.8 savecurrent=false}
C {devices/gnd.sym} -180 190 0 0 {name=l2 lab=GND}
C {devices/gnd.sym} 0 70 0 0 {name=l3 lab=GND}
C {devices/isource.sym} -30 110 0 0 {name=I0 value=40u}
C {devices/gnd.sym} -30 140 0 0 {name=l4 lab=GND}
C {devices/vdd.sym} -10 -80 0 0 {name=l5 lab=VDD}
C {devices/vsource.sym} -340 80 0 0 {name=VICM value="0.5 AC 1" savecurrent=false}
C {devices/gnd.sym} -340 110 0 0 {name=l6 lab=GND}
C {devices/vsource.sym} -400 20 0 0 {name=VID value="0 AC 0" savecurrent=false}
C {devices/gnd.sym} -400 50 0 0 {name=l7 lab=GND}
C {devices/lab_pin.sym} 350 -20 2 0 {name=p1 sig_type=std_logic lab=VDIFF}
C {devices/lab_pin.sym} 340 40 2 0 {name=p2 sig_type=std_logic lab=VCM}
C {devices/code.sym} 340 120 0 0 {name=NGSPICE only_toplevel=false value="
.include "sim_script.sim"
"}
C {devices/code_shown.sym} -290 240 0 0 {name=MODELS only_toplevel=true
format="tcleval( @value )"
value="
.include $::180MCU_MODELS/design.ngspice
.lib $::180MCU_MODELS/sm141064.ngspice typical
"}
