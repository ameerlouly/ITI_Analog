v {xschem version=3.4.6 file_version=1.2}
G {}
K {}
V {}
S {
}
E {}
N 540 -600 540 -550 {lab=AVDD}
N 540 -600 1620 -600 {lab=AVDD}
N 1620 -600 1620 -550 {lab=AVDD}
N 800 -600 800 -550 {lab=AVDD}
N 1050 -600 1050 -550 {lab=AVDD}
N 800 -520 830 -520 {lab=AVDD}
N 830 -600 830 -520 {lab=AVDD}
N 1010 -520 1050 -520 {lab=AVDD}
N 1010 -600 1010 -520 {lab=AVDD}
N 1620 -520 1660 -520 {lab=AVDD}
N 1660 -600 1660 -520 {lab=AVDD}
N 1620 -600 1660 -600 {lab=AVDD}
N 540 -470 590 -470 {lab=VB1}
N 590 -520 590 -470 {lab=VB1}
N 510 -520 540 -520 {lab=AVDD}
N 510 -600 510 -520 {lab=AVDD}
N 510 -600 540 -600 {lab=AVDD}
N 1090 -520 1140 -520 {lab=VB1}
N 1520 -520 1580 -520 {lab=VB1}
N 1330 -600 1330 -550 {lab=AVDD}
N 1330 -520 1360 -520 {lab=AVDD}
N 1360 -600 1360 -520 {lab=AVDD}
N 800 30 800 80 {lab=AGND}
N 800 80 1620 80 {lab=AGND}
N 1620 30 1620 80 {lab=AGND}
N 1050 30 1050 80 {lab=AGND}
N 1090 0 1580 0 {lab=VBN}
N 840 0 890 0 {lab=VBN}
N 1050 -490 1050 -370 {lab=#net1}
N 1050 -310 1050 -170 {lab=VOUTN}
N 1050 -110 1050 -30 {lab=#net2}
N 1620 -490 1620 -370 {lab=#net3}
N 1620 -310 1620 -170 {lab=VOUTP}
N 1620 -110 1620 -30 {lab=#net4}
N 1150 -230 1190 -230 {lab=VINN}
N 1480 -230 1510 -230 {lab=VINP}
N 1510 -230 1520 -230 {lab=VINP}
N 1330 -490 1330 -460 {lab=#net5}
N 1230 -460 1330 -460 {lab=#net5}
N 1330 -460 1440 -460 {lab=#net5}
N 1440 -460 1440 -260 {lab=#net5}
N 1230 -460 1230 -260 {lab=#net5}
N 1230 -230 1260 -230 {lab=#net5}
N 1260 -310 1260 -230 {lab=#net5}
N 1230 -310 1260 -310 {lab=#net5}
N 1400 -230 1440 -230 {lab=#net5}
N 1400 -310 1400 -230 {lab=#net5}
N 1400 -310 1440 -310 {lab=#net5}
N 1230 -200 1230 -60 {lab=#net2}
N 1050 -60 1230 -60 {lab=#net2}
N 1440 -200 1440 -70 {lab=#net4}
N 1440 -70 1620 -70 {lab=#net4}
N 1620 -140 1680 -140 {lab=AGND}
N 1620 -340 1680 -340 {lab=AVDD}
N 980 -340 1050 -340 {lab=AVDD}
N 990 -140 1050 -140 {lab=AGND}
N 1010 0 1050 0 {lab=AGND}
N 1010 0 1010 80 {lab=AGND}
N 1620 0 1660 0 {lab=AGND}
N 1660 0 1660 80 {lab=AGND}
N 1620 80 1660 80 {lab=AGND}
N 770 0 800 0 {lab=AGND}
N 770 0 770 80 {lab=AGND}
N 770 80 800 80 {lab=AGND}
N 1090 -340 1120 -340 {lab=VCASCP}
N 1550 -340 1580 -340 {lab=VCASCP}
N 1090 -140 1120 -140 {lab=VCASCN}
N 1550 -140 1580 -140 {lab=VCASCN}
N 800 -60 860 -60 {lab=VBN}
N 860 -60 860 0 {lab=VBN}
N 1260 -520 1290 -520 {lab=VCTRLP}
N 800 -490 800 -30 {lab=VBN}
N 580 -520 760 -520 {lab=VB1}
N 540 -470 540 -420 {lab=VB1}
N 540 -340 590 -340 {lab=IBn}
N 590 -390 590 -340 {lab=IBn}
N 510 -390 540 -390 {lab=AVDD}
N 510 -470 510 -390 {lab=AVDD}
N 540 -360 540 -260 {lab=IBn}
N 580 -390 590 -390 {lab=IBn}
N 540 -490 540 -470 {lab=VB1}
N 590 -390 650 -390 {lab=IBn}
N 510 -520 510 -470 {lab=AVDD}
N 200 -220 200 -180 {lab=AGND}
N 200 -180 280 -180 {lab=AGND}
N 280 -220 280 -180 {lab=AGND}
N 200 -330 200 -280 {lab=VCASCN}
N 280 -330 280 -280 {lab=VCASCP}
C {symbols/pmos_3p3.sym} 1460 -230 0 1 {name=M2
L=500n
W=15u
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
C {symbols/pmos_3p3.sym} 1210 -230 0 0 {name=M1
L=500n
W=15u
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
C {symbols/pmos_3p3.sym} 1310 -520 0 0 {name=M9
L=1u
W=2*9.75u
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
C {symbols/pmos_3p3.sym} 1600 -340 0 0 {name=M6
L=700n
W=15u
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
C {symbols/pmos_3p3.sym} 1600 -520 0 0 {name=M11
L=1u
W=9.75u
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
C {symbols/nmos_3p3.sym} 1600 -140 0 0 {name=M4
L=500n
W=9u
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
C {symbols/nmos_3p3.sym} 1600 0 0 0 {name=M8
L=1u
W=5u
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
C {symbols/pmos_3p3.sym} 1070 -340 0 1 {name=M5
L=700n
W=15u
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
C {symbols/pmos_3p3.sym} 1070 -520 0 1 {name=M10
L=1u
W=9.75u
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
C {symbols/nmos_3p3.sym} 1070 -140 0 1 {name=M3
L=500n
W=9u
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
C {symbols/nmos_3p3.sym} 1070 0 0 1 {name=M7
L=1u
W=5u
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
C {symbols/pmos_3p3.sym} 780 -520 0 0 {name=M12
L=1u
W=2*9.75u
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
C {symbols/nmos_3p3.sym} 820 0 0 1 {name=M13
L=1u
W=5u
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
C {symbols/pmos_3p3.sym} 560 -520 0 1 {name=M14
L=1u
W=2*9.75u
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
C {devices/iopin.sym} 540 -260 1 0 {name=p5 lab=IBn}
C {devices/lab_pin.sym} 670 -520 1 0 {name=p6 sig_type=std_logic lab=VB1}
C {devices/lab_pin.sym} 1140 -520 1 0 {name=p7 sig_type=std_logic lab=VB1}
C {devices/lab_pin.sym} 1520 -520 1 0 {name=p8 sig_type=std_logic lab=VB1}
C {devices/lab_pin.sym} 1350 0 1 0 {name=p16 sig_type=std_logic lab=VBN}
C {devices/iopin.sym} 1190 -600 3 0 {name=p17 lab=AVDD}
C {devices/iopin.sym} 1210 80 1 0 {name=p18 lab=AGND}
C {devices/iopin.sym} 1150 -230 2 0 {name=p19 lab=VINN}
C {devices/iopin.sym} 1520 -230 0 0 {name=p20 lab=VINP}
C {devices/lab_pin.sym} 1120 -340 1 0 {name=p21 sig_type=std_logic lab=VCASCP}
C {devices/lab_pin.sym} 1120 -140 1 0 {name=p22 sig_type=std_logic lab=VCASCN}
C {devices/lab_pin.sym} 1550 -340 1 0 {name=p23 sig_type=std_logic lab=VCASCP}
C {devices/lab_pin.sym} 1550 -140 1 0 {name=p24 sig_type=std_logic lab=VCASCN}
C {devices/iopin.sym} 1050 -230 2 0 {name=p25 lab=VOUTN}
C {devices/iopin.sym} 1620 -230 0 0 {name=p26 lab=VOUTP}
C {devices/lab_pin.sym} 990 -140 0 0 {name=p27 sig_type=std_logic lab=AGND}
C {devices/lab_pin.sym} 1680 -140 2 0 {name=p28 sig_type=std_logic lab=AGND}
C {devices/lab_pin.sym} 980 -340 0 0 {name=p29 sig_type=std_logic lab=AVDD}
C {devices/lab_pin.sym} 1680 -340 2 0 {name=p30 sig_type=std_logic lab=AVDD}
C {devices/iopin.sym} 1260 -520 2 0 {name=p31 lab=VCTRLP}
C {devices/iopin.sym} 890 0 3 0 {name=p9 lab=VBN}
C {symbols/pmos_3p3.sym} 560 -390 0 1 {name=M15
L=700n
W=20u
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
C {devices/lab_pin.sym} 650 -390 1 0 {name=p1 sig_type=std_logic lab=IBn}
C {devices/vsource.sym} 200 -250 0 0 {name=V1 value=953.1m savecurrent=false}
C {devices/vsource.sym} 280 -250 0 0 {name=V2 value=1.4515 savecurrent=false}
C {devices/lab_pin.sym} 240 -180 3 0 {name=p2 sig_type=std_logic lab=AGND}
C {devices/lab_pin.sym} 200 -330 1 0 {name=p3 sig_type=std_logic lab=VCASCN}
C {devices/lab_pin.sym} 280 -330 1 0 {name=p4 sig_type=std_logic lab=VCASCP}
