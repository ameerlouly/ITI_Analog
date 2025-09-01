v {xschem version=3.4.6 file_version=1.2}
G {}
K {}
V {}
S {}
E {}
N 0 70 0 90 {lab=#net1}
N 0 70 40 70 {lab=#net1}
N -60 10 -60 30 {lab=#net2}
N -60 10 40 10 {lab=#net2}
N 120 10 150 10 {lab=VINP}
N 120 70 150 70 {lab=VINN}
N 170 -10 180 -10 {lab=VINN}
N 170 100 180 100 {lab=VINP}
N 500 -0 500 20 {lab=VOUTN}
N 480 20 500 20 {lab=VOUTN}
N 480 80 500 80 {lab=VOUTP}
N 500 80 500 100 {lab=VOUTP}
N 500 20 550 20 {lab=VOUTN}
N 500 80 550 80 {lab=VOUTP}
N 630 20 700 20 {lab=VOUTCM}
N 630 80 700 80 {lab=VOUTDIFF}
N 850 0 900 0 {lab=VOUTN}
N 850 30 900 30 {lab=VOUTP}
N 850 90 900 90 {lab=VREF}
N 260 150 260 180 {lab=VBP}
N -250 10 -250 30 {lab=VREF}
C {OTA.sym} 330 40 0 0 {name=X1}
C {balun.sym} 80 40 0 0 {name=balun1}
C {devices/vdd.sym} -320 30 0 0 {name=l1 lab=VDD}
C {devices/vsource.sym} -320 60 0 0 {name=V1 value=2.5 savecurrent=false}
C {devices/gnd.sym} -320 90 0 0 {name=l2 lab=GND}
C {devices/gnd.sym} 260 240 0 0 {name=l3 lab=GND}
C {devices/isource.sym} 260 210 0 0 {name=I0 value=10u}
C {devices/vdd.sym} 260 -60 0 0 {name=l5 lab=VDD}
C {devices/vsource.sym} 0 120 0 0 {name=VICM value="0.5 AC 0" savecurrent=false}
C {devices/gnd.sym} 0 150 0 0 {name=l6 lab=GND}
C {devices/vsource.sym} -60 60 0 0 {name=VID value="DC 0 AC 1" savecurrent=false}
C {devices/gnd.sym} -60 90 0 0 {name=l7 lab=GND}
C {devices/code.sym} -200 270 0 0 {name=NGSPICE only_toplevel=false value="
.include "sim_script.sim"
"}
C {devices/code_shown.sym} -30 320 0 0 {name=MODELS only_toplevel=true
format="tcleval( @value )"
value="
.include $::180MCU_MODELS/design.ngspice
.lib $::180MCU_MODELS/sm141064.ngspice typical
"}
C {devices/capa.sym} 500 130 0 1 {name=C1
m=1
value=500f
footprint=1206
device="ceramic capacitor"}
C {devices/gnd.sym} 500 160 0 0 {name=l8 lab=GND}
C {devices/gnd.sym} 300 150 0 0 {name=l4 lab=GND}
C {devices/lab_pin.sym} 150 70 3 0 {name=p2 sig_type=std_logic lab=VINN}
C {devices/lab_pin.sym} 150 10 1 0 {name=p3 sig_type=std_logic lab=VINP}
C {devices/lab_pin.sym} 170 -10 1 0 {name=p4 sig_type=std_logic lab=VINN}
C {devices/lab_pin.sym} 170 100 3 0 {name=p5 sig_type=std_logic lab=VINP}
C {devices/capa.sym} 500 -30 2 0 {name=C2
m=1
value=500f
footprint=1206
device="ceramic capacitor"}
C {devices/gnd.sym} 500 -60 2 0 {name=l9 lab=GND}
C {balun.sym} 590 50 2 0 {name=balun2}
C {devices/lab_pin.sym} 700 20 1 0 {name=p1 sig_type=std_logic lab=VOUTCM}
C {devices/lab_pin.sym} 700 80 3 0 {name=p6 sig_type=std_logic lab=VOUTDIFF}
C {devices/lab_pin.sym} 530 20 1 0 {name=p7 sig_type=std_logic lab=VOUTN}
C {devices/lab_pin.sym} 530 80 3 0 {name=p8 sig_type=std_logic lab=VOUTP}
C {CMFB_Behav.sym} 1050 40 0 0 {name=x2}
C {devices/gnd.sym} 1020 140 0 0 {name=l10 lab=GND}
C {devices/lab_pin.sym} 260 170 0 0 {name=p9 sig_type=std_logic lab=VBP}
C {devices/lab_pin.sym} 1050 -60 2 0 {name=p10 sig_type=std_logic lab=VBP}
C {devices/lab_pin.sym} 360 140 3 0 {name=p11 sig_type=std_logic lab=VBN}
C {devices/lab_pin.sym} 1050 140 2 0 {name=p12 sig_type=std_logic lab=VBN}
C {devices/lab_pin.sym} 1150 10 2 0 {name=p13 sig_type=std_logic lab=VCTRLP}
C {devices/lab_pin.sym} 350 -40 1 0 {name=p14 sig_type=std_logic lab=VCTRLP}
C {devices/lab_pin.sym} 850 0 0 0 {name=p15 sig_type=std_logic lab=VOUTN}
C {devices/lab_pin.sym} 850 30 0 0 {name=p16 sig_type=std_logic lab=VOUTP}
C {devices/vsource.sym} -250 60 0 0 {name=V2 value=1.25 savecurrent=false}
C {devices/gnd.sym} -250 90 0 0 {name=l11 lab=GND}
C {devices/lab_pin.sym} -250 10 1 0 {name=p17 sig_type=std_logic lab=VREF}
C {devices/lab_pin.sym} 850 90 0 0 {name=p18 sig_type=std_logic lab=VREF}
C {devices/vdd.sym} 1020 -60 0 0 {name=l12 lab=VDD}
C {devices/noconn.sym} 700 20 2 0 {name=l13}
C {devices/noconn.sym} 700 80 2 0 {name=l14}
