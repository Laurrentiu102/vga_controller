
?
Command: %s
1870*	planAhead2?
?read_checkpoint -auto_incremental -incremental D:/Proiecte_PSN/vga_controller/vga_controller.srcs/utils_1/imports/synth_1/vga_controller.dcp2default:defaultZ12-2866h px? 
?
;Read reference checkpoint from %s for incremental synthesis3154*	planAhead2q
]D:/Proiecte_PSN/vga_controller/vga_controller.srcs/utils_1/imports/synth_1/vga_controller.dcp2default:defaultZ12-5825h px? 
T
-Please ensure there are no constraint changes3725*	planAheadZ12-7989h px? 
{
Command: %s
53*	vivadotcl2J
6synth_design -top vga_controller -part xc7a35tcpg236-12default:defaultZ4-113h px? 
:
Starting synth_design
149*	vivadotclZ4-321h px? 
?
@Attempting to get a license for feature '%s' and/or device '%s'
308*common2
	Synthesis2default:default2
xc7a35t2default:defaultZ17-347h px? 
?
0Got license for feature '%s' and/or device '%s'
310*common2
	Synthesis2default:default2
xc7a35t2default:defaultZ17-349h px? 
V
Loading part %s157*device2#
xc7a35tcpg236-12default:defaultZ21-403h px? 
?
[Reference run did not run incremental synthesis because %s; reverting to default synthesis
2138*designutils2+
the design is too small2default:defaultZ20-4072h px? 
?
?Flow is switching to default flow due to incremental criteria not met. If you would like to alter this behaviour and have the flow terminate instead, please set the following parameter config_implementation {autoIncr.Synth.RejectBehavior Terminate}2229*designutilsZ20-4379h px? 
?
HMultithreading enabled for synth_design using a maximum of %s processes.4828*oasys2
22default:defaultZ8-7079h px? 
a
?Launching helper process for spawning children vivado processes4827*oasysZ8-7078h px? 
`
#Helper process launched with PID %s4824*oasys2
100162default:defaultZ8-7075h px? 
?
%s*synth2?
wStarting RTL Elaboration : Time (s): cpu = 00:00:04 ; elapsed = 00:00:05 . Memory (MB): peak = 1566.598 ; gain = 0.000
2default:defaulth px? 
?
synthesizing module '%s'638*oasys2"
vga_controller2default:default2i
SD:/Proiecte_PSN/vga_controller/vga_controller.srcs/sources_1/new/vga_controller.vhd2default:default2
292default:default8@Z8-638h px? 
?
Hmodule '%s' declared at '%s:%s' bound to instance '%s' of component '%s'3392*oasys2
UE2default:default2[
GD:/Proiecte_PSN/vga_controller/vga_controller.srcs/sources_1/new/UE.vhd2default:default2
62default:default2
ueee2default:default2
UE2default:default2i
SD:/Proiecte_PSN/vga_controller/vga_controller.srcs/sources_1/new/vga_controller.vhd2default:default2
782default:default8@Z8-3491h px? 
?
synthesizing module '%s'638*oasys2
UE2default:default2]
GD:/Proiecte_PSN/vga_controller/vga_controller.srcs/sources_1/new/UE.vhd2default:default2
132default:default8@Z8-638h px? 
?
Hmodule '%s' declared at '%s:%s' bound to instance '%s' of component '%s'3392*oasys2
clk_divider2default:default2d
PD:/Proiecte_PSN/vga_controller/vga_controller.srcs/sources_1/new/clk_divider.vhd2default:default2
42default:default2

clk_butons2default:default2
clk_divider2default:default2]
GD:/Proiecte_PSN/vga_controller/vga_controller.srcs/sources_1/new/UE.vhd2default:default2
472default:default8@Z8-3491h px? 
?
synthesizing module '%s'638*oasys2
clk_divider2default:default2f
PD:/Proiecte_PSN/vga_controller/vga_controller.srcs/sources_1/new/clk_divider.vhd2default:default2
92default:default8@Z8-638h px? 
?
Esignal '%s' is read in the process but is not in the sensitivity list614*oasys2
clk2default:default2f
PD:/Proiecte_PSN/vga_controller/vga_controller.srcs/sources_1/new/clk_divider.vhd2default:default2
122default:default8@Z8-614h px? 
?
%done synthesizing module '%s' (%s#%s)256*oasys2
clk_divider2default:default2
12default:default2
12default:default2f
PD:/Proiecte_PSN/vga_controller/vga_controller.srcs/sources_1/new/clk_divider.vhd2default:default2
92default:default8@Z8-256h px? 
?
Hmodule '%s' declared at '%s:%s' bound to instance '%s' of component '%s'3392*oasys2
clk_mul2default:default2`
LD:/Proiecte_PSN/vga_controller/vga_controller.srcs/sources_1/new/clk_mul.vhd2default:default2
212default:default2 
clk_modifier2default:default2
clk_mul2default:default2]
GD:/Proiecte_PSN/vga_controller/vga_controller.srcs/sources_1/new/UE.vhd2default:default2
482default:default8@Z8-3491h px? 
?
synthesizing module '%s'638*oasys2
clk_mul2default:default2b
LD:/Proiecte_PSN/vga_controller/vga_controller.srcs/sources_1/new/clk_mul.vhd2default:default2
262default:default8@Z8-638h px? 
e
%s
*synth2M
9	Parameter BANDWIDTH bound to: OPTIMIZED - type: string 
2default:defaulth p
x
? 
k
%s
*synth2S
?	Parameter CLKFBOUT_MULT_F bound to: 10.125000 - type: double 
2default:defaulth p
x
? 
i
%s
*synth2Q
=	Parameter CLKFBOUT_PHASE bound to: 0.000000 - type: double 
2default:defaulth p
x
? 
f
%s
*synth2N
:	Parameter CLKFBOUT_USE_FINE_PS bound to: 0 - type: bool 
2default:defaulth p
x
? 
i
%s
*synth2Q
=	Parameter CLKIN1_PERIOD bound to: 10.000000 - type: double 
2default:defaulth p
x
? 
k
%s
*synth2S
?	Parameter CLKOUT0_DIVIDE_F bound to: 9.375000 - type: double 
2default:defaulth p
x
? 
m
%s
*synth2U
A	Parameter CLKOUT0_DUTY_CYCLE bound to: 0.500000 - type: double 
2default:defaulth p
x
? 
h
%s
*synth2P
<	Parameter CLKOUT0_PHASE bound to: 0.000000 - type: double 
2default:defaulth p
x
? 
e
%s
*synth2M
9	Parameter CLKOUT0_USE_FINE_PS bound to: 0 - type: bool 
2default:defaulth p
x
? 
a
%s
*synth2I
5	Parameter CLKOUT4_CASCADE bound to: 0 - type: bool 
2default:defaulth p
x
? 
d
%s
*synth2L
8	Parameter COMPENSATION bound to: ZHOLD - type: string 
2default:defaulth p
x
? 
b
%s
*synth2J
6	Parameter DIVCLK_DIVIDE bound to: 1 - type: integer 
2default:defaulth p
x
? 
f
%s
*synth2N
:	Parameter REF_JITTER1 bound to: 0.010000 - type: double 
2default:defaulth p
x
? 
^
%s
*synth2F
2	Parameter STARTUP_WAIT bound to: 0 - type: bool 
2default:defaulth p
x
? 
?
,binding component instance '%s' to cell '%s'113*oasys2!
mmcm_adv_inst2default:default2

MMCME2_ADV2default:default2b
LD:/Proiecte_PSN/vga_controller/vga_controller.srcs/sources_1/new/clk_mul.vhd2default:default2
682default:default8@Z8-113h px? 
?
,binding component instance '%s' to cell '%s'113*oasys2
clkf_buf2default:default2
BUFG2default:default2b
LD:/Proiecte_PSN/vga_controller/vga_controller.srcs/sources_1/new/clk_mul.vhd2default:default2
1302default:default8@Z8-113h px? 
?
,binding component instance '%s' to cell '%s'113*oasys2
clkout1_buf2default:default2
BUFG2default:default2b
LD:/Proiecte_PSN/vga_controller/vga_controller.srcs/sources_1/new/clk_mul.vhd2default:default2
1372default:default8@Z8-113h px? 
?
%done synthesizing module '%s' (%s#%s)256*oasys2
clk_mul2default:default2
22default:default2
12default:default2b
LD:/Proiecte_PSN/vga_controller/vga_controller.srcs/sources_1/new/clk_mul.vhd2default:default2
262default:default8@Z8-256h px? 
?
Hmodule '%s' declared at '%s:%s' bound to instance '%s' of component '%s'3392*oasys2
	debouncer2default:default2b
ND:/Proiecte_PSN/vga_controller/vga_controller.srcs/sources_1/new/debouncer.vhd2default:default2
42default:default2
debu2default:default2
	debouncer2default:default2]
GD:/Proiecte_PSN/vga_controller/vga_controller.srcs/sources_1/new/UE.vhd2default:default2
492default:default8@Z8-3491h px? 
?
synthesizing module '%s'638*oasys2
	debouncer2default:default2d
ND:/Proiecte_PSN/vga_controller/vga_controller.srcs/sources_1/new/debouncer.vhd2default:default2
252default:default8@Z8-638h px? 
?
Hmodule '%s' declared at '%s:%s' bound to instance '%s' of component '%s'3392*oasys2
bist_d2default:default2_
KD:/Proiecte_PSN/vga_controller/vga_controller.srcs/sources_1/new/bist_d.vhd2default:default2
42default:default2
B12default:default2
bist_d2default:default2d
ND:/Proiecte_PSN/vga_controller/vga_controller.srcs/sources_1/new/debouncer.vhd2default:default2
422default:default8@Z8-3491h px? 
?
synthesizing module '%s'638*oasys2
bist_d2default:default2a
KD:/Proiecte_PSN/vga_controller/vga_controller.srcs/sources_1/new/bist_d.vhd2default:default2
102default:default8@Z8-638h px? 
?
%done synthesizing module '%s' (%s#%s)256*oasys2
bist_d2default:default2
32default:default2
12default:default2a
KD:/Proiecte_PSN/vga_controller/vga_controller.srcs/sources_1/new/bist_d.vhd2default:default2
102default:default8@Z8-256h px? 
?
Hmodule '%s' declared at '%s:%s' bound to instance '%s' of component '%s'3392*oasys2
bist_d2default:default2_
KD:/Proiecte_PSN/vga_controller/vga_controller.srcs/sources_1/new/bist_d.vhd2default:default2
42default:default2
B22default:default2
bist_d2default:default2d
ND:/Proiecte_PSN/vga_controller/vga_controller.srcs/sources_1/new/debouncer.vhd2default:default2
432default:default8@Z8-3491h px? 
?
Hmodule '%s' declared at '%s:%s' bound to instance '%s' of component '%s'3392*oasys2
bist_d2default:default2_
KD:/Proiecte_PSN/vga_controller/vga_controller.srcs/sources_1/new/bist_d.vhd2default:default2
42default:default2
B32default:default2
bist_d2default:default2d
ND:/Proiecte_PSN/vga_controller/vga_controller.srcs/sources_1/new/debouncer.vhd2default:default2
442default:default8@Z8-3491h px? 
?
Hmodule '%s' declared at '%s:%s' bound to instance '%s' of component '%s'3392*oasys2

and_gate_32default:default2b
ND:/Proiecte_PSN/vga_controller/vga_controller.srcs/sources_1/new/debouncer.vhd2default:default2
132default:default2
SI2default:default2

and_gate_32default:default2d
ND:/Proiecte_PSN/vga_controller/vga_controller.srcs/sources_1/new/debouncer.vhd2default:default2
452default:default8@Z8-3491h px? 
?
synthesizing module '%s'638*oasys2

and_gate_32default:default2d
ND:/Proiecte_PSN/vga_controller/vga_controller.srcs/sources_1/new/debouncer.vhd2default:default2
202default:default8@Z8-638h px? 
?
%done synthesizing module '%s' (%s#%s)256*oasys2

and_gate_32default:default2
42default:default2
12default:default2d
ND:/Proiecte_PSN/vga_controller/vga_controller.srcs/sources_1/new/debouncer.vhd2default:default2
202default:default8@Z8-256h px? 
?
%done synthesizing module '%s' (%s#%s)256*oasys2
	debouncer2default:default2
52default:default2
12default:default2d
ND:/Proiecte_PSN/vga_controller/vga_controller.srcs/sources_1/new/debouncer.vhd2default:default2
252default:default8@Z8-256h px? 
?
Hmodule '%s' declared at '%s:%s' bound to instance '%s' of component '%s'3392*oasys2
	debouncer2default:default2b
ND:/Proiecte_PSN/vga_controller/vga_controller.srcs/sources_1/new/debouncer.vhd2default:default2
42default:default2
debd2default:default2
	debouncer2default:default2]
GD:/Proiecte_PSN/vga_controller/vga_controller.srcs/sources_1/new/UE.vhd2default:default2
502default:default8@Z8-3491h px? 
?
Hmodule '%s' declared at '%s:%s' bound to instance '%s' of component '%s'3392*oasys2
	debouncer2default:default2b
ND:/Proiecte_PSN/vga_controller/vga_controller.srcs/sources_1/new/debouncer.vhd2default:default2
42default:default2
debl2default:default2
	debouncer2default:default2]
GD:/Proiecte_PSN/vga_controller/vga_controller.srcs/sources_1/new/UE.vhd2default:default2
512default:default8@Z8-3491h px? 
?
Hmodule '%s' declared at '%s:%s' bound to instance '%s' of component '%s'3392*oasys2
	debouncer2default:default2b
ND:/Proiecte_PSN/vga_controller/vga_controller.srcs/sources_1/new/debouncer.vhd2default:default2
42default:default2
debr2default:default2
	debouncer2default:default2]
GD:/Proiecte_PSN/vga_controller/vga_controller.srcs/sources_1/new/UE.vhd2default:default2
522default:default8@Z8-3491h px? 
?
Hmodule '%s' declared at '%s:%s' bound to instance '%s' of component '%s'3392*oasys2
	debouncer2default:default2b
ND:/Proiecte_PSN/vga_controller/vga_controller.srcs/sources_1/new/debouncer.vhd2default:default2
42default:default2
debm2default:default2
	debouncer2default:default2]
