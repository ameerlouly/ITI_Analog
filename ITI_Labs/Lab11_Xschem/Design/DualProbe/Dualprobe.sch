v {xschem version=3.4.6 file_version=1.2}
G {}
K {}
V {}
S {}
E {}
T {* **** this Probe was developed and based on the Tian Probe ***********

* The Dualprobe subcircuit needs to be named X9999 
* The probe subcircuit is inserted as follows, the a_node/b_node (input1/output1) order is unimportant
* The probe subcircuit is inserted as follows, the c_node/d_node (input2/output2) order is unimportant
* X9999 a_node b_node Dualprobe
* X9999 c_node d_node Dualprobe
* The Dualprobe can be disabled by setting i.X9999.Ii and v.X9999.Vi and v.X9999.Vi1 and v.X9999.Vi1 to zero


* by: Amir Sameh, september 2025
*Student at Cairo University, Electronics and Electrical Communication Engineering Department
* ITI 2025 Student, CMOS Analog IC Design Course




* **** the original Tian Probe ***********

* tian_loop.lib was translated from Frank Wiedmann's LTspice LoopGainProbe.asc into the ngspice dialect
* For more information see: https://sites.google.com/site/frankwiedmann/loopgain
* and http://education.ingenazure.com/ac-stability-analysis-ngspice/

* Original literature:
* Michael Tian, V. Visvanathan, Jeffrey Hantgan, and Kenneth Kundert,
*    "Striving for Small-Signal Stability", IEEE Circuits and Devices Magazine,
*     vol. 17, no. 1, pp. 31-41, January 2001.} -100 -380 0 0 0.4 0.4 { layer=14}
C {devices/code_shown.sym} -340 -430 0 0 {name=Model only_toplevel=false value="

Ii 0 x DC 0 AC 0
Vi x a DC 0 AC 0
Vnodebuffer b x 0

Ii1 0 y DC 0 AC 0
Vi1 y c DC 0 AC 0
Vnodebuffer1 d y 0

"}
C {devices/iopin.sym} -290 -150 0 0 {name=p1 lab=a}
C {devices/iopin.sym} -290 -110 0 0 {name=p2 lab=b}
C {devices/iopin.sym} -290 -80 0 0 {name=p3 lab=c}
C {devices/iopin.sym} -290 -40 0 0 {name=p4 lab=d}
