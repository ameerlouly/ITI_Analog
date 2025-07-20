v {xschem version=3.4.6 file_version=1.2}
G {}
K {}
V {}
S {}
E {}
B 2 610 -180 1410 220 {flags=graph
y1=0.8
y2=0.83
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
node=vin
color=4
dataset=-1
unitx=1
logx=0
logy=0
}
B 2 610 230 1410 630 {flags=graph
y1=1.3
y2=1.6
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
node=vout
color=12
dataset=-1
unitx=1
logx=0
logy=0
}
B 2 610 640 1410 1040 {flags=graph
y1=9.4479165e-05
y2=0.00010947916
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
node="gm;@m.xm1.m0[gm]"
color=7
dataset=-1
unitx=1
logx=0
logy=0
hcursor1_y=0.00010802409
hcursor2_y=9.5829457e-05}
N 10 430 40 430 {lab=#net1}
N 100 430 150 430 {lab=VIN}
N -30 460 -30 540 {lab=GND}
N -30 380 -30 400 {lab=#net1}
N -30 300 -30 320 {lab=VDD}
N 20 390 20 430 {lab=#net1}
N -30 390 20 390 {lab=#net1}
N -50 430 -30 430 {lab=GND}
N -50 430 -50 470 {lab=GND}
N -50 470 -30 470 {lab=GND}
N 130 530 130 550 {lab=#net2}
N 130 430 130 470 {lab=VIN}
N 190 460 190 540 {lab=GND}
N 190 430 220 430 {lab=GND}
N 220 430 220 470 {lab=GND}
N 220 470 220 480 {lab=GND}
N 190 480 220 480 {lab=GND}
N 190 380 190 400 {lab=VOUT}
N 190 300 190 320 {lab=VDD}
C {symbols/nmos_3p3.sym} 170 430 0 0 {name=M1
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
C {symbols/nmos_3p3.sym} -10 430 0 1 {name=M2
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
C {devices/res_ac.sym} 70 430 1 0 {name=R2
value=1m
ac=1e12
m=1}
C {devices/gnd.sym} 190 540 0 0 {name=l1 lab=GND}
C {devices/gnd.sym} -30 540 0 0 {name=l2 lab=GND}
C {devices/code_shown.sym} -170 640 0 0 {name=MODELS only_toplevel=true
format="tcleval( @value )"
value="
.include $::180MCU_MODELS/design.ngspice
.lib $::180MCU_MODELS/sm141064.ngspice typical
"}
C {devices/code_shown.sym} 305 310 0 0 {name="NGSPICE" only_toplevel=true
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
*write cs_amp_dc.raw
tran 0.1u 2u
remzerovec
write Lab02_Trans.raw
.endc
"}
C {devices/isource.sym} -30 350 0 0 {name=I0 value=10u}
C {devices/vdd.sym} -30 300 0 0 {name=l3 lab=VDD}
C {devices/vsource.sym} 130 580 0 0 {name=VIN value="sin(0 10m 1meg)" savecurrent=false}
C {devices/vsource.sym} -190 420 0 0 {name=V2 value=2.5 savecurrent=false}
C {devices/vdd.sym} -190 390 0 0 {name=l4 lab=VDD}
C {devices/gnd.sym} -190 450 0 0 {name=l5 lab=GND}
C {devices/gnd.sym} 130 610 0 0 {name=l6 lab=GND}
C {devices/res.sym} 190 350 0 0 {name=R3
value=100k
footprint=1206
device=resistor
m=1}
C {devices/vdd.sym} 190 300 0 0 {name=l7 lab=VDD}
C {devices/lab_pin.sym} 190 390 0 1 {name=p1 sig_type=std_logic lab=VOUT
}
C {devices/lab_pin.sym} 130 430 3 1 {name=p2 sig_type=std_logic lab=VIN
}
C {devices/capa.sym} 130 500 0 0 {name=C1
m=1
value=1u
footprint=1206
device="ceramic capacitor"}