GD:/Proiecte_PSN/vga_controller/vga_controller.srcs/sources_1/new/UE.vhd2default:default2
532default:default8@Z8-3491h px? 
?
Hmodule '%s' declared at '%s:%s' bound to instance '%s' of component '%s'3392*oasys2&
horizontal_counter2default:default2k
WD:/Proiecte_PSN/vga_controller/vga_controller.srcs/sources_1/new/horizontal_counter.vhd2default:default2
62default:default2

horizontal2default:default2&
horizontal_counter2default:default2]
GD:/Proiecte_PSN/vga_controller/vga_controller.srcs/sources_1/new/UE.vhd2default:default2
542default:default8@Z8-3491h px? 
?
synthesizing module '%s'638*oasys2&
horizontal_counter2default:default2m
WD:/Proiecte_PSN/vga_controller/vga_controller.srcs/sources_1/new/horizontal_counter.vhd2default:default2
112default:default8@Z8-638h px? 
?
%done synthesizing module '%s' (%s#%s)256*oasys2&
horizontal_counter2default:default2
62default:default2
12default:default2m
WD:/Proiecte_PSN/vga_controller/vga_controller.srcs/sources_1/new/horizontal_counter.vhd2default:default2
112default:default8@Z8-256h px? 
?
Hmodule '%s' declared at '%s:%s' bound to instance '%s' of component '%s'3392*oasys2$
vertical_counter2default:default2i
UD:/Proiecte_PSN/vga_controller/vga_controller.srcs/sources_1/new/vertical_counter.vhd2default:default2
62default:default2
vertical2default:default2$
vertical_counter2default:default2]
GD:/Proiecte_PSN/vga_controller/vga_controller.srcs/sources_1/new/UE.vhd2default:default2
552default:default8@Z8-3491h px? 
?
synthesizing module '%s'638*oasys2$
vertical_counter2default:default2k
UD:/Proiecte_PSN/vga_controller/vga_controller.srcs/sources_1/new/vertical_counter.vhd2default:default2
122default:default8@Z8-638h px? 
?
%done synthesizing module '%s' (%s#%s)256*oasys2$
vertical_counter2default:default2
72default:default2
12default:default2k
UD:/Proiecte_PSN/vga_controller/vga_controller.srcs/sources_1/new/vertical_counter.vhd2default:default2
122default:default8@Z8-256h px? 
?
%done synthesizing module '%s' (%s#%s)256*oasys2
UE2default:default2
82default:default2
12default:default2]
GD:/Proiecte_PSN/vga_controller/vga_controller.srcs/sources_1/new/UE.vhd2default:default2
132default:default8@Z8-256h px? 
?
Hmodule '%s' declared at '%s:%s' bound to instance '%s' of component '%s'3392*oasys2
UC2default:default2[
GD:/Proiecte_PSN/vga_controller/vga_controller.srcs/sources_1/new/UC.vhd2default:default2
62default:default2
uccc2default:default2
UC2default:default2i
SD:/Proiecte_PSN/vga_controller/vga_controller.srcs/sources_1/new/vga_controller.vhd2default:default2
792default:default8@Z8-3491h px? 
?
synthesizing module '%s'638*oasys2
UC2default:default2]
GD:/Proiecte_PSN/vga_controller/vga_controller.srcs/sources_1/new/UC.vhd2default:default2
282default:default8@Z8-638h px? 
?
Hmodule '%s' declared at '%s:%s' bound to instance '%s' of component '%s'3392*oasys2#
horizontal_sync2default:default2h
TD:/Proiecte_PSN/vga_controller/vga_controller.srcs/sources_1/new/horizontal_sync.vhd2default:default2
62default:default2
hs2default:default2#
horizontal_sync2default:default2]
GD:/Proiecte_PSN/vga_controller/vga_controller.srcs/sources_1/new/UC.vhd2default:default2
642default:default8@Z8-3491h px? 
?
synthesizing module '%s'638*oasys2#
horizontal_sync2default:default2j
TD:/Proiecte_PSN/vga_controller/vga_controller.srcs/sources_1/new/horizontal_sync.vhd2default:default2
122default:default8@Z8-638h px? 
?
%done synthesizing module '%s' (%s#%s)256*oasys2#
horizontal_sync2default:default2
92default:default2
12default:default2j
TD:/Proiecte_PSN/vga_controller/vga_controller.srcs/sources_1/new/horizontal_sync.vhd2default:default2
122default:default8@Z8-256h px? 
?
Hmodule '%s' declared at '%s:%s' bound to instance '%s' of component '%s'3392*oasys2!
vertical_sync2default:default2f
RD:/Proiecte_PSN/vga_controller/vga_controller.srcs/sources_1/new/vertical_sync.vhd2default:default2
72default:default2
vs2default:default2!
vertical_sync2default:default2]
GD:/Proiecte_PSN/vga_controller/vga_controller.srcs/sources_1/new/UC.vhd2default:default2
652default:default8@Z8-3491h px? 
?
synthesizing module '%s'638*oasys2!
vertical_sync2default:default2h
RD:/Proiecte_PSN/vga_controller/vga_controller.srcs/sources_1/new/vertical_sync.vhd2default:default2
132default:default8@Z8-638h px? 
?
%done synthesizing module '%s' (%s#%s)256*oasys2!
vertical_sync2default:default2
102default:default2
12default:default2h
RD:/Proiecte_PSN/vga_controller/vga_controller.srcs/sources_1/new/vertical_sync.vhd2default:default2
132default:default8@Z8-256h px? 
?
Hmodule '%s' declared at '%s:%s' bound to instance '%s' of component '%s'3392*oasys2"
button_manager2default:default2g
SD:/Proiecte_PSN/vga_controller/vga_controller.srcs/sources_1/new/button_manager.vhd2default:default2
62default:default2
bm2default:default2"
button_manager2default:default2]
GD:/Proiecte_PSN/vga_controller/vga_controller.srcs/sources_1/new/UC.vhd2default:default2
662default:default8@Z8-3491h px? 
?
synthesizing module '%s'638*oasys2"
button_manager2default:default2i
SD:/Proiecte_PSN/vga_controller/vga_controller.srcs/sources_1/new/button_manager.vhd2default:default2
112default:default8@Z8-638h px? 
?
%done synthesizing module '%s' (%s#%s)256*oasys2"
button_manager2default:default2
112default:default2
12default:default2i
SD:/Proiecte_PSN/vga_controller/vga_controller.srcs/sources_1/new/button_manager.vhd2default:default2
112default:default8@Z8-256h px? 
?
Hmodule '%s' declared at '%s:%s' bound to instance '%s' of component '%s'3392*oasys2"
AfisareImagine2default:default2g
SD:/Proiecte_PSN/vga_controller/vga_controller.srcs/sources_1/new/AfisareImagine.vhd2default:default2
62default:default2
ai2default:default2"
AfisareImagine2default:default2]
GD:/Proiecte_PSN/vga_controller/vga_controller.srcs/sources_1/new/UC.vhd2default:default2
672default:default8@Z8-3491h px? 
?
synthesizing module '%s'638*oasys2"
AfisareImagine2default:default2i
SD:/Proiecte_PSN/vga_controller/vga_controller.srcs/sources_1/new/AfisareImagine.vhd2default:default2
222default:default8@Z8-638h px? 
?
default block is never used226*oasys2i
SD:/Proiecte_PSN/vga_controller/vga_controller.srcs/sources_1/new/AfisareImagine.vhd2default:default2
442default:default8@Z8-226h px? 
?
%done synthesizing module '%s' (%s#%s)256*oasys2"
AfisareImagine2default:default2
122default:default2
12default:default2i
SD:/Proiecte_PSN/vga_controller/vga_controller.srcs/sources_1/new/AfisareImagine.vhd2default:default2
222default:default8@Z8-256h px? 
?
%done synthesizing module '%s' (%s#%s)256*oasys2
UC2default:default2
132default:default2
12default:default2]
GD:/Proiecte_PSN/vga_controller/vga_controller.srcs/sources_1/new/UC.vhd2default:default2
282default:default8@Z8-256h px? 
?
%done synthesizing module '%s' (%s#%s)256*oasys2"
vga_controller2default:default2
142default:default2
12default:default2i
SD:/Proiecte_PSN/vga_controller/vga_controller.srcs/sources_1/new/vga_controller.vhd2default:default2
292default:default8@Z8-256h px? 
?
%s*synth2?
wFinished RTL Elaboration : Time (s): cpu = 00:00:06 ; elapsed = 00:00:07 . Memory (MB): peak = 1566.598 ; gain = 0.000
2default:defaulth px? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
M
%s
*synth25
!Start Handling Custom Attributes
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
?
%s*synth2?
?Finished Handling Custom Attributes : Time (s): cpu = 00:00:07 ; elapsed = 00:00:07 . Memory (MB): peak = 1566.598 ; gain = 0.000
2default:defaulth px? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
?
%s*synth2?
?Finished RTL Optimization Phase 1 : Time (s): cpu = 00:00:07 ; elapsed = 00:00:07 . Memory (MB): peak = 1566.598 ; gain = 0.000
2default:defaulth px? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
?
I%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s
268*common2.
Netlist sorting complete. 2default:default2
00:00:002default:default2 
00:00:00.0152default:default2
1566.5982default:default2
0.0002default:defaultZ17-268h px? 
e
-Analyzing %s Unisim elements for replacement
17*netlist2
12default:defaultZ29-17h px? 
j
2Unisim Transformation completed in %s CPU seconds
28*netlist2
02default:defaultZ29-28h px? 
K
)Preparing netlist for logic optimization
349*projectZ1-570h px? 
>

Processing XDC Constraints
244*projectZ1-262h px? 
=
Initializing timing engine
348*projectZ1-569h px? 
?
Parsing XDC File [%s]
179*designutils2i
SD:/Proiecte_PSN/vga_controller/vga_controller.srcs/constrs_1/new/vga_controller.xdc2default:default8Z20-179h px? 
?
Finished Parsing XDC File [%s]
178*designutils2i
SD:/Proiecte_PSN/vga_controller/vga_controller.srcs/constrs_1/new/vga_controller.xdc2default:default8Z20-178h px? 
?
?Implementation specific constraints were found while reading constraint file [%s]. These constraints will be ignored for synthesis but will be used in implementation. Impacted constraints are listed in the file [%s].
233*project2g
SD:/Proiecte_PSN/vga_controller/vga_controller.srcs/constrs_1/new/vga_controller.xdc2default:default24
 .Xil/vga_controller_propImpl.xdc2default:defaultZ1-236h px? 
8
Deriving generated clocks
2*timingZ38-2h px? 
H
&Completed Processing XDC Constraints

245*projectZ1-263h px? 
?
I%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s
268*common2.
Netlist sorting complete. 2default:default2
00:00:002default:default2
00:00:002default:default2
1570.0002default:default2
0.0002default:defaultZ17-268h px? 
~
!Unisim Transformation Summary:
%s111*project29
%No Unisim elements were transformed.
2default:defaultZ1-111h px? 
?
I%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s
268*common24
 Constraint Validation Runtime : 2default:default2
00:00:002default:default2 
00:00:00.0022default:default2
1570.0002default:default2
0.0002default:defaultZ17-268h px? 
?
[Reference run did not run incremental synthesis because %s; reverting to default synthesis
2138*designutils2+
the design is too small2default:defaultZ20-4072h px? 
?
?Flow is switching to default flow due to incremental criteria not met. If you would like to alter this behaviour and have the flow terminate instead, please set the following parameter config_implementation {autoIncr.Synth.RejectBehavior Terminate}2229*designutilsZ20-4379h px? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
?
%s*synth2?
}Finished Constraint Validation : Time (s): cpu = 00:00:13 ; elapsed = 00:00:14 . Memory (MB): peak = 1570.000 ; gain = 3.402
2default:defaulth px? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
V
%s
*synth2>
*Start Loading Part and Timing Information
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
J
%s
*synth22
Loading part: xc7a35tcpg236-1
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
?
%s*synth2?
?Finished Loading Part and Timing Information : Time (s): cpu = 00:00:13 ; elapsed = 00:00:14 . Memory (MB): peak = 1570.000 ; gain = 3.402
2default:defaulth px? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
Z
%s
*synth2B
.Start Applying 'set_property' XDC Constraints
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
?
%s*synth2?
?Finished applying 'set_property' XDC Constraints : Time (s): cpu = 00:00:13 ; elapsed = 00:00:14 . Memory (MB): peak = 1570.000 ; gain = 3.402
2default:defaulth px? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
?
%s*synth2?
?Finished RTL Optimization Phase 2 : Time (s): cpu = 00:00:14 ; elapsed = 00:00:15 . Memory (MB): peak = 1570.000 ; gain = 3.402
2default:defaulth px? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
L
%s
*synth24
 Start RTL Component Statistics 
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
K
%s
*synth23
Detailed RTL Component Info : 
2default:defaulth p
x
? 
:
%s
*synth2"
+---Adders : 
2default:defaulth p
x
? 
X
%s
*synth2@
,	   2 Input   32 Bit       Adders := 2     
2default:defaulth p
x
? 
X
%s
*synth2@
,	   3 Input   32 Bit       Adders := 4     
2default:defaulth p
x
? 
X
%s
*synth2@
,	   2 Input   31 Bit       Adders := 11    
2default:defaulth p
x
? 
X
%s
*synth2@
,	   3 Input    9 Bit       Adders := 2     
2default:defaulth p
x
? 
=
%s
*synth2%
+---Registers : 
2default:defaulth p
x
? 
Z
%s
*synth2B
.	               31 Bit    Registers := 3     
2default:defaulth p
x
? 
Z
%s
*synth2B
.	                4 Bit    Registers := 3     
2default:defaulth p
x
? 
Z
%s
*synth2B
.	                1 Bit    Registers := 18    
2default:defaulth p
x
? 
?
%s
*synth2'
+---Multipliers : 
2default:defaulth p
x
? 
X
%s
*synth2@
,	              32x32  Multipliers := 2     
2default:defaulth p
x
? 
9
%s
*synth2!
+---Muxes : 
2default:defaulth p
x
? 
X
%s
*synth2@
,	   2 Input   31 Bit        Muxes := 11    
2default:defaulth p
x
? 
X
%s
*synth2@
,	   2 Input    4 Bit        Muxes := 33    
2default:defaulth p
x
? 
X
%s
*synth2@
,	   4 Input    4 Bit        Muxes := 3     
2default:defaulth p
x
? 
X
%s
*synth2@
,	   2 Input    1 Bit        Muxes := 11    
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
O
%s
*synth27
#Finished RTL Component Statistics 
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
H
%s
*synth20
Start Part Resource Summary
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
?
%s
*synth2j
VPart Resources:
DSPs: 90 (col length:60)
BRAMs: 100 (col length: RAMB18 60 RAMB36 30)
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
K
%s
*synth23
Finished Part Resource Summary
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
W
%s
*synth2?
+Start Cross Boundary and Area Optimization
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
H
&Parallel synthesis criteria is not met4829*oasysZ8-7080h px? 
k
%s
*synth2S
?DSP Report: Generating DSP VGA_RED_O3, operation Mode is: A*B.
2default:defaulth p
x
? 
m
%s
*synth2U
ADSP Report: operator VGA_RED_O3 is absorbed into DSP VGA_RED_O3.
2default:defaulth p
x
? 
m
%s
*synth2U
ADSP Report: operator VGA_RED_O3 is absorbed into DSP VGA_RED_O3.
2default:defaulth p
x
? 
v
%s
*synth2^
JDSP Report: Generating DSP VGA_RED_O3, operation Mode is: (PCIN>>17)+A*B.
2default:defaulth p
x
? 
m
%s
*synth2U
ADSP Report: operator VGA_RED_O3 is absorbed into DSP VGA_RED_O3.
2default:defaulth p
x
? 
m
%s
*synth2U
ADSP Report: operator VGA_RED_O3 is absorbed into DSP VGA_RED_O3.
2default:defaulth p
x
? 
k
%s
*synth2S
?DSP Report: Generating DSP VGA_RED_O3, operation Mode is: A*B.
2default:defaulth p
x
? 
m
%s
*synth2U
ADSP Report: operator VGA_RED_O3 is absorbed into DSP VGA_RED_O3.
2default:defaulth p
x
? 
m
%s
*synth2U
ADSP Report: operator VGA_RED_O3 is absorbed into DSP VGA_RED_O3.
2default:defaulth p
x
? 
v
%s
*synth2^
JDSP Report: Generating DSP VGA_RED_O3, operation Mode is: (PCIN>>17)+A*B.
2default:defaulth p
x
? 
m
%s
*synth2U
ADSP Report: operator VGA_RED_O3 is absorbed into DSP VGA_RED_O3.
2default:defaulth p
x
? 
m
%s
*synth2U
ADSP Report: operator VGA_RED_O3 is absorbed into DSP VGA_RED_O3.
2default:defaulth p
x
? 
k
%s
*synth2S
?DSP Report: Generating DSP VGA_RED_O3, operation Mode is: A*B.
2default:defaulth p
x
? 
m
%s
*synth2U
ADSP Report: operator VGA_RED_O3 is absorbed into DSP VGA_RED_O3.
2default:defaulth p
x
? 
m
%s
*synth2U
ADSP Report: operator VGA_RED_O3 is absorbed into DSP VGA_RED_O3.
2default:defaulth p
x
? 
v
%s
*synth2^
JDSP Report: Generating DSP VGA_RED_O3, operation Mode is: (PCIN>>17)+A*B.
2default:defaulth p
x
? 
m
%s
*synth2U
ADSP Report: operator VGA_RED_O3 is absorbed into DSP VGA_RED_O3.
2default:defaulth p
x
? 
m
%s
*synth2U
ADSP Report: operator VGA_RED_O3 is absorbed into DSP VGA_RED_O3.
2default:defaulth p
x
? 
k
%s
*synth2S
?DSP Report: Generating DSP VGA_RED_O3, operation Mode is: A*B.
2default:defaulth p
x
? 
m
%s
*synth2U
ADSP Report: operator VGA_RED_O3 is absorbed into DSP VGA_RED_O3.
2default:defaulth p
x
? 
m
%s
*synth2U
ADSP Report: operator VGA_RED_O3 is absorbed into DSP VGA_RED_O3.
2default:defaulth p
x
? 
v
%s
*synth2^
JDSP Report: Generating DSP VGA_RED_O3, operation Mode is: (PCIN>>17)+A*B.
2default:defaulth p
x
? 
m
%s
*synth2U
ADSP Report: operator VGA_RED_O3 is absorbed into DSP VGA_RED_O3.
2default:defaulth p
x
? 
m
%s
*synth2U
ADSP Report: operator VGA_RED_O3 is absorbed into DSP VGA_RED_O3.
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
?
%s*synth2?
?Finished Cross Boundary and Area Optimization : Time (s): cpu = 00:00:29 ; elapsed = 00:00:30 . Memory (MB): peak = 1570.000 ; gain = 3.402
2default:defaulth px? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
?
%s*synth2?
?---------------------------------------------------------------------------------
Start ROM, RAM, DSP, Shift Register and Retiming Reporting
2default:defaulth px? 
~
%s*synth2f
R---------------------------------------------------------------------------------
2default:defaulth px? 
M
%s*synth25
!
ROM: Preliminary Mapping Report
2default:defaulth px? 
l
%s*synth2T
@+---------------+------------+---------------+----------------+
2default:defaulth px? 
m
%s*synth2U
A|Module Name    | RTL Object | Depth x Width | Implemented As | 
2default:defaulth px? 
l
%s*synth2T
@+---------------+------------+---------------+----------------+
2default:defaulth px? 
m
%s*synth2U
A|AfisareImagine | dino[0]    | 512x293       | LUT            | 
2default:defaulth px? 
m
%s*synth2U
A|AfisareImagine | dino[0]    | 512x293       | LUT            | 
2default:defaulth px? 
m
%s*synth2U
A+---------------+------------+---------------+----------------+

2default:defaulth px? 
?
%s*synth2p
\
DSP: Preliminary Mapping Report (see note below. The ' indicates corresponding REG is set)
2default:defaulth px? 
?
%s*synth2?
?+---------------+----------------+--------+--------+--------+--------+--------+------+------+------+------+-------+------+------+
2default:defaulth px? 
?
%s*synth2?
?|Module Name    | DSP Mapping    | A Size | B Size | C Size | D Size | P Size | AREG | BREG | CREG | DREG | ADREG | MREG | PREG | 
2default:defaulth px? 
?
%s*synth2?
?+---------------+----------------+--------+--------+--------+--------+--------+------+------+------+------+-------+------+------+
2default:defaulth px? 
?
%s*synth2?
?|AfisareImagine | A*B            | 18     | 15     | -      | -      | 48     | 0    | 0    | -    | -    | -     | 0    | 0    | 
2default:defaulth px? 
?
%s*synth2?
?|AfisareImagine | (PCIN>>17)+A*B | 15     | 15     | -      | -      | 48     | 0    | 0    | -    | -    | -     | 0    | 0    | 
2default:defaulth px? 
?
%s*synth2?
?|AfisareImagine | A*B            | 18     | 18     | -      | -      | 48     | 0    | 0    | -    | -    | -     | 0    | 0    | 
2default:defaulth px? 
?
%s*synth2?
?|AfisareImagine | (PCIN>>17)+A*B | 18     | 15     | -      | -      | 48     | 0    | 0    | -    | -    | -     | 0    | 0    | 
2default:defaulth px? 
?
%s*synth2?
?|AfisareImagine | A*B            | 18     | 15     | -      | -      | 48     | 0    | 0    | -    | -    | -     | 0    | 0    | 
2default:defaulth px? 
?
%s*synth2?
?|AfisareImagine | (PCIN>>17)+A*B | 15     | 15     | -      | -      | 48     | 0    | 0    | -    | -    | -     | 0    | 0    | 
2default:defaulth px? 
?
%s*synth2?
?|AfisareImagine | A*B            | 18     | 18     | -      | -      | 48     | 0    | 0    | -    | -    | -     | 0    | 0    | 
2default:defaulth px? 
?
%s*synth2?
?|AfisareImagine | (PCIN>>17)+A*B | 18     | 15     | -      | -      | 48     | 0    | 0    | -    | -    | -     | 0    | 0    | 
2default:defaulth px? 
?
%s*synth2?
?+---------------+----------------+--------+--------+--------+--------+--------+------+------+------+------+-------+------+------+

2default:defaulth px? 
?
%s*synth2?
?Note: The table above is a preliminary report that shows the DSPs inferred at the current stage of the synthesis flow. Some DSP may be reimplemented as non DSP primitives later in the synthesis flow. Multiple instantiated DSPs are reported only once.
2default:defaulth px? 
?
%s*synth2?
?---------------------------------------------------------------------------------
Finished ROM, RAM, DSP, Shift Register and Retiming Reporting
2default:defaulth px? 
~
%s*synth2f
R---------------------------------------------------------------------------------
2default:defaulth px? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
R
%s
*synth2:
&Start Applying XDC Timing Constraints
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
?
%s*synth2?
?Finished Applying XDC Timing Constraints : Time (s): cpu = 00:00:38 ; elapsed = 00:00:39 . Memory (MB): peak = 1583.234 ; gain = 16.637
2default:defaulth px? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
F
%s
*synth2.
Start Timing Optimization
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
?
%s*synth2?
|Finished Timing Optimization : Time (s): cpu = 00:00:42 ; elapsed = 00:00:44 . Memory (MB): peak = 1641.555 ; gain = 74.957
2default:defaulth px? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
E
%s
*synth2-
Start Technology Mapping
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
?
%s*synth2?
{Finished Technology Mapping : Time (s): cpu = 00:00:44 ; elapsed = 00:00:45 . Memory (MB): peak = 1665.664 ; gain = 99.066
2default:defaulth px? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
?
%s
*synth2'
Start IO Insertion
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
Q
%s
*synth29
%Start Flattening Before IO Insertion
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
T
%s
*synth2<
(Finished Flattening Before IO Insertion
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
H
%s
*synth20
Start Final Netlist Cleanup
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
K
%s
*synth23
Finished Final Netlist Cleanup
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
?
%s*synth2?
vFinished IO Insertion : Time (s): cpu = 00:00:48 ; elapsed = 00:00:49 . Memory (MB): peak = 1680.375 ; gain = 113.777
2default:defaulth px? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
O
%s
*synth27
#Start Renaming Generated Instances
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
?
%s*synth2?
?Finished Renaming Generated Instances : Time (s): cpu = 00:00:48 ; elapsed = 00:00:49 . Memory (MB): peak = 1680.375 ; gain = 113.777
2default:defaulth px? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
L
%s
*synth24
 Start Rebuilding User Hierarchy
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
?
%s*synth2?
?Finished Rebuilding User Hierarchy : Time (s): cpu = 00:00:49 ; elapsed = 00:00:50 . Memory (MB): peak = 1680.375 ; gain = 113.777
2default:defaulth px? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
K
%s
*synth23
Start Renaming Generated Ports
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
?
%s*synth2?
?Finished Renaming Generated Ports : Time (s): cpu = 00:00:49 ; elapsed = 00:00:50 . Memory (MB): peak = 1680.375 ; gain = 113.777
2default:defaulth px? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
M
%s
*synth25
!Start Handling Custom Attributes
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
?
%s*synth2?
?Finished Handling Custom Attributes : Time (s): cpu = 00:00:49 ; elapsed = 00:00:50 . Memory (MB): peak = 1680.375 ; gain = 113.777
2default:defaulth px? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
J
%s
*synth22
Start Renaming Generated Nets
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
?
%s*synth2?
?Finished Renaming Generated Nets : Time (s): cpu = 00:00:49 ; elapsed = 00:00:50 . Memory (MB): peak = 1680.375 ; gain = 113.777
2default:defaulth px? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
K
%s
*synth23
Start Writing Synthesis Report
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
A
%s
*synth2)

Report BlackBoxes: 
2default:defaulth p
x
? 
J
%s
*synth22
+-+--------------+----------+
2default:defaulth p
x
? 
J
%s
*synth22
| |BlackBox name |Instances |
2default:defaulth p
x
? 
J
%s
*synth22
+-+--------------+----------+
2default:defaulth p
x
? 
J
%s
*synth22
+-+--------------+----------+
2default:defaulth p
x
? 
A
%s*synth2)

Report Cell Usage: 
2default:defaulth px? 
H
%s*synth20
+------+-----------+------+
2default:defaulth px? 
H
%s*synth20
|      |Cell       |Count |
2default:defaulth px? 
H
%s*synth20
+------+-----------+------+
2default:defaulth px? 
H
%s*synth20
|1     |BUFG       |     4|
2default:defaulth px? 
H
%s*synth20
|2     |CARRY4     |   204|
2default:defaulth px? 
H
%s*synth20
|3     |DSP48E1    |     6|
2default:defaulth px? 
H
%s*synth20
|4     |LUT1       |    86|
2default:defaulth px? 
H
%s*synth20
|5     |LUT2       |   312|
2default:defaulth px? 
H
%s*synth20
|6     |LUT3       |    67|
2default:defaulth px? 
H
%s*synth20
|7     |LUT4       |   380|
2default:defaulth px? 
H
%s*synth20
|8     |LUT5       |   110|
2default:defaulth px? 
H
%s*synth20
|9     |LUT6       |   748|
2default:defaulth px? 
H
%s*synth20
|10    |MMCME2_ADV |     1|
2default:defaulth px? 
H
%s*synth20
|11    |MUXF7      |    58|
2default:defaulth px? 
H
%s*synth20
|12    |MUXF8      |    16|
2default:defaulth px? 
H
%s*synth20
|13    |FDRE       |   186|
2default:defaulth px? 
H
%s*synth20
|14    |IBUF       |    21|
2default:defaulth px? 
H
%s*synth20
|15    |OBUF       |    14|
2default:defaulth px? 
H
%s*synth20
+------+-----------+------+
2default:defaulth px? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
?
%s*synth2?
?Finished Writing Synthesis Report : Time (s): cpu = 00:00:49 ; elapsed = 00:00:50 . Memory (MB): peak = 1680.375 ; gain = 113.777
2default:defaulth px? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
r
%s
*synth2Z
FSynthesis finished with 0 errors, 0 critical warnings and 1 warnings.
2default:defaulth p
x
? 
?
%s
*synth2?
Synthesis Optimization Runtime : Time (s): cpu = 00:00:40 ; elapsed = 00:00:48 . Memory (MB): peak = 1680.375 ; gain = 110.375
2default:defaulth p
x
? 
?
%s
*synth2?
?Synthesis Optimization Complete : Time (s): cpu = 00:00:49 ; elapsed = 00:00:50 . Memory (MB): peak = 1680.375 ; gain = 113.777
2default:defaulth p
x
? 
B
 Translating synthesized netlist
350*projectZ1-571h px? 
?
I%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s
268*common2.
Netlist sorting complete. 2default:default2
00:00:002default:default2 
00:00:00.0492default:default2
1680.3752default:default2
0.0002default:defaultZ17-268h px? 
g
-Analyzing %s Unisim elements for replacement
17*netlist2
2852default:defaultZ29-17h px? 
j
2Unisim Transformation completed in %s CPU seconds
28*netlist2
02default:defaultZ29-28h px? 
K
)Preparing netlist for logic optimization
349*projectZ1-570h px? 
u
)Pushed %s inverter(s) to %s load pin(s).
98*opt2
02default:default2
02default:defaultZ31-138h px? 
?
I%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s
268*common2.
Netlist sorting complete. 2default:default2
00:00:002default:default2 
00:00:00.0012default:default2
1696.1332default:default2
0.0002default:defaultZ17-268h px? 
~
!Unisim Transformation Summary:
%s111*project29
%No Unisim elements were transformed.
2default:defaultZ1-111h px? 
g
$Synth Design complete, checksum: %s
562*	vivadotcl2
763bd7a22default:defaultZ4-1430h px? 
U
Releasing license: %s
83*common2
	Synthesis2default:defaultZ17-83h px? 
?
G%s Infos, %s Warnings, %s Critical Warnings and %s Errors encountered.
28*	vivadotcl2
732default:default2
42default:default2
02default:default2
02default:defaultZ4-41h px? 
^
%s completed successfully
29*	vivadotcl2 
synth_design2default:defaultZ4-42h px? 
?
I%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s
268*common2"
synth_design: 2default:default2
00:00:532default:default2
00:00:552default:default2
1696.1332default:default2
129.5352default:defaultZ17-268h px? 
?
 The %s '%s' has been generated.
621*common2

checkpoint2default:default2a
MD:/Proiecte_PSN/vga_controller/vga_controller.runs/synth_1/vga_controller.dcp2default:defaultZ17-1381h px? 
?
%s4*runtcl2?
rExecuting : report_utilization -file vga_controller_utilization_synth.rpt -pb vga_controller_utilization_synth.pb
2default:defaulth px? 
?
Exiting %s at %s...
206*common2
Vivado2default:default2,
Sat May 21 16:34:55 20222default:defaultZ17-206h px? 


End Record