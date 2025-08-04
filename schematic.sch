# File saved with Nlview 7.8.0 2024-04-26 e1825d835c VDI=44 GEI=38 GUI=JA:21.0 threadsafe
# 
# non-default properties - (restore without -noprops)
property -colorscheme classic
property attrcolor #000000
property attrfontsize 8
property autobundle 1
property backgroundcolor #ffffff
property boxcolor0 #000000
property boxcolor1 #000000
property boxcolor2 #000000
property boxinstcolor #000000
property boxpincolor #000000
property buscolor #008000
property closeenough 5
property createnetattrdsp 2048
property decorate 1
property elidetext 40
property fillcolor1 #ffffcc
property fillcolor2 #dfebf8
property fillcolor3 #f0f0f0
property gatecellname 2
property instattrmax 30
property instdrag 15
property instorder 1
property marksize 12
property maxfontsize 12
property maxzoom 5
property netcolor #19b400
property objecthighlight0 #ff00ff
property objecthighlight1 #ffff00
property objecthighlight2 #00ff00
property objecthighlight3 #0095ff
property objecthighlight4 #8000ff
property objecthighlight5 #ffc800
property objecthighlight7 #00ffff
property objecthighlight8 #ff00ff
property objecthighlight9 #ccccff
property objecthighlight10 #0ead00
property objecthighlight11 #cefc00
property objecthighlight12 #9e2dbe
property objecthighlight13 #ba6a29
property objecthighlight14 #fc0188
property objecthighlight15 #02f990
property objecthighlight16 #f1b0fb
property objecthighlight17 #fec004
property objecthighlight18 #149bff
property objecthighlight19 #eb591b
property overlaycolor #19b400
property pbuscolor #000000
property pbusnamecolor #000000
property pinattrmax 20
property pinorder 2
property pinpermute 0
property portcolor #000000
property portnamecolor #000000
property ripindexfontsize 4
property rippercolor #000000
property rubberbandcolor #000000
property rubberbandfontsize 12
property selectattr 0
property selectionappearance 2
property selectioncolor #0000ff
property sheetheight 44
property sheetwidth 68
property showmarks 1
property shownetname 0
property showpagenumbers 1
property showripindex 1
property timelimit 1
#
module new DiceGame work:DiceGame:NOFILE -nosplit
load symbol RTL_ROM work GEN pin O output.right pinBus A input.left [2:0] fillcolor 1
load symbol RTL_OR1 work OR pin I0 input pin I1 input pin O output fillcolor 1
load symbol RTL_EQ work RTL(=) pin O output.right pinBus I0 input.left [3:0] pinBus I1 input.left [3:0] fillcolor 1
load symbol RTL_MUX1 work MUX pin S input.bot pinBus I0 input.left [2:0] pinBus I1 input.left [2:0] pinBus O output.right [2:0] fillcolor 1
load symbol RTL_ROM2 work GEN pinBus A input.left [3:0] pinBus O output.right [2:0] fillcolor 1
load symbol RTL_MUX work MUX pinBus I0 input.left [2:0] pinBus I1 input.left [2:0] pinBus I2 input.left [2:0] pinBus I3 input.left [2:0] pinBus I4 input.left [2:0] pinBus I5 input.left [2:0] pinBus I6 input.left [2:0] pinBus O output.right [2:0] pinBus S input.bot [2:0] fillcolor 1
load symbol RTL_MUX5 work MUX pin I0 input.left pin I1 input.left pin I2 input.left pin I3 input.left pin I4 input.left pin I5 input.left pin I6 input.left pin O output.right pinBus S input.bot [2:0] fillcolor 1
load symbol RTL_MUX7 work MUX pin I0 input.left pin I1 input.left pin O output.right pin S input.bot fillcolor 1
load symbol RTL_MUX3 work MUX pinBus I0 input.left [4:0] pinBus I1 input.left [4:0] pinBus I2 input.left [4:0] pinBus I3 input.left [4:0] pinBus I4 input.left [4:0] pinBus O output.right [4:0] pinBus S input.bot [3:0] fillcolor 1
load symbol RTL_REG_ASYNC__BREG_1 work[3:0]sssww GEN pin C input.clk.left pin CE input.left pin CLR input.top pinBus D input.left [3:0] pinBus Q output.right [3:0] fillcolor 1 sandwich 3 prop @bundle 4
load symbol RTL_REG_ASYNC__BREG_1 work[2:0]sssww GEN pin C input.clk.left pin CE input.left pin CLR input.top pinBus D input.left [2:0] pinBus Q output.right [2:0] fillcolor 1 sandwich 3 prop @bundle 3
load port CLK input -pg 1 -lvl 0 -x 0 -y 310
load port Lose output -pg 1 -lvl 13 -x 3360 -y 340
load port Rb input -pg 1 -lvl 0 -x 0 -y 140
load port Reset input -pg 1 -lvl 0 -x 0 -y 390
load port Roll output -pg 1 -lvl 13 -x 3360 -y 430
load port Win output -pg 1 -lvl 13 -x 3360 -y 520
load portBus Sum input [3:0] -attr @name Sum[3:0] -pg 1 -lvl 0 -x 0 -y 590
load inst Lose_i RTL_ROM work -attr @cell(#000000) RTL_ROM -pinBusAttr A @name A[2:0] -pg 1 -lvl 12 -x 3250 -y 340
load inst Nextstate1_i RTL_OR1 work -attr @cell(#000000) RTL_OR -pg 1 -lvl 3 -x 620 -y 360
load inst Nextstate1_i__0 RTL_OR1 work -attr @cell(#000000) RTL_OR -pinAttr I0 @attr n/c -pg 1 -lvl 4 -x 860 -y 400
load inst Nextstate1_i__1 RTL_EQ work -attr @cell(#000000) RTL_EQ -pinBusAttr I0 @name I0[3:0] -pinBusAttr I1 @name I1[3:0] -pg 1 -lvl 8 -x 2090 -y 470
load inst Nextstate2_i RTL_OR1 work -attr @cell(#000000) RTL_OR -pg 1 -lvl 2 -x 410 -y 440
load inst Nextstate_i RTL_MUX1 work -attr @cell(#000000) RTL_MUX -pinBusAttr I0 @name I0[2:0] -pinBusAttr I0 @attr V=B\"011\",\ S=1'b1 -pinBusAttr I1 @name I1[2:0] -pinBusAttr I1 @attr V=B\"100\",\ S=default -pinBusAttr O @name O[2:0] -pg 1 -lvl 8 -x 2090 -y 70
load inst Nextstate_i__0 RTL_MUX1 work -attr @cell(#000000) RTL_MUX -pinBusAttr I0 @name I0[2:0] -pinBusAttr I0 @attr V=B\"010\",\ S=1'b1 -pinBusAttr I1 @name I1[2:0] -pinBusAttr I1 @attr S=default -pinBusAttr O @name O[2:0] -pg 1 -lvl 9 -x 2430 -y 90
load inst Nextstate_i__1 RTL_ROM2 work -attr @cell(#000000) RTL_ROM -pinBusAttr A @name A[3:0] -pinBusAttr O @name O[2:0] -pg 1 -lvl 8 -x 2090 -y 340
load inst Nextstate_i__2 RTL_MUX1 work -attr @cell(#000000) RTL_MUX -pinBusAttr I0 @name I0[2:0] -pinBusAttr I0 @attr V=B\"010\",\ S=1'b1 -pinBusAttr I1 @name I1[2:0] -pinBusAttr I1 @attr S=default -pinBusAttr O @name O[2:0] -pg 1 -lvl 9 -x 2430 -y 330
load inst Nextstate_i__3 RTL_MUX work -attr @cell(#000000) RTL_MUX -pinBusAttr I0 @name I0[2:0] -pinBusAttr I0 @attr V=B\"001\",\ S=3'b000 -pinBusAttr I1 @name I1[2:0] -pinBusAttr I1 @attr S=3'b001 -pinBusAttr I2 @name I2[2:0] -pinBusAttr I2 @attr S=3'b010 -pinBusAttr I3 @name I3[2:0] -pinBusAttr I3 @attr S=3'b011 -pinBusAttr I4 @name I4[2:0] -pinBusAttr I4 @attr V=B\"101\",\ S=3'b100 -pinBusAttr I5 @name I5[2:0] -pinBusAttr I5 @attr S=3'b101 -pinBusAttr I6 @name I6[2:0] -pinBusAttr I6 @attr S=default -pinBusAttr O @name O[2:0] -pinBusAttr S @name S[2:0] -pg 1 -lvl 10 -x 2830 -y 230
load inst Nextstate_i__4 RTL_MUX5 work -attr @cell(#000000) RTL_MUX -pinAttr I0 @attr S=3'b000 -pinAttr I1 @attr S=3'b001 -pinAttr I2 @attr S=3'b010 -pinAttr I3 @attr S=3'b011 -pinAttr I4 @attr S=3'b100 -pinAttr I5 @attr S=3'b101 -pinAttr I6 @attr S=default -pinBusAttr S @name S[2:0] -pg 1 -lvl 10 -x 2830 -y 460
load inst Roll_i RTL_ROM work -attr @cell(#000000) RTL_ROM -pinBusAttr A @name A[2:0] -pg 1 -lvl 12 -x 3250 -y 430
load inst Sp_i RTL_MUX7 work -attr @cell(#000000) RTL_MUX -pinAttr I0 @attr S=1'b1 -pinAttr I1 @attr S=default -pg 1 -lvl 4 -x 860 -y 220
load inst Sp_i__0 RTL_MUX7 work -attr @cell(#000000) RTL_MUX -pinAttr I0 @attr S=1'b1 -pinAttr I1 @attr S=default -pg 1 -lvl 5 -x 1160 -y 210
load inst Sp_i__1 RTL_MUX5 work -attr @cell(#000000) RTL_MUX -pinAttr I0 @attr S=3'b000 -pinAttr I1 @attr S=3'b001 -pinAttr I2 @attr S=3'b010 -pinAttr I3 @attr S=3'b011 -pinAttr I4 @attr S=3'b100 -pinAttr I5 @attr S=3'b101 -pinAttr I6 @attr S=default -pinBusAttr S @name S[2:0] -pg 1 -lvl 6 -x 1470 -y 310
load inst Sum_i RTL_MUX3 work -attr @cell(#000000) RTL_MUX -pinBusAttr I0 @name I0[4:0] -pinBusAttr I0 @attr V=B\"00001\",\ S=4'b0111 -pinBusAttr I1 @name I1[4:0] -pinBusAttr I1 @attr V=B\"00010\",\ S=4'b1011 -pinBusAttr I2 @name I2[4:0] -pinBusAttr I2 @attr V=B\"00100\",\ S=4'b0010 -pinBusAttr I3 @name I3[4:0] -pinBusAttr I3 @attr V=B\"01000\",\ S=4'b0011 -pinBusAttr I4 @name I4[4:0] -pinBusAttr I4 @attr V=B\"10000\",\ S=4'b1100 -pinBusAttr O @name O[4:0] -pinBusAttr S @name S[3:0] -pg 1 -lvl 1 -x 230 -y 500
load inst Win_i RTL_ROM work -attr @cell(#000000) RTL_ROM -pinBusAttr A @name A[2:0] -pg 1 -lvl 12 -x 3250 -y 520
load inst Point_reg[3:0] RTL_REG_ASYNC__BREG_1 work[3:0]sssww -attr @cell(#000000) RTL_REG_ASYNC -pg 1 -lvl 7 -x 1720 -y 510
load inst State_reg[2:0] RTL_REG_ASYNC__BREG_1 work[2:0]sssww -attr @cell(#000000) RTL_REG_ASYNC -pg 1 -lvl 11 -x 3060 -y 630
load net <const0> -ground -pin Nextstate_i I0[2] -pin Nextstate_i I1[1] -pin Nextstate_i I1[0] -pin Nextstate_i__0 I0[2] -pin Nextstate_i__0 I0[0] -pin Nextstate_i__2 I0[2] -pin Nextstate_i__2 I0[0] -pin Nextstate_i__3 I0[2] -pin Nextstate_i__3 I0[1] -pin Nextstate_i__3 I2[2] -pin Nextstate_i__3 I2[1] -pin Nextstate_i__3 I2[0] -pin Nextstate_i__3 I3[2] -pin Nextstate_i__3 I3[1] -pin Nextstate_i__3 I3[0] -pin Nextstate_i__3 I4[1] -pin Nextstate_i__3 I6[2] -pin Nextstate_i__3 I6[1] -pin Nextstate_i__3 I6[0] -pin Sp_i I0 -pin Sp_i__0 I0 -pin Sp_i__1 I0 -pin Sp_i__1 I2 -pin Sp_i__1 I3 -pin Sp_i__1 I4 -pin Sp_i__1 I5 -pin Sp_i__1 I6 -pin Sum_i I0[4] -pin Sum_i I0[3] -pin Sum_i I0[2] -pin Sum_i I0[1] -pin Sum_i I1[4] -pin Sum_i I1[3] -pin Sum_i I1[2] -pin Sum_i I1[0] -pin Sum_i I2[4] -pin Sum_i I2[3] -pin Sum_i I2[1] -pin Sum_i I2[0] -pin Sum_i I3[4] -pin Sum_i I3[2] -pin Sum_i I3[1] -pin Sum_i I3[0] -pin Sum_i I4[3] -pin Sum_i I4[2] -pin Sum_i I4[1] -pin Sum_i I4[0]
load net <const1> -power -pin Nextstate_i I0[1] -pin Nextstate_i I0[0] -pin Nextstate_i I1[2] -pin Nextstate_i__0 I0[1] -pin Nextstate_i__2 I0[1] -pin Nextstate_i__3 I0[0] -pin Nextstate_i__3 I4[2] -pin Nextstate_i__3 I4[0] -pin Nextstate_i__4 I1 -pin Nextstate_i__4 I5 -pin Nextstate_i__4 I6 -pin Sp_i I1 -pin Sum_i I0[0] -pin Sum_i I1[1] -pin Sum_i I2[2] -pin Sum_i I3[3] -pin Sum_i I4[4]
load net CLK -port CLK -pin Point_reg[3:0] C -pin State_reg[2:0] C
netloc CLK 1 0 11 NJ 310 NJ 310 NJ 310 NJ 310 NJ 310 1350J 200 1640 610 NJ 610 NJ 610 NJ 610 NJ
load net Lose -port Lose -pin Lose_i O
netloc Lose 1 12 1 NJ 340
load net Nextstate1 -pin Nextstate1_i__0 O -pin Nextstate_i__0 S -pin Sp_i__0 S
netloc Nextstate1 1 4 5 1040 270N 1310 160 NJ 160 NJ 160 2250J
load net Nextstate1_i__1_n_0 -pin Nextstate1_i__1 O -pin Nextstate_i__2 S
netloc Nextstate1_i__1_n_0 1 8 1 2250 390n
load net Nextstate1_i_n_0 -pin Nextstate1_i O -pin Nextstate_i S -pin Sp_i S
netloc Nextstate1_i_n_0 1 3 5 740 280N 1020 130 NJ 130 NJ 130 NJ
load net Nextstate2 -pin Nextstate1_i I0 -pin Nextstate2_i O
netloc Nextstate2 1 2 1 530 350n
load net Nextstate[0] -attr @rip(#000000) O[0] -pin Nextstate_i__3 O[0] -pin State_reg[2:0] D[0]
load net Nextstate[1] -attr @rip(#000000) O[1] -pin Nextstate_i__3 O[1] -pin State_reg[2:0] D[1]
load net Nextstate[2] -attr @rip(#000000) O[2] -pin Nextstate_i__3 O[2] -pin State_reg[2:0] D[2]
load net Nextstate_i__0_n_0 -attr @rip(#000000) O[2] -pin Nextstate_i__0 O[2] -pin Nextstate_i__3 I1[2]
load net Nextstate_i__0_n_1 -attr @rip(#000000) O[1] -pin Nextstate_i__0 O[1] -pin Nextstate_i__3 I1[1]
load net Nextstate_i__0_n_2 -attr @rip(#000000) O[0] -pin Nextstate_i__0 O[0] -pin Nextstate_i__3 I1[0]
load net Nextstate_i__1_n_0 -attr @rip(#000000) O[2] -pin Nextstate_i__1 O[2] -pin Nextstate_i__2 I1[2]
load net Nextstate_i__1_n_1 -attr @rip(#000000) O[1] -pin Nextstate_i__1 O[1] -pin Nextstate_i__2 I1[1]
load net Nextstate_i__1_n_2 -attr @rip(#000000) O[0] -pin Nextstate_i__1 O[0] -pin Nextstate_i__2 I1[0]
load net Nextstate_i__2_n_0 -attr @rip(#000000) O[2] -pin Nextstate_i__2 O[2] -pin Nextstate_i__3 I5[2]
load net Nextstate_i__2_n_1 -attr @rip(#000000) O[1] -pin Nextstate_i__2 O[1] -pin Nextstate_i__3 I5[1]
load net Nextstate_i__2_n_2 -attr @rip(#000000) O[0] -pin Nextstate_i__2 O[0] -pin Nextstate_i__3 I5[0]
load net Nextstate_i__4_n_0 -pin Nextstate_i__4 O -pin State_reg[2:0] CE
netloc Nextstate_i__4_n_0 1 10 1 2960 460n
load net Nextstate_i_n_0 -attr @rip(#000000) O[2] -pin Nextstate_i O[2] -pin Nextstate_i__0 I1[2]
load net Nextstate_i_n_1 -attr @rip(#000000) O[1] -pin Nextstate_i O[1] -pin Nextstate_i__0 I1[1]
load net Nextstate_i_n_2 -attr @rip(#000000) O[0] -pin Nextstate_i O[0] -pin Nextstate_i__0 I1[0]
load net Point[0] -attr @rip(#000000) 0 -pin Nextstate1_i__1 I1[0] -pin Point_reg[3:0] Q[0]
load net Point[1] -attr @rip(#000000) 1 -pin Nextstate1_i__1 I1[1] -pin Point_reg[3:0] Q[1]
load net Point[2] -attr @rip(#000000) 2 -pin Nextstate1_i__1 I1[2] -pin Point_reg[3:0] Q[2]
load net Point[3] -attr @rip(#000000) 3 -pin Nextstate1_i__1 I1[3] -pin Point_reg[3:0] Q[3]
load net Rb -pin Nextstate_i__4 I0 -pin Nextstate_i__4 I4 -port Rb
netloc Rb 1 0 10 NJ 140 NJ 140 NJ 140 NJ 140 1000J 150 1290J 180 NJ 180 NJ 180 NJ 180 2580
load net Reset -pin Nextstate_i__4 I2 -pin Nextstate_i__4 I3 -pin Point_reg[3:0] CLR -port Reset -pin State_reg[2:0] CLR
netloc Reset 1 0 11 NJ 390 NJ 390 550J 430 760J 450 NJ 450 NJ 450 1600J 440N 1900 520 NJ 520 2620 590 3000
load net Roll -port Roll -pin Roll_i O
netloc Roll 1 12 1 NJ 430
load net Sp -pin Point_reg[3:0] CE -pin Sp_i__1 O
netloc Sp 1 6 1 1620 310n
load net Sp_i__0_n_0 -pin Sp_i__0 O -pin Sp_i__1 I1
netloc Sp_i__0_n_0 1 5 1 1330 210n
load net Sp_i_n_0 -pin Sp_i O -pin Sp_i__0 I1
netloc Sp_i_n_0 1 4 1 N 220
load net State[0] -attr @rip(#000000) 0 -pin Lose_i A[0] -pin Nextstate_i__3 S[0] -pin Nextstate_i__4 S[0] -pin Roll_i A[0] -pin Sp_i__1 S[0] -pin State_reg[2:0] Q[0] -pin Win_i A[0]
load net State[1] -attr @rip(#000000) 1 -pin Lose_i A[1] -pin Nextstate_i__3 S[1] -pin Nextstate_i__4 S[1] -pin Roll_i A[1] -pin Sp_i__1 S[1] -pin State_reg[2:0] Q[1] -pin Win_i A[1]
load net State[2] -attr @rip(#000000) 2 -pin Lose_i A[2] -pin Nextstate_i__3 S[2] -pin Nextstate_i__4 S[2] -pin Roll_i A[2] -pin Sp_i__1 S[2] -pin State_reg[2:0] Q[2] -pin Win_i A[2]
load net Sum[0] -attr @rip(#000000) Sum[0] -pin Nextstate1_i__1 I0[0] -pin Nextstate_i__1 A[0] -pin Point_reg[3:0] D[0] -port Sum[0] -pin Sum_i S[0]
load net Sum[1] -attr @rip(#000000) Sum[1] -pin Nextstate1_i__1 I0[1] -pin Nextstate_i__1 A[1] -pin Point_reg[3:0] D[1] -port Sum[1] -pin Sum_i S[1]
load net Sum[2] -attr @rip(#000000) Sum[2] -pin Nextstate1_i__1 I0[2] -pin Nextstate_i__1 A[2] -pin Point_reg[3:0] D[2] -port Sum[2] -pin Sum_i S[2]
load net Sum[3] -attr @rip(#000000) Sum[3] -pin Nextstate1_i__1 I0[3] -pin Nextstate_i__1 A[3] -pin Point_reg[3:0] D[3] -port Sum[3] -pin Sum_i S[3]
load net Sum_i_n_2 -attr @rip(#000000) O[2] -pin Nextstate2_i I0 -pin Sum_i O[2]
load net Sum_i_n_3 -attr @rip(#000000) O[1] -pin Nextstate1_i__0 I1 -pin Sum_i O[1]
load net Sum_i_n_4 -attr @rip(#000000) O[0] -pin Sum_i O[0]
load net Win -port Win -pin Win_i O
netloc Win 1 12 1 NJ 520
load net p_1_in -attr @rip(#000000) O[3] -pin Nextstate2_i I1 -pin Sum_i O[3]
load net p_2_in -attr @rip(#000000) O[4] -pin Nextstate1_i I1 -pin Sum_i O[4]
load netBundle @Sum 4 Sum[3] Sum[2] Sum[1] Sum[0] -autobundled
netbloc @Sum 1 0 8 NJ 590N NJ 590 NJ 590 NJ 590 NJ 590 NJ 590 1660 590 1920
load netBundle @Nextstate_i_n_ 3 Nextstate_i_n_0 Nextstate_i_n_1 Nextstate_i_n_2 -autobundled
netbloc @Nextstate_i_n_ 1 8 1 2250J 70n
load netBundle @Nextstate_i__0_n_ 3 Nextstate_i__0_n_0 Nextstate_i__0_n_1 Nextstate_i__0_n_2 -autobundled
netbloc @Nextstate_i__0_n_ 1 9 1 2600 90n
load netBundle @Nextstate_i__1_n_ 3 Nextstate_i__1_n_0 Nextstate_i__1_n_1 Nextstate_i__1_n_2 -autobundled
netbloc @Nextstate_i__1_n_ 1 8 1 N 340
load netBundle @Nextstate_i__2_n_ 3 Nextstate_i__2_n_0 Nextstate_i__2_n_1 Nextstate_i__2_n_2 -autobundled
netbloc @Nextstate_i__2_n_ 1 9 1 2560 270n
load netBundle @Nextstate 3 Nextstate[2] Nextstate[1] Nextstate[0] -autobundled
netbloc @Nextstate 1 10 1 2980 230n
load netBundle @Sum_i_n_,p_2_in,p_1_in 5 p_2_in p_1_in Sum_i_n_2 Sum_i_n_3 Sum_i_n_4 -autobundled
netbloc @Sum_i_n_,p_2_in,p_1_in 1 1 3 360 490 570 410 760J
load netBundle @Point 4 Point[3] Point[2] Point[1] Point[0] -autobundled
netbloc @Point 1 7 1 1880 480n
load netBundle @State 3 State[2] State[1] State[0] -autobundled
netbloc @State 1 6 6 N 420 NJ 420 NJ 420 2600 340N NJ 340 3220
levelinfo -pg 1 0 230 410 620 860 1160 1470 1720 2090 2430 2830 3060 3250 3360
pagesize -pg 1 -db -bbox -sgen -110 0 3440 710
show
zoom 0.918487
scrollpos 934 175
#
# initialize ictrl to current module DiceGame work:DiceGame:NOFILE
ictrl init topinfo |
