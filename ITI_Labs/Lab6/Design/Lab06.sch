v {xschem version=3.4.6 file_version=1.2}
G {}
K {}
V {}
S {}
E {}
N 270 -180 270 -150 {lab=Vout-}
N 480 -180 480 -150 {lab=Vout+}
N 270 -210 480 -210 {lab=VDD}
N 270 -90 270 -60 {lab=GND}
N 270 -60 480 -60 {lab=GND}
N 480 -90 480 -60 {lab=GND}
N 270 -280 270 -240 {lab=#net1}
N 270 -280 480 -280 {lab=#net1}
N 480 -280 480 -240 {lab=#net1}
N 380 -330 380 -280 {lab=#net1}
N 160 -360 340 -360 {lab=IBn}
N 380 -390 380 -360 {lab=VDD}
N 120 -390 120 -360 {lab=VDD}
N 180 -360 180 -310 {lab=IBn}
N 120 -310 180 -310 {lab=IBn}
N 120 -330 120 -290 {lab=IBn}
N 120 -420 120 -390 {lab=VDD}
N 120 -420 380 -420 {lab=VDD}
N 380 -420 380 -390 {lab=VDD}
N 380 -440 380 -420 {lab=VDD}
N 180 -210 230 -210 {lab=Vin+}
N 250 -170 270 -170 {lab=Vout-}
N 480 -170 530 -170 {lab=Vout+}
N 520 -210 560 -210 {lab=Vin-}
C {devices/res.sym} 270 -120 0 0 {name=R1
value=30k
footprint=1206
device=resistor
m=1}
C {devices/iopin.sym} 380 -440 0 0 {name=p1 lab=VDD}
C {devices/lab_pin.sym} 300 -420 1 0 {name=p2 sig_type=std_logic lab=VDD}
C {devices/lab_pin.sym} 380 -210 3 0 {name=p3 sig_type=std_logic lab=VDD}
C {devices/iopin.sym} 120 -290 1 0 {name=p4 lab=IBn}
C {devices/iopin.sym} 180 -210 2 0 {name=p5 lab=Vin+}
C {devices/iopin.sym} 560 -210 0 0 {name=p6 lab=Vin-}
C {devices/iopin.sym} 250 -170 2 0 {name=p7 lab=Vout-}
C {devices/iopin.sym} 530 -170 0 0 {name=p8 lab=Vout+}
C {devices/iopin.sym} 380 -60 1 0 {name=p9 lab=GND}
C {symbols/pmos_3p3.sym} 250 -210 0 0 {name=M1
L=350n
W=31u
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
C {symbols/pmos_3p3.sym} 360 -360 0 0 {name=M2
L=517.8n
W=18.13u
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
C {symbols/pmos_3p3.sym} 140 -360 0 1 {name=M4
L=517.8n
W=18.13u
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
C {symbols/pmos_3p3.sym} 500 -210 0 1 {name=M3
L=350n
W=31u
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
C {devices/res.sym} 480 -120 0 0 {name=R2
value=30k
footprint=1206
device=resistor
m=1}
