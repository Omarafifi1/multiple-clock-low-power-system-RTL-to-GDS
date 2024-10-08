/////////////////////////////////////////////////////////////
// Created by: Synopsys DC Expert(TM) in wire load mode
// Version   : K-2015.06
// Date      : Thu Aug 29 00:22:05 2024
/////////////////////////////////////////////////////////////


module mux_2x1_0 ( in0, in1, sel, out );
  input in0, in1, sel;
  output out;


  AO2B2X2M U1 ( .B0(sel), .B1(in1), .A0(in0), .A1N(sel), .Y(out) );
endmodule


module mux_2x1_6 ( in0, in1, sel, out );
  input in0, in1, sel;
  output out;


  AO2B2X4M U1 ( .B0(sel), .B1(in1), .A0(in0), .A1N(sel), .Y(out) );
endmodule


module mux_2x1_5 ( in0, in1, sel, out );
  input in0, in1, sel;
  output out;


  AO2B2X2M U1 ( .B0(sel), .B1(in1), .A0(in0), .A1N(sel), .Y(out) );
endmodule


module mux_2x1_4 ( in0, in1, sel, out );
  input in0, in1, sel;
  output out;


  AO2B2X2M U1 ( .B0(sel), .B1(in1), .A0(in0), .A1N(sel), .Y(out) );
endmodule


module mux_2x1_3 ( in0, in1, sel, out );
  input in0, in1, sel;
  output out;


  AO2B2X2M U1 ( .B0(sel), .B1(in1), .A0(in0), .A1N(sel), .Y(out) );
endmodule


module mux_2x1_2 ( in0, in1, sel, out );
  input in0, in1, sel;
  output out;


  AO2B2X2M U1 ( .B0(sel), .B1(in1), .A0(in0), .A1N(sel), .Y(out) );
endmodule


module mux_2x1_1 ( in0, in1, sel, out );
  input in0, in1, sel;
  output out;


  AO2B2X2M U1 ( .B0(sel), .B1(in1), .A0(in0), .A1N(sel), .Y(out) );
endmodule


module sys_ctrl_test_1 ( clk, rst_n, alu_out, out_valid, rx_P_data, rx_d_valid, 
        full_flag, rd_data, rd_data_valid, alu_en, alu_fun, clk_en, address, 
        w_en, r_en, w_data, tx_P_data, w_inc, clk_div_en, test_si, test_so, 
        test_se );
  input [15:0] alu_out;
  input [7:0] rx_P_data;
  input [7:0] rd_data;
  output [3:0] alu_fun;
  output [3:0] address;
  output [7:0] w_data;
  output [7:0] tx_P_data;
  input clk, rst_n, out_valid, rx_d_valid, full_flag, rd_data_valid, test_si,
         test_se;
  output alu_en, clk_en, w_en, r_en, w_inc, clk_div_en, test_so;
  wire   n17, n18, n19, n26, n27, n28, n29, n30, n31, n32, n33, n34, n35, n36,
         n37, n38, n39, n40, n41, n42, n43, n44, n45, n46, n47, n48, n49, n50,
         n51, n52, n53, n54, n55, n56, n57, n58, n59, n60, n61, n62, n63, n64,
         n65, n66, n67, n68, n69, n70, n71, n72, n73, n74, n75, n76, n77, n78,
         n79, n80, n81, n82, n83, n84, n85, n86, n87, n88, n89, n90, n91, n92,
         n93, n94, n14, n15, n16, n20, n21, n22, n23, n24, n25, n96, n97, n98,
         n99, n100;
  wire   [3:0] current_state;
  assign test_so = n99;

  SDFFRQX2M \address_reg[1]  ( .D(n88), .SI(n19), .SE(test_se), .CK(clk), .RN(
        rst_n), .Q(address[1]) );
  SDFFRQX2M \current_state_reg[2]  ( .D(n92), .SI(current_state[1]), .SE(
        test_se), .CK(clk), .RN(rst_n), .Q(current_state[2]) );
  SDFFRQX2M \current_state_reg[0]  ( .D(n94), .SI(n17), .SE(test_se), .CK(clk), 
        .RN(rst_n), .Q(current_state[0]) );
  SDFFRQX2M \current_state_reg[3]  ( .D(n93), .SI(n14), .SE(test_se), .CK(clk), 
        .RN(rst_n), .Q(current_state[3]) );
  SDFFRQX2M \current_state_reg[1]  ( .D(n91), .SI(n97), .SE(test_se), .CK(clk), 
        .RN(rst_n), .Q(current_state[1]) );
  SDFFRX1M \address_reg[2]  ( .D(n89), .SI(address[1]), .SE(test_se), .CK(clk), 
        .RN(rst_n), .Q(address[2]), .QN(n18) );
  SDFFRX1M \address_reg[3]  ( .D(n90), .SI(address[2]), .SE(test_se), .CK(clk), 
        .RN(rst_n), .Q(address[3]), .QN(n17) );
  SDFFRX1M \address_reg[0]  ( .D(n87), .SI(test_si), .SE(test_se), .CK(clk), 
        .RN(rst_n), .Q(address[0]), .QN(n19) );
  NOR2X2M U16 ( .A(n86), .B(n23), .Y(alu_fun[2]) );
  NOR2X2M U17 ( .A(n86), .B(n22), .Y(alu_fun[3]) );
  INVX2M U18 ( .A(n86), .Y(alu_en) );
  NOR2X2M U19 ( .A(n45), .B(n46), .Y(n86) );
  NOR2BX2M U20 ( .AN(n60), .B(n96), .Y(n45) );
  NOR2BX2M U21 ( .AN(n60), .B(n98), .Y(n46) );
  NOR2X2M U22 ( .A(n99), .B(n14), .Y(n60) );
  NAND3X2M U23 ( .A(n97), .B(n100), .C(n60), .Y(n31) );
  OAI21X2M U24 ( .A0(n97), .A1(n52), .B0(n73), .Y(n94) );
  OAI31X1M U25 ( .A0(n74), .A1(n64), .A2(n75), .B0(n52), .Y(n73) );
  NAND4X2M U26 ( .A(n80), .B(n81), .C(n58), .D(n62), .Y(n74) );
  OAI32X1M U27 ( .A0(n97), .A1(n59), .A2(n99), .B0(n16), .B1(n76), .Y(n75) );
  NOR2X2M U28 ( .A(n32), .B(n25), .Y(w_data[0]) );
  AND3X2M U29 ( .A(n34), .B(n97), .C(n100), .Y(n68) );
  NOR2BX2M U30 ( .AN(n31), .B(n30), .Y(n33) );
  OAI211X2M U31 ( .A0(n57), .A1(n16), .B0(n62), .C0(n20), .Y(n93) );
  INVX2M U32 ( .A(n72), .Y(n20) );
  AOI31X2M U33 ( .A0(n59), .A1(n52), .A2(n50), .B0(n99), .Y(n72) );
  NOR2X2M U34 ( .A(n32), .B(n24), .Y(w_data[1]) );
  NOR2X2M U35 ( .A(n32), .B(n23), .Y(w_data[2]) );
  NOR2X2M U36 ( .A(n32), .B(n22), .Y(w_data[3]) );
  NOR2X2M U37 ( .A(n32), .B(n21), .Y(w_data[4]) );
  AND2X2M U38 ( .A(n47), .B(n99), .Y(r_en) );
  INVX2M U39 ( .A(n49), .Y(n15) );
  INVX2M U40 ( .A(n79), .Y(n96) );
  INVX2M U41 ( .A(n50), .Y(n98) );
  AND2X2M U42 ( .A(n14), .B(n79), .Y(n47) );
  NAND3X2M U43 ( .A(n79), .B(n16), .C(n34), .Y(n80) );
  NOR2X2M U44 ( .A(n86), .B(n24), .Y(alu_fun[1]) );
  NOR2X2M U45 ( .A(n86), .B(n25), .Y(alu_fun[0]) );
  OAI211X2M U46 ( .A0(n14), .A1(n58), .B0(n33), .C0(n85), .Y(clk_en) );
  AOI31X2M U47 ( .A0(n50), .A1(n99), .A2(n14), .B0(alu_en), .Y(n85) );
  OAI31X1M U48 ( .A0(n27), .A1(address[1]), .A2(n28), .B0(n29), .Y(w_en) );
  NAND3X2M U49 ( .A(n17), .B(n16), .C(n18), .Y(n27) );
  AOI2BB2XLM U50 ( .B0(n30), .B1(n19), .A0N(n19), .A1N(n31), .Y(n28) );
  NAND3X2M U51 ( .A(current_state[0]), .B(current_state[1]), .C(n14), .Y(n57)
         );
  NOR2X2M U52 ( .A(n57), .B(current_state[3]), .Y(n30) );
  INVX2M U53 ( .A(current_state[0]), .Y(n97) );
  INVX2M U54 ( .A(current_state[1]), .Y(n100) );
  INVX2M U55 ( .A(current_state[3]), .Y(n99) );
  BUFX2M U56 ( .A(current_state[2]), .Y(n14) );
  AOI33X2M U57 ( .A0(n34), .A1(n16), .A2(n50), .B0(n51), .B1(n14), .B2(
        rx_d_valid), .Y(n48) );
  NOR3X2M U58 ( .A(current_state[1]), .B(current_state[3]), .C(
        current_state[0]), .Y(n51) );
  OA21X2M U59 ( .A0(rx_d_valid), .A1(n33), .B0(n29), .Y(n32) );
  OAI21X2M U60 ( .A0(rx_d_valid), .A1(n33), .B0(n48), .Y(n49) );
  OAI222X1M U61 ( .A0(n48), .A1(n25), .B0(n15), .B1(n31), .C0(n19), .C1(n49), 
        .Y(n87) );
  NOR2X2M U62 ( .A(n14), .B(current_state[3]), .Y(n34) );
  OAI22X1M U63 ( .A0(n49), .A1(n18), .B0(n48), .B1(n23), .Y(n89) );
  OAI22X1M U64 ( .A0(n49), .A1(n17), .B0(n48), .B1(n22), .Y(n90) );
  NOR2X2M U65 ( .A(n97), .B(current_state[1]), .Y(n79) );
  NOR2BX2M U66 ( .AN(rx_P_data[5]), .B(n32), .Y(w_data[5]) );
  NOR2BX2M U67 ( .AN(rx_P_data[6]), .B(n32), .Y(w_data[6]) );
  NOR2BX2M U68 ( .AN(rx_P_data[7]), .B(n32), .Y(w_data[7]) );
  NOR2X2M U69 ( .A(n100), .B(current_state[0]), .Y(n50) );
  OAI2BB1X2M U70 ( .A0N(rd_data[0]), .A1N(n26), .B0(n44), .Y(tx_P_data[0]) );
  AOI22X1M U71 ( .A0(alu_out[8]), .A1(n36), .B0(alu_out[0]), .B1(n37), .Y(n44)
         );
  OAI2BB1X2M U72 ( .A0N(rd_data[1]), .A1N(n26), .B0(n43), .Y(tx_P_data[1]) );
  AOI22X1M U73 ( .A0(alu_out[9]), .A1(n36), .B0(alu_out[1]), .B1(n37), .Y(n43)
         );
  OAI2BB1X2M U74 ( .A0N(rd_data[2]), .A1N(n26), .B0(n42), .Y(tx_P_data[2]) );
  AOI22X1M U75 ( .A0(alu_out[10]), .A1(n36), .B0(alu_out[2]), .B1(n37), .Y(n42) );
  OAI2BB1X2M U76 ( .A0N(rd_data[3]), .A1N(n26), .B0(n41), .Y(tx_P_data[3]) );
  AOI22X1M U77 ( .A0(alu_out[11]), .A1(n36), .B0(alu_out[3]), .B1(n37), .Y(n41) );
  OAI2BB1X2M U78 ( .A0N(rd_data[4]), .A1N(n26), .B0(n40), .Y(tx_P_data[4]) );
  AOI22X1M U79 ( .A0(alu_out[12]), .A1(n36), .B0(alu_out[4]), .B1(n37), .Y(n40) );
  OAI2BB1X2M U80 ( .A0N(rd_data[5]), .A1N(n26), .B0(n39), .Y(tx_P_data[5]) );
  AOI22X1M U81 ( .A0(alu_out[13]), .A1(n36), .B0(alu_out[5]), .B1(n37), .Y(n39) );
  OAI2BB1X2M U82 ( .A0N(rd_data[6]), .A1N(n26), .B0(n38), .Y(tx_P_data[6]) );
  AOI22X1M U83 ( .A0(alu_out[14]), .A1(n36), .B0(alu_out[6]), .B1(n37), .Y(n38) );
  OAI2BB1X2M U84 ( .A0N(rd_data[7]), .A1N(n26), .B0(n35), .Y(tx_P_data[7]) );
  AOI22X1M U85 ( .A0(alu_out[15]), .A1(n36), .B0(alu_out[7]), .B1(n37), .Y(n35) );
  OAI211X2M U86 ( .A0(n61), .A1(n96), .B0(n62), .C0(n63), .Y(n54) );
  AOI22X1M U87 ( .A0(rx_d_valid), .A1(n34), .B0(n59), .B1(current_state[3]), 
        .Y(n61) );
  NAND4X2M U88 ( .A(n67), .B(rx_P_data[0]), .C(n68), .D(n82), .Y(n62) );
  NOR3X2M U89 ( .A(n21), .B(rx_P_data[5]), .C(rx_P_data[1]), .Y(n82) );
  NOR2BX2M U90 ( .AN(out_valid), .B(full_flag), .Y(n59) );
  OAI2BB2X1M U91 ( .B0(n48), .B1(n24), .A0N(n15), .A1N(address[1]), .Y(n88) );
  OAI21X2M U92 ( .A0(rx_d_valid), .A1(n57), .B0(n78), .Y(n64) );
  OAI2B1X2M U93 ( .A1N(rd_data_valid), .A0(full_flag), .B0(n47), .Y(n78) );
  NAND4X2M U94 ( .A(n67), .B(n25), .C(n68), .D(n69), .Y(n63) );
  NOR3X2M U95 ( .A(rx_P_data[1]), .B(rx_P_data[5]), .C(rx_P_data[4]), .Y(n69)
         );
  OAI21X2M U96 ( .A0(n100), .A1(n52), .B0(n53), .Y(n91) );
  OAI31X1M U97 ( .A0(n54), .A1(n55), .A2(n56), .B0(n52), .Y(n53) );
  AOI21X2M U98 ( .A0(n57), .A1(n58), .B0(rx_d_valid), .Y(n56) );
  AOI21X2M U99 ( .A0(n59), .A1(n60), .B0(n98), .Y(n55) );
  INVX2M U100 ( .A(rx_d_valid), .Y(n16) );
  NAND3X2M U101 ( .A(current_state[0]), .B(current_state[1]), .C(n34), .Y(n29)
         );
  AO21XLM U102 ( .A0(alu_en), .A1(out_valid), .B0(n26), .Y(w_inc) );
  AND2X2M U103 ( .A(n46), .B(out_valid), .Y(n36) );
  AND2X2M U104 ( .A(n45), .B(out_valid), .Y(n37) );
  AND2X2M U105 ( .A(rd_data_valid), .B(r_en), .Y(n26) );
  NAND3X2M U106 ( .A(current_state[1]), .B(current_state[3]), .C(
        current_state[0]), .Y(n58) );
  NAND2X2M U107 ( .A(n14), .B(current_state[3]), .Y(n52) );
  AND3X2M U108 ( .A(rx_P_data[2]), .B(rx_P_data[6]), .C(n83), .Y(n67) );
  AND3X2M U109 ( .A(rx_P_data[1]), .B(rx_P_data[5]), .C(n83), .Y(n70) );
  OAI21X2M U110 ( .A0(n14), .A1(n77), .B0(n97), .Y(n76) );
  XNOR2X2M U111 ( .A(n99), .B(current_state[1]), .Y(n77) );
  NAND4X2M U112 ( .A(n68), .B(n25), .C(n70), .D(n84), .Y(n81) );
  NOR3X2M U113 ( .A(rx_P_data[2]), .B(rx_P_data[6]), .C(rx_P_data[4]), .Y(n84)
         );
  INVX2M U114 ( .A(rx_P_data[0]), .Y(n25) );
  NAND4BX1M U115 ( .AN(n64), .B(n65), .C(n66), .D(n63), .Y(n92) );
  OAI2BB1X2M U116 ( .A0N(n52), .A1N(current_state[0]), .B0(n14), .Y(n65) );
  NAND4X2M U117 ( .A(n68), .B(rx_P_data[0]), .C(n70), .D(n71), .Y(n66) );
  NOR3X2M U118 ( .A(n21), .B(rx_P_data[6]), .C(rx_P_data[2]), .Y(n71) );
  INVX2M U119 ( .A(rx_P_data[4]), .Y(n21) );
  INVX2M U120 ( .A(rx_P_data[1]), .Y(n24) );
  INVX2M U121 ( .A(rx_P_data[2]), .Y(n23) );
  INVX2M U122 ( .A(rx_P_data[3]), .Y(n22) );
  AND3X2M U123 ( .A(rx_P_data[7]), .B(rx_P_data[3]), .C(rx_d_valid), .Y(n83)
         );
  INVX2M U3 ( .A(1'b0), .Y(clk_div_en) );
endmodule


module enable_sync_test_1 ( clk, rst_n, bus_enable, sync_bus_enable, test_si, 
        test_so, test_se );
  input clk, rst_n, bus_enable, test_si, test_se;
  output sync_bus_enable, test_so;
  wire   \enable_sync_reg[1] ;
  assign test_so = \enable_sync_reg[1] ;

  SDFFRQX2M \enable_sync_reg_reg[0]  ( .D(\enable_sync_reg[1] ), .SI(test_si), 
        .SE(test_se), .CK(clk), .RN(rst_n), .Q(sync_bus_enable) );
  SDFFRQX2M \enable_sync_reg_reg[1]  ( .D(bus_enable), .SI(sync_bus_enable), 
        .SE(test_se), .CK(clk), .RN(rst_n), .Q(\enable_sync_reg[1] ) );
endmodule


module pulse_gen_test_0 ( clk, rst_n, in, d2, out, test_si, test_so, test_se
 );
  input clk, rst_n, in, test_si, test_se;
  output d2, out, test_so;
  wire   q;
  assign test_so = q;

  SDFFRQX2M q_reg ( .D(in), .SI(out), .SE(test_se), .CK(clk), .RN(rst_n), .Q(q) );
  SDFFRQX2M out_reg ( .D(d2), .SI(test_si), .SE(test_se), .CK(clk), .RN(rst_n), 
        .Q(out) );
  NOR2BX2M U5 ( .AN(in), .B(q), .Y(d2) );
endmodule


module enabled_ff_test_1 ( unsync_bus, enable_signal, clk, rst_n, sync_bus, 
        test_si, test_se );
  input [7:0] unsync_bus;
  output [7:0] sync_bus;
  input enable_signal, clk, rst_n, test_si, test_se;
  wire   n3, n5, n7, n9, n11, n13, n15, n17, n1;

  SDFFRQX2M \sync_bus_reg[7]  ( .D(n17), .SI(sync_bus[6]), .SE(test_se), .CK(
        clk), .RN(rst_n), .Q(sync_bus[7]) );
  SDFFRQX2M \sync_bus_reg[3]  ( .D(n9), .SI(sync_bus[2]), .SE(test_se), .CK(
        clk), .RN(rst_n), .Q(sync_bus[3]) );
  SDFFRQX2M \sync_bus_reg[6]  ( .D(n15), .SI(sync_bus[5]), .SE(test_se), .CK(
        clk), .RN(rst_n), .Q(sync_bus[6]) );
  SDFFRQX2M \sync_bus_reg[5]  ( .D(n13), .SI(sync_bus[4]), .SE(test_se), .CK(
        clk), .RN(rst_n), .Q(sync_bus[5]) );
  SDFFRQX2M \sync_bus_reg[0]  ( .D(n3), .SI(test_si), .SE(test_se), .CK(clk), 
        .RN(rst_n), .Q(sync_bus[0]) );
  SDFFRQX2M \sync_bus_reg[4]  ( .D(n11), .SI(sync_bus[3]), .SE(test_se), .CK(
        clk), .RN(rst_n), .Q(sync_bus[4]) );
  SDFFRQX2M \sync_bus_reg[2]  ( .D(n7), .SI(sync_bus[1]), .SE(test_se), .CK(
        clk), .RN(rst_n), .Q(sync_bus[2]) );
  SDFFRQX2M \sync_bus_reg[1]  ( .D(n5), .SI(sync_bus[0]), .SE(test_se), .CK(
        clk), .RN(rst_n), .Q(sync_bus[1]) );
  INVX2M U2 ( .A(enable_signal), .Y(n1) );
  AO22X1M U3 ( .A0(unsync_bus[0]), .A1(enable_signal), .B0(sync_bus[0]), .B1(
        n1), .Y(n3) );
  AO22X1M U4 ( .A0(unsync_bus[1]), .A1(enable_signal), .B0(sync_bus[1]), .B1(
        n1), .Y(n5) );
  AO22X1M U5 ( .A0(unsync_bus[2]), .A1(enable_signal), .B0(sync_bus[2]), .B1(
        n1), .Y(n7) );
  AO22X1M U6 ( .A0(unsync_bus[3]), .A1(enable_signal), .B0(sync_bus[3]), .B1(
        n1), .Y(n9) );
  AO22X1M U7 ( .A0(unsync_bus[4]), .A1(enable_signal), .B0(sync_bus[4]), .B1(
        n1), .Y(n11) );
  AO22X1M U8 ( .A0(unsync_bus[5]), .A1(enable_signal), .B0(sync_bus[5]), .B1(
        n1), .Y(n13) );
  AO22X1M U9 ( .A0(unsync_bus[6]), .A1(enable_signal), .B0(sync_bus[6]), .B1(
        n1), .Y(n15) );
  AO22X1M U10 ( .A0(unsync_bus[7]), .A1(enable_signal), .B0(sync_bus[7]), .B1(
        n1), .Y(n17) );
endmodule


module data_sync_top_module_test_1 ( dest_clk, dest_rst_n, unsync_bus, 
        bus_enable, sync_bus, enable_pulse, test_si, test_se );
  input [7:0] unsync_bus;
  output [7:0] sync_bus;
  input dest_clk, dest_rst_n, bus_enable, test_si, test_se;
  output enable_pulse;
  wire   sync_bus_enable, mux_enable, n1, n2;

  enable_sync_test_1 dut1 ( .clk(dest_clk), .rst_n(dest_rst_n), .bus_enable(
        bus_enable), .sync_bus_enable(sync_bus_enable), .test_si(test_si), 
        .test_so(n2), .test_se(test_se) );
  pulse_gen_test_0 dut2 ( .clk(dest_clk), .rst_n(dest_rst_n), .in(
        sync_bus_enable), .d2(mux_enable), .out(enable_pulse), .test_si(n2), 
        .test_so(n1), .test_se(test_se) );
  enabled_ff_test_1 dut3 ( .unsync_bus(unsync_bus), .enable_signal(mux_enable), 
        .clk(dest_clk), .rst_n(dest_rst_n), .sync_bus(sync_bus), .test_si(n1), 
        .test_se(test_se) );
endmodule


module data_sampler_test_1 ( rx_clk, rst_n, data_sampler_enable, sampling_tick, 
        rx_in, sampled_bit, test_si, test_so, test_se );
  input rx_clk, rst_n, data_sampler_enable, sampling_tick, rx_in, test_si,
         test_se;
  output sampled_bit, test_so;
  wire   n1, n3, n7, n9, n11, n13, n15, n2, n4, n5, n6;
  wire   [2:0] sampled_data;
  assign test_so = n4;

  SDFFRQX2M \sampled_data_reg[2]  ( .D(n15), .SI(n5), .SE(test_se), .CK(rx_clk), .RN(rst_n), .Q(sampled_data[2]) );
  SDFFRQX2M \sampled_data_reg[0]  ( .D(n11), .SI(sampled_bit), .SE(test_se), 
        .CK(rx_clk), .RN(rst_n), .Q(sampled_data[0]) );
  SDFFRQX2M \sampled_data_reg[1]  ( .D(n13), .SI(sampled_data[0]), .SE(test_se), .CK(rx_clk), .RN(rst_n), .Q(sampled_data[1]) );
  SDFFRQX2M sampled_bit_reg ( .D(n9), .SI(test_si), .SE(test_se), .CK(rx_clk), 
        .RN(rst_n), .Q(sampled_bit) );
  OAI22X1M U2 ( .A0(n2), .A1(n6), .B0(n7), .B1(n5), .Y(n11) );
  OAI22X1M U3 ( .A0(n2), .A1(n5), .B0(n7), .B1(n4), .Y(n13) );
  INVX2M U4 ( .A(n7), .Y(n2) );
  NAND2X2M U5 ( .A(sampling_tick), .B(data_sampler_enable), .Y(n7) );
  OAI2BB2X1M U6 ( .B0(n2), .B1(n4), .A0N(rx_in), .A1N(n2), .Y(n15) );
  OAI2BB2X1M U7 ( .B0(n1), .B1(n2), .A0N(sampled_bit), .A1N(n2), .Y(n9) );
  AOI21X2M U8 ( .A0(sampled_data[1]), .A1(sampled_data[0]), .B0(n3), .Y(n1) );
  AOI21X2M U9 ( .A0(n5), .A1(n6), .B0(n4), .Y(n3) );
  INVX2M U10 ( .A(sampled_data[1]), .Y(n5) );
  INVX2M U11 ( .A(sampled_data[2]), .Y(n4) );
  INVX2M U12 ( .A(sampled_data[0]), .Y(n6) );
endmodule


module edge_bit_counter_test_1 ( rx_clk, rst_n, prescale, counter_enable, 
        deserializer_enable, edge_done_tick, data_done_tick, sampling_tick, 
        test_si, test_so, test_se );
  input [5:0] prescale;
  input rx_clk, rst_n, counter_enable, deserializer_enable, test_si, test_se;
  output edge_done_tick, data_done_tick, sampling_tick, test_so;
  wire   N3, N4, N5, N6, N7, N8, N9, N11, N12, N13, N14, N15, N16, N17, N19,
         N20, N21, N22, N23, N29, N30, N31, N32, N33, N34, N35, N36, N37, N38,
         N39, N40, n34, n35, n36, \add_24/carry[5] , \add_24/carry[4] ,
         \add_24/carry[3] , \add_24/carry[2] , \add_17/carry[4] ,
         \add_17/carry[3] , \add_17/carry[2] , n1, n2, n3, n4, n5, n6, n7, n8,
         n9, n10, n11, n12, n13, n14, n24, n25, n26, n27, n28, n29, n30, n31,
         n32, n33, n37, n38, n39, n40, n41, n42, n43, n44, n45, n46, n47, n48,
         n49, n50, n51, n52, n53, n54, n55, n56, n57, n58, n59, n60, n61, n64,
         n65;
  wire   [5:0] edge_counter;
  wire   [2:0] data_bit_counter;
  assign test_so = edge_counter[5];

  SDFFRQX2M \data_bit_counter_reg[2]  ( .D(n35), .SI(data_bit_counter[1]), 
        .SE(test_se), .CK(rx_clk), .RN(rst_n), .Q(data_bit_counter[2]) );
  SDFFRQX2M \data_bit_counter_reg[1]  ( .D(n34), .SI(data_bit_counter[0]), 
        .SE(test_se), .CK(rx_clk), .RN(rst_n), .Q(data_bit_counter[1]) );
  SDFFRQX2M \data_bit_counter_reg[0]  ( .D(n36), .SI(test_si), .SE(test_se), 
        .CK(rx_clk), .RN(rst_n), .Q(data_bit_counter[0]) );
  SDFFRQX2M \edge_counter_reg[5]  ( .D(N40), .SI(edge_counter[4]), .SE(test_se), .CK(rx_clk), .RN(rst_n), .Q(edge_counter[5]) );
  SDFFRQX2M \edge_counter_reg[0]  ( .D(N35), .SI(data_bit_counter[2]), .SE(
        test_se), .CK(rx_clk), .RN(rst_n), .Q(edge_counter[0]) );
  SDFFRQX2M \edge_counter_reg[4]  ( .D(N39), .SI(edge_counter[3]), .SE(test_se), .CK(rx_clk), .RN(rst_n), .Q(edge_counter[4]) );
  SDFFRQX2M \edge_counter_reg[3]  ( .D(N38), .SI(edge_counter[2]), .SE(test_se), .CK(rx_clk), .RN(rst_n), .Q(edge_counter[3]) );
  SDFFRQX2M \edge_counter_reg[2]  ( .D(N37), .SI(edge_counter[1]), .SE(test_se), .CK(rx_clk), .RN(rst_n), .Q(edge_counter[2]) );
  SDFFRQX2M \edge_counter_reg[1]  ( .D(N36), .SI(N29), .SE(test_se), .CK(
        rx_clk), .RN(rst_n), .Q(edge_counter[1]) );
  OR2X2M U6 ( .A(n65), .B(prescale[0]), .Y(n1) );
  OR2X2M U7 ( .A(prescale[2]), .B(n65), .Y(n5) );
  ADDHX1M U8 ( .A(prescale[4]), .B(\add_17/carry[3] ), .CO(\add_17/carry[4] ), 
        .S(N21) );
  ADDHX1M U9 ( .A(prescale[3]), .B(\add_17/carry[2] ), .CO(\add_17/carry[3] ), 
        .S(N20) );
  ADDHX1M U10 ( .A(prescale[2]), .B(n65), .CO(\add_17/carry[2] ), .S(N19) );
  ADDHX1M U11 ( .A(prescale[5]), .B(\add_17/carry[4] ), .CO(N23), .S(N22) );
  ADDHX1M U12 ( .A(edge_counter[1]), .B(edge_counter[0]), .CO(
        \add_24/carry[2] ), .S(N30) );
  ADDHX1M U19 ( .A(edge_counter[2]), .B(\add_24/carry[2] ), .CO(
        \add_24/carry[3] ), .S(N31) );
  ADDHX1M U20 ( .A(edge_counter[3]), .B(\add_24/carry[3] ), .CO(
        \add_24/carry[4] ), .S(N32) );
  ADDHX1M U21 ( .A(edge_counter[4]), .B(\add_24/carry[4] ), .CO(
        \add_24/carry[5] ), .S(N33) );
  CLKINVX1M U22 ( .A(prescale[0]), .Y(N3) );
  OAI2BB1X1M U23 ( .A0N(prescale[0]), .A1N(n65), .B0(n1), .Y(N4) );
  OR2X1M U24 ( .A(n1), .B(prescale[2]), .Y(n2) );
  OAI2BB1X1M U25 ( .A0N(n1), .A1N(prescale[2]), .B0(n2), .Y(N5) );
  OR2X1M U26 ( .A(n2), .B(prescale[3]), .Y(n3) );
  OAI2BB1X1M U27 ( .A0N(n2), .A1N(prescale[3]), .B0(n3), .Y(N6) );
  OR2X1M U28 ( .A(n3), .B(prescale[4]), .Y(n4) );
  OAI2BB1X1M U29 ( .A0N(n3), .A1N(prescale[4]), .B0(n4), .Y(N7) );
  NOR2X1M U30 ( .A(n4), .B(prescale[5]), .Y(N9) );
  AO21XLM U31 ( .A0(n4), .A1(prescale[5]), .B0(N9), .Y(N8) );
  CLKINVX1M U32 ( .A(n65), .Y(N11) );
  OAI2BB1X1M U33 ( .A0N(n65), .A1N(prescale[2]), .B0(n5), .Y(N12) );
  OR2X1M U34 ( .A(n5), .B(prescale[3]), .Y(n6) );
  OAI2BB1X1M U35 ( .A0N(n5), .A1N(prescale[3]), .B0(n6), .Y(N13) );
  XNOR2X1M U36 ( .A(prescale[4]), .B(n6), .Y(N14) );
  NOR3X1M U37 ( .A(prescale[4]), .B(prescale[5]), .C(n6), .Y(N16) );
  OAI21X1M U38 ( .A0(prescale[4]), .A1(n6), .B0(prescale[5]), .Y(n7) );
  NAND2BX1M U39 ( .AN(N16), .B(n7), .Y(N15) );
  CLKINVX1M U40 ( .A(edge_counter[0]), .Y(N29) );
  CLKXOR2X2M U41 ( .A(\add_24/carry[5] ), .B(edge_counter[5]), .Y(N34) );
  NOR2BX1M U42 ( .AN(N3), .B(edge_counter[0]), .Y(n8) );
  OAI2B2X1M U43 ( .A1N(edge_counter[1]), .A0(n8), .B0(N4), .B1(n8), .Y(n12) );
  XNOR2X1M U44 ( .A(N8), .B(edge_counter[5]), .Y(n11) );
  NOR2BX1M U45 ( .AN(edge_counter[0]), .B(N3), .Y(n9) );
  OAI2B2X1M U46 ( .A1N(N4), .A0(n9), .B0(edge_counter[1]), .B1(n9), .Y(n10) );
  NAND4BX1M U47 ( .AN(N9), .B(n12), .C(n11), .D(n10), .Y(n25) );
  CLKXOR2X2M U48 ( .A(N7), .B(edge_counter[4]), .Y(n24) );
  CLKXOR2X2M U49 ( .A(N5), .B(edge_counter[2]), .Y(n14) );
  CLKXOR2X2M U50 ( .A(N6), .B(edge_counter[3]), .Y(n13) );
  NOR4X1M U51 ( .A(n25), .B(n24), .C(n14), .D(n13), .Y(edge_done_tick) );
  NOR2BX1M U52 ( .AN(edge_counter[0]), .B(N11), .Y(n26) );
  OAI2B2X1M U53 ( .A1N(N12), .A0(n26), .B0(edge_counter[1]), .B1(n26), .Y(n29)
         );
  NOR2BX1M U54 ( .AN(N11), .B(edge_counter[0]), .Y(n27) );
  OAI2B2X1M U55 ( .A1N(edge_counter[1]), .A0(n27), .B0(N12), .B1(n27), .Y(n28)
         );
  NAND4BBX1M U56 ( .AN(N16), .BN(edge_counter[5]), .C(n29), .D(n28), .Y(n33)
         );
  CLKXOR2X2M U57 ( .A(N15), .B(edge_counter[4]), .Y(n32) );
  CLKXOR2X2M U58 ( .A(N13), .B(edge_counter[2]), .Y(n31) );
  CLKXOR2X2M U59 ( .A(N14), .B(edge_counter[3]), .Y(n30) );
  NOR4X1M U60 ( .A(n33), .B(n32), .C(n31), .D(n30), .Y(N17) );
  OR3X1M U61 ( .A(N17), .B(n37), .C(n38), .Y(sampling_tick) );
  NOR4X1M U62 ( .A(n39), .B(n40), .C(n41), .D(n42), .Y(n38) );
  CLKXOR2X2M U63 ( .A(edge_counter[5]), .B(N23), .Y(n42) );
  CLKXOR2X2M U64 ( .A(edge_counter[3]), .B(N21), .Y(n41) );
  CLKXOR2X2M U65 ( .A(edge_counter[2]), .B(N20), .Y(n40) );
  NAND3X1M U66 ( .A(n43), .B(n44), .C(n45), .Y(n39) );
  XNOR2X1M U67 ( .A(edge_counter[0]), .B(N11), .Y(n45) );
  XNOR2X1M U68 ( .A(edge_counter[1]), .B(N19), .Y(n44) );
  XNOR2X1M U69 ( .A(edge_counter[4]), .B(N22), .Y(n43) );
  NOR4X1M U70 ( .A(n46), .B(n47), .C(edge_counter[5]), .D(n48), .Y(n37) );
  CLKXOR2X2M U71 ( .A(n65), .B(edge_counter[0]), .Y(n48) );
  CLKXOR2X2M U72 ( .A(prescale[5]), .B(edge_counter[4]), .Y(n47) );
  NAND3X1M U73 ( .A(n49), .B(n50), .C(n51), .Y(n46) );
  XNOR2X1M U74 ( .A(edge_counter[2]), .B(prescale[3]), .Y(n51) );
  XNOR2X1M U75 ( .A(edge_counter[3]), .B(prescale[4]), .Y(n50) );
  XNOR2X1M U76 ( .A(edge_counter[1]), .B(prescale[2]), .Y(n49) );
  CLKXOR2X2M U77 ( .A(n52), .B(data_bit_counter[0]), .Y(n36) );
  CLKINVX1M U78 ( .A(n53), .Y(n35) );
  AOI32X1M U79 ( .A0(n54), .A1(data_bit_counter[0]), .A2(data_bit_counter[1]), 
        .B0(n55), .B1(data_bit_counter[2]), .Y(n53) );
  CLKNAND2X2M U80 ( .A(n56), .B(n57), .Y(n55) );
  MXI2X1M U81 ( .A(n58), .B(n57), .S0(data_bit_counter[1]), .Y(n34) );
  AND2X1M U82 ( .A(data_bit_counter[0]), .B(n52), .Y(n57) );
  OAI21X1M U83 ( .A0(n59), .A1(n60), .B0(n56), .Y(n52) );
  CLKNAND2X2M U84 ( .A(n54), .B(data_bit_counter[0]), .Y(n58) );
  CLKINVX1M U85 ( .A(n56), .Y(n54) );
  NAND4X1M U86 ( .A(deserializer_enable), .B(counter_enable), .C(
        edge_done_tick), .D(n59), .Y(n56) );
  CLKINVX1M U87 ( .A(n59), .Y(data_done_tick) );
  NAND3X1M U88 ( .A(data_bit_counter[1]), .B(data_bit_counter[0]), .C(
        data_bit_counter[2]), .Y(n59) );
  NOR2BX1M U89 ( .AN(N34), .B(n61), .Y(N40) );
  NOR2BX1M U90 ( .AN(N33), .B(n61), .Y(N39) );
  NOR2BX1M U91 ( .AN(N32), .B(n61), .Y(N38) );
  NOR2BX1M U92 ( .AN(N31), .B(n61), .Y(N37) );
  NOR2BX1M U93 ( .AN(N30), .B(n61), .Y(N36) );
  NOR2BX1M U94 ( .AN(N29), .B(n61), .Y(N35) );
  CLKNAND2X2M U95 ( .A(counter_enable), .B(n60), .Y(n61) );
  CLKINVX1M U96 ( .A(edge_done_tick), .Y(n60) );
  INVXLM U97 ( .A(prescale[1]), .Y(n64) );
  INVXLM U98 ( .A(n64), .Y(n65) );
endmodule


module fsm_test_1 ( rx_clk, rst_n, rx_in, parity_enable, edge_done_tick, 
        data_done_tick, parity_error, start_glitch, stop_error, 
        deserializer_enable, data_sampler_enable, parity_check_enable, 
        start_check_enable, stop_check_enable, counter_enable, data_valid, 
        test_si, test_so, test_se );
  input rx_clk, rst_n, rx_in, parity_enable, edge_done_tick, data_done_tick,
         parity_error, start_glitch, stop_error, test_si, test_se;
  output deserializer_enable, data_sampler_enable, parity_check_enable,
         start_check_enable, stop_check_enable, counter_enable, data_valid,
         test_so;
  wire   n12, n13, n14, n15, n16, n17, n18, n19, n20, n21, n22, n4, n5, n6, n7,
         n8, n9, n10, n11;
  wire   [2:0] current_state;
  wire   [2:0] next_state;
  assign test_so = n7;

  SDFFRQX2M \current_state_reg[2]  ( .D(next_state[2]), .SI(n9), .SE(test_se), 
        .CK(rx_clk), .RN(rst_n), .Q(current_state[2]) );
  SDFFRQX2M \current_state_reg[1]  ( .D(next_state[1]), .SI(current_state[0]), 
        .SE(test_se), .CK(rx_clk), .RN(rst_n), .Q(current_state[1]) );
  SDFFRQX2M \current_state_reg[0]  ( .D(next_state[0]), .SI(test_si), .SE(
        test_se), .CK(rx_clk), .RN(rst_n), .Q(current_state[0]) );
  NOR4XLM U6 ( .A(stop_error), .B(parity_error), .C(n5), .D(n15), .Y(
        data_valid) );
  NAND2X2M U7 ( .A(edge_done_tick), .B(n7), .Y(n13) );
  OAI21X2M U8 ( .A0(start_glitch), .A1(n5), .B0(n14), .Y(n21) );
  INVX2M U9 ( .A(edge_done_tick), .Y(n10) );
  NOR2X2M U10 ( .A(n13), .B(n14), .Y(parity_check_enable) );
  OAI32X1M U11 ( .A0(n9), .A1(current_state[2]), .A2(n17), .B0(start_glitch), 
        .B1(n4), .Y(next_state[1]) );
  NOR2X2M U12 ( .A(n18), .B(n10), .Y(n17) );
  INVX2M U13 ( .A(start_check_enable), .Y(n4) );
  AOI21X2M U14 ( .A0(data_done_tick), .A1(n11), .B0(current_state[0]), .Y(n18)
         );
  NOR3X2M U15 ( .A(n13), .B(current_state[0]), .C(n9), .Y(deserializer_enable)
         );
  NOR3X2M U16 ( .A(n13), .B(current_state[1]), .C(n5), .Y(start_check_enable)
         );
  OAI211X2M U17 ( .A0(rx_in), .A1(counter_enable), .B0(n19), .C0(n20), .Y(
        next_state[0]) );
  NAND3X2M U18 ( .A(deserializer_enable), .B(data_done_tick), .C(parity_enable), .Y(n19) );
  AOI33XLM U19 ( .A0(edge_done_tick), .A1(n5), .A2(n8), .B0(n7), .B1(n10), 
        .B2(n21), .Y(n20) );
  INVX2M U20 ( .A(n15), .Y(n8) );
  OAI22X1M U21 ( .A0(current_state[0]), .A1(n15), .B0(n16), .B1(n13), .Y(
        next_state[2]) );
  AOI31X2M U22 ( .A0(current_state[1]), .A1(n11), .A2(data_done_tick), .B0(n6), 
        .Y(n16) );
  INVX2M U23 ( .A(n14), .Y(n6) );
  NOR3BX2M U24 ( .AN(n12), .B(n10), .C(n7), .Y(stop_check_enable) );
  INVX2M U25 ( .A(current_state[0]), .Y(n5) );
  NAND2X2M U26 ( .A(n12), .B(n7), .Y(data_sampler_enable) );
  INVX2M U27 ( .A(current_state[1]), .Y(n9) );
  INVX2M U28 ( .A(current_state[2]), .Y(n7) );
  NAND2X2M U29 ( .A(n22), .B(n9), .Y(counter_enable) );
  CLKXOR2X2M U30 ( .A(n7), .B(current_state[0]), .Y(n22) );
  NAND2X2M U31 ( .A(current_state[1]), .B(current_state[0]), .Y(n14) );
  NAND2X2M U32 ( .A(current_state[2]), .B(n9), .Y(n15) );
  NOR2X2M U33 ( .A(current_state[0]), .B(current_state[1]), .Y(n12) );
  INVX2M U34 ( .A(parity_enable), .Y(n11) );
endmodule


module deserializer_test_1 ( sampled_bit, rx_clk, rst_n, deserializer_enable, 
        p_data, test_si, test_so, test_se );
  output [7:0] p_data;
  input sampled_bit, rx_clk, rst_n, deserializer_enable, test_si, test_se;
  output test_so;
  wire   n10, n12, n14, n16, n18, n20, n22, n24, n1, n2, n3, n4, n5, n6, n7,
         n8, n25;
  assign test_so = n2;

  SDFFRQX2M \p_data_reg[0]  ( .D(n10), .SI(test_si), .SE(test_se), .CK(rx_clk), 
        .RN(rst_n), .Q(p_data[0]) );
  SDFFRQX2M \p_data_reg[7]  ( .D(n24), .SI(n3), .SE(test_se), .CK(rx_clk), 
        .RN(rst_n), .Q(p_data[7]) );
  SDFFRQX2M \p_data_reg[3]  ( .D(n16), .SI(n7), .SE(test_se), .CK(rx_clk), 
        .RN(rst_n), .Q(p_data[3]) );
  SDFFRQX2M \p_data_reg[6]  ( .D(n22), .SI(n4), .SE(test_se), .CK(rx_clk), 
        .RN(rst_n), .Q(p_data[6]) );
  SDFFRQX2M \p_data_reg[5]  ( .D(n20), .SI(n5), .SE(test_se), .CK(rx_clk), 
        .RN(rst_n), .Q(p_data[5]) );
  SDFFRQX2M \p_data_reg[2]  ( .D(n14), .SI(n8), .SE(test_se), .CK(rx_clk), 
        .RN(rst_n), .Q(p_data[2]) );
  SDFFRQX2M \p_data_reg[4]  ( .D(n18), .SI(n6), .SE(test_se), .CK(rx_clk), 
        .RN(rst_n), .Q(p_data[4]) );
  SDFFRQX2M \p_data_reg[1]  ( .D(n12), .SI(p_data[0]), .SE(test_se), .CK(
        rx_clk), .RN(rst_n), .Q(p_data[1]) );
  INVX2M U2 ( .A(n1), .Y(n25) );
  BUFX2M U3 ( .A(deserializer_enable), .Y(n1) );
  OAI22X1M U4 ( .A0(n25), .A1(n7), .B0(n1), .B1(n8), .Y(n12) );
  OAI22X1M U5 ( .A0(n25), .A1(n6), .B0(n1), .B1(n7), .Y(n14) );
  OAI22X1M U6 ( .A0(n25), .A1(n5), .B0(n1), .B1(n6), .Y(n16) );
  OAI22X1M U7 ( .A0(n25), .A1(n4), .B0(n1), .B1(n5), .Y(n18) );
  OAI22X1M U8 ( .A0(n25), .A1(n3), .B0(n1), .B1(n4), .Y(n20) );
  OAI22X1M U9 ( .A0(n25), .A1(n2), .B0(n1), .B1(n3), .Y(n22) );
  OAI2BB2X1M U10 ( .B0(n25), .B1(n8), .A0N(p_data[0]), .A1N(n25), .Y(n10) );
  OAI2BB2X1M U11 ( .B0(n1), .B1(n2), .A0N(sampled_bit), .A1N(n1), .Y(n24) );
  INVX2M U12 ( .A(p_data[1]), .Y(n8) );
  INVX2M U13 ( .A(p_data[4]), .Y(n5) );
  INVX2M U14 ( .A(p_data[2]), .Y(n7) );
  INVX2M U15 ( .A(p_data[5]), .Y(n4) );
  INVX2M U16 ( .A(p_data[6]), .Y(n3) );
  INVX2M U17 ( .A(p_data[3]), .Y(n6) );
  INVX2M U26 ( .A(p_data[7]), .Y(n2) );
endmodule


module parity_check_test_1 ( parity_check_enable, parity_type, rx_clk, rst_n, 
        sampled_bit, p_data, parity_error, test_si, test_se );
  input [7:0] p_data;
  input parity_check_enable, parity_type, rx_clk, rst_n, sampled_bit, test_si,
         test_se;
  output parity_error;
  wire   n11, n1, n3, n4, n5, n6, n7, n9, n10, n2;

  OAI2BB2X1M U4 ( .B0(n1), .B1(n10), .A0N(parity_error), .A1N(n10), .Y(n9) );
  XOR3XLM U5 ( .A(n3), .B(n4), .C(n5), .Y(n1) );
  INVX2M U6 ( .A(parity_check_enable), .Y(n10) );
  XNOR2X2M U7 ( .A(p_data[2]), .B(p_data[1]), .Y(n5) );
  XOR3XLM U8 ( .A(p_data[7]), .B(p_data[6]), .C(n6), .Y(n4) );
  XNOR2X2M U9 ( .A(sampled_bit), .B(parity_type), .Y(n6) );
  XOR3XLM U10 ( .A(p_data[3]), .B(p_data[0]), .C(n7), .Y(n3) );
  XNOR2X2M U12 ( .A(p_data[5]), .B(p_data[4]), .Y(n7) );
  SDFFRX1M parity_error_reg ( .D(n9), .SI(test_si), .SE(test_se), .CK(rx_clk), 
        .RN(rst_n), .Q(n11) );
  INVXLM U3 ( .A(n11), .Y(n2) );
  INVX8M U11 ( .A(n2), .Y(parity_error) );
endmodule


module start_check ( start_check_enable, sampled_bit, start_glitch );
  input start_check_enable, sampled_bit;
  output start_glitch;


  AND2X8M U3 ( .A(start_check_enable), .B(sampled_bit), .Y(start_glitch) );
endmodule


module stop_check_test_1 ( stop_check_enable, rx_clk, rst_n, sampled_bit, 
        stop_error, test_si, test_se );
  input stop_check_enable, rx_clk, rst_n, sampled_bit, test_si, test_se;
  output stop_error;
  wire   n5, n3, n4, n7, n8, n1;

  OAI2BB2X1M U4 ( .B0(sampled_bit), .B1(n4), .A0N(n8), .A1N(n4), .Y(n3) );
  INVX2M U6 ( .A(stop_check_enable), .Y(n4) );
  INVXLM U8 ( .A(n7), .Y(n8) );
  SDFFRX1M stop_error_reg ( .D(n3), .SI(test_si), .SE(test_se), .CK(rx_clk), 
        .RN(rst_n), .Q(n5), .QN(n7) );
  INVXLM U3 ( .A(n5), .Y(n1) );
  INVX8M U5 ( .A(n1), .Y(stop_error) );
endmodule


module RX_TOP_MODULE_test_1 ( rx_in, prescale, parity_enable, parity_type, 
        rx_clk, rst_n, p_data, stop_error, parity_error, start_glitch, 
        data_valid, test_si2, test_si1, test_se );
  input [5:0] prescale;
  output [7:0] p_data;
  input rx_in, parity_enable, parity_type, rx_clk, rst_n, test_si2, test_si1,
         test_se;
  output stop_error, parity_error, start_glitch, data_valid;
  wire   data_sampler_enable, sampling_tick, sampled_bit, counter_enable,
         deserializer_enable, edge_done_tick, data_done_tick,
         parity_check_enable, start_check_enable, stop_check_enable, n1, n2,
         n3, n4, n5, n6, n10, n11;

  INVX2M U1 ( .A(n2), .Y(n1) );
  INVX2M U2 ( .A(rst_n), .Y(n2) );
  INVXLM U3 ( .A(stop_error), .Y(n10) );
  INVXLM U4 ( .A(n10), .Y(n11) );
  data_sampler_test_1 dut0 ( .rx_clk(rx_clk), .rst_n(n1), 
        .data_sampler_enable(data_sampler_enable), .sampling_tick(
        sampling_tick), .rx_in(rx_in), .sampled_bit(sampled_bit), .test_si(
        test_si1), .test_so(n6), .test_se(test_se) );
  edge_bit_counter_test_1 dut1 ( .rx_clk(rx_clk), .rst_n(n1), .prescale(
        prescale), .counter_enable(counter_enable), .deserializer_enable(
        deserializer_enable), .edge_done_tick(edge_done_tick), 
        .data_done_tick(data_done_tick), .sampling_tick(sampling_tick), 
        .test_si(n6), .test_so(n5), .test_se(test_se) );
  fsm_test_1 dut2 ( .rx_clk(rx_clk), .rst_n(n1), .rx_in(rx_in), 
        .parity_enable(parity_enable), .edge_done_tick(edge_done_tick), 
        .data_done_tick(data_done_tick), .parity_error(parity_error), 
        .start_glitch(start_glitch), .stop_error(n11), .deserializer_enable(
        deserializer_enable), .data_sampler_enable(data_sampler_enable), 
        .parity_check_enable(parity_check_enable), .start_check_enable(
        start_check_enable), .stop_check_enable(stop_check_enable), 
        .counter_enable(counter_enable), .data_valid(data_valid), .test_si(n5), 
        .test_so(n4), .test_se(test_se) );
  deserializer_test_1 dut3 ( .sampled_bit(sampled_bit), .rx_clk(rx_clk), 
        .rst_n(n1), .deserializer_enable(deserializer_enable), .p_data(p_data), 
        .test_si(n4), .test_so(n3), .test_se(test_se) );
  parity_check_test_1 dut4 ( .parity_check_enable(parity_check_enable), 
        .parity_type(parity_type), .rx_clk(rx_clk), .rst_n(n1), .sampled_bit(
        sampled_bit), .p_data(p_data), .parity_error(parity_error), .test_si(
        n3), .test_se(test_se) );
  start_check dut5 ( .start_check_enable(start_check_enable), .sampled_bit(
        sampled_bit), .start_glitch(start_glitch) );
  stop_check_test_1 dut6 ( .stop_check_enable(stop_check_enable), .rx_clk(
        rx_clk), .rst_n(n1), .sampled_bit(sampled_bit), .stop_error(stop_error), .test_si(test_si2), .test_se(test_se) );
endmodule


module RF_test_1 ( wren, rden, clk, rst, wrdata, address, rddata, rddata_valid, 
        reg0, reg1, reg2, reg3, test_si3, test_si2, test_si1, test_so2, 
        test_so1, test_se );
  input [7:0] wrdata;
  input [3:0] address;
  output [7:0] rddata;
  output [7:0] reg0;
  output [7:0] reg1;
  output [7:0] reg2;
  output [7:0] reg3;
  input wren, rden, clk, rst, test_si3, test_si2, test_si1, test_se;
  output rddata_valid, test_so2, test_so1;
  wire   N10, N11, N12, N13, \reg_file[4][7] , \reg_file[4][6] ,
         \reg_file[4][5] , \reg_file[4][4] , \reg_file[4][3] ,
         \reg_file[4][2] , \reg_file[4][1] , \reg_file[4][0] ,
         \reg_file[5][7] , \reg_file[5][6] , \reg_file[5][5] ,
         \reg_file[5][4] , \reg_file[5][3] , \reg_file[5][2] ,
         \reg_file[5][1] , \reg_file[5][0] , \reg_file[6][7] ,
         \reg_file[6][6] , \reg_file[6][5] , \reg_file[6][4] ,
         \reg_file[6][3] , \reg_file[6][2] , \reg_file[6][1] ,
         \reg_file[6][0] , \reg_file[7][7] , \reg_file[7][6] ,
         \reg_file[7][5] , \reg_file[7][4] , \reg_file[7][3] ,
         \reg_file[7][2] , \reg_file[7][1] , \reg_file[7][0] ,
         \reg_file[8][7] , \reg_file[8][6] , \reg_file[8][5] ,
         \reg_file[8][4] , \reg_file[8][3] , \reg_file[8][2] ,
         \reg_file[8][1] , \reg_file[8][0] , \reg_file[9][7] ,
         \reg_file[9][6] , \reg_file[9][5] , \reg_file[9][4] ,
         \reg_file[9][3] , \reg_file[9][2] , \reg_file[9][1] ,
         \reg_file[9][0] , \reg_file[10][7] , \reg_file[10][6] ,
         \reg_file[10][5] , \reg_file[10][4] , \reg_file[10][3] ,
         \reg_file[10][2] , \reg_file[10][1] , \reg_file[10][0] ,
         \reg_file[11][7] , \reg_file[11][6] , \reg_file[11][5] ,
         \reg_file[11][4] , \reg_file[11][3] , \reg_file[11][2] ,
         \reg_file[11][1] , \reg_file[11][0] , \reg_file[12][7] ,
         \reg_file[12][6] , \reg_file[12][5] , \reg_file[12][4] ,
         \reg_file[12][3] , \reg_file[12][2] , \reg_file[12][1] ,
         \reg_file[12][0] , \reg_file[13][7] , \reg_file[13][6] ,
         \reg_file[13][5] , \reg_file[13][4] , \reg_file[13][3] ,
         \reg_file[13][2] , \reg_file[13][1] , \reg_file[13][0] ,
         \reg_file[14][7] , \reg_file[14][6] , \reg_file[14][5] ,
         \reg_file[14][4] , \reg_file[14][3] , \reg_file[14][2] ,
         \reg_file[14][1] , \reg_file[14][0] , \reg_file[15][7] ,
         \reg_file[15][6] , \reg_file[15][5] , \reg_file[15][4] ,
         \reg_file[15][3] , \reg_file[15][2] , \reg_file[15][1] ,
         \reg_file[15][0] , N35, N36, N37, N38, N39, N40, N41, N42, n1, n2,
         n11, n12, n13, n14, n15, n16, n17, n18, n19, n20, n21, n22, n23, n24,
         n26, n27, n28, n29, n32, n33, n34, n35, n36, n37, n176, n177, n178,
         n179, n180, n181, n182, n183, n184, n185, n186, n187, n188, n189,
         n190, n191, n192, n193, n194, n195, n196, n197, n198, n199, n200,
         n201, n202, n203, n204, n205, n206, n207, n208, n209, n210, n211,
         n212, n213, n214, n215, n216, n217, n218, n219, n220, n221, n222,
         n223, n224, n225, n226, n227, n228, n229, n230, n231, n232, n233,
         n234, n235, n236, n237, n238, n239, n240, n241, n242, n243, n244,
         n245, n246, n247, n248, n249, n250, n251, n252, n253, n254, n255,
         n256, n257, n258, n259, n260, n261, n262, n263, n264, n265, n266,
         n267, n268, n269, n270, n271, n272, n273, n274, n275, n276, n277,
         n278, n279, n280, n281, n282, n283, n284, n285, n286, n287, n288,
         n289, n290, n291, n292, n293, n294, n295, n296, n297, n298, n299,
         n300, n301, n302, n303, n304, n305, n306, n307, n308, n309, n310,
         n311, n312, n4, n5, n6, n7, n8, n9, n10, n25, n30, n31, n38, n313,
         n314, n315, n316, n317, n318, n319, n320, n321, n322, n323, n324,
         n325, n326, n327, n328, n329, n330, n331, n332, n333, n334, n335,
         n336, n337, n338, n339, n340, n341, n342, n343, n344, n345, n346,
         n347, n348, n349, n350, n351, n352, n353, n354, n355, n356, n357,
         n358, n359, n360, n361, n362, n363, n364, n365, n366, n367, n368,
         n369, n370, n371, n372, n377, n378, n379, n380, n381, n382, n383,
         n384;
  assign N10 = address[0];
  assign N11 = address[1];
  assign N12 = address[2];
  assign N13 = address[3];
  assign test_so1 = \reg_file[12][5] ;
  assign test_so2 = \reg_file[15][7] ;

  SDFFRQX2M \rddata_reg[7]  ( .D(n312), .SI(rddata[6]), .SE(n379), .CK(clk), 
        .RN(n357), .Q(rddata[7]) );
  SDFFRQX2M \rddata_reg[6]  ( .D(n311), .SI(rddata[5]), .SE(n378), .CK(clk), 
        .RN(n357), .Q(rddata[6]) );
  SDFFRQX2M \rddata_reg[5]  ( .D(n310), .SI(rddata[4]), .SE(n377), .CK(clk), 
        .RN(n357), .Q(rddata[5]) );
  SDFFRQX2M \rddata_reg[4]  ( .D(n309), .SI(rddata[3]), .SE(n380), .CK(clk), 
        .RN(n357), .Q(rddata[4]) );
  SDFFRQX2M \rddata_reg[3]  ( .D(n308), .SI(rddata[2]), .SE(n379), .CK(clk), 
        .RN(n357), .Q(rddata[3]) );
  SDFFRQX2M \rddata_reg[2]  ( .D(n307), .SI(rddata[1]), .SE(n378), .CK(clk), 
        .RN(n357), .Q(rddata[2]) );
  SDFFRQX2M \rddata_reg[1]  ( .D(n306), .SI(rddata[0]), .SE(n377), .CK(clk), 
        .RN(n357), .Q(rddata[1]) );
  SDFFRQX2M \rddata_reg[0]  ( .D(n305), .SI(test_si1), .SE(n380), .CK(clk), 
        .RN(n357), .Q(rddata[0]) );
  SDFFRQX2M \reg_file_reg[5][7]  ( .D(n264), .SI(\reg_file[5][6] ), .SE(n379), 
        .CK(clk), .RN(n354), .Q(\reg_file[5][7] ) );
  SDFFRQX2M \reg_file_reg[5][6]  ( .D(n263), .SI(\reg_file[5][5] ), .SE(n378), 
        .CK(clk), .RN(n354), .Q(\reg_file[5][6] ) );
  SDFFRQX2M \reg_file_reg[5][5]  ( .D(n262), .SI(\reg_file[5][4] ), .SE(n377), 
        .CK(clk), .RN(n354), .Q(\reg_file[5][5] ) );
  SDFFRQX2M \reg_file_reg[5][4]  ( .D(n261), .SI(\reg_file[5][3] ), .SE(n380), 
        .CK(clk), .RN(n354), .Q(\reg_file[5][4] ) );
  SDFFRQX2M \reg_file_reg[5][3]  ( .D(n260), .SI(\reg_file[5][2] ), .SE(n379), 
        .CK(clk), .RN(n354), .Q(\reg_file[5][3] ) );
  SDFFRQX2M \reg_file_reg[5][2]  ( .D(n259), .SI(\reg_file[5][1] ), .SE(n378), 
        .CK(clk), .RN(n354), .Q(\reg_file[5][2] ) );
  SDFFRQX2M \reg_file_reg[5][1]  ( .D(n258), .SI(\reg_file[5][0] ), .SE(n377), 
        .CK(clk), .RN(n354), .Q(\reg_file[5][1] ) );
  SDFFRQX2M \reg_file_reg[5][0]  ( .D(n257), .SI(\reg_file[4][7] ), .SE(n380), 
        .CK(clk), .RN(n354), .Q(\reg_file[5][0] ) );
  SDFFRQX2M \reg_file_reg[9][7]  ( .D(n232), .SI(\reg_file[9][6] ), .SE(n379), 
        .CK(clk), .RN(n352), .Q(\reg_file[9][7] ) );
  SDFFRQX2M \reg_file_reg[9][6]  ( .D(n231), .SI(\reg_file[9][5] ), .SE(n378), 
        .CK(clk), .RN(n352), .Q(\reg_file[9][6] ) );
  SDFFRQX2M \reg_file_reg[9][5]  ( .D(n230), .SI(\reg_file[9][4] ), .SE(n377), 
        .CK(clk), .RN(n352), .Q(\reg_file[9][5] ) );
  SDFFRQX2M \reg_file_reg[9][4]  ( .D(n229), .SI(\reg_file[9][3] ), .SE(n380), 
        .CK(clk), .RN(n352), .Q(\reg_file[9][4] ) );
  SDFFRQX2M \reg_file_reg[9][3]  ( .D(n228), .SI(\reg_file[9][2] ), .SE(n379), 
        .CK(clk), .RN(n351), .Q(\reg_file[9][3] ) );
  SDFFRQX2M \reg_file_reg[9][2]  ( .D(n227), .SI(\reg_file[9][1] ), .SE(n378), 
        .CK(clk), .RN(n351), .Q(\reg_file[9][2] ) );
  SDFFRQX2M \reg_file_reg[9][1]  ( .D(n226), .SI(\reg_file[9][0] ), .SE(n377), 
        .CK(clk), .RN(n351), .Q(\reg_file[9][1] ) );
  SDFFRQX2M \reg_file_reg[9][0]  ( .D(n225), .SI(\reg_file[8][7] ), .SE(n380), 
        .CK(clk), .RN(n351), .Q(\reg_file[9][0] ) );
  SDFFRQX2M \reg_file_reg[13][7]  ( .D(n200), .SI(\reg_file[13][6] ), .SE(n379), .CK(clk), .RN(n350), .Q(\reg_file[13][7] ) );
  SDFFRQX2M \reg_file_reg[13][6]  ( .D(n199), .SI(\reg_file[13][5] ), .SE(n378), .CK(clk), .RN(n349), .Q(\reg_file[13][6] ) );
  SDFFRQX2M \reg_file_reg[13][5]  ( .D(n198), .SI(\reg_file[13][4] ), .SE(n377), .CK(clk), .RN(n349), .Q(\reg_file[13][5] ) );
  SDFFRQX2M \reg_file_reg[13][4]  ( .D(n197), .SI(\reg_file[13][3] ), .SE(n380), .CK(clk), .RN(n349), .Q(\reg_file[13][4] ) );
  SDFFRQX2M \reg_file_reg[13][3]  ( .D(n196), .SI(\reg_file[13][2] ), .SE(n379), .CK(clk), .RN(n349), .Q(\reg_file[13][3] ) );
  SDFFRQX2M \reg_file_reg[13][2]  ( .D(n195), .SI(\reg_file[13][1] ), .SE(n378), .CK(clk), .RN(n349), .Q(\reg_file[13][2] ) );
  SDFFRQX2M \reg_file_reg[13][1]  ( .D(n194), .SI(\reg_file[13][0] ), .SE(n377), .CK(clk), .RN(n349), .Q(\reg_file[13][1] ) );
  SDFFRQX2M \reg_file_reg[13][0]  ( .D(n193), .SI(\reg_file[12][7] ), .SE(n380), .CK(clk), .RN(n349), .Q(\reg_file[13][0] ) );
  SDFFRQX2M \reg_file_reg[7][7]  ( .D(n248), .SI(\reg_file[7][6] ), .SE(n379), 
        .CK(clk), .RN(n353), .Q(\reg_file[7][7] ) );
  SDFFRQX2M \reg_file_reg[7][6]  ( .D(n247), .SI(\reg_file[7][5] ), .SE(n378), 
        .CK(clk), .RN(n353), .Q(\reg_file[7][6] ) );
  SDFFRQX2M \reg_file_reg[7][5]  ( .D(n246), .SI(\reg_file[7][4] ), .SE(n377), 
        .CK(clk), .RN(n353), .Q(\reg_file[7][5] ) );
  SDFFRQX2M \reg_file_reg[7][4]  ( .D(n245), .SI(\reg_file[7][3] ), .SE(n380), 
        .CK(clk), .RN(n353), .Q(\reg_file[7][4] ) );
  SDFFRQX2M \reg_file_reg[7][3]  ( .D(n244), .SI(\reg_file[7][2] ), .SE(n379), 
        .CK(clk), .RN(n353), .Q(\reg_file[7][3] ) );
  SDFFRQX2M \reg_file_reg[7][2]  ( .D(n243), .SI(\reg_file[7][1] ), .SE(n378), 
        .CK(clk), .RN(n353), .Q(\reg_file[7][2] ) );
  SDFFRQX2M \reg_file_reg[7][1]  ( .D(n242), .SI(\reg_file[7][0] ), .SE(n377), 
        .CK(clk), .RN(n352), .Q(\reg_file[7][1] ) );
  SDFFRQX2M \reg_file_reg[7][0]  ( .D(n241), .SI(\reg_file[6][7] ), .SE(n380), 
        .CK(clk), .RN(n352), .Q(\reg_file[7][0] ) );
  SDFFRQX2M \reg_file_reg[11][7]  ( .D(n216), .SI(\reg_file[11][6] ), .SE(n379), .CK(clk), .RN(n351), .Q(\reg_file[11][7] ) );
  SDFFRQX2M \reg_file_reg[11][6]  ( .D(n215), .SI(\reg_file[11][5] ), .SE(n378), .CK(clk), .RN(n351), .Q(\reg_file[11][6] ) );
  SDFFRQX2M \reg_file_reg[11][5]  ( .D(n214), .SI(\reg_file[11][4] ), .SE(n377), .CK(clk), .RN(n350), .Q(\reg_file[11][5] ) );
  SDFFRQX2M \reg_file_reg[11][4]  ( .D(n213), .SI(\reg_file[11][3] ), .SE(n380), .CK(clk), .RN(n350), .Q(\reg_file[11][4] ) );
  SDFFRQX2M \reg_file_reg[11][3]  ( .D(n212), .SI(\reg_file[11][2] ), .SE(n379), .CK(clk), .RN(n350), .Q(\reg_file[11][3] ) );
  SDFFRQX2M \reg_file_reg[11][2]  ( .D(n211), .SI(\reg_file[11][1] ), .SE(n378), .CK(clk), .RN(n350), .Q(\reg_file[11][2] ) );
  SDFFRQX2M \reg_file_reg[11][1]  ( .D(n210), .SI(\reg_file[11][0] ), .SE(n377), .CK(clk), .RN(n350), .Q(\reg_file[11][1] ) );
  SDFFRQX2M \reg_file_reg[11][0]  ( .D(n209), .SI(\reg_file[10][7] ), .SE(n380), .CK(clk), .RN(n350), .Q(\reg_file[11][0] ) );
  SDFFRQX2M \reg_file_reg[15][7]  ( .D(n184), .SI(\reg_file[15][6] ), .SE(n379), .CK(clk), .RN(n348), .Q(\reg_file[15][7] ) );
  SDFFRQX2M \reg_file_reg[15][6]  ( .D(n183), .SI(\reg_file[15][5] ), .SE(n378), .CK(clk), .RN(n348), .Q(\reg_file[15][6] ) );
  SDFFRQX2M \reg_file_reg[15][5]  ( .D(n182), .SI(\reg_file[15][4] ), .SE(n377), .CK(clk), .RN(n348), .Q(\reg_file[15][5] ) );
  SDFFRQX2M \reg_file_reg[15][4]  ( .D(n181), .SI(\reg_file[15][3] ), .SE(n380), .CK(clk), .RN(n348), .Q(\reg_file[15][4] ) );
  SDFFRQX2M \reg_file_reg[15][3]  ( .D(n180), .SI(\reg_file[15][2] ), .SE(n379), .CK(clk), .RN(n348), .Q(\reg_file[15][3] ) );
  SDFFRQX2M \reg_file_reg[15][2]  ( .D(n179), .SI(\reg_file[15][1] ), .SE(n378), .CK(clk), .RN(n348), .Q(\reg_file[15][2] ) );
  SDFFRQX2M \reg_file_reg[15][1]  ( .D(n178), .SI(\reg_file[15][0] ), .SE(n377), .CK(clk), .RN(n348), .Q(\reg_file[15][1] ) );
  SDFFRQX2M \reg_file_reg[15][0]  ( .D(n177), .SI(\reg_file[14][7] ), .SE(n380), .CK(clk), .RN(n353), .Q(\reg_file[15][0] ) );
  SDFFRQX2M \reg_file_reg[6][7]  ( .D(n256), .SI(\reg_file[6][6] ), .SE(n379), 
        .CK(clk), .RN(n354), .Q(\reg_file[6][7] ) );
  SDFFRQX2M \reg_file_reg[6][6]  ( .D(n255), .SI(\reg_file[6][5] ), .SE(n378), 
        .CK(clk), .RN(n353), .Q(\reg_file[6][6] ) );
  SDFFRQX2M \reg_file_reg[6][5]  ( .D(n254), .SI(\reg_file[6][4] ), .SE(n377), 
        .CK(clk), .RN(n353), .Q(\reg_file[6][5] ) );
  SDFFRQX2M \reg_file_reg[6][4]  ( .D(n253), .SI(\reg_file[6][3] ), .SE(n380), 
        .CK(clk), .RN(n353), .Q(\reg_file[6][4] ) );
  SDFFRQX2M \reg_file_reg[6][3]  ( .D(n252), .SI(\reg_file[6][2] ), .SE(n379), 
        .CK(clk), .RN(n353), .Q(\reg_file[6][3] ) );
  SDFFRQX2M \reg_file_reg[6][2]  ( .D(n251), .SI(\reg_file[6][1] ), .SE(n378), 
        .CK(clk), .RN(n353), .Q(\reg_file[6][2] ) );
  SDFFRQX2M \reg_file_reg[6][1]  ( .D(n250), .SI(\reg_file[6][0] ), .SE(n377), 
        .CK(clk), .RN(n353), .Q(\reg_file[6][1] ) );
  SDFFRQX2M \reg_file_reg[6][0]  ( .D(n249), .SI(\reg_file[5][7] ), .SE(n380), 
        .CK(clk), .RN(n353), .Q(\reg_file[6][0] ) );
  SDFFRQX2M \reg_file_reg[10][7]  ( .D(n224), .SI(\reg_file[10][6] ), .SE(n379), .CK(clk), .RN(n351), .Q(\reg_file[10][7] ) );
  SDFFRQX2M \reg_file_reg[10][6]  ( .D(n223), .SI(\reg_file[10][5] ), .SE(n378), .CK(clk), .RN(n351), .Q(\reg_file[10][6] ) );
  SDFFRQX2M \reg_file_reg[10][5]  ( .D(n222), .SI(\reg_file[10][4] ), .SE(n377), .CK(clk), .RN(n351), .Q(\reg_file[10][5] ) );
  SDFFRQX2M \reg_file_reg[10][4]  ( .D(n221), .SI(\reg_file[10][3] ), .SE(n380), .CK(clk), .RN(n351), .Q(\reg_file[10][4] ) );
  SDFFRQX2M \reg_file_reg[10][3]  ( .D(n220), .SI(\reg_file[10][2] ), .SE(n379), .CK(clk), .RN(n351), .Q(\reg_file[10][3] ) );
  SDFFRQX2M \reg_file_reg[10][2]  ( .D(n219), .SI(\reg_file[10][1] ), .SE(n378), .CK(clk), .RN(n351), .Q(\reg_file[10][2] ) );
  SDFFRQX2M \reg_file_reg[10][1]  ( .D(n218), .SI(\reg_file[10][0] ), .SE(n377), .CK(clk), .RN(n351), .Q(\reg_file[10][1] ) );
  SDFFRQX2M \reg_file_reg[10][0]  ( .D(n217), .SI(\reg_file[9][7] ), .SE(n380), 
        .CK(clk), .RN(n351), .Q(\reg_file[10][0] ) );
  SDFFRQX2M \reg_file_reg[14][7]  ( .D(n192), .SI(\reg_file[14][6] ), .SE(n379), .CK(clk), .RN(n349), .Q(\reg_file[14][7] ) );
  SDFFRQX2M \reg_file_reg[14][6]  ( .D(n191), .SI(\reg_file[14][5] ), .SE(n378), .CK(clk), .RN(n349), .Q(\reg_file[14][6] ) );
  SDFFRQX2M \reg_file_reg[14][5]  ( .D(n190), .SI(\reg_file[14][4] ), .SE(n377), .CK(clk), .RN(n349), .Q(\reg_file[14][5] ) );
  SDFFRQX2M \reg_file_reg[14][4]  ( .D(n189), .SI(\reg_file[14][3] ), .SE(n380), .CK(clk), .RN(n349), .Q(\reg_file[14][4] ) );
  SDFFRQX2M \reg_file_reg[14][3]  ( .D(n188), .SI(\reg_file[14][2] ), .SE(n379), .CK(clk), .RN(n349), .Q(\reg_file[14][3] ) );
  SDFFRQX2M \reg_file_reg[14][2]  ( .D(n187), .SI(\reg_file[14][1] ), .SE(n378), .CK(clk), .RN(n348), .Q(\reg_file[14][2] ) );
  SDFFRQX2M \reg_file_reg[14][1]  ( .D(n186), .SI(\reg_file[14][0] ), .SE(n377), .CK(clk), .RN(n349), .Q(\reg_file[14][1] ) );
  SDFFRQX2M \reg_file_reg[14][0]  ( .D(n185), .SI(\reg_file[13][7] ), .SE(n380), .CK(clk), .RN(n348), .Q(\reg_file[14][0] ) );
  SDFFRQX2M \reg_file_reg[4][7]  ( .D(n272), .SI(\reg_file[4][6] ), .SE(n379), 
        .CK(clk), .RN(n355), .Q(\reg_file[4][7] ) );
  SDFFRQX2M \reg_file_reg[4][6]  ( .D(n271), .SI(\reg_file[4][5] ), .SE(n378), 
        .CK(clk), .RN(n355), .Q(\reg_file[4][6] ) );
  SDFFRQX2M \reg_file_reg[4][5]  ( .D(n270), .SI(\reg_file[4][4] ), .SE(n377), 
        .CK(clk), .RN(n355), .Q(\reg_file[4][5] ) );
  SDFFRQX2M \reg_file_reg[4][4]  ( .D(n269), .SI(\reg_file[4][3] ), .SE(n380), 
        .CK(clk), .RN(n354), .Q(\reg_file[4][4] ) );
  SDFFRQX2M \reg_file_reg[4][3]  ( .D(n268), .SI(\reg_file[4][2] ), .SE(n379), 
        .CK(clk), .RN(n354), .Q(\reg_file[4][3] ) );
  SDFFRQX2M \reg_file_reg[4][2]  ( .D(n267), .SI(\reg_file[4][1] ), .SE(n378), 
        .CK(clk), .RN(n354), .Q(\reg_file[4][2] ) );
  SDFFRQX2M \reg_file_reg[4][1]  ( .D(n266), .SI(\reg_file[4][0] ), .SE(n377), 
        .CK(clk), .RN(n354), .Q(\reg_file[4][1] ) );
  SDFFRQX2M \reg_file_reg[4][0]  ( .D(n265), .SI(reg3[7]), .SE(n380), .CK(clk), 
        .RN(n354), .Q(\reg_file[4][0] ) );
  SDFFRQX2M \reg_file_reg[8][7]  ( .D(n240), .SI(\reg_file[8][6] ), .SE(n379), 
        .CK(clk), .RN(n352), .Q(\reg_file[8][7] ) );
  SDFFRQX2M \reg_file_reg[8][6]  ( .D(n239), .SI(\reg_file[8][5] ), .SE(n378), 
        .CK(clk), .RN(n352), .Q(\reg_file[8][6] ) );
  SDFFRQX2M \reg_file_reg[8][5]  ( .D(n238), .SI(\reg_file[8][4] ), .SE(n377), 
        .CK(clk), .RN(n352), .Q(\reg_file[8][5] ) );
  SDFFRQX2M \reg_file_reg[8][4]  ( .D(n237), .SI(\reg_file[8][3] ), .SE(n380), 
        .CK(clk), .RN(n352), .Q(\reg_file[8][4] ) );
  SDFFRQX2M \reg_file_reg[8][3]  ( .D(n236), .SI(\reg_file[8][2] ), .SE(n379), 
        .CK(clk), .RN(n352), .Q(\reg_file[8][3] ) );
  SDFFRQX2M \reg_file_reg[8][2]  ( .D(n235), .SI(\reg_file[8][1] ), .SE(n378), 
        .CK(clk), .RN(n352), .Q(\reg_file[8][2] ) );
  SDFFRQX2M \reg_file_reg[8][1]  ( .D(n234), .SI(\reg_file[8][0] ), .SE(n377), 
        .CK(clk), .RN(n352), .Q(\reg_file[8][1] ) );
  SDFFRQX2M \reg_file_reg[8][0]  ( .D(n233), .SI(\reg_file[7][7] ), .SE(n380), 
        .CK(clk), .RN(n352), .Q(\reg_file[8][0] ) );
  SDFFRQX2M \reg_file_reg[12][7]  ( .D(n208), .SI(\reg_file[12][6] ), .SE(n379), .CK(clk), .RN(n350), .Q(\reg_file[12][7] ) );
  SDFFRQX2M \reg_file_reg[12][6]  ( .D(n207), .SI(test_si3), .SE(n378), .CK(
        clk), .RN(n350), .Q(\reg_file[12][6] ) );
  SDFFRQX2M \reg_file_reg[12][4]  ( .D(n205), .SI(\reg_file[12][3] ), .SE(n380), .CK(clk), .RN(n350), .Q(\reg_file[12][4] ) );
  SDFFRQX2M \reg_file_reg[12][3]  ( .D(n204), .SI(\reg_file[12][2] ), .SE(n379), .CK(clk), .RN(n350), .Q(\reg_file[12][3] ) );
  SDFFRQX2M \reg_file_reg[12][2]  ( .D(n203), .SI(\reg_file[12][1] ), .SE(n378), .CK(clk), .RN(n350), .Q(\reg_file[12][2] ) );
  SDFFRQX2M \reg_file_reg[12][1]  ( .D(n202), .SI(\reg_file[12][0] ), .SE(n377), .CK(clk), .RN(n350), .Q(\reg_file[12][1] ) );
  SDFFRQX2M \reg_file_reg[12][0]  ( .D(n201), .SI(\reg_file[11][7] ), .SE(n380), .CK(clk), .RN(n349), .Q(\reg_file[12][0] ) );
  SDFFRQX2M rddata_valid_reg ( .D(n176), .SI(rddata[7]), .SE(n379), .CK(clk), 
        .RN(n348), .Q(rddata_valid) );
  SDFFRQX2M \reg_file_reg[1][6]  ( .D(n295), .SI(reg1[5]), .SE(n378), .CK(clk), 
        .RN(n356), .Q(reg1[6]) );
  SDFFRQX2M \reg_file_reg[1][1]  ( .D(n290), .SI(reg1[0]), .SE(n377), .CK(clk), 
        .RN(n356), .Q(reg1[1]) );
  SDFFRQX2M \reg_file_reg[0][7]  ( .D(n304), .SI(reg0[6]), .SE(n380), .CK(clk), 
        .RN(n357), .Q(reg0[7]) );
  SDFFRQX2M \reg_file_reg[0][6]  ( .D(n303), .SI(reg0[5]), .SE(n379), .CK(clk), 
        .RN(n357), .Q(reg0[6]) );
  SDFFRQX2M \reg_file_reg[0][5]  ( .D(n302), .SI(reg0[4]), .SE(n378), .CK(clk), 
        .RN(n357), .Q(reg0[5]) );
  SDFFRQX2M \reg_file_reg[0][4]  ( .D(n301), .SI(reg0[3]), .SE(n377), .CK(clk), 
        .RN(n357), .Q(reg0[4]) );
  SDFFRQX2M \reg_file_reg[0][3]  ( .D(n300), .SI(reg0[2]), .SE(n380), .CK(clk), 
        .RN(n356), .Q(reg0[3]) );
  SDFFRQX2M \reg_file_reg[0][2]  ( .D(n299), .SI(reg0[1]), .SE(n379), .CK(clk), 
        .RN(n356), .Q(reg0[2]) );
  SDFFRQX2M \reg_file_reg[0][1]  ( .D(n298), .SI(reg0[0]), .SE(n378), .CK(clk), 
        .RN(n356), .Q(reg0[1]) );
  SDFFRQX2M \reg_file_reg[0][0]  ( .D(n297), .SI(rddata_valid), .SE(n377), 
        .CK(clk), .RN(n356), .Q(reg0[0]) );
  SDFFRQX2M \reg_file_reg[2][1]  ( .D(n282), .SI(reg2[0]), .SE(n380), .CK(clk), 
        .RN(n355), .Q(reg2[1]) );
  SDFFSQX2M \reg_file_reg[2][0]  ( .D(n281), .SI(reg1[7]), .SE(test_se), .CK(
        clk), .SN(n348), .Q(reg2[0]) );
  SDFFRQX2M \reg_file_reg[1][7]  ( .D(n296), .SI(reg1[6]), .SE(n379), .CK(clk), 
        .RN(n356), .Q(reg1[7]) );
  SDFFRQX2M \reg_file_reg[1][5]  ( .D(n294), .SI(reg1[4]), .SE(n378), .CK(clk), 
        .RN(n356), .Q(reg1[5]) );
  SDFFRQX2M \reg_file_reg[1][4]  ( .D(n293), .SI(reg1[3]), .SE(n377), .CK(clk), 
        .RN(n356), .Q(reg1[4]) );
  SDFFRQX2M \reg_file_reg[1][3]  ( .D(n292), .SI(reg1[2]), .SE(n380), .CK(clk), 
        .RN(n356), .Q(reg1[3]) );
  SDFFRQX2M \reg_file_reg[1][2]  ( .D(n291), .SI(reg1[1]), .SE(n379), .CK(clk), 
        .RN(n356), .Q(reg1[2]) );
  SDFFRQX2M \reg_file_reg[1][0]  ( .D(n289), .SI(reg0[7]), .SE(n378), .CK(clk), 
        .RN(n356), .Q(reg1[0]) );
  SDFFSQX2M \reg_file_reg[3][5]  ( .D(n278), .SI(reg3[4]), .SE(n377), .CK(clk), 
        .SN(n348), .Q(reg3[5]) );
  SDFFRQX2M \reg_file_reg[3][0]  ( .D(n273), .SI(reg2[7]), .SE(n377), .CK(clk), 
        .RN(n355), .Q(reg3[0]) );
  SDFFRQX2M \reg_file_reg[3][1]  ( .D(n274), .SI(reg3[0]), .SE(n380), .CK(clk), 
        .RN(n355), .Q(reg3[1]) );
  SDFFRQX2M \reg_file_reg[3][4]  ( .D(n277), .SI(reg3[3]), .SE(n379), .CK(clk), 
        .RN(n355), .Q(reg3[4]) );
  SDFFRQX2M \reg_file_reg[3][6]  ( .D(n279), .SI(reg3[5]), .SE(n378), .CK(clk), 
        .RN(n355), .Q(reg3[6]) );
  SDFFRQX2M \reg_file_reg[3][3]  ( .D(n276), .SI(reg3[2]), .SE(n377), .CK(clk), 
        .RN(n355), .Q(reg3[3]) );
  SDFFRQX2M \reg_file_reg[3][2]  ( .D(n275), .SI(reg3[1]), .SE(n380), .CK(clk), 
        .RN(n355), .Q(reg3[2]) );
  SDFFRQX2M \reg_file_reg[3][7]  ( .D(n280), .SI(reg3[6]), .SE(n379), .CK(clk), 
        .RN(n355), .Q(reg3[7]) );
  SDFFRQX2M \reg_file_reg[2][4]  ( .D(n285), .SI(test_si2), .SE(n378), .CK(clk), .RN(n355), .Q(reg2[4]) );
  SDFFRQX2M \reg_file_reg[2][2]  ( .D(n283), .SI(reg2[1]), .SE(n377), .CK(clk), 
        .RN(n355), .Q(reg2[2]) );
  SDFFRQX2M \reg_file_reg[2][5]  ( .D(n286), .SI(reg2[4]), .SE(n379), .CK(clk), 
        .RN(n356), .Q(reg2[5]) );
  SDFFRQX2M \reg_file_reg[2][6]  ( .D(n287), .SI(reg2[5]), .SE(n378), .CK(clk), 
        .RN(n356), .Q(reg2[6]) );
  SDFFSQX1M \reg_file_reg[2][7]  ( .D(n288), .SI(reg2[6]), .SE(n380), .CK(clk), 
        .SN(rst), .Q(reg2[7]) );
  AND3XLM U3 ( .A(n23), .B(n346), .C(N13), .Y(n14) );
  AND3XLM U4 ( .A(n23), .B(n345), .C(N13), .Y(n11) );
  MX4XLM U5 ( .A(n333), .B(n331), .C(n332), .D(n330), .S0(N13), .S1(N12), .Y(
        N35) );
  MX4XLM U6 ( .A(n329), .B(n327), .C(n328), .D(n326), .S0(N13), .S1(N12), .Y(
        N36) );
  MX4XLM U7 ( .A(n325), .B(n323), .C(n324), .D(n322), .S0(N13), .S1(N12), .Y(
        N37) );
  MX4XLM U8 ( .A(n321), .B(n319), .C(n320), .D(n318), .S0(N13), .S1(N12), .Y(
        N38) );
  NOR3BX2M U9 ( .AN(n23), .B(n345), .C(N13), .Y(n29) );
  NOR3BX2M U10 ( .AN(n23), .B(N13), .C(n346), .Y(n27) );
  NOR2X2M U12 ( .A(n372), .B(N11), .Y(n16) );
  NOR2X2M U13 ( .A(n372), .B(n347), .Y(n12) );
  NOR2X2M U14 ( .A(N12), .B(N11), .Y(n22) );
  NOR2X2M U15 ( .A(n347), .B(N12), .Y(n19) );
  INVX2M U16 ( .A(n346), .Y(n336) );
  INVX2M U17 ( .A(n334), .Y(n335) );
  BUFX2M U18 ( .A(n347), .Y(n334) );
  INVX2M U19 ( .A(n1), .Y(n363) );
  BUFX2M U20 ( .A(n362), .Y(n349) );
  BUFX2M U21 ( .A(n361), .Y(n350) );
  BUFX2M U22 ( .A(n361), .Y(n351) );
  BUFX2M U23 ( .A(n360), .Y(n352) );
  BUFX2M U24 ( .A(n360), .Y(n353) );
  BUFX2M U25 ( .A(n359), .Y(n354) );
  BUFX2M U26 ( .A(n359), .Y(n355) );
  BUFX2M U27 ( .A(n358), .Y(n356) );
  BUFX2M U28 ( .A(n362), .Y(n348) );
  BUFX2M U29 ( .A(n358), .Y(n357) );
  NOR2BX2M U30 ( .AN(wren), .B(rden), .Y(n23) );
  BUFX2M U31 ( .A(n26), .Y(n344) );
  NAND2X2M U32 ( .A(n27), .B(n12), .Y(n26) );
  BUFX2M U33 ( .A(n28), .Y(n343) );
  NAND2X2M U34 ( .A(n29), .B(n12), .Y(n28) );
  BUFX2M U35 ( .A(n32), .Y(n342) );
  NAND2X2M U36 ( .A(n27), .B(n16), .Y(n32) );
  BUFX2M U37 ( .A(n33), .Y(n341) );
  NAND2X2M U38 ( .A(n29), .B(n16), .Y(n33) );
  BUFX2M U39 ( .A(n34), .Y(n340) );
  NAND2X2M U40 ( .A(n27), .B(n19), .Y(n34) );
  BUFX2M U41 ( .A(n35), .Y(n339) );
  NAND2X2M U42 ( .A(n29), .B(n19), .Y(n35) );
  BUFX2M U43 ( .A(n36), .Y(n338) );
  NAND2X2M U44 ( .A(n27), .B(n22), .Y(n36) );
  BUFX2M U45 ( .A(n37), .Y(n337) );
  NAND2X2M U46 ( .A(n29), .B(n22), .Y(n37) );
  NAND2X2M U47 ( .A(n16), .B(n11), .Y(n15) );
  NAND2X2M U48 ( .A(n16), .B(n14), .Y(n17) );
  NAND2X2M U49 ( .A(n19), .B(n11), .Y(n18) );
  NAND2X2M U50 ( .A(n19), .B(n14), .Y(n20) );
  NAND2X2M U51 ( .A(n22), .B(n11), .Y(n21) );
  NAND2X2M U52 ( .A(n22), .B(n14), .Y(n24) );
  NAND2X2M U53 ( .A(n14), .B(n12), .Y(n13) );
  NAND2X2M U54 ( .A(n11), .B(n12), .Y(n2) );
  INVX2M U55 ( .A(wrdata[0]), .Y(n364) );
  NAND2BX2M U56 ( .AN(wren), .B(rden), .Y(n1) );
  INVX2M U57 ( .A(wrdata[1]), .Y(n365) );
  INVX2M U58 ( .A(wrdata[2]), .Y(n366) );
  INVX2M U59 ( .A(wrdata[3]), .Y(n367) );
  INVX2M U60 ( .A(wrdata[4]), .Y(n368) );
  INVX2M U61 ( .A(n346), .Y(n345) );
  BUFX2M U62 ( .A(rst), .Y(n361) );
  BUFX2M U63 ( .A(rst), .Y(n360) );
  BUFX2M U64 ( .A(rst), .Y(n359) );
  BUFX2M U65 ( .A(rst), .Y(n358) );
  BUFX2M U66 ( .A(rst), .Y(n362) );
  OAI2BB2X1M U67 ( .B0(n364), .B1(n344), .A0N(\reg_file[7][0] ), .A1N(n344), 
        .Y(n241) );
  OAI2BB2X1M U68 ( .B0(n365), .B1(n344), .A0N(\reg_file[7][1] ), .A1N(n344), 
        .Y(n242) );
  OAI2BB2X1M U69 ( .B0(n366), .B1(n344), .A0N(\reg_file[7][2] ), .A1N(n344), 
        .Y(n243) );
  OAI2BB2X1M U70 ( .B0(n367), .B1(n344), .A0N(\reg_file[7][3] ), .A1N(n344), 
        .Y(n244) );
  OAI2BB2X1M U71 ( .B0(n368), .B1(n344), .A0N(\reg_file[7][4] ), .A1N(n344), 
        .Y(n245) );
  OAI2BB2X1M U72 ( .B0(n369), .B1(n344), .A0N(\reg_file[7][5] ), .A1N(n344), 
        .Y(n246) );
  OAI2BB2X1M U73 ( .B0(n370), .B1(n344), .A0N(\reg_file[7][6] ), .A1N(n344), 
        .Y(n247) );
  OAI2BB2X1M U74 ( .B0(n371), .B1(n344), .A0N(\reg_file[7][7] ), .A1N(n344), 
        .Y(n248) );
  OAI2BB2X1M U75 ( .B0(n364), .B1(n343), .A0N(\reg_file[6][0] ), .A1N(n343), 
        .Y(n249) );
  OAI2BB2X1M U76 ( .B0(n365), .B1(n343), .A0N(\reg_file[6][1] ), .A1N(n343), 
        .Y(n250) );
  OAI2BB2X1M U77 ( .B0(n366), .B1(n343), .A0N(\reg_file[6][2] ), .A1N(n343), 
        .Y(n251) );
  OAI2BB2X1M U78 ( .B0(n367), .B1(n343), .A0N(\reg_file[6][3] ), .A1N(n343), 
        .Y(n252) );
  OAI2BB2X1M U79 ( .B0(n368), .B1(n343), .A0N(\reg_file[6][4] ), .A1N(n343), 
        .Y(n253) );
  OAI2BB2X1M U80 ( .B0(n369), .B1(n343), .A0N(\reg_file[6][5] ), .A1N(n343), 
        .Y(n254) );
  OAI2BB2X1M U81 ( .B0(n370), .B1(n343), .A0N(\reg_file[6][6] ), .A1N(n343), 
        .Y(n255) );
  OAI2BB2X1M U82 ( .B0(n371), .B1(n343), .A0N(\reg_file[6][7] ), .A1N(n343), 
        .Y(n256) );
  OAI2BB2X1M U83 ( .B0(n364), .B1(n342), .A0N(\reg_file[5][0] ), .A1N(n342), 
        .Y(n257) );
  OAI2BB2X1M U84 ( .B0(n365), .B1(n342), .A0N(\reg_file[5][1] ), .A1N(n342), 
        .Y(n258) );
  OAI2BB2X1M U85 ( .B0(n366), .B1(n342), .A0N(\reg_file[5][2] ), .A1N(n342), 
        .Y(n259) );
  OAI2BB2X1M U86 ( .B0(n367), .B1(n342), .A0N(\reg_file[5][3] ), .A1N(n342), 
        .Y(n260) );
  OAI2BB2X1M U87 ( .B0(n368), .B1(n342), .A0N(\reg_file[5][4] ), .A1N(n342), 
        .Y(n261) );
  OAI2BB2X1M U88 ( .B0(n369), .B1(n342), .A0N(\reg_file[5][5] ), .A1N(n342), 
        .Y(n262) );
  OAI2BB2X1M U89 ( .B0(n370), .B1(n342), .A0N(\reg_file[5][6] ), .A1N(n342), 
        .Y(n263) );
  OAI2BB2X1M U90 ( .B0(n371), .B1(n342), .A0N(\reg_file[5][7] ), .A1N(n342), 
        .Y(n264) );
  OAI2BB2X1M U91 ( .B0(n364), .B1(n341), .A0N(\reg_file[4][0] ), .A1N(n341), 
        .Y(n265) );
  OAI2BB2X1M U92 ( .B0(n365), .B1(n341), .A0N(\reg_file[4][1] ), .A1N(n341), 
        .Y(n266) );
  OAI2BB2X1M U93 ( .B0(n366), .B1(n341), .A0N(\reg_file[4][2] ), .A1N(n341), 
        .Y(n267) );
  OAI2BB2X1M U94 ( .B0(n367), .B1(n341), .A0N(\reg_file[4][3] ), .A1N(n341), 
        .Y(n268) );
  OAI2BB2X1M U95 ( .B0(n368), .B1(n341), .A0N(\reg_file[4][4] ), .A1N(n341), 
        .Y(n269) );
  OAI2BB2X1M U96 ( .B0(n369), .B1(n341), .A0N(\reg_file[4][5] ), .A1N(n341), 
        .Y(n270) );
  OAI2BB2X1M U97 ( .B0(n370), .B1(n341), .A0N(\reg_file[4][6] ), .A1N(n341), 
        .Y(n271) );
  OAI2BB2X1M U98 ( .B0(n371), .B1(n341), .A0N(\reg_file[4][7] ), .A1N(n341), 
        .Y(n272) );
  OAI2BB2X1M U99 ( .B0(n364), .B1(n340), .A0N(reg3[0]), .A1N(n340), .Y(n273)
         );
  OAI2BB2X1M U100 ( .B0(n365), .B1(n340), .A0N(reg3[1]), .A1N(n340), .Y(n274)
         );
  OAI2BB2X1M U101 ( .B0(n366), .B1(n340), .A0N(reg3[2]), .A1N(n340), .Y(n275)
         );
  OAI2BB2X1M U102 ( .B0(n367), .B1(n340), .A0N(reg3[3]), .A1N(n340), .Y(n276)
         );
  OAI2BB2X1M U103 ( .B0(n368), .B1(n340), .A0N(reg3[4]), .A1N(n340), .Y(n277)
         );
  OAI2BB2X1M U104 ( .B0(n370), .B1(n340), .A0N(reg3[6]), .A1N(n340), .Y(n279)
         );
  OAI2BB2X1M U105 ( .B0(n371), .B1(n340), .A0N(reg3[7]), .A1N(n340), .Y(n280)
         );
  OAI2BB2X1M U106 ( .B0(n365), .B1(n339), .A0N(reg2[1]), .A1N(n339), .Y(n282)
         );
  OAI2BB2X1M U107 ( .B0(n366), .B1(n339), .A0N(reg2[2]), .A1N(n339), .Y(n283)
         );
  OAI2BB2X1M U108 ( .B0(n367), .B1(n339), .A0N(n384), .A1N(n339), .Y(n284) );
  OAI2BB2X1M U109 ( .B0(n368), .B1(n339), .A0N(reg2[4]), .A1N(n339), .Y(n285)
         );
  OAI2BB2X1M U110 ( .B0(n369), .B1(n339), .A0N(reg2[5]), .A1N(n339), .Y(n286)
         );
  OAI2BB2X1M U111 ( .B0(n370), .B1(n339), .A0N(reg2[6]), .A1N(n339), .Y(n287)
         );
  OAI2BB2X1M U112 ( .B0(n364), .B1(n338), .A0N(reg1[0]), .A1N(n338), .Y(n289)
         );
  OAI2BB2X1M U113 ( .B0(n365), .B1(n338), .A0N(reg1[1]), .A1N(n338), .Y(n290)
         );
  OAI2BB2X1M U114 ( .B0(n366), .B1(n338), .A0N(reg1[2]), .A1N(n338), .Y(n291)
         );
  OAI2BB2X1M U115 ( .B0(n367), .B1(n338), .A0N(reg1[3]), .A1N(n338), .Y(n292)
         );
  OAI2BB2X1M U116 ( .B0(n368), .B1(n338), .A0N(reg1[4]), .A1N(n338), .Y(n293)
         );
  OAI2BB2X1M U117 ( .B0(n369), .B1(n338), .A0N(reg1[5]), .A1N(n338), .Y(n294)
         );
  OAI2BB2X1M U118 ( .B0(n370), .B1(n338), .A0N(reg1[6]), .A1N(n338), .Y(n295)
         );
  OAI2BB2X1M U119 ( .B0(n371), .B1(n338), .A0N(reg1[7]), .A1N(n338), .Y(n296)
         );
  OAI2BB2X1M U120 ( .B0(n364), .B1(n337), .A0N(reg0[0]), .A1N(n337), .Y(n297)
         );
  OAI2BB2X1M U121 ( .B0(n365), .B1(n337), .A0N(reg0[1]), .A1N(n337), .Y(n298)
         );
  OAI2BB2X1M U122 ( .B0(n366), .B1(n337), .A0N(reg0[2]), .A1N(n337), .Y(n299)
         );
  OAI2BB2X1M U123 ( .B0(n367), .B1(n337), .A0N(reg0[3]), .A1N(n337), .Y(n300)
         );
  OAI2BB2X1M U124 ( .B0(n368), .B1(n337), .A0N(reg0[4]), .A1N(n337), .Y(n301)
         );
  OAI2BB2X1M U125 ( .B0(n369), .B1(n337), .A0N(reg0[5]), .A1N(n337), .Y(n302)
         );
  OAI2BB2X1M U126 ( .B0(n370), .B1(n337), .A0N(reg0[6]), .A1N(n337), .Y(n303)
         );
  OAI2BB2X1M U127 ( .B0(n371), .B1(n337), .A0N(reg0[7]), .A1N(n337), .Y(n304)
         );
  OAI2BB2X1M U128 ( .B0(n369), .B1(n340), .A0N(reg3[5]), .A1N(n340), .Y(n278)
         );
  OAI2BB2X1M U129 ( .B0(n364), .B1(n339), .A0N(reg2[0]), .A1N(n339), .Y(n281)
         );
  OAI2BB2X1M U130 ( .B0(n371), .B1(n339), .A0N(reg2[7]), .A1N(n339), .Y(n288)
         );
  INVX2M U131 ( .A(wrdata[5]), .Y(n369) );
  INVX2M U132 ( .A(wrdata[6]), .Y(n370) );
  INVX2M U133 ( .A(wrdata[7]), .Y(n371) );
  OAI2BB2X1M U134 ( .B0(n364), .B1(n18), .A0N(\reg_file[11][0] ), .A1N(n18), 
        .Y(n209) );
  OAI2BB2X1M U135 ( .B0(n365), .B1(n18), .A0N(\reg_file[11][1] ), .A1N(n18), 
        .Y(n210) );
  OAI2BB2X1M U136 ( .B0(n366), .B1(n18), .A0N(\reg_file[11][2] ), .A1N(n18), 
        .Y(n211) );
  OAI2BB2X1M U137 ( .B0(n367), .B1(n18), .A0N(\reg_file[11][3] ), .A1N(n18), 
        .Y(n212) );
  OAI2BB2X1M U138 ( .B0(n368), .B1(n18), .A0N(\reg_file[11][4] ), .A1N(n18), 
        .Y(n213) );
  OAI2BB2X1M U139 ( .B0(n369), .B1(n18), .A0N(\reg_file[11][5] ), .A1N(n18), 
        .Y(n214) );
  OAI2BB2X1M U140 ( .B0(n370), .B1(n18), .A0N(\reg_file[11][6] ), .A1N(n18), 
        .Y(n215) );
  OAI2BB2X1M U141 ( .B0(n371), .B1(n18), .A0N(\reg_file[11][7] ), .A1N(n18), 
        .Y(n216) );
  OAI2BB2X1M U142 ( .B0(n364), .B1(n20), .A0N(\reg_file[10][0] ), .A1N(n20), 
        .Y(n217) );
  OAI2BB2X1M U143 ( .B0(n365), .B1(n20), .A0N(\reg_file[10][1] ), .A1N(n20), 
        .Y(n218) );
  OAI2BB2X1M U144 ( .B0(n366), .B1(n20), .A0N(\reg_file[10][2] ), .A1N(n20), 
        .Y(n219) );
  OAI2BB2X1M U145 ( .B0(n367), .B1(n20), .A0N(\reg_file[10][3] ), .A1N(n20), 
        .Y(n220) );
  OAI2BB2X1M U146 ( .B0(n368), .B1(n20), .A0N(\reg_file[10][4] ), .A1N(n20), 
        .Y(n221) );
  OAI2BB2X1M U147 ( .B0(n369), .B1(n20), .A0N(\reg_file[10][5] ), .A1N(n20), 
        .Y(n222) );
  OAI2BB2X1M U148 ( .B0(n370), .B1(n20), .A0N(\reg_file[10][6] ), .A1N(n20), 
        .Y(n223) );
  OAI2BB2X1M U149 ( .B0(n371), .B1(n20), .A0N(\reg_file[10][7] ), .A1N(n20), 
        .Y(n224) );
  OAI2BB2X1M U150 ( .B0(n364), .B1(n21), .A0N(\reg_file[9][0] ), .A1N(n21), 
        .Y(n225) );
  OAI2BB2X1M U151 ( .B0(n365), .B1(n21), .A0N(\reg_file[9][1] ), .A1N(n21), 
        .Y(n226) );
  OAI2BB2X1M U152 ( .B0(n366), .B1(n21), .A0N(\reg_file[9][2] ), .A1N(n21), 
        .Y(n227) );
  OAI2BB2X1M U153 ( .B0(n367), .B1(n21), .A0N(\reg_file[9][3] ), .A1N(n21), 
        .Y(n228) );
  OAI2BB2X1M U154 ( .B0(n368), .B1(n21), .A0N(\reg_file[9][4] ), .A1N(n21), 
        .Y(n229) );
  OAI2BB2X1M U155 ( .B0(n369), .B1(n21), .A0N(\reg_file[9][5] ), .A1N(n21), 
        .Y(n230) );
  OAI2BB2X1M U156 ( .B0(n370), .B1(n21), .A0N(\reg_file[9][6] ), .A1N(n21), 
        .Y(n231) );
  OAI2BB2X1M U157 ( .B0(n371), .B1(n21), .A0N(\reg_file[9][7] ), .A1N(n21), 
        .Y(n232) );
  OAI2BB2X1M U158 ( .B0(n364), .B1(n24), .A0N(\reg_file[8][0] ), .A1N(n24), 
        .Y(n233) );
  OAI2BB2X1M U159 ( .B0(n365), .B1(n24), .A0N(\reg_file[8][1] ), .A1N(n24), 
        .Y(n234) );
  OAI2BB2X1M U160 ( .B0(n366), .B1(n24), .A0N(\reg_file[8][2] ), .A1N(n24), 
        .Y(n235) );
  OAI2BB2X1M U161 ( .B0(n367), .B1(n24), .A0N(\reg_file[8][3] ), .A1N(n24), 
        .Y(n236) );
  OAI2BB2X1M U162 ( .B0(n368), .B1(n24), .A0N(\reg_file[8][4] ), .A1N(n24), 
        .Y(n237) );
  OAI2BB2X1M U163 ( .B0(n369), .B1(n24), .A0N(\reg_file[8][5] ), .A1N(n24), 
        .Y(n238) );
  OAI2BB2X1M U164 ( .B0(n370), .B1(n24), .A0N(\reg_file[8][6] ), .A1N(n24), 
        .Y(n239) );
  OAI2BB2X1M U165 ( .B0(n371), .B1(n24), .A0N(\reg_file[8][7] ), .A1N(n24), 
        .Y(n240) );
  OAI2BB2X1M U166 ( .B0(n364), .B1(n15), .A0N(\reg_file[13][0] ), .A1N(n15), 
        .Y(n193) );
  OAI2BB2X1M U167 ( .B0(n365), .B1(n15), .A0N(\reg_file[13][1] ), .A1N(n15), 
        .Y(n194) );
  OAI2BB2X1M U168 ( .B0(n366), .B1(n15), .A0N(\reg_file[13][2] ), .A1N(n15), 
        .Y(n195) );
  OAI2BB2X1M U169 ( .B0(n367), .B1(n15), .A0N(\reg_file[13][3] ), .A1N(n15), 
        .Y(n196) );
  OAI2BB2X1M U170 ( .B0(n368), .B1(n15), .A0N(\reg_file[13][4] ), .A1N(n15), 
        .Y(n197) );
  OAI2BB2X1M U171 ( .B0(n369), .B1(n15), .A0N(\reg_file[13][5] ), .A1N(n15), 
        .Y(n198) );
  OAI2BB2X1M U172 ( .B0(n370), .B1(n15), .A0N(\reg_file[13][6] ), .A1N(n15), 
        .Y(n199) );
  OAI2BB2X1M U173 ( .B0(n371), .B1(n15), .A0N(\reg_file[13][7] ), .A1N(n15), 
        .Y(n200) );
  OAI2BB2X1M U174 ( .B0(n364), .B1(n17), .A0N(\reg_file[12][0] ), .A1N(n17), 
        .Y(n201) );
  OAI2BB2X1M U175 ( .B0(n365), .B1(n17), .A0N(\reg_file[12][1] ), .A1N(n17), 
        .Y(n202) );
  OAI2BB2X1M U176 ( .B0(n366), .B1(n17), .A0N(\reg_file[12][2] ), .A1N(n17), 
        .Y(n203) );
  OAI2BB2X1M U177 ( .B0(n367), .B1(n17), .A0N(\reg_file[12][3] ), .A1N(n17), 
        .Y(n204) );
  OAI2BB2X1M U315 ( .B0(n368), .B1(n17), .A0N(\reg_file[12][4] ), .A1N(n17), 
        .Y(n205) );
  OAI2BB2X1M U316 ( .B0(n369), .B1(n17), .A0N(n382), .A1N(n17), .Y(n206) );
  OAI2BB2X1M U317 ( .B0(n370), .B1(n17), .A0N(\reg_file[12][6] ), .A1N(n17), 
        .Y(n207) );
  OAI2BB2X1M U318 ( .B0(n371), .B1(n17), .A0N(\reg_file[12][7] ), .A1N(n17), 
        .Y(n208) );
  OAI2BB2X1M U319 ( .B0(n2), .B1(n364), .A0N(\reg_file[15][0] ), .A1N(n2), .Y(
        n177) );
  OAI2BB2X1M U320 ( .B0(n2), .B1(n365), .A0N(\reg_file[15][1] ), .A1N(n2), .Y(
        n178) );
  OAI2BB2X1M U321 ( .B0(n2), .B1(n366), .A0N(\reg_file[15][2] ), .A1N(n2), .Y(
        n179) );
  OAI2BB2X1M U322 ( .B0(n2), .B1(n367), .A0N(\reg_file[15][3] ), .A1N(n2), .Y(
        n180) );
  OAI2BB2X1M U323 ( .B0(n2), .B1(n368), .A0N(\reg_file[15][4] ), .A1N(n2), .Y(
        n181) );
  OAI2BB2X1M U324 ( .B0(n2), .B1(n369), .A0N(\reg_file[15][5] ), .A1N(n2), .Y(
        n182) );
  OAI2BB2X1M U325 ( .B0(n2), .B1(n370), .A0N(\reg_file[15][6] ), .A1N(n2), .Y(
        n183) );
  OAI2BB2X1M U326 ( .B0(n2), .B1(n371), .A0N(\reg_file[15][7] ), .A1N(n2), .Y(
        n184) );
  OAI2BB2X1M U327 ( .B0(n364), .B1(n13), .A0N(\reg_file[14][0] ), .A1N(n13), 
        .Y(n185) );
  OAI2BB2X1M U328 ( .B0(n365), .B1(n13), .A0N(\reg_file[14][1] ), .A1N(n13), 
        .Y(n186) );
  OAI2BB2X1M U329 ( .B0(n366), .B1(n13), .A0N(\reg_file[14][2] ), .A1N(n13), 
        .Y(n187) );
  OAI2BB2X1M U330 ( .B0(n367), .B1(n13), .A0N(\reg_file[14][3] ), .A1N(n13), 
        .Y(n188) );
  OAI2BB2X1M U331 ( .B0(n368), .B1(n13), .A0N(\reg_file[14][4] ), .A1N(n13), 
        .Y(n189) );
  OAI2BB2X1M U332 ( .B0(n369), .B1(n13), .A0N(\reg_file[14][5] ), .A1N(n13), 
        .Y(n190) );
  OAI2BB2X1M U333 ( .B0(n370), .B1(n13), .A0N(\reg_file[14][6] ), .A1N(n13), 
        .Y(n191) );
  OAI2BB2X1M U334 ( .B0(n371), .B1(n13), .A0N(\reg_file[14][7] ), .A1N(n13), 
        .Y(n192) );
  MX4X1M U335 ( .A(reg0[1]), .B(reg1[1]), .C(reg2[1]), .D(reg3[1]), .S0(n336), 
        .S1(N11), .Y(n25) );
  MX4X1M U336 ( .A(\reg_file[4][0] ), .B(\reg_file[5][0] ), .C(
        \reg_file[6][0] ), .D(\reg_file[7][0] ), .S0(n345), .S1(N11), .Y(n6)
         );
  MX4X1M U337 ( .A(\reg_file[4][1] ), .B(\reg_file[5][1] ), .C(
        \reg_file[6][1] ), .D(\reg_file[7][1] ), .S0(n336), .S1(N11), .Y(n10)
         );
  MX4X1M U338 ( .A(\reg_file[4][2] ), .B(\reg_file[5][2] ), .C(
        \reg_file[6][2] ), .D(\reg_file[7][2] ), .S0(n336), .S1(n335), .Y(n38)
         );
  MX4X1M U339 ( .A(\reg_file[4][3] ), .B(\reg_file[5][3] ), .C(
        \reg_file[6][3] ), .D(\reg_file[7][3] ), .S0(n336), .S1(n335), .Y(n316) );
  MX4X1M U340 ( .A(\reg_file[4][4] ), .B(\reg_file[5][4] ), .C(
        \reg_file[6][4] ), .D(\reg_file[7][4] ), .S0(n336), .S1(n335), .Y(n320) );
  MX4X1M U341 ( .A(\reg_file[4][5] ), .B(\reg_file[5][5] ), .C(
        \reg_file[6][5] ), .D(\reg_file[7][5] ), .S0(N10), .S1(N11), .Y(n324)
         );
  MX4X1M U342 ( .A(\reg_file[4][6] ), .B(\reg_file[5][6] ), .C(
        \reg_file[6][6] ), .D(\reg_file[7][6] ), .S0(N10), .S1(N11), .Y(n328)
         );
  MX4X1M U343 ( .A(\reg_file[4][7] ), .B(\reg_file[5][7] ), .C(
        \reg_file[6][7] ), .D(\reg_file[7][7] ), .S0(N10), .S1(N11), .Y(n332)
         );
  MX4X1M U344 ( .A(\reg_file[12][0] ), .B(\reg_file[13][0] ), .C(
        \reg_file[14][0] ), .D(\reg_file[15][0] ), .S0(N10), .S1(N11), .Y(n4)
         );
  MX4X1M U345 ( .A(\reg_file[12][2] ), .B(\reg_file[13][2] ), .C(
        \reg_file[14][2] ), .D(\reg_file[15][2] ), .S0(n336), .S1(n335), .Y(
        n30) );
  MX4X1M U346 ( .A(\reg_file[12][3] ), .B(\reg_file[13][3] ), .C(
        \reg_file[14][3] ), .D(\reg_file[15][3] ), .S0(n336), .S1(n335), .Y(
        n314) );
  MX4X1M U347 ( .A(\reg_file[12][4] ), .B(\reg_file[13][4] ), .C(
        \reg_file[14][4] ), .D(\reg_file[15][4] ), .S0(n336), .S1(n335), .Y(
        n318) );
  MX4X1M U348 ( .A(n382), .B(\reg_file[13][5] ), .C(\reg_file[14][5] ), .D(
        \reg_file[15][5] ), .S0(n345), .S1(N11), .Y(n322) );
  MX4X1M U349 ( .A(\reg_file[12][6] ), .B(\reg_file[13][6] ), .C(
        \reg_file[14][6] ), .D(\reg_file[15][6] ), .S0(N10), .S1(n335), .Y(
        n326) );
  MX4X1M U350 ( .A(\reg_file[12][7] ), .B(\reg_file[13][7] ), .C(
        \reg_file[14][7] ), .D(\reg_file[15][7] ), .S0(N10), .S1(N11), .Y(n330) );
  NAND2BX2M U351 ( .AN(rddata_valid), .B(n1), .Y(n176) );
  AO22X1M U352 ( .A0(N42), .A1(n363), .B0(rddata[0]), .B1(n1), .Y(n305) );
  MX4X1M U353 ( .A(n7), .B(n5), .C(n6), .D(n4), .S0(N13), .S1(N12), .Y(N42) );
  MX4X1M U354 ( .A(reg0[0]), .B(reg1[0]), .C(reg2[0]), .D(reg3[0]), .S0(N10), 
        .S1(N11), .Y(n7) );
  MX4X1M U355 ( .A(\reg_file[8][0] ), .B(\reg_file[9][0] ), .C(
        \reg_file[10][0] ), .D(\reg_file[11][0] ), .S0(N10), .S1(N11), .Y(n5)
         );
  AO22X1M U356 ( .A0(N41), .A1(n363), .B0(rddata[1]), .B1(n1), .Y(n306) );
  MX4X1M U357 ( .A(n25), .B(n9), .C(n10), .D(n8), .S0(N13), .S1(N12), .Y(N41)
         );
  MX4X1M U358 ( .A(\reg_file[8][1] ), .B(\reg_file[9][1] ), .C(
        \reg_file[10][1] ), .D(\reg_file[11][1] ), .S0(N10), .S1(N11), .Y(n9)
         );
  MX4X1M U359 ( .A(\reg_file[12][1] ), .B(\reg_file[13][1] ), .C(
        \reg_file[14][1] ), .D(\reg_file[15][1] ), .S0(n336), .S1(n335), .Y(n8) );
  AO22X1M U360 ( .A0(N40), .A1(n363), .B0(rddata[2]), .B1(n1), .Y(n307) );
  MX4X1M U361 ( .A(n313), .B(n31), .C(n38), .D(n30), .S0(N13), .S1(N12), .Y(
        N40) );
  MX4X1M U362 ( .A(reg0[2]), .B(reg1[2]), .C(reg2[2]), .D(reg3[2]), .S0(n336), 
        .S1(n335), .Y(n313) );
  MX4X1M U363 ( .A(\reg_file[8][2] ), .B(\reg_file[9][2] ), .C(
        \reg_file[10][2] ), .D(\reg_file[11][2] ), .S0(n336), .S1(n335), .Y(
        n31) );
  AO22X1M U364 ( .A0(N39), .A1(n363), .B0(rddata[3]), .B1(n1), .Y(n308) );
  MX4X1M U365 ( .A(n317), .B(n315), .C(n316), .D(n314), .S0(N13), .S1(N12), 
        .Y(N39) );
  MX4X1M U366 ( .A(reg0[3]), .B(reg1[3]), .C(n384), .D(reg3[3]), .S0(n336), 
        .S1(n335), .Y(n317) );
  MX4X1M U367 ( .A(\reg_file[8][3] ), .B(\reg_file[9][3] ), .C(
        \reg_file[10][3] ), .D(\reg_file[11][3] ), .S0(n336), .S1(n335), .Y(
        n315) );
  AO22X1M U368 ( .A0(N38), .A1(n363), .B0(rddata[4]), .B1(n1), .Y(n309) );
  MX4X1M U369 ( .A(reg0[4]), .B(reg1[4]), .C(reg2[4]), .D(reg3[4]), .S0(N10), 
        .S1(n335), .Y(n321) );
  MX4X1M U370 ( .A(\reg_file[8][4] ), .B(\reg_file[9][4] ), .C(
        \reg_file[10][4] ), .D(\reg_file[11][4] ), .S0(n336), .S1(n335), .Y(
        n319) );
  AO22X1M U371 ( .A0(N37), .A1(n363), .B0(rddata[5]), .B1(n1), .Y(n310) );
  MX4X1M U372 ( .A(reg0[5]), .B(reg1[5]), .C(reg2[5]), .D(reg3[5]), .S0(N10), 
        .S1(N11), .Y(n325) );
  MX4X1M U373 ( .A(\reg_file[8][5] ), .B(\reg_file[9][5] ), .C(
        \reg_file[10][5] ), .D(\reg_file[11][5] ), .S0(N10), .S1(N11), .Y(n323) );
  AO22X1M U374 ( .A0(N36), .A1(n363), .B0(rddata[6]), .B1(n1), .Y(n311) );
  MX4X1M U375 ( .A(reg0[6]), .B(reg1[6]), .C(reg2[6]), .D(reg3[6]), .S0(n345), 
        .S1(N11), .Y(n329) );
  MX4X1M U376 ( .A(\reg_file[8][6] ), .B(\reg_file[9][6] ), .C(
        \reg_file[10][6] ), .D(\reg_file[11][6] ), .S0(N10), .S1(N11), .Y(n327) );
  AO22X1M U377 ( .A0(N35), .A1(n363), .B0(rddata[7]), .B1(n1), .Y(n312) );
  MX4X1M U378 ( .A(reg0[7]), .B(reg1[7]), .C(reg2[7]), .D(reg3[7]), .S0(n345), 
        .S1(N11), .Y(n333) );
  MX4X1M U379 ( .A(\reg_file[8][7] ), .B(\reg_file[9][7] ), .C(
        \reg_file[10][7] ), .D(\reg_file[11][7] ), .S0(N10), .S1(N11), .Y(n331) );
  INVX2M U380 ( .A(N11), .Y(n347) );
  INVX2M U381 ( .A(N10), .Y(n346) );
  INVX2M U382 ( .A(N12), .Y(n372) );
  DLY1X1M U383 ( .A(test_se), .Y(n377) );
  DLY1X1M U384 ( .A(test_se), .Y(n378) );
  DLY1X1M U385 ( .A(test_se), .Y(n379) );
  DLY1X1M U386 ( .A(test_se), .Y(n380) );
  INVXLM U387 ( .A(\reg_file[12][5] ), .Y(n381) );
  INVXLM U388 ( .A(n381), .Y(n382) );
  INVXLM U389 ( .A(reg2[3]), .Y(n383) );
  INVXLM U390 ( .A(n383), .Y(n384) );
  SDFFRHQX8M \reg_file_reg[2][3]  ( .D(n284), .SI(reg2[2]), .SE(n380), .CK(clk), .RN(n355), .Q(reg2[3]) );
  SDFFRHQX8M \reg_file_reg[12][5]  ( .D(n206), .SI(\reg_file[12][4] ), .SE(
        n377), .CK(clk), .RN(n350), .Q(\reg_file[12][5] ) );
endmodule


module bit16_alu_DW_div_uns_0 ( a, b, quotient, remainder, divide_by_0 );
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
         n12, n13, n14, n15, n16, n17, n18, n19, n20, n21, n22;

  ADDFX2M \u_div/u_fa_PartRem_0_2_5  ( .A(\u_div/PartRem[3][5] ), .B(n14), 
        .CI(\u_div/CryTmp[2][5] ), .CO(\u_div/CryTmp[2][6] ), .S(
        \u_div/SumTmp[2][5] ) );
  ADDFX2M \u_div/u_fa_PartRem_0_4_3  ( .A(\u_div/PartRem[5][3] ), .B(n16), 
        .CI(\u_div/CryTmp[4][3] ), .CO(\u_div/CryTmp[4][4] ), .S(
        \u_div/SumTmp[4][3] ) );
  ADDFX2M \u_div/u_fa_PartRem_0_5_2  ( .A(\u_div/PartRem[6][2] ), .B(n17), 
        .CI(\u_div/CryTmp[5][2] ), .CO(\u_div/CryTmp[5][3] ), .S(
        \u_div/SumTmp[5][2] ) );
  ADDFX2M \u_div/u_fa_PartRem_0_6_1  ( .A(\u_div/PartRem[7][1] ), .B(n18), 
        .CI(\u_div/CryTmp[6][1] ), .CO(\u_div/CryTmp[6][2] ), .S(
        \u_div/SumTmp[6][1] ) );
  ADDFX2M \u_div/u_fa_PartRem_0_3_4  ( .A(\u_div/PartRem[4][4] ), .B(n15), 
        .CI(\u_div/CryTmp[3][4] ), .CO(\u_div/CryTmp[3][5] ), .S(
        \u_div/SumTmp[3][4] ) );
  ADDFX2M \u_div/u_fa_PartRem_0_0_5  ( .A(\u_div/PartRem[1][5] ), .B(n14), 
        .CI(\u_div/CryTmp[0][5] ), .CO(\u_div/CryTmp[0][6] ) );
  ADDFX2M \u_div/u_fa_PartRem_0_0_6  ( .A(\u_div/PartRem[1][6] ), .B(n13), 
        .CI(\u_div/CryTmp[0][6] ), .CO(\u_div/CryTmp[0][7] ) );
  ADDFX2M \u_div/u_fa_PartRem_0_0_7  ( .A(\u_div/PartRem[1][7] ), .B(n12), 
        .CI(\u_div/CryTmp[0][7] ), .CO(quotient[0]) );
  ADDFX2M \u_div/u_fa_PartRem_0_0_1  ( .A(\u_div/PartRem[1][1] ), .B(n18), 
        .CI(\u_div/CryTmp[0][1] ), .CO(\u_div/CryTmp[0][2] ) );
  ADDFX2M \u_div/u_fa_PartRem_0_1_1  ( .A(\u_div/PartRem[2][1] ), .B(n18), 
        .CI(\u_div/CryTmp[1][1] ), .CO(\u_div/CryTmp[1][2] ), .S(
        \u_div/SumTmp[1][1] ) );
  ADDFX2M \u_div/u_fa_PartRem_0_2_1  ( .A(\u_div/PartRem[3][1] ), .B(n18), 
        .CI(\u_div/CryTmp[2][1] ), .CO(\u_div/CryTmp[2][2] ), .S(
        \u_div/SumTmp[2][1] ) );
  ADDFX2M \u_div/u_fa_PartRem_0_3_1  ( .A(\u_div/PartRem[4][1] ), .B(n18), 
        .CI(\u_div/CryTmp[3][1] ), .CO(\u_div/CryTmp[3][2] ), .S(
        \u_div/SumTmp[3][1] ) );
  ADDFX2M \u_div/u_fa_PartRem_0_4_1  ( .A(\u_div/PartRem[5][1] ), .B(n18), 
        .CI(\u_div/CryTmp[4][1] ), .CO(\u_div/CryTmp[4][2] ), .S(
        \u_div/SumTmp[4][1] ) );
  ADDFX2M \u_div/u_fa_PartRem_0_5_1  ( .A(\u_div/PartRem[6][1] ), .B(n18), 
        .CI(\u_div/CryTmp[5][1] ), .CO(\u_div/CryTmp[5][2] ), .S(
        \u_div/SumTmp[5][1] ) );
  ADDFX2M \u_div/u_fa_PartRem_0_0_2  ( .A(\u_div/PartRem[1][2] ), .B(n17), 
        .CI(\u_div/CryTmp[0][2] ), .CO(\u_div/CryTmp[0][3] ) );
  ADDFX2M \u_div/u_fa_PartRem_0_0_3  ( .A(\u_div/PartRem[1][3] ), .B(n16), 
        .CI(\u_div/CryTmp[0][3] ), .CO(\u_div/CryTmp[0][4] ) );
  ADDFX2M \u_div/u_fa_PartRem_0_0_4  ( .A(\u_div/PartRem[1][4] ), .B(n15), 
        .CI(\u_div/CryTmp[0][4] ), .CO(\u_div/CryTmp[0][5] ) );
  ADDFX2M \u_div/u_fa_PartRem_0_1_5  ( .A(\u_div/PartRem[2][5] ), .B(n14), 
        .CI(\u_div/CryTmp[1][5] ), .CO(\u_div/CryTmp[1][6] ), .S(
        \u_div/SumTmp[1][5] ) );
  ADDFX2M \u_div/u_fa_PartRem_0_1_4  ( .A(\u_div/PartRem[2][4] ), .B(n15), 
        .CI(\u_div/CryTmp[1][4] ), .CO(\u_div/CryTmp[1][5] ), .S(
        \u_div/SumTmp[1][4] ) );
  ADDFX2M \u_div/u_fa_PartRem_0_1_3  ( .A(\u_div/PartRem[2][3] ), .B(n16), 
        .CI(\u_div/CryTmp[1][3] ), .CO(\u_div/CryTmp[1][4] ), .S(
        \u_div/SumTmp[1][3] ) );
  ADDFX2M \u_div/u_fa_PartRem_0_2_4  ( .A(\u_div/PartRem[3][4] ), .B(n15), 
        .CI(\u_div/CryTmp[2][4] ), .CO(\u_div/CryTmp[2][5] ), .S(
        \u_div/SumTmp[2][4] ) );
  ADDFX2M \u_div/u_fa_PartRem_0_1_2  ( .A(\u_div/PartRem[2][2] ), .B(n17), 
        .CI(\u_div/CryTmp[1][2] ), .CO(\u_div/CryTmp[1][3] ), .S(
        \u_div/SumTmp[1][2] ) );
  ADDFX2M \u_div/u_fa_PartRem_0_2_3  ( .A(\u_div/PartRem[3][3] ), .B(n16), 
        .CI(\u_div/CryTmp[2][3] ), .CO(\u_div/CryTmp[2][4] ), .S(
        \u_div/SumTmp[2][3] ) );
  ADDFX2M \u_div/u_fa_PartRem_0_2_2  ( .A(\u_div/PartRem[3][2] ), .B(n17), 
        .CI(\u_div/CryTmp[2][2] ), .CO(\u_div/CryTmp[2][3] ), .S(
        \u_div/SumTmp[2][2] ) );
  ADDFX2M \u_div/u_fa_PartRem_0_3_3  ( .A(\u_div/PartRem[4][3] ), .B(n16), 
        .CI(\u_div/CryTmp[3][3] ), .CO(\u_div/CryTmp[3][4] ), .S(
        \u_div/SumTmp[3][3] ) );
  ADDFX2M \u_div/u_fa_PartRem_0_3_2  ( .A(\u_div/PartRem[4][2] ), .B(n17), 
        .CI(\u_div/CryTmp[3][2] ), .CO(\u_div/CryTmp[3][3] ), .S(
        \u_div/SumTmp[3][2] ) );
  ADDFX2M \u_div/u_fa_PartRem_0_4_2  ( .A(\u_div/PartRem[5][2] ), .B(n17), 
        .CI(\u_div/CryTmp[4][2] ), .CO(\u_div/CryTmp[4][3] ), .S(
        \u_div/SumTmp[4][2] ) );
  ADDFX2M \u_div/u_fa_PartRem_0_1_6  ( .A(\u_div/PartRem[2][6] ), .B(n13), 
        .CI(\u_div/CryTmp[1][6] ), .CO(\u_div/CryTmp[1][7] ), .S(
        \u_div/SumTmp[1][6] ) );
  INVX2M U1 ( .A(b[0]), .Y(n19) );
  XNOR2X2M U2 ( .A(n19), .B(a[7]), .Y(\u_div/SumTmp[7][0] ) );
  XNOR2X2M U3 ( .A(n19), .B(a[6]), .Y(\u_div/SumTmp[6][0] ) );
  XNOR2X2M U4 ( .A(n19), .B(a[5]), .Y(\u_div/SumTmp[5][0] ) );
  XNOR2X2M U5 ( .A(n19), .B(a[4]), .Y(\u_div/SumTmp[4][0] ) );
  XNOR2X2M U6 ( .A(n19), .B(a[3]), .Y(\u_div/SumTmp[3][0] ) );
  XNOR2X2M U7 ( .A(n19), .B(a[2]), .Y(\u_div/SumTmp[2][0] ) );
  OR2X2M U8 ( .A(n19), .B(a[7]), .Y(\u_div/CryTmp[7][1] ) );
  XNOR2X2M U9 ( .A(n19), .B(a[1]), .Y(\u_div/SumTmp[1][0] ) );
  INVX2M U10 ( .A(b[1]), .Y(n18) );
  NAND2X2M U11 ( .A(n2), .B(n3), .Y(\u_div/CryTmp[5][1] ) );
  INVX2M U12 ( .A(a[5]), .Y(n3) );
  INVX2M U13 ( .A(n19), .Y(n2) );
  NAND2X2M U14 ( .A(n4), .B(n5), .Y(\u_div/CryTmp[4][1] ) );
  INVX2M U15 ( .A(a[4]), .Y(n5) );
  INVX2M U16 ( .A(n19), .Y(n4) );
  NAND2X2M U17 ( .A(n6), .B(n7), .Y(\u_div/CryTmp[3][1] ) );
  INVX2M U18 ( .A(a[3]), .Y(n7) );
  INVX2M U19 ( .A(n19), .Y(n6) );
  NAND2X2M U20 ( .A(n8), .B(n9), .Y(\u_div/CryTmp[2][1] ) );
  INVX2M U21 ( .A(a[2]), .Y(n9) );
  INVX2M U22 ( .A(n19), .Y(n8) );
  NAND2X2M U23 ( .A(n6), .B(n10), .Y(\u_div/CryTmp[1][1] ) );
  INVX2M U24 ( .A(a[1]), .Y(n10) );
  NAND2X2M U25 ( .A(n4), .B(n11), .Y(\u_div/CryTmp[0][1] ) );
  INVX2M U26 ( .A(a[0]), .Y(n11) );
  NAND2X2M U27 ( .A(n2), .B(n1), .Y(\u_div/CryTmp[6][1] ) );
  INVX2M U28 ( .A(a[6]), .Y(n1) );
  INVX2M U29 ( .A(b[6]), .Y(n13) );
  INVX2M U30 ( .A(b[2]), .Y(n17) );
  INVX2M U31 ( .A(b[3]), .Y(n16) );
  INVX2M U32 ( .A(b[4]), .Y(n15) );
  INVX2M U33 ( .A(b[5]), .Y(n14) );
  INVX2M U34 ( .A(b[7]), .Y(n12) );
  CLKMX2X2M U35 ( .A(\u_div/PartRem[2][6] ), .B(\u_div/SumTmp[1][6] ), .S0(
        quotient[1]), .Y(\u_div/PartRem[1][7] ) );
  CLKMX2X2M U36 ( .A(\u_div/PartRem[3][5] ), .B(\u_div/SumTmp[2][5] ), .S0(
        quotient[2]), .Y(\u_div/PartRem[2][6] ) );
  CLKMX2X2M U37 ( .A(\u_div/PartRem[4][4] ), .B(\u_div/SumTmp[3][4] ), .S0(
        quotient[3]), .Y(\u_div/PartRem[3][5] ) );
  CLKMX2X2M U38 ( .A(\u_div/PartRem[5][3] ), .B(\u_div/SumTmp[4][3] ), .S0(
        quotient[4]), .Y(\u_div/PartRem[4][4] ) );
  CLKMX2X2M U39 ( .A(\u_div/PartRem[6][2] ), .B(\u_div/SumTmp[5][2] ), .S0(
        quotient[5]), .Y(\u_div/PartRem[5][3] ) );
  CLKMX2X2M U40 ( .A(\u_div/PartRem[7][1] ), .B(\u_div/SumTmp[6][1] ), .S0(
        quotient[6]), .Y(\u_div/PartRem[6][2] ) );
  CLKMX2X2M U41 ( .A(a[7]), .B(\u_div/SumTmp[7][0] ), .S0(quotient[7]), .Y(
        \u_div/PartRem[7][1] ) );
  CLKMX2X2M U42 ( .A(\u_div/PartRem[2][5] ), .B(\u_div/SumTmp[1][5] ), .S0(
        quotient[1]), .Y(\u_div/PartRem[1][6] ) );
  CLKMX2X2M U43 ( .A(\u_div/PartRem[3][4] ), .B(\u_div/SumTmp[2][4] ), .S0(
        quotient[2]), .Y(\u_div/PartRem[2][5] ) );
  CLKMX2X2M U44 ( .A(\u_div/PartRem[4][3] ), .B(\u_div/SumTmp[3][3] ), .S0(
        quotient[3]), .Y(\u_div/PartRem[3][4] ) );
  CLKMX2X2M U45 ( .A(\u_div/PartRem[5][2] ), .B(\u_div/SumTmp[4][2] ), .S0(
        quotient[4]), .Y(\u_div/PartRem[4][3] ) );
  CLKMX2X2M U46 ( .A(\u_div/PartRem[6][1] ), .B(\u_div/SumTmp[5][1] ), .S0(
        quotient[5]), .Y(\u_div/PartRem[5][2] ) );
  CLKMX2X2M U47 ( .A(a[6]), .B(\u_div/SumTmp[6][0] ), .S0(quotient[6]), .Y(
        \u_div/PartRem[6][1] ) );
  CLKMX2X2M U48 ( .A(\u_div/PartRem[2][4] ), .B(\u_div/SumTmp[1][4] ), .S0(
        quotient[1]), .Y(\u_div/PartRem[1][5] ) );
  CLKMX2X2M U49 ( .A(\u_div/PartRem[3][3] ), .B(\u_div/SumTmp[2][3] ), .S0(
        quotient[2]), .Y(\u_div/PartRem[2][4] ) );
  CLKMX2X2M U50 ( .A(\u_div/PartRem[4][2] ), .B(\u_div/SumTmp[3][2] ), .S0(
        quotient[3]), .Y(\u_div/PartRem[3][3] ) );
  CLKMX2X2M U51 ( .A(\u_div/PartRem[5][1] ), .B(\u_div/SumTmp[4][1] ), .S0(
        quotient[4]), .Y(\u_div/PartRem[4][2] ) );
  CLKMX2X2M U52 ( .A(a[5]), .B(\u_div/SumTmp[5][0] ), .S0(quotient[5]), .Y(
        \u_div/PartRem[5][1] ) );
  CLKMX2X2M U53 ( .A(\u_div/PartRem[2][3] ), .B(\u_div/SumTmp[1][3] ), .S0(
        quotient[1]), .Y(\u_div/PartRem[1][4] ) );
  CLKMX2X2M U54 ( .A(\u_div/PartRem[3][2] ), .B(\u_div/SumTmp[2][2] ), .S0(
        quotient[2]), .Y(\u_div/PartRem[2][3] ) );
  CLKMX2X2M U55 ( .A(\u_div/PartRem[4][1] ), .B(\u_div/SumTmp[3][1] ), .S0(
        quotient[3]), .Y(\u_div/PartRem[3][2] ) );
  CLKMX2X2M U56 ( .A(a[4]), .B(\u_div/SumTmp[4][0] ), .S0(quotient[4]), .Y(
        \u_div/PartRem[4][1] ) );
  CLKMX2X2M U57 ( .A(\u_div/PartRem[2][2] ), .B(\u_div/SumTmp[1][2] ), .S0(
        quotient[1]), .Y(\u_div/PartRem[1][3] ) );
  CLKMX2X2M U58 ( .A(\u_div/PartRem[3][1] ), .B(\u_div/SumTmp[2][1] ), .S0(
        quotient[2]), .Y(\u_div/PartRem[2][2] ) );
  CLKMX2X2M U59 ( .A(a[3]), .B(\u_div/SumTmp[3][0] ), .S0(quotient[3]), .Y(
        \u_div/PartRem[3][1] ) );
  CLKMX2X2M U60 ( .A(\u_div/PartRem[2][1] ), .B(\u_div/SumTmp[1][1] ), .S0(
        quotient[1]), .Y(\u_div/PartRem[1][2] ) );
  CLKMX2X2M U61 ( .A(a[2]), .B(\u_div/SumTmp[2][0] ), .S0(quotient[2]), .Y(
        \u_div/PartRem[2][1] ) );
  CLKMX2X2M U62 ( .A(a[1]), .B(\u_div/SumTmp[1][0] ), .S0(quotient[1]), .Y(
        \u_div/PartRem[1][1] ) );
  AND4X1M U63 ( .A(\u_div/CryTmp[7][1] ), .B(n20), .C(n18), .D(n17), .Y(
        quotient[7]) );
  AND3X1M U64 ( .A(n20), .B(n17), .C(\u_div/CryTmp[6][2] ), .Y(quotient[6]) );
  AND2X1M U65 ( .A(\u_div/CryTmp[5][3] ), .B(n20), .Y(quotient[5]) );
  AND2X1M U66 ( .A(n21), .B(n16), .Y(n20) );
  AND2X1M U67 ( .A(\u_div/CryTmp[4][4] ), .B(n21), .Y(quotient[4]) );
  AND3X1M U68 ( .A(n22), .B(n15), .C(n14), .Y(n21) );
  AND3X1M U69 ( .A(n22), .B(n14), .C(\u_div/CryTmp[3][5] ), .Y(quotient[3]) );
  AND2X1M U70 ( .A(\u_div/CryTmp[2][6] ), .B(n22), .Y(quotient[2]) );
  NOR2X1M U71 ( .A(b[6]), .B(b[7]), .Y(n22) );
  AND2X1M U72 ( .A(\u_div/CryTmp[1][7] ), .B(n12), .Y(quotient[1]) );
endmodule


module bit16_alu_DW01_sub_0 ( A, B, CI, DIFF, CO );
  input [8:0] A;
  input [8:0] B;
  output [8:0] DIFF;
  input CI;
  output CO;
  wire   n1, n2, n3, n4, n5, n6, n7, n8, n9;
  wire   [9:0] carry;

  ADDFX2M U2_7 ( .A(A[7]), .B(n2), .CI(carry[7]), .CO(carry[8]), .S(DIFF[7])
         );
  ADDFX2M U2_5 ( .A(A[5]), .B(n4), .CI(carry[5]), .CO(carry[6]), .S(DIFF[5])
         );
  ADDFX2M U2_4 ( .A(A[4]), .B(n5), .CI(carry[4]), .CO(carry[5]), .S(DIFF[4])
         );
  ADDFX2M U2_3 ( .A(A[3]), .B(n6), .CI(carry[3]), .CO(carry[4]), .S(DIFF[3])
         );
  ADDFX2M U2_2 ( .A(A[2]), .B(n7), .CI(carry[2]), .CO(carry[3]), .S(DIFF[2])
         );
  ADDFX2M U2_1 ( .A(A[1]), .B(n8), .CI(carry[1]), .CO(carry[2]), .S(DIFF[1])
         );
  ADDFX2M U2_6 ( .A(A[6]), .B(n3), .CI(carry[6]), .CO(carry[7]), .S(DIFF[6])
         );
  XNOR2X2M U1 ( .A(n9), .B(A[0]), .Y(DIFF[0]) );
  INVX2M U2 ( .A(B[6]), .Y(n3) );
  INVX2M U3 ( .A(B[1]), .Y(n8) );
  NAND2X2M U4 ( .A(B[0]), .B(n1), .Y(carry[1]) );
  INVX2M U5 ( .A(A[0]), .Y(n1) );
  INVX2M U6 ( .A(B[0]), .Y(n9) );
  INVX2M U7 ( .A(B[2]), .Y(n7) );
  INVX2M U8 ( .A(B[3]), .Y(n6) );
  INVX2M U9 ( .A(B[4]), .Y(n5) );
  INVX2M U10 ( .A(B[5]), .Y(n4) );
  INVX2M U11 ( .A(B[7]), .Y(n2) );
  CLKINVX1M U12 ( .A(carry[8]), .Y(DIFF[8]) );
endmodule


module bit16_alu_DW01_add_0 ( A, B, CI, SUM, CO );
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


module bit16_alu_DW01_add_1 ( A, B, CI, SUM, CO );
  input [13:0] A;
  input [13:0] B;
  output [13:0] SUM;
  input CI;
  output CO;
  wire   n1, n8, n9, n10, n11, n12, n13, n14, n15, n16, n17, n18, n19, n20,
         n21, n22, n23, n24, n25, n26, n27;

  NAND2X2M U2 ( .A(A[7]), .B(B[7]), .Y(n15) );
  AOI21BX2M U3 ( .A0(n18), .A1(A[12]), .B0N(n19), .Y(n1) );
  INVX2M U4 ( .A(A[6]), .Y(n9) );
  XNOR2X2M U5 ( .A(A[7]), .B(n8), .Y(SUM[7]) );
  INVX2M U6 ( .A(B[7]), .Y(n8) );
  XNOR2X2M U7 ( .A(B[13]), .B(n1), .Y(SUM[13]) );
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


module bit16_alu_DW02_mult_0 ( A, B, TC, PRODUCT );
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
         n27, n28, n29, n30, n31, n32, n33, n34, n35, n36, n37, n38, n39, n40;

  ADDFX2M S1_6_0 ( .A(\ab[6][0] ), .B(\CARRYB[5][0] ), .CI(\SUMB[5][1] ), .CO(
        \CARRYB[6][0] ), .S(\A1[4] ) );
  ADDFX2M S2_6_4 ( .A(\ab[6][4] ), .B(\CARRYB[5][4] ), .CI(\SUMB[5][5] ), .CO(
        \CARRYB[6][4] ), .S(\SUMB[6][4] ) );
  ADDFX2M S2_6_3 ( .A(\ab[6][3] ), .B(\CARRYB[5][3] ), .CI(\SUMB[5][4] ), .CO(
        \CARRYB[6][3] ), .S(\SUMB[6][3] ) );
  ADDFX2M S2_6_2 ( .A(\ab[6][2] ), .B(\CARRYB[5][2] ), .CI(\SUMB[5][3] ), .CO(
        \CARRYB[6][2] ), .S(\SUMB[6][2] ) );
  ADDFX2M S1_5_0 ( .A(\ab[5][0] ), .B(\CARRYB[4][0] ), .CI(\SUMB[4][1] ), .CO(
        \CARRYB[5][0] ), .S(\A1[3] ) );
  ADDFX2M S2_6_5 ( .A(\ab[6][5] ), .B(\CARRYB[5][5] ), .CI(\SUMB[5][6] ), .CO(
        \CARRYB[6][5] ), .S(\SUMB[6][5] ) );
  ADDFX2M S2_5_4 ( .A(\ab[5][4] ), .B(\CARRYB[4][4] ), .CI(\SUMB[4][5] ), .CO(
        \CARRYB[5][4] ), .S(\SUMB[5][4] ) );
  ADDFX2M S2_5_3 ( .A(\ab[5][3] ), .B(\CARRYB[4][3] ), .CI(\SUMB[4][4] ), .CO(
        \CARRYB[5][3] ), .S(\SUMB[5][3] ) );
  ADDFX2M S2_5_2 ( .A(\ab[5][2] ), .B(\CARRYB[4][2] ), .CI(\SUMB[4][3] ), .CO(
        \CARRYB[5][2] ), .S(\SUMB[5][2] ) );
  ADDFX2M S1_4_0 ( .A(\ab[4][0] ), .B(\CARRYB[3][0] ), .CI(\SUMB[3][1] ), .CO(
        \CARRYB[4][0] ), .S(\A1[2] ) );
  ADDFX2M S2_5_5 ( .A(\ab[5][5] ), .B(\CARRYB[4][5] ), .CI(\SUMB[4][6] ), .CO(
        \CARRYB[5][5] ), .S(\SUMB[5][5] ) );
  ADDFX2M S2_4_4 ( .A(\ab[4][4] ), .B(\CARRYB[3][4] ), .CI(\SUMB[3][5] ), .CO(
        \CARRYB[4][4] ), .S(\SUMB[4][4] ) );
  ADDFX2M S2_4_3 ( .A(\ab[4][3] ), .B(\CARRYB[3][3] ), .CI(\SUMB[3][4] ), .CO(
        \CARRYB[4][3] ), .S(\SUMB[4][3] ) );
  ADDFX2M S2_4_2 ( .A(\ab[4][2] ), .B(\CARRYB[3][2] ), .CI(\SUMB[3][3] ), .CO(
        \CARRYB[4][2] ), .S(\SUMB[4][2] ) );
  ADDFX2M S1_3_0 ( .A(\ab[3][0] ), .B(\CARRYB[2][0] ), .CI(\SUMB[2][1] ), .CO(
        \CARRYB[3][0] ), .S(\A1[1] ) );
  ADDFX2M S2_4_5 ( .A(\ab[4][5] ), .B(\CARRYB[3][5] ), .CI(\SUMB[3][6] ), .CO(
        \CARRYB[4][5] ), .S(\SUMB[4][5] ) );
  ADDFX2M S2_3_4 ( .A(\ab[3][4] ), .B(\CARRYB[2][4] ), .CI(\SUMB[2][5] ), .CO(
        \CARRYB[3][4] ), .S(\SUMB[3][4] ) );
  ADDFX2M S2_3_3 ( .A(\ab[3][3] ), .B(\CARRYB[2][3] ), .CI(\SUMB[2][4] ), .CO(
        \CARRYB[3][3] ), .S(\SUMB[3][3] ) );
  ADDFX2M S2_3_2 ( .A(\ab[3][2] ), .B(\CARRYB[2][2] ), .CI(\SUMB[2][3] ), .CO(
        \CARRYB[3][2] ), .S(\SUMB[3][2] ) );
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
  ADDFX2M S3_2_6 ( .A(\ab[2][6] ), .B(n9), .CI(\ab[1][7] ), .CO(\CARRYB[2][6] ), .S(\SUMB[2][6] ) );
  ADDFX2M S1_2_0 ( .A(\ab[2][0] ), .B(n8), .CI(\SUMB[1][1] ), .CO(
        \CARRYB[2][0] ), .S(\A1[0] ) );
  ADDFX2M S2_2_4 ( .A(\ab[2][4] ), .B(n7), .CI(\SUMB[1][5] ), .CO(
        \CARRYB[2][4] ), .S(\SUMB[2][4] ) );
  ADDFX2M S2_2_3 ( .A(\ab[2][3] ), .B(n6), .CI(\SUMB[1][4] ), .CO(
        \CARRYB[2][3] ), .S(\SUMB[2][3] ) );
  ADDFX2M S2_2_2 ( .A(\ab[2][2] ), .B(n5), .CI(\SUMB[1][3] ), .CO(
        \CARRYB[2][2] ), .S(\SUMB[2][2] ) );
  ADDFX2M S2_2_5 ( .A(\ab[2][5] ), .B(n4), .CI(\SUMB[1][6] ), .CO(
        \CARRYB[2][5] ), .S(\SUMB[2][5] ) );
  ADDFX2M S4_0 ( .A(\ab[7][0] ), .B(\CARRYB[6][0] ), .CI(\SUMB[6][1] ), .CO(
        \CARRYB[7][0] ), .S(\SUMB[7][0] ) );
  ADDFX2M S5_6 ( .A(\ab[7][6] ), .B(\CARRYB[6][6] ), .CI(\ab[6][7] ), .CO(
        \CARRYB[7][6] ), .S(\SUMB[7][6] ) );
  ADDFX2M S4_4 ( .A(\ab[7][4] ), .B(\CARRYB[6][4] ), .CI(\SUMB[6][5] ), .CO(
        \CARRYB[7][4] ), .S(\SUMB[7][4] ) );
  ADDFX2M S4_3 ( .A(\ab[7][3] ), .B(\CARRYB[6][3] ), .CI(\SUMB[6][4] ), .CO(
        \CARRYB[7][3] ), .S(\SUMB[7][3] ) );
  ADDFX2M S4_2 ( .A(\ab[7][2] ), .B(\CARRYB[6][2] ), .CI(\SUMB[6][3] ), .CO(
        \CARRYB[7][2] ), .S(\SUMB[7][2] ) );
  ADDFX2M S4_5 ( .A(\ab[7][5] ), .B(\CARRYB[6][5] ), .CI(\SUMB[6][6] ), .CO(
        \CARRYB[7][5] ), .S(\SUMB[7][5] ) );
  ADDFX2M S2_6_1 ( .A(\ab[6][1] ), .B(\CARRYB[5][1] ), .CI(\SUMB[5][2] ), .CO(
        \CARRYB[6][1] ), .S(\SUMB[6][1] ) );
  ADDFX2M S2_5_1 ( .A(\ab[5][1] ), .B(\CARRYB[4][1] ), .CI(\SUMB[4][2] ), .CO(
        \CARRYB[5][1] ), .S(\SUMB[5][1] ) );
  ADDFX2M S2_4_1 ( .A(\ab[4][1] ), .B(\CARRYB[3][1] ), .CI(\SUMB[3][2] ), .CO(
        \CARRYB[4][1] ), .S(\SUMB[4][1] ) );
  ADDFX2M S2_3_1 ( .A(\ab[3][1] ), .B(\CARRYB[2][1] ), .CI(\SUMB[2][2] ), .CO(
        \CARRYB[3][1] ), .S(\SUMB[3][1] ) );
  ADDFX2M S2_2_1 ( .A(\ab[2][1] ), .B(n3), .CI(\SUMB[1][2] ), .CO(
        \CARRYB[2][1] ), .S(\SUMB[2][1] ) );
  ADDFX2M S4_1 ( .A(\ab[7][1] ), .B(\CARRYB[6][1] ), .CI(\SUMB[6][2] ), .CO(
        \CARRYB[7][1] ), .S(\SUMB[7][1] ) );
  AND2X2M U2 ( .A(\ab[0][2] ), .B(\ab[1][1] ), .Y(n3) );
  AND2X2M U3 ( .A(\ab[0][6] ), .B(\ab[1][5] ), .Y(n4) );
  AND2X2M U4 ( .A(\ab[0][3] ), .B(\ab[1][2] ), .Y(n5) );
  AND2X2M U5 ( .A(\ab[0][4] ), .B(\ab[1][3] ), .Y(n6) );
  AND2X2M U6 ( .A(\ab[0][5] ), .B(\ab[1][4] ), .Y(n7) );
  AND2X2M U7 ( .A(\ab[0][1] ), .B(\ab[1][0] ), .Y(n8) );
  AND2X2M U8 ( .A(\ab[0][7] ), .B(\ab[1][6] ), .Y(n9) );
  AND2X2M U9 ( .A(\CARRYB[7][6] ), .B(\ab[7][7] ), .Y(n10) );
  INVX2M U10 ( .A(\ab[0][6] ), .Y(n23) );
  CLKXOR2X2M U11 ( .A(\CARRYB[7][1] ), .B(\SUMB[7][2] ), .Y(\A1[7] ) );
  CLKXOR2X2M U12 ( .A(\CARRYB[7][6] ), .B(\ab[7][7] ), .Y(\A1[12] ) );
  CLKXOR2X2M U13 ( .A(\CARRYB[7][2] ), .B(\SUMB[7][3] ), .Y(\A1[8] ) );
  CLKXOR2X2M U14 ( .A(\CARRYB[7][4] ), .B(\SUMB[7][5] ), .Y(\A1[10] ) );
  CLKXOR2X2M U15 ( .A(\CARRYB[7][3] ), .B(\SUMB[7][4] ), .Y(\A1[9] ) );
  CLKXOR2X2M U16 ( .A(\CARRYB[7][5] ), .B(\SUMB[7][6] ), .Y(\A1[11] ) );
  INVX2M U17 ( .A(\ab[0][7] ), .Y(n24) );
  INVX2M U18 ( .A(\ab[0][4] ), .Y(n21) );
  INVX2M U19 ( .A(\ab[0][5] ), .Y(n22) );
  INVX2M U20 ( .A(\ab[0][3] ), .Y(n20) );
  INVX2M U21 ( .A(\ab[0][2] ), .Y(n19) );
  XNOR2X2M U22 ( .A(\ab[1][2] ), .B(n20), .Y(\SUMB[1][2] ) );
  XNOR2X2M U23 ( .A(\CARRYB[7][0] ), .B(n17), .Y(\A1[6] ) );
  INVX2M U24 ( .A(\SUMB[7][1] ), .Y(n17) );
  AND2X2M U25 ( .A(\CARRYB[7][0] ), .B(\SUMB[7][1] ), .Y(n11) );
  AND2X2M U26 ( .A(\CARRYB[7][1] ), .B(\SUMB[7][2] ), .Y(n12) );
  AND2X2M U27 ( .A(\CARRYB[7][3] ), .B(\SUMB[7][4] ), .Y(n13) );
  AND2X2M U28 ( .A(\CARRYB[7][5] ), .B(\SUMB[7][6] ), .Y(n14) );
  AND2X2M U29 ( .A(\CARRYB[7][2] ), .B(\SUMB[7][3] ), .Y(n15) );
  AND2X2M U30 ( .A(\CARRYB[7][4] ), .B(\SUMB[7][5] ), .Y(n16) );
  XNOR2X2M U31 ( .A(\ab[1][6] ), .B(n24), .Y(\SUMB[1][6] ) );
  XNOR2X2M U32 ( .A(\ab[1][3] ), .B(n21), .Y(\SUMB[1][3] ) );
  XNOR2X2M U33 ( .A(\ab[1][4] ), .B(n22), .Y(\SUMB[1][4] ) );
  XNOR2X2M U34 ( .A(\ab[1][5] ), .B(n23), .Y(\SUMB[1][5] ) );
  XNOR2X2M U35 ( .A(\ab[1][1] ), .B(n19), .Y(\SUMB[1][1] ) );
  INVX2M U36 ( .A(A[6]), .Y(n26) );
  INVX2M U37 ( .A(A[1]), .Y(n31) );
  INVX2M U38 ( .A(A[7]), .Y(n25) );
  INVX2M U39 ( .A(A[3]), .Y(n29) );
  INVX2M U40 ( .A(A[2]), .Y(n30) );
  INVX2M U41 ( .A(A[4]), .Y(n28) );
  INVX2M U42 ( .A(A[5]), .Y(n27) );
  INVX2M U43 ( .A(A[0]), .Y(n32) );
  INVX2M U44 ( .A(B[6]), .Y(n34) );
  INVX2M U45 ( .A(B[1]), .Y(n39) );
  XNOR2X2M U46 ( .A(\ab[1][0] ), .B(n18), .Y(PRODUCT[1]) );
  INVX2M U47 ( .A(\ab[0][1] ), .Y(n18) );
  INVX2M U48 ( .A(B[0]), .Y(n40) );
  INVX2M U49 ( .A(B[2]), .Y(n38) );
  INVX2M U50 ( .A(B[3]), .Y(n37) );
  INVX2M U51 ( .A(B[5]), .Y(n35) );
  INVX2M U52 ( .A(B[4]), .Y(n36) );
  INVX2M U53 ( .A(B[7]), .Y(n33) );
  NOR2X1M U55 ( .A(n25), .B(n33), .Y(\ab[7][7] ) );
  NOR2X1M U56 ( .A(n25), .B(n34), .Y(\ab[7][6] ) );
  NOR2X1M U57 ( .A(n25), .B(n35), .Y(\ab[7][5] ) );
  NOR2X1M U58 ( .A(n25), .B(n36), .Y(\ab[7][4] ) );
  NOR2X1M U59 ( .A(n25), .B(n37), .Y(\ab[7][3] ) );
  NOR2X1M U60 ( .A(n25), .B(n38), .Y(\ab[7][2] ) );
  NOR2X1M U61 ( .A(n25), .B(n39), .Y(\ab[7][1] ) );
  NOR2X1M U62 ( .A(n25), .B(n40), .Y(\ab[7][0] ) );
  NOR2X1M U63 ( .A(n33), .B(n26), .Y(\ab[6][7] ) );
  NOR2X1M U64 ( .A(n34), .B(n26), .Y(\ab[6][6] ) );
  NOR2X1M U65 ( .A(n35), .B(n26), .Y(\ab[6][5] ) );
  NOR2X1M U66 ( .A(n36), .B(n26), .Y(\ab[6][4] ) );
  NOR2X1M U67 ( .A(n37), .B(n26), .Y(\ab[6][3] ) );
  NOR2X1M U68 ( .A(n38), .B(n26), .Y(\ab[6][2] ) );
  NOR2X1M U69 ( .A(n39), .B(n26), .Y(\ab[6][1] ) );
  NOR2X1M U70 ( .A(n40), .B(n26), .Y(\ab[6][0] ) );
  NOR2X1M U71 ( .A(n33), .B(n27), .Y(\ab[5][7] ) );
  NOR2X1M U72 ( .A(n34), .B(n27), .Y(\ab[5][6] ) );
  NOR2X1M U73 ( .A(n35), .B(n27), .Y(\ab[5][5] ) );
  NOR2X1M U74 ( .A(n36), .B(n27), .Y(\ab[5][4] ) );
  NOR2X1M U75 ( .A(n37), .B(n27), .Y(\ab[5][3] ) );
  NOR2X1M U76 ( .A(n38), .B(n27), .Y(\ab[5][2] ) );
  NOR2X1M U77 ( .A(n39), .B(n27), .Y(\ab[5][1] ) );
  NOR2X1M U78 ( .A(n40), .B(n27), .Y(\ab[5][0] ) );
  NOR2X1M U79 ( .A(n33), .B(n28), .Y(\ab[4][7] ) );
  NOR2X1M U80 ( .A(n34), .B(n28), .Y(\ab[4][6] ) );
  NOR2X1M U81 ( .A(n35), .B(n28), .Y(\ab[4][5] ) );
  NOR2X1M U82 ( .A(n36), .B(n28), .Y(\ab[4][4] ) );
  NOR2X1M U83 ( .A(n37), .B(n28), .Y(\ab[4][3] ) );
  NOR2X1M U84 ( .A(n38), .B(n28), .Y(\ab[4][2] ) );
  NOR2X1M U85 ( .A(n39), .B(n28), .Y(\ab[4][1] ) );
  NOR2X1M U86 ( .A(n40), .B(n28), .Y(\ab[4][0] ) );
  NOR2X1M U87 ( .A(n33), .B(n29), .Y(\ab[3][7] ) );
  NOR2X1M U88 ( .A(n34), .B(n29), .Y(\ab[3][6] ) );
  NOR2X1M U89 ( .A(n35), .B(n29), .Y(\ab[3][5] ) );
  NOR2X1M U90 ( .A(n36), .B(n29), .Y(\ab[3][4] ) );
  NOR2X1M U91 ( .A(n37), .B(n29), .Y(\ab[3][3] ) );
  NOR2X1M U92 ( .A(n38), .B(n29), .Y(\ab[3][2] ) );
  NOR2X1M U93 ( .A(n39), .B(n29), .Y(\ab[3][1] ) );
  NOR2X1M U94 ( .A(n40), .B(n29), .Y(\ab[3][0] ) );
  NOR2X1M U95 ( .A(n33), .B(n30), .Y(\ab[2][7] ) );
  NOR2X1M U96 ( .A(n34), .B(n30), .Y(\ab[2][6] ) );
  NOR2X1M U97 ( .A(n35), .B(n30), .Y(\ab[2][5] ) );
  NOR2X1M U98 ( .A(n36), .B(n30), .Y(\ab[2][4] ) );
  NOR2X1M U99 ( .A(n37), .B(n30), .Y(\ab[2][3] ) );
  NOR2X1M U100 ( .A(n38), .B(n30), .Y(\ab[2][2] ) );
  NOR2X1M U101 ( .A(n39), .B(n30), .Y(\ab[2][1] ) );
  NOR2X1M U102 ( .A(n40), .B(n30), .Y(\ab[2][0] ) );
  NOR2X1M U103 ( .A(n33), .B(n31), .Y(\ab[1][7] ) );
  NOR2X1M U104 ( .A(n34), .B(n31), .Y(\ab[1][6] ) );
  NOR2X1M U105 ( .A(n35), .B(n31), .Y(\ab[1][5] ) );
  NOR2X1M U106 ( .A(n36), .B(n31), .Y(\ab[1][4] ) );
  NOR2X1M U107 ( .A(n37), .B(n31), .Y(\ab[1][3] ) );
  NOR2X1M U108 ( .A(n38), .B(n31), .Y(\ab[1][2] ) );
  NOR2X1M U109 ( .A(n39), .B(n31), .Y(\ab[1][1] ) );
  NOR2X1M U110 ( .A(n40), .B(n31), .Y(\ab[1][0] ) );
  NOR2X1M U111 ( .A(n33), .B(n32), .Y(\ab[0][7] ) );
  NOR2X1M U112 ( .A(n34), .B(n32), .Y(\ab[0][6] ) );
  NOR2X1M U113 ( .A(n35), .B(n32), .Y(\ab[0][5] ) );
  NOR2X1M U114 ( .A(n36), .B(n32), .Y(\ab[0][4] ) );
  NOR2X1M U115 ( .A(n37), .B(n32), .Y(\ab[0][3] ) );
  NOR2X1M U116 ( .A(n38), .B(n32), .Y(\ab[0][2] ) );
  NOR2X1M U117 ( .A(n39), .B(n32), .Y(\ab[0][1] ) );
  NOR2X1M U118 ( .A(n40), .B(n32), .Y(PRODUCT[0]) );
  bit16_alu_DW01_add_1 FS_1 ( .A({1'b0, \A1[12] , \A1[11] , \A1[10] , \A1[9] , 
        \A1[8] , \A1[7] , \A1[6] , \SUMB[7][0] , \A1[4] , \A1[3] , \A1[2] , 
        \A1[1] , \A1[0] }), .B({n10, n14, n16, n13, n15, n12, n11, 1'b0, 1'b0, 
        1'b0, 1'b0, 1'b0, 1'b0, 1'b0}), .CI(1'b0), .SUM(PRODUCT[15:2]) );
endmodule


module bit16_alu_test_1 ( a, b, alu_fun, clk, rst_n, enable, alu_out, 
        out_valid, test_si, test_se );
  input [7:0] a;
  input [7:0] b;
  input [3:0] alu_fun;
  output [15:0] alu_out;
  input clk, rst_n, enable, test_si, test_se;
  output out_valid;
  wire   N92, N93, N94, N95, N96, N97, N98, N99, N100, N101, N102, N103, N104,
         N105, N106, N107, N108, N109, N110, N111, N112, N113, N114, N115,
         N116, N117, N118, N119, N120, N121, N122, N123, N124, N125, N126,
         N127, N128, N129, N130, N131, N132, N133, N158, N159, N160, N178, n10,
         n11, n12, n13, n14, n16, n18, n19, n21, n22, n24, n27, n28, n29, n30,
         n31, n33, n35, n36, n37, n38, n39, n41, n42, n43, n44, n45, n48, n49,
         n50, n51, n52, n53, n54, n55, n56, n58, n59, n62, n63, n64, n65, n66,
         n67, n70, n71, n72, n73, n74, n75, n78, n79, n80, n81, n82, n83, n86,
         n87, n88, n89, n90, n91, n92, n95, n96, n97, n98, n99, n101, n102,
         n104, n105, n106, n110, n111, n112, n113, n114, n115, n116, n117,
         n118, n119, n120, n121, n122, n124, n126, n128, n130, n132, n134,
         n136, n138, n140, n142, n144, n146, n148, n150, n152, n154, n4, n5,
         n6, n7, n8, n9, n15, n17, n20, n23, n25, n26, n32, n34, n40, n46, n47,
         n57, n60, n61, n68, n69, n76, n77, n84, n85, n93, n94, n100, n103,
         n107, n108, n109, n156, n157, n158, n159, n160, n161, n162, n163,
         n164, n165, n166, n167, n168, n169, n170, n171, n172, n173, n174,
         n175, n176, n177, n178, n179, n180, n181, n182, n183, n184, n185,
         n186, n187, n188;

  SDFFRQX2M out_valid_reg ( .D(N178), .SI(alu_out[15]), .SE(test_se), .CK(clk), 
        .RN(rst_n), .Q(out_valid) );
  SDFFRQX2M \alu_out_reg[7]  ( .D(n138), .SI(alu_out[6]), .SE(test_se), .CK(
        clk), .RN(rst_n), .Q(alu_out[7]) );
  SDFFRQX2M \alu_out_reg[6]  ( .D(n136), .SI(alu_out[5]), .SE(test_se), .CK(
        clk), .RN(rst_n), .Q(alu_out[6]) );
  SDFFRQX2M \alu_out_reg[5]  ( .D(n134), .SI(alu_out[4]), .SE(test_se), .CK(
        clk), .RN(rst_n), .Q(alu_out[5]) );
  SDFFRQX2M \alu_out_reg[4]  ( .D(n132), .SI(alu_out[3]), .SE(test_se), .CK(
        clk), .RN(rst_n), .Q(alu_out[4]) );
  SDFFRQX2M \alu_out_reg[3]  ( .D(n130), .SI(alu_out[2]), .SE(test_se), .CK(
        clk), .RN(rst_n), .Q(alu_out[3]) );
  SDFFRQX2M \alu_out_reg[2]  ( .D(n128), .SI(alu_out[1]), .SE(test_se), .CK(
        clk), .RN(rst_n), .Q(alu_out[2]) );
  SDFFRQX2M \alu_out_reg[1]  ( .D(n126), .SI(alu_out[0]), .SE(test_se), .CK(
        clk), .RN(rst_n), .Q(alu_out[1]) );
  SDFFRQX2M \alu_out_reg[0]  ( .D(n124), .SI(test_si), .SE(test_se), .CK(clk), 
        .RN(rst_n), .Q(alu_out[0]) );
  SDFFRQX2M \alu_out_reg[15]  ( .D(n154), .SI(alu_out[14]), .SE(test_se), .CK(
        clk), .RN(rst_n), .Q(alu_out[15]) );
  SDFFRQX2M \alu_out_reg[14]  ( .D(n152), .SI(alu_out[13]), .SE(test_se), .CK(
        clk), .RN(rst_n), .Q(alu_out[14]) );
  SDFFRQX2M \alu_out_reg[13]  ( .D(n150), .SI(alu_out[12]), .SE(test_se), .CK(
        clk), .RN(rst_n), .Q(alu_out[13]) );
  SDFFRQX2M \alu_out_reg[12]  ( .D(n148), .SI(alu_out[11]), .SE(test_se), .CK(
        clk), .RN(rst_n), .Q(alu_out[12]) );
  SDFFRQX2M \alu_out_reg[11]  ( .D(n146), .SI(alu_out[10]), .SE(test_se), .CK(
        clk), .RN(rst_n), .Q(alu_out[11]) );
  SDFFRQX2M \alu_out_reg[10]  ( .D(n144), .SI(alu_out[9]), .SE(test_se), .CK(
        clk), .RN(rst_n), .Q(alu_out[10]) );
  SDFFRQX2M \alu_out_reg[9]  ( .D(n142), .SI(alu_out[8]), .SE(test_se), .CK(
        clk), .RN(rst_n), .Q(alu_out[9]) );
  SDFFRQX1M \alu_out_reg[8]  ( .D(n140), .SI(alu_out[7]), .SE(test_se), .CK(
        clk), .RN(rst_n), .Q(alu_out[8]) );
  BUFX2M U4 ( .A(a[6]), .Y(n23) );
  BUFX2M U7 ( .A(a[1]), .Y(n8) );
  INVX2M U8 ( .A(enable), .Y(n188) );
  INVX2M U9 ( .A(n95), .Y(n169) );
  NOR2X2M U10 ( .A(n188), .B(n49), .Y(n95) );
  INVX2M U11 ( .A(n31), .Y(n168) );
  INVX2M U12 ( .A(n44), .Y(n166) );
  AOI22X1M U13 ( .A0(n175), .A1(n51), .B0(n171), .B1(n102), .Y(n49) );
  NOR3X2M U14 ( .A(n43), .B(n188), .C(n176), .Y(n90) );
  NOR2X2M U15 ( .A(n175), .B(n174), .Y(n102) );
  NAND2X2M U16 ( .A(n90), .B(n171), .Y(n31) );
  NAND2X2M U17 ( .A(enable), .B(n52), .Y(n30) );
  NAND2X2M U18 ( .A(n102), .B(n176), .Y(n106) );
  NAND2X2M U19 ( .A(n102), .B(n18), .Y(n44) );
  AND2X2M U20 ( .A(n114), .B(n176), .Y(n21) );
  INVX2M U21 ( .A(n24), .Y(n173) );
  INVX2M U22 ( .A(n4), .Y(n172) );
  AND2X2M U23 ( .A(n101), .B(n175), .Y(n114) );
  NOR3X2M U24 ( .A(n171), .B(alu_fun[0]), .C(n188), .Y(n18) );
  NAND4X2M U25 ( .A(enable), .B(alu_fun[3]), .C(n110), .D(n176), .Y(n24) );
  NOR2X2M U26 ( .A(alu_fun[2]), .B(alu_fun[1]), .Y(n110) );
  NOR3X2M U27 ( .A(alu_fun[2]), .B(alu_fun[3]), .C(n188), .Y(n101) );
  NOR3X2M U28 ( .A(n171), .B(alu_fun[2]), .C(n176), .Y(n51) );
  OAI2BB2X1M U29 ( .B0(alu_fun[3]), .B1(n43), .A0N(n175), .A1N(n51), .Y(n52)
         );
  OAI22X1M U30 ( .A0(n184), .A1(n44), .B0(n45), .B1(n187), .Y(n41) );
  AOI21X2M U31 ( .A0(n173), .A1(n183), .B0(n168), .Y(n45) );
  AND3X2M U32 ( .A(n101), .B(alu_fun[1]), .C(n176), .Y(n33) );
  AND3X2M U33 ( .A(n101), .B(alu_fun[0]), .C(alu_fun[1]), .Y(n29) );
  NAND2X2M U34 ( .A(alu_fun[2]), .B(n175), .Y(n43) );
  OAI21X2M U35 ( .A0(n183), .A1(n24), .B0(n172), .Y(n39) );
  INVX2M U36 ( .A(alu_fun[3]), .Y(n171) );
  INVX2M U37 ( .A(alu_fun[0]), .Y(n176) );
  INVX2M U38 ( .A(alu_fun[1]), .Y(n175) );
  AND2X2M U39 ( .A(n114), .B(alu_fun[0]), .Y(n22) );
  INVX2M U40 ( .A(alu_fun[2]), .Y(n174) );
  AND2X2M U41 ( .A(n90), .B(alu_fun[3]), .Y(n14) );
  NOR2X2M U42 ( .A(n122), .B(n188), .Y(N178) );
  AND4X2M U43 ( .A(n43), .B(n106), .C(alu_fun[2]), .D(n49), .Y(n122) );
  BUFX2M U44 ( .A(n27), .Y(n4) );
  NOR3X2M U45 ( .A(n188), .B(alu_fun[3]), .C(n106), .Y(n27) );
  AND4X2M U46 ( .A(N158), .B(n174), .C(n18), .D(alu_fun[1]), .Y(n16) );
  INVX2M U47 ( .A(n42), .Y(n167) );
  NAND3BX2M U48 ( .AN(n43), .B(n18), .C(N160), .Y(n42) );
  NAND4X2M U49 ( .A(n35), .B(n36), .C(n37), .D(n38), .Y(n126) );
  AOI211X2M U50 ( .A0(n39), .A1(n187), .B0(n41), .C0(n167), .Y(n38) );
  AOI222X1M U51 ( .A0(N102), .A1(n22), .B0(n9), .B1(n14), .C0(N93), .C1(n21), 
        .Y(n37) );
  AOI222X1M U52 ( .A0(n4), .A1(n183), .B0(enable), .B1(n48), .C0(N127), .C1(
        n29), .Y(n36) );
  NAND4X2M U53 ( .A(n86), .B(n87), .C(n88), .D(n89), .Y(n136) );
  AOI222X1M U54 ( .A0(n6), .A1(n91), .B0(N107), .B1(n22), .C0(n92), .C1(n163), 
        .Y(n88) );
  AOI222X1M U55 ( .A0(N98), .A1(n21), .B0(n20), .B1(n166), .C0(n25), .C1(n14), 
        .Y(n89) );
  AOI222X1M U56 ( .A0(N116), .A1(n33), .B0(N132), .B1(n29), .C0(n4), .C1(n178), 
        .Y(n87) );
  AOI21X2M U57 ( .A0(N109), .A1(n22), .B0(n95), .Y(n111) );
  INVX2M U58 ( .A(n6), .Y(n163) );
  AOI221XLM U59 ( .A0(n25), .A1(n173), .B0(n95), .B1(n177), .C0(n4), .Y(n105)
         );
  AOI221XLM U60 ( .A0(n173), .A1(n177), .B0(n25), .B1(n170), .C0(n168), .Y(
        n104) );
  INVX2M U61 ( .A(n30), .Y(n170) );
  OAI221X1M U62 ( .A0(n7), .A1(n169), .B0(n24), .B1(n184), .C0(n172), .Y(n19)
         );
  OAI221X1M U63 ( .A0(n9), .A1(n169), .B0(n24), .B1(n182), .C0(n172), .Y(n59)
         );
  OAI221X1M U64 ( .A0(n15), .A1(n169), .B0(n24), .B1(n181), .C0(n172), .Y(n67)
         );
  OAI221X1M U65 ( .A0(n17), .A1(n169), .B0(n24), .B1(n180), .C0(n172), .Y(n75)
         );
  OAI221X1M U66 ( .A0(n20), .A1(n169), .B0(n24), .B1(n179), .C0(n172), .Y(n83)
         );
  OAI221X1M U67 ( .A0(n23), .A1(n169), .B0(n24), .B1(n178), .C0(n172), .Y(n92)
         );
  OAI31X1M U68 ( .A0(n49), .A1(n5), .A2(n8), .B0(n50), .Y(n48) );
  AOI33X2M U69 ( .A0(n51), .A1(alu_fun[1]), .A2(N159), .B0(n8), .B1(n52), .B2(
        n5), .Y(n50) );
  OAI221X1M U70 ( .A0(n30), .A1(n182), .B0(n9), .B1(n24), .C0(n31), .Y(n58) );
  OAI221X1M U71 ( .A0(n30), .A1(n181), .B0(n15), .B1(n24), .C0(n31), .Y(n66)
         );
  OAI221X1M U72 ( .A0(n30), .A1(n180), .B0(n17), .B1(n24), .C0(n31), .Y(n74)
         );
  OAI221X1M U73 ( .A0(n30), .A1(n179), .B0(n20), .B1(n24), .C0(n31), .Y(n82)
         );
  OAI221X1M U74 ( .A0(n30), .A1(n178), .B0(n23), .B1(n24), .C0(n31), .Y(n91)
         );
  OAI221X1M U75 ( .A0(n184), .A1(n30), .B0(n7), .B1(n24), .C0(n31), .Y(n28) );
  INVX2M U76 ( .A(n26), .Y(n164) );
  INVX2M U77 ( .A(n76), .Y(n165) );
  INVX2M U78 ( .A(n25), .Y(n177) );
  INVX2M U79 ( .A(n8), .Y(n183) );
  INVX2M U80 ( .A(n7), .Y(n184) );
  INVX2M U81 ( .A(n23), .Y(n178) );
  INVX2M U82 ( .A(n15), .Y(n181) );
  INVX2M U83 ( .A(n9), .Y(n182) );
  INVX2M U84 ( .A(n17), .Y(n180) );
  INVX2M U85 ( .A(n20), .Y(n179) );
  INVX2M U86 ( .A(n5), .Y(n187) );
  AOI222X1M U87 ( .A0(alu_out[0]), .A1(n188), .B0(N110), .B1(n33), .C0(n168), 
        .C1(n7), .Y(n10) );
  AOI222X1M U88 ( .A0(alu_out[1]), .A1(n188), .B0(N111), .B1(n33), .C0(n168), 
        .C1(n8), .Y(n35) );
  NAND2X2M U89 ( .A(n117), .B(n111), .Y(n146) );
  AOI22X1M U90 ( .A0(N121), .A1(n33), .B0(alu_out[11]), .B1(n188), .Y(n117) );
  NAND2X2M U91 ( .A(n119), .B(n111), .Y(n150) );
  AOI22X1M U92 ( .A0(N123), .A1(n33), .B0(alu_out[13]), .B1(n188), .Y(n119) );
  AOI22X1M U93 ( .A0(n9), .A1(n168), .B0(alu_out[2]), .B1(n188), .Y(n53) );
  AOI22X1M U94 ( .A0(n15), .A1(n168), .B0(alu_out[3]), .B1(n188), .Y(n62) );
  AOI22X1M U95 ( .A0(n17), .A1(n168), .B0(alu_out[4]), .B1(n188), .Y(n70) );
  AOI22X1M U96 ( .A0(n20), .A1(n168), .B0(alu_out[5]), .B1(n188), .Y(n78) );
  AOI22X1M U97 ( .A0(n23), .A1(n168), .B0(alu_out[6]), .B1(n188), .Y(n86) );
  AOI22X1M U98 ( .A0(n25), .A1(n168), .B0(alu_out[7]), .B1(n188), .Y(n98) );
  NAND4X2M U99 ( .A(n10), .B(n11), .C(n12), .D(n13), .Y(n124) );
  AOI211X2M U100 ( .A0(n8), .A1(n14), .B0(n167), .C0(n16), .Y(n13) );
  AOI222X1M U101 ( .A0(n19), .A1(n160), .B0(N92), .B1(n21), .C0(N101), .C1(n22), .Y(n12) );
  AOI222X1M U102 ( .A0(n4), .A1(n184), .B0(b[0]), .B1(n28), .C0(N126), .C1(n29), .Y(n11) );
  NAND4X2M U103 ( .A(n53), .B(n54), .C(n55), .D(n56), .Y(n128) );
  AOI222X1M U104 ( .A0(b[2]), .A1(n58), .B0(N103), .B1(n22), .C0(n59), .C1(
        n161), .Y(n55) );
  AOI222X1M U105 ( .A0(N94), .A1(n21), .B0(n166), .B1(n8), .C0(n15), .C1(n14), 
        .Y(n56) );
  AOI222X1M U106 ( .A0(N112), .A1(n33), .B0(N128), .B1(n29), .C0(n4), .C1(n182), .Y(n54) );
  NAND4X2M U107 ( .A(n62), .B(n63), .C(n64), .D(n65), .Y(n130) );
  AOI222X1M U108 ( .A0(b[3]), .A1(n66), .B0(N104), .B1(n22), .C0(n67), .C1(
        n162), .Y(n64) );
  AOI222X1M U109 ( .A0(N95), .A1(n21), .B0(n9), .B1(n166), .C0(n17), .C1(n14), 
        .Y(n65) );
  AOI222X1M U110 ( .A0(N113), .A1(n33), .B0(N129), .B1(n29), .C0(n4), .C1(n181), .Y(n63) );
  NAND4X2M U111 ( .A(n70), .B(n71), .C(n72), .D(n73), .Y(n132) );
  AOI222X1M U112 ( .A0(b[4]), .A1(n74), .B0(N105), .B1(n22), .C0(n75), .C1(
        n186), .Y(n72) );
  AOI222X1M U113 ( .A0(N96), .A1(n21), .B0(n15), .B1(n166), .C0(n20), .C1(n14), 
        .Y(n73) );
  AOI222X1M U114 ( .A0(N114), .A1(n33), .B0(N130), .B1(n29), .C0(n4), .C1(n180), .Y(n71) );
  NAND4X2M U115 ( .A(n78), .B(n79), .C(n80), .D(n81), .Y(n134) );
  AOI222X1M U116 ( .A0(b[5]), .A1(n82), .B0(N106), .B1(n22), .C0(n83), .C1(
        n185), .Y(n80) );
  AOI222X1M U117 ( .A0(N97), .A1(n21), .B0(n17), .B1(n166), .C0(n23), .C1(n14), 
        .Y(n81) );
  AOI222X1M U118 ( .A0(N115), .A1(n33), .B0(N131), .B1(n29), .C0(n4), .C1(n179), .Y(n79) );
  NAND2X2M U119 ( .A(n115), .B(n111), .Y(n142) );
  AOI22X1M U120 ( .A0(N119), .A1(n33), .B0(alu_out[9]), .B1(n188), .Y(n115) );
  NAND2X2M U121 ( .A(n116), .B(n111), .Y(n144) );
  AOI22X1M U122 ( .A0(N120), .A1(n33), .B0(alu_out[10]), .B1(n188), .Y(n116)
         );
  NAND2X2M U123 ( .A(n118), .B(n111), .Y(n148) );
  AOI22X1M U124 ( .A0(N122), .A1(n33), .B0(alu_out[12]), .B1(n188), .Y(n118)
         );
  NAND2X2M U125 ( .A(n120), .B(n111), .Y(n152) );
  AOI22X1M U126 ( .A0(N124), .A1(n33), .B0(alu_out[14]), .B1(n188), .Y(n120)
         );
  NAND2X2M U127 ( .A(n121), .B(n111), .Y(n154) );
  AOI22X1M U128 ( .A0(N125), .A1(n33), .B0(alu_out[15]), .B1(n188), .Y(n121)
         );
  NAND4BX1M U129 ( .AN(n96), .B(n97), .C(n98), .D(n99), .Y(n138) );
  OAI2B2X1M U130 ( .A1N(b[7]), .A0(n104), .B0(b[7]), .B1(n105), .Y(n96) );
  AOI222X1M U131 ( .A0(N117), .A1(n33), .B0(N133), .B1(n29), .C0(n4), .C1(n177), .Y(n99) );
  AOI222X1M U132 ( .A0(N108), .A1(n22), .B0(n23), .B1(n166), .C0(N99), .C1(n21), .Y(n97) );
  OAI2B11X2M U133 ( .A1N(alu_out[8]), .A0(enable), .B0(n111), .C0(n112), .Y(
        n140) );
  AOI221XLM U134 ( .A0(N118), .A1(n33), .B0(N100), .B1(n21), .C0(n113), .Y(
        n112) );
  NOR3X2M U135 ( .A(n177), .B(n188), .C(n106), .Y(n113) );
  BUFX2M U153 ( .A(a[7]), .Y(n25) );
  BUFX2M U154 ( .A(a[3]), .Y(n15) );
  BUFX2M U155 ( .A(a[2]), .Y(n9) );
  BUFX2M U156 ( .A(a[4]), .Y(n17) );
  BUFX2M U157 ( .A(a[5]), .Y(n20) );
  BUFX2M U158 ( .A(a[0]), .Y(n7) );
  BUFX2M U159 ( .A(b[6]), .Y(n6) );
  BUFX2M U160 ( .A(b[1]), .Y(n5) );
  INVX2M U161 ( .A(b[0]), .Y(n160) );
  INVX2M U162 ( .A(b[2]), .Y(n161) );
  INVX2M U163 ( .A(b[3]), .Y(n162) );
  INVX2M U164 ( .A(b[4]), .Y(n186) );
  INVX2M U165 ( .A(b[5]), .Y(n185) );
  NOR2X1M U166 ( .A(n177), .B(b[7]), .Y(n156) );
  NAND2BX1M U167 ( .AN(b[4]), .B(n17), .Y(n93) );
  NAND2BX1M U168 ( .AN(n17), .B(b[4]), .Y(n46) );
  CLKNAND2X2M U169 ( .A(n93), .B(n46), .Y(n100) );
  NOR2X1M U170 ( .A(n162), .B(n15), .Y(n77) );
  NOR2X1M U171 ( .A(n161), .B(n9), .Y(n40) );
  NOR2X1M U172 ( .A(n160), .B(n7), .Y(n26) );
  CLKNAND2X2M U173 ( .A(n9), .B(n161), .Y(n85) );
  NAND2BX1M U174 ( .AN(n40), .B(n85), .Y(n68) );
  AOI21X1M U175 ( .A0(n26), .A1(n183), .B0(n5), .Y(n32) );
  AOI211X1M U176 ( .A0(n8), .A1(n164), .B0(n68), .C0(n32), .Y(n34) );
  CLKNAND2X2M U177 ( .A(n15), .B(n162), .Y(n84) );
  OAI31X1M U178 ( .A0(n77), .A1(n40), .A2(n34), .B0(n84), .Y(n47) );
  NAND2BX1M U179 ( .AN(n20), .B(b[5]), .Y(n108) );
  OAI211X1M U180 ( .A0(n100), .A1(n47), .B0(n46), .C0(n108), .Y(n57) );
  NAND2BX1M U181 ( .AN(b[5]), .B(n20), .Y(n94) );
  XNOR2X1M U182 ( .A(n23), .B(n6), .Y(n107) );
  AOI32X1M U183 ( .A0(n57), .A1(n94), .A2(n107), .B0(n6), .B1(n178), .Y(n60)
         );
  CLKNAND2X2M U184 ( .A(b[7]), .B(n177), .Y(n157) );
  OAI21X1M U185 ( .A0(n156), .A1(n60), .B0(n157), .Y(N160) );
  CLKNAND2X2M U186 ( .A(n7), .B(n160), .Y(n69) );
  OA21X1M U187 ( .A0(n69), .A1(n183), .B0(n5), .Y(n61) );
  AOI211X1M U188 ( .A0(n69), .A1(n183), .B0(n68), .C0(n61), .Y(n76) );
  AOI31X1M U189 ( .A0(n165), .A1(n85), .A2(n84), .B0(n77), .Y(n103) );
  OAI2B11X1M U190 ( .A1N(n103), .A0(n100), .B0(n94), .C0(n93), .Y(n109) );
  AOI32X1M U191 ( .A0(n109), .A1(n108), .A2(n107), .B0(n23), .B1(n163), .Y(
        n158) );
  AOI2B1X1M U192 ( .A1N(n158), .A0(n157), .B0(n156), .Y(n159) );
  CLKINVX1M U193 ( .A(n159), .Y(N159) );
  NOR2X1M U194 ( .A(N160), .B(N159), .Y(N158) );
  bit16_alu_DW_div_uns_0 div_30 ( .a({n25, n23, n20, n17, n15, n9, n8, n7}), 
        .b({b[7], n6, b[5:2], n5, b[0]}), .quotient({N133, N132, N131, N130, 
        N129, N128, N127, N126}) );
  bit16_alu_DW01_sub_0 sub_24 ( .A({1'b0, n25, n23, n20, n17, n15, n9, n8, n7}), .B({1'b0, b[7], n6, b[5:2], n5, b[0]}), .CI(1'b0), .DIFF({N109, N108, N107, 
        N106, N105, N104, N103, N102, N101}) );
  bit16_alu_DW01_add_0 add_21 ( .A({1'b0, n25, n23, n20, n17, n15, n9, n8, n7}), .B({1'b0, b[7], n6, b[5:2], n5, b[0]}), .CI(1'b0), .SUM({N100, N99, N98, N97, 
        N96, N95, N94, N93, N92}) );
  bit16_alu_DW02_mult_0 mult_27 ( .A({n25, n23, n20, n17, n15, n9, n8, n7}), 
        .B({b[7], n6, b[5:2], n5, b[0]}), .TC(1'b0), .PRODUCT({N125, N124, 
        N123, N122, N121, N120, N119, N118, N117, N116, N115, N114, N113, N112, 
        N111, N110}) );
endmodule


module grey_code_gen_0 ( binary_data, grey_coded_data );
  input [4:0] binary_data;
  output [4:0] grey_coded_data;


  CLKXOR2X2M U1 ( .A(binary_data[1]), .B(binary_data[0]), .Y(
        grey_coded_data[0]) );
  CLKXOR2X2M U2 ( .A(binary_data[2]), .B(binary_data[1]), .Y(
        grey_coded_data[1]) );
  CLKXOR2X2M U3 ( .A(binary_data[3]), .B(binary_data[2]), .Y(
        grey_coded_data[2]) );
  CLKXOR2X2M U4 ( .A(binary_data[4]), .B(binary_data[3]), .Y(
        grey_coded_data[3]) );
  BUFX2M U5 ( .A(binary_data[4]), .Y(grey_coded_data[4]) );
endmodule


module full_gen_test_1 ( sync_grey_coded_rd_ptr, w_clk, w_rst_n, w_inc, 
        wr_ptr_grey_coded, w_address, full_flag, test_si, test_so, test_se );
  input [4:0] sync_grey_coded_rd_ptr;
  output [4:0] wr_ptr_grey_coded;
  output [3:0] w_address;
  input w_clk, w_rst_n, w_inc, test_si, test_se;
  output full_flag, test_so;
  wire   N11, N12, N13, N14, n11, n12, n13, n14, n15, n16, n17, n18, n19, n20,
         n21, n22, n23, n24, n25, n26, n27, n28, n29, n30, \add_21/carry[4] ,
         \add_21/carry[3] , \add_21/carry[2] , n10;
  wire   [4:0] wr_ptr;
  assign test_so = wr_ptr[4];

  SDFFRQX2M \w_address_reg[3]  ( .D(n25), .SI(w_address[2]), .SE(test_se), 
        .CK(w_clk), .RN(w_rst_n), .Q(w_address[3]) );
  SDFFRQX2M \w_address_reg[0]  ( .D(n28), .SI(test_si), .SE(test_se), .CK(
        w_clk), .RN(w_rst_n), .Q(w_address[0]) );
  SDFFRQX2M \w_address_reg[2]  ( .D(n26), .SI(w_address[1]), .SE(test_se), 
        .CK(w_clk), .RN(w_rst_n), .Q(w_address[2]) );
  SDFFRQX2M \w_address_reg[1]  ( .D(n27), .SI(w_address[0]), .SE(test_se), 
        .CK(w_clk), .RN(w_rst_n), .Q(w_address[1]) );
  SDFFRQX2M \wr_ptr_reg[4]  ( .D(n29), .SI(wr_ptr[3]), .SE(test_se), .CK(w_clk), .RN(w_rst_n), .Q(wr_ptr[4]) );
  SDFFRQX2M \wr_ptr_reg[0]  ( .D(n30), .SI(w_address[3]), .SE(test_se), .CK(
        w_clk), .RN(w_rst_n), .Q(wr_ptr[0]) );
  SDFFRQX2M \wr_ptr_reg[3]  ( .D(n22), .SI(wr_ptr[2]), .SE(test_se), .CK(w_clk), .RN(w_rst_n), .Q(wr_ptr[3]) );
  SDFFRQX2M \wr_ptr_reg[2]  ( .D(n23), .SI(wr_ptr[1]), .SE(test_se), .CK(w_clk), .RN(w_rst_n), .Q(wr_ptr[2]) );
  SDFFRQX2M \wr_ptr_reg[1]  ( .D(n24), .SI(wr_ptr[0]), .SE(test_se), .CK(w_clk), .RN(w_rst_n), .Q(wr_ptr[1]) );
  INVX2M U12 ( .A(n11), .Y(n10) );
  NAND2X2M U13 ( .A(w_inc), .B(n15), .Y(n11) );
  INVX2M U14 ( .A(n15), .Y(full_flag) );
  XNOR2X2M U15 ( .A(w_address[2]), .B(n13), .Y(n26) );
  NAND4X2M U16 ( .A(n16), .B(n17), .C(n18), .D(n19), .Y(n15) );
  XNOR2X2M U17 ( .A(wr_ptr_grey_coded[0]), .B(sync_grey_coded_rd_ptr[0]), .Y(
        n16) );
  XNOR2X2M U18 ( .A(wr_ptr_grey_coded[1]), .B(sync_grey_coded_rd_ptr[1]), .Y(
        n17) );
  XNOR2X2M U19 ( .A(wr_ptr_grey_coded[2]), .B(sync_grey_coded_rd_ptr[2]), .Y(
        n19) );
  NAND2X2M U20 ( .A(w_address[1]), .B(n14), .Y(n13) );
  NOR2X2M U21 ( .A(n20), .B(n21), .Y(n18) );
  XNOR2X2M U22 ( .A(wr_ptr_grey_coded[4]), .B(sync_grey_coded_rd_ptr[4]), .Y(
        n20) );
  XNOR2X2M U23 ( .A(wr_ptr_grey_coded[3]), .B(sync_grey_coded_rd_ptr[3]), .Y(
        n21) );
  AND2X2M U24 ( .A(w_address[0]), .B(n10), .Y(n14) );
  AO22X1M U25 ( .A0(N11), .A1(n10), .B0(wr_ptr[1]), .B1(n11), .Y(n24) );
  AO22X1M U26 ( .A0(N12), .A1(n10), .B0(wr_ptr[2]), .B1(n11), .Y(n23) );
  AO22X1M U27 ( .A0(N13), .A1(n10), .B0(wr_ptr[3]), .B1(n11), .Y(n22) );
  AO22X1M U28 ( .A0(N14), .A1(n10), .B0(wr_ptr[4]), .B1(n11), .Y(n29) );
  AO2B2X2M U29 ( .B0(wr_ptr[0]), .B1(n11), .A0(n10), .A1N(wr_ptr[0]), .Y(n30)
         );
  CLKXOR2X2M U30 ( .A(w_address[3]), .B(n12), .Y(n25) );
  NOR2BX2M U31 ( .AN(w_address[2]), .B(n13), .Y(n12) );
  CLKXOR2X2M U32 ( .A(w_address[1]), .B(n14), .Y(n27) );
  CLKXOR2X2M U33 ( .A(w_address[0]), .B(n10), .Y(n28) );
  ADDHX1M U34 ( .A(wr_ptr[1]), .B(wr_ptr[0]), .CO(\add_21/carry[2] ), .S(N11)
         );
  ADDHX1M U35 ( .A(wr_ptr[2]), .B(\add_21/carry[2] ), .CO(\add_21/carry[3] ), 
        .S(N12) );
  ADDHX1M U36 ( .A(wr_ptr[3]), .B(\add_21/carry[3] ), .CO(\add_21/carry[4] ), 
        .S(N13) );
  CLKXOR2X2M U37 ( .A(\add_21/carry[4] ), .B(wr_ptr[4]), .Y(N14) );
  grey_code_gen_0 wr_ptr_gc ( .binary_data(wr_ptr), .grey_coded_data(
        wr_ptr_grey_coded) );
endmodule


module fifo_memory_test_1 ( w_clk, w_rst_n, rd_clk, rd_rst_n, w_address, 
        rd_address, w_inc, full_flag, w_data, rd_data, test_si3, test_si2, 
        test_si1, test_so3, test_so2, test_so1, test_se );
  input [3:0] w_address;
  input [3:0] rd_address;
  input [7:0] w_data;
  output [7:0] rd_data;
  input w_clk, w_rst_n, rd_clk, rd_rst_n, w_inc, full_flag, test_si3, test_si2,
         test_si1, test_se;
  output test_so3, test_so2, test_so1;
  wire   N9, N10, N11, N12, \fifo[0][7] , \fifo[0][6] , \fifo[0][5] ,
         \fifo[0][4] , \fifo[0][3] , \fifo[0][2] , \fifo[0][1] , \fifo[0][0] ,
         \fifo[1][7] , \fifo[1][6] , \fifo[1][5] , \fifo[1][4] , \fifo[1][3] ,
         \fifo[1][2] , \fifo[1][1] , \fifo[1][0] , \fifo[2][7] , \fifo[2][6] ,
         \fifo[2][5] , \fifo[2][4] , \fifo[2][3] , \fifo[2][2] , \fifo[2][1] ,
         \fifo[2][0] , \fifo[3][7] , \fifo[3][6] , \fifo[3][5] , \fifo[3][4] ,
         \fifo[3][3] , \fifo[3][2] , \fifo[3][1] , \fifo[3][0] , \fifo[4][7] ,
         \fifo[4][6] , \fifo[4][5] , \fifo[4][4] , \fifo[4][3] , \fifo[4][2] ,
         \fifo[4][1] , \fifo[4][0] , \fifo[5][7] , \fifo[5][6] , \fifo[5][5] ,
         \fifo[5][4] , \fifo[5][3] , \fifo[5][2] , \fifo[5][1] , \fifo[5][0] ,
         \fifo[6][7] , \fifo[6][6] , \fifo[6][5] , \fifo[6][4] , \fifo[6][3] ,
         \fifo[6][2] , \fifo[6][1] , \fifo[6][0] , \fifo[7][7] , \fifo[7][6] ,
         \fifo[7][5] , \fifo[7][4] , \fifo[7][3] , \fifo[7][2] , \fifo[7][1] ,
         \fifo[7][0] , \fifo[8][7] , \fifo[8][6] , \fifo[8][5] , \fifo[8][4] ,
         \fifo[8][3] , \fifo[8][2] , \fifo[8][1] , \fifo[8][0] , \fifo[9][7] ,
         \fifo[9][6] , \fifo[9][5] , \fifo[9][4] , \fifo[9][3] , \fifo[9][2] ,
         \fifo[9][1] , \fifo[9][0] , \fifo[10][7] , \fifo[10][6] ,
         \fifo[10][5] , \fifo[10][4] , \fifo[10][3] , \fifo[10][2] ,
         \fifo[10][1] , \fifo[10][0] , \fifo[11][7] , \fifo[11][6] ,
         \fifo[11][5] , \fifo[11][4] , \fifo[11][3] , \fifo[11][2] ,
         \fifo[11][1] , \fifo[11][0] , \fifo[12][7] , \fifo[12][6] ,
         \fifo[12][5] , \fifo[12][4] , \fifo[12][3] , \fifo[12][2] ,
         \fifo[12][1] , \fifo[12][0] , \fifo[13][7] , \fifo[13][6] ,
         \fifo[13][5] , \fifo[13][4] , \fifo[13][3] , \fifo[13][2] ,
         \fifo[13][1] , \fifo[13][0] , \fifo[14][7] , \fifo[14][6] ,
         \fifo[14][5] , \fifo[14][4] , \fifo[14][3] , \fifo[14][2] ,
         \fifo[14][1] , \fifo[14][0] , \fifo[15][7] , \fifo[15][6] ,
         \fifo[15][5] , \fifo[15][4] , \fifo[15][3] , \fifo[15][2] ,
         \fifo[15][1] , \fifo[15][0] , n140, n141, n142, n143, n144, n145,
         n146, n147, n148, n149, n150, n151, n152, n153, n154, n155, n156,
         n157, n158, n159, n160, n161, n162, n163, n164, n165, n166, n167,
         n168, n169, n170, n171, n172, n173, n174, n175, n176, n177, n178,
         n179, n180, n181, n182, n183, n184, n185, n186, n187, n188, n189,
         n190, n191, n192, n193, n194, n195, n196, n197, n198, n199, n200,
         n201, n202, n203, n204, n205, n206, n207, n208, n209, n210, n211,
         n212, n213, n214, n215, n216, n217, n218, n219, n220, n221, n222,
         n223, n224, n225, n226, n227, n228, n229, n230, n231, n232, n233,
         n234, n235, n236, n237, n238, n239, n240, n241, n242, n243, n244,
         n245, n246, n247, n248, n249, n250, n251, n252, n253, n254, n255,
         n256, n257, n258, n259, n260, n261, n262, n263, n264, n265, n266,
         n267, n268, n269, n270, n271, n272, n273, n274, n275, n276, n277,
         n278, n279, n280, n281, n282, n283, n284, n285, n286, n287, n288,
         n289, n290, n291, n292, n293, n294, n129, n130, n131, n132, n133,
         n134, n135, n136, n137, n138, n139, n295, n296, n297, n298, n299,
         n300, n301, n302, n303, n304, n305, n306, n307, n308, n309, n310,
         n311, n312, n313, n314, n315, n316, n317, n318, n319, n320, n321,
         n322, n323, n324, n325, n326, n327, n328, n329, n330, n331, n332,
         n333, n334, n335, n336, n337, n338, n339, n340, n341, n342, n343,
         n344, n345, n346, n347, n348, n349, n350, n355, n356, n357, n358,
         n359, n360, n361, n362;
  assign N9 = rd_address[0];
  assign N10 = rd_address[1];
  assign N11 = rd_address[2];
  assign N12 = rd_address[3];
  assign test_so1 = \fifo[5][0] ;
  assign test_so3 = \fifo[15][7] ;
  assign test_so2 = \fifo[15][2] ;

  SDFFRQX2M \fifo_reg[1][7]  ( .D(n286), .SI(\fifo[1][6] ), .SE(n355), .CK(
        w_clk), .RN(n325), .Q(\fifo[1][7] ) );
  SDFFRQX2M \fifo_reg[1][6]  ( .D(n285), .SI(\fifo[1][5] ), .SE(n358), .CK(
        w_clk), .RN(n325), .Q(\fifo[1][6] ) );
  SDFFRQX2M \fifo_reg[1][5]  ( .D(n284), .SI(\fifo[1][4] ), .SE(n357), .CK(
        w_clk), .RN(n325), .Q(\fifo[1][5] ) );
  SDFFRQX2M \fifo_reg[1][4]  ( .D(n283), .SI(\fifo[1][3] ), .SE(n356), .CK(
        w_clk), .RN(n325), .Q(\fifo[1][4] ) );
  SDFFRQX2M \fifo_reg[1][3]  ( .D(n282), .SI(\fifo[1][2] ), .SE(n355), .CK(
        w_clk), .RN(n326), .Q(\fifo[1][3] ) );
  SDFFRQX2M \fifo_reg[1][2]  ( .D(n281), .SI(\fifo[1][1] ), .SE(n358), .CK(
        w_clk), .RN(n326), .Q(\fifo[1][2] ) );
  SDFFRQX2M \fifo_reg[1][1]  ( .D(n280), .SI(\fifo[1][0] ), .SE(n357), .CK(
        w_clk), .RN(n326), .Q(\fifo[1][1] ) );
  SDFFRQX2M \fifo_reg[1][0]  ( .D(n279), .SI(\fifo[0][7] ), .SE(n356), .CK(
        w_clk), .RN(n326), .Q(\fifo[1][0] ) );
  SDFFRQX2M \fifo_reg[5][7]  ( .D(n254), .SI(\fifo[5][6] ), .SE(n355), .CK(
        w_clk), .RN(n328), .Q(\fifo[5][7] ) );
  SDFFRQX2M \fifo_reg[5][6]  ( .D(n253), .SI(\fifo[5][5] ), .SE(n358), .CK(
        w_clk), .RN(n328), .Q(\fifo[5][6] ) );
  SDFFRQX2M \fifo_reg[5][5]  ( .D(n252), .SI(\fifo[5][4] ), .SE(n357), .CK(
        w_clk), .RN(n328), .Q(\fifo[5][5] ) );
  SDFFRQX2M \fifo_reg[5][4]  ( .D(n251), .SI(\fifo[5][3] ), .SE(n356), .CK(
        w_clk), .RN(n328), .Q(\fifo[5][4] ) );
  SDFFRQX2M \fifo_reg[5][3]  ( .D(n250), .SI(\fifo[5][2] ), .SE(n355), .CK(
        w_clk), .RN(n328), .Q(\fifo[5][3] ) );
  SDFFRQX2M \fifo_reg[5][2]  ( .D(n249), .SI(\fifo[5][1] ), .SE(n358), .CK(
        w_clk), .RN(n328), .Q(\fifo[5][2] ) );
  SDFFRQX2M \fifo_reg[5][1]  ( .D(n248), .SI(test_si2), .SE(n357), .CK(w_clk), 
        .RN(n328), .Q(\fifo[5][1] ) );
  SDFFRQX2M \fifo_reg[9][7]  ( .D(n222), .SI(\fifo[9][6] ), .SE(n355), .CK(
        w_clk), .RN(n331), .Q(\fifo[9][7] ) );
  SDFFRQX2M \fifo_reg[9][6]  ( .D(n221), .SI(\fifo[9][5] ), .SE(n358), .CK(
        w_clk), .RN(n331), .Q(\fifo[9][6] ) );
  SDFFRQX2M \fifo_reg[9][5]  ( .D(n220), .SI(\fifo[9][4] ), .SE(n357), .CK(
        w_clk), .RN(n331), .Q(\fifo[9][5] ) );
  SDFFRQX2M \fifo_reg[9][4]  ( .D(n219), .SI(\fifo[9][3] ), .SE(n356), .CK(
        w_clk), .RN(n331), .Q(\fifo[9][4] ) );
  SDFFRQX2M \fifo_reg[9][3]  ( .D(n218), .SI(\fifo[9][2] ), .SE(n355), .CK(
        w_clk), .RN(n331), .Q(\fifo[9][3] ) );
  SDFFRQX2M \fifo_reg[9][2]  ( .D(n217), .SI(\fifo[9][1] ), .SE(n358), .CK(
        w_clk), .RN(n331), .Q(\fifo[9][2] ) );
  SDFFRQX2M \fifo_reg[9][1]  ( .D(n216), .SI(\fifo[9][0] ), .SE(n357), .CK(
        w_clk), .RN(n331), .Q(\fifo[9][1] ) );
  SDFFRQX2M \fifo_reg[9][0]  ( .D(n215), .SI(\fifo[8][7] ), .SE(n356), .CK(
        w_clk), .RN(n331), .Q(\fifo[9][0] ) );
  SDFFRQX2M \fifo_reg[13][7]  ( .D(n190), .SI(\fifo[13][6] ), .SE(n355), .CK(
        w_clk), .RN(n333), .Q(\fifo[13][7] ) );
  SDFFRQX2M \fifo_reg[13][6]  ( .D(n189), .SI(\fifo[13][5] ), .SE(n358), .CK(
        w_clk), .RN(n333), .Q(\fifo[13][6] ) );
  SDFFRQX2M \fifo_reg[13][5]  ( .D(n188), .SI(\fifo[13][4] ), .SE(n357), .CK(
        w_clk), .RN(n333), .Q(\fifo[13][5] ) );
  SDFFRQX2M \fifo_reg[13][4]  ( .D(n187), .SI(\fifo[13][3] ), .SE(n356), .CK(
        w_clk), .RN(n333), .Q(\fifo[13][4] ) );
  SDFFRQX2M \fifo_reg[13][3]  ( .D(n186), .SI(\fifo[13][2] ), .SE(n355), .CK(
        w_clk), .RN(n334), .Q(\fifo[13][3] ) );
  SDFFRQX2M \fifo_reg[13][2]  ( .D(n185), .SI(\fifo[13][1] ), .SE(n358), .CK(
        w_clk), .RN(n334), .Q(\fifo[13][2] ) );
  SDFFRQX2M \fifo_reg[13][1]  ( .D(n184), .SI(\fifo[13][0] ), .SE(n357), .CK(
        w_clk), .RN(n334), .Q(\fifo[13][1] ) );
  SDFFRQX2M \fifo_reg[13][0]  ( .D(n183), .SI(\fifo[12][7] ), .SE(n356), .CK(
        w_clk), .RN(n334), .Q(\fifo[13][0] ) );
  SDFFRQX2M \fifo_reg[3][7]  ( .D(n270), .SI(\fifo[3][6] ), .SE(n355), .CK(
        w_clk), .RN(n327), .Q(\fifo[3][7] ) );
  SDFFRQX2M \fifo_reg[3][6]  ( .D(n269), .SI(\fifo[3][5] ), .SE(n358), .CK(
        w_clk), .RN(n327), .Q(\fifo[3][6] ) );
  SDFFRQX2M \fifo_reg[3][5]  ( .D(n268), .SI(\fifo[3][4] ), .SE(n357), .CK(
        w_clk), .RN(n327), .Q(\fifo[3][5] ) );
  SDFFRQX2M \fifo_reg[3][4]  ( .D(n267), .SI(\fifo[3][3] ), .SE(n356), .CK(
        w_clk), .RN(n327), .Q(\fifo[3][4] ) );
  SDFFRQX2M \fifo_reg[3][3]  ( .D(n266), .SI(\fifo[3][2] ), .SE(n355), .CK(
        w_clk), .RN(n327), .Q(\fifo[3][3] ) );
  SDFFRQX2M \fifo_reg[3][2]  ( .D(n265), .SI(\fifo[3][1] ), .SE(n358), .CK(
        w_clk), .RN(n327), .Q(\fifo[3][2] ) );
  SDFFRQX2M \fifo_reg[3][1]  ( .D(n264), .SI(\fifo[3][0] ), .SE(n357), .CK(
        w_clk), .RN(n327), .Q(\fifo[3][1] ) );
  SDFFRQX2M \fifo_reg[3][0]  ( .D(n263), .SI(\fifo[2][7] ), .SE(n356), .CK(
        w_clk), .RN(n327), .Q(\fifo[3][0] ) );
  SDFFRQX2M \fifo_reg[7][7]  ( .D(n238), .SI(\fifo[7][6] ), .SE(n355), .CK(
        w_clk), .RN(n329), .Q(\fifo[7][7] ) );
  SDFFRQX2M \fifo_reg[7][6]  ( .D(n237), .SI(\fifo[7][5] ), .SE(n358), .CK(
        w_clk), .RN(n329), .Q(\fifo[7][6] ) );
  SDFFRQX2M \fifo_reg[7][5]  ( .D(n236), .SI(\fifo[7][4] ), .SE(n357), .CK(
        w_clk), .RN(n329), .Q(\fifo[7][5] ) );
  SDFFRQX2M \fifo_reg[7][4]  ( .D(n235), .SI(\fifo[7][3] ), .SE(n356), .CK(
        w_clk), .RN(n329), .Q(\fifo[7][4] ) );
  SDFFRQX2M \fifo_reg[7][3]  ( .D(n234), .SI(\fifo[7][2] ), .SE(n355), .CK(
        w_clk), .RN(n330), .Q(\fifo[7][3] ) );
  SDFFRQX2M \fifo_reg[7][2]  ( .D(n233), .SI(\fifo[7][1] ), .SE(n358), .CK(
        w_clk), .RN(n330), .Q(\fifo[7][2] ) );
  SDFFRQX2M \fifo_reg[7][1]  ( .D(n232), .SI(\fifo[7][0] ), .SE(n357), .CK(
        w_clk), .RN(n330), .Q(\fifo[7][1] ) );
  SDFFRQX2M \fifo_reg[7][0]  ( .D(n231), .SI(\fifo[6][7] ), .SE(n356), .CK(
        w_clk), .RN(n330), .Q(\fifo[7][0] ) );
  SDFFRQX2M \fifo_reg[11][7]  ( .D(n206), .SI(\fifo[11][6] ), .SE(n355), .CK(
        w_clk), .RN(n332), .Q(\fifo[11][7] ) );
  SDFFRQX2M \fifo_reg[11][6]  ( .D(n205), .SI(\fifo[11][5] ), .SE(n358), .CK(
        w_clk), .RN(n332), .Q(\fifo[11][6] ) );
  SDFFRQX2M \fifo_reg[11][5]  ( .D(n204), .SI(\fifo[11][4] ), .SE(n357), .CK(
        w_clk), .RN(n332), .Q(\fifo[11][5] ) );
  SDFFRQX2M \fifo_reg[11][4]  ( .D(n203), .SI(\fifo[11][3] ), .SE(n356), .CK(
        w_clk), .RN(n332), .Q(\fifo[11][4] ) );
  SDFFRQX2M \fifo_reg[11][3]  ( .D(n202), .SI(\fifo[11][2] ), .SE(n355), .CK(
        w_clk), .RN(n332), .Q(\fifo[11][3] ) );
  SDFFRQX2M \fifo_reg[11][2]  ( .D(n201), .SI(\fifo[11][1] ), .SE(n358), .CK(
        w_clk), .RN(n332), .Q(\fifo[11][2] ) );
  SDFFRQX2M \fifo_reg[11][1]  ( .D(n200), .SI(\fifo[11][0] ), .SE(n357), .CK(
        w_clk), .RN(n332), .Q(\fifo[11][1] ) );
  SDFFRQX2M \fifo_reg[11][0]  ( .D(n199), .SI(\fifo[10][7] ), .SE(n356), .CK(
        w_clk), .RN(n332), .Q(\fifo[11][0] ) );
  SDFFRQX2M \fifo_reg[15][7]  ( .D(n174), .SI(\fifo[15][6] ), .SE(n355), .CK(
        w_clk), .RN(n335), .Q(\fifo[15][7] ) );
  SDFFRQX2M \fifo_reg[15][6]  ( .D(n173), .SI(\fifo[15][5] ), .SE(n358), .CK(
        w_clk), .RN(n335), .Q(\fifo[15][6] ) );
  SDFFRQX2M \fifo_reg[15][5]  ( .D(n172), .SI(\fifo[15][4] ), .SE(n357), .CK(
        w_clk), .RN(n335), .Q(\fifo[15][5] ) );
  SDFFRQX2M \fifo_reg[15][4]  ( .D(n171), .SI(\fifo[15][3] ), .SE(n356), .CK(
        w_clk), .RN(n335), .Q(\fifo[15][4] ) );
  SDFFRQX2M \fifo_reg[15][3]  ( .D(n170), .SI(test_si3), .SE(n355), .CK(w_clk), 
        .RN(n335), .Q(\fifo[15][3] ) );
  SDFFRQX2M \fifo_reg[15][1]  ( .D(n168), .SI(\fifo[15][0] ), .SE(n357), .CK(
        w_clk), .RN(n335), .Q(\fifo[15][1] ) );
  SDFFRQX2M \fifo_reg[15][0]  ( .D(n167), .SI(\fifo[14][7] ), .SE(n356), .CK(
        w_clk), .RN(n335), .Q(\fifo[15][0] ) );
  SDFFRQX2M \fifo_reg[2][7]  ( .D(n278), .SI(\fifo[2][6] ), .SE(n355), .CK(
        w_clk), .RN(n326), .Q(\fifo[2][7] ) );
  SDFFRQX2M \fifo_reg[2][6]  ( .D(n277), .SI(\fifo[2][5] ), .SE(n358), .CK(
        w_clk), .RN(n326), .Q(\fifo[2][6] ) );
  SDFFRQX2M \fifo_reg[2][5]  ( .D(n276), .SI(\fifo[2][4] ), .SE(n357), .CK(
        w_clk), .RN(n326), .Q(\fifo[2][5] ) );
  SDFFRQX2M \fifo_reg[2][4]  ( .D(n275), .SI(\fifo[2][3] ), .SE(n356), .CK(
        w_clk), .RN(n326), .Q(\fifo[2][4] ) );
  SDFFRQX2M \fifo_reg[2][3]  ( .D(n274), .SI(\fifo[2][2] ), .SE(n355), .CK(
        w_clk), .RN(n326), .Q(\fifo[2][3] ) );
  SDFFRQX2M \fifo_reg[2][2]  ( .D(n273), .SI(\fifo[2][1] ), .SE(n358), .CK(
        w_clk), .RN(n326), .Q(\fifo[2][2] ) );
  SDFFRQX2M \fifo_reg[2][1]  ( .D(n272), .SI(\fifo[2][0] ), .SE(n357), .CK(
        w_clk), .RN(n326), .Q(\fifo[2][1] ) );
  SDFFRQX2M \fifo_reg[2][0]  ( .D(n271), .SI(\fifo[1][7] ), .SE(n356), .CK(
        w_clk), .RN(n326), .Q(\fifo[2][0] ) );
  SDFFRQX2M \fifo_reg[6][7]  ( .D(n246), .SI(\fifo[6][6] ), .SE(n355), .CK(
        w_clk), .RN(n329), .Q(\fifo[6][7] ) );
  SDFFRQX2M \fifo_reg[6][6]  ( .D(n245), .SI(\fifo[6][5] ), .SE(n358), .CK(
        w_clk), .RN(n329), .Q(\fifo[6][6] ) );
  SDFFRQX2M \fifo_reg[6][5]  ( .D(n244), .SI(\fifo[6][4] ), .SE(n357), .CK(
        w_clk), .RN(n329), .Q(\fifo[6][5] ) );
  SDFFRQX2M \fifo_reg[6][4]  ( .D(n243), .SI(\fifo[6][3] ), .SE(n356), .CK(
        w_clk), .RN(n329), .Q(\fifo[6][4] ) );
  SDFFRQX2M \fifo_reg[6][3]  ( .D(n242), .SI(\fifo[6][2] ), .SE(n355), .CK(
        w_clk), .RN(n329), .Q(\fifo[6][3] ) );
  SDFFRQX2M \fifo_reg[6][2]  ( .D(n241), .SI(\fifo[6][1] ), .SE(n358), .CK(
        w_clk), .RN(n329), .Q(\fifo[6][2] ) );
  SDFFRQX2M \fifo_reg[6][1]  ( .D(n240), .SI(\fifo[6][0] ), .SE(n357), .CK(
        w_clk), .RN(n329), .Q(\fifo[6][1] ) );
  SDFFRQX2M \fifo_reg[6][0]  ( .D(n239), .SI(\fifo[5][7] ), .SE(n356), .CK(
        w_clk), .RN(n329), .Q(\fifo[6][0] ) );
  SDFFRQX2M \fifo_reg[10][7]  ( .D(n214), .SI(\fifo[10][6] ), .SE(n355), .CK(
        w_clk), .RN(n331), .Q(\fifo[10][7] ) );
  SDFFRQX2M \fifo_reg[10][6]  ( .D(n213), .SI(\fifo[10][5] ), .SE(n358), .CK(
        w_clk), .RN(n331), .Q(\fifo[10][6] ) );
  SDFFRQX2M \fifo_reg[10][5]  ( .D(n212), .SI(\fifo[10][4] ), .SE(n357), .CK(
        w_clk), .RN(n331), .Q(\fifo[10][5] ) );
  SDFFRQX2M \fifo_reg[10][4]  ( .D(n211), .SI(\fifo[10][3] ), .SE(n356), .CK(
        w_clk), .RN(n331), .Q(\fifo[10][4] ) );
  SDFFRQX2M \fifo_reg[10][3]  ( .D(n210), .SI(\fifo[10][2] ), .SE(n355), .CK(
        w_clk), .RN(n332), .Q(\fifo[10][3] ) );
  SDFFRQX2M \fifo_reg[10][2]  ( .D(n209), .SI(\fifo[10][1] ), .SE(n358), .CK(
        w_clk), .RN(n332), .Q(\fifo[10][2] ) );
  SDFFRQX2M \fifo_reg[10][1]  ( .D(n208), .SI(\fifo[10][0] ), .SE(n357), .CK(
        w_clk), .RN(n332), .Q(\fifo[10][1] ) );
  SDFFRQX2M \fifo_reg[10][0]  ( .D(n207), .SI(\fifo[9][7] ), .SE(n356), .CK(
        w_clk), .RN(n332), .Q(\fifo[10][0] ) );
  SDFFRQX2M \fifo_reg[14][7]  ( .D(n182), .SI(\fifo[14][6] ), .SE(n355), .CK(
        w_clk), .RN(n334), .Q(\fifo[14][7] ) );
  SDFFRQX2M \fifo_reg[14][6]  ( .D(n181), .SI(\fifo[14][5] ), .SE(n358), .CK(
        w_clk), .RN(n334), .Q(\fifo[14][6] ) );
  SDFFRQX2M \fifo_reg[14][5]  ( .D(n180), .SI(\fifo[14][4] ), .SE(n357), .CK(
        w_clk), .RN(n334), .Q(\fifo[14][5] ) );
  SDFFRQX2M \fifo_reg[14][4]  ( .D(n179), .SI(\fifo[14][3] ), .SE(n356), .CK(
        w_clk), .RN(n334), .Q(\fifo[14][4] ) );
  SDFFRQX2M \fifo_reg[14][3]  ( .D(n178), .SI(\fifo[14][2] ), .SE(n355), .CK(
        w_clk), .RN(n334), .Q(\fifo[14][3] ) );
  SDFFRQX2M \fifo_reg[14][2]  ( .D(n177), .SI(\fifo[14][1] ), .SE(n358), .CK(
        w_clk), .RN(n334), .Q(\fifo[14][2] ) );
  SDFFRQX2M \fifo_reg[14][1]  ( .D(n176), .SI(\fifo[14][0] ), .SE(n357), .CK(
        w_clk), .RN(n334), .Q(\fifo[14][1] ) );
  SDFFRQX2M \fifo_reg[14][0]  ( .D(n175), .SI(\fifo[13][7] ), .SE(n356), .CK(
        w_clk), .RN(n334), .Q(\fifo[14][0] ) );
  SDFFRQX2M \fifo_reg[0][7]  ( .D(n294), .SI(\fifo[0][6] ), .SE(n355), .CK(
        w_clk), .RN(n325), .Q(\fifo[0][7] ) );
  SDFFRQX2M \fifo_reg[0][6]  ( .D(n293), .SI(\fifo[0][5] ), .SE(n358), .CK(
        w_clk), .RN(n325), .Q(\fifo[0][6] ) );
  SDFFRQX2M \fifo_reg[0][5]  ( .D(n292), .SI(\fifo[0][4] ), .SE(n357), .CK(
        w_clk), .RN(n325), .Q(\fifo[0][5] ) );
  SDFFRQX2M \fifo_reg[0][4]  ( .D(n291), .SI(\fifo[0][3] ), .SE(n356), .CK(
        w_clk), .RN(n325), .Q(\fifo[0][4] ) );
  SDFFRQX2M \fifo_reg[0][3]  ( .D(n290), .SI(\fifo[0][2] ), .SE(n355), .CK(
        w_clk), .RN(n325), .Q(\fifo[0][3] ) );
  SDFFRQX2M \fifo_reg[0][2]  ( .D(n289), .SI(\fifo[0][1] ), .SE(n358), .CK(
        w_clk), .RN(n325), .Q(\fifo[0][2] ) );
  SDFFRQX2M \fifo_reg[0][1]  ( .D(n288), .SI(\fifo[0][0] ), .SE(n357), .CK(
        w_clk), .RN(n325), .Q(\fifo[0][1] ) );
  SDFFRQX2M \fifo_reg[0][0]  ( .D(n287), .SI(test_si1), .SE(n356), .CK(w_clk), 
        .RN(n325), .Q(\fifo[0][0] ) );
  SDFFRQX2M \fifo_reg[4][7]  ( .D(n262), .SI(\fifo[4][6] ), .SE(n355), .CK(
        w_clk), .RN(n327), .Q(\fifo[4][7] ) );
  SDFFRQX2M \fifo_reg[4][6]  ( .D(n261), .SI(\fifo[4][5] ), .SE(n358), .CK(
        w_clk), .RN(n327), .Q(\fifo[4][6] ) );
  SDFFRQX2M \fifo_reg[4][5]  ( .D(n260), .SI(\fifo[4][4] ), .SE(n357), .CK(
        w_clk), .RN(n327), .Q(\fifo[4][5] ) );
  SDFFRQX2M \fifo_reg[4][4]  ( .D(n259), .SI(\fifo[4][3] ), .SE(n356), .CK(
        w_clk), .RN(n327), .Q(\fifo[4][4] ) );
  SDFFRQX2M \fifo_reg[4][3]  ( .D(n258), .SI(\fifo[4][2] ), .SE(n355), .CK(
        w_clk), .RN(n328), .Q(\fifo[4][3] ) );
  SDFFRQX2M \fifo_reg[4][2]  ( .D(n257), .SI(\fifo[4][1] ), .SE(n358), .CK(
        w_clk), .RN(n328), .Q(\fifo[4][2] ) );
  SDFFRQX2M \fifo_reg[4][1]  ( .D(n256), .SI(\fifo[4][0] ), .SE(n357), .CK(
        w_clk), .RN(n328), .Q(\fifo[4][1] ) );
  SDFFRQX2M \fifo_reg[4][0]  ( .D(n255), .SI(\fifo[3][7] ), .SE(n356), .CK(
        w_clk), .RN(n328), .Q(\fifo[4][0] ) );
  SDFFRQX2M \fifo_reg[8][7]  ( .D(n230), .SI(\fifo[8][6] ), .SE(n355), .CK(
        w_clk), .RN(n330), .Q(\fifo[8][7] ) );
  SDFFRQX2M \fifo_reg[8][6]  ( .D(n229), .SI(\fifo[8][5] ), .SE(n358), .CK(
        w_clk), .RN(n330), .Q(\fifo[8][6] ) );
  SDFFRQX2M \fifo_reg[8][5]  ( .D(n228), .SI(\fifo[8][4] ), .SE(n357), .CK(
        w_clk), .RN(n330), .Q(\fifo[8][5] ) );
  SDFFRQX2M \fifo_reg[8][4]  ( .D(n227), .SI(\fifo[8][3] ), .SE(n356), .CK(
        w_clk), .RN(n330), .Q(\fifo[8][4] ) );
  SDFFRQX2M \fifo_reg[8][3]  ( .D(n226), .SI(\fifo[8][2] ), .SE(n355), .CK(
        w_clk), .RN(n330), .Q(\fifo[8][3] ) );
  SDFFRQX2M \fifo_reg[8][2]  ( .D(n225), .SI(\fifo[8][1] ), .SE(n358), .CK(
        w_clk), .RN(n330), .Q(\fifo[8][2] ) );
  SDFFRQX2M \fifo_reg[8][1]  ( .D(n224), .SI(\fifo[8][0] ), .SE(n357), .CK(
        w_clk), .RN(n330), .Q(\fifo[8][1] ) );
  SDFFRQX2M \fifo_reg[8][0]  ( .D(n223), .SI(\fifo[7][7] ), .SE(n356), .CK(
        w_clk), .RN(n330), .Q(\fifo[8][0] ) );
  SDFFRQX2M \fifo_reg[12][7]  ( .D(n198), .SI(\fifo[12][6] ), .SE(n355), .CK(
        w_clk), .RN(n333), .Q(\fifo[12][7] ) );
  SDFFRQX2M \fifo_reg[12][6]  ( .D(n197), .SI(\fifo[12][5] ), .SE(n358), .CK(
        w_clk), .RN(n333), .Q(\fifo[12][6] ) );
  SDFFRQX2M \fifo_reg[12][5]  ( .D(n196), .SI(\fifo[12][4] ), .SE(n357), .CK(
        w_clk), .RN(n333), .Q(\fifo[12][5] ) );
  SDFFRQX2M \fifo_reg[12][4]  ( .D(n195), .SI(\fifo[12][3] ), .SE(n356), .CK(
        w_clk), .RN(n333), .Q(\fifo[12][4] ) );
  SDFFRQX2M \fifo_reg[12][3]  ( .D(n194), .SI(\fifo[12][2] ), .SE(n355), .CK(
        w_clk), .RN(n333), .Q(\fifo[12][3] ) );
  SDFFRQX2M \fifo_reg[12][2]  ( .D(n193), .SI(\fifo[12][1] ), .SE(n358), .CK(
        w_clk), .RN(n333), .Q(\fifo[12][2] ) );
  SDFFRQX2M \fifo_reg[12][1]  ( .D(n192), .SI(\fifo[12][0] ), .SE(n357), .CK(
        w_clk), .RN(n333), .Q(\fifo[12][1] ) );
  SDFFRQX2M \fifo_reg[12][0]  ( .D(n191), .SI(\fifo[11][7] ), .SE(n356), .CK(
        w_clk), .RN(n333), .Q(\fifo[12][0] ) );
  NOR2X2M U130 ( .A(n342), .B(n341), .Y(n141) );
  NOR2X2M U131 ( .A(w_address[1]), .B(w_address[2]), .Y(n152) );
  NOR2X2M U132 ( .A(n342), .B(w_address[1]), .Y(n146) );
  NOR2X2M U133 ( .A(n341), .B(w_address[2]), .Y(n149) );
  BUFX2M U134 ( .A(n336), .Y(n334) );
  BUFX2M U135 ( .A(n336), .Y(n333) );
  BUFX2M U136 ( .A(n337), .Y(n332) );
  BUFX2M U137 ( .A(n337), .Y(n331) );
  BUFX2M U138 ( .A(n337), .Y(n330) );
  BUFX2M U139 ( .A(n338), .Y(n329) );
  BUFX2M U140 ( .A(n338), .Y(n328) );
  BUFX2M U141 ( .A(n338), .Y(n327) );
  BUFX2M U142 ( .A(n339), .Y(n326) );
  BUFX2M U143 ( .A(n339), .Y(n325) );
  BUFX2M U144 ( .A(n336), .Y(n335) );
  BUFX2M U145 ( .A(n323), .Y(n336) );
  BUFX2M U146 ( .A(n323), .Y(n337) );
  BUFX2M U147 ( .A(n324), .Y(n338) );
  BUFX2M U148 ( .A(n324), .Y(n339) );
  NAND2X2M U149 ( .A(n144), .B(n141), .Y(n143) );
  NAND2X2M U150 ( .A(n159), .B(n141), .Y(n158) );
  INVX2M U151 ( .A(n320), .Y(n322) );
  INVX2M U152 ( .A(n320), .Y(n321) );
  INVX2M U153 ( .A(n317), .Y(n318) );
  BUFX2M U154 ( .A(w_rst_n), .Y(n323) );
  BUFX2M U155 ( .A(w_rst_n), .Y(n324) );
  NAND2X2M U156 ( .A(n146), .B(n142), .Y(n145) );
  NAND2X2M U157 ( .A(n146), .B(n144), .Y(n147) );
  NAND2X2M U158 ( .A(n149), .B(n142), .Y(n148) );
  NAND2X2M U159 ( .A(n149), .B(n144), .Y(n150) );
  NAND2X2M U160 ( .A(n152), .B(n142), .Y(n151) );
  NAND2X2M U161 ( .A(n152), .B(n144), .Y(n154) );
  NAND2X2M U162 ( .A(n157), .B(n146), .Y(n160) );
  NAND2X2M U163 ( .A(n159), .B(n146), .Y(n161) );
  NAND2X2M U164 ( .A(n157), .B(n149), .Y(n162) );
  NAND2X2M U165 ( .A(n159), .B(n149), .Y(n163) );
  NAND2X2M U166 ( .A(n157), .B(n152), .Y(n164) );
  NAND2X2M U167 ( .A(n159), .B(n152), .Y(n166) );
  NAND2X2M U168 ( .A(n157), .B(n141), .Y(n156) );
  NAND2X2M U169 ( .A(n141), .B(n142), .Y(n140) );
  AND2X2M U170 ( .A(n153), .B(n340), .Y(n144) );
  NOR2BX2M U171 ( .AN(w_inc), .B(full_flag), .Y(n155) );
  AND2X2M U172 ( .A(n165), .B(n340), .Y(n159) );
  BUFX2M U173 ( .A(n319), .Y(n320) );
  BUFX2M U174 ( .A(n316), .Y(n317) );
  INVX2M U175 ( .A(w_data[0]), .Y(n343) );
  INVX2M U176 ( .A(w_data[1]), .Y(n344) );
  INVX2M U177 ( .A(w_data[2]), .Y(n345) );
  INVX2M U178 ( .A(w_data[3]), .Y(n346) );
  INVX2M U179 ( .A(w_data[4]), .Y(n347) );
  INVX2M U180 ( .A(w_data[5]), .Y(n348) );
  INVX2M U181 ( .A(w_data[6]), .Y(n349) );
  INVX2M U182 ( .A(w_data[7]), .Y(n350) );
  MX4X1M U183 ( .A(n311), .B(n309), .C(n310), .D(n308), .S0(N12), .S1(N11), 
        .Y(rd_data[6]) );
  MX4X1M U184 ( .A(\fifo[0][6] ), .B(\fifo[1][6] ), .C(\fifo[2][6] ), .D(
        \fifo[3][6] ), .S0(n321), .S1(N10), .Y(n311) );
  MX4X1M U185 ( .A(\fifo[8][6] ), .B(\fifo[9][6] ), .C(\fifo[10][6] ), .D(
        \fifo[11][6] ), .S0(n321), .S1(N10), .Y(n309) );
  MX4X1M U186 ( .A(\fifo[4][6] ), .B(\fifo[5][6] ), .C(\fifo[6][6] ), .D(
        \fifo[7][6] ), .S0(n321), .S1(N10), .Y(n310) );
  MX4X1M U187 ( .A(n315), .B(n313), .C(n314), .D(n312), .S0(N12), .S1(N11), 
        .Y(rd_data[7]) );
  MX4X1M U188 ( .A(\fifo[0][7] ), .B(\fifo[1][7] ), .C(\fifo[2][7] ), .D(
        \fifo[3][7] ), .S0(N9), .S1(N10), .Y(n315) );
  MX4X1M U189 ( .A(\fifo[8][7] ), .B(\fifo[9][7] ), .C(\fifo[10][7] ), .D(
        \fifo[11][7] ), .S0(N9), .S1(N10), .Y(n313) );
  MX4X1M U190 ( .A(\fifo[4][7] ), .B(\fifo[5][7] ), .C(\fifo[6][7] ), .D(
        \fifo[7][7] ), .S0(N9), .S1(N10), .Y(n314) );
  MX4X1M U191 ( .A(n295), .B(n138), .C(n139), .D(n137), .S0(N12), .S1(N11), 
        .Y(rd_data[2]) );
  MX4X1M U192 ( .A(\fifo[0][2] ), .B(\fifo[1][2] ), .C(\fifo[2][2] ), .D(
        \fifo[3][2] ), .S0(n322), .S1(n318), .Y(n295) );
  MX4X1M U193 ( .A(\fifo[8][2] ), .B(\fifo[9][2] ), .C(\fifo[10][2] ), .D(
        \fifo[11][2] ), .S0(n322), .S1(n318), .Y(n138) );
  MX4X1M U194 ( .A(\fifo[4][2] ), .B(\fifo[5][2] ), .C(\fifo[6][2] ), .D(
        \fifo[7][2] ), .S0(n322), .S1(n318), .Y(n139) );
  OAI2BB2X1M U195 ( .B0(n140), .B1(n343), .A0N(\fifo[15][0] ), .A1N(n140), .Y(
        n167) );
  OAI2BB2X1M U196 ( .B0(n140), .B1(n344), .A0N(\fifo[15][1] ), .A1N(n140), .Y(
        n168) );
  OAI2BB2X1M U197 ( .B0(n140), .B1(n345), .A0N(n362), .A1N(n140), .Y(n169) );
  OAI2BB2X1M U198 ( .B0(n140), .B1(n346), .A0N(\fifo[15][3] ), .A1N(n140), .Y(
        n170) );
  OAI2BB2X1M U199 ( .B0(n140), .B1(n347), .A0N(\fifo[15][4] ), .A1N(n140), .Y(
        n171) );
  OAI2BB2X1M U200 ( .B0(n140), .B1(n348), .A0N(\fifo[15][5] ), .A1N(n140), .Y(
        n172) );
  OAI2BB2X1M U201 ( .B0(n140), .B1(n349), .A0N(\fifo[15][6] ), .A1N(n140), .Y(
        n173) );
  OAI2BB2X1M U202 ( .B0(n140), .B1(n350), .A0N(\fifo[15][7] ), .A1N(n140), .Y(
        n174) );
  OAI2BB2X1M U203 ( .B0(n343), .B1(n145), .A0N(\fifo[13][0] ), .A1N(n145), .Y(
        n183) );
  OAI2BB2X1M U204 ( .B0(n344), .B1(n145), .A0N(\fifo[13][1] ), .A1N(n145), .Y(
        n184) );
  OAI2BB2X1M U205 ( .B0(n345), .B1(n145), .A0N(\fifo[13][2] ), .A1N(n145), .Y(
        n185) );
  OAI2BB2X1M U206 ( .B0(n346), .B1(n145), .A0N(\fifo[13][3] ), .A1N(n145), .Y(
        n186) );
  OAI2BB2X1M U207 ( .B0(n347), .B1(n145), .A0N(\fifo[13][4] ), .A1N(n145), .Y(
        n187) );
  OAI2BB2X1M U208 ( .B0(n348), .B1(n145), .A0N(\fifo[13][5] ), .A1N(n145), .Y(
        n188) );
  OAI2BB2X1M U209 ( .B0(n349), .B1(n145), .A0N(\fifo[13][6] ), .A1N(n145), .Y(
        n189) );
  OAI2BB2X1M U210 ( .B0(n350), .B1(n145), .A0N(\fifo[13][7] ), .A1N(n145), .Y(
        n190) );
  OAI2BB2X1M U211 ( .B0(n343), .B1(n147), .A0N(\fifo[12][0] ), .A1N(n147), .Y(
        n191) );
  OAI2BB2X1M U212 ( .B0(n344), .B1(n147), .A0N(\fifo[12][1] ), .A1N(n147), .Y(
        n192) );
  OAI2BB2X1M U213 ( .B0(n345), .B1(n147), .A0N(\fifo[12][2] ), .A1N(n147), .Y(
        n193) );
  OAI2BB2X1M U214 ( .B0(n346), .B1(n147), .A0N(\fifo[12][3] ), .A1N(n147), .Y(
        n194) );
  OAI2BB2X1M U215 ( .B0(n347), .B1(n147), .A0N(\fifo[12][4] ), .A1N(n147), .Y(
        n195) );
  OAI2BB2X1M U216 ( .B0(n348), .B1(n147), .A0N(\fifo[12][5] ), .A1N(n147), .Y(
        n196) );
  OAI2BB2X1M U217 ( .B0(n349), .B1(n147), .A0N(\fifo[12][6] ), .A1N(n147), .Y(
        n197) );
  OAI2BB2X1M U218 ( .B0(n350), .B1(n147), .A0N(\fifo[12][7] ), .A1N(n147), .Y(
        n198) );
  OAI2BB2X1M U219 ( .B0(n343), .B1(n148), .A0N(\fifo[11][0] ), .A1N(n148), .Y(
        n199) );
  OAI2BB2X1M U220 ( .B0(n344), .B1(n148), .A0N(\fifo[11][1] ), .A1N(n148), .Y(
        n200) );
  OAI2BB2X1M U221 ( .B0(n345), .B1(n148), .A0N(\fifo[11][2] ), .A1N(n148), .Y(
        n201) );
  OAI2BB2X1M U222 ( .B0(n346), .B1(n148), .A0N(\fifo[11][3] ), .A1N(n148), .Y(
        n202) );
  OAI2BB2X1M U223 ( .B0(n347), .B1(n148), .A0N(\fifo[11][4] ), .A1N(n148), .Y(
        n203) );
  OAI2BB2X1M U224 ( .B0(n348), .B1(n148), .A0N(\fifo[11][5] ), .A1N(n148), .Y(
        n204) );
  OAI2BB2X1M U225 ( .B0(n349), .B1(n148), .A0N(\fifo[11][6] ), .A1N(n148), .Y(
        n205) );
  OAI2BB2X1M U226 ( .B0(n350), .B1(n148), .A0N(\fifo[11][7] ), .A1N(n148), .Y(
        n206) );
  OAI2BB2X1M U227 ( .B0(n343), .B1(n150), .A0N(\fifo[10][0] ), .A1N(n150), .Y(
        n207) );
  OAI2BB2X1M U228 ( .B0(n344), .B1(n150), .A0N(\fifo[10][1] ), .A1N(n150), .Y(
        n208) );
  OAI2BB2X1M U229 ( .B0(n345), .B1(n150), .A0N(\fifo[10][2] ), .A1N(n150), .Y(
        n209) );
  OAI2BB2X1M U230 ( .B0(n346), .B1(n150), .A0N(\fifo[10][3] ), .A1N(n150), .Y(
        n210) );
  OAI2BB2X1M U231 ( .B0(n347), .B1(n150), .A0N(\fifo[10][4] ), .A1N(n150), .Y(
        n211) );
  OAI2BB2X1M U232 ( .B0(n348), .B1(n150), .A0N(\fifo[10][5] ), .A1N(n150), .Y(
        n212) );
  OAI2BB2X1M U233 ( .B0(n349), .B1(n150), .A0N(\fifo[10][6] ), .A1N(n150), .Y(
        n213) );
  OAI2BB2X1M U234 ( .B0(n350), .B1(n150), .A0N(\fifo[10][7] ), .A1N(n150), .Y(
        n214) );
  OAI2BB2X1M U235 ( .B0(n343), .B1(n151), .A0N(\fifo[9][0] ), .A1N(n151), .Y(
        n215) );
  OAI2BB2X1M U236 ( .B0(n344), .B1(n151), .A0N(\fifo[9][1] ), .A1N(n151), .Y(
        n216) );
  OAI2BB2X1M U237 ( .B0(n345), .B1(n151), .A0N(\fifo[9][2] ), .A1N(n151), .Y(
        n217) );
  OAI2BB2X1M U238 ( .B0(n346), .B1(n151), .A0N(\fifo[9][3] ), .A1N(n151), .Y(
        n218) );
  OAI2BB2X1M U239 ( .B0(n347), .B1(n151), .A0N(\fifo[9][4] ), .A1N(n151), .Y(
        n219) );
  OAI2BB2X1M U240 ( .B0(n348), .B1(n151), .A0N(\fifo[9][5] ), .A1N(n151), .Y(
        n220) );
  OAI2BB2X1M U241 ( .B0(n349), .B1(n151), .A0N(\fifo[9][6] ), .A1N(n151), .Y(
        n221) );
  OAI2BB2X1M U242 ( .B0(n350), .B1(n151), .A0N(\fifo[9][7] ), .A1N(n151), .Y(
        n222) );
  OAI2BB2X1M U243 ( .B0(n343), .B1(n154), .A0N(\fifo[8][0] ), .A1N(n154), .Y(
        n223) );
  OAI2BB2X1M U244 ( .B0(n344), .B1(n154), .A0N(\fifo[8][1] ), .A1N(n154), .Y(
        n224) );
  OAI2BB2X1M U245 ( .B0(n345), .B1(n154), .A0N(\fifo[8][2] ), .A1N(n154), .Y(
        n225) );
  OAI2BB2X1M U246 ( .B0(n346), .B1(n154), .A0N(\fifo[8][3] ), .A1N(n154), .Y(
        n226) );
  OAI2BB2X1M U247 ( .B0(n347), .B1(n154), .A0N(\fifo[8][4] ), .A1N(n154), .Y(
        n227) );
  OAI2BB2X1M U248 ( .B0(n348), .B1(n154), .A0N(\fifo[8][5] ), .A1N(n154), .Y(
        n228) );
  OAI2BB2X1M U249 ( .B0(n349), .B1(n154), .A0N(\fifo[8][6] ), .A1N(n154), .Y(
        n229) );
  OAI2BB2X1M U250 ( .B0(n350), .B1(n154), .A0N(\fifo[8][7] ), .A1N(n154), .Y(
        n230) );
  OAI2BB2X1M U251 ( .B0(n343), .B1(n143), .A0N(\fifo[14][0] ), .A1N(n143), .Y(
        n175) );
  OAI2BB2X1M U252 ( .B0(n344), .B1(n143), .A0N(\fifo[14][1] ), .A1N(n143), .Y(
        n176) );
  OAI2BB2X1M U253 ( .B0(n345), .B1(n143), .A0N(\fifo[14][2] ), .A1N(n143), .Y(
        n177) );
  OAI2BB2X1M U254 ( .B0(n346), .B1(n143), .A0N(\fifo[14][3] ), .A1N(n143), .Y(
        n178) );
  OAI2BB2X1M U255 ( .B0(n347), .B1(n143), .A0N(\fifo[14][4] ), .A1N(n143), .Y(
        n179) );
  OAI2BB2X1M U256 ( .B0(n348), .B1(n143), .A0N(\fifo[14][5] ), .A1N(n143), .Y(
        n180) );
  OAI2BB2X1M U257 ( .B0(n349), .B1(n143), .A0N(\fifo[14][6] ), .A1N(n143), .Y(
        n181) );
  OAI2BB2X1M U258 ( .B0(n350), .B1(n143), .A0N(\fifo[14][7] ), .A1N(n143), .Y(
        n182) );
  OAI2BB2X1M U259 ( .B0(n343), .B1(n156), .A0N(\fifo[7][0] ), .A1N(n156), .Y(
        n231) );
  OAI2BB2X1M U260 ( .B0(n344), .B1(n156), .A0N(\fifo[7][1] ), .A1N(n156), .Y(
        n232) );
  OAI2BB2X1M U261 ( .B0(n345), .B1(n156), .A0N(\fifo[7][2] ), .A1N(n156), .Y(
        n233) );
  OAI2BB2X1M U262 ( .B0(n346), .B1(n156), .A0N(\fifo[7][3] ), .A1N(n156), .Y(
        n234) );
  OAI2BB2X1M U263 ( .B0(n347), .B1(n156), .A0N(\fifo[7][4] ), .A1N(n156), .Y(
        n235) );
  OAI2BB2X1M U264 ( .B0(n348), .B1(n156), .A0N(\fifo[7][5] ), .A1N(n156), .Y(
        n236) );
  OAI2BB2X1M U265 ( .B0(n349), .B1(n156), .A0N(\fifo[7][6] ), .A1N(n156), .Y(
        n237) );
  OAI2BB2X1M U266 ( .B0(n350), .B1(n156), .A0N(\fifo[7][7] ), .A1N(n156), .Y(
        n238) );
  OAI2BB2X1M U267 ( .B0(n343), .B1(n158), .A0N(\fifo[6][0] ), .A1N(n158), .Y(
        n239) );
  OAI2BB2X1M U268 ( .B0(n344), .B1(n158), .A0N(\fifo[6][1] ), .A1N(n158), .Y(
        n240) );
  OAI2BB2X1M U269 ( .B0(n345), .B1(n158), .A0N(\fifo[6][2] ), .A1N(n158), .Y(
        n241) );
  OAI2BB2X1M U270 ( .B0(n346), .B1(n158), .A0N(\fifo[6][3] ), .A1N(n158), .Y(
        n242) );
  OAI2BB2X1M U271 ( .B0(n347), .B1(n158), .A0N(\fifo[6][4] ), .A1N(n158), .Y(
        n243) );
  OAI2BB2X1M U272 ( .B0(n348), .B1(n158), .A0N(\fifo[6][5] ), .A1N(n158), .Y(
        n244) );
  OAI2BB2X1M U273 ( .B0(n349), .B1(n158), .A0N(\fifo[6][6] ), .A1N(n158), .Y(
        n245) );
  OAI2BB2X1M U274 ( .B0(n350), .B1(n158), .A0N(\fifo[6][7] ), .A1N(n158), .Y(
        n246) );
  OAI2BB2X1M U275 ( .B0(n343), .B1(n160), .A0N(n360), .A1N(n160), .Y(n247) );
  OAI2BB2X1M U276 ( .B0(n344), .B1(n160), .A0N(\fifo[5][1] ), .A1N(n160), .Y(
        n248) );
  OAI2BB2X1M U277 ( .B0(n345), .B1(n160), .A0N(\fifo[5][2] ), .A1N(n160), .Y(
        n249) );
  OAI2BB2X1M U278 ( .B0(n346), .B1(n160), .A0N(\fifo[5][3] ), .A1N(n160), .Y(
        n250) );
  OAI2BB2X1M U279 ( .B0(n347), .B1(n160), .A0N(\fifo[5][4] ), .A1N(n160), .Y(
        n251) );
  OAI2BB2X1M U280 ( .B0(n348), .B1(n160), .A0N(\fifo[5][5] ), .A1N(n160), .Y(
        n252) );
  OAI2BB2X1M U281 ( .B0(n349), .B1(n160), .A0N(\fifo[5][6] ), .A1N(n160), .Y(
        n253) );
  OAI2BB2X1M U282 ( .B0(n350), .B1(n160), .A0N(\fifo[5][7] ), .A1N(n160), .Y(
        n254) );
  OAI2BB2X1M U283 ( .B0(n343), .B1(n161), .A0N(\fifo[4][0] ), .A1N(n161), .Y(
        n255) );
  OAI2BB2X1M U284 ( .B0(n344), .B1(n161), .A0N(\fifo[4][1] ), .A1N(n161), .Y(
        n256) );
  OAI2BB2X1M U285 ( .B0(n345), .B1(n161), .A0N(\fifo[4][2] ), .A1N(n161), .Y(
        n257) );
  OAI2BB2X1M U286 ( .B0(n346), .B1(n161), .A0N(\fifo[4][3] ), .A1N(n161), .Y(
        n258) );
  OAI2BB2X1M U287 ( .B0(n347), .B1(n161), .A0N(\fifo[4][4] ), .A1N(n161), .Y(
        n259) );
  OAI2BB2X1M U288 ( .B0(n348), .B1(n161), .A0N(\fifo[4][5] ), .A1N(n161), .Y(
        n260) );
  OAI2BB2X1M U289 ( .B0(n349), .B1(n161), .A0N(\fifo[4][6] ), .A1N(n161), .Y(
        n261) );
  OAI2BB2X1M U290 ( .B0(n350), .B1(n161), .A0N(\fifo[4][7] ), .A1N(n161), .Y(
        n262) );
  OAI2BB2X1M U291 ( .B0(n343), .B1(n162), .A0N(\fifo[3][0] ), .A1N(n162), .Y(
        n263) );
  OAI2BB2X1M U292 ( .B0(n344), .B1(n162), .A0N(\fifo[3][1] ), .A1N(n162), .Y(
        n264) );
  OAI2BB2X1M U293 ( .B0(n345), .B1(n162), .A0N(\fifo[3][2] ), .A1N(n162), .Y(
        n265) );
  OAI2BB2X1M U294 ( .B0(n346), .B1(n162), .A0N(\fifo[3][3] ), .A1N(n162), .Y(
        n266) );
  OAI2BB2X1M U295 ( .B0(n347), .B1(n162), .A0N(\fifo[3][4] ), .A1N(n162), .Y(
        n267) );
  OAI2BB2X1M U296 ( .B0(n348), .B1(n162), .A0N(\fifo[3][5] ), .A1N(n162), .Y(
        n268) );
  OAI2BB2X1M U297 ( .B0(n349), .B1(n162), .A0N(\fifo[3][6] ), .A1N(n162), .Y(
        n269) );
  OAI2BB2X1M U298 ( .B0(n350), .B1(n162), .A0N(\fifo[3][7] ), .A1N(n162), .Y(
        n270) );
  OAI2BB2X1M U299 ( .B0(n343), .B1(n163), .A0N(\fifo[2][0] ), .A1N(n163), .Y(
        n271) );
  OAI2BB2X1M U300 ( .B0(n344), .B1(n163), .A0N(\fifo[2][1] ), .A1N(n163), .Y(
        n272) );
  OAI2BB2X1M U301 ( .B0(n345), .B1(n163), .A0N(\fifo[2][2] ), .A1N(n163), .Y(
        n273) );
  OAI2BB2X1M U302 ( .B0(n346), .B1(n163), .A0N(\fifo[2][3] ), .A1N(n163), .Y(
        n274) );
  OAI2BB2X1M U303 ( .B0(n347), .B1(n163), .A0N(\fifo[2][4] ), .A1N(n163), .Y(
        n275) );
  OAI2BB2X1M U304 ( .B0(n348), .B1(n163), .A0N(\fifo[2][5] ), .A1N(n163), .Y(
        n276) );
  OAI2BB2X1M U305 ( .B0(n349), .B1(n163), .A0N(\fifo[2][6] ), .A1N(n163), .Y(
        n277) );
  OAI2BB2X1M U306 ( .B0(n350), .B1(n163), .A0N(\fifo[2][7] ), .A1N(n163), .Y(
        n278) );
  OAI2BB2X1M U307 ( .B0(n343), .B1(n164), .A0N(\fifo[1][0] ), .A1N(n164), .Y(
        n279) );
  OAI2BB2X1M U308 ( .B0(n344), .B1(n164), .A0N(\fifo[1][1] ), .A1N(n164), .Y(
        n280) );
  OAI2BB2X1M U309 ( .B0(n345), .B1(n164), .A0N(\fifo[1][2] ), .A1N(n164), .Y(
        n281) );
  OAI2BB2X1M U310 ( .B0(n346), .B1(n164), .A0N(\fifo[1][3] ), .A1N(n164), .Y(
        n282) );
  OAI2BB2X1M U311 ( .B0(n347), .B1(n164), .A0N(\fifo[1][4] ), .A1N(n164), .Y(
        n283) );
  OAI2BB2X1M U312 ( .B0(n348), .B1(n164), .A0N(\fifo[1][5] ), .A1N(n164), .Y(
        n284) );
  OAI2BB2X1M U313 ( .B0(n349), .B1(n164), .A0N(\fifo[1][6] ), .A1N(n164), .Y(
        n285) );
  OAI2BB2X1M U314 ( .B0(n350), .B1(n164), .A0N(\fifo[1][7] ), .A1N(n164), .Y(
        n286) );
  OAI2BB2X1M U315 ( .B0(n343), .B1(n166), .A0N(\fifo[0][0] ), .A1N(n166), .Y(
        n287) );
  OAI2BB2X1M U316 ( .B0(n344), .B1(n166), .A0N(\fifo[0][1] ), .A1N(n166), .Y(
        n288) );
  OAI2BB2X1M U317 ( .B0(n345), .B1(n166), .A0N(\fifo[0][2] ), .A1N(n166), .Y(
        n289) );
  OAI2BB2X1M U318 ( .B0(n346), .B1(n166), .A0N(\fifo[0][3] ), .A1N(n166), .Y(
        n290) );
  OAI2BB2X1M U319 ( .B0(n347), .B1(n166), .A0N(\fifo[0][4] ), .A1N(n166), .Y(
        n291) );
  OAI2BB2X1M U320 ( .B0(n348), .B1(n166), .A0N(\fifo[0][5] ), .A1N(n166), .Y(
        n292) );
  OAI2BB2X1M U321 ( .B0(n349), .B1(n166), .A0N(\fifo[0][6] ), .A1N(n166), .Y(
        n293) );
  OAI2BB2X1M U322 ( .B0(n350), .B1(n166), .A0N(\fifo[0][7] ), .A1N(n166), .Y(
        n294) );
  MX4X1M U323 ( .A(n299), .B(n297), .C(n298), .D(n296), .S0(N12), .S1(N11), 
        .Y(rd_data[3]) );
  MX4X1M U324 ( .A(\fifo[0][3] ), .B(\fifo[1][3] ), .C(\fifo[2][3] ), .D(
        \fifo[3][3] ), .S0(n322), .S1(n318), .Y(n299) );
  MX4X1M U325 ( .A(\fifo[8][3] ), .B(\fifo[9][3] ), .C(\fifo[10][3] ), .D(
        \fifo[11][3] ), .S0(n322), .S1(n318), .Y(n297) );
  MX4X1M U326 ( .A(\fifo[4][3] ), .B(\fifo[5][3] ), .C(\fifo[6][3] ), .D(
        \fifo[7][3] ), .S0(n322), .S1(n318), .Y(n298) );
  AND2X2M U327 ( .A(n153), .B(w_address[0]), .Y(n142) );
  AND2X2M U328 ( .A(n165), .B(w_address[0]), .Y(n157) );
  NOR2BX2M U329 ( .AN(n155), .B(w_address[3]), .Y(n165) );
  MX4X1M U330 ( .A(n303), .B(n301), .C(n302), .D(n300), .S0(N12), .S1(N11), 
        .Y(rd_data[4]) );
  MX4X1M U331 ( .A(\fifo[0][4] ), .B(\fifo[1][4] ), .C(\fifo[2][4] ), .D(
        \fifo[3][4] ), .S0(n322), .S1(n318), .Y(n303) );
  MX4X1M U332 ( .A(\fifo[8][4] ), .B(\fifo[9][4] ), .C(\fifo[10][4] ), .D(
        \fifo[11][4] ), .S0(n322), .S1(n318), .Y(n301) );
  MX4X1M U333 ( .A(\fifo[4][4] ), .B(\fifo[5][4] ), .C(\fifo[6][4] ), .D(
        \fifo[7][4] ), .S0(n322), .S1(n318), .Y(n302) );
  MX4X1M U334 ( .A(n132), .B(n130), .C(n131), .D(n129), .S0(N12), .S1(N11), 
        .Y(rd_data[0]) );
  MX4X1M U335 ( .A(\fifo[0][0] ), .B(\fifo[1][0] ), .C(\fifo[2][0] ), .D(
        \fifo[3][0] ), .S0(n321), .S1(N10), .Y(n132) );
  MX4X1M U336 ( .A(\fifo[8][0] ), .B(\fifo[9][0] ), .C(\fifo[10][0] ), .D(
        \fifo[11][0] ), .S0(n321), .S1(N10), .Y(n130) );
  MX4X1M U337 ( .A(\fifo[4][0] ), .B(n360), .C(\fifo[6][0] ), .D(\fifo[7][0] ), 
        .S0(n321), .S1(N10), .Y(n131) );
  MX4X1M U338 ( .A(n307), .B(n305), .C(n306), .D(n304), .S0(N12), .S1(N11), 
        .Y(rd_data[5]) );
  MX4X1M U339 ( .A(\fifo[0][5] ), .B(\fifo[1][5] ), .C(\fifo[2][5] ), .D(
        \fifo[3][5] ), .S0(n321), .S1(N10), .Y(n307) );
  MX4X1M U340 ( .A(\fifo[8][5] ), .B(\fifo[9][5] ), .C(\fifo[10][5] ), .D(
        \fifo[11][5] ), .S0(n321), .S1(N10), .Y(n305) );
  MX4X1M U341 ( .A(\fifo[4][5] ), .B(\fifo[5][5] ), .C(\fifo[6][5] ), .D(
        \fifo[7][5] ), .S0(n321), .S1(N10), .Y(n306) );
  MX4X1M U342 ( .A(n136), .B(n134), .C(n135), .D(n133), .S0(N12), .S1(N11), 
        .Y(rd_data[1]) );
  MX4X1M U343 ( .A(\fifo[8][1] ), .B(\fifo[9][1] ), .C(\fifo[10][1] ), .D(
        \fifo[11][1] ), .S0(n321), .S1(N10), .Y(n134) );
  MX4X1M U344 ( .A(\fifo[12][1] ), .B(\fifo[13][1] ), .C(\fifo[14][1] ), .D(
        \fifo[15][1] ), .S0(n321), .S1(n318), .Y(n133) );
  MX4X1M U345 ( .A(\fifo[0][1] ), .B(\fifo[1][1] ), .C(\fifo[2][1] ), .D(
        \fifo[3][1] ), .S0(n322), .S1(N10), .Y(n136) );
  MX4X1M U346 ( .A(\fifo[4][1] ), .B(\fifo[5][1] ), .C(\fifo[6][1] ), .D(
        \fifo[7][1] ), .S0(n322), .S1(N10), .Y(n135) );
  MX4X1M U347 ( .A(\fifo[12][0] ), .B(\fifo[13][0] ), .C(\fifo[14][0] ), .D(
        \fifo[15][0] ), .S0(n321), .S1(N10), .Y(n129) );
  MX4X1M U348 ( .A(\fifo[12][6] ), .B(\fifo[13][6] ), .C(\fifo[14][6] ), .D(
        \fifo[15][6] ), .S0(n321), .S1(N10), .Y(n308) );
  MX4X1M U349 ( .A(\fifo[12][7] ), .B(\fifo[13][7] ), .C(\fifo[14][7] ), .D(
        \fifo[15][7] ), .S0(N9), .S1(N10), .Y(n312) );
  MX4X1M U350 ( .A(\fifo[12][2] ), .B(\fifo[13][2] ), .C(\fifo[14][2] ), .D(
        n362), .S0(n322), .S1(n318), .Y(n137) );
  MX4X1M U351 ( .A(\fifo[12][3] ), .B(\fifo[13][3] ), .C(\fifo[14][3] ), .D(
        \fifo[15][3] ), .S0(n322), .S1(n318), .Y(n296) );
  MX4X1M U352 ( .A(\fifo[12][4] ), .B(\fifo[13][4] ), .C(\fifo[14][4] ), .D(
        \fifo[15][4] ), .S0(n322), .S1(n318), .Y(n300) );
  MX4X1M U353 ( .A(\fifo[12][5] ), .B(\fifo[13][5] ), .C(\fifo[14][5] ), .D(
        \fifo[15][5] ), .S0(n321), .S1(n318), .Y(n304) );
  AND2X2M U354 ( .A(w_address[3]), .B(n155), .Y(n153) );
  INVX2M U355 ( .A(N10), .Y(n316) );
  INVX2M U356 ( .A(N9), .Y(n319) );
  INVX2M U357 ( .A(w_address[1]), .Y(n341) );
  INVX2M U358 ( .A(w_address[2]), .Y(n342) );
  INVX2M U359 ( .A(w_address[0]), .Y(n340) );
  DLY1X1M U360 ( .A(test_se), .Y(n355) );
  DLY1X1M U361 ( .A(test_se), .Y(n356) );
  DLY1X1M U362 ( .A(test_se), .Y(n357) );
  DLY1X1M U363 ( .A(test_se), .Y(n358) );
  INVXLM U364 ( .A(\fifo[5][0] ), .Y(n359) );
  INVXLM U365 ( .A(n359), .Y(n360) );
  INVXLM U366 ( .A(\fifo[15][2] ), .Y(n361) );
  INVXLM U367 ( .A(n361), .Y(n362) );
  SDFFRHQX8M \fifo_reg[5][0]  ( .D(n247), .SI(\fifo[4][7] ), .SE(n356), .CK(
        w_clk), .RN(n328), .Q(\fifo[5][0] ) );
  SDFFRHQX8M \fifo_reg[15][2]  ( .D(n169), .SI(\fifo[15][1] ), .SE(n358), .CK(
        w_clk), .RN(n335), .Q(\fifo[15][2] ) );
endmodule


module grey_code_gen_1 ( binary_data, grey_coded_data );
  input [4:0] binary_data;
  output [4:0] grey_coded_data;


  CLKXOR2X2M U1 ( .A(binary_data[2]), .B(binary_data[1]), .Y(
        grey_coded_data[1]) );
  CLKXOR2X2M U2 ( .A(binary_data[1]), .B(binary_data[0]), .Y(
        grey_coded_data[0]) );
  CLKXOR2X2M U3 ( .A(binary_data[3]), .B(binary_data[2]), .Y(
        grey_coded_data[2]) );
  CLKXOR2X2M U4 ( .A(binary_data[4]), .B(binary_data[3]), .Y(
        grey_coded_data[3]) );
  BUFX2M U5 ( .A(binary_data[4]), .Y(grey_coded_data[4]) );
endmodule


module empty_gen_test_1 ( sync_grey_coded_wr_ptr, rd_clk, rd_rst_n, rd_inc, 
        rd_ptr_grey_coded, rd_address, empty_flag, test_si, test_so, test_se
 );
  input [4:0] sync_grey_coded_wr_ptr;
  output [4:0] rd_ptr_grey_coded;
  output [3:0] rd_address;
  input rd_clk, rd_rst_n, rd_inc, test_si, test_se;
  output empty_flag, test_so;
  wire   N7, N8, N9, N10, N11, n1, n3, n4, n5, n7, n9, n11, n13, n15, n17, n19,
         n21, n23, \add_23/carry[4] , \add_23/carry[3] , \add_23/carry[2] , n2,
         n24, n25, n26, n27, n28, n29, n30, n31;
  wire   [4:0] rd_ptr;
  assign test_so = rd_ptr[4];

  SDFFRQX2M \rd_ptr_reg[4]  ( .D(n21), .SI(rd_ptr[3]), .SE(test_se), .CK(
        rd_clk), .RN(rd_rst_n), .Q(rd_ptr[4]) );
  SDFFRQX2M \rd_ptr_reg[0]  ( .D(n23), .SI(rd_address[3]), .SE(test_se), .CK(
        rd_clk), .RN(rd_rst_n), .Q(rd_ptr[0]) );
  SDFFRQX2M \rd_address_reg[0]  ( .D(n19), .SI(test_si), .SE(test_se), .CK(
        rd_clk), .RN(rd_rst_n), .Q(rd_address[0]) );
  SDFFRQX2M \rd_address_reg[1]  ( .D(n17), .SI(rd_address[0]), .SE(test_se), 
        .CK(rd_clk), .RN(rd_rst_n), .Q(rd_address[1]) );
  SDFFRQX2M \rd_address_reg[2]  ( .D(n15), .SI(rd_address[1]), .SE(test_se), 
        .CK(rd_clk), .RN(rd_rst_n), .Q(rd_address[2]) );
  SDFFRQX2M \rd_ptr_reg[1]  ( .D(n11), .SI(N7), .SE(test_se), .CK(rd_clk), 
        .RN(rd_rst_n), .Q(rd_ptr[1]) );
  SDFFRQX2M \rd_ptr_reg[2]  ( .D(n9), .SI(rd_ptr[1]), .SE(test_se), .CK(rd_clk), .RN(rd_rst_n), .Q(rd_ptr[2]) );
  SDFFRQX2M \rd_ptr_reg[3]  ( .D(n7), .SI(rd_ptr[2]), .SE(test_se), .CK(rd_clk), .RN(rd_rst_n), .Q(rd_ptr[3]) );
  SDFFRQX2M \rd_address_reg[3]  ( .D(n13), .SI(rd_address[2]), .SE(test_se), 
        .CK(rd_clk), .RN(rd_rst_n), .Q(rd_address[3]) );
  INVX2M U3 ( .A(n1), .Y(n31) );
  NAND2BX2M U4 ( .AN(empty_flag), .B(rd_inc), .Y(n1) );
  XNOR2X2M U5 ( .A(rd_address[2]), .B(n4), .Y(n15) );
  NAND2X2M U6 ( .A(rd_address[1]), .B(n5), .Y(n4) );
  AND2X2M U7 ( .A(rd_address[0]), .B(n31), .Y(n5) );
  AO22X1M U8 ( .A0(rd_ptr[3]), .A1(n1), .B0(N10), .B1(n31), .Y(n7) );
  AO22X1M U9 ( .A0(rd_ptr[2]), .A1(n1), .B0(N9), .B1(n31), .Y(n9) );
  AO22X1M U10 ( .A0(rd_ptr[1]), .A1(n1), .B0(N8), .B1(n31), .Y(n11) );
  AO22X1M U11 ( .A0(rd_ptr[4]), .A1(n1), .B0(N11), .B1(n31), .Y(n21) );
  AO22X1M U12 ( .A0(rd_ptr[0]), .A1(n1), .B0(N7), .B1(n31), .Y(n23) );
  CLKXOR2X2M U13 ( .A(rd_address[3]), .B(n3), .Y(n13) );
  NOR2BX2M U14 ( .AN(rd_address[2]), .B(n4), .Y(n3) );
  CLKXOR2X2M U15 ( .A(rd_address[1]), .B(n5), .Y(n17) );
  CLKXOR2X2M U16 ( .A(rd_address[0]), .B(n31), .Y(n19) );
  ADDHX1M U26 ( .A(rd_ptr[1]), .B(rd_ptr[0]), .CO(\add_23/carry[2] ), .S(N8)
         );
  ADDHX1M U27 ( .A(rd_ptr[2]), .B(\add_23/carry[2] ), .CO(\add_23/carry[3] ), 
        .S(N9) );
  ADDHX1M U28 ( .A(rd_ptr[3]), .B(\add_23/carry[3] ), .CO(\add_23/carry[4] ), 
        .S(N10) );
  CLKINVX1M U29 ( .A(rd_ptr[0]), .Y(N7) );
  CLKXOR2X2M U30 ( .A(\add_23/carry[4] ), .B(rd_ptr[4]), .Y(N11) );
  CLKXOR2X2M U31 ( .A(sync_grey_coded_wr_ptr[2]), .B(rd_ptr_grey_coded[2]), 
        .Y(n30) );
  NOR2BX1M U32 ( .AN(sync_grey_coded_wr_ptr[0]), .B(rd_ptr_grey_coded[0]), .Y(
        n2) );
  OAI2B2X1M U33 ( .A1N(rd_ptr_grey_coded[1]), .A0(n2), .B0(
        sync_grey_coded_wr_ptr[1]), .B1(n2), .Y(n26) );
  NOR2BX1M U34 ( .AN(rd_ptr_grey_coded[0]), .B(sync_grey_coded_wr_ptr[0]), .Y(
        n24) );
  OAI2B2X1M U35 ( .A1N(sync_grey_coded_wr_ptr[1]), .A0(n24), .B0(
        rd_ptr_grey_coded[1]), .B1(n24), .Y(n25) );
  CLKNAND2X2M U36 ( .A(n26), .B(n25), .Y(n29) );
  CLKXOR2X2M U37 ( .A(sync_grey_coded_wr_ptr[3]), .B(rd_ptr_grey_coded[3]), 
        .Y(n28) );
  CLKXOR2X2M U38 ( .A(sync_grey_coded_wr_ptr[4]), .B(rd_ptr_grey_coded[4]), 
        .Y(n27) );
  NOR4X1M U39 ( .A(n30), .B(n29), .C(n28), .D(n27), .Y(empty_flag) );
  grey_code_gen_1 rd_ptr_gc ( .binary_data(rd_ptr), .grey_coded_data(
        rd_ptr_grey_coded) );
endmodule


module synchronizer_test_0 ( d1, clk, rst_n, q2, test_si, test_se );
  input [4:0] d1;
  output [4:0] q2;
  input clk, rst_n, test_si, test_se;

  wire   [4:0] q1;

  SDFFRQX2M \q2_reg[4]  ( .D(q1[4]), .SI(q2[3]), .SE(test_se), .CK(clk), .RN(
        rst_n), .Q(q2[4]) );
  SDFFRQX2M \q2_reg[3]  ( .D(q1[3]), .SI(q2[2]), .SE(test_se), .CK(clk), .RN(
        rst_n), .Q(q2[3]) );
  SDFFRQX2M \q2_reg[2]  ( .D(q1[2]), .SI(q2[1]), .SE(test_se), .CK(clk), .RN(
        rst_n), .Q(q2[2]) );
  SDFFRQX2M \q2_reg[1]  ( .D(q1[1]), .SI(q2[0]), .SE(test_se), .CK(clk), .RN(
        rst_n), .Q(q2[1]) );
  SDFFRQX2M \q2_reg[0]  ( .D(q1[0]), .SI(q1[4]), .SE(test_se), .CK(clk), .RN(
        rst_n), .Q(q2[0]) );
  SDFFRQX2M \q1_reg[4]  ( .D(d1[4]), .SI(q1[3]), .SE(test_se), .CK(clk), .RN(
        rst_n), .Q(q1[4]) );
  SDFFRQX2M \q1_reg[3]  ( .D(d1[3]), .SI(q1[2]), .SE(test_se), .CK(clk), .RN(
        rst_n), .Q(q1[3]) );
  SDFFRQX2M \q1_reg[2]  ( .D(d1[2]), .SI(q1[1]), .SE(test_se), .CK(clk), .RN(
        rst_n), .Q(q1[2]) );
  SDFFRQX2M \q1_reg[1]  ( .D(d1[1]), .SI(q1[0]), .SE(test_se), .CK(clk), .RN(
        rst_n), .Q(q1[1]) );
  SDFFRQX2M \q1_reg[0]  ( .D(d1[0]), .SI(test_si), .SE(test_se), .CK(clk), 
        .RN(rst_n), .Q(q1[0]) );
endmodule


module synchronizer_test_1 ( d1, clk, rst_n, q2, test_si, test_se );
  input [4:0] d1;
  output [4:0] q2;
  input clk, rst_n, test_si, test_se;

  wire   [4:0] q1;

  SDFFRQX2M \q2_reg[0]  ( .D(q1[0]), .SI(q1[4]), .SE(test_se), .CK(clk), .RN(
        rst_n), .Q(q2[0]) );
  SDFFRQX2M \q2_reg[1]  ( .D(q1[1]), .SI(q2[0]), .SE(test_se), .CK(clk), .RN(
        rst_n), .Q(q2[1]) );
  SDFFRQX2M \q2_reg[4]  ( .D(q1[4]), .SI(q2[3]), .SE(test_se), .CK(clk), .RN(
        rst_n), .Q(q2[4]) );
  SDFFRQX2M \q2_reg[3]  ( .D(q1[3]), .SI(q2[2]), .SE(test_se), .CK(clk), .RN(
        rst_n), .Q(q2[3]) );
  SDFFRQX2M \q2_reg[2]  ( .D(q1[2]), .SI(q2[1]), .SE(test_se), .CK(clk), .RN(
        rst_n), .Q(q2[2]) );
  SDFFRQX2M \q1_reg[4]  ( .D(d1[4]), .SI(q1[3]), .SE(test_se), .CK(clk), .RN(
        rst_n), .Q(q1[4]) );
  SDFFRQX2M \q1_reg[3]  ( .D(d1[3]), .SI(q1[2]), .SE(test_se), .CK(clk), .RN(
        rst_n), .Q(q1[3]) );
  SDFFRQX2M \q1_reg[2]  ( .D(d1[2]), .SI(q1[1]), .SE(test_se), .CK(clk), .RN(
        rst_n), .Q(q1[2]) );
  SDFFRQX2M \q1_reg[1]  ( .D(d1[1]), .SI(q1[0]), .SE(test_se), .CK(clk), .RN(
        rst_n), .Q(q1[1]) );
  SDFFRQX2M \q1_reg[0]  ( .D(d1[0]), .SI(test_si), .SE(test_se), .CK(clk), 
        .RN(rst_n), .Q(q1[0]) );
endmodule


module fifo_top_test_1 ( w_clk, w_rst_n, rd_clk, rd_rst_n, w_inc, rd_inc, 
        w_data, rd_data, full_flag, empty_flag, test_si3, test_si2, test_si1, 
        test_so3, test_so2, test_so1, test_se );
  input [7:0] w_data;
  output [7:0] rd_data;
  input w_clk, w_rst_n, rd_clk, rd_rst_n, w_inc, rd_inc, test_si3, test_si2,
         test_si1, test_se;
  output full_flag, empty_flag, test_so3, test_so2, test_so1;
  wire   n1, n2, n3, n4, n5, n6, n9;
  wire   [4:0] sync_grey_coded_rd_ptr;
  wire   [4:0] wr_ptr_grey_coded;
  wire   [3:0] w_address;
  wire   [3:0] rd_address;
  wire   [4:0] sync_grey_coded_wr_ptr;
  wire   [4:0] rd_ptr_grey_coded;
  assign test_so3 = sync_grey_coded_wr_ptr[4];

  INVX2M U1 ( .A(n4), .Y(n3) );
  INVX2M U2 ( .A(w_rst_n), .Y(n4) );
  INVX2M U3 ( .A(n2), .Y(n1) );
  INVX2M U4 ( .A(rd_rst_n), .Y(n2) );
  full_gen_test_1 dut1 ( .sync_grey_coded_rd_ptr(sync_grey_coded_rd_ptr), 
        .w_clk(w_clk), .w_rst_n(n3), .w_inc(w_inc), .wr_ptr_grey_coded(
        wr_ptr_grey_coded), .w_address(w_address), .full_flag(full_flag), 
        .test_si(test_si1), .test_so(n9), .test_se(test_se) );
  fifo_memory_test_1 dut2 ( .w_clk(w_clk), .w_rst_n(n3), .rd_clk(rd_clk), 
        .rd_rst_n(n1), .w_address(w_address), .rd_address(rd_address), .w_inc(
        w_inc), .full_flag(full_flag), .w_data(w_data), .rd_data(rd_data), 
        .test_si3(test_si3), .test_si2(test_si2), .test_si1(n9), .test_so3(n6), 
        .test_so2(test_so2), .test_so1(test_so1), .test_se(test_se) );
  empty_gen_test_1 dut3 ( .sync_grey_coded_wr_ptr(sync_grey_coded_wr_ptr), 
        .rd_clk(rd_clk), .rd_rst_n(n1), .rd_inc(rd_inc), .rd_ptr_grey_coded(
        rd_ptr_grey_coded), .rd_address(rd_address), .empty_flag(empty_flag), 
        .test_si(n6), .test_so(n5), .test_se(test_se) );
  synchronizer_test_0 dut4 ( .d1(rd_ptr_grey_coded), .clk(w_clk), .rst_n(n3), 
        .q2(sync_grey_coded_rd_ptr), .test_si(n5), .test_se(test_se) );
  synchronizer_test_1 dut5 ( .d1(wr_ptr_grey_coded), .clk(rd_clk), .rst_n(n1), 
        .q2(sync_grey_coded_wr_ptr), .test_si(sync_grey_coded_rd_ptr[4]), 
        .test_se(test_se) );
endmodule


module fsm_controller_test_1 ( data_valid, serilaizer_done, parity_enable, clk, 
        rst_n, serilaizer_enable, busy, mux_sel, test_si, test_so, test_se );
  output [1:0] mux_sel;
  input data_valid, serilaizer_done, parity_enable, clk, rst_n, test_si,
         test_se;
  output serilaizer_enable, busy, test_so;
  wire   n7, n8, n9, n10, n11, n12, n13, n14, n15, n16, n17, n4, n5, n6;
  wire   [2:0] current_state;
  assign test_so = current_state[2];

  SDFFRQX2M \current_state_reg[0]  ( .D(n17), .SI(test_si), .SE(test_se), .CK(
        clk), .RN(rst_n), .Q(current_state[0]) );
  SDFFRQX2M \current_state_reg[2]  ( .D(n16), .SI(n5), .SE(test_se), .CK(clk), 
        .RN(rst_n), .Q(current_state[2]) );
  SDFFRQX2M \current_state_reg[1]  ( .D(n15), .SI(current_state[0]), .SE(
        test_se), .CK(clk), .RN(rst_n), .Q(current_state[1]) );
  NAND3BX2M U6 ( .AN(n7), .B(n8), .C(n12), .Y(busy) );
  NOR2X2M U7 ( .A(n7), .B(n8), .Y(serilaizer_enable) );
  OAI21X2M U8 ( .A0(n11), .A1(n8), .B0(n12), .Y(n16) );
  AOI21X2M U9 ( .A0(serilaizer_done), .A1(n6), .B0(n7), .Y(n11) );
  XNOR2X2M U10 ( .A(current_state[2]), .B(n4), .Y(n7) );
  NAND2X2M U11 ( .A(current_state[2]), .B(current_state[0]), .Y(n12) );
  NAND2X2M U12 ( .A(current_state[1]), .B(n12), .Y(n8) );
  INVX2M U13 ( .A(current_state[0]), .Y(n4) );
  OAI32X1M U14 ( .A0(n4), .A1(current_state[2]), .A2(current_state[1]), .B0(n9), .B1(n5), .Y(n15) );
  NOR2X2M U15 ( .A(current_state[2]), .B(n10), .Y(n9) );
  AOI21X2M U16 ( .A0(serilaizer_done), .A1(n6), .B0(current_state[0]), .Y(n10)
         );
  AOI31X2M U17 ( .A0(n13), .A1(n12), .A2(n14), .B0(n7), .Y(n17) );
  NAND2X2M U18 ( .A(data_valid), .B(n5), .Y(n14) );
  NAND3X2M U19 ( .A(serilaizer_done), .B(current_state[1]), .C(parity_enable), 
        .Y(n13) );
  INVX2M U20 ( .A(current_state[1]), .Y(n5) );
  INVX2M U21 ( .A(parity_enable), .Y(n6) );
  OAI2BB2X1M U22 ( .B0(current_state[1]), .B1(current_state[0]), .A0N(
        current_state[0]), .A1N(mux_sel[1]), .Y(mux_sel[0]) );
  NOR2X2M U23 ( .A(n5), .B(current_state[2]), .Y(mux_sel[1]) );
endmodule


module serilaizer_test_1 ( p_data, data_valid, serilaizer_enable, busy, clk, 
        rst_n, serialized_data, serilaizer_done, test_si, test_so, test_se );
  input [7:0] p_data;
  input data_valid, serilaizer_enable, busy, clk, rst_n, test_si, test_se;
  output serialized_data, serilaizer_done, test_so;
  wire   \counter[0] , N24, N25, N26, n12, n13, n15, n16, n17, n18, n19, n20,
         n21, n22, n23, n24, n25, n26, n27, n28, n29, n30, n31, n32, n33, n34,
         n14, n35, n36;
  wire   [7:1] parallel_data_reg;
  assign test_so = parallel_data_reg[7];

  SDFFRQX2M \parallel_data_reg_reg[6]  ( .D(n28), .SI(parallel_data_reg[5]), 
        .SE(test_se), .CK(clk), .RN(rst_n), .Q(parallel_data_reg[6]) );
  SDFFRQX2M \parallel_data_reg_reg[5]  ( .D(n29), .SI(parallel_data_reg[4]), 
        .SE(test_se), .CK(clk), .RN(rst_n), .Q(parallel_data_reg[5]) );
  SDFFRQX2M \parallel_data_reg_reg[4]  ( .D(n30), .SI(parallel_data_reg[3]), 
        .SE(test_se), .CK(clk), .RN(rst_n), .Q(parallel_data_reg[4]) );
  SDFFRQX2M \parallel_data_reg_reg[3]  ( .D(n31), .SI(parallel_data_reg[2]), 
        .SE(test_se), .CK(clk), .RN(rst_n), .Q(parallel_data_reg[3]) );
  SDFFRQX2M \parallel_data_reg_reg[2]  ( .D(n32), .SI(parallel_data_reg[1]), 
        .SE(test_se), .CK(clk), .RN(rst_n), .Q(parallel_data_reg[2]) );
  SDFFRQX2M \parallel_data_reg_reg[1]  ( .D(n33), .SI(serialized_data), .SE(
        test_se), .CK(clk), .RN(rst_n), .Q(parallel_data_reg[1]) );
  SDFFRQX2M \parallel_data_reg_reg[7]  ( .D(n27), .SI(parallel_data_reg[6]), 
        .SE(test_se), .CK(clk), .RN(rst_n), .Q(parallel_data_reg[7]) );
  SDFFRQX2M \parallel_data_reg_reg[0]  ( .D(n34), .SI(n35), .SE(test_se), .CK(
        clk), .RN(rst_n), .Q(serialized_data) );
  SDFFRX1M \counter_reg[2]  ( .D(N26), .SI(n36), .SE(test_se), .CK(clk), .RN(
        rst_n), .Q(n35), .QN(n12) );
  SDFFRQX2M \counter_reg[0]  ( .D(N24), .SI(test_si), .SE(test_se), .CK(clk), 
        .RN(rst_n), .Q(\counter[0] ) );
  SDFFRX1M \counter_reg[1]  ( .D(N25), .SI(\counter[0] ), .SE(test_se), .CK(
        clk), .RN(rst_n), .Q(n36), .QN(n13) );
  NOR2X2M U14 ( .A(n25), .B(n16), .Y(n18) );
  NOR2X2M U15 ( .A(n16), .B(n18), .Y(n15) );
  NAND2BX2M U16 ( .AN(serilaizer_done), .B(serilaizer_enable), .Y(n25) );
  NOR2BX2M U17 ( .AN(data_valid), .B(busy), .Y(n16) );
  OAI2BB1X2M U18 ( .A0N(serialized_data), .A1N(n15), .B0(n24), .Y(n34) );
  AOI22X1M U19 ( .A0(parallel_data_reg[1]), .A1(n18), .B0(p_data[0]), .B1(n16), 
        .Y(n24) );
  OAI2BB1X2M U20 ( .A0N(n15), .A1N(parallel_data_reg[1]), .B0(n23), .Y(n33) );
  AOI22X1M U21 ( .A0(parallel_data_reg[2]), .A1(n18), .B0(p_data[1]), .B1(n16), 
        .Y(n23) );
  OAI2BB1X2M U22 ( .A0N(n15), .A1N(parallel_data_reg[2]), .B0(n22), .Y(n32) );
  AOI22X1M U23 ( .A0(parallel_data_reg[3]), .A1(n18), .B0(p_data[2]), .B1(n16), 
        .Y(n22) );
  OAI2BB1X2M U24 ( .A0N(n15), .A1N(parallel_data_reg[3]), .B0(n21), .Y(n31) );
  AOI22X1M U25 ( .A0(parallel_data_reg[4]), .A1(n18), .B0(p_data[3]), .B1(n16), 
        .Y(n21) );
  OAI2BB1X2M U26 ( .A0N(n15), .A1N(parallel_data_reg[4]), .B0(n20), .Y(n30) );
  AOI22X1M U27 ( .A0(parallel_data_reg[5]), .A1(n18), .B0(p_data[4]), .B1(n16), 
        .Y(n20) );
  OAI2BB1X2M U28 ( .A0N(n15), .A1N(parallel_data_reg[5]), .B0(n19), .Y(n29) );
  AOI22X1M U29 ( .A0(parallel_data_reg[6]), .A1(n18), .B0(p_data[5]), .B1(n16), 
        .Y(n19) );
  OAI2BB1X2M U30 ( .A0N(n15), .A1N(parallel_data_reg[6]), .B0(n17), .Y(n28) );
  AOI22X1M U31 ( .A0(n18), .A1(parallel_data_reg[7]), .B0(p_data[6]), .B1(n16), 
        .Y(n17) );
  AO22X1M U32 ( .A0(n15), .A1(parallel_data_reg[7]), .B0(p_data[7]), .B1(n16), 
        .Y(n27) );
  NOR3X2M U33 ( .A(n13), .B(n14), .C(n12), .Y(serilaizer_done) );
  OAI32X1M U34 ( .A0(n25), .A1(n14), .A2(n13), .B0(n12), .B1(n25), .Y(N26) );
  NOR2X2M U35 ( .A(\counter[0] ), .B(n25), .Y(N24) );
  NOR2X2M U36 ( .A(n26), .B(n25), .Y(N25) );
  CLKXOR2X2M U37 ( .A(n13), .B(\counter[0] ), .Y(n26) );
  INVX2M U38 ( .A(\counter[0] ), .Y(n14) );
endmodule


module parity_calc_test_1 ( p_data, data_valid, busy, parity_type, clk, rst_n, 
        parity_bit, test_si, test_se );
  input [7:0] p_data;
  input data_valid, busy, parity_type, clk, rst_n, test_si, test_se;
  output parity_bit;
  wire   n1, n2, n3, n4, n5, n6, n8;

  SDFFRQX2M parity_bit_reg ( .D(n8), .SI(test_si), .SE(test_se), .CK(clk), 
        .RN(rst_n), .Q(parity_bit) );
  XNOR2X2M U2 ( .A(p_data[3]), .B(p_data[2]), .Y(n5) );
  XOR3XLM U3 ( .A(p_data[5]), .B(p_data[4]), .C(n6), .Y(n3) );
  CLKXOR2X2M U4 ( .A(p_data[7]), .B(p_data[6]), .Y(n6) );
  OAI2BB2X1M U5 ( .B0(n1), .B1(n2), .A0N(parity_bit), .A1N(n2), .Y(n8) );
  NAND2BX2M U6 ( .AN(busy), .B(data_valid), .Y(n2) );
  XOR3XLM U7 ( .A(n3), .B(parity_type), .C(n4), .Y(n1) );
  XOR3XLM U8 ( .A(p_data[1]), .B(p_data[0]), .C(n5), .Y(n4) );
endmodule


module mux ( mux_sel, parity_bit, serialized_data, tx_out );
  input [1:0] mux_sel;
  input parity_bit, serialized_data;
  output tx_out;
  wire   n2, n1, n3, n4, n5;

  AND3X2M U3 ( .A(mux_sel[1]), .B(n5), .C(serialized_data), .Y(n1) );
  INVX8M U4 ( .A(n3), .Y(tx_out) );
  NOR2X1M U5 ( .A(n2), .B(n5), .Y(n4) );
  NOR2XLM U6 ( .A(n4), .B(n1), .Y(n3) );
  CLKINVX1M U7 ( .A(mux_sel[0]), .Y(n5) );
  NOR2BX2M U8 ( .AN(mux_sel[1]), .B(parity_bit), .Y(n2) );
endmodule


module UART_tx_TOP_MODULE_test_1 ( p_data, clk, rst_n, data_valid, parity_type, 
        parity_enable, tx_out, busy, test_si, test_so, test_se );
  input [7:0] p_data;
  input clk, rst_n, data_valid, parity_type, parity_enable, test_si, test_se;
  output tx_out, busy, test_so;
  wire   serilaizer_done, serilaizer_enable, serialized_data, parity_bit, n1,
         n2, n3, n4;
  wire   [1:0] mux_sel;
  assign test_so = parity_bit;

  INVX2M U1 ( .A(n2), .Y(n1) );
  INVX2M U2 ( .A(rst_n), .Y(n2) );
  fsm_controller_test_1 uut0 ( .data_valid(data_valid), .serilaizer_done(
        serilaizer_done), .parity_enable(parity_enable), .clk(clk), .rst_n(n1), 
        .serilaizer_enable(serilaizer_enable), .busy(busy), .mux_sel(mux_sel), 
        .test_si(test_si), .test_so(n4), .test_se(test_se) );
  serilaizer_test_1 uut1 ( .p_data(p_data), .data_valid(data_valid), 
        .serilaizer_enable(serilaizer_enable), .busy(busy), .clk(clk), .rst_n(
        n1), .serialized_data(serialized_data), .serilaizer_done(
        serilaizer_done), .test_si(n4), .test_so(n3), .test_se(test_se) );
  parity_calc_test_1 uut2 ( .p_data(p_data), .data_valid(data_valid), .busy(
        busy), .parity_type(parity_type), .clk(clk), .rst_n(n1), .parity_bit(
        parity_bit), .test_si(n3), .test_se(test_se) );
  mux uu3 ( .mux_sel(mux_sel), .parity_bit(parity_bit), .serialized_data(
        serialized_data), .tx_out(tx_out) );
endmodule


module rst_synchronizer_test_0 ( clk, rst_n, sync_rst, test_si, test_so, 
        test_se );
  input clk, rst_n, test_si, test_se;
  output sync_rst, test_so;

  wire   [2:1] syn_rst_reg;
  assign test_so = syn_rst_reg[2];

  SDFFRQX2M \syn_rst_reg_reg[0]  ( .D(syn_rst_reg[1]), .SI(test_si), .SE(
        test_se), .CK(clk), .RN(rst_n), .Q(sync_rst) );
  SDFFRQX2M \syn_rst_reg_reg[2]  ( .D(1'b1), .SI(syn_rst_reg[1]), .SE(test_se), 
        .CK(clk), .RN(rst_n), .Q(syn_rst_reg[2]) );
  SDFFRQX1M \syn_rst_reg_reg[1]  ( .D(syn_rst_reg[2]), .SI(sync_rst), .SE(
        test_se), .CK(clk), .RN(rst_n), .Q(syn_rst_reg[1]) );
endmodule


module rst_synchronizer_test_1 ( clk, rst_n, sync_rst, test_si, test_so, 
        test_se );
  input clk, rst_n, test_si, test_se;
  output sync_rst, test_so;

  wire   [2:1] syn_rst_reg;
  assign test_so = syn_rst_reg[2];

  SDFFRQX2M \syn_rst_reg_reg[0]  ( .D(syn_rst_reg[1]), .SI(test_si), .SE(
        test_se), .CK(clk), .RN(rst_n), .Q(sync_rst) );
  SDFFRQX2M \syn_rst_reg_reg[2]  ( .D(1'b1), .SI(syn_rst_reg[1]), .SE(test_se), 
        .CK(clk), .RN(rst_n), .Q(syn_rst_reg[2]) );
  SDFFRQX1M \syn_rst_reg_reg[1]  ( .D(syn_rst_reg[2]), .SI(sync_rst), .SE(
        test_se), .CK(clk), .RN(rst_n), .Q(syn_rst_reg[1]) );
endmodule


module clock_gating ( clk_enable, clk, gated_clk );
  input clk_enable, clk;
  output gated_clk;


  TLATNCAX3M dut0 ( .E(clk_enable), .CK(clk), .ECK(gated_clk) );
endmodule


module clk_div_0_DW01_inc_0 ( A, SUM );
  input [7:0] A;
  output [7:0] SUM;

  wire   [7:2] carry;

  ADDHX1M U1_1_6 ( .A(A[6]), .B(carry[6]), .CO(carry[7]), .S(SUM[6]) );
  ADDHX1M U1_1_5 ( .A(A[5]), .B(carry[5]), .CO(carry[6]), .S(SUM[5]) );
  ADDHX1M U1_1_4 ( .A(A[4]), .B(carry[4]), .CO(carry[5]), .S(SUM[4]) );
  ADDHX1M U1_1_3 ( .A(A[3]), .B(carry[3]), .CO(carry[4]), .S(SUM[3]) );
  ADDHX1M U1_1_2 ( .A(A[2]), .B(carry[2]), .CO(carry[3]), .S(SUM[2]) );
  ADDHX1M U1_1_1 ( .A(A[1]), .B(A[0]), .CO(carry[2]), .S(SUM[1]) );
  CLKXOR2X2M U1 ( .A(carry[7]), .B(A[7]), .Y(SUM[7]) );
  CLKINVX1M U2 ( .A(A[0]), .Y(SUM[0]) );
endmodule


module clk_div_test_1 ( i_ref_clk, i_rst_n, i_clk_en, i_div_ratio, o_div_clk, 
        test_si, test_so, test_se );
  input [7:0] i_div_ratio;
  input i_ref_clk, i_rst_n, i_clk_en, test_si, test_se;
  output o_div_clk, test_so;
  wire   N8, N10, N11, N12, N13, N14, N15, N16, N17, n16, n19, n25, n26, n27,
         n28, n29, n30, n31, n32, n33, n1, n2, n3, n4, n5, n6, n17, n18, n20,
         n21, n22, n23, n24, n34, n35, n36, n37, n38, n39, n40, n41, n42, n43,
         n44, n45, n46, n47, n48, n49, n50, n51, n52, n53, n54, n55;
  wire   [7:0] counter;
  assign test_so = counter[7];

  SDFFRX1M clk_reg_reg ( .D(n25), .SI(test_si), .SE(test_se), .CK(i_ref_clk), 
        .RN(i_rst_n), .Q(n55), .QN(n16) );
  SDFFRQX2M \counter_reg[4]  ( .D(n30), .SI(counter[3]), .SE(test_se), .CK(
        i_ref_clk), .RN(i_rst_n), .Q(counter[4]) );
  SDFFRQX2M \counter_reg[0]  ( .D(n26), .SI(n55), .SE(test_se), .CK(i_ref_clk), 
        .RN(i_rst_n), .Q(counter[0]) );
  SDFFRQX2M \counter_reg[6]  ( .D(n32), .SI(counter[5]), .SE(test_se), .CK(
        i_ref_clk), .RN(i_rst_n), .Q(counter[6]) );
  SDFFRQX2M \counter_reg[2]  ( .D(n28), .SI(counter[1]), .SE(test_se), .CK(
        i_ref_clk), .RN(i_rst_n), .Q(counter[2]) );
  SDFFRQX2M \counter_reg[5]  ( .D(n31), .SI(counter[4]), .SE(test_se), .CK(
        i_ref_clk), .RN(i_rst_n), .Q(counter[5]) );
  SDFFRQX2M \counter_reg[1]  ( .D(n27), .SI(counter[0]), .SE(test_se), .CK(
        i_ref_clk), .RN(i_rst_n), .Q(counter[1]) );
  SDFFRQX2M \counter_reg[3]  ( .D(n29), .SI(counter[2]), .SE(test_se), .CK(
        i_ref_clk), .RN(i_rst_n), .Q(counter[3]) );
  SDFFRQX2M \counter_reg[7]  ( .D(n33), .SI(counter[6]), .SE(test_se), .CK(
        i_ref_clk), .RN(i_rst_n), .Q(counter[7]) );
  OAI2BB2X1M U19 ( .B0(n19), .B1(n16), .A0N(i_ref_clk), .A1N(n19), .Y(
        o_div_clk) );
  AND2X2M U4 ( .A(counter[0]), .B(N8), .Y(n1) );
  AND2X2M U5 ( .A(counter[1]), .B(N8), .Y(n2) );
  AND2X2M U14 ( .A(counter[2]), .B(N8), .Y(n3) );
  AND2X2M U15 ( .A(counter[3]), .B(N8), .Y(n4) );
  AND2X2M U16 ( .A(counter[4]), .B(N8), .Y(n5) );
  AND2X2M U17 ( .A(counter[5]), .B(N8), .Y(n6) );
  AND2X2M U18 ( .A(counter[6]), .B(N8), .Y(n17) );
  AND2X2M U20 ( .A(N8), .B(counter[7]), .Y(n18) );
  NAND2BX2M U21 ( .AN(n43), .B(i_clk_en), .Y(n19) );
  NAND2X2M U22 ( .A(n45), .B(n46), .Y(N8) );
  CLKMX2X2M U23 ( .A(N17), .B(counter[7]), .S0(n19), .Y(n33) );
  CLKMX2X2M U24 ( .A(N16), .B(counter[6]), .S0(n19), .Y(n32) );
  CLKMX2X2M U25 ( .A(N15), .B(counter[5]), .S0(n19), .Y(n31) );
  CLKMX2X2M U26 ( .A(N14), .B(counter[4]), .S0(n19), .Y(n30) );
  CLKMX2X2M U27 ( .A(N13), .B(counter[3]), .S0(n19), .Y(n29) );
  CLKMX2X2M U28 ( .A(N12), .B(counter[2]), .S0(n19), .Y(n28) );
  CLKMX2X2M U29 ( .A(N11), .B(counter[1]), .S0(n19), .Y(n27) );
  CLKMX2X2M U30 ( .A(N10), .B(counter[0]), .S0(n19), .Y(n26) );
  MXI2X1M U31 ( .A(n20), .B(n16), .S0(n19), .Y(n25) );
  CLKXOR2X2M U32 ( .A(o_div_clk), .B(n21), .Y(n20) );
  AOI221XLM U33 ( .A0(n22), .A1(n23), .B0(n24), .B1(n34), .C0(n35), .Y(n21) );
  CLKINVX1M U34 ( .A(N8), .Y(n35) );
  NOR4X1M U35 ( .A(counter[7]), .B(n36), .C(n37), .D(n38), .Y(n34) );
  CLKXOR2X2M U36 ( .A(i_div_ratio[3]), .B(counter[2]), .Y(n38) );
  CLKXOR2X2M U37 ( .A(i_div_ratio[2]), .B(counter[1]), .Y(n37) );
  CLKXOR2X2M U38 ( .A(i_div_ratio[1]), .B(counter[0]), .Y(n36) );
  NOR4X1M U39 ( .A(n39), .B(n40), .C(n41), .D(n42), .Y(n24) );
  CLKXOR2X2M U40 ( .A(i_div_ratio[7]), .B(counter[6]), .Y(n42) );
  CLKXOR2X2M U41 ( .A(i_div_ratio[6]), .B(counter[5]), .Y(n41) );
  CLKXOR2X2M U42 ( .A(i_div_ratio[5]), .B(counter[4]), .Y(n40) );
  CLKXOR2X2M U43 ( .A(i_div_ratio[4]), .B(counter[3]), .Y(n39) );
  NOR4X1M U44 ( .A(counter[7]), .B(counter[6]), .C(counter[5]), .D(counter[4]), 
        .Y(n23) );
  NOR4X1M U45 ( .A(counter[3]), .B(counter[2]), .C(counter[1]), .D(counter[0]), 
        .Y(n22) );
  NOR4BX1M U46 ( .AN(n44), .B(i_div_ratio[2]), .C(i_div_ratio[3]), .D(
        i_div_ratio[1]), .Y(n43) );
  NOR4X1M U47 ( .A(i_div_ratio[7]), .B(i_div_ratio[6]), .C(i_div_ratio[5]), 
        .D(i_div_ratio[4]), .Y(n44) );
  NOR4X1M U48 ( .A(n47), .B(n48), .C(n49), .D(n50), .Y(n46) );
  CLKXOR2X2M U49 ( .A(i_div_ratio[7]), .B(counter[7]), .Y(n50) );
  CLKXOR2X2M U50 ( .A(i_div_ratio[2]), .B(counter[2]), .Y(n49) );
  CLKXOR2X2M U51 ( .A(i_div_ratio[1]), .B(counter[1]), .Y(n48) );
  CLKXOR2X2M U52 ( .A(i_div_ratio[0]), .B(counter[0]), .Y(n47) );
  NOR4X1M U53 ( .A(n51), .B(n52), .C(n53), .D(n54), .Y(n45) );
  CLKXOR2X2M U54 ( .A(i_div_ratio[6]), .B(counter[6]), .Y(n54) );
  CLKXOR2X2M U55 ( .A(i_div_ratio[5]), .B(counter[5]), .Y(n53) );
  CLKXOR2X2M U56 ( .A(i_div_ratio[4]), .B(counter[4]), .Y(n52) );
  CLKXOR2X2M U57 ( .A(i_div_ratio[3]), .B(counter[3]), .Y(n51) );
  clk_div_0_DW01_inc_0 add_21_aco ( .A({n18, n17, n6, n5, n4, n3, n2, n1}), 
        .SUM({N17, N16, N15, N14, N13, N12, N11, N10}) );
endmodule


module clk_div_1_DW01_inc_0 ( A, SUM );
  input [7:0] A;
  output [7:0] SUM;

  wire   [7:2] carry;

  ADDHX1M U1_1_6 ( .A(A[6]), .B(carry[6]), .CO(carry[7]), .S(SUM[6]) );
  ADDHX1M U1_1_5 ( .A(A[5]), .B(carry[5]), .CO(carry[6]), .S(SUM[5]) );
  ADDHX1M U1_1_4 ( .A(A[4]), .B(carry[4]), .CO(carry[5]), .S(SUM[4]) );
  ADDHX1M U1_1_3 ( .A(A[3]), .B(carry[3]), .CO(carry[4]), .S(SUM[3]) );
  ADDHX1M U1_1_2 ( .A(A[2]), .B(carry[2]), .CO(carry[3]), .S(SUM[2]) );
  ADDHX1M U1_1_1 ( .A(A[1]), .B(A[0]), .CO(carry[2]), .S(SUM[1]) );
  CLKXOR2X2M U1 ( .A(carry[7]), .B(A[7]), .Y(SUM[7]) );
  CLKINVX1M U2 ( .A(A[0]), .Y(SUM[0]) );
endmodule


module clk_div_test_0 ( i_ref_clk, i_rst_n, i_clk_en, i_div_ratio, o_div_clk, 
        test_si, test_so, test_se );
  input [7:0] i_div_ratio;
  input i_ref_clk, i_rst_n, i_clk_en, test_si, test_se;
  output o_div_clk, test_so;
  wire   N8, N10, N11, N12, N13, N14, N15, N16, N17, n1, n2, n3, n4, n5, n6,
         n17, n18, n20, n21, n22, n23, n24, n34, n35, n36, n37, n38, n39, n40,
         n41, n42, n43, n44, n45, n46, n47, n48, n49, n50, n51, n52, n53, n54,
         n55, n56, n57, n58, n59, n60, n61, n62, n63, n64, n65, n75;
  wire   [7:0] counter;
  assign test_so = counter[7];

  SDFFRX1M clk_reg_reg ( .D(n63), .SI(test_si), .SE(test_se), .CK(i_ref_clk), 
        .RN(i_rst_n), .Q(n75), .QN(n65) );
  SDFFRQX2M \counter_reg[4]  ( .D(n58), .SI(counter[3]), .SE(test_se), .CK(
        i_ref_clk), .RN(i_rst_n), .Q(counter[4]) );
  SDFFRQX2M \counter_reg[0]  ( .D(n62), .SI(n75), .SE(test_se), .CK(i_ref_clk), 
        .RN(i_rst_n), .Q(counter[0]) );
  SDFFRQX2M \counter_reg[6]  ( .D(n56), .SI(counter[5]), .SE(test_se), .CK(
        i_ref_clk), .RN(i_rst_n), .Q(counter[6]) );
  SDFFRQX2M \counter_reg[2]  ( .D(n60), .SI(counter[1]), .SE(test_se), .CK(
        i_ref_clk), .RN(i_rst_n), .Q(counter[2]) );
  SDFFRQX2M \counter_reg[5]  ( .D(n57), .SI(counter[4]), .SE(test_se), .CK(
        i_ref_clk), .RN(i_rst_n), .Q(counter[5]) );
  SDFFRQX2M \counter_reg[1]  ( .D(n61), .SI(counter[0]), .SE(test_se), .CK(
        i_ref_clk), .RN(i_rst_n), .Q(counter[1]) );
  SDFFRQX2M \counter_reg[3]  ( .D(n59), .SI(counter[2]), .SE(test_se), .CK(
        i_ref_clk), .RN(i_rst_n), .Q(counter[3]) );
  SDFFRQX2M \counter_reg[7]  ( .D(n55), .SI(counter[6]), .SE(test_se), .CK(
        i_ref_clk), .RN(i_rst_n), .Q(counter[7]) );
  OAI2BB2X1M U19 ( .B0(n64), .B1(n65), .A0N(i_ref_clk), .A1N(n64), .Y(
        o_div_clk) );
  AND2X2M U4 ( .A(counter[0]), .B(N8), .Y(n1) );
  AND2X2M U5 ( .A(counter[1]), .B(N8), .Y(n2) );
  AND2X2M U14 ( .A(counter[2]), .B(N8), .Y(n3) );
  AND2X2M U15 ( .A(counter[3]), .B(N8), .Y(n4) );
  AND2X2M U16 ( .A(counter[4]), .B(N8), .Y(n5) );
  AND2X2M U17 ( .A(counter[5]), .B(N8), .Y(n6) );
  AND2X2M U18 ( .A(counter[6]), .B(N8), .Y(n17) );
  AND2X2M U20 ( .A(N8), .B(counter[7]), .Y(n18) );
  NAND2BX2M U21 ( .AN(n43), .B(i_clk_en), .Y(n64) );
  NAND2X2M U22 ( .A(n45), .B(n46), .Y(N8) );
  CLKMX2X2M U23 ( .A(N17), .B(counter[7]), .S0(n64), .Y(n55) );
  CLKMX2X2M U24 ( .A(N16), .B(counter[6]), .S0(n64), .Y(n56) );
  CLKMX2X2M U25 ( .A(N15), .B(counter[5]), .S0(n64), .Y(n57) );
  CLKMX2X2M U26 ( .A(N14), .B(counter[4]), .S0(n64), .Y(n58) );
  CLKMX2X2M U27 ( .A(N13), .B(counter[3]), .S0(n64), .Y(n59) );
  CLKMX2X2M U28 ( .A(N12), .B(counter[2]), .S0(n64), .Y(n60) );
  CLKMX2X2M U29 ( .A(N11), .B(counter[1]), .S0(n64), .Y(n61) );
  CLKMX2X2M U30 ( .A(N10), .B(counter[0]), .S0(n64), .Y(n62) );
  MXI2X1M U31 ( .A(n20), .B(n65), .S0(n64), .Y(n63) );
  CLKXOR2X2M U32 ( .A(o_div_clk), .B(n21), .Y(n20) );
  AOI221XLM U33 ( .A0(n22), .A1(n23), .B0(n24), .B1(n34), .C0(n35), .Y(n21) );
  CLKINVX1M U34 ( .A(N8), .Y(n35) );
  NOR4X1M U35 ( .A(counter[7]), .B(n36), .C(n37), .D(n38), .Y(n34) );
  CLKXOR2X2M U36 ( .A(i_div_ratio[3]), .B(counter[2]), .Y(n38) );
  CLKXOR2X2M U37 ( .A(i_div_ratio[2]), .B(counter[1]), .Y(n37) );
  CLKXOR2X2M U38 ( .A(i_div_ratio[1]), .B(counter[0]), .Y(n36) );
  NOR4X1M U39 ( .A(n39), .B(n40), .C(n41), .D(n42), .Y(n24) );
  CLKXOR2X2M U40 ( .A(i_div_ratio[7]), .B(counter[6]), .Y(n42) );
  CLKXOR2X2M U41 ( .A(i_div_ratio[6]), .B(counter[5]), .Y(n41) );
  CLKXOR2X2M U42 ( .A(i_div_ratio[5]), .B(counter[4]), .Y(n40) );
  CLKXOR2X2M U43 ( .A(i_div_ratio[4]), .B(counter[3]), .Y(n39) );
  NOR4X1M U44 ( .A(counter[7]), .B(counter[6]), .C(counter[5]), .D(counter[4]), 
        .Y(n23) );
  NOR4X1M U45 ( .A(counter[3]), .B(counter[2]), .C(counter[1]), .D(counter[0]), 
        .Y(n22) );
  NOR4BX1M U46 ( .AN(n44), .B(i_div_ratio[2]), .C(i_div_ratio[3]), .D(
        i_div_ratio[1]), .Y(n43) );
  NOR4X1M U47 ( .A(i_div_ratio[7]), .B(i_div_ratio[6]), .C(i_div_ratio[5]), 
        .D(i_div_ratio[4]), .Y(n44) );
  NOR4X1M U48 ( .A(n47), .B(n48), .C(n49), .D(n50), .Y(n46) );
  CLKXOR2X2M U49 ( .A(i_div_ratio[7]), .B(counter[7]), .Y(n50) );
  CLKXOR2X2M U50 ( .A(i_div_ratio[2]), .B(counter[2]), .Y(n49) );
  CLKXOR2X2M U51 ( .A(i_div_ratio[1]), .B(counter[1]), .Y(n48) );
  CLKXOR2X2M U52 ( .A(i_div_ratio[0]), .B(counter[0]), .Y(n47) );
  NOR4X1M U53 ( .A(n51), .B(n52), .C(n53), .D(n54), .Y(n45) );
  CLKXOR2X2M U54 ( .A(i_div_ratio[6]), .B(counter[6]), .Y(n54) );
  CLKXOR2X2M U55 ( .A(i_div_ratio[5]), .B(counter[5]), .Y(n53) );
  CLKXOR2X2M U56 ( .A(i_div_ratio[4]), .B(counter[4]), .Y(n52) );
  CLKXOR2X2M U57 ( .A(i_div_ratio[3]), .B(counter[3]), .Y(n51) );
  clk_div_1_DW01_inc_0 add_21_aco ( .A({n18, n17, n6, n5, n4, n3, n2, n1}), 
        .SUM({N17, N16, N15, N14, N13, N12, N11, N10}) );
endmodule


module pulse_gen_test_1 ( clk, rst_n, in, d2, out, test_si, test_so, test_se
 );
  input clk, rst_n, in, test_si, test_se;
  output d2, out, test_so;
  wire   q;
  assign test_so = q;

  SDFFRQX2M q_reg ( .D(in), .SI(out), .SE(test_se), .CK(clk), .RN(rst_n), .Q(q) );
  SDFFRQX2M out_reg ( .D(d2), .SI(test_si), .SE(test_se), .CK(clk), .RN(rst_n), 
        .Q(out) );
  NOR2BX2M U5 ( .AN(in), .B(q), .Y(d2) );
endmodule


module system_TOP ( Ref_clk, Uart_clk, rst_n, rx_in, tx_out, stop_error, 
        parity_error, start_glitch, SI, SE, TESTMODE, SCAN_CLK, SCAN_RST, SO
 );
  input [4:0] SI;
  output [4:0] SO;
  input Ref_clk, Uart_clk, rst_n, rx_in, SE, TESTMODE, SCAN_CLK, SCAN_RST;
  output tx_out, stop_error, parity_error, start_glitch;
  wire   scan_clk_uart_clk_mux_out, scan_clk_ref_clk_mux_out, tx_clk,
         scan_clk_uart_tx_clk_mux_out, rx_clk, scan_clk_uart_rx_clk_mux_out,
         scan_rst_mux_out, ref_sync_rst, scan_rst_sync1_mux_out, uart_sync_rst,
         scan_rst_sync2_mux_out, empty_flag, q1, out_valid, rx_d_valid,
         full_flag, rd_data_valid, alu_en, clk_en, w_en, r_en, w_inc,
         data_valid, gated_clk, rd_inc, busy, _1_net_, n3, n8, n9, n10, n11,
         n12, n14, n15, n16, n17, n18, n19, n20, n21, n22, n23, n24, n26, n27,
         n28, n29, n30, n34, n35, n36, n37, n42, n45, n46, n47, n48, n49, n50,
         n51, n52, n53, n54, n55, n56, n57, n58, n59;
  wire   [7:0] reg2;
  wire   [3:0] out;
  wire   [15:0] alu_out;
  wire   [7:0] rx_P_data;
  wire   [7:0] rd_data;
  wire   [3:0] alu_fun;
  wire   [3:0] address;
  wire   [7:0] w_data;
  wire   [7:0] tx_P_data;
  wire   [7:0] p_data;
  wire   [7:0] reg0;
  wire   [7:0] reg1;
  wire   [7:0] reg3;
  wire   [7:0] fifo_rd_data;
  assign SO[2] = reg2[3];

  SDFFRQX2M q1_reg ( .D(empty_flag), .SI(n36), .SE(n52), .CK(
        scan_clk_uart_tx_clk_mux_out), .RN(n17), .Q(q1) );
  SDFFRX1M q2_reg ( .D(q1), .SI(q1), .SE(n56), .CK(
        scan_clk_uart_tx_clk_mux_out), .RN(scan_rst_sync2_mux_out), .Q(n35), 
        .QN(n3) );
  INVX2M U20 ( .A(n18), .Y(n17) );
  OR2X2M U21 ( .A(n14), .B(clk_en), .Y(_1_net_) );
  NAND4BX1M U22 ( .AN(reg2[6]), .B(reg2[5]), .C(n22), .D(n21), .Y(n9) );
  NAND4BX1M U23 ( .AN(reg2[5]), .B(reg2[6]), .C(n22), .D(n21), .Y(n10) );
  NOR3X2M U24 ( .A(n9), .B(n46), .C(reg2[2]), .Y(out[2]) );
  NOR3X2M U25 ( .A(n10), .B(n46), .C(reg2[2]), .Y(out[1]) );
  NOR4X1M U26 ( .A(n8), .B(reg2[5]), .C(reg2[7]), .D(reg2[6]), .Y(out[3]) );
  NAND3X2M U27 ( .A(n24), .B(n23), .C(reg2[4]), .Y(n8) );
  OAI211X2M U28 ( .A0(n11), .A1(n12), .B0(n24), .C0(n23), .Y(out[0]) );
  NOR4X1M U29 ( .A(reg2[7]), .B(reg2[6]), .C(reg2[5]), .D(n22), .Y(n11) );
  NAND2X2M U30 ( .A(n10), .B(n9), .Y(n12) );
  INVX2M U31 ( .A(reg2[4]), .Y(n22) );
  INVX2M U32 ( .A(n46), .Y(n23) );
  INVX2M U33 ( .A(reg2[2]), .Y(n24) );
  INVX2M U34 ( .A(reg2[7]), .Y(n21) );
  BUFX2M U35 ( .A(address[1]), .Y(n16) );
  BUFX2M U36 ( .A(address[0]), .Y(n15) );
  INVX4M U37 ( .A(n20), .Y(n19) );
  INVX2M U38 ( .A(scan_rst_sync1_mux_out), .Y(n20) );
  INVX2M U39 ( .A(scan_rst_sync2_mux_out), .Y(n18) );
  BUFX2M U40 ( .A(TESTMODE), .Y(n14) );
  CLKBUFX40M U42 ( .A(SO[0]), .Y(stop_error) );
  INVXLM U43 ( .A(reg2[3]), .Y(n45) );
  INVXLM U44 ( .A(n45), .Y(n46) );
  DLY1X1M U45 ( .A(n50), .Y(n47) );
  INVXLM U46 ( .A(n58), .Y(n48) );
  INVXLM U47 ( .A(n48), .Y(n49) );
  INVXLM U48 ( .A(n48), .Y(n50) );
  INVXLM U49 ( .A(n59), .Y(n51) );
  INVXLM U50 ( .A(n51), .Y(n52) );
  INVXLM U51 ( .A(n49), .Y(n53) );
  INVXLM U52 ( .A(n53), .Y(n54) );
  INVXLM U53 ( .A(SE), .Y(n55) );
  INVXLM U54 ( .A(n55), .Y(n56) );
  INVXLM U55 ( .A(n55), .Y(n57) );
  INVXLM U56 ( .A(n55), .Y(n58) );
  INVXLM U57 ( .A(n55), .Y(n59) );
  mux_2x1_0 scan_clk_uart_clk_mux ( .in0(Uart_clk), .in1(SCAN_CLK), .sel(n14), 
        .out(scan_clk_uart_clk_mux_out) );
  mux_2x1_6 scan_clk_ref_clk_mux ( .in0(Ref_clk), .in1(SCAN_CLK), .sel(n14), 
        .out(scan_clk_ref_clk_mux_out) );
  mux_2x1_5 scan_clk_uart_tx_clk_mux ( .in0(tx_clk), .in1(SCAN_CLK), .sel(n14), 
        .out(scan_clk_uart_tx_clk_mux_out) );
  mux_2x1_4 scan_clk_uart_rx_clk_mux ( .in0(rx_clk), .in1(SCAN_CLK), .sel(n14), 
        .out(scan_clk_uart_rx_clk_mux_out) );
  mux_2x1_3 scan_rst_mux ( .in0(rst_n), .in1(SCAN_RST), .sel(n14), .out(
        scan_rst_mux_out) );
  mux_2x1_2 scan_rst1_mux ( .in0(ref_sync_rst), .in1(SCAN_RST), .sel(n14), 
        .out(scan_rst_sync1_mux_out) );
  mux_2x1_1 scan_rst2_mux ( .in0(uart_sync_rst), .in1(SCAN_RST), .sel(n14), 
        .out(scan_rst_sync2_mux_out) );
  sys_ctrl_test_1 sys_ctrl ( .clk(scan_clk_ref_clk_mux_out), .rst_n(n19), 
        .alu_out(alu_out), .out_valid(out_valid), .rx_P_data(rx_P_data), 
        .rx_d_valid(rx_d_valid), .full_flag(full_flag), .rd_data(rd_data), 
        .rd_data_valid(rd_data_valid), .alu_en(alu_en), .alu_fun(alu_fun), 
        .clk_en(clk_en), .address(address), .w_en(w_en), .r_en(r_en), .w_data(
        w_data), .tx_P_data(tx_P_data), .w_inc(w_inc), .test_si(n29), 
        .test_so(n28), .test_se(n57) );
  data_sync_top_module_test_1 data_sync ( .dest_clk(scan_clk_ref_clk_mux_out), 
        .dest_rst_n(n19), .unsync_bus(p_data), .bus_enable(data_valid), 
        .sync_bus(rx_P_data), .enable_pulse(rx_d_valid), .test_si(n37), 
        .test_se(n52) );
  RX_TOP_MODULE_test_1 uart_RX ( .rx_in(rx_in), .prescale({reg2[7:4], n46, 
        reg2[2]}), .parity_enable(reg2[0]), .parity_type(reg2[1]), .rx_clk(
        scan_clk_uart_rx_clk_mux_out), .rst_n(n17), .p_data(p_data), 
        .stop_error(SO[0]), .parity_error(parity_error), .start_glitch(
        start_glitch), .data_valid(data_valid), .test_si2(n26), .test_si1(n27), 
        .test_se(n47) );
  RF_test_1 register_file ( .wren(w_en), .rden(r_en), .clk(
        scan_clk_ref_clk_mux_out), .rst(n19), .wrdata(w_data), .address({
        address[3:2], n16, n15}), .rddata(rd_data), .rddata_valid(
        rd_data_valid), .reg0(reg0), .reg1(reg1), .reg2(reg2), .reg3(reg3), 
        .test_si3(SI[0]), .test_si2(SI[1]), .test_si1(n34), .test_so2(n30), 
        .test_so1(SO[1]), .test_se(SE) );
  bit16_alu_test_1 alu ( .a(reg0), .b(reg1), .alu_fun(alu_fun), .clk(gated_clk), .rst_n(n19), .enable(alu_en), .alu_out(alu_out), .out_valid(out_valid), 
        .test_si(n42), .test_se(n54) );
  fifo_top_test_1 async_fifo ( .w_clk(scan_clk_ref_clk_mux_out), .w_rst_n(n19), 
        .rd_clk(scan_clk_uart_tx_clk_mux_out), .rd_rst_n(n17), .w_inc(w_inc), 
        .rd_inc(rd_inc), .w_data(tx_P_data), .rd_data(fifo_rd_data), 
        .full_flag(full_flag), .empty_flag(empty_flag), .test_si3(SI[2]), 
        .test_si2(SI[3]), .test_si1(out_valid), .test_so3(n37), .test_so2(
        SO[3]), .test_so1(SO[4]), .test_se(SE) );
  UART_tx_TOP_MODULE_test_1 UART_tx ( .p_data(fifo_rd_data), .clk(
        scan_clk_uart_tx_clk_mux_out), .rst_n(n17), .data_valid(n3), 
        .parity_type(reg2[1]), .parity_enable(reg2[0]), .tx_out(tx_out), 
        .busy(busy), .test_si(SI[4]), .test_so(n42), .test_se(n56) );
  rst_synchronizer_test_0 ref_clk_rst_sync ( .clk(scan_clk_ref_clk_mux_out), 
        .rst_n(scan_rst_mux_out), .sync_rst(ref_sync_rst), .test_si(n35), 
        .test_so(n34), .test_se(n52) );
  rst_synchronizer_test_1 uart_clk_rst_sync ( .clk(scan_clk_uart_clk_mux_out), 
        .rst_n(scan_rst_mux_out), .sync_rst(uart_sync_rst), .test_si(
        parity_error), .test_so(n26), .test_se(n59) );
  clock_gating clock_gating_cell ( .clk_enable(_1_net_), .clk(
        scan_clk_ref_clk_mux_out), .gated_clk(gated_clk) );
  clk_div_test_1 tx_div ( .i_ref_clk(scan_clk_uart_clk_mux_out), .i_rst_n(n17), 
        .i_clk_en(1'b1), .i_div_ratio(reg3), .o_div_clk(tx_clk), .test_si(n28), 
        .test_so(n27), .test_se(n59) );
  clk_div_test_0 rx_div ( .i_ref_clk(scan_clk_uart_clk_mux_out), .i_rst_n(n17), 
        .i_clk_en(1'b1), .i_div_ratio({1'b0, 1'b0, 1'b0, 1'b0, out}), 
        .o_div_clk(rx_clk), .test_si(n30), .test_so(n29), .test_se(n49) );
  pulse_gen_test_1 pulse_gen ( .clk(scan_clk_uart_tx_clk_mux_out), .rst_n(n17), 
        .in(busy), .d2(rd_inc), .test_si(rx_P_data[7]), .test_so(n36), 
        .test_se(n57) );
endmodule

