v {xschem version=3.4.6 file_version=1.2}
G {}
K {}
V {}
S {}
E {}
N 0 20 0 40 {lab=GND}
N -0 -70 0 -40 {lab=#net1}
N 0 -70 20 -70 {lab=#net1}
N 80 -70 110 -70 {lab=VSIG}
N 370 -40 370 20 {lab=GND}
N 370 -70 400 -70 {lab=GND}
N 400 -70 400 -30 {lab=GND}
N 370 -30 400 -30 {lab=GND}
N 370 -250 370 -230 {lab=VDD}
N 370 -110 470 -110 {lab=#net2}
N 470 -110 470 -90 {lab=#net2}
N -110 20 -110 40 {lab=GND}
N -110 -80 -110 -40 {lab=VDD}
N 190 -70 330 -70 {lab=VSIG}
N 370 -110 370 -100 {lab=#net2}
N 370 -170 370 -110 {lab=#net2}
N 320 -160 370 -160 {lab=#net2}
N 230 -160 260 -160 {lab=#net3}
N 230 -160 230 -140 {lab=#net3}
N 230 -80 230 -70 {lab=VSIG}
N 850 -140 850 -100 {lab=#net4}
N 850 -40 850 20 {lab=GND}
N 550 -70 810 -70 {lab=VSIG}
N 850 -340 850 -320 {lab=VDD}
N 850 -260 850 -200 {lab=#net5}
N 760 -170 810 -170 {lab=VB}
N 720 -240 850 -240 {lab=#net5}
N 590 -240 660 -240 {lab=#net6}
N 590 -240 590 -150 {lab=#net6}
N 590 -90 590 -70 {lab=VSIG}
N 850 -170 900 -170 {lab=GND}
N 900 -170 900 -10 {lab=GND}
N 850 -10 900 -10 {lab=GND}
N 850 -70 900 -70 {lab=GND}
N 850 -220 950 -220 {lab=#net5}
N 950 -220 950 -200 {lab=#net5}
N 1080 -30 1080 10 {lab=GND}
N 1080 -140 1080 -90 {lab=#net7}
N 1070 -170 1130 -170 {lab=GND}
N 1130 -170 1130 -10 {lab=GND}
N 1080 -10 1130 -10 {lab=GND}
N 1080 -60 1130 -60 {lab=GND}
N 1080 -260 1080 -200 {lab=VB}
N 1080 -340 1080 -320 {lab=VDD}
N 1000 -230 1080 -230 {lab=VB}
N 1000 -230 1000 -60 {lab=VB}
N 1000 -60 1040 -60 {lab=VB}
N 1000 -170 1040 -170 {lab=VB}
C {devices/vsource.sym} 0 -10 0 0 {name=V1 value="AC 1" savecurrent=false}
C {devices/gnd.sym} 0 40 0 0 {name=l1 lab=GND}
C {devices/lab_pin.sym} 110 -70 1 0 {name=p1 sig_type=std_logic lab=VSIG}
C {devices/res_ac.sym} 50 -70 1 0 {name=R1
value=1e12
ac=1m
m=1}
C {symbols/nmos_3p3.sym} 350 -70 0 0 {name=M0
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
C {devices/code_shown.sym} 120 110 0 0 {name=MODELS only_toplevel=true
format="tcleval( @value )"
value="
.include $::180MCU_MODELS/design.ngspice
.lib $::180MCU_MODELS/sm141064.ngspice typical
"}
C {devices/code_shown.sym} 1180 -330 0 0 {name="NGSPICE" only_toplevel=true
value="
.control
save all
+ @m.xm0.m0[id]
+ @m.xm0.m0[vgs]
+ @m.xm0.m0[vds]
+ @m.xm0.m0[vth]
+ @m.xm0.m0[vdss]
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
+ @m.xm1.m0[vdss]
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
+ @m.xm2.m0[vdss]
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
+ @m.xm3.m0[vdss]
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
+ @m.xm4.m0[vdss]
+ @m.xm4.m0[gm]
+ @m.xm4.m0[gds]
+ @m.xm4.m0[gmbs]
+ @m.xm4.m0[cdb]
+ @m.xm4.m0[cgd]
+ @m.xm4.m0[cgs]
+ @m.xm4.m0[csb]

op
print all > op_point.csv
remzerovec
set appendwrite
write Lab03.raw
.endc
"}
C {devices/gnd.sym} 370 20 0 0 {name=l2 lab=GND}
C {devices/vdd.sym} 370 -250 0 0 {name=l3 lab=VDD}
C {devices/isource.sym} 370 -200 0 0 {name=I0 value=20u}
C {devices/capa.sym} 470 -60 0 0 {name=C1
m=1
value=1p
footprint=1206
device="ceramic capacitor"}
C {devices/gnd.sym} 470 -30 0 0 {name=l4 lab=GND}
C {devices/vsource.sym} -110 -10 0 0 {name=V2 value=1.8 savecurrent=false}
C {devices/gnd.sym} -110 40 0 0 {name=l5 lab=GND}
C {devices/vdd.sym} -110 -80 0 0 {name=l6 lab=VDD}
C {devices/lab_pin.sym} 190 -70 1 0 {name=p2 sig_type=std_logic lab=VSIG}
C {devices/vsource.sym} 230 -110 0 0 {name=V3 value="DC 0.0939" savecurrent=false}
C {devices/res_ac.sym} 290 -160 1 0 {name=R2
value=1m
ac=1e12
m=1}
C {symbols/nmos_3p3.sym} 830 -70 0 0 {name=M1
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
C {symbols/nmos_3p3.sym} 830 -170 0 0 {name=M2
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
C {devices/gnd.sym} 850 20 0 0 {name=l7 lab=GND}
C {devices/lab_pin.sym} 550 -70 1 0 {name=p3 sig_type=std_logic lab=VSIG}
C {devices/vsource.sym} 590 -120 0 0 {name=V4 value="DC 0.0875" savecurrent=false}
C {devices/vdd.sym} 850 -340 0 0 {name=l8 lab=VDD}
C {devices/isource.sym} 850 -290 0 0 {name=I1 value=20u}
C {devices/lab_pin.sym} 760 -170 0 0 {name=p4 sig_type=std_logic lab=VB}
C {devices/res_ac.sym} 690 -240 1 0 {name=R3
value=1m
ac=1e12
m=1}
C {devices/capa.sym} 950 -170 0 0 {name=C2
m=1
value=1p
footprint=1206
device="ceramic capacitor"}
C {devices/gnd.sym} 950 -140 0 0 {name=l9 lab=GND}
C {symbols/nmos_3p3.sym} 1060 -170 0 0 {name=M4
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
C {devices/vdd.sym} 1080 -340 0 0 {name=l10 lab=VDD}
C {devices/isource.sym} 1080 -290 0 0 {name=I2 value=20u}
C {symbols/nmos_3p3.sym} 1060 -60 0 0 {name=M3
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
C {devices/gnd.sym} 1080 10 0 0 {name=l11 lab=GND}
C {devices/lab_pin.sym} 1000 -230 0 0 {name=p5 sig_type=std_logic lab=VB}
