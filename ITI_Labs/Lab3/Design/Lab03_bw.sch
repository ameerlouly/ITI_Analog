v {xschem version=3.4.6 file_version=1.2}
G {}
K {}
V {}
S {}
E {}
B 2 -670 -680 130 -280 {flags=graph
y1=-55
y2=67
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
node="vout1 db20()
vout2 db20()"
color="4 12"
dataset=-1
unitx=1
logx=1
logy=0
linewidth_mult=5
}
N -510 90 -510 110 {lab=GND}
N -510 0 -510 30 {lab=#net1}
N -510 0 -490 0 {lab=#net1}
N -430 0 -400 0 {lab=VSIG}
N -140 30 -140 90 {lab=GND}
N -140 0 -110 0 {lab=GND}
N -110 0 -110 40 {lab=GND}
N -140 40 -110 40 {lab=GND}
N -140 -180 -140 -160 {lab=VDD}
N -140 -40 -40 -40 {lab=VOUT1}
N -40 -40 -40 -20 {lab=VOUT1}
N -620 90 -620 110 {lab=GND}
N -620 -10 -620 30 {lab=VDD}
N -320 0 -180 0 {lab=VSIG}
N -140 -40 -140 -30 {lab=VOUT1}
N -140 -100 -140 -40 {lab=VOUT1}
N -190 -90 -140 -90 {lab=VOUT1}
N -280 -90 -250 -90 {lab=#net2}
N -280 -90 -280 -70 {lab=#net2}
N -280 -10 -280 0 {lab=VSIG}
N 200 -70 200 -30 {lab=#net3}
N 200 30 200 90 {lab=GND}
N 200 -190 200 -130 {lab=VOUT2}
N 110 -100 160 -100 {lab=VB}
N 200 -100 250 -100 {lab=GND}
N 250 -100 250 60 {lab=GND}
N 200 60 250 60 {lab=GND}
N 200 0 250 0 {lab=GND}
N 200 -150 300 -150 {lab=VOUT2}
N 300 -150 300 -130 {lab=VOUT2}
N 430 40 430 80 {lab=GND}
N 430 -70 430 -20 {lab=#net4}
N 420 -100 480 -100 {lab=GND}
N 480 -100 480 60 {lab=GND}
N 430 60 480 60 {lab=GND}
N 430 10 480 10 {lab=GND}
N 430 -190 430 -130 {lab=VB}
N 430 -270 430 -250 {lab=VDD}
N 350 -160 430 -160 {lab=VB}
N 350 -160 350 10 {lab=VB}
N 350 10 390 10 {lab=VB}
N 350 -100 390 -100 {lab=VB}
N 200 -270 200 -250 {lab=VDD}
N 50 0 160 0 {lab=VSIG}
N 750 0 750 60 {lab=GND}
N 750 -30 780 -30 {lab=GND}
N 780 -30 780 10 {lab=GND}
N 750 10 780 10 {lab=GND}
N 750 -210 750 -190 {lab=VDD}
N 750 -70 750 -60 {lab=#net5}
N 750 -130 750 -70 {lab=#net5}
N 690 -80 750 -80 {lab=#net5}
N 690 -80 690 -30 {lab=#net5}
N 690 -30 710 -30 {lab=#net5}
N 750 -90 830 -90 {lab=#net5}
N 890 -90 950 -90 {lab=VSIG}
C {devices/vsource.sym} -510 60 0 0 {name=V1 value="AC 1" savecurrent=false}
C {devices/gnd.sym} -510 110 0 0 {name=l1 lab=GND}
C {devices/lab_pin.sym} -400 0 1 0 {name=p1 sig_type=std_logic lab=VSIG}
C {devices/res_ac.sym} -460 0 1 0 {name=R1
value=1e12
ac=1m
m=1}
C {symbols/nmos_3p3.sym} -160 0 0 0 {name=M0
L=350n
W=3.5u
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
C {devices/code_shown.sym} -390 180 0 0 {name=MODELS only_toplevel=true
format="tcleval( @value )"
value="
.include $::180MCU_MODELS/design.ngspice
.lib $::180MCU_MODELS/sm141064.ngspice typical
"}
C {devices/gnd.sym} -140 90 0 0 {name=l2 lab=GND}
C {devices/vdd.sym} -140 -180 0 0 {name=l3 lab=VDD}
C {devices/capa.sym} -40 10 0 0 {name=C1
m=1
value=1p
footprint=1206
device="ceramic capacitor"}
C {devices/gnd.sym} -40 40 0 0 {name=l4 lab=GND}
C {devices/vsource.sym} -620 60 0 0 {name=V2 value=1.8 savecurrent=false}
C {devices/gnd.sym} -620 110 0 0 {name=l5 lab=GND}
C {devices/vdd.sym} -620 -10 0 0 {name=l6 lab=VDD}
C {devices/lab_pin.sym} -320 0 1 0 {name=p2 sig_type=std_logic lab=VSIG}
C {devices/vsource.sym} -280 -40 0 0 {name=V3 value="DC 0.0939" savecurrent=false}
C {devices/res_ac.sym} -220 -90 1 0 {name=R2
value=1m
ac=1e12
m=1}
C {symbols/nmos_3p3.sym} 180 0 0 0 {name=M1
L=350n
W=3.5u
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
C {symbols/nmos_3p3.sym} 180 -100 0 0 {name=M2
L=350n
W=3.5u
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
C {devices/gnd.sym} 200 90 0 0 {name=l7 lab=GND}
C {devices/lab_pin.sym} 50 0 1 0 {name=p3 sig_type=std_logic lab=VSIG}
C {devices/vdd.sym} 200 -270 0 0 {name=l8 lab=VDD}
C {devices/lab_pin.sym} 110 -100 0 0 {name=p4 sig_type=std_logic lab=VB}
C {devices/capa.sym} 300 -100 0 0 {name=C2
m=1
value=1p
footprint=1206
device="ceramic capacitor"}
C {devices/gnd.sym} 300 -70 0 0 {name=l9 lab=GND}
C {symbols/nmos_3p3.sym} 410 -100 0 0 {name=M4
L=350n
W=3.5u
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
C {devices/vdd.sym} 430 -270 0 0 {name=l10 lab=VDD}
C {devices/isource.sym} 430 -220 0 0 {name=I2 value=20u}
C {symbols/nmos_3p3.sym} 410 10 0 0 {name=M3
L=5.254u
W=3.5u
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
C {devices/gnd.sym} 430 80 0 0 {name=l11 lab=GND}
C {devices/lab_pin.sym} 350 -160 0 0 {name=p5 sig_type=std_logic lab=VB}
C {devices/code.sym} 1210 -100 0 0 {name="NGSPICE" only_toplevel=true
value="
.control
save all
+ @m.xm0.m0[id]
+ @m.xm0.m0[vgs]
+ @m.xm0.m0[vds]
+ @m.xm0.m0[vth]
+ @m.xm0.m0[vdsat]
+ @m.xm0.m0[gm]
+ @m.xm0.m0[gds]
+ @m.xm0.m0[gmbs]
+ @m.xm0.m0[cdb]
+ @m.xm0.m0[cgd]
+ @m.xm0.m0[cgs]
+ @m.xm0.m0[csb]

+ @m.xm1.m0[id]
+ @m.xm1.m0[vgs]
+ @m.xm1.m0[vds]
+ @m.xm1.m0[vth]
+ @m.xm1.m0[vdsat]
+ @m.xm1.m0[gm]
+ @m.xm1.m0[gds]
+ @m.xm1.m0[gmbs]
+ @m.xm1.m0[cdb]
+ @m.xm1.m0[cgd]
+ @m.xm1.m0[cgs]
+ @m.xm1.m0[csb]


+ @m.xm2.m0[id]
+ @m.xm2.m0[vgs]
+ @m.xm2.m0[vds]
+ @m.xm2.m0[vth]
+ @m.xm2.m0[vdsat]
+ @m.xm2.m0[gm]
+ @m.xm2.m0[gds]
+ @m.xm2.m0[gmbs]
+ @m.xm2.m0[cdb]
+ @m.xm2.m0[cgd]
+ @m.xm2.m0[cgs]
+ @m.xm2.m0[csb]


+ @m.xm3.m0[id]
+ @m.xm3.m0[vgs]
+ @m.xm3.m0[vds]
+ @m.xm3.m0[vth]
+ @m.xm3.m0[vdsat]
+ @m.xm3.m0[gm]
+ @m.xm3.m0[gds]
+ @m.xm3.m0[gmbs]
+ @m.xm3.m0[cdb]
+ @m.xm3.m0[cgd]
+ @m.xm3.m0[cgs]
+ @m.xm3.m0[csb]

+ @m.xm4.m0[id]
+ @m.xm4.m0[vgs]
+ @m.xm4.m0[vds]
+ @m.xm4.m0[vth]
+ @m.xm4.m0[vdsat]
+ @m.xm4.m0[gm]
+ @m.xm4.m0[gds]
+ @m.xm4.m0[gmbs]
+ @m.xm4.m0[cdb]
+ @m.xm4.m0[cgd]
+ @m.xm4.m0[cgs]
+ @m.xm4.m0[csb]

*op
*print all > op_point.csv
ac dec 10 1 10g
set appendwrite
remzerovec
write Lab03.raw
.endc
"}
C {devices/lab_pin.sym} -40 -40 2 0 {name=p6 sig_type=std_logic lab=VOUT1}
C {devices/lab_pin.sym} 280 -150 1 0 {name=p7 sig_type=std_logic lab=VOUT2}
C {devices/res.sym} -140 -130 0 0 {name=R4
value=1k
footprint=1206
device=resistor
m=1}
C {devices/res.sym} 200 -220 0 0 {name=R3
value=1k
footprint=1206
device=resistor
m=1}
C {symbols/nmos_3p3.sym} 730 -30 0 0 {name=M5
L=350n
W=3.5u
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
C {devices/gnd.sym} 750 60 0 0 {name=l12 lab=GND}
C {devices/vdd.sym} 750 -210 0 0 {name=l13 lab=VDD}
C {devices/isource.sym} 750 -160 0 0 {name=I0 value=20u}
C {devices/lab_pin.sym} 950 -90 2 0 {name=p8 sig_type=std_logic lab=VSIG}
C {devices/res_ac.sym} 860 -90 1 0 {name=R5
value=1m
ac=1e12
m=1}
