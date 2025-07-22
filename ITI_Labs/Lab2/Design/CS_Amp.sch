v {xschem version=3.4.6 file_version=1.2}
G {}
K {}
V {}
S {}
E {}
B 2 -320 -600 480 -200 {flags=graph
y1=0.36
y2=1.1
ypos1=0
ypos2=2
divy=5
subdivy=8
unity=1
x1=0
x2=10
divx=5
subdivx=8
xlabmag=1.0
ylabmag=1.0
node=vout
color=4
dataset=-1
unitx=1
logx=1
logy=1
}
N -90 -10 -60 -10 {lab=#net1}
N 0 -10 50 -10 {lab=VIN}
N -130 20 -130 100 {lab=GND}
N -130 -60 -130 -40 {lab=#net1}
N -130 -140 -130 -120 {lab=VDD}
N -80 -50 -80 -10 {lab=#net1}
N -130 -50 -80 -50 {lab=#net1}
N -150 -10 -130 -10 {lab=GND}
N -150 -10 -150 30 {lab=GND}
N -150 30 -130 30 {lab=GND}
N 30 90 30 110 {lab=#net2}
N 30 -10 30 30 {lab=VIN}
N 90 20 90 100 {lab=GND}
N 90 -10 120 -10 {lab=GND}
N 120 -10 120 30 {lab=GND}
N 120 30 120 40 {lab=GND}
N 90 40 120 40 {lab=GND}
N 90 -60 90 -40 {lab=VOUT}
N 90 -140 90 -120 {lab=VDD}
C {symbols/nmos_3p3.sym} 70 -10 0 0 {name=M1
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
C {symbols/nmos_3p3.sym} -110 -10 0 1 {name=M2
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
C {devices/res_ac.sym} 30 60 0 0 {name=R1
value=1e12
ac=1m
m=1}
C {devices/res_ac.sym} -30 -10 1 0 {name=R2
value=1m
ac=1e12
m=1}
C {devices/gnd.sym} 90 100 0 0 {name=l1 lab=GND}
C {devices/gnd.sym} -130 100 0 0 {name=l2 lab=GND}
C {devices/code_shown.sym} -270 200 0 0 {name=MODELS only_toplevel=true
format="tcleval( @value )"
value="
.include $::180MCU_MODELS/design.ngspice
.lib $::180MCU_MODELS/sm141064.ngspice typical
"}
C {devices/code_shown.sym} 290 -130 0 0 {name="NGSPICE" only_toplevel=true
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
*print all > op_point.csv
ac dec 10 1 10g
remzerovec
write CS_AMP.raw
.endc
"}
C {devices/isource.sym} -130 -90 0 0 {name=I0 value=10u}
C {devices/vdd.sym} -130 -140 0 0 {name=l3 lab=VDD}
C {devices/vsource.sym} 30 140 0 0 {name=VIN value="AC 1" savecurrent=false}
C {devices/vsource.sym} -290 -20 0 0 {name=V2 value=2.5 savecurrent=false}
C {devices/vdd.sym} -290 -50 0 0 {name=l4 lab=VDD}
C {devices/gnd.sym} -290 10 0 0 {name=l5 lab=GND}
C {devices/gnd.sym} 30 170 0 0 {name=l6 lab=GND}
C {devices/res.sym} 90 -90 0 0 {name=R3
value=100k
footprint=1206
device=resistor
m=1}
C {devices/vdd.sym} 90 -140 0 0 {name=l7 lab=VDD}
C {devices/lab_pin.sym} 90 -50 0 1 {name=p1 sig_type=std_logic lab=VOUT
}
C {devices/lab_pin.sym} 30 -10 3 1 {name=p2 sig_type=std_logic lab=VIN
}
C {devices/ngspice_get_value.sym} 200 -50 0 0 {name=r4 node=i(@m.xm1.m0[id])
descr="ID"}
C {devices/ngspice_get_value.sym} 200 -20 0 0 {name=r5 node=v(@m.xm1.m0[vgs])
descr="VGS"}
C {devices/ngspice_get_value.sym} 200 45 0 0 {name=r6 node=@m.xm1.m0[gds]
descr="gds"}
C {devices/ngspice_get_value.sym} 200 75 0 0 {name=r7 node=@m.xm1.m0[gm]
descr="gm"}
C {devices/ngspice_get_value.sym} 200 15 0 0 {name=r8 node=V(@m.xm1.m0[vds])
descr="VDS"}
