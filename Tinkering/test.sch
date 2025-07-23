v {xschem version=3.4.6 file_version=1.2}
G {}
K {}
V {}
S {}
E {}
B 2 -740 -1000 60 -600 {flags=graph
y1=0.28
y2=0.67
ypos1=0
ypos2=2
divy=5
subdivy=1
unity=1
x1=0
x2=2
divx=5
subdivx=1
xlabmag=1.0
ylabmag=1.0
node=@m.xm1.m0[vth]
color=4
dataset=-1
unitx=1
logx=0
logy=0
rainbow=1}
B 2 70 -1000 870 -600 {flags=graph
y1=0.63
y2=0.67
ypos1=0
ypos2=2
divy=5
subdivy=1
unity=1
x1=0
x2=2
divx=5
subdivx=1
xlabmag=1.0
ylabmag=1.0
node=@m.xm2.m0[vth]
color=4
dataset=-1
unitx=1
logx=0
logy=0
rainbow=1}
B 2 -740 -1420 60 -1020 {flags=graph
y1=0
y2=0.01
ypos1=0
ypos2=2
divy=5
subdivy=1
unity=1
x1=0
x2=2
divx=5
subdivx=1
xlabmag=1.0
ylabmag=1.0
node=@m.xm1.m0[region]
color=4
dataset=-1
unitx=1
logx=0
logy=0
rainbow=1}
B 2 70 -1420 870 -1020 {flags=graph
y1=0
y2=0.01
ypos1=0
ypos2=2
divy=5
subdivy=1
unity=1
x1=0
x2=2
divx=5
subdivx=1
xlabmag=1.0
ylabmag=1.0
node=@m.xm2.m0[region]
color=4
dataset=-1
unitx=1
logx=0
logy=0
rainbow=1}
N -10 -380 -10 -360 {lab=#net1}
N -80 -410 -50 -410 {lab=vgs}
N -80 -410 -80 -330 {lab=vgs}
N -80 -330 -50 -330 {lab=vgs}
N -10 -300 -10 -270 {lab=GND}
N -10 -330 20 -330 {lab=GND}
N 20 -330 20 -290 {lab=GND}
N -10 -290 20 -290 {lab=GND}
N -170 -430 -170 -400 {lab=vgs}
N -240 -430 -240 -400 {lab=vds}
N -10 -470 -10 -440 {lab=vds}
N 100 -410 100 -390 {lab=#net2}
N -10 -410 100 -410 {lab=#net2}
C {symbols/nmos_3p3.sym} -30 -410 0 0 {name=M1
L=0.28u
W=10u
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
C {symbols/nmos_3p3.sym} -30 -330 0 0 {name=M2
L=0.28u
W=10u
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
C {devices/gnd.sym} -10 -270 0 0 {name=l1 lab=GND}
C {devices/code_shown.sym} -277.4560180570604 -210 0 0 {name=MODELS only_toplevel=true
format="tcleval( @value )"
value="
.include $::180MCU_MODELS/design.ngspice
.lib $::180MCU_MODELS/sm141064.ngspice typical
"}
C {devices/code_shown.sym} 140 -510 0 0 {name="DC Sim Code" only_toplevel=true
value="
.control

save all 
+ @m.xm1.m0[id] @m.xm1.m0[vth]
+ @m.xm2.m0[id] @m.xm2.m0[vth]
+ @m.xm3.m0[id] @m.xm1.m0[region]
+ @m.xm4.m0[id] @m.xm2.m0[region]
*dc vgs 0 3.3 1m
dc vb 0 2 0.01 vgs 0 2 0.2
write test.raw

.endc
"}
C {devices/vsource.sym} -240 -370 0 0 {name=VDS value=3.3 savecurrent=false}
C {devices/gnd.sym} -170 -340 0 0 {name=l3 lab=GND}
C {devices/gnd.sym} -240 -340 0 0 {name=l4 lab=GND}
C {devices/vsource.sym} -170 -370 0 0 {name=VGS value=0 savecurrent=false}
C {devices/lab_pin.sym} -170 -430 0 0 {name=p1 sig_type=std_logic lab=vgs}
C {devices/lab_pin.sym} -240 -430 0 0 {name=p4 sig_type=std_logic lab=vds}
C {devices/lab_pin.sym} -10 -470 0 0 {name=p2 sig_type=std_logic lab=vds
}
C {devices/lab_pin.sym} -80 -370 0 0 {name=p3 sig_type=std_logic lab=vgs
}
C {devices/gnd.sym} 100 -330 0 0 {name=l2 lab=GND}
C {devices/vsource.sym} 100 -360 0 0 {name=VB value=0 savecurrent=false}
