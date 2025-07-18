v {xschem version=3.4.6 file_version=1.2}
G {}
K {}
V {}
S {}
E {}
B 2 -500 -520 300 -120 {flags=graph
y1=2.2
y2=3.2
ypos1=0
ypos2=2
divy=5
subdivy=4
unity=1
x1=0
x2=4e-08
divx=5
subdivx=4
xlabmag=1.0
ylabmag=1.0
node="vout
vin"
color="12 4"
dataset=-1
unitx=1
logx=0
logy=0
mode=Line
hilight_wave=0
rainbow=1}
P 4 1 -260 -340 {}
N 40 -70 40 -50 {lab=VIN}
N 80 -70 120 -70 {lab=VIN}
N 120 -70 130 -70 {lab=VIN}
N 230 -70 290 -70 {lab=VOUT}
N 290 -70 290 -50 {lab=VOUT}
N 40 -70 80 -70 {lab=VIN}
N 190 -70 230 -70 {lab=VOUT}
N -37.5 -70 40 -70 {lab=VIN}
N -72.5 -67.5 -72.5 -50 {lab=VIN}
N -72.5 -70 -72.5 -67.5 {lab=VIN}
N -72.5 -70 -37.5 -70 {lab=VIN}
C {capa.sym} 290 -20 0 0 {name=C1
m=1
value=1p
footprint=1206
device="ceramic capacitor"}
C {res.sym} 160 -70 1 0 {name=R1
value=1k
footprint=1206
device=resistor
m=1}
C {vsource.sym} 40 -20 0 0 {name=V1 value="PULSE(0 1 5n 100p 100p 10n 20n)" savecurrent=false
}
C {gnd.sym} 40 10 0 0 {name=l1 lab=GND}
C {gnd.sym} 290 10 0 0 {name=l2 lab=GND}
C {lab_pin.sym} 40 -70 0 0 {name=p1 sig_type=std_logic lab=VIN}
C {lab_pin.sym} 290 -70 0 0 {name=p2 sig_type=std_logic lab=VOUT}
C {code_shown.sym} 345 -207.5 0 0 {name="Transient Simulation" only_toplevel=false value="
.control
tran 100p 40n
save all
meas tran t_rise TRIG v(vout) VAL=0.1 RISE=1 TARG v(vout) VAL=0.9 RISE=1
meas tran t_fall TRIG v(vout) VAL=0.9 FALL=1 TARG v(vout) VAL=0.1 FALL=1
write rc_ckt.raw
print t_rise t_fall >> tran.txt
.endc
"
}
C {code_shown.sym} 340 -615 0 0 {name="Parametric Trans Simulation" only_toplevel=false value="
.control

save all
let R_val = 1k
let R_stop = 5k
let R_step = 1k

while R_val le R_stop
alter R1 R_val
tran 100p 45n
meas tran t_rise TRIG v(vout) VAL=0.1 RISE=1 TARG v(vout) VAL=0.9 RISE=1
meas tran t_fall TRIG v(vout) VAL=0.9 RISE=0 TARG v(vout) VAL=0.1 RISE=0
print R_val t_rise t_fall >> tran_result.txt
write rc_ckt.raw
set appendwrite
let R_val = R_val + R_step
end

.endc
"
spice_ignore=true}
C {code_shown.sym} -970 -787.5 0 0 {name="Parametric AC Sim Code" only_toplevel=false value="
.control

save all

let R_val = 1k
let R_stop = 1meg
let R_mult = 10

while R_val le R_stop
alter R1 R_val
ac dec 10 1 10g

meas ac MAX_GAIN MAX vmag(vout) FROM=1 TO=10G
meas ac BW WHEN vmag(vout)=0.707 FALL=1

print MAX_GAIN BW >> ac_result.txt
write rc_ckt_2.raw
set appendwrite
let R_val = R_val * R_mult
end

.endc
"
spice_ignore=true}
C {code_shown.sym} -987.5 -330 0 0 {name="AC Sim Code" only_toplevel=false value="
.control
ac dec 10 1 10G
save all
meas ac MAX_GAIN MAX vmag(vout) from=1 to=10G
write rc_ckt_ac.raw
set appendwrite
print MAX_GAIN >> ac.txt
.endc
"
spice_ignore=true}
C {vsource.sym} -72.5 -20 0 0 {name=V2 value="DC 0 AC 1" savecurrent=false
spice_ignore=true}
C {gnd.sym} -72.5 10 0 0 {name=l3 lab=GND}
