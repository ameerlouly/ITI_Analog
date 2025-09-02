v {xschem version=3.4.6 file_version=1.2}
G {}
K {}
V {}
S {}
E {}
P 4 1 170 -20 {}
N 30 90 30 100 {lab=#net1}
N 30 90 100 90 {lab=#net1}
N 100 80 100 90 {lab=#net1}
N 100 -10 100 20 {lab=VCM}
N 100 -130 100 -70 {lab=#net2}
N 30 -130 100 -130 {lab=#net2}
N 30 -130 30 -110 {lab=#net2}
N 100 10 220 10 {lab=VCM}
N 430 -150 450 -150 {lab=VBN}
N 430 -170 450 -170 {lab=AGND}
N 430 -190 450 -190 {lab=AVDD}
N 260 60 260 120 {lab=VBP}
N 200 50 200 90 {lab=VREF}
N 200 50 220 50 {lab=VREF}
N 260 -50 260 -0 {lab=VCTRLP}
C {devices/vcvs.sym} 30 -80 0 0 {name=E1 value=1}
C {devices/vcvs.sym} 30 130 0 0 {name=E2 value=1}
C {devices/vcvs.sym} 260 30 0 0 {name=E3 value=1
}
C {devices/gnd.sym} 30 -50 0 0 {name=l1 lab=GND}
C {devices/gnd.sym} -10 -60 0 0 {name=l2 lab=GND}
C {devices/gnd.sym} -10 150 0 0 {name=l3 lab=GND}
C {devices/gnd.sym} 30 160 0 0 {name=l4 lab=GND}
C {devices/res.sym} 100 -40 0 0 {name=R1
value=50k
footprint=1206
device=resistor
m=1}
C {devices/res.sym} 100 50 0 0 {name=R2
value=50k
footprint=1206
device=resistor
m=1}
C {devices/iopin.sym} -10 -100 2 0 {name=p1 lab=VOUT1}
C {devices/iopin.sym} -10 110 2 0 {name=p2 lab=VOUT2}
C {devices/iopin.sym} 200 90 2 0 {name=p3 lab=VREF}
C {devices/iopin.sym} 260 -50 3 0 {name=p4 lab=VCTRLP}
C {devices/iopin.sym} 260 120 1 0 {name=p5 lab=VBP}
C {devices/iopin.sym} 430 -190 2 0 {name=p6 lab=AVDD}
C {devices/iopin.sym} 430 -170 2 0 {name=p7 lab=AGND}
C {devices/iopin.sym} 430 -150 2 0 {name=p8 lab=VBN}
C {devices/noconn.sym} 450 -190 2 0 {name=l5}
C {devices/noconn.sym} 450 -170 2 0 {name=l6}
C {devices/noconn.sym} 450 -150 2 0 {name=l7}
C {devices/lab_pin.sym} 180 10 1 0 {name=p9 sig_type=std_logic lab=VCM}
