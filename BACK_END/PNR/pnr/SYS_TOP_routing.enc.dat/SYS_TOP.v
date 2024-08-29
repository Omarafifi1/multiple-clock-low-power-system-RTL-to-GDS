/////////////////////////////////////////////////////////////
// Created by: Synopsys DC Expert(TM) in wire load mode
// Version   : K-2015.06
// Date      : Tue Sep 19 01:28:36 2023
/////////////////////////////////////////////////////////////
module mux2X1_0 (
	IN_0, 
	IN_1, 
	SEL, 
	OUT);
   input IN_0;
   input IN_1;
   input SEL;
   output OUT;

   // Internal wires
   wire N0;

   assign N0 = SEL ;

   MX2X6M U1 (.Y(OUT), 
	.S0(N0), 
	.B(IN_1), 
	.A(IN_0));
endmodule

module mux2X1_6 (
	IN_0, 
	IN_1, 
	SEL, 
	OUT);
   input IN_0;
   input IN_1;
   input SEL;
   output OUT;

   // Internal wires
   wire N0;

   assign N0 = SEL ;

   MX2X2M U1 (.Y(OUT), 
	.S0(N0), 
	.B(IN_1), 
	.A(IN_0));
endmodule

module mux2X1_5 (
	IN_0, 
	IN_1, 
	SEL, 
	OUT);
   input IN_0;
   input IN_1;
   input SEL;
   output OUT;

   // Internal wires
   wire N0;

   assign N0 = SEL ;

   MX2X2M U1 (.Y(OUT), 
	.S0(N0), 
	.B(IN_1), 
	.A(IN_0));
endmodule

module mux2X1_4 (
	IN_0, 
	IN_1, 
	SEL, 
	OUT);
   input IN_0;
   input IN_1;
   input SEL;
   output OUT;

   // Internal wires
   wire N0;

   assign N0 = SEL ;

   MX2X2M U1 (.Y(OUT), 
	.S0(N0), 
	.B(IN_1), 
	.A(IN_0));
endmodule

module mux2X1_3 (
	IN_0, 
	IN_1, 
	SEL, 
	OUT);
   input IN_0;
   input IN_1;
   input SEL;
   output OUT;

   // Internal wires
   wire FE_PHN16_RST_N;
   wire FE_PHN15_RST_N;
   wire FE_PHN12_scan_rst;
   wire FE_PHN9_scan_rst;
   wire N0;

   assign N0 = SEL ;

   DLY4X1M FE_PHC16_RST_N (.Y(FE_PHN16_RST_N), 
	.A(FE_PHN15_RST_N));
   DLY4X1M FE_PHC15_RST_N (.Y(FE_PHN15_RST_N), 
	.A(IN_0));
   DLY4X1M FE_PHC12_scan_rst (.Y(FE_PHN12_scan_rst), 
	.A(FE_PHN9_scan_rst));
   DLY4X1M FE_PHC9_scan_rst (.Y(FE_PHN9_scan_rst), 
	.A(IN_1));
   MX2X2M U1 (.Y(OUT), 
	.S0(N0), 
	.B(FE_PHN12_scan_rst), 
	.A(FE_PHN16_RST_N));
endmodule

module mux2X1_2 (
	IN_0, 
	IN_1, 
	SEL, 
	OUT);
   input IN_0;
   input IN_1;
   input SEL;
   output OUT;

   // Internal wires
   wire FE_PHN14_scan_rst;
   wire FE_PHN11_scan_rst;
   wire N0;

   assign N0 = SEL ;

   DLY4X1M FE_PHC14_scan_rst (.Y(FE_PHN14_scan_rst), 
	.A(FE_PHN11_scan_rst));
   DLY4X1M FE_PHC11_scan_rst (.Y(FE_PHN11_scan_rst), 
	.A(IN_1));
   MX2X6M U1 (.Y(OUT), 
	.S0(N0), 
	.B(FE_PHN14_scan_rst), 
	.A(IN_0));
endmodule

module mux2X1_1 (
	IN_0, 
	IN_1, 
	SEL, 
	OUT);
   input IN_0;
   input IN_1;
   input SEL;
   output OUT;

   // Internal wires
   wire FE_PHN13_scan_rst;
   wire FE_PHN10_scan_rst;
   wire N0;

   assign N0 = SEL ;

   DLY4X1M FE_PHC13_scan_rst (.Y(FE_PHN13_scan_rst), 
	.A(FE_PHN10_scan_rst));
   DLY4X1M FE_PHC10_scan_rst (.Y(FE_PHN10_scan_rst), 
	.A(IN_1));
   MX2X2M U1 (.Y(OUT), 
	.S0(N0), 
	.B(FE_PHN13_scan_rst), 
	.A(IN_0));
endmodule

module RST_SYNC_NUM_STAGES2_test_0 (
	RST, 
	CLK, 
	SYNC_RST, 
	test_si, 
	test_se);
   input RST;
   input CLK;
   output SYNC_RST;
   input test_si;
   input test_se;

   // Internal wires
   wire HTIE_LTIEHI_NET;
   wire \sync_reg[0] ;

   TIEHIM HTIE_LTIEHI (.Y(HTIE_LTIEHI_NET));
   SDFFRQX2M \sync_reg_reg[1]  (.SI(\sync_reg[0] ), 
	.SE(test_se), 
	.RN(RST), 
	.Q(SYNC_RST), 
	.D(\sync_reg[0] ), 
	.CK(CLK));
   SDFFRQX2M \sync_reg_reg[0]  (.SI(test_si), 
	.SE(test_se), 
	.RN(RST), 
	.Q(\sync_reg[0] ), 
	.D(HTIE_LTIEHI_NET), 
	.CK(CLK));
endmodule

module RST_SYNC_NUM_STAGES2_test_1 (
	RST, 
	CLK, 
	SYNC_RST, 
	test_si, 
	test_se);
   input RST;
   input CLK;
   output SYNC_RST;
   input test_si;
   input test_se;

   // Internal wires
   wire HTIE_LTIEHI_NET;
   wire \sync_reg[0] ;

   TIEHIM HTIE_LTIEHI (.Y(HTIE_LTIEHI_NET));
   SDFFRQX2M \sync_reg_reg[0]  (.SI(test_si), 
	.SE(test_se), 
	.RN(RST), 
	.Q(\sync_reg[0] ), 
	.D(HTIE_LTIEHI_NET), 
	.CK(CLK));
   SDFFRQX1M \sync_reg_reg[1]  (.SI(\sync_reg[0] ), 
	.SE(test_se), 
	.RN(RST), 
	.Q(SYNC_RST), 
	.D(\sync_reg[0] ), 
	.CK(CLK));
endmodule

module DATA_SYNC_NUM_STAGES2_BUS_WIDTH8_test_1 (
	CLK, 
	RST, 
	unsync_bus, 
	bus_enable, 
	sync_bus, 
	enable_pulse_d, 
	test_si, 
	test_so, 
	test_se, 
	FE_OFN14_SE, 
	REF_SCAN_CLK__L1_N1);
   input CLK;
   input RST;
   input [7:0] unsync_bus;
   input bus_enable;
   output [7:0] sync_bus;
   output enable_pulse_d;
   input test_si;
   output test_so;
   input test_se;
   input FE_OFN14_SE;
   input REF_SCAN_CLK__L1_N1;

   // Internal wires
   wire enable_flop;
   wire n1;
   wire n4;
   wire n6;
   wire n8;
   wire n10;
   wire n12;
   wire n14;
   wire n16;
   wire n18;
   wire n23;
   wire [1:0] sync_reg;

   assign test_so = sync_reg[1] ;

   SDFFRQX2M enable_flop_reg (.SI(test_si), 
	.SE(FE_OFN14_SE), 
	.RN(RST), 
	.Q(enable_flop), 
	.D(sync_reg[1]), 
	.CK(CLK));
   SDFFRQX2M \sync_bus_reg[7]  (.SI(sync_bus[6]), 
	.SE(test_se), 
	.RN(RST), 
	.Q(sync_bus[7]), 
	.D(n18), 
	.CK(CLK));
   SDFFRQX2M \sync_bus_reg[5]  (.SI(sync_bus[4]), 
	.SE(test_se), 
	.RN(RST), 
	.Q(sync_bus[5]), 
	.D(n14), 
	.CK(CLK));
   SDFFRQX2M \sync_bus_reg[6]  (.SI(sync_bus[5]), 
	.SE(test_se), 
	.RN(RST), 
	.Q(sync_bus[6]), 
	.D(n16), 
	.CK(CLK));
   SDFFRQX2M \sync_bus_reg[4]  (.SI(sync_bus[3]), 
	.SE(test_se), 
	.RN(RST), 
	.Q(sync_bus[4]), 
	.D(n12), 
	.CK(CLK));
   SDFFRQX2M \sync_bus_reg[3]  (.SI(sync_bus[2]), 
	.SE(FE_OFN14_SE), 
	.RN(RST), 
	.Q(sync_bus[3]), 
	.D(n10), 
	.CK(CLK));
   SDFFRQX2M \sync_bus_reg[0]  (.SI(enable_pulse_d), 
	.SE(FE_OFN14_SE), 
	.RN(RST), 
	.Q(sync_bus[0]), 
	.D(n4), 
	.CK(CLK));
   SDFFRQX2M \sync_bus_reg[2]  (.SI(sync_bus[1]), 
	.SE(FE_OFN14_SE), 
	.RN(RST), 
	.Q(sync_bus[2]), 
	.D(n8), 
	.CK(CLK));
   SDFFRQX2M \sync_bus_reg[1]  (.SI(sync_bus[0]), 
	.SE(FE_OFN14_SE), 
	.RN(RST), 
	.Q(sync_bus[1]), 
	.D(n6), 
	.CK(CLK));
   SDFFRQX2M enable_pulse_d_reg (.SI(enable_flop), 
	.SE(FE_OFN14_SE), 
	.RN(RST), 
	.Q(enable_pulse_d), 
	.D(n23), 
	.CK(CLK));
   SDFFRQX2M \sync_reg_reg[0]  (.SI(sync_bus[7]), 
	.SE(test_se), 
	.RN(RST), 
	.Q(sync_reg[0]), 
	.D(bus_enable), 
	.CK(CLK));
   SDFFRQX1M \sync_reg_reg[1]  (.SI(sync_reg[0]), 
	.SE(test_se), 
	.RN(RST), 
	.Q(sync_reg[1]), 
	.D(sync_reg[0]), 
	.CK(REF_SCAN_CLK__L1_N1));
   INVX2M U4 (.Y(n23), 
	.A(n1));
   NAND2BX2M U5 (.Y(n1), 
	.B(sync_reg[1]), 
	.AN(enable_flop));
   AO22X1M U6 (.Y(n4), 
	.B1(n1), 
	.B0(sync_bus[0]), 
	.A1(n23), 
	.A0(unsync_bus[0]));
   AO22X1M U7 (.Y(n6), 
	.B1(n1), 
	.B0(sync_bus[1]), 
	.A1(n23), 
	.A0(unsync_bus[1]));
   AO22X1M U8 (.Y(n8), 
	.B1(n1), 
	.B0(sync_bus[2]), 
	.A1(n23), 
	.A0(unsync_bus[2]));
   AO22X1M U9 (.Y(n10), 
	.B1(n1), 
	.B0(sync_bus[3]), 
	.A1(n23), 
	.A0(unsync_bus[3]));
   AO22X1M U10 (.Y(n12), 
	.B1(n1), 
	.B0(sync_bus[4]), 
	.A1(n23), 
	.A0(unsync_bus[4]));
   AO22X1M U11 (.Y(n14), 
	.B1(n1), 
	.B0(sync_bus[5]), 
	.A1(n23), 
	.A0(unsync_bus[5]));
   AO22X1M U12 (.Y(n16), 
	.B1(n1), 
	.B0(sync_bus[6]), 
	.A1(n23), 
	.A0(unsync_bus[6]));
   AO22X1M U25 (.Y(n18), 
	.B1(n1), 
	.B0(sync_bus[7]), 
	.A1(n23), 
	.A0(unsync_bus[7]));
endmodule

module fifo_mem_D_SIZE8_F_DEPTH8_P_SIZE4_test_1 (
	w_clk, 
	w_rstn, 
	w_full, 
	w_inc, 
	w_addr, 
	r_addr, 
	w_data, 
	r_data, 
	test_si2, 
	test_si1, 
	test_so2, 
	test_so1, 
	test_se, 
	FE_OFN4_SYNC_REF_SCAN_RST, 
	FE_OFN14_SE, 
	FE_OFN15_SE, 
	FE_OFN16_SE);
   input w_clk;
   input w_rstn;
   input w_full;
   input w_inc;
   input [2:0] w_addr;
   input [2:0] r_addr;
   input [7:0] w_data;
   output [7:0] r_data;
   input test_si2;
   input test_si1;
   output test_so2;
   output test_so1;
   input test_se;
   input FE_OFN4_SYNC_REF_SCAN_RST;
   input FE_OFN14_SE;
   input FE_OFN15_SE;
   input FE_OFN16_SE;

   // Internal wires
   wire FE_PHN2_SI_0_;
   wire FE_PHN1_SI_0_;
   wire FE_PHN0_SI_0_;
   wire N9;
   wire N10;
   wire N11;
   wire \FIFO_MEM[7][7] ;
   wire \FIFO_MEM[7][6] ;
   wire \FIFO_MEM[7][5] ;
   wire \FIFO_MEM[7][4] ;
   wire \FIFO_MEM[7][3] ;
   wire \FIFO_MEM[7][2] ;
   wire \FIFO_MEM[7][1] ;
   wire \FIFO_MEM[7][0] ;
   wire \FIFO_MEM[6][7] ;
   wire \FIFO_MEM[6][6] ;
   wire \FIFO_MEM[6][5] ;
   wire \FIFO_MEM[6][4] ;
   wire \FIFO_MEM[6][3] ;
   wire \FIFO_MEM[6][2] ;
   wire \FIFO_MEM[6][1] ;
   wire \FIFO_MEM[6][0] ;
   wire \FIFO_MEM[5][7] ;
   wire \FIFO_MEM[5][6] ;
   wire \FIFO_MEM[5][5] ;
   wire \FIFO_MEM[5][4] ;
   wire \FIFO_MEM[5][3] ;
   wire \FIFO_MEM[5][2] ;
   wire \FIFO_MEM[5][1] ;
   wire \FIFO_MEM[5][0] ;
   wire \FIFO_MEM[4][7] ;
   wire \FIFO_MEM[4][6] ;
   wire \FIFO_MEM[4][5] ;
   wire \FIFO_MEM[4][4] ;
   wire \FIFO_MEM[4][3] ;
   wire \FIFO_MEM[4][2] ;
   wire \FIFO_MEM[4][1] ;
   wire \FIFO_MEM[4][0] ;
   wire \FIFO_MEM[3][7] ;
   wire \FIFO_MEM[3][6] ;
   wire \FIFO_MEM[3][5] ;
   wire \FIFO_MEM[3][4] ;
   wire \FIFO_MEM[3][3] ;
   wire \FIFO_MEM[3][2] ;
   wire \FIFO_MEM[3][1] ;
   wire \FIFO_MEM[3][0] ;
   wire \FIFO_MEM[2][7] ;
   wire \FIFO_MEM[2][6] ;
   wire \FIFO_MEM[2][5] ;
   wire \FIFO_MEM[2][4] ;
   wire \FIFO_MEM[2][3] ;
   wire \FIFO_MEM[2][2] ;
   wire \FIFO_MEM[2][1] ;
   wire \FIFO_MEM[2][0] ;
   wire \FIFO_MEM[1][7] ;
   wire \FIFO_MEM[1][6] ;
   wire \FIFO_MEM[1][5] ;
   wire \FIFO_MEM[1][4] ;
   wire \FIFO_MEM[1][3] ;
   wire \FIFO_MEM[1][2] ;
   wire \FIFO_MEM[1][1] ;
   wire \FIFO_MEM[1][0] ;
   wire \FIFO_MEM[0][7] ;
   wire \FIFO_MEM[0][6] ;
   wire \FIFO_MEM[0][5] ;
   wire \FIFO_MEM[0][4] ;
   wire \FIFO_MEM[0][3] ;
   wire \FIFO_MEM[0][2] ;
   wire \FIFO_MEM[0][1] ;
   wire \FIFO_MEM[0][0] ;
   wire n75;
   wire n76;
   wire n77;
   wire n78;
   wire n79;
   wire n80;
   wire n81;
   wire n82;
   wire n83;
   wire n84;
   wire n85;
   wire n86;
   wire n87;
   wire n88;
   wire n89;
   wire n90;
   wire n91;
   wire n92;
   wire n93;
   wire n94;
   wire n95;
   wire n96;
   wire n97;
   wire n98;
   wire n99;
   wire n100;
   wire n101;
   wire n102;
   wire n103;
   wire n104;
   wire n105;
   wire n106;
   wire n107;
   wire n108;
   wire n109;
   wire n110;
   wire n111;
   wire n112;
   wire n113;
   wire n114;
   wire n115;
   wire n116;
   wire n117;
   wire n118;
   wire n119;
   wire n120;
   wire n121;
   wire n122;
   wire n123;
   wire n124;
   wire n125;
   wire n126;
   wire n127;
   wire n128;
   wire n129;
   wire n130;
   wire n131;
   wire n132;
   wire n133;
   wire n134;
   wire n135;
   wire n136;
   wire n137;
   wire n138;
   wire n139;
   wire n140;
   wire n141;
   wire n142;
   wire n143;
   wire n144;
   wire n145;
   wire n146;
   wire n147;
   wire n148;
   wire n149;
   wire n65;
   wire n66;
   wire n67;
   wire n68;
   wire n69;
   wire n70;
   wire n71;
   wire n72;
   wire n73;
   wire n74;
   wire n150;
   wire n151;
   wire n152;
   wire n153;
   wire n154;
   wire n155;
   wire n156;
   wire n157;
   wire n170;
   wire n171;
   wire n172;
   wire n173;
   wire n174;
   wire n175;
   wire n176;
   wire n177;
   wire n178;
   wire n179;

   assign N9 = r_addr[0] ;
   assign N10 = r_addr[1] ;
   assign N11 = r_addr[2] ;
   assign test_so2 = \FIFO_MEM[7][7]  ;
   assign test_so1 = \FIFO_MEM[3][4]  ;

   DLY4X1M FE_PHC2_SI_0_ (.Y(FE_PHN2_SI_0_), 
	.A(FE_PHN1_SI_0_));
   DLY4X1M FE_PHC1_SI_0_ (.Y(FE_PHN1_SI_0_), 
	.A(FE_PHN0_SI_0_));
   DLY4X1M FE_PHC0_SI_0_ (.Y(FE_PHN0_SI_0_), 
	.A(test_si2));
   SDFFRQX2M \FIFO_MEM_reg[5][7]  (.SI(\FIFO_MEM[5][6] ), 
	.SE(FE_OFN15_SE), 
	.RN(FE_OFN4_SYNC_REF_SCAN_RST), 
	.Q(\FIFO_MEM[5][7] ), 
	.D(n133), 
	.CK(w_clk));
   SDFFRQX2M \FIFO_MEM_reg[5][6]  (.SI(\FIFO_MEM[5][5] ), 
	.SE(FE_OFN15_SE), 
	.RN(w_rstn), 
	.Q(\FIFO_MEM[5][6] ), 
	.D(n132), 
	.CK(w_clk));
   SDFFRQX2M \FIFO_MEM_reg[5][5]  (.SI(\FIFO_MEM[5][4] ), 
	.SE(FE_OFN15_SE), 
	.RN(w_rstn), 
	.Q(\FIFO_MEM[5][5] ), 
	.D(n131), 
	.CK(w_clk));
   SDFFRQX2M \FIFO_MEM_reg[5][4]  (.SI(\FIFO_MEM[5][3] ), 
	.SE(FE_OFN16_SE), 
	.RN(w_rstn), 
	.Q(\FIFO_MEM[5][4] ), 
	.D(n130), 
	.CK(w_clk));
   SDFFRQX2M \FIFO_MEM_reg[5][3]  (.SI(\FIFO_MEM[5][2] ), 
	.SE(FE_OFN16_SE), 
	.RN(w_rstn), 
	.Q(\FIFO_MEM[5][3] ), 
	.D(n129), 
	.CK(w_clk));
   SDFFRQX2M \FIFO_MEM_reg[5][2]  (.SI(\FIFO_MEM[5][1] ), 
	.SE(FE_OFN16_SE), 
	.RN(w_rstn), 
	.Q(\FIFO_MEM[5][2] ), 
	.D(n128), 
	.CK(w_clk));
   SDFFRQX2M \FIFO_MEM_reg[5][1]  (.SI(\FIFO_MEM[5][0] ), 
	.SE(FE_OFN15_SE), 
	.RN(w_rstn), 
	.Q(\FIFO_MEM[5][1] ), 
	.D(n127), 
	.CK(w_clk));
   SDFFRQX2M \FIFO_MEM_reg[5][0]  (.SI(\FIFO_MEM[4][7] ), 
	.SE(FE_OFN15_SE), 
	.RN(FE_OFN4_SYNC_REF_SCAN_RST), 
	.Q(\FIFO_MEM[5][0] ), 
	.D(n126), 
	.CK(w_clk));
   SDFFRQX2M \FIFO_MEM_reg[1][7]  (.SI(\FIFO_MEM[1][6] ), 
	.SE(FE_OFN15_SE), 
	.RN(w_rstn), 
	.Q(\FIFO_MEM[1][7] ), 
	.D(n101), 
	.CK(w_clk));
   SDFFRQX2M \FIFO_MEM_reg[1][6]  (.SI(\FIFO_MEM[1][5] ), 
	.SE(FE_OFN16_SE), 
	.RN(w_rstn), 
	.Q(\FIFO_MEM[1][6] ), 
	.D(n100), 
	.CK(w_clk));
   SDFFRQX2M \FIFO_MEM_reg[1][5]  (.SI(\FIFO_MEM[1][4] ), 
	.SE(FE_OFN16_SE), 
	.RN(w_rstn), 
	.Q(\FIFO_MEM[1][5] ), 
	.D(n99), 
	.CK(w_clk));
   SDFFRQX2M \FIFO_MEM_reg[1][4]  (.SI(\FIFO_MEM[1][3] ), 
	.SE(FE_OFN16_SE), 
	.RN(w_rstn), 
	.Q(\FIFO_MEM[1][4] ), 
	.D(n98), 
	.CK(w_clk));
   SDFFRQX2M \FIFO_MEM_reg[1][3]  (.SI(\FIFO_MEM[1][2] ), 
	.SE(FE_OFN16_SE), 
	.RN(w_rstn), 
	.Q(\FIFO_MEM[1][3] ), 
	.D(n97), 
	.CK(w_clk));
   SDFFRQX2M \FIFO_MEM_reg[1][2]  (.SI(\FIFO_MEM[1][1] ), 
	.SE(FE_OFN16_SE), 
	.RN(w_rstn), 
	.Q(\FIFO_MEM[1][2] ), 
	.D(n96), 
	.CK(w_clk));
   SDFFRQX2M \FIFO_MEM_reg[1][1]  (.SI(\FIFO_MEM[1][0] ), 
	.SE(FE_OFN16_SE), 
	.RN(w_rstn), 
	.Q(\FIFO_MEM[1][1] ), 
	.D(n95), 
	.CK(w_clk));
   SDFFRQX2M \FIFO_MEM_reg[1][0]  (.SI(\FIFO_MEM[0][7] ), 
	.SE(FE_OFN15_SE), 
	.RN(FE_OFN4_SYNC_REF_SCAN_RST), 
	.Q(\FIFO_MEM[1][0] ), 
	.D(n94), 
	.CK(w_clk));
   SDFFRQX2M \FIFO_MEM_reg[7][7]  (.SI(\FIFO_MEM[7][6] ), 
	.SE(FE_OFN14_SE), 
	.RN(FE_OFN4_SYNC_REF_SCAN_RST), 
	.Q(\FIFO_MEM[7][7] ), 
	.D(n149), 
	.CK(w_clk));
   SDFFRQX2M \FIFO_MEM_reg[7][6]  (.SI(\FIFO_MEM[7][5] ), 
	.SE(FE_OFN14_SE), 
	.RN(FE_OFN4_SYNC_REF_SCAN_RST), 
	.Q(\FIFO_MEM[7][6] ), 
	.D(n148), 
	.CK(w_clk));
   SDFFRQX2M \FIFO_MEM_reg[7][5]  (.SI(\FIFO_MEM[7][4] ), 
	.SE(FE_OFN15_SE), 
	.RN(w_rstn), 
	.Q(\FIFO_MEM[7][5] ), 
	.D(n147), 
	.CK(w_clk));
   SDFFRQX2M \FIFO_MEM_reg[7][4]  (.SI(\FIFO_MEM[7][3] ), 
	.SE(FE_OFN15_SE), 
	.RN(w_rstn), 
	.Q(\FIFO_MEM[7][4] ), 
	.D(n146), 
	.CK(w_clk));
   SDFFRQX2M \FIFO_MEM_reg[7][3]  (.SI(\FIFO_MEM[7][2] ), 
	.SE(FE_OFN15_SE), 
	.RN(w_rstn), 
	.Q(\FIFO_MEM[7][3] ), 
	.D(n145), 
	.CK(w_clk));
   SDFFRQX2M \FIFO_MEM_reg[7][2]  (.SI(\FIFO_MEM[7][1] ), 
	.SE(FE_OFN15_SE), 
	.RN(w_rstn), 
	.Q(\FIFO_MEM[7][2] ), 
	.D(n144), 
	.CK(w_clk));
   SDFFRQX2M \FIFO_MEM_reg[7][1]  (.SI(\FIFO_MEM[7][0] ), 
	.SE(FE_OFN15_SE), 
	.RN(w_rstn), 
	.Q(\FIFO_MEM[7][1] ), 
	.D(n143), 
	.CK(w_clk));
   SDFFRQX2M \FIFO_MEM_reg[7][0]  (.SI(\FIFO_MEM[6][7] ), 
	.SE(FE_OFN14_SE), 
	.RN(FE_OFN4_SYNC_REF_SCAN_RST), 
	.Q(\FIFO_MEM[7][0] ), 
	.D(n142), 
	.CK(w_clk));
   SDFFRQX2M \FIFO_MEM_reg[3][7]  (.SI(\FIFO_MEM[3][6] ), 
	.SE(FE_OFN15_SE), 
	.RN(FE_OFN4_SYNC_REF_SCAN_RST), 
	.Q(\FIFO_MEM[3][7] ), 
	.D(n117), 
	.CK(w_clk));
   SDFFRQX2M \FIFO_MEM_reg[3][6]  (.SI(\FIFO_MEM[3][5] ), 
	.SE(FE_OFN15_SE), 
	.RN(FE_OFN4_SYNC_REF_SCAN_RST), 
	.Q(\FIFO_MEM[3][6] ), 
	.D(n116), 
	.CK(w_clk));
   SDFFRQX2M \FIFO_MEM_reg[3][5]  (.SI(FE_PHN2_SI_0_), 
	.SE(FE_OFN15_SE), 
	.RN(w_rstn), 
	.Q(\FIFO_MEM[3][5] ), 
	.D(n115), 
	.CK(w_clk));
   SDFFRQX2M \FIFO_MEM_reg[3][4]  (.SI(\FIFO_MEM[3][3] ), 
	.SE(FE_OFN16_SE), 
	.RN(w_rstn), 
	.Q(\FIFO_MEM[3][4] ), 
	.D(n114), 
	.CK(w_clk));
   SDFFRQX2M \FIFO_MEM_reg[3][3]  (.SI(\FIFO_MEM[3][2] ), 
	.SE(FE_OFN16_SE), 
	.RN(w_rstn), 
	.Q(\FIFO_MEM[3][3] ), 
	.D(n113), 
	.CK(w_clk));
   SDFFRQX2M \FIFO_MEM_reg[3][2]  (.SI(\FIFO_MEM[3][1] ), 
	.SE(FE_OFN16_SE), 
	.RN(w_rstn), 
	.Q(\FIFO_MEM[3][2] ), 
	.D(n112), 
	.CK(w_clk));
   SDFFRQX2M \FIFO_MEM_reg[3][1]  (.SI(\FIFO_MEM[3][0] ), 
	.SE(FE_OFN16_SE), 
	.RN(w_rstn), 
	.Q(\FIFO_MEM[3][1] ), 
	.D(n111), 
	.CK(w_clk));
   SDFFRQX2M \FIFO_MEM_reg[3][0]  (.SI(\FIFO_MEM[2][7] ), 
	.SE(FE_OFN15_SE), 
	.RN(FE_OFN4_SYNC_REF_SCAN_RST), 
	.Q(\FIFO_MEM[3][0] ), 
	.D(n110), 
	.CK(w_clk));
   SDFFRQX2M \FIFO_MEM_reg[6][7]  (.SI(\FIFO_MEM[6][6] ), 
	.SE(FE_OFN14_SE), 
	.RN(FE_OFN4_SYNC_REF_SCAN_RST), 
	.Q(\FIFO_MEM[6][7] ), 
	.D(n141), 
	.CK(w_clk));
   SDFFRQX2M \FIFO_MEM_reg[6][6]  (.SI(\FIFO_MEM[6][5] ), 
	.SE(FE_OFN14_SE), 
	.RN(FE_OFN4_SYNC_REF_SCAN_RST), 
	.Q(\FIFO_MEM[6][6] ), 
	.D(n140), 
	.CK(w_clk));
   SDFFRQX2M \FIFO_MEM_reg[6][5]  (.SI(\FIFO_MEM[6][4] ), 
	.SE(FE_OFN15_SE), 
	.RN(w_rstn), 
	.Q(\FIFO_MEM[6][5] ), 
	.D(n139), 
	.CK(w_clk));
   SDFFRQX2M \FIFO_MEM_reg[6][4]  (.SI(\FIFO_MEM[6][3] ), 
	.SE(FE_OFN16_SE), 
	.RN(w_rstn), 
	.Q(\FIFO_MEM[6][4] ), 
	.D(n138), 
	.CK(w_clk));
   SDFFRQX2M \FIFO_MEM_reg[6][3]  (.SI(\FIFO_MEM[6][2] ), 
	.SE(FE_OFN16_SE), 
	.RN(w_rstn), 
	.Q(\FIFO_MEM[6][3] ), 
	.D(n137), 
	.CK(w_clk));
   SDFFRQX2M \FIFO_MEM_reg[6][2]  (.SI(\FIFO_MEM[6][1] ), 
	.SE(FE_OFN16_SE), 
	.RN(w_rstn), 
	.Q(\FIFO_MEM[6][2] ), 
	.D(n136), 
	.CK(w_clk));
   SDFFRQX2M \FIFO_MEM_reg[6][1]  (.SI(\FIFO_MEM[6][0] ), 
	.SE(FE_OFN15_SE), 
	.RN(w_rstn), 
	.Q(\FIFO_MEM[6][1] ), 
	.D(n135), 
	.CK(w_clk));
   SDFFRQX2M \FIFO_MEM_reg[6][0]  (.SI(\FIFO_MEM[5][7] ), 
	.SE(FE_OFN14_SE), 
	.RN(FE_OFN4_SYNC_REF_SCAN_RST), 
	.Q(\FIFO_MEM[6][0] ), 
	.D(n134), 
	.CK(w_clk));
   SDFFRQX2M \FIFO_MEM_reg[2][7]  (.SI(\FIFO_MEM[2][6] ), 
	.SE(FE_OFN15_SE), 
	.RN(w_rstn), 
	.Q(\FIFO_MEM[2][7] ), 
	.D(n109), 
	.CK(w_clk));
   SDFFRQX2M \FIFO_MEM_reg[2][6]  (.SI(\FIFO_MEM[2][5] ), 
	.SE(FE_OFN16_SE), 
	.RN(w_rstn), 
	.Q(\FIFO_MEM[2][6] ), 
	.D(n108), 
	.CK(w_clk));
   SDFFRQX2M \FIFO_MEM_reg[2][5]  (.SI(\FIFO_MEM[2][4] ), 
	.SE(FE_OFN16_SE), 
	.RN(w_rstn), 
	.Q(\FIFO_MEM[2][5] ), 
	.D(n107), 
	.CK(w_clk));
   SDFFRQX2M \FIFO_MEM_reg[2][4]  (.SI(\FIFO_MEM[2][3] ), 
	.SE(FE_OFN16_SE), 
	.RN(w_rstn), 
	.Q(\FIFO_MEM[2][4] ), 
	.D(n106), 
	.CK(w_clk));
   SDFFRQX2M \FIFO_MEM_reg[2][3]  (.SI(\FIFO_MEM[2][2] ), 
	.SE(FE_OFN16_SE), 
	.RN(w_rstn), 
	.Q(\FIFO_MEM[2][3] ), 
	.D(n105), 
	.CK(w_clk));
   SDFFRQX2M \FIFO_MEM_reg[2][2]  (.SI(\FIFO_MEM[2][1] ), 
	.SE(FE_OFN16_SE), 
	.RN(w_rstn), 
	.Q(\FIFO_MEM[2][2] ), 
	.D(n104), 
	.CK(w_clk));
   SDFFRQX2M \FIFO_MEM_reg[2][1]  (.SI(\FIFO_MEM[2][0] ), 
	.SE(FE_OFN16_SE), 
	.RN(w_rstn), 
	.Q(\FIFO_MEM[2][1] ), 
	.D(n103), 
	.CK(w_clk));
   SDFFRQX2M \FIFO_MEM_reg[2][0]  (.SI(\FIFO_MEM[1][7] ), 
	.SE(FE_OFN16_SE), 
	.RN(w_rstn), 
	.Q(\FIFO_MEM[2][0] ), 
	.D(n102), 
	.CK(w_clk));
   SDFFRQX2M \FIFO_MEM_reg[4][7]  (.SI(\FIFO_MEM[4][6] ), 
	.SE(FE_OFN15_SE), 
	.RN(FE_OFN4_SYNC_REF_SCAN_RST), 
	.Q(\FIFO_MEM[4][7] ), 
	.D(n125), 
	.CK(w_clk));
   SDFFRQX2M \FIFO_MEM_reg[4][6]  (.SI(\FIFO_MEM[4][5] ), 
	.SE(FE_OFN15_SE), 
	.RN(FE_OFN4_SYNC_REF_SCAN_RST), 
	.Q(\FIFO_MEM[4][6] ), 
	.D(n124), 
	.CK(w_clk));
   SDFFRQX2M \FIFO_MEM_reg[4][5]  (.SI(\FIFO_MEM[4][4] ), 
	.SE(FE_OFN15_SE), 
	.RN(w_rstn), 
	.Q(\FIFO_MEM[4][5] ), 
	.D(n123), 
	.CK(w_clk));
   SDFFRQX2M \FIFO_MEM_reg[4][4]  (.SI(\FIFO_MEM[4][3] ), 
	.SE(FE_OFN16_SE), 
	.RN(w_rstn), 
	.Q(\FIFO_MEM[4][4] ), 
	.D(n122), 
	.CK(w_clk));
   SDFFRQX2M \FIFO_MEM_reg[4][3]  (.SI(\FIFO_MEM[4][2] ), 
	.SE(FE_OFN16_SE), 
	.RN(w_rstn), 
	.Q(\FIFO_MEM[4][3] ), 
	.D(n121), 
	.CK(w_clk));
   SDFFRQX2M \FIFO_MEM_reg[4][2]  (.SI(\FIFO_MEM[4][1] ), 
	.SE(FE_OFN16_SE), 
	.RN(w_rstn), 
	.Q(\FIFO_MEM[4][2] ), 
	.D(n120), 
	.CK(w_clk));
   SDFFRQX2M \FIFO_MEM_reg[4][1]  (.SI(\FIFO_MEM[4][0] ), 
	.SE(FE_OFN15_SE), 
	.RN(w_rstn), 
	.Q(\FIFO_MEM[4][1] ), 
	.D(n119), 
	.CK(w_clk));
   SDFFRQX2M \FIFO_MEM_reg[4][0]  (.SI(\FIFO_MEM[3][7] ), 
	.SE(FE_OFN15_SE), 
	.RN(FE_OFN4_SYNC_REF_SCAN_RST), 
	.Q(\FIFO_MEM[4][0] ), 
	.D(n118), 
	.CK(w_clk));
   SDFFRQX2M \FIFO_MEM_reg[0][7]  (.SI(\FIFO_MEM[0][6] ), 
	.SE(FE_OFN15_SE), 
	.RN(FE_OFN4_SYNC_REF_SCAN_RST), 
	.Q(\FIFO_MEM[0][7] ), 
	.D(n93), 
	.CK(w_clk));
   SDFFRQX2M \FIFO_MEM_reg[0][6]  (.SI(\FIFO_MEM[0][5] ), 
	.SE(FE_OFN16_SE), 
	.RN(w_rstn), 
	.Q(\FIFO_MEM[0][6] ), 
	.D(n92), 
	.CK(w_clk));
   SDFFRQX2M \FIFO_MEM_reg[0][5]  (.SI(\FIFO_MEM[0][4] ), 
	.SE(FE_OFN16_SE), 
	.RN(w_rstn), 
	.Q(\FIFO_MEM[0][5] ), 
	.D(n91), 
	.CK(w_clk));
   SDFFRQX2M \FIFO_MEM_reg[0][4]  (.SI(\FIFO_MEM[0][3] ), 
	.SE(FE_OFN16_SE), 
	.RN(w_rstn), 
	.Q(\FIFO_MEM[0][4] ), 
	.D(n90), 
	.CK(w_clk));
   SDFFRQX2M \FIFO_MEM_reg[0][3]  (.SI(\FIFO_MEM[0][2] ), 
	.SE(FE_OFN16_SE), 
	.RN(w_rstn), 
	.Q(\FIFO_MEM[0][3] ), 
	.D(n89), 
	.CK(w_clk));
   SDFFRQX2M \FIFO_MEM_reg[0][2]  (.SI(\FIFO_MEM[0][1] ), 
	.SE(FE_OFN16_SE), 
	.RN(w_rstn), 
	.Q(\FIFO_MEM[0][2] ), 
	.D(n88), 
	.CK(w_clk));
   SDFFRQX2M \FIFO_MEM_reg[0][1]  (.SI(\FIFO_MEM[0][0] ), 
	.SE(FE_OFN16_SE), 
	.RN(w_rstn), 
	.Q(\FIFO_MEM[0][1] ), 
	.D(n87), 
	.CK(w_clk));
   SDFFRQX2M \FIFO_MEM_reg[0][0]  (.SI(test_si1), 
	.SE(test_se), 
	.RN(FE_OFN4_SYNC_REF_SCAN_RST), 
	.Q(\FIFO_MEM[0][0] ), 
	.D(n86), 
	.CK(w_clk));
   NOR2BX2M U76 (.Y(n80), 
	.B(w_full), 
	.AN(w_inc));
   NAND3X2M U79 (.Y(n81), 
	.C(n82), 
	.B(n179), 
	.A(n178));
   NAND3X2M U80 (.Y(n75), 
	.C(n76), 
	.B(n179), 
	.A(n178));
   NAND3X2M U81 (.Y(n79), 
	.C(w_addr[1]), 
	.B(n76), 
	.A(w_addr[0]));
   NAND3X2M U82 (.Y(n77), 
	.C(w_addr[0]), 
	.B(n179), 
	.A(n76));
   NOR2BX2M U83 (.Y(n76), 
	.B(w_addr[2]), 
	.AN(n80));
   INVX2M U84 (.Y(n170), 
	.A(w_data[0]));
   INVX2M U85 (.Y(n171), 
	.A(w_data[1]));
   INVX2M U86 (.Y(n172), 
	.A(w_data[2]));
   INVX2M U87 (.Y(n173), 
	.A(w_data[3]));
   INVX2M U88 (.Y(n174), 
	.A(w_data[4]));
   INVX2M U89 (.Y(n175), 
	.A(w_data[5]));
   INVX2M U90 (.Y(n176), 
	.A(w_data[6]));
   INVX2M U91 (.Y(n177), 
	.A(w_data[7]));
   OAI2BB2X1M U92 (.Y(n86), 
	.B1(n170), 
	.B0(n75), 
	.A1N(n75), 
	.A0N(\FIFO_MEM[0][0] ));
   OAI2BB2X1M U93 (.Y(n87), 
	.B1(n171), 
	.B0(n75), 
	.A1N(n75), 
	.A0N(\FIFO_MEM[0][1] ));
   OAI2BB2X1M U94 (.Y(n88), 
	.B1(n172), 
	.B0(n75), 
	.A1N(n75), 
	.A0N(\FIFO_MEM[0][2] ));
   OAI2BB2X1M U95 (.Y(n89), 
	.B1(n173), 
	.B0(n75), 
	.A1N(n75), 
	.A0N(\FIFO_MEM[0][3] ));
   OAI2BB2X1M U96 (.Y(n90), 
	.B1(n174), 
	.B0(n75), 
	.A1N(n75), 
	.A0N(\FIFO_MEM[0][4] ));
   OAI2BB2X1M U97 (.Y(n91), 
	.B1(n175), 
	.B0(n75), 
	.A1N(n75), 
	.A0N(\FIFO_MEM[0][5] ));
   OAI2BB2X1M U98 (.Y(n92), 
	.B1(n176), 
	.B0(n75), 
	.A1N(n75), 
	.A0N(\FIFO_MEM[0][6] ));
   OAI2BB2X1M U99 (.Y(n93), 
	.B1(n177), 
	.B0(n75), 
	.A1N(n75), 
	.A0N(\FIFO_MEM[0][7] ));
   OAI2BB2X1M U100 (.Y(n110), 
	.B1(n79), 
	.B0(n170), 
	.A1N(n79), 
	.A0N(\FIFO_MEM[3][0] ));
   OAI2BB2X1M U101 (.Y(n111), 
	.B1(n79), 
	.B0(n171), 
	.A1N(n79), 
	.A0N(\FIFO_MEM[3][1] ));
   OAI2BB2X1M U102 (.Y(n112), 
	.B1(n79), 
	.B0(n172), 
	.A1N(n79), 
	.A0N(\FIFO_MEM[3][2] ));
   OAI2BB2X1M U103 (.Y(n113), 
	.B1(n79), 
	.B0(n173), 
	.A1N(n79), 
	.A0N(\FIFO_MEM[3][3] ));
   OAI2BB2X1M U104 (.Y(n114), 
	.B1(n79), 
	.B0(n174), 
	.A1N(n79), 
	.A0N(\FIFO_MEM[3][4] ));
   OAI2BB2X1M U105 (.Y(n115), 
	.B1(n79), 
	.B0(n175), 
	.A1N(n79), 
	.A0N(\FIFO_MEM[3][5] ));
   OAI2BB2X1M U106 (.Y(n116), 
	.B1(n79), 
	.B0(n176), 
	.A1N(n79), 
	.A0N(\FIFO_MEM[3][6] ));
   OAI2BB2X1M U107 (.Y(n117), 
	.B1(n79), 
	.B0(n177), 
	.A1N(n79), 
	.A0N(\FIFO_MEM[3][7] ));
   OAI2BB2X1M U108 (.Y(n94), 
	.B1(n77), 
	.B0(n170), 
	.A1N(n77), 
	.A0N(\FIFO_MEM[1][0] ));
   OAI2BB2X1M U109 (.Y(n95), 
	.B1(n77), 
	.B0(n171), 
	.A1N(n77), 
	.A0N(\FIFO_MEM[1][1] ));
   OAI2BB2X1M U110 (.Y(n96), 
	.B1(n77), 
	.B0(n172), 
	.A1N(n77), 
	.A0N(\FIFO_MEM[1][2] ));
   OAI2BB2X1M U111 (.Y(n97), 
	.B1(n77), 
	.B0(n173), 
	.A1N(n77), 
	.A0N(\FIFO_MEM[1][3] ));
   OAI2BB2X1M U112 (.Y(n98), 
	.B1(n77), 
	.B0(n174), 
	.A1N(n77), 
	.A0N(\FIFO_MEM[1][4] ));
   OAI2BB2X1M U113 (.Y(n99), 
	.B1(n77), 
	.B0(n175), 
	.A1N(n77), 
	.A0N(\FIFO_MEM[1][5] ));
   OAI2BB2X1M U114 (.Y(n100), 
	.B1(n77), 
	.B0(n176), 
	.A1N(n77), 
	.A0N(\FIFO_MEM[1][6] ));
   OAI2BB2X1M U115 (.Y(n101), 
	.B1(n77), 
	.B0(n177), 
	.A1N(n77), 
	.A0N(\FIFO_MEM[1][7] ));
   OAI2BB2X1M U116 (.Y(n118), 
	.B1(n81), 
	.B0(n170), 
	.A1N(n81), 
	.A0N(\FIFO_MEM[4][0] ));
   OAI2BB2X1M U117 (.Y(n119), 
	.B1(n81), 
	.B0(n171), 
	.A1N(n81), 
	.A0N(\FIFO_MEM[4][1] ));
   OAI2BB2X1M U118 (.Y(n120), 
	.B1(n81), 
	.B0(n172), 
	.A1N(n81), 
	.A0N(\FIFO_MEM[4][2] ));
   OAI2BB2X1M U119 (.Y(n121), 
	.B1(n81), 
	.B0(n173), 
	.A1N(n81), 
	.A0N(\FIFO_MEM[4][3] ));
   OAI2BB2X1M U120 (.Y(n122), 
	.B1(n81), 
	.B0(n174), 
	.A1N(n81), 
	.A0N(\FIFO_MEM[4][4] ));
   OAI2BB2X1M U121 (.Y(n123), 
	.B1(n81), 
	.B0(n175), 
	.A1N(n81), 
	.A0N(\FIFO_MEM[4][5] ));
   OAI2BB2X1M U122 (.Y(n124), 
	.B1(n81), 
	.B0(n176), 
	.A1N(n81), 
	.A0N(\FIFO_MEM[4][6] ));
   OAI2BB2X1M U123 (.Y(n125), 
	.B1(n81), 
	.B0(n177), 
	.A1N(n81), 
	.A0N(\FIFO_MEM[4][7] ));
   OAI2BB2X1M U124 (.Y(n102), 
	.B1(n78), 
	.B0(n170), 
	.A1N(n78), 
	.A0N(\FIFO_MEM[2][0] ));
   OAI2BB2X1M U125 (.Y(n103), 
	.B1(n78), 
	.B0(n171), 
	.A1N(n78), 
	.A0N(\FIFO_MEM[2][1] ));
   OAI2BB2X1M U126 (.Y(n104), 
	.B1(n78), 
	.B0(n172), 
	.A1N(n78), 
	.A0N(\FIFO_MEM[2][2] ));
   OAI2BB2X1M U127 (.Y(n105), 
	.B1(n78), 
	.B0(n173), 
	.A1N(n78), 
	.A0N(\FIFO_MEM[2][3] ));
   OAI2BB2X1M U128 (.Y(n106), 
	.B1(n78), 
	.B0(n174), 
	.A1N(n78), 
	.A0N(\FIFO_MEM[2][4] ));
   OAI2BB2X1M U129 (.Y(n107), 
	.B1(n78), 
	.B0(n175), 
	.A1N(n78), 
	.A0N(\FIFO_MEM[2][5] ));
   OAI2BB2X1M U130 (.Y(n108), 
	.B1(n78), 
	.B0(n176), 
	.A1N(n78), 
	.A0N(\FIFO_MEM[2][6] ));
   OAI2BB2X1M U131 (.Y(n109), 
	.B1(n78), 
	.B0(n177), 
	.A1N(n78), 
	.A0N(\FIFO_MEM[2][7] ));
   OAI2BB2X1M U132 (.Y(n126), 
	.B1(n83), 
	.B0(n170), 
	.A1N(n83), 
	.A0N(\FIFO_MEM[5][0] ));
   OAI2BB2X1M U133 (.Y(n127), 
	.B1(n83), 
	.B0(n171), 
	.A1N(n83), 
	.A0N(\FIFO_MEM[5][1] ));
   OAI2BB2X1M U134 (.Y(n128), 
	.B1(n83), 
	.B0(n172), 
	.A1N(n83), 
	.A0N(\FIFO_MEM[5][2] ));
   OAI2BB2X1M U135 (.Y(n129), 
	.B1(n83), 
	.B0(n173), 
	.A1N(n83), 
	.A0N(\FIFO_MEM[5][3] ));
   OAI2BB2X1M U136 (.Y(n130), 
	.B1(n83), 
	.B0(n174), 
	.A1N(n83), 
	.A0N(\FIFO_MEM[5][4] ));
   OAI2BB2X1M U137 (.Y(n131), 
	.B1(n83), 
	.B0(n175), 
	.A1N(n83), 
	.A0N(\FIFO_MEM[5][5] ));
   OAI2BB2X1M U138 (.Y(n132), 
	.B1(n83), 
	.B0(n176), 
	.A1N(n83), 
	.A0N(\FIFO_MEM[5][6] ));
   OAI2BB2X1M U139 (.Y(n133), 
	.B1(n83), 
	.B0(n177), 
	.A1N(n83), 
	.A0N(\FIFO_MEM[5][7] ));
   OAI2BB2X1M U140 (.Y(n134), 
	.B1(n84), 
	.B0(n170), 
	.A1N(n84), 
	.A0N(\FIFO_MEM[6][0] ));
   OAI2BB2X1M U141 (.Y(n135), 
	.B1(n84), 
	.B0(n171), 
	.A1N(n84), 
	.A0N(\FIFO_MEM[6][1] ));
   OAI2BB2X1M U142 (.Y(n136), 
	.B1(n84), 
	.B0(n172), 
	.A1N(n84), 
	.A0N(\FIFO_MEM[6][2] ));
   OAI2BB2X1M U143 (.Y(n137), 
	.B1(n84), 
	.B0(n173), 
	.A1N(n84), 
	.A0N(\FIFO_MEM[6][3] ));
   OAI2BB2X1M U144 (.Y(n138), 
	.B1(n84), 
	.B0(n174), 
	.A1N(n84), 
	.A0N(\FIFO_MEM[6][4] ));
   OAI2BB2X1M U145 (.Y(n139), 
	.B1(n84), 
	.B0(n175), 
	.A1N(n84), 
	.A0N(\FIFO_MEM[6][5] ));
   OAI2BB2X1M U146 (.Y(n140), 
	.B1(n84), 
	.B0(n176), 
	.A1N(n84), 
	.A0N(\FIFO_MEM[6][6] ));
   OAI2BB2X1M U147 (.Y(n141), 
	.B1(n84), 
	.B0(n177), 
	.A1N(n84), 
	.A0N(\FIFO_MEM[6][7] ));
   OAI2BB2X1M U148 (.Y(n142), 
	.B1(n85), 
	.B0(n170), 
	.A1N(n85), 
	.A0N(\FIFO_MEM[7][0] ));
   OAI2BB2X1M U149 (.Y(n143), 
	.B1(n85), 
	.B0(n171), 
	.A1N(n85), 
	.A0N(\FIFO_MEM[7][1] ));
   OAI2BB2X1M U150 (.Y(n144), 
	.B1(n85), 
	.B0(n172), 
	.A1N(n85), 
	.A0N(\FIFO_MEM[7][2] ));
   OAI2BB2X1M U151 (.Y(n145), 
	.B1(n85), 
	.B0(n173), 
	.A1N(n85), 
	.A0N(\FIFO_MEM[7][3] ));
   OAI2BB2X1M U152 (.Y(n146), 
	.B1(n85), 
	.B0(n174), 
	.A1N(n85), 
	.A0N(\FIFO_MEM[7][4] ));
   OAI2BB2X1M U153 (.Y(n147), 
	.B1(n85), 
	.B0(n175), 
	.A1N(n85), 
	.A0N(\FIFO_MEM[7][5] ));
   OAI2BB2X1M U154 (.Y(n148), 
	.B1(n85), 
	.B0(n176), 
	.A1N(n85), 
	.A0N(\FIFO_MEM[7][6] ));
   OAI2BB2X1M U155 (.Y(n149), 
	.B1(n85), 
	.B0(n177), 
	.A1N(n85), 
	.A0N(\FIFO_MEM[7][7] ));
   AND2X2M U156 (.Y(n82), 
	.B(n80), 
	.A(w_addr[2]));
   NAND3X2M U157 (.Y(n78), 
	.C(w_addr[1]), 
	.B(n178), 
	.A(n76));
   NAND3X2M U158 (.Y(n83), 
	.C(n82), 
	.B(n179), 
	.A(w_addr[0]));
   NAND3X2M U159 (.Y(n84), 
	.C(n82), 
	.B(n178), 
	.A(w_addr[1]));
   NAND3X2M U160 (.Y(n85), 
	.C(n82), 
	.B(w_addr[0]), 
	.A(w_addr[1]));
   INVX2M U161 (.Y(n179), 
	.A(w_addr[1]));
   INVX2M U162 (.Y(n178), 
	.A(w_addr[0]));
   MX2X2M U163 (.Y(r_data[0]), 
	.S0(N11), 
	.B(n65), 
	.A(n66));
   MX4X1M U164 (.Y(n66), 
	.S1(N10), 
	.S0(n157), 
	.D(\FIFO_MEM[3][0] ), 
	.C(\FIFO_MEM[2][0] ), 
	.B(\FIFO_MEM[1][0] ), 
	.A(\FIFO_MEM[0][0] ));
   MX4X1M U165 (.Y(n65), 
	.S1(N10), 
	.S0(n156), 
	.D(\FIFO_MEM[7][0] ), 
	.C(\FIFO_MEM[6][0] ), 
	.B(\FIFO_MEM[5][0] ), 
	.A(\FIFO_MEM[4][0] ));
   MX2X2M U166 (.Y(r_data[1]), 
	.S0(N11), 
	.B(n67), 
	.A(n68));
   MX4X1M U167 (.Y(n68), 
	.S1(N10), 
	.S0(n157), 
	.D(\FIFO_MEM[3][1] ), 
	.C(\FIFO_MEM[2][1] ), 
	.B(\FIFO_MEM[1][1] ), 
	.A(\FIFO_MEM[0][1] ));
   MX4X1M U168 (.Y(n67), 
	.S1(N10), 
	.S0(n156), 
	.D(\FIFO_MEM[7][1] ), 
	.C(\FIFO_MEM[6][1] ), 
	.B(\FIFO_MEM[5][1] ), 
	.A(\FIFO_MEM[4][1] ));
   MX2X2M U169 (.Y(r_data[2]), 
	.S0(N11), 
	.B(n69), 
	.A(n70));
   MX4X1M U170 (.Y(n70), 
	.S1(N10), 
	.S0(n157), 
	.D(\FIFO_MEM[3][2] ), 
	.C(\FIFO_MEM[2][2] ), 
	.B(\FIFO_MEM[1][2] ), 
	.A(\FIFO_MEM[0][2] ));
   MX4X1M U171 (.Y(n69), 
	.S1(N10), 
	.S0(n156), 
	.D(\FIFO_MEM[7][2] ), 
	.C(\FIFO_MEM[6][2] ), 
	.B(\FIFO_MEM[5][2] ), 
	.A(\FIFO_MEM[4][2] ));
   MX2X2M U172 (.Y(r_data[3]), 
	.S0(N11), 
	.B(n71), 
	.A(n72));
   MX4X1M U173 (.Y(n72), 
	.S1(N10), 
	.S0(n157), 
	.D(\FIFO_MEM[3][3] ), 
	.C(\FIFO_MEM[2][3] ), 
	.B(\FIFO_MEM[1][3] ), 
	.A(\FIFO_MEM[0][3] ));
   MX4X1M U174 (.Y(n71), 
	.S1(N10), 
	.S0(n156), 
	.D(\FIFO_MEM[7][3] ), 
	.C(\FIFO_MEM[6][3] ), 
	.B(\FIFO_MEM[5][3] ), 
	.A(\FIFO_MEM[4][3] ));
   MX2X2M U175 (.Y(r_data[4]), 
	.S0(N11), 
	.B(n73), 
	.A(n74));
   MX4X1M U176 (.Y(n74), 
	.S1(N10), 
	.S0(n157), 
	.D(\FIFO_MEM[3][4] ), 
	.C(\FIFO_MEM[2][4] ), 
	.B(\FIFO_MEM[1][4] ), 
	.A(\FIFO_MEM[0][4] ));
   MX4X1M U177 (.Y(n73), 
	.S1(N10), 
	.S0(n156), 
	.D(\FIFO_MEM[7][4] ), 
	.C(\FIFO_MEM[6][4] ), 
	.B(\FIFO_MEM[5][4] ), 
	.A(\FIFO_MEM[4][4] ));
   MX2X2M U178 (.Y(r_data[5]), 
	.S0(N11), 
	.B(n150), 
	.A(n151));
   MX4X1M U179 (.Y(n151), 
	.S1(N10), 
	.S0(n157), 
	.D(\FIFO_MEM[3][5] ), 
	.C(\FIFO_MEM[2][5] ), 
	.B(\FIFO_MEM[1][5] ), 
	.A(\FIFO_MEM[0][5] ));
   MX4X1M U180 (.Y(n150), 
	.S1(N10), 
	.S0(n156), 
	.D(\FIFO_MEM[7][5] ), 
	.C(\FIFO_MEM[6][5] ), 
	.B(\FIFO_MEM[5][5] ), 
	.A(\FIFO_MEM[4][5] ));
   MX2X2M U181 (.Y(r_data[6]), 
	.S0(N11), 
	.B(n152), 
	.A(n153));
   MX4X1M U182 (.Y(n153), 
	.S1(N10), 
	.S0(n157), 
	.D(\FIFO_MEM[3][6] ), 
	.C(\FIFO_MEM[2][6] ), 
	.B(\FIFO_MEM[1][6] ), 
	.A(\FIFO_MEM[0][6] ));
   MX4X1M U183 (.Y(n152), 
	.S1(N10), 
	.S0(n156), 
	.D(\FIFO_MEM[7][6] ), 
	.C(\FIFO_MEM[6][6] ), 
	.B(\FIFO_MEM[5][6] ), 
	.A(\FIFO_MEM[4][6] ));
   MX2X2M U184 (.Y(r_data[7]), 
	.S0(N11), 
	.B(n154), 
	.A(n155));
   MX4X1M U185 (.Y(n155), 
	.S1(N10), 
	.S0(n157), 
	.D(\FIFO_MEM[3][7] ), 
	.C(\FIFO_MEM[2][7] ), 
	.B(\FIFO_MEM[1][7] ), 
	.A(\FIFO_MEM[0][7] ));
   MX4X1M U186 (.Y(n154), 
	.S1(N10), 
	.S0(n156), 
	.D(\FIFO_MEM[7][7] ), 
	.C(\FIFO_MEM[6][7] ), 
	.B(\FIFO_MEM[5][7] ), 
	.A(\FIFO_MEM[4][7] ));
   BUFX2M U187 (.Y(n156), 
	.A(N9));
   BUFX2M U188 (.Y(n157), 
	.A(N9));
endmodule

module fifo_rd_P_SIZE4_test_1 (
	r_clk, 
	r_rstn, 
	r_inc, 
	sync_wr_ptr, 
	rd_addr, 
	empty, 
	gray_rd_ptr, 
	test_si, 
	test_so, 
	test_se, 
	FE_OFN14_SE);
   input r_clk;
   input r_rstn;
   input r_inc;
   input [3:0] sync_wr_ptr;
   output [2:0] rd_addr;
   output empty;
   output [3:0] gray_rd_ptr;
   input test_si;
   output test_so;
   input test_se;
   input FE_OFN14_SE;

   // Internal wires
   wire N89;
   wire N90;
   wire N91;
   wire N92;
   wire n15;
   wire n16;
   wire n17;
   wire n18;
   wire n19;
   wire n21;
   wire n22;
   wire n23;
   wire n24;
   wire n25;
   wire n26;
   wire n27;
   wire n28;
   wire n1;
   wire n2;
   wire n11;
   wire n12;

   assign test_so = N92 ;

   SDFFRQX2M \gray_rd_ptr_reg[1]  (.SI(gray_rd_ptr[0]), 
	.SE(FE_OFN14_SE), 
	.RN(r_rstn), 
	.Q(gray_rd_ptr[1]), 
	.D(N90), 
	.CK(r_clk));
   SDFFRQX2M \rd_ptr_reg[3]  (.SI(n11), 
	.SE(FE_OFN14_SE), 
	.RN(r_rstn), 
	.Q(N92), 
	.D(n25), 
	.CK(r_clk));
   SDFFRQX2M \rd_ptr_reg[0]  (.SI(gray_rd_ptr[3]), 
	.SE(FE_OFN14_SE), 
	.RN(r_rstn), 
	.Q(rd_addr[0]), 
	.D(n28), 
	.CK(r_clk));
   SDFFRQX2M \rd_ptr_reg[2]  (.SI(rd_addr[1]), 
	.SE(FE_OFN14_SE), 
	.RN(r_rstn), 
	.Q(rd_addr[2]), 
	.D(n26), 
	.CK(r_clk));
   SDFFRQX2M \gray_rd_ptr_reg[0]  (.SI(test_si), 
	.SE(FE_OFN14_SE), 
	.RN(r_rstn), 
	.Q(gray_rd_ptr[0]), 
	.D(N89), 
	.CK(r_clk));
   SDFFRQX2M \gray_rd_ptr_reg[3]  (.SI(gray_rd_ptr[2]), 
	.SE(FE_OFN14_SE), 
	.RN(r_rstn), 
	.Q(gray_rd_ptr[3]), 
	.D(N92), 
	.CK(r_clk));
   SDFFRQX2M \gray_rd_ptr_reg[2]  (.SI(gray_rd_ptr[1]), 
	.SE(FE_OFN14_SE), 
	.RN(r_rstn), 
	.Q(gray_rd_ptr[2]), 
	.D(N91), 
	.CK(r_clk));
   SDFFRQX4M \rd_ptr_reg[1]  (.SI(n2), 
	.SE(test_se), 
	.RN(r_rstn), 
	.Q(rd_addr[1]), 
	.D(n27), 
	.CK(r_clk));
   NOR2X2M U12 (.Y(n18), 
	.B(n19), 
	.A(n2));
   XNOR2X2M U13 (.Y(n24), 
	.B(gray_rd_ptr[2]), 
	.A(sync_wr_ptr[2]));
   NAND4X2M U14 (.Y(empty), 
	.D(n24), 
	.C(n23), 
	.B(n22), 
	.A(n21));
   XNOR2X2M U15 (.Y(n21), 
	.B(gray_rd_ptr[1]), 
	.A(sync_wr_ptr[1]));
   XNOR2X2M U16 (.Y(n22), 
	.B(gray_rd_ptr[0]), 
	.A(sync_wr_ptr[0]));
   XNOR2X2M U17 (.Y(n23), 
	.B(gray_rd_ptr[3]), 
	.A(sync_wr_ptr[3]));
   XNOR2X2M U18 (.Y(N90), 
	.B(rd_addr[1]), 
	.A(n11));
   XNOR2X2M U19 (.Y(n26), 
	.B(n17), 
	.A(rd_addr[2]));
   XNOR2X2M U20 (.Y(N89), 
	.B(n2), 
	.A(rd_addr[1]));
   XNOR2X2M U21 (.Y(n28), 
	.B(n19), 
	.A(rd_addr[0]));
   OAI211X2M U22 (.Y(n25), 
	.C0(n16), 
	.B0(n15), 
	.A1(n12), 
	.A0(n1));
   NAND3X2M U23 (.Y(n15), 
	.C(rd_addr[2]), 
	.B(n12), 
	.A(n1));
   INVX2M U24 (.Y(n12), 
	.A(N92));
   INVX2M U25 (.Y(n1), 
	.A(n17));
   NAND2X2M U26 (.Y(n17), 
	.B(n18), 
	.A(rd_addr[1]));
   OAI21X2M U27 (.Y(N91), 
	.B0(n16), 
	.A1(n11), 
	.A0(N92));
   INVX2M U28 (.Y(n11), 
	.A(rd_addr[2]));
   NAND2X2M U29 (.Y(n19), 
	.B(empty), 
	.A(r_inc));
   NAND2X2M U30 (.Y(n16), 
	.B(n11), 
	.A(N92));
   INVX2M U31 (.Y(n2), 
	.A(rd_addr[0]));
   CLKXOR2X2M U32 (.Y(n27), 
	.B(n18), 
	.A(rd_addr[1]));
endmodule

module BIT_SYNC_NUM_STAGES2_BUS_WIDTH4_test_1 (
	CLK, 
	RST, 
	ASYNC, 
	SYNC, 
	test_si, 
	test_se);
   input CLK;
   input RST;
   input [3:0] ASYNC;
   output [3:0] SYNC;
   input test_si;
   input test_se;

   // Internal wires
   wire \sync_reg[3][0] ;
   wire \sync_reg[2][0] ;
   wire \sync_reg[1][0] ;
   wire \sync_reg[0][0] ;

   SDFFRQX2M \sync_reg_reg[3][1]  (.SI(\sync_reg[3][0] ), 
	.SE(test_se), 
	.RN(RST), 
	.Q(SYNC[3]), 
	.D(\sync_reg[3][0] ), 
	.CK(CLK));
   SDFFRQX2M \sync_reg_reg[2][1]  (.SI(\sync_reg[2][0] ), 
	.SE(test_se), 
	.RN(RST), 
	.Q(SYNC[2]), 
	.D(\sync_reg[2][0] ), 
	.CK(CLK));
   SDFFRQX2M \sync_reg_reg[1][1]  (.SI(\sync_reg[1][0] ), 
	.SE(test_se), 
	.RN(RST), 
	.Q(SYNC[1]), 
	.D(\sync_reg[1][0] ), 
	.CK(CLK));
   SDFFRQX2M \sync_reg_reg[0][1]  (.SI(\sync_reg[0][0] ), 
	.SE(test_se), 
	.RN(RST), 
	.Q(SYNC[0]), 
	.D(\sync_reg[0][0] ), 
	.CK(CLK));
   SDFFRQX2M \sync_reg_reg[3][0]  (.SI(SYNC[2]), 
	.SE(test_se), 
	.RN(RST), 
	.Q(\sync_reg[3][0] ), 
	.D(ASYNC[3]), 
	.CK(CLK));
   SDFFRQX2M \sync_reg_reg[2][0]  (.SI(SYNC[1]), 
	.SE(test_se), 
	.RN(RST), 
	.Q(\sync_reg[2][0] ), 
	.D(ASYNC[2]), 
	.CK(CLK));
   SDFFRQX2M \sync_reg_reg[1][0]  (.SI(SYNC[0]), 
	.SE(test_se), 
	.RN(RST), 
	.Q(\sync_reg[1][0] ), 
	.D(ASYNC[1]), 
	.CK(CLK));
   SDFFRQX2M \sync_reg_reg[0][0]  (.SI(test_si), 
	.SE(test_se), 
	.RN(RST), 
	.Q(\sync_reg[0][0] ), 
	.D(ASYNC[0]), 
	.CK(CLK));
endmodule

module fifo_wr_P_SIZE4_test_1 (
	w_clk, 
	w_rstn, 
	w_inc, 
	sync_rd_ptr, 
	w_addr, 
	gray_w_ptr, 
	full, 
	test_si, 
	test_so, 
	test_se, 
	FE_OFN4_SYNC_REF_SCAN_RST, 
	FE_OFN14_SE, 
	FE_OFN15_SE);
   input w_clk;
   input w_rstn;
   input w_inc;
   input [3:0] sync_rd_ptr;
   output [2:0] w_addr;
   output [3:0] gray_w_ptr;
   output full;
   input test_si;
   output test_so;
   input test_se;
   input FE_OFN4_SYNC_REF_SCAN_RST;
   input FE_OFN14_SE;
   input FE_OFN15_SE;

   // Internal wires
   wire N89;
   wire N90;
   wire N91;
   wire N92;
   wire n3;
   wire n4;
   wire n5;
   wire n7;
   wire n8;
   wire n9;
   wire n10;
   wire n11;
   wire n12;
   wire n16;
   wire n19;
   wire n21;
   wire n23;
   wire n1;

   assign test_so = N92 ;

   SDFFRQX2M \w_ptr_reg[3]  (.SI(w_addr[2]), 
	.SE(test_se), 
	.RN(w_rstn), 
	.Q(N92), 
	.D(n16), 
	.CK(w_clk));
   SDFFRQX2M \w_ptr_reg[2]  (.SI(w_addr[1]), 
	.SE(FE_OFN15_SE), 
	.RN(FE_OFN4_SYNC_REF_SCAN_RST), 
	.Q(w_addr[2]), 
	.D(n19), 
	.CK(w_clk));
   SDFFRQX2M \w_ptr_reg[0]  (.SI(gray_w_ptr[3]), 
	.SE(test_se), 
	.RN(FE_OFN4_SYNC_REF_SCAN_RST), 
	.Q(w_addr[0]), 
	.D(n23), 
	.CK(w_clk));
   SDFFRQX2M \gray_w_ptr_reg[0]  (.SI(test_si), 
	.SE(test_se), 
	.RN(w_rstn), 
	.Q(gray_w_ptr[0]), 
	.D(N89), 
	.CK(w_clk));
   SDFFRQX2M \gray_w_ptr_reg[1]  (.SI(gray_w_ptr[0]), 
	.SE(test_se), 
	.RN(w_rstn), 
	.Q(gray_w_ptr[1]), 
	.D(N90), 
	.CK(w_clk));
   SDFFRQX2M \gray_w_ptr_reg[3]  (.SI(gray_w_ptr[2]), 
	.SE(test_se), 
	.RN(w_rstn), 
	.Q(gray_w_ptr[3]), 
	.D(N92), 
	.CK(w_clk));
   SDFFRQX2M \gray_w_ptr_reg[2]  (.SI(gray_w_ptr[1]), 
	.SE(FE_OFN14_SE), 
	.RN(w_rstn), 
	.Q(gray_w_ptr[2]), 
	.D(N91), 
	.CK(w_clk));
   SDFFRQX2M \w_ptr_reg[1]  (.SI(n1), 
	.SE(test_se), 
	.RN(w_rstn), 
	.Q(w_addr[1]), 
	.D(n21), 
	.CK(w_clk));
   NOR2X2M U3 (.Y(n5), 
	.B(n7), 
	.A(n1));
   NAND2X2M U4 (.Y(n7), 
	.B(n8), 
	.A(w_inc));
   INVX2M U5 (.Y(full), 
	.A(n8));
   XNOR2X2M U6 (.Y(n19), 
	.B(n4), 
	.A(w_addr[2]));
   XNOR2X2M U7 (.Y(n23), 
	.B(n7), 
	.A(w_addr[0]));
   XNOR2X2M U8 (.Y(n16), 
	.B(n3), 
	.A(N92));
   NAND2BX2M U9 (.Y(n3), 
	.B(w_addr[2]), 
	.AN(n4));
   NAND4X2M U10 (.Y(n8), 
	.D(n12), 
	.C(n11), 
	.B(n10), 
	.A(n9));
   XNOR2X2M U11 (.Y(n9), 
	.B(gray_w_ptr[0]), 
	.A(sync_rd_ptr[0]));
   XNOR2X2M U12 (.Y(n10), 
	.B(gray_w_ptr[1]), 
	.A(sync_rd_ptr[1]));
   CLKXOR2X2M U13 (.Y(n11), 
	.B(gray_w_ptr[2]), 
	.A(sync_rd_ptr[2]));
   NAND2X2M U14 (.Y(n4), 
	.B(n5), 
	.A(w_addr[1]));
   CLKXOR2X2M U15 (.Y(n12), 
	.B(gray_w_ptr[3]), 
	.A(sync_rd_ptr[3]));
   CLKXOR2X2M U16 (.Y(n21), 
	.B(n5), 
	.A(w_addr[1]));
   XNOR2X2M U17 (.Y(N89), 
	.B(n1), 
	.A(w_addr[1]));
   INVX2M U18 (.Y(n1), 
	.A(w_addr[0]));
   CLKXOR2X2M U19 (.Y(N90), 
	.B(w_addr[1]), 
	.A(w_addr[2]));
   CLKXOR2X2M U20 (.Y(N91), 
	.B(N92), 
	.A(w_addr[2]));
endmodule

module BIT_SYNC_NUM_STAGES2_BUS_WIDTH4_test_0 (
	CLK, 
	RST, 
	ASYNC, 
	SYNC, 
	test_si, 
	test_se, 
	FE_OFN14_SE);
   input CLK;
   input RST;
   input [3:0] ASYNC;
   output [3:0] SYNC;
   input test_si;
   input test_se;
   input FE_OFN14_SE;

   // Internal wires
   wire \sync_reg[3][0] ;
   wire \sync_reg[2][0] ;
   wire \sync_reg[1][0] ;
   wire \sync_reg[0][0] ;

   SDFFRQX2M \sync_reg_reg[1][1]  (.SI(\sync_reg[1][0] ), 
	.SE(FE_OFN14_SE), 
	.RN(RST), 
	.Q(SYNC[1]), 
	.D(\sync_reg[1][0] ), 
	.CK(CLK));
   SDFFRQX2M \sync_reg_reg[0][1]  (.SI(\sync_reg[0][0] ), 
	.SE(test_se), 
	.RN(RST), 
	.Q(SYNC[0]), 
	.D(\sync_reg[0][0] ), 
	.CK(CLK));
   SDFFRQX2M \sync_reg_reg[3][1]  (.SI(\sync_reg[3][0] ), 
	.SE(FE_OFN14_SE), 
	.RN(RST), 
	.Q(SYNC[3]), 
	.D(\sync_reg[3][0] ), 
	.CK(CLK));
   SDFFRQX2M \sync_reg_reg[2][1]  (.SI(\sync_reg[2][0] ), 
	.SE(FE_OFN14_SE), 
	.RN(RST), 
	.Q(SYNC[2]), 
	.D(\sync_reg[2][0] ), 
	.CK(CLK));
   SDFFRQX2M \sync_reg_reg[3][0]  (.SI(SYNC[2]), 
	.SE(FE_OFN14_SE), 
	.RN(RST), 
	.Q(\sync_reg[3][0] ), 
	.D(ASYNC[3]), 
	.CK(CLK));
   SDFFRQX2M \sync_reg_reg[2][0]  (.SI(SYNC[1]), 
	.SE(FE_OFN14_SE), 
	.RN(RST), 
	.Q(\sync_reg[2][0] ), 
	.D(ASYNC[2]), 
	.CK(CLK));
   SDFFRQX2M \sync_reg_reg[1][0]  (.SI(SYNC[0]), 
	.SE(FE_OFN14_SE), 
	.RN(RST), 
	.Q(\sync_reg[1][0] ), 
	.D(ASYNC[1]), 
	.CK(CLK));
   SDFFRQX2M \sync_reg_reg[0][0]  (.SI(test_si), 
	.SE(test_se), 
	.RN(RST), 
	.Q(\sync_reg[0][0] ), 
	.D(ASYNC[0]), 
	.CK(CLK));
endmodule

module Async_fifo_D_SIZE8_F_DEPTH8_P_SIZE4_test_1 (
	i_w_clk, 
	i_w_rstn, 
	i_w_inc, 
	i_r_clk, 
	i_r_rstn, 
	i_r_inc, 
	i_w_data, 
	o_r_data, 
	o_full, 
	o_empty, 
	test_si2, 
	test_si1, 
	test_so2, 
	test_so1, 
	test_se, 
	FE_OFN3_SYNC_REF_SCAN_RST, 
	FE_OFN4_SYNC_REF_SCAN_RST, 
	FE_OFN14_SE, 
	FE_OFN15_SE, 
	FE_OFN16_SE);
   input i_w_clk;
   input i_w_rstn;
   input i_w_inc;
   input i_r_clk;
   input i_r_rstn;
   input i_r_inc;
   input [7:0] i_w_data;
   output [7:0] o_r_data;
   output o_full;
   output o_empty;
   input test_si2;
   input test_si1;
   output test_so2;
   output test_so1;
   input test_se;
   input FE_OFN3_SYNC_REF_SCAN_RST;
   input FE_OFN4_SYNC_REF_SCAN_RST;
   input FE_OFN14_SE;
   input FE_OFN15_SE;
   input FE_OFN16_SE;

   // Internal wires
   wire n3;
   wire n4;
   wire n5;
   wire [2:0] w_addr;
   wire [2:0] r_addr;
   wire [3:0] w2r_ptr;
   wire [3:0] gray_rd_ptr;
   wire [3:0] gray_w_ptr;
   wire [3:0] r2w_ptr;

   assign test_so2 = w2r_ptr[3] ;

   fifo_mem_D_SIZE8_F_DEPTH8_P_SIZE4_test_1 u_fifo_mem (.w_clk(i_w_clk), 
	.w_rstn(FE_OFN3_SYNC_REF_SCAN_RST), 
	.w_full(o_full), 
	.w_inc(i_w_inc), 
	.w_addr({ w_addr[2],
		w_addr[1],
		w_addr[0] }), 
	.r_addr({ r_addr[2],
		r_addr[1],
		r_addr[0] }), 
	.w_data({ i_w_data[7],
		i_w_data[6],
		i_w_data[5],
		i_w_data[4],
		i_w_data[3],
		i_w_data[2],
		i_w_data[1],
		i_w_data[0] }), 
	.r_data({ o_r_data[7],
		o_r_data[6],
		o_r_data[5],
		o_r_data[4],
		o_r_data[3],
		o_r_data[2],
		o_r_data[1],
		o_r_data[0] }), 
	.test_si2(test_si2), 
	.test_si1(test_si1), 
	.test_so2(n5), 
	.test_so1(test_so1), 
	.test_se(test_se), 
	.FE_OFN4_SYNC_REF_SCAN_RST(FE_OFN4_SYNC_REF_SCAN_RST), 
	.FE_OFN14_SE(FE_OFN14_SE), 
	.FE_OFN15_SE(FE_OFN15_SE), 
	.FE_OFN16_SE(FE_OFN16_SE));
   fifo_rd_P_SIZE4_test_1 u_fifo_rd (.r_clk(i_r_clk), 
	.r_rstn(i_r_rstn), 
	.r_inc(i_r_inc), 
	.sync_wr_ptr({ w2r_ptr[3],
		w2r_ptr[2],
		w2r_ptr[1],
		w2r_ptr[0] }), 
	.rd_addr({ r_addr[2],
		r_addr[1],
		r_addr[0] }), 
	.empty(o_empty), 
	.gray_rd_ptr({ gray_rd_ptr[3],
		gray_rd_ptr[2],
		gray_rd_ptr[1],
		gray_rd_ptr[0] }), 
	.test_si(n5), 
	.test_so(n4), 
	.test_se(test_se), 
	.FE_OFN14_SE(FE_OFN14_SE));
   BIT_SYNC_NUM_STAGES2_BUS_WIDTH4_test_1 u_w2r_sync (.CLK(i_r_clk), 
	.RST(i_r_rstn), 
	.ASYNC({ gray_w_ptr[3],
		gray_w_ptr[2],
		gray_w_ptr[1],
		gray_w_ptr[0] }), 
	.SYNC({ w2r_ptr[3],
		w2r_ptr[2],
		w2r_ptr[1],
		w2r_ptr[0] }), 
	.test_si(r2w_ptr[3]), 
	.test_se(FE_OFN14_SE));
   fifo_wr_P_SIZE4_test_1 u_fifo_wr (.w_clk(i_w_clk), 
	.w_rstn(i_w_rstn), 
	.w_inc(i_w_inc), 
	.sync_rd_ptr({ r2w_ptr[3],
		r2w_ptr[2],
		r2w_ptr[1],
		r2w_ptr[0] }), 
	.w_addr({ w_addr[2],
		w_addr[1],
		w_addr[0] }), 
	.gray_w_ptr({ gray_w_ptr[3],
		gray_w_ptr[2],
		gray_w_ptr[1],
		gray_w_ptr[0] }), 
	.full(o_full), 
	.test_si(n4), 
	.test_so(n3), 
	.test_se(test_se), 
	.FE_OFN4_SYNC_REF_SCAN_RST(FE_OFN4_SYNC_REF_SCAN_RST), 
	.FE_OFN14_SE(FE_OFN14_SE), 
	.FE_OFN15_SE(FE_OFN15_SE));
   BIT_SYNC_NUM_STAGES2_BUS_WIDTH4_test_0 u_r2w_sync (.CLK(i_w_clk), 
	.RST(i_w_rstn), 
	.ASYNC({ gray_rd_ptr[3],
		gray_rd_ptr[2],
		gray_rd_ptr[1],
		gray_rd_ptr[0] }), 
	.SYNC({ r2w_ptr[3],
		r2w_ptr[2],
		r2w_ptr[1],
		r2w_ptr[0] }), 
	.test_si(n3), 
	.test_se(test_se), 
	.FE_OFN14_SE(FE_OFN14_SE));
endmodule

module PULSE_GEN_test_1 (
	clk, 
	rst, 
	lvl_sig, 
	pulse_sig, 
	test_si, 
	test_so, 
	test_se, 
	FE_OFN14_SE);
   input clk;
   input rst;
   input lvl_sig;
   output pulse_sig;
   input test_si;
   output test_so;
   input test_se;
   input FE_OFN14_SE;

   // Internal wires
   wire pls_flop;
   wire rcv_flop;

   assign test_so = rcv_flop ;

   SDFFRQX2M rcv_flop_reg (.SI(pls_flop), 
	.SE(FE_OFN14_SE), 
	.RN(rst), 
	.Q(rcv_flop), 
	.D(lvl_sig), 
	.CK(clk));
   SDFFRQX2M pls_flop_reg (.SI(test_si), 
	.SE(test_se), 
	.RN(rst), 
	.Q(pls_flop), 
	.D(rcv_flop), 
	.CK(clk));
   NOR2BX2M U5 (.Y(pulse_sig), 
	.B(pls_flop), 
	.AN(rcv_flop));
endmodule

module ClkDiv_0_DW01_inc_0 (
	A, 
	SUM);
   input [6:0] A;
   output [6:0] SUM;

   // Internal wires
   wire [6:2] carry;

   ADDHX1M U1_1_5 (.S(SUM[5]), 
	.CO(carry[6]), 
	.B(carry[5]), 
	.A(A[5]));
   ADDHX1M U1_1_4 (.S(SUM[4]), 
	.CO(carry[5]), 
	.B(carry[4]), 
	.A(A[4]));
   ADDHX1M U1_1_3 (.S(SUM[3]), 
	.CO(carry[4]), 
	.B(carry[3]), 
	.A(A[3]));
   ADDHX1M U1_1_2 (.S(SUM[2]), 
	.CO(carry[3]), 
	.B(carry[2]), 
	.A(A[2]));
   ADDHX1M U1_1_1 (.S(SUM[1]), 
	.CO(carry[2]), 
	.B(A[0]), 
	.A(A[1]));
   CLKXOR2X2M U1 (.Y(SUM[6]), 
	.B(A[6]), 
	.A(carry[6]));
   CLKINVX1M U2 (.Y(SUM[0]), 
	.A(A[0]));
endmodule

module ClkDiv_test_0 (
	i_ref_clk, 
	i_rst, 
	i_clk_en, 
	i_div_ratio, 
	o_div_clk, 
	test_si, 
	test_so, 
	test_se, 
	FE_OFN13_SE, 
	UART_SCAN_CLK__L10_N0, 
	UART_SCAN_CLK__L5_N0);
   input i_ref_clk;
   input i_rst;
   input i_clk_en;
   input [7:0] i_div_ratio;
   output o_div_clk;
   input test_si;
   output test_so;
   input test_se;
   input FE_OFN13_SE;
   input UART_SCAN_CLK__L10_N0;
   input UART_SCAN_CLK__L5_N0;

   // Internal wires
   wire FE_PHN19_div_clk__Exclude_0_NET;
   wire div_clk__Exclude_0_NET;
   wire HTIE_LTIEHI_NET;
   wire N2;
   wire div_clk;
   wire odd_edge_tog;
   wire N16;
   wire N17;
   wire N18;
   wire N19;
   wire N20;
   wire N21;
   wire N22;
   wire n26;
   wire n27;
   wire n28;
   wire n29;
   wire n30;
   wire n31;
   wire n32;
   wire n33;
   wire n34;
   wire n1;
   wire n2;
   wire n3;
   wire n4;
   wire n5;
   wire n15;
   wire n16;
   wire n17;
   wire n18;
   wire n19;
   wire n20;
   wire n21;
   wire n22;
   wire n23;
   wire n24;
   wire n25;
   wire n35;
   wire n36;
   wire n37;
   wire n38;
   wire n39;
   wire n40;
   wire n41;
   wire n42;
   wire n43;
   wire n44;
   wire n45;
   wire n46;
   wire n47;
   wire n48;
   wire n49;
   wire n50;
   wire n51;
   wire [6:0] count;
   wire [6:0] edge_flip_half;

   assign test_so = odd_edge_tog ;

   DLY4X1M FE_PHC19_div_clk__Exclude_0_NET (.Y(FE_PHN19_div_clk__Exclude_0_NET), 
	.A(div_clk__Exclude_0_NET));
   CLKBUFX1M div_clk__Exclude_0 (.Y(div_clk__Exclude_0_NET), 
	.A(div_clk));
   TIEHIM HTIE_LTIEHI (.Y(HTIE_LTIEHI_NET));
   SDFFRQX2M div_clk_reg (.SI(count[6]), 
	.SE(FE_OFN13_SE), 
	.RN(i_rst), 
	.Q(div_clk), 
	.D(n27), 
	.CK(i_ref_clk));
   SDFFSQX2M odd_edge_tog_reg (.SN(i_rst), 
	.SI(FE_PHN19_div_clk__Exclude_0_NET), 
	.SE(FE_OFN13_SE), 
	.Q(odd_edge_tog), 
	.D(n26), 
	.CK(UART_SCAN_CLK__L10_N0));
   SDFFRQX2M \count_reg[6]  (.SI(count[5]), 
	.SE(FE_OFN13_SE), 
	.RN(i_rst), 
	.Q(count[6]), 
	.D(n28), 
	.CK(UART_SCAN_CLK__L10_N0));
   SDFFRQX2M \count_reg[0]  (.SI(test_si), 
	.SE(FE_OFN13_SE), 
	.RN(i_rst), 
	.Q(count[0]), 
	.D(n34), 
	.CK(UART_SCAN_CLK__L10_N0));
   SDFFRQX2M \count_reg[5]  (.SI(count[4]), 
	.SE(test_se), 
	.RN(i_rst), 
	.Q(count[5]), 
	.D(n29), 
	.CK(UART_SCAN_CLK__L10_N0));
   SDFFRQX2M \count_reg[4]  (.SI(count[3]), 
	.SE(test_se), 
	.RN(i_rst), 
	.Q(count[4]), 
	.D(n30), 
	.CK(UART_SCAN_CLK__L10_N0));
   SDFFRQX2M \count_reg[3]  (.SI(count[2]), 
	.SE(test_se), 
	.RN(i_rst), 
	.Q(count[3]), 
	.D(n31), 
	.CK(UART_SCAN_CLK__L10_N0));
   SDFFRQX2M \count_reg[2]  (.SI(count[1]), 
	.SE(test_se), 
	.RN(i_rst), 
	.Q(count[2]), 
	.D(n32), 
	.CK(UART_SCAN_CLK__L10_N0));
   SDFFRQX2M \count_reg[1]  (.SI(count[0]), 
	.SE(FE_OFN13_SE), 
	.RN(i_rst), 
	.Q(count[1]), 
	.D(n33), 
	.CK(UART_SCAN_CLK__L10_N0));
   OR2X2M U5 (.Y(n1), 
	.B(i_div_ratio[1]), 
	.A(i_div_ratio[2]));
   NAND2BX2M U6 (.Y(n16), 
	.B(HTIE_LTIEHI_NET), 
	.AN(n50));
   INVX2M U11 (.Y(n15), 
	.A(i_div_ratio[5]));
   MX2X2M U15 (.Y(o_div_clk), 
	.S0(N2), 
	.B(div_clk), 
	.A(UART_SCAN_CLK__L5_N0));
   CLKINVX1M U16 (.Y(edge_flip_half[0]), 
	.A(i_div_ratio[1]));
   OAI2BB1X1M U17 (.Y(edge_flip_half[1]), 
	.B0(n1), 
	.A1N(i_div_ratio[2]), 
	.A0N(i_div_ratio[1]));
   OR2X1M U18 (.Y(n2), 
	.B(i_div_ratio[3]), 
	.A(n1));
   OAI2BB1X1M U19 (.Y(edge_flip_half[2]), 
	.B0(n2), 
	.A1N(i_div_ratio[3]), 
	.A0N(n1));
   NOR2X1M U20 (.Y(n3), 
	.B(i_div_ratio[4]), 
	.A(n2));
   AO21XLM U21 (.Y(edge_flip_half[3]), 
	.B0(n3), 
	.A1(i_div_ratio[4]), 
	.A0(n2));
   CLKNAND2X2M U22 (.Y(n4), 
	.B(n15), 
	.A(n3));
   OAI21X1M U23 (.Y(edge_flip_half[4]), 
	.B0(n4), 
	.A1(n15), 
	.A0(n3));
   XNOR2X1M U24 (.Y(edge_flip_half[5]), 
	.B(n4), 
	.A(i_div_ratio[6]));
   NOR2X1M U25 (.Y(n5), 
	.B(n4), 
	.A(i_div_ratio[6]));
   CLKXOR2X2M U26 (.Y(edge_flip_half[6]), 
	.B(n5), 
	.A(i_div_ratio[7]));
   AO22X1M U27 (.Y(n34), 
	.B1(n17), 
	.B0(N16), 
	.A1(count[0]), 
	.A0(n16));
   AO22X1M U28 (.Y(n33), 
	.B1(n17), 
	.B0(N17), 
	.A1(count[1]), 
	.A0(n16));
   AO22X1M U29 (.Y(n32), 
	.B1(n17), 
	.B0(N18), 
	.A1(count[2]), 
	.A0(n16));
   AO22X1M U30 (.Y(n31), 
	.B1(n17), 
	.B0(N19), 
	.A1(count[3]), 
	.A0(n16));
   AO22X1M U31 (.Y(n30), 
	.B1(n17), 
	.B0(N20), 
	.A1(count[4]), 
	.A0(n16));
   AO22X1M U32 (.Y(n29), 
	.B1(n17), 
	.B0(N21), 
	.A1(count[5]), 
	.A0(n16));
   AO22X1M U33 (.Y(n28), 
	.B1(n17), 
	.B0(N22), 
	.A1(count[6]), 
	.A0(n16));
   AND3X1M U34 (.Y(n17), 
	.C(N2), 
	.B(n19), 
	.A(n18));
   CLKXOR2X2M U35 (.Y(n27), 
	.B(n20), 
	.A(div_clk__Exclude_0_NET));
   AOI21X1M U36 (.Y(n20), 
	.B0(n16), 
	.A1(n18), 
	.A0(n19));
   OR2X1M U37 (.Y(n18), 
	.B(i_div_ratio[0]), 
	.A(n21));
   XNOR2X1M U38 (.Y(n26), 
	.B(n22), 
	.A(odd_edge_tog));
   OR2X1M U39 (.Y(n22), 
	.B(n16), 
	.A(n19));
   CLKNAND2X2M U40 (.Y(n19), 
	.B(i_div_ratio[0]), 
	.A(n23));
   MXI2X1M U41 (.Y(n23), 
	.S0(odd_edge_tog), 
	.B(n21), 
	.A(n24));
   NAND4X1M U42 (.Y(n21), 
	.D(n37), 
	.C(n36), 
	.B(n35), 
	.A(n25));
   NOR4X1M U43 (.Y(n37), 
	.D(n41), 
	.C(n40), 
	.B(n39), 
	.A(n38));
   CLKXOR2X2M U44 (.Y(n41), 
	.B(count[2]), 
	.A(edge_flip_half[2]));
   CLKXOR2X2M U45 (.Y(n40), 
	.B(count[1]), 
	.A(edge_flip_half[1]));
   CLKXOR2X2M U46 (.Y(n39), 
	.B(count[0]), 
	.A(edge_flip_half[0]));
   CLKXOR2X2M U47 (.Y(n38), 
	.B(count[6]), 
	.A(edge_flip_half[6]));
   XNOR2X1M U48 (.Y(n36), 
	.B(edge_flip_half[4]), 
	.A(count[4]));
   XNOR2X1M U49 (.Y(n35), 
	.B(edge_flip_half[5]), 
	.A(count[5]));
   XNOR2X1M U50 (.Y(n25), 
	.B(edge_flip_half[3]), 
	.A(count[3]));
   NAND4X1M U51 (.Y(n24), 
	.D(n45), 
	.C(n44), 
	.B(n43), 
	.A(n42));
   NOR4X1M U52 (.Y(n45), 
	.D(n49), 
	.C(n48), 
	.B(n47), 
	.A(n46));
   CLKXOR2X2M U53 (.Y(n49), 
	.B(count[2]), 
	.A(i_div_ratio[3]));
   CLKXOR2X2M U54 (.Y(n48), 
	.B(count[1]), 
	.A(i_div_ratio[2]));
   CLKXOR2X2M U55 (.Y(n47), 
	.B(count[0]), 
	.A(i_div_ratio[1]));
   CLKXOR2X2M U56 (.Y(n46), 
	.B(count[6]), 
	.A(i_div_ratio[7]));
   XNOR2X1M U57 (.Y(n44), 
	.B(i_div_ratio[5]), 
	.A(count[4]));
   XNOR2X1M U58 (.Y(n43), 
	.B(i_div_ratio[6]), 
	.A(count[5]));
   XNOR2X1M U59 (.Y(n42), 
	.B(i_div_ratio[4]), 
	.A(count[3]));
   CLKINVX1M U60 (.Y(N2), 
	.A(n16));
   NOR4BX1M U61 (.Y(n50), 
	.D(i_div_ratio[1]), 
	.C(i_div_ratio[3]), 
	.B(i_div_ratio[2]), 
	.AN(n51));
   NOR4X1M U62 (.Y(n51), 
	.D(i_div_ratio[4]), 
	.C(i_div_ratio[5]), 
	.B(i_div_ratio[6]), 
	.A(i_div_ratio[7]));
   ClkDiv_0_DW01_inc_0 add_49 (.A({ count[6],
		count[5],
		count[4],
		count[3],
		count[2],
		count[1],
		count[0] }), 
	.SUM({ N22,
		N21,
		N20,
		N19,
		N18,
		N17,
		N16 }));
endmodule

module CLKDIV_MUX (
	IN, 
	OUT);
   input [5:0] IN;
   output [7:0] OUT;

   // Internal wires
   wire HTIE_LTIEHI_NET;
   wire n5;
   wire n6;
   wire n7;
   wire n8;
   wire n9;
   wire n14;
   wire n15;
   wire n16;
   wire n17;

   TIEHIM HTIE_LTIEHI (.Y(HTIE_LTIEHI_NET));
   NAND4BX1M U11 (.Y(n6), 
	.D(n14), 
	.C(n15), 
	.B(IN[3]), 
	.AN(IN[4]));
   NAND4BX1M U12 (.Y(n7), 
	.D(n14), 
	.C(n15), 
	.B(IN[4]), 
	.AN(IN[3]));
   NOR3X2M U13 (.Y(OUT[1]), 
	.C(IN[0]), 
	.B(IN[1]), 
	.A(n7));
   NOR3X2M U14 (.Y(OUT[2]), 
	.C(IN[0]), 
	.B(IN[1]), 
	.A(n6));
   INVX2M U15 (.Y(n15), 
	.A(IN[2]));
   INVX2M U16 (.Y(n14), 
	.A(IN[5]));
   NOR4X1M U17 (.Y(OUT[3]), 
	.D(IN[4]), 
	.C(IN[5]), 
	.B(IN[3]), 
	.A(n5));
   NAND3X2M U18 (.Y(n5), 
	.C(IN[2]), 
	.B(n16), 
	.A(n17));
   INVX2M U19 (.Y(n17), 
	.A(IN[0]));
   INVX2M U20 (.Y(n16), 
	.A(IN[1]));
   OAI211X2M U21 (.Y(OUT[0]), 
	.C0(n16), 
	.B0(n17), 
	.A1(n9), 
	.A0(n8));
   NOR4X1M U22 (.Y(n8), 
	.D(n15), 
	.C(IN[3]), 
	.B(IN[4]), 
	.A(IN[5]));
   NAND2X2M U23 (.Y(n9), 
	.B(n6), 
	.A(n7));
   INVX2M U3 (.Y(OUT[4]), 
	.A(HTIE_LTIEHI_NET));
   INVX2M U5 (.Y(OUT[5]), 
	.A(HTIE_LTIEHI_NET));
   INVX2M U7 (.Y(OUT[6]), 
	.A(HTIE_LTIEHI_NET));
   INVX2M U9 (.Y(OUT[7]), 
	.A(HTIE_LTIEHI_NET));
endmodule

module ClkDiv_1_DW01_inc_0 (
	A, 
	SUM);
   input [6:0] A;
   output [6:0] SUM;

   // Internal wires
   wire [6:2] carry;

   ADDHX1M U1_1_5 (.S(SUM[5]), 
	.CO(carry[6]), 
	.B(carry[5]), 
	.A(A[5]));
   ADDHX1M U1_1_4 (.S(SUM[4]), 
	.CO(carry[5]), 
	.B(carry[4]), 
	.A(A[4]));
   ADDHX1M U1_1_3 (.S(SUM[3]), 
	.CO(carry[4]), 
	.B(carry[3]), 
	.A(A[3]));
   ADDHX1M U1_1_2 (.S(SUM[2]), 
	.CO(carry[3]), 
	.B(carry[2]), 
	.A(A[2]));
   ADDHX1M U1_1_1 (.S(SUM[1]), 
	.CO(carry[2]), 
	.B(A[0]), 
	.A(A[1]));
   CLKXOR2X2M U1 (.Y(SUM[6]), 
	.B(A[6]), 
	.A(carry[6]));
   CLKINVX1M U2 (.Y(SUM[0]), 
	.A(A[0]));
endmodule

module ClkDiv_test_1 (
	i_ref_clk, 
	i_rst, 
	i_clk_en, 
	i_div_ratio, 
	o_div_clk, 
	test_si, 
	test_so, 
	test_se, 
	FE_OFN11_SE, 
	UART_SCAN_CLK__L10_N0, 
	UART_SCAN_CLK__L5_N0);
   input i_ref_clk;
   input i_rst;
   input i_clk_en;
   input [7:0] i_div_ratio;
   output o_div_clk;
   input test_si;
   output test_so;
   input test_se;
   input FE_OFN11_SE;
   input UART_SCAN_CLK__L10_N0;
   input UART_SCAN_CLK__L5_N0;

   // Internal wires
   wire FE_PHN18_div_clk__Exclude_0_NET;
   wire div_clk__Exclude_0_NET;
   wire HTIE_LTIEHI_NET;
   wire LTIE_LTIELO_NET;
   wire N2;
   wire div_clk;
   wire odd_edge_tog;
   wire N16;
   wire N17;
   wire N18;
   wire N19;
   wire N20;
   wire N21;
   wire N22;
   wire n2;
   wire n3;
   wire n4;
   wire n5;
   wire n15;
   wire n16;
   wire n17;
   wire n18;
   wire n19;
   wire n20;
   wire n21;
   wire n22;
   wire n23;
   wire n24;
   wire n25;
   wire n35;
   wire n36;
   wire n37;
   wire n38;
   wire n39;
   wire n40;
   wire n41;
   wire n42;
   wire n43;
   wire n44;
   wire n45;
   wire n46;
   wire n47;
   wire n48;
   wire n49;
   wire n50;
   wire n51;
   wire n52;
   wire n53;
   wire n54;
   wire n55;
   wire n56;
   wire n57;
   wire n58;
   wire n59;
   wire n60;
   wire n61;
   wire [6:0] count;
   wire [6:0] edge_flip_half;

   assign test_so = odd_edge_tog ;

   DLY3X1M FE_PHC18_div_clk__Exclude_0_NET (.Y(FE_PHN18_div_clk__Exclude_0_NET), 
	.A(div_clk__Exclude_0_NET));
   CLKBUFX1M div_clk__Exclude_0 (.Y(div_clk__Exclude_0_NET), 
	.A(div_clk));
   TIEHIM HTIE_LTIEHI (.Y(HTIE_LTIEHI_NET));
   TIELOM LTIE_LTIELO (.Y(LTIE_LTIELO_NET));
   SDFFRQX2M div_clk_reg (.SI(count[6]), 
	.SE(FE_OFN11_SE), 
	.RN(i_rst), 
	.Q(div_clk), 
	.D(n60), 
	.CK(i_ref_clk));
   SDFFRQX2M \count_reg[6]  (.SI(count[5]), 
	.SE(FE_OFN11_SE), 
	.RN(i_rst), 
	.Q(count[6]), 
	.D(n59), 
	.CK(UART_SCAN_CLK__L10_N0));
   SDFFRQX2M \count_reg[0]  (.SI(test_si), 
	.SE(test_se), 
	.RN(i_rst), 
	.Q(count[0]), 
	.D(n53), 
	.CK(UART_SCAN_CLK__L10_N0));
   SDFFRQX2M \count_reg[5]  (.SI(count[4]), 
	.SE(test_se), 
	.RN(i_rst), 
	.Q(count[5]), 
	.D(n58), 
	.CK(UART_SCAN_CLK__L10_N0));
   SDFFRQX2M \count_reg[4]  (.SI(count[3]), 
	.SE(test_se), 
	.RN(i_rst), 
	.Q(count[4]), 
	.D(n57), 
	.CK(UART_SCAN_CLK__L10_N0));
   SDFFRQX2M \count_reg[3]  (.SI(count[2]), 
	.SE(test_se), 
	.RN(i_rst), 
	.Q(count[3]), 
	.D(n56), 
	.CK(UART_SCAN_CLK__L10_N0));
   SDFFRQX2M \count_reg[2]  (.SI(count[1]), 
	.SE(test_se), 
	.RN(i_rst), 
	.Q(count[2]), 
	.D(n55), 
	.CK(UART_SCAN_CLK__L10_N0));
   SDFFRQX2M \count_reg[1]  (.SI(count[0]), 
	.SE(test_se), 
	.RN(i_rst), 
	.Q(count[1]), 
	.D(n54), 
	.CK(UART_SCAN_CLK__L10_N0));
   SDFFSQX1M odd_edge_tog_reg (.SN(i_rst), 
	.SI(FE_PHN18_div_clk__Exclude_0_NET), 
	.SE(FE_OFN11_SE), 
	.Q(odd_edge_tog), 
	.D(n61), 
	.CK(UART_SCAN_CLK__L10_N0));
   OR2X2M U6 (.Y(n2), 
	.B(i_div_ratio[1]), 
	.A(i_div_ratio[2]));
   NAND2BX2M U11 (.Y(n17), 
	.B(HTIE_LTIEHI_NET), 
	.AN(n51));
   INVX2M U15 (.Y(n16), 
	.A(LTIE_LTIELO_NET));
   MX2X2M U16 (.Y(o_div_clk), 
	.S0(N2), 
	.B(div_clk), 
	.A(UART_SCAN_CLK__L5_N0));
   CLKINVX1M U17 (.Y(edge_flip_half[0]), 
	.A(i_div_ratio[1]));
   OAI2BB1X1M U18 (.Y(edge_flip_half[1]), 
	.B0(n2), 
	.A1N(i_div_ratio[2]), 
	.A0N(i_div_ratio[1]));
   OR2X1M U19 (.Y(n3), 
	.B(i_div_ratio[3]), 
	.A(n2));
   OAI2BB1X1M U20 (.Y(edge_flip_half[2]), 
	.B0(n3), 
	.A1N(i_div_ratio[3]), 
	.A0N(n2));
   NOR2X1M U21 (.Y(n4), 
	.B(LTIE_LTIELO_NET), 
	.A(n3));
   AO21XLM U22 (.Y(edge_flip_half[3]), 
	.B0(n4), 
	.A1(LTIE_LTIELO_NET), 
	.A0(n3));
   CLKNAND2X2M U23 (.Y(n5), 
	.B(n16), 
	.A(n4));
   OAI21X1M U24 (.Y(edge_flip_half[4]), 
	.B0(n5), 
	.A1(n16), 
	.A0(n4));
   XNOR2X1M U25 (.Y(edge_flip_half[5]), 
	.B(n5), 
	.A(LTIE_LTIELO_NET));
   NOR2X1M U26 (.Y(n15), 
	.B(n5), 
	.A(LTIE_LTIELO_NET));
   CLKXOR2X2M U27 (.Y(edge_flip_half[6]), 
	.B(n15), 
	.A(LTIE_LTIELO_NET));
   AO22X1M U28 (.Y(n53), 
	.B1(n18), 
	.B0(N16), 
	.A1(count[0]), 
	.A0(n17));
   AO22X1M U29 (.Y(n54), 
	.B1(n18), 
	.B0(N17), 
	.A1(count[1]), 
	.A0(n17));
   AO22X1M U30 (.Y(n55), 
	.B1(n18), 
	.B0(N18), 
	.A1(count[2]), 
	.A0(n17));
   AO22X1M U31 (.Y(n56), 
	.B1(n18), 
	.B0(N19), 
	.A1(count[3]), 
	.A0(n17));
   AO22X1M U32 (.Y(n57), 
	.B1(n18), 
	.B0(N20), 
	.A1(count[4]), 
	.A0(n17));
   AO22X1M U33 (.Y(n58), 
	.B1(n18), 
	.B0(N21), 
	.A1(count[5]), 
	.A0(n17));
   AO22X1M U34 (.Y(n59), 
	.B1(n18), 
	.B0(N22), 
	.A1(count[6]), 
	.A0(n17));
   AND3X1M U35 (.Y(n18), 
	.C(N2), 
	.B(n20), 
	.A(n19));
   CLKXOR2X2M U36 (.Y(n60), 
	.B(n21), 
	.A(div_clk__Exclude_0_NET));
   AOI21X1M U37 (.Y(n21), 
	.B0(n17), 
	.A1(n19), 
	.A0(n20));
   OR2X1M U38 (.Y(n19), 
	.B(i_div_ratio[0]), 
	.A(n22));
   XNOR2X1M U39 (.Y(n61), 
	.B(n23), 
	.A(odd_edge_tog));
   OR2X1M U40 (.Y(n23), 
	.B(n17), 
	.A(n20));
   CLKNAND2X2M U41 (.Y(n20), 
	.B(i_div_ratio[0]), 
	.A(n24));
   MXI2X1M U42 (.Y(n24), 
	.S0(odd_edge_tog), 
	.B(n22), 
	.A(n25));
   NAND4X1M U43 (.Y(n22), 
	.D(n38), 
	.C(n37), 
	.B(n36), 
	.A(n35));
   NOR4X1M U44 (.Y(n38), 
	.D(n42), 
	.C(n41), 
	.B(n40), 
	.A(n39));
   CLKXOR2X2M U45 (.Y(n42), 
	.B(count[2]), 
	.A(edge_flip_half[2]));
   CLKXOR2X2M U46 (.Y(n41), 
	.B(count[1]), 
	.A(edge_flip_half[1]));
   CLKXOR2X2M U47 (.Y(n40), 
	.B(count[0]), 
	.A(edge_flip_half[0]));
   CLKXOR2X2M U48 (.Y(n39), 
	.B(count[6]), 
	.A(edge_flip_half[6]));
   XNOR2X1M U49 (.Y(n37), 
	.B(edge_flip_half[4]), 
	.A(count[4]));
   XNOR2X1M U50 (.Y(n36), 
	.B(edge_flip_half[5]), 
	.A(count[5]));
   XNOR2X1M U51 (.Y(n35), 
	.B(edge_flip_half[3]), 
	.A(count[3]));
   NAND4X1M U52 (.Y(n25), 
	.D(n46), 
	.C(n45), 
	.B(n44), 
	.A(n43));
   NOR4X1M U53 (.Y(n46), 
	.D(n50), 
	.C(n49), 
	.B(n48), 
	.A(n47));
   CLKXOR2X2M U54 (.Y(n50), 
	.B(count[2]), 
	.A(i_div_ratio[3]));
   CLKXOR2X2M U55 (.Y(n49), 
	.B(count[1]), 
	.A(i_div_ratio[2]));
   CLKXOR2X2M U56 (.Y(n48), 
	.B(count[0]), 
	.A(i_div_ratio[1]));
   CLKXOR2X2M U57 (.Y(n47), 
	.B(count[6]), 
	.A(LTIE_LTIELO_NET));
   XNOR2X1M U58 (.Y(n45), 
	.B(LTIE_LTIELO_NET), 
	.A(count[4]));
   XNOR2X1M U59 (.Y(n44), 
	.B(LTIE_LTIELO_NET), 
	.A(count[5]));
   XNOR2X1M U60 (.Y(n43), 
	.B(LTIE_LTIELO_NET), 
	.A(count[3]));
   CLKINVX1M U61 (.Y(N2), 
	.A(n17));
   NOR4BX1M U62 (.Y(n51), 
	.D(i_div_ratio[1]), 
	.C(i_div_ratio[3]), 
	.B(i_div_ratio[2]), 
	.AN(n52));
   NOR4X1M U63 (.Y(n52), 
	.D(LTIE_LTIELO_NET), 
	.C(LTIE_LTIELO_NET), 
	.B(LTIE_LTIELO_NET), 
	.A(LTIE_LTIELO_NET));
   ClkDiv_1_DW01_inc_0 add_49 (.A({ count[6],
		count[5],
		count[4],
		count[3],
		count[2],
		count[1],
		count[0] }), 
	.SUM({ N22,
		N21,
		N20,
		N19,
		N18,
		N17,
		N16 }));
endmodule

module uart_tx_fsm_test_1 (
	CLK, 
	RST, 
	Data_Valid, 
	ser_done, 
	parity_enable, 
	Ser_enable, 
	mux_sel, 
	busy, 
	test_si, 
	test_so, 
	test_se);
   input CLK;
   input RST;
   input Data_Valid;
   input ser_done;
   input parity_enable;
   output Ser_enable;
   output [1:0] mux_sel;
   output busy;
   input test_si;
   output test_so;
   input test_se;

   // Internal wires
   wire busy_c;
   wire n8;
   wire n9;
   wire n10;
   wire n11;
   wire n12;
   wire n13;
   wire n5;
   wire n6;
   wire n7;
   wire [2:0] current_state;
   wire [2:0] next_state;

   assign test_so = current_state[2] ;

   SDFFRQX2M busy_reg (.SI(test_si), 
	.SE(test_se), 
	.RN(RST), 
	.Q(busy), 
	.D(busy_c), 
	.CK(CLK));
   SDFFRQX2M \current_state_reg[2]  (.SI(n7), 
	.SE(test_se), 
	.RN(RST), 
	.Q(current_state[2]), 
	.D(next_state[2]), 
	.CK(CLK));
   SDFFRQX2M \current_state_reg[1]  (.SI(current_state[0]), 
	.SE(test_se), 
	.RN(RST), 
	.Q(current_state[1]), 
	.D(next_state[1]), 
	.CK(CLK));
   SDFFRQX2M \current_state_reg[0]  (.SI(busy), 
	.SE(test_se), 
	.RN(RST), 
	.Q(current_state[0]), 
	.D(next_state[0]), 
	.CK(CLK));
   INVX2M U7 (.Y(n5), 
	.A(n13));
   NOR3X2M U8 (.Y(Ser_enable), 
	.C(current_state[2]), 
	.B(ser_done), 
	.A(n9));
   OAI21X2M U9 (.Y(n13), 
	.B0(n12), 
	.A1(n6), 
	.A0(current_state[1]));
   NAND2X2M U10 (.Y(n12), 
	.B(n6), 
	.A(current_state[1]));
   NAND2X2M U11 (.Y(n9), 
	.B(current_state[0]), 
	.A(n5));
   INVX2M U12 (.Y(n6), 
	.A(current_state[0]));
   OAI2B2X1M U13 (.Y(mux_sel[0]), 
	.B1(n13), 
	.B0(current_state[2]), 
	.A1N(current_state[2]), 
	.A0(n12));
   OAI21X2M U14 (.Y(mux_sel[1]), 
	.B0(n12), 
	.A1(current_state[0]), 
	.A0(current_state[2]));
   NOR3X2M U15 (.Y(next_state[2]), 
	.C(n8), 
	.B(current_state[2]), 
	.A(n7));
   AOI2B1X1M U16 (.Y(n8), 
	.B0(n6), 
	.A1N(parity_enable), 
	.A0(ser_done));
   OAI21X2M U17 (.Y(busy_c), 
	.B0(n12), 
	.A1(n6), 
	.A0(current_state[2]));
   AOI21X2M U18 (.Y(next_state[1]), 
	.B0(current_state[2]), 
	.A1(n9), 
	.A0(n5));
   AOI21X2M U19 (.Y(next_state[0]), 
	.B0(current_state[2]), 
	.A1(n11), 
	.A0(n10));
   NAND2BX2M U20 (.Y(n10), 
	.B(current_state[0]), 
	.AN(ser_done));
   OAI21X2M U21 (.Y(n11), 
	.B0(n7), 
	.A1(current_state[0]), 
	.A0(Data_Valid));
   INVX2M U22 (.Y(n7), 
	.A(current_state[1]));
endmodule

module Serializer_WIDTH8_test_1 (
	CLK, 
	RST, 
	DATA, 
	Enable, 
	Busy, 
	Data_Valid, 
	ser_out, 
	ser_done, 
	test_si, 
	test_so, 
	test_se, 
	FE_OFN15_SE);
   input CLK;
   input RST;
   input [7:0] DATA;
   input Enable;
   input Busy;
   input Data_Valid;
   output ser_out;
   output ser_done;
   input test_si;
   output test_so;
   input test_se;
   input FE_OFN15_SE;

   // Internal wires
   wire N23;
   wire N24;
   wire N25;
   wire n15;
   wire n16;
   wire n17;
   wire n18;
   wire n19;
   wire n20;
   wire n21;
   wire n22;
   wire n23;
   wire n24;
   wire n25;
   wire n26;
   wire n27;
   wire n28;
   wire n29;
   wire n30;
   wire n31;
   wire n32;
   wire n33;
   wire n34;
   wire n35;
   wire n13;
   wire n14;
   wire n36;
   wire [7:1] DATA_V;
   wire [2:0] ser_count;

   assign test_so = n36 ;

   SDFFRQX2M \DATA_V_reg[6]  (.SI(DATA_V[5]), 
	.SE(FE_OFN15_SE), 
	.RN(RST), 
	.Q(DATA_V[6]), 
	.D(n30), 
	.CK(CLK));
   SDFFRQX2M \DATA_V_reg[5]  (.SI(DATA_V[4]), 
	.SE(FE_OFN15_SE), 
	.RN(RST), 
	.Q(DATA_V[5]), 
	.D(n31), 
	.CK(CLK));
   SDFFRQX2M \DATA_V_reg[4]  (.SI(DATA_V[3]), 
	.SE(FE_OFN15_SE), 
	.RN(RST), 
	.Q(DATA_V[4]), 
	.D(n32), 
	.CK(CLK));
   SDFFRQX2M \DATA_V_reg[3]  (.SI(DATA_V[2]), 
	.SE(FE_OFN15_SE), 
	.RN(RST), 
	.Q(DATA_V[3]), 
	.D(n33), 
	.CK(CLK));
   SDFFRQX2M \DATA_V_reg[2]  (.SI(DATA_V[1]), 
	.SE(FE_OFN15_SE), 
	.RN(RST), 
	.Q(DATA_V[2]), 
	.D(n34), 
	.CK(CLK));
   SDFFRQX2M \DATA_V_reg[1]  (.SI(ser_out), 
	.SE(FE_OFN15_SE), 
	.RN(RST), 
	.Q(DATA_V[1]), 
	.D(n35), 
	.CK(CLK));
   SDFFRQX2M \DATA_V_reg[7]  (.SI(DATA_V[6]), 
	.SE(FE_OFN15_SE), 
	.RN(RST), 
	.Q(DATA_V[7]), 
	.D(n29), 
	.CK(CLK));
   SDFFRQX2M \DATA_V_reg[0]  (.SI(test_si), 
	.SE(FE_OFN15_SE), 
	.RN(RST), 
	.Q(ser_out), 
	.D(n28), 
	.CK(CLK));
   SDFFRQX2M \ser_count_reg[2]  (.SI(n14), 
	.SE(test_se), 
	.RN(RST), 
	.Q(ser_count[2]), 
	.D(N25), 
	.CK(CLK));
   SDFFRQX2M \ser_count_reg[1]  (.SI(ser_count[0]), 
	.SE(test_se), 
	.RN(RST), 
	.Q(ser_count[1]), 
	.D(N24), 
	.CK(CLK));
   SDFFRQX2M \ser_count_reg[0]  (.SI(DATA_V[7]), 
	.SE(FE_OFN15_SE), 
	.RN(RST), 
	.Q(ser_count[0]), 
	.D(N23), 
	.CK(CLK));
   NOR2X2M U14 (.Y(n17), 
	.B(n18), 
	.A(n13));
   NOR2X2M U15 (.Y(n15), 
	.B(n17), 
	.A(n18));
   INVX2M U16 (.Y(n13), 
	.A(Enable));
   OAI32X1M U17 (.Y(N25), 
	.B1(n36), 
	.B0(n26), 
	.A2(n13), 
	.A1(n14), 
	.A0(n25));
   NAND2X2M U18 (.Y(n25), 
	.B(n36), 
	.A(ser_count[0]));
   AOI21X2M U19 (.Y(n26), 
	.B0(N23), 
	.A1(n14), 
	.A0(Enable));
   INVX2M U20 (.Y(n36), 
	.A(ser_count[2]));
   NOR2X2M U21 (.Y(N23), 
	.B(ser_count[0]), 
	.A(n13));
   NOR2BX2M U23 (.Y(n18), 
	.B(Busy), 
	.AN(Data_Valid));
   OAI2BB1X2M U24 (.Y(n28), 
	.B0(n16), 
	.A1N(n15), 
	.A0N(ser_out));
   AOI22X1M U25 (.Y(n16), 
	.B1(n18), 
	.B0(DATA[0]), 
	.A1(n17), 
	.A0(DATA_V[1]));
   OAI2BB1X2M U26 (.Y(n35), 
	.B0(n24), 
	.A1N(n15), 
	.A0N(DATA_V[1]));
   AOI22X1M U27 (.Y(n24), 
	.B1(n18), 
	.B0(DATA[1]), 
	.A1(n17), 
	.A0(DATA_V[2]));
   OAI2BB1X2M U28 (.Y(n34), 
	.B0(n23), 
	.A1N(DATA_V[2]), 
	.A0N(n15));
   AOI22X1M U29 (.Y(n23), 
	.B1(n18), 
	.B0(DATA[2]), 
	.A1(n17), 
	.A0(DATA_V[3]));
   OAI2BB1X2M U30 (.Y(n33), 
	.B0(n22), 
	.A1N(DATA_V[3]), 
	.A0N(n15));
   AOI22X1M U31 (.Y(n22), 
	.B1(n18), 
	.B0(DATA[3]), 
	.A1(n17), 
	.A0(DATA_V[4]));
   OAI2BB1X2M U32 (.Y(n32), 
	.B0(n21), 
	.A1N(DATA_V[4]), 
	.A0N(n15));
   AOI22X1M U33 (.Y(n21), 
	.B1(n18), 
	.B0(DATA[4]), 
	.A1(n17), 
	.A0(DATA_V[5]));
   OAI2BB1X2M U34 (.Y(n31), 
	.B0(n20), 
	.A1N(DATA_V[5]), 
	.A0N(n15));
   AOI22X1M U35 (.Y(n20), 
	.B1(n18), 
	.B0(DATA[5]), 
	.A1(n17), 
	.A0(DATA_V[6]));
   OAI2BB1X2M U36 (.Y(n30), 
	.B0(n19), 
	.A1N(DATA_V[6]), 
	.A0N(n15));
   AOI22X1M U37 (.Y(n19), 
	.B1(n18), 
	.B0(DATA[6]), 
	.A1(n17), 
	.A0(DATA_V[7]));
   AO22X1M U38 (.Y(n29), 
	.B1(n18), 
	.B0(DATA[7]), 
	.A1(DATA_V[7]), 
	.A0(n15));
   AND3X2M U39 (.Y(ser_done), 
	.C(ser_count[1]), 
	.B(ser_count[2]), 
	.A(ser_count[0]));
   NOR2X2M U40 (.Y(N24), 
	.B(n13), 
	.A(n27));
   CLKXOR2X2M U41 (.Y(n27), 
	.B(n14), 
	.A(ser_count[0]));
   INVX2M U42 (.Y(n14), 
	.A(ser_count[1]));
endmodule

module mux_test_1 (
	CLK, 
	RST, 
	IN_0, 
	IN_1, 
	IN_2, 
	IN_3, 
	SEL, 
	OUT, 
	test_si, 
	test_se);
   input CLK;
   input RST;
   input IN_0;
   input IN_1;
   input IN_2;
   input IN_3;
   input [1:0] SEL;
   output OUT;
   input test_si;
   input test_se;

   // Internal wires
   wire HTIE_LTIEHI_NET;
   wire LTIE_LTIELO_NET;
   wire FE_OFN10_UART_TX_O;
   wire mux_out;
   wire n3;
   wire n4;
   wire n5;

   TIEHIM HTIE_LTIEHI (.Y(HTIE_LTIEHI_NET));
   TIELOM LTIE_LTIELO (.Y(LTIE_LTIELO_NET));
   CLKBUFX8M FE_OFC10_UART_TX_O (.Y(OUT), 
	.A(FE_OFN10_UART_TX_O));
   SDFFRQX4M OUT_reg (.SI(test_si), 
	.SE(test_se), 
	.RN(RST), 
	.Q(FE_OFN10_UART_TX_O), 
	.D(mux_out), 
	.CK(CLK));
   INVX2M U5 (.Y(n5), 
	.A(SEL[0]));
   OAI2B2X1M U6 (.Y(mux_out), 
	.B1(n4), 
	.B0(SEL[1]), 
	.A1N(SEL[1]), 
	.A0(n3));
   AOI22X1M U7 (.Y(n4), 
	.B1(IN_1), 
	.B0(SEL[0]), 
	.A1(n5), 
	.A0(LTIE_LTIELO_NET));
   AOI22X1M U8 (.Y(n3), 
	.B1(SEL[0]), 
	.B0(HTIE_LTIEHI_NET), 
	.A1(n5), 
	.A0(IN_2));
endmodule

module parity_calc_WIDTH8_test_1 (
	CLK, 
	RST, 
	parity_enable, 
	parity_type, 
	Busy, 
	DATA, 
	Data_Valid, 
	parity, 
	test_si, 
	test_se, 
	FE_OFN15_SE);
   input CLK;
   input RST;
   input parity_enable;
   input parity_type;
   input Busy;
   input [7:0] DATA;
   input Data_Valid;
   output parity;
   input test_si;
   input test_se;
   input FE_OFN15_SE;

   // Internal wires
   wire n1;
   wire n3;
   wire n4;
   wire n5;
   wire n6;
   wire n7;
   wire n9;
   wire n11;
   wire n13;
   wire n15;
   wire n17;
   wire n19;
   wire n21;
   wire n23;
   wire n25;
   wire n2;
   wire [7:0] DATA_V;

   SDFFRQX2M \DATA_V_reg[5]  (.SI(DATA_V[4]), 
	.SE(FE_OFN15_SE), 
	.RN(RST), 
	.Q(DATA_V[5]), 
	.D(n21), 
	.CK(CLK));
   SDFFRQX2M \DATA_V_reg[1]  (.SI(DATA_V[0]), 
	.SE(FE_OFN15_SE), 
	.RN(RST), 
	.Q(DATA_V[1]), 
	.D(n13), 
	.CK(CLK));
   SDFFRQX2M \DATA_V_reg[4]  (.SI(DATA_V[3]), 
	.SE(FE_OFN15_SE), 
	.RN(RST), 
	.Q(DATA_V[4]), 
	.D(n19), 
	.CK(CLK));
   SDFFRQX2M \DATA_V_reg[0]  (.SI(test_si), 
	.SE(FE_OFN15_SE), 
	.RN(RST), 
	.Q(DATA_V[0]), 
	.D(n11), 
	.CK(CLK));
   SDFFRQX2M \DATA_V_reg[2]  (.SI(DATA_V[1]), 
	.SE(FE_OFN15_SE), 
	.RN(RST), 
	.Q(DATA_V[2]), 
	.D(n15), 
	.CK(CLK));
   SDFFRQX2M parity_reg (.SI(DATA_V[7]), 
	.SE(test_se), 
	.RN(RST), 
	.Q(parity), 
	.D(n9), 
	.CK(CLK));
   SDFFRQX2M \DATA_V_reg[3]  (.SI(DATA_V[2]), 
	.SE(FE_OFN15_SE), 
	.RN(RST), 
	.Q(DATA_V[3]), 
	.D(n17), 
	.CK(CLK));
   SDFFRQX2M \DATA_V_reg[6]  (.SI(DATA_V[5]), 
	.SE(FE_OFN15_SE), 
	.RN(RST), 
	.Q(DATA_V[6]), 
	.D(n23), 
	.CK(CLK));
   SDFFRQX2M \DATA_V_reg[7]  (.SI(DATA_V[6]), 
	.SE(test_se), 
	.RN(RST), 
	.Q(DATA_V[7]), 
	.D(n25), 
	.CK(CLK));
   NOR2BX2M U2 (.Y(n7), 
	.B(Busy), 
	.AN(Data_Valid));
   XNOR2X2M U3 (.Y(n5), 
	.B(DATA_V[3]), 
	.A(DATA_V[2]));
   XOR3XLM U4 (.Y(n3), 
	.C(n6), 
	.B(DATA_V[4]), 
	.A(DATA_V[5]));
   CLKXOR2X2M U5 (.Y(n6), 
	.B(DATA_V[6]), 
	.A(DATA_V[7]));
   OAI2BB2X1M U6 (.Y(n9), 
	.B1(n2), 
	.B0(n1), 
	.A1N(n2), 
	.A0N(parity));
   INVX2M U7 (.Y(n2), 
	.A(parity_enable));
   XOR3XLM U8 (.Y(n1), 
	.C(n4), 
	.B(parity_type), 
	.A(n3));
   XOR3XLM U9 (.Y(n4), 
	.C(n5), 
	.B(DATA_V[0]), 
	.A(DATA_V[1]));
   AO2B2X2M U10 (.Y(n11), 
	.B1(n7), 
	.B0(DATA[0]), 
	.A1N(n7), 
	.A0(DATA_V[0]));
   AO2B2X2M U11 (.Y(n13), 
	.B1(n7), 
	.B0(DATA[1]), 
	.A1N(n7), 
	.A0(DATA_V[1]));
   AO2B2X2M U12 (.Y(n15), 
	.B1(n7), 
	.B0(DATA[2]), 
	.A1N(n7), 
	.A0(DATA_V[2]));
   AO2B2X2M U13 (.Y(n17), 
	.B1(n7), 
	.B0(DATA[3]), 
	.A1N(n7), 
	.A0(DATA_V[3]));
   AO2B2X2M U14 (.Y(n19), 
	.B1(n7), 
	.B0(DATA[4]), 
	.A1N(n7), 
	.A0(DATA_V[4]));
   AO2B2X2M U15 (.Y(n21), 
	.B1(n7), 
	.B0(DATA[5]), 
	.A1N(n7), 
	.A0(DATA_V[5]));
   AO2B2X2M U16 (.Y(n23), 
	.B1(n7), 
	.B0(DATA[6]), 
	.A1N(n7), 
	.A0(DATA_V[6]));
   AO2B2X2M U17 (.Y(n25), 
	.B1(n7), 
	.B0(DATA[7]), 
	.A1N(n7), 
	.A0(DATA_V[7]));
endmodule

module UART_TX_DATA_WIDTH8_test_1 (
	CLK, 
	RST, 
	P_DATA, 
	Data_Valid, 
	parity_enable, 
	parity_type, 
	TX_OUT, 
	busy, 
	test_si2, 
	test_si1, 
	test_so1, 
	test_se, 
	FE_OFN15_SE, 
	FE_OFN16_SE);
   input CLK;
   input RST;
   input [7:0] P_DATA;
   input Data_Valid;
   input parity_enable;
   input parity_type;
   output TX_OUT;
   output busy;
   input test_si2;
   input test_si1;
   output test_so1;
   input test_se;
   input FE_OFN15_SE;
   input FE_OFN16_SE;

   // Internal wires
   wire seriz_done;
   wire seriz_en;
   wire ser_data;
   wire parity;
   wire n3;
   wire n4;
   wire [1:0] mux_sel;

   assign test_so1 = parity ;

   uart_tx_fsm_test_1 U0_fsm (.CLK(CLK), 
	.RST(RST), 
	.Data_Valid(Data_Valid), 
	.ser_done(seriz_done), 
	.parity_enable(parity_enable), 
	.Ser_enable(seriz_en), 
	.mux_sel({ mux_sel[1],
		mux_sel[0] }), 
	.busy(busy), 
	.test_si(n4), 
	.test_so(n3), 
	.test_se(test_se));
   Serializer_WIDTH8_test_1 U0_Serializer (.CLK(CLK), 
	.RST(RST), 
	.DATA({ P_DATA[7],
		P_DATA[6],
		P_DATA[5],
		P_DATA[4],
		P_DATA[3],
		P_DATA[2],
		P_DATA[1],
		P_DATA[0] }), 
	.Enable(seriz_en), 
	.Busy(busy), 
	.Data_Valid(Data_Valid), 
	.ser_out(ser_data), 
	.ser_done(seriz_done), 
	.test_si(test_si1), 
	.test_so(n4), 
	.test_se(test_se), 
	.FE_OFN15_SE(FE_OFN15_SE));
   mux_test_1 U0_mux (.CLK(CLK), 
	.RST(RST), 
	.IN_0(1'b0), 
	.IN_1(ser_data), 
	.IN_2(parity), 
	.IN_3(1'b1), 
	.SEL({ mux_sel[1],
		mux_sel[0] }), 
	.OUT(TX_OUT), 
	.test_si(test_si2), 
	.test_se(FE_OFN16_SE));
   parity_calc_WIDTH8_test_1 U0_parity_calc (.CLK(CLK), 
	.RST(RST), 
	.parity_enable(parity_enable), 
	.parity_type(parity_type), 
	.Busy(busy), 
	.DATA({ P_DATA[7],
		P_DATA[6],
		P_DATA[5],
		P_DATA[4],
		P_DATA[3],
		P_DATA[2],
		P_DATA[1],
		P_DATA[0] }), 
	.Data_Valid(Data_Valid), 
	.parity(parity), 
	.test_si(n3), 
	.test_se(test_se), 
	.FE_OFN15_SE(FE_OFN15_SE));
endmodule

module uart_rx_fsm_DATA_WIDTH8_test_1 (
	CLK, 
	RST, 
	S_DATA, 
	Prescale, 
	parity_enable, 
	bit_count, 
	edge_count, 
	par_err, 
	stp_err, 
	strt_glitch, 
	strt_chk_en, 
	edge_bit_en, 
	deser_en, 
	par_chk_en, 
	stp_chk_en, 
	dat_samp_en, 
	data_valid, 
	test_so, 
	test_se, 
	FE_OFN6_SYNC_UART_SCAN_RST, 
	FE_OFN14_SE);
   input CLK;
   input RST;
   input S_DATA;
   input [5:0] Prescale;
   input parity_enable;
   input [3:0] bit_count;
   input [5:0] edge_count;
   input par_err;
   input stp_err;
   input strt_glitch;
   output strt_chk_en;
   output edge_bit_en;
   output deser_en;
   output par_chk_en;
   output stp_chk_en;
   output dat_samp_en;
   output data_valid;
   output test_so;
   input test_se;
   input FE_OFN6_SYNC_UART_SCAN_RST;
   input FE_OFN14_SE;

   // Internal wires
   wire \sub_40/carry[5] ;
   wire \sub_40/carry[4] ;
   wire \sub_40/carry[3] ;
   wire n1;
   wire n2;
   wire n3;
   wire n4;
   wire n5;
   wire n6;
   wire n7;
   wire n8;
   wire n9;
   wire n13;
   wire n14;
   wire n15;
   wire n16;
   wire n17;
   wire n18;
   wire n19;
   wire n20;
   wire n21;
   wire n22;
   wire n23;
   wire n24;
   wire n25;
   wire n26;
   wire n27;
   wire n28;
   wire n29;
   wire n30;
   wire n31;
   wire n32;
   wire n33;
   wire n34;
   wire n35;
   wire n36;
   wire n37;
   wire n38;
   wire n39;
   wire n40;
   wire n41;
   wire n42;
   wire n43;
   wire n44;
   wire n45;
   wire n46;
   wire n47;
   wire n48;
   wire n49;
   wire n50;
   wire [5:0] check_edge;
   wire [5:0] error_check_edge;
   wire [2:0] current_state;
   wire [2:0] next_state;

   assign error_check_edge[0] = Prescale[0] ;
   assign test_so = n25 ;

   SDFFRQX2M \current_state_reg[2]  (.SI(n24), 
	.SE(test_se), 
	.RN(FE_OFN6_SYNC_UART_SCAN_RST), 
	.Q(current_state[2]), 
	.D(next_state[2]), 
	.CK(CLK));
   SDFFRQX2M \current_state_reg[0]  (.SI(strt_glitch), 
	.SE(FE_OFN14_SE), 
	.RN(FE_OFN6_SYNC_UART_SCAN_RST), 
	.Q(current_state[0]), 
	.D(next_state[0]), 
	.CK(CLK));
   SDFFRQX2M \current_state_reg[1]  (.SI(current_state[0]), 
	.SE(FE_OFN14_SE), 
	.RN(RST), 
	.Q(current_state[1]), 
	.D(next_state[1]), 
	.CK(CLK));
   OR2X2M U4 (.Y(n1), 
	.B(error_check_edge[0]), 
	.A(Prescale[1]));
   INVX2M U5 (.Y(n5), 
	.A(Prescale[3]));
   XNOR2X2M U6 (.Y(n37), 
	.B(edge_count[1]), 
	.A(Prescale[1]));
   XNOR2X1M U9 (.Y(error_check_edge[5]), 
	.B(\sub_40/carry[5] ), 
	.A(Prescale[5]));
   OR2X1M U10 (.Y(\sub_40/carry[5] ), 
	.B(\sub_40/carry[4] ), 
	.A(Prescale[4]));
   XNOR2X1M U11 (.Y(error_check_edge[4]), 
	.B(Prescale[4]), 
	.A(\sub_40/carry[4] ));
   OR2X1M U12 (.Y(\sub_40/carry[4] ), 
	.B(\sub_40/carry[3] ), 
	.A(Prescale[3]));
   XNOR2X1M U13 (.Y(error_check_edge[3]), 
	.B(Prescale[3]), 
	.A(\sub_40/carry[3] ));
   OR2X1M U14 (.Y(\sub_40/carry[3] ), 
	.B(Prescale[1]), 
	.A(Prescale[2]));
   XNOR2X1M U15 (.Y(error_check_edge[2]), 
	.B(Prescale[2]), 
	.A(Prescale[1]));
   CLKINVX1M U16 (.Y(check_edge[0]), 
	.A(error_check_edge[0]));
   OAI2BB1X1M U17 (.Y(check_edge[1]), 
	.B0(n1), 
	.A1N(Prescale[1]), 
	.A0N(error_check_edge[0]));
   NOR2X1M U18 (.Y(n2), 
	.B(Prescale[2]), 
	.A(n1));
   AO21XLM U19 (.Y(check_edge[2]), 
	.B0(n2), 
	.A1(Prescale[2]), 
	.A0(n1));
   CLKNAND2X2M U20 (.Y(n3), 
	.B(n5), 
	.A(n2));
   OAI21X1M U21 (.Y(check_edge[3]), 
	.B0(n3), 
	.A1(n5), 
	.A0(n2));
   XNOR2X1M U22 (.Y(check_edge[4]), 
	.B(n3), 
	.A(Prescale[4]));
   NOR2X1M U23 (.Y(n4), 
	.B(n3), 
	.A(Prescale[4]));
   CLKXOR2X2M U24 (.Y(check_edge[5]), 
	.B(n4), 
	.A(Prescale[5]));
   NOR2X1M U25 (.Y(strt_chk_en), 
	.B(n6), 
	.A(current_state[1]));
   NOR2X1M U26 (.Y(par_chk_en), 
	.B(n7), 
	.A(current_state[2]));
   OAI31X1M U27 (.Y(next_state[2]), 
	.B0(n13), 
	.A2(n9), 
	.A1(parity_enable), 
	.A0(n8));
   AOI31X1M U28 (.Y(n13), 
	.B0(stp_chk_en), 
	.A2(n16), 
	.A1(n15), 
	.A0(n14));
   NOR2X1M U29 (.Y(n16), 
	.B(n18), 
	.A(n17));
   CLKINVX1M U30 (.Y(n18), 
	.A(bit_count[3]));
   CLKINVX1M U31 (.Y(n15), 
	.A(n7));
   OAI21X1M U32 (.Y(next_state[1]), 
	.B0(n7), 
	.A1(n19), 
	.A0(current_state[2]));
   AOI31X1M U33 (.Y(n19), 
	.B0(current_state[1]), 
	.A2(n20), 
	.A1(n14), 
	.A0(current_state[0]));
   NOR3X1M U34 (.Y(n20), 
	.C(bit_count[3]), 
	.B(strt_glitch), 
	.A(bit_count[0]));
   OAI221X1M U35 (.Y(next_state[0]), 
	.C0(n23), 
	.B1(n8), 
	.B0(n22), 
	.A1(n21), 
	.A0(S_DATA));
   AOI31X1M U36 (.Y(n23), 
	.B0(n27), 
	.A2(n26), 
	.A1(n25), 
	.A0(n24));
   NOR4X1M U37 (.Y(n27), 
	.D(n31), 
	.C(n30), 
	.B(n29), 
	.A(n28));
   CLKXOR2X2M U38 (.Y(n31), 
	.B(edge_count[5]), 
	.A(error_check_edge[5]));
   CLKXOR2X2M U39 (.Y(n30), 
	.B(edge_count[4]), 
	.A(error_check_edge[4]));
   NAND3BX1M U40 (.Y(n29), 
	.C(stp_chk_en), 
	.B(bit_count[3]), 
	.AN(bit_count[2]));
   NOR2X1M U41 (.Y(stp_chk_en), 
	.B(n7), 
	.A(n25));
   NAND4X1M U42 (.Y(n28), 
	.D(n35), 
	.C(n34), 
	.B(n33), 
	.A(n32));
   XNOR2X1M U43 (.Y(n35), 
	.B(error_check_edge[2]), 
	.A(edge_count[2]));
   NOR2X1M U44 (.Y(n34), 
	.B(n37), 
	.A(n36));
   CLKXOR2X2M U45 (.Y(n36), 
	.B(edge_count[0]), 
	.A(error_check_edge[0]));
   XNOR2X1M U46 (.Y(n33), 
	.B(error_check_edge[3]), 
	.A(edge_count[3]));
   MXI2X1M U47 (.Y(n32), 
	.S0(parity_enable), 
	.B(n39), 
	.A(n38));
   CLKNAND2X2M U48 (.Y(n39), 
	.B(n17), 
	.A(bit_count[1]));
   OR2X1M U49 (.Y(n38), 
	.B(n17), 
	.A(bit_count[1]));
   MXI2X1M U50 (.Y(n26), 
	.S0(current_state[0]), 
	.B(n40), 
	.A(S_DATA));
   NOR4BX1M U51 (.Y(n40), 
	.D(n41), 
	.C(bit_count[0]), 
	.B(bit_count[3]), 
	.AN(strt_glitch));
   CLKINVX1M U52 (.Y(n22), 
	.A(n9));
   NAND3X1M U53 (.Y(n9), 
	.C(bit_count[3]), 
	.B(n17), 
	.A(n14));
   CLKINVX1M U54 (.Y(n17), 
	.A(bit_count[0]));
   CLKINVX1M U55 (.Y(n14), 
	.A(n41));
   CLKNAND2X2M U56 (.Y(n41), 
	.B(n43), 
	.A(n42));
   NOR4X1M U57 (.Y(n43), 
	.D(n45), 
	.C(n44), 
	.B(bit_count[1]), 
	.A(bit_count[2]));
   CLKXOR2X2M U58 (.Y(n45), 
	.B(check_edge[0]), 
	.A(edge_count[0]));
   CLKXOR2X2M U59 (.Y(n44), 
	.B(check_edge[4]), 
	.A(edge_count[4]));
   NOR4X1M U60 (.Y(n42), 
	.D(n49), 
	.C(n48), 
	.B(n47), 
	.A(n46));
   CLKXOR2X2M U61 (.Y(n49), 
	.B(check_edge[3]), 
	.A(edge_count[3]));
   CLKXOR2X2M U62 (.Y(n48), 
	.B(check_edge[2]), 
	.A(edge_count[2]));
   CLKXOR2X2M U63 (.Y(n47), 
	.B(check_edge[5]), 
	.A(edge_count[5]));
   CLKXOR2X2M U64 (.Y(n46), 
	.B(check_edge[1]), 
	.A(edge_count[1]));
   CLKNAND2X2M U65 (.Y(edge_bit_en), 
	.B(n7), 
	.A(n6));
   CLKNAND2X2M U66 (.Y(n7), 
	.B(n50), 
	.A(current_state[1]));
   CLKINVX1M U67 (.Y(deser_en), 
	.A(n8));
   NAND3X1M U68 (.Y(n8), 
	.C(current_state[0]), 
	.B(n25), 
	.A(current_state[1]));
   CLKINVX1M U69 (.Y(n25), 
	.A(current_state[2]));
   NOR3X1M U70 (.Y(data_valid), 
	.C(par_err), 
	.B(stp_err), 
	.A(n21));
   NAND3X1M U71 (.Y(n21), 
	.C(current_state[0]), 
	.B(current_state[1]), 
	.A(current_state[2]));
   CLKNAND2X2M U72 (.Y(dat_samp_en), 
	.B(n6), 
	.A(n24));
   AO21XLM U73 (.Y(n6), 
	.B0(current_state[2]), 
	.A1(S_DATA), 
	.A0(n50));
   CLKINVX1M U74 (.Y(n50), 
	.A(current_state[0]));
   CLKINVX1M U75 (.Y(n24), 
	.A(current_state[1]));
endmodule

module edge_bit_counter_test_1 (
	CLK, 
	RST, 
	Enable, 
	Prescale, 
	bit_count, 
	edge_count, 
	test_si, 
	test_se);
   input CLK;
   input RST;
   input Enable;
   input [5:0] Prescale;
   output [3:0] bit_count;
   output [5:0] edge_count;
   input test_si;
   input test_se;

   // Internal wires
   wire N8;
   wire N9;
   wire N10;
   wire N11;
   wire N19;
   wire N20;
   wire N21;
   wire N22;
   wire N23;
   wire N24;
   wire N25;
   wire N26;
   wire N27;
   wire N28;
   wire N29;
   wire N30;
   wire N31;
   wire n14;
   wire n19;
   wire n20;
   wire n21;
   wire n22;
   wire n23;
   wire n24;
   wire n25;
   wire n26;
   wire n27;
   wire n28;
   wire n29;
   wire n30;
   wire \add_31/carry[5] ;
   wire \add_31/carry[4] ;
   wire \add_31/carry[3] ;
   wire \add_31/carry[2] ;
   wire n2;
   wire n13;
   wire n15;
   wire n16;
   wire n17;
   wire n18;
   wire n31;
   wire n32;
   wire n33;
   wire n34;
   wire n35;
   wire n36;
   wire n37;
   wire n38;
   wire n39;
   wire n40;
   wire n41;
   wire n42;
   wire n43;
   wire n44;

   SDFFRQX2M \bit_count_reg[2]  (.SI(n42), 
	.SE(test_se), 
	.RN(RST), 
	.Q(bit_count[2]), 
	.D(n28), 
	.CK(CLK));
   SDFFRQX2M \bit_count_reg[1]  (.SI(n41), 
	.SE(test_se), 
	.RN(RST), 
	.Q(bit_count[1]), 
	.D(n29), 
	.CK(CLK));
   SDFFRQX2M \bit_count_reg[0]  (.SI(test_si), 
	.SE(test_se), 
	.RN(RST), 
	.Q(bit_count[0]), 
	.D(n30), 
	.CK(CLK));
   SDFFRQX2M \edge_count_reg[5]  (.SI(edge_count[4]), 
	.SE(test_se), 
	.RN(RST), 
	.Q(edge_count[5]), 
	.D(N24), 
	.CK(CLK));
   SDFFRQX2M \edge_count_reg[0]  (.SI(n14), 
	.SE(test_se), 
	.RN(RST), 
	.Q(edge_count[0]), 
	.D(N19), 
	.CK(CLK));
   SDFFRQX2M \edge_count_reg[4]  (.SI(edge_count[3]), 
	.SE(test_se), 
	.RN(RST), 
	.Q(edge_count[4]), 
	.D(N23), 
	.CK(CLK));
   SDFFRQX2M \edge_count_reg[3]  (.SI(edge_count[2]), 
	.SE(test_se), 
	.RN(RST), 
	.Q(edge_count[3]), 
	.D(N22), 
	.CK(CLK));
   SDFFRQX2M \edge_count_reg[2]  (.SI(edge_count[1]), 
	.SE(test_se), 
	.RN(RST), 
	.Q(edge_count[2]), 
	.D(N21), 
	.CK(CLK));
   SDFFRQX2M \edge_count_reg[1]  (.SI(edge_count[0]), 
	.SE(test_se), 
	.RN(RST), 
	.Q(edge_count[1]), 
	.D(N20), 
	.CK(CLK));
   SDFFRX1M \bit_count_reg[3]  (.SI(n43), 
	.SE(test_se), 
	.RN(RST), 
	.QN(n14), 
	.Q(bit_count[3]), 
	.D(n27), 
	.CK(CLK));
   INVX2M U14 (.Y(n40), 
	.A(n23));
   INVX2M U15 (.Y(n44), 
	.A(Enable));
   NOR2X2M U16 (.Y(n23), 
	.B(N31), 
	.A(n44));
   AOI21X2M U17 (.Y(n26), 
	.B0(n23), 
	.A1(Enable), 
	.A0(n41));
   NOR2BX2M U18 (.Y(N20), 
	.B(n40), 
	.AN(N8));
   NOR2BX2M U19 (.Y(N21), 
	.B(n40), 
	.AN(N9));
   NOR2BX2M U20 (.Y(N22), 
	.B(n40), 
	.AN(N10));
   NOR2BX2M U21 (.Y(N23), 
	.B(n40), 
	.AN(N11));
   OAI32X1M U22 (.Y(n30), 
	.B1(n40), 
	.B0(n41), 
	.A2(n23), 
	.A1(bit_count[0]), 
	.A0(n44));
   OAI32X1M U23 (.Y(n28), 
	.B1(n43), 
	.B0(n25), 
	.A2(n42), 
	.A1(bit_count[2]), 
	.A0(n24));
   AOI21BX2M U24 (.Y(n25), 
	.B0N(n26), 
	.A1(n42), 
	.A0(Enable));
   OAI32X1M U25 (.Y(n27), 
	.B1(n14), 
	.B0(n21), 
	.A2(n44), 
	.A1(n20), 
	.A0(n19));
   NAND3X2M U26 (.Y(n19), 
	.C(bit_count[2]), 
	.B(n14), 
	.A(N31));
   NOR2X2M U27 (.Y(n21), 
	.B(n23), 
	.A(n22));
   AOI2BB1X2M U28 (.Y(n22), 
	.B0(n44), 
	.A1N(n43), 
	.A0N(n20));
   NAND3X2M U29 (.Y(n24), 
	.C(Enable), 
	.B(n40), 
	.A(bit_count[0]));
   OAI22X1M U30 (.Y(n29), 
	.B1(n24), 
	.B0(bit_count[1]), 
	.A1(n42), 
	.A0(n26));
   OR2X2M U31 (.Y(n13), 
	.B(Prescale[0]), 
	.A(Prescale[1]));
   NOR2X2M U32 (.Y(N24), 
	.B(n40), 
	.A(n2));
   XNOR2X2M U33 (.Y(n2), 
	.B(edge_count[5]), 
	.A(\add_31/carry[5] ));
   NOR2X2M U34 (.Y(N19), 
	.B(n40), 
	.A(edge_count[0]));
   INVX2M U35 (.Y(n18), 
	.A(Prescale[3]));
   NAND2X2M U36 (.Y(n20), 
	.B(bit_count[0]), 
	.A(bit_count[1]));
   INVX2M U37 (.Y(n41), 
	.A(bit_count[0]));
   INVX2M U38 (.Y(n42), 
	.A(bit_count[1]));
   ADDHX1M U39 (.S(N8), 
	.CO(\add_31/carry[2] ), 
	.B(edge_count[0]), 
	.A(edge_count[1]));
   ADDHX1M U40 (.S(N9), 
	.CO(\add_31/carry[3] ), 
	.B(\add_31/carry[2] ), 
	.A(edge_count[2]));
   ADDHX1M U41 (.S(N10), 
	.CO(\add_31/carry[4] ), 
	.B(\add_31/carry[3] ), 
	.A(edge_count[3]));
   INVX2M U42 (.Y(n43), 
	.A(bit_count[2]));
   ADDHX1M U43 (.S(N11), 
	.CO(\add_31/carry[5] ), 
	.B(\add_31/carry[4] ), 
	.A(edge_count[4]));
   CLKINVX1M U44 (.Y(N25), 
	.A(Prescale[0]));
   OAI2BB1X1M U45 (.Y(N26), 
	.B0(n13), 
	.A1N(Prescale[1]), 
	.A0N(Prescale[0]));
   NOR2X1M U46 (.Y(n15), 
	.B(Prescale[2]), 
	.A(n13));
   AO21XLM U47 (.Y(N27), 
	.B0(n15), 
	.A1(Prescale[2]), 
	.A0(n13));
   CLKNAND2X2M U48 (.Y(n16), 
	.B(n18), 
	.A(n15));
   OAI21X1M U49 (.Y(N28), 
	.B0(n16), 
	.A1(n18), 
	.A0(n15));
   XNOR2X1M U50 (.Y(N29), 
	.B(n16), 
	.A(Prescale[4]));
   NOR2X1M U51 (.Y(n17), 
	.B(n16), 
	.A(Prescale[4]));
   CLKXOR2X2M U52 (.Y(N30), 
	.B(n17), 
	.A(Prescale[5]));
   NOR2BX1M U53 (.Y(n31), 
	.B(N25), 
	.AN(edge_count[0]));
   OAI2B2X1M U54 (.Y(n35), 
	.B1(n31), 
	.B0(edge_count[1]), 
	.A1N(N26), 
	.A0(n31));
   NOR2BX1M U55 (.Y(n32), 
	.B(edge_count[0]), 
	.AN(N25));
   OAI2B2X1M U56 (.Y(n34), 
	.B1(n32), 
	.B0(N26), 
	.A1N(edge_count[1]), 
	.A0(n32));
   XNOR2X1M U57 (.Y(n33), 
	.B(edge_count[5]), 
	.A(N30));
   NAND3X1M U58 (.Y(n39), 
	.C(n33), 
	.B(n34), 
	.A(n35));
   CLKXOR2X2M U59 (.Y(n38), 
	.B(edge_count[4]), 
	.A(N29));
   CLKXOR2X2M U60 (.Y(n37), 
	.B(edge_count[2]), 
	.A(N27));
   CLKXOR2X2M U61 (.Y(n36), 
	.B(edge_count[3]), 
	.A(N28));
   NOR4X1M U62 (.Y(N31), 
	.D(n36), 
	.C(n37), 
	.B(n38), 
	.A(n39));
endmodule

module data_sampling_test_1 (
	CLK, 
	RST, 
	S_DATA, 
	Prescale, 
	edge_count, 
	Enable, 
	sampled_bit, 
	test_si, 
	test_se);
   input CLK;
   input RST;
   input S_DATA;
   input [5:0] Prescale;
   input [5:0] edge_count;
   input Enable;
   output sampled_bit;
   input test_si;
   input test_se;

   // Internal wires
   wire N58;
   wire n23;
   wire n24;
   wire n25;
   wire \add_21/carry[4] ;
   wire \add_21/carry[3] ;
   wire \add_21/carry[2] ;
   wire n1;
   wire n2;
   wire n3;
   wire n4;
   wire n5;
   wire n6;
   wire n11;
   wire n12;
   wire n13;
   wire n14;
   wire n15;
   wire n16;
   wire n17;
   wire n18;
   wire n19;
   wire n20;
   wire n21;
   wire n22;
   wire n26;
   wire n27;
   wire n28;
   wire n29;
   wire n30;
   wire n31;
   wire n32;
   wire n33;
   wire n34;
   wire n35;
   wire n36;
   wire n37;
   wire n38;
   wire n39;
   wire n40;
   wire n41;
   wire n42;
   wire n43;
   wire n44;
   wire n45;
   wire [4:0] half_edges;
   wire [4:0] half_edges_p1;
   wire [4:0] half_edges_n1;
   wire [2:0] Samples;

   SDFFRQX2M \Samples_reg[2]  (.SI(Samples[1]), 
	.SE(test_se), 
	.RN(RST), 
	.Q(Samples[2]), 
	.D(n25), 
	.CK(CLK));
   SDFFRQX2M \Samples_reg[1]  (.SI(Samples[0]), 
	.SE(test_se), 
	.RN(RST), 
	.Q(Samples[1]), 
	.D(n24), 
	.CK(CLK));
   SDFFRQX2M \Samples_reg[0]  (.SI(test_si), 
	.SE(test_se), 
	.RN(RST), 
	.Q(Samples[0]), 
	.D(n23), 
	.CK(CLK));
   SDFFRQX2M sampled_bit_reg (.SI(Samples[2]), 
	.SE(test_se), 
	.RN(RST), 
	.Q(sampled_bit), 
	.D(N58), 
	.CK(CLK));
   INVX2M U4 (.Y(n12), 
	.A(half_edges[2]));
   ADDHX1M U5 (.S(half_edges_p1[2]), 
	.CO(\add_21/carry[3] ), 
	.B(\add_21/carry[2] ), 
	.A(half_edges[2]));
   ADDHX1M U6 (.S(half_edges_p1[1]), 
	.CO(\add_21/carry[2] ), 
	.B(half_edges[0]), 
	.A(half_edges[1]));
   ADDHX1M U10 (.S(half_edges_p1[3]), 
	.CO(\add_21/carry[4] ), 
	.B(\add_21/carry[3] ), 
	.A(half_edges[3]));
   INVX2M U11 (.Y(n4), 
	.A(Prescale[3]));
   CLKINVX1M U12 (.Y(half_edges[0]), 
	.A(Prescale[1]));
   NOR2X1M U13 (.Y(n1), 
	.B(Prescale[1]), 
	.A(Prescale[2]));
   AO21XLM U14 (.Y(half_edges[1]), 
	.B0(n1), 
	.A1(Prescale[2]), 
	.A0(Prescale[1]));
   CLKNAND2X2M U15 (.Y(n2), 
	.B(n4), 
	.A(n1));
   OAI21X1M U16 (.Y(half_edges[2]), 
	.B0(n2), 
	.A1(n4), 
	.A0(n1));
   XNOR2X1M U17 (.Y(half_edges[3]), 
	.B(n2), 
	.A(Prescale[4]));
   NOR2X1M U18 (.Y(n3), 
	.B(n2), 
	.A(Prescale[4]));
   CLKXOR2X2M U19 (.Y(half_edges[4]), 
	.B(n3), 
	.A(Prescale[5]));
   CLKXOR2X2M U20 (.Y(half_edges_p1[4]), 
	.B(half_edges[4]), 
	.A(\add_21/carry[4] ));
   NOR2X1M U21 (.Y(n5), 
	.B(half_edges[0]), 
	.A(half_edges[1]));
   AO21XLM U22 (.Y(half_edges_n1[1]), 
	.B0(n5), 
	.A1(half_edges[1]), 
	.A0(half_edges[0]));
   CLKNAND2X2M U23 (.Y(n6), 
	.B(n12), 
	.A(n5));
   OAI21X1M U24 (.Y(half_edges_n1[2]), 
	.B0(n6), 
	.A1(n12), 
	.A0(n5));
   XNOR2X1M U25 (.Y(half_edges_n1[3]), 
	.B(n6), 
	.A(half_edges[3]));
   NOR2X1M U26 (.Y(n11), 
	.B(n6), 
	.A(half_edges[3]));
   CLKXOR2X2M U27 (.Y(half_edges_n1[4]), 
	.B(n11), 
	.A(half_edges[4]));
   MXI2X1M U28 (.Y(n25), 
	.S0(n15), 
	.B(n14), 
	.A(n13));
   NOR2X1M U29 (.Y(n15), 
	.B(n17), 
	.A(n16));
   NAND4X1M U30 (.Y(n17), 
	.D(n21), 
	.C(n20), 
	.B(n19), 
	.A(n18));
   CLKXOR2X2M U31 (.Y(n21), 
	.B(half_edges_p1[1]), 
	.A(n22));
   XNOR2X1M U32 (.Y(n20), 
	.B(half_edges_p1[2]), 
	.A(edge_count[2]));
   XNOR2X1M U33 (.Y(n19), 
	.B(half_edges_p1[3]), 
	.A(edge_count[3]));
   CLKXOR2X2M U34 (.Y(n18), 
	.B(half_edges_p1[4]), 
	.A(n26));
   NAND4BX1M U35 (.Y(n16), 
	.D(n29), 
	.C(n28), 
	.B(n27), 
	.AN(edge_count[5]));
   XNOR2X1M U36 (.Y(n27), 
	.B(Prescale[1]), 
	.A(edge_count[0]));
   CLKNAND2X2M U37 (.Y(n13), 
	.B(Enable), 
	.A(Samples[2]));
   MXI2X1M U38 (.Y(n24), 
	.S0(n28), 
	.B(n30), 
	.A(n14));
   NAND4X1M U39 (.Y(n28), 
	.D(n34), 
	.C(n33), 
	.B(n32), 
	.A(n31));
   NOR4BX1M U40 (.Y(n34), 
	.D(n36), 
	.C(n35), 
	.B(edge_count[5]), 
	.AN(n29));
   CLKXOR2X2M U41 (.Y(n36), 
	.B(edge_count[1]), 
	.A(half_edges[1]));
   CLKXOR2X2M U42 (.Y(n35), 
	.B(edge_count[0]), 
	.A(half_edges[0]));
   XNOR2X1M U43 (.Y(n33), 
	.B(half_edges[3]), 
	.A(edge_count[3]));
   CLKXOR2X2M U44 (.Y(n32), 
	.B(half_edges[4]), 
	.A(n26));
   CLKINVX1M U45 (.Y(n26), 
	.A(edge_count[4]));
   XNOR2X1M U46 (.Y(n31), 
	.B(half_edges[2]), 
	.A(edge_count[2]));
   CLKNAND2X2M U47 (.Y(n30), 
	.B(Enable), 
	.A(Samples[1]));
   MXI2X1M U48 (.Y(n23), 
	.S0(n29), 
	.B(n37), 
	.A(n14));
   NAND4X1M U49 (.Y(n29), 
	.D(n41), 
	.C(n40), 
	.B(n39), 
	.A(n38));
   NOR3X1M U50 (.Y(n41), 
	.C(n43), 
	.B(edge_count[5]), 
	.A(n42));
   CLKXOR2X2M U51 (.Y(n43), 
	.B(edge_count[0]), 
	.A(Prescale[1]));
   CLKXOR2X2M U52 (.Y(n42), 
	.B(edge_count[4]), 
	.A(half_edges_n1[4]));
   XNOR2X1M U53 (.Y(n40), 
	.B(half_edges_n1[2]), 
	.A(edge_count[2]));
   XNOR2X1M U54 (.Y(n39), 
	.B(half_edges_n1[3]), 
	.A(edge_count[3]));
   CLKXOR2X2M U55 (.Y(n38), 
	.B(half_edges_n1[1]), 
	.A(n22));
   CLKINVX1M U56 (.Y(n22), 
	.A(edge_count[1]));
   CLKNAND2X2M U57 (.Y(n37), 
	.B(Enable), 
	.A(Samples[0]));
   CLKNAND2X2M U58 (.Y(n14), 
	.B(Enable), 
	.A(S_DATA));
   AOI21BX1M U59 (.Y(N58), 
	.B0N(Enable), 
	.A1(n45), 
	.A0(n44));
   OAI21X1M U60 (.Y(n45), 
	.B0(Samples[2]), 
	.A1(Samples[1]), 
	.A0(Samples[0]));
   CLKNAND2X2M U61 (.Y(n44), 
	.B(Samples[1]), 
	.A(Samples[0]));
endmodule

module deserializer_DATA_WIDTH8_test_1 (
	CLK, 
	RST, 
	sampled_bit, 
	Enable, 
	edge_count, 
	Prescale, 
	P_DATA, 
	test_so, 
	test_se);
   input CLK;
   input RST;
   input sampled_bit;
   input Enable;
   input [5:0] edge_count;
   input [5:0] Prescale;
   output [7:0] P_DATA;
   output test_so;
   input test_se;

   // Internal wires
   wire N1;
   wire N2;
   wire N3;
   wire N4;
   wire N5;
   wire N6;
   wire N7;
   wire n1;
   wire n11;
   wire n13;
   wire n15;
   wire n17;
   wire n19;
   wire n21;
   wire n23;
   wire n25;
   wire n2;
   wire n3;
   wire n4;
   wire n5;
   wire n6;
   wire n7;
   wire n8;
   wire n9;
   wire n26;
   wire n27;
   wire n28;
   wire n29;
   wire n30;
   wire n31;
   wire n32;
   wire n33;
   wire n34;
   wire n35;
   wire n36;
   wire n37;
   wire n38;
   wire n39;

   assign test_so = n32 ;

   SDFFRQX2M \P_DATA_reg[0]  (.SI(sampled_bit), 
	.SE(test_se), 
	.RN(RST), 
	.Q(P_DATA[0]), 
	.D(n11), 
	.CK(CLK));
   SDFFRQX2M \P_DATA_reg[5]  (.SI(n35), 
	.SE(test_se), 
	.RN(RST), 
	.Q(P_DATA[5]), 
	.D(n21), 
	.CK(CLK));
   SDFFRQX2M \P_DATA_reg[1]  (.SI(P_DATA[0]), 
	.SE(test_se), 
	.RN(RST), 
	.Q(P_DATA[1]), 
	.D(n13), 
	.CK(CLK));
   SDFFRQX2M \P_DATA_reg[4]  (.SI(n36), 
	.SE(test_se), 
	.RN(RST), 
	.Q(P_DATA[4]), 
	.D(n19), 
	.CK(CLK));
   SDFFRQX2M \P_DATA_reg[7]  (.SI(n33), 
	.SE(test_se), 
	.RN(RST), 
	.Q(P_DATA[7]), 
	.D(n25), 
	.CK(CLK));
   SDFFRQX2M \P_DATA_reg[3]  (.SI(n37), 
	.SE(test_se), 
	.RN(RST), 
	.Q(P_DATA[3]), 
	.D(n17), 
	.CK(CLK));
   SDFFRQX2M \P_DATA_reg[6]  (.SI(n34), 
	.SE(test_se), 
	.RN(RST), 
	.Q(P_DATA[6]), 
	.D(n23), 
	.CK(CLK));
   SDFFRQX2M \P_DATA_reg[2]  (.SI(n38), 
	.SE(test_se), 
	.RN(RST), 
	.Q(P_DATA[2]), 
	.D(n15), 
	.CK(CLK));
   OAI22X1M U3 (.Y(n13), 
	.B1(n37), 
	.B0(n1), 
	.A1(n38), 
	.A0(n39));
   OAI22X1M U4 (.Y(n15), 
	.B1(n36), 
	.B0(n1), 
	.A1(n37), 
	.A0(n39));
   OAI22X1M U5 (.Y(n17), 
	.B1(n35), 
	.B0(n1), 
	.A1(n36), 
	.A0(n39));
   OAI22X1M U6 (.Y(n19), 
	.B1(n34), 
	.B0(n1), 
	.A1(n35), 
	.A0(n39));
   OAI22X1M U7 (.Y(n21), 
	.B1(n33), 
	.B0(n1), 
	.A1(n34), 
	.A0(n39));
   OAI22X1M U8 (.Y(n23), 
	.B1(n32), 
	.B0(n1), 
	.A1(n33), 
	.A0(n39));
   INVX2M U9 (.Y(n39), 
	.A(n1));
   NAND2X2M U10 (.Y(n1), 
	.B(Enable), 
	.A(N7));
   OAI2BB2X1M U11 (.Y(n11), 
	.B1(n38), 
	.B0(n1), 
	.A1N(n1), 
	.A0N(P_DATA[0]));
   OAI2BB2X1M U12 (.Y(n25), 
	.B1(n32), 
	.B0(n39), 
	.A1N(n39), 
	.A0N(sampled_bit));
   OR2X2M U13 (.Y(n2), 
	.B(Prescale[0]), 
	.A(Prescale[1]));
   INVX2M U14 (.Y(n6), 
	.A(Prescale[3]));
   INVX2M U15 (.Y(n37), 
	.A(P_DATA[2]));
   INVX2M U16 (.Y(n33), 
	.A(P_DATA[6]));
   INVX2M U17 (.Y(n32), 
	.A(P_DATA[7]));
   INVX2M U18 (.Y(n36), 
	.A(P_DATA[3]));
   INVX2M U19 (.Y(n35), 
	.A(P_DATA[4]));
   INVX2M U28 (.Y(n34), 
	.A(P_DATA[5]));
   INVX2M U29 (.Y(n38), 
	.A(P_DATA[1]));
   CLKINVX1M U30 (.Y(N1), 
	.A(Prescale[0]));
   OAI2BB1X1M U31 (.Y(N2), 
	.B0(n2), 
	.A1N(Prescale[1]), 
	.A0N(Prescale[0]));
   NOR2X1M U32 (.Y(n3), 
	.B(Prescale[2]), 
	.A(n2));
   AO21XLM U33 (.Y(N3), 
	.B0(n3), 
	.A1(Prescale[2]), 
	.A0(n2));
   CLKNAND2X2M U34 (.Y(n4), 
	.B(n6), 
	.A(n3));
   OAI21X1M U35 (.Y(N4), 
	.B0(n4), 
	.A1(n6), 
	.A0(n3));
   XNOR2X1M U36 (.Y(N5), 
	.B(n4), 
	.A(Prescale[4]));
   NOR2X1M U37 (.Y(n5), 
	.B(n4), 
	.A(Prescale[4]));
   CLKXOR2X2M U38 (.Y(N6), 
	.B(n5), 
	.A(Prescale[5]));
   NOR2BX1M U39 (.Y(n7), 
	.B(N1), 
	.AN(edge_count[0]));
   OAI2B2X1M U40 (.Y(n27), 
	.B1(n7), 
	.B0(edge_count[1]), 
	.A1N(N2), 
	.A0(n7));
   NOR2BX1M U41 (.Y(n8), 
	.B(edge_count[0]), 
	.AN(N1));
   OAI2B2X1M U42 (.Y(n26), 
	.B1(n8), 
	.B0(N2), 
	.A1N(edge_count[1]), 
	.A0(n8));
   XNOR2X1M U43 (.Y(n9), 
	.B(edge_count[5]), 
	.A(N6));
   NAND3X1M U44 (.Y(n31), 
	.C(n9), 
	.B(n26), 
	.A(n27));
   CLKXOR2X2M U45 (.Y(n30), 
	.B(edge_count[4]), 
	.A(N5));
   CLKXOR2X2M U46 (.Y(n29), 
	.B(edge_count[2]), 
	.A(N3));
   CLKXOR2X2M U47 (.Y(n28), 
	.B(edge_count[3]), 
	.A(N4));
   NOR4X1M U48 (.Y(N7), 
	.D(n28), 
	.C(n29), 
	.B(n30), 
	.A(n31));
endmodule

module strt_chk_test_1 (
	CLK, 
	RST, 
	sampled_bit, 
	Enable, 
	strt_glitch, 
	test_si, 
	test_se);
   input CLK;
   input RST;
   input sampled_bit;
   input Enable;
   output strt_glitch;
   input test_si;
   input test_se;

   // Internal wires
   wire n2;

   SDFFRQX2M strt_glitch_reg (.SI(test_si), 
	.SE(test_se), 
	.RN(RST), 
	.Q(strt_glitch), 
	.D(n2), 
	.CK(CLK));
   AO2B2X2M U2 (.Y(n2), 
	.B1(Enable), 
	.B0(sampled_bit), 
	.A1N(Enable), 
	.A0(strt_glitch));
endmodule

module par_chk_DATA_WIDTH8_test_1 (
	CLK, 
	RST, 
	parity_type, 
	sampled_bit, 
	Enable, 
	P_DATA, 
	par_err, 
	test_si, 
	test_se);
   input CLK;
   input RST;
   input parity_type;
   input sampled_bit;
   input Enable;
   input [7:0] P_DATA;
   output par_err;
   input test_si;
   input test_se;

   // Internal wires
   wire n1;
   wire n3;
   wire n4;
   wire n5;
   wire n6;
   wire n7;
   wire n9;
   wire n2;

   SDFFRQX2M par_err_reg (.SI(test_si), 
	.SE(test_se), 
	.RN(RST), 
	.Q(par_err), 
	.D(n9), 
	.CK(CLK));
   XNOR2X2M U2 (.Y(n5), 
	.B(parity_type), 
	.A(sampled_bit));
   XOR3XLM U3 (.Y(n4), 
	.C(n6), 
	.B(P_DATA[4]), 
	.A(P_DATA[5]));
   XNOR2X2M U4 (.Y(n6), 
	.B(P_DATA[6]), 
	.A(P_DATA[7]));
   XOR3XLM U5 (.Y(n3), 
	.C(n7), 
	.B(P_DATA[0]), 
	.A(P_DATA[1]));
   XNOR2X2M U6 (.Y(n7), 
	.B(P_DATA[2]), 
	.A(P_DATA[3]));
   OAI2BB2X1M U7 (.Y(n9), 
	.B1(n2), 
	.B0(n1), 
	.A1N(n2), 
	.A0N(par_err));
   INVX2M U8 (.Y(n2), 
	.A(Enable));
   XOR3XLM U9 (.Y(n1), 
	.C(n5), 
	.B(n4), 
	.A(n3));
endmodule

module stp_chk_test_1 (
	CLK, 
	RST, 
	sampled_bit, 
	Enable, 
	stp_err, 
	test_si, 
	test_se);
   input CLK;
   input RST;
   input sampled_bit;
   input Enable;
   output stp_err;
   input test_si;
   input test_se;

   // Internal wires
   wire n3;
   wire n1;

   SDFFRQX2M stp_err_reg (.SI(test_si), 
	.SE(test_se), 
	.RN(RST), 
	.Q(stp_err), 
	.D(n3), 
	.CK(CLK));
   OAI2BB2X1M U2 (.Y(n3), 
	.B1(n1), 
	.B0(sampled_bit), 
	.A1N(n1), 
	.A0N(stp_err));
   INVX2M U3 (.Y(n1), 
	.A(Enable));
endmodule

module UART_RX_test_1 (
	CLK, 
	RST, 
	RX_IN, 
	parity_enable, 
	parity_type, 
	Prescale, 
	P_DATA, 
	data_valid, 
	parity_error, 
	framing_error, 
	test_si, 
	test_so, 
	test_se, 
	FE_OFN6_SYNC_UART_SCAN_RST, 
	FE_OFN13_SE, 
	FE_OFN14_SE);
   input CLK;
   input RST;
   input RX_IN;
   input parity_enable;
   input parity_type;
   input [5:0] Prescale;
   output [7:0] P_DATA;
   output data_valid;
   output parity_error;
   output framing_error;
   input test_si;
   output test_so;
   input test_se;
   input FE_OFN6_SYNC_UART_SCAN_RST;
   input FE_OFN13_SE;
   input FE_OFN14_SE;

   // Internal wires
   wire strt_glitch;
   wire strt_chk_en;
   wire edge_bit_en;
   wire deser_en;
   wire par_chk_en;
   wire stp_chk_en;
   wire dat_samp_en;
   wire sampled_bit;
   wire n4;
   wire [3:0] bit_count;
   wire [5:0] edge_count;

   uart_rx_fsm_DATA_WIDTH8_test_1 U0_uart_fsm (.CLK(CLK), 
	.RST(RST), 
	.S_DATA(RX_IN), 
	.Prescale({ Prescale[5],
		Prescale[4],
		Prescale[3],
		Prescale[2],
		Prescale[1],
		Prescale[0] }), 
	.parity_enable(parity_enable), 
	.bit_count({ bit_count[3],
		bit_count[2],
		bit_count[1],
		bit_count[0] }), 
	.edge_count({ edge_count[5],
		edge_count[4],
		edge_count[3],
		edge_count[2],
		edge_count[1],
		edge_count[0] }), 
	.par_err(parity_error), 
	.stp_err(framing_error), 
	.strt_glitch(strt_glitch), 
	.strt_chk_en(strt_chk_en), 
	.edge_bit_en(edge_bit_en), 
	.deser_en(deser_en), 
	.par_chk_en(par_chk_en), 
	.stp_chk_en(stp_chk_en), 
	.dat_samp_en(dat_samp_en), 
	.data_valid(data_valid), 
	.test_so(test_so), 
	.test_se(FE_OFN13_SE), 
	.FE_OFN6_SYNC_UART_SCAN_RST(FE_OFN6_SYNC_UART_SCAN_RST), 
	.FE_OFN14_SE(FE_OFN14_SE));
   edge_bit_counter_test_1 U0_edge_bit_counter (.CLK(CLK), 
	.RST(RST), 
	.Enable(edge_bit_en), 
	.Prescale({ Prescale[5],
		Prescale[4],
		Prescale[3],
		Prescale[2],
		Prescale[1],
		Prescale[0] }), 
	.bit_count({ bit_count[3],
		bit_count[2],
		bit_count[1],
		bit_count[0] }), 
	.edge_count({ edge_count[5],
		edge_count[4],
		edge_count[3],
		edge_count[2],
		edge_count[1],
		edge_count[0] }), 
	.test_si(n4), 
	.test_se(test_se));
   data_sampling_test_1 U0_data_sampling (.CLK(CLK), 
	.RST(FE_OFN6_SYNC_UART_SCAN_RST), 
	.S_DATA(RX_IN), 
	.Prescale({ Prescale[5],
		Prescale[4],
		Prescale[3],
		Prescale[2],
		Prescale[1],
		Prescale[0] }), 
	.edge_count({ edge_count[5],
		edge_count[4],
		edge_count[3],
		edge_count[2],
		edge_count[1],
		edge_count[0] }), 
	.Enable(dat_samp_en), 
	.sampled_bit(sampled_bit), 
	.test_si(test_si), 
	.test_se(FE_OFN13_SE));
   deserializer_DATA_WIDTH8_test_1 U0_deserializer (.CLK(CLK), 
	.RST(FE_OFN6_SYNC_UART_SCAN_RST), 
	.sampled_bit(sampled_bit), 
	.Enable(deser_en), 
	.edge_count({ edge_count[5],
		edge_count[4],
		edge_count[3],
		edge_count[2],
		edge_count[1],
		edge_count[0] }), 
	.Prescale({ Prescale[5],
		Prescale[4],
		Prescale[3],
		Prescale[2],
		Prescale[1],
		Prescale[0] }), 
	.P_DATA({ P_DATA[7],
		P_DATA[6],
		P_DATA[5],
		P_DATA[4],
		P_DATA[3],
		P_DATA[2],
		P_DATA[1],
		P_DATA[0] }), 
	.test_so(n4), 
	.test_se(FE_OFN14_SE));
   strt_chk_test_1 U0_strt_chk (.CLK(CLK), 
	.RST(FE_OFN6_SYNC_UART_SCAN_RST), 
	.sampled_bit(sampled_bit), 
	.Enable(strt_chk_en), 
	.strt_glitch(strt_glitch), 
	.test_si(framing_error), 
	.test_se(FE_OFN14_SE));
   par_chk_DATA_WIDTH8_test_1 U0_par_chk (.CLK(CLK), 
	.RST(FE_OFN6_SYNC_UART_SCAN_RST), 
	.parity_type(parity_type), 
	.sampled_bit(sampled_bit), 
	.Enable(par_chk_en), 
	.P_DATA({ P_DATA[7],
		P_DATA[6],
		P_DATA[5],
		P_DATA[4],
		P_DATA[3],
		P_DATA[2],
		P_DATA[1],
		P_DATA[0] }), 
	.par_err(parity_error), 
	.test_si(edge_count[5]), 
	.test_se(FE_OFN14_SE));
   stp_chk_test_1 U0_stp_chk (.CLK(CLK), 
	.RST(FE_OFN6_SYNC_UART_SCAN_RST), 
	.sampled_bit(sampled_bit), 
	.Enable(stp_chk_en), 
	.stp_err(framing_error), 
	.test_si(parity_error), 
	.test_se(FE_OFN14_SE));
endmodule

module UART_test_1 (
	RST, 
	TX_CLK, 
	RX_CLK, 
	RX_IN_S, 
	RX_OUT_P, 
	RX_OUT_V, 
	TX_IN_P, 
	TX_IN_V, 
	TX_OUT_S, 
	TX_OUT_V, 
	Prescale, 
	parity_enable, 
	parity_type, 
	parity_error, 
	framing_error, 
	test_si2, 
	test_si1, 
	test_so1, 
	test_se, 
	FE_OFN6_SYNC_UART_SCAN_RST, 
	FE_OFN13_SE, 
	FE_OFN14_SE, 
	FE_OFN15_SE, 
	FE_OFN16_SE);
   input RST;
   input TX_CLK;
   input RX_CLK;
   input RX_IN_S;
   output [7:0] RX_OUT_P;
   output RX_OUT_V;
   input [7:0] TX_IN_P;
   input TX_IN_V;
   output TX_OUT_S;
   output TX_OUT_V;
   input [5:0] Prescale;
   input parity_enable;
   input parity_type;
   output parity_error;
   output framing_error;
   input test_si2;
   input test_si1;
   output test_so1;
   input test_se;
   input FE_OFN6_SYNC_UART_SCAN_RST;
   input FE_OFN13_SE;
   input FE_OFN14_SE;
   input FE_OFN15_SE;
   input FE_OFN16_SE;

   // Internal wires
   wire n4;

   UART_TX_DATA_WIDTH8_test_1 U0_UART_TX (.CLK(TX_CLK), 
	.RST(FE_OFN6_SYNC_UART_SCAN_RST), 
	.P_DATA({ TX_IN_P[7],
		TX_IN_P[6],
		TX_IN_P[5],
		TX_IN_P[4],
		TX_IN_P[3],
		TX_IN_P[2],
		TX_IN_P[1],
		TX_IN_P[0] }), 
	.Data_Valid(TX_IN_V), 
	.parity_enable(parity_enable), 
	.parity_type(parity_type), 
	.TX_OUT(TX_OUT_S), 
	.busy(TX_OUT_V), 
	.test_si2(test_si2), 
	.test_si1(n4), 
	.test_so1(test_so1), 
	.test_se(FE_OFN14_SE), 
	.FE_OFN15_SE(FE_OFN15_SE), 
	.FE_OFN16_SE(FE_OFN16_SE));
   UART_RX_test_1 U0_UART_RX (.CLK(RX_CLK), 
	.RST(RST), 
	.RX_IN(RX_IN_S), 
	.parity_enable(parity_enable), 
	.parity_type(parity_type), 
	.Prescale({ Prescale[5],
		Prescale[4],
		Prescale[3],
		Prescale[2],
		Prescale[1],
		Prescale[0] }), 
	.P_DATA({ RX_OUT_P[7],
		RX_OUT_P[6],
		RX_OUT_P[5],
		RX_OUT_P[4],
		RX_OUT_P[3],
		RX_OUT_P[2],
		RX_OUT_P[1],
		RX_OUT_P[0] }), 
	.data_valid(RX_OUT_V), 
	.parity_error(parity_error), 
	.framing_error(framing_error), 
	.test_si(test_si1), 
	.test_so(n4), 
	.test_se(test_se), 
	.FE_OFN6_SYNC_UART_SCAN_RST(FE_OFN6_SYNC_UART_SCAN_RST), 
	.FE_OFN13_SE(FE_OFN13_SE), 
	.FE_OFN14_SE(FE_OFN14_SE));
endmodule

module SYS_CTRL_test_1 (
	CLK, 
	RST, 
	RF_RdData, 
	RF_RdData_VLD, 
	ALU_OUT, 
	ALU_OUT_VLD, 
	UART_RX_DATA, 
	UART_RX_VLD, 
	FIFO_FULL, 
	ALU_EN, 
	ALU_FUN, 
	CLKG_EN, 
	CLKDIV_EN, 
	RF_WrEn, 
	RF_RdEn, 
	RF_Address, 
	RF_WrData, 
	UART_TX_DATA, 
	UART_TX_VLD, 
	test_si2, 
	test_si1, 
	test_so2, 
	test_so1, 
	test_se, 
	FE_OFN3_SYNC_REF_SCAN_RST, 
	FE_OFN4_SYNC_REF_SCAN_RST, 
	FE_OFN5_SYNC_REF_SCAN_RST, 
	FE_OFN14_SE, 
	FE_OFN15_SE, 
	FE_OFN16_SE);
   input CLK;
   input RST;
   input [7:0] RF_RdData;
   input RF_RdData_VLD;
   input [15:0] ALU_OUT;
   input ALU_OUT_VLD;
   input [7:0] UART_RX_DATA;
   input UART_RX_VLD;
   input FIFO_FULL;
   output ALU_EN;
   output [3:0] ALU_FUN;
   output CLKG_EN;
   output CLKDIV_EN;
   output RF_WrEn;
   output RF_RdEn;
   output [3:0] RF_Address;
   output [7:0] RF_WrData;
   output [7:0] UART_TX_DATA;
   output UART_TX_VLD;
   input test_si2;
   input test_si1;
   output test_so2;
   output test_so1;
   input test_se;
   input FE_OFN3_SYNC_REF_SCAN_RST;
   input FE_OFN4_SYNC_REF_SCAN_RST;
   input FE_OFN5_SYNC_REF_SCAN_RST;
   input FE_OFN14_SE;
   input FE_OFN15_SE;
   input FE_OFN16_SE;

   // Internal wires
   wire FE_PHN5_SI_1_;
   wire FE_PHN4_SI_1_;
   wire FE_PHN3_SI_1_;
   wire LTIE_LTIELO_NET;
   wire FE_OFN8_RF_Address_2_;
   wire FE_OFN7_RF_Address_3_;
   wire n35;
   wire n36;
   wire n37;
   wire n38;
   wire n39;
   wire n40;
   wire n41;
   wire n42;
   wire n43;
   wire n44;
   wire n45;
   wire n46;
   wire n53;
   wire n54;
   wire n55;
   wire n56;
   wire n57;
   wire n58;
   wire n59;
   wire n60;
   wire n61;
   wire n62;
   wire n63;
   wire n64;
   wire n65;
   wire n66;
   wire n67;
   wire n68;
   wire n69;
   wire n70;
   wire n71;
   wire n72;
   wire n73;
   wire n74;
   wire n75;
   wire n76;
   wire n77;
   wire n78;
   wire n79;
   wire n80;
   wire n81;
   wire n82;
   wire n83;
   wire n84;
   wire n85;
   wire n86;
   wire n87;
   wire n88;
   wire n89;
   wire n90;
   wire n91;
   wire n92;
   wire n93;
   wire n94;
   wire n95;
   wire n96;
   wire n97;
   wire n98;
   wire n99;
   wire n100;
   wire n101;
   wire n102;
   wire n103;
   wire n104;
   wire n105;
   wire n106;
   wire n107;
   wire n108;
   wire n109;
   wire n110;
   wire n111;
   wire n112;
   wire n113;
   wire n114;
   wire n115;
   wire n28;
   wire n29;
   wire n30;
   wire n31;
   wire n32;
   wire n33;
   wire n34;
   wire n47;
   wire n48;
   wire n49;
   wire n50;
   wire n51;
   wire n52;
   wire n116;
   wire n117;
   wire n118;
   wire n119;
   wire n120;
   wire n121;
   wire n122;
   wire n123;
   wire n125;
   wire n126;
   wire n127;
   wire n128;
   wire n129;
   wire n130;
   wire [3:0] current_state;
   wire [3:0] next_state;
   wire [15:0] ALU_OUT_REG;

   assign test_so2 = current_state[3] ;

   DLY4X1M FE_PHC5_SI_1_ (.Y(FE_PHN5_SI_1_), 
	.A(FE_PHN4_SI_1_));
   DLY4X1M FE_PHC4_SI_1_ (.Y(FE_PHN4_SI_1_), 
	.A(FE_PHN3_SI_1_));
   DLY4X1M FE_PHC3_SI_1_ (.Y(FE_PHN3_SI_1_), 
	.A(test_si2));
   TIELOM LTIE_LTIELO (.Y(LTIE_LTIELO_NET));
   BUFX2M FE_OFC8_RF_Address_2_ (.Y(RF_Address[2]), 
	.A(FE_OFN8_RF_Address_2_));
   BUFX2M FE_OFC7_RF_Address_3_ (.Y(RF_Address[3]), 
	.A(FE_OFN7_RF_Address_3_));
   SDFFRQX2M \ALU_OUT_REG_reg[7]  (.SI(ALU_OUT_REG[6]), 
	.SE(FE_OFN15_SE), 
	.RN(FE_OFN4_SYNC_REF_SCAN_RST), 
	.Q(ALU_OUT_REG[7]), 
	.D(n103), 
	.CK(CLK));
   SDFFRQX2M \ALU_OUT_REG_reg[6]  (.SI(ALU_OUT_REG[5]), 
	.SE(FE_OFN15_SE), 
	.RN(FE_OFN4_SYNC_REF_SCAN_RST), 
	.Q(ALU_OUT_REG[6]), 
	.D(n102), 
	.CK(CLK));
   SDFFRQX2M \ALU_OUT_REG_reg[5]  (.SI(ALU_OUT_REG[4]), 
	.SE(test_se), 
	.RN(RST), 
	.Q(ALU_OUT_REG[5]), 
	.D(n101), 
	.CK(CLK));
   SDFFRQX2M \ALU_OUT_REG_reg[4]  (.SI(ALU_OUT_REG[3]), 
	.SE(FE_OFN15_SE), 
	.RN(RST), 
	.Q(ALU_OUT_REG[4]), 
	.D(n100), 
	.CK(CLK));
   SDFFRQX2M \ALU_OUT_REG_reg[3]  (.SI(ALU_OUT_REG[2]), 
	.SE(test_se), 
	.RN(RST), 
	.Q(ALU_OUT_REG[3]), 
	.D(n99), 
	.CK(CLK));
   SDFFRQX2M \ALU_OUT_REG_reg[2]  (.SI(ALU_OUT_REG[1]), 
	.SE(test_se), 
	.RN(RST), 
	.Q(ALU_OUT_REG[2]), 
	.D(n98), 
	.CK(CLK));
   SDFFRQX2M \ALU_OUT_REG_reg[1]  (.SI(ALU_OUT_REG[0]), 
	.SE(test_se), 
	.RN(RST), 
	.Q(ALU_OUT_REG[1]), 
	.D(n97), 
	.CK(CLK));
   SDFFRQX2M \ALU_OUT_REG_reg[0]  (.SI(test_si1), 
	.SE(test_se), 
	.RN(RST), 
	.Q(ALU_OUT_REG[0]), 
	.D(n96), 
	.CK(CLK));
   SDFFRX1M \ALU_OUT_REG_reg[15]  (.SI(FE_PHN5_SI_1_), 
	.SE(test_se), 
	.RN(FE_OFN5_SYNC_REF_SCAN_RST), 
	.QN(n39), 
	.Q(n123), 
	.D(n111), 
	.CK(CLK));
   SDFFRX1M \ALU_OUT_REG_reg[14]  (.SI(n125), 
	.SE(FE_OFN16_SE), 
	.RN(FE_OFN3_SYNC_REF_SCAN_RST), 
	.QN(n40), 
	.Q(test_so1), 
	.D(n110), 
	.CK(CLK));
   SDFFRX1M \ALU_OUT_REG_reg[13]  (.SI(n126), 
	.SE(FE_OFN15_SE), 
	.RN(FE_OFN3_SYNC_REF_SCAN_RST), 
	.QN(n41), 
	.Q(n125), 
	.D(n109), 
	.CK(CLK));
   SDFFRX1M \ALU_OUT_REG_reg[12]  (.SI(n127), 
	.SE(FE_OFN15_SE), 
	.RN(FE_OFN3_SYNC_REF_SCAN_RST), 
	.QN(n42), 
	.Q(n126), 
	.D(n108), 
	.CK(CLK));
   SDFFRX1M \ALU_OUT_REG_reg[11]  (.SI(n128), 
	.SE(FE_OFN15_SE), 
	.RN(FE_OFN4_SYNC_REF_SCAN_RST), 
	.QN(n43), 
	.Q(n127), 
	.D(n107), 
	.CK(CLK));
   SDFFRX1M \ALU_OUT_REG_reg[10]  (.SI(n129), 
	.SE(FE_OFN15_SE), 
	.RN(FE_OFN4_SYNC_REF_SCAN_RST), 
	.QN(n44), 
	.Q(n128), 
	.D(n106), 
	.CK(CLK));
   SDFFRX1M \ALU_OUT_REG_reg[9]  (.SI(n130), 
	.SE(FE_OFN15_SE), 
	.RN(FE_OFN4_SYNC_REF_SCAN_RST), 
	.QN(n45), 
	.Q(n129), 
	.D(n105), 
	.CK(CLK));
   SDFFRX1M \ALU_OUT_REG_reg[8]  (.SI(ALU_OUT_REG[7]), 
	.SE(FE_OFN15_SE), 
	.RN(FE_OFN4_SYNC_REF_SCAN_RST), 
	.QN(n46), 
	.Q(n130), 
	.D(n104), 
	.CK(CLK));
   SDFFRX1M \RF_ADDR_REG_reg[2]  (.SI(n121), 
	.SE(test_se), 
	.RN(RST), 
	.QN(n36), 
	.Q(n120), 
	.D(n114), 
	.CK(CLK));
   SDFFRX1M \RF_ADDR_REG_reg[0]  (.SI(n123), 
	.SE(test_se), 
	.RN(FE_OFN5_SYNC_REF_SCAN_RST), 
	.QN(n38), 
	.Q(n122), 
	.D(n112), 
	.CK(CLK));
   SDFFRX1M \RF_ADDR_REG_reg[1]  (.SI(n122), 
	.SE(test_se), 
	.RN(FE_OFN5_SYNC_REF_SCAN_RST), 
	.QN(n37), 
	.Q(n121), 
	.D(n113), 
	.CK(CLK));
   SDFFRQX2M \current_state_reg[2]  (.SI(n47), 
	.SE(FE_OFN14_SE), 
	.RN(RST), 
	.Q(current_state[2]), 
	.D(next_state[2]), 
	.CK(CLK));
   SDFFRQX2M \current_state_reg[3]  (.SI(current_state[2]), 
	.SE(test_se), 
	.RN(RST), 
	.Q(current_state[3]), 
	.D(next_state[3]), 
	.CK(CLK));
   SDFFRQX2M \current_state_reg[0]  (.SI(n119), 
	.SE(test_se), 
	.RN(RST), 
	.Q(current_state[0]), 
	.D(next_state[0]), 
	.CK(CLK));
   SDFFRQX2M \current_state_reg[1]  (.SI(n30), 
	.SE(FE_OFN14_SE), 
	.RN(RST), 
	.Q(current_state[1]), 
	.D(next_state[1]), 
	.CK(CLK));
   SDFFRX1M \RF_ADDR_REG_reg[3]  (.SI(n120), 
	.SE(test_se), 
	.RN(RST), 
	.QN(n35), 
	.Q(n119), 
	.D(n115), 
	.CK(CLK));
   NOR2X2M U30 (.Y(ALU_FUN[2]), 
	.B(n64), 
	.A(n52));
   NOR2X2M U31 (.Y(ALU_FUN[0]), 
	.B(n64), 
	.A(n117));
   OAI22X1M U32 (.Y(FE_OFN8_RF_Address_2_), 
	.B1(n72), 
	.B0(n36), 
	.A1(n31), 
	.A0(n52));
   INVX2M U33 (.Y(n31), 
	.A(RF_RdEn));
   NOR2X2M U34 (.Y(RF_RdEn), 
	.B(n118), 
	.A(n61));
   AND3X2M U35 (.Y(n94), 
	.C(n72), 
	.B(n56), 
	.A(n55));
   NOR2X2M U36 (.Y(RF_WrData[0]), 
	.B(n117), 
	.A(n94));
   NOR2X2M U37 (.Y(RF_WrData[1]), 
	.B(n116), 
	.A(n94));
   NOR2X2M U38 (.Y(RF_WrData[2]), 
	.B(n52), 
	.A(n94));
   NOR2X2M U39 (.Y(RF_WrData[3]), 
	.B(n51), 
	.A(n94));
   NOR2X2M U40 (.Y(RF_WrData[4]), 
	.B(n50), 
	.A(n94));
   OAI21X2M U41 (.Y(UART_TX_VLD), 
	.B0(n81), 
	.A1(n80), 
	.A0(FIFO_FULL));
   NOR2X2M U42 (.Y(n84), 
	.B(FIFO_FULL), 
	.A(n65));
   NAND2BX2M U43 (.Y(n82), 
	.B(n93), 
	.AN(FIFO_FULL));
   NAND3X2M U44 (.Y(n67), 
	.C(n77), 
	.B(n47), 
	.A(n30));
   NOR2X2M U45 (.Y(n80), 
	.B(n32), 
	.A(n93));
   NAND3X2M U46 (.Y(n56), 
	.C(n95), 
	.B(n48), 
	.A(n30));
   NOR2X2M U47 (.Y(RF_WrEn), 
	.B(n118), 
	.A(n94));
   NAND4X2M U48 (.Y(next_state[3]), 
	.D(n56), 
	.C(n55), 
	.B(n54), 
	.A(n53));
   NAND3X2M U49 (.Y(n54), 
	.C(n57), 
	.B(n50), 
	.A(n117));
   INVX2M U50 (.Y(n28), 
	.A(n81));
   INVX2M U51 (.Y(n32), 
	.A(n65));
   NAND2X2M U52 (.Y(n64), 
	.B(n95), 
	.A(n59));
   NOR2X2M U53 (.Y(ALU_EN), 
	.B(n118), 
	.A(n64));
   INVX2M U54 (.Y(n34), 
	.A(n69));
   NAND4BX1M U55 (.Y(next_state[1]), 
	.D(n70), 
	.C(n60), 
	.B(n69), 
	.AN(ALU_EN));
   AOI21BX2M U56 (.Y(n70), 
	.B0N(n63), 
	.A1(n118), 
	.A0(n71));
   NAND2X2M U57 (.Y(n71), 
	.B(n61), 
	.A(n72));
   INVX2M U58 (.Y(n33), 
	.A(n55));
   NOR2X2M U59 (.Y(ALU_FUN[1]), 
	.B(n64), 
	.A(n116));
   NOR2X2M U60 (.Y(ALU_FUN[3]), 
	.B(n64), 
	.A(n51));
   OAI22X1M U61 (.Y(FE_OFN7_RF_Address_3_), 
	.B1(n72), 
	.B0(n35), 
	.A1(n31), 
	.A0(n51));
   NOR2X2M U62 (.Y(n59), 
	.B(current_state[0]), 
	.A(n48));
   NAND3X2M U63 (.Y(n61), 
	.C(n59), 
	.B(n49), 
	.A(current_state[1]));
   INVX2M U64 (.Y(n118), 
	.A(UART_RX_VLD));
   INVX2M U65 (.Y(n49), 
	.A(current_state[3]));
   INVX2M U66 (.Y(n48), 
	.A(current_state[2]));
   OAI221X1M U67 (.Y(RF_Address[0]), 
	.C0(n55), 
	.B1(n31), 
	.B0(n117), 
	.A1(n72), 
	.A0(n38));
   OAI22X1M U68 (.Y(RF_Address[1]), 
	.B1(n72), 
	.B0(n37), 
	.A1(n31), 
	.A0(n116));
   NOR2X2M U69 (.Y(n95), 
	.B(current_state[1]), 
	.A(n49));
   NOR2X2M U70 (.Y(n77), 
	.B(current_state[3]), 
	.A(current_state[2]));
   NOR2BX2M U71 (.Y(RF_WrData[5]), 
	.B(n94), 
	.AN(UART_RX_DATA[5]));
   NOR2BX2M U72 (.Y(RF_WrData[6]), 
	.B(n94), 
	.AN(UART_RX_DATA[6]));
   NOR2BX2M U73 (.Y(RF_WrData[7]), 
	.B(n94), 
	.AN(UART_RX_DATA[7]));
   NAND3X2M U74 (.Y(n72), 
	.C(n77), 
	.B(current_state[0]), 
	.A(current_state[1]));
   NAND4X2M U75 (.Y(n65), 
	.D(current_state[3]), 
	.C(current_state[0]), 
	.B(current_state[1]), 
	.A(current_state[2]));
   OAI21X2M U76 (.Y(UART_TX_DATA[0]), 
	.B0(n91), 
	.A1(n82), 
	.A0(n46));
   AOI22X1M U77 (.Y(n91), 
	.B1(ALU_OUT_REG[0]), 
	.B0(n84), 
	.A1(n28), 
	.A0(RF_RdData[0]));
   OAI21X2M U78 (.Y(UART_TX_DATA[1]), 
	.B0(n90), 
	.A1(n82), 
	.A0(n45));
   AOI22X1M U79 (.Y(n90), 
	.B1(ALU_OUT_REG[1]), 
	.B0(n84), 
	.A1(n28), 
	.A0(RF_RdData[1]));
   OAI21X2M U80 (.Y(UART_TX_DATA[2]), 
	.B0(n89), 
	.A1(n82), 
	.A0(n44));
   AOI22X1M U81 (.Y(n89), 
	.B1(ALU_OUT_REG[2]), 
	.B0(n84), 
	.A1(n28), 
	.A0(RF_RdData[2]));
   OAI21X2M U82 (.Y(UART_TX_DATA[3]), 
	.B0(n88), 
	.A1(n82), 
	.A0(n43));
   AOI22X1M U83 (.Y(n88), 
	.B1(ALU_OUT_REG[3]), 
	.B0(n84), 
	.A1(n28), 
	.A0(RF_RdData[3]));
   OAI21X2M U84 (.Y(UART_TX_DATA[4]), 
	.B0(n87), 
	.A1(n82), 
	.A0(n42));
   AOI22X1M U85 (.Y(n87), 
	.B1(ALU_OUT_REG[4]), 
	.B0(n84), 
	.A1(n28), 
	.A0(RF_RdData[4]));
   OAI21X2M U86 (.Y(UART_TX_DATA[5]), 
	.B0(n86), 
	.A1(n82), 
	.A0(n41));
   AOI22X1M U87 (.Y(n86), 
	.B1(ALU_OUT_REG[5]), 
	.B0(n84), 
	.A1(n28), 
	.A0(RF_RdData[5]));
   OAI21X2M U88 (.Y(UART_TX_DATA[6]), 
	.B0(n85), 
	.A1(n82), 
	.A0(n40));
   AOI22X1M U89 (.Y(n85), 
	.B1(ALU_OUT_REG[6]), 
	.B0(n84), 
	.A1(n28), 
	.A0(RF_RdData[6]));
   OAI21X2M U90 (.Y(UART_TX_DATA[7]), 
	.B0(n83), 
	.A1(n82), 
	.A0(n39));
   AOI22X1M U91 (.Y(n83), 
	.B1(ALU_OUT_REG[7]), 
	.B0(n84), 
	.A1(n28), 
	.A0(RF_RdData[7]));
   NAND3X2M U92 (.Y(n63), 
	.C(n59), 
	.B(current_state[3]), 
	.A(current_state[1]));
   NAND3X2M U93 (.Y(n55), 
	.C(current_state[0]), 
	.B(n48), 
	.A(n95));
   OAI211X2M U94 (.Y(next_state[2]), 
	.C0(n29), 
	.B0(n53), 
	.A1(n55), 
	.A0(n118));
   INVX2M U95 (.Y(n29), 
	.A(n58));
   OAI2B11X2M U96 (.Y(n58), 
	.C0(n61), 
	.B0(n60), 
	.A1N(n59), 
	.A0(RF_RdData_VLD));
   OAI211X2M U97 (.Y(next_state[0]), 
	.C0(n75), 
	.B0(n74), 
	.A1(n56), 
	.A0(n118));
   AOI211X2M U98 (.Y(n75), 
	.C0(n32), 
	.B0(n78), 
	.A1(n77), 
	.A0(n76));
   AOI32X1M U99 (.Y(n74), 
	.B1(n118), 
	.B0(n33), 
	.A2(n73), 
	.A1(n50), 
	.A0(n117));
   AOI21X2M U100 (.Y(n76), 
	.B0(n30), 
	.A1(current_state[1]), 
	.A0(UART_RX_VLD));
   AND3X2M U101 (.Y(n93), 
	.C(current_state[2]), 
	.B(current_state[0]), 
	.A(n95));
   AND4X2M U102 (.Y(n57), 
	.D(n66), 
	.C(UART_RX_VLD), 
	.B(UART_RX_DATA[2]), 
	.A(UART_RX_DATA[6]));
   NOR4X1M U103 (.Y(n66), 
	.D(n68), 
	.C(n67), 
	.B(UART_RX_DATA[1]), 
	.A(UART_RX_DATA[5]));
   NAND3X2M U104 (.Y(n81), 
	.C(n92), 
	.B(n59), 
	.A(RF_RdData_VLD));
   NOR3X2M U105 (.Y(n92), 
	.C(current_state[1]), 
	.B(current_state[3]), 
	.A(FIFO_FULL));
   INVX2M U106 (.Y(n117), 
	.A(UART_RX_DATA[0]));
   INVX2M U107 (.Y(n30), 
	.A(current_state[0]));
   INVX2M U108 (.Y(n47), 
	.A(current_state[1]));
   AND4X2M U109 (.Y(n53), 
	.D(n65), 
	.C(n64), 
	.B(n63), 
	.A(n62));
   NAND3X2M U110 (.Y(n62), 
	.C(UART_RX_DATA[4]), 
	.B(n57), 
	.A(UART_RX_DATA[0]));
   INVX2M U111 (.Y(n116), 
	.A(UART_RX_DATA[1]));
   INVX2M U112 (.Y(n52), 
	.A(UART_RX_DATA[2]));
   AND4X2M U113 (.Y(n73), 
	.D(n79), 
	.C(UART_RX_DATA[5]), 
	.B(UART_RX_VLD), 
	.A(UART_RX_DATA[1]));
   NOR4X1M U114 (.Y(n79), 
	.D(n68), 
	.C(n67), 
	.B(UART_RX_DATA[2]), 
	.A(UART_RX_DATA[6]));
   INVX2M U115 (.Y(n51), 
	.A(UART_RX_DATA[3]));
   NAND3X2M U116 (.Y(n60), 
	.C(n73), 
	.B(UART_RX_DATA[0]), 
	.A(UART_RX_DATA[4]));
   NOR2BX4M U117 (.Y(n78), 
	.B(n63), 
	.AN(ALU_OUT_VLD));
   AO2B2X2M U118 (.Y(n96), 
	.B1(n78), 
	.B0(ALU_OUT[0]), 
	.A1N(n78), 
	.A0(ALU_OUT_REG[0]));
   AO2B2X2M U119 (.Y(n97), 
	.B1(n78), 
	.B0(ALU_OUT[1]), 
	.A1N(n78), 
	.A0(ALU_OUT_REG[1]));
   AO2B2X2M U120 (.Y(n98), 
	.B1(n78), 
	.B0(ALU_OUT[2]), 
	.A1N(n78), 
	.A0(ALU_OUT_REG[2]));
   AO2B2X2M U121 (.Y(n99), 
	.B1(n78), 
	.B0(ALU_OUT[3]), 
	.A1N(n78), 
	.A0(ALU_OUT_REG[3]));
   AO2B2X2M U122 (.Y(n100), 
	.B1(n78), 
	.B0(ALU_OUT[4]), 
	.A1N(n78), 
	.A0(ALU_OUT_REG[4]));
   AO2B2X2M U123 (.Y(n101), 
	.B1(n78), 
	.B0(ALU_OUT[5]), 
	.A1N(n78), 
	.A0(ALU_OUT_REG[5]));
   AO2B2X2M U124 (.Y(n102), 
	.B1(n78), 
	.B0(ALU_OUT[6]), 
	.A1N(n78), 
	.A0(ALU_OUT_REG[6]));
   AO2B2X2M U125 (.Y(n103), 
	.B1(n78), 
	.B0(ALU_OUT[7]), 
	.A1N(n78), 
	.A0(ALU_OUT_REG[7]));
   NAND4X2M U126 (.Y(n69), 
	.D(n47), 
	.C(current_state[0]), 
	.B(n77), 
	.A(UART_RX_VLD));
   OAI22X1M U127 (.Y(n112), 
	.B1(n38), 
	.B0(n34), 
	.A1(n69), 
	.A0(n117));
   OAI22X1M U128 (.Y(n113), 
	.B1(n37), 
	.B0(n34), 
	.A1(n69), 
	.A0(n116));
   OAI22X1M U129 (.Y(n114), 
	.B1(n36), 
	.B0(n34), 
	.A1(n69), 
	.A0(n52));
   OAI22X1M U130 (.Y(n115), 
	.B1(n35), 
	.B0(n34), 
	.A1(n69), 
	.A0(n51));
   NAND2X2M U131 (.Y(n68), 
	.B(UART_RX_DATA[3]), 
	.A(UART_RX_DATA[7]));
   OAI2BB2X1M U132 (.Y(n104), 
	.B1(n46), 
	.B0(n78), 
	.A1N(n78), 
	.A0N(ALU_OUT[8]));
   OAI2BB2X1M U133 (.Y(n105), 
	.B1(n45), 
	.B0(n78), 
	.A1N(n78), 
	.A0N(ALU_OUT[9]));
   OAI2BB2X1M U134 (.Y(n106), 
	.B1(n44), 
	.B0(n78), 
	.A1N(n78), 
	.A0N(ALU_OUT[10]));
   OAI2BB2X1M U135 (.Y(n107), 
	.B1(n43), 
	.B0(n78), 
	.A1N(n78), 
	.A0N(ALU_OUT[11]));
   OAI2BB2X1M U136 (.Y(n108), 
	.B1(n42), 
	.B0(n78), 
	.A1N(n78), 
	.A0N(ALU_OUT[12]));
   OAI2BB2X1M U137 (.Y(n109), 
	.B1(n41), 
	.B0(n78), 
	.A1N(n78), 
	.A0N(ALU_OUT[13]));
   OAI2BB2X1M U138 (.Y(n110), 
	.B1(n40), 
	.B0(n78), 
	.A1N(n78), 
	.A0N(ALU_OUT[14]));
   OAI2BB2X1M U139 (.Y(n111), 
	.B1(n39), 
	.B0(n78), 
	.A1N(n78), 
	.A0N(ALU_OUT[15]));
   INVX2M U140 (.Y(n50), 
	.A(UART_RX_DATA[4]));
   NAND3X2M U141 (.Y(CLKG_EN), 
	.C(n80), 
	.B(n64), 
	.A(n63));
   INVX2M U3 (.Y(CLKDIV_EN), 
	.A(LTIE_LTIELO_NET));
endmodule

module RegFile_test_1 (
	CLK, 
	RST, 
	WrEn, 
	RdEn, 
	Address, 
	WrData, 
	RdData, 
	RdData_VLD, 
	REG0, 
	REG1, 
	REG2, 
	REG3, 
	test_si2, 
	test_si1, 
	test_so2, 
	test_so1, 
	test_se, 
	FE_OFN0_SYNC_REF_SCAN_RST, 
	FE_OFN2_SYNC_REF_SCAN_RST, 
	FE_OFN5_SYNC_REF_SCAN_RST, 
	FE_OFN11_SE, 
	FE_OFN12_SE, 
	FE_OFN13_SE, 
	REF_SCAN_CLK__L1_N1);
   input CLK;
   input RST;
   input WrEn;
   input RdEn;
   input [3:0] Address;
   input [7:0] WrData;
   output [7:0] RdData;
   output RdData_VLD;
   output [7:0] REG0;
   output [7:0] REG1;
   output [7:0] REG2;
   output [7:0] REG3;
   input test_si2;
   input test_si1;
   output test_so2;
   output test_so1;
   input test_se;
   input FE_OFN0_SYNC_REF_SCAN_RST;
   input FE_OFN2_SYNC_REF_SCAN_RST;
   input FE_OFN5_SYNC_REF_SCAN_RST;
   input FE_OFN11_SE;
   input FE_OFN12_SE;
   input FE_OFN13_SE;
   input REF_SCAN_CLK__L1_N1;

   // Internal wires
   wire FE_PHN8_SI_2_;
   wire FE_PHN7_SI_2_;
   wire FE_PHN6_SI_2_;
   wire FE_OFN24_Operand_A_7_;
   wire FE_OFN23_Operand_A_6_;
   wire FE_OFN22_Operand_A_5_;
   wire FE_OFN21_Operand_A_4_;
   wire FE_OFN20_Operand_A_3_;
   wire FE_OFN19_Operand_A_2_;
   wire FE_OFN17_Operand_B_0_;
   wire FE_OFN1_SYNC_REF_SCAN_RST;
   wire N11;
   wire N12;
   wire N13;
   wire N14;
   wire \regArr[15][7] ;
   wire \regArr[15][6] ;
   wire \regArr[15][5] ;
   wire \regArr[15][4] ;
   wire \regArr[15][3] ;
   wire \regArr[15][2] ;
   wire \regArr[15][1] ;
   wire \regArr[15][0] ;
   wire \regArr[14][7] ;
   wire \regArr[14][6] ;
   wire \regArr[14][5] ;
   wire \regArr[14][4] ;
   wire \regArr[14][3] ;
   wire \regArr[14][2] ;
   wire \regArr[14][1] ;
   wire \regArr[14][0] ;
   wire \regArr[13][7] ;
   wire \regArr[13][6] ;
   wire \regArr[13][5] ;
   wire \regArr[13][4] ;
   wire \regArr[13][3] ;
   wire \regArr[13][2] ;
   wire \regArr[13][1] ;
   wire \regArr[13][0] ;
   wire \regArr[12][7] ;
   wire \regArr[12][6] ;
   wire \regArr[12][5] ;
   wire \regArr[12][4] ;
   wire \regArr[12][3] ;
   wire \regArr[12][2] ;
   wire \regArr[12][1] ;
   wire \regArr[12][0] ;
   wire \regArr[11][7] ;
   wire \regArr[11][6] ;
   wire \regArr[11][5] ;
   wire \regArr[11][4] ;
   wire \regArr[11][3] ;
   wire \regArr[11][2] ;
   wire \regArr[11][1] ;
   wire \regArr[11][0] ;
   wire \regArr[10][7] ;
   wire \regArr[10][6] ;
   wire \regArr[10][5] ;
   wire \regArr[10][4] ;
   wire \regArr[10][3] ;
   wire \regArr[10][2] ;
   wire \regArr[10][1] ;
   wire \regArr[10][0] ;
   wire \regArr[9][7] ;
   wire \regArr[9][6] ;
   wire \regArr[9][5] ;
   wire \regArr[9][4] ;
   wire \regArr[9][3] ;
   wire \regArr[9][2] ;
   wire \regArr[9][1] ;
   wire \regArr[9][0] ;
   wire \regArr[8][7] ;
   wire \regArr[8][6] ;
   wire \regArr[8][5] ;
   wire \regArr[8][4] ;
   wire \regArr[8][3] ;
   wire \regArr[8][2] ;
   wire \regArr[8][1] ;
   wire \regArr[8][0] ;
   wire \regArr[7][7] ;
   wire \regArr[7][6] ;
   wire \regArr[7][5] ;
   wire \regArr[7][4] ;
   wire \regArr[7][3] ;
   wire \regArr[7][2] ;
   wire \regArr[7][1] ;
   wire \regArr[7][0] ;
   wire \regArr[6][7] ;
   wire \regArr[6][6] ;
   wire \regArr[6][5] ;
   wire \regArr[6][4] ;
   wire \regArr[6][3] ;
   wire \regArr[6][2] ;
   wire \regArr[6][1] ;
   wire \regArr[6][0] ;
   wire \regArr[5][7] ;
   wire \regArr[5][6] ;
   wire \regArr[5][5] ;
   wire \regArr[5][4] ;
   wire \regArr[5][3] ;
   wire \regArr[5][2] ;
   wire \regArr[5][1] ;
   wire \regArr[5][0] ;
   wire \regArr[4][7] ;
   wire \regArr[4][6] ;
   wire \regArr[4][5] ;
   wire \regArr[4][4] ;
   wire \regArr[4][3] ;
   wire \regArr[4][2] ;
   wire \regArr[4][1] ;
   wire \regArr[4][0] ;
   wire N36;
   wire N37;
   wire N38;
   wire N39;
   wire N40;
   wire N41;
   wire N42;
   wire N43;
   wire n149;
   wire n150;
   wire n151;
   wire n152;
   wire n153;
   wire n154;
   wire n155;
   wire n156;
   wire n157;
   wire n158;
   wire n159;
   wire n160;
   wire n161;
   wire n162;
   wire n163;
   wire n164;
   wire n165;
   wire n166;
   wire n167;
   wire n168;
   wire n169;
   wire n170;
   wire n171;
   wire n172;
   wire n173;
   wire n174;
   wire n175;
   wire n176;
   wire n177;
   wire n178;
   wire n179;
   wire n180;
   wire n181;
   wire n182;
   wire n183;
   wire n184;
   wire n185;
   wire n186;
   wire n187;
   wire n188;
   wire n189;
   wire n190;
   wire n191;
   wire n192;
   wire n193;
   wire n194;
   wire n195;
   wire n196;
   wire n197;
   wire n198;
   wire n199;
   wire n200;
   wire n201;
   wire n202;
   wire n203;
   wire n204;
   wire n205;
   wire n206;
   wire n207;
   wire n208;
   wire n209;
   wire n210;
   wire n211;
   wire n212;
   wire n213;
   wire n214;
   wire n215;
   wire n216;
   wire n217;
   wire n218;
   wire n219;
   wire n220;
   wire n221;
   wire n222;
   wire n223;
   wire n224;
   wire n225;
   wire n226;
   wire n227;
   wire n228;
   wire n229;
   wire n230;
   wire n231;
   wire n232;
   wire n233;
   wire n234;
   wire n235;
   wire n236;
   wire n237;
   wire n238;
   wire n239;
   wire n240;
   wire n241;
   wire n242;
   wire n243;
   wire n244;
   wire n245;
   wire n246;
   wire n247;
   wire n248;
   wire n249;
   wire n250;
   wire n251;
   wire n252;
   wire n253;
   wire n254;
   wire n255;
   wire n256;
   wire n257;
   wire n258;
   wire n259;
   wire n260;
   wire n261;
   wire n262;
   wire n263;
   wire n264;
   wire n265;
   wire n266;
   wire n267;
   wire n268;
   wire n269;
   wire n270;
   wire n271;
   wire n272;
   wire n273;
   wire n274;
   wire n275;
   wire n276;
   wire n277;
   wire n278;
   wire n279;
   wire n280;
   wire n281;
   wire n282;
   wire n283;
   wire n284;
   wire n285;
   wire n286;
   wire n287;
   wire n288;
   wire n289;
   wire n290;
   wire n291;
   wire n292;
   wire n293;
   wire n294;
   wire n295;
   wire n296;
   wire n297;
   wire n298;
   wire n299;
   wire n300;
   wire n301;
   wire n302;
   wire n303;
   wire n304;
   wire n305;
   wire n306;
   wire n307;
   wire n308;
   wire n309;
   wire n310;
   wire n311;
   wire n312;
   wire n313;
   wire n139;
   wire n140;
   wire n141;
   wire n142;
   wire n143;
   wire n144;
   wire n145;
   wire n146;
   wire n147;
   wire n148;
   wire n314;
   wire n315;
   wire n316;
   wire n317;
   wire n318;
   wire n319;
   wire n320;
   wire n321;
   wire n322;
   wire n323;
   wire n324;
   wire n325;
   wire n326;
   wire n327;
   wire n328;
   wire n329;
   wire n330;
   wire n331;
   wire n332;
   wire n333;
   wire n334;
   wire n335;
   wire n337;
   wire n339;
   wire n340;
   wire n341;
   wire n342;
   wire n358;
   wire n359;
   wire n360;
   wire n361;
   wire n362;
   wire n363;
   wire n364;
   wire n365;
   wire n366;

   assign N11 = Address[0] ;
   assign N12 = Address[1] ;
   assign N13 = Address[2] ;
   assign N14 = Address[3] ;
   assign test_so2 = \regArr[15][7]  ;
   assign test_so1 = \regArr[6][3]  ;

   DLY4X1M FE_PHC8_SI_2_ (.Y(FE_PHN8_SI_2_), 
	.A(FE_PHN7_SI_2_));
   DLY4X1M FE_PHC7_SI_2_ (.Y(FE_PHN7_SI_2_), 
	.A(FE_PHN6_SI_2_));
   DLY4X1M FE_PHC6_SI_2_ (.Y(FE_PHN6_SI_2_), 
	.A(test_si2));
   BUFX6M FE_OFC24_Operand_A_7_ (.Y(REG0[7]), 
	.A(FE_OFN24_Operand_A_7_));
   BUFX6M FE_OFC23_Operand_A_6_ (.Y(REG0[6]), 
	.A(FE_OFN23_Operand_A_6_));
   CLKBUFX2M FE_OFC22_Operand_A_5_ (.Y(REG0[5]), 
	.A(FE_OFN22_Operand_A_5_));
   CLKBUFX2M FE_OFC21_Operand_A_4_ (.Y(REG0[4]), 
	.A(FE_OFN21_Operand_A_4_));
   CLKBUFX2M FE_OFC20_Operand_A_3_ (.Y(REG0[3]), 
	.A(FE_OFN20_Operand_A_3_));
   CLKBUFX2M FE_OFC19_Operand_A_2_ (.Y(REG0[2]), 
	.A(FE_OFN19_Operand_A_2_));
   BUFX10M FE_OFC17_Operand_B_0_ (.Y(REG1[0]), 
	.A(FE_OFN17_Operand_B_0_));
   CLKINVX6M FE_OFC1_SYNC_REF_SCAN_RST (.Y(FE_OFN1_SYNC_REF_SCAN_RST), 
	.A(FE_OFN0_SYNC_REF_SCAN_RST));
   SDFFRQX2M \regArr_reg[13][7]  (.SI(\regArr[13][6] ), 
	.SE(FE_OFN12_SE), 
	.RN(RST), 
	.Q(\regArr[13][7] ), 
	.D(n297), 
	.CK(REF_SCAN_CLK__L1_N1));
   SDFFRQX2M \regArr_reg[13][6]  (.SI(\regArr[13][5] ), 
	.SE(FE_OFN12_SE), 
	.RN(FE_OFN5_SYNC_REF_SCAN_RST), 
	.Q(\regArr[13][6] ), 
	.D(n296), 
	.CK(REF_SCAN_CLK__L1_N1));
   SDFFRQX2M \regArr_reg[13][5]  (.SI(\regArr[13][4] ), 
	.SE(FE_OFN12_SE), 
	.RN(FE_OFN5_SYNC_REF_SCAN_RST), 
	.Q(\regArr[13][5] ), 
	.D(n295), 
	.CK(REF_SCAN_CLK__L1_N1));
   SDFFRQX2M \regArr_reg[13][4]  (.SI(\regArr[13][3] ), 
	.SE(FE_OFN12_SE), 
	.RN(FE_OFN1_SYNC_REF_SCAN_RST), 
	.Q(\regArr[13][4] ), 
	.D(n294), 
	.CK(REF_SCAN_CLK__L1_N1));
   SDFFRQX2M \regArr_reg[13][3]  (.SI(\regArr[13][2] ), 
	.SE(FE_OFN12_SE), 
	.RN(FE_OFN1_SYNC_REF_SCAN_RST), 
	.Q(\regArr[13][3] ), 
	.D(n293), 
	.CK(REF_SCAN_CLK__L1_N1));
   SDFFRQX2M \regArr_reg[13][2]  (.SI(\regArr[13][1] ), 
	.SE(FE_OFN12_SE), 
	.RN(FE_OFN1_SYNC_REF_SCAN_RST), 
	.Q(\regArr[13][2] ), 
	.D(n292), 
	.CK(REF_SCAN_CLK__L1_N1));
   SDFFRQX2M \regArr_reg[13][1]  (.SI(\regArr[13][0] ), 
	.SE(FE_OFN12_SE), 
	.RN(FE_OFN1_SYNC_REF_SCAN_RST), 
	.Q(\regArr[13][1] ), 
	.D(n291), 
	.CK(REF_SCAN_CLK__L1_N1));
   SDFFRQX2M \regArr_reg[13][0]  (.SI(\regArr[12][7] ), 
	.SE(FE_OFN12_SE), 
	.RN(RST), 
	.Q(\regArr[13][0] ), 
	.D(n290), 
	.CK(REF_SCAN_CLK__L1_N1));
   SDFFRQX2M \regArr_reg[9][7]  (.SI(\regArr[9][6] ), 
	.SE(FE_OFN11_SE), 
	.RN(RST), 
	.Q(\regArr[9][7] ), 
	.D(n265), 
	.CK(REF_SCAN_CLK__L1_N1));
   SDFFRQX2M \regArr_reg[9][6]  (.SI(\regArr[9][5] ), 
	.SE(FE_OFN11_SE), 
	.RN(FE_OFN1_SYNC_REF_SCAN_RST), 
	.Q(\regArr[9][6] ), 
	.D(n264), 
	.CK(REF_SCAN_CLK__L1_N1));
   SDFFRQX2M \regArr_reg[9][5]  (.SI(\regArr[9][4] ), 
	.SE(FE_OFN12_SE), 
	.RN(FE_OFN1_SYNC_REF_SCAN_RST), 
	.Q(\regArr[9][5] ), 
	.D(n263), 
	.CK(REF_SCAN_CLK__L1_N1));
   SDFFRQX2M \regArr_reg[9][4]  (.SI(\regArr[9][3] ), 
	.SE(FE_OFN12_SE), 
	.RN(FE_OFN1_SYNC_REF_SCAN_RST), 
	.Q(\regArr[9][4] ), 
	.D(n262), 
	.CK(REF_SCAN_CLK__L1_N1));
   SDFFRQX2M \regArr_reg[9][3]  (.SI(\regArr[9][2] ), 
	.SE(FE_OFN11_SE), 
	.RN(FE_OFN1_SYNC_REF_SCAN_RST), 
	.Q(\regArr[9][3] ), 
	.D(n261), 
	.CK(REF_SCAN_CLK__L1_N1));
   SDFFRQX2M \regArr_reg[9][2]  (.SI(\regArr[9][1] ), 
	.SE(FE_OFN11_SE), 
	.RN(FE_OFN1_SYNC_REF_SCAN_RST), 
	.Q(\regArr[9][2] ), 
	.D(n260), 
	.CK(REF_SCAN_CLK__L1_N1));
   SDFFRQX2M \regArr_reg[9][1]  (.SI(\regArr[9][0] ), 
	.SE(FE_OFN11_SE), 
	.RN(FE_OFN1_SYNC_REF_SCAN_RST), 
	.Q(\regArr[9][1] ), 
	.D(n259), 
	.CK(REF_SCAN_CLK__L1_N1));
   SDFFRQX2M \regArr_reg[9][0]  (.SI(\regArr[8][7] ), 
	.SE(FE_OFN11_SE), 
	.RN(RST), 
	.Q(\regArr[9][0] ), 
	.D(n258), 
	.CK(REF_SCAN_CLK__L1_N1));
   SDFFRQX2M \regArr_reg[5][7]  (.SI(\regArr[5][6] ), 
	.SE(test_se), 
	.RN(RST), 
	.Q(\regArr[5][7] ), 
	.D(n233), 
	.CK(REF_SCAN_CLK__L1_N1));
   SDFFRQX2M \regArr_reg[5][6]  (.SI(\regArr[5][5] ), 
	.SE(test_se), 
	.RN(RST), 
	.Q(\regArr[5][6] ), 
	.D(n232), 
	.CK(REF_SCAN_CLK__L1_N1));
   SDFFRQX2M \regArr_reg[5][5]  (.SI(\regArr[5][4] ), 
	.SE(FE_OFN11_SE), 
	.RN(RST), 
	.Q(\regArr[5][5] ), 
	.D(n231), 
	.CK(REF_SCAN_CLK__L1_N1));
   SDFFRQX2M \regArr_reg[5][4]  (.SI(\regArr[5][3] ), 
	.SE(FE_OFN11_SE), 
	.RN(RST), 
	.Q(\regArr[5][4] ), 
	.D(n230), 
	.CK(REF_SCAN_CLK__L1_N1));
   SDFFRQX2M \regArr_reg[5][3]  (.SI(\regArr[5][2] ), 
	.SE(FE_OFN11_SE), 
	.RN(RST), 
	.Q(\regArr[5][3] ), 
	.D(n229), 
	.CK(REF_SCAN_CLK__L1_N1));
   SDFFRQX2M \regArr_reg[5][2]  (.SI(\regArr[5][1] ), 
	.SE(FE_OFN11_SE), 
	.RN(RST), 
	.Q(\regArr[5][2] ), 
	.D(n228), 
	.CK(REF_SCAN_CLK__L1_N1));
   SDFFRQX2M \regArr_reg[5][1]  (.SI(\regArr[5][0] ), 
	.SE(FE_OFN11_SE), 
	.RN(RST), 
	.Q(\regArr[5][1] ), 
	.D(n227), 
	.CK(REF_SCAN_CLK__L1_N1));
   SDFFRQX2M \regArr_reg[5][0]  (.SI(\regArr[4][7] ), 
	.SE(FE_OFN11_SE), 
	.RN(RST), 
	.Q(\regArr[5][0] ), 
	.D(n226), 
	.CK(REF_SCAN_CLK__L1_N1));
   SDFFRQX2M \regArr_reg[15][7]  (.SI(\regArr[15][6] ), 
	.SE(FE_OFN12_SE), 
	.RN(FE_OFN5_SYNC_REF_SCAN_RST), 
	.Q(\regArr[15][7] ), 
	.D(n313), 
	.CK(REF_SCAN_CLK__L1_N1));
   SDFFRQX2M \regArr_reg[15][6]  (.SI(\regArr[15][5] ), 
	.SE(FE_OFN12_SE), 
	.RN(FE_OFN5_SYNC_REF_SCAN_RST), 
	.Q(\regArr[15][6] ), 
	.D(n312), 
	.CK(REF_SCAN_CLK__L1_N1));
   SDFFRQX2M \regArr_reg[15][5]  (.SI(\regArr[15][4] ), 
	.SE(FE_OFN12_SE), 
	.RN(FE_OFN1_SYNC_REF_SCAN_RST), 
	.Q(\regArr[15][5] ), 
	.D(n311), 
	.CK(REF_SCAN_CLK__L1_N1));
   SDFFRQX2M \regArr_reg[15][4]  (.SI(\regArr[15][3] ), 
	.SE(FE_OFN12_SE), 
	.RN(FE_OFN1_SYNC_REF_SCAN_RST), 
	.Q(\regArr[15][4] ), 
	.D(n310), 
	.CK(REF_SCAN_CLK__L1_N1));
   SDFFRQX2M \regArr_reg[15][3]  (.SI(\regArr[15][2] ), 
	.SE(FE_OFN12_SE), 
	.RN(FE_OFN1_SYNC_REF_SCAN_RST), 
	.Q(\regArr[15][3] ), 
	.D(n309), 
	.CK(REF_SCAN_CLK__L1_N1));
   SDFFRQX2M \regArr_reg[15][2]  (.SI(\regArr[15][1] ), 
	.SE(FE_OFN12_SE), 
	.RN(FE_OFN1_SYNC_REF_SCAN_RST), 
	.Q(\regArr[15][2] ), 
	.D(n308), 
	.CK(REF_SCAN_CLK__L1_N1));
   SDFFRQX2M \regArr_reg[15][1]  (.SI(\regArr[15][0] ), 
	.SE(FE_OFN12_SE), 
	.RN(FE_OFN1_SYNC_REF_SCAN_RST), 
	.Q(\regArr[15][1] ), 
	.D(n307), 
	.CK(REF_SCAN_CLK__L1_N1));
   SDFFRQX2M \regArr_reg[15][0]  (.SI(\regArr[14][7] ), 
	.SE(FE_OFN12_SE), 
	.RN(RST), 
	.Q(\regArr[15][0] ), 
	.D(n306), 
	.CK(REF_SCAN_CLK__L1_N1));
   SDFFRQX2M \regArr_reg[11][7]  (.SI(\regArr[11][6] ), 
	.SE(FE_OFN11_SE), 
	.RN(FE_OFN1_SYNC_REF_SCAN_RST), 
	.Q(\regArr[11][7] ), 
	.D(n281), 
	.CK(REF_SCAN_CLK__L1_N1));
   SDFFRQX2M \regArr_reg[11][6]  (.SI(\regArr[11][5] ), 
	.SE(FE_OFN12_SE), 
	.RN(FE_OFN1_SYNC_REF_SCAN_RST), 
	.Q(\regArr[11][6] ), 
	.D(n280), 
	.CK(REF_SCAN_CLK__L1_N1));
   SDFFRQX2M \regArr_reg[11][5]  (.SI(\regArr[11][4] ), 
	.SE(FE_OFN12_SE), 
	.RN(FE_OFN1_SYNC_REF_SCAN_RST), 
	.Q(\regArr[11][5] ), 
	.D(n279), 
	.CK(REF_SCAN_CLK__L1_N1));
   SDFFRQX2M \regArr_reg[11][4]  (.SI(\regArr[11][3] ), 
	.SE(FE_OFN12_SE), 
	.RN(FE_OFN1_SYNC_REF_SCAN_RST), 
	.Q(\regArr[11][4] ), 
	.D(n278), 
	.CK(REF_SCAN_CLK__L1_N1));
   SDFFRQX2M \regArr_reg[11][3]  (.SI(\regArr[11][2] ), 
	.SE(FE_OFN11_SE), 
	.RN(FE_OFN1_SYNC_REF_SCAN_RST), 
	.Q(\regArr[11][3] ), 
	.D(n277), 
	.CK(REF_SCAN_CLK__L1_N1));
   SDFFRQX2M \regArr_reg[11][2]  (.SI(\regArr[11][1] ), 
	.SE(FE_OFN11_SE), 
	.RN(FE_OFN1_SYNC_REF_SCAN_RST), 
	.Q(\regArr[11][2] ), 
	.D(n276), 
	.CK(REF_SCAN_CLK__L1_N1));
   SDFFRQX2M \regArr_reg[11][1]  (.SI(\regArr[11][0] ), 
	.SE(FE_OFN11_SE), 
	.RN(FE_OFN1_SYNC_REF_SCAN_RST), 
	.Q(\regArr[11][1] ), 
	.D(n275), 
	.CK(REF_SCAN_CLK__L1_N1));
   SDFFRQX2M \regArr_reg[11][0]  (.SI(\regArr[10][7] ), 
	.SE(FE_OFN11_SE), 
	.RN(RST), 
	.Q(\regArr[11][0] ), 
	.D(n274), 
	.CK(REF_SCAN_CLK__L1_N1));
   SDFFRQX2M \regArr_reg[7][7]  (.SI(\regArr[7][6] ), 
	.SE(test_se), 
	.RN(RST), 
	.Q(\regArr[7][7] ), 
	.D(n249), 
	.CK(REF_SCAN_CLK__L1_N1));
   SDFFRQX2M \regArr_reg[7][6]  (.SI(\regArr[7][5] ), 
	.SE(test_se), 
	.RN(RST), 
	.Q(\regArr[7][6] ), 
	.D(n248), 
	.CK(REF_SCAN_CLK__L1_N1));
   SDFFRQX2M \regArr_reg[7][5]  (.SI(\regArr[7][4] ), 
	.SE(FE_OFN11_SE), 
	.RN(RST), 
	.Q(\regArr[7][5] ), 
	.D(n247), 
	.CK(REF_SCAN_CLK__L1_N1));
   SDFFRQX2M \regArr_reg[7][4]  (.SI(\regArr[7][3] ), 
	.SE(FE_OFN11_SE), 
	.RN(RST), 
	.Q(\regArr[7][4] ), 
	.D(n246), 
	.CK(REF_SCAN_CLK__L1_N1));
   SDFFRQX2M \regArr_reg[7][3]  (.SI(\regArr[7][2] ), 
	.SE(FE_OFN11_SE), 
	.RN(RST), 
	.Q(\regArr[7][3] ), 
	.D(n245), 
	.CK(REF_SCAN_CLK__L1_N1));
   SDFFRQX2M \regArr_reg[7][2]  (.SI(\regArr[7][1] ), 
	.SE(FE_OFN11_SE), 
	.RN(RST), 
	.Q(\regArr[7][2] ), 
	.D(n244), 
	.CK(REF_SCAN_CLK__L1_N1));
   SDFFRQX2M \regArr_reg[7][1]  (.SI(\regArr[7][0] ), 
	.SE(FE_OFN11_SE), 
	.RN(RST), 
	.Q(\regArr[7][1] ), 
	.D(n243), 
	.CK(REF_SCAN_CLK__L1_N1));
   SDFFRQX2M \regArr_reg[7][0]  (.SI(\regArr[6][7] ), 
	.SE(FE_OFN11_SE), 
	.RN(RST), 
	.Q(\regArr[7][0] ), 
	.D(n242), 
	.CK(REF_SCAN_CLK__L1_N1));
   SDFFRQX2M \regArr_reg[14][7]  (.SI(\regArr[14][6] ), 
	.SE(FE_OFN12_SE), 
	.RN(FE_OFN5_SYNC_REF_SCAN_RST), 
	.Q(\regArr[14][7] ), 
	.D(n305), 
	.CK(REF_SCAN_CLK__L1_N1));
   SDFFRQX2M \regArr_reg[14][6]  (.SI(\regArr[14][5] ), 
	.SE(FE_OFN12_SE), 
	.RN(FE_OFN5_SYNC_REF_SCAN_RST), 
	.Q(\regArr[14][6] ), 
	.D(n304), 
	.CK(REF_SCAN_CLK__L1_N1));
   SDFFRQX2M \regArr_reg[14][5]  (.SI(\regArr[14][4] ), 
	.SE(FE_OFN12_SE), 
	.RN(FE_OFN1_SYNC_REF_SCAN_RST), 
	.Q(\regArr[14][5] ), 
	.D(n303), 
	.CK(REF_SCAN_CLK__L1_N1));
   SDFFRQX2M \regArr_reg[14][4]  (.SI(\regArr[14][3] ), 
	.SE(FE_OFN12_SE), 
	.RN(FE_OFN1_SYNC_REF_SCAN_RST), 
	.Q(\regArr[14][4] ), 
	.D(n302), 
	.CK(REF_SCAN_CLK__L1_N1));
   SDFFRQX2M \regArr_reg[14][3]  (.SI(\regArr[14][2] ), 
	.SE(FE_OFN12_SE), 
	.RN(FE_OFN1_SYNC_REF_SCAN_RST), 
	.Q(\regArr[14][3] ), 
	.D(n301), 
	.CK(REF_SCAN_CLK__L1_N1));
   SDFFRQX2M \regArr_reg[14][2]  (.SI(\regArr[14][1] ), 
	.SE(FE_OFN12_SE), 
	.RN(FE_OFN1_SYNC_REF_SCAN_RST), 
	.Q(\regArr[14][2] ), 
	.D(n300), 
	.CK(REF_SCAN_CLK__L1_N1));
   SDFFRQX2M \regArr_reg[14][1]  (.SI(\regArr[14][0] ), 
	.SE(FE_OFN12_SE), 
	.RN(FE_OFN1_SYNC_REF_SCAN_RST), 
	.Q(\regArr[14][1] ), 
	.D(n299), 
	.CK(REF_SCAN_CLK__L1_N1));
   SDFFRQX2M \regArr_reg[14][0]  (.SI(\regArr[13][7] ), 
	.SE(FE_OFN12_SE), 
	.RN(FE_OFN1_SYNC_REF_SCAN_RST), 
	.Q(\regArr[14][0] ), 
	.D(n298), 
	.CK(REF_SCAN_CLK__L1_N1));
   SDFFRQX2M \regArr_reg[10][7]  (.SI(\regArr[10][6] ), 
	.SE(FE_OFN11_SE), 
	.RN(FE_OFN1_SYNC_REF_SCAN_RST), 
	.Q(\regArr[10][7] ), 
	.D(n273), 
	.CK(REF_SCAN_CLK__L1_N1));
   SDFFRQX2M \regArr_reg[10][6]  (.SI(\regArr[10][5] ), 
	.SE(FE_OFN12_SE), 
	.RN(FE_OFN1_SYNC_REF_SCAN_RST), 
	.Q(\regArr[10][6] ), 
	.D(n272), 
	.CK(REF_SCAN_CLK__L1_N1));
   SDFFRQX2M \regArr_reg[10][5]  (.SI(\regArr[10][4] ), 
	.SE(FE_OFN11_SE), 
	.RN(FE_OFN1_SYNC_REF_SCAN_RST), 
	.Q(\regArr[10][5] ), 
	.D(n271), 
	.CK(REF_SCAN_CLK__L1_N1));
   SDFFRQX2M \regArr_reg[10][4]  (.SI(\regArr[10][3] ), 
	.SE(FE_OFN12_SE), 
	.RN(FE_OFN1_SYNC_REF_SCAN_RST), 
	.Q(\regArr[10][4] ), 
	.D(n270), 
	.CK(REF_SCAN_CLK__L1_N1));
   SDFFRQX2M \regArr_reg[10][3]  (.SI(\regArr[10][2] ), 
	.SE(FE_OFN11_SE), 
	.RN(FE_OFN1_SYNC_REF_SCAN_RST), 
	.Q(\regArr[10][3] ), 
	.D(n269), 
	.CK(REF_SCAN_CLK__L1_N1));
   SDFFRQX2M \regArr_reg[10][2]  (.SI(\regArr[10][1] ), 
	.SE(FE_OFN11_SE), 
	.RN(FE_OFN1_SYNC_REF_SCAN_RST), 
	.Q(\regArr[10][2] ), 
	.D(n268), 
	.CK(REF_SCAN_CLK__L1_N1));
   SDFFRQX2M \regArr_reg[10][1]  (.SI(\regArr[10][0] ), 
	.SE(FE_OFN11_SE), 
	.RN(FE_OFN1_SYNC_REF_SCAN_RST), 
	.Q(\regArr[10][1] ), 
	.D(n267), 
	.CK(REF_SCAN_CLK__L1_N1));
   SDFFRQX2M \regArr_reg[10][0]  (.SI(\regArr[9][7] ), 
	.SE(FE_OFN11_SE), 
	.RN(RST), 
	.Q(\regArr[10][0] ), 
	.D(n266), 
	.CK(REF_SCAN_CLK__L1_N1));
   SDFFRQX2M \regArr_reg[6][7]  (.SI(\regArr[6][6] ), 
	.SE(test_se), 
	.RN(RST), 
	.Q(\regArr[6][7] ), 
	.D(n241), 
	.CK(REF_SCAN_CLK__L1_N1));
   SDFFRQX2M \regArr_reg[6][6]  (.SI(\regArr[6][5] ), 
	.SE(test_se), 
	.RN(RST), 
	.Q(\regArr[6][6] ), 
	.D(n240), 
	.CK(REF_SCAN_CLK__L1_N1));
   SDFFRQX2M \regArr_reg[6][5]  (.SI(\regArr[6][4] ), 
	.SE(test_se), 
	.RN(RST), 
	.Q(\regArr[6][5] ), 
	.D(n239), 
	.CK(REF_SCAN_CLK__L1_N1));
   SDFFRQX2M \regArr_reg[6][4]  (.SI(FE_PHN8_SI_2_), 
	.SE(FE_OFN11_SE), 
	.RN(RST), 
	.Q(\regArr[6][4] ), 
	.D(n238), 
	.CK(REF_SCAN_CLK__L1_N1));
   SDFFRQX2M \regArr_reg[6][3]  (.SI(\regArr[6][2] ), 
	.SE(FE_OFN11_SE), 
	.RN(RST), 
	.Q(\regArr[6][3] ), 
	.D(n237), 
	.CK(REF_SCAN_CLK__L1_N1));
   SDFFRQX2M \regArr_reg[6][2]  (.SI(\regArr[6][1] ), 
	.SE(FE_OFN11_SE), 
	.RN(RST), 
	.Q(\regArr[6][2] ), 
	.D(n236), 
	.CK(REF_SCAN_CLK__L1_N1));
   SDFFRQX2M \regArr_reg[6][1]  (.SI(\regArr[6][0] ), 
	.SE(FE_OFN11_SE), 
	.RN(RST), 
	.Q(\regArr[6][1] ), 
	.D(n235), 
	.CK(REF_SCAN_CLK__L1_N1));
   SDFFRQX2M \regArr_reg[6][0]  (.SI(\regArr[5][7] ), 
	.SE(test_se), 
	.RN(RST), 
	.Q(\regArr[6][0] ), 
	.D(n234), 
	.CK(REF_SCAN_CLK__L1_N1));
   SDFFRQX2M \regArr_reg[12][7]  (.SI(\regArr[12][6] ), 
	.SE(FE_OFN12_SE), 
	.RN(RST), 
	.Q(\regArr[12][7] ), 
	.D(n289), 
	.CK(REF_SCAN_CLK__L1_N1));
   SDFFRQX2M \regArr_reg[12][6]  (.SI(\regArr[12][5] ), 
	.SE(FE_OFN12_SE), 
	.RN(FE_OFN1_SYNC_REF_SCAN_RST), 
	.Q(\regArr[12][6] ), 
	.D(n288), 
	.CK(REF_SCAN_CLK__L1_N1));
   SDFFRQX2M \regArr_reg[12][5]  (.SI(\regArr[12][4] ), 
	.SE(FE_OFN12_SE), 
	.RN(FE_OFN1_SYNC_REF_SCAN_RST), 
	.Q(\regArr[12][5] ), 
	.D(n287), 
	.CK(REF_SCAN_CLK__L1_N1));
   SDFFRQX2M \regArr_reg[12][4]  (.SI(\regArr[12][3] ), 
	.SE(FE_OFN12_SE), 
	.RN(FE_OFN1_SYNC_REF_SCAN_RST), 
	.Q(\regArr[12][4] ), 
	.D(n286), 
	.CK(REF_SCAN_CLK__L1_N1));
   SDFFRQX2M \regArr_reg[12][3]  (.SI(\regArr[12][2] ), 
	.SE(FE_OFN12_SE), 
	.RN(FE_OFN1_SYNC_REF_SCAN_RST), 
	.Q(\regArr[12][3] ), 
	.D(n285), 
	.CK(REF_SCAN_CLK__L1_N1));
   SDFFRQX2M \regArr_reg[12][2]  (.SI(\regArr[12][1] ), 
	.SE(FE_OFN12_SE), 
	.RN(FE_OFN1_SYNC_REF_SCAN_RST), 
	.Q(\regArr[12][2] ), 
	.D(n284), 
	.CK(REF_SCAN_CLK__L1_N1));
   SDFFRQX2M \regArr_reg[12][1]  (.SI(\regArr[12][0] ), 
	.SE(FE_OFN11_SE), 
	.RN(FE_OFN1_SYNC_REF_SCAN_RST), 
	.Q(\regArr[12][1] ), 
	.D(n283), 
	.CK(REF_SCAN_CLK__L1_N1));
   SDFFRQX2M \regArr_reg[12][0]  (.SI(\regArr[11][7] ), 
	.SE(FE_OFN11_SE), 
	.RN(FE_OFN1_SYNC_REF_SCAN_RST), 
	.Q(\regArr[12][0] ), 
	.D(n282), 
	.CK(REF_SCAN_CLK__L1_N1));
   SDFFRQX2M \regArr_reg[8][7]  (.SI(\regArr[8][6] ), 
	.SE(FE_OFN11_SE), 
	.RN(FE_OFN1_SYNC_REF_SCAN_RST), 
	.Q(\regArr[8][7] ), 
	.D(n257), 
	.CK(REF_SCAN_CLK__L1_N1));
   SDFFRQX2M \regArr_reg[8][6]  (.SI(\regArr[8][5] ), 
	.SE(FE_OFN12_SE), 
	.RN(FE_OFN1_SYNC_REF_SCAN_RST), 
	.Q(\regArr[8][6] ), 
	.D(n256), 
	.CK(REF_SCAN_CLK__L1_N1));
   SDFFRQX2M \regArr_reg[8][5]  (.SI(\regArr[8][4] ), 
	.SE(FE_OFN11_SE), 
	.RN(FE_OFN1_SYNC_REF_SCAN_RST), 
	.Q(\regArr[8][5] ), 
	.D(n255), 
	.CK(REF_SCAN_CLK__L1_N1));
   SDFFRQX2M \regArr_reg[8][4]  (.SI(\regArr[8][3] ), 
	.SE(FE_OFN12_SE), 
	.RN(FE_OFN1_SYNC_REF_SCAN_RST), 
	.Q(\regArr[8][4] ), 
	.D(n254), 
	.CK(REF_SCAN_CLK__L1_N1));
   SDFFRQX2M \regArr_reg[8][3]  (.SI(\regArr[8][2] ), 
	.SE(FE_OFN11_SE), 
	.RN(FE_OFN1_SYNC_REF_SCAN_RST), 
	.Q(\regArr[8][3] ), 
	.D(n253), 
	.CK(REF_SCAN_CLK__L1_N1));
   SDFFRQX2M \regArr_reg[8][2]  (.SI(\regArr[8][1] ), 
	.SE(FE_OFN11_SE), 
	.RN(FE_OFN1_SYNC_REF_SCAN_RST), 
	.Q(\regArr[8][2] ), 
	.D(n252), 
	.CK(REF_SCAN_CLK__L1_N1));
   SDFFRQX2M \regArr_reg[8][1]  (.SI(\regArr[8][0] ), 
	.SE(FE_OFN11_SE), 
	.RN(FE_OFN1_SYNC_REF_SCAN_RST), 
	.Q(\regArr[8][1] ), 
	.D(n251), 
	.CK(REF_SCAN_CLK__L1_N1));
   SDFFRQX2M \regArr_reg[8][0]  (.SI(\regArr[7][7] ), 
	.SE(test_se), 
	.RN(RST), 
	.Q(\regArr[8][0] ), 
	.D(n250), 
	.CK(REF_SCAN_CLK__L1_N1));
   SDFFRQX2M \regArr_reg[4][7]  (.SI(\regArr[4][6] ), 
	.SE(test_se), 
	.RN(RST), 
	.Q(\regArr[4][7] ), 
	.D(n225), 
	.CK(REF_SCAN_CLK__L1_N1));
   SDFFRQX2M \regArr_reg[4][6]  (.SI(\regArr[4][5] ), 
	.SE(test_se), 
	.RN(RST), 
	.Q(\regArr[4][6] ), 
	.D(n224), 
	.CK(REF_SCAN_CLK__L1_N1));
   SDFFRQX2M \regArr_reg[4][5]  (.SI(\regArr[4][4] ), 
	.SE(FE_OFN11_SE), 
	.RN(RST), 
	.Q(\regArr[4][5] ), 
	.D(n223), 
	.CK(REF_SCAN_CLK__L1_N1));
   SDFFRQX2M \regArr_reg[4][4]  (.SI(\regArr[4][3] ), 
	.SE(FE_OFN11_SE), 
	.RN(RST), 
	.Q(\regArr[4][4] ), 
	.D(n222), 
	.CK(REF_SCAN_CLK__L1_N1));
   SDFFRQX2M \regArr_reg[4][3]  (.SI(\regArr[4][2] ), 
	.SE(FE_OFN11_SE), 
	.RN(RST), 
	.Q(\regArr[4][3] ), 
	.D(n221), 
	.CK(REF_SCAN_CLK__L1_N1));
   SDFFRQX2M \regArr_reg[4][2]  (.SI(\regArr[4][1] ), 
	.SE(FE_OFN11_SE), 
	.RN(RST), 
	.Q(\regArr[4][2] ), 
	.D(n220), 
	.CK(REF_SCAN_CLK__L1_N1));
   SDFFRQX2M \regArr_reg[4][1]  (.SI(\regArr[4][0] ), 
	.SE(FE_OFN11_SE), 
	.RN(RST), 
	.Q(\regArr[4][1] ), 
	.D(n219), 
	.CK(REF_SCAN_CLK__L1_N1));
   SDFFRQX2M \regArr_reg[4][0]  (.SI(REG3[7]), 
	.SE(FE_OFN12_SE), 
	.RN(RST), 
	.Q(\regArr[4][0] ), 
	.D(n218), 
	.CK(REF_SCAN_CLK__L1_N1));
   SDFFRQX2M \RdData_reg[7]  (.SI(RdData[6]), 
	.SE(FE_OFN13_SE), 
	.RN(FE_OFN5_SYNC_REF_SCAN_RST), 
	.Q(RdData[7]), 
	.D(n184), 
	.CK(CLK));
   SDFFRQX2M \RdData_reg[6]  (.SI(RdData[5]), 
	.SE(FE_OFN13_SE), 
	.RN(FE_OFN5_SYNC_REF_SCAN_RST), 
	.Q(RdData[6]), 
	.D(n183), 
	.CK(CLK));
   SDFFRQX2M \RdData_reg[5]  (.SI(RdData[4]), 
	.SE(FE_OFN13_SE), 
	.RN(FE_OFN5_SYNC_REF_SCAN_RST), 
	.Q(RdData[5]), 
	.D(n182), 
	.CK(CLK));
   SDFFRQX2M \RdData_reg[4]  (.SI(RdData[3]), 
	.SE(FE_OFN13_SE), 
	.RN(FE_OFN5_SYNC_REF_SCAN_RST), 
	.Q(RdData[4]), 
	.D(n181), 
	.CK(CLK));
   SDFFRQX2M \RdData_reg[3]  (.SI(RdData[2]), 
	.SE(FE_OFN12_SE), 
	.RN(FE_OFN5_SYNC_REF_SCAN_RST), 
	.Q(RdData[3]), 
	.D(n180), 
	.CK(CLK));
   SDFFRQX2M \RdData_reg[2]  (.SI(RdData[1]), 
	.SE(FE_OFN13_SE), 
	.RN(FE_OFN2_SYNC_REF_SCAN_RST), 
	.Q(RdData[2]), 
	.D(n179), 
	.CK(CLK));
   SDFFRQX2M \RdData_reg[1]  (.SI(RdData[0]), 
	.SE(FE_OFN13_SE), 
	.RN(FE_OFN2_SYNC_REF_SCAN_RST), 
	.Q(RdData[1]), 
	.D(n178), 
	.CK(CLK));
   SDFFRQX2M \RdData_reg[0]  (.SI(RdData_VLD), 
	.SE(FE_OFN13_SE), 
	.RN(FE_OFN2_SYNC_REF_SCAN_RST), 
	.Q(RdData[0]), 
	.D(n177), 
	.CK(CLK));
   SDFFRQX2M \regArr_reg[3][0]  (.SI(REG2[7]), 
	.SE(FE_OFN12_SE), 
	.RN(FE_OFN2_SYNC_REF_SCAN_RST), 
	.Q(REG3[0]), 
	.D(n210), 
	.CK(REF_SCAN_CLK__L1_N1));
   SDFFRHQX2M \regArr_reg[1][6]  (.SI(REG1[5]), 
	.SE(FE_OFN13_SE), 
	.RN(FE_OFN5_SYNC_REF_SCAN_RST), 
	.Q(REG1[6]), 
	.D(n200), 
	.CK(REF_SCAN_CLK__L1_N1));
   SDFFRHQX2M \regArr_reg[0][7]  (.SI(REG0[6]), 
	.SE(FE_OFN12_SE), 
	.RN(FE_OFN5_SYNC_REF_SCAN_RST), 
	.Q(FE_OFN24_Operand_A_7_), 
	.D(n193), 
	.CK(REF_SCAN_CLK__L1_N1));
   SDFFRHQX2M \regArr_reg[0][6]  (.SI(REG0[5]), 
	.SE(FE_OFN12_SE), 
	.RN(FE_OFN5_SYNC_REF_SCAN_RST), 
	.Q(FE_OFN23_Operand_A_6_), 
	.D(n192), 
	.CK(REF_SCAN_CLK__L1_N1));
   SDFFRHQX1M \regArr_reg[0][5]  (.SI(REG0[4]), 
	.SE(FE_OFN12_SE), 
	.RN(FE_OFN5_SYNC_REF_SCAN_RST), 
	.Q(FE_OFN22_Operand_A_5_), 
	.D(n191), 
	.CK(REF_SCAN_CLK__L1_N1));
   SDFFRQX2M \regArr_reg[0][4]  (.SI(REG0[3]), 
	.SE(FE_OFN12_SE), 
	.RN(FE_OFN5_SYNC_REF_SCAN_RST), 
	.Q(FE_OFN21_Operand_A_4_), 
	.D(n190), 
	.CK(REF_SCAN_CLK__L1_N1));
   SDFFRQX2M \regArr_reg[0][3]  (.SI(REG0[2]), 
	.SE(FE_OFN12_SE), 
	.RN(FE_OFN1_SYNC_REF_SCAN_RST), 
	.Q(FE_OFN20_Operand_A_3_), 
	.D(n189), 
	.CK(REF_SCAN_CLK__L1_N1));
   SDFFRQX2M \regArr_reg[0][2]  (.SI(REG0[1]), 
	.SE(FE_OFN12_SE), 
	.RN(FE_OFN5_SYNC_REF_SCAN_RST), 
	.Q(FE_OFN19_Operand_A_2_), 
	.D(n188), 
	.CK(REF_SCAN_CLK__L1_N1));
   SDFFRQX2M \regArr_reg[0][1]  (.SI(REG0[0]), 
	.SE(FE_OFN12_SE), 
	.RN(FE_OFN5_SYNC_REF_SCAN_RST), 
	.Q(REG0[1]), 
	.D(n187), 
	.CK(CLK));
   SDFFRQX2M \regArr_reg[0][0]  (.SI(RdData[7]), 
	.SE(FE_OFN13_SE), 
	.RN(FE_OFN5_SYNC_REF_SCAN_RST), 
	.Q(REG0[0]), 
	.D(n186), 
	.CK(CLK));
   SDFFSQX2M \regArr_reg[2][0]  (.SN(FE_OFN5_SYNC_REF_SCAN_RST), 
	.SI(REG1[7]), 
	.SE(FE_OFN13_SE), 
	.Q(REG2[0]), 
	.D(n202), 
	.CK(REF_SCAN_CLK__L1_N1));
   SDFFRQX2M \regArr_reg[2][1]  (.SI(REG2[0]), 
	.SE(FE_OFN13_SE), 
	.RN(FE_OFN2_SYNC_REF_SCAN_RST), 
	.Q(REG2[1]), 
	.D(n203), 
	.CK(REF_SCAN_CLK__L1_N1));
   SDFFRQX2M RdData_VLD_reg (.SI(test_si1), 
	.SE(FE_OFN13_SE), 
	.RN(FE_OFN2_SYNC_REF_SCAN_RST), 
	.Q(RdData_VLD), 
	.D(n185), 
	.CK(REF_SCAN_CLK__L1_N1));
   SDFFRHQX4M \regArr_reg[1][1]  (.SI(REG1[0]), 
	.SE(FE_OFN12_SE), 
	.RN(FE_OFN5_SYNC_REF_SCAN_RST), 
	.Q(REG1[1]), 
	.D(n195), 
	.CK(CLK));
   SDFFRHQX4M \regArr_reg[1][5]  (.SI(REG1[4]), 
	.SE(FE_OFN12_SE), 
	.RN(FE_OFN5_SYNC_REF_SCAN_RST), 
	.Q(REG1[5]), 
	.D(n199), 
	.CK(REF_SCAN_CLK__L1_N1));
   SDFFRHQX4M \regArr_reg[1][4]  (.SI(REG1[3]), 
	.SE(FE_OFN12_SE), 
	.RN(FE_OFN5_SYNC_REF_SCAN_RST), 
	.Q(REG1[4]), 
	.D(n198), 
	.CK(CLK));
   SDFFRHQX2M \regArr_reg[1][7]  (.SI(REG1[6]), 
	.SE(FE_OFN13_SE), 
	.RN(FE_OFN5_SYNC_REF_SCAN_RST), 
	.Q(REG1[7]), 
	.D(n201), 
	.CK(CLK));
   SDFFRHQX4M \regArr_reg[1][3]  (.SI(REG1[2]), 
	.SE(FE_OFN12_SE), 
	.RN(FE_OFN5_SYNC_REF_SCAN_RST), 
	.Q(REG1[3]), 
	.D(n197), 
	.CK(REF_SCAN_CLK__L1_N1));
   SDFFRHQX4M \regArr_reg[1][2]  (.SI(REG1[1]), 
	.SE(FE_OFN12_SE), 
	.RN(FE_OFN5_SYNC_REF_SCAN_RST), 
	.Q(REG1[2]), 
	.D(n196), 
	.CK(REF_SCAN_CLK__L1_N1));
   SDFFRHQX2M \regArr_reg[1][0]  (.SI(REG0[7]), 
	.SE(FE_OFN12_SE), 
	.RN(FE_OFN5_SYNC_REF_SCAN_RST), 
	.Q(FE_OFN17_Operand_B_0_), 
	.D(n194), 
	.CK(REF_SCAN_CLK__L1_N1));
   SDFFRQX2M \regArr_reg[3][6]  (.SI(REG3[5]), 
	.SE(FE_OFN12_SE), 
	.RN(RST), 
	.Q(REG3[6]), 
	.D(n216), 
	.CK(REF_SCAN_CLK__L1_N1));
   SDFFRQX2M \regArr_reg[3][7]  (.SI(REG3[6]), 
	.SE(FE_OFN12_SE), 
	.RN(RST), 
	.Q(REG3[7]), 
	.D(n217), 
	.CK(REF_SCAN_CLK__L1_N1));
   SDFFSQX2M \regArr_reg[3][5]  (.SN(RST), 
	.SI(REG3[4]), 
	.SE(FE_OFN12_SE), 
	.Q(REG3[5]), 
	.D(n215), 
	.CK(REF_SCAN_CLK__L1_N1));
   SDFFRQX2M \regArr_reg[3][4]  (.SI(REG3[3]), 
	.SE(FE_OFN12_SE), 
	.RN(RST), 
	.Q(REG3[4]), 
	.D(n214), 
	.CK(REF_SCAN_CLK__L1_N1));
   SDFFRQX2M \regArr_reg[3][2]  (.SI(REG3[1]), 
	.SE(FE_OFN12_SE), 
	.RN(FE_OFN5_SYNC_REF_SCAN_RST), 
	.Q(REG3[2]), 
	.D(n212), 
	.CK(REF_SCAN_CLK__L1_N1));
   SDFFRQX2M \regArr_reg[3][3]  (.SI(REG3[2]), 
	.SE(FE_OFN12_SE), 
	.RN(FE_OFN5_SYNC_REF_SCAN_RST), 
	.Q(REG3[3]), 
	.D(n213), 
	.CK(REF_SCAN_CLK__L1_N1));
   SDFFRQX2M \regArr_reg[3][1]  (.SI(REG3[0]), 
	.SE(FE_OFN13_SE), 
	.RN(FE_OFN2_SYNC_REF_SCAN_RST), 
	.Q(REG3[1]), 
	.D(n211), 
	.CK(REF_SCAN_CLK__L1_N1));
   SDFFRQX2M \regArr_reg[2][2]  (.SI(REG2[1]), 
	.SE(FE_OFN13_SE), 
	.RN(FE_OFN2_SYNC_REF_SCAN_RST), 
	.Q(REG2[2]), 
	.D(n204), 
	.CK(REF_SCAN_CLK__L1_N1));
   SDFFRQX2M \regArr_reg[2][4]  (.SI(REG2[3]), 
	.SE(FE_OFN11_SE), 
	.RN(RST), 
	.Q(REG2[4]), 
	.D(n206), 
	.CK(REF_SCAN_CLK__L1_N1));
   SDFFRQX2M \regArr_reg[2][3]  (.SI(REG2[2]), 
	.SE(FE_OFN11_SE), 
	.RN(RST), 
	.Q(REG2[3]), 
	.D(n205), 
	.CK(REF_SCAN_CLK__L1_N1));
   SDFFRQX2M \regArr_reg[2][6]  (.SI(REG2[5]), 
	.SE(FE_OFN11_SE), 
	.RN(RST), 
	.Q(REG2[6]), 
	.D(n208), 
	.CK(REF_SCAN_CLK__L1_N1));
   SDFFRQX2M \regArr_reg[2][5]  (.SI(REG2[4]), 
	.SE(FE_OFN11_SE), 
	.RN(RST), 
	.Q(REG2[5]), 
	.D(n207), 
	.CK(REF_SCAN_CLK__L1_N1));
   SDFFSQX1M \regArr_reg[2][7]  (.SN(RST), 
	.SI(REG2[6]), 
	.SE(FE_OFN11_SE), 
	.Q(REG2[7]), 
	.D(n209), 
	.CK(REF_SCAN_CLK__L1_N1));
   NOR2BX2M U141 (.Y(n169), 
	.B(n341), 
	.AN(n175));
   NOR2BX2M U142 (.Y(n160), 
	.B(N12), 
	.AN(N13));
   NOR2BX2M U143 (.Y(n163), 
	.B(n342), 
	.AN(N13));
   NOR2BX2M U144 (.Y(n155), 
	.B(n341), 
	.AN(n164));
   NOR2X2M U145 (.Y(n157), 
	.B(N13), 
	.A(n342));
   NOR2X2M U146 (.Y(n152), 
	.B(N13), 
	.A(N12));
   INVX4M U147 (.Y(n340), 
	.A(n341));
   INVX4M U148 (.Y(n339), 
	.A(n341));
   INVX2M U149 (.Y(n337), 
	.A(n342));
   INVX2M U152 (.Y(n366), 
	.A(n149));
   NOR2BX2M U153 (.Y(n167), 
	.B(n339), 
	.AN(n175));
   NAND2X2M U154 (.Y(n166), 
	.B(n152), 
	.A(n167));
   NAND2X2M U155 (.Y(n168), 
	.B(n152), 
	.A(n169));
   NAND2X2M U156 (.Y(n170), 
	.B(n157), 
	.A(n167));
   NAND2X2M U157 (.Y(n171), 
	.B(n157), 
	.A(n169));
   NAND2X2M U158 (.Y(n172), 
	.B(n160), 
	.A(n167));
   NAND2X2M U159 (.Y(n173), 
	.B(n160), 
	.A(n169));
   NAND2X2M U160 (.Y(n174), 
	.B(n163), 
	.A(n167));
   NAND2X2M U161 (.Y(n176), 
	.B(n163), 
	.A(n169));
   NOR2BX2M U162 (.Y(n153), 
	.B(n339), 
	.AN(n164));
   NAND2X2M U163 (.Y(n154), 
	.B(n152), 
	.A(n155));
   NAND2X2M U164 (.Y(n156), 
	.B(n153), 
	.A(n157));
   NAND2X2M U165 (.Y(n158), 
	.B(n155), 
	.A(n157));
   NAND2X2M U166 (.Y(n159), 
	.B(n153), 
	.A(n160));
   NAND2X2M U167 (.Y(n161), 
	.B(n155), 
	.A(n160));
   NAND2X2M U168 (.Y(n162), 
	.B(n153), 
	.A(n163));
   NAND2X2M U169 (.Y(n165), 
	.B(n155), 
	.A(n163));
   NAND2X2M U170 (.Y(n151), 
	.B(n153), 
	.A(n152));
   NAND2BX2M U171 (.Y(n149), 
	.B(RdEn), 
	.AN(WrEn));
   NOR2BX2M U172 (.Y(n150), 
	.B(RdEn), 
	.AN(WrEn));
   AND2X2M U183 (.Y(n175), 
	.B(n150), 
	.A(N14));
   INVX2M U184 (.Y(n358), 
	.A(WrData[0]));
   INVX2M U185 (.Y(n359), 
	.A(WrData[1]));
   INVX2M U186 (.Y(n360), 
	.A(WrData[2]));
   INVX2M U187 (.Y(n361), 
	.A(WrData[3]));
   INVX2M U188 (.Y(n362), 
	.A(WrData[4]));
   NOR2BX2M U189 (.Y(n164), 
	.B(N14), 
	.AN(n150));
   OAI2BB2X1M U195 (.Y(n250), 
	.B1(n166), 
	.B0(n358), 
	.A1N(n166), 
	.A0N(\regArr[8][0] ));
   OAI2BB2X1M U196 (.Y(n251), 
	.B1(n166), 
	.B0(n359), 
	.A1N(n166), 
	.A0N(\regArr[8][1] ));
   OAI2BB2X1M U197 (.Y(n252), 
	.B1(n166), 
	.B0(n360), 
	.A1N(n166), 
	.A0N(\regArr[8][2] ));
   OAI2BB2X1M U198 (.Y(n253), 
	.B1(n166), 
	.B0(n361), 
	.A1N(n166), 
	.A0N(\regArr[8][3] ));
   OAI2BB2X1M U199 (.Y(n254), 
	.B1(n166), 
	.B0(n362), 
	.A1N(n166), 
	.A0N(\regArr[8][4] ));
   OAI2BB2X1M U200 (.Y(n255), 
	.B1(n166), 
	.B0(n363), 
	.A1N(n166), 
	.A0N(\regArr[8][5] ));
   OAI2BB2X1M U201 (.Y(n256), 
	.B1(n166), 
	.B0(n364), 
	.A1N(n166), 
	.A0N(\regArr[8][6] ));
   OAI2BB2X1M U202 (.Y(n257), 
	.B1(n166), 
	.B0(n365), 
	.A1N(n166), 
	.A0N(\regArr[8][7] ));
   OAI2BB2X1M U203 (.Y(n258), 
	.B1(n168), 
	.B0(n358), 
	.A1N(n168), 
	.A0N(\regArr[9][0] ));
   OAI2BB2X1M U204 (.Y(n259), 
	.B1(n168), 
	.B0(n359), 
	.A1N(n168), 
	.A0N(\regArr[9][1] ));
   OAI2BB2X1M U205 (.Y(n260), 
	.B1(n168), 
	.B0(n360), 
	.A1N(n168), 
	.A0N(\regArr[9][2] ));
   OAI2BB2X1M U206 (.Y(n261), 
	.B1(n168), 
	.B0(n361), 
	.A1N(n168), 
	.A0N(\regArr[9][3] ));
   OAI2BB2X1M U207 (.Y(n262), 
	.B1(n168), 
	.B0(n362), 
	.A1N(n168), 
	.A0N(\regArr[9][4] ));
   OAI2BB2X1M U208 (.Y(n263), 
	.B1(n168), 
	.B0(n363), 
	.A1N(n168), 
	.A0N(\regArr[9][5] ));
   OAI2BB2X1M U209 (.Y(n264), 
	.B1(n168), 
	.B0(n364), 
	.A1N(n168), 
	.A0N(\regArr[9][6] ));
   OAI2BB2X1M U210 (.Y(n265), 
	.B1(n168), 
	.B0(n365), 
	.A1N(n168), 
	.A0N(\regArr[9][7] ));
   OAI2BB2X1M U211 (.Y(n266), 
	.B1(n170), 
	.B0(n358), 
	.A1N(n170), 
	.A0N(\regArr[10][0] ));
   OAI2BB2X1M U212 (.Y(n267), 
	.B1(n170), 
	.B0(n359), 
	.A1N(n170), 
	.A0N(\regArr[10][1] ));
   OAI2BB2X1M U213 (.Y(n268), 
	.B1(n170), 
	.B0(n360), 
	.A1N(n170), 
	.A0N(\regArr[10][2] ));
   OAI2BB2X1M U214 (.Y(n269), 
	.B1(n170), 
	.B0(n361), 
	.A1N(n170), 
	.A0N(\regArr[10][3] ));
   OAI2BB2X1M U215 (.Y(n270), 
	.B1(n170), 
	.B0(n362), 
	.A1N(n170), 
	.A0N(\regArr[10][4] ));
   OAI2BB2X1M U216 (.Y(n271), 
	.B1(n170), 
	.B0(n363), 
	.A1N(n170), 
	.A0N(\regArr[10][5] ));
   OAI2BB2X1M U217 (.Y(n272), 
	.B1(n170), 
	.B0(n364), 
	.A1N(n170), 
	.A0N(\regArr[10][6] ));
   OAI2BB2X1M U218 (.Y(n273), 
	.B1(n170), 
	.B0(n365), 
	.A1N(n170), 
	.A0N(\regArr[10][7] ));
   OAI2BB2X1M U219 (.Y(n274), 
	.B1(n171), 
	.B0(n358), 
	.A1N(n171), 
	.A0N(\regArr[11][0] ));
   OAI2BB2X1M U220 (.Y(n275), 
	.B1(n171), 
	.B0(n359), 
	.A1N(n171), 
	.A0N(\regArr[11][1] ));
   OAI2BB2X1M U221 (.Y(n276), 
	.B1(n171), 
	.B0(n360), 
	.A1N(n171), 
	.A0N(\regArr[11][2] ));
   OAI2BB2X1M U222 (.Y(n277), 
	.B1(n171), 
	.B0(n361), 
	.A1N(n171), 
	.A0N(\regArr[11][3] ));
   OAI2BB2X1M U223 (.Y(n278), 
	.B1(n171), 
	.B0(n362), 
	.A1N(n171), 
	.A0N(\regArr[11][4] ));
   OAI2BB2X1M U224 (.Y(n279), 
	.B1(n171), 
	.B0(n363), 
	.A1N(n171), 
	.A0N(\regArr[11][5] ));
   OAI2BB2X1M U225 (.Y(n280), 
	.B1(n171), 
	.B0(n364), 
	.A1N(n171), 
	.A0N(\regArr[11][6] ));
   OAI2BB2X1M U226 (.Y(n281), 
	.B1(n171), 
	.B0(n365), 
	.A1N(n171), 
	.A0N(\regArr[11][7] ));
   OAI2BB2X1M U227 (.Y(n282), 
	.B1(n172), 
	.B0(n358), 
	.A1N(n172), 
	.A0N(\regArr[12][0] ));
   OAI2BB2X1M U228 (.Y(n283), 
	.B1(n172), 
	.B0(n359), 
	.A1N(n172), 
	.A0N(\regArr[12][1] ));
   OAI2BB2X1M U229 (.Y(n284), 
	.B1(n172), 
	.B0(n360), 
	.A1N(n172), 
	.A0N(\regArr[12][2] ));
   OAI2BB2X1M U230 (.Y(n285), 
	.B1(n172), 
	.B0(n361), 
	.A1N(n172), 
	.A0N(\regArr[12][3] ));
   OAI2BB2X1M U231 (.Y(n286), 
	.B1(n172), 
	.B0(n362), 
	.A1N(n172), 
	.A0N(\regArr[12][4] ));
   OAI2BB2X1M U232 (.Y(n287), 
	.B1(n172), 
	.B0(n363), 
	.A1N(n172), 
	.A0N(\regArr[12][5] ));
   OAI2BB2X1M U233 (.Y(n288), 
	.B1(n172), 
	.B0(n364), 
	.A1N(n172), 
	.A0N(\regArr[12][6] ));
   OAI2BB2X1M U234 (.Y(n289), 
	.B1(n172), 
	.B0(n365), 
	.A1N(n172), 
	.A0N(\regArr[12][7] ));
   OAI2BB2X1M U235 (.Y(n290), 
	.B1(n173), 
	.B0(n358), 
	.A1N(n173), 
	.A0N(\regArr[13][0] ));
   OAI2BB2X1M U236 (.Y(n291), 
	.B1(n173), 
	.B0(n359), 
	.A1N(n173), 
	.A0N(\regArr[13][1] ));
   OAI2BB2X1M U237 (.Y(n292), 
	.B1(n173), 
	.B0(n360), 
	.A1N(n173), 
	.A0N(\regArr[13][2] ));
   OAI2BB2X1M U238 (.Y(n293), 
	.B1(n173), 
	.B0(n361), 
	.A1N(n173), 
	.A0N(\regArr[13][3] ));
   OAI2BB2X1M U239 (.Y(n294), 
	.B1(n173), 
	.B0(n362), 
	.A1N(n173), 
	.A0N(\regArr[13][4] ));
   OAI2BB2X1M U240 (.Y(n295), 
	.B1(n173), 
	.B0(n363), 
	.A1N(n173), 
	.A0N(\regArr[13][5] ));
   OAI2BB2X1M U241 (.Y(n296), 
	.B1(n173), 
	.B0(n364), 
	.A1N(n173), 
	.A0N(\regArr[13][6] ));
   OAI2BB2X1M U242 (.Y(n297), 
	.B1(n173), 
	.B0(n365), 
	.A1N(n173), 
	.A0N(\regArr[13][7] ));
   OAI2BB2X1M U243 (.Y(n298), 
	.B1(n174), 
	.B0(n358), 
	.A1N(n174), 
	.A0N(\regArr[14][0] ));
   OAI2BB2X1M U244 (.Y(n299), 
	.B1(n174), 
	.B0(n359), 
	.A1N(n174), 
	.A0N(\regArr[14][1] ));
   OAI2BB2X1M U245 (.Y(n300), 
	.B1(n174), 
	.B0(n360), 
	.A1N(n174), 
	.A0N(\regArr[14][2] ));
   OAI2BB2X1M U246 (.Y(n301), 
	.B1(n174), 
	.B0(n361), 
	.A1N(n174), 
	.A0N(\regArr[14][3] ));
   OAI2BB2X1M U247 (.Y(n302), 
	.B1(n174), 
	.B0(n362), 
	.A1N(n174), 
	.A0N(\regArr[14][4] ));
   OAI2BB2X1M U248 (.Y(n303), 
	.B1(n174), 
	.B0(n363), 
	.A1N(n174), 
	.A0N(\regArr[14][5] ));
   OAI2BB2X1M U249 (.Y(n304), 
	.B1(n174), 
	.B0(n364), 
	.A1N(n174), 
	.A0N(\regArr[14][6] ));
   OAI2BB2X1M U250 (.Y(n305), 
	.B1(n174), 
	.B0(n365), 
	.A1N(n174), 
	.A0N(\regArr[14][7] ));
   OAI2BB2X1M U251 (.Y(n306), 
	.B1(n176), 
	.B0(n358), 
	.A1N(n176), 
	.A0N(\regArr[15][0] ));
   OAI2BB2X1M U252 (.Y(n307), 
	.B1(n176), 
	.B0(n359), 
	.A1N(n176), 
	.A0N(\regArr[15][1] ));
   OAI2BB2X1M U253 (.Y(n308), 
	.B1(n176), 
	.B0(n360), 
	.A1N(n176), 
	.A0N(\regArr[15][2] ));
   OAI2BB2X1M U254 (.Y(n309), 
	.B1(n176), 
	.B0(n361), 
	.A1N(n176), 
	.A0N(\regArr[15][3] ));
   OAI2BB2X1M U255 (.Y(n310), 
	.B1(n176), 
	.B0(n362), 
	.A1N(n176), 
	.A0N(\regArr[15][4] ));
   OAI2BB2X1M U256 (.Y(n311), 
	.B1(n176), 
	.B0(n363), 
	.A1N(n176), 
	.A0N(\regArr[15][5] ));
   OAI2BB2X1M U257 (.Y(n312), 
	.B1(n176), 
	.B0(n364), 
	.A1N(n176), 
	.A0N(\regArr[15][6] ));
   OAI2BB2X1M U258 (.Y(n313), 
	.B1(n176), 
	.B0(n365), 
	.A1N(n176), 
	.A0N(\regArr[15][7] ));
   AO22X1M U259 (.Y(n177), 
	.B1(n149), 
	.B0(RdData[0]), 
	.A1(n366), 
	.A0(N43));
   MX4X1M U260 (.Y(N43), 
	.S1(N13), 
	.S0(N14), 
	.D(n139), 
	.C(n141), 
	.B(n140), 
	.A(n142));
   MX4X1M U261 (.Y(n142), 
	.S1(N12), 
	.S0(n339), 
	.D(REG3[0]), 
	.C(REG2[0]), 
	.B(REG1[0]), 
	.A(REG0[0]));
   MX4X1M U262 (.Y(n140), 
	.S1(N12), 
	.S0(n339), 
	.D(\regArr[11][0] ), 
	.C(\regArr[10][0] ), 
	.B(\regArr[9][0] ), 
	.A(\regArr[8][0] ));
   AO22X1M U263 (.Y(n178), 
	.B1(n149), 
	.B0(RdData[1]), 
	.A1(n366), 
	.A0(N42));
   MX4X1M U264 (.Y(N42), 
	.S1(N13), 
	.S0(N14), 
	.D(n143), 
	.C(n145), 
	.B(n144), 
	.A(n146));
   MX4X1M U265 (.Y(n144), 
	.S1(N12), 
	.S0(n339), 
	.D(\regArr[11][1] ), 
	.C(\regArr[10][1] ), 
	.B(\regArr[9][1] ), 
	.A(\regArr[8][1] ));
   MX4X1M U266 (.Y(n143), 
	.S1(n337), 
	.S0(n339), 
	.D(\regArr[15][1] ), 
	.C(\regArr[14][1] ), 
	.B(\regArr[13][1] ), 
	.A(\regArr[12][1] ));
   AO22X1M U267 (.Y(n179), 
	.B1(n149), 
	.B0(RdData[2]), 
	.A1(n366), 
	.A0(N41));
   MX4X1M U268 (.Y(N41), 
	.S1(N13), 
	.S0(N14), 
	.D(n147), 
	.C(n314), 
	.B(n148), 
	.A(n315));
   MX4X1M U269 (.Y(n315), 
	.S1(n337), 
	.S0(n340), 
	.D(REG3[2]), 
	.C(REG2[2]), 
	.B(REG1[2]), 
	.A(REG0[2]));
   MX4X1M U270 (.Y(n148), 
	.S1(n337), 
	.S0(n340), 
	.D(\regArr[11][2] ), 
	.C(\regArr[10][2] ), 
	.B(\regArr[9][2] ), 
	.A(\regArr[8][2] ));
   AO22X1M U271 (.Y(n180), 
	.B1(n149), 
	.B0(RdData[3]), 
	.A1(n366), 
	.A0(N40));
   MX4X1M U272 (.Y(N40), 
	.S1(N13), 
	.S0(N14), 
	.D(n316), 
	.C(n318), 
	.B(n317), 
	.A(n319));
   MX4X1M U273 (.Y(n319), 
	.S1(n337), 
	.S0(n340), 
	.D(REG3[3]), 
	.C(REG2[3]), 
	.B(REG1[3]), 
	.A(REG0[3]));
   MX4X1M U274 (.Y(n317), 
	.S1(n337), 
	.S0(n340), 
	.D(\regArr[11][3] ), 
	.C(\regArr[10][3] ), 
	.B(\regArr[9][3] ), 
	.A(\regArr[8][3] ));
   AO22X1M U275 (.Y(n181), 
	.B1(n149), 
	.B0(RdData[4]), 
	.A1(n366), 
	.A0(N39));
   MX4X1M U276 (.Y(N39), 
	.S1(N13), 
	.S0(N14), 
	.D(n320), 
	.C(n322), 
	.B(n321), 
	.A(n323));
   MX4X1M U277 (.Y(n323), 
	.S1(n337), 
	.S0(N11), 
	.D(REG3[4]), 
	.C(REG2[4]), 
	.B(REG1[4]), 
	.A(REG0[4]));
   MX4X1M U278 (.Y(n321), 
	.S1(n337), 
	.S0(n340), 
	.D(\regArr[11][4] ), 
	.C(\regArr[10][4] ), 
	.B(\regArr[9][4] ), 
	.A(\regArr[8][4] ));
   AO22X1M U279 (.Y(n182), 
	.B1(n149), 
	.B0(RdData[5]), 
	.A1(n366), 
	.A0(N38));
   MX4X1M U280 (.Y(N38), 
	.S1(N13), 
	.S0(N14), 
	.D(n324), 
	.C(n326), 
	.B(n325), 
	.A(n327));
   MX4X1M U281 (.Y(n327), 
	.S1(N12), 
	.S0(N11), 
	.D(REG3[5]), 
	.C(REG2[5]), 
	.B(REG1[5]), 
	.A(REG0[5]));
   MX4X1M U282 (.Y(n325), 
	.S1(N12), 
	.S0(n339), 
	.D(\regArr[11][5] ), 
	.C(\regArr[10][5] ), 
	.B(\regArr[9][5] ), 
	.A(\regArr[8][5] ));
   AO22X1M U283 (.Y(n183), 
	.B1(n149), 
	.B0(RdData[6]), 
	.A1(n366), 
	.A0(N37));
   MX4X1M U284 (.Y(N37), 
	.S1(N13), 
	.S0(N14), 
	.D(n328), 
	.C(n330), 
	.B(n329), 
	.A(n331));
   MX4X1M U285 (.Y(n331), 
	.S1(N12), 
	.S0(N11), 
	.D(REG3[6]), 
	.C(REG2[6]), 
	.B(REG1[6]), 
	.A(REG0[6]));
   MX4X1M U286 (.Y(n329), 
	.S1(N12), 
	.S0(n340), 
	.D(\regArr[11][6] ), 
	.C(\regArr[10][6] ), 
	.B(\regArr[9][6] ), 
	.A(\regArr[8][6] ));
   AO22X1M U287 (.Y(n184), 
	.B1(n149), 
	.B0(RdData[7]), 
	.A1(n366), 
	.A0(N36));
   MX4X1M U288 (.Y(N36), 
	.S1(N13), 
	.S0(N14), 
	.D(n332), 
	.C(n334), 
	.B(n333), 
	.A(n335));
   MX4X1M U289 (.Y(n335), 
	.S1(N12), 
	.S0(N11), 
	.D(REG3[7]), 
	.C(REG2[7]), 
	.B(REG1[7]), 
	.A(REG0[7]));
   MX4X1M U290 (.Y(n333), 
	.S1(N12), 
	.S0(N11), 
	.D(\regArr[11][7] ), 
	.C(\regArr[10][7] ), 
	.B(\regArr[9][7] ), 
	.A(\regArr[8][7] ));
   MX4X1M U291 (.Y(n146), 
	.S1(N12), 
	.S0(n340), 
	.D(REG3[1]), 
	.C(REG2[1]), 
	.B(REG1[1]), 
	.A(REG0[1]));
   MX4X1M U292 (.Y(n141), 
	.S1(N12), 
	.S0(n339), 
	.D(\regArr[7][0] ), 
	.C(\regArr[6][0] ), 
	.B(\regArr[5][0] ), 
	.A(\regArr[4][0] ));
   MX4X1M U293 (.Y(n145), 
	.S1(N12), 
	.S0(n340), 
	.D(\regArr[7][1] ), 
	.C(\regArr[6][1] ), 
	.B(\regArr[5][1] ), 
	.A(\regArr[4][1] ));
   MX4X1M U294 (.Y(n314), 
	.S1(n337), 
	.S0(n340), 
	.D(\regArr[7][2] ), 
	.C(\regArr[6][2] ), 
	.B(\regArr[5][2] ), 
	.A(\regArr[4][2] ));
   MX4X1M U295 (.Y(n318), 
	.S1(n337), 
	.S0(n340), 
	.D(\regArr[7][3] ), 
	.C(\regArr[6][3] ), 
	.B(\regArr[5][3] ), 
	.A(\regArr[4][3] ));
   MX4X1M U296 (.Y(n322), 
	.S1(n337), 
	.S0(n340), 
	.D(\regArr[7][4] ), 
	.C(\regArr[6][4] ), 
	.B(\regArr[5][4] ), 
	.A(\regArr[4][4] ));
   MX4X1M U297 (.Y(n326), 
	.S1(N12), 
	.S0(n339), 
	.D(\regArr[7][5] ), 
	.C(\regArr[6][5] ), 
	.B(\regArr[5][5] ), 
	.A(\regArr[4][5] ));
   MX4X1M U298 (.Y(n330), 
	.S1(N12), 
	.S0(n339), 
	.D(\regArr[7][6] ), 
	.C(\regArr[6][6] ), 
	.B(\regArr[5][6] ), 
	.A(\regArr[4][6] ));
   MX4X1M U299 (.Y(n334), 
	.S1(N12), 
	.S0(n339), 
	.D(\regArr[7][7] ), 
	.C(\regArr[6][7] ), 
	.B(\regArr[5][7] ), 
	.A(\regArr[4][7] ));
   MX4X1M U300 (.Y(n139), 
	.S1(n337), 
	.S0(n339), 
	.D(\regArr[15][0] ), 
	.C(\regArr[14][0] ), 
	.B(\regArr[13][0] ), 
	.A(\regArr[12][0] ));
   MX4X1M U301 (.Y(n147), 
	.S1(n337), 
	.S0(n340), 
	.D(\regArr[15][2] ), 
	.C(\regArr[14][2] ), 
	.B(\regArr[13][2] ), 
	.A(\regArr[12][2] ));
   MX4X1M U302 (.Y(n316), 
	.S1(n337), 
	.S0(n340), 
	.D(\regArr[15][3] ), 
	.C(\regArr[14][3] ), 
	.B(\regArr[13][3] ), 
	.A(\regArr[12][3] ));
   MX4X1M U303 (.Y(n320), 
	.S1(n337), 
	.S0(n340), 
	.D(\regArr[15][4] ), 
	.C(\regArr[14][4] ), 
	.B(\regArr[13][4] ), 
	.A(\regArr[12][4] ));
   MX4X1M U304 (.Y(n324), 
	.S1(N12), 
	.S0(n339), 
	.D(\regArr[15][5] ), 
	.C(\regArr[14][5] ), 
	.B(\regArr[13][5] ), 
	.A(\regArr[12][5] ));
   MX4X1M U305 (.Y(n328), 
	.S1(N12), 
	.S0(n339), 
	.D(\regArr[15][6] ), 
	.C(\regArr[14][6] ), 
	.B(\regArr[13][6] ), 
	.A(\regArr[12][6] ));
   MX4X1M U306 (.Y(n332), 
	.S1(N12), 
	.S0(n339), 
	.D(\regArr[15][7] ), 
	.C(\regArr[14][7] ), 
	.B(\regArr[13][7] ), 
	.A(\regArr[12][7] ));
   INVX2M U307 (.Y(n341), 
	.A(N11));
   INVX2M U308 (.Y(n342), 
	.A(N12));
   INVX2M U309 (.Y(n363), 
	.A(WrData[5]));
   INVX2M U310 (.Y(n364), 
	.A(WrData[6]));
   INVX2M U311 (.Y(n365), 
	.A(WrData[7]));
   OAI2BB2X1M U312 (.Y(n186), 
	.B1(n358), 
	.B0(n151), 
	.A1N(n151), 
	.A0N(REG0[0]));
   OAI2BB2X1M U313 (.Y(n187), 
	.B1(n359), 
	.B0(n151), 
	.A1N(n151), 
	.A0N(REG0[1]));
   OAI2BB2X1M U314 (.Y(n188), 
	.B1(n360), 
	.B0(n151), 
	.A1N(n151), 
	.A0N(REG0[2]));
   OAI2BB2X1M U315 (.Y(n189), 
	.B1(n361), 
	.B0(n151), 
	.A1N(n151), 
	.A0N(REG0[3]));
   OAI2BB2X1M U316 (.Y(n190), 
	.B1(n362), 
	.B0(n151), 
	.A1N(n151), 
	.A0N(REG0[4]));
   OAI2BB2X1M U317 (.Y(n191), 
	.B1(n363), 
	.B0(n151), 
	.A1N(n151), 
	.A0N(REG0[5]));
   OAI2BB2X1M U318 (.Y(n192), 
	.B1(n364), 
	.B0(n151), 
	.A1N(n151), 
	.A0N(REG0[6]));
   OAI2BB2X1M U319 (.Y(n193), 
	.B1(n365), 
	.B0(n151), 
	.A1N(n151), 
	.A0N(REG0[7]));
   OAI2BB2X1M U320 (.Y(n194), 
	.B1(n154), 
	.B0(n358), 
	.A1N(n154), 
	.A0N(REG1[0]));
   OAI2BB2X1M U321 (.Y(n195), 
	.B1(n154), 
	.B0(n359), 
	.A1N(n154), 
	.A0N(REG1[1]));
   OAI2BB2X1M U322 (.Y(n196), 
	.B1(n154), 
	.B0(n360), 
	.A1N(n154), 
	.A0N(REG1[2]));
   OAI2BB2X1M U323 (.Y(n197), 
	.B1(n154), 
	.B0(n361), 
	.A1N(n154), 
	.A0N(REG1[3]));
   OAI2BB2X1M U324 (.Y(n198), 
	.B1(n154), 
	.B0(n362), 
	.A1N(n154), 
	.A0N(REG1[4]));
   OAI2BB2X1M U325 (.Y(n199), 
	.B1(n154), 
	.B0(n363), 
	.A1N(n154), 
	.A0N(REG1[5]));
   OAI2BB2X1M U326 (.Y(n200), 
	.B1(n154), 
	.B0(n364), 
	.A1N(n154), 
	.A0N(REG1[6]));
   OAI2BB2X1M U327 (.Y(n201), 
	.B1(n154), 
	.B0(n365), 
	.A1N(n154), 
	.A0N(REG1[7]));
   OAI2BB2X1M U328 (.Y(n218), 
	.B1(n159), 
	.B0(n358), 
	.A1N(n159), 
	.A0N(\regArr[4][0] ));
   OAI2BB2X1M U329 (.Y(n219), 
	.B1(n159), 
	.B0(n359), 
	.A1N(n159), 
	.A0N(\regArr[4][1] ));
   OAI2BB2X1M U330 (.Y(n220), 
	.B1(n159), 
	.B0(n360), 
	.A1N(n159), 
	.A0N(\regArr[4][2] ));
   OAI2BB2X1M U331 (.Y(n221), 
	.B1(n159), 
	.B0(n361), 
	.A1N(n159), 
	.A0N(\regArr[4][3] ));
   OAI2BB2X1M U332 (.Y(n222), 
	.B1(n159), 
	.B0(n362), 
	.A1N(n159), 
	.A0N(\regArr[4][4] ));
   OAI2BB2X1M U333 (.Y(n223), 
	.B1(n159), 
	.B0(n363), 
	.A1N(n159), 
	.A0N(\regArr[4][5] ));
   OAI2BB2X1M U334 (.Y(n224), 
	.B1(n159), 
	.B0(n364), 
	.A1N(n159), 
	.A0N(\regArr[4][6] ));
   OAI2BB2X1M U335 (.Y(n225), 
	.B1(n159), 
	.B0(n365), 
	.A1N(n159), 
	.A0N(\regArr[4][7] ));
   OAI2BB2X1M U336 (.Y(n226), 
	.B1(n161), 
	.B0(n358), 
	.A1N(n161), 
	.A0N(\regArr[5][0] ));
   OAI2BB2X1M U337 (.Y(n227), 
	.B1(n161), 
	.B0(n359), 
	.A1N(n161), 
	.A0N(\regArr[5][1] ));
   OAI2BB2X1M U338 (.Y(n228), 
	.B1(n161), 
	.B0(n360), 
	.A1N(n161), 
	.A0N(\regArr[5][2] ));
   OAI2BB2X1M U339 (.Y(n229), 
	.B1(n161), 
	.B0(n361), 
	.A1N(n161), 
	.A0N(\regArr[5][3] ));
   OAI2BB2X1M U340 (.Y(n230), 
	.B1(n161), 
	.B0(n362), 
	.A1N(n161), 
	.A0N(\regArr[5][4] ));
   OAI2BB2X1M U341 (.Y(n231), 
	.B1(n161), 
	.B0(n363), 
	.A1N(n161), 
	.A0N(\regArr[5][5] ));
   OAI2BB2X1M U342 (.Y(n232), 
	.B1(n161), 
	.B0(n364), 
	.A1N(n161), 
	.A0N(\regArr[5][6] ));
   OAI2BB2X1M U343 (.Y(n233), 
	.B1(n161), 
	.B0(n365), 
	.A1N(n161), 
	.A0N(\regArr[5][7] ));
   OAI2BB2X1M U344 (.Y(n234), 
	.B1(n162), 
	.B0(n358), 
	.A1N(n162), 
	.A0N(\regArr[6][0] ));
   OAI2BB2X1M U345 (.Y(n235), 
	.B1(n162), 
	.B0(n359), 
	.A1N(n162), 
	.A0N(\regArr[6][1] ));
   OAI2BB2X1M U346 (.Y(n236), 
	.B1(n162), 
	.B0(n360), 
	.A1N(n162), 
	.A0N(\regArr[6][2] ));
   OAI2BB2X1M U347 (.Y(n237), 
	.B1(n162), 
	.B0(n361), 
	.A1N(n162), 
	.A0N(\regArr[6][3] ));
   OAI2BB2X1M U348 (.Y(n238), 
	.B1(n162), 
	.B0(n362), 
	.A1N(n162), 
	.A0N(\regArr[6][4] ));
   OAI2BB2X1M U349 (.Y(n239), 
	.B1(n162), 
	.B0(n363), 
	.A1N(n162), 
	.A0N(\regArr[6][5] ));
   OAI2BB2X1M U350 (.Y(n240), 
	.B1(n162), 
	.B0(n364), 
	.A1N(n162), 
	.A0N(\regArr[6][6] ));
   OAI2BB2X1M U351 (.Y(n241), 
	.B1(n162), 
	.B0(n365), 
	.A1N(n162), 
	.A0N(\regArr[6][7] ));
   OAI2BB2X1M U352 (.Y(n242), 
	.B1(n165), 
	.B0(n358), 
	.A1N(n165), 
	.A0N(\regArr[7][0] ));
   OAI2BB2X1M U353 (.Y(n243), 
	.B1(n165), 
	.B0(n359), 
	.A1N(n165), 
	.A0N(\regArr[7][1] ));
   OAI2BB2X1M U354 (.Y(n244), 
	.B1(n165), 
	.B0(n360), 
	.A1N(n165), 
	.A0N(\regArr[7][2] ));
   OAI2BB2X1M U355 (.Y(n245), 
	.B1(n165), 
	.B0(n361), 
	.A1N(n165), 
	.A0N(\regArr[7][3] ));
   OAI2BB2X1M U356 (.Y(n246), 
	.B1(n165), 
	.B0(n362), 
	.A1N(n165), 
	.A0N(\regArr[7][4] ));
   OAI2BB2X1M U357 (.Y(n247), 
	.B1(n165), 
	.B0(n363), 
	.A1N(n165), 
	.A0N(\regArr[7][5] ));
   OAI2BB2X1M U358 (.Y(n248), 
	.B1(n165), 
	.B0(n364), 
	.A1N(n165), 
	.A0N(\regArr[7][6] ));
   OAI2BB2X1M U359 (.Y(n249), 
	.B1(n165), 
	.B0(n365), 
	.A1N(n165), 
	.A0N(\regArr[7][7] ));
   OAI2BB2X1M U360 (.Y(n203), 
	.B1(n156), 
	.B0(n359), 
	.A1N(n156), 
	.A0N(REG2[1]));
   OAI2BB2X1M U361 (.Y(n204), 
	.B1(n156), 
	.B0(n360), 
	.A1N(n156), 
	.A0N(REG2[2]));
   OAI2BB2X1M U362 (.Y(n205), 
	.B1(n156), 
	.B0(n361), 
	.A1N(n156), 
	.A0N(REG2[3]));
   OAI2BB2X1M U363 (.Y(n206), 
	.B1(n156), 
	.B0(n362), 
	.A1N(n156), 
	.A0N(REG2[4]));
   OAI2BB2X1M U364 (.Y(n207), 
	.B1(n156), 
	.B0(n363), 
	.A1N(n156), 
	.A0N(REG2[5]));
   OAI2BB2X1M U365 (.Y(n208), 
	.B1(n156), 
	.B0(n364), 
	.A1N(n156), 
	.A0N(REG2[6]));
   OAI2BB2X1M U366 (.Y(n210), 
	.B1(n158), 
	.B0(n358), 
	.A1N(n158), 
	.A0N(REG3[0]));
   OAI2BB2X1M U367 (.Y(n211), 
	.B1(n158), 
	.B0(n359), 
	.A1N(n158), 
	.A0N(REG3[1]));
   OAI2BB2X1M U368 (.Y(n212), 
	.B1(n158), 
	.B0(n360), 
	.A1N(n158), 
	.A0N(REG3[2]));
   OAI2BB2X1M U369 (.Y(n213), 
	.B1(n158), 
	.B0(n361), 
	.A1N(n158), 
	.A0N(REG3[3]));
   OAI2BB2X1M U370 (.Y(n214), 
	.B1(n158), 
	.B0(n362), 
	.A1N(n158), 
	.A0N(REG3[4]));
   OAI2BB2X1M U371 (.Y(n216), 
	.B1(n158), 
	.B0(n364), 
	.A1N(n158), 
	.A0N(REG3[6]));
   OAI2BB2X1M U372 (.Y(n217), 
	.B1(n158), 
	.B0(n365), 
	.A1N(n158), 
	.A0N(REG3[7]));
   OAI2BB2X1M U373 (.Y(n202), 
	.B1(n156), 
	.B0(n358), 
	.A1N(n156), 
	.A0N(REG2[0]));
   OAI2BB2X1M U374 (.Y(n209), 
	.B1(n156), 
	.B0(n365), 
	.A1N(n156), 
	.A0N(REG2[7]));
   OAI2BB2X1M U375 (.Y(n215), 
	.B1(n158), 
	.B0(n363), 
	.A1N(n158), 
	.A0N(REG3[5]));
   OAI2BB1X2M U376 (.Y(n185), 
	.B0(n149), 
	.A1N(n150), 
	.A0N(RdData_VLD));
endmodule

module ALU_DW_div_uns_0 (
	a, 
	b, 
	quotient, 
	remainder, 
	divide_by_0, 
	n141, 
	n151, 
	n150, 
	n139, 
	n149, 
	n148, 
	n147);
   input [7:0] a;
   input [7:0] b;
   output [7:0] quotient;
   output [7:0] remainder;
   output divide_by_0;
   input n141;
   input n151;
   input n150;
   input n139;
   input n149;
   input n148;
   input n147;

   // Internal wires
   wire FE_RN_460_0;
   wire FE_RN_459_0;
   wire FE_RN_458_0;
   wire FE_RN_457_0;
   wire FE_RN_456_0;
   wire FE_RN_455_0;
   wire FE_RN_454_0;
   wire FE_RN_452_0;
   wire FE_RN_451_0;
   wire FE_RN_450_0;
   wire FE_RN_449_0;
   wire FE_RN_448_0;
   wire FE_RN_447_0;
   wire FE_RN_446_0;
   wire FE_RN_445_0;
   wire FE_RN_444_0;
   wire FE_RN_443_0;
   wire FE_RN_442_0;
   wire FE_RN_441_0;
   wire FE_RN_440_0;
   wire FE_RN_439_0;
   wire FE_RN_438_0;
   wire FE_RN_437_0;
   wire FE_RN_436_0;
   wire FE_RN_435_0;
   wire FE_RN_434_0;
   wire FE_RN_433_0;
   wire FE_RN_432_0;
   wire FE_RN_431_0;
   wire FE_RN_430_0;
   wire FE_RN_429_0;
   wire FE_RN_428_0;
   wire FE_RN_427_0;
   wire FE_RN_426_0;
   wire FE_RN_425_0;
   wire FE_RN_424_0;
   wire FE_RN_423_0;
   wire FE_RN_422_0;
   wire FE_RN_404_0;
   wire FE_RN_403_0;
   wire FE_RN_402_0;
   wire FE_RN_401_0;
   wire FE_RN_400_0;
   wire FE_RN_399_0;
   wire FE_RN_396_0;
   wire FE_RN_395_0;
   wire FE_RN_394_0;
   wire FE_RN_393_0;
   wire FE_RN_391_0;
   wire FE_RN_390_0;
   wire FE_RN_389_0;
   wire FE_RN_388_0;
   wire FE_RN_387_0;
   wire FE_RN_386_0;
   wire FE_RN_385_0;
   wire FE_RN_381_0;
   wire FE_RN_380_0;
   wire FE_RN_379_0;
   wire FE_RN_378_0;
   wire FE_RN_361_0;
   wire FE_RN_359_0;
   wire FE_RN_358_0;
   wire FE_RN_357_0;
   wire FE_RN_356_0;
   wire FE_RN_355_0;
   wire FE_RN_354_0;
   wire FE_RN_349_0;
   wire FE_RN_348_0;
   wire FE_RN_347_0;
   wire FE_RN_346_0;
   wire FE_RN_345_0;
   wire FE_RN_344_0;
   wire FE_RN_343_0;
   wire FE_RN_342_0;
   wire FE_RN_341_0;
   wire FE_RN_339_0;
   wire FE_RN_338_0;
   wire FE_RN_336_0;
   wire FE_RN_334_0;
   wire FE_RN_333_0;
   wire FE_RN_331_0;
   wire FE_RN_330_0;
   wire FE_RN_329_0;
   wire FE_RN_327_0;
   wire FE_RN_324_0;
   wire FE_RN_323_0;
   wire FE_RN_322_0;
   wire FE_RN_320_0;
   wire FE_RN_318_0;
   wire FE_RN_317_0;
   wire FE_RN_315_0;
   wire FE_RN_314_0;
   wire FE_RN_313_0;
   wire FE_RN_312_0;
   wire FE_RN_307_0;
   wire FE_RN_306_0;
   wire FE_RN_305_0;
   wire FE_RN_303_0;
   wire FE_RN_302_0;
   wire FE_RN_299_0;
   wire FE_RN_298_0;
   wire FE_RN_297_0;
   wire FE_RN_296_0;
   wire FE_RN_295_0;
   wire FE_RN_294_0;
   wire FE_RN_293_0;
   wire FE_RN_291_0;
   wire FE_RN_290_0;
   wire FE_RN_289_0;
   wire FE_RN_286_0;
   wire FE_RN_283_0;
   wire FE_RN_282_0;
   wire FE_RN_281_0;
   wire FE_RN_278_0;
   wire FE_RN_277_0;
   wire FE_RN_276_0;
   wire FE_RN_275_0;
   wire FE_RN_274_0;
   wire FE_RN_273_0;
   wire FE_RN_272_0;
   wire FE_RN_270_0;
   wire FE_RN_269_0;
   wire FE_RN_268_0;
   wire FE_RN_265_0;
   wire FE_RN_264_0;
   wire FE_RN_263_0;
   wire FE_RN_262_0;
   wire FE_RN_261_0;
   wire FE_RN_260_0;
   wire FE_RN_259_0;
   wire FE_RN_258_0;
   wire FE_RN_257_0;
   wire FE_RN_256_0;
   wire FE_RN_255_0;
   wire FE_RN_254_0;
   wire FE_RN_253_0;
   wire FE_RN_252_0;
   wire FE_RN_251_0;
   wire FE_RN_250_0;
   wire FE_RN_249_0;
   wire FE_RN_248_0;
   wire FE_RN_247_0;
   wire FE_RN_246_0;
   wire FE_RN_245_0;
   wire FE_RN_244_0;
   wire FE_RN_243_0;
   wire FE_RN_242_0;
   wire FE_RN_240_0;
   wire FE_RN_239_0;
   wire FE_RN_236_0;
   wire FE_RN_235_0;
   wire FE_RN_233_0;
   wire FE_RN_232_0;
   wire FE_RN_231_0;
   wire FE_RN_230_0;
   wire FE_RN_192_0;
   wire FE_RN_191_0;
   wire FE_RN_188_0;
   wire FE_RN_186_0;
   wire FE_RN_185_0;
   wire FE_RN_184_0;
   wire FE_RN_183_0;
   wire FE_RN_182_0;
   wire FE_RN_181_0;
   wire FE_RN_180_0;
   wire FE_RN_179_0;
   wire FE_RN_178_0;
   wire FE_RN_177_0;
   wire FE_RN_175_0;
   wire FE_RN_174_0;
   wire FE_RN_172_0;
   wire FE_RN_171_0;
   wire FE_RN_170_0;
   wire FE_RN_167_0;
   wire FE_RN_166_0;
   wire FE_RN_165_0;
   wire FE_RN_164_0;
   wire FE_RN_163_0;
   wire FE_RN_162_0;
   wire FE_RN_161_0;
   wire FE_RN_160_0;
   wire FE_RN_159_0;
   wire FE_RN_156_0;
   wire FE_RN_155_0;
   wire FE_RN_154_0;
   wire FE_RN_153_0;
   wire FE_RN_152_0;
   wire FE_RN_151_0;
   wire FE_RN_150_0;
   wire FE_RN_149_0;
   wire FE_RN_147_0;
   wire FE_RN_146_0;
   wire FE_RN_145_0;
   wire FE_RN_144_0;
   wire FE_RN_143_0;
   wire FE_RN_141_0;
   wire FE_RN_140_0;
   wire FE_RN_139_0;
   wire FE_RN_138_0;
   wire FE_RN_135_0;
   wire FE_RN_133_0;
   wire FE_RN_132_0;
   wire FE_RN_131_0;
   wire FE_RN_130_0;
   wire FE_RN_129_0;
   wire FE_RN_128_0;
   wire FE_RN_127_0;
   wire FE_RN_126_0;
   wire FE_RN_124_0;
   wire FE_RN_123_0;
   wire FE_RN_122_0;
   wire FE_RN_120_0;
   wire FE_RN_118_0;
   wire FE_RN_117_0;
   wire FE_RN_116_0;
   wire FE_RN_115_0;
   wire FE_RN_114_0;
   wire FE_RN_113_0;
   wire FE_RN_110_0;
   wire FE_RN_109_0;
   wire FE_RN_108_0;
   wire FE_RN_107_0;
   wire FE_RN_106_0;
   wire FE_RN_105_0;
   wire FE_RN_104_0;
   wire FE_RN_102_0;
   wire FE_RN_101_0;
   wire FE_RN_100_0;
   wire FE_RN_99_0;
   wire FE_RN_97_0;
   wire FE_RN_96_0;
   wire FE_RN_95_0;
   wire FE_RN_94_0;
   wire FE_RN_92_0;
   wire FE_RN_90_0;
   wire FE_RN_89_0;
   wire FE_RN_88_0;
   wire FE_RN_87_0;
   wire FE_RN_85_0;
   wire FE_RN_84_0;
   wire FE_RN_83_0;
   wire FE_RN_82_0;
   wire FE_RN_81_0;
   wire FE_RN_80_0;
   wire FE_RN_79_0;
   wire FE_RN_78_0;
   wire FE_RN_74_0;
   wire FE_RN_73_0;
   wire FE_RN_72_0;
   wire FE_RN_71_0;
   wire FE_RN_69_0;
   wire FE_RN_68_0;
   wire FE_RN_67_0;
   wire FE_RN_66_0;
   wire FE_RN_65_0;
   wire FE_RN_64_0;
   wire FE_RN_62_0;
   wire FE_RN_61_0;
   wire FE_RN_58_0;
   wire FE_RN_57_0;
   wire FE_RN_56_0;
   wire FE_RN_55_0;
   wire FE_RN_54_0;
   wire FE_RN_53_0;
   wire FE_RN_52_0;
   wire FE_RN_51_0;
   wire FE_RN_50_0;
   wire FE_RN_48_0;
   wire FE_RN_47_0;
   wire FE_RN_46_0;
   wire FE_RN_44_0;
   wire FE_RN_43_0;
   wire FE_RN_41_0;
   wire FE_RN_40_0;
   wire FE_RN_39_0;
   wire FE_RN_38_0;
   wire FE_RN_37_0;
   wire FE_RN_36_0;
   wire FE_RN_35_0;
   wire FE_RN_34_0;
   wire FE_RN_33_0;
   wire FE_RN_32_0;
   wire FE_RN_31_0;
   wire FE_RN_30_0;
   wire FE_RN_29_0;
   wire FE_RN_28_0;
   wire FE_RN_27_0;
   wire FE_RN_26_0;
   wire FE_RN_25_0;
   wire FE_RN_24_0;
   wire FE_RN_22_0;
   wire FE_RN_21_0;
   wire FE_RN_20_0;
   wire FE_RN_19_0;
   wire FE_RN_17_0;
   wire FE_RN_15_0;
   wire FE_RN_14_0;
   wire FE_RN_13_0;
   wire FE_RN_12_0;
   wire FE_RN_11_0;
   wire FE_RN_10_0;
   wire FE_RN_9_0;
   wire FE_RN_8_0;
   wire FE_RN_7_0;
   wire FE_RN_5_0;
   wire FE_RN_4_0;
   wire FE_RN_3_0;
   wire \u_div/SumTmp[1][0] ;
   wire \u_div/SumTmp[1][1] ;
   wire \u_div/SumTmp[1][2] ;
   wire \u_div/SumTmp[1][3] ;
   wire \u_div/SumTmp[1][4] ;
   wire \u_div/SumTmp[1][5] ;
   wire \u_div/SumTmp[1][6] ;
   wire \u_div/SumTmp[2][0] ;
   wire \u_div/SumTmp[2][1] ;
   wire \u_div/SumTmp[2][2] ;
   wire \u_div/SumTmp[2][3] ;
   wire \u_div/SumTmp[2][4] ;
   wire \u_div/SumTmp[2][5] ;
   wire \u_div/SumTmp[3][0] ;
   wire \u_div/SumTmp[3][1] ;
   wire \u_div/SumTmp[3][2] ;
   wire \u_div/SumTmp[3][3] ;
   wire \u_div/SumTmp[3][4] ;
   wire \u_div/SumTmp[4][0] ;
   wire \u_div/SumTmp[4][1] ;
   wire \u_div/SumTmp[4][2] ;
   wire \u_div/SumTmp[4][3] ;
   wire \u_div/SumTmp[5][0] ;
   wire \u_div/SumTmp[5][1] ;
   wire \u_div/SumTmp[5][2] ;
   wire \u_div/SumTmp[6][0] ;
   wire \u_div/SumTmp[6][1] ;
   wire \u_div/SumTmp[7][0] ;
   wire \u_div/CryTmp[0][1] ;
   wire \u_div/CryTmp[0][2] ;
   wire \u_div/CryTmp[0][3] ;
   wire \u_div/CryTmp[0][4] ;
   wire \u_div/CryTmp[0][5] ;
   wire \u_div/CryTmp[0][6] ;
   wire \u_div/CryTmp[0][7] ;
   wire \u_div/CryTmp[1][1] ;
   wire \u_div/CryTmp[1][2] ;
   wire \u_div/CryTmp[1][6] ;
   wire \u_div/CryTmp[1][7] ;
   wire \u_div/CryTmp[2][1] ;
   wire \u_div/CryTmp[2][2] ;
   wire \u_div/CryTmp[3][1] ;
   wire \u_div/CryTmp[3][2] ;
   wire \u_div/CryTmp[3][3] ;
   wire \u_div/CryTmp[4][1] ;
   wire \u_div/CryTmp[4][2] ;
   wire \u_div/CryTmp[4][3] ;
   wire \u_div/CryTmp[5][1] ;
   wire \u_div/CryTmp[5][2] ;
   wire \u_div/CryTmp[6][1] ;
   wire \u_div/CryTmp[7][1] ;
   wire \u_div/PartRem[1][1] ;
   wire \u_div/PartRem[1][2] ;
   wire \u_div/PartRem[1][3] ;
   wire \u_div/PartRem[1][4] ;
   wire \u_div/PartRem[1][5] ;
   wire \u_div/PartRem[1][6] ;
   wire \u_div/PartRem[1][7] ;
   wire \u_div/PartRem[2][1] ;
   wire \u_div/PartRem[2][2] ;
   wire \u_div/PartRem[2][3] ;
   wire \u_div/PartRem[2][4] ;
   wire \u_div/PartRem[2][5] ;
   wire \u_div/PartRem[2][6] ;
   wire \u_div/PartRem[3][1] ;
   wire \u_div/PartRem[3][2] ;
   wire \u_div/PartRem[3][3] ;
   wire \u_div/PartRem[3][4] ;
   wire \u_div/PartRem[3][5] ;
   wire \u_div/PartRem[4][1] ;
   wire \u_div/PartRem[4][2] ;
   wire \u_div/PartRem[4][3] ;
   wire \u_div/PartRem[4][4] ;
   wire \u_div/PartRem[5][1] ;
   wire \u_div/PartRem[5][2] ;
   wire \u_div/PartRem[5][3] ;
   wire \u_div/PartRem[6][1] ;
   wire \u_div/PartRem[6][2] ;
   wire \u_div/PartRem[7][1] ;
   wire n1;
   wire n2;
   wire n4;
   wire n13;
   wire n14;
   wire n15;
   wire n16;
   wire n17;
   wire n18;
   wire n19;
   wire n20;
   wire n21;

   INVX2M FE_RC_550_0 (.Y(FE_RN_460_0), 
	.A(FE_RN_450_0));
   INVX2M FE_RC_549_0 (.Y(FE_RN_459_0), 
	.A(FE_RN_378_0));
   NAND2X2M FE_RC_548_0 (.Y(FE_RN_458_0), 
	.B(FE_RN_459_0), 
	.A(FE_RN_425_0));
   INVX2M FE_RC_547_0 (.Y(FE_RN_457_0), 
	.A(FE_RN_385_0));
   AOI21X2M FE_RC_546_0 (.Y(FE_RN_456_0), 
	.B0(FE_RN_433_0), 
	.A1(FE_RN_457_0), 
	.A0(FE_RN_425_0));
   CLKNAND2X2M FE_RC_545_0 (.Y(FE_RN_455_0), 
	.B(FE_RN_458_0), 
	.A(FE_RN_456_0));
   CLKNAND2X2M FE_RC_544_0 (.Y(FE_RN_454_0), 
	.B(FE_RN_460_0), 
	.A(FE_RN_455_0));
   NOR2X2M FE_RC_542_0 (.Y(FE_RN_452_0), 
	.B(FE_RN_442_0), 
	.A(FE_RN_446_0));
   INVX2M FE_RC_541_0 (.Y(FE_RN_451_0), 
	.A(FE_RN_425_0));
   XOR2X2M FE_RC_540_0 (.Y(FE_RN_450_0), 
	.B(n13), 
	.A(\u_div/PartRem[2][5] ));
   OAI21X2M FE_RC_539_0 (.Y(FE_RN_449_0), 
	.B0(FE_RN_450_0), 
	.A1(FE_RN_451_0), 
	.A0(FE_RN_452_0));
   NAND2X2M FE_RC_538_0 (.Y(\u_div/SumTmp[1][5] ), 
	.B(FE_RN_454_0), 
	.A(FE_RN_449_0));
   XNOR2X2M FE_RC_537_0 (.Y(FE_RN_448_0), 
	.B(n14), 
	.A(\u_div/PartRem[2][4] ));
   AND2X2M FE_RC_536_0 (.Y(FE_RN_447_0), 
	.B(FE_RN_389_0), 
	.A(FE_RN_385_0));
   CLKNAND2X2M FE_RC_535_0 (.Y(FE_RN_446_0), 
	.B(FE_RN_378_0), 
	.A(FE_RN_447_0));
   CLKNAND2X2M FE_RC_534_0 (.Y(FE_RN_445_0), 
	.B(FE_RN_425_0), 
	.A(FE_RN_436_0));
   CLKNAND2X2M FE_RC_533_0 (.Y(FE_RN_444_0), 
	.B(FE_RN_446_0), 
	.A(FE_RN_445_0));
   OAI21X2M FE_RC_532_0 (.Y(\u_div/SumTmp[1][4] ), 
	.B0(FE_RN_444_0), 
	.A1(FE_RN_448_0), 
	.A0(FE_RN_446_0));
   NAND3BX2M FE_RC_531_0 (.Y(FE_RN_443_0), 
	.C(FE_RN_428_0), 
	.B(FE_RN_425_0), 
	.AN(FE_RN_385_0));
   INVX2M FE_RC_530_0 (.Y(FE_RN_442_0), 
	.A(FE_RN_436_0));
   NOR2X2M FE_RC_529_0 (.Y(FE_RN_441_0), 
	.B(n13), 
	.A(FE_RN_442_0));
   INVX2M FE_RC_528_0 (.Y(FE_RN_440_0), 
	.A(FE_RN_389_0));
   CLKNAND2X4M FE_RC_527_0 (.Y(FE_RN_439_0), 
	.B(FE_RN_440_0), 
	.A(FE_RN_425_0));
   NAND2X2M FE_RC_526_0 (.Y(FE_RN_438_0), 
	.B(FE_RN_441_0), 
	.A(FE_RN_439_0));
   CLKNAND2X4M FE_RC_525_0 (.Y(FE_RN_437_0), 
	.B(\u_div/PartRem[2][5] ), 
	.A(FE_RN_438_0));
   CLKNAND2X2M FE_RC_524_0 (.Y(FE_RN_436_0), 
	.B(n14), 
	.A(\u_div/PartRem[2][4] ));
   INVX2M FE_RC_523_0 (.Y(FE_RN_435_0), 
	.A(FE_RN_389_0));
   CLKNAND2X4M FE_RC_522_0 (.Y(FE_RN_434_0), 
	.B(FE_RN_435_0), 
	.A(FE_RN_425_0));
   NAND2X2M FE_RC_521_0 (.Y(FE_RN_433_0), 
	.B(FE_RN_436_0), 
	.A(FE_RN_434_0));
   CLKNAND2X2M FE_RC_520_0 (.Y(FE_RN_432_0), 
	.B(n13), 
	.A(FE_RN_433_0));
   INVX2M FE_RC_519_0 (.Y(FE_RN_431_0), 
	.A(FE_RN_378_0));
   INVX2M FE_RC_518_0 (.Y(FE_RN_430_0), 
	.A(n13));
   INVX2M FE_RC_517_0 (.Y(FE_RN_429_0), 
	.A(\u_div/PartRem[2][5] ));
   NAND2X2M FE_RC_516_0 (.Y(FE_RN_428_0), 
	.B(FE_RN_430_0), 
	.A(FE_RN_429_0));
   INVX2M FE_RC_515_0 (.Y(FE_RN_427_0), 
	.A(n14));
   INVX2M FE_RC_514_0 (.Y(FE_RN_426_0), 
	.A(\u_div/PartRem[2][4] ));
   NAND2X4M FE_RC_513_0 (.Y(FE_RN_425_0), 
	.B(FE_RN_427_0), 
	.A(FE_RN_426_0));
   INVX2M FE_RC_512_0 (.Y(FE_RN_424_0), 
	.A(FE_RN_425_0));
   NOR2BX2M FE_RC_511_0 (.Y(FE_RN_423_0), 
	.B(FE_RN_424_0), 
	.AN(FE_RN_428_0));
   NAND2X2M FE_RC_510_0 (.Y(FE_RN_422_0), 
	.B(FE_RN_431_0), 
	.A(FE_RN_423_0));
   NAND4X2M FE_RC_509_0 (.Y(\u_div/CryTmp[1][6] ), 
	.D(FE_RN_443_0), 
	.C(FE_RN_437_0), 
	.B(FE_RN_432_0), 
	.A(FE_RN_422_0));
   INVX6M FE_RC_489_0 (.Y(quotient[2]), 
	.A(FE_RN_354_0));
   INVX2M FE_RC_488_0 (.Y(FE_RN_404_0), 
	.A(\u_div/SumTmp[2][1] ));
   INVX2M FE_RC_487_0 (.Y(FE_RN_403_0), 
	.A(\u_div/PartRem[3][1] ));
   MXI2X1M FE_RC_486_0 (.Y(\u_div/PartRem[2][2] ), 
	.S0(FE_RN_354_0), 
	.B(FE_RN_403_0), 
	.A(FE_RN_404_0));
   INVX2M FE_RC_485_0 (.Y(FE_RN_402_0), 
	.A(FE_RN_379_0));
   INVX2M FE_RC_484_0 (.Y(FE_RN_401_0), 
	.A(FE_RN_387_0));
   AOI2B1X1M FE_RC_483_0 (.Y(FE_RN_400_0), 
	.B0(FE_RN_401_0), 
	.A1N(FE_RN_402_0), 
	.A0(\u_div/CryTmp[1][2] ));
   INVX2M FE_RC_482_0 (.Y(FE_RN_399_0), 
	.A(\u_div/CryTmp[1][2] ));
   AOI2B1X1M FE_RC_479_0 (.Y(FE_RN_396_0), 
	.B0(FE_RN_402_0), 
	.A1N(FE_RN_401_0), 
	.A0(FE_RN_399_0));
   XOR2X2M FE_RC_478_0 (.Y(FE_RN_395_0), 
	.B(n15), 
	.A(\u_div/PartRem[2][3] ));
   NAND2BX2M FE_RC_477_0 (.Y(FE_RN_394_0), 
	.B(FE_RN_395_0), 
	.AN(FE_RN_396_0));
   OAI21X2M FE_RC_476_0 (.Y(\u_div/SumTmp[1][3] ), 
	.B0(FE_RN_394_0), 
	.A1(FE_RN_395_0), 
	.A0(FE_RN_400_0));
   XNOR2X2M FE_RC_475_0 (.Y(FE_RN_393_0), 
	.B(n16), 
	.A(FE_RN_381_0));
   NOR2BX2M FE_RC_473_0 (.Y(FE_RN_391_0), 
	.B(FE_RN_401_0), 
	.AN(FE_RN_379_0));
   MXI2X1M FE_RC_472_0 (.Y(\u_div/SumTmp[1][2] ), 
	.S0(\u_div/CryTmp[1][2] ), 
	.B(FE_RN_391_0), 
	.A(FE_RN_393_0));
   INVX2M FE_RC_471_0 (.Y(FE_RN_390_0), 
	.A(FE_RN_387_0));
   NAND2X2M FE_RC_470_0 (.Y(FE_RN_389_0), 
	.B(n15), 
	.A(FE_RN_390_0));
   INVX2M FE_RC_469_0 (.Y(FE_RN_388_0), 
	.A(n15));
   NAND2X2M FE_RC_468_0 (.Y(FE_RN_387_0), 
	.B(n16), 
	.A(FE_RN_381_0));
   CLKNAND2X2M FE_RC_467_0 (.Y(FE_RN_386_0), 
	.B(FE_RN_388_0), 
	.A(FE_RN_387_0));
   CLKNAND2X2M FE_RC_466_0 (.Y(FE_RN_385_0), 
	.B(\u_div/PartRem[2][3] ), 
	.A(FE_RN_386_0));
   MXI2X2M FE_RC_462_0 (.Y(FE_RN_381_0), 
	.S0(FE_RN_354_0), 
	.B(FE_RN_403_0), 
	.A(FE_RN_404_0));
   INVX2M FE_RC_461_0 (.Y(FE_RN_380_0), 
	.A(n16));
   NAND2BX2M FE_RC_460_0 (.Y(FE_RN_379_0), 
	.B(FE_RN_380_0), 
	.AN(FE_RN_381_0));
   OAI2B11X4M FE_RC_459_0 (.Y(FE_RN_378_0), 
	.C0(FE_RN_379_0), 
	.B0(\u_div/CryTmp[1][2] ), 
	.A1N(FE_RN_388_0), 
	.A0(\u_div/PartRem[2][3] ));
   CLKNAND2X2M FE_RC_438_0 (.Y(FE_RN_312_0), 
	.B(FE_RN_313_0), 
	.A(FE_RN_314_0));
   INVX2M FE_RC_436_0 (.Y(FE_RN_361_0), 
	.A(\u_div/SumTmp[2][0] ));
   NAND2X2M FE_RC_434_0 (.Y(FE_RN_359_0), 
	.B(FE_RN_314_0), 
	.A(FE_RN_313_0));
   INVX2M FE_RC_433_0 (.Y(FE_RN_358_0), 
	.A(FE_RN_327_0));
   NOR2X2M FE_RC_432_0 (.Y(FE_RN_357_0), 
	.B(FE_RN_358_0), 
	.A(FE_RN_329_0));
   NAND2X2M FE_RC_431_0 (.Y(FE_RN_356_0), 
	.B(FE_RN_359_0), 
	.A(FE_RN_357_0));
   NAND3X4M FE_RC_430_0 (.Y(FE_RN_355_0), 
	.C(FE_RN_330_0), 
	.B(FE_RN_347_0), 
	.A(FE_RN_356_0));
   NAND2X5M FE_RC_429_0 (.Y(FE_RN_354_0), 
	.B(n21), 
	.A(FE_RN_355_0));
   MXI2X6M FE_RC_428_0 (.Y(\u_div/PartRem[2][1] ), 
	.S0(FE_RN_354_0), 
	.B(n149), 
	.A(FE_RN_361_0));
   INVX2M FE_RC_421_0 (.Y(FE_RN_349_0), 
	.A(FE_RN_317_0));
   CLKNAND2X2M FE_RC_420_0 (.Y(FE_RN_348_0), 
	.B(FE_RN_349_0), 
	.A(FE_RN_346_0));
   INVX2M FE_RC_419_0 (.Y(FE_RN_347_0), 
	.A(FE_RN_333_0));
   CLKNAND2X2M FE_RC_418_0 (.Y(FE_RN_346_0), 
	.B(FE_RN_327_0), 
	.A(FE_RN_347_0));
   NAND3X2M FE_RC_417_0 (.Y(FE_RN_345_0), 
	.C(FE_RN_315_0), 
	.B(FE_RN_312_0), 
	.A(FE_RN_346_0));
   INVX2M FE_RC_416_0 (.Y(FE_RN_344_0), 
	.A(FE_RN_315_0));
   INVX2M FE_RC_415_0 (.Y(FE_RN_343_0), 
	.A(FE_RN_336_0));
   NAND3X2M FE_RC_414_0 (.Y(FE_RN_342_0), 
	.C(FE_RN_317_0), 
	.B(FE_RN_344_0), 
	.A(FE_RN_343_0));
   INVX2M FE_RC_413_0 (.Y(FE_RN_341_0), 
	.A(FE_RN_312_0));
   INVX2M FE_RC_411_0 (.Y(FE_RN_339_0), 
	.A(\u_div/PartRem[3][5] ));
   NAND2X2M FE_RC_410_0 (.Y(FE_RN_338_0), 
	.B(FE_RN_430_0), 
	.A(FE_RN_339_0));
   CLKNAND2X2M FE_RC_408_0 (.Y(FE_RN_336_0), 
	.B(FE_RN_338_0), 
	.A(FE_RN_347_0));
   NAND3X2M FE_RC_406_0 (.Y(FE_RN_334_0), 
	.C(FE_RN_317_0), 
	.B(FE_RN_341_0), 
	.A(FE_RN_343_0));
   NAND4X2M FE_RC_405_0 (.Y(\u_div/SumTmp[2][5] ), 
	.D(FE_RN_348_0), 
	.C(FE_RN_345_0), 
	.B(FE_RN_342_0), 
	.A(FE_RN_334_0));
   AND2X2M FE_RC_404_0 (.Y(FE_RN_333_0), 
	.B(n13), 
	.A(\u_div/PartRem[3][5] ));
   INVX2M FE_RC_402_0 (.Y(FE_RN_331_0), 
	.A(FE_RN_317_0));
   NAND2X2M FE_RC_401_0 (.Y(FE_RN_330_0), 
	.B(FE_RN_331_0), 
	.A(FE_RN_327_0));
   INVX2M FE_RC_400_0 (.Y(FE_RN_329_0), 
	.A(FE_RN_315_0));
   NAND2BX2M FE_RC_398_0 (.Y(FE_RN_327_0), 
	.B(FE_RN_430_0), 
	.AN(\u_div/PartRem[3][5] ));
   INVX2M FE_RC_394_0 (.Y(FE_RN_324_0), 
	.A(\u_div/PartRem[3][4] ));
   INVX2M FE_RC_393_0 (.Y(FE_RN_323_0), 
	.A(FE_RN_318_0));
   OAI2BB1X2M FE_RC_392_0 (.Y(FE_RN_322_0), 
	.B0(FE_RN_323_0), 
	.A1N(FE_RN_324_0), 
	.A0N(FE_RN_427_0));
   NOR2X2M FE_RC_390_0 (.Y(FE_RN_320_0), 
	.B(FE_RN_344_0), 
	.A(FE_RN_318_0));
   MXI2X1M FE_RC_389_0 (.Y(\u_div/SumTmp[2][4] ), 
	.S0(FE_RN_312_0), 
	.B(FE_RN_320_0), 
	.A(FE_RN_322_0));
   NOR2BX4M FE_RC_387_0 (.Y(FE_RN_318_0), 
	.B(FE_RN_427_0), 
	.AN(\u_div/PartRem[3][4] ));
   INVX2M FE_RC_386_0 (.Y(FE_RN_317_0), 
	.A(FE_RN_318_0));
   NAND2BX2M FE_RC_384_0 (.Y(FE_RN_315_0), 
	.B(FE_RN_427_0), 
	.AN(\u_div/PartRem[3][4] ));
   INVX2M FE_RC_383_0 (.Y(FE_RN_314_0), 
	.A(FE_RN_302_0));
   NAND2X2M FE_RC_382_0 (.Y(FE_RN_313_0), 
	.B(FE_RN_298_0), 
	.A(FE_RN_293_0));
   OAI2BB1X2M FE_RC_375_0 (.Y(FE_RN_307_0), 
	.B0(FE_RN_314_0), 
	.A1N(FE_RN_303_0), 
	.A0N(FE_RN_388_0));
   INVX2M FE_RC_374_0 (.Y(FE_RN_306_0), 
	.A(FE_RN_298_0));
   NOR2X2M FE_RC_373_0 (.Y(FE_RN_305_0), 
	.B(FE_RN_306_0), 
	.A(FE_RN_302_0));
   MXI2X1M FE_RC_372_0 (.Y(\u_div/SumTmp[2][3] ), 
	.S0(FE_RN_293_0), 
	.B(FE_RN_305_0), 
	.A(FE_RN_307_0));
   INVX2M FE_RC_370_0 (.Y(FE_RN_303_0), 
	.A(\u_div/PartRem[3][3] ));
   NOR2X2M FE_RC_369_0 (.Y(FE_RN_302_0), 
	.B(FE_RN_388_0), 
	.A(FE_RN_303_0));
   INVX2M FE_RC_366_0 (.Y(FE_RN_299_0), 
	.A(\u_div/PartRem[3][3] ));
   NAND2X2M FE_RC_365_0 (.Y(FE_RN_298_0), 
	.B(FE_RN_388_0), 
	.A(FE_RN_299_0));
   INVX2M FE_RC_364_0 (.Y(FE_RN_297_0), 
	.A(FE_RN_380_0));
   NAND2BX4M FE_RC_363_0 (.Y(FE_RN_296_0), 
	.B(FE_RN_297_0), 
	.AN(FE_RN_276_0));
   INVX2M FE_RC_362_0 (.Y(FE_RN_295_0), 
	.A(FE_RN_281_0));
   CLKNAND2X4M FE_RC_361_0 (.Y(FE_RN_294_0), 
	.B(\u_div/CryTmp[2][2] ), 
	.A(FE_RN_295_0));
   NAND2X4M FE_RC_360_0 (.Y(FE_RN_293_0), 
	.B(FE_RN_296_0), 
	.A(FE_RN_294_0));
   INVX2M FE_RC_357_0 (.Y(FE_RN_291_0), 
	.A(FE_RN_277_0));
   INVX2M FE_RC_356_0 (.Y(FE_RN_290_0), 
	.A(FE_RN_278_0));
   CLKNAND2X2M FE_RC_355_0 (.Y(\u_div/PartRem[3][2] ), 
	.B(FE_RN_291_0), 
	.A(FE_RN_290_0));
   INVX2M FE_RC_354_0 (.Y(FE_RN_289_0), 
	.A(\u_div/CryTmp[2][2] ));
   OAI2BB2X1M FE_RC_351_0 (.Y(FE_RN_286_0), 
	.B1(FE_RN_380_0), 
	.B0(\u_div/PartRem[4][1] ), 
	.A1N(\u_div/PartRem[4][1] ), 
	.A0N(FE_RN_380_0));
   OAI2BB2X1M FE_RC_348_0 (.Y(FE_RN_283_0), 
	.B1(FE_RN_380_0), 
	.B0(\u_div/SumTmp[3][1] ), 
	.A1N(\u_div/SumTmp[3][1] ), 
	.A0N(FE_RN_380_0));
   MXI2X1M FE_RC_347_0 (.Y(FE_RN_282_0), 
	.S0(quotient[3]), 
	.B(FE_RN_283_0), 
	.A(FE_RN_286_0));
   MXI2X1M FE_RC_346_0 (.Y(\u_div/SumTmp[2][2] ), 
	.S0(FE_RN_282_0), 
	.B(FE_RN_289_0), 
	.A(\u_div/CryTmp[2][2] ));
   NOR3X2M FE_RC_345_0 (.Y(FE_RN_281_0), 
	.C(n16), 
	.B(FE_RN_277_0), 
	.A(FE_RN_278_0));
   AND2X2M FE_RC_342_0 (.Y(FE_RN_278_0), 
	.B(quotient[3]), 
	.A(\u_div/SumTmp[3][1] ));
   NOR2BX2M FE_RC_341_0 (.Y(FE_RN_277_0), 
	.B(quotient[3]), 
	.AN(\u_div/PartRem[4][1] ));
   NOR2X2M FE_RC_340_0 (.Y(FE_RN_276_0), 
	.B(FE_RN_278_0), 
	.A(FE_RN_277_0));
   NAND3X2M FE_RC_338_0 (.Y(\u_div/PartRem[3][1] ), 
	.C(FE_RN_256_0), 
	.B(FE_RN_257_0), 
	.A(FE_RN_260_0));
   INVX2M FE_RC_337_0 (.Y(FE_RN_275_0), 
	.A(\u_div/CryTmp[2][1] ));
   INVX2M FE_RC_336_0 (.Y(FE_RN_274_0), 
	.A(n17));
   INVX2M FE_RC_335_0 (.Y(FE_RN_273_0), 
	.A(FE_RN_268_0));
   OAI2BB1X2M FE_RC_334_0 (.Y(FE_RN_272_0), 
	.B0(FE_RN_273_0), 
	.A1N(FE_RN_274_0), 
	.A0N(FE_RN_275_0));
   NAND2X2M FE_RC_332_0 (.Y(FE_RN_270_0), 
	.B(FE_RN_265_0), 
	.A(FE_RN_273_0));
   CLKNAND2X2M FE_RC_331_0 (.Y(FE_RN_269_0), 
	.B(FE_RN_264_0), 
	.A(FE_RN_270_0));
   OAI21X2M FE_RC_330_0 (.Y(\u_div/SumTmp[2][1] ), 
	.B0(FE_RN_269_0), 
	.A1(FE_RN_272_0), 
	.A0(FE_RN_264_0));
   AND2X2M FE_RC_329_0 (.Y(FE_RN_268_0), 
	.B(\u_div/CryTmp[2][1] ), 
	.A(n17));
   NAND2BX2M FE_RC_326_0 (.Y(FE_RN_265_0), 
	.B(FE_RN_274_0), 
	.AN(\u_div/CryTmp[2][1] ));
   NAND3X4M FE_RC_325_0 (.Y(FE_RN_264_0), 
	.C(FE_RN_256_0), 
	.B(FE_RN_260_0), 
	.A(FE_RN_257_0));
   CLKNAND2X2M FE_RC_324_0 (.Y(FE_RN_263_0), 
	.B(FE_RN_265_0), 
	.A(FE_RN_264_0));
   CLKNAND2X4M FE_RC_323_0 (.Y(\u_div/CryTmp[2][2] ), 
	.B(FE_RN_273_0), 
	.A(FE_RN_263_0));
   NAND2X2M FE_RC_322_0 (.Y(\u_div/CryTmp[3][3] ), 
	.B(FE_RN_259_0), 
	.A(FE_RN_179_0));
   INVX2M FE_RC_321_0 (.Y(FE_RN_262_0), 
	.A(FE_RN_261_0));
   OAI21X6M FE_RC_320_0 (.Y(quotient[3]), 
	.B0(FE_RN_230_0), 
	.A1(FE_RN_239_0), 
	.A0(FE_RN_262_0));
   NAND2X2M FE_RC_319_0 (.Y(FE_RN_261_0), 
	.B(FE_RN_179_0), 
	.A(FE_RN_259_0));
   NAND3BX2M FE_RC_318_0 (.Y(FE_RN_260_0), 
	.C(\u_div/SumTmp[3][0] ), 
	.B(FE_RN_261_0), 
	.AN(FE_RN_239_0));
   OR2X2M FE_RC_317_0 (.Y(FE_RN_259_0), 
	.B(FE_RN_182_0), 
	.A(FE_RN_183_0));
   AND2X2M FE_RC_316_0 (.Y(FE_RN_258_0), 
	.B(FE_RN_179_0), 
	.A(FE_RN_259_0));
   OAI211X2M FE_RC_315_0 (.Y(FE_RN_257_0), 
	.C0(a[3]), 
	.B0(FE_RN_230_0), 
	.A1(FE_RN_239_0), 
	.A0(FE_RN_258_0));
   NAND2BX2M FE_RC_314_0 (.Y(FE_RN_256_0), 
	.B(\u_div/SumTmp[3][0] ), 
	.AN(FE_RN_230_0));
   XOR2X2M FE_RC_312_0 (.Y(FE_RN_255_0), 
	.B(n14), 
	.A(\u_div/PartRem[4][4] ));
   INVX2M FE_RC_311_0 (.Y(FE_RN_254_0), 
	.A(\u_div/CryTmp[3][3] ));
   CLKNAND2X2M FE_RC_310_0 (.Y(FE_RN_253_0), 
	.B(FE_RN_254_0), 
	.A(FE_RN_236_0));
   CLKNAND2X2M FE_RC_309_0 (.Y(FE_RN_252_0), 
	.B(FE_RN_240_0), 
	.A(FE_RN_253_0));
   CLKNAND2X2M FE_RC_308_0 (.Y(FE_RN_251_0), 
	.B(FE_RN_255_0), 
	.A(FE_RN_252_0));
   CLKNAND2X2M FE_RC_307_0 (.Y(FE_RN_250_0), 
	.B(n14), 
	.A(\u_div/PartRem[4][4] ));
   CLKNAND2X2M FE_RC_306_0 (.Y(FE_RN_249_0), 
	.B(FE_RN_233_0), 
	.A(FE_RN_250_0));
   CLKNAND2X2M FE_RC_305_0 (.Y(FE_RN_248_0), 
	.B(\u_div/CryTmp[3][3] ), 
	.A(FE_RN_240_0));
   CLKNAND2X2M FE_RC_304_0 (.Y(FE_RN_247_0), 
	.B(FE_RN_236_0), 
	.A(FE_RN_248_0));
   CLKNAND2X2M FE_RC_303_0 (.Y(FE_RN_246_0), 
	.B(FE_RN_249_0), 
	.A(FE_RN_247_0));
   NAND2X2M FE_RC_302_0 (.Y(\u_div/SumTmp[3][4] ), 
	.B(FE_RN_251_0), 
	.A(FE_RN_246_0));
   XOR2X2M FE_RC_301_0 (.Y(FE_RN_245_0), 
	.B(n15), 
	.A(\u_div/PartRem[4][3] ));
   NAND2BX2M FE_RC_300_0 (.Y(FE_RN_244_0), 
	.B(FE_RN_245_0), 
	.AN(\u_div/CryTmp[3][3] ));
   CLKNAND2X2M FE_RC_299_0 (.Y(FE_RN_243_0), 
	.B(FE_RN_240_0), 
	.A(FE_RN_236_0));
   CLKNAND2X2M FE_RC_298_0 (.Y(FE_RN_242_0), 
	.B(\u_div/CryTmp[3][3] ), 
	.A(FE_RN_243_0));
   CLKNAND2X2M FE_RC_297_0 (.Y(\u_div/SumTmp[3][3] ), 
	.B(FE_RN_244_0), 
	.A(FE_RN_242_0));
   NAND2BX4M FE_RC_295_0 (.Y(FE_RN_240_0), 
	.B(FE_RN_388_0), 
	.AN(\u_div/PartRem[4][3] ));
   NAND4X2M FE_RC_294_0 (.Y(FE_RN_239_0), 
	.D(n13), 
	.C(n21), 
	.B(FE_RN_240_0), 
	.A(FE_RN_233_0));
   NAND2X2M FE_RC_291_0 (.Y(FE_RN_236_0), 
	.B(n15), 
	.A(\u_div/PartRem[4][3] ));
   INVX2M FE_RC_290_0 (.Y(FE_RN_235_0), 
	.A(FE_RN_236_0));
   NAND2BX4M FE_RC_288_0 (.Y(FE_RN_233_0), 
	.B(FE_RN_427_0), 
	.AN(\u_div/PartRem[4][4] ));
   CLKNAND2X2M FE_RC_287_0 (.Y(FE_RN_232_0), 
	.B(FE_RN_235_0), 
	.A(FE_RN_233_0));
   CLKNAND2X2M FE_RC_286_0 (.Y(FE_RN_231_0), 
	.B(FE_RN_250_0), 
	.A(FE_RN_232_0));
   NAND3X4M FE_RC_285_0 (.Y(FE_RN_230_0), 
	.C(n13), 
	.B(n21), 
	.A(FE_RN_231_0));
   INVX2M FE_RC_239_0 (.Y(FE_RN_192_0), 
	.A(FE_RN_181_0));
   INVX2M FE_RC_238_0 (.Y(FE_RN_191_0), 
	.A(FE_RN_180_0));
   CLKNAND2X2M FE_RC_237_0 (.Y(\u_div/PartRem[4][2] ), 
	.B(FE_RN_192_0), 
	.A(FE_RN_191_0));
   OAI2BB2X1M FE_RC_234_0 (.Y(FE_RN_188_0), 
	.B1(FE_RN_380_0), 
	.B0(\u_div/PartRem[5][1] ), 
	.A1N(\u_div/PartRem[5][1] ), 
	.A0N(FE_RN_380_0));
   OAI2B2X1M FE_RC_232_0 (.Y(FE_RN_186_0), 
	.B1(\u_div/SumTmp[4][1] ), 
	.B0(FE_RN_380_0), 
	.A1N(\u_div/SumTmp[4][1] ), 
	.A0(n16));
   MXI2X1M FE_RC_231_0 (.Y(FE_RN_185_0), 
	.S0(quotient[4]), 
	.B(FE_RN_186_0), 
	.A(FE_RN_188_0));
   CLKNAND2X2M FE_RC_230_0 (.Y(FE_RN_184_0), 
	.B(\u_div/CryTmp[3][2] ), 
	.A(FE_RN_185_0));
   OAI21X2M FE_RC_229_0 (.Y(\u_div/SumTmp[3][2] ), 
	.B0(FE_RN_184_0), 
	.A1(\u_div/CryTmp[3][2] ), 
	.A0(FE_RN_185_0));
   NOR3X2M FE_RC_228_0 (.Y(FE_RN_183_0), 
	.C(n16), 
	.B(FE_RN_180_0), 
	.A(FE_RN_181_0));
   INVX2M FE_RC_227_0 (.Y(FE_RN_182_0), 
	.A(\u_div/CryTmp[3][2] ));
   NOR2BX2M FE_RC_226_0 (.Y(FE_RN_181_0), 
	.B(quotient[4]), 
	.AN(\u_div/PartRem[5][1] ));
   AND2X2M FE_RC_225_0 (.Y(FE_RN_180_0), 
	.B(quotient[4]), 
	.A(\u_div/SumTmp[4][1] ));
   OAI21X2M FE_RC_224_0 (.Y(FE_RN_179_0), 
	.B0(n16), 
	.A1(FE_RN_180_0), 
	.A0(FE_RN_181_0));
   INVX2M FE_RC_222_0 (.Y(FE_RN_178_0), 
	.A(FE_RN_149_0));
   NAND2BX2M FE_RC_221_0 (.Y(\u_div/PartRem[4][1] ), 
	.B(FE_RN_165_0), 
	.AN(FE_RN_178_0));
   INVX2M FE_RC_220_0 (.Y(FE_RN_177_0), 
	.A(\u_div/CryTmp[3][1] ));
   INVX2M FE_RC_218_0 (.Y(FE_RN_175_0), 
	.A(FE_RN_170_0));
   OAI2BB1X2M FE_RC_217_0 (.Y(FE_RN_174_0), 
	.B0(FE_RN_175_0), 
	.A1N(FE_RN_274_0), 
	.A0N(FE_RN_177_0));
   NAND2X2M FE_RC_215_0 (.Y(FE_RN_172_0), 
	.B(FE_RN_167_0), 
	.A(FE_RN_175_0));
   CLKNAND2X2M FE_RC_214_0 (.Y(FE_RN_171_0), 
	.B(FE_RN_164_0), 
	.A(FE_RN_172_0));
   OAI21X2M FE_RC_213_0 (.Y(\u_div/SumTmp[3][1] ), 
	.B0(FE_RN_171_0), 
	.A1(FE_RN_174_0), 
	.A0(FE_RN_164_0));
   AND2X2M FE_RC_212_0 (.Y(FE_RN_170_0), 
	.B(\u_div/CryTmp[3][1] ), 
	.A(n17));
   NAND2BX2M FE_RC_209_0 (.Y(FE_RN_167_0), 
	.B(FE_RN_274_0), 
	.AN(\u_div/CryTmp[3][1] ));
   INVX2M FE_RC_208_0 (.Y(FE_RN_166_0), 
	.A(n147));
   NAND2BX2M FE_RC_207_0 (.Y(FE_RN_165_0), 
	.B(FE_RN_166_0), 
	.AN(FE_RN_159_0));
   NAND2X2M FE_RC_206_0 (.Y(FE_RN_164_0), 
	.B(FE_RN_149_0), 
	.A(FE_RN_165_0));
   NAND2X2M FE_RC_205_0 (.Y(FE_RN_163_0), 
	.B(FE_RN_167_0), 
	.A(FE_RN_164_0));
   CLKNAND2X2M FE_RC_204_0 (.Y(\u_div/CryTmp[3][2] ), 
	.B(FE_RN_175_0), 
	.A(FE_RN_163_0));
   INVX2M FE_RC_203_0 (.Y(FE_RN_162_0), 
	.A(FE_RN_140_0));
   AND2X8M FE_RC_202_0 (.Y(quotient[4]), 
	.B(FE_RN_162_0), 
	.A(FE_RN_150_0));
   OAI21X2M FE_RC_201_0 (.Y(FE_RN_161_0), 
	.B0(FE_RN_152_0), 
	.A1(FE_RN_145_0), 
	.A0(FE_RN_146_0));
   INVX2M FE_RC_200_0 (.Y(FE_RN_160_0), 
	.A(FE_RN_141_0));
   AOI21X2M FE_RC_199_0 (.Y(FE_RN_159_0), 
	.B0(FE_RN_140_0), 
	.A1(FE_RN_160_0), 
	.A0(FE_RN_161_0));
   INVX2M FE_RC_196_0 (.Y(FE_RN_156_0), 
	.A(FE_RN_141_0));
   CLKNAND2X2M FE_RC_195_0 (.Y(FE_RN_155_0), 
	.B(FE_RN_145_0), 
	.A(FE_RN_152_0));
   INVX2M FE_RC_194_0 (.Y(FE_RN_154_0), 
	.A(FE_RN_143_0));
   INVX2M FE_RC_193_0 (.Y(FE_RN_153_0), 
	.A(FE_RN_144_0));
   NAND2X4M FE_RC_192_0 (.Y(FE_RN_152_0), 
	.B(FE_RN_154_0), 
	.A(FE_RN_153_0));
   CLKNAND2X2M FE_RC_191_0 (.Y(FE_RN_151_0), 
	.B(FE_RN_146_0), 
	.A(FE_RN_152_0));
   NAND3X4M FE_RC_190_0 (.Y(FE_RN_150_0), 
	.C(FE_RN_156_0), 
	.B(FE_RN_155_0), 
	.A(FE_RN_151_0));
   NAND3X2M FE_RC_189_0 (.Y(FE_RN_149_0), 
	.C(FE_RN_162_0), 
	.B(\u_div/SumTmp[4][0] ), 
	.A(FE_RN_150_0));
   OAI21X2M FE_RC_186_0 (.Y(\u_div/CryTmp[4][3] ), 
	.B0(FE_RN_108_0), 
	.A1(FE_RN_147_0), 
	.A0(FE_RN_113_0));
   INVX2M FE_RC_185_0 (.Y(FE_RN_147_0), 
	.A(\u_div/CryTmp[4][2] ));
   NOR2X2M FE_RC_184_0 (.Y(FE_RN_146_0), 
	.B(FE_RN_147_0), 
	.A(FE_RN_113_0));
   INVX2M FE_RC_183_0 (.Y(FE_RN_145_0), 
	.A(FE_RN_108_0));
   INVX2M FE_RC_182_0 (.Y(FE_RN_144_0), 
	.A(FE_RN_126_0));
   INVX2M FE_RC_181_0 (.Y(FE_RN_143_0), 
	.A(FE_RN_128_0));
   INVX2M FE_RC_179_0 (.Y(FE_RN_141_0), 
	.A(FE_RN_130_0));
   INVX2M FE_RC_178_0 (.Y(FE_RN_140_0), 
	.A(n20));
   INVX2M FE_RC_176_0 (.Y(FE_RN_139_0), 
	.A(FE_RN_127_0));
   INVX2M FE_RC_175_0 (.Y(FE_RN_138_0), 
	.A(FE_RN_129_0));
   NAND2X2M FE_RC_174_0 (.Y(\u_div/PartRem[5][3] ), 
	.B(FE_RN_139_0), 
	.A(FE_RN_138_0));
   OAI2BB2X1M FE_RC_171_0 (.Y(FE_RN_135_0), 
	.B1(FE_RN_388_0), 
	.B0(\u_div/PartRem[6][2] ), 
	.A1N(\u_div/PartRem[6][2] ), 
	.A0N(FE_RN_388_0));
   OAI2B2X1M FE_RC_169_0 (.Y(FE_RN_133_0), 
	.B1(\u_div/SumTmp[5][2] ), 
	.B0(FE_RN_388_0), 
	.A1N(\u_div/SumTmp[5][2] ), 
	.A0(n15));
   MXI2X1M FE_RC_168_0 (.Y(FE_RN_132_0), 
	.S0(quotient[5]), 
	.B(FE_RN_133_0), 
	.A(FE_RN_135_0));
   NAND2X2M FE_RC_167_0 (.Y(FE_RN_131_0), 
	.B(\u_div/CryTmp[4][3] ), 
	.A(FE_RN_132_0));
   OAI21X2M FE_RC_166_0 (.Y(\u_div/SumTmp[4][3] ), 
	.B0(FE_RN_131_0), 
	.A1(\u_div/CryTmp[4][3] ), 
	.A0(FE_RN_132_0));
   OAI21X2M FE_RC_165_0 (.Y(FE_RN_130_0), 
	.B0(n15), 
	.A1(FE_RN_129_0), 
	.A0(FE_RN_127_0));
   AND2X2M FE_RC_164_0 (.Y(FE_RN_129_0), 
	.B(quotient[5]), 
	.A(\u_div/SumTmp[5][2] ));
   INVX2M FE_RC_163_0 (.Y(FE_RN_128_0), 
	.A(FE_RN_129_0));
   NOR2BX2M FE_RC_162_0 (.Y(FE_RN_127_0), 
	.B(quotient[5]), 
	.AN(\u_div/PartRem[6][2] ));
   NOR2X2M FE_RC_161_0 (.Y(FE_RN_126_0), 
	.B(n15), 
	.A(FE_RN_127_0));
   CLKINVX2M FE_RC_158_0 (.Y(quotient[5]), 
	.A(FE_RN_79_0));
   INVX2M FE_RC_157_0 (.Y(FE_RN_124_0), 
	.A(FE_RN_110_0));
   INVX2M FE_RC_156_0 (.Y(FE_RN_123_0), 
	.A(FE_RN_109_0));
   CLKNAND2X2M FE_RC_155_0 (.Y(\u_div/PartRem[5][2] ), 
	.B(FE_RN_124_0), 
	.A(FE_RN_123_0));
   INVX2M FE_RC_154_0 (.Y(FE_RN_122_0), 
	.A(\u_div/SumTmp[5][1] ));
   OAI22X1M FE_RC_152_0 (.Y(FE_RN_120_0), 
	.B1(\u_div/SumTmp[5][1] ), 
	.B0(FE_RN_380_0), 
	.A1(n16), 
	.A0(FE_RN_122_0));
   OAI2B2X1M FE_RC_150_0 (.Y(FE_RN_118_0), 
	.B1(\u_div/PartRem[6][1] ), 
	.B0(FE_RN_380_0), 
	.A1N(\u_div/PartRem[6][1] ), 
	.A0(n16));
   INVX2M FE_RC_149_0 (.Y(FE_RN_117_0), 
	.A(FE_RN_118_0));
   CLKNAND2X2M FE_RC_148_0 (.Y(FE_RN_116_0), 
	.B(FE_RN_79_0), 
	.A(FE_RN_117_0));
   OAI21X2M FE_RC_147_0 (.Y(FE_RN_115_0), 
	.B0(FE_RN_116_0), 
	.A1(FE_RN_79_0), 
	.A0(FE_RN_120_0));
   CLKNAND2X2M FE_RC_146_0 (.Y(FE_RN_114_0), 
	.B(\u_div/CryTmp[4][2] ), 
	.A(FE_RN_115_0));
   OAI21X2M FE_RC_145_0 (.Y(\u_div/SumTmp[4][2] ), 
	.B0(FE_RN_114_0), 
	.A1(\u_div/CryTmp[4][2] ), 
	.A0(FE_RN_115_0));
   NOR3X2M FE_RC_144_0 (.Y(FE_RN_113_0), 
	.C(n16), 
	.B(FE_RN_110_0), 
	.A(FE_RN_109_0));
   NOR2X2M FE_RC_141_0 (.Y(FE_RN_110_0), 
	.B(FE_RN_79_0), 
	.A(FE_RN_122_0));
   CLKAND2X4M FE_RC_140_0 (.Y(FE_RN_109_0), 
	.B(FE_RN_79_0), 
	.A(\u_div/PartRem[6][1] ));
   OAI21X2M FE_RC_139_0 (.Y(FE_RN_108_0), 
	.B0(n16), 
	.A1(FE_RN_109_0), 
	.A0(FE_RN_110_0));
   INVX2M FE_RC_137_0 (.Y(FE_RN_107_0), 
	.A(FE_RN_85_0));
   INVX2M FE_RC_136_0 (.Y(FE_RN_106_0), 
	.A(FE_RN_84_0));
   CLKNAND2X2M FE_RC_135_0 (.Y(FE_RN_105_0), 
	.B(FE_RN_79_0), 
	.A(FE_RN_106_0));
   OAI2B1X2M FE_RC_134_0 (.Y(\u_div/PartRem[5][1] ), 
	.B0(FE_RN_105_0), 
	.A1N(FE_RN_107_0), 
	.A0(FE_RN_79_0));
   INVX2M FE_RC_133_0 (.Y(FE_RN_104_0), 
	.A(\u_div/CryTmp[4][1] ));
   INVX2M FE_RC_131_0 (.Y(FE_RN_102_0), 
	.A(FE_RN_87_0));
   OAI2BB1X2M FE_RC_130_0 (.Y(FE_RN_101_0), 
	.B0(FE_RN_102_0), 
	.A1N(FE_RN_274_0), 
	.A0N(FE_RN_104_0));
   INVX2M FE_RC_129_0 (.Y(FE_RN_100_0), 
	.A(FE_RN_90_0));
   NOR2X2M FE_RC_128_0 (.Y(FE_RN_99_0), 
	.B(FE_RN_100_0), 
	.A(FE_RN_87_0));
   MXI2X1M FE_RC_126_0 (.Y(FE_RN_97_0), 
	.S0(FE_RN_107_0), 
	.B(FE_RN_99_0), 
	.A(FE_RN_101_0));
   XNOR2X2M FE_RC_125_0 (.Y(FE_RN_96_0), 
	.B(\u_div/CryTmp[4][1] ), 
	.A(FE_RN_84_0));
   XOR2X2M FE_RC_124_0 (.Y(FE_RN_95_0), 
	.B(n17), 
	.A(FE_RN_96_0));
   CLKNAND2X2M FE_RC_123_0 (.Y(FE_RN_94_0), 
	.B(FE_RN_79_0), 
	.A(FE_RN_95_0));
   OAI2B1X2M FE_RC_122_0 (.Y(\u_div/SumTmp[4][1] ), 
	.B0(FE_RN_94_0), 
	.A1N(FE_RN_97_0), 
	.A0(FE_RN_79_0));
   NOR2X2M FE_RC_120_0 (.Y(FE_RN_92_0), 
	.B(FE_RN_85_0), 
	.A(FE_RN_100_0));
   NAND2BX2M FE_RC_118_0 (.Y(FE_RN_90_0), 
	.B(FE_RN_274_0), 
	.AN(\u_div/CryTmp[4][1] ));
   NOR2BX2M FE_RC_117_0 (.Y(FE_RN_89_0), 
	.B(FE_RN_84_0), 
	.AN(FE_RN_90_0));
   CLKNAND2X2M FE_RC_116_0 (.Y(FE_RN_88_0), 
	.B(FE_RN_79_0), 
	.A(FE_RN_89_0));
   AND2X2M FE_RC_115_0 (.Y(FE_RN_87_0), 
	.B(\u_div/CryTmp[4][1] ), 
	.A(n17));
   OAI2B11X2M FE_RC_113_0 (.Y(\u_div/CryTmp[4][2] ), 
	.C0(FE_RN_102_0), 
	.B0(FE_RN_88_0), 
	.A1N(FE_RN_92_0), 
	.A0(FE_RN_79_0));
   INVX2M FE_RC_111_0 (.Y(FE_RN_85_0), 
	.A(\u_div/SumTmp[5][0] ));
   INVX2M FE_RC_110_0 (.Y(FE_RN_84_0), 
	.A(a[5]));
   INVX2M FE_RC_109_0 (.Y(FE_RN_83_0), 
	.A(FE_RN_78_0));
   CLKNAND2X2M FE_RC_108_0 (.Y(FE_RN_82_0), 
	.B(FE_RN_64_0), 
	.A(FE_RN_61_0));
   CLKNAND2X2M FE_RC_107_0 (.Y(FE_RN_81_0), 
	.B(\u_div/CryTmp[5][2] ), 
	.A(FE_RN_82_0));
   NAND2X2M FE_RC_106_0 (.Y(FE_RN_80_0), 
	.B(FE_RN_66_0), 
	.A(FE_RN_81_0));
   NAND2X4M FE_RC_105_0 (.Y(FE_RN_79_0), 
	.B(FE_RN_83_0), 
	.A(FE_RN_80_0));
   INVX2M FE_RC_103_0 (.Y(FE_RN_78_0), 
	.A(n19));
   INVX2M FE_RC_98_0 (.Y(FE_RN_74_0), 
	.A(FE_RN_62_0));
   INVX2M FE_RC_97_0 (.Y(FE_RN_73_0), 
	.A(FE_RN_65_0));
   NAND2X2M FE_RC_96_0 (.Y(\u_div/PartRem[6][2] ), 
	.B(FE_RN_74_0), 
	.A(FE_RN_73_0));
   XOR2X2M FE_RC_95_0 (.Y(FE_RN_72_0), 
	.B(n16), 
	.A(\u_div/SumTmp[6][1] ));
   INVX2M FE_RC_94_0 (.Y(FE_RN_71_0), 
	.A(\u_div/PartRem[7][1] ));
   OAI2BB2X1M FE_RC_92_0 (.Y(FE_RN_69_0), 
	.B1(n16), 
	.B0(FE_RN_71_0), 
	.A1N(FE_RN_71_0), 
	.A0N(n16));
   INVX2M FE_RC_91_0 (.Y(FE_RN_68_0), 
	.A(quotient[6]));
   MXI2X1M FE_RC_90_0 (.Y(FE_RN_67_0), 
	.S0(FE_RN_68_0), 
	.B(FE_RN_69_0), 
	.A(FE_RN_72_0));
   XNOR2X2M FE_RC_89_0 (.Y(\u_div/SumTmp[5][2] ), 
	.B(\u_div/CryTmp[5][2] ), 
	.A(FE_RN_67_0));
   OAI21X2M FE_RC_88_0 (.Y(FE_RN_66_0), 
	.B0(n16), 
	.A1(FE_RN_65_0), 
	.A0(FE_RN_62_0));
   AND2X2M FE_RC_87_0 (.Y(FE_RN_65_0), 
	.B(quotient[6]), 
	.A(\u_div/SumTmp[6][1] ));
   INVX2M FE_RC_86_0 (.Y(FE_RN_64_0), 
	.A(FE_RN_65_0));
   NOR2X2M FE_RC_84_0 (.Y(FE_RN_62_0), 
	.B(quotient[6]), 
	.A(FE_RN_71_0));
   NOR2X2M FE_RC_83_0 (.Y(FE_RN_61_0), 
	.B(n16), 
	.A(FE_RN_62_0));
   INVX2M FE_RC_79_0 (.Y(FE_RN_58_0), 
	.A(FE_RN_32_0));
   NAND3BX2M FE_RC_78_0 (.Y(\u_div/PartRem[6][1] ), 
	.C(FE_RN_34_0), 
	.B(FE_RN_40_0), 
	.AN(FE_RN_58_0));
   INVX2M FE_RC_77_0 (.Y(FE_RN_57_0), 
	.A(FE_RN_34_0));
   NAND2X2M FE_RC_76_0 (.Y(FE_RN_56_0), 
	.B(FE_RN_57_0), 
	.A(FE_RN_48_0));
   INVX2M FE_RC_75_0 (.Y(FE_RN_55_0), 
	.A(\u_div/CryTmp[5][1] ));
   INVX2M FE_RC_74_0 (.Y(FE_RN_54_0), 
	.A(n17));
   INVX2M FE_RC_73_0 (.Y(FE_RN_53_0), 
	.A(FE_RN_46_0));
   OAI2BB1X2M FE_RC_72_0 (.Y(FE_RN_52_0), 
	.B0(FE_RN_53_0), 
	.A1N(FE_RN_54_0), 
	.A0N(FE_RN_55_0));
   INVX2M FE_RC_71_0 (.Y(FE_RN_51_0), 
	.A(FE_RN_52_0));
   NAND4X2M FE_RC_70_0 (.Y(FE_RN_50_0), 
	.D(FE_RN_32_0), 
	.C(FE_RN_34_0), 
	.B(FE_RN_51_0), 
	.A(FE_RN_40_0));
   CLKNAND2X2M FE_RC_68_0 (.Y(FE_RN_48_0), 
	.B(FE_RN_41_0), 
	.A(FE_RN_53_0));
   CLKNAND2X2M FE_RC_67_0 (.Y(FE_RN_47_0), 
	.B(FE_RN_48_0), 
	.A(FE_RN_39_0));
   NAND3X2M FE_RC_66_0 (.Y(\u_div/SumTmp[5][1] ), 
	.C(FE_RN_56_0), 
	.B(FE_RN_50_0), 
	.A(FE_RN_47_0));
   AND2X2M FE_RC_65_0 (.Y(FE_RN_46_0), 
	.B(\u_div/CryTmp[5][1] ), 
	.A(n17));
   INVX2M FE_RC_63_0 (.Y(FE_RN_44_0), 
	.A(FE_RN_34_0));
   NAND2X2M FE_RC_62_0 (.Y(FE_RN_43_0), 
	.B(FE_RN_44_0), 
	.A(FE_RN_41_0));
   NAND2BX2M FE_RC_60_0 (.Y(FE_RN_41_0), 
	.B(FE_RN_274_0), 
	.AN(\u_div/CryTmp[5][1] ));
   NAND2BX2M FE_RC_59_0 (.Y(FE_RN_40_0), 
	.B(a[6]), 
	.AN(FE_RN_31_0));
   NAND2X2M FE_RC_58_0 (.Y(FE_RN_39_0), 
	.B(FE_RN_32_0), 
	.A(FE_RN_40_0));
   CLKNAND2X2M FE_RC_57_0 (.Y(FE_RN_38_0), 
	.B(FE_RN_41_0), 
	.A(FE_RN_39_0));
   NAND3X2M FE_RC_56_0 (.Y(\u_div/CryTmp[5][2] ), 
	.C(FE_RN_53_0), 
	.B(FE_RN_43_0), 
	.A(FE_RN_38_0));
   INVX2M FE_RC_55_0 (.Y(FE_RN_37_0), 
	.A(FE_RN_33_0));
   CLKAND2X6M FE_RC_54_0 (.Y(quotient[6]), 
	.B(FE_RN_31_0), 
	.A(FE_RN_37_0));
   INVX2M FE_RC_53_0 (.Y(FE_RN_36_0), 
	.A(\u_div/SumTmp[6][0] ));
   NOR2X2M FE_RC_52_0 (.Y(FE_RN_35_0), 
	.B(FE_RN_36_0), 
	.A(FE_RN_33_0));
   NAND2X2M FE_RC_51_0 (.Y(FE_RN_34_0), 
	.B(FE_RN_31_0), 
	.A(FE_RN_35_0));
   CLKNAND2X2M FE_RC_50_0 (.Y(FE_RN_33_0), 
	.B(n16), 
	.A(n19));
   CLKNAND2X2M FE_RC_49_0 (.Y(FE_RN_32_0), 
	.B(a[6]), 
	.A(FE_RN_33_0));
   OAI211X4M FE_RC_47_0 (.Y(FE_RN_31_0), 
	.C0(FE_RN_12_0), 
	.B0(FE_RN_14_0), 
	.A1(FE_RN_7_0), 
	.A0(FE_RN_17_0));
   INVX2M FE_RC_45_0 (.Y(FE_RN_30_0), 
	.A(FE_RN_11_0));
   INVX2M FE_RC_44_0 (.Y(FE_RN_29_0), 
	.A(FE_RN_10_0));
   CLKNAND2X2M FE_RC_43_0 (.Y(FE_RN_28_0), 
	.B(FE_RN_7_0), 
	.A(FE_RN_29_0));
   OAI2B1X2M FE_RC_42_0 (.Y(\u_div/PartRem[7][1] ), 
	.B0(FE_RN_28_0), 
	.A1N(FE_RN_30_0), 
	.A0(FE_RN_7_0));
   INVX2M FE_RC_41_0 (.Y(FE_RN_27_0), 
	.A(FE_RN_13_0));
   OAI21X2M FE_RC_40_0 (.Y(FE_RN_26_0), 
	.B0(FE_RN_27_0), 
	.A1(\u_div/CryTmp[6][1] ), 
	.A0(n17));
   INVX2M FE_RC_39_0 (.Y(FE_RN_25_0), 
	.A(FE_RN_15_0));
   NOR2X2M FE_RC_38_0 (.Y(FE_RN_24_0), 
	.B(FE_RN_25_0), 
	.A(FE_RN_13_0));
   MXI2X1M FE_RC_36_0 (.Y(FE_RN_22_0), 
	.S0(FE_RN_30_0), 
	.B(FE_RN_24_0), 
	.A(FE_RN_26_0));
   CLKNAND2X2M FE_RC_35_0 (.Y(FE_RN_21_0), 
	.B(n17), 
	.A(FE_RN_10_0));
   OAI21X2M FE_RC_34_0 (.Y(FE_RN_20_0), 
	.B0(FE_RN_21_0), 
	.A1(n17), 
	.A0(FE_RN_10_0));
   XOR2X2M FE_RC_33_0 (.Y(FE_RN_19_0), 
	.B(\u_div/CryTmp[6][1] ), 
	.A(FE_RN_20_0));
   AO2B2X2M FE_RC_32_0 (.Y(\u_div/SumTmp[6][1] ), 
	.B1(FE_RN_19_0), 
	.B0(FE_RN_7_0), 
	.A1N(FE_RN_7_0), 
	.A0(FE_RN_22_0));
   CLKNAND2X2M FE_RC_30_0 (.Y(FE_RN_17_0), 
	.B(FE_RN_30_0), 
	.A(FE_RN_15_0));
   NAND2BX2M FE_RC_28_0 (.Y(FE_RN_15_0), 
	.B(FE_RN_54_0), 
	.AN(\u_div/CryTmp[6][1] ));
   NAND3BX2M FE_RC_27_0 (.Y(FE_RN_14_0), 
	.C(FE_RN_15_0), 
	.B(FE_RN_7_0), 
	.AN(FE_RN_10_0));
   AND2X2M FE_RC_26_0 (.Y(FE_RN_13_0), 
	.B(\u_div/CryTmp[6][1] ), 
	.A(n17));
   INVX2M FE_RC_25_0 (.Y(FE_RN_12_0), 
	.A(FE_RN_13_0));
   CLKINVX2M FE_RC_23_0 (.Y(quotient[7]), 
	.A(FE_RN_7_0));
   INVX2M FE_RC_22_0 (.Y(FE_RN_11_0), 
	.A(\u_div/SumTmp[7][0] ));
   INVX2M FE_RC_21_0 (.Y(FE_RN_10_0), 
	.A(a[7]));
   NOR2X2M FE_RC_20_0 (.Y(FE_RN_9_0), 
	.B(FE_RN_5_0), 
	.A(FE_RN_3_0));
   NOR2BX2M FE_RC_19_0 (.Y(FE_RN_8_0), 
	.B(FE_RN_4_0), 
	.AN(\u_div/CryTmp[7][1] ));
   NAND3X6M FE_RC_18_0 (.Y(FE_RN_7_0), 
	.C(n20), 
	.B(FE_RN_9_0), 
	.A(FE_RN_8_0));
   NOR2X4M FE_RC_16_0 (.Y(n21), 
	.B(b[7]), 
	.A(b[6]));
   AND3X6M FE_RC_14_0 (.Y(n20), 
	.C(n13), 
	.B(n14), 
	.A(n21));
   AND2X2M FE_RC_13_0 (.Y(n19), 
	.B(n15), 
	.A(n20));
   INVX2M FE_RC_12_0 (.Y(FE_RN_5_0), 
	.A(n16));
   INVX2M FE_RC_11_0 (.Y(FE_RN_4_0), 
	.A(n17));
   INVX2M FE_RC_10_0 (.Y(FE_RN_3_0), 
	.A(n15));
   INVX4M FE_RC_3_0 (.Y(n13), 
	.A(b[5]));
   INVX4M FE_RC_0_0 (.Y(n14), 
	.A(b[4]));
   ADDFHX2M \u_div/u_fa_PartRem_0_0_5  (.CO(\u_div/CryTmp[0][6] ), 
	.CI(\u_div/CryTmp[0][5] ), 
	.B(n13), 
	.A(\u_div/PartRem[1][5] ));
   ADDFHX2M \u_div/u_fa_PartRem_0_0_6  (.CO(\u_div/CryTmp[0][7] ), 
	.CI(\u_div/CryTmp[0][6] ), 
	.B(n139), 
	.A(\u_div/PartRem[1][6] ));
   ADDFHX2M \u_div/u_fa_PartRem_0_0_7  (.CO(quotient[0]), 
	.CI(\u_div/CryTmp[0][7] ), 
	.B(n141), 
	.A(\u_div/PartRem[1][7] ));
   ADDFHX2M \u_div/u_fa_PartRem_0_0_1  (.CO(\u_div/CryTmp[0][2] ), 
	.CI(\u_div/CryTmp[0][1] ), 
	.B(n17), 
	.A(\u_div/PartRem[1][1] ));
   ADDFHX2M \u_div/u_fa_PartRem_0_1_1  (.S(\u_div/SumTmp[1][1] ), 
	.CO(\u_div/CryTmp[1][2] ), 
	.CI(\u_div/CryTmp[1][1] ), 
	.B(n17), 
	.A(\u_div/PartRem[2][1] ));
   ADDFHX2M \u_div/u_fa_PartRem_0_0_2  (.CO(\u_div/CryTmp[0][3] ), 
	.CI(\u_div/CryTmp[0][2] ), 
	.B(n16), 
	.A(\u_div/PartRem[1][2] ));
   ADDFHX2M \u_div/u_fa_PartRem_0_0_3  (.CO(\u_div/CryTmp[0][4] ), 
	.CI(\u_div/CryTmp[0][3] ), 
	.B(n15), 
	.A(\u_div/PartRem[1][3] ));
   ADDFHX2M \u_div/u_fa_PartRem_0_0_4  (.CO(\u_div/CryTmp[0][5] ), 
	.CI(\u_div/CryTmp[0][4] ), 
	.B(n14), 
	.A(\u_div/PartRem[1][4] ));
   ADDFHX1M \u_div/u_fa_PartRem_0_1_6  (.S(\u_div/SumTmp[1][6] ), 
	.CO(\u_div/CryTmp[1][7] ), 
	.CI(\u_div/CryTmp[1][6] ), 
	.B(n139), 
	.A(\u_div/PartRem[2][6] ));
   INVX12M U1 (.Y(n18), 
	.A(b[0]));
   XNOR2X2M U2 (.Y(\u_div/SumTmp[7][0] ), 
	.B(a[7]), 
	.A(n18));
   XNOR2X2M U3 (.Y(\u_div/SumTmp[6][0] ), 
	.B(a[6]), 
	.A(n18));
   XNOR2X2M U4 (.Y(\u_div/SumTmp[5][0] ), 
	.B(a[5]), 
	.A(n18));
   XNOR2X2M U5 (.Y(\u_div/SumTmp[4][0] ), 
	.B(a[4]), 
	.A(n18));
   XNOR2X2M U6 (.Y(\u_div/SumTmp[3][0] ), 
	.B(a[3]), 
	.A(n18));
   XNOR2X2M U7 (.Y(\u_div/SumTmp[2][0] ), 
	.B(a[2]), 
	.A(n18));
   OR2X2M U8 (.Y(\u_div/CryTmp[7][1] ), 
	.B(a[7]), 
	.A(n18));
   XNOR2X2M U9 (.Y(\u_div/SumTmp[1][0] ), 
	.B(a[1]), 
	.A(n18));
   NAND2X1M U10 (.Y(\u_div/CryTmp[5][1] ), 
	.B(FE_RN_84_0), 
	.A(n2));
   INVX2M U12 (.Y(n2), 
	.A(n18));
   NAND2X2M U13 (.Y(\u_div/CryTmp[4][1] ), 
	.B(n147), 
	.A(n4));
   INVX2M U15 (.Y(n4), 
	.A(n18));
   NAND2X2M U16 (.Y(\u_div/CryTmp[3][1] ), 
	.B(n148), 
	.A(n4));
   NAND2X2M U19 (.Y(\u_div/CryTmp[2][1] ), 
	.B(n149), 
	.A(n2));
   NAND2X2M U21 (.Y(\u_div/CryTmp[1][1] ), 
	.B(n150), 
	.A(n4));
   NAND2X2M U23 (.Y(\u_div/CryTmp[0][1] ), 
	.B(n151), 
	.A(n4));
   NAND2X2M U25 (.Y(\u_div/CryTmp[6][1] ), 
	.B(n1), 
	.A(n2));
   CLKINVX2M U26 (.Y(n1), 
	.A(a[6]));
   CLKINVX8M U28 (.Y(n17), 
	.A(b[1]));
   INVX8M U29 (.Y(n16), 
	.A(b[2]));
   CLKINVX4M U30 (.Y(n15), 
	.A(b[3]));
   CLKMX2X2M U34 (.Y(\u_div/PartRem[1][7] ), 
	.S0(quotient[1]), 
	.B(\u_div/SumTmp[1][6] ), 
	.A(\u_div/PartRem[2][6] ));
   CLKMX2X2M U35 (.Y(\u_div/PartRem[2][6] ), 
	.S0(quotient[2]), 
	.B(\u_div/SumTmp[2][5] ), 
	.A(\u_div/PartRem[3][5] ));
   CLKMX2X2M U36 (.Y(\u_div/PartRem[3][5] ), 
	.S0(quotient[3]), 
	.B(\u_div/SumTmp[3][4] ), 
	.A(\u_div/PartRem[4][4] ));
   CLKMX2X2M U37 (.Y(\u_div/PartRem[4][4] ), 
	.S0(quotient[4]), 
	.B(\u_div/SumTmp[4][3] ), 
	.A(\u_div/PartRem[5][3] ));
   CLKMX2X2M U41 (.Y(\u_div/PartRem[1][6] ), 
	.S0(quotient[1]), 
	.B(\u_div/SumTmp[1][5] ), 
	.A(\u_div/PartRem[2][5] ));
   CLKMX2X2M U42 (.Y(\u_div/PartRem[2][5] ), 
	.S0(quotient[2]), 
	.B(\u_div/SumTmp[2][4] ), 
	.A(\u_div/PartRem[3][4] ));
   CLKMX2X2M U43 (.Y(\u_div/PartRem[3][4] ), 
	.S0(quotient[3]), 
	.B(\u_div/SumTmp[3][3] ), 
	.A(\u_div/PartRem[4][3] ));
   CLKMX2X2M U44 (.Y(\u_div/PartRem[4][3] ), 
	.S0(quotient[4]), 
	.B(\u_div/SumTmp[4][2] ), 
	.A(\u_div/PartRem[5][2] ));
   CLKMX2X2M U47 (.Y(\u_div/PartRem[1][5] ), 
	.S0(quotient[1]), 
	.B(\u_div/SumTmp[1][4] ), 
	.A(\u_div/PartRem[2][4] ));
   CLKMX2X2M U48 (.Y(\u_div/PartRem[2][4] ), 
	.S0(quotient[2]), 
	.B(\u_div/SumTmp[2][3] ), 
	.A(\u_div/PartRem[3][3] ));
   CLKMX2X2M U49 (.Y(\u_div/PartRem[3][3] ), 
	.S0(quotient[3]), 
	.B(\u_div/SumTmp[3][2] ), 
	.A(\u_div/PartRem[4][2] ));
   CLKMX2X2M U52 (.Y(\u_div/PartRem[1][4] ), 
	.S0(quotient[1]), 
	.B(\u_div/SumTmp[1][3] ), 
	.A(\u_div/PartRem[2][3] ));
   CLKMX2X2M U53 (.Y(\u_div/PartRem[2][3] ), 
	.S0(quotient[2]), 
	.B(\u_div/SumTmp[2][2] ), 
	.A(\u_div/PartRem[3][2] ));
   CLKMX2X2M U56 (.Y(\u_div/PartRem[1][3] ), 
	.S0(quotient[1]), 
	.B(\u_div/SumTmp[1][2] ), 
	.A(\u_div/PartRem[2][2] ));
   CLKMX2X2M U59 (.Y(\u_div/PartRem[1][2] ), 
	.S0(quotient[1]), 
	.B(\u_div/SumTmp[1][1] ), 
	.A(\u_div/PartRem[2][1] ));
   MX2X2M U61 (.Y(\u_div/PartRem[1][1] ), 
	.S0(quotient[1]), 
	.B(\u_div/SumTmp[1][0] ), 
	.A(a[1]));
   AND2X8M U71 (.Y(quotient[1]), 
	.B(n141), 
	.A(\u_div/CryTmp[1][7] ));
endmodule

module ALU_DW01_sub_0 (
	A, 
	B, 
	CI, 
	DIFF, 
	CO, 
	n134, 
	n136, 
	n138, 
	n141, 
	n143, 
	n142, 
	n151, 
	n139);
   input [8:0] A;
   input [8:0] B;
   input CI;
   output [8:0] DIFF;
   output CO;
   input n134;
   input n136;
   input n138;
   input n141;
   input n143;
   input n142;
   input n151;
   input n139;

   // Internal wires
   wire n8;
   wire [9:0] carry;

   ADDFX2M U2_7 (.S(DIFF[7]), 
	.CO(carry[8]), 
	.CI(carry[7]), 
	.B(n141), 
	.A(A[7]));
   ADDFX2M U2_1 (.S(DIFF[1]), 
	.CO(carry[2]), 
	.CI(carry[1]), 
	.B(n8), 
	.A(A[1]));
   ADDFX2M U2_5 (.S(DIFF[5]), 
	.CO(carry[6]), 
	.CI(carry[5]), 
	.B(n142), 
	.A(A[5]));
   ADDFX2M U2_4 (.S(DIFF[4]), 
	.CO(carry[5]), 
	.CI(carry[4]), 
	.B(n143), 
	.A(A[4]));
   ADDFX2M U2_3 (.S(DIFF[3]), 
	.CO(carry[4]), 
	.CI(carry[3]), 
	.B(n138), 
	.A(A[3]));
   ADDFX2M U2_2 (.S(DIFF[2]), 
	.CO(carry[3]), 
	.CI(carry[2]), 
	.B(n136), 
	.A(A[2]));
   ADDFX2M U2_6 (.S(DIFF[6]), 
	.CO(carry[7]), 
	.CI(carry[6]), 
	.B(n139), 
	.A(A[6]));
   XNOR2X2M U1 (.Y(DIFF[0]), 
	.B(A[0]), 
	.A(n134));
   NAND2X2M U8 (.Y(carry[1]), 
	.B(n151), 
	.A(B[0]));
   INVX2M U9 (.Y(n8), 
	.A(B[1]));
   CLKINVX1M U12 (.Y(DIFF[8]), 
	.A(carry[8]));
endmodule

module ALU_DW01_add_0 (
	A, 
	B, 
	CI, 
	SUM, 
	CO);
   input [8:0] A;
   input [8:0] B;
   input CI;
   output [8:0] SUM;
   output CO;

   // Internal wires
   wire n1;
   wire [8:1] carry;

   ADDFX2M U1_7 (.S(SUM[7]), 
	.CO(SUM[8]), 
	.CI(carry[7]), 
	.B(B[7]), 
	.A(A[7]));
   ADDFX2M U1_1 (.S(SUM[1]), 
	.CO(carry[2]), 
	.CI(n1), 
	.B(B[1]), 
	.A(A[1]));
   ADDFX2M U1_5 (.S(SUM[5]), 
	.CO(carry[6]), 
	.CI(carry[5]), 
	.B(B[5]), 
	.A(A[5]));
   ADDFX2M U1_4 (.S(SUM[4]), 
	.CO(carry[5]), 
	.CI(carry[4]), 
	.B(B[4]), 
	.A(A[4]));
   ADDFX2M U1_3 (.S(SUM[3]), 
	.CO(carry[4]), 
	.CI(carry[3]), 
	.B(B[3]), 
	.A(A[3]));
   ADDFX2M U1_2 (.S(SUM[2]), 
	.CO(carry[3]), 
	.CI(carry[2]), 
	.B(B[2]), 
	.A(A[2]));
   ADDFX2M U1_6 (.S(SUM[6]), 
	.CO(carry[7]), 
	.CI(carry[6]), 
	.B(B[6]), 
	.A(A[6]));
   AND2X2M U1 (.Y(n1), 
	.B(A[0]), 
	.A(B[0]));
   CLKXOR2X2M U2 (.Y(SUM[0]), 
	.B(A[0]), 
	.A(B[0]));
endmodule

module ALU_DW01_add_1 (
	A, 
	B, 
	CI, 
	SUM, 
	CO);
   input [13:0] A;
   input [13:0] B;
   input CI;
   output [13:0] SUM;
   output CO;

   // Internal wires
   wire n1;
   wire n8;
   wire n9;
   wire n10;
   wire n11;
   wire n12;
   wire n13;
   wire n14;
   wire n15;
   wire n16;
   wire n17;
   wire n18;
   wire n19;
   wire n20;
   wire n21;
   wire n22;
   wire n23;
   wire n24;
   wire n25;
   wire n26;
   wire n27;

   AOI21BX2M U2 (.Y(n1), 
	.B0N(n19), 
	.A1(A[12]), 
	.A0(n18));
   NAND2X2M U3 (.Y(n15), 
	.B(B[7]), 
	.A(A[7]));
   XNOR2X2M U4 (.Y(SUM[7]), 
	.B(n8), 
	.A(A[7]));
   INVX2M U5 (.Y(n8), 
	.A(B[7]));
   XNOR2X2M U6 (.Y(SUM[13]), 
	.B(n1), 
	.A(B[13]));
   INVX2M U7 (.Y(n9), 
	.A(A[6]));
   INVX2M U8 (.Y(SUM[6]), 
	.A(n9));
   BUFX2M U9 (.Y(SUM[0]), 
	.A(A[0]));
   BUFX2M U10 (.Y(SUM[1]), 
	.A(A[1]));
   BUFX2M U11 (.Y(SUM[2]), 
	.A(A[2]));
   BUFX2M U12 (.Y(SUM[3]), 
	.A(A[3]));
   BUFX2M U13 (.Y(SUM[4]), 
	.A(A[4]));
   BUFX2M U14 (.Y(SUM[5]), 
	.A(A[5]));
   XNOR2X1M U15 (.Y(SUM[9]), 
	.B(n11), 
	.A(n10));
   NOR2X1M U16 (.Y(n11), 
	.B(n13), 
	.A(n12));
   CLKXOR2X2M U17 (.Y(SUM[8]), 
	.B(n15), 
	.A(n14));
   NAND2BX1M U18 (.Y(n14), 
	.B(n17), 
	.AN(n16));
   OAI21X1M U19 (.Y(n19), 
	.B0(B[12]), 
	.A1(n18), 
	.A0(A[12]));
   XOR3XLM U20 (.Y(SUM[12]), 
	.C(n18), 
	.B(A[12]), 
	.A(B[12]));
   OAI21BX1M U21 (.Y(n18), 
	.B0N(n22), 
	.A1(n21), 
	.A0(n20));
   XNOR2X1M U22 (.Y(SUM[11]), 
	.B(n23), 
	.A(n21));
   NOR2X1M U23 (.Y(n23), 
	.B(n20), 
	.A(n22));
   NOR2X1M U24 (.Y(n20), 
	.B(A[11]), 
	.A(B[11]));
   AND2X1M U25 (.Y(n22), 
	.B(A[11]), 
	.A(B[11]));
   OA21X1M U26 (.Y(n21), 
	.B0(n26), 
	.A1(n25), 
	.A0(n24));
   CLKXOR2X2M U27 (.Y(SUM[10]), 
	.B(n25), 
	.A(n27));
   AOI2BB1X1M U28 (.Y(n25), 
	.B0(n12), 
	.A1N(n13), 
	.A0N(n10));
   AND2X1M U29 (.Y(n12), 
	.B(A[9]), 
	.A(B[9]));
   NOR2X1M U30 (.Y(n13), 
	.B(A[9]), 
	.A(B[9]));
   OA21X1M U31 (.Y(n10), 
	.B0(n17), 
	.A1(n16), 
	.A0(n15));
   CLKNAND2X2M U32 (.Y(n17), 
	.B(A[8]), 
	.A(B[8]));
   NOR2X1M U33 (.Y(n16), 
	.B(A[8]), 
	.A(B[8]));
   NAND2BX1M U34 (.Y(n27), 
	.B(n26), 
	.AN(n24));
   CLKNAND2X2M U35 (.Y(n26), 
	.B(A[10]), 
	.A(B[10]));
   NOR2X1M U36 (.Y(n24), 
	.B(A[10]), 
	.A(B[10]));
endmodule

module ALU_DW02_mult_0 (
	A, 
	B, 
	TC, 
	PRODUCT, 
	n134, 
	n136, 
	n138, 
	n151, 
	n150, 
	n149, 
	n148, 
	n147, 
	n146, 
	n145, 
	n144, 
	n141, 
	n139, 
	n142, 
	n143);
   input [7:0] A;
   input [7:0] B;
   input TC;
   output [15:0] PRODUCT;
   input n134;
   input n136;
   input n138;
   input n151;
   input n150;
   input n149;
   input n148;
   input n147;
   input n146;
   input n145;
   input n144;
   input n141;
   input n139;
   input n142;
   input n143;

   // Internal wires
   wire \ab[7][7] ;
   wire \ab[7][6] ;
   wire \ab[7][5] ;
   wire \ab[7][4] ;
   wire \ab[7][3] ;
   wire \ab[7][2] ;
   wire \ab[7][1] ;
   wire \ab[7][0] ;
   wire \ab[6][7] ;
   wire \ab[6][6] ;
   wire \ab[6][5] ;
   wire \ab[6][4] ;
   wire \ab[6][3] ;
   wire \ab[6][2] ;
   wire \ab[6][1] ;
   wire \ab[6][0] ;
   wire \ab[5][7] ;
   wire \ab[5][6] ;
   wire \ab[5][5] ;
   wire \ab[5][4] ;
   wire \ab[5][3] ;
   wire \ab[5][2] ;
   wire \ab[5][1] ;
   wire \ab[5][0] ;
   wire \ab[4][7] ;
   wire \ab[4][6] ;
   wire \ab[4][5] ;
   wire \ab[4][4] ;
   wire \ab[4][3] ;
   wire \ab[4][2] ;
   wire \ab[4][1] ;
   wire \ab[4][0] ;
   wire \ab[3][7] ;
   wire \ab[3][6] ;
   wire \ab[3][5] ;
   wire \ab[3][4] ;
   wire \ab[3][3] ;
   wire \ab[3][2] ;
   wire \ab[3][1] ;
   wire \ab[3][0] ;
   wire \ab[2][7] ;
   wire \ab[2][6] ;
   wire \ab[2][5] ;
   wire \ab[2][4] ;
   wire \ab[2][3] ;
   wire \ab[2][2] ;
   wire \ab[2][1] ;
   wire \ab[2][0] ;
   wire \ab[1][7] ;
   wire \ab[1][6] ;
   wire \ab[1][5] ;
   wire \ab[1][4] ;
   wire \ab[1][3] ;
   wire \ab[1][2] ;
   wire \ab[1][1] ;
   wire \ab[1][0] ;
   wire \ab[0][7] ;
   wire \ab[0][6] ;
   wire \ab[0][5] ;
   wire \ab[0][4] ;
   wire \ab[0][3] ;
   wire \ab[0][2] ;
   wire \ab[0][1] ;
   wire \CARRYB[7][6] ;
   wire \CARRYB[7][5] ;
   wire \CARRYB[7][4] ;
   wire \CARRYB[7][3] ;
   wire \CARRYB[7][2] ;
   wire \CARRYB[7][1] ;
   wire \CARRYB[7][0] ;
   wire \CARRYB[6][6] ;
   wire \CARRYB[6][5] ;
   wire \CARRYB[6][4] ;
   wire \CARRYB[6][3] ;
   wire \CARRYB[6][2] ;
   wire \CARRYB[6][1] ;
   wire \CARRYB[6][0] ;
   wire \CARRYB[5][6] ;
   wire \CARRYB[5][5] ;
   wire \CARRYB[5][4] ;
   wire \CARRYB[5][3] ;
   wire \CARRYB[5][2] ;
   wire \CARRYB[5][1] ;
   wire \CARRYB[5][0] ;
   wire \CARRYB[4][6] ;
   wire \CARRYB[4][5] ;
   wire \CARRYB[4][4] ;
   wire \CARRYB[4][3] ;
   wire \CARRYB[4][2] ;
   wire \CARRYB[4][1] ;
   wire \CARRYB[4][0] ;
   wire \CARRYB[3][6] ;
   wire \CARRYB[3][5] ;
   wire \CARRYB[3][4] ;
   wire \CARRYB[3][3] ;
   wire \CARRYB[3][2] ;
   wire \CARRYB[3][1] ;
   wire \CARRYB[3][0] ;
   wire \CARRYB[2][6] ;
   wire \CARRYB[2][5] ;
   wire \CARRYB[2][4] ;
   wire \CARRYB[2][3] ;
   wire \CARRYB[2][2] ;
   wire \CARRYB[2][1] ;
   wire \CARRYB[2][0] ;
   wire \SUMB[7][6] ;
   wire \SUMB[7][5] ;
   wire \SUMB[7][4] ;
   wire \SUMB[7][3] ;
   wire \SUMB[7][2] ;
   wire \SUMB[7][1] ;
   wire \SUMB[7][0] ;
   wire \SUMB[6][6] ;
   wire \SUMB[6][5] ;
   wire \SUMB[6][4] ;
   wire \SUMB[6][3] ;
   wire \SUMB[6][2] ;
   wire \SUMB[6][1] ;
   wire \SUMB[5][6] ;
   wire \SUMB[5][5] ;
   wire \SUMB[5][4] ;
   wire \SUMB[5][3] ;
   wire \SUMB[5][2] ;
   wire \SUMB[5][1] ;
   wire \SUMB[4][6] ;
   wire \SUMB[4][5] ;
   wire \SUMB[4][4] ;
   wire \SUMB[4][3] ;
   wire \SUMB[4][2] ;
   wire \SUMB[4][1] ;
   wire \SUMB[3][6] ;
   wire \SUMB[3][5] ;
   wire \SUMB[3][4] ;
   wire \SUMB[3][3] ;
   wire \SUMB[3][2] ;
   wire \SUMB[3][1] ;
   wire \SUMB[2][6] ;
   wire \SUMB[2][5] ;
   wire \SUMB[2][4] ;
   wire \SUMB[2][3] ;
   wire \SUMB[2][2] ;
   wire \SUMB[2][1] ;
   wire \SUMB[1][6] ;
   wire \SUMB[1][5] ;
   wire \SUMB[1][4] ;
   wire \SUMB[1][3] ;
   wire \SUMB[1][2] ;
   wire \SUMB[1][1] ;
   wire \A1[12] ;
   wire \A1[11] ;
   wire \A1[10] ;
   wire \A1[9] ;
   wire \A1[8] ;
   wire \A1[7] ;
   wire \A1[6] ;
   wire \A1[4] ;
   wire \A1[3] ;
   wire \A1[2] ;
   wire \A1[1] ;
   wire \A1[0] ;
   wire n3;
   wire n4;
   wire n5;
   wire n6;
   wire n7;
   wire n8;
   wire n9;
   wire n10;
   wire n11;
   wire n12;
   wire n13;
   wire n14;
   wire n15;
   wire n16;
   wire n17;
   wire n18;
   wire n19;
   wire n20;
   wire n21;
   wire n22;
   wire n23;
   wire n30;

   ADDFX2M S2_6_5 (.S(\SUMB[6][5] ), 
	.CO(\CARRYB[6][5] ), 
	.CI(\SUMB[5][6] ), 
	.B(\CARRYB[5][5] ), 
	.A(\ab[6][5] ));
   ADDFX2M S2_6_4 (.S(\SUMB[6][4] ), 
	.CO(\CARRYB[6][4] ), 
	.CI(\SUMB[5][5] ), 
	.B(\CARRYB[5][4] ), 
	.A(\ab[6][4] ));
   ADDFX2M S2_5_5 (.S(\SUMB[5][5] ), 
	.CO(\CARRYB[5][5] ), 
	.CI(\SUMB[4][6] ), 
	.B(\CARRYB[4][5] ), 
	.A(\ab[5][5] ));
   ADDFX2M S2_6_3 (.S(\SUMB[6][3] ), 
	.CO(\CARRYB[6][3] ), 
	.CI(\SUMB[5][4] ), 
	.B(\CARRYB[5][3] ), 
	.A(\ab[6][3] ));
   ADDFX2M S2_5_4 (.S(\SUMB[5][4] ), 
	.CO(\CARRYB[5][4] ), 
	.CI(\SUMB[4][5] ), 
	.B(\CARRYB[4][4] ), 
	.A(\ab[5][4] ));
   ADDFX2M S1_6_0 (.S(\A1[4] ), 
	.CO(\CARRYB[6][0] ), 
	.CI(\SUMB[5][1] ), 
	.B(\CARRYB[5][0] ), 
	.A(\ab[6][0] ));
   ADDFX2M S2_6_1 (.S(\SUMB[6][1] ), 
	.CO(\CARRYB[6][1] ), 
	.CI(\SUMB[5][2] ), 
	.B(\CARRYB[5][1] ), 
	.A(\ab[6][1] ));
   ADDFX2M S2_6_2 (.S(\SUMB[6][2] ), 
	.CO(\CARRYB[6][2] ), 
	.CI(\SUMB[5][3] ), 
	.B(\CARRYB[5][2] ), 
	.A(\ab[6][2] ));
   ADDFX2M S2_4_5 (.S(\SUMB[4][5] ), 
	.CO(\CARRYB[4][5] ), 
	.CI(\SUMB[3][6] ), 
	.B(\CARRYB[3][5] ), 
	.A(\ab[4][5] ));
   ADDFX2M S1_5_0 (.S(\A1[3] ), 
	.CO(\CARRYB[5][0] ), 
	.CI(\SUMB[4][1] ), 
	.B(\CARRYB[4][0] ), 
	.A(\ab[5][0] ));
   ADDFX2M S2_5_1 (.S(\SUMB[5][1] ), 
	.CO(\CARRYB[5][1] ), 
	.CI(\SUMB[4][2] ), 
	.B(\CARRYB[4][1] ), 
	.A(\ab[5][1] ));
   ADDFX2M S2_5_2 (.S(\SUMB[5][2] ), 
	.CO(\CARRYB[5][2] ), 
	.CI(\SUMB[4][3] ), 
	.B(\CARRYB[4][2] ), 
	.A(\ab[5][2] ));
   ADDFX2M S2_5_3 (.S(\SUMB[5][3] ), 
	.CO(\CARRYB[5][3] ), 
	.CI(\SUMB[4][4] ), 
	.B(\CARRYB[4][3] ), 
	.A(\ab[5][3] ));
   ADDFX2M S1_4_0 (.S(\A1[2] ), 
	.CO(\CARRYB[4][0] ), 
	.CI(\SUMB[3][1] ), 
	.B(\CARRYB[3][0] ), 
	.A(\ab[4][0] ));
   ADDFX2M S2_4_1 (.S(\SUMB[4][1] ), 
	.CO(\CARRYB[4][1] ), 
	.CI(\SUMB[3][2] ), 
	.B(\CARRYB[3][1] ), 
	.A(\ab[4][1] ));
   ADDFX2M S2_4_2 (.S(\SUMB[4][2] ), 
	.CO(\CARRYB[4][2] ), 
	.CI(\SUMB[3][3] ), 
	.B(\CARRYB[3][2] ), 
	.A(\ab[4][2] ));
   ADDFX2M S2_4_3 (.S(\SUMB[4][3] ), 
	.CO(\CARRYB[4][3] ), 
	.CI(\SUMB[3][4] ), 
	.B(\CARRYB[3][3] ), 
	.A(\ab[4][3] ));
   ADDFX2M S2_4_4 (.S(\SUMB[4][4] ), 
	.CO(\CARRYB[4][4] ), 
	.CI(\SUMB[3][5] ), 
	.B(\CARRYB[3][4] ), 
	.A(\ab[4][4] ));
   ADDFX2M S1_3_0 (.S(\A1[1] ), 
	.CO(\CARRYB[3][0] ), 
	.CI(\SUMB[2][1] ), 
	.B(\CARRYB[2][0] ), 
	.A(\ab[3][0] ));
   ADDFX2M S2_3_1 (.S(\SUMB[3][1] ), 
	.CO(\CARRYB[3][1] ), 
	.CI(\SUMB[2][2] ), 
	.B(\CARRYB[2][1] ), 
	.A(\ab[3][1] ));
   ADDFX2M S2_3_2 (.S(\SUMB[3][2] ), 
	.CO(\CARRYB[3][2] ), 
	.CI(\SUMB[2][3] ), 
	.B(\CARRYB[2][2] ), 
	.A(\ab[3][2] ));
   ADDFX2M S2_3_3 (.S(\SUMB[3][3] ), 
	.CO(\CARRYB[3][3] ), 
	.CI(\SUMB[2][4] ), 
	.B(\CARRYB[2][3] ), 
	.A(\ab[3][3] ));
   ADDFX2M S2_3_4 (.S(\SUMB[3][4] ), 
	.CO(\CARRYB[3][4] ), 
	.CI(\SUMB[2][5] ), 
	.B(\CARRYB[2][4] ), 
	.A(\ab[3][4] ));
   ADDFX2M S2_3_5 (.S(\SUMB[3][5] ), 
	.CO(\CARRYB[3][5] ), 
	.CI(\SUMB[2][6] ), 
	.B(\CARRYB[2][5] ), 
	.A(\ab[3][5] ));
   ADDFX2M S3_6_6 (.S(\SUMB[6][6] ), 
	.CO(\CARRYB[6][6] ), 
	.CI(\ab[5][7] ), 
	.B(\CARRYB[5][6] ), 
	.A(\ab[6][6] ));
   ADDFX2M S3_5_6 (.S(\SUMB[5][6] ), 
	.CO(\CARRYB[5][6] ), 
	.CI(\ab[4][7] ), 
	.B(\CARRYB[4][6] ), 
	.A(\ab[5][6] ));
   ADDFX2M S3_4_6 (.S(\SUMB[4][6] ), 
	.CO(\CARRYB[4][6] ), 
	.CI(\ab[3][7] ), 
	.B(\CARRYB[3][6] ), 
	.A(\ab[4][6] ));
   ADDFX2M S3_3_6 (.S(\SUMB[3][6] ), 
	.CO(\CARRYB[3][6] ), 
	.CI(\ab[2][7] ), 
	.B(\CARRYB[2][6] ), 
	.A(\ab[3][6] ));
   ADDFX2M S3_2_6 (.S(\SUMB[2][6] ), 
	.CO(\CARRYB[2][6] ), 
	.CI(\ab[1][7] ), 
	.B(n8), 
	.A(\ab[2][6] ));
   ADDFX2M S1_2_0 (.S(\A1[0] ), 
	.CO(\CARRYB[2][0] ), 
	.CI(\SUMB[1][1] ), 
	.B(n9), 
	.A(\ab[2][0] ));
   ADDFX2M S2_2_1 (.S(\SUMB[2][1] ), 
	.CO(\CARRYB[2][1] ), 
	.CI(\SUMB[1][2] ), 
	.B(n7), 
	.A(\ab[2][1] ));
   ADDFX2M S2_2_2 (.S(\SUMB[2][2] ), 
	.CO(\CARRYB[2][2] ), 
	.CI(\SUMB[1][3] ), 
	.B(n6), 
	.A(\ab[2][2] ));
   ADDFX2M S2_2_3 (.S(\SUMB[2][3] ), 
	.CO(\CARRYB[2][3] ), 
	.CI(\SUMB[1][4] ), 
	.B(n5), 
	.A(\ab[2][3] ));
   ADDFX2M S2_2_4 (.S(\SUMB[2][4] ), 
	.CO(\CARRYB[2][4] ), 
	.CI(\SUMB[1][5] ), 
	.B(n4), 
	.A(\ab[2][4] ));
   ADDFX2M S2_2_5 (.S(\SUMB[2][5] ), 
	.CO(\CARRYB[2][5] ), 
	.CI(\SUMB[1][6] ), 
	.B(n3), 
	.A(\ab[2][5] ));
   ADDFX2M S5_6 (.S(\SUMB[7][6] ), 
	.CO(\CARRYB[7][6] ), 
	.CI(\ab[6][7] ), 
	.B(\CARRYB[6][6] ), 
	.A(\ab[7][6] ));
   ADDFX2M S4_5 (.S(\SUMB[7][5] ), 
	.CO(\CARRYB[7][5] ), 
	.CI(\SUMB[6][6] ), 
	.B(\CARRYB[6][5] ), 
	.A(\ab[7][5] ));
   ADDFX2M S4_4 (.S(\SUMB[7][4] ), 
	.CO(\CARRYB[7][4] ), 
	.CI(\SUMB[6][5] ), 
	.B(\CARRYB[6][4] ), 
	.A(\ab[7][4] ));
   ADDFX2M S4_3 (.S(\SUMB[7][3] ), 
	.CO(\CARRYB[7][3] ), 
	.CI(\SUMB[6][4] ), 
	.B(\CARRYB[6][3] ), 
	.A(\ab[7][3] ));
   ADDFX2M S4_2 (.S(\SUMB[7][2] ), 
	.CO(\CARRYB[7][2] ), 
	.CI(\SUMB[6][3] ), 
	.B(\CARRYB[6][2] ), 
	.A(\ab[7][2] ));
   ADDFX2M S4_0 (.S(\SUMB[7][0] ), 
	.CO(\CARRYB[7][0] ), 
	.CI(\SUMB[6][1] ), 
	.B(\CARRYB[6][0] ), 
	.A(\ab[7][0] ));
   ADDFX2M S4_1 (.S(\SUMB[7][1] ), 
	.CO(\CARRYB[7][1] ), 
	.CI(\SUMB[6][2] ), 
	.B(\CARRYB[6][1] ), 
	.A(\ab[7][1] ));
   AND2X2M U2 (.Y(n3), 
	.B(\ab[1][5] ), 
	.A(\ab[0][6] ));
   AND2X2M U3 (.Y(n4), 
	.B(\ab[1][4] ), 
	.A(\ab[0][5] ));
   AND2X2M U4 (.Y(n5), 
	.B(\ab[1][3] ), 
	.A(\ab[0][4] ));
   AND2X2M U5 (.Y(n6), 
	.B(\ab[1][2] ), 
	.A(\ab[0][3] ));
   AND2X2M U6 (.Y(n7), 
	.B(\ab[1][1] ), 
	.A(\ab[0][2] ));
   AND2X2M U7 (.Y(n8), 
	.B(\ab[1][6] ), 
	.A(\ab[0][7] ));
   AND2X2M U8 (.Y(n9), 
	.B(\ab[1][0] ), 
	.A(\ab[0][1] ));
   AND2X2M U9 (.Y(n10), 
	.B(\ab[7][7] ), 
	.A(\CARRYB[7][6] ));
   INVX2M U10 (.Y(n22), 
	.A(\ab[0][6] ));
   CLKXOR2X2M U11 (.Y(\A1[7] ), 
	.B(\SUMB[7][2] ), 
	.A(\CARRYB[7][1] ));
   CLKXOR2X2M U12 (.Y(PRODUCT[1]), 
	.B(\ab[0][1] ), 
	.A(\ab[1][0] ));
   CLKXOR2X2M U13 (.Y(\A1[12] ), 
	.B(\ab[7][7] ), 
	.A(\CARRYB[7][6] ));
   CLKXOR2X2M U14 (.Y(\A1[8] ), 
	.B(\SUMB[7][3] ), 
	.A(\CARRYB[7][2] ));
   CLKXOR2X2M U15 (.Y(\A1[10] ), 
	.B(\SUMB[7][5] ), 
	.A(\CARRYB[7][4] ));
   CLKXOR2X2M U16 (.Y(\A1[9] ), 
	.B(\SUMB[7][4] ), 
	.A(\CARRYB[7][3] ));
   CLKXOR2X2M U17 (.Y(\A1[11] ), 
	.B(\SUMB[7][6] ), 
	.A(\CARRYB[7][5] ));
   INVX2M U18 (.Y(n23), 
	.A(\ab[0][7] ));
   INVX2M U19 (.Y(n21), 
	.A(\ab[0][5] ));
   INVX2M U20 (.Y(n20), 
	.A(\ab[0][4] ));
   INVX2M U21 (.Y(n19), 
	.A(\ab[0][3] ));
   INVX2M U22 (.Y(n18), 
	.A(\ab[0][2] ));
   XNOR2X2M U23 (.Y(\A1[6] ), 
	.B(n17), 
	.A(\CARRYB[7][0] ));
   INVX2M U24 (.Y(n17), 
	.A(\SUMB[7][1] ));
   AND2X2M U25 (.Y(n11), 
	.B(\SUMB[7][1] ), 
	.A(\CARRYB[7][0] ));
   AND2X2M U26 (.Y(n12), 
	.B(\SUMB[7][2] ), 
	.A(\CARRYB[7][1] ));
   AND2X2M U27 (.Y(n13), 
	.B(\SUMB[7][4] ), 
	.A(\CARRYB[7][3] ));
   AND2X2M U28 (.Y(n14), 
	.B(\SUMB[7][6] ), 
	.A(\CARRYB[7][5] ));
   AND2X2M U29 (.Y(n15), 
	.B(\SUMB[7][3] ), 
	.A(\CARRYB[7][2] ));
   AND2X2M U30 (.Y(n16), 
	.B(\SUMB[7][5] ), 
	.A(\CARRYB[7][4] ));
   XNOR2X2M U31 (.Y(\SUMB[1][6] ), 
	.B(n23), 
	.A(\ab[1][6] ));
   XNOR2X2M U32 (.Y(\SUMB[1][5] ), 
	.B(n22), 
	.A(\ab[1][5] ));
   XNOR2X2M U33 (.Y(\SUMB[1][4] ), 
	.B(n21), 
	.A(\ab[1][4] ));
   XNOR2X2M U34 (.Y(\SUMB[1][3] ), 
	.B(n20), 
	.A(\ab[1][3] ));
   XNOR2X2M U35 (.Y(\SUMB[1][2] ), 
	.B(n19), 
	.A(\ab[1][2] ));
   XNOR2X2M U36 (.Y(\SUMB[1][1] ), 
	.B(n18), 
	.A(\ab[1][1] ));
   INVX2M U52 (.Y(n30), 
	.A(B[1]));
   NOR2X1M U54 (.Y(\ab[7][7] ), 
	.B(n141), 
	.A(n144));
   NOR2X1M U55 (.Y(\ab[7][6] ), 
	.B(n139), 
	.A(n144));
   NOR2X1M U56 (.Y(\ab[7][5] ), 
	.B(n142), 
	.A(n144));
   NOR2X1M U57 (.Y(\ab[7][4] ), 
	.B(n143), 
	.A(n144));
   NOR2X1M U58 (.Y(\ab[7][3] ), 
	.B(n138), 
	.A(n144));
   NOR2X1M U59 (.Y(\ab[7][2] ), 
	.B(n136), 
	.A(n144));
   NOR2X1M U60 (.Y(\ab[7][1] ), 
	.B(n30), 
	.A(n144));
   NOR2X1M U61 (.Y(\ab[7][0] ), 
	.B(n134), 
	.A(n144));
   NOR2X1M U62 (.Y(\ab[6][7] ), 
	.B(n145), 
	.A(n141));
   NOR2X1M U63 (.Y(\ab[6][6] ), 
	.B(n145), 
	.A(n139));
   NOR2X1M U64 (.Y(\ab[6][5] ), 
	.B(n145), 
	.A(n142));
   NOR2X1M U65 (.Y(\ab[6][4] ), 
	.B(n145), 
	.A(n143));
   NOR2X1M U66 (.Y(\ab[6][3] ), 
	.B(n145), 
	.A(n138));
   NOR2X1M U67 (.Y(\ab[6][2] ), 
	.B(n145), 
	.A(n136));
   NOR2X1M U68 (.Y(\ab[6][1] ), 
	.B(n145), 
	.A(n30));
   NOR2X1M U69 (.Y(\ab[6][0] ), 
	.B(n145), 
	.A(n134));
   NOR2X1M U70 (.Y(\ab[5][7] ), 
	.B(n146), 
	.A(n141));
   NOR2X1M U71 (.Y(\ab[5][6] ), 
	.B(n146), 
	.A(n139));
   NOR2X1M U72 (.Y(\ab[5][5] ), 
	.B(n146), 
	.A(n142));
   NOR2X1M U73 (.Y(\ab[5][4] ), 
	.B(n146), 
	.A(n143));
   NOR2X1M U74 (.Y(\ab[5][3] ), 
	.B(n146), 
	.A(n138));
   NOR2X1M U75 (.Y(\ab[5][2] ), 
	.B(n146), 
	.A(n136));
   NOR2X1M U76 (.Y(\ab[5][1] ), 
	.B(n146), 
	.A(n30));
   NOR2X1M U77 (.Y(\ab[5][0] ), 
	.B(n146), 
	.A(n134));
   NOR2X1M U78 (.Y(\ab[4][7] ), 
	.B(n147), 
	.A(n141));
   NOR2X1M U79 (.Y(\ab[4][6] ), 
	.B(n147), 
	.A(n139));
   NOR2X1M U80 (.Y(\ab[4][5] ), 
	.B(n147), 
	.A(n142));
   NOR2X1M U81 (.Y(\ab[4][4] ), 
	.B(n147), 
	.A(n143));
   NOR2X1M U82 (.Y(\ab[4][3] ), 
	.B(n147), 
	.A(n138));
   NOR2X1M U83 (.Y(\ab[4][2] ), 
	.B(n147), 
	.A(n136));
   NOR2X1M U84 (.Y(\ab[4][1] ), 
	.B(n147), 
	.A(n30));
   NOR2X1M U85 (.Y(\ab[4][0] ), 
	.B(n147), 
	.A(n134));
   NOR2X1M U86 (.Y(\ab[3][7] ), 
	.B(n148), 
	.A(n141));
   NOR2X1M U87 (.Y(\ab[3][6] ), 
	.B(n148), 
	.A(n139));
   NOR2X1M U88 (.Y(\ab[3][5] ), 
	.B(n148), 
	.A(n142));
   NOR2X1M U89 (.Y(\ab[3][4] ), 
	.B(n148), 
	.A(n143));
   NOR2X1M U90 (.Y(\ab[3][3] ), 
	.B(n148), 
	.A(n138));
   NOR2X1M U91 (.Y(\ab[3][2] ), 
	.B(n148), 
	.A(n136));
   NOR2X1M U92 (.Y(\ab[3][1] ), 
	.B(n148), 
	.A(n30));
   NOR2X1M U93 (.Y(\ab[3][0] ), 
	.B(n148), 
	.A(n134));
   NOR2X1M U94 (.Y(\ab[2][7] ), 
	.B(n149), 
	.A(n141));
   NOR2X1M U95 (.Y(\ab[2][6] ), 
	.B(n149), 
	.A(n139));
   NOR2X1M U96 (.Y(\ab[2][5] ), 
	.B(n149), 
	.A(n142));
   NOR2X1M U97 (.Y(\ab[2][4] ), 
	.B(n149), 
	.A(n143));
   NOR2X1M U98 (.Y(\ab[2][3] ), 
	.B(n149), 
	.A(n138));
   NOR2X1M U99 (.Y(\ab[2][2] ), 
	.B(n149), 
	.A(n136));
   NOR2X1M U100 (.Y(\ab[2][1] ), 
	.B(n149), 
	.A(n30));
   NOR2X1M U101 (.Y(\ab[2][0] ), 
	.B(n149), 
	.A(n134));
   NOR2X1M U102 (.Y(\ab[1][7] ), 
	.B(n150), 
	.A(n141));
   NOR2X1M U103 (.Y(\ab[1][6] ), 
	.B(n150), 
	.A(n139));
   NOR2X1M U104 (.Y(\ab[1][5] ), 
	.B(n150), 
	.A(n142));
   NOR2X1M U105 (.Y(\ab[1][4] ), 
	.B(n150), 
	.A(n143));
   NOR2X1M U106 (.Y(\ab[1][3] ), 
	.B(n150), 
	.A(n138));
   NOR2X1M U107 (.Y(\ab[1][2] ), 
	.B(n150), 
	.A(n136));
   NOR2X1M U108 (.Y(\ab[1][1] ), 
	.B(n150), 
	.A(n30));
   NOR2X1M U109 (.Y(\ab[1][0] ), 
	.B(n150), 
	.A(n134));
   NOR2X1M U110 (.Y(\ab[0][7] ), 
	.B(n151), 
	.A(n141));
   NOR2X1M U111 (.Y(\ab[0][6] ), 
	.B(n151), 
	.A(n139));
   NOR2X1M U112 (.Y(\ab[0][5] ), 
	.B(n151), 
	.A(n142));
   NOR2X1M U113 (.Y(\ab[0][4] ), 
	.B(n151), 
	.A(n143));
   NOR2X1M U114 (.Y(\ab[0][3] ), 
	.B(n151), 
	.A(n138));
   NOR2X1M U115 (.Y(\ab[0][2] ), 
	.B(n151), 
	.A(n136));
   NOR2X1M U116 (.Y(\ab[0][1] ), 
	.B(n151), 
	.A(n30));
   NOR2X1M U117 (.Y(PRODUCT[0]), 
	.B(n151), 
	.A(n134));
   ALU_DW01_add_1 FS_1 (.A({ 1'b0,
		\A1[12] ,
		\A1[11] ,
		\A1[10] ,
		\A1[9] ,
		\A1[8] ,
		\A1[7] ,
		\A1[6] ,
		\SUMB[7][0] ,
		\A1[4] ,
		\A1[3] ,
		\A1[2] ,
		\A1[1] ,
		\A1[0]  }), 
	.B({ n10,
		n14,
		n16,
		n13,
		n15,
		n12,
		n11,
		1'b0,
		1'b0,
		1'b0,
		1'b0,
		1'b0,
		1'b0,
		1'b0 }), 
	.CI(1'b0), 
	.SUM({ PRODUCT[15],
		PRODUCT[14],
		PRODUCT[13],
		PRODUCT[12],
		PRODUCT[11],
		PRODUCT[10],
		PRODUCT[9],
		PRODUCT[8],
		PRODUCT[7],
		PRODUCT[6],
		PRODUCT[5],
		PRODUCT[4],
		PRODUCT[3],
		PRODUCT[2] }));
endmodule

module ALU_test_1 (
	A, 
	B, 
	EN, 
	ALU_FUN, 
	CLK, 
	RST, 
	ALU_OUT, 
	OUT_VALID, 
	test_si, 
	test_se, 
	FE_OFN3_SYNC_REF_SCAN_RST, 
	FE_OFN4_SYNC_REF_SCAN_RST, 
	FE_OFN5_SYNC_REF_SCAN_RST, 
	FE_OFN13_SE, 
	FE_OFN15_SE, 
	FE_OFN16_SE);
   input [7:0] A;
   input [7:0] B;
   input EN;
   input [3:0] ALU_FUN;
   input CLK;
   input RST;
   output [15:0] ALU_OUT;
   output OUT_VALID;
   input test_si;
   input test_se;
   input FE_OFN3_SYNC_REF_SCAN_RST;
   input FE_OFN4_SYNC_REF_SCAN_RST;
   input FE_OFN5_SYNC_REF_SCAN_RST;
   input FE_OFN13_SE;
   input FE_OFN15_SE;
   input FE_OFN16_SE;

   // Internal wires
   wire FE_PHN17_SI_3_;
   wire FE_OFN9_n52;
   wire N91;
   wire N92;
   wire N93;
   wire N94;
   wire N95;
   wire N96;
   wire N97;
   wire N98;
   wire N99;
   wire N100;
   wire N101;
   wire N102;
   wire N103;
   wire N104;
   wire N105;
   wire N106;
   wire N107;
   wire N108;
   wire N109;
   wire N110;
   wire N111;
   wire N112;
   wire N113;
   wire N114;
   wire N115;
   wire N116;
   wire N117;
   wire N118;
   wire N119;
   wire N120;
   wire N121;
   wire N122;
   wire N123;
   wire N124;
   wire N125;
   wire N126;
   wire N127;
   wire N128;
   wire N129;
   wire N130;
   wire N131;
   wire N132;
   wire N157;
   wire N158;
   wire N159;
   wire n48;
   wire n49;
   wire n50;
   wire n51;
   wire n52;
   wire n53;
   wire n54;
   wire n55;
   wire n56;
   wire n57;
   wire n58;
   wire n59;
   wire n60;
   wire n61;
   wire n62;
   wire n63;
   wire n64;
   wire n65;
   wire n66;
   wire n67;
   wire n68;
   wire n69;
   wire n70;
   wire n71;
   wire n72;
   wire n73;
   wire n74;
   wire n75;
   wire n76;
   wire n77;
   wire n78;
   wire n79;
   wire n80;
   wire n81;
   wire n82;
   wire n83;
   wire n84;
   wire n85;
   wire n86;
   wire n87;
   wire n88;
   wire n89;
   wire n90;
   wire n91;
   wire n92;
   wire n93;
   wire n94;
   wire n95;
   wire n96;
   wire n97;
   wire n98;
   wire n99;
   wire n100;
   wire n101;
   wire n102;
   wire n103;
   wire n104;
   wire n105;
   wire n106;
   wire n107;
   wire n108;
   wire n109;
   wire n110;
   wire n111;
   wire n112;
   wire n113;
   wire n114;
   wire n115;
   wire n116;
   wire n117;
   wire n118;
   wire n119;
   wire n120;
   wire n121;
   wire n122;
   wire n123;
   wire n124;
   wire n31;
   wire n32;
   wire n33;
   wire n34;
   wire n35;
   wire n36;
   wire n37;
   wire n38;
   wire n39;
   wire n40;
   wire n41;
   wire n42;
   wire n43;
   wire n44;
   wire n45;
   wire n46;
   wire n47;
   wire n125;
   wire n126;
   wire n127;
   wire n128;
   wire n129;
   wire n130;
   wire n131;
   wire n132;
   wire n133;
   wire n134;
   wire n135;
   wire n136;
   wire n137;
   wire n138;
   wire n139;
   wire n140;
   wire n141;
   wire n142;
   wire n143;
   wire n144;
   wire n145;
   wire n146;
   wire n147;
   wire n148;
   wire n149;
   wire n150;
   wire n151;
   wire n152;
   wire n153;
   wire n154;
   wire n155;
   wire n156;
   wire n157;
   wire [15:0] ALU_OUT_Comb;

   DLY1X1M FE_PHC17_SI_3_ (.Y(FE_PHN17_SI_3_), 
	.A(test_si));
   BUFX2M FE_OFC9_n52 (.Y(FE_OFN9_n52), 
	.A(n52));
   SDFFRQX2M \ALU_OUT_reg[7]  (.SI(ALU_OUT[6]), 
	.SE(FE_OFN15_SE), 
	.RN(FE_OFN4_SYNC_REF_SCAN_RST), 
	.Q(ALU_OUT[7]), 
	.D(ALU_OUT_Comb[7]), 
	.CK(CLK));
   SDFFRQX2M \ALU_OUT_reg[6]  (.SI(ALU_OUT[5]), 
	.SE(FE_OFN15_SE), 
	.RN(FE_OFN4_SYNC_REF_SCAN_RST), 
	.Q(ALU_OUT[6]), 
	.D(ALU_OUT_Comb[6]), 
	.CK(CLK));
   SDFFRQX2M \ALU_OUT_reg[5]  (.SI(ALU_OUT[4]), 
	.SE(FE_OFN15_SE), 
	.RN(FE_OFN4_SYNC_REF_SCAN_RST), 
	.Q(ALU_OUT[5]), 
	.D(ALU_OUT_Comb[5]), 
	.CK(CLK));
   SDFFRQX2M \ALU_OUT_reg[4]  (.SI(ALU_OUT[3]), 
	.SE(FE_OFN13_SE), 
	.RN(RST), 
	.Q(ALU_OUT[4]), 
	.D(ALU_OUT_Comb[4]), 
	.CK(CLK));
   SDFFRQX2M \ALU_OUT_reg[3]  (.SI(ALU_OUT[2]), 
	.SE(FE_OFN13_SE), 
	.RN(RST), 
	.Q(ALU_OUT[3]), 
	.D(ALU_OUT_Comb[3]), 
	.CK(CLK));
   SDFFRQX1M \ALU_OUT_reg[2]  (.SI(ALU_OUT[1]), 
	.SE(FE_OFN13_SE), 
	.RN(RST), 
	.Q(ALU_OUT[2]), 
	.D(ALU_OUT_Comb[2]), 
	.CK(CLK));
   SDFFRQX1M \ALU_OUT_reg[1]  (.SI(ALU_OUT[0]), 
	.SE(FE_OFN13_SE), 
	.RN(RST), 
	.Q(ALU_OUT[1]), 
	.D(ALU_OUT_Comb[1]), 
	.CK(CLK));
   SDFFRHQX1M \ALU_OUT_reg[0]  (.SI(FE_PHN17_SI_3_), 
	.SE(test_se), 
	.RN(FE_OFN5_SYNC_REF_SCAN_RST), 
	.Q(ALU_OUT[0]), 
	.D(ALU_OUT_Comb[0]), 
	.CK(CLK));
   SDFFRQX2M \ALU_OUT_reg[15]  (.SI(ALU_OUT[14]), 
	.SE(FE_OFN15_SE), 
	.RN(FE_OFN4_SYNC_REF_SCAN_RST), 
	.Q(ALU_OUT[15]), 
	.D(ALU_OUT_Comb[15]), 
	.CK(CLK));
   SDFFRQX2M \ALU_OUT_reg[14]  (.SI(ALU_OUT[13]), 
	.SE(FE_OFN16_SE), 
	.RN(FE_OFN3_SYNC_REF_SCAN_RST), 
	.Q(ALU_OUT[14]), 
	.D(ALU_OUT_Comb[14]), 
	.CK(CLK));
   SDFFRQX2M \ALU_OUT_reg[13]  (.SI(ALU_OUT[12]), 
	.SE(FE_OFN15_SE), 
	.RN(FE_OFN4_SYNC_REF_SCAN_RST), 
	.Q(ALU_OUT[13]), 
	.D(ALU_OUT_Comb[13]), 
	.CK(CLK));
   SDFFRQX2M \ALU_OUT_reg[12]  (.SI(ALU_OUT[11]), 
	.SE(FE_OFN15_SE), 
	.RN(FE_OFN4_SYNC_REF_SCAN_RST), 
	.Q(ALU_OUT[12]), 
	.D(ALU_OUT_Comb[12]), 
	.CK(CLK));
   SDFFRQX2M \ALU_OUT_reg[11]  (.SI(ALU_OUT[10]), 
	.SE(FE_OFN15_SE), 
	.RN(FE_OFN4_SYNC_REF_SCAN_RST), 
	.Q(ALU_OUT[11]), 
	.D(ALU_OUT_Comb[11]), 
	.CK(CLK));
   SDFFRQX2M \ALU_OUT_reg[10]  (.SI(ALU_OUT[9]), 
	.SE(FE_OFN15_SE), 
	.RN(FE_OFN4_SYNC_REF_SCAN_RST), 
	.Q(ALU_OUT[10]), 
	.D(ALU_OUT_Comb[10]), 
	.CK(CLK));
   SDFFRQX2M \ALU_OUT_reg[9]  (.SI(ALU_OUT[8]), 
	.SE(FE_OFN15_SE), 
	.RN(FE_OFN4_SYNC_REF_SCAN_RST), 
	.Q(ALU_OUT[9]), 
	.D(ALU_OUT_Comb[9]), 
	.CK(CLK));
   SDFFRQX2M \ALU_OUT_reg[8]  (.SI(ALU_OUT[7]), 
	.SE(FE_OFN15_SE), 
	.RN(FE_OFN4_SYNC_REF_SCAN_RST), 
	.Q(ALU_OUT[8]), 
	.D(ALU_OUT_Comb[8]), 
	.CK(CLK));
   SDFFRQX2M OUT_VALID_reg (.SI(ALU_OUT[15]), 
	.SE(FE_OFN13_SE), 
	.RN(FE_OFN5_SYNC_REF_SCAN_RST), 
	.Q(OUT_VALID), 
	.D(EN), 
	.CK(CLK));
   OAI2BB1X2M U23 (.Y(n64), 
	.B0(n118), 
	.A1N(n122), 
	.A0N(n157));
   OAI2BB1X2M U24 (.Y(n65), 
	.B0(n118), 
	.A1N(n116), 
	.A0N(n117));
   NOR2BX2M U25 (.Y(n54), 
	.B(n154), 
	.AN(n123));
   AND2X2M U26 (.Y(n59), 
	.B(n122), 
	.A(n116));
   NOR2BX2M U27 (.Y(n48), 
	.B(n152), 
	.AN(FE_OFN9_n52));
   AND2X2M U28 (.Y(n67), 
	.B(n122), 
	.A(n123));
   NOR2X2M U30 (.Y(n58), 
	.B(n154), 
	.A(n124));
   INVX2M U31 (.Y(n154), 
	.A(n117));
   INVX2M U32 (.Y(n155), 
	.A(n108));
   OAI2BB1X2M U33 (.Y(ALU_OUT_Comb[9]), 
	.B0(n49), 
	.A1N(n48), 
	.A0N(N118));
   OAI2BB1X2M U34 (.Y(ALU_OUT_Comb[10]), 
	.B0(n49), 
	.A1N(n48), 
	.A0N(N119));
   OAI2BB1X2M U35 (.Y(ALU_OUT_Comb[11]), 
	.B0(n49), 
	.A1N(n48), 
	.A0N(N120));
   OAI2BB1X2M U36 (.Y(ALU_OUT_Comb[12]), 
	.B0(n49), 
	.A1N(n48), 
	.A0N(N121));
   OAI2BB1X2M U37 (.Y(ALU_OUT_Comb[13]), 
	.B0(n49), 
	.A1N(n48), 
	.A0N(N122));
   OAI2BB1X2M U38 (.Y(ALU_OUT_Comb[14]), 
	.B0(n49), 
	.A1N(n48), 
	.A0N(N123));
   OAI2BB1X2M U39 (.Y(ALU_OUT_Comb[15]), 
	.B0(n49), 
	.A1N(n48), 
	.A0N(N124));
   INVX2M U40 (.Y(n157), 
	.A(n124));
   NOR3BX2M U41 (.Y(n66), 
	.C(ALU_FUN[2]), 
	.B(n156), 
	.AN(n122));
   NOR3X2M U42 (.Y(n52), 
	.C(n156), 
	.B(ALU_FUN[2]), 
	.A(n154));
   NOR2X2M U43 (.Y(n123), 
	.B(ALU_FUN[1]), 
	.A(ALU_FUN[2]));
   AND3X2M U44 (.Y(n63), 
	.C(ALU_FUN[3]), 
	.B(n153), 
	.A(n123));
   NAND3X2M U45 (.Y(n53), 
	.C(ALU_FUN[3]), 
	.B(n153), 
	.A(n157));
   NAND2X2M U46 (.Y(n124), 
	.B(ALU_FUN[1]), 
	.A(ALU_FUN[2]));
   INVX2M U47 (.Y(n153), 
	.A(ALU_FUN[0]));
   NOR2X2M U48 (.Y(n122), 
	.B(ALU_FUN[3]), 
	.A(n153));
   NOR2X2M U49 (.Y(n117), 
	.B(ALU_FUN[0]), 
	.A(ALU_FUN[3]));
   NAND3X2M U50 (.Y(n108), 
	.C(n116), 
	.B(ALU_FUN[0]), 
	.A(ALU_FUN[3]));
   INVX2M U51 (.Y(n156), 
	.A(ALU_FUN[1]));
   NAND2X2M U52 (.Y(n49), 
	.B(n140), 
	.A(EN));
   INVX2M U53 (.Y(n152), 
	.A(EN));
   NAND3X2M U54 (.Y(n118), 
	.C(ALU_FUN[3]), 
	.B(ALU_FUN[0]), 
	.A(n123));
   AND2X2M U55 (.Y(n116), 
	.B(n156), 
	.A(ALU_FUN[2]));
   AND4X2M U56 (.Y(n107), 
	.D(n153), 
	.C(ALU_FUN[3]), 
	.B(n116), 
	.A(N159));
   INVX2M U57 (.Y(n139), 
	.A(B[6]));
   OAI222X1M U58 (.Y(n71), 
	.C1(n146), 
	.C0(n53), 
	.B1(n73), 
	.B0(B[6]), 
	.A1(n139), 
	.A0(n72));
   AOI221XLM U59 (.Y(n73), 
	.C0(n58), 
	.B1(n145), 
	.B0(n64), 
	.A1(n63), 
	.A0(A[6]));
   AOI221XLM U60 (.Y(n72), 
	.C0(n59), 
	.B1(n65), 
	.B0(A[6]), 
	.A1(n145), 
	.A0(n63));
   AOI31X2M U61 (.Y(ALU_OUT_Comb[2]), 
	.B0(n152), 
	.A2(n94), 
	.A1(n93), 
	.A0(n92));
   AOI22X1M U62 (.Y(n92), 
	.B1(n54), 
	.B0(N93), 
	.A1(n67), 
	.A0(N102));
   AOI221XLM U63 (.Y(n94), 
	.C0(n95), 
	.B1(n149), 
	.B0(n58), 
	.A1(n155), 
	.A0(A[3]));
   AOI222X1M U64 (.Y(n93), 
	.C1(n66), 
	.C0(N127), 
	.B1(n59), 
	.B0(A[2]), 
	.A1(FE_OFN9_n52), 
	.A0(N111));
   AOI31X2M U65 (.Y(ALU_OUT_Comb[3]), 
	.B0(n152), 
	.A2(n88), 
	.A1(n87), 
	.A0(n86));
   AOI22X1M U66 (.Y(n86), 
	.B1(n54), 
	.B0(N94), 
	.A1(n67), 
	.A0(N103));
   AOI221XLM U67 (.Y(n88), 
	.C0(n89), 
	.B1(n148), 
	.B0(n58), 
	.A1(n155), 
	.A0(A[4]));
   AOI222X1M U68 (.Y(n87), 
	.C1(n66), 
	.C0(N128), 
	.B1(n59), 
	.B0(A[3]), 
	.A1(FE_OFN9_n52), 
	.A0(N112));
   AOI31X2M U69 (.Y(ALU_OUT_Comb[4]), 
	.B0(n152), 
	.A2(n82), 
	.A1(n81), 
	.A0(n80));
   AOI22X1M U70 (.Y(n80), 
	.B1(n54), 
	.B0(N95), 
	.A1(n67), 
	.A0(N104));
   AOI221XLM U71 (.Y(n82), 
	.C0(n83), 
	.B1(n147), 
	.B0(n58), 
	.A1(A[5]), 
	.A0(n155));
   AOI222X1M U72 (.Y(n81), 
	.C1(n66), 
	.C0(N129), 
	.B1(n59), 
	.B0(A[4]), 
	.A1(FE_OFN9_n52), 
	.A0(N113));
   AOI31X2M U73 (.Y(ALU_OUT_Comb[5]), 
	.B0(n152), 
	.A2(n76), 
	.A1(n75), 
	.A0(n74));
   AOI22X1M U74 (.Y(n74), 
	.B1(n54), 
	.B0(N96), 
	.A1(n67), 
	.A0(N105));
   AOI221XLM U75 (.Y(n76), 
	.C0(n77), 
	.B1(n146), 
	.B0(n58), 
	.A1(A[6]), 
	.A0(n155));
   AOI222X1M U76 (.Y(n75), 
	.C1(n66), 
	.C0(N130), 
	.B1(n59), 
	.B0(A[5]), 
	.A1(FE_OFN9_n52), 
	.A0(N114));
   AOI31X2M U77 (.Y(ALU_OUT_Comb[6]), 
	.B0(n152), 
	.A2(n70), 
	.A1(n69), 
	.A0(n68));
   AOI22X1M U78 (.Y(n68), 
	.B1(n54), 
	.B0(N97), 
	.A1(n67), 
	.A0(N106));
   AOI221XLM U79 (.Y(n70), 
	.C0(n71), 
	.B1(n145), 
	.B0(n58), 
	.A1(A[7]), 
	.A0(n155));
   AOI222X1M U80 (.Y(n69), 
	.C1(n66), 
	.C0(N131), 
	.B1(A[6]), 
	.B0(n59), 
	.A1(FE_OFN9_n52), 
	.A0(N115));
   AOI31X2M U81 (.Y(ALU_OUT_Comb[7]), 
	.B0(n152), 
	.A2(n57), 
	.A1(n56), 
	.A0(n55));
   AOI22X1M U82 (.Y(n56), 
	.B1(FE_OFN9_n52), 
	.B0(N116), 
	.A1(n66), 
	.A0(N132));
   AOI22X1M U83 (.Y(n55), 
	.B1(n54), 
	.B0(N98), 
	.A1(n67), 
	.A0(N107));
   AOI221XLM U84 (.Y(n57), 
	.C0(n60), 
	.B1(A[7]), 
	.B0(n59), 
	.A1(n144), 
	.A0(n58));
   AOI31X2M U85 (.Y(ALU_OUT_Comb[0]), 
	.B0(n152), 
	.A2(n112), 
	.A1(n111), 
	.A0(n110));
   AOI22X1M U86 (.Y(n110), 
	.B1(n54), 
	.B0(N91), 
	.A1(n67), 
	.A0(N100));
   AOI211X2M U87 (.Y(n112), 
	.C0(n114), 
	.B0(n113), 
	.A1(n151), 
	.A0(n58));
   AOI222X4M U88 (.Y(n111), 
	.C1(n66), 
	.C0(N125), 
	.B1(n59), 
	.B0(A[0]), 
	.A1(FE_OFN9_n52), 
	.A0(N109));
   AOI31X2M U89 (.Y(ALU_OUT_Comb[1]), 
	.B0(n152), 
	.A2(n100), 
	.A1(n99), 
	.A0(n98));
   AOI211X2M U90 (.Y(n100), 
	.C0(n102), 
	.B0(n101), 
	.A1(n155), 
	.A0(A[2]));
   AOI222X1M U91 (.Y(n99), 
	.C1(n59), 
	.C0(A[1]), 
	.B1(n150), 
	.B0(n58), 
	.A1(n66), 
	.A0(N126));
   AOI222X1M U92 (.Y(n98), 
	.C1(n67), 
	.C0(N101), 
	.B1(FE_OFN9_n52), 
	.B0(N110), 
	.A1(n54), 
	.A0(N92));
   INVX2M U93 (.Y(n140), 
	.A(n109));
   AOI211X2M U94 (.Y(n109), 
	.C0(n64), 
	.B0(n58), 
	.A1(n67), 
	.A0(N108));
   AOI21X2M U95 (.Y(ALU_OUT_Comb[8]), 
	.B0(n152), 
	.A1(n51), 
	.A0(n50));
   AOI21X2M U96 (.Y(n50), 
	.B0(n140), 
	.A1(n54), 
	.A0(N99));
   AOI2BB2XLM U97 (.Y(n51), 
	.B1(FE_OFN9_n52), 
	.B0(N117), 
	.A1N(n53), 
	.A0N(n144));
   INVX2M U99 (.Y(n150), 
	.A(A[1]));
   INVX2M U100 (.Y(n151), 
	.A(A[0]));
   INVX2M U101 (.Y(n145), 
	.A(A[6]));
   INVX2M U102 (.Y(n144), 
	.A(A[7]));
   INVX2M U103 (.Y(n148), 
	.A(A[3]));
   INVX2M U104 (.Y(n149), 
	.A(A[2]));
   INVX2M U105 (.Y(n146), 
	.A(A[5]));
   INVX2M U106 (.Y(n147), 
	.A(A[4]));
   OAI222X1M U107 (.Y(n95), 
	.C1(n150), 
	.C0(n53), 
	.B1(n97), 
	.B0(B[2]), 
	.A1(n136), 
	.A0(n96));
   AOI221XLM U108 (.Y(n97), 
	.C0(n58), 
	.B1(n149), 
	.B0(n64), 
	.A1(n63), 
	.A0(A[2]));
   AOI221XLM U109 (.Y(n96), 
	.C0(n59), 
	.B1(n65), 
	.B0(A[2]), 
	.A1(n149), 
	.A0(n63));
   OAI222X1M U110 (.Y(n89), 
	.C1(n149), 
	.C0(n53), 
	.B1(n91), 
	.B0(B[3]), 
	.A1(n138), 
	.A0(n90));
   AOI221XLM U111 (.Y(n91), 
	.C0(n58), 
	.B1(n148), 
	.B0(n64), 
	.A1(n63), 
	.A0(A[3]));
   AOI221XLM U112 (.Y(n90), 
	.C0(n59), 
	.B1(n65), 
	.B0(A[3]), 
	.A1(n148), 
	.A0(n63));
   OAI222X1M U113 (.Y(n83), 
	.C1(n148), 
	.C0(n53), 
	.B1(n85), 
	.B0(B[4]), 
	.A1(n143), 
	.A0(n84));
   INVX2M U114 (.Y(n143), 
	.A(B[4]));
   AOI221XLM U115 (.Y(n85), 
	.C0(n58), 
	.B1(n147), 
	.B0(n64), 
	.A1(n63), 
	.A0(A[4]));
   AOI221XLM U116 (.Y(n84), 
	.C0(n59), 
	.B1(n65), 
	.B0(A[4]), 
	.A1(n147), 
	.A0(n63));
   OAI222X1M U117 (.Y(n77), 
	.C1(n147), 
	.C0(n53), 
	.B1(n79), 
	.B0(B[5]), 
	.A1(n142), 
	.A0(n78));
   INVX2M U118 (.Y(n142), 
	.A(B[5]));
   AOI221XLM U119 (.Y(n79), 
	.C0(n58), 
	.B1(n146), 
	.B0(n64), 
	.A1(n63), 
	.A0(A[5]));
   AOI221XLM U120 (.Y(n78), 
	.C0(n59), 
	.B1(n65), 
	.B0(A[5]), 
	.A1(n146), 
	.A0(n63));
   OAI222X1M U121 (.Y(n60), 
	.C1(n145), 
	.C0(n53), 
	.B1(n62), 
	.B0(B[7]), 
	.A1(n141), 
	.A0(n61));
   INVX2M U122 (.Y(n141), 
	.A(B[7]));
   AOI221XLM U123 (.Y(n62), 
	.C0(n58), 
	.B1(n144), 
	.B0(n64), 
	.A1(A[7]), 
	.A0(n63));
   AOI221XLM U124 (.Y(n61), 
	.C0(n59), 
	.B1(n65), 
	.B0(A[7]), 
	.A1(n144), 
	.A0(n63));
   INVX2M U125 (.Y(n135), 
	.A(n31));
   OAI2B2X1M U126 (.Y(n114), 
	.B1(n150), 
	.B0(n108), 
	.A1N(B[0]), 
	.A0(n115));
   AOI221XLM U127 (.Y(n115), 
	.C0(n59), 
	.B1(n65), 
	.B0(A[0]), 
	.A1(n151), 
	.A0(n63));
   OAI2B2X1M U128 (.Y(n102), 
	.B1(n151), 
	.B0(n53), 
	.A1N(B[1]), 
	.A0(n103));
   AOI221XLM U129 (.Y(n103), 
	.C0(n59), 
	.B1(n65), 
	.B0(A[1]), 
	.A1(n150), 
	.A0(n63));
   INVX2M U130 (.Y(n137), 
	.A(n42));
   OAI21X2M U131 (.Y(n113), 
	.B0(n120), 
	.A1(n119), 
	.A0(B[0]));
   AOI31X2M U132 (.Y(n120), 
	.B0(n107), 
	.A2(n121), 
	.A1(ALU_FUN[3]), 
	.A0(N157));
   AOI221XLM U133 (.Y(n119), 
	.C0(n58), 
	.B1(n151), 
	.B0(n64), 
	.A1(n63), 
	.A0(A[0]));
   NOR3X2M U134 (.Y(n121), 
	.C(ALU_FUN[0]), 
	.B(ALU_FUN[2]), 
	.A(n156));
   OAI21X2M U135 (.Y(n101), 
	.B0(n105), 
	.A1(n104), 
	.A0(B[1]));
   AOI31X2M U136 (.Y(n105), 
	.B0(n107), 
	.A2(n106), 
	.A1(ALU_FUN[3]), 
	.A0(N158));
   AOI221XLM U137 (.Y(n104), 
	.C0(n58), 
	.B1(n150), 
	.B0(n64), 
	.A1(n63), 
	.A0(A[1]));
   NOR3X2M U138 (.Y(n106), 
	.C(n156), 
	.B(ALU_FUN[2]), 
	.A(n153));
   INVX2M U147 (.Y(n134), 
	.A(B[0]));
   INVX2M U148 (.Y(n136), 
	.A(B[2]));
   INVX2M U149 (.Y(n138), 
	.A(B[3]));
   NOR2X1M U150 (.Y(n130), 
	.B(B[7]), 
	.A(n144));
   NAND2BX1M U151 (.Y(n46), 
	.B(A[4]), 
	.AN(B[4]));
   NAND2BX1M U152 (.Y(n35), 
	.B(B[4]), 
	.AN(A[4]));
   CLKNAND2X2M U153 (.Y(n125), 
	.B(n35), 
	.A(n46));
   NOR2X1M U154 (.Y(n43), 
	.B(A[3]), 
	.A(n138));
   NOR2X1M U155 (.Y(n34), 
	.B(A[2]), 
	.A(n136));
   NOR2X1M U156 (.Y(n31), 
	.B(A[0]), 
	.A(n134));
   CLKNAND2X2M U157 (.Y(n45), 
	.B(n136), 
	.A(A[2]));
   NAND2BX1M U158 (.Y(n40), 
	.B(n45), 
	.AN(n34));
   AOI21X1M U159 (.Y(n32), 
	.B0(B[1]), 
	.A1(n150), 
	.A0(n31));
   AOI211X1M U160 (.Y(n33), 
	.C0(n32), 
	.B0(n40), 
	.A1(n135), 
	.A0(A[1]));
   CLKNAND2X2M U161 (.Y(n44), 
	.B(n138), 
	.A(A[3]));
   OAI31X1M U162 (.Y(n36), 
	.B0(n44), 
	.A2(n33), 
	.A1(n34), 
	.A0(n43));
   NAND2BX1M U163 (.Y(n128), 
	.B(B[5]), 
	.AN(A[5]));
   OAI211X1M U164 (.Y(n37), 
	.C0(n128), 
	.B0(n35), 
	.A1(n36), 
	.A0(n125));
   NAND2BX1M U165 (.Y(n47), 
	.B(A[5]), 
	.AN(B[5]));
   XNOR2X1M U166 (.Y(n127), 
	.B(B[6]), 
	.A(A[6]));
   AOI32X1M U167 (.Y(n38), 
	.B1(n145), 
	.B0(B[6]), 
	.A2(n127), 
	.A1(n47), 
	.A0(n37));
   CLKNAND2X2M U168 (.Y(n131), 
	.B(n144), 
	.A(B[7]));
   OAI21X1M U169 (.Y(N159), 
	.B0(n131), 
	.A1(n38), 
	.A0(n130));
   CLKNAND2X2M U170 (.Y(n41), 
	.B(n134), 
	.A(A[0]));
   OA21X1M U171 (.Y(n39), 
	.B0(B[1]), 
	.A1(n150), 
	.A0(n41));
   AOI211X1M U172 (.Y(n42), 
	.C0(n39), 
	.B0(n40), 
	.A1(n150), 
	.A0(n41));
   AOI31X1M U173 (.Y(n126), 
	.B0(n43), 
	.A2(n44), 
	.A1(n45), 
	.A0(n137));
   OAI2B11X1M U174 (.Y(n129), 
	.C0(n46), 
	.B0(n47), 
	.A1N(n126), 
	.A0(n125));
   AOI32X1M U175 (.Y(n132), 
	.B1(n139), 
	.B0(A[6]), 
	.A2(n127), 
	.A1(n128), 
	.A0(n129));
   AOI2B1X1M U176 (.Y(n133), 
	.B0(n130), 
	.A1N(n132), 
	.A0(n131));
   CLKINVX1M U177 (.Y(N158), 
	.A(n133));
   NOR2X1M U178 (.Y(N157), 
	.B(N158), 
	.A(N159));
   ALU_DW_div_uns_0 div_52 (.a({ A[7],
		A[6],
		A[5],
		A[4],
		A[3],
		A[2],
		A[1],
		A[0] }), 
	.b({ B[7],
		B[6],
		B[5],
		B[4],
		B[3],
		B[2],
		B[1],
		B[0] }), 
	.quotient({ N132,
		N131,
		N130,
		N129,
		N128,
		N127,
		N126,
		N125 }), 
	.n141(n141), 
	.n151(n151), 
	.n150(n150), 
	.n139(n139), 
	.n149(n149), 
	.n148(n148), 
	.n147(n147));
   ALU_DW01_sub_0 sub_46 (.A({ 1'b0,
		A[7],
		A[6],
		A[5],
		A[4],
		A[3],
		A[2],
		A[1],
		A[0] }), 
	.B({ 1'b0,
		B[7],
		B[6],
		B[5],
		B[4],
		B[3],
		B[2],
		B[1],
		B[0] }), 
	.CI(1'b0), 
	.DIFF({ N108,
		N107,
		N106,
		N105,
		N104,
		N103,
		N102,
		N101,
		N100 }), 
	.n134(n134), 
	.n136(n136), 
	.n138(n138), 
	.n141(n141), 
	.n143(n143), 
	.n142(n142), 
	.n151(n151), 
	.n139(n139));
   ALU_DW01_add_0 add_43 (.A({ 1'b0,
		A[7],
		A[6],
		A[5],
		A[4],
		A[3],
		A[2],
		A[1],
		A[0] }), 
	.B({ 1'b0,
		B[7],
		B[6],
		B[5],
		B[4],
		B[3],
		B[2],
		B[1],
		B[0] }), 
	.CI(1'b0), 
	.SUM({ N99,
		N98,
		N97,
		N96,
		N95,
		N94,
		N93,
		N92,
		N91 }));
   ALU_DW02_mult_0 mult_49 (.A({ A[7],
		A[6],
		A[5],
		A[4],
		A[3],
		A[2],
		A[1],
		A[0] }), 
	.B({ B[7],
		B[6],
		B[5],
		B[4],
		B[3],
		B[2],
		B[1],
		B[0] }), 
	.TC(1'b0), 
	.PRODUCT({ N124,
		N123,
		N122,
		N121,
		N120,
		N119,
		N118,
		N117,
		N116,
		N115,
		N114,
		N113,
		N112,
		N111,
		N110,
		N109 }), 
	.n134(n134), 
	.n136(n136), 
	.n138(n138), 
	.n151(n151), 
	.n150(n150), 
	.n149(n149), 
	.n148(n148), 
	.n147(n147), 
	.n146(n146), 
	.n145(n145), 
	.n144(n144), 
	.n141(n141), 
	.n139(n139), 
	.n142(n142), 
	.n143(n143));
endmodule

module CLK_GATE (
	CLK_EN, 
	CLK, 
	GATED_CLK);
   input CLK_EN;
   input CLK;
   output GATED_CLK;

   TLATNCAX12M U0_TLATNCAX12M (.ECK(GATED_CLK), 
	.E(CLK_EN), 
	.CK(CLK));
endmodule

module SYS_TOP (
	scan_clk, 
	scan_rst, 
	test_mode, 
	SE, 
	SI, 
	SO, 
	RST_N, 
	UART_CLK, 
	REF_CLK, 
	UART_RX_IN, 
	UART_TX_O, 
	parity_error, 
	framing_error);
   input scan_clk;
   input scan_rst;
   input test_mode;
   input SE;
   input [3:0] SI;
   output [3:0] SO;
   input RST_N;
   input UART_CLK;
   input REF_CLK;
   input UART_RX_IN;
   output UART_TX_O;
   output parity_error;
   output framing_error;

   // Internal wires
   wire REF_CLK__L2_N0;
   wire REF_CLK__L1_N0;
   wire UART_CLK__L2_N0;
   wire UART_CLK__L1_N0;
   wire scan_clk__L10_N0;
   wire scan_clk__L9_N0;
   wire scan_clk__L8_N0;
   wire scan_clk__L7_N0;
   wire scan_clk__L6_N0;
   wire scan_clk__L5_N0;
   wire scan_clk__L4_N0;
   wire scan_clk__L3_N0;
   wire scan_clk__L2_N0;
   wire scan_clk__L1_N0;
   wire REF_SCAN_CLK__L1_N1;
   wire REF_SCAN_CLK__L1_N0;
   wire UART_SCAN_CLK__L10_N0;
   wire UART_SCAN_CLK__L9_N0;
   wire UART_SCAN_CLK__L8_N0;
   wire UART_SCAN_CLK__L7_N0;
   wire UART_SCAN_CLK__L6_N0;
   wire UART_SCAN_CLK__L5_N1;
   wire UART_SCAN_CLK__L5_N0;
   wire UART_SCAN_CLK__L4_N0;
   wire UART_SCAN_CLK__L3_N0;
   wire UART_SCAN_CLK__L2_N0;
   wire UART_SCAN_CLK__L1_N0;
   wire UART_RX_SCAN_CLK__L1_N0;
   wire UART_TX_SCAN_CLK__L1_N0;
   wire FE_OFN16_SE;
   wire FE_OFN15_SE;
   wire FE_OFN14_SE;
   wire FE_OFN13_SE;
   wire FE_OFN12_SE;
   wire FE_OFN11_SE;
   wire FE_OFN6_SYNC_UART_SCAN_RST;
   wire FE_OFN5_SYNC_REF_SCAN_RST;
   wire FE_OFN4_SYNC_REF_SCAN_RST;
   wire FE_OFN3_SYNC_REF_SCAN_RST;
   wire FE_OFN2_SYNC_REF_SCAN_RST;
   wire FE_OFN0_SYNC_REF_SCAN_RST;
   wire REF_SCAN_CLK;
   wire UART_SCAN_CLK;
   wire UART_RX_CLK;
   wire UART_RX_SCAN_CLK;
   wire UART_TX_CLK;
   wire UART_TX_SCAN_CLK;
   wire RSTN_SCAN_RST;
   wire SYNC_REF_RST;
   wire SYNC_REF_SCAN_RST;
   wire SYNC_UART_RST;
   wire SYNC_UART_SCAN_RST;
   wire UART_RX_V_OUT;
   wire UART_RX_V_SYNC;
   wire UART_TX_VLD;
   wire UART_TX_Busy_PULSE;
   wire FIFO_FULL;
   wire UART_TX_V_SYNC;
   wire UART_TX_Busy;
   wire RF_RdData_VLD;
   wire RF_WrEn;
   wire RF_RdEn;
   wire ALU_EN;
   wire ALU_OUT_VLD;
   wire CLKG_EN;
   wire ALU_CLK;
   wire _1_net_;
   wire n2;
   wire n3;
   wire n9;
   wire n10;
   wire n11;
   wire n13;
   wire n14;
   wire n15;
   wire n18;
   wire n21;
   wire n22;
   wire [7:0] UART_RX_OUT;
   wire [7:0] UART_RX_SYNC;
   wire [7:0] UART_TX_IN;
   wire [7:0] UART_TX_SYNC;
   wire [7:0] DIV_RATIO;
   wire [7:0] UART_Config;
   wire [7:0] DIV_RATIO_RX;
   wire [7:0] RF_RdData;
   wire [3:0] RF_Address;
   wire [7:0] RF_WrData;
   wire [3:0] ALU_FUN;
   wire [15:0] ALU_OUT;
   wire [7:0] Operand_A;
   wire [7:0] Operand_B;
   wire SYNOPSYS_UNCONNECTED__0;
   wire SYNOPSYS_UNCONNECTED__1;
   wire SYNOPSYS_UNCONNECTED__2;
   wire SYNOPSYS_UNCONNECTED__3;

   assign SO[0] = SYNC_REF_RST ;

   CLKINVX40M REF_CLK__L2_I0 (.Y(REF_CLK__L2_N0), 
	.A(REF_CLK__L1_N0));
   CLKINVX40M REF_CLK__L1_I0 (.Y(REF_CLK__L1_N0), 
	.A(REF_CLK));
   CLKINVX40M UART_CLK__L2_I0 (.Y(UART_CLK__L2_N0), 
	.A(UART_CLK__L1_N0));
   CLKINVX40M UART_CLK__L1_I0 (.Y(UART_CLK__L1_N0), 
	.A(UART_CLK));
   CLKINVX32M scan_clk__L10_I0 (.Y(scan_clk__L10_N0), 
	.A(scan_clk__L9_N0));
   CLKINVX40M scan_clk__L9_I0 (.Y(scan_clk__L9_N0), 
	.A(scan_clk__L8_N0));
   CLKBUFX40M scan_clk__L8_I0 (.Y(scan_clk__L8_N0), 
	.A(scan_clk__L7_N0));
   CLKBUFX40M scan_clk__L7_I0 (.Y(scan_clk__L7_N0), 
	.A(scan_clk__L6_N0));
   CLKBUFX40M scan_clk__L6_I0 (.Y(scan_clk__L6_N0), 
	.A(scan_clk__L5_N0));
   CLKBUFX40M scan_clk__L5_I0 (.Y(scan_clk__L5_N0), 
	.A(scan_clk__L4_N0));
   CLKBUFX40M scan_clk__L4_I0 (.Y(scan_clk__L4_N0), 
	.A(scan_clk__L3_N0));
   CLKBUFX40M scan_clk__L3_I0 (.Y(scan_clk__L3_N0), 
	.A(scan_clk__L2_N0));
   INVX2M scan_clk__L2_I0 (.Y(scan_clk__L2_N0), 
	.A(scan_clk__L1_N0));
   CLKINVX40M scan_clk__L1_I0 (.Y(scan_clk__L1_N0), 
	.A(scan_clk));
   CLKBUFX40M REF_SCAN_CLK__L1_I1 (.Y(REF_SCAN_CLK__L1_N1), 
	.A(REF_SCAN_CLK));
   CLKBUFX40M REF_SCAN_CLK__L1_I0 (.Y(REF_SCAN_CLK__L1_N0), 
	.A(REF_SCAN_CLK));
   CLKINVX32M UART_SCAN_CLK__L10_I0 (.Y(UART_SCAN_CLK__L10_N0), 
	.A(UART_SCAN_CLK__L9_N0));
   CLKBUFX40M UART_SCAN_CLK__L9_I0 (.Y(UART_SCAN_CLK__L9_N0), 
	.A(UART_SCAN_CLK__L8_N0));
   CLKBUFX40M UART_SCAN_CLK__L8_I0 (.Y(UART_SCAN_CLK__L8_N0), 
	.A(UART_SCAN_CLK__L7_N0));
   CLKBUFX40M UART_SCAN_CLK__L7_I0 (.Y(UART_SCAN_CLK__L7_N0), 
	.A(UART_SCAN_CLK__L6_N0));
   CLKBUFX40M UART_SCAN_CLK__L6_I0 (.Y(UART_SCAN_CLK__L6_N0), 
	.A(UART_SCAN_CLK__L5_N1));
   CLKBUFX40M UART_SCAN_CLK__L5_I1 (.Y(UART_SCAN_CLK__L5_N1), 
	.A(UART_SCAN_CLK__L4_N0));
   CLKINVX32M UART_SCAN_CLK__L5_I0 (.Y(UART_SCAN_CLK__L5_N0), 
	.A(UART_SCAN_CLK__L4_N0));
   CLKINVX40M UART_SCAN_CLK__L4_I0 (.Y(UART_SCAN_CLK__L4_N0), 
	.A(UART_SCAN_CLK__L3_N0));
   CLKBUFX40M UART_SCAN_CLK__L3_I0 (.Y(UART_SCAN_CLK__L3_N0), 
	.A(UART_SCAN_CLK__L2_N0));
   CLKBUFX40M UART_SCAN_CLK__L2_I0 (.Y(UART_SCAN_CLK__L2_N0), 
	.A(UART_SCAN_CLK__L1_N0));
   CLKBUFX40M UART_SCAN_CLK__L1_I0 (.Y(UART_SCAN_CLK__L1_N0), 
	.A(UART_SCAN_CLK));
   CLKBUFX40M UART_RX_SCAN_CLK__L1_I0 (.Y(UART_RX_SCAN_CLK__L1_N0), 
	.A(UART_RX_SCAN_CLK));
   CLKBUFX40M UART_TX_SCAN_CLK__L1_I0 (.Y(UART_TX_SCAN_CLK__L1_N0), 
	.A(UART_TX_SCAN_CLK));
   BUFX4M FE_OFC16_SE (.Y(FE_OFN16_SE), 
	.A(FE_OFN15_SE));
   BUFX4M FE_OFC15_SE (.Y(FE_OFN15_SE), 
	.A(FE_OFN14_SE));
   BUFX4M FE_OFC14_SE (.Y(FE_OFN14_SE), 
	.A(FE_OFN13_SE));
   BUFX4M FE_OFC13_SE (.Y(FE_OFN13_SE), 
	.A(FE_OFN12_SE));
   BUFX4M FE_OFC12_SE (.Y(FE_OFN12_SE), 
	.A(FE_OFN11_SE));
   BUFX4M FE_OFC11_SE (.Y(FE_OFN11_SE), 
	.A(SE));
   CLKBUFX8M FE_OFC6_SYNC_UART_SCAN_RST (.Y(FE_OFN6_SYNC_UART_SCAN_RST), 
	.A(SYNC_UART_SCAN_RST));
   BUFX4M FE_OFC5_SYNC_REF_SCAN_RST (.Y(FE_OFN5_SYNC_REF_SCAN_RST), 
	.A(FE_OFN2_SYNC_REF_SCAN_RST));
   BUFX4M FE_OFC4_SYNC_REF_SCAN_RST (.Y(FE_OFN4_SYNC_REF_SCAN_RST), 
	.A(FE_OFN3_SYNC_REF_SCAN_RST));
   INVX6M FE_OFC3_SYNC_REF_SCAN_RST (.Y(FE_OFN3_SYNC_REF_SCAN_RST), 
	.A(FE_OFN0_SYNC_REF_SCAN_RST));
   CLKINVX6M FE_OFC2_SYNC_REF_SCAN_RST (.Y(FE_OFN2_SYNC_REF_SCAN_RST), 
	.A(FE_OFN0_SYNC_REF_SCAN_RST));
   INVX1M FE_OFC0_SYNC_REF_SCAN_RST (.Y(FE_OFN0_SYNC_REF_SCAN_RST), 
	.A(SYNC_REF_SCAN_RST));
   BUFX2M U4 (.Y(n2), 
	.A(RF_Address[0]));
   CLKBUFX2M U5 (.Y(n3), 
	.A(RF_Address[1]));
   OR2X2M U10 (.Y(_1_net_), 
	.B(test_mode), 
	.A(CLKG_EN));
   CLKBUFX40M U16 (.Y(SO[1]), 
	.A(UART_TX_O));
   mux2X1_0 U0_mux2X1 (.IN_0(REF_CLK__L2_N0), 
	.IN_1(scan_clk__L10_N0), 
	.SEL(test_mode), 
	.OUT(REF_SCAN_CLK));
   mux2X1_6 U1_mux2X1 (.IN_0(UART_CLK__L2_N0), 
	.IN_1(scan_clk__L2_N0), 
	.SEL(test_mode), 
	.OUT(UART_SCAN_CLK));
   mux2X1_5 U2_mux2X1 (.IN_0(UART_RX_CLK), 
	.IN_1(scan_clk__L10_N0), 
	.SEL(test_mode), 
	.OUT(UART_RX_SCAN_CLK));
   mux2X1_4 U3_mux2X1 (.IN_0(UART_TX_CLK), 
	.IN_1(scan_clk__L10_N0), 
	.SEL(test_mode), 
	.OUT(UART_TX_SCAN_CLK));
   mux2X1_3 U4_mux2X1 (.IN_0(RST_N), 
	.IN_1(scan_rst), 
	.SEL(test_mode), 
	.OUT(RSTN_SCAN_RST));
   mux2X1_2 U5_mux2X1 (.IN_0(SYNC_REF_RST), 
	.IN_1(scan_rst), 
	.SEL(test_mode), 
	.OUT(SYNC_REF_SCAN_RST));
   mux2X1_1 U6_mux2X1 (.IN_0(SYNC_UART_RST), 
	.IN_1(scan_rst), 
	.SEL(test_mode), 
	.OUT(SYNC_UART_SCAN_RST));
   RST_SYNC_NUM_STAGES2_test_0 U0_RST_SYNC (.RST(RSTN_SCAN_RST), 
	.CLK(UART_SCAN_CLK__L10_N0), 
	.SYNC_RST(SYNC_UART_RST), 
	.test_si(n21), 
	.test_se(FE_OFN11_SE));
   RST_SYNC_NUM_STAGES2_test_1 U1_RST_SYNC (.RST(RSTN_SCAN_RST), 
	.CLK(REF_SCAN_CLK__L1_N1), 
	.SYNC_RST(SYNC_REF_RST), 
	.test_si(n9), 
	.test_se(FE_OFN11_SE));
   DATA_SYNC_NUM_STAGES2_BUS_WIDTH8_test_1 U0_ref_sync (.CLK(REF_SCAN_CLK__L1_N0), 
	.RST(FE_OFN2_SYNC_REF_SCAN_RST), 
	.unsync_bus({ UART_RX_OUT[7],
		UART_RX_OUT[6],
		UART_RX_OUT[5],
		UART_RX_OUT[4],
		UART_RX_OUT[3],
		UART_RX_OUT[2],
		UART_RX_OUT[1],
		UART_RX_OUT[0] }), 
	.bus_enable(UART_RX_V_OUT), 
	.sync_bus({ UART_RX_SYNC[7],
		UART_RX_SYNC[6],
		UART_RX_SYNC[5],
		UART_RX_SYNC[4],
		UART_RX_SYNC[3],
		UART_RX_SYNC[2],
		UART_RX_SYNC[1],
		UART_RX_SYNC[0] }), 
	.enable_pulse_d(UART_RX_V_SYNC), 
	.test_si(n11), 
	.test_so(n10), 
	.test_se(FE_OFN13_SE), 
	.FE_OFN14_SE(FE_OFN14_SE), 
	.REF_SCAN_CLK__L1_N1(REF_SCAN_CLK__L1_N1));
   Async_fifo_D_SIZE8_F_DEPTH8_P_SIZE4_test_1 U0_UART_FIFO (.i_w_clk(REF_SCAN_CLK__L1_N0), 
	.i_w_rstn(FE_OFN2_SYNC_REF_SCAN_RST), 
	.i_w_inc(UART_TX_VLD), 
	.i_r_clk(UART_TX_SCAN_CLK__L1_N0), 
	.i_r_rstn(FE_OFN6_SYNC_UART_SCAN_RST), 
	.i_r_inc(UART_TX_Busy_PULSE), 
	.i_w_data({ UART_TX_IN[7],
		UART_TX_IN[6],
		UART_TX_IN[5],
		UART_TX_IN[4],
		UART_TX_IN[3],
		UART_TX_IN[2],
		UART_TX_IN[1],
		UART_TX_IN[0] }), 
	.o_r_data({ UART_TX_SYNC[7],
		UART_TX_SYNC[6],
		UART_TX_SYNC[5],
		UART_TX_SYNC[4],
		UART_TX_SYNC[3],
		UART_TX_SYNC[2],
		UART_TX_SYNC[1],
		UART_TX_SYNC[0] }), 
	.o_full(FIFO_FULL), 
	.o_empty(UART_TX_V_SYNC), 
	.test_si2(SI[0]), 
	.test_si1(n14), 
	.test_so2(n11), 
	.test_so1(n13), 
	.test_se(FE_OFN13_SE), 
	.FE_OFN3_SYNC_REF_SCAN_RST(FE_OFN3_SYNC_REF_SCAN_RST), 
	.FE_OFN4_SYNC_REF_SCAN_RST(FE_OFN4_SYNC_REF_SCAN_RST), 
	.FE_OFN14_SE(FE_OFN14_SE), 
	.FE_OFN15_SE(FE_OFN15_SE), 
	.FE_OFN16_SE(FE_OFN16_SE));
   PULSE_GEN_test_1 U0_PULSE_GEN (.clk(UART_TX_SCAN_CLK__L1_N0), 
	.rst(FE_OFN6_SYNC_UART_SCAN_RST), 
	.lvl_sig(UART_TX_Busy), 
	.pulse_sig(UART_TX_Busy_PULSE), 
	.test_si(n22), 
	.test_so(n21), 
	.test_se(FE_OFN13_SE), 
	.FE_OFN14_SE(FE_OFN14_SE));
   ClkDiv_test_0 U0_ClkDiv (.i_ref_clk(UART_SCAN_CLK), 
	.i_rst(FE_OFN6_SYNC_UART_SCAN_RST), 
	.i_clk_en(1'b1), 
	.i_div_ratio({ DIV_RATIO[7],
		DIV_RATIO[6],
		DIV_RATIO[5],
		DIV_RATIO[4],
		DIV_RATIO[3],
		DIV_RATIO[2],
		DIV_RATIO[1],
		DIV_RATIO[0] }), 
	.o_div_clk(UART_TX_CLK), 
	.test_si(ALU_OUT_VLD), 
	.test_so(n22), 
	.test_se(FE_OFN11_SE), 
	.FE_OFN13_SE(FE_OFN13_SE), 
	.UART_SCAN_CLK__L10_N0(UART_SCAN_CLK__L10_N0), 
	.UART_SCAN_CLK__L5_N0(UART_SCAN_CLK__L5_N0));
   CLKDIV_MUX U0_CLKDIV_MUX (.IN({ UART_Config[7],
		UART_Config[6],
		UART_Config[5],
		UART_Config[4],
		UART_Config[3],
		UART_Config[2] }), 
	.OUT({ SYNOPSYS_UNCONNECTED__0,
		SYNOPSYS_UNCONNECTED__1,
		SYNOPSYS_UNCONNECTED__2,
		SYNOPSYS_UNCONNECTED__3,
		DIV_RATIO_RX[3],
		DIV_RATIO_RX[2],
		DIV_RATIO_RX[1],
		DIV_RATIO_RX[0] }));
   ClkDiv_test_1 U1_ClkDiv (.i_ref_clk(UART_SCAN_CLK), 
	.i_rst(SYNC_UART_SCAN_RST), 
	.i_clk_en(1'b1), 
	.i_div_ratio({ 1'b0,
		1'b0,
		1'b0,
		1'b0,
		DIV_RATIO_RX[3],
		DIV_RATIO_RX[2],
		DIV_RATIO_RX[1],
		DIV_RATIO_RX[0] }), 
	.o_div_clk(UART_RX_CLK), 
	.test_si(n10), 
	.test_so(n9), 
	.test_se(SE), 
	.FE_OFN11_SE(FE_OFN11_SE), 
	.UART_SCAN_CLK__L10_N0(UART_SCAN_CLK__L10_N0), 
	.UART_SCAN_CLK__L5_N0(UART_SCAN_CLK__L5_N0));
   UART_test_1 U0_UART (.RST(SYNC_UART_SCAN_RST), 
	.TX_CLK(UART_TX_SCAN_CLK__L1_N0), 
	.RX_CLK(UART_RX_SCAN_CLK__L1_N0), 
	.RX_IN_S(UART_RX_IN), 
	.RX_OUT_P({ UART_RX_OUT[7],
		UART_RX_OUT[6],
		UART_RX_OUT[5],
		UART_RX_OUT[4],
		UART_RX_OUT[3],
		UART_RX_OUT[2],
		UART_RX_OUT[1],
		UART_RX_OUT[0] }), 
	.RX_OUT_V(UART_RX_V_OUT), 
	.TX_IN_P({ UART_TX_SYNC[7],
		UART_TX_SYNC[6],
		UART_TX_SYNC[5],
		UART_TX_SYNC[4],
		UART_TX_SYNC[3],
		UART_TX_SYNC[2],
		UART_TX_SYNC[1],
		UART_TX_SYNC[0] }), 
	.TX_IN_V(UART_TX_V_SYNC), 
	.TX_OUT_S(UART_TX_O), 
	.TX_OUT_V(UART_TX_Busy), 
	.Prescale({ UART_Config[7],
		UART_Config[6],
		UART_Config[5],
		UART_Config[4],
		UART_Config[3],
		UART_Config[2] }), 
	.parity_enable(UART_Config[0]), 
	.parity_type(UART_Config[1]), 
	.parity_error(parity_error), 
	.framing_error(framing_error), 
	.test_si2(n13), 
	.test_si1(n15), 
	.test_so1(n14), 
	.test_se(SE), 
	.FE_OFN6_SYNC_UART_SCAN_RST(FE_OFN6_SYNC_UART_SCAN_RST), 
	.FE_OFN13_SE(FE_OFN13_SE), 
	.FE_OFN14_SE(FE_OFN14_SE), 
	.FE_OFN15_SE(FE_OFN15_SE), 
	.FE_OFN16_SE(FE_OFN16_SE));
   SYS_CTRL_test_1 U0_SYS_CTRL (.CLK(REF_SCAN_CLK__L1_N0), 
	.RST(FE_OFN2_SYNC_REF_SCAN_RST), 
	.RF_RdData({ RF_RdData[7],
		RF_RdData[6],
		RF_RdData[5],
		RF_RdData[4],
		RF_RdData[3],
		RF_RdData[2],
		RF_RdData[1],
		RF_RdData[0] }), 
	.RF_RdData_VLD(RF_RdData_VLD), 
	.ALU_OUT({ ALU_OUT[15],
		ALU_OUT[14],
		ALU_OUT[13],
		ALU_OUT[12],
		ALU_OUT[11],
		ALU_OUT[10],
		ALU_OUT[9],
		ALU_OUT[8],
		ALU_OUT[7],
		ALU_OUT[6],
		ALU_OUT[5],
		ALU_OUT[4],
		ALU_OUT[3],
		ALU_OUT[2],
		ALU_OUT[1],
		ALU_OUT[0] }), 
	.ALU_OUT_VLD(ALU_OUT_VLD), 
	.UART_RX_DATA({ UART_RX_SYNC[7],
		UART_RX_SYNC[6],
		UART_RX_SYNC[5],
		UART_RX_SYNC[4],
		UART_RX_SYNC[3],
		UART_RX_SYNC[2],
		UART_RX_SYNC[1],
		UART_RX_SYNC[0] }), 
	.UART_RX_VLD(UART_RX_V_SYNC), 
	.FIFO_FULL(FIFO_FULL), 
	.ALU_EN(ALU_EN), 
	.ALU_FUN({ ALU_FUN[3],
		ALU_FUN[2],
		ALU_FUN[1],
		ALU_FUN[0] }), 
	.CLKG_EN(CLKG_EN), 
	.RF_WrEn(RF_WrEn), 
	.RF_RdEn(RF_RdEn), 
	.RF_Address({ RF_Address[3],
		RF_Address[2],
		RF_Address[1],
		RF_Address[0] }), 
	.RF_WrData({ RF_WrData[7],
		RF_WrData[6],
		RF_WrData[5],
		RF_WrData[4],
		RF_WrData[3],
		RF_WrData[2],
		RF_WrData[1],
		RF_WrData[0] }), 
	.UART_TX_DATA({ UART_TX_IN[7],
		UART_TX_IN[6],
		UART_TX_IN[5],
		UART_TX_IN[4],
		UART_TX_IN[3],
		UART_TX_IN[2],
		UART_TX_IN[1],
		UART_TX_IN[0] }), 
	.UART_TX_VLD(UART_TX_VLD), 
	.test_si2(SI[1]), 
	.test_si1(n18), 
	.test_so2(n15), 
	.test_so1(SO[2]), 
	.test_se(FE_OFN13_SE), 
	.FE_OFN3_SYNC_REF_SCAN_RST(FE_OFN3_SYNC_REF_SCAN_RST), 
	.FE_OFN4_SYNC_REF_SCAN_RST(FE_OFN4_SYNC_REF_SCAN_RST), 
	.FE_OFN5_SYNC_REF_SCAN_RST(FE_OFN5_SYNC_REF_SCAN_RST), 
	.FE_OFN14_SE(FE_OFN14_SE), 
	.FE_OFN15_SE(FE_OFN15_SE), 
	.FE_OFN16_SE(FE_OFN16_SE));
   RegFile_test_1 U0_RegFile (.CLK(REF_SCAN_CLK__L1_N0), 
	.RST(SYNC_REF_SCAN_RST), 
	.WrEn(RF_WrEn), 
	.RdEn(RF_RdEn), 
	.Address({ RF_Address[3],
		RF_Address[2],
		n3,
		n2 }), 
	.WrData({ RF_WrData[7],
		RF_WrData[6],
		RF_WrData[5],
		RF_WrData[4],
		RF_WrData[3],
		RF_WrData[2],
		RF_WrData[1],
		RF_WrData[0] }), 
	.RdData({ RF_RdData[7],
		RF_RdData[6],
		RF_RdData[5],
		RF_RdData[4],
		RF_RdData[3],
		RF_RdData[2],
		RF_RdData[1],
		RF_RdData[0] }), 
	.RdData_VLD(RF_RdData_VLD), 
	.REG0({ Operand_A[7],
		Operand_A[6],
		Operand_A[5],
		Operand_A[4],
		Operand_A[3],
		Operand_A[2],
		Operand_A[1],
		Operand_A[0] }), 
	.REG1({ Operand_B[7],
		Operand_B[6],
		Operand_B[5],
		Operand_B[4],
		Operand_B[3],
		Operand_B[2],
		Operand_B[1],
		Operand_B[0] }), 
	.REG2({ UART_Config[7],
		UART_Config[6],
		UART_Config[5],
		UART_Config[4],
		UART_Config[3],
		UART_Config[2],
		UART_Config[1],
		UART_Config[0] }), 
	.REG3({ DIV_RATIO[7],
		DIV_RATIO[6],
		DIV_RATIO[5],
		DIV_RATIO[4],
		DIV_RATIO[3],
		DIV_RATIO[2],
		DIV_RATIO[1],
		DIV_RATIO[0] }), 
	.test_si2(SI[2]), 
	.test_si1(SYNC_UART_RST), 
	.test_so2(n18), 
	.test_so1(SO[3]), 
	.test_se(SE), 
	.FE_OFN0_SYNC_REF_SCAN_RST(FE_OFN0_SYNC_REF_SCAN_RST), 
	.FE_OFN2_SYNC_REF_SCAN_RST(FE_OFN2_SYNC_REF_SCAN_RST), 
	.FE_OFN5_SYNC_REF_SCAN_RST(FE_OFN5_SYNC_REF_SCAN_RST), 
	.FE_OFN11_SE(FE_OFN11_SE), 
	.FE_OFN12_SE(FE_OFN12_SE), 
	.FE_OFN13_SE(FE_OFN13_SE), 
	.REF_SCAN_CLK__L1_N1(REF_SCAN_CLK__L1_N1));
   ALU_test_1 U0_ALU (.A({ Operand_A[7],
		Operand_A[6],
		Operand_A[5],
		Operand_A[4],
		Operand_A[3],
		Operand_A[2],
		Operand_A[1],
		Operand_A[0] }), 
	.B({ Operand_B[7],
		Operand_B[6],
		Operand_B[5],
		Operand_B[4],
		Operand_B[3],
		Operand_B[2],
		Operand_B[1],
		Operand_B[0] }), 
	.EN(ALU_EN), 
	.ALU_FUN({ ALU_FUN[3],
		ALU_FUN[2],
		ALU_FUN[1],
		ALU_FUN[0] }), 
	.CLK(ALU_CLK), 
	.RST(FE_OFN2_SYNC_REF_SCAN_RST), 
	.ALU_OUT({ ALU_OUT[15],
		ALU_OUT[14],
		ALU_OUT[13],
		ALU_OUT[12],
		ALU_OUT[11],
		ALU_OUT[10],
		ALU_OUT[9],
		ALU_OUT[8],
		ALU_OUT[7],
		ALU_OUT[6],
		ALU_OUT[5],
		ALU_OUT[4],
		ALU_OUT[3],
		ALU_OUT[2],
		ALU_OUT[1],
		ALU_OUT[0] }), 
	.OUT_VALID(ALU_OUT_VLD), 
	.test_si(SI[3]), 
	.test_se(FE_OFN12_SE), 
	.FE_OFN3_SYNC_REF_SCAN_RST(FE_OFN3_SYNC_REF_SCAN_RST), 
	.FE_OFN4_SYNC_REF_SCAN_RST(FE_OFN4_SYNC_REF_SCAN_RST), 
	.FE_OFN5_SYNC_REF_SCAN_RST(FE_OFN5_SYNC_REF_SCAN_RST), 
	.FE_OFN13_SE(FE_OFN13_SE), 
	.FE_OFN15_SE(FE_OFN15_SE), 
	.FE_OFN16_SE(FE_OFN16_SE));
   CLK_GATE U0_CLK_GATE (.CLK_EN(_1_net_), 
	.CLK(REF_SCAN_CLK), 
	.GATED_CLK(ALU_CLK));
endmodule

