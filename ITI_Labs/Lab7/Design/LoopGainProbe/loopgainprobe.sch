v {xschem version=3.4.5 file_version=1.2
}
G {}
K {}
V {}
S {}
E {}
T {
* **** Tian Probe ***********
* The loopgainprobe subcircuit needs to be named X999 

* The probe subcircuit is inserted as follows, the a_node/b_node (input/output) order is unimportant
* X999 a_node b_node loopgainprobe

* The loopgainprobe can be disabled by setting both i.X999.Ii and v.X999.Vi to zero

* tian_loop.lib was translated from Frank Wiedmann's LTspice LoopGainProbe.asc into the ngspice dialect
* For more information see: https://sites.google.com/site/frankwiedmann/loopgain
* and http://education.ingenazure.com/ac-stability-analysis-ngspice/

* Original literature:
* Michael Tian, V. Visvanathan, Jeffrey Hantgan, and Kenneth Kundert,
*    "Striving for Small-Signal Stability", IEEE Circuits and Devices Magazine,
*     vol. 17, no. 1, pp. 31-41, January 2001.} -690 -530 0 0 0.4 0.4 { layer=14}
C {devices/code_shown.sym} -890 -540 0 0 {name=Model only_toplevel=false value="

Ii 0 x DC 0 AC 0
Vi x a DC 0 AC 1
Vnodebuffer b x 0


"}
C {devices/iopin.sym} -880 -420 0 0 {name=p1 lab=a}
C {devices/iopin.sym} -880 -380 0 0 {name=p2 lab=b}
