v {xschem version=3.4.6 file_version=1.2}
G {}
K {}
V {}
S {}
E {}
B 2 280 -510 1080 -110 {flags=graph
y1=9.3e-14
y2=0.0033
ypos1=0
ypos2=2
divy=5
subdivy=4
unity=1
x1=0
x2=3.3
divx=5
subdivx=1
xlabmag=1.0
ylabmag=1.0
dataset=-1
unitx=1
logx=0
logy=0
color="5 4"
node="\\"NMOS ID Short Channel\\";i(@m.xm1.m0[id])
\\"NMOS ID LONG Channel\\";i(@m.xm3.m0[id])"}
B 2 1100 -510 1900 -110 {flags=graph
y1=0
y2=0.00071
ypos1=0
ypos2=2
divy=5
subdivy=4
unity=1
x1=0
x2=3.3
divx=5
subdivx=1
xlabmag=1.0
ylabmag=1.0
dataset=-1
unitx=1
logx=0
logy=0
color="5 4"
node="\\"PMOS ID Short Channel\\";i(@m.xm2.m0[id])
\\"PMOS ID Long Channel\\";i(@m.xm4.m0[id])"}
B 2 280 -930 1080 -530 {flags=graph
y1=2.6e-12
y2=0.002
ypos1=0
ypos2=2
divy=5
subdivy=4
unity=1
x1=0
x2=3.3
divx=5
subdivx=1
xlabmag=1.0
ylabmag=1.0
dataset=-1
unitx=1
logx=0
logy=0
color="7 4"
node="@m.xm1.m0[gm]
@m.xm3.m0[gm]"}
B 2 1100 -930 1900 -530 {flags=graph
y1=0
y2=0.0015
ypos1=0
ypos2=2
divy=5
subdivy=4
unity=1
x1=0
x2=3.3
divx=5
subdivx=1
xlabmag=1.0
ylabmag=1.0
dataset=-1
unitx=1
logx=0
logy=0
color="5 4"
node="@m.xm2.m0[gm]
@m.xm4.m0[gm]"}
N -220 60 -180 60 {
lab=vgs}
N -140 -20 -140 30 {
lab=vds}
N -140 60 -40 60 {
lab=GND}
N -140 90 -140 160 {
lab=GND}
N 180 70 280 70 {
lab=vgs}
N 180 100 180 170 {
lab=GND}
N -40 60 -40 120 {lab=GND}
N -140 120 -40 120 {lab=GND}
N -140 -40 -140 -20 {lab=vds}
N -220 60 -220 80 {lab=vgs}
N -140 -40 -20 -40 {lab=vds}
N 280 30 280 70 {lab=vgs}
N 180 30 280 30 {lab=vgs}
N 180 -40 180 10 {lab=vgs}
N 180 10 180 30 {lab=vgs}
N 180 30 180 40 {lab=vgs}
N -310 10 -310 40 {lab=vgs}
N -380 10 -380 40 {lab=vds}
N 350 50 390 50 {
lab=vgs}
N 430 -30 430 20 {
lab=vds}
N 430 50 530 50 {
lab=GND}
N 430 80 430 150 {
lab=GND}
N 530 50 530 110 {lab=GND}
N 430 110 530 110 {lab=GND}
N 430 -50 430 -30 {lab=vds}
N 350 50 350 70 {lab=vgs}
N 430 -50 550 -50 {lab=vds}
N 850 20 850 60 {lab=vgs}
N 750 20 850 20 {lab=vgs}
N 750 -50 750 0 {lab=vgs}
N 750 0 750 20 {lab=vgs}
N 750 60 850 60 {lab=vgs}
N 750 90 750 160 {lab=GND}
N 750 20 750 30 {lab=vgs}
N -20 -40 50 -40 {lab=vds}
N 120 70 140 70 {lab=GND}
N 120 70 120 80 {lab=GND}
N 550 -50 620 -50 {lab=vds}
N 690 60 710 60 {lab=GND}
N 690 60 690 70 {lab=GND}
C {devices/code_shown.sym} -257.4560180570604 220 0 0 {name=MODELS only_toplevel=true
format="tcleval( @value )"
value="
.include $::180MCU_MODELS/design.ngspice
.lib $::180MCU_MODELS/sm141064.ngspice typical
"}
C {devices/code_shown.sym} 880 -40 0 0 {name="DC Sim Code" only_toplevel=true
value="
.control

save all 
+ @m.xm1.m0[id] @m.xm1.m0[gm]
+ @m.xm2.m0[id] @m.xm2.m0[gm]
+ @m.xm3.m0[id] @m.xm3.m0[gm]
+ @m.xm4.m0[id] @m.xm4.m0[gm]
dc vgs 0 3.3 1m
*dc vd 0 2 0.01 vg 0 2 0.2
write test_mos.raw

.endc
"}
C {symbols/nmos_3p3.sym} -160 60 0 0 {name=M1
L=280n
W=10*L
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
C {symbols/pmos_3p3.sym} 160 70 0 0 {name=M2
L=280n
W=10*L
nf=1
mult=1
ad="'int((nf+1)/2) * W/nf * 0.18u'"
pd="'2*int((nf+1)/2) * (W/nf + 0.18u)'"
as="'int((nf+2)/2) * W/nf * 0.18u'"
ps="'2*int((nf+2)/2) * (W/nf + 0.18u)'"
nrd="'0.18u / W'" nrs="'0.18u / W'"
sa=0 sb=0 sd=0
model=pmos_3p3
spiceprefix=X
q}
C {devices/vsource.sym} -380 70 0 0 {name=VDS value=3.3 savecurrent=false}
C {devices/gnd.sym} -140 160 0 0 {name=l1 lab=GND}
C {devices/gnd.sym} 180 170 0 0 {name=l2 lab=GND}
C {devices/gnd.sym} -310 100 0 0 {name=l3 lab=GND}
C {devices/gnd.sym} -380 100 0 0 {name=l4 lab=GND}
C {devices/vsource.sym} -310 70 0 0 {name=VGS value=0 savecurrent=false}
C {devices/lab_pin.sym} -310 10 0 0 {name=p1 sig_type=std_logic lab=vgs}
C {devices/lab_pin.sym} -220 80 0 0 {name=p2 sig_type=std_logic lab=vgs}
C {devices/lab_pin.sym} 180 -40 0 0 {name=p3 sig_type=std_logic lab=vgs
}
C {devices/lab_pin.sym} -380 10 0 0 {name=p4 sig_type=std_logic lab=vds}
C {devices/lab_pin.sym} 50 -40 1 0 {name=p5 sig_type=std_logic lab=vds}
C {symbols/nmos_3p3.sym} 410 50 0 0 {name=M3
L=2.8u
W=10*L
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
C {symbols/pmos_3p3.sym} 730 60 0 0 {name=M4
L=2.8u
W=10*L
nf=1
mult=1
ad="'int((nf+1)/2) * W/nf * 0.18u'"
pd="'2*int((nf+1)/2) * (W/nf + 0.18u)'"
as="'int((nf+2)/2) * W/nf * 0.18u'"
ps="'2*int((nf+2)/2) * (W/nf + 0.18u)'"
nrd="'0.18u / W'" nrs="'0.18u / W'"
sa=0 sb=0 sd=0
model=pmos_3p3
spiceprefix=X
q}
C {devices/gnd.sym} 430 150 0 0 {name=l5 lab=GND}
C {devices/gnd.sym} 750 160 0 0 {name=l6 lab=GND}
C {devices/lab_pin.sym} 350 70 0 0 {name=p7 sig_type=std_logic lab=vgs}
C {devices/lab_pin.sym} 750 -50 0 0 {name=p8 sig_type=std_logic lab=vgs
}
C {devices/lab_pin.sym} 620 -50 1 0 {name=p10 sig_type=std_logic lab=vds}
C {devices/gnd.sym} 120 80 0 0 {name=l7 lab=GND}
C {devices/gnd.sym} 690 70 0 0 {name=l8 lab=GND}
