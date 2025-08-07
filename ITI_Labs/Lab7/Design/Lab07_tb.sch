v {xschem version=3.4.6 file_version=1.2}
G {}
K {}
V {}
S {}
E {}
B 2 690 -80 1490 320 {flags=graph
y1=0
y2=0.01
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
dataset=-1
unitx=1
logx=1
logy=0
mode=Line
rainbow=0
color=4
node="VOUT VOUT1 / db20()"
}
N 0 70 0 90 {lab=#net1}
N 0 70 40 70 {lab=#net1}
N -60 10 -60 30 {lab=#net2}
N -60 10 40 10 {lab=#net2}
N 120 10 270 10 {lab=#net3}
N 120 70 240 70 {lab=#net4}
N 240 60 240 70 {lab=#net4}
N 240 60 270 60 {lab=#net4}
N 470 40 550 40 {lab=VOUT}
N 310 190 310 200 {lab=VDD}
N 310 180 310 190 {lab=VDD}
N 550 40 550 70 {lab=VOUT}
N -10 450 -10 470 {lab=#net5}
N -10 450 30 450 {lab=#net5}
N -70 390 -70 410 {lab=#net6}
N -70 390 30 390 {lab=#net6}
N 110 390 260 390 {lab=#net7}
N 110 450 230 450 {lab=#net8}
N 230 440 230 450 {lab=#net8}
N 230 440 260 440 {lab=#net8}
N 460 420 540 420 {lab=VOUT1}
N 300 570 300 580 {lab=VDD}
N 300 560 300 570 {lab=VDD}
N 540 420 540 450 {lab=VOUT1}
C {Lab07.sym} 330 40 0 0 {name=X1}
C {balun.sym} 80 40 0 0 {name=balun1}
C {devices/vdd.sym} -150 40 0 0 {name=l1 lab=VDD}
C {devices/vsource.sym} -150 70 0 0 {name=V1 value=1.8 savecurrent=false}
C {devices/gnd.sym} -150 100 0 0 {name=l2 lab=GND}
C {devices/gnd.sym} 340 110 0 0 {name=l3 lab=GND}
C {devices/isource.sym} 310 150 2 0 {name=I0 value=10u}
C {devices/vdd.sym} 330 -40 0 0 {name=l5 lab=VDD}
C {devices/vsource.sym} 0 120 0 0 {name=VICM value="1.25 AC 0" savecurrent=false}
C {devices/gnd.sym} 0 150 0 0 {name=l6 lab=GND}
C {devices/vsource.sym} -60 60 0 0 {name=VID value="DC 0 AC 1" savecurrent=false}
C {devices/gnd.sym} -60 90 0 0 {name=l7 lab=GND}
C {devices/code.sym} -350 -80 0 0 {name=NGSPICE only_toplevel=false value="
.include "sim_script.sim"
"}
C {devices/code_shown.sym} 70 -240 0 0 {name=MODELS only_toplevel=true
format="tcleval( @value )"
value="
.include $::180MCU_MODELS/design.ngspice
.lib $::180MCU_MODELS/sm141064.ngspice typical
"}
C {devices/lab_pin.sym} 550 40 2 0 {name=p1 sig_type=std_logic lab=VOUT}
C {devices/vdd.sym} 310 200 2 0 {name=l4 lab=VDD}
C {devices/capa.sym} 550 100 0 0 {name=C1
m=1
value=5p
footprint=1206
device="ceramic capacitor"}
C {devices/gnd.sym} 550 130 0 0 {name=l8 lab=GND}
C {Lab07.sym} 320 420 0 0 {name=X2}
C {balun.sym} 70 420 0 0 {name=balun2}
C {devices/gnd.sym} 330 490 0 0 {name=l9 lab=GND}
C {devices/isource.sym} 300 530 2 0 {name=I1 value=10u}
C {devices/vdd.sym} 320 340 0 0 {name=l10 lab=VDD}
C {devices/vsource.sym} -10 500 0 0 {name=VICM1 value="1.25 AC 1" savecurrent=false}
C {devices/gnd.sym} -10 530 0 0 {name=l11 lab=GND}
C {devices/vsource.sym} -70 440 0 0 {name=VID1 value="DC 0 AC 0" savecurrent=false}
C {devices/gnd.sym} -70 470 0 0 {name=l12 lab=GND}
C {devices/lab_pin.sym} 540 420 2 0 {name=p2 sig_type=std_logic lab=VOUT1}
C {devices/vdd.sym} 300 580 2 0 {name=l13 lab=VDD}
C {devices/capa.sym} 540 480 0 0 {name=C2
m=1
value=5p
footprint=1206
device="ceramic capacitor"}
C {devices/gnd.sym} 540 510 0 0 {name=l14 lab=GND}
