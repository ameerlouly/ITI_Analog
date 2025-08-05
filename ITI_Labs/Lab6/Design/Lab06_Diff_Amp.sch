v {xschem version=3.4.6 file_version=1.2}
G {}
K {}
V {}
S {}
E {}
B 2 160 -580 960 -180 {flags=graph
y1=0.8
y2=43.8
ypos1=0
ypos2=2
divy=5
subdivy=4
unity=1
x1=0
x2=11
divx=5
subdivx=8
xlabmag=1.0
ylabmag=1.0
node="VDIFF2 db20()"
color=4
dataset=-1
unitx=1
logx=1
logy=0
}
B 2 990 -570 1790 -170 {flags=graph
y1=-40
y2=-23
ypos1=0
ypos2=2
divy=5
subdivy=1
unity=1
x1=1
x2=1e+11
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
B 2 990 -150 1790 250 {flags=graph
y1=0
y2=470
ypos1=0
ypos2=2
divy=5
subdivy=1
unity=1
x1=1
x2=1e+11
divx=5
subdivx=8
xlabmag=1.0
ylabmag=1.0
dataset=-1
unitx=1
logx=1
logy=0
color=4
node="VDIFF2 VCM / db20()"}
B 2 990 270 1790 670 {flags=graph
y1=0
y2=0.01
ypos1=0
ypos2=2
divy=5
subdivy=1
unity=1
x1=1
x2=1e+11
divx=5
subdivx=4
xlabmag=1.0
ylabmag=1.0
dataset=-1
unitx=1
logx=0
logy=0
sweep=vicm_vec
color=4
node=avd_vec}
B 2 -660 -580 140 -180 {flags=graph
y1=0.0025
y2=0.037
ypos1=0
ypos2=2
divy=5
subdivy=4
unity=1
x1=0
x2=11
divx=5
subdivx=8
xlabmag=1.0
ylabmag=1.0
dataset=-1
unitx=1
logx=1
logy=0
mode=Line
rainbow=0
color=4
node=vodiff
}
N 0 70 0 90 {lab=#net1}
N 0 70 40 70 {lab=#net1}
N -60 10 -60 30 {lab=#net2}
N -60 10 40 10 {lab=#net2}
N 120 10 270 10 {lab=#net3}
N 120 70 240 70 {lab=#net4}
N 240 60 240 70 {lab=#net4}
N 240 60 270 60 {lab=#net4}
N 450 30 490 30 {lab=VON}
N 490 20 490 30 {lab=VON}
N 490 20 560 20 {lab=VON}
N 450 50 560 50 {lab=VOP}
N 560 50 560 80 {lab=VOP}
N 510 -30 510 20 {lab=VON}
N 510 50 510 90 {lab=VOP}
N 560 20 660 20 {lab=VON}
N 570 80 660 80 {lab=VOP}
N 560 80 570 80 {lab=VOP}
C {Lab06.sym} 330 40 0 0 {name=X1}
C {balun.sym} 80 40 0 0 {name=balun1}
C {balun.sym} 700 50 0 1 {name=balun2
spice_ignore=true}
C {devices/vdd.sym} -150 40 0 0 {name=l1 lab=VDD}
C {devices/vsource.sym} -150 70 0 0 {name=V1 value=1.8 savecurrent=false}
C {devices/gnd.sym} -150 100 0 0 {name=l2 lab=GND}
C {devices/gnd.sym} 340 110 0 0 {name=l3 lab=GND}
C {devices/isource.sym} 310 150 0 0 {name=I0 value=20u}
C {devices/gnd.sym} 310 180 0 0 {name=l4 lab=GND}
C {devices/vdd.sym} 330 -40 0 0 {name=l5 lab=VDD}
C {devices/vsource.sym} 0 120 0 0 {name=VICM value="0.56" savecurrent=false}
C {devices/gnd.sym} 0 150 0 0 {name=l6 lab=GND}
C {devices/vsource.sym} -60 60 0 0 {name=VID value="DC 0 AC 1" savecurrent=false}
C {devices/gnd.sym} -60 90 0 0 {name=l7 lab=GND}
C {devices/lab_pin.sym} 790 20 2 0 {name=p1 sig_type=std_logic lab=VDIFF
spice_ignore=true}
C {devices/lab_pin.sym} 780 80 2 0 {name=p2 sig_type=std_logic lab=VCM
spice_ignore=true}
C {devices/code.sym} 680 220 0 0 {name=NGSPICE only_toplevel=false value="
.include "sim_script.sim"
"}
C {devices/code_shown.sym} 30 260 0 0 {name=MODELS only_toplevel=true
format="tcleval( @value )"
value="
.include $::180MCU_MODELS/design.ngspice
.lib $::180MCU_MODELS/sm141064.ngspice typical
"}
C {devices/capa.sym} 510 120 0 0 {name=C1
m=1
value=1p
footprint=1206
device="ceramic capacitor"}
C {devices/gnd.sym} 510 150 0 0 {name=l8 lab=GND}
C {devices/capa.sym} 510 -60 2 0 {name=C2
m=1
value=1p
footprint=1206
device="ceramic capacitor"}
C {devices/gnd.sym} 510 -90 2 0 {name=l9 lab=GND}
C {devices/lab_pin.sym} 600 20 1 0 {name=p5 sig_type=std_logic lab=VON}
C {devices/lab_pin.sym} 600 80 3 0 {name=p6 sig_type=std_logic lab=VOP}
