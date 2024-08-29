/////////////////////////////////////////////////////////////
// Created by: Synopsys DC Expert(TM) in wire load mode
// Version   : K-2015.06
// Date      : Tue Sep 19 01:28:36 2023
/////////////////////////////////////////////////////////////


module mux2X1_0 ( IN_0, IN_1, SEL, OUT );
  input IN_0, IN_1, SEL;
  output OUT;
  wire   N0;
  assign N0 = SEL;

  MX2X6M U1 ( .A(IN_0), .B(IN_1), .S0(N0), .Y(OUT) );
endmodule


module mux2X1_6 ( IN_0, IN_1, SEL, OUT );
  input IN_0, IN_1, SEL;
  output OUT;
  wire   N0;
  assign N0 = SEL;

  MX2X2M U1 ( .A(IN_0), .B(IN_1), .S0(N0), .Y(OUT) );
endmodule


module mux2X1_5 ( IN_0, IN_1, SEL, OUT );
  input IN_0, IN_1, SEL;
  output OUT;
  wire   N0;
  assign N0 = SEL;

  MX2X2M U1 ( .A(IN_0), .B(IN_1), .S0(N0), .Y(OUT) );
endmodule


module mux2X1_4 ( IN_0, IN_1, SEL, OUT );
  input IN_0, IN_1, SEL;
  output OUT;
  wire   N0;
  assign N0 = SEL;

  MX2X2M U1 ( .A(IN_0), .B(IN_1), .S0(N0), .Y(OUT) );
endmodule


module mux2X1_3 ( IN_0, IN_1, SEL, OUT );
  input IN_0, IN_1, SEL;
  output OUT;
  wire   N0;
  assign N0 = SEL;

  MX2X2M U1 ( .A(IN_0), .B(IN_1), .S0(N0), .Y(OUT) );
endmodule


module mux2X1_2 ( IN_0, IN_1, SEL, OUT );
  input IN_0, IN_1, SEL;
  output OUT;
  wire   N0;
  assign N0 = SEL;

  MX2X2M U1 ( .A(IN_0), .B(IN_1), .S0(N0), .Y(OUT) );
endmodule


module mux2X1_1 ( IN_0, IN_1, SEL, OUT );
  input IN_0, IN_1, SEL;
  output OUT;
  wire   N0;
  assign N0 = SEL;

  MX2X2M U1 ( .A(IN_0), .B(IN_1), .S0(N0), .Y(OUT) );
endmodule


module RST_SYNC_NUM_STAGES2_test_0 ( RST, CLK, SYNC_RST, test_si, test_se );
  input RST, CLK, test_si, test_se;
  output SYNC_RST;
  wire   \sync_reg[0] ;

  SDFFRQX2M \sync_reg_reg[1]  ( .D(\sync_reg[0] ), .SI(\sync_reg[0] ), .SE(
        test_se), .CK(CLK), .RN(RST), .Q(SYNC_RST) );
  SDFFRQX2M \sync_reg_reg[0]  ( .D(1'b1), .SI(test_si), .SE(test_se), .CK(CLK), 
        .RN(RST), .Q(\sync_reg[0] ) );
endmodule


module RST_SYNC_NUM_STAGES2_test_1 ( RST, CLK, SYNC_RST, test_si, test_se );
  input RST, CLK, test_si, test_se;
  output SYNC_RST;
  wire   \sync_reg[0] ;

  SDFFRQX2M \sync_reg_reg[0]  ( .D(1'b1), .SI(test_si), .SE(test_se), .CK(CLK), 
        .RN(RST), .Q(\sync_reg[0] ) );
  SDFFRQX1M \sync_reg_reg[1]  ( .D(\sync_reg[0] ), .SI(\sync_reg[0] ), .SE(
        test_se), .CK(CLK), .RN(RST), .Q(SYNC_RST) );
endmodule


module DATA_SYNC_NUM_STAGES2_BUS_WIDTH8_test_1 ( CLK, RST, unsync_bus, 
        bus_enable, sync_bus, enable_pulse_d, test_si, test_so, test_se );
  input [7:0] unsync_bus;
  output [7:0] sync_bus;
  input CLK, RST, bus_enable, test_si, test_se;
  output enable_pulse_d, test_so;
  wire   enable_flop, n1, n4, n6, n8, n10, n12, n14, n16, n18, n23;
  wire   [1:0] sync_reg;
  assign test_so = sync_reg[1];

  SDFFRQX2M enable_flop_reg ( .D(sync_reg[1]), .SI(test_si), .SE(test_se), 
        .CK(CLK), .RN(RST), .Q(enable_flop) );
  SDFFRQX2M \sync_bus_reg[7]  ( .D(n18), .SI(sync_bus[6]), .SE(test_se), .CK(
        CLK), .RN(RST), .Q(sync_bus[7]) );
  SDFFRQX2M \sync_bus_reg[5]  ( .D(n14), .SI(sync_bus[4]), .SE(test_se), .CK(
        CLK), .RN(RST), .Q(sync_bus[5]) );
  SDFFRQX2M \sync_bus_reg[6]  ( .D(n16), .SI(sync_bus[5]), .SE(test_se), .CK(
        CLK), .RN(RST), .Q(sync_bus[6]) );
  SDFFRQX2M \sync_bus_reg[4]  ( .D(n12), .SI(sync_bus[3]), .SE(test_se), .CK(
        CLK), .RN(RST), .Q(sync_bus[4]) );
  SDFFRQX2M \sync_bus_reg[3]  ( .D(n10), .SI(sync_bus[2]), .SE(test_se), .CK(
        CLK), .RN(RST), .Q(sync_bus[3]) );
  SDFFRQX2M \sync_bus_reg[0]  ( .D(n4), .SI(enable_pulse_d), .SE(test_se), 
        .CK(CLK), .RN(RST), .Q(sync_bus[0]) );
  SDFFRQX2M \sync_bus_reg[2]  ( .D(n8), .SI(sync_bus[1]), .SE(test_se), .CK(
        CLK), .RN(RST), .Q(sync_bus[2]) );
  SDFFRQX2M \sync_bus_reg[1]  ( .D(n6), .SI(sync_bus[0]), .SE(test_se), .CK(
        CLK), .RN(RST), .Q(sync_bus[1]) );
  SDFFRQX2M enable_pulse_d_reg ( .D(n23), .SI(enable_flop), .SE(test_se), .CK(
        CLK), .RN(RST), .Q(enable_pulse_d) );
  SDFFRQX2M \sync_reg_reg[0]  ( .D(bus_enable), .SI(sync_bus[7]), .SE(test_se), 
        .CK(CLK), .RN(RST), .Q(sync_reg[0]) );
  SDFFRQX1M \sync_reg_reg[1]  ( .D(sync_reg[0]), .SI(sync_reg[0]), .SE(test_se), .CK(CLK), .RN(RST), .Q(sync_reg[1]) );
  INVX2M U4 ( .A(n1), .Y(n23) );
  NAND2BX2M U5 ( .AN(enable_flop), .B(sync_reg[1]), .Y(n1) );
  AO22X1M U6 ( .A0(unsync_bus[0]), .A1(n23), .B0(sync_bus[0]), .B1(n1), .Y(n4)
         );
  AO22X1M U7 ( .A0(unsync_bus[1]), .A1(n23), .B0(sync_bus[1]), .B1(n1), .Y(n6)
         );
  AO22X1M U8 ( .A0(unsync_bus[2]), .A1(n23), .B0(sync_bus[2]), .B1(n1), .Y(n8)
         );
  AO22X1M U9 ( .A0(unsync_bus[3]), .A1(n23), .B0(sync_bus[3]), .B1(n1), .Y(n10) );
  AO22X1M U10 ( .A0(unsync_bus[4]), .A1(n23), .B0(sync_bus[4]), .B1(n1), .Y(
        n12) );
  AO22X1M U11 ( .A0(unsync_bus[5]), .A1(n23), .B0(sync_bus[5]), .B1(n1), .Y(
        n14) );
  AO22X1M U12 ( .A0(unsync_bus[6]), .A1(n23), .B0(sync_bus[6]), .B1(n1), .Y(
        n16) );
  AO22X1M U25 ( .A0(unsync_bus[7]), .A1(n23), .B0(sync_bus[7]), .B1(n1), .Y(
        n18) );
endmodule


module fifo_mem_D_SIZE8_F_DEPTH8_P_SIZE4_test_1 ( w_clk, w_rstn, w_full, w_inc, 
        w_addr, r_addr, w_data, r_data, test_si2, test_si1, test_so2, test_so1, 
        test_se );
  input [2:0] w_addr;
  input [2:0] r_addr;
  input [7:0] w_data;
  output [7:0] r_data;
  input w_clk, w_rstn, w_full, w_inc, test_si2, test_si1, test_se;
  output test_so2, test_so1;
  wire   N9, N10, N11, \FIFO_MEM[7][7] , \FIFO_MEM[7][6] , \FIFO_MEM[7][5] ,
         \FIFO_MEM[7][4] , \FIFO_MEM[7][3] , \FIFO_MEM[7][2] ,
         \FIFO_MEM[7][1] , \FIFO_MEM[7][0] , \FIFO_MEM[6][7] ,
         \FIFO_MEM[6][6] , \FIFO_MEM[6][5] , \FIFO_MEM[6][4] ,
         \FIFO_MEM[6][3] , \FIFO_MEM[6][2] , \FIFO_MEM[6][1] ,
         \FIFO_MEM[6][0] , \FIFO_MEM[5][7] , \FIFO_MEM[5][6] ,
         \FIFO_MEM[5][5] , \FIFO_MEM[5][4] , \FIFO_MEM[5][3] ,
         \FIFO_MEM[5][2] , \FIFO_MEM[5][1] , \FIFO_MEM[5][0] ,
         \FIFO_MEM[4][7] , \FIFO_MEM[4][6] , \FIFO_MEM[4][5] ,
         \FIFO_MEM[4][4] , \FIFO_MEM[4][3] , \FIFO_MEM[4][2] ,
         \FIFO_MEM[4][1] , \FIFO_MEM[4][0] , \FIFO_MEM[3][7] ,
         \FIFO_MEM[3][6] , \FIFO_MEM[3][5] , \FIFO_MEM[3][4] ,
         \FIFO_MEM[3][3] , \FIFO_MEM[3][2] , \FIFO_MEM[3][1] ,
         \FIFO_MEM[3][0] , \FIFO_MEM[2][7] , \FIFO_MEM[2][6] ,
         \FIFO_MEM[2][5] , \FIFO_MEM[2][4] , \FIFO_MEM[2][3] ,
         \FIFO_MEM[2][2] , \FIFO_MEM[2][1] , \FIFO_MEM[2][0] ,
         \FIFO_MEM[1][7] , \FIFO_MEM[1][6] , \FIFO_MEM[1][5] ,
         \FIFO_MEM[1][4] , \FIFO_MEM[1][3] , \FIFO_MEM[1][2] ,
         \FIFO_MEM[1][1] , \FIFO_MEM[1][0] , \FIFO_MEM[0][7] ,
         \FIFO_MEM[0][6] , \FIFO_MEM[0][5] , \FIFO_MEM[0][4] ,
         \FIFO_MEM[0][3] , \FIFO_MEM[0][2] , \FIFO_MEM[0][1] ,
         \FIFO_MEM[0][0] , n75, n76, n77, n78, n79, n80, n81, n82, n83, n84,
         n85, n86, n87, n88, n89, n90, n91, n92, n93, n94, n95, n96, n97, n98,
         n99, n100, n101, n102, n103, n104, n105, n106, n107, n108, n109, n110,
         n111, n112, n113, n114, n115, n116, n117, n118, n119, n120, n121,
         n122, n123, n124, n125, n126, n127, n128, n129, n130, n131, n132,
         n133, n134, n135, n136, n137, n138, n139, n140, n141, n142, n143,
         n144, n145, n146, n147, n148, n149, n65, n66, n67, n68, n69, n70, n71,
         n72, n73, n74, n150, n151, n152, n153, n154, n155, n156, n157, n158,
         n159, n160, n161, n162, n163, n164, n165, n166, n167, n168, n169,
         n170, n171, n172, n173, n174, n175, n176, n177, n178, n179;
  assign N9 = r_addr[0];
  assign N10 = r_addr[1];
  assign N11 = r_addr[2];
  assign test_so2 = \FIFO_MEM[7][7] ;
  assign test_so1 = \FIFO_MEM[3][4] ;

  SDFFRQX2M \FIFO_MEM_reg[5][7]  ( .D(n133), .SI(\FIFO_MEM[5][6] ), .SE(
        test_se), .CK(w_clk), .RN(n165), .Q(\FIFO_MEM[5][7] ) );
  SDFFRQX2M \FIFO_MEM_reg[5][6]  ( .D(n132), .SI(\FIFO_MEM[5][5] ), .SE(
        test_se), .CK(w_clk), .RN(n165), .Q(\FIFO_MEM[5][6] ) );
  SDFFRQX2M \FIFO_MEM_reg[5][5]  ( .D(n131), .SI(\FIFO_MEM[5][4] ), .SE(
        test_se), .CK(w_clk), .RN(n165), .Q(\FIFO_MEM[5][5] ) );
  SDFFRQX2M \FIFO_MEM_reg[5][4]  ( .D(n130), .SI(\FIFO_MEM[5][3] ), .SE(
        test_se), .CK(w_clk), .RN(n165), .Q(\FIFO_MEM[5][4] ) );
  SDFFRQX2M \FIFO_MEM_reg[5][3]  ( .D(n129), .SI(\FIFO_MEM[5][2] ), .SE(
        test_se), .CK(w_clk), .RN(n165), .Q(\FIFO_MEM[5][3] ) );
  SDFFRQX2M \FIFO_MEM_reg[5][2]  ( .D(n128), .SI(\FIFO_MEM[5][1] ), .SE(
        test_se), .CK(w_clk), .RN(n165), .Q(\FIFO_MEM[5][2] ) );
  SDFFRQX2M \FIFO_MEM_reg[5][1]  ( .D(n127), .SI(\FIFO_MEM[5][0] ), .SE(
        test_se), .CK(w_clk), .RN(n165), .Q(\FIFO_MEM[5][1] ) );
  SDFFRQX2M \FIFO_MEM_reg[5][0]  ( .D(n126), .SI(\FIFO_MEM[4][7] ), .SE(
        test_se), .CK(w_clk), .RN(n165), .Q(\FIFO_MEM[5][0] ) );
  SDFFRQX2M \FIFO_MEM_reg[1][7]  ( .D(n101), .SI(\FIFO_MEM[1][6] ), .SE(
        test_se), .CK(w_clk), .RN(n168), .Q(\FIFO_MEM[1][7] ) );
  SDFFRQX2M \FIFO_MEM_reg[1][6]  ( .D(n100), .SI(\FIFO_MEM[1][5] ), .SE(
        test_se), .CK(w_clk), .RN(n168), .Q(\FIFO_MEM[1][6] ) );
  SDFFRQX2M \FIFO_MEM_reg[1][5]  ( .D(n99), .SI(\FIFO_MEM[1][4] ), .SE(test_se), .CK(w_clk), .RN(n168), .Q(\FIFO_MEM[1][5] ) );
  SDFFRQX2M \FIFO_MEM_reg[1][4]  ( .D(n98), .SI(\FIFO_MEM[1][3] ), .SE(test_se), .CK(w_clk), .RN(n168), .Q(\FIFO_MEM[1][4] ) );
  SDFFRQX2M \FIFO_MEM_reg[1][3]  ( .D(n97), .SI(\FIFO_MEM[1][2] ), .SE(test_se), .CK(w_clk), .RN(n168), .Q(\FIFO_MEM[1][3] ) );
  SDFFRQX2M \FIFO_MEM_reg[1][2]  ( .D(n96), .SI(\FIFO_MEM[1][1] ), .SE(test_se), .CK(w_clk), .RN(n168), .Q(\FIFO_MEM[1][2] ) );
  SDFFRQX2M \FIFO_MEM_reg[1][1]  ( .D(n95), .SI(\FIFO_MEM[1][0] ), .SE(test_se), .CK(w_clk), .RN(n168), .Q(\FIFO_MEM[1][1] ) );
  SDFFRQX2M \FIFO_MEM_reg[1][0]  ( .D(n94), .SI(\FIFO_MEM[0][7] ), .SE(test_se), .CK(w_clk), .RN(n168), .Q(\FIFO_MEM[1][0] ) );
  SDFFRQX2M \FIFO_MEM_reg[7][7]  ( .D(n149), .SI(\FIFO_MEM[7][6] ), .SE(
        test_se), .CK(w_clk), .RN(n164), .Q(\FIFO_MEM[7][7] ) );
  SDFFRQX2M \FIFO_MEM_reg[7][6]  ( .D(n148), .SI(\FIFO_MEM[7][5] ), .SE(
        test_se), .CK(w_clk), .RN(n164), .Q(\FIFO_MEM[7][6] ) );
  SDFFRQX2M \FIFO_MEM_reg[7][5]  ( .D(n147), .SI(\FIFO_MEM[7][4] ), .SE(
        test_se), .CK(w_clk), .RN(n164), .Q(\FIFO_MEM[7][5] ) );
  SDFFRQX2M \FIFO_MEM_reg[7][4]  ( .D(n146), .SI(\FIFO_MEM[7][3] ), .SE(
        test_se), .CK(w_clk), .RN(n164), .Q(\FIFO_MEM[7][4] ) );
  SDFFRQX2M \FIFO_MEM_reg[7][3]  ( .D(n145), .SI(\FIFO_MEM[7][2] ), .SE(
        test_se), .CK(w_clk), .RN(n164), .Q(\FIFO_MEM[7][3] ) );
  SDFFRQX2M \FIFO_MEM_reg[7][2]  ( .D(n144), .SI(\FIFO_MEM[7][1] ), .SE(
        test_se), .CK(w_clk), .RN(n164), .Q(\FIFO_MEM[7][2] ) );
  SDFFRQX2M \FIFO_MEM_reg[7][1]  ( .D(n143), .SI(\FIFO_MEM[7][0] ), .SE(
        test_se), .CK(w_clk), .RN(n164), .Q(\FIFO_MEM[7][1] ) );
  SDFFRQX2M \FIFO_MEM_reg[7][0]  ( .D(n142), .SI(\FIFO_MEM[6][7] ), .SE(
        test_se), .CK(w_clk), .RN(n164), .Q(\FIFO_MEM[7][0] ) );
  SDFFRQX2M \FIFO_MEM_reg[3][7]  ( .D(n117), .SI(\FIFO_MEM[3][6] ), .SE(
        test_se), .CK(w_clk), .RN(n166), .Q(\FIFO_MEM[3][7] ) );
  SDFFRQX2M \FIFO_MEM_reg[3][6]  ( .D(n116), .SI(\FIFO_MEM[3][5] ), .SE(
        test_se), .CK(w_clk), .RN(n166), .Q(\FIFO_MEM[3][6] ) );
  SDFFRQX2M \FIFO_MEM_reg[3][5]  ( .D(n115), .SI(test_si2), .SE(test_se), .CK(
        w_clk), .RN(n166), .Q(\FIFO_MEM[3][5] ) );
  SDFFRQX2M \FIFO_MEM_reg[3][4]  ( .D(n114), .SI(\FIFO_MEM[3][3] ), .SE(
        test_se), .CK(w_clk), .RN(n166), .Q(\FIFO_MEM[3][4] ) );
  SDFFRQX2M \FIFO_MEM_reg[3][3]  ( .D(n113), .SI(\FIFO_MEM[3][2] ), .SE(
        test_se), .CK(w_clk), .RN(n167), .Q(\FIFO_MEM[3][3] ) );
  SDFFRQX2M \FIFO_MEM_reg[3][2]  ( .D(n112), .SI(\FIFO_MEM[3][1] ), .SE(
        test_se), .CK(w_clk), .RN(n167), .Q(\FIFO_MEM[3][2] ) );
  SDFFRQX2M \FIFO_MEM_reg[3][1]  ( .D(n111), .SI(\FIFO_MEM[3][0] ), .SE(
        test_se), .CK(w_clk), .RN(n167), .Q(\FIFO_MEM[3][1] ) );
  SDFFRQX2M \FIFO_MEM_reg[3][0]  ( .D(n110), .SI(\FIFO_MEM[2][7] ), .SE(
        test_se), .CK(w_clk), .RN(n167), .Q(\FIFO_MEM[3][0] ) );
  SDFFRQX2M \FIFO_MEM_reg[6][7]  ( .D(n141), .SI(\FIFO_MEM[6][6] ), .SE(
        test_se), .CK(w_clk), .RN(n164), .Q(\FIFO_MEM[6][7] ) );
  SDFFRQX2M \FIFO_MEM_reg[6][6]  ( .D(n140), .SI(\FIFO_MEM[6][5] ), .SE(
        test_se), .CK(w_clk), .RN(n164), .Q(\FIFO_MEM[6][6] ) );
  SDFFRQX2M \FIFO_MEM_reg[6][5]  ( .D(n139), .SI(\FIFO_MEM[6][4] ), .SE(
        test_se), .CK(w_clk), .RN(n164), .Q(\FIFO_MEM[6][5] ) );
  SDFFRQX2M \FIFO_MEM_reg[6][4]  ( .D(n138), .SI(\FIFO_MEM[6][3] ), .SE(
        test_se), .CK(w_clk), .RN(n164), .Q(\FIFO_MEM[6][4] ) );
  SDFFRQX2M \FIFO_MEM_reg[6][3]  ( .D(n137), .SI(\FIFO_MEM[6][2] ), .SE(
        test_se), .CK(w_clk), .RN(n165), .Q(\FIFO_MEM[6][3] ) );
  SDFFRQX2M \FIFO_MEM_reg[6][2]  ( .D(n136), .SI(\FIFO_MEM[6][1] ), .SE(
        test_se), .CK(w_clk), .RN(n165), .Q(\FIFO_MEM[6][2] ) );
  SDFFRQX2M \FIFO_MEM_reg[6][1]  ( .D(n135), .SI(\FIFO_MEM[6][0] ), .SE(
        test_se), .CK(w_clk), .RN(n165), .Q(\FIFO_MEM[6][1] ) );
  SDFFRQX2M \FIFO_MEM_reg[6][0]  ( .D(n134), .SI(\FIFO_MEM[5][7] ), .SE(
        test_se), .CK(w_clk), .RN(n165), .Q(\FIFO_MEM[6][0] ) );
  SDFFRQX2M \FIFO_MEM_reg[2][7]  ( .D(n109), .SI(\FIFO_MEM[2][6] ), .SE(
        test_se), .CK(w_clk), .RN(n167), .Q(\FIFO_MEM[2][7] ) );
  SDFFRQX2M \FIFO_MEM_reg[2][6]  ( .D(n108), .SI(\FIFO_MEM[2][5] ), .SE(
        test_se), .CK(w_clk), .RN(n167), .Q(\FIFO_MEM[2][6] ) );
  SDFFRQX2M \FIFO_MEM_reg[2][5]  ( .D(n107), .SI(\FIFO_MEM[2][4] ), .SE(
        test_se), .CK(w_clk), .RN(n167), .Q(\FIFO_MEM[2][5] ) );
  SDFFRQX2M \FIFO_MEM_reg[2][4]  ( .D(n106), .SI(\FIFO_MEM[2][3] ), .SE(
        test_se), .CK(w_clk), .RN(n167), .Q(\FIFO_MEM[2][4] ) );
  SDFFRQX2M \FIFO_MEM_reg[2][3]  ( .D(n105), .SI(\FIFO_MEM[2][2] ), .SE(
        test_se), .CK(w_clk), .RN(n167), .Q(\FIFO_MEM[2][3] ) );
  SDFFRQX2M \FIFO_MEM_reg[2][2]  ( .D(n104), .SI(\FIFO_MEM[2][1] ), .SE(
        test_se), .CK(w_clk), .RN(n167), .Q(\FIFO_MEM[2][2] ) );
  SDFFRQX2M \FIFO_MEM_reg[2][1]  ( .D(n103), .SI(\FIFO_MEM[2][0] ), .SE(
        test_se), .CK(w_clk), .RN(n167), .Q(\FIFO_MEM[2][1] ) );
  SDFFRQX2M \FIFO_MEM_reg[2][0]  ( .D(n102), .SI(\FIFO_MEM[1][7] ), .SE(
        test_se), .CK(w_clk), .RN(n167), .Q(\FIFO_MEM[2][0] ) );
  SDFFRQX2M \FIFO_MEM_reg[4][7]  ( .D(n125), .SI(\FIFO_MEM[4][6] ), .SE(
        test_se), .CK(w_clk), .RN(n166), .Q(\FIFO_MEM[4][7] ) );
  SDFFRQX2M \FIFO_MEM_reg[4][6]  ( .D(n124), .SI(\FIFO_MEM[4][5] ), .SE(
        test_se), .CK(w_clk), .RN(n166), .Q(\FIFO_MEM[4][6] ) );
  SDFFRQX2M \FIFO_MEM_reg[4][5]  ( .D(n123), .SI(\FIFO_MEM[4][4] ), .SE(
        test_se), .CK(w_clk), .RN(n166), .Q(\FIFO_MEM[4][5] ) );
  SDFFRQX2M \FIFO_MEM_reg[4][4]  ( .D(n122), .SI(\FIFO_MEM[4][3] ), .SE(
        test_se), .CK(w_clk), .RN(n166), .Q(\FIFO_MEM[4][4] ) );
  SDFFRQX2M \FIFO_MEM_reg[4][3]  ( .D(n121), .SI(\FIFO_MEM[4][2] ), .SE(
        test_se), .CK(w_clk), .RN(n166), .Q(\FIFO_MEM[4][3] ) );
  SDFFRQX2M \FIFO_MEM_reg[4][2]  ( .D(n120), .SI(\FIFO_MEM[4][1] ), .SE(
        test_se), .CK(w_clk), .RN(n166), .Q(\FIFO_MEM[4][2] ) );
  SDFFRQX2M \FIFO_MEM_reg[4][1]  ( .D(n119), .SI(\FIFO_MEM[4][0] ), .SE(
        test_se), .CK(w_clk), .RN(n166), .Q(\FIFO_MEM[4][1] ) );
  SDFFRQX2M \FIFO_MEM_reg[4][0]  ( .D(n118), .SI(\FIFO_MEM[3][7] ), .SE(
        test_se), .CK(w_clk), .RN(n166), .Q(\FIFO_MEM[4][0] ) );
  SDFFRQX2M \FIFO_MEM_reg[0][7]  ( .D(n93), .SI(\FIFO_MEM[0][6] ), .SE(test_se), .CK(w_clk), .RN(n168), .Q(\FIFO_MEM[0][7] ) );
  SDFFRQX2M \FIFO_MEM_reg[0][6]  ( .D(n92), .SI(\FIFO_MEM[0][5] ), .SE(test_se), .CK(w_clk), .RN(n168), .Q(\FIFO_MEM[0][6] ) );
  SDFFRQX2M \FIFO_MEM_reg[0][5]  ( .D(n91), .SI(\FIFO_MEM[0][4] ), .SE(test_se), .CK(w_clk), .RN(n168), .Q(\FIFO_MEM[0][5] ) );
  SDFFRQX2M \FIFO_MEM_reg[0][4]  ( .D(n90), .SI(\FIFO_MEM[0][3] ), .SE(test_se), .CK(w_clk), .RN(n168), .Q(\FIFO_MEM[0][4] ) );
  SDFFRQX2M \FIFO_MEM_reg[0][3]  ( .D(n89), .SI(\FIFO_MEM[0][2] ), .SE(test_se), .CK(w_clk), .RN(n169), .Q(\FIFO_MEM[0][3] ) );
  SDFFRQX2M \FIFO_MEM_reg[0][2]  ( .D(n88), .SI(\FIFO_MEM[0][1] ), .SE(test_se), .CK(w_clk), .RN(n169), .Q(\FIFO_MEM[0][2] ) );
  SDFFRQX2M \FIFO_MEM_reg[0][1]  ( .D(n87), .SI(\FIFO_MEM[0][0] ), .SE(test_se), .CK(w_clk), .RN(n169), .Q(\FIFO_MEM[0][1] ) );
  SDFFRQX2M \FIFO_MEM_reg[0][0]  ( .D(n86), .SI(test_si1), .SE(test_se), .CK(
        w_clk), .RN(n169), .Q(\FIFO_MEM[0][0] ) );
  BUFX2M U66 ( .A(n83), .Y(n160) );
  BUFX2M U67 ( .A(n84), .Y(n159) );
  BUFX2M U68 ( .A(n85), .Y(n158) );
  BUFX2M U69 ( .A(n78), .Y(n161) );
  BUFX2M U70 ( .A(n163), .Y(n168) );
  BUFX2M U71 ( .A(n163), .Y(n167) );
  BUFX2M U72 ( .A(n162), .Y(n166) );
  BUFX2M U73 ( .A(n162), .Y(n165) );
  BUFX2M U74 ( .A(n162), .Y(n164) );
  BUFX2M U75 ( .A(n163), .Y(n169) );
  NOR2BX2M U76 ( .AN(w_inc), .B(w_full), .Y(n80) );
  BUFX2M U77 ( .A(w_rstn), .Y(n163) );
  BUFX2M U78 ( .A(w_rstn), .Y(n162) );
  NAND3X2M U79 ( .A(n178), .B(n179), .C(n82), .Y(n81) );
  NAND3X2M U80 ( .A(n178), .B(n179), .C(n76), .Y(n75) );
  NAND3X2M U81 ( .A(w_addr[0]), .B(n76), .C(w_addr[1]), .Y(n79) );
  NAND3X2M U82 ( .A(n76), .B(n179), .C(w_addr[0]), .Y(n77) );
  NOR2BX2M U83 ( .AN(n80), .B(w_addr[2]), .Y(n76) );
  INVX2M U84 ( .A(w_data[0]), .Y(n170) );
  INVX2M U85 ( .A(w_data[1]), .Y(n171) );
  INVX2M U86 ( .A(w_data[2]), .Y(n172) );
  INVX2M U87 ( .A(w_data[3]), .Y(n173) );
  INVX2M U88 ( .A(w_data[4]), .Y(n174) );
  INVX2M U89 ( .A(w_data[5]), .Y(n175) );
  INVX2M U90 ( .A(w_data[6]), .Y(n176) );
  INVX2M U91 ( .A(w_data[7]), .Y(n177) );
  OAI2BB2X1M U92 ( .B0(n75), .B1(n170), .A0N(\FIFO_MEM[0][0] ), .A1N(n75), .Y(
        n86) );
  OAI2BB2X1M U93 ( .B0(n75), .B1(n171), .A0N(\FIFO_MEM[0][1] ), .A1N(n75), .Y(
        n87) );
  OAI2BB2X1M U94 ( .B0(n75), .B1(n172), .A0N(\FIFO_MEM[0][2] ), .A1N(n75), .Y(
        n88) );
  OAI2BB2X1M U95 ( .B0(n75), .B1(n173), .A0N(\FIFO_MEM[0][3] ), .A1N(n75), .Y(
        n89) );
  OAI2BB2X1M U96 ( .B0(n75), .B1(n174), .A0N(\FIFO_MEM[0][4] ), .A1N(n75), .Y(
        n90) );
  OAI2BB2X1M U97 ( .B0(n75), .B1(n175), .A0N(\FIFO_MEM[0][5] ), .A1N(n75), .Y(
        n91) );
  OAI2BB2X1M U98 ( .B0(n75), .B1(n176), .A0N(\FIFO_MEM[0][6] ), .A1N(n75), .Y(
        n92) );
  OAI2BB2X1M U99 ( .B0(n75), .B1(n177), .A0N(\FIFO_MEM[0][7] ), .A1N(n75), .Y(
        n93) );
  OAI2BB2X1M U100 ( .B0(n170), .B1(n79), .A0N(\FIFO_MEM[3][0] ), .A1N(n79), 
        .Y(n110) );
  OAI2BB2X1M U101 ( .B0(n171), .B1(n79), .A0N(\FIFO_MEM[3][1] ), .A1N(n79), 
        .Y(n111) );
  OAI2BB2X1M U102 ( .B0(n172), .B1(n79), .A0N(\FIFO_MEM[3][2] ), .A1N(n79), 
        .Y(n112) );
  OAI2BB2X1M U103 ( .B0(n173), .B1(n79), .A0N(\FIFO_MEM[3][3] ), .A1N(n79), 
        .Y(n113) );
  OAI2BB2X1M U104 ( .B0(n174), .B1(n79), .A0N(\FIFO_MEM[3][4] ), .A1N(n79), 
        .Y(n114) );
  OAI2BB2X1M U105 ( .B0(n175), .B1(n79), .A0N(\FIFO_MEM[3][5] ), .A1N(n79), 
        .Y(n115) );
  OAI2BB2X1M U106 ( .B0(n176), .B1(n79), .A0N(\FIFO_MEM[3][6] ), .A1N(n79), 
        .Y(n116) );
  OAI2BB2X1M U107 ( .B0(n177), .B1(n79), .A0N(\FIFO_MEM[3][7] ), .A1N(n79), 
        .Y(n117) );
  OAI2BB2X1M U108 ( .B0(n170), .B1(n77), .A0N(\FIFO_MEM[1][0] ), .A1N(n77), 
        .Y(n94) );
  OAI2BB2X1M U109 ( .B0(n171), .B1(n77), .A0N(\FIFO_MEM[1][1] ), .A1N(n77), 
        .Y(n95) );
  OAI2BB2X1M U110 ( .B0(n172), .B1(n77), .A0N(\FIFO_MEM[1][2] ), .A1N(n77), 
        .Y(n96) );
  OAI2BB2X1M U111 ( .B0(n173), .B1(n77), .A0N(\FIFO_MEM[1][3] ), .A1N(n77), 
        .Y(n97) );
  OAI2BB2X1M U112 ( .B0(n174), .B1(n77), .A0N(\FIFO_MEM[1][4] ), .A1N(n77), 
        .Y(n98) );
  OAI2BB2X1M U113 ( .B0(n175), .B1(n77), .A0N(\FIFO_MEM[1][5] ), .A1N(n77), 
        .Y(n99) );
  OAI2BB2X1M U114 ( .B0(n176), .B1(n77), .A0N(\FIFO_MEM[1][6] ), .A1N(n77), 
        .Y(n100) );
  OAI2BB2X1M U115 ( .B0(n177), .B1(n77), .A0N(\FIFO_MEM[1][7] ), .A1N(n77), 
        .Y(n101) );
  OAI2BB2X1M U116 ( .B0(n170), .B1(n81), .A0N(\FIFO_MEM[4][0] ), .A1N(n81), 
        .Y(n118) );
  OAI2BB2X1M U117 ( .B0(n171), .B1(n81), .A0N(\FIFO_MEM[4][1] ), .A1N(n81), 
        .Y(n119) );
  OAI2BB2X1M U118 ( .B0(n172), .B1(n81), .A0N(\FIFO_MEM[4][2] ), .A1N(n81), 
        .Y(n120) );
  OAI2BB2X1M U119 ( .B0(n173), .B1(n81), .A0N(\FIFO_MEM[4][3] ), .A1N(n81), 
        .Y(n121) );
  OAI2BB2X1M U120 ( .B0(n174), .B1(n81), .A0N(\FIFO_MEM[4][4] ), .A1N(n81), 
        .Y(n122) );
  OAI2BB2X1M U121 ( .B0(n175), .B1(n81), .A0N(\FIFO_MEM[4][5] ), .A1N(n81), 
        .Y(n123) );
  OAI2BB2X1M U122 ( .B0(n176), .B1(n81), .A0N(\FIFO_MEM[4][6] ), .A1N(n81), 
        .Y(n124) );
  OAI2BB2X1M U123 ( .B0(n177), .B1(n81), .A0N(\FIFO_MEM[4][7] ), .A1N(n81), 
        .Y(n125) );
  OAI2BB2X1M U124 ( .B0(n170), .B1(n161), .A0N(\FIFO_MEM[2][0] ), .A1N(n161), 
        .Y(n102) );
  OAI2BB2X1M U125 ( .B0(n171), .B1(n161), .A0N(\FIFO_MEM[2][1] ), .A1N(n161), 
        .Y(n103) );
  OAI2BB2X1M U126 ( .B0(n172), .B1(n161), .A0N(\FIFO_MEM[2][2] ), .A1N(n161), 
        .Y(n104) );
  OAI2BB2X1M U127 ( .B0(n173), .B1(n161), .A0N(\FIFO_MEM[2][3] ), .A1N(n161), 
        .Y(n105) );
  OAI2BB2X1M U128 ( .B0(n174), .B1(n161), .A0N(\FIFO_MEM[2][4] ), .A1N(n161), 
        .Y(n106) );
  OAI2BB2X1M U129 ( .B0(n175), .B1(n161), .A0N(\FIFO_MEM[2][5] ), .A1N(n161), 
        .Y(n107) );
  OAI2BB2X1M U130 ( .B0(n176), .B1(n161), .A0N(\FIFO_MEM[2][6] ), .A1N(n161), 
        .Y(n108) );
  OAI2BB2X1M U131 ( .B0(n177), .B1(n161), .A0N(\FIFO_MEM[2][7] ), .A1N(n161), 
        .Y(n109) );
  OAI2BB2X1M U132 ( .B0(n170), .B1(n160), .A0N(\FIFO_MEM[5][0] ), .A1N(n160), 
        .Y(n126) );
  OAI2BB2X1M U133 ( .B0(n171), .B1(n160), .A0N(\FIFO_MEM[5][1] ), .A1N(n160), 
        .Y(n127) );
  OAI2BB2X1M U134 ( .B0(n172), .B1(n160), .A0N(\FIFO_MEM[5][2] ), .A1N(n160), 
        .Y(n128) );
  OAI2BB2X1M U135 ( .B0(n173), .B1(n160), .A0N(\FIFO_MEM[5][3] ), .A1N(n160), 
        .Y(n129) );
  OAI2BB2X1M U136 ( .B0(n174), .B1(n160), .A0N(\FIFO_MEM[5][4] ), .A1N(n160), 
        .Y(n130) );
  OAI2BB2X1M U137 ( .B0(n175), .B1(n160), .A0N(\FIFO_MEM[5][5] ), .A1N(n160), 
        .Y(n131) );
  OAI2BB2X1M U138 ( .B0(n176), .B1(n160), .A0N(\FIFO_MEM[5][6] ), .A1N(n160), 
        .Y(n132) );
  OAI2BB2X1M U139 ( .B0(n177), .B1(n160), .A0N(\FIFO_MEM[5][7] ), .A1N(n160), 
        .Y(n133) );
  OAI2BB2X1M U140 ( .B0(n170), .B1(n159), .A0N(\FIFO_MEM[6][0] ), .A1N(n159), 
        .Y(n134) );
  OAI2BB2X1M U141 ( .B0(n171), .B1(n159), .A0N(\FIFO_MEM[6][1] ), .A1N(n159), 
        .Y(n135) );
  OAI2BB2X1M U142 ( .B0(n172), .B1(n159), .A0N(\FIFO_MEM[6][2] ), .A1N(n159), 
        .Y(n136) );
  OAI2BB2X1M U143 ( .B0(n173), .B1(n159), .A0N(\FIFO_MEM[6][3] ), .A1N(n159), 
        .Y(n137) );
  OAI2BB2X1M U144 ( .B0(n174), .B1(n159), .A0N(\FIFO_MEM[6][4] ), .A1N(n159), 
        .Y(n138) );
  OAI2BB2X1M U145 ( .B0(n175), .B1(n159), .A0N(\FIFO_MEM[6][5] ), .A1N(n159), 
        .Y(n139) );
  OAI2BB2X1M U146 ( .B0(n176), .B1(n159), .A0N(\FIFO_MEM[6][6] ), .A1N(n159), 
        .Y(n140) );
  OAI2BB2X1M U147 ( .B0(n177), .B1(n159), .A0N(\FIFO_MEM[6][7] ), .A1N(n159), 
        .Y(n141) );
  OAI2BB2X1M U148 ( .B0(n170), .B1(n158), .A0N(\FIFO_MEM[7][0] ), .A1N(n158), 
        .Y(n142) );
  OAI2BB2X1M U149 ( .B0(n171), .B1(n158), .A0N(\FIFO_MEM[7][1] ), .A1N(n158), 
        .Y(n143) );
  OAI2BB2X1M U150 ( .B0(n172), .B1(n158), .A0N(\FIFO_MEM[7][2] ), .A1N(n158), 
        .Y(n144) );
  OAI2BB2X1M U151 ( .B0(n173), .B1(n158), .A0N(\FIFO_MEM[7][3] ), .A1N(n158), 
        .Y(n145) );
  OAI2BB2X1M U152 ( .B0(n174), .B1(n158), .A0N(\FIFO_MEM[7][4] ), .A1N(n158), 
        .Y(n146) );
  OAI2BB2X1M U153 ( .B0(n175), .B1(n158), .A0N(\FIFO_MEM[7][5] ), .A1N(n158), 
        .Y(n147) );
  OAI2BB2X1M U154 ( .B0(n176), .B1(n158), .A0N(\FIFO_MEM[7][6] ), .A1N(n158), 
        .Y(n148) );
  OAI2BB2X1M U155 ( .B0(n177), .B1(n158), .A0N(\FIFO_MEM[7][7] ), .A1N(n158), 
        .Y(n149) );
  AND2X2M U156 ( .A(w_addr[2]), .B(n80), .Y(n82) );
  NAND3X2M U157 ( .A(n76), .B(n178), .C(w_addr[1]), .Y(n78) );
  NAND3X2M U158 ( .A(w_addr[0]), .B(n179), .C(n82), .Y(n83) );
  NAND3X2M U159 ( .A(w_addr[1]), .B(n178), .C(n82), .Y(n84) );
  NAND3X2M U160 ( .A(w_addr[1]), .B(w_addr[0]), .C(n82), .Y(n85) );
  INVX2M U161 ( .A(w_addr[1]), .Y(n179) );
  INVX2M U162 ( .A(w_addr[0]), .Y(n178) );
  MX2X2M U163 ( .A(n66), .B(n65), .S0(N11), .Y(r_data[0]) );
  MX4X1M U164 ( .A(\FIFO_MEM[0][0] ), .B(\FIFO_MEM[1][0] ), .C(
        \FIFO_MEM[2][0] ), .D(\FIFO_MEM[3][0] ), .S0(n157), .S1(N10), .Y(n66)
         );
  MX4X1M U165 ( .A(\FIFO_MEM[4][0] ), .B(\FIFO_MEM[5][0] ), .C(
        \FIFO_MEM[6][0] ), .D(\FIFO_MEM[7][0] ), .S0(n156), .S1(N10), .Y(n65)
         );
  MX2X2M U166 ( .A(n68), .B(n67), .S0(N11), .Y(r_data[1]) );
  MX4X1M U167 ( .A(\FIFO_MEM[0][1] ), .B(\FIFO_MEM[1][1] ), .C(
        \FIFO_MEM[2][1] ), .D(\FIFO_MEM[3][1] ), .S0(n157), .S1(N10), .Y(n68)
         );
  MX4X1M U168 ( .A(\FIFO_MEM[4][1] ), .B(\FIFO_MEM[5][1] ), .C(
        \FIFO_MEM[6][1] ), .D(\FIFO_MEM[7][1] ), .S0(n156), .S1(N10), .Y(n67)
         );
  MX2X2M U169 ( .A(n70), .B(n69), .S0(N11), .Y(r_data[2]) );
  MX4X1M U170 ( .A(\FIFO_MEM[0][2] ), .B(\FIFO_MEM[1][2] ), .C(
        \FIFO_MEM[2][2] ), .D(\FIFO_MEM[3][2] ), .S0(n157), .S1(N10), .Y(n70)
         );
  MX4X1M U171 ( .A(\FIFO_MEM[4][2] ), .B(\FIFO_MEM[5][2] ), .C(
        \FIFO_MEM[6][2] ), .D(\FIFO_MEM[7][2] ), .S0(n156), .S1(N10), .Y(n69)
         );
  MX2X2M U172 ( .A(n72), .B(n71), .S0(N11), .Y(r_data[3]) );
  MX4X1M U173 ( .A(\FIFO_MEM[0][3] ), .B(\FIFO_MEM[1][3] ), .C(
        \FIFO_MEM[2][3] ), .D(\FIFO_MEM[3][3] ), .S0(n157), .S1(N10), .Y(n72)
         );
  MX4X1M U174 ( .A(\FIFO_MEM[4][3] ), .B(\FIFO_MEM[5][3] ), .C(
        \FIFO_MEM[6][3] ), .D(\FIFO_MEM[7][3] ), .S0(n156), .S1(N10), .Y(n71)
         );
  MX2X2M U175 ( .A(n74), .B(n73), .S0(N11), .Y(r_data[4]) );
  MX4X1M U176 ( .A(\FIFO_MEM[0][4] ), .B(\FIFO_MEM[1][4] ), .C(
        \FIFO_MEM[2][4] ), .D(\FIFO_MEM[3][4] ), .S0(n157), .S1(N10), .Y(n74)
         );
  MX4X1M U177 ( .A(\FIFO_MEM[4][4] ), .B(\FIFO_MEM[5][4] ), .C(
        \FIFO_MEM[6][4] ), .D(\FIFO_MEM[7][4] ), .S0(n156), .S1(N10), .Y(n73)
         );
  MX2X2M U178 ( .A(n151), .B(n150), .S0(N11), .Y(r_data[5]) );
  MX4X1M U179 ( .A(\FIFO_MEM[0][5] ), .B(\FIFO_MEM[1][5] ), .C(
        \FIFO_MEM[2][5] ), .D(\FIFO_MEM[3][5] ), .S0(n157), .S1(N10), .Y(n151)
         );
  MX4X1M U180 ( .A(\FIFO_MEM[4][5] ), .B(\FIFO_MEM[5][5] ), .C(
        \FIFO_MEM[6][5] ), .D(\FIFO_MEM[7][5] ), .S0(n156), .S1(N10), .Y(n150)
         );
  MX2X2M U181 ( .A(n153), .B(n152), .S0(N11), .Y(r_data[6]) );
  MX4X1M U182 ( .A(\FIFO_MEM[0][6] ), .B(\FIFO_MEM[1][6] ), .C(
        \FIFO_MEM[2][6] ), .D(\FIFO_MEM[3][6] ), .S0(n157), .S1(N10), .Y(n153)
         );
  MX4X1M U183 ( .A(\FIFO_MEM[4][6] ), .B(\FIFO_MEM[5][6] ), .C(
        \FIFO_MEM[6][6] ), .D(\FIFO_MEM[7][6] ), .S0(n156), .S1(N10), .Y(n152)
         );
  MX2X2M U184 ( .A(n155), .B(n154), .S0(N11), .Y(r_data[7]) );
  MX4X1M U185 ( .A(\FIFO_MEM[0][7] ), .B(\FIFO_MEM[1][7] ), .C(
        \FIFO_MEM[2][7] ), .D(\FIFO_MEM[3][7] ), .S0(n157), .S1(N10), .Y(n155)
         );
  MX4X1M U186 ( .A(\FIFO_MEM[4][7] ), .B(\FIFO_MEM[5][7] ), .C(
        \FIFO_MEM[6][7] ), .D(\FIFO_MEM[7][7] ), .S0(n156), .S1(N10), .Y(n154)
         );
  BUFX2M U187 ( .A(N9), .Y(n156) );
  BUFX2M U188 ( .A(N9), .Y(n157) );
endmodule


module fifo_rd_P_SIZE4_test_1 ( r_clk, r_rstn, r_inc, sync_wr_ptr, rd_addr, 
        empty, gray_rd_ptr, test_si, test_so, test_se );
  input [3:0] sync_wr_ptr;
  output [2:0] rd_addr;
  output [3:0] gray_rd_ptr;
  input r_clk, r_rstn, r_inc, test_si, test_se;
  output empty, test_so;
  wire   N89, N90, N91, N92, n15, n16, n17, n18, n19, n20, n21, n22, n23, n24,
         n25, n26, n27, n28, n1, n2, n11, n12;
  assign test_so = N92;

  SDFFRQX2M \gray_rd_ptr_reg[1]  ( .D(N90), .SI(gray_rd_ptr[0]), .SE(test_se), 
        .CK(r_clk), .RN(r_rstn), .Q(gray_rd_ptr[1]) );
  SDFFRQX2M \rd_ptr_reg[3]  ( .D(n25), .SI(n11), .SE(test_se), .CK(r_clk), 
        .RN(r_rstn), .Q(N92) );
  SDFFRQX2M \rd_ptr_reg[0]  ( .D(n28), .SI(gray_rd_ptr[3]), .SE(test_se), .CK(
        r_clk), .RN(r_rstn), .Q(rd_addr[0]) );
  SDFFRQX2M \rd_ptr_reg[2]  ( .D(n26), .SI(rd_addr[1]), .SE(test_se), .CK(
        r_clk), .RN(r_rstn), .Q(rd_addr[2]) );
  SDFFRQX2M \gray_rd_ptr_reg[0]  ( .D(N89), .SI(test_si), .SE(test_se), .CK(
        r_clk), .RN(r_rstn), .Q(gray_rd_ptr[0]) );
  SDFFRQX2M \gray_rd_ptr_reg[3]  ( .D(N92), .SI(gray_rd_ptr[2]), .SE(test_se), 
        .CK(r_clk), .RN(r_rstn), .Q(gray_rd_ptr[3]) );
  SDFFRQX2M \gray_rd_ptr_reg[2]  ( .D(N91), .SI(gray_rd_ptr[1]), .SE(test_se), 
        .CK(r_clk), .RN(r_rstn), .Q(gray_rd_ptr[2]) );
  SDFFRQX2M \rd_ptr_reg[1]  ( .D(n27), .SI(n2), .SE(test_se), .CK(r_clk), .RN(
        r_rstn), .Q(rd_addr[1]) );
  INVX2M U11 ( .A(n20), .Y(empty) );
  NOR2X2M U12 ( .A(n2), .B(n19), .Y(n18) );
  XNOR2X2M U13 ( .A(sync_wr_ptr[2]), .B(gray_rd_ptr[2]), .Y(n24) );
  NAND4X2M U14 ( .A(n21), .B(n22), .C(n23), .D(n24), .Y(n20) );
  XNOR2X2M U15 ( .A(sync_wr_ptr[1]), .B(gray_rd_ptr[1]), .Y(n21) );
  XNOR2X2M U16 ( .A(sync_wr_ptr[0]), .B(gray_rd_ptr[0]), .Y(n22) );
  XNOR2X2M U17 ( .A(sync_wr_ptr[3]), .B(gray_rd_ptr[3]), .Y(n23) );
  XNOR2X2M U18 ( .A(n11), .B(rd_addr[1]), .Y(N90) );
  XNOR2X2M U19 ( .A(rd_addr[2]), .B(n17), .Y(n26) );
  XNOR2X2M U20 ( .A(rd_addr[1]), .B(n2), .Y(N89) );
  XNOR2X2M U21 ( .A(rd_addr[0]), .B(n19), .Y(n28) );
  OAI211X2M U22 ( .A0(n1), .A1(n12), .B0(n15), .C0(n16), .Y(n25) );
  NAND3X2M U23 ( .A(n1), .B(n12), .C(rd_addr[2]), .Y(n15) );
  INVX2M U24 ( .A(N92), .Y(n12) );
  INVX2M U25 ( .A(n17), .Y(n1) );
  NAND2X2M U26 ( .A(rd_addr[1]), .B(n18), .Y(n17) );
  OAI21X2M U27 ( .A0(N92), .A1(n11), .B0(n16), .Y(N91) );
  INVX2M U28 ( .A(rd_addr[2]), .Y(n11) );
  NAND2X2M U29 ( .A(r_inc), .B(n20), .Y(n19) );
  NAND2X2M U30 ( .A(N92), .B(n11), .Y(n16) );
  INVX2M U31 ( .A(rd_addr[0]), .Y(n2) );
  CLKXOR2X2M U32 ( .A(rd_addr[1]), .B(n18), .Y(n27) );
endmodule


module BIT_SYNC_NUM_STAGES2_BUS_WIDTH4_test_1 ( CLK, RST, ASYNC, SYNC, test_si, 
        test_se );
  input [3:0] ASYNC;
  output [3:0] SYNC;
  input CLK, RST, test_si, test_se;
  wire   \sync_reg[3][0] , \sync_reg[2][0] , \sync_reg[1][0] ,
         \sync_reg[0][0] ;

  SDFFRQX2M \sync_reg_reg[3][1]  ( .D(\sync_reg[3][0] ), .SI(\sync_reg[3][0] ), 
        .SE(test_se), .CK(CLK), .RN(RST), .Q(SYNC[3]) );
  SDFFRQX2M \sync_reg_reg[2][1]  ( .D(\sync_reg[2][0] ), .SI(\sync_reg[2][0] ), 
        .SE(test_se), .CK(CLK), .RN(RST), .Q(SYNC[2]) );
  SDFFRQX2M \sync_reg_reg[1][1]  ( .D(\sync_reg[1][0] ), .SI(\sync_reg[1][0] ), 
        .SE(test_se), .CK(CLK), .RN(RST), .Q(SYNC[1]) );
  SDFFRQX2M \sync_reg_reg[0][1]  ( .D(\sync_reg[0][0] ), .SI(\sync_reg[0][0] ), 
        .SE(test_se), .CK(CLK), .RN(RST), .Q(SYNC[0]) );
  SDFFRQX2M \sync_reg_reg[3][0]  ( .D(ASYNC[3]), .SI(SYNC[2]), .SE(test_se), 
        .CK(CLK), .RN(RST), .Q(\sync_reg[3][0] ) );
  SDFFRQX2M \sync_reg_reg[2][0]  ( .D(ASYNC[2]), .SI(SYNC[1]), .SE(test_se), 
        .CK(CLK), .RN(RST), .Q(\sync_reg[2][0] ) );
  SDFFRQX2M \sync_reg_reg[1][0]  ( .D(ASYNC[1]), .SI(SYNC[0]), .SE(test_se), 
        .CK(CLK), .RN(RST), .Q(\sync_reg[1][0] ) );
  SDFFRQX2M \sync_reg_reg[0][0]  ( .D(ASYNC[0]), .SI(test_si), .SE(test_se), 
        .CK(CLK), .RN(RST), .Q(\sync_reg[0][0] ) );
endmodule


module fifo_wr_P_SIZE4_test_1 ( w_clk, w_rstn, w_inc, sync_rd_ptr, w_addr, 
        gray_w_ptr, full, test_si, test_so, test_se );
  input [3:0] sync_rd_ptr;
  output [2:0] w_addr;
  output [3:0] gray_w_ptr;
  input w_clk, w_rstn, w_inc, test_si, test_se;
  output full, test_so;
  wire   N89, N90, N91, N92, n3, n4, n5, n7, n8, n9, n10, n11, n12, n16, n19,
         n21, n23, n1;
  assign test_so = N92;

  SDFFRQX2M \w_ptr_reg[3]  ( .D(n16), .SI(w_addr[2]), .SE(test_se), .CK(w_clk), 
        .RN(w_rstn), .Q(N92) );
  SDFFRQX2M \w_ptr_reg[2]  ( .D(n19), .SI(w_addr[1]), .SE(test_se), .CK(w_clk), 
        .RN(w_rstn), .Q(w_addr[2]) );
  SDFFRQX2M \w_ptr_reg[0]  ( .D(n23), .SI(gray_w_ptr[3]), .SE(test_se), .CK(
        w_clk), .RN(w_rstn), .Q(w_addr[0]) );
  SDFFRQX2M \gray_w_ptr_reg[0]  ( .D(N89), .SI(test_si), .SE(test_se), .CK(
        w_clk), .RN(w_rstn), .Q(gray_w_ptr[0]) );
  SDFFRQX2M \gray_w_ptr_reg[1]  ( .D(N90), .SI(gray_w_ptr[0]), .SE(test_se), 
        .CK(w_clk), .RN(w_rstn), .Q(gray_w_ptr[1]) );
  SDFFRQX2M \gray_w_ptr_reg[3]  ( .D(N92), .SI(gray_w_ptr[2]), .SE(test_se), 
        .CK(w_clk), .RN(w_rstn), .Q(gray_w_ptr[3]) );
  SDFFRQX2M \gray_w_ptr_reg[2]  ( .D(N91), .SI(gray_w_ptr[1]), .SE(test_se), 
        .CK(w_clk), .RN(w_rstn), .Q(gray_w_ptr[2]) );
  SDFFRQX2M \w_ptr_reg[1]  ( .D(n21), .SI(n1), .SE(test_se), .CK(w_clk), .RN(
        w_rstn), .Q(w_addr[1]) );
  NOR2X2M U3 ( .A(n1), .B(n7), .Y(n5) );
  NAND2X2M U4 ( .A(w_inc), .B(n8), .Y(n7) );
  INVX2M U5 ( .A(n8), .Y(full) );
  XNOR2X2M U6 ( .A(w_addr[2]), .B(n4), .Y(n19) );
  XNOR2X2M U7 ( .A(w_addr[0]), .B(n7), .Y(n23) );
  XNOR2X2M U8 ( .A(N92), .B(n3), .Y(n16) );
  NAND2BX2M U9 ( .AN(n4), .B(w_addr[2]), .Y(n3) );
  NAND4X2M U10 ( .A(n9), .B(n10), .C(n11), .D(n12), .Y(n8) );
  XNOR2X2M U11 ( .A(sync_rd_ptr[0]), .B(gray_w_ptr[0]), .Y(n9) );
  XNOR2X2M U12 ( .A(sync_rd_ptr[1]), .B(gray_w_ptr[1]), .Y(n10) );
  CLKXOR2X2M U13 ( .A(sync_rd_ptr[2]), .B(gray_w_ptr[2]), .Y(n11) );
  NAND2X2M U14 ( .A(w_addr[1]), .B(n5), .Y(n4) );
  CLKXOR2X2M U15 ( .A(sync_rd_ptr[3]), .B(gray_w_ptr[3]), .Y(n12) );
  CLKXOR2X2M U16 ( .A(w_addr[1]), .B(n5), .Y(n21) );
  XNOR2X2M U17 ( .A(w_addr[1]), .B(n1), .Y(N89) );
  INVX2M U18 ( .A(w_addr[0]), .Y(n1) );
  CLKXOR2X2M U19 ( .A(w_addr[2]), .B(w_addr[1]), .Y(N90) );
  CLKXOR2X2M U20 ( .A(w_addr[2]), .B(N92), .Y(N91) );
endmodule


module BIT_SYNC_NUM_STAGES2_BUS_WIDTH4_test_0 ( CLK, RST, ASYNC, SYNC, test_si, 
        test_se );
  input [3:0] ASYNC;
  output [3:0] SYNC;
  input CLK, RST, test_si, test_se;
  wire   \sync_reg[3][0] , \sync_reg[2][0] , \sync_reg[1][0] ,
         \sync_reg[0][0] ;

  SDFFRQX2M \sync_reg_reg[1][1]  ( .D(\sync_reg[1][0] ), .SI(\sync_reg[1][0] ), 
        .SE(test_se), .CK(CLK), .RN(RST), .Q(SYNC[1]) );
  SDFFRQX2M \sync_reg_reg[0][1]  ( .D(\sync_reg[0][0] ), .SI(\sync_reg[0][0] ), 
        .SE(test_se), .CK(CLK), .RN(RST), .Q(SYNC[0]) );
  SDFFRQX2M \sync_reg_reg[3][1]  ( .D(\sync_reg[3][0] ), .SI(\sync_reg[3][0] ), 
        .SE(test_se), .CK(CLK), .RN(RST), .Q(SYNC[3]) );
  SDFFRQX2M \sync_reg_reg[2][1]  ( .D(\sync_reg[2][0] ), .SI(\sync_reg[2][0] ), 
        .SE(test_se), .CK(CLK), .RN(RST), .Q(SYNC[2]) );
  SDFFRQX2M \sync_reg_reg[3][0]  ( .D(ASYNC[3]), .SI(SYNC[2]), .SE(test_se), 
        .CK(CLK), .RN(RST), .Q(\sync_reg[3][0] ) );
  SDFFRQX2M \sync_reg_reg[2][0]  ( .D(ASYNC[2]), .SI(SYNC[1]), .SE(test_se), 
        .CK(CLK), .RN(RST), .Q(\sync_reg[2][0] ) );
  SDFFRQX2M \sync_reg_reg[1][0]  ( .D(ASYNC[1]), .SI(SYNC[0]), .SE(test_se), 
        .CK(CLK), .RN(RST), .Q(\sync_reg[1][0] ) );
  SDFFRQX2M \sync_reg_reg[0][0]  ( .D(ASYNC[0]), .SI(test_si), .SE(test_se), 
        .CK(CLK), .RN(RST), .Q(\sync_reg[0][0] ) );
endmodule


module Async_fifo_D_SIZE8_F_DEPTH8_P_SIZE4_test_1 ( i_w_clk, i_w_rstn, i_w_inc, 
        i_r_clk, i_r_rstn, i_r_inc, i_w_data, o_r_data, o_full, o_empty, 
        test_si2, test_si1, test_so2, test_so1, test_se );
  input [7:0] i_w_data;
  output [7:0] o_r_data;
  input i_w_clk, i_w_rstn, i_w_inc, i_r_clk, i_r_rstn, i_r_inc, test_si2,
         test_si1, test_se;
  output o_full, o_empty, test_so2, test_so1;
  wire   n1, n2, n3, n4, n5;
  wire   [2:0] w_addr;
  wire   [2:0] r_addr;
  wire   [3:0] w2r_ptr;
  wire   [3:0] gray_rd_ptr;
  wire   [3:0] gray_w_ptr;
  wire   [3:0] r2w_ptr;
  assign test_so2 = w2r_ptr[3];

  INVX2M U1 ( .A(n2), .Y(n1) );
  INVX2M U2 ( .A(i_w_rstn), .Y(n2) );
  fifo_mem_D_SIZE8_F_DEPTH8_P_SIZE4_test_1 u_fifo_mem ( .w_clk(i_w_clk), 
        .w_rstn(n1), .w_full(o_full), .w_inc(i_w_inc), .w_addr(w_addr), 
        .r_addr(r_addr), .w_data(i_w_data), .r_data(o_r_data), .test_si2(
        test_si2), .test_si1(test_si1), .test_so2(n5), .test_so1(test_so1), 
        .test_se(test_se) );
  fifo_rd_P_SIZE4_test_1 u_fifo_rd ( .r_clk(i_r_clk), .r_rstn(i_r_rstn), 
        .r_inc(i_r_inc), .sync_wr_ptr(w2r_ptr), .rd_addr(r_addr), .empty(
        o_empty), .gray_rd_ptr(gray_rd_ptr), .test_si(n5), .test_so(n4), 
        .test_se(test_se) );
  BIT_SYNC_NUM_STAGES2_BUS_WIDTH4_test_1 u_w2r_sync ( .CLK(i_r_clk), .RST(
        i_r_rstn), .ASYNC(gray_w_ptr), .SYNC(w2r_ptr), .test_si(r2w_ptr[3]), 
        .test_se(test_se) );
  fifo_wr_P_SIZE4_test_1 u_fifo_wr ( .w_clk(i_w_clk), .w_rstn(n1), .w_inc(
        i_w_inc), .sync_rd_ptr(r2w_ptr), .w_addr(w_addr), .gray_w_ptr(
        gray_w_ptr), .full(o_full), .test_si(n4), .test_so(n3), .test_se(
        test_se) );
  BIT_SYNC_NUM_STAGES2_BUS_WIDTH4_test_0 u_r2w_sync ( .CLK(i_w_clk), .RST(n1), 
        .ASYNC(gray_rd_ptr), .SYNC(r2w_ptr), .test_si(n3), .test_se(test_se)
         );
endmodule


module PULSE_GEN_test_1 ( clk, rst, lvl_sig, pulse_sig, test_si, test_so, 
        test_se );
  input clk, rst, lvl_sig, test_si, test_se;
  output pulse_sig, test_so;
  wire   pls_flop, rcv_flop;
  assign test_so = rcv_flop;

  SDFFRQX2M rcv_flop_reg ( .D(lvl_sig), .SI(pls_flop), .SE(test_se), .CK(clk), 
        .RN(rst), .Q(rcv_flop) );
  SDFFRQX2M pls_flop_reg ( .D(rcv_flop), .SI(test_si), .SE(test_se), .CK(clk), 
        .RN(rst), .Q(pls_flop) );
  NOR2BX2M U5 ( .AN(rcv_flop), .B(pls_flop), .Y(pulse_sig) );
endmodule


module ClkDiv_0_DW01_inc_0 ( A, SUM );
  input [6:0] A;
  output [6:0] SUM;

  wire   [6:2] carry;

  ADDHX1M U1_1_5 ( .A(A[5]), .B(carry[5]), .CO(carry[6]), .S(SUM[5]) );
  ADDHX1M U1_1_4 ( .A(A[4]), .B(carry[4]), .CO(carry[5]), .S(SUM[4]) );
  ADDHX1M U1_1_3 ( .A(A[3]), .B(carry[3]), .CO(carry[4]), .S(SUM[3]) );
  ADDHX1M U1_1_2 ( .A(A[2]), .B(carry[2]), .CO(carry[3]), .S(SUM[2]) );
  ADDHX1M U1_1_1 ( .A(A[1]), .B(A[0]), .CO(carry[2]), .S(SUM[1]) );
  CLKXOR2X2M U1 ( .A(carry[6]), .B(A[6]), .Y(SUM[6]) );
  CLKINVX1M U2 ( .A(A[0]), .Y(SUM[0]) );
endmodule


module ClkDiv_test_0 ( i_ref_clk, i_rst, i_clk_en, i_div_ratio, o_div_clk, 
        test_si, test_so, test_se );
  input [7:0] i_div_ratio;
  input i_ref_clk, i_rst, i_clk_en, test_si, test_se;
  output o_div_clk, test_so;
  wire   N2, div_clk, odd_edge_tog, N16, N17, N18, N19, N20, N21, N22, n26,
         n27, n28, n29, n30, n31, n32, n33, n34, n1, n2, n3, n4, n5, n15, n16,
         n17, n18, n19, n20, n21, n22, n23, n24, n25, n35, n36, n37, n38, n39,
         n40, n41, n42, n43, n44, n45, n46, n47, n48, n49, n50, n51;
  wire   [6:0] count;
  wire   [6:0] edge_flip_half;
  assign test_so = odd_edge_tog;

  SDFFRQX2M div_clk_reg ( .D(n27), .SI(count[6]), .SE(test_se), .CK(i_ref_clk), 
        .RN(i_rst), .Q(div_clk) );
  SDFFSQX2M odd_edge_tog_reg ( .D(n26), .SI(div_clk), .SE(test_se), .CK(
        i_ref_clk), .SN(i_rst), .Q(odd_edge_tog) );
  SDFFRQX2M \count_reg[6]  ( .D(n28), .SI(count[5]), .SE(test_se), .CK(
        i_ref_clk), .RN(i_rst), .Q(count[6]) );
  SDFFRQX2M \count_reg[0]  ( .D(n34), .SI(test_si), .SE(test_se), .CK(
        i_ref_clk), .RN(i_rst), .Q(count[0]) );
  SDFFRQX2M \count_reg[5]  ( .D(n29), .SI(count[4]), .SE(test_se), .CK(
        i_ref_clk), .RN(i_rst), .Q(count[5]) );
  SDFFRQX2M \count_reg[4]  ( .D(n30), .SI(count[3]), .SE(test_se), .CK(
        i_ref_clk), .RN(i_rst), .Q(count[4]) );
  SDFFRQX2M \count_reg[3]  ( .D(n31), .SI(count[2]), .SE(test_se), .CK(
        i_ref_clk), .RN(i_rst), .Q(count[3]) );
  SDFFRQX2M \count_reg[2]  ( .D(n32), .SI(count[1]), .SE(test_se), .CK(
        i_ref_clk), .RN(i_rst), .Q(count[2]) );
  SDFFRQX2M \count_reg[1]  ( .D(n33), .SI(count[0]), .SE(test_se), .CK(
        i_ref_clk), .RN(i_rst), .Q(count[1]) );
  OR2X2M U5 ( .A(i_div_ratio[2]), .B(i_div_ratio[1]), .Y(n1) );
  NAND2BX2M U6 ( .AN(n50), .B(i_clk_en), .Y(n16) );
  INVX2M U11 ( .A(i_div_ratio[5]), .Y(n15) );
  MX2X2M U15 ( .A(i_ref_clk), .B(div_clk), .S0(N2), .Y(o_div_clk) );
  CLKINVX1M U16 ( .A(i_div_ratio[1]), .Y(edge_flip_half[0]) );
  OAI2BB1X1M U17 ( .A0N(i_div_ratio[1]), .A1N(i_div_ratio[2]), .B0(n1), .Y(
        edge_flip_half[1]) );
  OR2X1M U18 ( .A(n1), .B(i_div_ratio[3]), .Y(n2) );
  OAI2BB1X1M U19 ( .A0N(n1), .A1N(i_div_ratio[3]), .B0(n2), .Y(
        edge_flip_half[2]) );
  NOR2X1M U20 ( .A(n2), .B(i_div_ratio[4]), .Y(n3) );
  AO21XLM U21 ( .A0(n2), .A1(i_div_ratio[4]), .B0(n3), .Y(edge_flip_half[3])
         );
  CLKNAND2X2M U22 ( .A(n3), .B(n15), .Y(n4) );
  OAI21X1M U23 ( .A0(n3), .A1(n15), .B0(n4), .Y(edge_flip_half[4]) );
  XNOR2X1M U24 ( .A(i_div_ratio[6]), .B(n4), .Y(edge_flip_half[5]) );
  NOR2X1M U25 ( .A(i_div_ratio[6]), .B(n4), .Y(n5) );
  CLKXOR2X2M U26 ( .A(i_div_ratio[7]), .B(n5), .Y(edge_flip_half[6]) );
  AO22X1M U27 ( .A0(n16), .A1(count[0]), .B0(N16), .B1(n17), .Y(n34) );
  AO22X1M U28 ( .A0(n16), .A1(count[1]), .B0(N17), .B1(n17), .Y(n33) );
  AO22X1M U29 ( .A0(n16), .A1(count[2]), .B0(N18), .B1(n17), .Y(n32) );
  AO22X1M U30 ( .A0(n16), .A1(count[3]), .B0(N19), .B1(n17), .Y(n31) );
  AO22X1M U31 ( .A0(n16), .A1(count[4]), .B0(N20), .B1(n17), .Y(n30) );
  AO22X1M U32 ( .A0(n16), .A1(count[5]), .B0(N21), .B1(n17), .Y(n29) );
  AO22X1M U33 ( .A0(n16), .A1(count[6]), .B0(N22), .B1(n17), .Y(n28) );
  AND3X1M U34 ( .A(n18), .B(n19), .C(N2), .Y(n17) );
  CLKXOR2X2M U35 ( .A(div_clk), .B(n20), .Y(n27) );
  AOI21X1M U36 ( .A0(n19), .A1(n18), .B0(n16), .Y(n20) );
  OR2X1M U37 ( .A(n21), .B(i_div_ratio[0]), .Y(n18) );
  XNOR2X1M U38 ( .A(odd_edge_tog), .B(n22), .Y(n26) );
  OR2X1M U39 ( .A(n19), .B(n16), .Y(n22) );
  CLKNAND2X2M U40 ( .A(n23), .B(i_div_ratio[0]), .Y(n19) );
  MXI2X1M U41 ( .A(n24), .B(n21), .S0(odd_edge_tog), .Y(n23) );
  NAND4X1M U42 ( .A(n25), .B(n35), .C(n36), .D(n37), .Y(n21) );
  NOR4X1M U43 ( .A(n38), .B(n39), .C(n40), .D(n41), .Y(n37) );
  CLKXOR2X2M U44 ( .A(edge_flip_half[2]), .B(count[2]), .Y(n41) );
  CLKXOR2X2M U45 ( .A(edge_flip_half[1]), .B(count[1]), .Y(n40) );
  CLKXOR2X2M U46 ( .A(edge_flip_half[0]), .B(count[0]), .Y(n39) );
  CLKXOR2X2M U47 ( .A(edge_flip_half[6]), .B(count[6]), .Y(n38) );
  XNOR2X1M U48 ( .A(count[4]), .B(edge_flip_half[4]), .Y(n36) );
  XNOR2X1M U49 ( .A(count[5]), .B(edge_flip_half[5]), .Y(n35) );
  XNOR2X1M U50 ( .A(count[3]), .B(edge_flip_half[3]), .Y(n25) );
  NAND4X1M U51 ( .A(n42), .B(n43), .C(n44), .D(n45), .Y(n24) );
  NOR4X1M U52 ( .A(n46), .B(n47), .C(n48), .D(n49), .Y(n45) );
  CLKXOR2X2M U53 ( .A(i_div_ratio[3]), .B(count[2]), .Y(n49) );
  CLKXOR2X2M U54 ( .A(i_div_ratio[2]), .B(count[1]), .Y(n48) );
  CLKXOR2X2M U55 ( .A(i_div_ratio[1]), .B(count[0]), .Y(n47) );
  CLKXOR2X2M U56 ( .A(i_div_ratio[7]), .B(count[6]), .Y(n46) );
  XNOR2X1M U57 ( .A(count[4]), .B(i_div_ratio[5]), .Y(n44) );
  XNOR2X1M U58 ( .A(count[5]), .B(i_div_ratio[6]), .Y(n43) );
  XNOR2X1M U59 ( .A(count[3]), .B(i_div_ratio[4]), .Y(n42) );
  CLKINVX1M U60 ( .A(n16), .Y(N2) );
  NOR4BX1M U61 ( .AN(n51), .B(i_div_ratio[2]), .C(i_div_ratio[3]), .D(
        i_div_ratio[1]), .Y(n50) );
  NOR4X1M U62 ( .A(i_div_ratio[7]), .B(i_div_ratio[6]), .C(i_div_ratio[5]), 
        .D(i_div_ratio[4]), .Y(n51) );
  ClkDiv_0_DW01_inc_0 add_49 ( .A(count), .SUM({N22, N21, N20, N19, N18, N17, 
        N16}) );
endmodule


module CLKDIV_MUX ( IN, OUT );
  input [5:0] IN;
  output [7:0] OUT;
  wire   n5, n6, n7, n8, n9, n14, n15, n16, n17;

  NAND4BX1M U11 ( .AN(IN[4]), .B(IN[3]), .C(n15), .D(n14), .Y(n6) );
  NAND4BX1M U12 ( .AN(IN[3]), .B(IN[4]), .C(n15), .D(n14), .Y(n7) );
  NOR3X2M U13 ( .A(n7), .B(IN[1]), .C(IN[0]), .Y(OUT[1]) );
  NOR3X2M U14 ( .A(n6), .B(IN[1]), .C(IN[0]), .Y(OUT[2]) );
  INVX2M U15 ( .A(IN[2]), .Y(n15) );
  INVX2M U16 ( .A(IN[5]), .Y(n14) );
  NOR4X1M U17 ( .A(n5), .B(IN[3]), .C(IN[5]), .D(IN[4]), .Y(OUT[3]) );
  NAND3X2M U18 ( .A(n17), .B(n16), .C(IN[2]), .Y(n5) );
  INVX2M U19 ( .A(IN[0]), .Y(n17) );
  INVX2M U20 ( .A(IN[1]), .Y(n16) );
  OAI211X2M U21 ( .A0(n8), .A1(n9), .B0(n17), .C0(n16), .Y(OUT[0]) );
  NOR4X1M U22 ( .A(IN[5]), .B(IN[4]), .C(IN[3]), .D(n15), .Y(n8) );
  NAND2X2M U23 ( .A(n7), .B(n6), .Y(n9) );
  INVX2M U3 ( .A(1'b1), .Y(OUT[4]) );
  INVX2M U5 ( .A(1'b1), .Y(OUT[5]) );
  INVX2M U7 ( .A(1'b1), .Y(OUT[6]) );
  INVX2M U9 ( .A(1'b1), .Y(OUT[7]) );
endmodule


module ClkDiv_1_DW01_inc_0 ( A, SUM );
  input [6:0] A;
  output [6:0] SUM;

  wire   [6:2] carry;

  ADDHX1M U1_1_5 ( .A(A[5]), .B(carry[5]), .CO(carry[6]), .S(SUM[5]) );
  ADDHX1M U1_1_4 ( .A(A[4]), .B(carry[4]), .CO(carry[5]), .S(SUM[4]) );
  ADDHX1M U1_1_3 ( .A(A[3]), .B(carry[3]), .CO(carry[4]), .S(SUM[3]) );
  ADDHX1M U1_1_2 ( .A(A[2]), .B(carry[2]), .CO(carry[3]), .S(SUM[2]) );
  ADDHX1M U1_1_1 ( .A(A[1]), .B(A[0]), .CO(carry[2]), .S(SUM[1]) );
  CLKXOR2X2M U1 ( .A(carry[6]), .B(A[6]), .Y(SUM[6]) );
  CLKINVX1M U2 ( .A(A[0]), .Y(SUM[0]) );
endmodule


module ClkDiv_test_1 ( i_ref_clk, i_rst, i_clk_en, i_div_ratio, o_div_clk, 
        test_si, test_so, test_se );
  input [7:0] i_div_ratio;
  input i_ref_clk, i_rst, i_clk_en, test_si, test_se;
  output o_div_clk, test_so;
  wire   N2, div_clk, odd_edge_tog, N16, N17, N18, N19, N20, N21, N22, n2, n3,
         n4, n5, n15, n16, n17, n18, n19, n20, n21, n22, n23, n24, n25, n35,
         n36, n37, n38, n39, n40, n41, n42, n43, n44, n45, n46, n47, n48, n49,
         n50, n51, n52, n53, n54, n55, n56, n57, n58, n59, n60, n61;
  wire   [6:0] count;
  wire   [6:0] edge_flip_half;
  assign test_so = odd_edge_tog;

  SDFFRQX2M div_clk_reg ( .D(n60), .SI(count[6]), .SE(test_se), .CK(i_ref_clk), 
        .RN(i_rst), .Q(div_clk) );
  SDFFRQX2M \count_reg[6]  ( .D(n59), .SI(count[5]), .SE(test_se), .CK(
        i_ref_clk), .RN(i_rst), .Q(count[6]) );
  SDFFRQX2M \count_reg[0]  ( .D(n53), .SI(test_si), .SE(test_se), .CK(
        i_ref_clk), .RN(i_rst), .Q(count[0]) );
  SDFFRQX2M \count_reg[5]  ( .D(n58), .SI(count[4]), .SE(test_se), .CK(
        i_ref_clk), .RN(i_rst), .Q(count[5]) );
  SDFFRQX2M \count_reg[4]  ( .D(n57), .SI(count[3]), .SE(test_se), .CK(
        i_ref_clk), .RN(i_rst), .Q(count[4]) );
  SDFFRQX2M \count_reg[3]  ( .D(n56), .SI(count[2]), .SE(test_se), .CK(
        i_ref_clk), .RN(i_rst), .Q(count[3]) );
  SDFFRQX2M \count_reg[2]  ( .D(n55), .SI(count[1]), .SE(test_se), .CK(
        i_ref_clk), .RN(i_rst), .Q(count[2]) );
  SDFFRQX2M \count_reg[1]  ( .D(n54), .SI(count[0]), .SE(test_se), .CK(
        i_ref_clk), .RN(i_rst), .Q(count[1]) );
  SDFFSQX1M odd_edge_tog_reg ( .D(n61), .SI(div_clk), .SE(test_se), .CK(
        i_ref_clk), .SN(i_rst), .Q(odd_edge_tog) );
  OR2X2M U6 ( .A(i_div_ratio[2]), .B(i_div_ratio[1]), .Y(n2) );
  NAND2BX2M U11 ( .AN(n51), .B(i_clk_en), .Y(n17) );
  INVX2M U15 ( .A(i_div_ratio[5]), .Y(n16) );
  MX2X2M U16 ( .A(i_ref_clk), .B(div_clk), .S0(N2), .Y(o_div_clk) );
  CLKINVX1M U17 ( .A(i_div_ratio[1]), .Y(edge_flip_half[0]) );
  OAI2BB1X1M U18 ( .A0N(i_div_ratio[1]), .A1N(i_div_ratio[2]), .B0(n2), .Y(
        edge_flip_half[1]) );
  OR2X1M U19 ( .A(n2), .B(i_div_ratio[3]), .Y(n3) );
  OAI2BB1X1M U20 ( .A0N(n2), .A1N(i_div_ratio[3]), .B0(n3), .Y(
        edge_flip_half[2]) );
  NOR2X1M U21 ( .A(n3), .B(i_div_ratio[4]), .Y(n4) );
  AO21XLM U22 ( .A0(n3), .A1(i_div_ratio[4]), .B0(n4), .Y(edge_flip_half[3])
         );
  CLKNAND2X2M U23 ( .A(n4), .B(n16), .Y(n5) );
  OAI21X1M U24 ( .A0(n4), .A1(n16), .B0(n5), .Y(edge_flip_half[4]) );
  XNOR2X1M U25 ( .A(i_div_ratio[6]), .B(n5), .Y(edge_flip_half[5]) );
  NOR2X1M U26 ( .A(i_div_ratio[6]), .B(n5), .Y(n15) );
  CLKXOR2X2M U27 ( .A(i_div_ratio[7]), .B(n15), .Y(edge_flip_half[6]) );
  AO22X1M U28 ( .A0(n17), .A1(count[0]), .B0(N16), .B1(n18), .Y(n53) );
  AO22X1M U29 ( .A0(n17), .A1(count[1]), .B0(N17), .B1(n18), .Y(n54) );
  AO22X1M U30 ( .A0(n17), .A1(count[2]), .B0(N18), .B1(n18), .Y(n55) );
  AO22X1M U31 ( .A0(n17), .A1(count[3]), .B0(N19), .B1(n18), .Y(n56) );
  AO22X1M U32 ( .A0(n17), .A1(count[4]), .B0(N20), .B1(n18), .Y(n57) );
  AO22X1M U33 ( .A0(n17), .A1(count[5]), .B0(N21), .B1(n18), .Y(n58) );
  AO22X1M U34 ( .A0(n17), .A1(count[6]), .B0(N22), .B1(n18), .Y(n59) );
  AND3X1M U35 ( .A(n19), .B(n20), .C(N2), .Y(n18) );
  CLKXOR2X2M U36 ( .A(div_clk), .B(n21), .Y(n60) );
  AOI21X1M U37 ( .A0(n20), .A1(n19), .B0(n17), .Y(n21) );
  OR2X1M U38 ( .A(n22), .B(i_div_ratio[0]), .Y(n19) );
  XNOR2X1M U39 ( .A(odd_edge_tog), .B(n23), .Y(n61) );
  OR2X1M U40 ( .A(n20), .B(n17), .Y(n23) );
  CLKNAND2X2M U41 ( .A(n24), .B(i_div_ratio[0]), .Y(n20) );
  MXI2X1M U42 ( .A(n25), .B(n22), .S0(odd_edge_tog), .Y(n24) );
  NAND4X1M U43 ( .A(n35), .B(n36), .C(n37), .D(n38), .Y(n22) );
  NOR4X1M U44 ( .A(n39), .B(n40), .C(n41), .D(n42), .Y(n38) );
  CLKXOR2X2M U45 ( .A(edge_flip_half[2]), .B(count[2]), .Y(n42) );
  CLKXOR2X2M U46 ( .A(edge_flip_half[1]), .B(count[1]), .Y(n41) );
  CLKXOR2X2M U47 ( .A(edge_flip_half[0]), .B(count[0]), .Y(n40) );
  CLKXOR2X2M U48 ( .A(edge_flip_half[6]), .B(count[6]), .Y(n39) );
  XNOR2X1M U49 ( .A(count[4]), .B(edge_flip_half[4]), .Y(n37) );
  XNOR2X1M U50 ( .A(count[5]), .B(edge_flip_half[5]), .Y(n36) );
  XNOR2X1M U51 ( .A(count[3]), .B(edge_flip_half[3]), .Y(n35) );
  NAND4X1M U52 ( .A(n43), .B(n44), .C(n45), .D(n46), .Y(n25) );
  NOR4X1M U53 ( .A(n47), .B(n48), .C(n49), .D(n50), .Y(n46) );
  CLKXOR2X2M U54 ( .A(i_div_ratio[3]), .B(count[2]), .Y(n50) );
  CLKXOR2X2M U55 ( .A(i_div_ratio[2]), .B(count[1]), .Y(n49) );
  CLKXOR2X2M U56 ( .A(i_div_ratio[1]), .B(count[0]), .Y(n48) );
  CLKXOR2X2M U57 ( .A(i_div_ratio[7]), .B(count[6]), .Y(n47) );
  XNOR2X1M U58 ( .A(count[4]), .B(i_div_ratio[5]), .Y(n45) );
  XNOR2X1M U59 ( .A(count[5]), .B(i_div_ratio[6]), .Y(n44) );
  XNOR2X1M U60 ( .A(count[3]), .B(i_div_ratio[4]), .Y(n43) );
  CLKINVX1M U61 ( .A(n17), .Y(N2) );
  NOR4BX1M U62 ( .AN(n52), .B(i_div_ratio[2]), .C(i_div_ratio[3]), .D(
        i_div_ratio[1]), .Y(n51) );
  NOR4X1M U63 ( .A(i_div_ratio[7]), .B(i_div_ratio[6]), .C(i_div_ratio[5]), 
        .D(i_div_ratio[4]), .Y(n52) );
  ClkDiv_1_DW01_inc_0 add_49 ( .A(count), .SUM({N22, N21, N20, N19, N18, N17, 
        N16}) );
endmodule


module uart_tx_fsm_test_1 ( CLK, RST, Data_Valid, ser_done, parity_enable, 
        Ser_enable, mux_sel, busy, test_si, test_so, test_se );
  output [1:0] mux_sel;
  input CLK, RST, Data_Valid, ser_done, parity_enable, test_si, test_se;
  output Ser_enable, busy, test_so;
  wire   busy_c, n8, n9, n10, n11, n12, n13, n5, n6, n7;
  wire   [2:0] current_state;
  wire   [2:0] next_state;
  assign test_so = current_state[2];

  SDFFRQX2M busy_reg ( .D(busy_c), .SI(test_si), .SE(test_se), .CK(CLK), .RN(
        RST), .Q(busy) );
  SDFFRQX2M \current_state_reg[2]  ( .D(next_state[2]), .SI(n7), .SE(test_se), 
        .CK(CLK), .RN(RST), .Q(current_state[2]) );
  SDFFRQX2M \current_state_reg[1]  ( .D(next_state[1]), .SI(current_state[0]), 
        .SE(test_se), .CK(CLK), .RN(RST), .Q(current_state[1]) );
  SDFFRQX2M \current_state_reg[0]  ( .D(next_state[0]), .SI(busy), .SE(test_se), .CK(CLK), .RN(RST), .Q(current_state[0]) );
  INVX2M U7 ( .A(n13), .Y(n5) );
  NOR3X2M U8 ( .A(n9), .B(ser_done), .C(current_state[2]), .Y(Ser_enable) );
  OAI21X2M U9 ( .A0(current_state[1]), .A1(n6), .B0(n12), .Y(n13) );
  NAND2X2M U10 ( .A(current_state[1]), .B(n6), .Y(n12) );
  NAND2X2M U11 ( .A(n5), .B(current_state[0]), .Y(n9) );
  INVX2M U12 ( .A(current_state[0]), .Y(n6) );
  OAI2B2X1M U13 ( .A1N(current_state[2]), .A0(n12), .B0(current_state[2]), 
        .B1(n13), .Y(mux_sel[0]) );
  OAI21X2M U14 ( .A0(current_state[2]), .A1(current_state[0]), .B0(n12), .Y(
        mux_sel[1]) );
  NOR3X2M U15 ( .A(n7), .B(current_state[2]), .C(n8), .Y(next_state[2]) );
  AOI2B1X1M U16 ( .A1N(parity_enable), .A0(ser_done), .B0(n6), .Y(n8) );
  OAI21X2M U17 ( .A0(current_state[2]), .A1(n6), .B0(n12), .Y(busy_c) );
  AOI21X2M U18 ( .A0(n5), .A1(n9), .B0(current_state[2]), .Y(next_state[1]) );
  AOI21X2M U19 ( .A0(n10), .A1(n11), .B0(current_state[2]), .Y(next_state[0])
         );
  NAND2BX2M U20 ( .AN(ser_done), .B(current_state[0]), .Y(n10) );
  OAI21X2M U21 ( .A0(Data_Valid), .A1(current_state[0]), .B0(n7), .Y(n11) );
  INVX2M U22 ( .A(current_state[1]), .Y(n7) );
endmodule


module Serializer_WIDTH8_test_1 ( CLK, RST, DATA, Enable, Busy, Data_Valid, 
        ser_out, ser_done, test_si, test_so, test_se );
  input [7:0] DATA;
  input CLK, RST, Enable, Busy, Data_Valid, test_si, test_se;
  output ser_out, ser_done, test_so;
  wire   N23, N24, N25, n15, n16, n17, n18, n19, n20, n21, n22, n23, n24, n25,
         n26, n27, n28, n29, n30, n31, n32, n33, n34, n35, n12, n13, n14, n36;
  wire   [7:1] DATA_V;
  wire   [2:0] ser_count;
  assign test_so = n36;

  SDFFRQX2M \DATA_V_reg[6]  ( .D(n30), .SI(DATA_V[5]), .SE(test_se), .CK(CLK), 
        .RN(RST), .Q(DATA_V[6]) );
  SDFFRQX2M \DATA_V_reg[5]  ( .D(n31), .SI(DATA_V[4]), .SE(test_se), .CK(CLK), 
        .RN(RST), .Q(DATA_V[5]) );
  SDFFRQX2M \DATA_V_reg[4]  ( .D(n32), .SI(DATA_V[3]), .SE(test_se), .CK(CLK), 
        .RN(RST), .Q(DATA_V[4]) );
  SDFFRQX2M \DATA_V_reg[3]  ( .D(n33), .SI(DATA_V[2]), .SE(test_se), .CK(CLK), 
        .RN(RST), .Q(DATA_V[3]) );
  SDFFRQX2M \DATA_V_reg[2]  ( .D(n34), .SI(DATA_V[1]), .SE(test_se), .CK(CLK), 
        .RN(RST), .Q(DATA_V[2]) );
  SDFFRQX2M \DATA_V_reg[1]  ( .D(n35), .SI(ser_out), .SE(test_se), .CK(CLK), 
        .RN(RST), .Q(DATA_V[1]) );
  SDFFRQX2M \DATA_V_reg[7]  ( .D(n29), .SI(DATA_V[6]), .SE(test_se), .CK(CLK), 
        .RN(RST), .Q(DATA_V[7]) );
  SDFFRQX2M \DATA_V_reg[0]  ( .D(n28), .SI(test_si), .SE(test_se), .CK(CLK), 
        .RN(RST), .Q(ser_out) );
  SDFFRQX2M \ser_count_reg[2]  ( .D(N25), .SI(n14), .SE(test_se), .CK(CLK), 
        .RN(RST), .Q(ser_count[2]) );
  SDFFRQX2M \ser_count_reg[1]  ( .D(N24), .SI(ser_count[0]), .SE(test_se), 
        .CK(CLK), .RN(RST), .Q(ser_count[1]) );
  SDFFRQX2M \ser_count_reg[0]  ( .D(N23), .SI(DATA_V[7]), .SE(test_se), .CK(
        CLK), .RN(RST), .Q(ser_count[0]) );
  NOR2X2M U14 ( .A(n13), .B(n12), .Y(n17) );
  NOR2X2M U15 ( .A(n12), .B(n17), .Y(n15) );
  INVX2M U16 ( .A(Enable), .Y(n13) );
  OAI32X1M U17 ( .A0(n25), .A1(n14), .A2(n13), .B0(n26), .B1(n36), .Y(N25) );
  NAND2X2M U18 ( .A(ser_count[0]), .B(n36), .Y(n25) );
  AOI21X2M U19 ( .A0(Enable), .A1(n14), .B0(N23), .Y(n26) );
  INVX2M U20 ( .A(ser_count[2]), .Y(n36) );
  NOR2X2M U21 ( .A(n13), .B(ser_count[0]), .Y(N23) );
  BUFX2M U22 ( .A(n18), .Y(n12) );
  NOR2BX2M U23 ( .AN(Data_Valid), .B(Busy), .Y(n18) );
  OAI2BB1X2M U24 ( .A0N(ser_out), .A1N(n15), .B0(n16), .Y(n28) );
  AOI22X1M U25 ( .A0(DATA_V[1]), .A1(n17), .B0(DATA[0]), .B1(n12), .Y(n16) );
  OAI2BB1X2M U26 ( .A0N(DATA_V[1]), .A1N(n15), .B0(n24), .Y(n35) );
  AOI22X1M U27 ( .A0(DATA_V[2]), .A1(n17), .B0(DATA[1]), .B1(n12), .Y(n24) );
  OAI2BB1X2M U28 ( .A0N(n15), .A1N(DATA_V[2]), .B0(n23), .Y(n34) );
  AOI22X1M U29 ( .A0(DATA_V[3]), .A1(n17), .B0(DATA[2]), .B1(n12), .Y(n23) );
  OAI2BB1X2M U30 ( .A0N(n15), .A1N(DATA_V[3]), .B0(n22), .Y(n33) );
  AOI22X1M U31 ( .A0(DATA_V[4]), .A1(n17), .B0(DATA[3]), .B1(n12), .Y(n22) );
  OAI2BB1X2M U32 ( .A0N(n15), .A1N(DATA_V[4]), .B0(n21), .Y(n32) );
  AOI22X1M U33 ( .A0(DATA_V[5]), .A1(n17), .B0(DATA[4]), .B1(n12), .Y(n21) );
  OAI2BB1X2M U34 ( .A0N(n15), .A1N(DATA_V[5]), .B0(n20), .Y(n31) );
  AOI22X1M U35 ( .A0(DATA_V[6]), .A1(n17), .B0(DATA[5]), .B1(n12), .Y(n20) );
  OAI2BB1X2M U36 ( .A0N(n15), .A1N(DATA_V[6]), .B0(n19), .Y(n30) );
  AOI22X1M U37 ( .A0(DATA_V[7]), .A1(n17), .B0(DATA[6]), .B1(n12), .Y(n19) );
  AO22X1M U38 ( .A0(n15), .A1(DATA_V[7]), .B0(DATA[7]), .B1(n12), .Y(n29) );
  AND3X2M U39 ( .A(ser_count[0]), .B(ser_count[2]), .C(ser_count[1]), .Y(
        ser_done) );
  NOR2X2M U40 ( .A(n27), .B(n13), .Y(N24) );
  CLKXOR2X2M U41 ( .A(ser_count[0]), .B(n14), .Y(n27) );
  INVX2M U42 ( .A(ser_count[1]), .Y(n14) );
endmodule


module mux_test_1 ( CLK, RST, IN_0, IN_1, IN_2, IN_3, SEL, OUT, test_si, 
        test_se );
  input [1:0] SEL;
  input CLK, RST, IN_0, IN_1, IN_2, IN_3, test_si, test_se;
  output OUT;
  wire   mux_out, n3, n4, n5;

  SDFFRHQX8M OUT_reg ( .D(mux_out), .SI(test_si), .SE(test_se), .CK(CLK), .RN(
        RST), .Q(OUT) );
  INVX2M U5 ( .A(SEL[0]), .Y(n5) );
  OAI2B2X1M U6 ( .A1N(SEL[1]), .A0(n3), .B0(SEL[1]), .B1(n4), .Y(mux_out) );
  AOI22X1M U7 ( .A0(IN_0), .A1(n5), .B0(SEL[0]), .B1(IN_1), .Y(n4) );
  AOI22X1M U8 ( .A0(IN_2), .A1(n5), .B0(IN_3), .B1(SEL[0]), .Y(n3) );
endmodule


module parity_calc_WIDTH8_test_1 ( CLK, RST, parity_enable, parity_type, Busy, 
        DATA, Data_Valid, parity, test_si, test_se );
  input [7:0] DATA;
  input CLK, RST, parity_enable, parity_type, Busy, Data_Valid, test_si,
         test_se;
  output parity;
  wire   n1, n3, n4, n5, n6, n7, n9, n11, n13, n15, n17, n19, n21, n23, n25,
         n2;
  wire   [7:0] DATA_V;

  SDFFRQX2M \DATA_V_reg[5]  ( .D(n21), .SI(DATA_V[4]), .SE(test_se), .CK(CLK), 
        .RN(RST), .Q(DATA_V[5]) );
  SDFFRQX2M \DATA_V_reg[1]  ( .D(n13), .SI(DATA_V[0]), .SE(test_se), .CK(CLK), 
        .RN(RST), .Q(DATA_V[1]) );
  SDFFRQX2M \DATA_V_reg[4]  ( .D(n19), .SI(DATA_V[3]), .SE(test_se), .CK(CLK), 
        .RN(RST), .Q(DATA_V[4]) );
  SDFFRQX2M \DATA_V_reg[0]  ( .D(n11), .SI(test_si), .SE(test_se), .CK(CLK), 
        .RN(RST), .Q(DATA_V[0]) );
  SDFFRQX2M \DATA_V_reg[2]  ( .D(n15), .SI(DATA_V[1]), .SE(test_se), .CK(CLK), 
        .RN(RST), .Q(DATA_V[2]) );
  SDFFRQX2M parity_reg ( .D(n9), .SI(DATA_V[7]), .SE(test_se), .CK(CLK), .RN(
        RST), .Q(parity) );
  SDFFRQX2M \DATA_V_reg[3]  ( .D(n17), .SI(DATA_V[2]), .SE(test_se), .CK(CLK), 
        .RN(RST), .Q(DATA_V[3]) );
  SDFFRQX2M \DATA_V_reg[6]  ( .D(n23), .SI(DATA_V[5]), .SE(test_se), .CK(CLK), 
        .RN(RST), .Q(DATA_V[6]) );
  SDFFRQX2M \DATA_V_reg[7]  ( .D(n25), .SI(DATA_V[6]), .SE(test_se), .CK(CLK), 
        .RN(RST), .Q(DATA_V[7]) );
  NOR2BX2M U2 ( .AN(Data_Valid), .B(Busy), .Y(n7) );
  XNOR2X2M U3 ( .A(DATA_V[2]), .B(DATA_V[3]), .Y(n5) );
  XOR3XLM U4 ( .A(DATA_V[5]), .B(DATA_V[4]), .C(n6), .Y(n3) );
  CLKXOR2X2M U5 ( .A(DATA_V[7]), .B(DATA_V[6]), .Y(n6) );
  OAI2BB2X1M U6 ( .B0(n1), .B1(n2), .A0N(parity), .A1N(n2), .Y(n9) );
  INVX2M U7 ( .A(parity_enable), .Y(n2) );
  XOR3XLM U8 ( .A(n3), .B(parity_type), .C(n4), .Y(n1) );
  XOR3XLM U9 ( .A(DATA_V[1]), .B(DATA_V[0]), .C(n5), .Y(n4) );
  AO2B2X2M U10 ( .B0(DATA[0]), .B1(n7), .A0(DATA_V[0]), .A1N(n7), .Y(n11) );
  AO2B2X2M U11 ( .B0(DATA[1]), .B1(n7), .A0(DATA_V[1]), .A1N(n7), .Y(n13) );
  AO2B2X2M U12 ( .B0(DATA[2]), .B1(n7), .A0(DATA_V[2]), .A1N(n7), .Y(n15) );
  AO2B2X2M U13 ( .B0(DATA[3]), .B1(n7), .A0(DATA_V[3]), .A1N(n7), .Y(n17) );
  AO2B2X2M U14 ( .B0(DATA[4]), .B1(n7), .A0(DATA_V[4]), .A1N(n7), .Y(n19) );
  AO2B2X2M U15 ( .B0(DATA[5]), .B1(n7), .A0(DATA_V[5]), .A1N(n7), .Y(n21) );
  AO2B2X2M U16 ( .B0(DATA[6]), .B1(n7), .A0(DATA_V[6]), .A1N(n7), .Y(n23) );
  AO2B2X2M U17 ( .B0(DATA[7]), .B1(n7), .A0(DATA_V[7]), .A1N(n7), .Y(n25) );
endmodule


module UART_TX_DATA_WIDTH8_test_1 ( CLK, RST, P_DATA, Data_Valid, 
        parity_enable, parity_type, TX_OUT, busy, test_si2, test_si1, test_so1, 
        test_se );
  input [7:0] P_DATA;
  input CLK, RST, Data_Valid, parity_enable, parity_type, test_si2, test_si1,
         test_se;
  output TX_OUT, busy, test_so1;
  wire   seriz_done, seriz_en, ser_data, parity, n1, n2, n3, n4;
  wire   [1:0] mux_sel;
  assign test_so1 = parity;

  INVX2M U3 ( .A(n2), .Y(n1) );
  INVX2M U4 ( .A(RST), .Y(n2) );
  uart_tx_fsm_test_1 U0_fsm ( .CLK(CLK), .RST(n1), .Data_Valid(Data_Valid), 
        .ser_done(seriz_done), .parity_enable(parity_enable), .Ser_enable(
        seriz_en), .mux_sel(mux_sel), .busy(busy), .test_si(n4), .test_so(n3), 
        .test_se(test_se) );
  Serializer_WIDTH8_test_1 U0_Serializer ( .CLK(CLK), .RST(n1), .DATA(P_DATA), 
        .Enable(seriz_en), .Busy(busy), .Data_Valid(Data_Valid), .ser_out(
        ser_data), .ser_done(seriz_done), .test_si(test_si1), .test_so(n4), 
        .test_se(test_se) );
  mux_test_1 U0_mux ( .CLK(CLK), .RST(n1), .IN_0(1'b0), .IN_1(ser_data), 
        .IN_2(parity), .IN_3(1'b1), .SEL(mux_sel), .OUT(TX_OUT), .test_si(
        test_si2), .test_se(test_se) );
  parity_calc_WIDTH8_test_1 U0_parity_calc ( .CLK(CLK), .RST(n1), 
        .parity_enable(parity_enable), .parity_type(parity_type), .Busy(busy), 
        .DATA(P_DATA), .Data_Valid(Data_Valid), .parity(parity), .test_si(n3), 
        .test_se(test_se) );
endmodule


module uart_rx_fsm_DATA_WIDTH8_test_1 ( CLK, RST, S_DATA, Prescale, 
        parity_enable, bit_count, edge_count, par_err, stp_err, strt_glitch, 
        strt_chk_en, edge_bit_en, deser_en, par_chk_en, stp_chk_en, 
        dat_samp_en, data_valid, test_so, test_se );
  input [5:0] Prescale;
  input [3:0] bit_count;
  input [5:0] edge_count;
  input CLK, RST, S_DATA, parity_enable, par_err, stp_err, strt_glitch,
         test_se;
  output strt_chk_en, edge_bit_en, deser_en, par_chk_en, stp_chk_en,
         dat_samp_en, data_valid, test_so;
  wire   \sub_40/carry[5] , \sub_40/carry[4] , \sub_40/carry[3] , n1, n2, n3,
         n4, n5, n6, n7, n8, n9, n13, n14, n15, n16, n17, n18, n19, n20, n21,
         n22, n23, n24, n25, n26, n27, n28, n29, n30, n31, n32, n33, n34, n35,
         n36, n37, n38, n39, n40, n41, n42, n43, n44, n45, n46, n47, n48, n49,
         n50;
  wire   [5:0] check_edge;
  wire   [5:0] error_check_edge;
  wire   [2:0] current_state;
  wire   [2:0] next_state;
  assign error_check_edge[0] = Prescale[0];
  assign test_so = n25;

  SDFFRQX2M \current_state_reg[2]  ( .D(next_state[2]), .SI(n24), .SE(test_se), 
        .CK(CLK), .RN(RST), .Q(current_state[2]) );
  SDFFRQX2M \current_state_reg[0]  ( .D(next_state[0]), .SI(strt_glitch), .SE(
        test_se), .CK(CLK), .RN(RST), .Q(current_state[0]) );
  SDFFRQX2M \current_state_reg[1]  ( .D(next_state[1]), .SI(current_state[0]), 
        .SE(test_se), .CK(CLK), .RN(RST), .Q(current_state[1]) );
  OR2X2M U4 ( .A(Prescale[1]), .B(error_check_edge[0]), .Y(n1) );
  INVX2M U5 ( .A(Prescale[3]), .Y(n5) );
  XNOR2X2M U6 ( .A(Prescale[1]), .B(edge_count[1]), .Y(n37) );
  XNOR2X1M U9 ( .A(Prescale[5]), .B(\sub_40/carry[5] ), .Y(error_check_edge[5]) );
  OR2X1M U10 ( .A(Prescale[4]), .B(\sub_40/carry[4] ), .Y(\sub_40/carry[5] )
         );
  XNOR2X1M U11 ( .A(\sub_40/carry[4] ), .B(Prescale[4]), .Y(
        error_check_edge[4]) );
  OR2X1M U12 ( .A(Prescale[3]), .B(\sub_40/carry[3] ), .Y(\sub_40/carry[4] )
         );
  XNOR2X1M U13 ( .A(\sub_40/carry[3] ), .B(Prescale[3]), .Y(
        error_check_edge[3]) );
  OR2X1M U14 ( .A(Prescale[2]), .B(Prescale[1]), .Y(\sub_40/carry[3] ) );
  XNOR2X1M U15 ( .A(Prescale[1]), .B(Prescale[2]), .Y(error_check_edge[2]) );
  CLKINVX1M U16 ( .A(error_check_edge[0]), .Y(check_edge[0]) );
  OAI2BB1X1M U17 ( .A0N(error_check_edge[0]), .A1N(Prescale[1]), .B0(n1), .Y(
        check_edge[1]) );
  NOR2X1M U18 ( .A(n1), .B(Prescale[2]), .Y(n2) );
  AO21XLM U19 ( .A0(n1), .A1(Prescale[2]), .B0(n2), .Y(check_edge[2]) );
  CLKNAND2X2M U20 ( .A(n2), .B(n5), .Y(n3) );
  OAI21X1M U21 ( .A0(n2), .A1(n5), .B0(n3), .Y(check_edge[3]) );
  XNOR2X1M U22 ( .A(Prescale[4]), .B(n3), .Y(check_edge[4]) );
  NOR2X1M U23 ( .A(Prescale[4]), .B(n3), .Y(n4) );
  CLKXOR2X2M U24 ( .A(Prescale[5]), .B(n4), .Y(check_edge[5]) );
  NOR2X1M U25 ( .A(current_state[1]), .B(n6), .Y(strt_chk_en) );
  NOR2X1M U26 ( .A(current_state[2]), .B(n7), .Y(par_chk_en) );
  OAI31X1M U27 ( .A0(n8), .A1(parity_enable), .A2(n9), .B0(n13), .Y(
        next_state[2]) );
  AOI31X1M U28 ( .A0(n14), .A1(n15), .A2(n16), .B0(stp_chk_en), .Y(n13) );
  NOR2X1M U29 ( .A(n17), .B(n18), .Y(n16) );
  CLKINVX1M U30 ( .A(bit_count[3]), .Y(n18) );
  CLKINVX1M U31 ( .A(n7), .Y(n15) );
  OAI21X1M U32 ( .A0(current_state[2]), .A1(n19), .B0(n7), .Y(next_state[1])
         );
  AOI31X1M U33 ( .A0(current_state[0]), .A1(n14), .A2(n20), .B0(
        current_state[1]), .Y(n19) );
  NOR3X1M U34 ( .A(bit_count[0]), .B(strt_glitch), .C(bit_count[3]), .Y(n20)
         );
  OAI221X1M U35 ( .A0(S_DATA), .A1(n21), .B0(n22), .B1(n8), .C0(n23), .Y(
        next_state[0]) );
  AOI31X1M U36 ( .A0(n24), .A1(n25), .A2(n26), .B0(n27), .Y(n23) );
  NOR4X1M U37 ( .A(n28), .B(n29), .C(n30), .D(n31), .Y(n27) );
  CLKXOR2X2M U38 ( .A(error_check_edge[5]), .B(edge_count[5]), .Y(n31) );
  CLKXOR2X2M U39 ( .A(error_check_edge[4]), .B(edge_count[4]), .Y(n30) );
  NAND3BX1M U40 ( .AN(bit_count[2]), .B(bit_count[3]), .C(stp_chk_en), .Y(n29)
         );
  NOR2X1M U41 ( .A(n25), .B(n7), .Y(stp_chk_en) );
  NAND4X1M U42 ( .A(n32), .B(n33), .C(n34), .D(n35), .Y(n28) );
  XNOR2X1M U43 ( .A(edge_count[2]), .B(error_check_edge[2]), .Y(n35) );
  NOR2X1M U44 ( .A(n36), .B(n37), .Y(n34) );
  CLKXOR2X2M U45 ( .A(error_check_edge[0]), .B(edge_count[0]), .Y(n36) );
  XNOR2X1M U46 ( .A(edge_count[3]), .B(error_check_edge[3]), .Y(n33) );
  MXI2X1M U47 ( .A(n38), .B(n39), .S0(parity_enable), .Y(n32) );
  CLKNAND2X2M U48 ( .A(bit_count[1]), .B(n17), .Y(n39) );
  OR2X1M U49 ( .A(bit_count[1]), .B(n17), .Y(n38) );
  MXI2X1M U50 ( .A(S_DATA), .B(n40), .S0(current_state[0]), .Y(n26) );
  NOR4BX1M U51 ( .AN(strt_glitch), .B(bit_count[3]), .C(bit_count[0]), .D(n41), 
        .Y(n40) );
  CLKINVX1M U52 ( .A(n9), .Y(n22) );
  NAND3X1M U53 ( .A(n14), .B(n17), .C(bit_count[3]), .Y(n9) );
  CLKINVX1M U54 ( .A(bit_count[0]), .Y(n17) );
  CLKINVX1M U55 ( .A(n41), .Y(n14) );
  CLKNAND2X2M U56 ( .A(n42), .B(n43), .Y(n41) );
  NOR4X1M U57 ( .A(bit_count[2]), .B(bit_count[1]), .C(n44), .D(n45), .Y(n43)
         );
  CLKXOR2X2M U58 ( .A(edge_count[0]), .B(check_edge[0]), .Y(n45) );
  CLKXOR2X2M U59 ( .A(edge_count[4]), .B(check_edge[4]), .Y(n44) );
  NOR4X1M U60 ( .A(n46), .B(n47), .C(n48), .D(n49), .Y(n42) );
  CLKXOR2X2M U61 ( .A(edge_count[3]), .B(check_edge[3]), .Y(n49) );
  CLKXOR2X2M U62 ( .A(edge_count[2]), .B(check_edge[2]), .Y(n48) );
  CLKXOR2X2M U63 ( .A(edge_count[5]), .B(check_edge[5]), .Y(n47) );
  CLKXOR2X2M U64 ( .A(edge_count[1]), .B(check_edge[1]), .Y(n46) );
  CLKNAND2X2M U65 ( .A(n6), .B(n7), .Y(edge_bit_en) );
  CLKNAND2X2M U66 ( .A(current_state[1]), .B(n50), .Y(n7) );
  CLKINVX1M U67 ( .A(n8), .Y(deser_en) );
  NAND3X1M U68 ( .A(current_state[1]), .B(n25), .C(current_state[0]), .Y(n8)
         );
  CLKINVX1M U69 ( .A(current_state[2]), .Y(n25) );
  NOR3X1M U70 ( .A(n21), .B(stp_err), .C(par_err), .Y(data_valid) );
  NAND3X1M U71 ( .A(current_state[2]), .B(current_state[1]), .C(
        current_state[0]), .Y(n21) );
  CLKNAND2X2M U72 ( .A(n24), .B(n6), .Y(dat_samp_en) );
  AO21XLM U73 ( .A0(n50), .A1(S_DATA), .B0(current_state[2]), .Y(n6) );
  CLKINVX1M U74 ( .A(current_state[0]), .Y(n50) );
  CLKINVX1M U75 ( .A(current_state[1]), .Y(n24) );
endmodule


module edge_bit_counter_test_1 ( CLK, RST, Enable, Prescale, bit_count, 
        edge_count, test_si, test_se );
  input [5:0] Prescale;
  output [3:0] bit_count;
  output [5:0] edge_count;
  input CLK, RST, Enable, test_si, test_se;
  wire   N8, N9, N10, N11, N19, N20, N21, N22, N23, N24, N25, N26, N27, N28,
         N29, N30, N31, n14, n19, n20, n21, n22, n23, n24, n25, n26, n27, n28,
         n29, n30, \add_31/carry[5] , \add_31/carry[4] , \add_31/carry[3] ,
         \add_31/carry[2] , n2, n13, n15, n16, n17, n18, n31, n32, n33, n34,
         n35, n36, n37, n38, n39, n40, n41, n42, n43, n44;

  SDFFRQX2M \bit_count_reg[2]  ( .D(n28), .SI(n42), .SE(test_se), .CK(CLK), 
        .RN(RST), .Q(bit_count[2]) );
  SDFFRQX2M \bit_count_reg[1]  ( .D(n29), .SI(n41), .SE(test_se), .CK(CLK), 
        .RN(RST), .Q(bit_count[1]) );
  SDFFRQX2M \bit_count_reg[0]  ( .D(n30), .SI(test_si), .SE(test_se), .CK(CLK), 
        .RN(RST), .Q(bit_count[0]) );
  SDFFRQX2M \edge_count_reg[5]  ( .D(N24), .SI(edge_count[4]), .SE(test_se), 
        .CK(CLK), .RN(RST), .Q(edge_count[5]) );
  SDFFRQX2M \edge_count_reg[0]  ( .D(N19), .SI(n14), .SE(test_se), .CK(CLK), 
        .RN(RST), .Q(edge_count[0]) );
  SDFFRQX2M \edge_count_reg[4]  ( .D(N23), .SI(edge_count[3]), .SE(test_se), 
        .CK(CLK), .RN(RST), .Q(edge_count[4]) );
  SDFFRQX2M \edge_count_reg[3]  ( .D(N22), .SI(edge_count[2]), .SE(test_se), 
        .CK(CLK), .RN(RST), .Q(edge_count[3]) );
  SDFFRQX2M \edge_count_reg[2]  ( .D(N21), .SI(edge_count[1]), .SE(test_se), 
        .CK(CLK), .RN(RST), .Q(edge_count[2]) );
  SDFFRQX2M \edge_count_reg[1]  ( .D(N20), .SI(edge_count[0]), .SE(test_se), 
        .CK(CLK), .RN(RST), .Q(edge_count[1]) );
  SDFFRX1M \bit_count_reg[3]  ( .D(n27), .SI(n43), .SE(test_se), .CK(CLK), 
        .RN(RST), .Q(bit_count[3]), .QN(n14) );
  INVX2M U14 ( .A(n23), .Y(n40) );
  INVX2M U15 ( .A(Enable), .Y(n44) );
  NOR2X2M U16 ( .A(n44), .B(N31), .Y(n23) );
  AOI21X2M U17 ( .A0(n41), .A1(Enable), .B0(n23), .Y(n26) );
  NOR2BX2M U18 ( .AN(N8), .B(n40), .Y(N20) );
  NOR2BX2M U19 ( .AN(N9), .B(n40), .Y(N21) );
  NOR2BX2M U20 ( .AN(N10), .B(n40), .Y(N22) );
  NOR2BX2M U21 ( .AN(N11), .B(n40), .Y(N23) );
  OAI32X1M U22 ( .A0(n44), .A1(bit_count[0]), .A2(n23), .B0(n41), .B1(n40), 
        .Y(n30) );
  OAI32X1M U23 ( .A0(n24), .A1(bit_count[2]), .A2(n42), .B0(n25), .B1(n43), 
        .Y(n28) );
  AOI21BX2M U24 ( .A0(Enable), .A1(n42), .B0N(n26), .Y(n25) );
  OAI32X1M U25 ( .A0(n19), .A1(n20), .A2(n44), .B0(n21), .B1(n14), .Y(n27) );
  NAND3X2M U26 ( .A(N31), .B(n14), .C(bit_count[2]), .Y(n19) );
  NOR2X2M U27 ( .A(n22), .B(n23), .Y(n21) );
  AOI2BB1X2M U28 ( .A0N(n20), .A1N(n43), .B0(n44), .Y(n22) );
  NAND3X2M U29 ( .A(bit_count[0]), .B(n40), .C(Enable), .Y(n24) );
  OAI22X1M U30 ( .A0(n26), .A1(n42), .B0(bit_count[1]), .B1(n24), .Y(n29) );
  OR2X2M U31 ( .A(Prescale[1]), .B(Prescale[0]), .Y(n13) );
  NOR2X2M U32 ( .A(n2), .B(n40), .Y(N24) );
  XNOR2X2M U33 ( .A(\add_31/carry[5] ), .B(edge_count[5]), .Y(n2) );
  NOR2X2M U34 ( .A(edge_count[0]), .B(n40), .Y(N19) );
  INVX2M U35 ( .A(Prescale[3]), .Y(n18) );
  NAND2X2M U36 ( .A(bit_count[1]), .B(bit_count[0]), .Y(n20) );
  INVX2M U37 ( .A(bit_count[0]), .Y(n41) );
  INVX2M U38 ( .A(bit_count[1]), .Y(n42) );
  ADDHX1M U39 ( .A(edge_count[1]), .B(edge_count[0]), .CO(\add_31/carry[2] ), 
        .S(N8) );
  ADDHX1M U40 ( .A(edge_count[2]), .B(\add_31/carry[2] ), .CO(
        \add_31/carry[3] ), .S(N9) );
  ADDHX1M U41 ( .A(edge_count[3]), .B(\add_31/carry[3] ), .CO(
        \add_31/carry[4] ), .S(N10) );
  INVX2M U42 ( .A(bit_count[2]), .Y(n43) );
  ADDHX1M U43 ( .A(edge_count[4]), .B(\add_31/carry[4] ), .CO(
        \add_31/carry[5] ), .S(N11) );
  CLKINVX1M U44 ( .A(Prescale[0]), .Y(N25) );
  OAI2BB1X1M U45 ( .A0N(Prescale[0]), .A1N(Prescale[1]), .B0(n13), .Y(N26) );
  NOR2X1M U46 ( .A(n13), .B(Prescale[2]), .Y(n15) );
  AO21XLM U47 ( .A0(n13), .A1(Prescale[2]), .B0(n15), .Y(N27) );
  CLKNAND2X2M U48 ( .A(n15), .B(n18), .Y(n16) );
  OAI21X1M U49 ( .A0(n15), .A1(n18), .B0(n16), .Y(N28) );
  XNOR2X1M U50 ( .A(Prescale[4]), .B(n16), .Y(N29) );
  NOR2X1M U51 ( .A(Prescale[4]), .B(n16), .Y(n17) );
  CLKXOR2X2M U52 ( .A(Prescale[5]), .B(n17), .Y(N30) );
  NOR2BX1M U53 ( .AN(edge_count[0]), .B(N25), .Y(n31) );
  OAI2B2X1M U54 ( .A1N(N26), .A0(n31), .B0(edge_count[1]), .B1(n31), .Y(n35)
         );
  NOR2BX1M U55 ( .AN(N25), .B(edge_count[0]), .Y(n32) );
  OAI2B2X1M U56 ( .A1N(edge_count[1]), .A0(n32), .B0(N26), .B1(n32), .Y(n34)
         );
  XNOR2X1M U57 ( .A(N30), .B(edge_count[5]), .Y(n33) );
  NAND3X1M U58 ( .A(n35), .B(n34), .C(n33), .Y(n39) );
  CLKXOR2X2M U59 ( .A(N29), .B(edge_count[4]), .Y(n38) );
  CLKXOR2X2M U60 ( .A(N27), .B(edge_count[2]), .Y(n37) );
  CLKXOR2X2M U61 ( .A(N28), .B(edge_count[3]), .Y(n36) );
  NOR4X1M U62 ( .A(n39), .B(n38), .C(n37), .D(n36), .Y(N31) );
endmodule


module data_sampling_test_1 ( CLK, RST, S_DATA, Prescale, edge_count, Enable, 
        sampled_bit, test_si, test_se );
  input [5:0] Prescale;
  input [5:0] edge_count;
  input CLK, RST, S_DATA, Enable, test_si, test_se;
  output sampled_bit;
  wire   N58, n23, n24, n25, \add_21/carry[4] , \add_21/carry[3] ,
         \add_21/carry[2] , n1, n2, n3, n4, n5, n6, n11, n12, n13, n14, n15,
         n16, n17, n18, n19, n20, n21, n22, n26, n27, n28, n29, n30, n31, n32,
         n33, n34, n35, n36, n37, n38, n39, n40, n41, n42, n43, n44, n45;
  wire   [4:0] half_edges;
  wire   [4:0] half_edges_p1;
  wire   [4:0] half_edges_n1;
  wire   [2:0] Samples;

  SDFFRQX2M \Samples_reg[2]  ( .D(n25), .SI(Samples[1]), .SE(test_se), .CK(CLK), .RN(RST), .Q(Samples[2]) );
  SDFFRQX2M \Samples_reg[1]  ( .D(n24), .SI(Samples[0]), .SE(test_se), .CK(CLK), .RN(RST), .Q(Samples[1]) );
  SDFFRQX2M \Samples_reg[0]  ( .D(n23), .SI(test_si), .SE(test_se), .CK(CLK), 
        .RN(RST), .Q(Samples[0]) );
  SDFFRQX2M sampled_bit_reg ( .D(N58), .SI(Samples[2]), .SE(test_se), .CK(CLK), 
        .RN(RST), .Q(sampled_bit) );
  INVX2M U4 ( .A(half_edges[2]), .Y(n12) );
  ADDHX1M U5 ( .A(half_edges[2]), .B(\add_21/carry[2] ), .CO(\add_21/carry[3] ), .S(half_edges_p1[2]) );
  ADDHX1M U6 ( .A(half_edges[1]), .B(half_edges[0]), .CO(\add_21/carry[2] ), 
        .S(half_edges_p1[1]) );
  ADDHX1M U10 ( .A(half_edges[3]), .B(\add_21/carry[3] ), .CO(
        \add_21/carry[4] ), .S(half_edges_p1[3]) );
  INVX2M U11 ( .A(Prescale[3]), .Y(n4) );
  CLKINVX1M U12 ( .A(Prescale[1]), .Y(half_edges[0]) );
  NOR2X1M U13 ( .A(Prescale[2]), .B(Prescale[1]), .Y(n1) );
  AO21XLM U14 ( .A0(Prescale[1]), .A1(Prescale[2]), .B0(n1), .Y(half_edges[1])
         );
  CLKNAND2X2M U15 ( .A(n1), .B(n4), .Y(n2) );
  OAI21X1M U16 ( .A0(n1), .A1(n4), .B0(n2), .Y(half_edges[2]) );
  XNOR2X1M U17 ( .A(Prescale[4]), .B(n2), .Y(half_edges[3]) );
  NOR2X1M U18 ( .A(Prescale[4]), .B(n2), .Y(n3) );
  CLKXOR2X2M U19 ( .A(Prescale[5]), .B(n3), .Y(half_edges[4]) );
  CLKXOR2X2M U20 ( .A(\add_21/carry[4] ), .B(half_edges[4]), .Y(
        half_edges_p1[4]) );
  NOR2X1M U21 ( .A(half_edges[1]), .B(half_edges[0]), .Y(n5) );
  AO21XLM U22 ( .A0(half_edges[0]), .A1(half_edges[1]), .B0(n5), .Y(
        half_edges_n1[1]) );
  CLKNAND2X2M U23 ( .A(n5), .B(n12), .Y(n6) );
  OAI21X1M U24 ( .A0(n5), .A1(n12), .B0(n6), .Y(half_edges_n1[2]) );
  XNOR2X1M U25 ( .A(half_edges[3]), .B(n6), .Y(half_edges_n1[3]) );
  NOR2X1M U26 ( .A(half_edges[3]), .B(n6), .Y(n11) );
  CLKXOR2X2M U27 ( .A(half_edges[4]), .B(n11), .Y(half_edges_n1[4]) );
  MXI2X1M U28 ( .A(n13), .B(n14), .S0(n15), .Y(n25) );
  NOR2X1M U29 ( .A(n16), .B(n17), .Y(n15) );
  NAND4X1M U30 ( .A(n18), .B(n19), .C(n20), .D(n21), .Y(n17) );
  CLKXOR2X2M U31 ( .A(n22), .B(half_edges_p1[1]), .Y(n21) );
  XNOR2X1M U32 ( .A(edge_count[2]), .B(half_edges_p1[2]), .Y(n20) );
  XNOR2X1M U33 ( .A(edge_count[3]), .B(half_edges_p1[3]), .Y(n19) );
  CLKXOR2X2M U34 ( .A(n26), .B(half_edges_p1[4]), .Y(n18) );
  NAND4BX1M U35 ( .AN(edge_count[5]), .B(n27), .C(n28), .D(n29), .Y(n16) );
  XNOR2X1M U36 ( .A(edge_count[0]), .B(Prescale[1]), .Y(n27) );
  CLKNAND2X2M U37 ( .A(Samples[2]), .B(Enable), .Y(n13) );
  MXI2X1M U38 ( .A(n14), .B(n30), .S0(n28), .Y(n24) );
  NAND4X1M U39 ( .A(n31), .B(n32), .C(n33), .D(n34), .Y(n28) );
  NOR4BX1M U40 ( .AN(n29), .B(edge_count[5]), .C(n35), .D(n36), .Y(n34) );
  CLKXOR2X2M U41 ( .A(half_edges[1]), .B(edge_count[1]), .Y(n36) );
  CLKXOR2X2M U42 ( .A(half_edges[0]), .B(edge_count[0]), .Y(n35) );
  XNOR2X1M U43 ( .A(edge_count[3]), .B(half_edges[3]), .Y(n33) );
  CLKXOR2X2M U44 ( .A(n26), .B(half_edges[4]), .Y(n32) );
  CLKINVX1M U45 ( .A(edge_count[4]), .Y(n26) );
  XNOR2X1M U46 ( .A(edge_count[2]), .B(half_edges[2]), .Y(n31) );
  CLKNAND2X2M U47 ( .A(Samples[1]), .B(Enable), .Y(n30) );
  MXI2X1M U48 ( .A(n14), .B(n37), .S0(n29), .Y(n23) );
  NAND4X1M U49 ( .A(n38), .B(n39), .C(n40), .D(n41), .Y(n29) );
  NOR3X1M U50 ( .A(n42), .B(edge_count[5]), .C(n43), .Y(n41) );
  CLKXOR2X2M U51 ( .A(Prescale[1]), .B(edge_count[0]), .Y(n43) );
  CLKXOR2X2M U52 ( .A(half_edges_n1[4]), .B(edge_count[4]), .Y(n42) );
  XNOR2X1M U53 ( .A(edge_count[2]), .B(half_edges_n1[2]), .Y(n40) );
  XNOR2X1M U54 ( .A(edge_count[3]), .B(half_edges_n1[3]), .Y(n39) );
  CLKXOR2X2M U55 ( .A(n22), .B(half_edges_n1[1]), .Y(n38) );
  CLKINVX1M U56 ( .A(edge_count[1]), .Y(n22) );
  CLKNAND2X2M U57 ( .A(Samples[0]), .B(Enable), .Y(n37) );
  CLKNAND2X2M U58 ( .A(S_DATA), .B(Enable), .Y(n14) );
  AOI21BX1M U59 ( .A0(n44), .A1(n45), .B0N(Enable), .Y(N58) );
  OAI21X1M U60 ( .A0(Samples[0]), .A1(Samples[1]), .B0(Samples[2]), .Y(n45) );
  CLKNAND2X2M U61 ( .A(Samples[0]), .B(Samples[1]), .Y(n44) );
endmodule


module deserializer_DATA_WIDTH8_test_1 ( CLK, RST, sampled_bit, Enable, 
        edge_count, Prescale, P_DATA, test_so, test_se );
  input [5:0] edge_count;
  input [5:0] Prescale;
  output [7:0] P_DATA;
  input CLK, RST, sampled_bit, Enable, test_se;
  output test_so;
  wire   N1, N2, N3, N4, N5, N6, N7, n1, n11, n13, n15, n17, n19, n21, n23,
         n25, n2, n3, n4, n5, n6, n7, n8, n9, n26, n27, n28, n29, n30, n31,
         n32, n33, n34, n35, n36, n37, n38, n39;
  assign test_so = n32;

  SDFFRQX2M \P_DATA_reg[0]  ( .D(n11), .SI(sampled_bit), .SE(test_se), .CK(CLK), .RN(RST), .Q(P_DATA[0]) );
  SDFFRQX2M \P_DATA_reg[5]  ( .D(n21), .SI(n35), .SE(test_se), .CK(CLK), .RN(
        RST), .Q(P_DATA[5]) );
  SDFFRQX2M \P_DATA_reg[1]  ( .D(n13), .SI(P_DATA[0]), .SE(test_se), .CK(CLK), 
        .RN(RST), .Q(P_DATA[1]) );
  SDFFRQX2M \P_DATA_reg[4]  ( .D(n19), .SI(n36), .SE(test_se), .CK(CLK), .RN(
        RST), .Q(P_DATA[4]) );
  SDFFRQX2M \P_DATA_reg[7]  ( .D(n25), .SI(n33), .SE(test_se), .CK(CLK), .RN(
        RST), .Q(P_DATA[7]) );
  SDFFRQX2M \P_DATA_reg[3]  ( .D(n17), .SI(n37), .SE(test_se), .CK(CLK), .RN(
        RST), .Q(P_DATA[3]) );
  SDFFRQX2M \P_DATA_reg[6]  ( .D(n23), .SI(n34), .SE(test_se), .CK(CLK), .RN(
        RST), .Q(P_DATA[6]) );
  SDFFRQX2M \P_DATA_reg[2]  ( .D(n15), .SI(n38), .SE(test_se), .CK(CLK), .RN(
        RST), .Q(P_DATA[2]) );
  OAI22X1M U3 ( .A0(n39), .A1(n38), .B0(n1), .B1(n37), .Y(n13) );
  OAI22X1M U4 ( .A0(n39), .A1(n37), .B0(n1), .B1(n36), .Y(n15) );
  OAI22X1M U5 ( .A0(n39), .A1(n36), .B0(n1), .B1(n35), .Y(n17) );
  OAI22X1M U6 ( .A0(n39), .A1(n35), .B0(n1), .B1(n34), .Y(n19) );
  OAI22X1M U7 ( .A0(n39), .A1(n34), .B0(n1), .B1(n33), .Y(n21) );
  OAI22X1M U8 ( .A0(n39), .A1(n33), .B0(n1), .B1(n32), .Y(n23) );
  INVX2M U9 ( .A(n1), .Y(n39) );
  NAND2X2M U10 ( .A(N7), .B(Enable), .Y(n1) );
  OAI2BB2X1M U11 ( .B0(n1), .B1(n38), .A0N(P_DATA[0]), .A1N(n1), .Y(n11) );
  OAI2BB2X1M U12 ( .B0(n39), .B1(n32), .A0N(sampled_bit), .A1N(n39), .Y(n25)
         );
  OR2X2M U13 ( .A(Prescale[1]), .B(Prescale[0]), .Y(n2) );
  INVX2M U14 ( .A(Prescale[3]), .Y(n6) );
  INVX2M U15 ( .A(P_DATA[2]), .Y(n37) );
  INVX2M U16 ( .A(P_DATA[6]), .Y(n33) );
  INVX2M U17 ( .A(P_DATA[7]), .Y(n32) );
  INVX2M U18 ( .A(P_DATA[3]), .Y(n36) );
  INVX2M U19 ( .A(P_DATA[4]), .Y(n35) );
  INVX2M U28 ( .A(P_DATA[5]), .Y(n34) );
  INVX2M U29 ( .A(P_DATA[1]), .Y(n38) );
  CLKINVX1M U30 ( .A(Prescale[0]), .Y(N1) );
  OAI2BB1X1M U31 ( .A0N(Prescale[0]), .A1N(Prescale[1]), .B0(n2), .Y(N2) );
  NOR2X1M U32 ( .A(n2), .B(Prescale[2]), .Y(n3) );
  AO21XLM U33 ( .A0(n2), .A1(Prescale[2]), .B0(n3), .Y(N3) );
  CLKNAND2X2M U34 ( .A(n3), .B(n6), .Y(n4) );
  OAI21X1M U35 ( .A0(n3), .A1(n6), .B0(n4), .Y(N4) );
  XNOR2X1M U36 ( .A(Prescale[4]), .B(n4), .Y(N5) );
  NOR2X1M U37 ( .A(Prescale[4]), .B(n4), .Y(n5) );
  CLKXOR2X2M U38 ( .A(Prescale[5]), .B(n5), .Y(N6) );
  NOR2BX1M U39 ( .AN(edge_count[0]), .B(N1), .Y(n7) );
  OAI2B2X1M U40 ( .A1N(N2), .A0(n7), .B0(edge_count[1]), .B1(n7), .Y(n27) );
  NOR2BX1M U41 ( .AN(N1), .B(edge_count[0]), .Y(n8) );
  OAI2B2X1M U42 ( .A1N(edge_count[1]), .A0(n8), .B0(N2), .B1(n8), .Y(n26) );
  XNOR2X1M U43 ( .A(N6), .B(edge_count[5]), .Y(n9) );
  NAND3X1M U44 ( .A(n27), .B(n26), .C(n9), .Y(n31) );
  CLKXOR2X2M U45 ( .A(N5), .B(edge_count[4]), .Y(n30) );
  CLKXOR2X2M U46 ( .A(N3), .B(edge_count[2]), .Y(n29) );
  CLKXOR2X2M U47 ( .A(N4), .B(edge_count[3]), .Y(n28) );
  NOR4X1M U48 ( .A(n31), .B(n30), .C(n29), .D(n28), .Y(N7) );
endmodule


module strt_chk_test_1 ( CLK, RST, sampled_bit, Enable, strt_glitch, test_si, 
        test_se );
  input CLK, RST, sampled_bit, Enable, test_si, test_se;
  output strt_glitch;
  wire   n2;

  SDFFRQX2M strt_glitch_reg ( .D(n2), .SI(test_si), .SE(test_se), .CK(CLK), 
        .RN(RST), .Q(strt_glitch) );
  AO2B2X2M U2 ( .B0(sampled_bit), .B1(Enable), .A0(strt_glitch), .A1N(Enable), 
        .Y(n2) );
endmodule


module par_chk_DATA_WIDTH8_test_1 ( CLK, RST, parity_type, sampled_bit, Enable, 
        P_DATA, par_err, test_si, test_se );
  input [7:0] P_DATA;
  input CLK, RST, parity_type, sampled_bit, Enable, test_si, test_se;
  output par_err;
  wire   n1, n3, n4, n5, n6, n7, n9, n2;

  SDFFRQX2M par_err_reg ( .D(n9), .SI(test_si), .SE(test_se), .CK(CLK), .RN(
        RST), .Q(par_err) );
  XNOR2X2M U2 ( .A(sampled_bit), .B(parity_type), .Y(n5) );
  XOR3XLM U3 ( .A(P_DATA[5]), .B(P_DATA[4]), .C(n6), .Y(n4) );
  XNOR2X2M U4 ( .A(P_DATA[7]), .B(P_DATA[6]), .Y(n6) );
  XOR3XLM U5 ( .A(P_DATA[1]), .B(P_DATA[0]), .C(n7), .Y(n3) );
  XNOR2X2M U6 ( .A(P_DATA[3]), .B(P_DATA[2]), .Y(n7) );
  OAI2BB2X1M U7 ( .B0(n1), .B1(n2), .A0N(par_err), .A1N(n2), .Y(n9) );
  INVX2M U8 ( .A(Enable), .Y(n2) );
  XOR3XLM U9 ( .A(n3), .B(n4), .C(n5), .Y(n1) );
endmodule


module stp_chk_test_1 ( CLK, RST, sampled_bit, Enable, stp_err, test_si, 
        test_se );
  input CLK, RST, sampled_bit, Enable, test_si, test_se;
  output stp_err;
  wire   n3, n1;

  SDFFRQX2M stp_err_reg ( .D(n3), .SI(test_si), .SE(test_se), .CK(CLK), .RN(
        RST), .Q(stp_err) );
  OAI2BB2X1M U2 ( .B0(sampled_bit), .B1(n1), .A0N(stp_err), .A1N(n1), .Y(n3)
         );
  INVX2M U3 ( .A(Enable), .Y(n1) );
endmodule


module UART_RX_test_1 ( CLK, RST, RX_IN, parity_enable, parity_type, Prescale, 
        P_DATA, data_valid, parity_error, framing_error, test_si, test_so, 
        test_se );
  input [5:0] Prescale;
  output [7:0] P_DATA;
  input CLK, RST, RX_IN, parity_enable, parity_type, test_si, test_se;
  output data_valid, parity_error, framing_error, test_so;
  wire   strt_glitch, strt_chk_en, edge_bit_en, deser_en, par_chk_en,
         stp_chk_en, dat_samp_en, sampled_bit, n1, n2, n4;
  wire   [3:0] bit_count;
  wire   [5:0] edge_count;

  INVX2M U1 ( .A(n2), .Y(n1) );
  INVX2M U2 ( .A(RST), .Y(n2) );
  uart_rx_fsm_DATA_WIDTH8_test_1 U0_uart_fsm ( .CLK(CLK), .RST(n1), .S_DATA(
        RX_IN), .Prescale(Prescale), .parity_enable(parity_enable), 
        .bit_count(bit_count), .edge_count(edge_count), .par_err(parity_error), 
        .stp_err(framing_error), .strt_glitch(strt_glitch), .strt_chk_en(
        strt_chk_en), .edge_bit_en(edge_bit_en), .deser_en(deser_en), 
        .par_chk_en(par_chk_en), .stp_chk_en(stp_chk_en), .dat_samp_en(
        dat_samp_en), .data_valid(data_valid), .test_so(test_so), .test_se(
        test_se) );
  edge_bit_counter_test_1 U0_edge_bit_counter ( .CLK(CLK), .RST(n1), .Enable(
        edge_bit_en), .Prescale(Prescale), .bit_count(bit_count), .edge_count(
        edge_count), .test_si(n4), .test_se(test_se) );
  data_sampling_test_1 U0_data_sampling ( .CLK(CLK), .RST(n1), .S_DATA(RX_IN), 
        .Prescale(Prescale), .edge_count(edge_count), .Enable(dat_samp_en), 
        .sampled_bit(sampled_bit), .test_si(test_si), .test_se(test_se) );
  deserializer_DATA_WIDTH8_test_1 U0_deserializer ( .CLK(CLK), .RST(n1), 
        .sampled_bit(sampled_bit), .Enable(deser_en), .edge_count(edge_count), 
        .Prescale(Prescale), .P_DATA(P_DATA), .test_so(n4), .test_se(test_se)
         );
  strt_chk_test_1 U0_strt_chk ( .CLK(CLK), .RST(n1), .sampled_bit(sampled_bit), 
        .Enable(strt_chk_en), .strt_glitch(strt_glitch), .test_si(
        framing_error), .test_se(test_se) );
  par_chk_DATA_WIDTH8_test_1 U0_par_chk ( .CLK(CLK), .RST(n1), .parity_type(
        parity_type), .sampled_bit(sampled_bit), .Enable(par_chk_en), .P_DATA(
        P_DATA), .par_err(parity_error), .test_si(edge_count[5]), .test_se(
        test_se) );
  stp_chk_test_1 U0_stp_chk ( .CLK(CLK), .RST(n1), .sampled_bit(sampled_bit), 
        .Enable(stp_chk_en), .stp_err(framing_error), .test_si(parity_error), 
        .test_se(test_se) );
endmodule


module UART_test_1 ( RST, TX_CLK, RX_CLK, RX_IN_S, RX_OUT_P, RX_OUT_V, TX_IN_P, 
        TX_IN_V, TX_OUT_S, TX_OUT_V, Prescale, parity_enable, parity_type, 
        parity_error, framing_error, test_si2, test_si1, test_so1, test_se );
  output [7:0] RX_OUT_P;
  input [7:0] TX_IN_P;
  input [5:0] Prescale;
  input RST, TX_CLK, RX_CLK, RX_IN_S, TX_IN_V, parity_enable, parity_type,
         test_si2, test_si1, test_se;
  output RX_OUT_V, TX_OUT_S, TX_OUT_V, parity_error, framing_error, test_so1;
  wire   n1, n2, n4;

  INVX2M U1 ( .A(n2), .Y(n1) );
  INVX2M U2 ( .A(RST), .Y(n2) );
  UART_TX_DATA_WIDTH8_test_1 U0_UART_TX ( .CLK(TX_CLK), .RST(n1), .P_DATA(
        TX_IN_P), .Data_Valid(TX_IN_V), .parity_enable(parity_enable), 
        .parity_type(parity_type), .TX_OUT(TX_OUT_S), .busy(TX_OUT_V), 
        .test_si2(test_si2), .test_si1(n4), .test_so1(test_so1), .test_se(
        test_se) );
  UART_RX_test_1 U0_UART_RX ( .CLK(RX_CLK), .RST(n1), .RX_IN(RX_IN_S), 
        .parity_enable(parity_enable), .parity_type(parity_type), .Prescale(
        Prescale), .P_DATA(RX_OUT_P), .data_valid(RX_OUT_V), .parity_error(
        parity_error), .framing_error(framing_error), .test_si(test_si1), 
        .test_so(n4), .test_se(test_se) );
endmodule


module SYS_CTRL_test_1 ( CLK, RST, RF_RdData, RF_RdData_VLD, ALU_OUT, 
        ALU_OUT_VLD, UART_RX_DATA, UART_RX_VLD, FIFO_FULL, ALU_EN, ALU_FUN, 
        CLKG_EN, CLKDIV_EN, RF_WrEn, RF_RdEn, RF_Address, RF_WrData, 
        UART_TX_DATA, UART_TX_VLD, test_si2, test_si1, test_so2, test_so1, 
        test_se );
  input [7:0] RF_RdData;
  input [15:0] ALU_OUT;
  input [7:0] UART_RX_DATA;
  output [3:0] ALU_FUN;
  output [3:0] RF_Address;
  output [7:0] RF_WrData;
  output [7:0] UART_TX_DATA;
  input CLK, RST, RF_RdData_VLD, ALU_OUT_VLD, UART_RX_VLD, FIFO_FULL, test_si2,
         test_si1, test_se;
  output ALU_EN, CLKG_EN, CLKDIV_EN, RF_WrEn, RF_RdEn, UART_TX_VLD, test_so2,
         test_so1;
  wire   n35, n36, n37, n38, n39, n40, n41, n42, n43, n44, n45, n46, n53, n54,
         n55, n56, n57, n58, n59, n60, n61, n62, n63, n64, n65, n66, n67, n68,
         n69, n70, n71, n72, n73, n74, n75, n76, n77, n78, n79, n80, n81, n82,
         n83, n84, n85, n86, n87, n88, n89, n90, n91, n92, n93, n94, n95, n96,
         n97, n98, n99, n100, n101, n102, n103, n104, n105, n106, n107, n108,
         n109, n110, n111, n112, n113, n114, n115, n28, n29, n30, n31, n32,
         n33, n34, n47, n48, n49, n50, n51, n52, n116, n117, n118, n119, n120,
         n121, n122, n123, n125, n126, n127, n128, n129, n130;
  wire   [3:0] current_state;
  wire   [3:0] next_state;
  wire   [15:0] ALU_OUT_REG;
  assign test_so2 = current_state[3];

  SDFFRQX2M \ALU_OUT_REG_reg[7]  ( .D(n103), .SI(ALU_OUT_REG[6]), .SE(test_se), 
        .CK(CLK), .RN(RST), .Q(ALU_OUT_REG[7]) );
  SDFFRQX2M \ALU_OUT_REG_reg[6]  ( .D(n102), .SI(ALU_OUT_REG[5]), .SE(test_se), 
        .CK(CLK), .RN(RST), .Q(ALU_OUT_REG[6]) );
  SDFFRQX2M \ALU_OUT_REG_reg[5]  ( .D(n101), .SI(ALU_OUT_REG[4]), .SE(test_se), 
        .CK(CLK), .RN(RST), .Q(ALU_OUT_REG[5]) );
  SDFFRQX2M \ALU_OUT_REG_reg[4]  ( .D(n100), .SI(ALU_OUT_REG[3]), .SE(test_se), 
        .CK(CLK), .RN(RST), .Q(ALU_OUT_REG[4]) );
  SDFFRQX2M \ALU_OUT_REG_reg[3]  ( .D(n99), .SI(ALU_OUT_REG[2]), .SE(test_se), 
        .CK(CLK), .RN(RST), .Q(ALU_OUT_REG[3]) );
  SDFFRQX2M \ALU_OUT_REG_reg[2]  ( .D(n98), .SI(ALU_OUT_REG[1]), .SE(test_se), 
        .CK(CLK), .RN(RST), .Q(ALU_OUT_REG[2]) );
  SDFFRQX2M \ALU_OUT_REG_reg[1]  ( .D(n97), .SI(ALU_OUT_REG[0]), .SE(test_se), 
        .CK(CLK), .RN(RST), .Q(ALU_OUT_REG[1]) );
  SDFFRQX2M \ALU_OUT_REG_reg[0]  ( .D(n96), .SI(test_si1), .SE(test_se), .CK(
        CLK), .RN(RST), .Q(ALU_OUT_REG[0]) );
  SDFFRX1M \ALU_OUT_REG_reg[15]  ( .D(n111), .SI(test_si2), .SE(test_se), .CK(
        CLK), .RN(RST), .Q(n123), .QN(n39) );
  SDFFRX1M \ALU_OUT_REG_reg[14]  ( .D(n110), .SI(n125), .SE(test_se), .CK(CLK), 
        .RN(RST), .Q(test_so1), .QN(n40) );
  SDFFRX1M \ALU_OUT_REG_reg[13]  ( .D(n109), .SI(n126), .SE(test_se), .CK(CLK), 
        .RN(RST), .Q(n125), .QN(n41) );
  SDFFRX1M \ALU_OUT_REG_reg[12]  ( .D(n108), .SI(n127), .SE(test_se), .CK(CLK), 
        .RN(RST), .Q(n126), .QN(n42) );
  SDFFRX1M \ALU_OUT_REG_reg[11]  ( .D(n107), .SI(n128), .SE(test_se), .CK(CLK), 
        .RN(RST), .Q(n127), .QN(n43) );
  SDFFRX1M \ALU_OUT_REG_reg[10]  ( .D(n106), .SI(n129), .SE(test_se), .CK(CLK), 
        .RN(RST), .Q(n128), .QN(n44) );
  SDFFRX1M \ALU_OUT_REG_reg[9]  ( .D(n105), .SI(n130), .SE(test_se), .CK(CLK), 
        .RN(RST), .Q(n129), .QN(n45) );
  SDFFRX1M \ALU_OUT_REG_reg[8]  ( .D(n104), .SI(ALU_OUT_REG[7]), .SE(test_se), 
        .CK(CLK), .RN(RST), .Q(n130), .QN(n46) );
  SDFFRX1M \RF_ADDR_REG_reg[2]  ( .D(n114), .SI(n121), .SE(test_se), .CK(CLK), 
        .RN(RST), .Q(n120), .QN(n36) );
  SDFFRX1M \RF_ADDR_REG_reg[0]  ( .D(n112), .SI(n123), .SE(test_se), .CK(CLK), 
        .RN(RST), .Q(n122), .QN(n38) );
  SDFFRX1M \RF_ADDR_REG_reg[1]  ( .D(n113), .SI(n122), .SE(test_se), .CK(CLK), 
        .RN(RST), .Q(n121), .QN(n37) );
  SDFFRQX2M \current_state_reg[2]  ( .D(next_state[2]), .SI(n47), .SE(test_se), 
        .CK(CLK), .RN(RST), .Q(current_state[2]) );
  SDFFRQX2M \current_state_reg[3]  ( .D(next_state[3]), .SI(current_state[2]), 
        .SE(test_se), .CK(CLK), .RN(RST), .Q(current_state[3]) );
  SDFFRQX2M \current_state_reg[0]  ( .D(next_state[0]), .SI(n119), .SE(test_se), .CK(CLK), .RN(RST), .Q(current_state[0]) );
  SDFFRQX2M \current_state_reg[1]  ( .D(next_state[1]), .SI(n30), .SE(test_se), 
        .CK(CLK), .RN(RST), .Q(current_state[1]) );
  SDFFRX1M \RF_ADDR_REG_reg[3]  ( .D(n115), .SI(n120), .SE(test_se), .CK(CLK), 
        .RN(RST), .Q(n119), .QN(n35) );
  NOR2X2M U30 ( .A(n52), .B(n64), .Y(ALU_FUN[2]) );
  NOR2X2M U31 ( .A(n117), .B(n64), .Y(ALU_FUN[0]) );
  OAI22X2M U32 ( .A0(n52), .A1(n31), .B0(n36), .B1(n72), .Y(RF_Address[2]) );
  INVX2M U33 ( .A(RF_RdEn), .Y(n31) );
  NOR2X2M U34 ( .A(n61), .B(n118), .Y(RF_RdEn) );
  AND3X2M U35 ( .A(n55), .B(n56), .C(n72), .Y(n94) );
  NOR2X2M U36 ( .A(n94), .B(n117), .Y(RF_WrData[0]) );
  NOR2X2M U37 ( .A(n94), .B(n116), .Y(RF_WrData[1]) );
  NOR2X2M U38 ( .A(n94), .B(n52), .Y(RF_WrData[2]) );
  NOR2X2M U39 ( .A(n94), .B(n51), .Y(RF_WrData[3]) );
  NOR2X2M U40 ( .A(n94), .B(n50), .Y(RF_WrData[4]) );
  OAI21X2M U41 ( .A0(FIFO_FULL), .A1(n80), .B0(n81), .Y(UART_TX_VLD) );
  NOR2X2M U42 ( .A(n65), .B(FIFO_FULL), .Y(n84) );
  NAND2BX2M U43 ( .AN(FIFO_FULL), .B(n93), .Y(n82) );
  NAND3X2M U44 ( .A(n30), .B(n47), .C(n77), .Y(n67) );
  NOR2X2M U45 ( .A(n93), .B(n32), .Y(n80) );
  NAND3X2M U46 ( .A(n30), .B(n48), .C(n95), .Y(n56) );
  NOR2X2M U47 ( .A(n94), .B(n118), .Y(RF_WrEn) );
  NAND4X2M U48 ( .A(n53), .B(n54), .C(n55), .D(n56), .Y(next_state[3]) );
  NAND3X2M U49 ( .A(n117), .B(n50), .C(n57), .Y(n54) );
  INVX2M U50 ( .A(n81), .Y(n28) );
  INVX2M U51 ( .A(n65), .Y(n32) );
  NAND2X2M U52 ( .A(n59), .B(n95), .Y(n64) );
  NOR2X2M U53 ( .A(n64), .B(n118), .Y(ALU_EN) );
  INVX2M U54 ( .A(n69), .Y(n34) );
  NAND4BX1M U55 ( .AN(ALU_EN), .B(n69), .C(n60), .D(n70), .Y(next_state[1]) );
  AOI21BX2M U56 ( .A0(n71), .A1(n118), .B0N(n63), .Y(n70) );
  NAND2X2M U57 ( .A(n72), .B(n61), .Y(n71) );
  INVX2M U58 ( .A(n55), .Y(n33) );
  NOR2X2M U59 ( .A(n116), .B(n64), .Y(ALU_FUN[1]) );
  NOR2X2M U60 ( .A(n51), .B(n64), .Y(ALU_FUN[3]) );
  OAI22X4M U61 ( .A0(n51), .A1(n31), .B0(n35), .B1(n72), .Y(RF_Address[3]) );
  NOR2X2M U62 ( .A(n48), .B(current_state[0]), .Y(n59) );
  NAND3X2M U63 ( .A(current_state[1]), .B(n49), .C(n59), .Y(n61) );
  INVX2M U64 ( .A(UART_RX_VLD), .Y(n118) );
  INVX2M U65 ( .A(current_state[3]), .Y(n49) );
  INVX2M U66 ( .A(current_state[2]), .Y(n48) );
  OAI221X1M U67 ( .A0(n38), .A1(n72), .B0(n117), .B1(n31), .C0(n55), .Y(
        RF_Address[0]) );
  OAI22X1M U68 ( .A0(n116), .A1(n31), .B0(n37), .B1(n72), .Y(RF_Address[1]) );
  NOR2X2M U69 ( .A(n49), .B(current_state[1]), .Y(n95) );
  NOR2X2M U70 ( .A(current_state[2]), .B(current_state[3]), .Y(n77) );
  NOR2BX2M U71 ( .AN(UART_RX_DATA[5]), .B(n94), .Y(RF_WrData[5]) );
  NOR2BX2M U72 ( .AN(UART_RX_DATA[6]), .B(n94), .Y(RF_WrData[6]) );
  NOR2BX2M U73 ( .AN(UART_RX_DATA[7]), .B(n94), .Y(RF_WrData[7]) );
  NAND3X2M U74 ( .A(current_state[1]), .B(current_state[0]), .C(n77), .Y(n72)
         );
  NAND4X2M U75 ( .A(current_state[2]), .B(current_state[1]), .C(
        current_state[0]), .D(current_state[3]), .Y(n65) );
  OAI21X2M U76 ( .A0(n46), .A1(n82), .B0(n91), .Y(UART_TX_DATA[0]) );
  AOI22X1M U77 ( .A0(RF_RdData[0]), .A1(n28), .B0(n84), .B1(ALU_OUT_REG[0]), 
        .Y(n91) );
  OAI21X2M U78 ( .A0(n45), .A1(n82), .B0(n90), .Y(UART_TX_DATA[1]) );
  AOI22X1M U79 ( .A0(RF_RdData[1]), .A1(n28), .B0(n84), .B1(ALU_OUT_REG[1]), 
        .Y(n90) );
  OAI21X2M U80 ( .A0(n44), .A1(n82), .B0(n89), .Y(UART_TX_DATA[2]) );
  AOI22X1M U81 ( .A0(RF_RdData[2]), .A1(n28), .B0(n84), .B1(ALU_OUT_REG[2]), 
        .Y(n89) );
  OAI21X2M U82 ( .A0(n43), .A1(n82), .B0(n88), .Y(UART_TX_DATA[3]) );
  AOI22X1M U83 ( .A0(RF_RdData[3]), .A1(n28), .B0(n84), .B1(ALU_OUT_REG[3]), 
        .Y(n88) );
  OAI21X2M U84 ( .A0(n42), .A1(n82), .B0(n87), .Y(UART_TX_DATA[4]) );
  AOI22X1M U85 ( .A0(RF_RdData[4]), .A1(n28), .B0(n84), .B1(ALU_OUT_REG[4]), 
        .Y(n87) );
  OAI21X2M U86 ( .A0(n41), .A1(n82), .B0(n86), .Y(UART_TX_DATA[5]) );
  AOI22X1M U87 ( .A0(RF_RdData[5]), .A1(n28), .B0(n84), .B1(ALU_OUT_REG[5]), 
        .Y(n86) );
  OAI21X2M U88 ( .A0(n40), .A1(n82), .B0(n85), .Y(UART_TX_DATA[6]) );
  AOI22X1M U89 ( .A0(RF_RdData[6]), .A1(n28), .B0(n84), .B1(ALU_OUT_REG[6]), 
        .Y(n85) );
  OAI21X2M U90 ( .A0(n39), .A1(n82), .B0(n83), .Y(UART_TX_DATA[7]) );
  AOI22X1M U91 ( .A0(RF_RdData[7]), .A1(n28), .B0(n84), .B1(ALU_OUT_REG[7]), 
        .Y(n83) );
  NAND3X2M U92 ( .A(current_state[1]), .B(current_state[3]), .C(n59), .Y(n63)
         );
  NAND3X2M U93 ( .A(n95), .B(n48), .C(current_state[0]), .Y(n55) );
  OAI211X2M U94 ( .A0(n118), .A1(n55), .B0(n53), .C0(n29), .Y(next_state[2])
         );
  INVX2M U95 ( .A(n58), .Y(n29) );
  OAI2B11X2M U96 ( .A1N(n59), .A0(RF_RdData_VLD), .B0(n60), .C0(n61), .Y(n58)
         );
  OAI211X2M U97 ( .A0(n118), .A1(n56), .B0(n74), .C0(n75), .Y(next_state[0])
         );
  AOI211X2M U98 ( .A0(n76), .A1(n77), .B0(n78), .C0(n32), .Y(n75) );
  AOI32X1M U99 ( .A0(n117), .A1(n50), .A2(n73), .B0(n33), .B1(n118), .Y(n74)
         );
  AOI21X2M U100 ( .A0(UART_RX_VLD), .A1(current_state[1]), .B0(n30), .Y(n76)
         );
  AND3X2M U101 ( .A(n95), .B(current_state[0]), .C(current_state[2]), .Y(n93)
         );
  AND4X2M U102 ( .A(UART_RX_DATA[6]), .B(UART_RX_DATA[2]), .C(UART_RX_VLD), 
        .D(n66), .Y(n57) );
  NOR4X1M U103 ( .A(UART_RX_DATA[5]), .B(UART_RX_DATA[1]), .C(n67), .D(n68), 
        .Y(n66) );
  NAND3X2M U104 ( .A(RF_RdData_VLD), .B(n59), .C(n92), .Y(n81) );
  NOR3X2M U105 ( .A(FIFO_FULL), .B(current_state[3]), .C(current_state[1]), 
        .Y(n92) );
  INVX2M U106 ( .A(UART_RX_DATA[0]), .Y(n117) );
  INVX2M U107 ( .A(current_state[0]), .Y(n30) );
  INVX2M U108 ( .A(current_state[1]), .Y(n47) );
  AND4X2M U109 ( .A(n62), .B(n63), .C(n64), .D(n65), .Y(n53) );
  NAND3X2M U110 ( .A(UART_RX_DATA[0]), .B(n57), .C(UART_RX_DATA[4]), .Y(n62)
         );
  INVX2M U111 ( .A(UART_RX_DATA[1]), .Y(n116) );
  INVX2M U112 ( .A(UART_RX_DATA[2]), .Y(n52) );
  AND4X2M U113 ( .A(UART_RX_DATA[1]), .B(UART_RX_VLD), .C(UART_RX_DATA[5]), 
        .D(n79), .Y(n73) );
  NOR4X1M U114 ( .A(UART_RX_DATA[6]), .B(UART_RX_DATA[2]), .C(n67), .D(n68), 
        .Y(n79) );
  INVX2M U115 ( .A(UART_RX_DATA[3]), .Y(n51) );
  NAND3X2M U116 ( .A(UART_RX_DATA[4]), .B(UART_RX_DATA[0]), .C(n73), .Y(n60)
         );
  NOR2BX2M U117 ( .AN(ALU_OUT_VLD), .B(n63), .Y(n78) );
  AO2B2X2M U118 ( .B0(ALU_OUT[0]), .B1(n78), .A0(ALU_OUT_REG[0]), .A1N(n78), 
        .Y(n96) );
  AO2B2X2M U119 ( .B0(ALU_OUT[1]), .B1(n78), .A0(ALU_OUT_REG[1]), .A1N(n78), 
        .Y(n97) );
  AO2B2X2M U120 ( .B0(ALU_OUT[2]), .B1(n78), .A0(ALU_OUT_REG[2]), .A1N(n78), 
        .Y(n98) );
  AO2B2X2M U121 ( .B0(ALU_OUT[3]), .B1(n78), .A0(ALU_OUT_REG[3]), .A1N(n78), 
        .Y(n99) );
  AO2B2X2M U122 ( .B0(ALU_OUT[4]), .B1(n78), .A0(ALU_OUT_REG[4]), .A1N(n78), 
        .Y(n100) );
  AO2B2X2M U123 ( .B0(ALU_OUT[5]), .B1(n78), .A0(ALU_OUT_REG[5]), .A1N(n78), 
        .Y(n101) );
  AO2B2X2M U124 ( .B0(ALU_OUT[6]), .B1(n78), .A0(ALU_OUT_REG[6]), .A1N(n78), 
        .Y(n102) );
  AO2B2X2M U125 ( .B0(ALU_OUT[7]), .B1(n78), .A0(ALU_OUT_REG[7]), .A1N(n78), 
        .Y(n103) );
  NAND4X2M U126 ( .A(UART_RX_VLD), .B(n77), .C(current_state[0]), .D(n47), .Y(
        n69) );
  OAI22X1M U127 ( .A0(n117), .A1(n69), .B0(n34), .B1(n38), .Y(n112) );
  OAI22X1M U128 ( .A0(n116), .A1(n69), .B0(n34), .B1(n37), .Y(n113) );
  OAI22X1M U129 ( .A0(n52), .A1(n69), .B0(n34), .B1(n36), .Y(n114) );
  OAI22X1M U130 ( .A0(n51), .A1(n69), .B0(n34), .B1(n35), .Y(n115) );
  NAND2X2M U131 ( .A(UART_RX_DATA[7]), .B(UART_RX_DATA[3]), .Y(n68) );
  OAI2BB2X1M U132 ( .B0(n78), .B1(n46), .A0N(ALU_OUT[8]), .A1N(n78), .Y(n104)
         );
  OAI2BB2X1M U133 ( .B0(n78), .B1(n45), .A0N(ALU_OUT[9]), .A1N(n78), .Y(n105)
         );
  OAI2BB2X1M U134 ( .B0(n78), .B1(n44), .A0N(ALU_OUT[10]), .A1N(n78), .Y(n106)
         );
  OAI2BB2X1M U135 ( .B0(n78), .B1(n43), .A0N(ALU_OUT[11]), .A1N(n78), .Y(n107)
         );
  OAI2BB2X1M U136 ( .B0(n78), .B1(n42), .A0N(ALU_OUT[12]), .A1N(n78), .Y(n108)
         );
  OAI2BB2X1M U137 ( .B0(n78), .B1(n41), .A0N(ALU_OUT[13]), .A1N(n78), .Y(n109)
         );
  OAI2BB2X1M U138 ( .B0(n78), .B1(n40), .A0N(ALU_OUT[14]), .A1N(n78), .Y(n110)
         );
  OAI2BB2X1M U139 ( .B0(n78), .B1(n39), .A0N(ALU_OUT[15]), .A1N(n78), .Y(n111)
         );
  INVX2M U140 ( .A(UART_RX_DATA[4]), .Y(n50) );
  NAND3X2M U141 ( .A(n63), .B(n64), .C(n80), .Y(CLKG_EN) );
  INVX2M U3 ( .A(1'b0), .Y(CLKDIV_EN) );
endmodule


module RegFile_test_1 ( CLK, RST, WrEn, RdEn, Address, WrData, RdData, 
        RdData_VLD, REG0, REG1, REG2, REG3, test_si2, test_si1, test_so2, 
        test_so1, test_se );
  input [3:0] Address;
  input [7:0] WrData;
  output [7:0] RdData;
  output [7:0] REG0;
  output [7:0] REG1;
  output [7:0] REG2;
  output [7:0] REG3;
  input CLK, RST, WrEn, RdEn, test_si2, test_si1, test_se;
  output RdData_VLD, test_so2, test_so1;
  wire   N11, N12, N13, N14, \regArr[15][7] , \regArr[15][6] , \regArr[15][5] ,
         \regArr[15][4] , \regArr[15][3] , \regArr[15][2] , \regArr[15][1] ,
         \regArr[15][0] , \regArr[14][7] , \regArr[14][6] , \regArr[14][5] ,
         \regArr[14][4] , \regArr[14][3] , \regArr[14][2] , \regArr[14][1] ,
         \regArr[14][0] , \regArr[13][7] , \regArr[13][6] , \regArr[13][5] ,
         \regArr[13][4] , \regArr[13][3] , \regArr[13][2] , \regArr[13][1] ,
         \regArr[13][0] , \regArr[12][7] , \regArr[12][6] , \regArr[12][5] ,
         \regArr[12][4] , \regArr[12][3] , \regArr[12][2] , \regArr[12][1] ,
         \regArr[12][0] , \regArr[11][7] , \regArr[11][6] , \regArr[11][5] ,
         \regArr[11][4] , \regArr[11][3] , \regArr[11][2] , \regArr[11][1] ,
         \regArr[11][0] , \regArr[10][7] , \regArr[10][6] , \regArr[10][5] ,
         \regArr[10][4] , \regArr[10][3] , \regArr[10][2] , \regArr[10][1] ,
         \regArr[10][0] , \regArr[9][7] , \regArr[9][6] , \regArr[9][5] ,
         \regArr[9][4] , \regArr[9][3] , \regArr[9][2] , \regArr[9][1] ,
         \regArr[9][0] , \regArr[8][7] , \regArr[8][6] , \regArr[8][5] ,
         \regArr[8][4] , \regArr[8][3] , \regArr[8][2] , \regArr[8][1] ,
         \regArr[8][0] , \regArr[7][7] , \regArr[7][6] , \regArr[7][5] ,
         \regArr[7][4] , \regArr[7][3] , \regArr[7][2] , \regArr[7][1] ,
         \regArr[7][0] , \regArr[6][7] , \regArr[6][6] , \regArr[6][5] ,
         \regArr[6][4] , \regArr[6][3] , \regArr[6][2] , \regArr[6][1] ,
         \regArr[6][0] , \regArr[5][7] , \regArr[5][6] , \regArr[5][5] ,
         \regArr[5][4] , \regArr[5][3] , \regArr[5][2] , \regArr[5][1] ,
         \regArr[5][0] , \regArr[4][7] , \regArr[4][6] , \regArr[4][5] ,
         \regArr[4][4] , \regArr[4][3] , \regArr[4][2] , \regArr[4][1] ,
         \regArr[4][0] , N36, N37, N38, N39, N40, N41, N42, N43, n149, n150,
         n151, n152, n153, n154, n155, n156, n157, n158, n159, n160, n161,
         n162, n163, n164, n165, n166, n167, n168, n169, n170, n171, n172,
         n173, n174, n175, n176, n177, n178, n179, n180, n181, n182, n183,
         n184, n185, n186, n187, n188, n189, n190, n191, n192, n193, n194,
         n195, n196, n197, n198, n199, n200, n201, n202, n203, n204, n205,
         n206, n207, n208, n209, n210, n211, n212, n213, n214, n215, n216,
         n217, n218, n219, n220, n221, n222, n223, n224, n225, n226, n227,
         n228, n229, n230, n231, n232, n233, n234, n235, n236, n237, n238,
         n239, n240, n241, n242, n243, n244, n245, n246, n247, n248, n249,
         n250, n251, n252, n253, n254, n255, n256, n257, n258, n259, n260,
         n261, n262, n263, n264, n265, n266, n267, n268, n269, n270, n271,
         n272, n273, n274, n275, n276, n277, n278, n279, n280, n281, n282,
         n283, n284, n285, n286, n287, n288, n289, n290, n291, n292, n293,
         n294, n295, n296, n297, n298, n299, n300, n301, n302, n303, n304,
         n305, n306, n307, n308, n309, n310, n311, n312, n313, n139, n140,
         n141, n142, n143, n144, n145, n146, n147, n148, n314, n315, n316,
         n317, n318, n319, n320, n321, n322, n323, n324, n325, n326, n327,
         n328, n329, n330, n331, n332, n333, n334, n335, n336, n337, n338,
         n339, n340, n341, n342, n343, n344, n345, n346, n347, n348, n349,
         n350, n351, n352, n353, n354, n355, n356, n357, n358, n359, n360,
         n361, n362, n363, n364, n365, n366;
  assign N11 = Address[0];
  assign N12 = Address[1];
  assign N13 = Address[2];
  assign N14 = Address[3];
  assign test_so2 = \regArr[15][7] ;
  assign test_so1 = \regArr[6][3] ;

  SDFFRQX2M \regArr_reg[13][7]  ( .D(n297), .SI(\regArr[13][6] ), .SE(test_se), 
        .CK(CLK), .RN(n351), .Q(\regArr[13][7] ) );
  SDFFRQX2M \regArr_reg[13][6]  ( .D(n296), .SI(\regArr[13][5] ), .SE(test_se), 
        .CK(CLK), .RN(n351), .Q(\regArr[13][6] ) );
  SDFFRQX2M \regArr_reg[13][5]  ( .D(n295), .SI(\regArr[13][4] ), .SE(test_se), 
        .CK(CLK), .RN(n351), .Q(\regArr[13][5] ) );
  SDFFRQX2M \regArr_reg[13][4]  ( .D(n294), .SI(\regArr[13][3] ), .SE(test_se), 
        .CK(CLK), .RN(n351), .Q(\regArr[13][4] ) );
  SDFFRQX2M \regArr_reg[13][3]  ( .D(n293), .SI(\regArr[13][2] ), .SE(test_se), 
        .CK(CLK), .RN(n351), .Q(\regArr[13][3] ) );
  SDFFRQX2M \regArr_reg[13][2]  ( .D(n292), .SI(\regArr[13][1] ), .SE(test_se), 
        .CK(CLK), .RN(n351), .Q(\regArr[13][2] ) );
  SDFFRQX2M \regArr_reg[13][1]  ( .D(n291), .SI(\regArr[13][0] ), .SE(test_se), 
        .CK(CLK), .RN(n351), .Q(\regArr[13][1] ) );
  SDFFRQX2M \regArr_reg[13][0]  ( .D(n290), .SI(\regArr[12][7] ), .SE(test_se), 
        .CK(CLK), .RN(n351), .Q(\regArr[13][0] ) );
  SDFFRQX2M \regArr_reg[9][7]  ( .D(n265), .SI(\regArr[9][6] ), .SE(test_se), 
        .CK(CLK), .RN(n349), .Q(\regArr[9][7] ) );
  SDFFRQX2M \regArr_reg[9][6]  ( .D(n264), .SI(\regArr[9][5] ), .SE(test_se), 
        .CK(CLK), .RN(n349), .Q(\regArr[9][6] ) );
  SDFFRQX2M \regArr_reg[9][5]  ( .D(n263), .SI(\regArr[9][4] ), .SE(test_se), 
        .CK(CLK), .RN(n349), .Q(\regArr[9][5] ) );
  SDFFRQX2M \regArr_reg[9][4]  ( .D(n262), .SI(\regArr[9][3] ), .SE(test_se), 
        .CK(CLK), .RN(n349), .Q(\regArr[9][4] ) );
  SDFFRQX2M \regArr_reg[9][3]  ( .D(n261), .SI(\regArr[9][2] ), .SE(test_se), 
        .CK(CLK), .RN(n349), .Q(\regArr[9][3] ) );
  SDFFRQX2M \regArr_reg[9][2]  ( .D(n260), .SI(\regArr[9][1] ), .SE(test_se), 
        .CK(CLK), .RN(n349), .Q(\regArr[9][2] ) );
  SDFFRQX2M \regArr_reg[9][1]  ( .D(n259), .SI(\regArr[9][0] ), .SE(test_se), 
        .CK(CLK), .RN(n349), .Q(\regArr[9][1] ) );
  SDFFRQX2M \regArr_reg[9][0]  ( .D(n258), .SI(\regArr[8][7] ), .SE(test_se), 
        .CK(CLK), .RN(n348), .Q(\regArr[9][0] ) );
  SDFFRQX2M \regArr_reg[5][7]  ( .D(n233), .SI(\regArr[5][6] ), .SE(test_se), 
        .CK(CLK), .RN(n347), .Q(\regArr[5][7] ) );
  SDFFRQX2M \regArr_reg[5][6]  ( .D(n232), .SI(\regArr[5][5] ), .SE(test_se), 
        .CK(CLK), .RN(n347), .Q(\regArr[5][6] ) );
  SDFFRQX2M \regArr_reg[5][5]  ( .D(n231), .SI(\regArr[5][4] ), .SE(test_se), 
        .CK(CLK), .RN(n346), .Q(\regArr[5][5] ) );
  SDFFRQX2M \regArr_reg[5][4]  ( .D(n230), .SI(\regArr[5][3] ), .SE(test_se), 
        .CK(CLK), .RN(n346), .Q(\regArr[5][4] ) );
  SDFFRQX2M \regArr_reg[5][3]  ( .D(n229), .SI(\regArr[5][2] ), .SE(test_se), 
        .CK(CLK), .RN(n346), .Q(\regArr[5][3] ) );
  SDFFRQX2M \regArr_reg[5][2]  ( .D(n228), .SI(\regArr[5][1] ), .SE(test_se), 
        .CK(CLK), .RN(n346), .Q(\regArr[5][2] ) );
  SDFFRQX2M \regArr_reg[5][1]  ( .D(n227), .SI(\regArr[5][0] ), .SE(test_se), 
        .CK(CLK), .RN(n346), .Q(\regArr[5][1] ) );
  SDFFRQX2M \regArr_reg[5][0]  ( .D(n226), .SI(\regArr[4][7] ), .SE(test_se), 
        .CK(CLK), .RN(n346), .Q(\regArr[5][0] ) );
  SDFFRQX2M \regArr_reg[15][7]  ( .D(n313), .SI(\regArr[15][6] ), .SE(test_se), 
        .CK(CLK), .RN(n343), .Q(\regArr[15][7] ) );
  SDFFRQX2M \regArr_reg[15][6]  ( .D(n312), .SI(\regArr[15][5] ), .SE(test_se), 
        .CK(CLK), .RN(n352), .Q(\regArr[15][6] ) );
  SDFFRQX2M \regArr_reg[15][5]  ( .D(n311), .SI(\regArr[15][4] ), .SE(test_se), 
        .CK(CLK), .RN(n352), .Q(\regArr[15][5] ) );
  SDFFRQX2M \regArr_reg[15][4]  ( .D(n310), .SI(\regArr[15][3] ), .SE(test_se), 
        .CK(CLK), .RN(n352), .Q(\regArr[15][4] ) );
  SDFFRQX2M \regArr_reg[15][3]  ( .D(n309), .SI(\regArr[15][2] ), .SE(test_se), 
        .CK(CLK), .RN(n352), .Q(\regArr[15][3] ) );
  SDFFRQX2M \regArr_reg[15][2]  ( .D(n308), .SI(\regArr[15][1] ), .SE(test_se), 
        .CK(CLK), .RN(n352), .Q(\regArr[15][2] ) );
  SDFFRQX2M \regArr_reg[15][1]  ( .D(n307), .SI(\regArr[15][0] ), .SE(test_se), 
        .CK(CLK), .RN(n352), .Q(\regArr[15][1] ) );
  SDFFRQX2M \regArr_reg[15][0]  ( .D(n306), .SI(\regArr[14][7] ), .SE(test_se), 
        .CK(CLK), .RN(n352), .Q(\regArr[15][0] ) );
  SDFFRQX2M \regArr_reg[11][7]  ( .D(n281), .SI(\regArr[11][6] ), .SE(test_se), 
        .CK(CLK), .RN(n350), .Q(\regArr[11][7] ) );
  SDFFRQX2M \regArr_reg[11][6]  ( .D(n280), .SI(\regArr[11][5] ), .SE(test_se), 
        .CK(CLK), .RN(n350), .Q(\regArr[11][6] ) );
  SDFFRQX2M \regArr_reg[11][5]  ( .D(n279), .SI(\regArr[11][4] ), .SE(test_se), 
        .CK(CLK), .RN(n350), .Q(\regArr[11][5] ) );
  SDFFRQX2M \regArr_reg[11][4]  ( .D(n278), .SI(\regArr[11][3] ), .SE(test_se), 
        .CK(CLK), .RN(n350), .Q(\regArr[11][4] ) );
  SDFFRQX2M \regArr_reg[11][3]  ( .D(n277), .SI(\regArr[11][2] ), .SE(test_se), 
        .CK(CLK), .RN(n350), .Q(\regArr[11][3] ) );
  SDFFRQX2M \regArr_reg[11][2]  ( .D(n276), .SI(\regArr[11][1] ), .SE(test_se), 
        .CK(CLK), .RN(n350), .Q(\regArr[11][2] ) );
  SDFFRQX2M \regArr_reg[11][1]  ( .D(n275), .SI(\regArr[11][0] ), .SE(test_se), 
        .CK(CLK), .RN(n350), .Q(\regArr[11][1] ) );
  SDFFRQX2M \regArr_reg[11][0]  ( .D(n274), .SI(\regArr[10][7] ), .SE(test_se), 
        .CK(CLK), .RN(n350), .Q(\regArr[11][0] ) );
  SDFFRQX2M \regArr_reg[7][7]  ( .D(n249), .SI(\regArr[7][6] ), .SE(test_se), 
        .CK(CLK), .RN(n348), .Q(\regArr[7][7] ) );
  SDFFRQX2M \regArr_reg[7][6]  ( .D(n248), .SI(\regArr[7][5] ), .SE(test_se), 
        .CK(CLK), .RN(n348), .Q(\regArr[7][6] ) );
  SDFFRQX2M \regArr_reg[7][5]  ( .D(n247), .SI(\regArr[7][4] ), .SE(test_se), 
        .CK(CLK), .RN(n348), .Q(\regArr[7][5] ) );
  SDFFRQX2M \regArr_reg[7][4]  ( .D(n246), .SI(\regArr[7][3] ), .SE(test_se), 
        .CK(CLK), .RN(n348), .Q(\regArr[7][4] ) );
  SDFFRQX2M \regArr_reg[7][3]  ( .D(n245), .SI(\regArr[7][2] ), .SE(test_se), 
        .CK(CLK), .RN(n348), .Q(\regArr[7][3] ) );
  SDFFRQX2M \regArr_reg[7][2]  ( .D(n244), .SI(\regArr[7][1] ), .SE(test_se), 
        .CK(CLK), .RN(n347), .Q(\regArr[7][2] ) );
  SDFFRQX2M \regArr_reg[7][1]  ( .D(n243), .SI(\regArr[7][0] ), .SE(test_se), 
        .CK(CLK), .RN(n347), .Q(\regArr[7][1] ) );
  SDFFRQX2M \regArr_reg[7][0]  ( .D(n242), .SI(\regArr[6][7] ), .SE(test_se), 
        .CK(CLK), .RN(n347), .Q(\regArr[7][0] ) );
  SDFFRQX2M \regArr_reg[14][7]  ( .D(n305), .SI(\regArr[14][6] ), .SE(test_se), 
        .CK(CLK), .RN(n352), .Q(\regArr[14][7] ) );
  SDFFRQX2M \regArr_reg[14][6]  ( .D(n304), .SI(\regArr[14][5] ), .SE(test_se), 
        .CK(CLK), .RN(n352), .Q(\regArr[14][6] ) );
  SDFFRQX2M \regArr_reg[14][5]  ( .D(n303), .SI(\regArr[14][4] ), .SE(test_se), 
        .CK(CLK), .RN(n352), .Q(\regArr[14][5] ) );
  SDFFRQX2M \regArr_reg[14][4]  ( .D(n302), .SI(\regArr[14][3] ), .SE(test_se), 
        .CK(CLK), .RN(n352), .Q(\regArr[14][4] ) );
  SDFFRQX2M \regArr_reg[14][3]  ( .D(n301), .SI(\regArr[14][2] ), .SE(test_se), 
        .CK(CLK), .RN(n352), .Q(\regArr[14][3] ) );
  SDFFRQX2M \regArr_reg[14][2]  ( .D(n300), .SI(\regArr[14][1] ), .SE(test_se), 
        .CK(CLK), .RN(n351), .Q(\regArr[14][2] ) );
  SDFFRQX2M \regArr_reg[14][1]  ( .D(n299), .SI(\regArr[14][0] ), .SE(test_se), 
        .CK(CLK), .RN(n351), .Q(\regArr[14][1] ) );
  SDFFRQX2M \regArr_reg[14][0]  ( .D(n298), .SI(\regArr[13][7] ), .SE(test_se), 
        .CK(CLK), .RN(n351), .Q(\regArr[14][0] ) );
  SDFFRQX2M \regArr_reg[10][7]  ( .D(n273), .SI(\regArr[10][6] ), .SE(test_se), 
        .CK(CLK), .RN(n350), .Q(\regArr[10][7] ) );
  SDFFRQX2M \regArr_reg[10][6]  ( .D(n272), .SI(\regArr[10][5] ), .SE(test_se), 
        .CK(CLK), .RN(n349), .Q(\regArr[10][6] ) );
  SDFFRQX2M \regArr_reg[10][5]  ( .D(n271), .SI(\regArr[10][4] ), .SE(test_se), 
        .CK(CLK), .RN(n349), .Q(\regArr[10][5] ) );
  SDFFRQX2M \regArr_reg[10][4]  ( .D(n270), .SI(\regArr[10][3] ), .SE(test_se), 
        .CK(CLK), .RN(n349), .Q(\regArr[10][4] ) );
  SDFFRQX2M \regArr_reg[10][3]  ( .D(n269), .SI(\regArr[10][2] ), .SE(test_se), 
        .CK(CLK), .RN(n349), .Q(\regArr[10][3] ) );
  SDFFRQX2M \regArr_reg[10][2]  ( .D(n268), .SI(\regArr[10][1] ), .SE(test_se), 
        .CK(CLK), .RN(n349), .Q(\regArr[10][2] ) );
  SDFFRQX2M \regArr_reg[10][1]  ( .D(n267), .SI(\regArr[10][0] ), .SE(test_se), 
        .CK(CLK), .RN(n349), .Q(\regArr[10][1] ) );
  SDFFRQX2M \regArr_reg[10][0]  ( .D(n266), .SI(\regArr[9][7] ), .SE(test_se), 
        .CK(CLK), .RN(n349), .Q(\regArr[10][0] ) );
  SDFFRQX2M \regArr_reg[6][7]  ( .D(n241), .SI(\regArr[6][6] ), .SE(test_se), 
        .CK(CLK), .RN(n347), .Q(\regArr[6][7] ) );
  SDFFRQX2M \regArr_reg[6][6]  ( .D(n240), .SI(\regArr[6][5] ), .SE(test_se), 
        .CK(CLK), .RN(n347), .Q(\regArr[6][6] ) );
  SDFFRQX2M \regArr_reg[6][5]  ( .D(n239), .SI(\regArr[6][4] ), .SE(test_se), 
        .CK(CLK), .RN(n347), .Q(\regArr[6][5] ) );
  SDFFRQX2M \regArr_reg[6][4]  ( .D(n238), .SI(test_si2), .SE(test_se), .CK(
        CLK), .RN(n347), .Q(\regArr[6][4] ) );
  SDFFRQX2M \regArr_reg[6][3]  ( .D(n237), .SI(\regArr[6][2] ), .SE(test_se), 
        .CK(CLK), .RN(n347), .Q(\regArr[6][3] ) );
  SDFFRQX2M \regArr_reg[6][2]  ( .D(n236), .SI(\regArr[6][1] ), .SE(test_se), 
        .CK(CLK), .RN(n347), .Q(\regArr[6][2] ) );
  SDFFRQX2M \regArr_reg[6][1]  ( .D(n235), .SI(\regArr[6][0] ), .SE(test_se), 
        .CK(CLK), .RN(n347), .Q(\regArr[6][1] ) );
  SDFFRQX2M \regArr_reg[6][0]  ( .D(n234), .SI(\regArr[5][7] ), .SE(test_se), 
        .CK(CLK), .RN(n347), .Q(\regArr[6][0] ) );
  SDFFRQX2M \regArr_reg[12][7]  ( .D(n289), .SI(\regArr[12][6] ), .SE(test_se), 
        .CK(CLK), .RN(n351), .Q(\regArr[12][7] ) );
  SDFFRQX2M \regArr_reg[12][6]  ( .D(n288), .SI(\regArr[12][5] ), .SE(test_se), 
        .CK(CLK), .RN(n351), .Q(\regArr[12][6] ) );
  SDFFRQX2M \regArr_reg[12][5]  ( .D(n287), .SI(\regArr[12][4] ), .SE(test_se), 
        .CK(CLK), .RN(n351), .Q(\regArr[12][5] ) );
  SDFFRQX2M \regArr_reg[12][4]  ( .D(n286), .SI(\regArr[12][3] ), .SE(test_se), 
        .CK(CLK), .RN(n350), .Q(\regArr[12][4] ) );
  SDFFRQX2M \regArr_reg[12][3]  ( .D(n285), .SI(\regArr[12][2] ), .SE(test_se), 
        .CK(CLK), .RN(n350), .Q(\regArr[12][3] ) );
  SDFFRQX2M \regArr_reg[12][2]  ( .D(n284), .SI(\regArr[12][1] ), .SE(test_se), 
        .CK(CLK), .RN(n350), .Q(\regArr[12][2] ) );
  SDFFRQX2M \regArr_reg[12][1]  ( .D(n283), .SI(\regArr[12][0] ), .SE(test_se), 
        .CK(CLK), .RN(n350), .Q(\regArr[12][1] ) );
  SDFFRQX2M \regArr_reg[12][0]  ( .D(n282), .SI(\regArr[11][7] ), .SE(test_se), 
        .CK(CLK), .RN(n350), .Q(\regArr[12][0] ) );
  SDFFRQX2M \regArr_reg[8][7]  ( .D(n257), .SI(\regArr[8][6] ), .SE(test_se), 
        .CK(CLK), .RN(n348), .Q(\regArr[8][7] ) );
  SDFFRQX2M \regArr_reg[8][6]  ( .D(n256), .SI(\regArr[8][5] ), .SE(test_se), 
        .CK(CLK), .RN(n348), .Q(\regArr[8][6] ) );
  SDFFRQX2M \regArr_reg[8][5]  ( .D(n255), .SI(\regArr[8][4] ), .SE(test_se), 
        .CK(CLK), .RN(n348), .Q(\regArr[8][5] ) );
  SDFFRQX2M \regArr_reg[8][4]  ( .D(n254), .SI(\regArr[8][3] ), .SE(test_se), 
        .CK(CLK), .RN(n348), .Q(\regArr[8][4] ) );
  SDFFRQX2M \regArr_reg[8][3]  ( .D(n253), .SI(\regArr[8][2] ), .SE(test_se), 
        .CK(CLK), .RN(n348), .Q(\regArr[8][3] ) );
  SDFFRQX2M \regArr_reg[8][2]  ( .D(n252), .SI(\regArr[8][1] ), .SE(test_se), 
        .CK(CLK), .RN(n348), .Q(\regArr[8][2] ) );
  SDFFRQX2M \regArr_reg[8][1]  ( .D(n251), .SI(\regArr[8][0] ), .SE(test_se), 
        .CK(CLK), .RN(n348), .Q(\regArr[8][1] ) );
  SDFFRQX2M \regArr_reg[8][0]  ( .D(n250), .SI(\regArr[7][7] ), .SE(test_se), 
        .CK(CLK), .RN(n348), .Q(\regArr[8][0] ) );
  SDFFRQX2M \regArr_reg[4][7]  ( .D(n225), .SI(\regArr[4][6] ), .SE(test_se), 
        .CK(CLK), .RN(n346), .Q(\regArr[4][7] ) );
  SDFFRQX2M \regArr_reg[4][6]  ( .D(n224), .SI(\regArr[4][5] ), .SE(test_se), 
        .CK(CLK), .RN(n346), .Q(\regArr[4][6] ) );
  SDFFRQX2M \regArr_reg[4][5]  ( .D(n223), .SI(\regArr[4][4] ), .SE(test_se), 
        .CK(CLK), .RN(n346), .Q(\regArr[4][5] ) );
  SDFFRQX2M \regArr_reg[4][4]  ( .D(n222), .SI(\regArr[4][3] ), .SE(test_se), 
        .CK(CLK), .RN(n346), .Q(\regArr[4][4] ) );
  SDFFRQX2M \regArr_reg[4][3]  ( .D(n221), .SI(\regArr[4][2] ), .SE(test_se), 
        .CK(CLK), .RN(n346), .Q(\regArr[4][3] ) );
  SDFFRQX2M \regArr_reg[4][2]  ( .D(n220), .SI(\regArr[4][1] ), .SE(test_se), 
        .CK(CLK), .RN(n346), .Q(\regArr[4][2] ) );
  SDFFRQX2M \regArr_reg[4][1]  ( .D(n219), .SI(\regArr[4][0] ), .SE(test_se), 
        .CK(CLK), .RN(n346), .Q(\regArr[4][1] ) );
  SDFFRQX2M \regArr_reg[4][0]  ( .D(n218), .SI(REG3[7]), .SE(test_se), .CK(CLK), .RN(n346), .Q(\regArr[4][0] ) );
  SDFFRQX2M \RdData_reg[7]  ( .D(n184), .SI(RdData[6]), .SE(test_se), .CK(CLK), 
        .RN(n344), .Q(RdData[7]) );
  SDFFRQX2M \RdData_reg[6]  ( .D(n183), .SI(RdData[5]), .SE(test_se), .CK(CLK), 
        .RN(n343), .Q(RdData[6]) );
  SDFFRQX2M \RdData_reg[5]  ( .D(n182), .SI(RdData[4]), .SE(test_se), .CK(CLK), 
        .RN(n343), .Q(RdData[5]) );
  SDFFRQX2M \RdData_reg[4]  ( .D(n181), .SI(RdData[3]), .SE(test_se), .CK(CLK), 
        .RN(n343), .Q(RdData[4]) );
  SDFFRQX2M \RdData_reg[3]  ( .D(n180), .SI(RdData[2]), .SE(test_se), .CK(CLK), 
        .RN(n343), .Q(RdData[3]) );
  SDFFRQX2M \RdData_reg[2]  ( .D(n179), .SI(RdData[1]), .SE(test_se), .CK(CLK), 
        .RN(n343), .Q(RdData[2]) );
  SDFFRQX2M \RdData_reg[1]  ( .D(n178), .SI(RdData[0]), .SE(test_se), .CK(CLK), 
        .RN(n343), .Q(RdData[1]) );
  SDFFRQX2M \RdData_reg[0]  ( .D(n177), .SI(RdData_VLD), .SE(test_se), .CK(CLK), .RN(n347), .Q(RdData[0]) );
  SDFFRQX2M \regArr_reg[3][0]  ( .D(n210), .SI(REG2[7]), .SE(test_se), .CK(CLK), .RN(n345), .Q(REG3[0]) );
  SDFFRQX2M \regArr_reg[1][6]  ( .D(n200), .SI(REG1[5]), .SE(test_se), .CK(CLK), .RN(n344), .Q(REG1[6]) );
  SDFFRQX2M \regArr_reg[0][7]  ( .D(n193), .SI(REG0[6]), .SE(test_se), .CK(CLK), .RN(n344), .Q(REG0[7]) );
  SDFFRQX2M \regArr_reg[0][6]  ( .D(n192), .SI(REG0[5]), .SE(test_se), .CK(CLK), .RN(n344), .Q(REG0[6]) );
  SDFFRQX2M \regArr_reg[0][5]  ( .D(n191), .SI(REG0[4]), .SE(test_se), .CK(CLK), .RN(n344), .Q(REG0[5]) );
  SDFFRQX2M \regArr_reg[0][4]  ( .D(n190), .SI(REG0[3]), .SE(test_se), .CK(CLK), .RN(n344), .Q(REG0[4]) );
  SDFFRQX2M \regArr_reg[0][3]  ( .D(n189), .SI(REG0[2]), .SE(test_se), .CK(CLK), .RN(n344), .Q(REG0[3]) );
  SDFFRQX2M \regArr_reg[0][2]  ( .D(n188), .SI(REG0[1]), .SE(test_se), .CK(CLK), .RN(n344), .Q(REG0[2]) );
  SDFFRQX2M \regArr_reg[0][1]  ( .D(n187), .SI(REG0[0]), .SE(test_se), .CK(CLK), .RN(n343), .Q(REG0[1]) );
  SDFFRQX2M \regArr_reg[0][0]  ( .D(n186), .SI(RdData[7]), .SE(test_se), .CK(
        CLK), .RN(n343), .Q(REG0[0]) );
  SDFFSQX2M \regArr_reg[2][0]  ( .D(n202), .SI(REG1[7]), .SE(test_se), .CK(CLK), .SN(n343), .Q(REG2[0]) );
  SDFFRQX2M \regArr_reg[2][1]  ( .D(n203), .SI(REG2[0]), .SE(test_se), .CK(CLK), .RN(n345), .Q(REG2[1]) );
  SDFFRQX2M RdData_VLD_reg ( .D(n185), .SI(test_si1), .SE(test_se), .CK(CLK), 
        .RN(n343), .Q(RdData_VLD) );
  SDFFRQX2M \regArr_reg[1][1]  ( .D(n195), .SI(REG1[0]), .SE(test_se), .CK(CLK), .RN(n344), .Q(REG1[1]) );
  SDFFRQX2M \regArr_reg[1][5]  ( .D(n199), .SI(REG1[4]), .SE(test_se), .CK(CLK), .RN(n345), .Q(REG1[5]) );
  SDFFRQX2M \regArr_reg[1][4]  ( .D(n198), .SI(REG1[3]), .SE(test_se), .CK(CLK), .RN(n344), .Q(REG1[4]) );
  SDFFRQX2M \regArr_reg[1][7]  ( .D(n201), .SI(REG1[6]), .SE(test_se), .CK(CLK), .RN(n344), .Q(REG1[7]) );
  SDFFRQX2M \regArr_reg[1][3]  ( .D(n197), .SI(REG1[2]), .SE(test_se), .CK(CLK), .RN(n344), .Q(REG1[3]) );
  SDFFRQX2M \regArr_reg[1][2]  ( .D(n196), .SI(REG1[1]), .SE(test_se), .CK(CLK), .RN(n344), .Q(REG1[2]) );
  SDFFRQX2M \regArr_reg[1][0]  ( .D(n194), .SI(REG0[7]), .SE(test_se), .CK(CLK), .RN(n344), .Q(REG1[0]) );
  SDFFRQX2M \regArr_reg[3][6]  ( .D(n216), .SI(REG3[5]), .SE(test_se), .CK(CLK), .RN(n345), .Q(REG3[6]) );
  SDFFRQX2M \regArr_reg[3][7]  ( .D(n217), .SI(REG3[6]), .SE(test_se), .CK(CLK), .RN(n345), .Q(REG3[7]) );
  SDFFSQX2M \regArr_reg[3][5]  ( .D(n215), .SI(REG3[4]), .SE(test_se), .CK(CLK), .SN(n343), .Q(REG3[5]) );
  SDFFRQX2M \regArr_reg[3][4]  ( .D(n214), .SI(REG3[3]), .SE(test_se), .CK(CLK), .RN(n345), .Q(REG3[4]) );
  SDFFRQX2M \regArr_reg[3][2]  ( .D(n212), .SI(REG3[1]), .SE(test_se), .CK(CLK), .RN(n345), .Q(REG3[2]) );
  SDFFRQX2M \regArr_reg[3][3]  ( .D(n213), .SI(REG3[2]), .SE(test_se), .CK(CLK), .RN(n345), .Q(REG3[3]) );
  SDFFRQX2M \regArr_reg[3][1]  ( .D(n211), .SI(REG3[0]), .SE(test_se), .CK(CLK), .RN(n345), .Q(REG3[1]) );
  SDFFRQX2M \regArr_reg[2][2]  ( .D(n204), .SI(REG2[1]), .SE(test_se), .CK(CLK), .RN(n345), .Q(REG2[2]) );
  SDFFRQX2M \regArr_reg[2][4]  ( .D(n206), .SI(REG2[3]), .SE(test_se), .CK(CLK), .RN(n345), .Q(REG2[4]) );
  SDFFRQX2M \regArr_reg[2][3]  ( .D(n205), .SI(REG2[2]), .SE(test_se), .CK(CLK), .RN(n345), .Q(REG2[3]) );
  SDFFRQX2M \regArr_reg[2][6]  ( .D(n208), .SI(REG2[5]), .SE(test_se), .CK(CLK), .RN(n345), .Q(REG2[6]) );
  SDFFRQX2M \regArr_reg[2][5]  ( .D(n207), .SI(REG2[4]), .SE(test_se), .CK(CLK), .RN(n345), .Q(REG2[5]) );
  SDFFSQX1M \regArr_reg[2][7]  ( .D(n209), .SI(REG2[6]), .SE(test_se), .CK(CLK), .SN(RST), .Q(REG2[7]) );
  NOR2BX2M U141 ( .AN(n175), .B(n341), .Y(n169) );
  NOR2BX2M U142 ( .AN(N13), .B(N12), .Y(n160) );
  NOR2BX2M U143 ( .AN(N13), .B(n342), .Y(n163) );
  NOR2BX2M U144 ( .AN(n164), .B(n341), .Y(n155) );
  NOR2X2M U145 ( .A(n342), .B(N13), .Y(n157) );
  NOR2X2M U146 ( .A(N12), .B(N13), .Y(n152) );
  INVX2M U147 ( .A(n338), .Y(n340) );
  INVX2M U148 ( .A(n338), .Y(n339) );
  INVX2M U149 ( .A(n336), .Y(n337) );
  BUFX2M U150 ( .A(n341), .Y(n338) );
  BUFX2M U151 ( .A(n342), .Y(n336) );
  INVX2M U152 ( .A(n149), .Y(n366) );
  NOR2BX2M U153 ( .AN(n175), .B(n339), .Y(n167) );
  NAND2X2M U154 ( .A(n167), .B(n152), .Y(n166) );
  NAND2X2M U155 ( .A(n169), .B(n152), .Y(n168) );
  NAND2X2M U156 ( .A(n167), .B(n157), .Y(n170) );
  NAND2X2M U157 ( .A(n169), .B(n157), .Y(n171) );
  NAND2X2M U158 ( .A(n167), .B(n160), .Y(n172) );
  NAND2X2M U159 ( .A(n169), .B(n160), .Y(n173) );
  NAND2X2M U160 ( .A(n167), .B(n163), .Y(n174) );
  NAND2X2M U161 ( .A(n169), .B(n163), .Y(n176) );
  NOR2BX2M U162 ( .AN(n164), .B(n339), .Y(n153) );
  NAND2X2M U163 ( .A(n155), .B(n152), .Y(n154) );
  NAND2X2M U164 ( .A(n157), .B(n153), .Y(n156) );
  NAND2X2M U165 ( .A(n157), .B(n155), .Y(n158) );
  NAND2X2M U166 ( .A(n160), .B(n153), .Y(n159) );
  NAND2X2M U167 ( .A(n160), .B(n155), .Y(n161) );
  NAND2X2M U168 ( .A(n163), .B(n153), .Y(n162) );
  NAND2X2M U169 ( .A(n163), .B(n155), .Y(n165) );
  NAND2X2M U170 ( .A(n152), .B(n153), .Y(n151) );
  NAND2BX2M U171 ( .AN(WrEn), .B(RdEn), .Y(n149) );
  NOR2BX2M U172 ( .AN(WrEn), .B(RdEn), .Y(n150) );
  BUFX2M U173 ( .A(n357), .Y(n344) );
  BUFX2M U174 ( .A(n356), .Y(n345) );
  BUFX2M U175 ( .A(n356), .Y(n346) );
  BUFX2M U176 ( .A(n355), .Y(n347) );
  BUFX2M U177 ( .A(n355), .Y(n348) );
  BUFX2M U178 ( .A(n354), .Y(n349) );
  BUFX2M U179 ( .A(n354), .Y(n350) );
  BUFX2M U180 ( .A(n353), .Y(n351) );
  BUFX2M U181 ( .A(n357), .Y(n343) );
  BUFX2M U182 ( .A(n353), .Y(n352) );
  AND2X2M U183 ( .A(N14), .B(n150), .Y(n175) );
  INVX2M U184 ( .A(WrData[0]), .Y(n358) );
  INVX2M U185 ( .A(WrData[1]), .Y(n359) );
  INVX2M U186 ( .A(WrData[2]), .Y(n360) );
  INVX2M U187 ( .A(WrData[3]), .Y(n361) );
  INVX2M U188 ( .A(WrData[4]), .Y(n362) );
  NOR2BX2M U189 ( .AN(n150), .B(N14), .Y(n164) );
  BUFX2M U190 ( .A(RST), .Y(n356) );
  BUFX2M U191 ( .A(RST), .Y(n355) );
  BUFX2M U192 ( .A(RST), .Y(n354) );
  BUFX2M U193 ( .A(RST), .Y(n353) );
  BUFX2M U194 ( .A(RST), .Y(n357) );
  OAI2BB2X1M U195 ( .B0(n358), .B1(n166), .A0N(\regArr[8][0] ), .A1N(n166), 
        .Y(n250) );
  OAI2BB2X1M U196 ( .B0(n359), .B1(n166), .A0N(\regArr[8][1] ), .A1N(n166), 
        .Y(n251) );
  OAI2BB2X1M U197 ( .B0(n360), .B1(n166), .A0N(\regArr[8][2] ), .A1N(n166), 
        .Y(n252) );
  OAI2BB2X1M U198 ( .B0(n361), .B1(n166), .A0N(\regArr[8][3] ), .A1N(n166), 
        .Y(n253) );
  OAI2BB2X1M U199 ( .B0(n362), .B1(n166), .A0N(\regArr[8][4] ), .A1N(n166), 
        .Y(n254) );
  OAI2BB2X1M U200 ( .B0(n363), .B1(n166), .A0N(\regArr[8][5] ), .A1N(n166), 
        .Y(n255) );
  OAI2BB2X1M U201 ( .B0(n364), .B1(n166), .A0N(\regArr[8][6] ), .A1N(n166), 
        .Y(n256) );
  OAI2BB2X1M U202 ( .B0(n365), .B1(n166), .A0N(\regArr[8][7] ), .A1N(n166), 
        .Y(n257) );
  OAI2BB2X1M U203 ( .B0(n358), .B1(n168), .A0N(\regArr[9][0] ), .A1N(n168), 
        .Y(n258) );
  OAI2BB2X1M U204 ( .B0(n359), .B1(n168), .A0N(\regArr[9][1] ), .A1N(n168), 
        .Y(n259) );
  OAI2BB2X1M U205 ( .B0(n360), .B1(n168), .A0N(\regArr[9][2] ), .A1N(n168), 
        .Y(n260) );
  OAI2BB2X1M U206 ( .B0(n361), .B1(n168), .A0N(\regArr[9][3] ), .A1N(n168), 
        .Y(n261) );
  OAI2BB2X1M U207 ( .B0(n362), .B1(n168), .A0N(\regArr[9][4] ), .A1N(n168), 
        .Y(n262) );
  OAI2BB2X1M U208 ( .B0(n363), .B1(n168), .A0N(\regArr[9][5] ), .A1N(n168), 
        .Y(n263) );
  OAI2BB2X1M U209 ( .B0(n364), .B1(n168), .A0N(\regArr[9][6] ), .A1N(n168), 
        .Y(n264) );
  OAI2BB2X1M U210 ( .B0(n365), .B1(n168), .A0N(\regArr[9][7] ), .A1N(n168), 
        .Y(n265) );
  OAI2BB2X1M U211 ( .B0(n358), .B1(n170), .A0N(\regArr[10][0] ), .A1N(n170), 
        .Y(n266) );
  OAI2BB2X1M U212 ( .B0(n359), .B1(n170), .A0N(\regArr[10][1] ), .A1N(n170), 
        .Y(n267) );
  OAI2BB2X1M U213 ( .B0(n360), .B1(n170), .A0N(\regArr[10][2] ), .A1N(n170), 
        .Y(n268) );
  OAI2BB2X1M U214 ( .B0(n361), .B1(n170), .A0N(\regArr[10][3] ), .A1N(n170), 
        .Y(n269) );
  OAI2BB2X1M U215 ( .B0(n362), .B1(n170), .A0N(\regArr[10][4] ), .A1N(n170), 
        .Y(n270) );
  OAI2BB2X1M U216 ( .B0(n363), .B1(n170), .A0N(\regArr[10][5] ), .A1N(n170), 
        .Y(n271) );
  OAI2BB2X1M U217 ( .B0(n364), .B1(n170), .A0N(\regArr[10][6] ), .A1N(n170), 
        .Y(n272) );
  OAI2BB2X1M U218 ( .B0(n365), .B1(n170), .A0N(\regArr[10][7] ), .A1N(n170), 
        .Y(n273) );
  OAI2BB2X1M U219 ( .B0(n358), .B1(n171), .A0N(\regArr[11][0] ), .A1N(n171), 
        .Y(n274) );
  OAI2BB2X1M U220 ( .B0(n359), .B1(n171), .A0N(\regArr[11][1] ), .A1N(n171), 
        .Y(n275) );
  OAI2BB2X1M U221 ( .B0(n360), .B1(n171), .A0N(\regArr[11][2] ), .A1N(n171), 
        .Y(n276) );
  OAI2BB2X1M U222 ( .B0(n361), .B1(n171), .A0N(\regArr[11][3] ), .A1N(n171), 
        .Y(n277) );
  OAI2BB2X1M U223 ( .B0(n362), .B1(n171), .A0N(\regArr[11][4] ), .A1N(n171), 
        .Y(n278) );
  OAI2BB2X1M U224 ( .B0(n363), .B1(n171), .A0N(\regArr[11][5] ), .A1N(n171), 
        .Y(n279) );
  OAI2BB2X1M U225 ( .B0(n364), .B1(n171), .A0N(\regArr[11][6] ), .A1N(n171), 
        .Y(n280) );
  OAI2BB2X1M U226 ( .B0(n365), .B1(n171), .A0N(\regArr[11][7] ), .A1N(n171), 
        .Y(n281) );
  OAI2BB2X1M U227 ( .B0(n358), .B1(n172), .A0N(\regArr[12][0] ), .A1N(n172), 
        .Y(n282) );
  OAI2BB2X1M U228 ( .B0(n359), .B1(n172), .A0N(\regArr[12][1] ), .A1N(n172), 
        .Y(n283) );
  OAI2BB2X1M U229 ( .B0(n360), .B1(n172), .A0N(\regArr[12][2] ), .A1N(n172), 
        .Y(n284) );
  OAI2BB2X1M U230 ( .B0(n361), .B1(n172), .A0N(\regArr[12][3] ), .A1N(n172), 
        .Y(n285) );
  OAI2BB2X1M U231 ( .B0(n362), .B1(n172), .A0N(\regArr[12][4] ), .A1N(n172), 
        .Y(n286) );
  OAI2BB2X1M U232 ( .B0(n363), .B1(n172), .A0N(\regArr[12][5] ), .A1N(n172), 
        .Y(n287) );
  OAI2BB2X1M U233 ( .B0(n364), .B1(n172), .A0N(\regArr[12][6] ), .A1N(n172), 
        .Y(n288) );
  OAI2BB2X1M U234 ( .B0(n365), .B1(n172), .A0N(\regArr[12][7] ), .A1N(n172), 
        .Y(n289) );
  OAI2BB2X1M U235 ( .B0(n358), .B1(n173), .A0N(\regArr[13][0] ), .A1N(n173), 
        .Y(n290) );
  OAI2BB2X1M U236 ( .B0(n359), .B1(n173), .A0N(\regArr[13][1] ), .A1N(n173), 
        .Y(n291) );
  OAI2BB2X1M U237 ( .B0(n360), .B1(n173), .A0N(\regArr[13][2] ), .A1N(n173), 
        .Y(n292) );
  OAI2BB2X1M U238 ( .B0(n361), .B1(n173), .A0N(\regArr[13][3] ), .A1N(n173), 
        .Y(n293) );
  OAI2BB2X1M U239 ( .B0(n362), .B1(n173), .A0N(\regArr[13][4] ), .A1N(n173), 
        .Y(n294) );
  OAI2BB2X1M U240 ( .B0(n363), .B1(n173), .A0N(\regArr[13][5] ), .A1N(n173), 
        .Y(n295) );
  OAI2BB2X1M U241 ( .B0(n364), .B1(n173), .A0N(\regArr[13][6] ), .A1N(n173), 
        .Y(n296) );
  OAI2BB2X1M U242 ( .B0(n365), .B1(n173), .A0N(\regArr[13][7] ), .A1N(n173), 
        .Y(n297) );
  OAI2BB2X1M U243 ( .B0(n358), .B1(n174), .A0N(\regArr[14][0] ), .A1N(n174), 
        .Y(n298) );
  OAI2BB2X1M U244 ( .B0(n359), .B1(n174), .A0N(\regArr[14][1] ), .A1N(n174), 
        .Y(n299) );
  OAI2BB2X1M U245 ( .B0(n360), .B1(n174), .A0N(\regArr[14][2] ), .A1N(n174), 
        .Y(n300) );
  OAI2BB2X1M U246 ( .B0(n361), .B1(n174), .A0N(\regArr[14][3] ), .A1N(n174), 
        .Y(n301) );
  OAI2BB2X1M U247 ( .B0(n362), .B1(n174), .A0N(\regArr[14][4] ), .A1N(n174), 
        .Y(n302) );
  OAI2BB2X1M U248 ( .B0(n363), .B1(n174), .A0N(\regArr[14][5] ), .A1N(n174), 
        .Y(n303) );
  OAI2BB2X1M U249 ( .B0(n364), .B1(n174), .A0N(\regArr[14][6] ), .A1N(n174), 
        .Y(n304) );
  OAI2BB2X1M U250 ( .B0(n365), .B1(n174), .A0N(\regArr[14][7] ), .A1N(n174), 
        .Y(n305) );
  OAI2BB2X1M U251 ( .B0(n358), .B1(n176), .A0N(\regArr[15][0] ), .A1N(n176), 
        .Y(n306) );
  OAI2BB2X1M U252 ( .B0(n359), .B1(n176), .A0N(\regArr[15][1] ), .A1N(n176), 
        .Y(n307) );
  OAI2BB2X1M U253 ( .B0(n360), .B1(n176), .A0N(\regArr[15][2] ), .A1N(n176), 
        .Y(n308) );
  OAI2BB2X1M U254 ( .B0(n361), .B1(n176), .A0N(\regArr[15][3] ), .A1N(n176), 
        .Y(n309) );
  OAI2BB2X1M U255 ( .B0(n362), .B1(n176), .A0N(\regArr[15][4] ), .A1N(n176), 
        .Y(n310) );
  OAI2BB2X1M U256 ( .B0(n363), .B1(n176), .A0N(\regArr[15][5] ), .A1N(n176), 
        .Y(n311) );
  OAI2BB2X1M U257 ( .B0(n364), .B1(n176), .A0N(\regArr[15][6] ), .A1N(n176), 
        .Y(n312) );
  OAI2BB2X1M U258 ( .B0(n365), .B1(n176), .A0N(\regArr[15][7] ), .A1N(n176), 
        .Y(n313) );
  AO22X1M U259 ( .A0(N43), .A1(n366), .B0(RdData[0]), .B1(n149), .Y(n177) );
  MX4X1M U260 ( .A(n142), .B(n140), .C(n141), .D(n139), .S0(N14), .S1(N13), 
        .Y(N43) );
  MX4X1M U261 ( .A(REG0[0]), .B(REG1[0]), .C(REG2[0]), .D(REG3[0]), .S0(n339), 
        .S1(N12), .Y(n142) );
  MX4X1M U262 ( .A(\regArr[8][0] ), .B(\regArr[9][0] ), .C(\regArr[10][0] ), 
        .D(\regArr[11][0] ), .S0(n339), .S1(N12), .Y(n140) );
  AO22X1M U263 ( .A0(N42), .A1(n366), .B0(RdData[1]), .B1(n149), .Y(n178) );
  MX4X1M U264 ( .A(n146), .B(n144), .C(n145), .D(n143), .S0(N14), .S1(N13), 
        .Y(N42) );
  MX4X1M U265 ( .A(\regArr[8][1] ), .B(\regArr[9][1] ), .C(\regArr[10][1] ), 
        .D(\regArr[11][1] ), .S0(n339), .S1(N12), .Y(n144) );
  MX4X1M U266 ( .A(\regArr[12][1] ), .B(\regArr[13][1] ), .C(\regArr[14][1] ), 
        .D(\regArr[15][1] ), .S0(n339), .S1(n337), .Y(n143) );
  AO22X1M U267 ( .A0(N41), .A1(n366), .B0(RdData[2]), .B1(n149), .Y(n179) );
  MX4X1M U268 ( .A(n315), .B(n148), .C(n314), .D(n147), .S0(N14), .S1(N13), 
        .Y(N41) );
  MX4X1M U269 ( .A(REG0[2]), .B(REG1[2]), .C(REG2[2]), .D(REG3[2]), .S0(n340), 
        .S1(n337), .Y(n315) );
  MX4X1M U270 ( .A(\regArr[8][2] ), .B(\regArr[9][2] ), .C(\regArr[10][2] ), 
        .D(\regArr[11][2] ), .S0(n340), .S1(n337), .Y(n148) );
  AO22X1M U271 ( .A0(N40), .A1(n366), .B0(RdData[3]), .B1(n149), .Y(n180) );
  MX4X1M U272 ( .A(n319), .B(n317), .C(n318), .D(n316), .S0(N14), .S1(N13), 
        .Y(N40) );
  MX4X1M U273 ( .A(REG0[3]), .B(REG1[3]), .C(REG2[3]), .D(REG3[3]), .S0(n340), 
        .S1(n337), .Y(n319) );
  MX4X1M U274 ( .A(\regArr[8][3] ), .B(\regArr[9][3] ), .C(\regArr[10][3] ), 
        .D(\regArr[11][3] ), .S0(n340), .S1(n337), .Y(n317) );
  AO22X1M U275 ( .A0(N39), .A1(n366), .B0(RdData[4]), .B1(n149), .Y(n181) );
  MX4X1M U276 ( .A(n323), .B(n321), .C(n322), .D(n320), .S0(N14), .S1(N13), 
        .Y(N39) );
  MX4X1M U277 ( .A(REG0[4]), .B(REG1[4]), .C(REG2[4]), .D(REG3[4]), .S0(N11), 
        .S1(n337), .Y(n323) );
  MX4X1M U278 ( .A(\regArr[8][4] ), .B(\regArr[9][4] ), .C(\regArr[10][4] ), 
        .D(\regArr[11][4] ), .S0(n340), .S1(n337), .Y(n321) );
  AO22X1M U279 ( .A0(N38), .A1(n366), .B0(RdData[5]), .B1(n149), .Y(n182) );
  MX4X1M U280 ( .A(n327), .B(n325), .C(n326), .D(n324), .S0(N14), .S1(N13), 
        .Y(N38) );
  MX4X1M U281 ( .A(REG0[5]), .B(REG1[5]), .C(REG2[5]), .D(REG3[5]), .S0(N11), 
        .S1(N12), .Y(n327) );
  MX4X1M U282 ( .A(\regArr[8][5] ), .B(\regArr[9][5] ), .C(\regArr[10][5] ), 
        .D(\regArr[11][5] ), .S0(n339), .S1(N12), .Y(n325) );
  AO22X1M U283 ( .A0(N37), .A1(n366), .B0(RdData[6]), .B1(n149), .Y(n183) );
  MX4X1M U284 ( .A(n331), .B(n329), .C(n330), .D(n328), .S0(N14), .S1(N13), 
        .Y(N37) );
  MX4X1M U285 ( .A(REG0[6]), .B(REG1[6]), .C(REG2[6]), .D(REG3[6]), .S0(N11), 
        .S1(N12), .Y(n331) );
  MX4X1M U286 ( .A(\regArr[8][6] ), .B(\regArr[9][6] ), .C(\regArr[10][6] ), 
        .D(\regArr[11][6] ), .S0(n340), .S1(N12), .Y(n329) );
  AO22X1M U287 ( .A0(N36), .A1(n366), .B0(RdData[7]), .B1(n149), .Y(n184) );
  MX4X1M U288 ( .A(n335), .B(n333), .C(n334), .D(n332), .S0(N14), .S1(N13), 
        .Y(N36) );
  MX4X1M U289 ( .A(REG0[7]), .B(REG1[7]), .C(REG2[7]), .D(REG3[7]), .S0(N11), 
        .S1(N12), .Y(n335) );
  MX4X1M U290 ( .A(\regArr[8][7] ), .B(\regArr[9][7] ), .C(\regArr[10][7] ), 
        .D(\regArr[11][7] ), .S0(N11), .S1(N12), .Y(n333) );
  MX4X1M U291 ( .A(REG0[1]), .B(REG1[1]), .C(REG2[1]), .D(REG3[1]), .S0(n340), 
        .S1(N12), .Y(n146) );
  MX4X1M U292 ( .A(\regArr[4][0] ), .B(\regArr[5][0] ), .C(\regArr[6][0] ), 
        .D(\regArr[7][0] ), .S0(n339), .S1(N12), .Y(n141) );
  MX4X1M U293 ( .A(\regArr[4][1] ), .B(\regArr[5][1] ), .C(\regArr[6][1] ), 
        .D(\regArr[7][1] ), .S0(n340), .S1(N12), .Y(n145) );
  MX4X1M U294 ( .A(\regArr[4][2] ), .B(\regArr[5][2] ), .C(\regArr[6][2] ), 
        .D(\regArr[7][2] ), .S0(n340), .S1(n337), .Y(n314) );
  MX4X1M U295 ( .A(\regArr[4][3] ), .B(\regArr[5][3] ), .C(\regArr[6][3] ), 
        .D(\regArr[7][3] ), .S0(n340), .S1(n337), .Y(n318) );
  MX4X1M U296 ( .A(\regArr[4][4] ), .B(\regArr[5][4] ), .C(\regArr[6][4] ), 
        .D(\regArr[7][4] ), .S0(n340), .S1(n337), .Y(n322) );
  MX4X1M U297 ( .A(\regArr[4][5] ), .B(\regArr[5][5] ), .C(\regArr[6][5] ), 
        .D(\regArr[7][5] ), .S0(n339), .S1(N12), .Y(n326) );
  MX4X1M U298 ( .A(\regArr[4][6] ), .B(\regArr[5][6] ), .C(\regArr[6][6] ), 
        .D(\regArr[7][6] ), .S0(n339), .S1(N12), .Y(n330) );
  MX4X1M U299 ( .A(\regArr[4][7] ), .B(\regArr[5][7] ), .C(\regArr[6][7] ), 
        .D(\regArr[7][7] ), .S0(n339), .S1(N12), .Y(n334) );
  MX4X1M U300 ( .A(\regArr[12][0] ), .B(\regArr[13][0] ), .C(\regArr[14][0] ), 
        .D(\regArr[15][0] ), .S0(n339), .S1(n337), .Y(n139) );
  MX4X1M U301 ( .A(\regArr[12][2] ), .B(\regArr[13][2] ), .C(\regArr[14][2] ), 
        .D(\regArr[15][2] ), .S0(n340), .S1(n337), .Y(n147) );
  MX4X1M U302 ( .A(\regArr[12][3] ), .B(\regArr[13][3] ), .C(\regArr[14][3] ), 
        .D(\regArr[15][3] ), .S0(n340), .S1(n337), .Y(n316) );
  MX4X1M U303 ( .A(\regArr[12][4] ), .B(\regArr[13][4] ), .C(\regArr[14][4] ), 
        .D(\regArr[15][4] ), .S0(n340), .S1(n337), .Y(n320) );
  MX4X1M U304 ( .A(\regArr[12][5] ), .B(\regArr[13][5] ), .C(\regArr[14][5] ), 
        .D(\regArr[15][5] ), .S0(n339), .S1(N12), .Y(n324) );
  MX4X1M U305 ( .A(\regArr[12][6] ), .B(\regArr[13][6] ), .C(\regArr[14][6] ), 
        .D(\regArr[15][6] ), .S0(n339), .S1(N12), .Y(n328) );
  MX4X1M U306 ( .A(\regArr[12][7] ), .B(\regArr[13][7] ), .C(\regArr[14][7] ), 
        .D(\regArr[15][7] ), .S0(n339), .S1(N12), .Y(n332) );
  INVX2M U307 ( .A(N11), .Y(n341) );
  INVX2M U308 ( .A(N12), .Y(n342) );
  INVX2M U309 ( .A(WrData[5]), .Y(n363) );
  INVX2M U310 ( .A(WrData[6]), .Y(n364) );
  INVX2M U311 ( .A(WrData[7]), .Y(n365) );
  OAI2BB2X1M U312 ( .B0(n151), .B1(n358), .A0N(REG0[0]), .A1N(n151), .Y(n186)
         );
  OAI2BB2X1M U313 ( .B0(n151), .B1(n359), .A0N(REG0[1]), .A1N(n151), .Y(n187)
         );
  OAI2BB2X1M U314 ( .B0(n151), .B1(n360), .A0N(REG0[2]), .A1N(n151), .Y(n188)
         );
  OAI2BB2X1M U315 ( .B0(n151), .B1(n361), .A0N(REG0[3]), .A1N(n151), .Y(n189)
         );
  OAI2BB2X1M U316 ( .B0(n151), .B1(n362), .A0N(REG0[4]), .A1N(n151), .Y(n190)
         );
  OAI2BB2X1M U317 ( .B0(n151), .B1(n363), .A0N(REG0[5]), .A1N(n151), .Y(n191)
         );
  OAI2BB2X1M U318 ( .B0(n151), .B1(n364), .A0N(REG0[6]), .A1N(n151), .Y(n192)
         );
  OAI2BB2X1M U319 ( .B0(n151), .B1(n365), .A0N(REG0[7]), .A1N(n151), .Y(n193)
         );
  OAI2BB2X1M U320 ( .B0(n358), .B1(n154), .A0N(REG1[0]), .A1N(n154), .Y(n194)
         );
  OAI2BB2X1M U321 ( .B0(n359), .B1(n154), .A0N(REG1[1]), .A1N(n154), .Y(n195)
         );
  OAI2BB2X1M U322 ( .B0(n360), .B1(n154), .A0N(REG1[2]), .A1N(n154), .Y(n196)
         );
  OAI2BB2X1M U323 ( .B0(n361), .B1(n154), .A0N(REG1[3]), .A1N(n154), .Y(n197)
         );
  OAI2BB2X1M U324 ( .B0(n362), .B1(n154), .A0N(REG1[4]), .A1N(n154), .Y(n198)
         );
  OAI2BB2X1M U325 ( .B0(n363), .B1(n154), .A0N(REG1[5]), .A1N(n154), .Y(n199)
         );
  OAI2BB2X1M U326 ( .B0(n364), .B1(n154), .A0N(REG1[6]), .A1N(n154), .Y(n200)
         );
  OAI2BB2X1M U327 ( .B0(n365), .B1(n154), .A0N(REG1[7]), .A1N(n154), .Y(n201)
         );
  OAI2BB2X1M U328 ( .B0(n358), .B1(n159), .A0N(\regArr[4][0] ), .A1N(n159), 
        .Y(n218) );
  OAI2BB2X1M U329 ( .B0(n359), .B1(n159), .A0N(\regArr[4][1] ), .A1N(n159), 
        .Y(n219) );
  OAI2BB2X1M U330 ( .B0(n360), .B1(n159), .A0N(\regArr[4][2] ), .A1N(n159), 
        .Y(n220) );
  OAI2BB2X1M U331 ( .B0(n361), .B1(n159), .A0N(\regArr[4][3] ), .A1N(n159), 
        .Y(n221) );
  OAI2BB2X1M U332 ( .B0(n362), .B1(n159), .A0N(\regArr[4][4] ), .A1N(n159), 
        .Y(n222) );
  OAI2BB2X1M U333 ( .B0(n363), .B1(n159), .A0N(\regArr[4][5] ), .A1N(n159), 
        .Y(n223) );
  OAI2BB2X1M U334 ( .B0(n364), .B1(n159), .A0N(\regArr[4][6] ), .A1N(n159), 
        .Y(n224) );
  OAI2BB2X1M U335 ( .B0(n365), .B1(n159), .A0N(\regArr[4][7] ), .A1N(n159), 
        .Y(n225) );
  OAI2BB2X1M U336 ( .B0(n358), .B1(n161), .A0N(\regArr[5][0] ), .A1N(n161), 
        .Y(n226) );
  OAI2BB2X1M U337 ( .B0(n359), .B1(n161), .A0N(\regArr[5][1] ), .A1N(n161), 
        .Y(n227) );
  OAI2BB2X1M U338 ( .B0(n360), .B1(n161), .A0N(\regArr[5][2] ), .A1N(n161), 
        .Y(n228) );
  OAI2BB2X1M U339 ( .B0(n361), .B1(n161), .A0N(\regArr[5][3] ), .A1N(n161), 
        .Y(n229) );
  OAI2BB2X1M U340 ( .B0(n362), .B1(n161), .A0N(\regArr[5][4] ), .A1N(n161), 
        .Y(n230) );
  OAI2BB2X1M U341 ( .B0(n363), .B1(n161), .A0N(\regArr[5][5] ), .A1N(n161), 
        .Y(n231) );
  OAI2BB2X1M U342 ( .B0(n364), .B1(n161), .A0N(\regArr[5][6] ), .A1N(n161), 
        .Y(n232) );
  OAI2BB2X1M U343 ( .B0(n365), .B1(n161), .A0N(\regArr[5][7] ), .A1N(n161), 
        .Y(n233) );
  OAI2BB2X1M U344 ( .B0(n358), .B1(n162), .A0N(\regArr[6][0] ), .A1N(n162), 
        .Y(n234) );
  OAI2BB2X1M U345 ( .B0(n359), .B1(n162), .A0N(\regArr[6][1] ), .A1N(n162), 
        .Y(n235) );
  OAI2BB2X1M U346 ( .B0(n360), .B1(n162), .A0N(\regArr[6][2] ), .A1N(n162), 
        .Y(n236) );
  OAI2BB2X1M U347 ( .B0(n361), .B1(n162), .A0N(\regArr[6][3] ), .A1N(n162), 
        .Y(n237) );
  OAI2BB2X1M U348 ( .B0(n362), .B1(n162), .A0N(\regArr[6][4] ), .A1N(n162), 
        .Y(n238) );
  OAI2BB2X1M U349 ( .B0(n363), .B1(n162), .A0N(\regArr[6][5] ), .A1N(n162), 
        .Y(n239) );
  OAI2BB2X1M U350 ( .B0(n364), .B1(n162), .A0N(\regArr[6][6] ), .A1N(n162), 
        .Y(n240) );
  OAI2BB2X1M U351 ( .B0(n365), .B1(n162), .A0N(\regArr[6][7] ), .A1N(n162), 
        .Y(n241) );
  OAI2BB2X1M U352 ( .B0(n358), .B1(n165), .A0N(\regArr[7][0] ), .A1N(n165), 
        .Y(n242) );
  OAI2BB2X1M U353 ( .B0(n359), .B1(n165), .A0N(\regArr[7][1] ), .A1N(n165), 
        .Y(n243) );
  OAI2BB2X1M U354 ( .B0(n360), .B1(n165), .A0N(\regArr[7][2] ), .A1N(n165), 
        .Y(n244) );
  OAI2BB2X1M U355 ( .B0(n361), .B1(n165), .A0N(\regArr[7][3] ), .A1N(n165), 
        .Y(n245) );
  OAI2BB2X1M U356 ( .B0(n362), .B1(n165), .A0N(\regArr[7][4] ), .A1N(n165), 
        .Y(n246) );
  OAI2BB2X1M U357 ( .B0(n363), .B1(n165), .A0N(\regArr[7][5] ), .A1N(n165), 
        .Y(n247) );
  OAI2BB2X1M U358 ( .B0(n364), .B1(n165), .A0N(\regArr[7][6] ), .A1N(n165), 
        .Y(n248) );
  OAI2BB2X1M U359 ( .B0(n365), .B1(n165), .A0N(\regArr[7][7] ), .A1N(n165), 
        .Y(n249) );
  OAI2BB2X1M U360 ( .B0(n359), .B1(n156), .A0N(REG2[1]), .A1N(n156), .Y(n203)
         );
  OAI2BB2X1M U361 ( .B0(n360), .B1(n156), .A0N(REG2[2]), .A1N(n156), .Y(n204)
         );
  OAI2BB2X1M U362 ( .B0(n361), .B1(n156), .A0N(REG2[3]), .A1N(n156), .Y(n205)
         );
  OAI2BB2X1M U363 ( .B0(n362), .B1(n156), .A0N(REG2[4]), .A1N(n156), .Y(n206)
         );
  OAI2BB2X1M U364 ( .B0(n363), .B1(n156), .A0N(REG2[5]), .A1N(n156), .Y(n207)
         );
  OAI2BB2X1M U365 ( .B0(n364), .B1(n156), .A0N(REG2[6]), .A1N(n156), .Y(n208)
         );
  OAI2BB2X1M U366 ( .B0(n358), .B1(n158), .A0N(REG3[0]), .A1N(n158), .Y(n210)
         );
  OAI2BB2X1M U367 ( .B0(n359), .B1(n158), .A0N(REG3[1]), .A1N(n158), .Y(n211)
         );
  OAI2BB2X1M U368 ( .B0(n360), .B1(n158), .A0N(REG3[2]), .A1N(n158), .Y(n212)
         );
  OAI2BB2X1M U369 ( .B0(n361), .B1(n158), .A0N(REG3[3]), .A1N(n158), .Y(n213)
         );
  OAI2BB2X1M U370 ( .B0(n362), .B1(n158), .A0N(REG3[4]), .A1N(n158), .Y(n214)
         );
  OAI2BB2X1M U371 ( .B0(n364), .B1(n158), .A0N(REG3[6]), .A1N(n158), .Y(n216)
         );
  OAI2BB2X1M U372 ( .B0(n365), .B1(n158), .A0N(REG3[7]), .A1N(n158), .Y(n217)
         );
  OAI2BB2X1M U373 ( .B0(n358), .B1(n156), .A0N(REG2[0]), .A1N(n156), .Y(n202)
         );
  OAI2BB2X1M U374 ( .B0(n365), .B1(n156), .A0N(REG2[7]), .A1N(n156), .Y(n209)
         );
  OAI2BB2X1M U375 ( .B0(n363), .B1(n158), .A0N(REG3[5]), .A1N(n158), .Y(n215)
         );
  OAI2BB1X2M U376 ( .A0N(RdData_VLD), .A1N(n150), .B0(n149), .Y(n185) );
endmodule


module ALU_DW_div_uns_0 ( a, b, quotient, remainder, divide_by_0 );
  input [7:0] a;
  input [7:0] b;
  output [7:0] quotient;
  output [7:0] remainder;
  output divide_by_0;
  wire   \u_div/SumTmp[1][0] , \u_div/SumTmp[1][1] , \u_div/SumTmp[1][2] ,
         \u_div/SumTmp[1][3] , \u_div/SumTmp[1][4] , \u_div/SumTmp[1][5] ,
         \u_div/SumTmp[1][6] , \u_div/SumTmp[2][0] , \u_div/SumTmp[2][1] ,
         \u_div/SumTmp[2][2] , \u_div/SumTmp[2][3] , \u_div/SumTmp[2][4] ,
         \u_div/SumTmp[2][5] , \u_div/SumTmp[3][0] , \u_div/SumTmp[3][1] ,
         \u_div/SumTmp[3][2] , \u_div/SumTmp[3][3] , \u_div/SumTmp[3][4] ,
         \u_div/SumTmp[4][0] , \u_div/SumTmp[4][1] , \u_div/SumTmp[4][2] ,
         \u_div/SumTmp[4][3] , \u_div/SumTmp[5][0] , \u_div/SumTmp[5][1] ,
         \u_div/SumTmp[5][2] , \u_div/SumTmp[6][0] , \u_div/SumTmp[6][1] ,
         \u_div/SumTmp[7][0] , \u_div/CryTmp[0][1] , \u_div/CryTmp[0][2] ,
         \u_div/CryTmp[0][3] , \u_div/CryTmp[0][4] , \u_div/CryTmp[0][5] ,
         \u_div/CryTmp[0][6] , \u_div/CryTmp[0][7] , \u_div/CryTmp[1][1] ,
         \u_div/CryTmp[1][2] , \u_div/CryTmp[1][3] , \u_div/CryTmp[1][4] ,
         \u_div/CryTmp[1][5] , \u_div/CryTmp[1][6] , \u_div/CryTmp[1][7] ,
         \u_div/CryTmp[2][1] , \u_div/CryTmp[2][2] , \u_div/CryTmp[2][3] ,
         \u_div/CryTmp[2][4] , \u_div/CryTmp[2][5] , \u_div/CryTmp[2][6] ,
         \u_div/CryTmp[3][1] , \u_div/CryTmp[3][2] , \u_div/CryTmp[3][3] ,
         \u_div/CryTmp[3][4] , \u_div/CryTmp[3][5] , \u_div/CryTmp[4][1] ,
         \u_div/CryTmp[4][2] , \u_div/CryTmp[4][3] , \u_div/CryTmp[4][4] ,
         \u_div/CryTmp[5][1] , \u_div/CryTmp[5][2] , \u_div/CryTmp[5][3] ,
         \u_div/CryTmp[6][1] , \u_div/CryTmp[6][2] , \u_div/CryTmp[7][1] ,
         \u_div/PartRem[1][1] , \u_div/PartRem[1][2] , \u_div/PartRem[1][3] ,
         \u_div/PartRem[1][4] , \u_div/PartRem[1][5] , \u_div/PartRem[1][6] ,
         \u_div/PartRem[1][7] , \u_div/PartRem[2][1] , \u_div/PartRem[2][2] ,
         \u_div/PartRem[2][3] , \u_div/PartRem[2][4] , \u_div/PartRem[2][5] ,
         \u_div/PartRem[2][6] , \u_div/PartRem[3][1] , \u_div/PartRem[3][2] ,
         \u_div/PartRem[3][3] , \u_div/PartRem[3][4] , \u_div/PartRem[3][5] ,
         \u_div/PartRem[4][1] , \u_div/PartRem[4][2] , \u_div/PartRem[4][3] ,
         \u_div/PartRem[4][4] , \u_div/PartRem[5][1] , \u_div/PartRem[5][2] ,
         \u_div/PartRem[5][3] , \u_div/PartRem[6][1] , \u_div/PartRem[6][2] ,
         \u_div/PartRem[7][1] , n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11,
         n12, n13, n14, n15, n16, n17, n18, n19, n20, n21;

  ADDFX2M \u_div/u_fa_PartRem_0_2_5  ( .A(\u_div/PartRem[3][5] ), .B(n13), 
        .CI(\u_div/CryTmp[2][5] ), .CO(\u_div/CryTmp[2][6] ), .S(
        \u_div/SumTmp[2][5] ) );
  ADDFX2M \u_div/u_fa_PartRem_0_4_3  ( .A(\u_div/PartRem[5][3] ), .B(n15), 
        .CI(\u_div/CryTmp[4][3] ), .CO(\u_div/CryTmp[4][4] ), .S(
        \u_div/SumTmp[4][3] ) );
  ADDFX2M \u_div/u_fa_PartRem_0_5_2  ( .A(\u_div/PartRem[6][2] ), .B(n16), 
        .CI(\u_div/CryTmp[5][2] ), .CO(\u_div/CryTmp[5][3] ), .S(
        \u_div/SumTmp[5][2] ) );
  ADDFX2M \u_div/u_fa_PartRem_0_6_1  ( .A(\u_div/PartRem[7][1] ), .B(n17), 
        .CI(\u_div/CryTmp[6][1] ), .CO(\u_div/CryTmp[6][2] ), .S(
        \u_div/SumTmp[6][1] ) );
  ADDFX2M \u_div/u_fa_PartRem_0_3_4  ( .A(\u_div/PartRem[4][4] ), .B(n14), 
        .CI(\u_div/CryTmp[3][4] ), .CO(\u_div/CryTmp[3][5] ), .S(
        \u_div/SumTmp[3][4] ) );
  ADDFX2M \u_div/u_fa_PartRem_0_0_5  ( .A(\u_div/PartRem[1][5] ), .B(n13), 
        .CI(\u_div/CryTmp[0][5] ), .CO(\u_div/CryTmp[0][6] ) );
  ADDFX2M \u_div/u_fa_PartRem_0_0_6  ( .A(\u_div/PartRem[1][6] ), .B(n12), 
        .CI(\u_div/CryTmp[0][6] ), .CO(\u_div/CryTmp[0][7] ) );
  ADDFX2M \u_div/u_fa_PartRem_0_0_7  ( .A(\u_div/PartRem[1][7] ), .B(n11), 
        .CI(\u_div/CryTmp[0][7] ), .CO(quotient[0]) );
  ADDFX2M \u_div/u_fa_PartRem_0_0_1  ( .A(\u_div/PartRem[1][1] ), .B(n17), 
        .CI(\u_div/CryTmp[0][1] ), .CO(\u_div/CryTmp[0][2] ) );
  ADDFX2M \u_div/u_fa_PartRem_0_1_1  ( .A(\u_div/PartRem[2][1] ), .B(n17), 
        .CI(\u_div/CryTmp[1][1] ), .CO(\u_div/CryTmp[1][2] ), .S(
        \u_div/SumTmp[1][1] ) );
  ADDFX2M \u_div/u_fa_PartRem_0_2_1  ( .A(\u_div/PartRem[3][1] ), .B(n17), 
        .CI(\u_div/CryTmp[2][1] ), .CO(\u_div/CryTmp[2][2] ), .S(
        \u_div/SumTmp[2][1] ) );
  ADDFX2M \u_div/u_fa_PartRem_0_3_1  ( .A(\u_div/PartRem[4][1] ), .B(n17), 
        .CI(\u_div/CryTmp[3][1] ), .CO(\u_div/CryTmp[3][2] ), .S(
        \u_div/SumTmp[3][1] ) );
  ADDFX2M \u_div/u_fa_PartRem_0_4_1  ( .A(\u_div/PartRem[5][1] ), .B(n17), 
        .CI(\u_div/CryTmp[4][1] ), .CO(\u_div/CryTmp[4][2] ), .S(
        \u_div/SumTmp[4][1] ) );
  ADDFX2M \u_div/u_fa_PartRem_0_5_1  ( .A(\u_div/PartRem[6][1] ), .B(n17), 
        .CI(\u_div/CryTmp[5][1] ), .CO(\u_div/CryTmp[5][2] ), .S(
        \u_div/SumTmp[5][1] ) );
  ADDFX2M \u_div/u_fa_PartRem_0_0_2  ( .A(\u_div/PartRem[1][2] ), .B(n16), 
        .CI(\u_div/CryTmp[0][2] ), .CO(\u_div/CryTmp[0][3] ) );
  ADDFX2M \u_div/u_fa_PartRem_0_0_3  ( .A(\u_div/PartRem[1][3] ), .B(n15), 
        .CI(\u_div/CryTmp[0][3] ), .CO(\u_div/CryTmp[0][4] ) );
  ADDFX2M \u_div/u_fa_PartRem_0_0_4  ( .A(\u_div/PartRem[1][4] ), .B(n14), 
        .CI(\u_div/CryTmp[0][4] ), .CO(\u_div/CryTmp[0][5] ) );
  ADDFX2M \u_div/u_fa_PartRem_0_1_5  ( .A(\u_div/PartRem[2][5] ), .B(n13), 
        .CI(\u_div/CryTmp[1][5] ), .CO(\u_div/CryTmp[1][6] ), .S(
        \u_div/SumTmp[1][5] ) );
  ADDFX2M \u_div/u_fa_PartRem_0_1_4  ( .A(\u_div/PartRem[2][4] ), .B(n14), 
        .CI(\u_div/CryTmp[1][4] ), .CO(\u_div/CryTmp[1][5] ), .S(
        \u_div/SumTmp[1][4] ) );
  ADDFX2M \u_div/u_fa_PartRem_0_1_3  ( .A(\u_div/PartRem[2][3] ), .B(n15), 
        .CI(\u_div/CryTmp[1][3] ), .CO(\u_div/CryTmp[1][4] ), .S(
        \u_div/SumTmp[1][3] ) );
  ADDFX2M \u_div/u_fa_PartRem_0_2_4  ( .A(\u_div/PartRem[3][4] ), .B(n14), 
        .CI(\u_div/CryTmp[2][4] ), .CO(\u_div/CryTmp[2][5] ), .S(
        \u_div/SumTmp[2][4] ) );
  ADDFX2M \u_div/u_fa_PartRem_0_1_2  ( .A(\u_div/PartRem[2][2] ), .B(n16), 
        .CI(\u_div/CryTmp[1][2] ), .CO(\u_div/CryTmp[1][3] ), .S(
        \u_div/SumTmp[1][2] ) );
  ADDFX2M \u_div/u_fa_PartRem_0_2_3  ( .A(\u_div/PartRem[3][3] ), .B(n15), 
        .CI(\u_div/CryTmp[2][3] ), .CO(\u_div/CryTmp[2][4] ), .S(
        \u_div/SumTmp[2][3] ) );
  ADDFX2M \u_div/u_fa_PartRem_0_2_2  ( .A(\u_div/PartRem[3][2] ), .B(n16), 
        .CI(\u_div/CryTmp[2][2] ), .CO(\u_div/CryTmp[2][3] ), .S(
        \u_div/SumTmp[2][2] ) );
  ADDFX2M \u_div/u_fa_PartRem_0_3_3  ( .A(\u_div/PartRem[4][3] ), .B(n15), 
        .CI(\u_div/CryTmp[3][3] ), .CO(\u_div/CryTmp[3][4] ), .S(
        \u_div/SumTmp[3][3] ) );
  ADDFX2M \u_div/u_fa_PartRem_0_3_2  ( .A(\u_div/PartRem[4][2] ), .B(n16), 
        .CI(\u_div/CryTmp[3][2] ), .CO(\u_div/CryTmp[3][3] ), .S(
        \u_div/SumTmp[3][2] ) );
  ADDFX2M \u_div/u_fa_PartRem_0_4_2  ( .A(\u_div/PartRem[5][2] ), .B(n16), 
        .CI(\u_div/CryTmp[4][2] ), .CO(\u_div/CryTmp[4][3] ), .S(
        \u_div/SumTmp[4][2] ) );
  ADDFX2M \u_div/u_fa_PartRem_0_1_6  ( .A(\u_div/PartRem[2][6] ), .B(n12), 
        .CI(\u_div/CryTmp[1][6] ), .CO(\u_div/CryTmp[1][7] ), .S(
        \u_div/SumTmp[1][6] ) );
  INVX2M U1 ( .A(b[0]), .Y(n18) );
  XNOR2X2M U2 ( .A(n18), .B(a[7]), .Y(\u_div/SumTmp[7][0] ) );
  XNOR2X2M U3 ( .A(n18), .B(a[6]), .Y(\u_div/SumTmp[6][0] ) );
  XNOR2X2M U4 ( .A(n18), .B(a[5]), .Y(\u_div/SumTmp[5][0] ) );
  XNOR2X2M U5 ( .A(n18), .B(a[4]), .Y(\u_div/SumTmp[4][0] ) );
  XNOR2X2M U6 ( .A(n18), .B(a[3]), .Y(\u_div/SumTmp[3][0] ) );
  XNOR2X2M U7 ( .A(n18), .B(a[2]), .Y(\u_div/SumTmp[2][0] ) );
  OR2X2M U8 ( .A(n18), .B(a[7]), .Y(\u_div/CryTmp[7][1] ) );
  XNOR2X2M U9 ( .A(n18), .B(a[1]), .Y(\u_div/SumTmp[1][0] ) );
  NAND2X2M U10 ( .A(n2), .B(n3), .Y(\u_div/CryTmp[5][1] ) );
  INVX2M U11 ( .A(a[5]), .Y(n3) );
  INVX2M U12 ( .A(n18), .Y(n2) );
  NAND2X2M U13 ( .A(n4), .B(n5), .Y(\u_div/CryTmp[4][1] ) );
  INVX2M U14 ( .A(a[4]), .Y(n5) );
  INVX2M U15 ( .A(n18), .Y(n4) );
  NAND2X2M U16 ( .A(n6), .B(n7), .Y(\u_div/CryTmp[3][1] ) );
  INVX2M U17 ( .A(a[3]), .Y(n7) );
  INVX2M U18 ( .A(n18), .Y(n6) );
  NAND2X2M U19 ( .A(n2), .B(n8), .Y(\u_div/CryTmp[2][1] ) );
  INVX2M U20 ( .A(a[2]), .Y(n8) );
  NAND2X2M U21 ( .A(n6), .B(n9), .Y(\u_div/CryTmp[1][1] ) );
  INVX2M U22 ( .A(a[1]), .Y(n9) );
  NAND2X2M U23 ( .A(n4), .B(n10), .Y(\u_div/CryTmp[0][1] ) );
  INVX2M U24 ( .A(a[0]), .Y(n10) );
  NAND2X2M U25 ( .A(n2), .B(n1), .Y(\u_div/CryTmp[6][1] ) );
  INVX2M U26 ( .A(a[6]), .Y(n1) );
  INVX2M U27 ( .A(b[6]), .Y(n12) );
  INVX2M U28 ( .A(b[1]), .Y(n17) );
  INVX2M U29 ( .A(b[2]), .Y(n16) );
  INVX2M U30 ( .A(b[3]), .Y(n15) );
  INVX2M U31 ( .A(b[4]), .Y(n14) );
  INVX2M U32 ( .A(b[5]), .Y(n13) );
  INVX2M U33 ( .A(b[7]), .Y(n11) );
  CLKMX2X2M U34 ( .A(\u_div/PartRem[2][6] ), .B(\u_div/SumTmp[1][6] ), .S0(
        quotient[1]), .Y(\u_div/PartRem[1][7] ) );
  CLKMX2X2M U35 ( .A(\u_div/PartRem[3][5] ), .B(\u_div/SumTmp[2][5] ), .S0(
        quotient[2]), .Y(\u_div/PartRem[2][6] ) );
  CLKMX2X2M U36 ( .A(\u_div/PartRem[4][4] ), .B(\u_div/SumTmp[3][4] ), .S0(
        quotient[3]), .Y(\u_div/PartRem[3][5] ) );
  CLKMX2X2M U37 ( .A(\u_div/PartRem[5][3] ), .B(\u_div/SumTmp[4][3] ), .S0(
        quotient[4]), .Y(\u_div/PartRem[4][4] ) );
  CLKMX2X2M U38 ( .A(\u_div/PartRem[6][2] ), .B(\u_div/SumTmp[5][2] ), .S0(
        quotient[5]), .Y(\u_div/PartRem[5][3] ) );
  CLKMX2X2M U39 ( .A(\u_div/PartRem[7][1] ), .B(\u_div/SumTmp[6][1] ), .S0(
        quotient[6]), .Y(\u_div/PartRem[6][2] ) );
  CLKMX2X2M U40 ( .A(a[7]), .B(\u_div/SumTmp[7][0] ), .S0(quotient[7]), .Y(
        \u_div/PartRem[7][1] ) );
  CLKMX2X2M U41 ( .A(\u_div/PartRem[2][5] ), .B(\u_div/SumTmp[1][5] ), .S0(
        quotient[1]), .Y(\u_div/PartRem[1][6] ) );
  CLKMX2X2M U42 ( .A(\u_div/PartRem[3][4] ), .B(\u_div/SumTmp[2][4] ), .S0(
        quotient[2]), .Y(\u_div/PartRem[2][5] ) );
  CLKMX2X2M U43 ( .A(\u_div/PartRem[4][3] ), .B(\u_div/SumTmp[3][3] ), .S0(
        quotient[3]), .Y(\u_div/PartRem[3][4] ) );
  CLKMX2X2M U44 ( .A(\u_div/PartRem[5][2] ), .B(\u_div/SumTmp[4][2] ), .S0(
        quotient[4]), .Y(\u_div/PartRem[4][3] ) );
  CLKMX2X2M U45 ( .A(\u_div/PartRem[6][1] ), .B(\u_div/SumTmp[5][1] ), .S0(
        quotient[5]), .Y(\u_div/PartRem[5][2] ) );
  CLKMX2X2M U46 ( .A(a[6]), .B(\u_div/SumTmp[6][0] ), .S0(quotient[6]), .Y(
        \u_div/PartRem[6][1] ) );
  CLKMX2X2M U47 ( .A(\u_div/PartRem[2][4] ), .B(\u_div/SumTmp[1][4] ), .S0(
        quotient[1]), .Y(\u_div/PartRem[1][5] ) );
  CLKMX2X2M U48 ( .A(\u_div/PartRem[3][3] ), .B(\u_div/SumTmp[2][3] ), .S0(
        quotient[2]), .Y(\u_div/PartRem[2][4] ) );
  CLKMX2X2M U49 ( .A(\u_div/PartRem[4][2] ), .B(\u_div/SumTmp[3][2] ), .S0(
        quotient[3]), .Y(\u_div/PartRem[3][3] ) );
  CLKMX2X2M U50 ( .A(\u_div/PartRem[5][1] ), .B(\u_div/SumTmp[4][1] ), .S0(
        quotient[4]), .Y(\u_div/PartRem[4][2] ) );
  CLKMX2X2M U51 ( .A(a[5]), .B(\u_div/SumTmp[5][0] ), .S0(quotient[5]), .Y(
        \u_div/PartRem[5][1] ) );
  CLKMX2X2M U52 ( .A(\u_div/PartRem[2][3] ), .B(\u_div/SumTmp[1][3] ), .S0(
        quotient[1]), .Y(\u_div/PartRem[1][4] ) );
  CLKMX2X2M U53 ( .A(\u_div/PartRem[3][2] ), .B(\u_div/SumTmp[2][2] ), .S0(
        quotient[2]), .Y(\u_div/PartRem[2][3] ) );
  CLKMX2X2M U54 ( .A(\u_div/PartRem[4][1] ), .B(\u_div/SumTmp[3][1] ), .S0(
        quotient[3]), .Y(\u_div/PartRem[3][2] ) );
  CLKMX2X2M U55 ( .A(a[4]), .B(\u_div/SumTmp[4][0] ), .S0(quotient[4]), .Y(
        \u_div/PartRem[4][1] ) );
  CLKMX2X2M U56 ( .A(\u_div/PartRem[2][2] ), .B(\u_div/SumTmp[1][2] ), .S0(
        quotient[1]), .Y(\u_div/PartRem[1][3] ) );
  CLKMX2X2M U57 ( .A(\u_div/PartRem[3][1] ), .B(\u_div/SumTmp[2][1] ), .S0(
        quotient[2]), .Y(\u_div/PartRem[2][2] ) );
  CLKMX2X2M U58 ( .A(a[3]), .B(\u_div/SumTmp[3][0] ), .S0(quotient[3]), .Y(
        \u_div/PartRem[3][1] ) );
  CLKMX2X2M U59 ( .A(\u_div/PartRem[2][1] ), .B(\u_div/SumTmp[1][1] ), .S0(
        quotient[1]), .Y(\u_div/PartRem[1][2] ) );
  CLKMX2X2M U60 ( .A(a[2]), .B(\u_div/SumTmp[2][0] ), .S0(quotient[2]), .Y(
        \u_div/PartRem[2][1] ) );
  CLKMX2X2M U61 ( .A(a[1]), .B(\u_div/SumTmp[1][0] ), .S0(quotient[1]), .Y(
        \u_div/PartRem[1][1] ) );
  AND4X1M U62 ( .A(\u_div/CryTmp[7][1] ), .B(n19), .C(n17), .D(n16), .Y(
        quotient[7]) );
  AND3X1M U63 ( .A(n19), .B(n16), .C(\u_div/CryTmp[6][2] ), .Y(quotient[6]) );
  AND2X1M U64 ( .A(\u_div/CryTmp[5][3] ), .B(n19), .Y(quotient[5]) );
  AND2X1M U65 ( .A(n20), .B(n15), .Y(n19) );
  AND2X1M U66 ( .A(\u_div/CryTmp[4][4] ), .B(n20), .Y(quotient[4]) );
  AND3X1M U67 ( .A(n21), .B(n14), .C(n13), .Y(n20) );
  AND3X1M U68 ( .A(n21), .B(n13), .C(\u_div/CryTmp[3][5] ), .Y(quotient[3]) );
  AND2X1M U69 ( .A(\u_div/CryTmp[2][6] ), .B(n21), .Y(quotient[2]) );
  NOR2X1M U70 ( .A(b[6]), .B(b[7]), .Y(n21) );
  AND2X1M U71 ( .A(\u_div/CryTmp[1][7] ), .B(n11), .Y(quotient[1]) );
endmodule


module ALU_DW01_sub_0 ( A, B, CI, DIFF, CO );
  input [8:0] A;
  input [8:0] B;
  output [8:0] DIFF;
  input CI;
  output CO;
  wire   n1, n2, n3, n4, n5, n6, n7, n8, n9;
  wire   [9:0] carry;

  ADDFX2M U2_7 ( .A(A[7]), .B(n2), .CI(carry[7]), .CO(carry[8]), .S(DIFF[7])
         );
  ADDFX2M U2_1 ( .A(A[1]), .B(n8), .CI(carry[1]), .CO(carry[2]), .S(DIFF[1])
         );
  ADDFX2M U2_5 ( .A(A[5]), .B(n4), .CI(carry[5]), .CO(carry[6]), .S(DIFF[5])
         );
  ADDFX2M U2_4 ( .A(A[4]), .B(n5), .CI(carry[4]), .CO(carry[5]), .S(DIFF[4])
         );
  ADDFX2M U2_3 ( .A(A[3]), .B(n6), .CI(carry[3]), .CO(carry[4]), .S(DIFF[3])
         );
  ADDFX2M U2_2 ( .A(A[2]), .B(n7), .CI(carry[2]), .CO(carry[3]), .S(DIFF[2])
         );
  ADDFX2M U2_6 ( .A(A[6]), .B(n3), .CI(carry[6]), .CO(carry[7]), .S(DIFF[6])
         );
  XNOR2X2M U1 ( .A(n9), .B(A[0]), .Y(DIFF[0]) );
  INVX2M U2 ( .A(B[6]), .Y(n3) );
  INVX2M U3 ( .A(B[0]), .Y(n9) );
  INVX2M U4 ( .A(B[2]), .Y(n7) );
  INVX2M U5 ( .A(B[3]), .Y(n6) );
  INVX2M U6 ( .A(B[4]), .Y(n5) );
  INVX2M U7 ( .A(B[5]), .Y(n4) );
  NAND2X2M U8 ( .A(B[0]), .B(n1), .Y(carry[1]) );
  INVX2M U9 ( .A(B[1]), .Y(n8) );
  INVX2M U10 ( .A(A[0]), .Y(n1) );
  INVX2M U11 ( .A(B[7]), .Y(n2) );
  CLKINVX1M U12 ( .A(carry[8]), .Y(DIFF[8]) );
endmodule


module ALU_DW01_add_0 ( A, B, CI, SUM, CO );
  input [8:0] A;
  input [8:0] B;
  output [8:0] SUM;
  input CI;
  output CO;
  wire   n1;
  wire   [8:1] carry;

  ADDFX2M U1_7 ( .A(A[7]), .B(B[7]), .CI(carry[7]), .CO(SUM[8]), .S(SUM[7]) );
  ADDFX2M U1_1 ( .A(A[1]), .B(B[1]), .CI(n1), .CO(carry[2]), .S(SUM[1]) );
  ADDFX2M U1_5 ( .A(A[5]), .B(B[5]), .CI(carry[5]), .CO(carry[6]), .S(SUM[5])
         );
  ADDFX2M U1_4 ( .A(A[4]), .B(B[4]), .CI(carry[4]), .CO(carry[5]), .S(SUM[4])
         );
  ADDFX2M U1_3 ( .A(A[3]), .B(B[3]), .CI(carry[3]), .CO(carry[4]), .S(SUM[3])
         );
  ADDFX2M U1_2 ( .A(A[2]), .B(B[2]), .CI(carry[2]), .CO(carry[3]), .S(SUM[2])
         );
  ADDFX2M U1_6 ( .A(A[6]), .B(B[6]), .CI(carry[6]), .CO(carry[7]), .S(SUM[6])
         );
  AND2X2M U1 ( .A(B[0]), .B(A[0]), .Y(n1) );
  CLKXOR2X2M U2 ( .A(B[0]), .B(A[0]), .Y(SUM[0]) );
endmodule


module ALU_DW01_add_1 ( A, B, CI, SUM, CO );
  input [13:0] A;
  input [13:0] B;
  output [13:0] SUM;
  input CI;
  output CO;
  wire   n1, n8, n9, n10, n11, n12, n13, n14, n15, n16, n17, n18, n19, n20,
         n21, n22, n23, n24, n25, n26, n27;

  AOI21BX2M U2 ( .A0(n18), .A1(A[12]), .B0N(n19), .Y(n1) );
  NAND2X2M U3 ( .A(A[7]), .B(B[7]), .Y(n15) );
  XNOR2X2M U4 ( .A(A[7]), .B(n8), .Y(SUM[7]) );
  INVX2M U5 ( .A(B[7]), .Y(n8) );
  XNOR2X2M U6 ( .A(B[13]), .B(n1), .Y(SUM[13]) );
  INVX2M U7 ( .A(A[6]), .Y(n9) );
  INVX2M U8 ( .A(n9), .Y(SUM[6]) );
  BUFX2M U9 ( .A(A[0]), .Y(SUM[0]) );
  BUFX2M U10 ( .A(A[1]), .Y(SUM[1]) );
  BUFX2M U11 ( .A(A[2]), .Y(SUM[2]) );
  BUFX2M U12 ( .A(A[3]), .Y(SUM[3]) );
  BUFX2M U13 ( .A(A[4]), .Y(SUM[4]) );
  BUFX2M U14 ( .A(A[5]), .Y(SUM[5]) );
  XNOR2X1M U15 ( .A(n10), .B(n11), .Y(SUM[9]) );
  NOR2X1M U16 ( .A(n12), .B(n13), .Y(n11) );
  CLKXOR2X2M U17 ( .A(n14), .B(n15), .Y(SUM[8]) );
  NAND2BX1M U18 ( .AN(n16), .B(n17), .Y(n14) );
  OAI21X1M U19 ( .A0(A[12]), .A1(n18), .B0(B[12]), .Y(n19) );
  XOR3XLM U20 ( .A(B[12]), .B(A[12]), .C(n18), .Y(SUM[12]) );
  OAI21BX1M U21 ( .A0(n20), .A1(n21), .B0N(n22), .Y(n18) );
  XNOR2X1M U22 ( .A(n21), .B(n23), .Y(SUM[11]) );
  NOR2X1M U23 ( .A(n22), .B(n20), .Y(n23) );
  NOR2X1M U24 ( .A(B[11]), .B(A[11]), .Y(n20) );
  AND2X1M U25 ( .A(B[11]), .B(A[11]), .Y(n22) );
  OA21X1M U26 ( .A0(n24), .A1(n25), .B0(n26), .Y(n21) );
  CLKXOR2X2M U27 ( .A(n27), .B(n25), .Y(SUM[10]) );
  AOI2BB1X1M U28 ( .A0N(n10), .A1N(n13), .B0(n12), .Y(n25) );
  AND2X1M U29 ( .A(B[9]), .B(A[9]), .Y(n12) );
  NOR2X1M U30 ( .A(B[9]), .B(A[9]), .Y(n13) );
  OA21X1M U31 ( .A0(n15), .A1(n16), .B0(n17), .Y(n10) );
  CLKNAND2X2M U32 ( .A(B[8]), .B(A[8]), .Y(n17) );
  NOR2X1M U33 ( .A(B[8]), .B(A[8]), .Y(n16) );
  NAND2BX1M U34 ( .AN(n24), .B(n26), .Y(n27) );
  CLKNAND2X2M U35 ( .A(B[10]), .B(A[10]), .Y(n26) );
  NOR2X1M U36 ( .A(B[10]), .B(A[10]), .Y(n24) );
endmodule


module ALU_DW02_mult_0 ( A, B, TC, PRODUCT );
  input [7:0] A;
  input [7:0] B;
  output [15:0] PRODUCT;
  input TC;
  wire   \ab[7][7] , \ab[7][6] , \ab[7][5] , \ab[7][4] , \ab[7][3] ,
         \ab[7][2] , \ab[7][1] , \ab[7][0] , \ab[6][7] , \ab[6][6] ,
         \ab[6][5] , \ab[6][4] , \ab[6][3] , \ab[6][2] , \ab[6][1] ,
         \ab[6][0] , \ab[5][7] , \ab[5][6] , \ab[5][5] , \ab[5][4] ,
         \ab[5][3] , \ab[5][2] , \ab[5][1] , \ab[5][0] , \ab[4][7] ,
         \ab[4][6] , \ab[4][5] , \ab[4][4] , \ab[4][3] , \ab[4][2] ,
         \ab[4][1] , \ab[4][0] , \ab[3][7] , \ab[3][6] , \ab[3][5] ,
         \ab[3][4] , \ab[3][3] , \ab[3][2] , \ab[3][1] , \ab[3][0] ,
         \ab[2][7] , \ab[2][6] , \ab[2][5] , \ab[2][4] , \ab[2][3] ,
         \ab[2][2] , \ab[2][1] , \ab[2][0] , \ab[1][7] , \ab[1][6] ,
         \ab[1][5] , \ab[1][4] , \ab[1][3] , \ab[1][2] , \ab[1][1] ,
         \ab[1][0] , \ab[0][7] , \ab[0][6] , \ab[0][5] , \ab[0][4] ,
         \ab[0][3] , \ab[0][2] , \ab[0][1] , \CARRYB[7][6] , \CARRYB[7][5] ,
         \CARRYB[7][4] , \CARRYB[7][3] , \CARRYB[7][2] , \CARRYB[7][1] ,
         \CARRYB[7][0] , \CARRYB[6][6] , \CARRYB[6][5] , \CARRYB[6][4] ,
         \CARRYB[6][3] , \CARRYB[6][2] , \CARRYB[6][1] , \CARRYB[6][0] ,
         \CARRYB[5][6] , \CARRYB[5][5] , \CARRYB[5][4] , \CARRYB[5][3] ,
         \CARRYB[5][2] , \CARRYB[5][1] , \CARRYB[5][0] , \CARRYB[4][6] ,
         \CARRYB[4][5] , \CARRYB[4][4] , \CARRYB[4][3] , \CARRYB[4][2] ,
         \CARRYB[4][1] , \CARRYB[4][0] , \CARRYB[3][6] , \CARRYB[3][5] ,
         \CARRYB[3][4] , \CARRYB[3][3] , \CARRYB[3][2] , \CARRYB[3][1] ,
         \CARRYB[3][0] , \CARRYB[2][6] , \CARRYB[2][5] , \CARRYB[2][4] ,
         \CARRYB[2][3] , \CARRYB[2][2] , \CARRYB[2][1] , \CARRYB[2][0] ,
         \SUMB[7][6] , \SUMB[7][5] , \SUMB[7][4] , \SUMB[7][3] , \SUMB[7][2] ,
         \SUMB[7][1] , \SUMB[7][0] , \SUMB[6][6] , \SUMB[6][5] , \SUMB[6][4] ,
         \SUMB[6][3] , \SUMB[6][2] , \SUMB[6][1] , \SUMB[5][6] , \SUMB[5][5] ,
         \SUMB[5][4] , \SUMB[5][3] , \SUMB[5][2] , \SUMB[5][1] , \SUMB[4][6] ,
         \SUMB[4][5] , \SUMB[4][4] , \SUMB[4][3] , \SUMB[4][2] , \SUMB[4][1] ,
         \SUMB[3][6] , \SUMB[3][5] , \SUMB[3][4] , \SUMB[3][3] , \SUMB[3][2] ,
         \SUMB[3][1] , \SUMB[2][6] , \SUMB[2][5] , \SUMB[2][4] , \SUMB[2][3] ,
         \SUMB[2][2] , \SUMB[2][1] , \SUMB[1][6] , \SUMB[1][5] , \SUMB[1][4] ,
         \SUMB[1][3] , \SUMB[1][2] , \SUMB[1][1] , \A1[12] , \A1[11] ,
         \A1[10] , \A1[9] , \A1[8] , \A1[7] , \A1[6] , \A1[4] , \A1[3] ,
         \A1[2] , \A1[1] , \A1[0] , n3, n4, n5, n6, n7, n8, n9, n10, n11, n12,
         n13, n14, n15, n16, n17, n18, n19, n20, n21, n22, n23, n24, n25, n26,
         n27, n28, n29, n30, n31, n32, n33, n34, n35, n36, n37, n38, n39;

  ADDFX2M S2_6_5 ( .A(\ab[6][5] ), .B(\CARRYB[5][5] ), .CI(\SUMB[5][6] ), .CO(
        \CARRYB[6][5] ), .S(\SUMB[6][5] ) );
  ADDFX2M S2_6_4 ( .A(\ab[6][4] ), .B(\CARRYB[5][4] ), .CI(\SUMB[5][5] ), .CO(
        \CARRYB[6][4] ), .S(\SUMB[6][4] ) );
  ADDFX2M S2_5_5 ( .A(\ab[5][5] ), .B(\CARRYB[4][5] ), .CI(\SUMB[4][6] ), .CO(
        \CARRYB[5][5] ), .S(\SUMB[5][5] ) );
  ADDFX2M S2_6_3 ( .A(\ab[6][3] ), .B(\CARRYB[5][3] ), .CI(\SUMB[5][4] ), .CO(
        \CARRYB[6][3] ), .S(\SUMB[6][3] ) );
  ADDFX2M S2_5_4 ( .A(\ab[5][4] ), .B(\CARRYB[4][4] ), .CI(\SUMB[4][5] ), .CO(
        \CARRYB[5][4] ), .S(\SUMB[5][4] ) );
  ADDFX2M S1_6_0 ( .A(\ab[6][0] ), .B(\CARRYB[5][0] ), .CI(\SUMB[5][1] ), .CO(
        \CARRYB[6][0] ), .S(\A1[4] ) );
  ADDFX2M S2_6_1 ( .A(\ab[6][1] ), .B(\CARRYB[5][1] ), .CI(\SUMB[5][2] ), .CO(
        \CARRYB[6][1] ), .S(\SUMB[6][1] ) );
  ADDFX2M S2_6_2 ( .A(\ab[6][2] ), .B(\CARRYB[5][2] ), .CI(\SUMB[5][3] ), .CO(
        \CARRYB[6][2] ), .S(\SUMB[6][2] ) );
  ADDFX2M S2_4_5 ( .A(\ab[4][5] ), .B(\CARRYB[3][5] ), .CI(\SUMB[3][6] ), .CO(
        \CARRYB[4][5] ), .S(\SUMB[4][5] ) );
  ADDFX2M S1_5_0 ( .A(\ab[5][0] ), .B(\CARRYB[4][0] ), .CI(\SUMB[4][1] ), .CO(
        \CARRYB[5][0] ), .S(\A1[3] ) );
  ADDFX2M S2_5_1 ( .A(\ab[5][1] ), .B(\CARRYB[4][1] ), .CI(\SUMB[4][2] ), .CO(
        \CARRYB[5][1] ), .S(\SUMB[5][1] ) );
  ADDFX2M S2_5_2 ( .A(\ab[5][2] ), .B(\CARRYB[4][2] ), .CI(\SUMB[4][3] ), .CO(
        \CARRYB[5][2] ), .S(\SUMB[5][2] ) );
  ADDFX2M S2_5_3 ( .A(\ab[5][3] ), .B(\CARRYB[4][3] ), .CI(\SUMB[4][4] ), .CO(
        \CARRYB[5][3] ), .S(\SUMB[5][3] ) );
  ADDFX2M S1_4_0 ( .A(\ab[4][0] ), .B(\CARRYB[3][0] ), .CI(\SUMB[3][1] ), .CO(
        \CARRYB[4][0] ), .S(\A1[2] ) );
  ADDFX2M S2_4_1 ( .A(\ab[4][1] ), .B(\CARRYB[3][1] ), .CI(\SUMB[3][2] ), .CO(
        \CARRYB[4][1] ), .S(\SUMB[4][1] ) );
  ADDFX2M S2_4_2 ( .A(\ab[4][2] ), .B(\CARRYB[3][2] ), .CI(\SUMB[3][3] ), .CO(
        \CARRYB[4][2] ), .S(\SUMB[4][2] ) );
  ADDFX2M S2_4_3 ( .A(\ab[4][3] ), .B(\CARRYB[3][3] ), .CI(\SUMB[3][4] ), .CO(
        \CARRYB[4][3] ), .S(\SUMB[4][3] ) );
  ADDFX2M S2_4_4 ( .A(\ab[4][4] ), .B(\CARRYB[3][4] ), .CI(\SUMB[3][5] ), .CO(
        \CARRYB[4][4] ), .S(\SUMB[4][4] ) );
  ADDFX2M S1_3_0 ( .A(\ab[3][0] ), .B(\CARRYB[2][0] ), .CI(\SUMB[2][1] ), .CO(
        \CARRYB[3][0] ), .S(\A1[1] ) );
  ADDFX2M S2_3_1 ( .A(\ab[3][1] ), .B(\CARRYB[2][1] ), .CI(\SUMB[2][2] ), .CO(
        \CARRYB[3][1] ), .S(\SUMB[3][1] ) );
  ADDFX2M S2_3_2 ( .A(\ab[3][2] ), .B(\CARRYB[2][2] ), .CI(\SUMB[2][3] ), .CO(
        \CARRYB[3][2] ), .S(\SUMB[3][2] ) );
  ADDFX2M S2_3_3 ( .A(\ab[3][3] ), .B(\CARRYB[2][3] ), .CI(\SUMB[2][4] ), .CO(
        \CARRYB[3][3] ), .S(\SUMB[3][3] ) );
  ADDFX2M S2_3_4 ( .A(\ab[3][4] ), .B(\CARRYB[2][4] ), .CI(\SUMB[2][5] ), .CO(
        \CARRYB[3][4] ), .S(\SUMB[3][4] ) );
  ADDFX2M S2_3_5 ( .A(\ab[3][5] ), .B(\CARRYB[2][5] ), .CI(\SUMB[2][6] ), .CO(
        \CARRYB[3][5] ), .S(\SUMB[3][5] ) );
  ADDFX2M S3_6_6 ( .A(\ab[6][6] ), .B(\CARRYB[5][6] ), .CI(\ab[5][7] ), .CO(
        \CARRYB[6][6] ), .S(\SUMB[6][6] ) );
  ADDFX2M S3_5_6 ( .A(\ab[5][6] ), .B(\CARRYB[4][6] ), .CI(\ab[4][7] ), .CO(
        \CARRYB[5][6] ), .S(\SUMB[5][6] ) );
  ADDFX2M S3_4_6 ( .A(\ab[4][6] ), .B(\CARRYB[3][6] ), .CI(\ab[3][7] ), .CO(
        \CARRYB[4][6] ), .S(\SUMB[4][6] ) );
  ADDFX2M S3_3_6 ( .A(\ab[3][6] ), .B(\CARRYB[2][6] ), .CI(\ab[2][7] ), .CO(
        \CARRYB[3][6] ), .S(\SUMB[3][6] ) );
  ADDFX2M S3_2_6 ( .A(\ab[2][6] ), .B(n8), .CI(\ab[1][7] ), .CO(\CARRYB[2][6] ), .S(\SUMB[2][6] ) );
  ADDFX2M S1_2_0 ( .A(\ab[2][0] ), .B(n9), .CI(\SUMB[1][1] ), .CO(
        \CARRYB[2][0] ), .S(\A1[0] ) );
  ADDFX2M S2_2_1 ( .A(\ab[2][1] ), .B(n7), .CI(\SUMB[1][2] ), .CO(
        \CARRYB[2][1] ), .S(\SUMB[2][1] ) );
  ADDFX2M S2_2_2 ( .A(\ab[2][2] ), .B(n6), .CI(\SUMB[1][3] ), .CO(
        \CARRYB[2][2] ), .S(\SUMB[2][2] ) );
  ADDFX2M S2_2_3 ( .A(\ab[2][3] ), .B(n5), .CI(\SUMB[1][4] ), .CO(
        \CARRYB[2][3] ), .S(\SUMB[2][3] ) );
  ADDFX2M S2_2_4 ( .A(\ab[2][4] ), .B(n4), .CI(\SUMB[1][5] ), .CO(
        \CARRYB[2][4] ), .S(\SUMB[2][4] ) );
  ADDFX2M S2_2_5 ( .A(\ab[2][5] ), .B(n3), .CI(\SUMB[1][6] ), .CO(
        \CARRYB[2][5] ), .S(\SUMB[2][5] ) );
  ADDFX2M S5_6 ( .A(\ab[7][6] ), .B(\CARRYB[6][6] ), .CI(\ab[6][7] ), .CO(
        \CARRYB[7][6] ), .S(\SUMB[7][6] ) );
  ADDFX2M S4_5 ( .A(\ab[7][5] ), .B(\CARRYB[6][5] ), .CI(\SUMB[6][6] ), .CO(
        \CARRYB[7][5] ), .S(\SUMB[7][5] ) );
  ADDFX2M S4_4 ( .A(\ab[7][4] ), .B(\CARRYB[6][4] ), .CI(\SUMB[6][5] ), .CO(
        \CARRYB[7][4] ), .S(\SUMB[7][4] ) );
  ADDFX2M S4_3 ( .A(\ab[7][3] ), .B(\CARRYB[6][3] ), .CI(\SUMB[6][4] ), .CO(
        \CARRYB[7][3] ), .S(\SUMB[7][3] ) );
  ADDFX2M S4_2 ( .A(\ab[7][2] ), .B(\CARRYB[6][2] ), .CI(\SUMB[6][3] ), .CO(
        \CARRYB[7][2] ), .S(\SUMB[7][2] ) );
  ADDFX2M S4_0 ( .A(\ab[7][0] ), .B(\CARRYB[6][0] ), .CI(\SUMB[6][1] ), .CO(
        \CARRYB[7][0] ), .S(\SUMB[7][0] ) );
  ADDFX2M S4_1 ( .A(\ab[7][1] ), .B(\CARRYB[6][1] ), .CI(\SUMB[6][2] ), .CO(
        \CARRYB[7][1] ), .S(\SUMB[7][1] ) );
  AND2X2M U2 ( .A(\ab[0][6] ), .B(\ab[1][5] ), .Y(n3) );
  AND2X2M U3 ( .A(\ab[0][5] ), .B(\ab[1][4] ), .Y(n4) );
  AND2X2M U4 ( .A(\ab[0][4] ), .B(\ab[1][3] ), .Y(n5) );
  AND2X2M U5 ( .A(\ab[0][3] ), .B(\ab[1][2] ), .Y(n6) );
  AND2X2M U6 ( .A(\ab[0][2] ), .B(\ab[1][1] ), .Y(n7) );
  AND2X2M U7 ( .A(\ab[0][7] ), .B(\ab[1][6] ), .Y(n8) );
  AND2X2M U8 ( .A(\ab[0][1] ), .B(\ab[1][0] ), .Y(n9) );
  AND2X2M U9 ( .A(\CARRYB[7][6] ), .B(\ab[7][7] ), .Y(n10) );
  INVX2M U10 ( .A(\ab[0][6] ), .Y(n22) );
  CLKXOR2X2M U11 ( .A(\CARRYB[7][1] ), .B(\SUMB[7][2] ), .Y(\A1[7] ) );
  CLKXOR2X2M U12 ( .A(\ab[1][0] ), .B(\ab[0][1] ), .Y(PRODUCT[1]) );
  CLKXOR2X2M U13 ( .A(\CARRYB[7][6] ), .B(\ab[7][7] ), .Y(\A1[12] ) );
  CLKXOR2X2M U14 ( .A(\CARRYB[7][2] ), .B(\SUMB[7][3] ), .Y(\A1[8] ) );
  CLKXOR2X2M U15 ( .A(\CARRYB[7][4] ), .B(\SUMB[7][5] ), .Y(\A1[10] ) );
  CLKXOR2X2M U16 ( .A(\CARRYB[7][3] ), .B(\SUMB[7][4] ), .Y(\A1[9] ) );
  CLKXOR2X2M U17 ( .A(\CARRYB[7][5] ), .B(\SUMB[7][6] ), .Y(\A1[11] ) );
  INVX2M U18 ( .A(\ab[0][7] ), .Y(n23) );
  INVX2M U19 ( .A(\ab[0][5] ), .Y(n21) );
  INVX2M U20 ( .A(\ab[0][4] ), .Y(n20) );
  INVX2M U21 ( .A(\ab[0][3] ), .Y(n19) );
  INVX2M U22 ( .A(\ab[0][2] ), .Y(n18) );
  XNOR2X2M U23 ( .A(\CARRYB[7][0] ), .B(n17), .Y(\A1[6] ) );
  INVX2M U24 ( .A(\SUMB[7][1] ), .Y(n17) );
  AND2X2M U25 ( .A(\CARRYB[7][0] ), .B(\SUMB[7][1] ), .Y(n11) );
  AND2X2M U26 ( .A(\CARRYB[7][1] ), .B(\SUMB[7][2] ), .Y(n12) );
  AND2X2M U27 ( .A(\CARRYB[7][3] ), .B(\SUMB[7][4] ), .Y(n13) );
  AND2X2M U28 ( .A(\CARRYB[7][5] ), .B(\SUMB[7][6] ), .Y(n14) );
  AND2X2M U29 ( .A(\CARRYB[7][2] ), .B(\SUMB[7][3] ), .Y(n15) );
  AND2X2M U30 ( .A(\CARRYB[7][4] ), .B(\SUMB[7][5] ), .Y(n16) );
  XNOR2X2M U31 ( .A(\ab[1][6] ), .B(n23), .Y(\SUMB[1][6] ) );
  XNOR2X2M U32 ( .A(\ab[1][5] ), .B(n22), .Y(\SUMB[1][5] ) );
  XNOR2X2M U33 ( .A(\ab[1][4] ), .B(n21), .Y(\SUMB[1][4] ) );
  XNOR2X2M U34 ( .A(\ab[1][3] ), .B(n20), .Y(\SUMB[1][3] ) );
  XNOR2X2M U35 ( .A(\ab[1][2] ), .B(n19), .Y(\SUMB[1][2] ) );
  XNOR2X2M U36 ( .A(\ab[1][1] ), .B(n18), .Y(\SUMB[1][1] ) );
  INVX2M U37 ( .A(A[7]), .Y(n32) );
  INVX2M U38 ( .A(A[6]), .Y(n33) );
  INVX2M U39 ( .A(A[1]), .Y(n38) );
  INVX2M U40 ( .A(A[0]), .Y(n39) );
  INVX2M U41 ( .A(A[3]), .Y(n36) );
  INVX2M U42 ( .A(A[2]), .Y(n37) );
  INVX2M U43 ( .A(A[5]), .Y(n34) );
  INVX2M U44 ( .A(A[4]), .Y(n35) );
  INVX2M U45 ( .A(B[6]), .Y(n25) );
  INVX2M U46 ( .A(B[0]), .Y(n31) );
  INVX2M U47 ( .A(B[2]), .Y(n29) );
  INVX2M U48 ( .A(B[3]), .Y(n28) );
  INVX2M U49 ( .A(B[7]), .Y(n24) );
  INVX2M U50 ( .A(B[4]), .Y(n27) );
  INVX2M U51 ( .A(B[5]), .Y(n26) );
  INVX2M U52 ( .A(B[1]), .Y(n30) );
  NOR2X1M U54 ( .A(n32), .B(n24), .Y(\ab[7][7] ) );
  NOR2X1M U55 ( .A(n32), .B(n25), .Y(\ab[7][6] ) );
  NOR2X1M U56 ( .A(n32), .B(n26), .Y(\ab[7][5] ) );
  NOR2X1M U57 ( .A(n32), .B(n27), .Y(\ab[7][4] ) );
  NOR2X1M U58 ( .A(n32), .B(n28), .Y(\ab[7][3] ) );
  NOR2X1M U59 ( .A(n32), .B(n29), .Y(\ab[7][2] ) );
  NOR2X1M U60 ( .A(n32), .B(n30), .Y(\ab[7][1] ) );
  NOR2X1M U61 ( .A(n32), .B(n31), .Y(\ab[7][0] ) );
  NOR2X1M U62 ( .A(n24), .B(n33), .Y(\ab[6][7] ) );
  NOR2X1M U63 ( .A(n25), .B(n33), .Y(\ab[6][6] ) );
  NOR2X1M U64 ( .A(n26), .B(n33), .Y(\ab[6][5] ) );
  NOR2X1M U65 ( .A(n27), .B(n33), .Y(\ab[6][4] ) );
  NOR2X1M U66 ( .A(n28), .B(n33), .Y(\ab[6][3] ) );
  NOR2X1M U67 ( .A(n29), .B(n33), .Y(\ab[6][2] ) );
  NOR2X1M U68 ( .A(n30), .B(n33), .Y(\ab[6][1] ) );
  NOR2X1M U69 ( .A(n31), .B(n33), .Y(\ab[6][0] ) );
  NOR2X1M U70 ( .A(n24), .B(n34), .Y(\ab[5][7] ) );
  NOR2X1M U71 ( .A(n25), .B(n34), .Y(\ab[5][6] ) );
  NOR2X1M U72 ( .A(n26), .B(n34), .Y(\ab[5][5] ) );
  NOR2X1M U73 ( .A(n27), .B(n34), .Y(\ab[5][4] ) );
  NOR2X1M U74 ( .A(n28), .B(n34), .Y(\ab[5][3] ) );
  NOR2X1M U75 ( .A(n29), .B(n34), .Y(\ab[5][2] ) );
  NOR2X1M U76 ( .A(n30), .B(n34), .Y(\ab[5][1] ) );
  NOR2X1M U77 ( .A(n31), .B(n34), .Y(\ab[5][0] ) );
  NOR2X1M U78 ( .A(n24), .B(n35), .Y(\ab[4][7] ) );
  NOR2X1M U79 ( .A(n25), .B(n35), .Y(\ab[4][6] ) );
  NOR2X1M U80 ( .A(n26), .B(n35), .Y(\ab[4][5] ) );
  NOR2X1M U81 ( .A(n27), .B(n35), .Y(\ab[4][4] ) );
  NOR2X1M U82 ( .A(n28), .B(n35), .Y(\ab[4][3] ) );
  NOR2X1M U83 ( .A(n29), .B(n35), .Y(\ab[4][2] ) );
  NOR2X1M U84 ( .A(n30), .B(n35), .Y(\ab[4][1] ) );
  NOR2X1M U85 ( .A(n31), .B(n35), .Y(\ab[4][0] ) );
  NOR2X1M U86 ( .A(n24), .B(n36), .Y(\ab[3][7] ) );
  NOR2X1M U87 ( .A(n25), .B(n36), .Y(\ab[3][6] ) );
  NOR2X1M U88 ( .A(n26), .B(n36), .Y(\ab[3][5] ) );
  NOR2X1M U89 ( .A(n27), .B(n36), .Y(\ab[3][4] ) );
  NOR2X1M U90 ( .A(n28), .B(n36), .Y(\ab[3][3] ) );
  NOR2X1M U91 ( .A(n29), .B(n36), .Y(\ab[3][2] ) );
  NOR2X1M U92 ( .A(n30), .B(n36), .Y(\ab[3][1] ) );
  NOR2X1M U93 ( .A(n31), .B(n36), .Y(\ab[3][0] ) );
  NOR2X1M U94 ( .A(n24), .B(n37), .Y(\ab[2][7] ) );
  NOR2X1M U95 ( .A(n25), .B(n37), .Y(\ab[2][6] ) );
  NOR2X1M U96 ( .A(n26), .B(n37), .Y(\ab[2][5] ) );
  NOR2X1M U97 ( .A(n27), .B(n37), .Y(\ab[2][4] ) );
  NOR2X1M U98 ( .A(n28), .B(n37), .Y(\ab[2][3] ) );
  NOR2X1M U99 ( .A(n29), .B(n37), .Y(\ab[2][2] ) );
  NOR2X1M U100 ( .A(n30), .B(n37), .Y(\ab[2][1] ) );
  NOR2X1M U101 ( .A(n31), .B(n37), .Y(\ab[2][0] ) );
  NOR2X1M U102 ( .A(n24), .B(n38), .Y(\ab[1][7] ) );
  NOR2X1M U103 ( .A(n25), .B(n38), .Y(\ab[1][6] ) );
  NOR2X1M U104 ( .A(n26), .B(n38), .Y(\ab[1][5] ) );
  NOR2X1M U105 ( .A(n27), .B(n38), .Y(\ab[1][4] ) );
  NOR2X1M U106 ( .A(n28), .B(n38), .Y(\ab[1][3] ) );
  NOR2X1M U107 ( .A(n29), .B(n38), .Y(\ab[1][2] ) );
  NOR2X1M U108 ( .A(n30), .B(n38), .Y(\ab[1][1] ) );
  NOR2X1M U109 ( .A(n31), .B(n38), .Y(\ab[1][0] ) );
  NOR2X1M U110 ( .A(n24), .B(n39), .Y(\ab[0][7] ) );
  NOR2X1M U111 ( .A(n25), .B(n39), .Y(\ab[0][6] ) );
  NOR2X1M U112 ( .A(n26), .B(n39), .Y(\ab[0][5] ) );
  NOR2X1M U113 ( .A(n27), .B(n39), .Y(\ab[0][4] ) );
  NOR2X1M U114 ( .A(n28), .B(n39), .Y(\ab[0][3] ) );
  NOR2X1M U115 ( .A(n29), .B(n39), .Y(\ab[0][2] ) );
  NOR2X1M U116 ( .A(n30), .B(n39), .Y(\ab[0][1] ) );
  NOR2X1M U117 ( .A(n31), .B(n39), .Y(PRODUCT[0]) );
  ALU_DW01_add_1 FS_1 ( .A({1'b0, \A1[12] , \A1[11] , \A1[10] , \A1[9] , 
        \A1[8] , \A1[7] , \A1[6] , \SUMB[7][0] , \A1[4] , \A1[3] , \A1[2] , 
        \A1[1] , \A1[0] }), .B({n10, n14, n16, n13, n15, n12, n11, 1'b0, 1'b0, 
        1'b0, 1'b0, 1'b0, 1'b0, 1'b0}), .CI(1'b0), .SUM(PRODUCT[15:2]) );
endmodule


module ALU_test_1 ( A, B, EN, ALU_FUN, CLK, RST, ALU_OUT, OUT_VALID, test_si, 
        test_se );
  input [7:0] A;
  input [7:0] B;
  input [3:0] ALU_FUN;
  output [15:0] ALU_OUT;
  input EN, CLK, RST, test_si, test_se;
  output OUT_VALID;
  wire   N91, N92, N93, N94, N95, N96, N97, N98, N99, N100, N101, N102, N103,
         N104, N105, N106, N107, N108, N109, N110, N111, N112, N113, N114,
         N115, N116, N117, N118, N119, N120, N121, N122, N123, N124, N125,
         N126, N127, N128, N129, N130, N131, N132, N157, N158, N159, n48, n49,
         n50, n51, n52, n53, n54, n55, n56, n57, n58, n59, n60, n61, n62, n63,
         n64, n65, n66, n67, n68, n69, n70, n71, n72, n73, n74, n75, n76, n77,
         n78, n79, n80, n81, n82, n83, n84, n85, n86, n87, n88, n89, n90, n91,
         n92, n93, n94, n95, n96, n97, n98, n99, n100, n101, n102, n103, n104,
         n105, n106, n107, n108, n109, n110, n111, n112, n113, n114, n115,
         n116, n117, n118, n119, n120, n121, n122, n123, n124, n3, n4, n5, n6,
         n7, n8, n9, n27, n28, n29, n30, n31, n32, n33, n34, n35, n36, n37,
         n38, n39, n40, n41, n42, n43, n44, n45, n46, n47, n125, n126, n127,
         n128, n129, n130, n131, n132, n133, n134, n135, n136, n137, n138,
         n139, n140, n141, n142, n143, n144, n145, n146, n147, n148, n149,
         n150, n151, n152, n153, n154, n155, n156, n157;
  wire   [15:0] ALU_OUT_Comb;

  SDFFRQX2M \ALU_OUT_reg[7]  ( .D(ALU_OUT_Comb[7]), .SI(ALU_OUT[6]), .SE(
        test_se), .CK(CLK), .RN(RST), .Q(ALU_OUT[7]) );
  SDFFRQX2M \ALU_OUT_reg[6]  ( .D(ALU_OUT_Comb[6]), .SI(ALU_OUT[5]), .SE(
        test_se), .CK(CLK), .RN(RST), .Q(ALU_OUT[6]) );
  SDFFRQX2M \ALU_OUT_reg[5]  ( .D(ALU_OUT_Comb[5]), .SI(ALU_OUT[4]), .SE(
        test_se), .CK(CLK), .RN(RST), .Q(ALU_OUT[5]) );
  SDFFRQX2M \ALU_OUT_reg[4]  ( .D(ALU_OUT_Comb[4]), .SI(ALU_OUT[3]), .SE(
        test_se), .CK(CLK), .RN(RST), .Q(ALU_OUT[4]) );
  SDFFRQX2M \ALU_OUT_reg[3]  ( .D(ALU_OUT_Comb[3]), .SI(ALU_OUT[2]), .SE(
        test_se), .CK(CLK), .RN(RST), .Q(ALU_OUT[3]) );
  SDFFRQX2M \ALU_OUT_reg[2]  ( .D(ALU_OUT_Comb[2]), .SI(ALU_OUT[1]), .SE(
        test_se), .CK(CLK), .RN(RST), .Q(ALU_OUT[2]) );
  SDFFRQX2M \ALU_OUT_reg[1]  ( .D(ALU_OUT_Comb[1]), .SI(ALU_OUT[0]), .SE(
        test_se), .CK(CLK), .RN(RST), .Q(ALU_OUT[1]) );
  SDFFRQX2M \ALU_OUT_reg[0]  ( .D(ALU_OUT_Comb[0]), .SI(test_si), .SE(test_se), 
        .CK(CLK), .RN(RST), .Q(ALU_OUT[0]) );
  SDFFRQX2M \ALU_OUT_reg[15]  ( .D(ALU_OUT_Comb[15]), .SI(ALU_OUT[14]), .SE(
        test_se), .CK(CLK), .RN(RST), .Q(ALU_OUT[15]) );
  SDFFRQX2M \ALU_OUT_reg[14]  ( .D(ALU_OUT_Comb[14]), .SI(ALU_OUT[13]), .SE(
        test_se), .CK(CLK), .RN(RST), .Q(ALU_OUT[14]) );
  SDFFRQX2M \ALU_OUT_reg[13]  ( .D(ALU_OUT_Comb[13]), .SI(ALU_OUT[12]), .SE(
        test_se), .CK(CLK), .RN(RST), .Q(ALU_OUT[13]) );
  SDFFRQX2M \ALU_OUT_reg[12]  ( .D(ALU_OUT_Comb[12]), .SI(ALU_OUT[11]), .SE(
        test_se), .CK(CLK), .RN(RST), .Q(ALU_OUT[12]) );
  SDFFRQX2M \ALU_OUT_reg[11]  ( .D(ALU_OUT_Comb[11]), .SI(ALU_OUT[10]), .SE(
        test_se), .CK(CLK), .RN(RST), .Q(ALU_OUT[11]) );
  SDFFRQX2M \ALU_OUT_reg[10]  ( .D(ALU_OUT_Comb[10]), .SI(ALU_OUT[9]), .SE(
        test_se), .CK(CLK), .RN(RST), .Q(ALU_OUT[10]) );
  SDFFRQX2M \ALU_OUT_reg[9]  ( .D(ALU_OUT_Comb[9]), .SI(ALU_OUT[8]), .SE(
        test_se), .CK(CLK), .RN(RST), .Q(ALU_OUT[9]) );
  SDFFRQX2M \ALU_OUT_reg[8]  ( .D(ALU_OUT_Comb[8]), .SI(ALU_OUT[7]), .SE(
        test_se), .CK(CLK), .RN(RST), .Q(ALU_OUT[8]) );
  SDFFRQX2M OUT_VALID_reg ( .D(EN), .SI(ALU_OUT[15]), .SE(test_se), .CK(CLK), 
        .RN(RST), .Q(OUT_VALID) );
  BUFX2M U7 ( .A(A[6]), .Y(n28) );
  OAI2BB1X2M U23 ( .A0N(n157), .A1N(n122), .B0(n118), .Y(n64) );
  OAI2BB1X2M U24 ( .A0N(n117), .A1N(n116), .B0(n118), .Y(n65) );
  NOR2BX2M U25 ( .AN(n123), .B(n154), .Y(n54) );
  AND2X2M U26 ( .A(n116), .B(n122), .Y(n59) );
  NOR2BX2M U27 ( .AN(n52), .B(n152), .Y(n48) );
  AND2X2M U28 ( .A(n123), .B(n122), .Y(n67) );
  BUFX2M U29 ( .A(n58), .Y(n30) );
  NOR2X2M U30 ( .A(n124), .B(n154), .Y(n58) );
  INVX2M U31 ( .A(n117), .Y(n154) );
  INVX2M U32 ( .A(n108), .Y(n155) );
  OAI2BB1X2M U33 ( .A0N(N118), .A1N(n48), .B0(n49), .Y(ALU_OUT_Comb[9]) );
  OAI2BB1X2M U34 ( .A0N(N119), .A1N(n48), .B0(n49), .Y(ALU_OUT_Comb[10]) );
  OAI2BB1X2M U35 ( .A0N(N120), .A1N(n48), .B0(n49), .Y(ALU_OUT_Comb[11]) );
  OAI2BB1X2M U36 ( .A0N(N121), .A1N(n48), .B0(n49), .Y(ALU_OUT_Comb[12]) );
  OAI2BB1X2M U37 ( .A0N(N122), .A1N(n48), .B0(n49), .Y(ALU_OUT_Comb[13]) );
  OAI2BB1X2M U38 ( .A0N(N123), .A1N(n48), .B0(n49), .Y(ALU_OUT_Comb[14]) );
  OAI2BB1X2M U39 ( .A0N(N124), .A1N(n48), .B0(n49), .Y(ALU_OUT_Comb[15]) );
  INVX2M U40 ( .A(n124), .Y(n157) );
  NOR3BX2M U41 ( .AN(n122), .B(n156), .C(ALU_FUN[2]), .Y(n66) );
  NOR3X2M U42 ( .A(n154), .B(ALU_FUN[2]), .C(n156), .Y(n52) );
  NOR2X2M U43 ( .A(ALU_FUN[2]), .B(ALU_FUN[1]), .Y(n123) );
  AND3X2M U44 ( .A(n123), .B(n153), .C(n3), .Y(n63) );
  NAND3X2M U45 ( .A(n157), .B(n153), .C(n3), .Y(n53) );
  NAND2X2M U46 ( .A(ALU_FUN[2]), .B(ALU_FUN[1]), .Y(n124) );
  INVX2M U47 ( .A(ALU_FUN[0]), .Y(n153) );
  NOR2X2M U48 ( .A(n153), .B(n3), .Y(n122) );
  NOR2X2M U49 ( .A(n3), .B(ALU_FUN[0]), .Y(n117) );
  NAND3X2M U50 ( .A(n3), .B(ALU_FUN[0]), .C(n116), .Y(n108) );
  INVX2M U51 ( .A(ALU_FUN[1]), .Y(n156) );
  NAND2X2M U52 ( .A(EN), .B(n140), .Y(n49) );
  INVX2M U53 ( .A(EN), .Y(n152) );
  NAND3X2M U54 ( .A(n123), .B(ALU_FUN[0]), .C(n3), .Y(n118) );
  AND2X2M U55 ( .A(ALU_FUN[2]), .B(n156), .Y(n116) );
  AND4X2M U56 ( .A(N159), .B(n116), .C(n3), .D(n153), .Y(n107) );
  INVX2M U57 ( .A(n4), .Y(n139) );
  OAI222X1M U58 ( .A0(n72), .A1(n139), .B0(n4), .B1(n73), .C0(n53), .C1(n146), 
        .Y(n71) );
  AOI221XLM U59 ( .A0(n28), .A1(n63), .B0(n64), .B1(n145), .C0(n30), .Y(n73)
         );
  AOI221XLM U60 ( .A0(n63), .A1(n145), .B0(n28), .B1(n65), .C0(n59), .Y(n72)
         );
  AOI31X2M U61 ( .A0(n92), .A1(n93), .A2(n94), .B0(n152), .Y(ALU_OUT_Comb[2])
         );
  AOI22X1M U62 ( .A0(N102), .A1(n67), .B0(N93), .B1(n54), .Y(n92) );
  AOI221XLM U63 ( .A0(n8), .A1(n155), .B0(n30), .B1(n149), .C0(n95), .Y(n94)
         );
  AOI222X1M U64 ( .A0(N111), .A1(n52), .B0(n7), .B1(n59), .C0(N127), .C1(n66), 
        .Y(n93) );
  AOI31X2M U65 ( .A0(n86), .A1(n87), .A2(n88), .B0(n152), .Y(ALU_OUT_Comb[3])
         );
  AOI22X1M U66 ( .A0(N103), .A1(n67), .B0(N94), .B1(n54), .Y(n86) );
  AOI221XLM U67 ( .A0(n9), .A1(n155), .B0(n30), .B1(n148), .C0(n89), .Y(n88)
         );
  AOI222X1M U68 ( .A0(N112), .A1(n52), .B0(n8), .B1(n59), .C0(N128), .C1(n66), 
        .Y(n87) );
  AOI31X2M U69 ( .A0(n80), .A1(n81), .A2(n82), .B0(n152), .Y(ALU_OUT_Comb[4])
         );
  AOI22X1M U70 ( .A0(N104), .A1(n67), .B0(N95), .B1(n54), .Y(n80) );
  AOI221XLM U71 ( .A0(n155), .A1(n27), .B0(n30), .B1(n147), .C0(n83), .Y(n82)
         );
  AOI222X1M U72 ( .A0(N113), .A1(n52), .B0(n9), .B1(n59), .C0(N129), .C1(n66), 
        .Y(n81) );
  AOI31X2M U73 ( .A0(n74), .A1(n75), .A2(n76), .B0(n152), .Y(ALU_OUT_Comb[5])
         );
  AOI22X1M U74 ( .A0(N105), .A1(n67), .B0(N96), .B1(n54), .Y(n74) );
  AOI221XLM U75 ( .A0(n155), .A1(n28), .B0(n30), .B1(n146), .C0(n77), .Y(n76)
         );
  AOI222X1M U76 ( .A0(N114), .A1(n52), .B0(n27), .B1(n59), .C0(N130), .C1(n66), 
        .Y(n75) );
  AOI31X2M U77 ( .A0(n68), .A1(n69), .A2(n70), .B0(n152), .Y(ALU_OUT_Comb[6])
         );
  AOI22X1M U78 ( .A0(N106), .A1(n67), .B0(N97), .B1(n54), .Y(n68) );
  AOI221XLM U79 ( .A0(n155), .A1(n29), .B0(n30), .B1(n145), .C0(n71), .Y(n70)
         );
  AOI222X1M U80 ( .A0(N115), .A1(n52), .B0(n59), .B1(n28), .C0(N131), .C1(n66), 
        .Y(n69) );
  AOI31X2M U81 ( .A0(n55), .A1(n56), .A2(n57), .B0(n152), .Y(ALU_OUT_Comb[7])
         );
  AOI22X1M U82 ( .A0(N132), .A1(n66), .B0(N116), .B1(n52), .Y(n56) );
  AOI22X1M U83 ( .A0(N107), .A1(n67), .B0(N98), .B1(n54), .Y(n55) );
  AOI221XLM U84 ( .A0(n30), .A1(n144), .B0(n59), .B1(n29), .C0(n60), .Y(n57)
         );
  AOI31X2M U85 ( .A0(n110), .A1(n111), .A2(n112), .B0(n152), .Y(
        ALU_OUT_Comb[0]) );
  AOI22X1M U86 ( .A0(N100), .A1(n67), .B0(N91), .B1(n54), .Y(n110) );
  AOI211X2M U87 ( .A0(n30), .A1(n151), .B0(n113), .C0(n114), .Y(n112) );
  AOI222X1M U88 ( .A0(N109), .A1(n52), .B0(n5), .B1(n59), .C0(N125), .C1(n66), 
        .Y(n111) );
  AOI31X2M U89 ( .A0(n98), .A1(n99), .A2(n100), .B0(n152), .Y(ALU_OUT_Comb[1])
         );
  AOI211X2M U90 ( .A0(n7), .A1(n155), .B0(n101), .C0(n102), .Y(n100) );
  AOI222X1M U91 ( .A0(N126), .A1(n66), .B0(n30), .B1(n150), .C0(n6), .C1(n59), 
        .Y(n99) );
  AOI222X1M U92 ( .A0(N92), .A1(n54), .B0(N110), .B1(n52), .C0(N101), .C1(n67), 
        .Y(n98) );
  INVX2M U93 ( .A(n109), .Y(n140) );
  AOI211X2M U94 ( .A0(N108), .A1(n67), .B0(n30), .C0(n64), .Y(n109) );
  AOI21X2M U95 ( .A0(n50), .A1(n51), .B0(n152), .Y(ALU_OUT_Comb[8]) );
  AOI21X2M U96 ( .A0(N99), .A1(n54), .B0(n140), .Y(n50) );
  AOI2BB2XLM U97 ( .B0(N117), .B1(n52), .A0N(n144), .A1N(n53), .Y(n51) );
  BUFX2M U98 ( .A(ALU_FUN[3]), .Y(n3) );
  INVX2M U99 ( .A(n6), .Y(n150) );
  INVX2M U100 ( .A(n5), .Y(n151) );
  INVX2M U101 ( .A(n28), .Y(n145) );
  INVX2M U102 ( .A(n29), .Y(n144) );
  INVX2M U103 ( .A(n8), .Y(n148) );
  INVX2M U104 ( .A(n7), .Y(n149) );
  INVX2M U105 ( .A(n27), .Y(n146) );
  INVX2M U106 ( .A(n9), .Y(n147) );
  OAI222X1M U107 ( .A0(n96), .A1(n136), .B0(B[2]), .B1(n97), .C0(n53), .C1(
        n150), .Y(n95) );
  AOI221XLM U108 ( .A0(n7), .A1(n63), .B0(n64), .B1(n149), .C0(n30), .Y(n97)
         );
  AOI221XLM U109 ( .A0(n63), .A1(n149), .B0(n7), .B1(n65), .C0(n59), .Y(n96)
         );
  OAI222X1M U110 ( .A0(n90), .A1(n138), .B0(B[3]), .B1(n91), .C0(n53), .C1(
        n149), .Y(n89) );
  AOI221XLM U111 ( .A0(n8), .A1(n63), .B0(n64), .B1(n148), .C0(n30), .Y(n91)
         );
  AOI221XLM U112 ( .A0(n63), .A1(n148), .B0(n8), .B1(n65), .C0(n59), .Y(n90)
         );
  OAI222X1M U113 ( .A0(n84), .A1(n143), .B0(B[4]), .B1(n85), .C0(n53), .C1(
        n148), .Y(n83) );
  INVX2M U114 ( .A(B[4]), .Y(n143) );
  AOI221XLM U115 ( .A0(n9), .A1(n63), .B0(n64), .B1(n147), .C0(n30), .Y(n85)
         );
  AOI221XLM U116 ( .A0(n63), .A1(n147), .B0(n9), .B1(n65), .C0(n59), .Y(n84)
         );
  OAI222X1M U117 ( .A0(n78), .A1(n142), .B0(B[5]), .B1(n79), .C0(n53), .C1(
        n147), .Y(n77) );
  INVX2M U118 ( .A(B[5]), .Y(n142) );
  AOI221XLM U119 ( .A0(n27), .A1(n63), .B0(n64), .B1(n146), .C0(n30), .Y(n79)
         );
  AOI221XLM U120 ( .A0(n63), .A1(n146), .B0(n27), .B1(n65), .C0(n59), .Y(n78)
         );
  OAI222X1M U121 ( .A0(n61), .A1(n141), .B0(B[7]), .B1(n62), .C0(n53), .C1(
        n145), .Y(n60) );
  INVX2M U122 ( .A(B[7]), .Y(n141) );
  AOI221XLM U123 ( .A0(n63), .A1(n29), .B0(n64), .B1(n144), .C0(n30), .Y(n62)
         );
  AOI221XLM U124 ( .A0(n63), .A1(n144), .B0(n29), .B1(n65), .C0(n59), .Y(n61)
         );
  INVX2M U125 ( .A(n31), .Y(n135) );
  OAI2B2X1M U126 ( .A1N(B[0]), .A0(n115), .B0(n108), .B1(n150), .Y(n114) );
  AOI221XLM U127 ( .A0(n63), .A1(n151), .B0(n5), .B1(n65), .C0(n59), .Y(n115)
         );
  OAI2B2X1M U128 ( .A1N(B[1]), .A0(n103), .B0(n53), .B1(n151), .Y(n102) );
  AOI221XLM U129 ( .A0(n63), .A1(n150), .B0(n6), .B1(n65), .C0(n59), .Y(n103)
         );
  INVX2M U130 ( .A(n42), .Y(n137) );
  OAI21X2M U131 ( .A0(B[0]), .A1(n119), .B0(n120), .Y(n113) );
  AOI31X2M U132 ( .A0(N157), .A1(n3), .A2(n121), .B0(n107), .Y(n120) );
  AOI221XLM U133 ( .A0(n5), .A1(n63), .B0(n64), .B1(n151), .C0(n30), .Y(n119)
         );
  NOR3X2M U134 ( .A(n156), .B(ALU_FUN[2]), .C(ALU_FUN[0]), .Y(n121) );
  OAI21X2M U135 ( .A0(B[1]), .A1(n104), .B0(n105), .Y(n101) );
  AOI31X2M U136 ( .A0(N158), .A1(n3), .A2(n106), .B0(n107), .Y(n105) );
  AOI221XLM U137 ( .A0(n6), .A1(n63), .B0(n64), .B1(n150), .C0(n30), .Y(n104)
         );
  NOR3X2M U138 ( .A(n153), .B(ALU_FUN[2]), .C(n156), .Y(n106) );
  BUFX2M U139 ( .A(A[7]), .Y(n29) );
  BUFX2M U140 ( .A(A[1]), .Y(n6) );
  BUFX2M U141 ( .A(A[0]), .Y(n5) );
  BUFX2M U142 ( .A(A[3]), .Y(n8) );
  BUFX2M U143 ( .A(A[2]), .Y(n7) );
  BUFX2M U144 ( .A(A[5]), .Y(n27) );
  BUFX2M U145 ( .A(A[4]), .Y(n9) );
  BUFX2M U146 ( .A(B[6]), .Y(n4) );
  INVX2M U147 ( .A(B[0]), .Y(n134) );
  INVX2M U148 ( .A(B[2]), .Y(n136) );
  INVX2M U149 ( .A(B[3]), .Y(n138) );
  NOR2X1M U150 ( .A(n144), .B(B[7]), .Y(n130) );
  NAND2BX1M U151 ( .AN(B[4]), .B(n9), .Y(n46) );
  NAND2BX1M U152 ( .AN(n9), .B(B[4]), .Y(n35) );
  CLKNAND2X2M U153 ( .A(n46), .B(n35), .Y(n125) );
  NOR2X1M U154 ( .A(n138), .B(n8), .Y(n43) );
  NOR2X1M U155 ( .A(n136), .B(n7), .Y(n34) );
  NOR2X1M U156 ( .A(n134), .B(n5), .Y(n31) );
  CLKNAND2X2M U157 ( .A(n7), .B(n136), .Y(n45) );
  NAND2BX1M U158 ( .AN(n34), .B(n45), .Y(n40) );
  AOI21X1M U159 ( .A0(n31), .A1(n150), .B0(B[1]), .Y(n32) );
  AOI211X1M U160 ( .A0(n6), .A1(n135), .B0(n40), .C0(n32), .Y(n33) );
  CLKNAND2X2M U161 ( .A(n8), .B(n138), .Y(n44) );
  OAI31X1M U162 ( .A0(n43), .A1(n34), .A2(n33), .B0(n44), .Y(n36) );
  NAND2BX1M U163 ( .AN(n27), .B(B[5]), .Y(n128) );
  OAI211X1M U164 ( .A0(n125), .A1(n36), .B0(n35), .C0(n128), .Y(n37) );
  NAND2BX1M U165 ( .AN(B[5]), .B(n27), .Y(n47) );
  XNOR2X1M U166 ( .A(n28), .B(n4), .Y(n127) );
  AOI32X1M U167 ( .A0(n37), .A1(n47), .A2(n127), .B0(n4), .B1(n145), .Y(n38)
         );
  CLKNAND2X2M U168 ( .A(B[7]), .B(n144), .Y(n131) );
  OAI21X1M U169 ( .A0(n130), .A1(n38), .B0(n131), .Y(N159) );
  CLKNAND2X2M U170 ( .A(n5), .B(n134), .Y(n41) );
  OA21X1M U171 ( .A0(n41), .A1(n150), .B0(B[1]), .Y(n39) );
  AOI211X1M U172 ( .A0(n41), .A1(n150), .B0(n40), .C0(n39), .Y(n42) );
  AOI31X1M U173 ( .A0(n137), .A1(n45), .A2(n44), .B0(n43), .Y(n126) );
  OAI2B11X1M U174 ( .A1N(n126), .A0(n125), .B0(n47), .C0(n46), .Y(n129) );
  AOI32X1M U175 ( .A0(n129), .A1(n128), .A2(n127), .B0(n28), .B1(n139), .Y(
        n132) );
  AOI2B1X1M U176 ( .A1N(n132), .A0(n131), .B0(n130), .Y(n133) );
  CLKINVX1M U177 ( .A(n133), .Y(N158) );
  NOR2X1M U178 ( .A(N159), .B(N158), .Y(N157) );
  ALU_DW_div_uns_0 div_52 ( .a({n29, n28, n27, n9, n8, n7, n6, n5}), .b({B[7], 
        n4, B[5:0]}), .quotient({N132, N131, N130, N129, N128, N127, N126, 
        N125}) );
  ALU_DW01_sub_0 sub_46 ( .A({1'b0, n29, n28, n27, n9, n8, n7, n6, n5}), .B({
        1'b0, B[7], n4, B[5:0]}), .CI(1'b0), .DIFF({N108, N107, N106, N105, 
        N104, N103, N102, N101, N100}) );
  ALU_DW01_add_0 add_43 ( .A({1'b0, n29, n28, n27, n9, n8, n7, n6, n5}), .B({
        1'b0, B[7], n4, B[5:0]}), .CI(1'b0), .SUM({N99, N98, N97, N96, N95, 
        N94, N93, N92, N91}) );
  ALU_DW02_mult_0 mult_49 ( .A({n29, n28, n27, n9, n8, n7, n6, n5}), .B({B[7], 
        n4, B[5:0]}), .TC(1'b0), .PRODUCT({N124, N123, N122, N121, N120, N119, 
        N118, N117, N116, N115, N114, N113, N112, N111, N110, N109}) );
endmodule


module CLK_GATE ( CLK_EN, CLK, GATED_CLK );
  input CLK_EN, CLK;
  output GATED_CLK;


  TLATNCAX12M U0_TLATNCAX12M ( .E(CLK_EN), .CK(CLK), .ECK(GATED_CLK) );
endmodule


module SYS_TOP ( scan_clk, scan_rst, test_mode, SE, SI, SO, RST_N, UART_CLK, 
        REF_CLK, UART_RX_IN, UART_TX_O, parity_error, framing_error );
  input [3:0] SI;
  output [3:0] SO;
  input scan_clk, scan_rst, test_mode, SE, RST_N, UART_CLK, REF_CLK,
         UART_RX_IN;
  output UART_TX_O, parity_error, framing_error;
  wire   REF_SCAN_CLK, UART_SCAN_CLK, UART_RX_CLK, UART_RX_SCAN_CLK,
         UART_TX_CLK, UART_TX_SCAN_CLK, RSTN_SCAN_RST, SYNC_REF_RST,
         SYNC_REF_SCAN_RST, SYNC_UART_RST, SYNC_UART_SCAN_RST, UART_RX_V_OUT,
         UART_RX_V_SYNC, UART_TX_VLD, UART_TX_Busy_PULSE, FIFO_FULL,
         UART_TX_V_SYNC, UART_TX_Busy, RF_RdData_VLD, RF_WrEn, RF_RdEn, ALU_EN,
         ALU_OUT_VLD, CLKG_EN, ALU_CLK, _1_net_, n1, n2, n3, n4, n5, n6, n7,
         n9, n10, n11, n13, n14, n15, n18, n21, n22;
  wire   [7:0] UART_RX_OUT;
  wire   [7:0] UART_RX_SYNC;
  wire   [7:0] UART_TX_IN;
  wire   [7:0] UART_TX_SYNC;
  wire   [7:0] DIV_RATIO;
  wire   [7:0] UART_Config;
  wire   [7:0] DIV_RATIO_RX;
  wire   [7:0] RF_RdData;
  wire   [3:0] RF_Address;
  wire   [7:0] RF_WrData;
  wire   [3:0] ALU_FUN;
  wire   [15:0] ALU_OUT;
  wire   [7:0] Operand_A;
  wire   [7:0] Operand_B;
  wire   SYNOPSYS_UNCONNECTED__0, SYNOPSYS_UNCONNECTED__1, 
        SYNOPSYS_UNCONNECTED__2, SYNOPSYS_UNCONNECTED__3;
  assign SO[0] = SYNC_REF_RST;

  INVX2M U3 ( .A(UART_TX_V_SYNC), .Y(n1) );
  BUFX2M U4 ( .A(RF_Address[0]), .Y(n2) );
  BUFX2M U5 ( .A(RF_Address[1]), .Y(n3) );
  INVX4M U6 ( .A(n7), .Y(n6) );
  INVX2M U7 ( .A(SYNC_REF_SCAN_RST), .Y(n7) );
  INVX4M U8 ( .A(n5), .Y(n4) );
  INVX2M U9 ( .A(SYNC_UART_SCAN_RST), .Y(n5) );
  OR2X2M U10 ( .A(CLKG_EN), .B(test_mode), .Y(_1_net_) );
  CLKBUFX40M U16 ( .A(UART_TX_O), .Y(SO[1]) );
  mux2X1_0 U0_mux2X1 ( .IN_0(REF_CLK), .IN_1(scan_clk), .SEL(test_mode), .OUT(
        REF_SCAN_CLK) );
  mux2X1_6 U1_mux2X1 ( .IN_0(UART_CLK), .IN_1(scan_clk), .SEL(test_mode), 
        .OUT(UART_SCAN_CLK) );
  mux2X1_5 U2_mux2X1 ( .IN_0(UART_RX_CLK), .IN_1(scan_clk), .SEL(test_mode), 
        .OUT(UART_RX_SCAN_CLK) );
  mux2X1_4 U3_mux2X1 ( .IN_0(UART_TX_CLK), .IN_1(scan_clk), .SEL(test_mode), 
        .OUT(UART_TX_SCAN_CLK) );
  mux2X1_3 U4_mux2X1 ( .IN_0(RST_N), .IN_1(scan_rst), .SEL(test_mode), .OUT(
        RSTN_SCAN_RST) );
  mux2X1_2 U5_mux2X1 ( .IN_0(SYNC_REF_RST), .IN_1(scan_rst), .SEL(test_mode), 
        .OUT(SYNC_REF_SCAN_RST) );
  mux2X1_1 U6_mux2X1 ( .IN_0(SYNC_UART_RST), .IN_1(scan_rst), .SEL(test_mode), 
        .OUT(SYNC_UART_SCAN_RST) );
  RST_SYNC_NUM_STAGES2_test_0 U0_RST_SYNC ( .RST(RSTN_SCAN_RST), .CLK(
        UART_SCAN_CLK), .SYNC_RST(SYNC_UART_RST), .test_si(n21), .test_se(SE)
         );
  RST_SYNC_NUM_STAGES2_test_1 U1_RST_SYNC ( .RST(RSTN_SCAN_RST), .CLK(
        REF_SCAN_CLK), .SYNC_RST(SYNC_REF_RST), .test_si(n9), .test_se(SE) );
  DATA_SYNC_NUM_STAGES2_BUS_WIDTH8_test_1 U0_ref_sync ( .CLK(REF_SCAN_CLK), 
        .RST(n6), .unsync_bus(UART_RX_OUT), .bus_enable(UART_RX_V_OUT), 
        .sync_bus(UART_RX_SYNC), .enable_pulse_d(UART_RX_V_SYNC), .test_si(n11), .test_so(n10), .test_se(SE) );
  Async_fifo_D_SIZE8_F_DEPTH8_P_SIZE4_test_1 U0_UART_FIFO ( .i_w_clk(
        REF_SCAN_CLK), .i_w_rstn(n6), .i_w_inc(UART_TX_VLD), .i_r_clk(
        UART_TX_SCAN_CLK), .i_r_rstn(n4), .i_r_inc(UART_TX_Busy_PULSE), 
        .i_w_data(UART_TX_IN), .o_r_data(UART_TX_SYNC), .o_full(FIFO_FULL), 
        .o_empty(UART_TX_V_SYNC), .test_si2(SI[0]), .test_si1(n14), .test_so2(
        n11), .test_so1(n13), .test_se(SE) );
  PULSE_GEN_test_1 U0_PULSE_GEN ( .clk(UART_TX_SCAN_CLK), .rst(n4), .lvl_sig(
        UART_TX_Busy), .pulse_sig(UART_TX_Busy_PULSE), .test_si(n22), 
        .test_so(n21), .test_se(SE) );
  ClkDiv_test_0 U0_ClkDiv ( .i_ref_clk(UART_SCAN_CLK), .i_rst(n4), .i_clk_en(
        1'b1), .i_div_ratio(DIV_RATIO), .o_div_clk(UART_TX_CLK), .test_si(
        ALU_OUT_VLD), .test_so(n22), .test_se(SE) );
  CLKDIV_MUX U0_CLKDIV_MUX ( .IN(UART_Config[7:2]), .OUT({
        SYNOPSYS_UNCONNECTED__0, SYNOPSYS_UNCONNECTED__1, 
        SYNOPSYS_UNCONNECTED__2, SYNOPSYS_UNCONNECTED__3, DIV_RATIO_RX[3:0]})
         );
  ClkDiv_test_1 U1_ClkDiv ( .i_ref_clk(UART_SCAN_CLK), .i_rst(n4), .i_clk_en(
        1'b1), .i_div_ratio({1'b0, 1'b0, 1'b0, 1'b0, DIV_RATIO_RX[3:0]}), 
        .o_div_clk(UART_RX_CLK), .test_si(n10), .test_so(n9), .test_se(SE) );
  UART_test_1 U0_UART ( .RST(n4), .TX_CLK(UART_TX_SCAN_CLK), .RX_CLK(
        UART_RX_SCAN_CLK), .RX_IN_S(UART_RX_IN), .RX_OUT_P(UART_RX_OUT), 
        .RX_OUT_V(UART_RX_V_OUT), .TX_IN_P(UART_TX_SYNC), .TX_IN_V(n1), 
        .TX_OUT_S(UART_TX_O), .TX_OUT_V(UART_TX_Busy), .Prescale(
        UART_Config[7:2]), .parity_enable(UART_Config[0]), .parity_type(
        UART_Config[1]), .parity_error(parity_error), .framing_error(
        framing_error), .test_si2(n13), .test_si1(n15), .test_so1(n14), 
        .test_se(SE) );
  SYS_CTRL_test_1 U0_SYS_CTRL ( .CLK(REF_SCAN_CLK), .RST(n6), .RF_RdData(
        RF_RdData), .RF_RdData_VLD(RF_RdData_VLD), .ALU_OUT(ALU_OUT), 
        .ALU_OUT_VLD(ALU_OUT_VLD), .UART_RX_DATA(UART_RX_SYNC), .UART_RX_VLD(
        UART_RX_V_SYNC), .FIFO_FULL(FIFO_FULL), .ALU_EN(ALU_EN), .ALU_FUN(
        ALU_FUN), .CLKG_EN(CLKG_EN), .RF_WrEn(RF_WrEn), .RF_RdEn(RF_RdEn), 
        .RF_Address(RF_Address), .RF_WrData(RF_WrData), .UART_TX_DATA(
        UART_TX_IN), .UART_TX_VLD(UART_TX_VLD), .test_si2(SI[1]), .test_si1(
        n18), .test_so2(n15), .test_so1(SO[2]), .test_se(SE) );
  RegFile_test_1 U0_RegFile ( .CLK(REF_SCAN_CLK), .RST(n6), .WrEn(RF_WrEn), 
        .RdEn(RF_RdEn), .Address({RF_Address[3:2], n3, n2}), .WrData(RF_WrData), .RdData(RF_RdData), .RdData_VLD(RF_RdData_VLD), .REG0(Operand_A), .REG1(
        Operand_B), .REG2(UART_Config), .REG3(DIV_RATIO), .test_si2(SI[2]), 
        .test_si1(SYNC_UART_RST), .test_so2(n18), .test_so1(SO[3]), .test_se(
        SE) );
  ALU_test_1 U0_ALU ( .A(Operand_A), .B(Operand_B), .EN(ALU_EN), .ALU_FUN(
        ALU_FUN), .CLK(ALU_CLK), .RST(n6), .ALU_OUT(ALU_OUT), .OUT_VALID(
        ALU_OUT_VLD), .test_si(SI[3]), .test_se(SE) );
  CLK_GATE U0_CLK_GATE ( .CLK_EN(_1_net_), .CLK(REF_SCAN_CLK), .GATED_CLK(
        ALU_CLK) );
endmodule

