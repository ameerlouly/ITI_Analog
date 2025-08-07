v {xschem version=3.4.6 file_version=1.2}
G {}
K {}
V {}
S {}
E {}
N 860 -420 860 -370 {lab=VDD}
N 860 -420 1050 -420 {lab=VDD}
N 1050 -420 1050 -370 {lab=VDD}
N 900 -340 1010 -340 {lab=#net1}
N 1050 -310 1050 -250 {lab=Vout}
N 860 -310 860 -240 {lab=#net1}
N 940 -340 940 -300 {lab=#net1}
N 860 -300 940 -300 {lab=#net1}
N 1050 -340 1090 -340 {lab=VDD}
N 1090 -400 1090 -340 {lab=VDD}
N 1050 -400 1090 -400 {lab=VDD}
N 830 -340 860 -340 {lab=VDD}
N 830 -390 830 -340 {lab=VDD}
N 830 -390 860 -390 {lab=VDD}
N 860 -190 860 -160 {lab=#net2}
N 860 -160 1050 -160 {lab=#net2}
N 1050 -190 1050 -160 {lab=#net2}
N 950 -160 950 -120 {lab=#net2}
N 770 -90 910 -90 {lab=IBn}
N 730 -60 730 -30 {lab=GND}
N 730 -30 950 -30 {lab=GND}
N 950 -60 950 -30 {lab=GND}
N 730 -160 730 -120 {lab=IBn}
N 730 -140 800 -140 {lab=IBn}
N 800 -140 800 -90 {lab=IBn}
N 800 -220 820 -220 {lab=Vin+}
N 1090 -220 1120 -220 {lab=Vin-}
N 860 -220 1050 -220 {lab=GND}
N 710 -90 730 -90 {lab=GND}
N 710 -90 710 -40 {lab=GND}
N 710 -40 730 -40 {lab=GND}
N 950 -90 980 -90 {lab=GND}
N 980 -90 980 -50 {lab=GND}
N 950 -50 980 -50 {lab=GND}
C {devices/iopin.sym} 960 -420 3 0 {name=p10 lab=VDD}
C {devices/iopin.sym} 840 -30 1 0 {name=p11 lab=GND}
C {devices/iopin.sym} 730 -160 3 0 {name=p12 lab=IBn}
C {devices/iopin.sym} 1120 -220 0 0 {name=p13 lab=Vin-}
C {devices/iopin.sym} 800 -220 2 0 {name=p14 lab=Vin+}
C {devices/iopin.sym} 1050 -280 0 0 {name=p15 lab=Vout}
C {symbols/nmos_3p3.sym} 840 -220 0 0 {name=M1
L=450n
W=25u
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
C {symbols/pmos_3p3.sym} 880 -340 0 1 {name=M4
L=330n
W=2.62u
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
C {symbols/nmos_3p3.sym} 930 -90 0 0 {name=M5
L=2.2u
W=40u
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
C {symbols/nmos_3p3.sym} 1070 -220 0 1 {name=M2
L=450n
W=25u
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
C {symbols/pmos_3p3.sym} 1030 -340 0 0 {name=M3
L=330n
W=2.62u
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
C {symbols/nmos_3p3.sym} 750 -90 0 1 {name=M6
L=2.2u
W=10u
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
C {devices/lab_pin.sym} 960 -220 3 0 {name=p2 sig_type=std_logic lab=GND}
