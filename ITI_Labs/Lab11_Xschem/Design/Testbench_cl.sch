v {xschem version=3.4.6 file_version=1.2}
G {}
K {}
V {}
S {}
E {}
B 2 1080 -610 1880 -210 {flags=graph
y1=-75
y2=66
ypos1=0
ypos2=2
divy=5
subdivy=1
unity=1
x1=9.2664193e-07
x2=1.8326116e-06
divx=5
subdivx=8
xlabmag=1.0
ylabmag=1.0
node="tian_signal_1 db20()
tian_signal_2 db20()"
color="4 5"
unitx=1
logx=1
logy=0
rainbow=0
}
B 2 1080 -200 1880 200 {flags=graph
y1=-180
y2=180
ypos1=0
ypos2=2
divy=5
subdivy=1
unity=1
x1=9.2664193e-07
x2=1.8326116e-06
divx=5
subdivx=8
xlabmag=1.0
ylabmag=1.0
unitx=1
logx=1
logy=0
rainbow=0
color="4 5"
node="ph(tian_signal_1) cph()
ph(tian_signal_2) cph()"}
B 2 -1760 -640 -960 -240 {flags=graph
y1=-0.3
y2=0.3
ypos1=0
ypos2=2
divy=5
subdivy=1
unity=1
x1=9.2664193e-07
x2=1.8326116e-06
divx=5
subdivx=4
xlabmag=1.0
ylabmag=1.0
unitx=1
logx=0
logy=0
rainbow=0
color="4 9"
node="VINDIFF
VOUTDIFF"}
B 2 -1760 -1620 -960 -1220 {flags=graph
y1=0.44
y2=0.95
ypos1=0
ypos2=2
divy=5
subdivy=1
unity=1
x1=9.2664193e-07
x2=1.8326116e-06
divx=5
subdivx=4
xlabmag=1.0
ylabmag=1.0
unitx=1
logx=0
logy=0
rainbow=0
color="4 5 6 7 8"
node="VINP
VINN
VOUTP
VOUTN
VOUTCM"}
B 2 -950 -1620 -150 -1220 {flags=graph
y1=0.72
y2=0.95
ypos1=0
ypos2=2
divy=5
subdivy=1
unity=1
x1=9.2664193e-07
x2=1.8326116e-06
divx=5
subdivx=4
xlabmag=1.0
ylabmag=1.0
unitx=1
logx=0
logy=0
rainbow=0
color="4 5 9"
node="VOUTP
VOUTN
VOUTCM"}
B 2 -950 -1210 -150 -810 {flags=graph
y1=0.44
y2=0.55
ypos1=0
ypos2=2
divy=5
subdivy=1
unity=1
x1=9.2664193e-07
x2=1.8326116e-06
divx=5
subdivx=4
xlabmag=1.0
ylabmag=1.0
unitx=1
logx=0
logy=0
rainbow=0
color="4 5"
node="VINP
VINN"}
B 2 -2610 -1620 -1810 -1220 {flags=graph
y1=-0.3
y2=0.3
ypos1=0
ypos2=2
divy=5
subdivy=1
unity=1
x1=9.2664193e-07
x2=1.8326116e-06
divx=5
subdivx=4
xlabmag=1.0
ylabmag=1.0
unitx=1
logx=0
logy=0
rainbow=0
color="4 9"
node="VINDIFF
VOUTDIFF"}
N -420 10 -420 30 {lab=VINCM}
N -420 10 -380 10 {lab=VINCM}
N -300 -50 -270 -50 {lab=VINP}
N -300 10 -270 10 {lab=VINN}
N -110 -70 -100 -70 {lab=VINN2}
N -110 40 -100 40 {lab=VINP2}
N 920 -60 920 -40 {lab=VOUTP}
N 930 20 930 40 {lab=VOUTN}
N 920 -40 1010 -40 {lab=VOUTP}
N 350 -40 420 -40 {lab=VOUTDIFF}
N 350 20 420 20 {lab=VOUTCM}
N 520 -330 570 -330 {lab=VOUTN}
N 520 -300 570 -300 {lab=VOUTP}
N 520 -240 570 -240 {lab=VREF}
N -20 90 -20 120 {lab=VBP}
N -320 -390 -320 -370 {lab=VREF}
N 420 -40 420 -30 {lab=VOUTDIFF}
N 420 -30 440 -30 {lab=VOUTDIFF}
N 420 10 420 20 {lab=VOUTCM}
N 420 10 440 10 {lab=VOUTCM}
N 730 -30 770 -30 {lab=#net1}
N 770 -40 770 -30 {lab=#net1}
N 770 -40 790 -40 {lab=#net1}
N 730 10 770 10 {lab=#net2}
N 770 10 770 20 {lab=#net2}
N 770 20 790 20 {lab=#net2}
N 870 20 930 20 {lab=VOUTN}
N 870 -40 920 -40 {lab=VOUTP}
N 200 -40 270 -40 {lab=#net3}
N 200 20 270 20 {lab=#net4}
N 930 20 1010 20 {lab=VOUTN}
N -230 -70 -190 -70 {lab=VINN}
N -230 40 -190 40 {lab=VINP}
N -130 40 -110 40 {lab=VINP2}
N -130 -70 -110 -70 {lab=VINN2}
N -110 -210 -110 -70 {lab=VINN2}
N -80 -210 -30 -210 {lab=VINN2}
N -80 -290 -30 -290 {lab=VINN2}
N -80 -290 -80 -210 {lab=VINN2}
N 30 -290 140 -290 {lab=VOUTP}
N 140 -290 140 -210 {lab=VOUTP}
N 140 -210 200 -210 {lab=VOUTP}
N -80 240 -30 240 {lab=VINP2}
N -80 320 -30 320 {lab=VINP2}
N -80 240 -80 320 {lab=VINP2}
N 30 320 140 320 {lab=VOUTN}
N 140 240 140 320 {lab=VOUTN}
N 140 240 200 240 {lab=VOUTN}
N -110 40 -110 240 {lab=VINP2}
N -540 -50 -380 -50 {lab=VINDIFF}
N -710 -50 -710 -40 {lab=VINDIFF}
N -540 -50 -540 -30 {lab=VINDIFF}
N -470 10 -470 20 {lab=VINCM}
N -470 10 -420 10 {lab=VINCM}
N -840 -50 -710 -50 {lab=VINDIFF}
N -840 -50 -840 -40 {lab=VINDIFF}
N -110 -210 -80 -210 {lab=VINN2}
N 30 -210 140 -210 {lab=VOUTP}
N -110 240 -80 240 {lab=VINP2}
N 30 240 140 240 {lab=VOUTN}
N -710 -50 -540 -50 {lab=VINDIFF}
C {devices/code.sym} -159.5657147582557 -640 0 0 {name=NGSPICE only_toplevel=false value="
.include "sim_script.sim"
"
}
C {devices/code_shown.sym} -10 -630 0 0 {name=MODELS only_toplevel=true
format="tcleval( @value )"
value="
.include $::180MCU_MODELS/design.ngspice
.lib $::180MCU_MODELS/sm141064.ngspice typical
"}
C {devices/code_shown.sym} 0 -530 0 0 {name=STB only_toplevel=true
format="tcleval( @value )"
value="
.include ../Design/DualProbe/Dstb.spi
"
spice_ignore=true}
C {OTA.sym} 50 -20 0 0 {name=X1}
C {balun.sym} -340 -20 0 0 {name=balun1}
C {devices/vdd.sym} -390 -370 0 0 {name=l1 lab=VDD}
C {devices/vsource.sym} -390 -340 0 0 {name=V1 value=2.5 savecurrent=false}
C {devices/gnd.sym} -390 -310 0 0 {name=l2 lab=GND}
C {devices/gnd.sym} -20 180 0 0 {name=l3 lab=GND}
C {devices/isource.sym} -20 150 0 0 {name=I0 value=10u}
C {devices/vdd.sym} -20 -120 0 0 {name=l5 lab=VDD}
C {devices/vsource.sym} -710 -10 0 0 {name=VID2 value="SIN(0 150m 100K)" savecurrent=false
spice_ignore=true}
C {devices/gnd.sym} -420 90 0 0 {name=l6 lab=GND}
C {devices/vsource.sym} -540 0 0 0 {name=VID value="DC 0 AC 0" savecurrent=false
spice_ignore=true}
C {devices/gnd.sym} -540 30 0 0 {name=l7 lab=GND}
C {devices/capa.sym} 930 70 0 1 {name=C1
m=1
value=500f
footprint=1206
device="ceramic capacitor"}
C {devices/gnd.sym} 930 100 0 0 {name=l8 lab=GND}
C {devices/gnd.sym} 20 90 0 0 {name=l4 lab=GND}
C {devices/lab_pin.sym} -270 10 3 0 {name=p2 sig_type=std_logic lab=VINN}
C {devices/lab_pin.sym} -270 -50 1 0 {name=p3 sig_type=std_logic lab=VINP}
C {devices/lab_pin.sym} -230 -70 1 0 {name=p4 sig_type=std_logic lab=VINN}
C {devices/lab_pin.sym} -230 40 3 0 {name=p5 sig_type=std_logic lab=VINP}
C {devices/capa.sym} 920 -90 2 0 {name=C2
m=1
value=500f
footprint=1206
device="ceramic capacitor"}
C {devices/gnd.sym} 920 -120 2 0 {name=l9 lab=GND}
C {balun.sym} 310 -10 0 1 {name=balun2}
C {devices/lab_pin.sym} 410 20 3 0 {name=p1 sig_type=std_logic lab=VOUTCM}
C {devices/lab_pin.sym} 410 -40 1 0 {name=p6 sig_type=std_logic lab=VOUTDIFF}
C {devices/lab_pin.sym} 1010 20 3 0 {name=p7 sig_type=std_logic lab=VOUTN}
C {devices/lab_pin.sym} 1010 -40 1 0 {name=p8 sig_type=std_logic lab=VOUTP}
C {CMFB.sym} 720 -290 0 0 {name=x2
*schematic=CMFB_Behav.sch
schematic=CMFB_real.sch}
C {devices/gnd.sym} 690 -190 0 0 {name=l10 lab=GND}
C {devices/lab_pin.sym} -20 110 0 0 {name=p9 sig_type=std_logic lab=VBP}
C {devices/lab_pin.sym} 720 -390 2 0 {name=p10 sig_type=std_logic lab=VBP}
C {devices/lab_pin.sym} 80 80 3 0 {name=p11 sig_type=std_logic lab=VBN}
C {devices/lab_pin.sym} 720 -190 2 0 {name=p12 sig_type=std_logic lab=VBN}
C {devices/lab_pin.sym} 820 -320 2 0 {name=p13 sig_type=std_logic lab=VCTRLP}
C {devices/lab_pin.sym} 70 -100 1 0 {name=p14 sig_type=std_logic lab=VCTRLP}
C {devices/lab_pin.sym} 520 -330 0 0 {name=p15 sig_type=std_logic lab=VOUTN}
C {devices/lab_pin.sym} 520 -300 0 0 {name=p16 sig_type=std_logic lab=VOUTP}
C {devices/vsource.sym} -320 -340 0 0 {name=V2 value=0.85 savecurrent=false}
C {devices/gnd.sym} -320 -310 0 0 {name=l11 lab=GND}
C {devices/lab_pin.sym} -320 -390 1 0 {name=p17 sig_type=std_logic lab=VREF}
C {devices/lab_pin.sym} 520 -240 0 0 {name=p18 sig_type=std_logic lab=VREF}
C {devices/vdd.sym} 690 -390 0 0 {name=l12 lab=VDD}
C {devices/lab_pin.sym} -410 -50 1 0 {name=p19 sig_type=std_logic lab=VINDIFF}
C {devices/lab_pin.sym} -390 10 1 0 {name=p20 sig_type=std_logic lab=VINCM}
C {/home/tare/ITI_Analog/ITI_Labs/Lab11_Xschem/Design/DualProbe/Dualprobe.sym} 580 -10 0 0 {name=X9999}
C {balun.sym} 830 -10 0 0 {name=balun3}
C {devices/capa.sym} -160 -70 1 1 {name=C3
m=1
value=2p
footprint=1206
device="ceramic capacitor"}
C {devices/capa.sym} -160 40 1 1 {name=C4
m=1
value=2p
footprint=1206
device="ceramic capacitor"}
C {devices/capa.sym} 0 -210 1 1 {name=C5
m=1
value=1p
footprint=1206
device="ceramic capacitor"}
C {devices/res.sym} 0 -290 3 0 {name=R1
value=1T
footprint=1206
device=resistor
m=1}
C {devices/capa.sym} 0 240 1 0 {name=C6
m=1
value=1p
footprint=1206
device="ceramic capacitor"}
C {devices/res.sym} 0 320 3 1 {name=R2
value=1T
footprint=1206
device=resistor
m=1}
C {devices/lab_pin.sym} 200 -210 2 0 {name=p21 sig_type=std_logic lab=VOUTP}
C {devices/lab_pin.sym} 200 240 2 0 {name=p22 sig_type=std_logic lab=VOUTN}
C {devices/lab_pin.sym} -110 130 0 0 {name=p23 sig_type=std_logic lab=VINP2}
C {devices/lab_pin.sym} -110 -120 0 0 {name=p24 sig_type=std_logic lab=VINN2}
C {devices/vsource.sym} -420 60 0 0 {name=VID1 value="DC 0.5 PULSE(0 100m 1u 10n 10n 1u 2u)" savecurrent=false
spice_ignore=true}
C {devices/gnd.sym} -710 20 0 0 {name=l13 lab=GND}
C {devices/vsource.sym} -470 50 0 0 {name=VICM value="0.5" savecurrent=false
}
C {devices/gnd.sym} -470 80 0 0 {name=l14 lab=GND}
C {devices/vsource.sym} -840 -10 0 0 {name=VID3 value="PULSE(0 100m 1u 10n 10n 1u 2u)" savecurrent=false
}
C {devices/gnd.sym} -840 20 0 0 {name=l15 lab=GND}
