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
N 100 -10 100 20 {lab=#net2}
N 100 -130 100 -70 {lab=#net3}
N 30 -130 100 -130 {lab=#net3}
N 30 -130 30 -110 {lab=#net3}
N 100 10 220 10 {lab=#net2}
N 260 -140 280 -140 {lab=xxx}
N 260 -160 280 -160 {lab=AGND}
N 260 -180 280 -180 {lab=AVDD}
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
C {devices/iopin.sym} 220 50 2 0 {name=p3 lab=VREF}
C {devices/iopin.sym} 260 0 3 0 {name=p4 lab=VCTRLP}
C {devices/iopin.sym} 260 60 1 0 {name=p5 lab=VBP}
C {devices/iopin.sym} 260 -180 2 0 {name=p6 lab=AVDD}
C {devices/iopin.sym} 260 -160 2 0 {name=p7 lab=AGND}
C {devices/iopin.sym} 260 -140 2 0 {name=p8 lab=VBN}
C {devices/noconn.sym} 280 -180 2 0 {name=l5}
C {devices/noconn.sym} 280 -160 2 0 {name=l6}
C {devices/noconn.sym} 280 -140 2 0 {name=l7}
