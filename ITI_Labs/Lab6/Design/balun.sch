v {xschem version=3.0.0 file_version=1.2 }
G {}
K {}
V {}
S {}
E {}
T {Source Document:
https://designers-guide.org/analysis/diff.pdf} -210 90 0 0 0.2 0.2 {}
N 0 20 20 20 {
lab=0}
N 0 -20 20 -20 {
lab=d}
N 60 -50 60 -30 {
lab=#net1}
N -130 30 -130 40 {
lab=0}
N -130 40 -60 40 {
lab=0}
N -60 30 -60 40 {
lab=0}
N -130 -40 -130 -30 {
lab=d}
N -130 -40 -60 -40 {
lab=d}
N -60 -40 -60 -30 {
lab=d}
N 0 -40 0 -20 {
lab=d}
N -60 -40 0 -40 {
lab=d}
N -60 40 0 40 {
lab=0}
N 0 20 0 40 {
lab=0}
N 60 -120 60 -110 {
lab=p}
N 60 -120 100 -120 {
lab=p}
N 0 280 20 280 {
lab=0}
N 0 240 20 240 {
lab=d}
N -60 290 -60 300 {
lab=0}
N -60 220 -60 230 {
lab=d}
N 0 220 0 240 {
lab=d}
N -60 220 0 220 {
lab=d}
N -60 300 0 300 {
lab=0}
N 0 280 0 300 {
lab=0}
N 60 30 60 70 {
lab=c}
N 60 210 60 230 {
lab=#net2}
N 60 130 60 150 {
lab=#net3}
N 60 300 100 300 {
lab=n}
N 60 290 60 300 {
lab=n}
C {devices/lab_wire.sym} 0 40 0 0 {name=l2 sig_type=std_logic lab=0}
C {devices/lab_wire.sym} 0 300 0 0 {name=l1 sig_type=std_logic lab=0}
C {devices/lab_wire.sym} 60 60 0 0 {name=l3 sig_type=std_logic lab=c}
C {devices/lab_wire.sym} 100 -120 0 0 {name=l4 sig_type=std_logic lab=p}
C {devices/lab_wire.sym} 0 -40 0 0 {name=l5 sig_type=std_logic lab=d}
C {devices/lab_wire.sym} 0 220 0 0 {name=l6 sig_type=std_logic lab=d}
C {devices/lab_wire.sym} 100 300 0 0 {name=l7 sig_type=std_logic lab=n}
C {devices/vcvs.sym} 60 0 0 0 {name=E1 value=0.5}
C {devices/vsource.sym} 60 -80 0 0 {name=V1 value=0}
C {devices/cccs.sym} -60 0 0 0 {name=F1 vnam=V1 value=-0.5}
C {devices/res.sym} -130 0 0 0 {name=R1
value=1T
footprint=1206
device=resistor
m=1}
C {devices/vcvs.sym} 60 260 0 0 {name=E2 value=0.5}
C {devices/vsource.sym} 60 100 0 0 {name=V2 value=0}
C {devices/cccs.sym} -60 260 0 0 {name=F2 vnam=V2 value=-0.5}
C {devices/res.sym} 60 180 0 0 {name=R2
value=1u
footprint=1206
device=resistor
m=1}
C {devices/iopin.sym} 110 110 0 0 { name=p1 lab=p }
C {devices/iopin.sym} 110 130 0 0 { name=p2 lab=n }
C {devices/iopin.sym} 110 70 0 0 { name=p3 lab=d }
C {devices/iopin.sym} 110 90 0 0 { name=p4 lab=c }
