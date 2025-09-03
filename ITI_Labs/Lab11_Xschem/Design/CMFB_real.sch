v {xschem version=3.4.6 file_version=1.2}
G {}
K {}
V {}
S {}
E {}
N -490 -170 -460 -170 {lab=VBP}
N -490 0 -460 0 {lab=VOUT1}
N 210 150 210 220 {lab=AGND}
N -420 220 210 220 {lab=AGND}
N -420 30 -420 220 {lab=AGND}
N -160 30 -160 220 {lab=AGND}
N -120 0 -80 -0 {lab=VOUT2}
N -160 -140 -160 -30 {lab=#net1}
N -420 -140 -420 -30 {lab=#net2}
N -420 -0 -370 -0 {lab=#net2}
N -370 -60 -370 -0 {lab=#net2}
N -420 -60 -370 -60 {lab=#net2}
N -210 -0 -160 0 {lab=#net1}
N -210 -60 -210 -0 {lab=#net1}
N -210 -60 -160 -60 {lab=#net1}
N -420 -260 -420 -200 {lab=AVDD}
N -420 -260 450 -260 {lab=AVDD}
N -160 -260 -160 -200 {lab=AVDD}
N 90 -260 90 -200 {lab=AVDD}
N 360 -260 360 -200 {lab=AVDD}
N -420 -170 -350 -170 {lab=AVDD}
N -350 -260 -350 -170 {lab=AVDD}
N -220 -170 -160 -170 {lab=AVDD}
N -220 -260 -220 -170 {lab=AVDD}
N 90 -170 160 -170 {lab=AVDD}
N 160 -260 160 -170 {lab=AVDD}
N 300 -170 360 -170 {lab=AVDD}
N 300 -260 300 -170 {lab=AVDD}
N 90 -140 90 -60 {lab=VCTRL2}
N 20 -170 50 -170 {lab=VCTRL2}
N 20 -170 20 -100 {lab=VCTRL2}
N 20 -100 90 -100 {lab=VCTRL2}
N 360 -140 360 -60 {lab=VCTRLP}
N 360 -100 430 -100 {lab=VCTRLP}
N 430 -170 430 -100 {lab=VCTRLP}
N 400 -170 430 -170 {lab=VCTRLP}
N 90 -30 360 -30 {lab=AGND}
N 210 120 260 120 {lab=AGND}
N 260 120 260 220 {lab=AGND}
N 210 220 260 220 {lab=AGND}
N 260 220 300 220 {lab=AGND}
N 140 120 170 120 {lab=VBN}
N 10 -30 50 -30 {lab=VCM}
N 210 60 210 90 {lab=#net3}
N 100 60 210 60 {lab=#net3}
N 90 -10 90 60 {lab=#net3}
N 90 60 100 60 {lab=#net3}
N 210 60 360 60 {lab=#net3}
N 360 0 360 60 {lab=#net3}
N 430 -100 510 -100 {lab=VCTRLP}
N -420 -90 -380 -90 {lab=#net2}
N -320 -90 -280 -90 {lab=VCM}
N -220 -90 -160 -90 {lab=#net1}
N -300 -90 -300 -40 {lab=VCM}
N -120 -170 -90 -170 {lab=VBP}
N 400 -30 450 -30 {lab=#net4}
N 710 -90 710 20 {lab=#net4}
N 710 -190 710 -150 {lab=AVDD}
N 690 -120 710 -120 {lab=AVDD}
N 690 -190 690 -120 {lab=AVDD}
N 690 -190 780 -190 {lab=AVDD}
N 670 50 710 50 {lab=#net4}
N 710 120 710 190 {lab=AGND}
N 750 -120 780 -120 {lab=VBP}
N 710 80 710 120 {lab=AGND}
N 750 50 760 50 {lab=VREF}
N 760 50 790 50 {lab=VREF}
N 710 190 780 190 {lab=AGND}
N 670 -10 670 50 {lab=#net4}
N 670 -10 710 -10 {lab=#net4}
N 450 -30 710 -30 {lab=#net4}
C {devices/iopin.sym} -490 0 2 0 {name=p1 lab=VOUT1}
C {devices/iopin.sym} -80 0 0 0 {name=p2 lab=VOUT2}
C {devices/iopin.sym} 510 -100 0 0 {name=p4 lab=VCTRLP}
C {devices/iopin.sym} -490 -170 2 0 {name=p5 lab=VBP}
C {devices/iopin.sym} 450 -260 0 0 {name=p6 lab=AVDD}
C {devices/iopin.sym} 300 220 0 0 {name=p7 lab=AGND}
C {devices/iopin.sym} 140 120 2 0 {name=p8 lab=VBN}
C {symbols/nmos_3p3.sym} 70 -30 0 0 {name=M4
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
C {symbols/nmos_3p3.sym} 380 -30 0 1 {name=M5
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
C {symbols/pmos_3p3.sym} 70 -170 0 0 {name=M6
L=1u
W=6u
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
C {symbols/pmos_3p3.sym} 380 -170 0 1 {name=M7
L=1u
W=6u
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
C {devices/res.sym} -350 -90 3 0 {name=R1
value=50k
footprint=1206
device=resistor
m=1
}
C {devices/res.sym} -250 -90 3 0 {name=R2
value=50k
footprint=1206
device=resistor
m=1
}
C {devices/lab_pin.sym} -300 -40 0 0 {name=p9 sig_type=std_logic lab=VCM}
C {devices/lab_pin.sym} 10 -30 0 0 {name=p10 sig_type=std_logic lab=VCM}
C {devices/lab_pin.sym} -90 -170 2 0 {name=p11 sig_type=std_logic lab=VBP}
C {symbols/pmos_3p3.sym} -140 -170 0 1 {name=M10
L=1u
W=39u/5
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
C {symbols/pmos_3p3.sym} -440 -170 0 0 {name=M1
L=1u
W=39u/5
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
C {symbols/nmos_3p3.sym} 190 120 0 0 {name=M13
L=1u
W=6.37u/2
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
C {devices/lab_pin.sym} 220 -30 1 0 {name=p12 sig_type=std_logic lab=AGND}
C {devices/lab_pin.sym} 780 190 2 0 {name=p13 sig_type=std_logic lab=AGND}
C {devices/lab_pin.sym} 780 -190 2 0 {name=p14 sig_type=std_logic lab=AVDD}
C {devices/lab_pin.sym} 780 -120 2 0 {name=p15 sig_type=std_logic lab=VBP}
C {devices/lab_pin.sym} 20 -100 0 0 {name=p17 sig_type=std_logic lab=VCTRL2}
C {symbols/pmos_3p3.sym} -140 0 0 1 {name=M2
L=1u
W=39u/5
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
C {symbols/pmos_3p3.sym} -440 0 0 0 {name=M3
L=1u
W=39u/5
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
C {symbols/pmos_3p3.sym} 730 -120 0 1 {name=M8
L=1u
W=39u/5
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
C {symbols/pmos_3p3.sym} 730 50 0 1 {name=M9
L=1u
W=39u/5
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
C {devices/iopin.sym} 790 50 0 0 {name=p18 lab=VREF}
