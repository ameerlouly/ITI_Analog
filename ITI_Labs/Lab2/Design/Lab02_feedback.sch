v {xschem version=3.4.6 file_version=1.2}
G {}
K {}
V {}
S {}
E {}
B 2 760 -790 1560 -390 {flags=graph
y1=-86
y2=1900
ypos1=0
ypos2=2
divy=5
subdivy=1
unity=1
x1=0
x2=2e-06
divx=5
subdivx=1
xlabmag=1.0
ylabmag=1.0
node="vout deriv()"
color=4
dataset=-1
unitx=1
logx=0
logy=0
}
B 2 760 -370 1560 30 {flags=graph
y1=0.21
y2=2.5
ypos1=0
ypos2=2
divy=5
subdivy=1
unity=1
x1=0
x2=2e-06
divx=5
subdivx=1
xlabmag=1.0
ylabmag=1.0
node="vout
vin"
color="4 7"
dataset=-1
unitx=1
logx=0
logy=0
hcursor1_y=0.81724256}
B 2 -110 -1220 690 -820 {flags=graph
y1=4.5e-10
y2=7.6e-10
ypos1=0
ypos2=2
divy=5
subdivy=1
unity=1
x1=0
x2=2e-06
divx=5
subdivx=1
xlabmag=1.0
ylabmag=1.0
node=@m.xm1.m0[gm]
color=7
dataset=-1
unitx=1
logx=0
logy=0
}
N 370 -430 370 -350 {lab=GND}
N 370 -460 400 -460 {lab=GND}
N 400 -460 400 -420 {lab=GND}
N 400 -420 400 -410 {lab=GND}
N 370 -410 400 -410 {lab=GND}
N 230 -460 330 -460 {lab=VIN}
N 250 -500 250 -460 {lab=VIN}
N 150 -460 170 -460 {lab=VSIG}
N 150 -460 150 -400 {lab=VSIG}
N 330 -500 370 -500 {lab=VOUT}
N 250 -500 270 -500 {lab=VIN}
N 50 -670 50 -640 {lab=VDD}
N 370 -670 370 -640 {lab=VDD}
N 90 -610 330 -610 {lab=#net1}
N 370 -580 370 -490 {lab=VOUT}
N 50 -580 50 -530 {lab=#net1}
N 130 -610 130 -560 {lab=#net1}
N 50 -560 130 -560 {lab=#net1}
N 30 -610 50 -610 {lab=VDD}
N 30 -650 30 -610 {lab=VDD}
N 30 -650 50 -650 {lab=VDD}
N 370 -610 400 -610 {lab=VDD}
N 400 -650 400 -610 {lab=VDD}
N 370 -650 400 -650 {lab=VDD}
C {symbols/nmos_3p3.sym} 350 -460 0 0 {name=M1
L=2u
W=9.76u
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
C {devices/gnd.sym} 370 -350 0 0 {name=l1 lab=GND}
C {devices/code_shown.sym} -10 -310 0 0 {name=MODELS only_toplevel=true
format="tcleval( @value )"
value="
.include $::180MCU_MODELS/design.ngspice
.lib $::180MCU_MODELS/sm141064.ngspice typical
"}
C {devices/code_shown.sym} 485 -700 0 0 {name="NGSPICE" only_toplevel=true
value="
.control
save all
+ @m.xm1.m0[id]
+ @m.xm1.m0[gm]
+ @m.xm1.m0[gds]
+ @m.xm1.m0[vgs]
+ @m.xm1.m0[vds]
+ @m.xm2.m0[id]
+ @m.xm2.m0[gm]
+ @m.xm2.m0[gds]
+ @m.xm2.m0[vgs]
+ @m.xm2.m0[vds]
*op
DC VIN 0 2.5 10m
*tran 0.1u 2u
remzerovec
write Lab02_feedback.raw
.endc
"}
C {devices/vsource.sym} 150 -370 0 0 {name=VIN value="sin(0 10m 1meg)" savecurrent=false}
C {devices/vsource.sym} -80 -460 0 0 {name=V2 value=2.5 savecurrent=false}
C {devices/vdd.sym} -80 -490 0 0 {name=l4 lab=VDD}
C {devices/gnd.sym} -80 -430 0 0 {name=l5 lab=GND}
C {devices/gnd.sym} 150 -340 0 0 {name=l6 lab=GND}
C {devices/vdd.sym} 370 -670 0 0 {name=l7 lab=VDD}
C {devices/lab_pin.sym} 370 -540 0 1 {name=p1 sig_type=std_logic lab=VOUT
}
C {devices/lab_pin.sym} 150 -430 2 1 {name=p2 sig_type=std_logic lab=VSIG
}
C {devices/res.sym} 300 -500 3 0 {name=Rf
value=10meg
footprint=1206
device=resistor
m=1}
C {devices/res.sym} 200 -460 3 0 {name=RIN
value=1meg
footprint=1206
device=resistor
m=1}
C {symbols/pmos_3p3.sym} 350 -610 0 0 {name=M2
L=2u
W=9.78u
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
C {devices/vdd.sym} 50 -670 0 0 {name=l2 lab=VDD}
C {devices/isource.sym} 50 -500 0 0 {name=I0 value=10u}
C {devices/gnd.sym} 50 -470 0 0 {name=l3 lab=GND}
C {symbols/pmos_3p3.sym} 70 -610 0 1 {name=M3
L=2u
W=9.78u
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
C {devices/lab_pin.sym} 290 -460 1 1 {name=p3 sig_type=std_logic lab=VIN
}
C {devices/ngspice_get_value.sym} 410 -370 0 0 {name=r1 node=@m.xm1.m0[vth]
descr="VTH="}
