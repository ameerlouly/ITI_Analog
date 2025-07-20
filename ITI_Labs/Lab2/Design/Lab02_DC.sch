v {xschem version=3.4.6 file_version=1.2}
G {}
K {}
V {}
S {}
E {}
B 2 -800 -620 0 -220 {flags=graph
y1=0.022
y2=2.5
ypos1=0
ypos2=2
divy=5
subdivy=1
unity=1
x1=0
x2=2.5
divx=5
subdivx=1
xlabmag=1.0
ylabmag=1.0
node=VOUT
color=4
dataset=-1
unitx=1
logx=0
logy=0
}
B 2 -800 -1030 0 -630 {flags=graph
y1=-14.870244
y2=0.12975578
ypos1=0
ypos2=2
divy=5
subdivy=1
unity=1
x1=0
x2=2.5
divx=5
subdivx=1
xlabmag=1.0
ylabmag=1.0
node="VOUT deriv()"
color=4
dataset=-1
unitx=1
logx=0
logy=0
hilight_wave=-1}
N -280 0 -280 80 {lab=GND}
N -280 -30 -250 -30 {lab=GND}
N -250 -30 -250 10 {lab=GND}
N -250 10 -250 20 {lab=GND}
N -280 20 -250 20 {lab=GND}
N -280 -80 -280 -60 {lab=VOUT}
N -280 -160 -280 -140 {lab=VDD}
N -340 -30 -320 -30 {lab=VIN}
N -340 -30 -340 30 {lab=VIN}
C {devices/gnd.sym} -280 80 0 0 {name=l1 lab=GND}
C {devices/code_shown.sym} -520 120 0 0 {name=MODELS only_toplevel=true
format="tcleval( @value )"
value="
.include $::180MCU_MODELS/design.ngspice
.lib $::180MCU_MODELS/sm141064.ngspice typical
"}
C {devices/code_shown.sym} -180 -150 0 0 {name="NGSPICE" only_toplevel=true
value="
.control
save all
+ @m.xm1.m0[id]
+ @m.xm1.m0[gm]
+ @m.xm1.m0[gds]
+ @m.xm1.m0[vgs]
+ @m.xm1.m0[vds]
dc VIN 0 2.5 10m
remzerovec
write Lab02_DC.raw
.endc
"}
C {devices/vsource.sym} -340 60 0 0 {name=VIN value="DC 0 AC 1" savecurrent=false}
C {devices/vsource.sym} -430 -30 0 0 {name=V2 value=2.5 savecurrent=false}
C {devices/vdd.sym} -430 -60 0 0 {name=l4 lab=VDD}
C {devices/gnd.sym} -430 0 0 0 {name=l5 lab=GND}
C {devices/gnd.sym} -340 90 0 0 {name=l6 lab=GND}
C {devices/res.sym} -280 -110 0 0 {name=R3
value=100k
footprint=1206
device=resistor
m=1}
C {devices/vdd.sym} -280 -160 0 0 {name=l7 lab=VDD}
C {devices/lab_pin.sym} -280 -70 0 1 {name=p1 sig_type=std_logic lab=VOUT
}
C {devices/lab_pin.sym} -340 -30 3 1 {name=p2 sig_type=std_logic lab=VIN
}
C {symbols/nmos_3p3.sym} -300 -30 0 0 {name=M1
L=2u
W=9.76u
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
