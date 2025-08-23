v {xschem version=3.4.6 file_version=1.2}
G {}
K {}
V {}
S {}
E {}
N 1280 -90 1280 -40 {lab=GND}
N 1090 -40 1280 -40 {lab=GND}
N 1090 -90 1090 -40 {lab=GND}
N 1130 -120 1240 -120 {lab=#net1}
N 1090 -210 1090 -150 {lab=#net1}
N 1280 -220 1280 -150 {lab=V1}
N 1050 -120 1090 -120 {lab=GND}
N 1050 -120 1050 -60 {lab=GND}
N 1050 -60 1090 -60 {lab=GND}
N 1280 -120 1310 -120 {lab=GND}
N 1310 -120 1310 -70 {lab=GND}
N 1280 -70 1310 -70 {lab=GND}
N 1280 -300 1280 -270 {lab=V2}
N 1090 -300 1280 -300 {lab=V2}
N 1090 -300 1090 -270 {lab=V2}
N 1190 -340 1190 -300 {lab=V2}
N 1320 -240 1340 -240 {lab=Vin+}
N 1020 -240 1050 -240 {lab=Vin-}
N 1090 -240 1120 -240 {lab=V2}
N 1090 -180 1160 -180 {lab=#net1}
N 1160 -180 1160 -120 {lab=#net1}
N 1260 -240 1280 -240 {lab=V2}
N 1260 -280 1260 -240 {lab=V2}
N 1260 -280 1280 -280 {lab=V2}
N 1120 -270 1120 -240 {lab=V2}
N 1090 -270 1120 -270 {lab=V2}
N 890 -360 890 -300 {lab=IBn}
N 930 -390 1150 -390 {lab=IBn}
N 1190 -360 1190 -340 {lab=V2}
N 890 -470 890 -420 {lab=VDD}
N 890 -470 1680 -470 {lab=VDD}
N 1680 -470 1680 -410 {lab=VDD}
N 1190 -470 1190 -420 {lab=VDD}
N 1340 -510 1340 -470 {lab=VDD}
N 1280 -180 1640 -180 {lab=V1}
N 1680 -150 1680 -60 {lab=GND}
N 1280 -40 1680 -40 {lab=GND}
N 1680 -60 1680 -40 {lab=GND}
N 1680 -350 1680 -210 {lab=Vout}
N 1680 -180 1740 -180 {lab=GND}
N 1740 -180 1740 -110 {lab=GND}
N 1680 -110 1740 -110 {lab=GND}
N 1680 -280 1810 -280 {lab=Vout}
N 1680 -380 1720 -380 {lab=VDD}
N 1720 -450 1720 -380 {lab=VDD}
N 1680 -450 1720 -450 {lab=VDD}
N 1370 -380 1640 -380 {lab=IBn}
N 1370 -380 1370 -350 {lab=IBn}
N 1120 -350 1370 -350 {lab=IBn}
N 1120 -390 1120 -350 {lab=IBn}
N 970 -390 970 -340 {lab=IBn}
N 890 -340 970 -340 {lab=IBn}
N 1190 -390 1230 -390 {lab=VDD}
N 1230 -470 1230 -390 {lab=VDD}
N 860 -390 890 -390 {lab=VDD}
N 860 -470 860 -390 {lab=VDD}
N 860 -470 890 -470 {lab=VDD}
N 1620 -240 1680 -240 {lab=Vout}
N 1520 -240 1560 -240 {lab=#net2}
N 1440 -240 1460 -240 {lab=V1}
N 1440 -240 1440 -180 {lab=V1}
C {devices/iopin.sym} 1340 -510 3 0 {name=p10 lab=VDD}
C {devices/iopin.sym} 1190 -40 1 0 {name=p11 lab=GND}
C {devices/iopin.sym} 890 -300 1 0 {name=p12 lab=IBn}
C {devices/iopin.sym} 1020 -240 2 0 {name=p13 lab=Vin-}
C {devices/iopin.sym} 1340 -240 0 0 {name=p14 lab=Vin+}
C {devices/iopin.sym} 1810 -280 2 1 {name=p15 lab=Vout}
C {devices/lab_pin.sym} 1280 -180 2 0 {name=p1 sig_type=std_logic lab=V1}
C {symbols/pmos_3p3.sym} 1300 -240 0 1 {name=M2
L=430n
W=10.3u
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
C {symbols/nmos_3p3.sym} 1110 -120 0 1 {name=M3
L=460n
W=1u
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
C {devices/lab_pin.sym} 1190 -310 2 0 {name=p3 sig_type=std_logic lab=V2}
C {symbols/nmos_3p3.sym} 1260 -120 0 0 {name=M4
L=460n
W=1u
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
C {symbols/pmos_3p3.sym} 1070 -240 0 0 {name=M1
L=430n
W=10.3u
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
C {symbols/pmos_3p3.sym} 1170 -390 0 0 {name=M5
L=600n
W=17.3u
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
C {symbols/nmos_3p3.sym} 1660 -180 0 0 {name=M6
L=390n
W=6.26u
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
C {symbols/pmos_3p3.sym} 910 -390 0 1 {name=M8
L=600n
W=14.5u
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
C {devices/res.sym} 1490 -240 3 0 {name=R1
value=13k
footprint=1206
device=resistor
m=1}
C {devices/capa.sym} 1590 -240 3 0 {name=C1
m=1
value=2.3p
footprint=1206
device="ceramic capacitor"}
C {symbols/pmos_3p3.sym} 1660 -380 0 0 {name=M7
L=600n
W=4*17.3u
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
