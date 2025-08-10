v {xschem version=3.4.6 file_version=1.2}
G {}
K {}
V {}
S {}
E {}
B 2 770 -300 1570 100 {flags=graph
y1=48.8
y2=109.8
ypos1=0
ypos2=2
divy=5
subdivy=4
unity=1
x1=-1.8
x2=1.8
divx=5
subdivx=4
xlabmag=1.0
ylabmag=1.0
dataset=-1
unitx=1
logx=0
logy=0
mode=Line
rainbow=0
color=4
node="VOUT deriv()"
}
B 2 770 -730 1570 -330 {flags=graph
y1=0.65
y2=83
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
mode=Line
rainbow=0
color=4
node=cmrr_freq}
B 2 770 150 1570 550 {flags=graph
y1=0.28
y2=11000000
ypos1=0
ypos2=2
divy=5
subdivy=4
unity=1
x1=-0.089
x2=1.691
divx=5
subdivx=4
xlabmag=1.0
ylabmag=1.0
dataset=-1
unitx=1
logx=0
logy=0
mode=Line
rainbow=0
color=4
node=gbw_vec
rawfile=/home/tare/ITI_Analog/ITI_Labs/Lab7/Simulation/5t_ota_tb_cmir.raw
sweep=vicm_vec
sim_type=constants
autoload=1}
N 30 -90 30 -70 {lab=#net1}
N 30 -90 130 -90 {lab=#net1}
N 210 -90 360 -90 {lab=#net1}
N 330 -40 360 -40 {lab=VOUT}
N 560 -60 640 -60 {lab=VOUT}
N 400 90 400 100 {lab=VDD}
N 400 80 400 90 {lab=VDD}
N 640 -60 640 -30 {lab=VOUT}
N 130 -90 210 -90 {lab=#net1}
N 330 -40 330 140 {lab=VOUT}
N 330 140 590 140 {lab=VOUT}
N 590 -60 590 140 {lab=VOUT}
C {Lab07.sym} 420 -60 0 0 {name=X1}
C {devices/vdd.sym} -60 -60 0 0 {name=l1 lab=VDD}
C {devices/vsource.sym} -60 -30 0 0 {name=V1 value=1.8 savecurrent=false}
C {devices/gnd.sym} -60 0 0 0 {name=l2 lab=GND}
C {devices/gnd.sym} 430 10 0 0 {name=l3 lab=GND}
C {devices/isource.sym} 400 50 2 0 {name=I0 value=10u}
C {devices/vdd.sym} 420 -140 0 0 {name=l5 lab=VDD}
C {devices/vsource.sym} 30 -40 0 0 {name=VID value="0.90372" savecurrent=false}
C {devices/gnd.sym} 30 -10 0 0 {name=l7 lab=GND}
C {devices/code.sym} 80 -410 0 0 {name=NGSPICE only_toplevel=false value="
.include "sim_script_cl.sim"
"}
C {devices/code_shown.sym} 90 -530 0 0 {name=MODELS only_toplevel=true
format="tcleval( @value )"
value="
.include $::180MCU_MODELS/design.ngspice
.lib $::180MCU_MODELS/sm141064.ngspice typical
"}
C {devices/lab_pin.sym} 640 -60 2 0 {name=p1 sig_type=std_logic lab=VOUT}
C {devices/vdd.sym} 400 100 2 0 {name=l4 lab=VDD}
C {devices/capa.sym} 640 0 0 0 {name=C1
m=1
value=5p
footprint=1206
device="ceramic capacitor"}
C {devices/gnd.sym} 640 30 0 0 {name=l8 lab=GND}
