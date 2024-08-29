/////////////////////////////////////////////////////////////
// Created by: Synopsys DC Expert(TM) in wire load mode
// Version   : K-2015.06
// Date      : Wed Aug 28 22:23:10 2024
/////////////////////////////////////////////////////////////


module sys_ctrl ( clk, rst_n, alu_out, out_valid, rx_P_data, rx_d_valid, 
        full_flag, rd_data, rd_data_valid, alu_en, alu_fun, clk_en, address, 
        w_en, r_en, w_data, tx_P_data, w_inc, clk_div_en );
  input [15:0] alu_out;
  input [7:0] rx_P_data;
  input [7:0] rd_data;
  output [3:0] alu_fun;
  output [3:0] address;
  output [7:0] w_data;
  output [7:0] tx_P_data;
  input clk, rst_n, out_valid, rx_d_valid, full_flag, rd_data_valid;
  output alu_en, clk_en, w_en, r_en, w_inc, clk_div_en;
  wire   n9, n10, n11, n18, n19, n20, n21, n22, n23, n24, n25, n26, n27, n28,
         n29, n30, n31, n32, n33, n34, n35, n36, n37, n38, n39, n40, n41, n42,
         n43, n44, n45, n46, n47, n48, n49, n50, n51, n52, n53, n54, n55, n56,
         n57, n58, n59, n60, n61, n62, n63, n64, n65, n66, n67, n68, n69, n70,
         n71, n72, n73, n74, n75, n76, n77, n78, n79, n80, n81, n82, n83, n84,
         n85, n86, n3, n4, n5, n6, n7, n8, n12, n13, n14, n15, n16, n17, n87,
         n88;
  wire   [3:0] current_state;

  DFFRQX2M \address_reg[1]  ( .D(n80), .CK(clk), .RN(rst_n), .Q(address[1]) );
  DFFRQX2M \current_state_reg[2]  ( .D(n84), .CK(clk), .RN(rst_n), .Q(
        current_state[2]) );
  DFFRQX2M \current_state_reg[0]  ( .D(n86), .CK(clk), .RN(rst_n), .Q(
        current_state[0]) );
  DFFRQX2M \current_state_reg[3]  ( .D(n85), .CK(clk), .RN(rst_n), .Q(
        current_state[3]) );
  DFFRQX2M \current_state_reg[1]  ( .D(n83), .CK(clk), .RN(rst_n), .Q(
        current_state[1]) );
  DFFRX1M \address_reg[2]  ( .D(n81), .CK(clk), .RN(rst_n), .Q(address[2]), 
        .QN(n10) );
  DFFRX1M \address_reg[3]  ( .D(n82), .CK(clk), .RN(rst_n), .Q(address[3]), 
        .QN(n9) );
  DFFRX1M \address_reg[0]  ( .D(n79), .CK(clk), .RN(rst_n), .Q(address[0]), 
        .QN(n11) );
  INVX2M U3 ( .A(1'b0), .Y(clk_div_en) );
  NOR2X2M U5 ( .A(n78), .B(n12), .Y(alu_fun[2]) );
  INVX2M U6 ( .A(n78), .Y(alu_en) );
  NOR2X2M U7 ( .A(n37), .B(n38), .Y(n78) );
  NOR2BX2M U8 ( .AN(n52), .B(n15), .Y(n37) );
  NOR2BX2M U9 ( .AN(n52), .B(n17), .Y(n38) );
  NOR2X2M U10 ( .A(n78), .B(n13), .Y(alu_fun[1]) );
  NOR2X2M U11 ( .A(n78), .B(n14), .Y(alu_fun[0]) );
  NOR2X2M U12 ( .A(n87), .B(n3), .Y(n52) );
  NOR2X2M U13 ( .A(n78), .B(n8), .Y(alu_fun[3]) );
  NAND3X2M U14 ( .A(n16), .B(n88), .C(n52), .Y(n23) );
  INVX2M U15 ( .A(n71), .Y(n15) );
  INVX2M U16 ( .A(n42), .Y(n17) );
  OAI21X2M U17 ( .A0(n16), .A1(n44), .B0(n65), .Y(n86) );
  OAI31X1M U18 ( .A0(n66), .A1(n56), .A2(n67), .B0(n44), .Y(n65) );
  NAND4X2M U19 ( .A(n72), .B(n73), .C(n50), .D(n54), .Y(n66) );
  OAI32X1M U20 ( .A0(n16), .A1(n51), .A2(n87), .B0(n5), .B1(n68), .Y(n67) );
  NOR2BX2M U21 ( .AN(n23), .B(n22), .Y(n25) );
  NOR2X2M U22 ( .A(n24), .B(n13), .Y(w_data[1]) );
  NOR2X2M U23 ( .A(n24), .B(n12), .Y(w_data[2]) );
  NOR2X2M U24 ( .A(n24), .B(n8), .Y(w_data[3]) );
  NOR2X2M U25 ( .A(n24), .B(n7), .Y(w_data[4]) );
  NOR2X2M U26 ( .A(n24), .B(n14), .Y(w_data[0]) );
  AND2X2M U27 ( .A(n39), .B(n87), .Y(r_en) );
  INVX2M U28 ( .A(n41), .Y(n4) );
  OAI211X2M U29 ( .A0(n49), .A1(n5), .B0(n54), .C0(n6), .Y(n85) );
  INVX2M U30 ( .A(n64), .Y(n6) );
  AOI31X2M U31 ( .A0(n51), .A1(n44), .A2(n42), .B0(n87), .Y(n64) );
  AND2X2M U32 ( .A(n3), .B(n71), .Y(n39) );
  AND3X2M U33 ( .A(n26), .B(n16), .C(n88), .Y(n60) );
  OAI211X2M U34 ( .A0(n3), .A1(n50), .B0(n25), .C0(n77), .Y(clk_en) );
  AOI31X2M U35 ( .A0(n42), .A1(n87), .A2(n3), .B0(alu_en), .Y(n77) );
  NAND3X2M U36 ( .A(n71), .B(n5), .C(n26), .Y(n72) );
  NOR2X2M U37 ( .A(n16), .B(current_state[1]), .Y(n71) );
  NOR2X2M U38 ( .A(n88), .B(current_state[0]), .Y(n42) );
  NAND3X2M U39 ( .A(current_state[0]), .B(current_state[1]), .C(n3), .Y(n49)
         );
  NOR2X2M U40 ( .A(n49), .B(current_state[3]), .Y(n22) );
  INVX2M U41 ( .A(current_state[0]), .Y(n16) );
  INVX2M U42 ( .A(current_state[1]), .Y(n88) );
  INVX2M U43 ( .A(current_state[3]), .Y(n87) );
  OAI31X1M U44 ( .A0(n19), .A1(address[1]), .A2(n20), .B0(n21), .Y(w_en) );
  NAND3X2M U45 ( .A(n9), .B(n5), .C(n10), .Y(n19) );
  AOI2BB2XLM U46 ( .B0(n22), .B1(n11), .A0N(n11), .A1N(n23), .Y(n20) );
  INVX2M U47 ( .A(rx_d_valid), .Y(n5) );
  BUFX2M U48 ( .A(current_state[2]), .Y(n3) );
  AOI33X2M U49 ( .A0(n26), .A1(n5), .A2(n42), .B0(n43), .B1(n3), .B2(
        rx_d_valid), .Y(n40) );
  NOR3X2M U50 ( .A(current_state[1]), .B(current_state[3]), .C(
        current_state[0]), .Y(n43) );
  OA21X2M U51 ( .A0(rx_d_valid), .A1(n25), .B0(n21), .Y(n24) );
  OAI21X2M U52 ( .A0(rx_d_valid), .A1(n25), .B0(n40), .Y(n41) );
  OAI222X1M U53 ( .A0(n40), .A1(n14), .B0(n4), .B1(n23), .C0(n11), .C1(n41), 
        .Y(n79) );
  NOR2X2M U54 ( .A(n3), .B(current_state[3]), .Y(n26) );
  OAI22X1M U55 ( .A0(n41), .A1(n10), .B0(n40), .B1(n12), .Y(n81) );
  OAI22X1M U56 ( .A0(n41), .A1(n9), .B0(n40), .B1(n8), .Y(n82) );
  NOR2BX2M U57 ( .AN(rx_P_data[5]), .B(n24), .Y(w_data[5]) );
  NOR2BX2M U58 ( .AN(rx_P_data[6]), .B(n24), .Y(w_data[6]) );
  OAI2BB1X2M U59 ( .A0N(rd_data[0]), .A1N(n18), .B0(n36), .Y(tx_P_data[0]) );
  OAI2BB1X2M U60 ( .A0N(rd_data[1]), .A1N(n18), .B0(n35), .Y(tx_P_data[1]) );
  AOI22X1M U61 ( .A0(alu_out[9]), .A1(n28), .B0(alu_out[1]), .B1(n29), .Y(n35)
         );
  OAI2BB1X2M U62 ( .A0N(rd_data[7]), .A1N(n18), .B0(n27), .Y(tx_P_data[7]) );
  AOI22X1M U63 ( .A0(alu_out[15]), .A1(n28), .B0(alu_out[7]), .B1(n29), .Y(n27) );
  OAI211X2M U64 ( .A0(n53), .A1(n15), .B0(n54), .C0(n55), .Y(n46) );
  AOI22X1M U65 ( .A0(rx_d_valid), .A1(n26), .B0(n51), .B1(current_state[3]), 
        .Y(n53) );
  NOR2BX2M U66 ( .AN(rx_P_data[7]), .B(n24), .Y(w_data[7]) );
  OAI2BB1X2M U67 ( .A0N(rd_data[2]), .A1N(n18), .B0(n34), .Y(tx_P_data[2]) );
  AOI22X1M U68 ( .A0(alu_out[10]), .A1(n28), .B0(alu_out[2]), .B1(n29), .Y(n34) );
  OAI2BB1X2M U69 ( .A0N(rd_data[3]), .A1N(n18), .B0(n33), .Y(tx_P_data[3]) );
  AOI22X1M U70 ( .A0(alu_out[11]), .A1(n28), .B0(alu_out[3]), .B1(n29), .Y(n33) );
  OAI2BB1X2M U71 ( .A0N(rd_data[4]), .A1N(n18), .B0(n32), .Y(tx_P_data[4]) );
  AOI22X1M U72 ( .A0(alu_out[12]), .A1(n28), .B0(alu_out[4]), .B1(n29), .Y(n32) );
  OAI2BB1X2M U73 ( .A0N(rd_data[5]), .A1N(n18), .B0(n31), .Y(tx_P_data[5]) );
  AOI22X1M U74 ( .A0(alu_out[13]), .A1(n28), .B0(alu_out[5]), .B1(n29), .Y(n31) );
  OAI2BB1X2M U75 ( .A0N(rd_data[6]), .A1N(n18), .B0(n30), .Y(tx_P_data[6]) );
  AOI22X1M U76 ( .A0(alu_out[14]), .A1(n28), .B0(alu_out[6]), .B1(n29), .Y(n30) );
  NOR2BX2M U77 ( .AN(out_valid), .B(full_flag), .Y(n51) );
  OAI21X2M U78 ( .A0(rx_d_valid), .A1(n49), .B0(n70), .Y(n56) );
  OAI2B1X2M U79 ( .A1N(rd_data_valid), .A0(full_flag), .B0(n39), .Y(n70) );
  OAI2BB2X1M U80 ( .B0(n40), .B1(n13), .A0N(n4), .A1N(address[1]), .Y(n80) );
  INVX2M U81 ( .A(rx_P_data[0]), .Y(n14) );
  OAI21X2M U82 ( .A0(n88), .A1(n44), .B0(n45), .Y(n83) );
  OAI31X1M U83 ( .A0(n46), .A1(n47), .A2(n48), .B0(n44), .Y(n45) );
  AOI21X2M U84 ( .A0(n49), .A1(n50), .B0(rx_d_valid), .Y(n48) );
  AOI21X2M U85 ( .A0(n51), .A1(n52), .B0(n17), .Y(n47) );
  NAND3X2M U86 ( .A(current_state[0]), .B(current_state[1]), .C(n26), .Y(n21)
         );
  INVX2M U87 ( .A(rx_P_data[1]), .Y(n13) );
  INVX2M U88 ( .A(rx_P_data[2]), .Y(n12) );
  AO21XLM U89 ( .A0(alu_en), .A1(out_valid), .B0(n18), .Y(w_inc) );
  AND2X2M U90 ( .A(n38), .B(out_valid), .Y(n28) );
  AND2X2M U91 ( .A(n37), .B(out_valid), .Y(n29) );
  INVX2M U92 ( .A(rx_P_data[3]), .Y(n8) );
  AND2X2M U93 ( .A(rd_data_valid), .B(r_en), .Y(n18) );
  NAND4X2M U94 ( .A(n59), .B(rx_P_data[0]), .C(n60), .D(n74), .Y(n54) );
  NOR3X2M U95 ( .A(n7), .B(rx_P_data[5]), .C(rx_P_data[1]), .Y(n74) );
  NAND3X2M U96 ( .A(current_state[1]), .B(current_state[3]), .C(
        current_state[0]), .Y(n50) );
  NAND2X2M U97 ( .A(n3), .B(current_state[3]), .Y(n44) );
  AND3X2M U98 ( .A(rx_P_data[2]), .B(rx_P_data[6]), .C(n75), .Y(n59) );
  AND3X2M U99 ( .A(rx_P_data[1]), .B(rx_P_data[5]), .C(n75), .Y(n62) );
  OAI21X2M U100 ( .A0(n3), .A1(n69), .B0(n16), .Y(n68) );
  XNOR2X2M U101 ( .A(n87), .B(current_state[1]), .Y(n69) );
  NAND4X2M U102 ( .A(n60), .B(n14), .C(n62), .D(n76), .Y(n73) );
  NOR3X2M U103 ( .A(rx_P_data[2]), .B(rx_P_data[6]), .C(rx_P_data[4]), .Y(n76)
         );
  NAND4X2M U104 ( .A(n59), .B(n14), .C(n60), .D(n61), .Y(n55) );
  NOR3X2M U105 ( .A(rx_P_data[1]), .B(rx_P_data[5]), .C(rx_P_data[4]), .Y(n61)
         );
  NAND4BX1M U106 ( .AN(n56), .B(n57), .C(n58), .D(n55), .Y(n84) );
  OAI2BB1X2M U107 ( .A0N(n44), .A1N(current_state[0]), .B0(n3), .Y(n57) );
  NAND4X2M U108 ( .A(n60), .B(rx_P_data[0]), .C(n62), .D(n63), .Y(n58) );
  NOR3X2M U109 ( .A(n7), .B(rx_P_data[6]), .C(rx_P_data[2]), .Y(n63) );
  INVX2M U110 ( .A(rx_P_data[4]), .Y(n7) );
  AND3X2M U111 ( .A(rx_P_data[7]), .B(rx_P_data[3]), .C(rx_d_valid), .Y(n75)
         );
  AOI22X1M U112 ( .A0(alu_out[8]), .A1(n28), .B0(alu_out[0]), .B1(n29), .Y(n36) );
endmodule


module enable_sync ( clk, rst_n, bus_enable, sync_bus_enable );
  input clk, rst_n, bus_enable;
  output sync_bus_enable;
  wire   \enable_sync_reg[1] ;

  DFFRQX2M \enable_sync_reg_reg[0]  ( .D(\enable_sync_reg[1] ), .CK(clk), .RN(
        rst_n), .Q(sync_bus_enable) );
  DFFRQX2M \enable_sync_reg_reg[1]  ( .D(bus_enable), .CK(clk), .RN(rst_n), 
        .Q(\enable_sync_reg[1] ) );
endmodule


module pulse_gen_1 ( clk, rst_n, in, d2, out );
  input clk, rst_n, in;
  output d2, out;
  wire   q;

  DFFRQX2M q_reg ( .D(in), .CK(clk), .RN(rst_n), .Q(q) );
  DFFRQX2M out_reg ( .D(d2), .CK(clk), .RN(rst_n), .Q(out) );
  NOR2BX2M U3 ( .AN(in), .B(q), .Y(d2) );
endmodule


module enabled_ff ( unsync_bus, enable_signal, clk, rst_n, sync_bus );
  input [7:0] unsync_bus;
  output [7:0] sync_bus;
  input enable_signal, clk, rst_n;
  wire   n2, n3, n4, n5, n6, n7, n8, n9, n1;

  DFFRQX2M \sync_bus_reg[7]  ( .D(n9), .CK(clk), .RN(rst_n), .Q(sync_bus[7])
         );
  DFFRQX2M \sync_bus_reg[6]  ( .D(n8), .CK(clk), .RN(rst_n), .Q(sync_bus[6])
         );
  DFFRQX2M \sync_bus_reg[5]  ( .D(n7), .CK(clk), .RN(rst_n), .Q(sync_bus[5])
         );
  DFFRQX2M \sync_bus_reg[4]  ( .D(n6), .CK(clk), .RN(rst_n), .Q(sync_bus[4])
         );
  DFFRQX2M \sync_bus_reg[3]  ( .D(n5), .CK(clk), .RN(rst_n), .Q(sync_bus[3])
         );
  DFFRQX2M \sync_bus_reg[0]  ( .D(n2), .CK(clk), .RN(rst_n), .Q(sync_bus[0])
         );
  DFFRQX2M \sync_bus_reg[2]  ( .D(n4), .CK(clk), .RN(rst_n), .Q(sync_bus[2])
         );
  DFFRQX2M \sync_bus_reg[1]  ( .D(n3), .CK(clk), .RN(rst_n), .Q(sync_bus[1])
         );
  INVX2M U2 ( .A(enable_signal), .Y(n1) );
  AO22X1M U3 ( .A0(unsync_bus[0]), .A1(enable_signal), .B0(sync_bus[0]), .B1(
        n1), .Y(n2) );
  AO22X1M U4 ( .A0(unsync_bus[1]), .A1(enable_signal), .B0(sync_bus[1]), .B1(
        n1), .Y(n3) );
  AO22X1M U5 ( .A0(unsync_bus[2]), .A1(enable_signal), .B0(sync_bus[2]), .B1(
        n1), .Y(n4) );
  AO22X1M U6 ( .A0(unsync_bus[3]), .A1(enable_signal), .B0(sync_bus[3]), .B1(
        n1), .Y(n5) );
  AO22X1M U7 ( .A0(unsync_bus[4]), .A1(enable_signal), .B0(sync_bus[4]), .B1(
        n1), .Y(n6) );
  AO22X1M U8 ( .A0(unsync_bus[5]), .A1(enable_signal), .B0(sync_bus[5]), .B1(
        n1), .Y(n7) );
  AO22X1M U9 ( .A0(unsync_bus[6]), .A1(enable_signal), .B0(sync_bus[6]), .B1(
        n1), .Y(n8) );
  AO22X1M U10 ( .A0(unsync_bus[7]), .A1(enable_signal), .B0(sync_bus[7]), .B1(
        n1), .Y(n9) );
endmodule


module data_sync_top_module ( dest_clk, dest_rst_n, unsync_bus, bus_enable, 
        sync_bus, enable_pulse );
  input [7:0] unsync_bus;
  output [7:0] sync_bus;
  input dest_clk, dest_rst_n, bus_enable;
  output enable_pulse;
  wire   sync_bus_enable, mux_enable;

  enable_sync dut1 ( .clk(dest_clk), .rst_n(dest_rst_n), .bus_enable(
        bus_enable), .sync_bus_enable(sync_bus_enable) );
  pulse_gen_1 dut2 ( .clk(dest_clk), .rst_n(dest_rst_n), .in(sync_bus_enable), 
        .d2(mux_enable), .out(enable_pulse) );
  enabled_ff dut3 ( .unsync_bus(unsync_bus), .enable_signal(mux_enable), .clk(
        dest_clk), .rst_n(dest_rst_n), .sync_bus(sync_bus) );
endmodule


module data_sampler ( rx_clk, rst_n, data_sampler_enable, sampling_tick, rx_in, 
        sampled_bit );
  input rx_clk, rst_n, data_sampler_enable, sampling_tick, rx_in;
  output sampled_bit;
  wire   n1, n3, n7, n8, n9, n10, n11, n2, n4, n5, n6;
  wire   [2:0] sampled_data;

  DFFRX1M \sampled_data_reg[1]  ( .D(n10), .CK(rx_clk), .RN(rst_n), .Q(
        sampled_data[1]), .QN(n5) );
  DFFRX1M \sampled_data_reg[0]  ( .D(n9), .CK(rx_clk), .RN(rst_n), .Q(
        sampled_data[0]), .QN(n6) );
  DFFRX1M sampled_bit_reg ( .D(n8), .CK(rx_clk), .RN(rst_n), .Q(sampled_bit)
         );
  DFFRX1M \sampled_data_reg[2]  ( .D(n11), .CK(rx_clk), .RN(rst_n), .QN(n4) );
  INVX2M U2 ( .A(n7), .Y(n2) );
  OAI22X1M U3 ( .A0(n2), .A1(n6), .B0(n7), .B1(n5), .Y(n9) );
  OAI22X1M U4 ( .A0(n2), .A1(n5), .B0(n7), .B1(n4), .Y(n10) );
  NAND2X2M U5 ( .A(sampling_tick), .B(data_sampler_enable), .Y(n7) );
  OAI2BB2X1M U6 ( .B0(n2), .B1(n4), .A0N(rx_in), .A1N(n2), .Y(n11) );
  OAI2BB2X1M U7 ( .B0(n1), .B1(n2), .A0N(sampled_bit), .A1N(n2), .Y(n8) );
  AOI21X2M U8 ( .A0(sampled_data[1]), .A1(sampled_data[0]), .B0(n3), .Y(n1) );
  AOI21X2M U9 ( .A0(n5), .A1(n6), .B0(n4), .Y(n3) );
endmodule


module edge_bit_counter ( rx_clk, rst_n, prescale, counter_enable, 
        deserializer_enable, edge_done_tick, data_done_tick, sampling_tick );
  input [5:0] prescale;
  input rx_clk, rst_n, counter_enable, deserializer_enable;
  output edge_done_tick, data_done_tick, sampling_tick;
  wire   N3, N4, N5, N6, N7, N8, N9, N11, N12, N13, N14, N15, N16, N17, N19,
         N20, N21, N22, N23, N29, N30, N31, N32, N33, N34, N35, N36, N37, N38,
         N39, N40, n25, n26, n27, \add_24/carry[5] , \add_24/carry[4] ,
         \add_24/carry[3] , \add_24/carry[2] , \add_17/carry[4] ,
         \add_17/carry[3] , \add_17/carry[2] , n1, n2, n3, n4, n5, n6, n7, n8,
         n9, n10, n11, n12, n13, n14, n15, n16, n17, n18, n19, n20, n21, n22,
         n23, n24, n28, n29, n30, n31, n32, n33, n34, n35, n36, n37, n38, n39,
         n40, n41, n42, n43, n44, n45, n46, n47, n48, n49, n50, n51, n52;
  wire   [5:0] edge_counter;
  wire   [2:0] data_bit_counter;

  DFFRX1M \edge_counter_reg[5]  ( .D(N40), .CK(rx_clk), .RN(rst_n), .Q(
        edge_counter[5]) );
  DFFRX1M \edge_counter_reg[4]  ( .D(N39), .CK(rx_clk), .RN(rst_n), .Q(
        edge_counter[4]) );
  DFFRX1M \edge_counter_reg[3]  ( .D(N38), .CK(rx_clk), .RN(rst_n), .Q(
        edge_counter[3]) );
  DFFRX1M \edge_counter_reg[2]  ( .D(N37), .CK(rx_clk), .RN(rst_n), .Q(
        edge_counter[2]) );
  DFFRX1M \edge_counter_reg[1]  ( .D(N36), .CK(rx_clk), .RN(rst_n), .Q(
        edge_counter[1]) );
  DFFRX1M \edge_counter_reg[0]  ( .D(N35), .CK(rx_clk), .RN(rst_n), .Q(
        edge_counter[0]), .QN(N29) );
  DFFRX1M \data_bit_counter_reg[0]  ( .D(n27), .CK(rx_clk), .RN(rst_n), .Q(
        data_bit_counter[0]) );
  DFFRX1M \data_bit_counter_reg[1]  ( .D(n25), .CK(rx_clk), .RN(rst_n), .Q(
        data_bit_counter[1]) );
  DFFRX1M \data_bit_counter_reg[2]  ( .D(n26), .CK(rx_clk), .RN(rst_n), .Q(
        data_bit_counter[2]) );
  ADDHX1M U3 ( .A(edge_counter[1]), .B(edge_counter[0]), .CO(\add_24/carry[2] ), .S(N30) );
  ADDHX1M U4 ( .A(edge_counter[2]), .B(\add_24/carry[2] ), .CO(
        \add_24/carry[3] ), .S(N31) );
  ADDHX1M U5 ( .A(edge_counter[3]), .B(\add_24/carry[3] ), .CO(
        \add_24/carry[4] ), .S(N32) );
  ADDHX1M U6 ( .A(edge_counter[4]), .B(\add_24/carry[4] ), .CO(
        \add_24/carry[5] ), .S(N33) );
  OR2X2M U7 ( .A(prescale[1]), .B(prescale[0]), .Y(n1) );
  OR2X2M U8 ( .A(prescale[2]), .B(prescale[1]), .Y(n5) );
  ADDHX1M U9 ( .A(prescale[4]), .B(\add_17/carry[3] ), .CO(\add_17/carry[4] ), 
        .S(N21) );
  ADDHX1M U10 ( .A(prescale[3]), .B(\add_17/carry[2] ), .CO(\add_17/carry[3] ), 
        .S(N20) );
  ADDHX1M U11 ( .A(prescale[2]), .B(prescale[1]), .CO(\add_17/carry[2] ), .S(
        N19) );
  ADDHX1M U12 ( .A(prescale[5]), .B(\add_17/carry[4] ), .CO(N23), .S(N22) );
  CLKINVX1M U13 ( .A(prescale[0]), .Y(N3) );
  OAI2BB1X1M U14 ( .A0N(prescale[0]), .A1N(prescale[1]), .B0(n1), .Y(N4) );
  OR2X1M U15 ( .A(n1), .B(prescale[2]), .Y(n2) );
  OAI2BB1X1M U16 ( .A0N(n1), .A1N(prescale[2]), .B0(n2), .Y(N5) );
  OR2X1M U17 ( .A(n2), .B(prescale[3]), .Y(n3) );
  OAI2BB1X1M U18 ( .A0N(n2), .A1N(prescale[3]), .B0(n3), .Y(N6) );
  OR2X1M U19 ( .A(n3), .B(prescale[4]), .Y(n4) );
  OAI2BB1X1M U20 ( .A0N(n3), .A1N(prescale[4]), .B0(n4), .Y(N7) );
  NOR2X1M U21 ( .A(n4), .B(prescale[5]), .Y(N9) );
  AO21XLM U22 ( .A0(n4), .A1(prescale[5]), .B0(N9), .Y(N8) );
  CLKINVX1M U23 ( .A(prescale[1]), .Y(N11) );
  OAI2BB1X1M U24 ( .A0N(prescale[1]), .A1N(prescale[2]), .B0(n5), .Y(N12) );
  OR2X1M U25 ( .A(n5), .B(prescale[3]), .Y(n6) );
  OAI2BB1X1M U26 ( .A0N(n5), .A1N(prescale[3]), .B0(n6), .Y(N13) );
  XNOR2X1M U27 ( .A(prescale[4]), .B(n6), .Y(N14) );
  NOR3X1M U28 ( .A(prescale[4]), .B(prescale[5]), .C(n6), .Y(N16) );
  OAI21X1M U29 ( .A0(prescale[4]), .A1(n6), .B0(prescale[5]), .Y(n7) );
  NAND2BX1M U30 ( .AN(N16), .B(n7), .Y(N15) );
  CLKXOR2X2M U31 ( .A(\add_24/carry[5] ), .B(edge_counter[5]), .Y(N34) );
  NOR2BX1M U32 ( .AN(N3), .B(edge_counter[0]), .Y(n8) );
  OAI2B2X1M U33 ( .A1N(edge_counter[1]), .A0(n8), .B0(N4), .B1(n8), .Y(n12) );
  XNOR2X1M U34 ( .A(N8), .B(edge_counter[5]), .Y(n11) );
  NOR2BX1M U35 ( .AN(edge_counter[0]), .B(N3), .Y(n9) );
  OAI2B2X1M U36 ( .A1N(N4), .A0(n9), .B0(edge_counter[1]), .B1(n9), .Y(n10) );
  NAND4BX1M U37 ( .AN(N9), .B(n12), .C(n11), .D(n10), .Y(n16) );
  CLKXOR2X2M U38 ( .A(N7), .B(edge_counter[4]), .Y(n15) );
  CLKXOR2X2M U39 ( .A(N5), .B(edge_counter[2]), .Y(n14) );
  CLKXOR2X2M U40 ( .A(N6), .B(edge_counter[3]), .Y(n13) );
  NOR4X1M U41 ( .A(n16), .B(n15), .C(n14), .D(n13), .Y(edge_done_tick) );
  NOR2BX1M U42 ( .AN(edge_counter[0]), .B(N11), .Y(n17) );
  OAI2B2X1M U43 ( .A1N(N12), .A0(n17), .B0(edge_counter[1]), .B1(n17), .Y(n20)
         );
  NOR2BX1M U44 ( .AN(N11), .B(edge_counter[0]), .Y(n18) );
  OAI2B2X1M U45 ( .A1N(edge_counter[1]), .A0(n18), .B0(N12), .B1(n18), .Y(n19)
         );
  NAND4BBX1M U46 ( .AN(N16), .BN(edge_counter[5]), .C(n20), .D(n19), .Y(n24)
         );
  CLKXOR2X2M U47 ( .A(N15), .B(edge_counter[4]), .Y(n23) );
  CLKXOR2X2M U48 ( .A(N13), .B(edge_counter[2]), .Y(n22) );
  CLKXOR2X2M U49 ( .A(N14), .B(edge_counter[3]), .Y(n21) );
  NOR4X1M U50 ( .A(n24), .B(n23), .C(n22), .D(n21), .Y(N17) );
  OR3X1M U51 ( .A(N17), .B(n28), .C(n29), .Y(sampling_tick) );
  NOR4X1M U52 ( .A(n30), .B(n31), .C(n32), .D(n33), .Y(n29) );
  CLKXOR2X2M U53 ( .A(edge_counter[5]), .B(N23), .Y(n33) );
  CLKXOR2X2M U54 ( .A(edge_counter[3]), .B(N21), .Y(n32) );
  CLKXOR2X2M U55 ( .A(edge_counter[2]), .B(N20), .Y(n31) );
  NAND3X1M U56 ( .A(n34), .B(n35), .C(n36), .Y(n30) );
  XNOR2X1M U57 ( .A(edge_counter[0]), .B(N11), .Y(n36) );
  XNOR2X1M U58 ( .A(edge_counter[1]), .B(N19), .Y(n35) );
  XNOR2X1M U59 ( .A(edge_counter[4]), .B(N22), .Y(n34) );
  NOR4X1M U60 ( .A(n37), .B(n38), .C(edge_counter[5]), .D(n39), .Y(n28) );
  CLKXOR2X2M U61 ( .A(prescale[1]), .B(edge_counter[0]), .Y(n39) );
  CLKXOR2X2M U62 ( .A(prescale[5]), .B(edge_counter[4]), .Y(n38) );
  NAND3X1M U63 ( .A(n40), .B(n41), .C(n42), .Y(n37) );
  XNOR2X1M U64 ( .A(edge_counter[2]), .B(prescale[3]), .Y(n42) );
  XNOR2X1M U65 ( .A(edge_counter[3]), .B(prescale[4]), .Y(n41) );
  XNOR2X1M U66 ( .A(edge_counter[1]), .B(prescale[2]), .Y(n40) );
  CLKXOR2X2M U67 ( .A(n43), .B(data_bit_counter[0]), .Y(n27) );
  CLKINVX1M U68 ( .A(n44), .Y(n26) );
  AOI32X1M U69 ( .A0(n45), .A1(data_bit_counter[0]), .A2(data_bit_counter[1]), 
        .B0(n46), .B1(data_bit_counter[2]), .Y(n44) );
  CLKNAND2X2M U70 ( .A(n47), .B(n48), .Y(n46) );
  MXI2X1M U71 ( .A(n49), .B(n48), .S0(data_bit_counter[1]), .Y(n25) );
  AND2X1M U72 ( .A(data_bit_counter[0]), .B(n43), .Y(n48) );
  OAI21X1M U73 ( .A0(n50), .A1(n51), .B0(n47), .Y(n43) );
  CLKNAND2X2M U74 ( .A(n45), .B(data_bit_counter[0]), .Y(n49) );
  CLKINVX1M U75 ( .A(n47), .Y(n45) );
  NAND4X1M U76 ( .A(deserializer_enable), .B(counter_enable), .C(
        edge_done_tick), .D(n50), .Y(n47) );
  CLKINVX1M U77 ( .A(n50), .Y(data_done_tick) );
  NAND3X1M U78 ( .A(data_bit_counter[1]), .B(data_bit_counter[0]), .C(
        data_bit_counter[2]), .Y(n50) );
  NOR2BX1M U79 ( .AN(N34), .B(n52), .Y(N40) );
  NOR2BX1M U80 ( .AN(N33), .B(n52), .Y(N39) );
  NOR2BX1M U81 ( .AN(N32), .B(n52), .Y(N38) );
  NOR2BX1M U82 ( .AN(N31), .B(n52), .Y(N37) );
  NOR2BX1M U83 ( .AN(N30), .B(n52), .Y(N36) );
  NOR2BX1M U84 ( .AN(N29), .B(n52), .Y(N35) );
  CLKNAND2X2M U85 ( .A(counter_enable), .B(n51), .Y(n52) );
  CLKINVX1M U86 ( .A(edge_done_tick), .Y(n51) );
endmodule


module fsm ( rx_clk, rst_n, rx_in, parity_enable, edge_done_tick, 
        data_done_tick, parity_error, start_glitch, stop_error, 
        deserializer_enable, data_sampler_enable, parity_check_enable, 
        start_check_enable, stop_check_enable, counter_enable, data_valid );
  input rx_clk, rst_n, rx_in, parity_enable, edge_done_tick, data_done_tick,
         parity_error, start_glitch, stop_error;
  output deserializer_enable, data_sampler_enable, parity_check_enable,
         start_check_enable, stop_check_enable, counter_enable, data_valid;
  wire   n9, n10, n11, n12, n13, n14, n15, n16, n17, n18, n19, n1, n2, n3, n4,
         n5, n6, n7, n8;
  wire   [2:0] current_state;
  wire   [2:0] next_state;

  DFFRX1M \current_state_reg[2]  ( .D(next_state[2]), .CK(rx_clk), .RN(rst_n), 
        .Q(current_state[2]), .QN(n4) );
  DFFRX1M \current_state_reg[1]  ( .D(next_state[1]), .CK(rx_clk), .RN(rst_n), 
        .Q(current_state[1]), .QN(n6) );
  DFFRX1M \current_state_reg[0]  ( .D(next_state[0]), .CK(rx_clk), .RN(rst_n), 
        .Q(current_state[0]), .QN(n2) );
  NOR4XLM U3 ( .A(stop_error), .B(parity_error), .C(n2), .D(n12), .Y(
        data_valid) );
  NAND2X2M U4 ( .A(edge_done_tick), .B(n4), .Y(n10) );
  OAI21X2M U5 ( .A0(start_glitch), .A1(n2), .B0(n11), .Y(n18) );
  INVX2M U6 ( .A(edge_done_tick), .Y(n7) );
  NOR2X2M U7 ( .A(n10), .B(n11), .Y(parity_check_enable) );
  NAND2X2M U8 ( .A(n9), .B(n4), .Y(data_sampler_enable) );
  NOR3X2M U9 ( .A(n10), .B(current_state[1]), .C(n2), .Y(start_check_enable)
         );
  OAI211X2M U10 ( .A0(rx_in), .A1(counter_enable), .B0(n16), .C0(n17), .Y(
        next_state[0]) );
  NAND3X2M U11 ( .A(deserializer_enable), .B(data_done_tick), .C(parity_enable), .Y(n16) );
  AOI33XLM U12 ( .A0(edge_done_tick), .A1(n2), .A2(n5), .B0(n4), .B1(n7), .B2(
        n18), .Y(n17) );
  INVX2M U13 ( .A(n12), .Y(n5) );
  OAI32X1M U14 ( .A0(n6), .A1(current_state[2]), .A2(n14), .B0(start_glitch), 
        .B1(n1), .Y(next_state[1]) );
  NOR2X2M U15 ( .A(n15), .B(n7), .Y(n14) );
  INVX2M U16 ( .A(start_check_enable), .Y(n1) );
  AOI21X2M U17 ( .A0(data_done_tick), .A1(n8), .B0(current_state[0]), .Y(n15)
         );
  NOR3X2M U18 ( .A(n10), .B(current_state[0]), .C(n6), .Y(deserializer_enable)
         );
  OAI22X1M U19 ( .A0(current_state[0]), .A1(n12), .B0(n13), .B1(n10), .Y(
        next_state[2]) );
  AOI31X2M U20 ( .A0(current_state[1]), .A1(n8), .A2(data_done_tick), .B0(n3), 
        .Y(n13) );
  INVX2M U21 ( .A(n11), .Y(n3) );
  NOR3BX2M U22 ( .AN(n9), .B(n7), .C(n4), .Y(stop_check_enable) );
  NAND2X2M U23 ( .A(n19), .B(n6), .Y(counter_enable) );
  CLKXOR2X2M U24 ( .A(n4), .B(current_state[0]), .Y(n19) );
  NAND2X2M U25 ( .A(current_state[1]), .B(current_state[0]), .Y(n11) );
  NAND2X2M U26 ( .A(current_state[2]), .B(n6), .Y(n12) );
  NOR2X2M U27 ( .A(current_state[0]), .B(current_state[1]), .Y(n9) );
  INVX2M U28 ( .A(parity_enable), .Y(n8) );
endmodule


module deserializer ( sampled_bit, rx_clk, rst_n, deserializer_enable, p_data
 );
  output [7:0] p_data;
  input sampled_bit, rx_clk, rst_n, deserializer_enable;
  wire   n9, n10, n11, n12, n13, n14, n15, n16, n1, n2, n3, n4, n5, n6, n7, n8,
         n17;

  DFFRX1M \p_data_reg[7]  ( .D(n16), .CK(rx_clk), .RN(rst_n), .Q(p_data[7]), 
        .QN(n2) );
  DFFRX1M \p_data_reg[6]  ( .D(n15), .CK(rx_clk), .RN(rst_n), .Q(p_data[6]), 
        .QN(n3) );
  DFFRX1M \p_data_reg[5]  ( .D(n14), .CK(rx_clk), .RN(rst_n), .Q(p_data[5]), 
        .QN(n4) );
  DFFRX1M \p_data_reg[4]  ( .D(n13), .CK(rx_clk), .RN(rst_n), .Q(p_data[4]), 
        .QN(n5) );
  DFFRX1M \p_data_reg[3]  ( .D(n12), .CK(rx_clk), .RN(rst_n), .Q(p_data[3]), 
        .QN(n6) );
  DFFRX1M \p_data_reg[2]  ( .D(n11), .CK(rx_clk), .RN(rst_n), .Q(p_data[2]), 
        .QN(n7) );
  DFFRX1M \p_data_reg[1]  ( .D(n10), .CK(rx_clk), .RN(rst_n), .Q(p_data[1]), 
        .QN(n8) );
  DFFRX1M \p_data_reg[0]  ( .D(n9), .CK(rx_clk), .RN(rst_n), .Q(p_data[0]) );
  INVX2M U2 ( .A(n1), .Y(n17) );
  OAI22X1M U3 ( .A0(n17), .A1(n7), .B0(n1), .B1(n8), .Y(n10) );
  OAI22X1M U4 ( .A0(n17), .A1(n6), .B0(n1), .B1(n7), .Y(n11) );
  OAI22X1M U5 ( .A0(n17), .A1(n5), .B0(n1), .B1(n6), .Y(n12) );
  OAI22X1M U6 ( .A0(n17), .A1(n4), .B0(n1), .B1(n5), .Y(n13) );
  OAI22X1M U7 ( .A0(n17), .A1(n3), .B0(n1), .B1(n4), .Y(n14) );
  OAI22X1M U8 ( .A0(n17), .A1(n2), .B0(n1), .B1(n3), .Y(n15) );
  BUFX2M U9 ( .A(deserializer_enable), .Y(n1) );
  OAI2BB2X1M U10 ( .B0(n1), .B1(n2), .A0N(sampled_bit), .A1N(n1), .Y(n16) );
  OAI2BB2X1M U11 ( .B0(n17), .B1(n8), .A0N(p_data[0]), .A1N(n17), .Y(n9) );
endmodule


module parity_check ( parity_check_enable, parity_type, rx_clk, rst_n, 
        sampled_bit, p_data, parity_error );
  input [7:0] p_data;
  input parity_check_enable, parity_type, rx_clk, rst_n, sampled_bit;
  output parity_error;
  wire   n1, n3, n4, n5, n6, n7, n8, n2;

  DFFRHQX8M parity_error_reg ( .D(n8), .CK(rx_clk), .RN(rst_n), .Q(
        parity_error) );
  OAI2BB2X1M U3 ( .B0(n1), .B1(n2), .A0N(parity_error), .A1N(n2), .Y(n8) );
  XOR3XLM U4 ( .A(n3), .B(n4), .C(n5), .Y(n1) );
  INVX2M U5 ( .A(parity_check_enable), .Y(n2) );
  XNOR2X2M U6 ( .A(p_data[2]), .B(p_data[1]), .Y(n5) );
  XOR3XLM U7 ( .A(p_data[7]), .B(p_data[6]), .C(n6), .Y(n4) );
  XNOR2X2M U8 ( .A(sampled_bit), .B(parity_type), .Y(n6) );
  XOR3XLM U9 ( .A(p_data[3]), .B(p_data[0]), .C(n7), .Y(n3) );
  XNOR2X2M U10 ( .A(p_data[5]), .B(p_data[4]), .Y(n7) );
endmodule


module start_check ( start_check_enable, sampled_bit, start_glitch );
  input start_check_enable, sampled_bit;
  output start_glitch;


  AND2X8M U3 ( .A(start_check_enable), .B(sampled_bit), .Y(start_glitch) );
endmodule


module stop_check ( stop_check_enable, rx_clk, rst_n, sampled_bit, stop_error
 );
  input stop_check_enable, rx_clk, rst_n, sampled_bit;
  output stop_error;
  wire   n2, n1;

  DFFRHQX8M stop_error_reg ( .D(n2), .CK(rx_clk), .RN(rst_n), .Q(stop_error)
         );
  OAI2BB2X1M U3 ( .B0(sampled_bit), .B1(n1), .A0N(stop_error), .A1N(n1), .Y(n2) );
  INVX2M U4 ( .A(stop_check_enable), .Y(n1) );
endmodule


module RX_TOP_MODULE ( rx_in, prescale, parity_enable, parity_type, rx_clk, 
        rst_n, p_data, stop_error, parity_error, start_glitch, data_valid );
  input [5:0] prescale;
  output [7:0] p_data;
  input rx_in, parity_enable, parity_type, rx_clk, rst_n;
  output stop_error, parity_error, start_glitch, data_valid;
  wire   data_sampler_enable, sampling_tick, sampled_bit, counter_enable,
         deserializer_enable, edge_done_tick, data_done_tick,
         parity_check_enable, start_check_enable, stop_check_enable, n1, n2;

  data_sampler dut0 ( .rx_clk(rx_clk), .rst_n(n1), .data_sampler_enable(
        data_sampler_enable), .sampling_tick(sampling_tick), .rx_in(rx_in), 
        .sampled_bit(sampled_bit) );
  edge_bit_counter dut1 ( .rx_clk(rx_clk), .rst_n(n1), .prescale(prescale), 
        .counter_enable(counter_enable), .deserializer_enable(
        deserializer_enable), .edge_done_tick(edge_done_tick), 
        .data_done_tick(data_done_tick), .sampling_tick(sampling_tick) );
  fsm dut2 ( .rx_clk(rx_clk), .rst_n(n1), .rx_in(rx_in), .parity_enable(
        parity_enable), .edge_done_tick(edge_done_tick), .data_done_tick(
        data_done_tick), .parity_error(parity_error), .start_glitch(
        start_glitch), .stop_error(stop_error), .deserializer_enable(
        deserializer_enable), .data_sampler_enable(data_sampler_enable), 
        .parity_check_enable(parity_check_enable), .start_check_enable(
        start_check_enable), .stop_check_enable(stop_check_enable), 
        .counter_enable(counter_enable), .data_valid(data_valid) );
  deserializer dut3 ( .sampled_bit(sampled_bit), .rx_clk(rx_clk), .rst_n(n1), 
        .deserializer_enable(deserializer_enable), .p_data(p_data) );
  parity_check dut4 ( .parity_check_enable(parity_check_enable), .parity_type(
        parity_type), .rx_clk(rx_clk), .rst_n(n1), .sampled_bit(sampled_bit), 
        .p_data(p_data), .parity_error(parity_error) );
  start_check dut5 ( .start_check_enable(start_check_enable), .sampled_bit(
        sampled_bit), .start_glitch(start_glitch) );
  stop_check dut6 ( .stop_check_enable(stop_check_enable), .rx_clk(rx_clk), 
        .rst_n(n1), .sampled_bit(sampled_bit), .stop_error(stop_error) );
  INVX2M U1 ( .A(n2), .Y(n1) );
  INVX2M U2 ( .A(rst_n), .Y(n2) );
endmodule


module RF ( wren, rden, clk, rst, wrdata, address, rddata, rddata_valid, reg0, 
        reg1, reg2, reg3 );
  input [7:0] wrdata;
  input [3:0] address;
  output [7:0] rddata;
  output [7:0] reg0;
  output [7:0] reg1;
  output [7:0] reg2;
  output [7:0] reg3;
  input wren, rden, clk, rst;
  output rddata_valid;
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
         n26, n27, n28, n29, n32, n33, n34, n35, n37, n39, n40, n41, n42, n43,
         n44, n45, n46, n47, n48, n49, n50, n51, n52, n53, n54, n55, n56, n57,
         n58, n59, n60, n61, n62, n63, n64, n65, n66, n67, n68, n69, n70, n71,
         n72, n73, n74, n75, n76, n77, n78, n79, n80, n81, n82, n83, n84, n85,
         n86, n87, n88, n89, n90, n91, n92, n93, n94, n95, n96, n97, n98, n99,
         n100, n101, n102, n103, n104, n105, n106, n107, n108, n109, n110,
         n111, n112, n113, n114, n115, n116, n117, n118, n119, n120, n121,
         n122, n123, n124, n125, n126, n127, n128, n129, n130, n131, n132,
         n133, n134, n135, n136, n137, n138, n139, n140, n141, n142, n143,
         n144, n145, n146, n147, n148, n149, n150, n151, n152, n153, n154,
         n155, n156, n157, n158, n159, n160, n161, n162, n163, n164, n165,
         n166, n167, n168, n169, n170, n171, n172, n173, n174, n175, n3, n4,
         n5, n6, n7, n8, n9, n10, n25, n30, n31, n36, n38, n176, n177, n178,
         n179, n180, n181, n182, n183, n184, n185, n186, n187, n188, n189,
         n190, n191, n192, n193, n194, n195, n196, n197, n198, n199, n200,
         n201, n202, n203, n204, n205, n206, n207, n208, n209, n210, n211,
         n212, n213, n214, n215, n216, n217, n218, n219, n220, n221, n222,
         n223, n224, n225, n226, n227, n228, n229, n230, n231, n232, n233,
         n234, n235, n236;
  assign N10 = address[0];
  assign N11 = address[1];
  assign N12 = address[2];
  assign N13 = address[3];

  DFFRQX2M \rddata_reg[7]  ( .D(n175), .CK(clk), .RN(n218), .Q(rddata[7]) );
  DFFRQX2M \rddata_reg[6]  ( .D(n174), .CK(clk), .RN(n218), .Q(rddata[6]) );
  DFFRQX2M \rddata_reg[5]  ( .D(n173), .CK(clk), .RN(n217), .Q(rddata[5]) );
  DFFRQX2M \rddata_reg[4]  ( .D(n172), .CK(clk), .RN(n217), .Q(rddata[4]) );
  DFFRQX2M \rddata_reg[3]  ( .D(n171), .CK(clk), .RN(n217), .Q(rddata[3]) );
  DFFRQX2M \rddata_reg[2]  ( .D(n170), .CK(clk), .RN(n217), .Q(rddata[2]) );
  DFFRQX2M \rddata_reg[1]  ( .D(n169), .CK(clk), .RN(n217), .Q(rddata[1]) );
  DFFRQX2M \rddata_reg[0]  ( .D(n168), .CK(clk), .RN(n217), .Q(rddata[0]) );
  DFFRQX2M \reg_file_reg[5][7]  ( .D(n127), .CK(clk), .RN(n215), .Q(
        \reg_file[5][7] ) );
  DFFRQX2M \reg_file_reg[5][6]  ( .D(n126), .CK(clk), .RN(n215), .Q(
        \reg_file[5][6] ) );
  DFFRQX2M \reg_file_reg[5][5]  ( .D(n125), .CK(clk), .RN(n215), .Q(
        \reg_file[5][5] ) );
  DFFRQX2M \reg_file_reg[5][4]  ( .D(n124), .CK(clk), .RN(n215), .Q(
        \reg_file[5][4] ) );
  DFFRQX2M \reg_file_reg[5][3]  ( .D(n123), .CK(clk), .RN(n215), .Q(
        \reg_file[5][3] ) );
  DFFRQX2M \reg_file_reg[5][2]  ( .D(n122), .CK(clk), .RN(n214), .Q(
        \reg_file[5][2] ) );
  DFFRQX2M \reg_file_reg[5][1]  ( .D(n121), .CK(clk), .RN(n214), .Q(
        \reg_file[5][1] ) );
  DFFRQX2M \reg_file_reg[5][0]  ( .D(n120), .CK(clk), .RN(n214), .Q(
        \reg_file[5][0] ) );
  DFFRQX2M \reg_file_reg[9][7]  ( .D(n95), .CK(clk), .RN(n213), .Q(
        \reg_file[9][7] ) );
  DFFRQX2M \reg_file_reg[9][6]  ( .D(n94), .CK(clk), .RN(n213), .Q(
        \reg_file[9][6] ) );
  DFFRQX2M \reg_file_reg[9][5]  ( .D(n93), .CK(clk), .RN(n212), .Q(
        \reg_file[9][5] ) );
  DFFRQX2M \reg_file_reg[9][4]  ( .D(n92), .CK(clk), .RN(n212), .Q(
        \reg_file[9][4] ) );
  DFFRQX2M \reg_file_reg[9][3]  ( .D(n91), .CK(clk), .RN(n212), .Q(
        \reg_file[9][3] ) );
  DFFRQX2M \reg_file_reg[9][2]  ( .D(n90), .CK(clk), .RN(n212), .Q(
        \reg_file[9][2] ) );
  DFFRQX2M \reg_file_reg[9][1]  ( .D(n89), .CK(clk), .RN(n212), .Q(
        \reg_file[9][1] ) );
  DFFRQX2M \reg_file_reg[9][0]  ( .D(n88), .CK(clk), .RN(n212), .Q(
        \reg_file[9][0] ) );
  DFFRQX2M \reg_file_reg[13][7]  ( .D(n63), .CK(clk), .RN(n210), .Q(
        \reg_file[13][7] ) );
  DFFRQX2M \reg_file_reg[13][6]  ( .D(n62), .CK(clk), .RN(n210), .Q(
        \reg_file[13][6] ) );
  DFFRQX2M \reg_file_reg[13][5]  ( .D(n61), .CK(clk), .RN(n210), .Q(
        \reg_file[13][5] ) );
  DFFRQX2M \reg_file_reg[13][4]  ( .D(n60), .CK(clk), .RN(n210), .Q(
        \reg_file[13][4] ) );
  DFFRQX2M \reg_file_reg[13][3]  ( .D(n59), .CK(clk), .RN(n210), .Q(
        \reg_file[13][3] ) );
  DFFRQX2M \reg_file_reg[13][2]  ( .D(n58), .CK(clk), .RN(n210), .Q(
        \reg_file[13][2] ) );
  DFFRQX2M \reg_file_reg[13][1]  ( .D(n57), .CK(clk), .RN(n210), .Q(
        \reg_file[13][1] ) );
  DFFRQX2M \reg_file_reg[13][0]  ( .D(n56), .CK(clk), .RN(n210), .Q(
        \reg_file[13][0] ) );
  DFFRQX2M \reg_file_reg[7][7]  ( .D(n111), .CK(clk), .RN(n214), .Q(
        \reg_file[7][7] ) );
  DFFRQX2M \reg_file_reg[7][6]  ( .D(n110), .CK(clk), .RN(n214), .Q(
        \reg_file[7][6] ) );
  DFFRQX2M \reg_file_reg[7][5]  ( .D(n109), .CK(clk), .RN(n214), .Q(
        \reg_file[7][5] ) );
  DFFRQX2M \reg_file_reg[7][4]  ( .D(n108), .CK(clk), .RN(n214), .Q(
        \reg_file[7][4] ) );
  DFFRQX2M \reg_file_reg[7][3]  ( .D(n107), .CK(clk), .RN(n213), .Q(
        \reg_file[7][3] ) );
  DFFRQX2M \reg_file_reg[7][2]  ( .D(n106), .CK(clk), .RN(n213), .Q(
        \reg_file[7][2] ) );
  DFFRQX2M \reg_file_reg[7][1]  ( .D(n105), .CK(clk), .RN(n213), .Q(
        \reg_file[7][1] ) );
  DFFRQX2M \reg_file_reg[7][0]  ( .D(n104), .CK(clk), .RN(n213), .Q(
        \reg_file[7][0] ) );
  DFFRQX2M \reg_file_reg[11][7]  ( .D(n79), .CK(clk), .RN(n212), .Q(
        \reg_file[11][7] ) );
  DFFRQX2M \reg_file_reg[11][6]  ( .D(n78), .CK(clk), .RN(n211), .Q(
        \reg_file[11][6] ) );
  DFFRQX2M \reg_file_reg[11][5]  ( .D(n77), .CK(clk), .RN(n211), .Q(
        \reg_file[11][5] ) );
  DFFRQX2M \reg_file_reg[11][4]  ( .D(n76), .CK(clk), .RN(n211), .Q(
        \reg_file[11][4] ) );
  DFFRQX2M \reg_file_reg[11][3]  ( .D(n75), .CK(clk), .RN(n211), .Q(
        \reg_file[11][3] ) );
  DFFRQX2M \reg_file_reg[11][2]  ( .D(n74), .CK(clk), .RN(n211), .Q(
        \reg_file[11][2] ) );
  DFFRQX2M \reg_file_reg[11][1]  ( .D(n73), .CK(clk), .RN(n211), .Q(
        \reg_file[11][1] ) );
  DFFRQX2M \reg_file_reg[11][0]  ( .D(n72), .CK(clk), .RN(n211), .Q(
        \reg_file[11][0] ) );
  DFFRQX2M \reg_file_reg[15][7]  ( .D(n47), .CK(clk), .RN(n209), .Q(
        \reg_file[15][7] ) );
  DFFRQX2M \reg_file_reg[15][6]  ( .D(n46), .CK(clk), .RN(n209), .Q(
        \reg_file[15][6] ) );
  DFFRQX2M \reg_file_reg[15][5]  ( .D(n45), .CK(clk), .RN(n209), .Q(
        \reg_file[15][5] ) );
  DFFRQX2M \reg_file_reg[15][4]  ( .D(n44), .CK(clk), .RN(n209), .Q(
        \reg_file[15][4] ) );
  DFFRQX2M \reg_file_reg[15][3]  ( .D(n43), .CK(clk), .RN(n209), .Q(
        \reg_file[15][3] ) );
  DFFRQX2M \reg_file_reg[15][2]  ( .D(n42), .CK(clk), .RN(n209), .Q(
        \reg_file[15][2] ) );
  DFFRQX2M \reg_file_reg[15][1]  ( .D(n41), .CK(clk), .RN(n209), .Q(
        \reg_file[15][1] ) );
  DFFRQX2M \reg_file_reg[15][0]  ( .D(n40), .CK(clk), .RN(n213), .Q(
        \reg_file[15][0] ) );
  DFFRQX2M \reg_file_reg[6][7]  ( .D(n119), .CK(clk), .RN(n214), .Q(
        \reg_file[6][7] ) );
  DFFRQX2M \reg_file_reg[6][6]  ( .D(n118), .CK(clk), .RN(n214), .Q(
        \reg_file[6][6] ) );
  DFFRQX2M \reg_file_reg[6][5]  ( .D(n117), .CK(clk), .RN(n214), .Q(
        \reg_file[6][5] ) );
  DFFRQX2M \reg_file_reg[6][4]  ( .D(n116), .CK(clk), .RN(n214), .Q(
        \reg_file[6][4] ) );
  DFFRQX2M \reg_file_reg[6][3]  ( .D(n115), .CK(clk), .RN(n214), .Q(
        \reg_file[6][3] ) );
  DFFRQX2M \reg_file_reg[6][2]  ( .D(n114), .CK(clk), .RN(n214), .Q(
        \reg_file[6][2] ) );
  DFFRQX2M \reg_file_reg[6][1]  ( .D(n113), .CK(clk), .RN(n214), .Q(
        \reg_file[6][1] ) );
  DFFRQX2M \reg_file_reg[6][0]  ( .D(n112), .CK(clk), .RN(n214), .Q(
        \reg_file[6][0] ) );
  DFFRQX2M \reg_file_reg[10][7]  ( .D(n87), .CK(clk), .RN(n212), .Q(
        \reg_file[10][7] ) );
  DFFRQX2M \reg_file_reg[10][6]  ( .D(n86), .CK(clk), .RN(n212), .Q(
        \reg_file[10][6] ) );
  DFFRQX2M \reg_file_reg[10][5]  ( .D(n85), .CK(clk), .RN(n212), .Q(
        \reg_file[10][5] ) );
  DFFRQX2M \reg_file_reg[10][4]  ( .D(n84), .CK(clk), .RN(n212), .Q(
        \reg_file[10][4] ) );
  DFFRQX2M \reg_file_reg[10][3]  ( .D(n83), .CK(clk), .RN(n212), .Q(
        \reg_file[10][3] ) );
  DFFRQX2M \reg_file_reg[10][2]  ( .D(n82), .CK(clk), .RN(n212), .Q(
        \reg_file[10][2] ) );
  DFFRQX2M \reg_file_reg[10][1]  ( .D(n81), .CK(clk), .RN(n212), .Q(
        \reg_file[10][1] ) );
  DFFRQX2M \reg_file_reg[10][0]  ( .D(n80), .CK(clk), .RN(n212), .Q(
        \reg_file[10][0] ) );
  DFFRQX2M \reg_file_reg[14][7]  ( .D(n55), .CK(clk), .RN(n210), .Q(
        \reg_file[14][7] ) );
  DFFRQX2M \reg_file_reg[14][6]  ( .D(n54), .CK(clk), .RN(n210), .Q(
        \reg_file[14][6] ) );
  DFFRQX2M \reg_file_reg[14][5]  ( .D(n53), .CK(clk), .RN(n210), .Q(
        \reg_file[14][5] ) );
  DFFRQX2M \reg_file_reg[14][4]  ( .D(n52), .CK(clk), .RN(n210), .Q(
        \reg_file[14][4] ) );
  DFFRQX2M \reg_file_reg[14][3]  ( .D(n51), .CK(clk), .RN(n210), .Q(
        \reg_file[14][3] ) );
  DFFRQX2M \reg_file_reg[14][2]  ( .D(n50), .CK(clk), .RN(n210), .Q(
        \reg_file[14][2] ) );
  DFFRQX2M \reg_file_reg[14][1]  ( .D(n49), .CK(clk), .RN(n210), .Q(
        \reg_file[14][1] ) );
  DFFRQX2M \reg_file_reg[14][0]  ( .D(n48), .CK(clk), .RN(n209), .Q(
        \reg_file[14][0] ) );
  DFFRQX2M \reg_file_reg[4][7]  ( .D(n135), .CK(clk), .RN(n215), .Q(
        \reg_file[4][7] ) );
  DFFRQX2M \reg_file_reg[4][6]  ( .D(n134), .CK(clk), .RN(n215), .Q(
        \reg_file[4][6] ) );
  DFFRQX2M \reg_file_reg[4][5]  ( .D(n133), .CK(clk), .RN(n215), .Q(
        \reg_file[4][5] ) );
  DFFRQX2M \reg_file_reg[4][4]  ( .D(n132), .CK(clk), .RN(n215), .Q(
        \reg_file[4][4] ) );
  DFFRQX2M \reg_file_reg[4][3]  ( .D(n131), .CK(clk), .RN(n215), .Q(
        \reg_file[4][3] ) );
  DFFRQX2M \reg_file_reg[4][2]  ( .D(n130), .CK(clk), .RN(n215), .Q(
        \reg_file[4][2] ) );
  DFFRQX2M \reg_file_reg[4][1]  ( .D(n129), .CK(clk), .RN(n215), .Q(
        \reg_file[4][1] ) );
  DFFRQX2M \reg_file_reg[4][0]  ( .D(n128), .CK(clk), .RN(n215), .Q(
        \reg_file[4][0] ) );
  DFFRQX2M \reg_file_reg[8][7]  ( .D(n103), .CK(clk), .RN(n213), .Q(
        \reg_file[8][7] ) );
  DFFRQX2M \reg_file_reg[8][6]  ( .D(n102), .CK(clk), .RN(n213), .Q(
        \reg_file[8][6] ) );
  DFFRQX2M \reg_file_reg[8][5]  ( .D(n101), .CK(clk), .RN(n213), .Q(
        \reg_file[8][5] ) );
  DFFRQX2M \reg_file_reg[8][4]  ( .D(n100), .CK(clk), .RN(n213), .Q(
        \reg_file[8][4] ) );
  DFFRQX2M \reg_file_reg[8][3]  ( .D(n99), .CK(clk), .RN(n213), .Q(
        \reg_file[8][3] ) );
  DFFRQX2M \reg_file_reg[8][2]  ( .D(n98), .CK(clk), .RN(n213), .Q(
        \reg_file[8][2] ) );
  DFFRQX2M \reg_file_reg[8][1]  ( .D(n97), .CK(clk), .RN(n213), .Q(
        \reg_file[8][1] ) );
  DFFRQX2M \reg_file_reg[8][0]  ( .D(n96), .CK(clk), .RN(n213), .Q(
        \reg_file[8][0] ) );
  DFFRQX2M \reg_file_reg[12][7]  ( .D(n71), .CK(clk), .RN(n211), .Q(
        \reg_file[12][7] ) );
  DFFRQX2M \reg_file_reg[12][6]  ( .D(n70), .CK(clk), .RN(n211), .Q(
        \reg_file[12][6] ) );
  DFFRQX2M \reg_file_reg[12][5]  ( .D(n69), .CK(clk), .RN(n211), .Q(
        \reg_file[12][5] ) );
  DFFRQX2M \reg_file_reg[12][4]  ( .D(n68), .CK(clk), .RN(n211), .Q(
        \reg_file[12][4] ) );
  DFFRQX2M \reg_file_reg[12][3]  ( .D(n67), .CK(clk), .RN(n211), .Q(
        \reg_file[12][3] ) );
  DFFRQX2M \reg_file_reg[12][2]  ( .D(n66), .CK(clk), .RN(n211), .Q(
        \reg_file[12][2] ) );
  DFFRQX2M \reg_file_reg[12][1]  ( .D(n65), .CK(clk), .RN(n211), .Q(
        \reg_file[12][1] ) );
  DFFRQX2M \reg_file_reg[12][0]  ( .D(n64), .CK(clk), .RN(n211), .Q(
        \reg_file[12][0] ) );
  DFFSQX2M \reg_file_reg[3][5]  ( .D(n141), .CK(clk), .SN(n209), .Q(reg3[5])
         );
  DFFRQX2M \reg_file_reg[3][0]  ( .D(n136), .CK(clk), .RN(n215), .Q(reg3[0])
         );
  DFFRQX2M \reg_file_reg[3][6]  ( .D(n142), .CK(clk), .RN(n216), .Q(reg3[6])
         );
  DFFRQX2M \reg_file_reg[3][7]  ( .D(n143), .CK(clk), .RN(n216), .Q(reg3[7])
         );
  DFFRQX2M \reg_file_reg[3][1]  ( .D(n137), .CK(clk), .RN(n215), .Q(reg3[1])
         );
  DFFRQX2M \reg_file_reg[3][4]  ( .D(n140), .CK(clk), .RN(n216), .Q(reg3[4])
         );
  DFFRQX2M \reg_file_reg[3][3]  ( .D(n139), .CK(clk), .RN(n216), .Q(reg3[3])
         );
  DFFRQX2M \reg_file_reg[3][2]  ( .D(n138), .CK(clk), .RN(n216), .Q(reg3[2])
         );
  DFFRQX2M rddata_valid_reg ( .D(n39), .CK(clk), .RN(n209), .Q(rddata_valid)
         );
  DFFRQX2M \reg_file_reg[2][1]  ( .D(n145), .CK(clk), .RN(n216), .Q(reg2[1])
         );
  DFFSQX2M \reg_file_reg[2][0]  ( .D(n144), .CK(clk), .SN(n209), .Q(reg2[0])
         );
  DFFRQX2M \reg_file_reg[2][4]  ( .D(n148), .CK(clk), .RN(n216), .Q(reg2[4])
         );
  DFFRQX2M \reg_file_reg[2][2]  ( .D(n146), .CK(clk), .RN(n216), .Q(reg2[2])
         );
  DFFRQX2M \reg_file_reg[2][3]  ( .D(n147), .CK(clk), .RN(n216), .Q(reg2[3])
         );
  DFFSQX2M \reg_file_reg[2][7]  ( .D(n151), .CK(clk), .SN(n209), .Q(reg2[7])
         );
  DFFRQX2M \reg_file_reg[2][5]  ( .D(n149), .CK(clk), .RN(n216), .Q(reg2[5])
         );
  DFFRQX2M \reg_file_reg[2][6]  ( .D(n150), .CK(clk), .RN(n216), .Q(reg2[6])
         );
  DFFRQX2M \reg_file_reg[0][2]  ( .D(n162), .CK(clk), .RN(n217), .Q(reg0[2])
         );
  DFFRQX2M \reg_file_reg[0][1]  ( .D(n161), .CK(clk), .RN(n217), .Q(reg0[1])
         );
  DFFRQX2M \reg_file_reg[0][0]  ( .D(n160), .CK(clk), .RN(n217), .Q(reg0[0])
         );
  DFFRQX2M \reg_file_reg[0][3]  ( .D(n163), .CK(clk), .RN(n217), .Q(reg0[3])
         );
  DFFRQX2M \reg_file_reg[0][4]  ( .D(n164), .CK(clk), .RN(n217), .Q(reg0[4])
         );
  DFFRQX2M \reg_file_reg[0][5]  ( .D(n165), .CK(clk), .RN(n217), .Q(reg0[5])
         );
  DFFRHQX1M \reg_file_reg[0][7]  ( .D(n167), .CK(clk), .RN(rst), .Q(reg0[7])
         );
  DFFRHQX1M \reg_file_reg[1][3]  ( .D(n155), .CK(clk), .RN(n216), .Q(reg1[3])
         );
  DFFRQX2M \reg_file_reg[1][2]  ( .D(n154), .CK(clk), .RN(n216), .Q(reg1[2])
         );
  DFFRHQX1M \reg_file_reg[1][5]  ( .D(n157), .CK(clk), .RN(n217), .Q(reg1[5])
         );
  DFFRHQX1M \reg_file_reg[1][4]  ( .D(n156), .CK(clk), .RN(n216), .Q(reg1[4])
         );
  DFFRHQX1M \reg_file_reg[0][6]  ( .D(n166), .CK(clk), .RN(n217), .Q(reg0[6])
         );
  DFFRHQX2M \reg_file_reg[1][0]  ( .D(n152), .CK(clk), .RN(n209), .Q(reg1[0])
         );
  DFFRQX2M \reg_file_reg[1][1]  ( .D(n153), .CK(clk), .RN(n216), .Q(reg1[1])
         );
  DFFRHQX4M \reg_file_reg[1][7]  ( .D(n159), .CK(clk), .RN(n209), .Q(reg1[7])
         );
  DFFRHQX4M \reg_file_reg[1][6]  ( .D(n158), .CK(clk), .RN(n209), .Q(reg1[6])
         );
  NOR2X2M U3 ( .A(n226), .B(n225), .Y(n3) );
  MX4XLM U4 ( .A(n197), .B(n195), .C(n196), .D(n194), .S0(N13), .S1(N12), .Y(
        N35) );
  MX4XLM U5 ( .A(n193), .B(n191), .C(n192), .D(n190), .S0(N13), .S1(N12), .Y(
        N36) );
  MX4XLM U6 ( .A(n189), .B(n187), .C(n188), .D(n186), .S0(N13), .S1(N12), .Y(
        N37) );
  MX4XLM U7 ( .A(n185), .B(n183), .C(n184), .D(n182), .S0(N13), .S1(N12), .Y(
        N38) );
  NOR3BX2M U8 ( .AN(n23), .B(n198), .C(N13), .Y(n29) );
  NOR3BX2M U9 ( .AN(n23), .B(N13), .C(n206), .Y(n27) );
  INVXLM U10 ( .A(reg1[7]), .Y(n4) );
  INVX2M U11 ( .A(n4), .Y(n5) );
  MX4XLM U12 ( .A(reg0[2]), .B(reg1[2]), .C(reg2[2]), .D(reg3[2]), .S0(n198), 
        .S1(N11), .Y(n177) );
  MX2XLM U13 ( .A(reg1[2]), .B(wrdata[2]), .S0(n3), .Y(n154) );
  MX2XLM U14 ( .A(reg0[5]), .B(wrdata[5]), .S0(n224), .Y(n165) );
  MX2XLM U15 ( .A(reg0[6]), .B(wrdata[6]), .S0(n224), .Y(n166) );
  NOR2X2M U16 ( .A(n208), .B(N12), .Y(n19) );
  INVX2M U17 ( .A(n206), .Y(n198) );
  INVX2M U18 ( .A(n206), .Y(n199) );
  INVX2M U19 ( .A(n37), .Y(n224) );
  INVX2M U20 ( .A(wrdata[0]), .Y(n234) );
  INVX2M U21 ( .A(wrdata[1]), .Y(n233) );
  INVX2M U22 ( .A(wrdata[2]), .Y(n232) );
  INVX2M U23 ( .A(wrdata[3]), .Y(n231) );
  INVX2M U24 ( .A(wrdata[4]), .Y(n230) );
  INVX2M U25 ( .A(n1), .Y(n235) );
  BUFX2M U26 ( .A(n223), .Y(n209) );
  BUFX2M U27 ( .A(n219), .Y(n217) );
  BUFX2M U28 ( .A(n223), .Y(n210) );
  BUFX2M U29 ( .A(n222), .Y(n211) );
  BUFX2M U30 ( .A(n222), .Y(n212) );
  BUFX2M U31 ( .A(n221), .Y(n213) );
  BUFX2M U32 ( .A(n221), .Y(n214) );
  BUFX2M U33 ( .A(n220), .Y(n215) );
  BUFX2M U34 ( .A(n220), .Y(n216) );
  BUFX2M U35 ( .A(n219), .Y(n218) );
  NAND2BX2M U36 ( .AN(n226), .B(n29), .Y(n37) );
  NOR2BX2M U37 ( .AN(wren), .B(rden), .Y(n23) );
  BUFX2M U38 ( .A(n26), .Y(n205) );
  NAND2X2M U39 ( .A(n27), .B(n12), .Y(n26) );
  BUFX2M U40 ( .A(n28), .Y(n204) );
  NAND2X2M U41 ( .A(n29), .B(n12), .Y(n28) );
  BUFX2M U42 ( .A(n32), .Y(n203) );
  NAND2X2M U43 ( .A(n27), .B(n16), .Y(n32) );
  BUFX2M U44 ( .A(n33), .Y(n202) );
  NAND2X2M U45 ( .A(n29), .B(n16), .Y(n33) );
  BUFX2M U46 ( .A(n34), .Y(n201) );
  NAND2X2M U47 ( .A(n27), .B(n19), .Y(n34) );
  BUFX2M U48 ( .A(n35), .Y(n200) );
  NAND2X2M U49 ( .A(n29), .B(n19), .Y(n35) );
  INVX2M U50 ( .A(n27), .Y(n225) );
  NOR2X2M U51 ( .A(n236), .B(n208), .Y(n12) );
  NOR2X2M U52 ( .A(n236), .B(n207), .Y(n16) );
  NAND2X2M U53 ( .A(n16), .B(n11), .Y(n15) );
  NAND2X2M U54 ( .A(n16), .B(n14), .Y(n17) );
  NAND2X2M U55 ( .A(n19), .B(n11), .Y(n18) );
  NAND2X2M U56 ( .A(n19), .B(n14), .Y(n20) );
  NAND2X2M U57 ( .A(n22), .B(n11), .Y(n21) );
  NAND2X2M U58 ( .A(n22), .B(n14), .Y(n24) );
  NAND2X2M U59 ( .A(n14), .B(n12), .Y(n13) );
  NAND2X2M U60 ( .A(n11), .B(n12), .Y(n2) );
  NAND2BX2M U61 ( .AN(wren), .B(rden), .Y(n1) );
  INVX2M U62 ( .A(wrdata[5]), .Y(n229) );
  INVX2M U63 ( .A(wrdata[6]), .Y(n228) );
  INVX2M U64 ( .A(wrdata[7]), .Y(n227) );
  INVX2M U65 ( .A(n22), .Y(n226) );
  INVX2M U66 ( .A(n208), .Y(n207) );
  BUFX2M U67 ( .A(rst), .Y(n222) );
  BUFX2M U68 ( .A(rst), .Y(n221) );
  BUFX2M U69 ( .A(rst), .Y(n220) );
  BUFX2M U70 ( .A(rst), .Y(n219) );
  BUFX2M U71 ( .A(rst), .Y(n223) );
  OAI2BB2X1M U72 ( .B0(n234), .B1(n205), .A0N(\reg_file[7][0] ), .A1N(n205), 
        .Y(n104) );
  OAI2BB2X1M U73 ( .B0(n233), .B1(n205), .A0N(\reg_file[7][1] ), .A1N(n205), 
        .Y(n105) );
  OAI2BB2X1M U74 ( .B0(n232), .B1(n205), .A0N(\reg_file[7][2] ), .A1N(n205), 
        .Y(n106) );
  OAI2BB2X1M U75 ( .B0(n231), .B1(n205), .A0N(\reg_file[7][3] ), .A1N(n205), 
        .Y(n107) );
  OAI2BB2X1M U76 ( .B0(n230), .B1(n205), .A0N(\reg_file[7][4] ), .A1N(n205), 
        .Y(n108) );
  OAI2BB2X1M U77 ( .B0(n229), .B1(n205), .A0N(\reg_file[7][5] ), .A1N(n205), 
        .Y(n109) );
  OAI2BB2X1M U78 ( .B0(n228), .B1(n205), .A0N(\reg_file[7][6] ), .A1N(n205), 
        .Y(n110) );
  OAI2BB2X1M U79 ( .B0(n227), .B1(n205), .A0N(\reg_file[7][7] ), .A1N(n205), 
        .Y(n111) );
  OAI2BB2X1M U80 ( .B0(n234), .B1(n204), .A0N(\reg_file[6][0] ), .A1N(n204), 
        .Y(n112) );
  OAI2BB2X1M U81 ( .B0(n233), .B1(n204), .A0N(\reg_file[6][1] ), .A1N(n204), 
        .Y(n113) );
  OAI2BB2X1M U82 ( .B0(n232), .B1(n204), .A0N(\reg_file[6][2] ), .A1N(n204), 
        .Y(n114) );
  OAI2BB2X1M U83 ( .B0(n231), .B1(n204), .A0N(\reg_file[6][3] ), .A1N(n204), 
        .Y(n115) );
  OAI2BB2X1M U84 ( .B0(n230), .B1(n204), .A0N(\reg_file[6][4] ), .A1N(n204), 
        .Y(n116) );
  OAI2BB2X1M U85 ( .B0(n229), .B1(n204), .A0N(\reg_file[6][5] ), .A1N(n204), 
        .Y(n117) );
  OAI2BB2X1M U86 ( .B0(n228), .B1(n204), .A0N(\reg_file[6][6] ), .A1N(n204), 
        .Y(n118) );
  OAI2BB2X1M U87 ( .B0(n227), .B1(n204), .A0N(\reg_file[6][7] ), .A1N(n204), 
        .Y(n119) );
  OAI2BB2X1M U88 ( .B0(n234), .B1(n203), .A0N(\reg_file[5][0] ), .A1N(n203), 
        .Y(n120) );
  OAI2BB2X1M U89 ( .B0(n233), .B1(n203), .A0N(\reg_file[5][1] ), .A1N(n203), 
        .Y(n121) );
  OAI2BB2X1M U90 ( .B0(n232), .B1(n203), .A0N(\reg_file[5][2] ), .A1N(n203), 
        .Y(n122) );
  OAI2BB2X1M U91 ( .B0(n231), .B1(n203), .A0N(\reg_file[5][3] ), .A1N(n203), 
        .Y(n123) );
  OAI2BB2X1M U92 ( .B0(n230), .B1(n203), .A0N(\reg_file[5][4] ), .A1N(n203), 
        .Y(n124) );
  OAI2BB2X1M U93 ( .B0(n229), .B1(n203), .A0N(\reg_file[5][5] ), .A1N(n203), 
        .Y(n125) );
  OAI2BB2X1M U94 ( .B0(n228), .B1(n203), .A0N(\reg_file[5][6] ), .A1N(n203), 
        .Y(n126) );
  OAI2BB2X1M U95 ( .B0(n227), .B1(n203), .A0N(\reg_file[5][7] ), .A1N(n203), 
        .Y(n127) );
  OAI2BB2X1M U96 ( .B0(n234), .B1(n202), .A0N(\reg_file[4][0] ), .A1N(n202), 
        .Y(n128) );
  OAI2BB2X1M U97 ( .B0(n233), .B1(n202), .A0N(\reg_file[4][1] ), .A1N(n202), 
        .Y(n129) );
  OAI2BB2X1M U98 ( .B0(n232), .B1(n202), .A0N(\reg_file[4][2] ), .A1N(n202), 
        .Y(n130) );
  OAI2BB2X1M U99 ( .B0(n231), .B1(n202), .A0N(\reg_file[4][3] ), .A1N(n202), 
        .Y(n131) );
  OAI2BB2X1M U100 ( .B0(n230), .B1(n202), .A0N(\reg_file[4][4] ), .A1N(n202), 
        .Y(n132) );
  OAI2BB2X1M U101 ( .B0(n229), .B1(n202), .A0N(\reg_file[4][5] ), .A1N(n202), 
        .Y(n133) );
  OAI2BB2X1M U102 ( .B0(n228), .B1(n202), .A0N(\reg_file[4][6] ), .A1N(n202), 
        .Y(n134) );
  OAI2BB2X1M U103 ( .B0(n227), .B1(n202), .A0N(\reg_file[4][7] ), .A1N(n202), 
        .Y(n135) );
  OAI2BB2X1M U104 ( .B0(n234), .B1(n201), .A0N(reg3[0]), .A1N(n201), .Y(n136)
         );
  OAI2BB2X1M U105 ( .B0(n233), .B1(n201), .A0N(reg3[1]), .A1N(n201), .Y(n137)
         );
  OAI2BB2X1M U106 ( .B0(n232), .B1(n201), .A0N(reg3[2]), .A1N(n201), .Y(n138)
         );
  OAI2BB2X1M U107 ( .B0(n231), .B1(n201), .A0N(reg3[3]), .A1N(n201), .Y(n139)
         );
  OAI2BB2X1M U108 ( .B0(n230), .B1(n201), .A0N(reg3[4]), .A1N(n201), .Y(n140)
         );
  OAI2BB2X1M U109 ( .B0(n228), .B1(n201), .A0N(reg3[6]), .A1N(n201), .Y(n142)
         );
  OAI2BB2X1M U110 ( .B0(n227), .B1(n201), .A0N(reg3[7]), .A1N(n201), .Y(n143)
         );
  OAI2BB2X1M U111 ( .B0(n233), .B1(n200), .A0N(reg2[1]), .A1N(n200), .Y(n145)
         );
  OAI2BB2X1M U112 ( .B0(n232), .B1(n200), .A0N(reg2[2]), .A1N(n200), .Y(n146)
         );
  OAI2BB2X1M U113 ( .B0(n231), .B1(n200), .A0N(reg2[3]), .A1N(n200), .Y(n147)
         );
  OAI2BB2X1M U114 ( .B0(n230), .B1(n200), .A0N(reg2[4]), .A1N(n200), .Y(n148)
         );
  OAI2BB2X1M U115 ( .B0(n229), .B1(n200), .A0N(reg2[5]), .A1N(n200), .Y(n149)
         );
  OAI2BB2X1M U116 ( .B0(n228), .B1(n200), .A0N(reg2[6]), .A1N(n200), .Y(n150)
         );
  OAI2BB2X1M U117 ( .B0(n234), .B1(n37), .A0N(reg0[0]), .A1N(n37), .Y(n160) );
  OAI2BB2X1M U118 ( .B0(n233), .B1(n37), .A0N(reg0[1]), .A1N(n37), .Y(n161) );
  OAI2BB2X1M U119 ( .B0(n232), .B1(n37), .A0N(reg0[2]), .A1N(n37), .Y(n162) );
  OAI2BB2X1M U120 ( .B0(n231), .B1(n37), .A0N(reg0[3]), .A1N(n37), .Y(n163) );
  OAI2BB2X1M U121 ( .B0(n230), .B1(n37), .A0N(reg0[4]), .A1N(n37), .Y(n164) );
  OAI2BB2X1M U122 ( .B0(n229), .B1(n201), .A0N(reg3[5]), .A1N(n201), .Y(n141)
         );
  OAI2BB2X1M U123 ( .B0(n234), .B1(n200), .A0N(reg2[0]), .A1N(n200), .Y(n144)
         );
  OAI2BB2X1M U124 ( .B0(n227), .B1(n200), .A0N(reg2[7]), .A1N(n200), .Y(n151)
         );
  MX2XLM U125 ( .A(reg1[1]), .B(wrdata[1]), .S0(n3), .Y(n153) );
  MX2XLM U126 ( .A(reg1[3]), .B(wrdata[3]), .S0(n3), .Y(n155) );
  MX2XLM U127 ( .A(reg1[4]), .B(wrdata[4]), .S0(n3), .Y(n156) );
  MX2XLM U128 ( .A(reg1[5]), .B(wrdata[5]), .S0(n3), .Y(n157) );
  AND3X2M U129 ( .A(n23), .B(n198), .C(N13), .Y(n11) );
  AND3X2M U130 ( .A(n23), .B(n206), .C(N13), .Y(n14) );
  NOR2X2M U131 ( .A(N12), .B(n207), .Y(n22) );
  INVX2M U132 ( .A(N12), .Y(n236) );
  OAI2BB2X1M U133 ( .B0(n234), .B1(n18), .A0N(\reg_file[11][0] ), .A1N(n18), 
        .Y(n72) );
  OAI2BB2X1M U134 ( .B0(n233), .B1(n18), .A0N(\reg_file[11][1] ), .A1N(n18), 
        .Y(n73) );
  OAI2BB2X1M U135 ( .B0(n232), .B1(n18), .A0N(\reg_file[11][2] ), .A1N(n18), 
        .Y(n74) );
  OAI2BB2X1M U136 ( .B0(n231), .B1(n18), .A0N(\reg_file[11][3] ), .A1N(n18), 
        .Y(n75) );
  OAI2BB2X1M U137 ( .B0(n230), .B1(n18), .A0N(\reg_file[11][4] ), .A1N(n18), 
        .Y(n76) );
  OAI2BB2X1M U138 ( .B0(n229), .B1(n18), .A0N(\reg_file[11][5] ), .A1N(n18), 
        .Y(n77) );
  OAI2BB2X1M U139 ( .B0(n228), .B1(n18), .A0N(\reg_file[11][6] ), .A1N(n18), 
        .Y(n78) );
  OAI2BB2X1M U140 ( .B0(n227), .B1(n18), .A0N(\reg_file[11][7] ), .A1N(n18), 
        .Y(n79) );
  OAI2BB2X1M U141 ( .B0(n234), .B1(n20), .A0N(\reg_file[10][0] ), .A1N(n20), 
        .Y(n80) );
  OAI2BB2X1M U142 ( .B0(n233), .B1(n20), .A0N(\reg_file[10][1] ), .A1N(n20), 
        .Y(n81) );
  OAI2BB2X1M U143 ( .B0(n232), .B1(n20), .A0N(\reg_file[10][2] ), .A1N(n20), 
        .Y(n82) );
  OAI2BB2X1M U144 ( .B0(n231), .B1(n20), .A0N(\reg_file[10][3] ), .A1N(n20), 
        .Y(n83) );
  OAI2BB2X1M U145 ( .B0(n230), .B1(n20), .A0N(\reg_file[10][4] ), .A1N(n20), 
        .Y(n84) );
  OAI2BB2X1M U146 ( .B0(n229), .B1(n20), .A0N(\reg_file[10][5] ), .A1N(n20), 
        .Y(n85) );
  OAI2BB2X1M U147 ( .B0(n228), .B1(n20), .A0N(\reg_file[10][6] ), .A1N(n20), 
        .Y(n86) );
  OAI2BB2X1M U148 ( .B0(n227), .B1(n20), .A0N(\reg_file[10][7] ), .A1N(n20), 
        .Y(n87) );
  OAI2BB2X1M U149 ( .B0(n234), .B1(n15), .A0N(\reg_file[13][0] ), .A1N(n15), 
        .Y(n56) );
  OAI2BB2X1M U150 ( .B0(n233), .B1(n15), .A0N(\reg_file[13][1] ), .A1N(n15), 
        .Y(n57) );
  OAI2BB2X1M U151 ( .B0(n232), .B1(n15), .A0N(\reg_file[13][2] ), .A1N(n15), 
        .Y(n58) );
  OAI2BB2X1M U152 ( .B0(n231), .B1(n15), .A0N(\reg_file[13][3] ), .A1N(n15), 
        .Y(n59) );
  OAI2BB2X1M U153 ( .B0(n230), .B1(n15), .A0N(\reg_file[13][4] ), .A1N(n15), 
        .Y(n60) );
  OAI2BB2X1M U154 ( .B0(n229), .B1(n15), .A0N(\reg_file[13][5] ), .A1N(n15), 
        .Y(n61) );
  OAI2BB2X1M U155 ( .B0(n228), .B1(n15), .A0N(\reg_file[13][6] ), .A1N(n15), 
        .Y(n62) );
  OAI2BB2X1M U156 ( .B0(n227), .B1(n15), .A0N(\reg_file[13][7] ), .A1N(n15), 
        .Y(n63) );
  OAI2BB2X1M U157 ( .B0(n234), .B1(n17), .A0N(\reg_file[12][0] ), .A1N(n17), 
        .Y(n64) );
  OAI2BB2X1M U158 ( .B0(n233), .B1(n17), .A0N(\reg_file[12][1] ), .A1N(n17), 
        .Y(n65) );
  OAI2BB2X1M U159 ( .B0(n232), .B1(n17), .A0N(\reg_file[12][2] ), .A1N(n17), 
        .Y(n66) );
  OAI2BB2X1M U160 ( .B0(n231), .B1(n17), .A0N(\reg_file[12][3] ), .A1N(n17), 
        .Y(n67) );
  OAI2BB2X1M U161 ( .B0(n230), .B1(n17), .A0N(\reg_file[12][4] ), .A1N(n17), 
        .Y(n68) );
  OAI2BB2X1M U162 ( .B0(n229), .B1(n17), .A0N(\reg_file[12][5] ), .A1N(n17), 
        .Y(n69) );
  OAI2BB2X1M U163 ( .B0(n228), .B1(n17), .A0N(\reg_file[12][6] ), .A1N(n17), 
        .Y(n70) );
  OAI2BB2X1M U164 ( .B0(n227), .B1(n17), .A0N(\reg_file[12][7] ), .A1N(n17), 
        .Y(n71) );
  OAI2BB2X1M U165 ( .B0(n2), .B1(n234), .A0N(\reg_file[15][0] ), .A1N(n2), .Y(
        n40) );
  OAI2BB2X1M U166 ( .B0(n2), .B1(n233), .A0N(\reg_file[15][1] ), .A1N(n2), .Y(
        n41) );
  OAI2BB2X1M U167 ( .B0(n2), .B1(n232), .A0N(\reg_file[15][2] ), .A1N(n2), .Y(
        n42) );
  OAI2BB2X1M U168 ( .B0(n2), .B1(n231), .A0N(\reg_file[15][3] ), .A1N(n2), .Y(
        n43) );
  OAI2BB2X1M U169 ( .B0(n2), .B1(n230), .A0N(\reg_file[15][4] ), .A1N(n2), .Y(
        n44) );
  OAI2BB2X1M U170 ( .B0(n2), .B1(n229), .A0N(\reg_file[15][5] ), .A1N(n2), .Y(
        n45) );
  OAI2BB2X1M U171 ( .B0(n2), .B1(n228), .A0N(\reg_file[15][6] ), .A1N(n2), .Y(
        n46) );
  OAI2BB2X1M U172 ( .B0(n2), .B1(n227), .A0N(\reg_file[15][7] ), .A1N(n2), .Y(
        n47) );
  OAI2BB2X1M U173 ( .B0(n234), .B1(n13), .A0N(\reg_file[14][0] ), .A1N(n13), 
        .Y(n48) );
  OAI2BB2X1M U174 ( .B0(n233), .B1(n13), .A0N(\reg_file[14][1] ), .A1N(n13), 
        .Y(n49) );
  OAI2BB2X1M U175 ( .B0(n232), .B1(n13), .A0N(\reg_file[14][2] ), .A1N(n13), 
        .Y(n50) );
  OAI2BB2X1M U176 ( .B0(n231), .B1(n13), .A0N(\reg_file[14][3] ), .A1N(n13), 
        .Y(n51) );
  OAI2BB2X1M U177 ( .B0(n230), .B1(n13), .A0N(\reg_file[14][4] ), .A1N(n13), 
        .Y(n52) );
  OAI2BB2X1M U178 ( .B0(n229), .B1(n13), .A0N(\reg_file[14][5] ), .A1N(n13), 
        .Y(n53) );
  OAI2BB2X1M U179 ( .B0(n228), .B1(n13), .A0N(\reg_file[14][6] ), .A1N(n13), 
        .Y(n54) );
  OAI2BB2X1M U180 ( .B0(n227), .B1(n13), .A0N(\reg_file[14][7] ), .A1N(n13), 
        .Y(n55) );
  OAI2BB2X1M U181 ( .B0(n234), .B1(n21), .A0N(\reg_file[9][0] ), .A1N(n21), 
        .Y(n88) );
  OAI2BB2X1M U182 ( .B0(n233), .B1(n21), .A0N(\reg_file[9][1] ), .A1N(n21), 
        .Y(n89) );
  OAI2BB2X1M U183 ( .B0(n232), .B1(n21), .A0N(\reg_file[9][2] ), .A1N(n21), 
        .Y(n90) );
  OAI2BB2X1M U184 ( .B0(n231), .B1(n21), .A0N(\reg_file[9][3] ), .A1N(n21), 
        .Y(n91) );
  OAI2BB2X1M U185 ( .B0(n230), .B1(n21), .A0N(\reg_file[9][4] ), .A1N(n21), 
        .Y(n92) );
  OAI2BB2X1M U186 ( .B0(n229), .B1(n21), .A0N(\reg_file[9][5] ), .A1N(n21), 
        .Y(n93) );
  OAI2BB2X1M U187 ( .B0(n228), .B1(n21), .A0N(\reg_file[9][6] ), .A1N(n21), 
        .Y(n94) );
  OAI2BB2X1M U188 ( .B0(n227), .B1(n21), .A0N(\reg_file[9][7] ), .A1N(n21), 
        .Y(n95) );
  OAI2BB2X1M U189 ( .B0(n234), .B1(n24), .A0N(\reg_file[8][0] ), .A1N(n24), 
        .Y(n96) );
  OAI2BB2X1M U190 ( .B0(n233), .B1(n24), .A0N(\reg_file[8][1] ), .A1N(n24), 
        .Y(n97) );
  OAI2BB2X1M U191 ( .B0(n232), .B1(n24), .A0N(\reg_file[8][2] ), .A1N(n24), 
        .Y(n98) );
  OAI2BB2X1M U192 ( .B0(n231), .B1(n24), .A0N(\reg_file[8][3] ), .A1N(n24), 
        .Y(n99) );
  OAI2BB2X1M U193 ( .B0(n230), .B1(n24), .A0N(\reg_file[8][4] ), .A1N(n24), 
        .Y(n100) );
  OAI2BB2X1M U194 ( .B0(n229), .B1(n24), .A0N(\reg_file[8][5] ), .A1N(n24), 
        .Y(n101) );
  OAI2BB2X1M U195 ( .B0(n228), .B1(n24), .A0N(\reg_file[8][6] ), .A1N(n24), 
        .Y(n102) );
  OAI2BB2X1M U196 ( .B0(n227), .B1(n24), .A0N(\reg_file[8][7] ), .A1N(n24), 
        .Y(n103) );
  MX4XLM U197 ( .A(reg0[1]), .B(reg1[1]), .C(reg2[1]), .D(reg3[1]), .S0(n198), 
        .S1(n207), .Y(n31) );
  MX4X1M U198 ( .A(\reg_file[4][1] ), .B(\reg_file[5][1] ), .C(
        \reg_file[6][1] ), .D(\reg_file[7][1] ), .S0(n198), .S1(n207), .Y(n30)
         );
  MX4X1M U199 ( .A(\reg_file[4][2] ), .B(\reg_file[5][2] ), .C(
        \reg_file[6][2] ), .D(\reg_file[7][2] ), .S0(n198), .S1(N11), .Y(n176)
         );
  MX4X1M U200 ( .A(\reg_file[4][3] ), .B(\reg_file[5][3] ), .C(
        \reg_file[6][3] ), .D(\reg_file[7][3] ), .S0(n198), .S1(N11), .Y(n180)
         );
  MX4X1M U201 ( .A(\reg_file[4][4] ), .B(\reg_file[5][4] ), .C(
        \reg_file[6][4] ), .D(\reg_file[7][4] ), .S0(n198), .S1(N11), .Y(n184)
         );
  MX4X1M U202 ( .A(\reg_file[4][5] ), .B(\reg_file[5][5] ), .C(
        \reg_file[6][5] ), .D(\reg_file[7][5] ), .S0(n199), .S1(n207), .Y(n188) );
  MX4X1M U203 ( .A(\reg_file[12][0] ), .B(\reg_file[13][0] ), .C(
        \reg_file[14][0] ), .D(\reg_file[15][0] ), .S0(n198), .S1(n207), .Y(n6) );
  MX4X1M U204 ( .A(\reg_file[12][2] ), .B(\reg_file[13][2] ), .C(
        \reg_file[14][2] ), .D(\reg_file[15][2] ), .S0(n198), .S1(N11), .Y(n36) );
  MX4X1M U205 ( .A(\reg_file[12][3] ), .B(\reg_file[13][3] ), .C(
        \reg_file[14][3] ), .D(\reg_file[15][3] ), .S0(n198), .S1(N11), .Y(
        n178) );
  MX4X1M U206 ( .A(\reg_file[12][4] ), .B(\reg_file[13][4] ), .C(
        \reg_file[14][4] ), .D(\reg_file[15][4] ), .S0(n198), .S1(n207), .Y(
        n182) );
  MX4X1M U207 ( .A(\reg_file[12][5] ), .B(\reg_file[13][5] ), .C(
        \reg_file[14][5] ), .D(\reg_file[15][5] ), .S0(n199), .S1(n207), .Y(
        n186) );
  MX4X1M U208 ( .A(\reg_file[12][6] ), .B(\reg_file[13][6] ), .C(
        \reg_file[14][6] ), .D(\reg_file[15][6] ), .S0(n199), .S1(n207), .Y(
        n190) );
  MX4X1M U209 ( .A(\reg_file[12][7] ), .B(\reg_file[13][7] ), .C(
        \reg_file[14][7] ), .D(\reg_file[15][7] ), .S0(n199), .S1(n207), .Y(
        n194) );
  NAND2BX2M U210 ( .AN(rddata_valid), .B(n1), .Y(n39) );
  AO22X1M U211 ( .A0(N42), .A1(n235), .B0(rddata[0]), .B1(n1), .Y(n168) );
  MX4X1M U212 ( .A(n9), .B(n7), .C(n8), .D(n6), .S0(N13), .S1(N12), .Y(N42) );
  MX4X1M U213 ( .A(\reg_file[8][0] ), .B(\reg_file[9][0] ), .C(
        \reg_file[10][0] ), .D(\reg_file[11][0] ), .S0(N10), .S1(n207), .Y(n7)
         );
  MX4X1M U214 ( .A(\reg_file[4][0] ), .B(\reg_file[5][0] ), .C(
        \reg_file[6][0] ), .D(\reg_file[7][0] ), .S0(N10), .S1(N11), .Y(n8) );
  AO22X1M U215 ( .A0(N41), .A1(n235), .B0(rddata[1]), .B1(n1), .Y(n169) );
  MX4X1M U216 ( .A(n31), .B(n25), .C(n30), .D(n10), .S0(N13), .S1(N12), .Y(N41) );
  MX4X1M U217 ( .A(\reg_file[8][1] ), .B(\reg_file[9][1] ), .C(
        \reg_file[10][1] ), .D(\reg_file[11][1] ), .S0(N10), .S1(N11), .Y(n25)
         );
  MX4X1M U218 ( .A(\reg_file[12][1] ), .B(\reg_file[13][1] ), .C(
        \reg_file[14][1] ), .D(\reg_file[15][1] ), .S0(n198), .S1(n207), .Y(
        n10) );
  AO22X1M U219 ( .A0(N40), .A1(n235), .B0(rddata[2]), .B1(n1), .Y(n170) );
  MX4X1M U220 ( .A(n177), .B(n38), .C(n176), .D(n36), .S0(N13), .S1(N12), .Y(
        N40) );
  MX4X1M U221 ( .A(\reg_file[8][2] ), .B(\reg_file[9][2] ), .C(
        \reg_file[10][2] ), .D(\reg_file[11][2] ), .S0(n198), .S1(N11), .Y(n38) );
  AO22X1M U222 ( .A0(N39), .A1(n235), .B0(rddata[3]), .B1(n1), .Y(n171) );
  MX4X1M U223 ( .A(n181), .B(n179), .C(n180), .D(n178), .S0(N13), .S1(N12), 
        .Y(N39) );
  MX4XLM U224 ( .A(reg0[3]), .B(reg1[3]), .C(reg2[3]), .D(reg3[3]), .S0(n198), 
        .S1(N11), .Y(n181) );
  MX4X1M U225 ( .A(\reg_file[8][3] ), .B(\reg_file[9][3] ), .C(
        \reg_file[10][3] ), .D(\reg_file[11][3] ), .S0(n198), .S1(N11), .Y(
        n179) );
  AO22X1M U226 ( .A0(N38), .A1(n235), .B0(rddata[4]), .B1(n1), .Y(n172) );
  MX4XLM U227 ( .A(reg0[4]), .B(reg1[4]), .C(reg2[4]), .D(reg3[4]), .S0(n199), 
        .S1(N11), .Y(n185) );
  MX4X1M U228 ( .A(\reg_file[8][4] ), .B(\reg_file[9][4] ), .C(
        \reg_file[10][4] ), .D(\reg_file[11][4] ), .S0(n198), .S1(N11), .Y(
        n183) );
  AO22X1M U229 ( .A0(N37), .A1(n235), .B0(rddata[5]), .B1(n1), .Y(n173) );
  MX4XLM U230 ( .A(reg0[5]), .B(reg1[5]), .C(reg2[5]), .D(reg3[5]), .S0(n199), 
        .S1(n207), .Y(n189) );
  MX4X1M U231 ( .A(\reg_file[8][5] ), .B(\reg_file[9][5] ), .C(
        \reg_file[10][5] ), .D(\reg_file[11][5] ), .S0(n199), .S1(n207), .Y(
        n187) );
  AO22X1M U232 ( .A0(N36), .A1(n235), .B0(rddata[6]), .B1(n1), .Y(n174) );
  MX4X1M U233 ( .A(\reg_file[8][6] ), .B(\reg_file[9][6] ), .C(
        \reg_file[10][6] ), .D(\reg_file[11][6] ), .S0(n199), .S1(n207), .Y(
        n191) );
  MX4X1M U234 ( .A(\reg_file[4][6] ), .B(\reg_file[5][6] ), .C(
        \reg_file[6][6] ), .D(\reg_file[7][6] ), .S0(n199), .S1(n207), .Y(n192) );
  AO22X1M U235 ( .A0(N35), .A1(n235), .B0(rddata[7]), .B1(n1), .Y(n175) );
  MX4X1M U236 ( .A(\reg_file[8][7] ), .B(\reg_file[9][7] ), .C(
        \reg_file[10][7] ), .D(\reg_file[11][7] ), .S0(n199), .S1(n207), .Y(
        n195) );
  MX4X1M U237 ( .A(\reg_file[4][7] ), .B(\reg_file[5][7] ), .C(
        \reg_file[6][7] ), .D(\reg_file[7][7] ), .S0(n199), .S1(n207), .Y(n196) );
  INVX2M U238 ( .A(N10), .Y(n206) );
  INVX2M U239 ( .A(N11), .Y(n208) );
  MX4XLM U240 ( .A(reg0[7]), .B(n5), .C(reg2[7]), .D(reg3[7]), .S0(n199), .S1(
        n207), .Y(n197) );
  MX4XLM U241 ( .A(reg0[0]), .B(reg1[0]), .C(reg2[0]), .D(reg3[0]), .S0(n199), 
        .S1(n207), .Y(n9) );
  MX4XLM U242 ( .A(reg0[6]), .B(reg1[6]), .C(reg2[6]), .D(reg3[6]), .S0(n199), 
        .S1(n207), .Y(n193) );
  MX2XLM U243 ( .A(reg1[6]), .B(wrdata[6]), .S0(n3), .Y(n158) );
  MX2XLM U244 ( .A(n5), .B(wrdata[7]), .S0(n3), .Y(n159) );
  MX2XLM U245 ( .A(reg0[7]), .B(wrdata[7]), .S0(n224), .Y(n167) );
  MX2XLM U246 ( .A(reg1[0]), .B(wrdata[0]), .S0(n3), .Y(n152) );
endmodule


module bit16_alu_DW01_sub_0 ( A, B, CI, DIFF, CO );
  input [8:0] A;
  input [8:0] B;
  output [8:0] DIFF;
  input CI;
  output CO;
  wire   n1, n2, n3, n4, n5, n6, n7, n8, n9;
  wire   [9:0] carry;

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
  ADDFX2M U2_7 ( .A(A[7]), .B(n2), .CI(carry[7]), .CO(carry[8]), .S(DIFF[7])
         );
  INVXLM U1 ( .A(B[2]), .Y(n7) );
  INVXLM U2 ( .A(B[3]), .Y(n6) );
  INVXLM U3 ( .A(B[4]), .Y(n5) );
  INVXLM U4 ( .A(B[5]), .Y(n4) );
  INVXLM U5 ( .A(B[1]), .Y(n8) );
  NAND2X2M U6 ( .A(B[0]), .B(n1), .Y(carry[1]) );
  INVX2M U7 ( .A(A[0]), .Y(n1) );
  XNOR2X2M U8 ( .A(n9), .B(A[0]), .Y(DIFF[0]) );
  INVXLM U9 ( .A(B[6]), .Y(n3) );
  INVXLM U10 ( .A(B[7]), .Y(n2) );
  INVXLM U11 ( .A(B[0]), .Y(n9) );
  CLKINVX1M U12 ( .A(carry[8]), .Y(DIFF[8]) );
endmodule


module bit16_alu_DW01_add_0 ( A, B, CI, SUM, CO );
  input [8:0] A;
  input [8:0] B;
  output [8:0] SUM;
  input CI;
  output CO;

  wire   [8:1] carry;

  ADDFX2M U1_6 ( .A(A[6]), .B(B[6]), .CI(carry[6]), .CO(carry[7]), .S(SUM[6])
         );
  ADDFX2M U1_5 ( .A(A[5]), .B(B[5]), .CI(carry[5]), .CO(carry[6]), .S(SUM[5])
         );
  ADDFX2M U1_4 ( .A(A[4]), .B(B[4]), .CI(carry[4]), .CO(carry[5]), .S(SUM[4])
         );
  ADDFX2M U1_3 ( .A(A[3]), .B(B[3]), .CI(carry[3]), .CO(carry[4]), .S(SUM[3])
         );
  ADDFX2M U1_2 ( .A(A[2]), .B(B[2]), .CI(carry[2]), .CO(carry[3]), .S(SUM[2])
         );
  ADDFX2M U1_7 ( .A(A[7]), .B(B[7]), .CI(carry[7]), .CO(SUM[8]), .S(SUM[7]) );
  ADDFX2M U1_1 ( .A(A[1]), .B(B[1]), .CI(carry[1]), .CO(carry[2]), .S(SUM[1])
         );
  ADDFX2M U1_0 ( .A(A[0]), .B(B[0]), .CI(1'b0), .CO(carry[1]), .S(SUM[0]) );
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
  XNOR2X2M U5 ( .A(B[13]), .B(n1), .Y(SUM[13]) );
  XNOR2X2M U6 ( .A(A[7]), .B(n8), .Y(SUM[7]) );
  INVX2M U7 ( .A(B[7]), .Y(n8) );
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
         n27, n28, n29, n30, n31, n32, n33, n34, n35, n36, n37, n38, n39;

  bit16_alu_DW01_add_1 FS_1 ( .A({1'b0, \A1[12] , \A1[11] , \A1[10] , \A1[9] , 
        \A1[8] , \A1[7] , \A1[6] , \SUMB[7][0] , \A1[4] , \A1[3] , \A1[2] , 
        \A1[1] , \A1[0] }), .B({n10, n16, n14, n15, n12, n11, n13, 1'b0, 1'b0, 
        1'b0, 1'b0, 1'b0, 1'b0, 1'b0}), .CI(1'b0), .SUM(PRODUCT[15:2]) );
  ADDFX2M S1_4_0 ( .A(\ab[4][0] ), .B(\CARRYB[3][0] ), .CI(\SUMB[3][1] ), .CO(
        \CARRYB[4][0] ), .S(\A1[2] ) );
  ADDFX2M S1_3_0 ( .A(\ab[3][0] ), .B(\CARRYB[2][0] ), .CI(\SUMB[2][1] ), .CO(
        \CARRYB[3][0] ), .S(\A1[1] ) );
  ADDFX2M S1_2_0 ( .A(\ab[2][0] ), .B(n7), .CI(\SUMB[1][1] ), .CO(
        \CARRYB[2][0] ), .S(\A1[0] ) );
  ADDFX2M S3_6_6 ( .A(\ab[6][6] ), .B(\CARRYB[5][6] ), .CI(\ab[5][7] ), .CO(
        \CARRYB[6][6] ), .S(\SUMB[6][6] ) );
  ADDFX2M S3_5_6 ( .A(\ab[5][6] ), .B(\CARRYB[4][6] ), .CI(\ab[4][7] ), .CO(
        \CARRYB[5][6] ), .S(\SUMB[5][6] ) );
  ADDFX2M S5_6 ( .A(\ab[7][6] ), .B(\CARRYB[6][6] ), .CI(\ab[6][7] ), .CO(
        \CARRYB[7][6] ), .S(\SUMB[7][6] ) );
  ADDFX2M S4_5 ( .A(\ab[7][5] ), .B(\CARRYB[6][5] ), .CI(\SUMB[6][6] ), .CO(
        \CARRYB[7][5] ), .S(\SUMB[7][5] ) );
  ADDFX2M S1_6_0 ( .A(\ab[6][0] ), .B(\CARRYB[5][0] ), .CI(\SUMB[5][1] ), .CO(
        \CARRYB[6][0] ), .S(\A1[4] ) );
  ADDFX2M S2_6_2 ( .A(\ab[6][2] ), .B(\CARRYB[5][2] ), .CI(\SUMB[5][3] ), .CO(
        \CARRYB[6][2] ), .S(\SUMB[6][2] ) );
  ADDFX2M S1_5_0 ( .A(\ab[5][0] ), .B(\CARRYB[4][0] ), .CI(\SUMB[4][1] ), .CO(
        \CARRYB[5][0] ), .S(\A1[3] ) );
  ADDFX2M S2_5_3 ( .A(\ab[5][3] ), .B(\CARRYB[4][3] ), .CI(\SUMB[4][4] ), .CO(
        \CARRYB[5][3] ), .S(\SUMB[5][3] ) );
  ADDFX2M S2_5_2 ( .A(\ab[5][2] ), .B(\CARRYB[4][2] ), .CI(\SUMB[4][3] ), .CO(
        \CARRYB[5][2] ), .S(\SUMB[5][2] ) );
  ADDFX2M S2_4_4 ( .A(\ab[4][4] ), .B(\CARRYB[3][4] ), .CI(\SUMB[3][5] ), .CO(
        \CARRYB[4][4] ), .S(\SUMB[4][4] ) );
  ADDFX2M S2_4_2 ( .A(\ab[4][2] ), .B(\CARRYB[3][2] ), .CI(\SUMB[3][3] ), .CO(
        \CARRYB[4][2] ), .S(\SUMB[4][2] ) );
  ADDFX2M S2_3_4 ( .A(\ab[3][4] ), .B(\CARRYB[2][4] ), .CI(\SUMB[2][5] ), .CO(
        \CARRYB[3][4] ), .S(\SUMB[3][4] ) );
  ADDFX2M S2_3_2 ( .A(\ab[3][2] ), .B(\CARRYB[2][2] ), .CI(\SUMB[2][3] ), .CO(
        \CARRYB[3][2] ), .S(\SUMB[3][2] ) );
  ADDFX2M S2_3_5 ( .A(\ab[3][5] ), .B(\CARRYB[2][5] ), .CI(\SUMB[2][6] ), .CO(
        \CARRYB[3][5] ), .S(\SUMB[3][5] ) );
  ADDFX2M S2_6_4 ( .A(\ab[6][4] ), .B(\CARRYB[5][4] ), .CI(\SUMB[5][5] ), .CO(
        \CARRYB[6][4] ), .S(\SUMB[6][4] ) );
  ADDFX2M S2_6_3 ( .A(\ab[6][3] ), .B(\CARRYB[5][3] ), .CI(\SUMB[5][4] ), .CO(
        \CARRYB[6][3] ), .S(\SUMB[6][3] ) );
  ADDFX2M S2_6_5 ( .A(\ab[6][5] ), .B(\CARRYB[5][5] ), .CI(\SUMB[5][6] ), .CO(
        \CARRYB[6][5] ), .S(\SUMB[6][5] ) );
  ADDFX2M S2_5_4 ( .A(\ab[5][4] ), .B(\CARRYB[4][4] ), .CI(\SUMB[4][5] ), .CO(
        \CARRYB[5][4] ), .S(\SUMB[5][4] ) );
  ADDFX2M S2_5_5 ( .A(\ab[5][5] ), .B(\CARRYB[4][5] ), .CI(\SUMB[4][6] ), .CO(
        \CARRYB[5][5] ), .S(\SUMB[5][5] ) );
  ADDFX2M S2_4_3 ( .A(\ab[4][3] ), .B(\CARRYB[3][3] ), .CI(\SUMB[3][4] ), .CO(
        \CARRYB[4][3] ), .S(\SUMB[4][3] ) );
  ADDFX2M S3_4_6 ( .A(\ab[4][6] ), .B(\CARRYB[3][6] ), .CI(\ab[3][7] ), .CO(
        \CARRYB[4][6] ), .S(\SUMB[4][6] ) );
  ADDFX2M S2_4_5 ( .A(\ab[4][5] ), .B(\CARRYB[3][5] ), .CI(\SUMB[3][6] ), .CO(
        \CARRYB[4][5] ), .S(\SUMB[4][5] ) );
  ADDFX2M S2_3_3 ( .A(\ab[3][3] ), .B(\CARRYB[2][3] ), .CI(\SUMB[2][4] ), .CO(
        \CARRYB[3][3] ), .S(\SUMB[3][3] ) );
  ADDFX2M S3_3_6 ( .A(\ab[3][6] ), .B(\CARRYB[2][6] ), .CI(\ab[2][7] ), .CO(
        \CARRYB[3][6] ), .S(\SUMB[3][6] ) );
  ADDFX2M S2_2_4 ( .A(\ab[2][4] ), .B(n6), .CI(\SUMB[1][5] ), .CO(
        \CARRYB[2][4] ), .S(\SUMB[2][4] ) );
  ADDFX2M S2_2_3 ( .A(\ab[2][3] ), .B(n5), .CI(\SUMB[1][4] ), .CO(
        \CARRYB[2][3] ), .S(\SUMB[2][3] ) );
  ADDFX2M S3_2_6 ( .A(\ab[2][6] ), .B(n9), .CI(\ab[1][7] ), .CO(\CARRYB[2][6] ), .S(\SUMB[2][6] ) );
  ADDFX2M S2_2_5 ( .A(\ab[2][5] ), .B(n8), .CI(\SUMB[1][6] ), .CO(
        \CARRYB[2][5] ), .S(\SUMB[2][5] ) );
  ADDFX2M S4_0 ( .A(\ab[7][0] ), .B(\CARRYB[6][0] ), .CI(\SUMB[6][1] ), .CO(
        \CARRYB[7][0] ), .S(\SUMB[7][0] ) );
  ADDFX2M S4_4 ( .A(\ab[7][4] ), .B(\CARRYB[6][4] ), .CI(\SUMB[6][5] ), .CO(
        \CARRYB[7][4] ), .S(\SUMB[7][4] ) );
  ADDFX2M S4_3 ( .A(\ab[7][3] ), .B(\CARRYB[6][3] ), .CI(\SUMB[6][4] ), .CO(
        \CARRYB[7][3] ), .S(\SUMB[7][3] ) );
  ADDFX2M S4_2 ( .A(\ab[7][2] ), .B(\CARRYB[6][2] ), .CI(\SUMB[6][3] ), .CO(
        \CARRYB[7][2] ), .S(\SUMB[7][2] ) );
  ADDFX2M S2_2_2 ( .A(\ab[2][2] ), .B(n4), .CI(\SUMB[1][3] ), .CO(
        \CARRYB[2][2] ), .S(\SUMB[2][2] ) );
  ADDFX2M S2_6_1 ( .A(\ab[6][1] ), .B(\CARRYB[5][1] ), .CI(\SUMB[5][2] ), .CO(
        \CARRYB[6][1] ), .S(\SUMB[6][1] ) );
  ADDFX2M S2_5_1 ( .A(\ab[5][1] ), .B(\CARRYB[4][1] ), .CI(\SUMB[4][2] ), .CO(
        \CARRYB[5][1] ), .S(\SUMB[5][1] ) );
  ADDFX2M S2_4_1 ( .A(\ab[4][1] ), .B(\CARRYB[3][1] ), .CI(\SUMB[3][2] ), .CO(
        \CARRYB[4][1] ), .S(\SUMB[4][1] ) );
  ADDFX2M S2_3_1 ( .A(\ab[3][1] ), .B(\CARRYB[2][1] ), .CI(\SUMB[2][2] ), .CO(
        \CARRYB[3][1] ), .S(\SUMB[3][1] ) );
  ADDFX2M S4_1 ( .A(\ab[7][1] ), .B(\CARRYB[6][1] ), .CI(\SUMB[6][2] ), .CO(
        \CARRYB[7][1] ), .S(\SUMB[7][1] ) );
  ADDFX2M S2_2_1 ( .A(\ab[2][1] ), .B(n3), .CI(\SUMB[1][2] ), .CO(
        \CARRYB[2][1] ), .S(\SUMB[2][1] ) );
  AND2X2M U2 ( .A(\ab[0][2] ), .B(\ab[1][1] ), .Y(n3) );
  AND2X2M U3 ( .A(\ab[0][3] ), .B(\ab[1][2] ), .Y(n4) );
  AND2X2M U4 ( .A(\ab[0][4] ), .B(\ab[1][3] ), .Y(n5) );
  AND2X2M U5 ( .A(\ab[0][5] ), .B(\ab[1][4] ), .Y(n6) );
  AND2X2M U6 ( .A(\ab[0][1] ), .B(\ab[1][0] ), .Y(n7) );
  AND2X2M U7 ( .A(\ab[0][6] ), .B(\ab[1][5] ), .Y(n8) );
  AND2X2M U8 ( .A(\ab[0][7] ), .B(\ab[1][6] ), .Y(n9) );
  AND2X2M U9 ( .A(\CARRYB[7][6] ), .B(\ab[7][7] ), .Y(n10) );
  INVXLM U10 ( .A(B[2]), .Y(n37) );
  XNOR2X2M U11 ( .A(\ab[1][2] ), .B(n19), .Y(\SUMB[1][2] ) );
  CLKXOR2X2M U12 ( .A(\CARRYB[7][2] ), .B(\SUMB[7][3] ), .Y(\A1[8] ) );
  CLKXOR2X2M U13 ( .A(\CARRYB[7][3] ), .B(\SUMB[7][4] ), .Y(\A1[9] ) );
  INVX2M U14 ( .A(\ab[0][7] ), .Y(n23) );
  INVX2M U15 ( .A(\ab[0][6] ), .Y(n22) );
  INVX2M U16 ( .A(\ab[0][3] ), .Y(n19) );
  INVX2M U17 ( .A(\ab[0][4] ), .Y(n20) );
  INVX2M U18 ( .A(\ab[0][5] ), .Y(n21) );
  AND2X2M U19 ( .A(\CARRYB[7][1] ), .B(\SUMB[7][2] ), .Y(n11) );
  AND2X2M U20 ( .A(\CARRYB[7][2] ), .B(\SUMB[7][3] ), .Y(n12) );
  AND2X2M U21 ( .A(\CARRYB[7][0] ), .B(\SUMB[7][1] ), .Y(n13) );
  CLKXOR2X2M U22 ( .A(\CARRYB[7][1] ), .B(\SUMB[7][2] ), .Y(\A1[7] ) );
  CLKXOR2X2M U23 ( .A(\CARRYB[7][4] ), .B(\SUMB[7][5] ), .Y(\A1[10] ) );
  CLKXOR2X2M U24 ( .A(\CARRYB[7][5] ), .B(\SUMB[7][6] ), .Y(\A1[11] ) );
  INVX2M U25 ( .A(\ab[0][2] ), .Y(n18) );
  AND2X2M U26 ( .A(\CARRYB[7][4] ), .B(\SUMB[7][5] ), .Y(n14) );
  AND2X2M U27 ( .A(\CARRYB[7][3] ), .B(\SUMB[7][4] ), .Y(n15) );
  CLKXOR2X2M U28 ( .A(\CARRYB[7][6] ), .B(\ab[7][7] ), .Y(\A1[12] ) );
  AND2X2M U29 ( .A(\CARRYB[7][5] ), .B(\SUMB[7][6] ), .Y(n16) );
  XNOR2X2M U30 ( .A(\CARRYB[7][0] ), .B(n17), .Y(\A1[6] ) );
  INVX2M U31 ( .A(\SUMB[7][1] ), .Y(n17) );
  CLKXOR2X2M U32 ( .A(\ab[1][0] ), .B(\ab[0][1] ), .Y(PRODUCT[1]) );
  XNOR2X2M U33 ( .A(\ab[1][3] ), .B(n20), .Y(\SUMB[1][3] ) );
  XNOR2X2M U34 ( .A(\ab[1][6] ), .B(n23), .Y(\SUMB[1][6] ) );
  XNOR2X2M U35 ( .A(\ab[1][4] ), .B(n21), .Y(\SUMB[1][4] ) );
  XNOR2X2M U36 ( .A(\ab[1][5] ), .B(n22), .Y(\SUMB[1][5] ) );
  INVX2M U37 ( .A(A[1]), .Y(n30) );
  XNOR2X2M U38 ( .A(\ab[1][1] ), .B(n18), .Y(\SUMB[1][1] ) );
  INVX2M U39 ( .A(A[4]), .Y(n27) );
  INVX2M U40 ( .A(A[5]), .Y(n26) );
  INVX2M U41 ( .A(A[2]), .Y(n29) );
  INVX2M U42 ( .A(A[3]), .Y(n28) );
  INVX2M U43 ( .A(B[1]), .Y(n38) );
  INVX2M U44 ( .A(A[6]), .Y(n25) );
  INVXLM U45 ( .A(B[3]), .Y(n36) );
  INVXLM U46 ( .A(B[4]), .Y(n35) );
  INVXLM U47 ( .A(B[5]), .Y(n34) );
  INVX2M U48 ( .A(A[0]), .Y(n31) );
  INVXLM U49 ( .A(B[6]), .Y(n33) );
  INVXLM U50 ( .A(A[7]), .Y(n24) );
  INVXLM U51 ( .A(B[7]), .Y(n32) );
  INVXLM U52 ( .A(B[0]), .Y(n39) );
  NOR2X1M U54 ( .A(n24), .B(n32), .Y(\ab[7][7] ) );
  NOR2X1M U55 ( .A(n24), .B(n33), .Y(\ab[7][6] ) );
  NOR2X1M U56 ( .A(n24), .B(n34), .Y(\ab[7][5] ) );
  NOR2X1M U57 ( .A(n24), .B(n35), .Y(\ab[7][4] ) );
  NOR2X1M U58 ( .A(n24), .B(n36), .Y(\ab[7][3] ) );
  NOR2X1M U59 ( .A(n24), .B(n37), .Y(\ab[7][2] ) );
  NOR2X1M U60 ( .A(n24), .B(n38), .Y(\ab[7][1] ) );
  NOR2X1M U61 ( .A(n24), .B(n39), .Y(\ab[7][0] ) );
  NOR2X1M U62 ( .A(n32), .B(n25), .Y(\ab[6][7] ) );
  NOR2X1M U63 ( .A(n33), .B(n25), .Y(\ab[6][6] ) );
  NOR2X1M U64 ( .A(n34), .B(n25), .Y(\ab[6][5] ) );
  NOR2X1M U65 ( .A(n35), .B(n25), .Y(\ab[6][4] ) );
  NOR2X1M U66 ( .A(n36), .B(n25), .Y(\ab[6][3] ) );
  NOR2X1M U67 ( .A(n37), .B(n25), .Y(\ab[6][2] ) );
  NOR2X1M U68 ( .A(n38), .B(n25), .Y(\ab[6][1] ) );
  NOR2X1M U69 ( .A(n39), .B(n25), .Y(\ab[6][0] ) );
  NOR2X1M U70 ( .A(n32), .B(n26), .Y(\ab[5][7] ) );
  NOR2X1M U71 ( .A(n33), .B(n26), .Y(\ab[5][6] ) );
  NOR2X1M U72 ( .A(n34), .B(n26), .Y(\ab[5][5] ) );
  NOR2X1M U73 ( .A(n35), .B(n26), .Y(\ab[5][4] ) );
  NOR2X1M U74 ( .A(n36), .B(n26), .Y(\ab[5][3] ) );
  NOR2X1M U75 ( .A(n37), .B(n26), .Y(\ab[5][2] ) );
  NOR2X1M U76 ( .A(n38), .B(n26), .Y(\ab[5][1] ) );
  NOR2X1M U77 ( .A(n39), .B(n26), .Y(\ab[5][0] ) );
  NOR2X1M U78 ( .A(n32), .B(n27), .Y(\ab[4][7] ) );
  NOR2X1M U79 ( .A(n33), .B(n27), .Y(\ab[4][6] ) );
  NOR2X1M U80 ( .A(n34), .B(n27), .Y(\ab[4][5] ) );
  NOR2X1M U81 ( .A(n35), .B(n27), .Y(\ab[4][4] ) );
  NOR2X1M U82 ( .A(n36), .B(n27), .Y(\ab[4][3] ) );
  NOR2X1M U83 ( .A(n37), .B(n27), .Y(\ab[4][2] ) );
  NOR2X1M U84 ( .A(n38), .B(n27), .Y(\ab[4][1] ) );
  NOR2X1M U85 ( .A(n39), .B(n27), .Y(\ab[4][0] ) );
  NOR2X1M U86 ( .A(n32), .B(n28), .Y(\ab[3][7] ) );
  NOR2X1M U87 ( .A(n33), .B(n28), .Y(\ab[3][6] ) );
  NOR2X1M U88 ( .A(n34), .B(n28), .Y(\ab[3][5] ) );
  NOR2X1M U89 ( .A(n35), .B(n28), .Y(\ab[3][4] ) );
  NOR2X1M U90 ( .A(n36), .B(n28), .Y(\ab[3][3] ) );
  NOR2X1M U91 ( .A(n37), .B(n28), .Y(\ab[3][2] ) );
  NOR2X1M U92 ( .A(n38), .B(n28), .Y(\ab[3][1] ) );
  NOR2X1M U93 ( .A(n39), .B(n28), .Y(\ab[3][0] ) );
  NOR2X1M U94 ( .A(n32), .B(n29), .Y(\ab[2][7] ) );
  NOR2X1M U95 ( .A(n33), .B(n29), .Y(\ab[2][6] ) );
  NOR2X1M U96 ( .A(n34), .B(n29), .Y(\ab[2][5] ) );
  NOR2X1M U97 ( .A(n35), .B(n29), .Y(\ab[2][4] ) );
  NOR2X1M U98 ( .A(n36), .B(n29), .Y(\ab[2][3] ) );
  NOR2X1M U99 ( .A(n37), .B(n29), .Y(\ab[2][2] ) );
  NOR2X1M U100 ( .A(n38), .B(n29), .Y(\ab[2][1] ) );
  NOR2X1M U101 ( .A(n39), .B(n29), .Y(\ab[2][0] ) );
  NOR2X1M U102 ( .A(n32), .B(n30), .Y(\ab[1][7] ) );
  NOR2X1M U103 ( .A(n33), .B(n30), .Y(\ab[1][6] ) );
  NOR2X1M U104 ( .A(n34), .B(n30), .Y(\ab[1][5] ) );
  NOR2X1M U105 ( .A(n35), .B(n30), .Y(\ab[1][4] ) );
  NOR2X1M U106 ( .A(n36), .B(n30), .Y(\ab[1][3] ) );
  NOR2X1M U107 ( .A(n37), .B(n30), .Y(\ab[1][2] ) );
  NOR2X1M U108 ( .A(n38), .B(n30), .Y(\ab[1][1] ) );
  NOR2X1M U109 ( .A(n39), .B(n30), .Y(\ab[1][0] ) );
  NOR2X1M U110 ( .A(n32), .B(n31), .Y(\ab[0][7] ) );
  NOR2X1M U111 ( .A(n33), .B(n31), .Y(\ab[0][6] ) );
  NOR2X1M U112 ( .A(n34), .B(n31), .Y(\ab[0][5] ) );
  NOR2X1M U113 ( .A(n35), .B(n31), .Y(\ab[0][4] ) );
  NOR2X1M U114 ( .A(n36), .B(n31), .Y(\ab[0][3] ) );
  NOR2X1M U115 ( .A(n37), .B(n31), .Y(\ab[0][2] ) );
  NOR2X1M U116 ( .A(n38), .B(n31), .Y(\ab[0][1] ) );
  NOR2X1M U117 ( .A(n39), .B(n31), .Y(PRODUCT[0]) );
endmodule


module bit16_alu_DW_div_uns_1 ( a, b, quotient, remainder, divide_by_0 );
  input [7:0] a;
  input [7:0] b;
  output [7:0] quotient;
  output [7:0] remainder;
  output divide_by_0;
  wire   \u_div/SumTmp[1][0] , \u_div/SumTmp[1][1] , \u_div/SumTmp[1][2] ,
         \u_div/SumTmp[1][4] , \u_div/SumTmp[1][5] , \u_div/SumTmp[1][6] ,
         \u_div/SumTmp[2][0] , \u_div/SumTmp[2][1] , \u_div/SumTmp[2][2] ,
         \u_div/SumTmp[2][3] , \u_div/SumTmp[2][4] , \u_div/SumTmp[2][5] ,
         \u_div/SumTmp[3][0] , \u_div/SumTmp[3][1] , \u_div/SumTmp[3][2] ,
         \u_div/SumTmp[3][3] , \u_div/SumTmp[3][4] , \u_div/SumTmp[4][0] ,
         \u_div/SumTmp[4][1] , \u_div/SumTmp[4][2] , \u_div/SumTmp[4][3] ,
         \u_div/SumTmp[5][0] , \u_div/SumTmp[5][1] , \u_div/SumTmp[5][2] ,
         \u_div/SumTmp[6][0] , \u_div/SumTmp[6][1] , \u_div/SumTmp[7][0] ,
         \u_div/CryTmp[0][1] , \u_div/CryTmp[0][2] , \u_div/CryTmp[0][3] ,
         \u_div/CryTmp[0][4] , \u_div/CryTmp[0][5] , \u_div/CryTmp[0][6] ,
         \u_div/CryTmp[0][7] , \u_div/CryTmp[1][1] , \u_div/CryTmp[1][2] ,
         \u_div/CryTmp[1][3] , \u_div/CryTmp[1][4] , \u_div/CryTmp[1][5] ,
         \u_div/CryTmp[1][6] , \u_div/CryTmp[1][7] , \u_div/CryTmp[2][1] ,
         \u_div/CryTmp[2][2] , \u_div/CryTmp[2][3] , \u_div/CryTmp[2][4] ,
         \u_div/CryTmp[2][5] , \u_div/CryTmp[2][6] , \u_div/CryTmp[3][1] ,
         \u_div/CryTmp[3][2] , \u_div/CryTmp[3][3] , \u_div/CryTmp[3][4] ,
         \u_div/CryTmp[3][5] , \u_div/CryTmp[4][1] , \u_div/CryTmp[4][2] ,
         \u_div/CryTmp[4][3] , \u_div/CryTmp[4][4] , \u_div/CryTmp[5][1] ,
         \u_div/CryTmp[5][2] , \u_div/CryTmp[5][3] , \u_div/CryTmp[6][1] ,
         \u_div/CryTmp[6][2] , \u_div/PartRem[1][1] , \u_div/PartRem[1][2] ,
         \u_div/PartRem[1][3] , \u_div/PartRem[1][4] , \u_div/PartRem[1][5] ,
         \u_div/PartRem[1][6] , \u_div/PartRem[1][7] , \u_div/PartRem[2][1] ,
         \u_div/PartRem[2][2] , \u_div/PartRem[2][3] , \u_div/PartRem[2][4] ,
         \u_div/PartRem[2][5] , \u_div/PartRem[2][6] , \u_div/PartRem[4][1] ,
         \u_div/PartRem[5][1] , \u_div/PartRem[6][1] , \u_div/PartRem[6][2] ,
         \u_div/PartRem[7][1] , n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11,
         n12, n13, n14, n15, n16, n17, n18, n19, n21, n22, n23, n24, n25, n26,
         n27, n28, n29, n30, n31, n32, n33, n34, n35, n36, n37, n38, n39, n40,
         n41, n42, n43, n44, n45, n46, n48, n49, n50, n51, n52, n53, n54, n55,
         n56, n57, n58, n59, n60, n61, n62, n63, n64, n65, n66, n67, n68, n69,
         n70, n71, n72, n73, n74, n75, n76, n77, n78, n79, n80, n81, n82, n83,
         n84, n85, n86, n87, n88, n89, n90, n91, n92, n93, n94;
  wire   [7:0] \u_div/BInv ;

  ADDFHX4M \u_div/u_fa_PartRem_0_0_1  ( .A(\u_div/PartRem[1][1] ), .B(
        \u_div/BInv [1]), .CI(\u_div/CryTmp[0][1] ), .CO(\u_div/CryTmp[0][2] )
         );
  ADDFHX4M \u_div/u_fa_PartRem_0_0_2  ( .A(\u_div/PartRem[1][2] ), .B(
        \u_div/BInv [2]), .CI(\u_div/CryTmp[0][2] ), .CO(\u_div/CryTmp[0][3] )
         );
  ADDFHX4M \u_div/u_fa_PartRem_0_1_2  ( .A(\u_div/PartRem[2][2] ), .B(
        \u_div/BInv [2]), .CI(\u_div/CryTmp[1][2] ), .CO(\u_div/CryTmp[1][3] ), 
        .S(\u_div/SumTmp[1][2] ) );
  ADDFHX4M \u_div/u_fa_PartRem_0_1_5  ( .A(\u_div/PartRem[2][5] ), .B(
        \u_div/BInv [5]), .CI(\u_div/CryTmp[1][5] ), .CO(\u_div/CryTmp[1][6] ), 
        .S(\u_div/SumTmp[1][5] ) );
  ADDFHX4M \u_div/u_fa_PartRem_0_5_2  ( .A(\u_div/PartRem[6][2] ), .B(
        \u_div/BInv [2]), .CI(\u_div/CryTmp[5][2] ), .CO(\u_div/CryTmp[5][3] ), 
        .S(\u_div/SumTmp[5][2] ) );
  ADDFHX4M \u_div/u_fa_PartRem_0_4_3  ( .A(n51), .B(\u_div/BInv [3]), .CI(
        \u_div/CryTmp[4][3] ), .CO(\u_div/CryTmp[4][4] ), .S(
        \u_div/SumTmp[4][3] ) );
  ADDFHX1M \u_div/u_fa_PartRem_0_6_1  ( .A(\u_div/CryTmp[6][1] ), .B(
        \u_div/BInv [1]), .CI(\u_div/PartRem[7][1] ), .CO(\u_div/CryTmp[6][2] ), .S(\u_div/SumTmp[6][1] ) );
  ADDFHX4M \u_div/u_fa_PartRem_0_0_3  ( .A(\u_div/PartRem[1][3] ), .B(
        \u_div/BInv [3]), .CI(\u_div/CryTmp[0][3] ), .CO(\u_div/CryTmp[0][4] )
         );
  ADDFHX4M \u_div/u_fa_PartRem_0_0_4  ( .A(\u_div/PartRem[1][4] ), .B(
        \u_div/BInv [4]), .CI(\u_div/CryTmp[0][4] ), .CO(\u_div/CryTmp[0][5] )
         );
  ADDFHX4M \u_div/u_fa_PartRem_0_0_5  ( .A(\u_div/PartRem[1][5] ), .B(
        \u_div/BInv [5]), .CI(\u_div/CryTmp[0][5] ), .CO(\u_div/CryTmp[0][6] )
         );
  ADDFHX4M \u_div/u_fa_PartRem_0_5_1  ( .A(\u_div/PartRem[6][1] ), .B(
        \u_div/BInv [1]), .CI(\u_div/CryTmp[5][1] ), .CO(\u_div/CryTmp[5][2] ), 
        .S(\u_div/SumTmp[5][1] ) );
  ADDFHX2M \u_div/u_fa_PartRem_0_0_7  ( .A(\u_div/PartRem[1][7] ), .B(
        \u_div/BInv [7]), .CI(\u_div/CryTmp[0][7] ), .CO(quotient[0]) );
  ADDFHX4M \u_div/u_fa_PartRem_0_3_1  ( .A(\u_div/PartRem[4][1] ), .B(
        \u_div/BInv [1]), .CI(\u_div/CryTmp[3][1] ), .CO(\u_div/CryTmp[3][2] ), 
        .S(\u_div/SumTmp[3][1] ) );
  ADDFHX4M \u_div/u_fa_PartRem_0_1_1  ( .A(\u_div/PartRem[2][1] ), .B(
        \u_div/BInv [1]), .CI(\u_div/CryTmp[1][1] ), .CO(\u_div/CryTmp[1][2] ), 
        .S(\u_div/SumTmp[1][1] ) );
  ADDFHX4M \u_div/u_fa_PartRem_0_1_6  ( .A(\u_div/PartRem[2][6] ), .B(
        \u_div/BInv [6]), .CI(\u_div/CryTmp[1][6] ), .CO(\u_div/CryTmp[1][7] ), 
        .S(\u_div/SumTmp[1][6] ) );
  ADDFHX2M \u_div/u_fa_PartRem_0_2_4  ( .A(n45), .B(\u_div/BInv [4]), .CI(
        \u_div/CryTmp[2][4] ), .CO(\u_div/CryTmp[2][5] ), .S(
        \u_div/SumTmp[2][4] ) );
  ADDFHX2M \u_div/u_fa_PartRem_0_2_5  ( .A(n40), .B(\u_div/BInv [5]), .CI(
        \u_div/CryTmp[2][5] ), .CO(\u_div/CryTmp[2][6] ), .S(
        \u_div/SumTmp[2][5] ) );
  ADDFHX2M \u_div/u_fa_PartRem_0_3_4  ( .A(n50), .B(\u_div/BInv [4]), .CI(
        \u_div/CryTmp[3][4] ), .CO(\u_div/CryTmp[3][5] ), .S(
        \u_div/SumTmp[3][4] ) );
  ADDFHX2M \u_div/u_fa_PartRem_0_3_2  ( .A(n46), .B(\u_div/BInv [2]), .CI(
        \u_div/CryTmp[3][2] ), .CO(\u_div/CryTmp[3][3] ), .S(
        \u_div/SumTmp[3][2] ) );
  ADDFHX4M \u_div/u_fa_PartRem_0_1_4  ( .A(\u_div/PartRem[2][4] ), .B(
        \u_div/BInv [4]), .CI(\u_div/CryTmp[1][4] ), .CO(\u_div/CryTmp[1][5] ), 
        .S(\u_div/SumTmp[1][4] ) );
  ADDFHX2M \u_div/u_fa_PartRem_0_3_3  ( .A(n48), .B(\u_div/BInv [3]), .CI(
        \u_div/CryTmp[3][3] ), .CO(\u_div/CryTmp[3][4] ), .S(
        \u_div/SumTmp[3][3] ) );
  ADDFHX4M \u_div/u_fa_PartRem_0_0_6  ( .A(\u_div/PartRem[1][6] ), .B(
        \u_div/BInv [6]), .CI(\u_div/CryTmp[0][6] ), .CO(\u_div/CryTmp[0][7] )
         );
  ADDFHX1M \u_div/u_fa_PartRem_0_6_0  ( .A(a[6]), .B(n34), .CI(1'b1), .CO(
        \u_div/CryTmp[6][1] ), .S(\u_div/SumTmp[6][0] ) );
  ADDFX2M \u_div/u_fa_PartRem_0_5_0  ( .A(a[5]), .B(n35), .CI(1'b1), .CO(
        \u_div/CryTmp[5][1] ), .S(\u_div/SumTmp[5][0] ) );
  ADDFX2M \u_div/u_fa_PartRem_0_0_0  ( .A(a[0]), .B(n34), .CI(1'b1), .CO(
        \u_div/CryTmp[0][1] ) );
  ADDFX2M \u_div/u_fa_PartRem_0_4_0  ( .A(a[4]), .B(n34), .CI(1'b1), .CO(
        \u_div/CryTmp[4][1] ), .S(\u_div/SumTmp[4][0] ) );
  ADDFX2M \u_div/u_fa_PartRem_0_3_0  ( .A(a[3]), .B(n35), .CI(1'b1), .CO(
        \u_div/CryTmp[3][1] ), .S(\u_div/SumTmp[3][0] ) );
  ADDFX2M \u_div/u_fa_PartRem_0_2_0  ( .A(a[2]), .B(n34), .CI(1'b1), .CO(
        \u_div/CryTmp[2][1] ), .S(\u_div/SumTmp[2][0] ) );
  ADDFX2M \u_div/u_fa_PartRem_0_1_0  ( .A(a[1]), .B(n35), .CI(1'b1), .CO(
        \u_div/CryTmp[1][1] ), .S(\u_div/SumTmp[1][0] ) );
  NAND2BXLM U1 ( .AN(b[7]), .B(\u_div/CryTmp[1][7] ), .Y(n94) );
  INVXLM U2 ( .A(n86), .Y(quotient[7]) );
  INVX4M U3 ( .A(n74), .Y(n90) );
  NAND2X8M U4 ( .A(n91), .B(n92), .Y(n74) );
  MXI2XLM U5 ( .A(n4), .B(\u_div/SumTmp[2][1] ), .S0(quotient[2]), .Y(n59) );
  NAND2X3M U6 ( .A(n37), .B(n1), .Y(n30) );
  AND2X4M U7 ( .A(n30), .B(n31), .Y(n4) );
  CLKINVX16M U8 ( .A(n81), .Y(n92) );
  CLKNAND2X2M U9 ( .A(\u_div/CryTmp[1][3] ), .B(\u_div/BInv [3]), .Y(n14) );
  XNOR3XLM U10 ( .A(\u_div/CryTmp[1][3] ), .B(\u_div/PartRem[2][3] ), .C(
        \u_div/BInv [3]), .Y(n5) );
  NAND2X4M U11 ( .A(\u_div/SumTmp[6][0] ), .B(quotient[6]), .Y(n33) );
  INVX2M U12 ( .A(n63), .Y(\u_div/PartRem[7][1] ) );
  NAND3X2M U13 ( .A(n22), .B(n23), .C(n24), .Y(\u_div/CryTmp[4][2] ) );
  NAND2X3M U14 ( .A(\u_div/BInv [2]), .B(\u_div/CryTmp[2][2] ), .Y(n12) );
  XOR2XLM U15 ( .A(n9), .B(\u_div/CryTmp[2][2] ), .Y(\u_div/SumTmp[2][2] ) );
  MX2XLM U16 ( .A(n42), .B(\u_div/SumTmp[4][2] ), .S0(quotient[4]), .Y(n48) );
  CLKNAND2X2M U17 ( .A(n21), .B(\u_div/BInv [2]), .Y(n10) );
  CLKNAND2X2M U18 ( .A(n21), .B(\u_div/CryTmp[2][2] ), .Y(n11) );
  MX2XLM U19 ( .A(n51), .B(\u_div/SumTmp[4][3] ), .S0(quotient[4]), .Y(n50) );
  CLKAND2X3M U20 ( .A(\u_div/CryTmp[4][4] ), .B(n90), .Y(quotient[4]) );
  NAND2X3M U21 ( .A(n4), .B(\u_div/BInv [1]), .Y(n6) );
  CLKINVX4M U22 ( .A(n62), .Y(\u_div/PartRem[6][2] ) );
  NAND2X3M U23 ( .A(\u_div/BInv [1]), .B(\u_div/PartRem[5][1] ), .Y(n24) );
  NAND2X1M U24 ( .A(n36), .B(n38), .Y(n31) );
  NAND2X3M U25 ( .A(n4), .B(\u_div/CryTmp[2][1] ), .Y(n7) );
  INVX4M U26 ( .A(n60), .Y(\u_div/PartRem[2][1] ) );
  MXI2X3M U27 ( .A(n44), .B(n43), .S0(quotient[5]), .Y(n42) );
  INVX4M U28 ( .A(n89), .Y(quotient[5]) );
  NAND2X4M U29 ( .A(n32), .B(n33), .Y(\u_div/PartRem[6][1] ) );
  CLKINVX4M U30 ( .A(\u_div/CryTmp[3][5] ), .Y(n78) );
  NAND2BX12M U31 ( .AN(b[6]), .B(\u_div/BInv [7]), .Y(n81) );
  MXI2X2M U32 ( .A(\u_div/SumTmp[7][0] ), .B(a[7]), .S0(n86), .Y(n63) );
  INVX3M U33 ( .A(\u_div/CryTmp[2][6] ), .Y(n82) );
  MXI2X2M U34 ( .A(n60), .B(n79), .S0(quotient[1]), .Y(\u_div/PartRem[1][2] )
         );
  MXI2X3M U35 ( .A(a[2]), .B(\u_div/SumTmp[2][0] ), .S0(n80), .Y(n60) );
  INVX2M U36 ( .A(a[4]), .Y(n71) );
  INVX2M U37 ( .A(\u_div/SumTmp[4][0] ), .Y(n72) );
  NOR2X4M U38 ( .A(n75), .B(n29), .Y(n73) );
  CLKMX2X2M U39 ( .A(\u_div/PartRem[5][1] ), .B(\u_div/SumTmp[4][1] ), .S0(
        quotient[4]), .Y(n46) );
  MX2X3M U40 ( .A(\u_div/PartRem[6][2] ), .B(\u_div/SumTmp[5][2] ), .S0(
        quotient[5]), .Y(n51) );
  NAND2X2M U41 ( .A(n90), .B(\u_div/BInv [3]), .Y(n69) );
  INVX1M U42 ( .A(b[0]), .Y(\u_div/BInv [0]) );
  CLKINVX8M U43 ( .A(n69), .Y(n87) );
  INVX2M U44 ( .A(n94), .Y(quotient[1]) );
  INVX4M U45 ( .A(\u_div/CryTmp[4][4] ), .Y(n75) );
  NOR2X2M U46 ( .A(n81), .B(n82), .Y(n80) );
  BUFX2M U47 ( .A(n41), .Y(n21) );
  NOR2X4M U48 ( .A(b[5]), .B(b[4]), .Y(n91) );
  NAND3X2M U49 ( .A(n19), .B(n18), .C(n17), .Y(\u_div/CryTmp[2][4] ) );
  NAND2X2M U50 ( .A(\u_div/CryTmp[2][3] ), .B(n49), .Y(n17) );
  NAND2X2M U51 ( .A(\u_div/CryTmp[6][2] ), .B(n2), .Y(n88) );
  NOR2X4M U52 ( .A(n3), .B(b[1]), .Y(n39) );
  INVX2M U53 ( .A(n1), .Y(quotient[3]) );
  INVX2M U54 ( .A(n88), .Y(quotient[6]) );
  INVX4M U55 ( .A(b[7]), .Y(\u_div/BInv [7]) );
  NAND2X1M U56 ( .A(a[6]), .B(n88), .Y(n32) );
  OR2X12M U57 ( .A(b[2]), .B(n52), .Y(n3) );
  NAND3X4M U58 ( .A(n10), .B(n11), .C(n12), .Y(\u_div/CryTmp[2][3] ) );
  NAND3X4M U59 ( .A(n6), .B(n7), .C(n8), .Y(\u_div/CryTmp[2][2] ) );
  NAND2X2M U60 ( .A(\u_div/CryTmp[4][1] ), .B(\u_div/PartRem[5][1] ), .Y(n23)
         );
  NAND2X4M U61 ( .A(n39), .B(n87), .Y(n86) );
  MXI2X4M U62 ( .A(n66), .B(n67), .S0(n68), .Y(\u_div/PartRem[5][1] ) );
  OR2X4M U63 ( .A(n78), .B(n77), .Y(n1) );
  AND2X1M U64 ( .A(n87), .B(\u_div/BInv [2]), .Y(n2) );
  NOR2X2M U65 ( .A(n78), .B(n77), .Y(n38) );
  XOR3XLM U66 ( .A(n4), .B(\u_div/BInv [1]), .C(\u_div/CryTmp[2][1] ), .Y(
        \u_div/SumTmp[2][1] ) );
  NAND2X2M U67 ( .A(\u_div/BInv [1]), .B(\u_div/CryTmp[2][1] ), .Y(n8) );
  CLKXOR2X2M U68 ( .A(n21), .B(\u_div/BInv [2]), .Y(n9) );
  CLKNAND2X2M U69 ( .A(\u_div/CryTmp[1][3] ), .B(\u_div/PartRem[2][3] ), .Y(
        n13) );
  NAND2X2M U70 ( .A(\u_div/PartRem[2][3] ), .B(\u_div/BInv [3]), .Y(n15) );
  NAND3X4M U71 ( .A(n15), .B(n14), .C(n13), .Y(\u_div/CryTmp[1][4] ) );
  INVX4M U72 ( .A(b[3]), .Y(\u_div/BInv [3]) );
  INVX1M U73 ( .A(b[0]), .Y(n34) );
  INVX4M U74 ( .A(b[1]), .Y(\u_div/BInv [1]) );
  XOR2XLM U75 ( .A(\u_div/BInv [3]), .B(n49), .Y(n16) );
  XOR2XLM U76 ( .A(n16), .B(\u_div/CryTmp[2][3] ), .Y(\u_div/SumTmp[2][3] ) );
  NAND2X2M U77 ( .A(\u_div/CryTmp[2][3] ), .B(\u_div/BInv [3]), .Y(n18) );
  NAND2XLM U78 ( .A(n49), .B(\u_div/BInv [3]), .Y(n19) );
  MX2XLM U79 ( .A(n46), .B(\u_div/SumTmp[3][2] ), .S0(quotient[3]), .Y(n49) );
  MXI2XLM U80 ( .A(\u_div/PartRem[7][1] ), .B(\u_div/SumTmp[6][1] ), .S0(
        quotient[6]), .Y(n62) );
  NAND2X1M U81 ( .A(n42), .B(\u_div/BInv [2]), .Y(n26) );
  NAND2BX1M U82 ( .AN(n70), .B(n87), .Y(n89) );
  MX2XLM U83 ( .A(n50), .B(\u_div/SumTmp[3][4] ), .S0(quotient[3]), .Y(n40) );
  MX2X3M U84 ( .A(n48), .B(\u_div/SumTmp[3][3] ), .S0(quotient[3]), .Y(n45) );
  INVXLM U85 ( .A(\u_div/PartRem[6][1] ), .Y(n44) );
  XOR2XLM U86 ( .A(n25), .B(\u_div/CryTmp[4][2] ), .Y(\u_div/SumTmp[4][2] ) );
  NOR2X4M U87 ( .A(n69), .B(n70), .Y(n68) );
  INVX4M U88 ( .A(\u_div/CryTmp[5][3] ), .Y(n70) );
  MXI2X6M U89 ( .A(n71), .B(n72), .S0(n73), .Y(\u_div/PartRem[4][1] ) );
  XOR3XLM U90 ( .A(\u_div/CryTmp[4][1] ), .B(\u_div/BInv [1]), .C(
        \u_div/PartRem[5][1] ), .Y(\u_div/SumTmp[4][1] ) );
  NAND2XLM U91 ( .A(\u_div/CryTmp[4][1] ), .B(\u_div/BInv [1]), .Y(n22) );
  XOR2XLM U92 ( .A(n42), .B(\u_div/BInv [2]), .Y(n25) );
  NAND2X1M U93 ( .A(n42), .B(\u_div/CryTmp[4][2] ), .Y(n27) );
  NAND2X2M U94 ( .A(\u_div/BInv [2]), .B(\u_div/CryTmp[4][2] ), .Y(n28) );
  NAND3X2M U95 ( .A(n26), .B(n27), .C(n28), .Y(\u_div/CryTmp[4][3] ) );
  NAND2XLM U96 ( .A(n91), .B(n92), .Y(n29) );
  INVX2M U97 ( .A(a[3]), .Y(n37) );
  CLKAND2X12M U98 ( .A(n53), .B(n54), .Y(n52) );
  INVX2M U99 ( .A(\u_div/SumTmp[5][1] ), .Y(n43) );
  INVX2M U100 ( .A(\u_div/SumTmp[3][0] ), .Y(n36) );
  XNOR2XLM U101 ( .A(n35), .B(a[7]), .Y(\u_div/SumTmp[7][0] ) );
  INVXLM U102 ( .A(b[0]), .Y(n35) );
  MX2XLM U103 ( .A(\u_div/PartRem[4][1] ), .B(\u_div/SumTmp[3][1] ), .S0(n38), 
        .Y(n41) );
  INVX2M U104 ( .A(n58), .Y(\u_div/PartRem[2][3] ) );
  INVX4M U105 ( .A(a[7]), .Y(n54) );
  MXI2XLM U106 ( .A(n49), .B(\u_div/SumTmp[2][3] ), .S0(quotient[2]), .Y(n57)
         );
  MXI2XLM U107 ( .A(n21), .B(\u_div/SumTmp[2][2] ), .S0(quotient[2]), .Y(n58)
         );
  MXI2XLM U108 ( .A(n40), .B(\u_div/SumTmp[2][5] ), .S0(quotient[2]), .Y(n55)
         );
  MXI2XLM U109 ( .A(n45), .B(\u_div/SumTmp[2][4] ), .S0(quotient[2]), .Y(n56)
         );
  INVX2M U110 ( .A(n55), .Y(\u_div/PartRem[2][6] ) );
  INVX2M U111 ( .A(\u_div/SumTmp[1][1] ), .Y(n79) );
  MXI2XLM U112 ( .A(n59), .B(n76), .S0(quotient[1]), .Y(\u_div/PartRem[1][3] )
         );
  INVX2M U113 ( .A(\u_div/SumTmp[1][2] ), .Y(n76) );
  INVX2M U114 ( .A(a[5]), .Y(n66) );
  INVX2M U115 ( .A(\u_div/SumTmp[5][0] ), .Y(n67) );
  MXI2XLM U116 ( .A(n57), .B(n65), .S0(quotient[1]), .Y(\u_div/PartRem[1][5] )
         );
  INVX2M U117 ( .A(\u_div/SumTmp[1][4] ), .Y(n65) );
  MXI2XLM U118 ( .A(n55), .B(n61), .S0(quotient[1]), .Y(\u_div/PartRem[1][7] )
         );
  INVX2M U119 ( .A(\u_div/SumTmp[1][6] ), .Y(n61) );
  INVX2M U120 ( .A(n57), .Y(\u_div/PartRem[2][4] ) );
  INVX2M U121 ( .A(n56), .Y(\u_div/PartRem[2][5] ) );
  MXI2XLM U122 ( .A(n58), .B(n5), .S0(quotient[1]), .Y(\u_div/PartRem[1][4] )
         );
  MXI2XLM U123 ( .A(n56), .B(n64), .S0(quotient[1]), .Y(\u_div/PartRem[1][6] )
         );
  INVX2M U124 ( .A(\u_div/SumTmp[1][5] ), .Y(n64) );
  INVX2M U125 ( .A(\u_div/BInv [0]), .Y(n53) );
  NAND2XLM U126 ( .A(n92), .B(\u_div/BInv [5]), .Y(n77) );
  INVX2M U127 ( .A(b[2]), .Y(\u_div/BInv [2]) );
  INVX2M U128 ( .A(a[1]), .Y(n83) );
  INVX2M U129 ( .A(\u_div/SumTmp[1][0] ), .Y(n84) );
  CLKINVX1M U130 ( .A(b[4]), .Y(\u_div/BInv [4]) );
  CLKINVX1M U131 ( .A(b[5]), .Y(\u_div/BInv [5]) );
  INVXLM U132 ( .A(b[6]), .Y(\u_div/BInv [6]) );
  NOR2BX8M U133 ( .AN(\u_div/CryTmp[1][7] ), .B(b[7]), .Y(n85) );
  INVX6M U134 ( .A(n93), .Y(quotient[2]) );
  INVX2M U135 ( .A(n59), .Y(\u_div/PartRem[2][2] ) );
  NAND2BX4M U136 ( .AN(n82), .B(n92), .Y(n93) );
  MXI2X6M U137 ( .A(n83), .B(n84), .S0(n85), .Y(\u_div/PartRem[1][1] ) );
endmodule


module bit16_alu ( a, b, alu_fun, clk, rst_n, enable, alu_out, out_valid );
  input [7:0] a;
  input [7:0] b;
  input [3:0] alu_fun;
  output [15:0] alu_out;
  input clk, rst_n, enable;
  output out_valid;
  wire   N92, N93, N94, N95, N96, N97, N98, N99, N100, N101, N102, N103, N104,
         N105, N106, N107, N108, N109, N110, N111, N112, N113, N114, N115,
         N116, N117, N118, N119, N120, N121, N122, N123, N124, N125, N126,
         N127, N128, N129, N130, N131, N132, N133, N158, N159, N160, N178, n18,
         n24, n30, n31, n39, n41, n43, n44, n45, n48, n49, n50, n51, n52, n58,
         n59, n66, n67, n74, n75, n82, n83, n91, n92, n95, n96, n102, n104,
         n105, n106, n110, n111, n112, n113, n115, n116, n117, n118, n119,
         n120, n121, n122, n123, n124, n125, n126, n127, n128, n129, n130,
         n131, n132, n133, n134, n135, n136, n137, n138, n3, n4, n5, n6, n7,
         n8, n9, n10, n11, n12, n13, n14, n15, n16, n17, n19, n20, n21, n22,
         n23, n25, n26, n27, n28, n29, n32, n33, n34, n35, n36, n37, n38, n40,
         n42, n46, n47, n53, n54, n55, n56, n57, n60, n61, n62, n63, n64, n65,
         n68, n69, n70, n71, n72, n73, n76, n77, n78, n79, n80, n81, n84, n85,
         n86, n87, n88, n89, n90, n93, n94, n97, n98, n99, n100, n101, n103,
         n107, n108, n109, n114, n139, n140, n141, n142, n143, n144, n145,
         n146, n147, n148, n149, n150, n151, n152, n153, n154, n155, n156,
         n157, n158, n159, n160, n161, n162, n163, n164, n165, n166, n167,
         n168, n169, n170, n171, n172, n173, n174, n175, n176, n177, n178,
         n179, n180, n181, n182, n183, n184, n185, n186, n187, n188, n189,
         n190, n191, n192, n193, n194;

  bit16_alu_DW01_sub_0 sub_24 ( .A({1'b0, n25, n5, n22, n21, n20, n19, n17, 
        a[0]}), .B({1'b0, b[7], n9, b[5:2], n15, b[0]}), .CI(1'b0), .DIFF({
        N109, N108, N107, N106, N105, N104, N103, N102, N101}) );
  bit16_alu_DW01_add_0 add_21 ( .A({1'b0, n25, n6, n22, n21, n20, n19, n17, 
        a[0]}), .B({1'b0, b[7], n8, b[5:2], n15, b[0]}), .CI(1'b0), .SUM({N100, 
        N99, N98, N97, N96, N95, N94, N93, N92}) );
  bit16_alu_DW02_mult_0 mult_27 ( .A({n25, n5, n22, n21, n20, n19, n17, a[0]}), 
        .B({b[7], n8, b[5:2], n15, b[0]}), .TC(1'b0), .PRODUCT({N125, N124, 
        N123, N122, N121, N120, N119, N118, N117, N116, N115, N114, N113, N112, 
        N111, N110}) );
  bit16_alu_DW_div_uns_1 div_30 ( .a({n25, n4, n22, n21, n20, n19, n17, a[0]}), 
        .b({b[7], n7, b[5:2], n15, b[0]}), .quotient({N133, N132, N131, N130, 
        N129, N128, N127, N126}) );
  DFFRQX1M \alu_out_reg[0]  ( .D(n123), .CK(clk), .RN(rst_n), .Q(alu_out[0])
         );
  DFFRQX2M \alu_out_reg[8]  ( .D(n131), .CK(clk), .RN(rst_n), .Q(alu_out[8])
         );
  DFFRQX2M \alu_out_reg[7]  ( .D(n130), .CK(clk), .RN(rst_n), .Q(alu_out[7])
         );
  DFFRQX2M \alu_out_reg[1]  ( .D(n124), .CK(clk), .RN(rst_n), .Q(alu_out[1])
         );
  DFFRQX2M \alu_out_reg[15]  ( .D(n138), .CK(clk), .RN(rst_n), .Q(alu_out[15])
         );
  DFFRQX2M \alu_out_reg[14]  ( .D(n137), .CK(clk), .RN(rst_n), .Q(alu_out[14])
         );
  DFFRQX2M \alu_out_reg[13]  ( .D(n136), .CK(clk), .RN(rst_n), .Q(alu_out[13])
         );
  DFFRQX2M \alu_out_reg[12]  ( .D(n135), .CK(clk), .RN(rst_n), .Q(alu_out[12])
         );
  DFFRQX2M \alu_out_reg[11]  ( .D(n134), .CK(clk), .RN(rst_n), .Q(alu_out[11])
         );
  DFFRQX2M \alu_out_reg[10]  ( .D(n133), .CK(clk), .RN(rst_n), .Q(alu_out[10])
         );
  DFFRQX2M \alu_out_reg[9]  ( .D(n132), .CK(clk), .RN(rst_n), .Q(alu_out[9])
         );
  DFFRQX2M \alu_out_reg[6]  ( .D(n129), .CK(clk), .RN(rst_n), .Q(alu_out[6])
         );
  DFFRQX2M \alu_out_reg[5]  ( .D(n128), .CK(clk), .RN(rst_n), .Q(alu_out[5])
         );
  DFFRQX2M \alu_out_reg[4]  ( .D(n127), .CK(clk), .RN(rst_n), .Q(alu_out[4])
         );
  DFFRQX2M \alu_out_reg[3]  ( .D(n126), .CK(clk), .RN(rst_n), .Q(alu_out[3])
         );
  DFFRQX2M \alu_out_reg[2]  ( .D(n125), .CK(clk), .RN(rst_n), .Q(alu_out[2])
         );
  DFFRQX2M out_valid_reg ( .D(N178), .CK(clk), .RN(rst_n), .Q(out_valid) );
  BUFX12M U3 ( .A(n16), .Y(n7) );
  INVX2M U4 ( .A(n23), .Y(n3) );
  INVX2M U7 ( .A(n3), .Y(n4) );
  INVXLM U8 ( .A(n3), .Y(n5) );
  INVXLM U9 ( .A(n3), .Y(n6) );
  BUFX8M U10 ( .A(b[6]), .Y(n16) );
  BUFX2M U11 ( .A(n16), .Y(n9) );
  BUFX2M U12 ( .A(n16), .Y(n8) );
  BUFX6M U13 ( .A(a[7]), .Y(n25) );
  BUFX2M U14 ( .A(a[6]), .Y(n23) );
  BUFX2M U15 ( .A(a[5]), .Y(n22) );
  BUFX6M U16 ( .A(b[1]), .Y(n15) );
  OAI221XLM U17 ( .A0(n22), .A1(n148), .B0(n14), .B1(n187), .C0(n184), .Y(n83)
         );
  OAI221XLM U18 ( .A0(n30), .A1(n187), .B0(n22), .B1(n14), .C0(n31), .Y(n82)
         );
  AOI222XLM U19 ( .A0(n59), .A1(n175), .B0(n19), .B1(n114), .C0(n58), .C1(b[2]), .Y(n46) );
  INVXLM U20 ( .A(b[2]), .Y(n175) );
  INVX2M U21 ( .A(enable), .Y(n147) );
  INVX2M U22 ( .A(n95), .Y(n148) );
  NOR2X2M U23 ( .A(n147), .B(n49), .Y(n95) );
  INVX2M U24 ( .A(n184), .Y(n109) );
  INVX2M U25 ( .A(n30), .Y(n183) );
  INVX2M U26 ( .A(n44), .Y(n182) );
  AOI22X1M U27 ( .A0(n185), .A1(n51), .B0(n144), .B1(n102), .Y(n49) );
  OR2X2M U28 ( .A(n106), .B(n29), .Y(n184) );
  NOR2X2M U29 ( .A(n185), .B(n145), .Y(n102) );
  NAND2BX2M U30 ( .AN(n147), .B(n52), .Y(n30) );
  INVX2M U31 ( .A(n27), .Y(n141) );
  NAND3BX2M U32 ( .AN(n146), .B(n185), .C(n12), .Y(n27) );
  INVX2M U33 ( .A(n31), .Y(n114) );
  OR3X2M U34 ( .A(n43), .B(n147), .C(n146), .Y(n10) );
  NOR2X2M U35 ( .A(n144), .B(n10), .Y(n11) );
  INVX2M U36 ( .A(n14), .Y(n139) );
  NAND2X2M U37 ( .A(n102), .B(n18), .Y(n44) );
  INVX2M U38 ( .A(n97), .Y(n35) );
  NOR3X2M U39 ( .A(n144), .B(alu_fun[2]), .C(n146), .Y(n51) );
  OAI2BB2X1M U40 ( .B0(alu_fun[3]), .B1(n43), .A0N(n185), .A1N(n51), .Y(n52)
         );
  OR2X2M U41 ( .A(alu_fun[3]), .B(n10), .Y(n31) );
  NAND2X2M U42 ( .A(alu_fun[2]), .B(n185), .Y(n43) );
  NAND3BX2M U43 ( .AN(n34), .B(N160), .C(n33), .Y(n97) );
  INVX2M U44 ( .A(n43), .Y(n33) );
  INVX2M U45 ( .A(n18), .Y(n34) );
  INVX2M U46 ( .A(n26), .Y(n142) );
  NAND3BX2M U47 ( .AN(alu_fun[0]), .B(alu_fun[1]), .C(n12), .Y(n26) );
  NAND2BX2M U48 ( .AN(alu_fun[0]), .B(n102), .Y(n106) );
  INVX2M U49 ( .A(alu_fun[1]), .Y(n185) );
  INVX2M U50 ( .A(alu_fun[3]), .Y(n144) );
  INVX2M U51 ( .A(alu_fun[2]), .Y(n145) );
  INVX2M U52 ( .A(alu_fun[0]), .Y(n146) );
  BUFX2M U53 ( .A(n24), .Y(n14) );
  NAND4BX1M U54 ( .AN(alu_fun[0]), .B(n110), .C(alu_fun[3]), .D(enable), .Y(
        n24) );
  NOR2X2M U55 ( .A(alu_fun[2]), .B(alu_fun[1]), .Y(n110) );
  NOR2X2M U56 ( .A(alu_fun[2]), .B(n29), .Y(n12) );
  INVX2M U57 ( .A(n32), .Y(n108) );
  NAND3BX2M U58 ( .AN(n146), .B(alu_fun[1]), .C(n12), .Y(n32) );
  OR2X2M U59 ( .A(alu_fun[3]), .B(n147), .Y(n29) );
  NOR3X2M U60 ( .A(n144), .B(alu_fun[0]), .C(n147), .Y(n18) );
  INVX2M U61 ( .A(n28), .Y(n140) );
  NAND3BX2M U62 ( .AN(alu_fun[0]), .B(n185), .C(n12), .Y(n28) );
  NOR2X2M U63 ( .A(n122), .B(n147), .Y(N178) );
  AND4X2M U64 ( .A(n43), .B(n106), .C(alu_fun[2]), .D(n49), .Y(n122) );
  OAI2BB1X2M U65 ( .A0N(N126), .A1N(n108), .B0(n107), .Y(n123) );
  AND3X2M U66 ( .A(n103), .B(n101), .C(n100), .Y(n107) );
  AOI22X1M U67 ( .A0(n17), .A1(n11), .B0(N101), .B1(n141), .Y(n101) );
  NAND3X2M U68 ( .A(n42), .B(n40), .C(n38), .Y(n124) );
  AOI222X1M U69 ( .A0(N93), .A1(n140), .B0(N102), .B1(n141), .C0(N111), .C1(
        n142), .Y(n40) );
  NOR3BX2M U70 ( .AN(n37), .B(n41), .C(n36), .Y(n38) );
  AOI221XLM U71 ( .A0(N127), .A1(n108), .B0(n19), .B1(n11), .C0(n35), .Y(n42)
         );
  NAND3BX2M U72 ( .AN(n55), .B(n54), .C(n53), .Y(n125) );
  AOI222X1M U73 ( .A0(n190), .A1(n109), .B0(N112), .B1(n142), .C0(N94), .C1(
        n140), .Y(n54) );
  OAI221X1M U74 ( .A0(enable), .A1(n47), .B0(n179), .B1(n44), .C0(n46), .Y(n55) );
  NAND3BX2M U75 ( .AN(n62), .B(n61), .C(n60), .Y(n126) );
  OAI221X1M U76 ( .A0(enable), .A1(n57), .B0(n44), .B1(n190), .C0(n56), .Y(n62) );
  AOI222X1M U77 ( .A0(n189), .A1(n109), .B0(N113), .B1(n142), .C0(N95), .C1(
        n140), .Y(n61) );
  NAND3BX2M U78 ( .AN(n87), .B(n86), .C(n85), .Y(n130) );
  AOI211X2M U79 ( .A0(n6), .A1(n182), .B0(n84), .C0(n96), .Y(n85) );
  AO22X1M U80 ( .A0(n181), .A1(n109), .B0(N99), .B1(n140), .Y(n87) );
  NAND3BX2M U81 ( .AN(n69), .B(n68), .C(n65), .Y(n127) );
  OAI221X1M U82 ( .A0(enable), .A1(n64), .B0(n44), .B1(n189), .C0(n63), .Y(n69) );
  AOI222X1M U83 ( .A0(n188), .A1(n109), .B0(N114), .B1(n142), .C0(N96), .C1(
        n140), .Y(n68) );
  NAND3BX2M U84 ( .AN(n81), .B(n80), .C(n79), .Y(n129) );
  OAI221X1M U85 ( .A0(enable), .A1(n78), .B0(n44), .B1(n187), .C0(n77), .Y(n81) );
  AOI222X1M U86 ( .A0(n186), .A1(n109), .B0(N116), .B1(n142), .C0(N98), .C1(
        n140), .Y(n80) );
  OAI221X1M U87 ( .A0(n5), .A1(n148), .B0(n14), .B1(n186), .C0(n184), .Y(n92)
         );
  OAI221X1M U88 ( .A0(n30), .A1(n186), .B0(n6), .B1(n14), .C0(n31), .Y(n91) );
  AOI222X1M U89 ( .A0(n39), .A1(n194), .B0(n179), .B1(n109), .C0(n17), .C1(
        n114), .Y(n37) );
  OAI21X2M U90 ( .A0(n179), .A1(n14), .B0(n184), .Y(n39) );
  INVX2M U91 ( .A(n149), .Y(n178) );
  AOI21X2M U92 ( .A0(N109), .A1(n141), .B0(n95), .Y(n111) );
  INVX2M U93 ( .A(n160), .Y(n180) );
  NAND3BX2M U94 ( .AN(n76), .B(n73), .C(n72), .Y(n128) );
  OAI221X1M U95 ( .A0(enable), .A1(n71), .B0(n44), .B1(n188), .C0(n70), .Y(n76) );
  AOI222XLM U96 ( .A0(N106), .A1(n141), .B0(n5), .B1(n11), .C0(N131), .C1(n108), .Y(n72) );
  AOI222X1M U97 ( .A0(n187), .A1(n109), .B0(N115), .B1(n142), .C0(N97), .C1(
        n140), .Y(n73) );
  INVX2M U98 ( .A(n17), .Y(n179) );
  INVX2M U99 ( .A(n5), .Y(n186) );
  INVX2M U100 ( .A(n21), .Y(n188) );
  INVX2M U101 ( .A(n22), .Y(n187) );
  INVX2M U102 ( .A(n19), .Y(n190) );
  INVX2M U103 ( .A(n20), .Y(n189) );
  INVX2M U104 ( .A(n15), .Y(n194) );
  BUFX2M U105 ( .A(a[4]), .Y(n21) );
  BUFX2M U106 ( .A(a[3]), .Y(n20) );
  NAND2X2M U107 ( .A(n120), .B(n111), .Y(n137) );
  AOI22X1M U108 ( .A0(N124), .A1(n142), .B0(alu_out[14]), .B1(n147), .Y(n120)
         );
  NAND2X2M U109 ( .A(n121), .B(n111), .Y(n138) );
  AOI22X1M U110 ( .A0(N125), .A1(n142), .B0(alu_out[15]), .B1(n147), .Y(n121)
         );
  BUFX2M U111 ( .A(a[1]), .Y(n17) );
  BUFX2M U112 ( .A(a[2]), .Y(n19) );
  NAND2X2M U113 ( .A(n117), .B(n111), .Y(n134) );
  AOI22X1M U114 ( .A0(N121), .A1(n142), .B0(alu_out[11]), .B1(n147), .Y(n117)
         );
  NAND2X2M U115 ( .A(n119), .B(n111), .Y(n136) );
  AOI22X1M U116 ( .A0(N123), .A1(n142), .B0(alu_out[13]), .B1(n147), .Y(n119)
         );
  NAND2X2M U117 ( .A(n118), .B(n111), .Y(n135) );
  AOI22X1M U118 ( .A0(N122), .A1(n142), .B0(alu_out[12]), .B1(n147), .Y(n118)
         );
  NAND2X2M U119 ( .A(n116), .B(n111), .Y(n133) );
  AOI22X1M U120 ( .A0(N120), .A1(n142), .B0(alu_out[10]), .B1(n147), .Y(n116)
         );
  NAND2X2M U121 ( .A(n115), .B(n111), .Y(n132) );
  AOI22X1M U122 ( .A0(N119), .A1(n142), .B0(alu_out[9]), .B1(n147), .Y(n115)
         );
  OAI2B11X2M U123 ( .A1N(alu_out[8]), .A0(enable), .B0(n111), .C0(n112), .Y(
        n131) );
  AOI221XLM U124 ( .A0(N118), .A1(n142), .B0(N100), .B1(n140), .C0(n113), .Y(
        n112) );
  NOR3X2M U125 ( .A(n181), .B(n147), .C(n106), .Y(n113) );
  OAI221X1M U126 ( .A0(n19), .A1(n148), .B0(n14), .B1(n190), .C0(n184), .Y(n59) );
  OAI221X1M U127 ( .A0(n30), .A1(n190), .B0(n19), .B1(n14), .C0(n31), .Y(n58)
         );
  AOI222XLM U128 ( .A0(n67), .A1(n176), .B0(n20), .B1(n114), .C0(n66), .C1(
        b[3]), .Y(n56) );
  OAI221X1M U129 ( .A0(n20), .A1(n148), .B0(n14), .B1(n189), .C0(n184), .Y(n67) );
  OAI221X1M U130 ( .A0(n30), .A1(n189), .B0(n20), .B1(n14), .C0(n31), .Y(n66)
         );
  AOI222XLM U131 ( .A0(n75), .A1(n193), .B0(n21), .B1(n114), .C0(n74), .C1(
        b[4]), .Y(n63) );
  INVXLM U132 ( .A(b[4]), .Y(n193) );
  OAI221X1M U133 ( .A0(n21), .A1(n148), .B0(n14), .B1(n188), .C0(n184), .Y(n75) );
  OAI221X1M U134 ( .A0(n30), .A1(n188), .B0(n21), .B1(n14), .C0(n31), .Y(n74)
         );
  AOI222XLM U135 ( .A0(n83), .A1(n192), .B0(n22), .B1(n114), .C0(n82), .C1(
        b[5]), .Y(n70) );
  INVXLM U136 ( .A(b[5]), .Y(n192) );
  MX2X2M U137 ( .A(alu_out[1]), .B(n48), .S0(enable), .Y(n36) );
  OAI31XLM U138 ( .A0(n49), .A1(n15), .A2(n17), .B0(n50), .Y(n48) );
  AOI33XLM U139 ( .A0(n51), .A1(alu_fun[1]), .A2(N159), .B0(n17), .B1(n52), 
        .B2(n15), .Y(n50) );
  NOR3BX2M U140 ( .AN(n97), .B(n94), .C(n93), .Y(n103) );
  MX2X2M U141 ( .A(n90), .B(n89), .S0(a[0]), .Y(n93) );
  AND4X2M U142 ( .A(n18), .B(alu_fun[1]), .C(N158), .D(n145), .Y(n94) );
  OR2X2M U143 ( .A(n109), .B(n88), .Y(n90) );
  NAND2BX2M U144 ( .AN(n114), .B(n13), .Y(n89) );
  MXI2XLM U145 ( .A(n139), .B(n183), .S0(b[0]), .Y(n13) );
  AO22X1M U146 ( .A0(N92), .A1(n140), .B0(N110), .B1(n142), .Y(n99) );
  INVXLM U147 ( .A(b[3]), .Y(n176) );
  OAI22X1M U148 ( .A0(n191), .A1(n44), .B0(n45), .B1(n194), .Y(n41) );
  INVX2M U149 ( .A(a[0]), .Y(n191) );
  AOI21X2M U150 ( .A0(n139), .A1(n179), .B0(n114), .Y(n45) );
  INVX2M U151 ( .A(alu_out[2]), .Y(n47) );
  INVX2M U152 ( .A(alu_out[3]), .Y(n57) );
  INVX2M U153 ( .A(alu_out[4]), .Y(n64) );
  INVX2M U154 ( .A(alu_out[5]), .Y(n71) );
  INVX2M U155 ( .A(alu_out[6]), .Y(n78) );
  AOI211X2M U156 ( .A0(alu_out[0]), .A1(n147), .B0(n99), .C0(n98), .Y(n100) );
  AO22XLM U157 ( .A0(alu_out[7]), .A1(n147), .B0(n25), .B1(n114), .Y(n84) );
  INVXLM U158 ( .A(n9), .Y(n177) );
  INVXLM U159 ( .A(n25), .Y(n181) );
  MX2XLM U160 ( .A(n109), .B(n114), .S0(b[0]), .Y(n98) );
  MX2XLM U161 ( .A(n95), .B(n139), .S0(b[0]), .Y(n88) );
  INVXLM U162 ( .A(b[0]), .Y(n143) );
  AOI222XLM U163 ( .A0(N117), .A1(n142), .B0(N133), .B1(n108), .C0(N108), .C1(
        n141), .Y(n86) );
  AOI222XLM U164 ( .A0(n92), .A1(n177), .B0(n5), .B1(n114), .C0(n91), .C1(n8), 
        .Y(n77) );
  AOI32XLM U165 ( .A0(n155), .A1(n165), .A2(n168), .B0(n9), .B1(n186), .Y(n156) );
  XNOR2XLM U166 ( .A(n6), .B(n9), .Y(n168) );
  AOI222XLM U167 ( .A0(N107), .A1(n141), .B0(n25), .B1(n11), .C0(N132), .C1(
        n108), .Y(n79) );
  AOI221XLM U168 ( .A0(n139), .A1(n181), .B0(n25), .B1(n183), .C0(n114), .Y(
        n104) );
  AOI221XLM U169 ( .A0(n25), .A1(n139), .B0(n95), .B1(n181), .C0(n109), .Y(
        n105) );
  OAI2B2XLM U170 ( .A1N(b[7]), .A0(n104), .B0(b[7]), .B1(n105), .Y(n96) );
  NAND2XLM U171 ( .A(b[7]), .B(n181), .Y(n172) );
  AOI222XLM U172 ( .A0(N105), .A1(n141), .B0(n22), .B1(n11), .C0(N130), .C1(
        n108), .Y(n65) );
  AOI222XLM U173 ( .A0(N104), .A1(n141), .B0(n21), .B1(n11), .C0(N129), .C1(
        n108), .Y(n60) );
  AOI222XLM U174 ( .A0(N103), .A1(n141), .B0(n20), .B1(n11), .C0(N128), .C1(
        n108), .Y(n53) );
  NOR2XLM U175 ( .A(n181), .B(b[7]), .Y(n171) );
  NAND2BX1M U176 ( .AN(b[4]), .B(n21), .Y(n164) );
  NAND2BX1M U177 ( .AN(n21), .B(b[4]), .Y(n153) );
  CLKNAND2X2M U178 ( .A(n164), .B(n153), .Y(n166) );
  NOR2X1M U179 ( .A(n176), .B(n20), .Y(n161) );
  NOR2X1M U180 ( .A(n175), .B(n19), .Y(n152) );
  NOR2X1M U181 ( .A(n143), .B(a[0]), .Y(n149) );
  CLKNAND2X2M U182 ( .A(n19), .B(n175), .Y(n163) );
  NAND2BX1M U183 ( .AN(n152), .B(n163), .Y(n158) );
  AOI21X1M U184 ( .A0(n149), .A1(n179), .B0(n15), .Y(n150) );
  AOI211X1M U185 ( .A0(n17), .A1(n178), .B0(n158), .C0(n150), .Y(n151) );
  CLKNAND2X2M U186 ( .A(n20), .B(n176), .Y(n162) );
  OAI31X1M U187 ( .A0(n161), .A1(n152), .A2(n151), .B0(n162), .Y(n154) );
  NAND2BX1M U188 ( .AN(n22), .B(b[5]), .Y(n169) );
  OAI211X1M U189 ( .A0(n166), .A1(n154), .B0(n153), .C0(n169), .Y(n155) );
  NAND2BX1M U190 ( .AN(b[5]), .B(n22), .Y(n165) );
  OAI21X1M U191 ( .A0(n171), .A1(n156), .B0(n172), .Y(N160) );
  CLKNAND2X2M U192 ( .A(a[0]), .B(n143), .Y(n159) );
  OA21X1M U193 ( .A0(n159), .A1(n179), .B0(n15), .Y(n157) );
  AOI211X1M U194 ( .A0(n159), .A1(n179), .B0(n158), .C0(n157), .Y(n160) );
  AOI31X1M U195 ( .A0(n180), .A1(n163), .A2(n162), .B0(n161), .Y(n167) );
  OAI2B11X1M U196 ( .A1N(n167), .A0(n166), .B0(n165), .C0(n164), .Y(n170) );
  AOI32X1M U197 ( .A0(n170), .A1(n169), .A2(n168), .B0(n6), .B1(n177), .Y(n173) );
  AOI2B1X1M U198 ( .A1N(n173), .A0(n172), .B0(n171), .Y(n174) );
  CLKINVX1M U199 ( .A(n174), .Y(N159) );
  NOR2X1M U200 ( .A(N160), .B(N159), .Y(N158) );
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


module full_gen ( sync_grey_coded_rd_ptr, w_clk, w_rst_n, w_inc, 
        wr_ptr_grey_coded, w_address, full_flag );
  input [4:0] sync_grey_coded_rd_ptr;
  output [4:0] wr_ptr_grey_coded;
  output [3:0] w_address;
  input w_clk, w_rst_n, w_inc;
  output full_flag;
  wire   N11, N12, N13, N14, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12,
         n13, n14, n15, n16, n17, n18, n19, n20, n21, \add_21/carry[4] ,
         \add_21/carry[3] , \add_21/carry[2] , n1;
  wire   [4:0] wr_ptr;

  grey_code_gen_0 wr_ptr_gc ( .binary_data(wr_ptr), .grey_coded_data(
        wr_ptr_grey_coded) );
  DFFRQX2M \w_address_reg[3]  ( .D(n16), .CK(w_clk), .RN(w_rst_n), .Q(
        w_address[3]) );
  DFFRQX2M \w_address_reg[0]  ( .D(n19), .CK(w_clk), .RN(w_rst_n), .Q(
        w_address[0]) );
  DFFRQX2M \w_address_reg[2]  ( .D(n17), .CK(w_clk), .RN(w_rst_n), .Q(
        w_address[2]) );
  DFFRQX2M \w_address_reg[1]  ( .D(n18), .CK(w_clk), .RN(w_rst_n), .Q(
        w_address[1]) );
  DFFRQX2M \wr_ptr_reg[4]  ( .D(n20), .CK(w_clk), .RN(w_rst_n), .Q(wr_ptr[4])
         );
  DFFRQX2M \wr_ptr_reg[0]  ( .D(n21), .CK(w_clk), .RN(w_rst_n), .Q(wr_ptr[0])
         );
  DFFRQX2M \wr_ptr_reg[3]  ( .D(n13), .CK(w_clk), .RN(w_rst_n), .Q(wr_ptr[3])
         );
  DFFRQX2M \wr_ptr_reg[2]  ( .D(n14), .CK(w_clk), .RN(w_rst_n), .Q(wr_ptr[2])
         );
  DFFRQX2M \wr_ptr_reg[1]  ( .D(n15), .CK(w_clk), .RN(w_rst_n), .Q(wr_ptr[1])
         );
  INVX2M U3 ( .A(n2), .Y(n1) );
  NAND2X2M U4 ( .A(w_inc), .B(n6), .Y(n2) );
  INVX2M U5 ( .A(n6), .Y(full_flag) );
  XNOR2X2M U6 ( .A(w_address[2]), .B(n4), .Y(n17) );
  NAND4X2M U7 ( .A(n7), .B(n8), .C(n9), .D(n10), .Y(n6) );
  XNOR2X2M U8 ( .A(wr_ptr_grey_coded[0]), .B(sync_grey_coded_rd_ptr[0]), .Y(n7) );
  XNOR2X2M U9 ( .A(wr_ptr_grey_coded[1]), .B(sync_grey_coded_rd_ptr[1]), .Y(n8) );
  XNOR2X2M U10 ( .A(wr_ptr_grey_coded[2]), .B(sync_grey_coded_rd_ptr[2]), .Y(
        n10) );
  NAND2X2M U11 ( .A(w_address[1]), .B(n5), .Y(n4) );
  NOR2X2M U12 ( .A(n11), .B(n12), .Y(n9) );
  XNOR2X2M U13 ( .A(wr_ptr_grey_coded[4]), .B(sync_grey_coded_rd_ptr[4]), .Y(
        n11) );
  XNOR2X2M U14 ( .A(wr_ptr_grey_coded[3]), .B(sync_grey_coded_rd_ptr[3]), .Y(
        n12) );
  CLKXOR2X2M U15 ( .A(w_address[3]), .B(n3), .Y(n16) );
  NOR2BX2M U16 ( .AN(w_address[2]), .B(n4), .Y(n3) );
  AND2X2M U17 ( .A(w_address[0]), .B(n1), .Y(n5) );
  AO22X1M U18 ( .A0(N11), .A1(n1), .B0(wr_ptr[1]), .B1(n2), .Y(n15) );
  AO22X1M U19 ( .A0(N12), .A1(n1), .B0(wr_ptr[2]), .B1(n2), .Y(n14) );
  AO22X1M U20 ( .A0(N13), .A1(n1), .B0(wr_ptr[3]), .B1(n2), .Y(n13) );
  AO22X1M U21 ( .A0(N14), .A1(n1), .B0(wr_ptr[4]), .B1(n2), .Y(n20) );
  AO2B2X2M U22 ( .B0(wr_ptr[0]), .B1(n2), .A0(n1), .A1N(wr_ptr[0]), .Y(n21) );
  CLKXOR2X2M U23 ( .A(w_address[1]), .B(n5), .Y(n18) );
  CLKXOR2X2M U24 ( .A(w_address[0]), .B(n1), .Y(n19) );
  ADDHX1M U25 ( .A(wr_ptr[1]), .B(wr_ptr[0]), .CO(\add_21/carry[2] ), .S(N11)
         );
  ADDHX1M U26 ( .A(wr_ptr[2]), .B(\add_21/carry[2] ), .CO(\add_21/carry[3] ), 
        .S(N12) );
  ADDHX1M U27 ( .A(wr_ptr[3]), .B(\add_21/carry[3] ), .CO(\add_21/carry[4] ), 
        .S(N13) );
  CLKXOR2X2M U28 ( .A(\add_21/carry[4] ), .B(wr_ptr[4]), .Y(N14) );
endmodule


module fifo_memory ( w_clk, w_rst_n, rd_clk, rd_rst_n, w_address, rd_address, 
        w_inc, rd_inc, full_flag, empty_flag, w_data, rd_data );
  input [3:0] w_address;
  input [3:0] rd_address;
  input [7:0] w_data;
  output [7:0] rd_data;
  input w_clk, w_rst_n, rd_clk, rd_rst_n, w_inc, rd_inc, full_flag, empty_flag;
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
         \fifo[15][1] , \fifo[15][0] , n12, n13, n14, n15, n16, n17, n18, n19,
         n20, n21, n22, n23, n24, n25, n26, n27, n28, n29, n30, n31, n32, n33,
         n34, n35, n36, n37, n38, n39, n40, n41, n42, n43, n44, n45, n46, n47,
         n48, n49, n50, n51, n52, n53, n54, n55, n56, n57, n58, n59, n60, n61,
         n62, n63, n64, n65, n66, n67, n68, n69, n70, n71, n72, n73, n74, n75,
         n76, n77, n78, n79, n80, n81, n82, n83, n84, n85, n86, n87, n88, n89,
         n90, n91, n92, n93, n94, n95, n96, n97, n98, n99, n100, n101, n102,
         n103, n104, n105, n106, n107, n108, n109, n110, n111, n112, n113,
         n114, n115, n116, n117, n118, n119, n120, n121, n122, n123, n124,
         n125, n126, n127, n128, n129, n130, n131, n132, n133, n134, n135,
         n136, n137, n138, n139, n140, n141, n142, n143, n144, n145, n146,
         n147, n148, n149, n150, n151, n152, n153, n154, n155, n156, n157,
         n158, n159, n160, n161, n162, n163, n164, n165, n166, n1, n2, n3, n4,
         n5, n6, n7, n8, n9, n10, n11, n167, n168, n169, n170, n171, n172,
         n173, n174, n175, n176, n177, n178, n179, n180, n181, n182, n183,
         n184, n185, n186, n187, n188, n189, n190, n191, n192, n193, n194,
         n195, n196, n197, n198, n199, n200, n201, n202, n203, n204, n205,
         n206, n207, n208, n209, n210, n211, n212, n213, n214, n215, n216,
         n217, n218, n219;
  assign N9 = rd_address[0];
  assign N10 = rd_address[1];
  assign N11 = rd_address[2];
  assign N12 = rd_address[3];

  DFFRQX2M \fifo_reg[1][7]  ( .D(n158), .CK(w_clk), .RN(n194), .Q(\fifo[1][7] ) );
  DFFRQX2M \fifo_reg[1][6]  ( .D(n157), .CK(w_clk), .RN(n194), .Q(\fifo[1][6] ) );
  DFFRQX2M \fifo_reg[1][5]  ( .D(n156), .CK(w_clk), .RN(n194), .Q(\fifo[1][5] ) );
  DFFRQX2M \fifo_reg[1][4]  ( .D(n155), .CK(w_clk), .RN(n194), .Q(\fifo[1][4] ) );
  DFFRQX2M \fifo_reg[1][3]  ( .D(n154), .CK(w_clk), .RN(n194), .Q(\fifo[1][3] ) );
  DFFRQX2M \fifo_reg[1][2]  ( .D(n153), .CK(w_clk), .RN(n195), .Q(\fifo[1][2] ) );
  DFFRQX2M \fifo_reg[1][1]  ( .D(n152), .CK(w_clk), .RN(n195), .Q(\fifo[1][1] ) );
  DFFRQX2M \fifo_reg[1][0]  ( .D(n151), .CK(w_clk), .RN(n195), .Q(\fifo[1][0] ) );
  DFFRQX2M \fifo_reg[5][7]  ( .D(n126), .CK(w_clk), .RN(n197), .Q(\fifo[5][7] ) );
  DFFRQX2M \fifo_reg[5][6]  ( .D(n125), .CK(w_clk), .RN(n197), .Q(\fifo[5][6] ) );
  DFFRQX2M \fifo_reg[5][5]  ( .D(n124), .CK(w_clk), .RN(n197), .Q(\fifo[5][5] ) );
  DFFRQX2M \fifo_reg[5][4]  ( .D(n123), .CK(w_clk), .RN(n197), .Q(\fifo[5][4] ) );
  DFFRQX2M \fifo_reg[5][3]  ( .D(n122), .CK(w_clk), .RN(n197), .Q(\fifo[5][3] ) );
  DFFRQX2M \fifo_reg[5][2]  ( .D(n121), .CK(w_clk), .RN(n197), .Q(\fifo[5][2] ) );
  DFFRQX2M \fifo_reg[5][1]  ( .D(n120), .CK(w_clk), .RN(n197), .Q(\fifo[5][1] ) );
  DFFRQX2M \fifo_reg[5][0]  ( .D(n119), .CK(w_clk), .RN(n197), .Q(\fifo[5][0] ) );
  DFFRQX2M \fifo_reg[9][7]  ( .D(n94), .CK(w_clk), .RN(n199), .Q(\fifo[9][7] )
         );
  DFFRQX2M \fifo_reg[9][6]  ( .D(n93), .CK(w_clk), .RN(n199), .Q(\fifo[9][6] )
         );
  DFFRQX2M \fifo_reg[9][5]  ( .D(n92), .CK(w_clk), .RN(n199), .Q(\fifo[9][5] )
         );
  DFFRQX2M \fifo_reg[9][4]  ( .D(n91), .CK(w_clk), .RN(n199), .Q(\fifo[9][4] )
         );
  DFFRQX2M \fifo_reg[9][3]  ( .D(n90), .CK(w_clk), .RN(n199), .Q(\fifo[9][3] )
         );
  DFFRQX2M \fifo_reg[9][2]  ( .D(n89), .CK(w_clk), .RN(n199), .Q(\fifo[9][2] )
         );
  DFFRQX2M \fifo_reg[9][1]  ( .D(n88), .CK(w_clk), .RN(n200), .Q(\fifo[9][1] )
         );
  DFFRQX2M \fifo_reg[9][0]  ( .D(n87), .CK(w_clk), .RN(n200), .Q(\fifo[9][0] )
         );
  DFFRQX2M \fifo_reg[13][7]  ( .D(n62), .CK(w_clk), .RN(n202), .Q(
        \fifo[13][7] ) );
  DFFRQX2M \fifo_reg[13][6]  ( .D(n61), .CK(w_clk), .RN(n202), .Q(
        \fifo[13][6] ) );
  DFFRQX2M \fifo_reg[13][5]  ( .D(n60), .CK(w_clk), .RN(n202), .Q(
        \fifo[13][5] ) );
  DFFRQX2M \fifo_reg[13][4]  ( .D(n59), .CK(w_clk), .RN(n202), .Q(
        \fifo[13][4] ) );
  DFFRQX2M \fifo_reg[13][3]  ( .D(n58), .CK(w_clk), .RN(n202), .Q(
        \fifo[13][3] ) );
  DFFRQX2M \fifo_reg[13][2]  ( .D(n57), .CK(w_clk), .RN(n202), .Q(
        \fifo[13][2] ) );
  DFFRQX2M \fifo_reg[13][1]  ( .D(n56), .CK(w_clk), .RN(n202), .Q(
        \fifo[13][1] ) );
  DFFRQX2M \fifo_reg[13][0]  ( .D(n55), .CK(w_clk), .RN(n202), .Q(
        \fifo[13][0] ) );
  DFFRQX2M \fifo_reg[3][7]  ( .D(n142), .CK(w_clk), .RN(n195), .Q(\fifo[3][7] ) );
  DFFRQX2M \fifo_reg[3][6]  ( .D(n141), .CK(w_clk), .RN(n195), .Q(\fifo[3][6] ) );
  DFFRQX2M \fifo_reg[3][5]  ( .D(n140), .CK(w_clk), .RN(n196), .Q(\fifo[3][5] ) );
  DFFRQX2M \fifo_reg[3][4]  ( .D(n139), .CK(w_clk), .RN(n196), .Q(\fifo[3][4] ) );
  DFFRQX2M \fifo_reg[3][3]  ( .D(n138), .CK(w_clk), .RN(n196), .Q(\fifo[3][3] ) );
  DFFRQX2M \fifo_reg[3][2]  ( .D(n137), .CK(w_clk), .RN(n196), .Q(\fifo[3][2] ) );
  DFFRQX2M \fifo_reg[3][1]  ( .D(n136), .CK(w_clk), .RN(n196), .Q(\fifo[3][1] ) );
  DFFRQX2M \fifo_reg[3][0]  ( .D(n135), .CK(w_clk), .RN(n196), .Q(\fifo[3][0] ) );
  DFFRQX2M \fifo_reg[7][7]  ( .D(n110), .CK(w_clk), .RN(n198), .Q(\fifo[7][7] ) );
  DFFRQX2M \fifo_reg[7][6]  ( .D(n109), .CK(w_clk), .RN(n198), .Q(\fifo[7][6] ) );
  DFFRQX2M \fifo_reg[7][5]  ( .D(n108), .CK(w_clk), .RN(n198), .Q(\fifo[7][5] ) );
  DFFRQX2M \fifo_reg[7][4]  ( .D(n107), .CK(w_clk), .RN(n198), .Q(\fifo[7][4] ) );
  DFFRQX2M \fifo_reg[7][3]  ( .D(n106), .CK(w_clk), .RN(n198), .Q(\fifo[7][3] ) );
  DFFRQX2M \fifo_reg[7][2]  ( .D(n105), .CK(w_clk), .RN(n198), .Q(\fifo[7][2] ) );
  DFFRQX2M \fifo_reg[7][1]  ( .D(n104), .CK(w_clk), .RN(n198), .Q(\fifo[7][1] ) );
  DFFRQX2M \fifo_reg[7][0]  ( .D(n103), .CK(w_clk), .RN(n198), .Q(\fifo[7][0] ) );
  DFFRQX2M \fifo_reg[11][7]  ( .D(n78), .CK(w_clk), .RN(n200), .Q(
        \fifo[11][7] ) );
  DFFRQX2M \fifo_reg[11][6]  ( .D(n77), .CK(w_clk), .RN(n200), .Q(
        \fifo[11][6] ) );
  DFFRQX2M \fifo_reg[11][5]  ( .D(n76), .CK(w_clk), .RN(n200), .Q(
        \fifo[11][5] ) );
  DFFRQX2M \fifo_reg[11][4]  ( .D(n75), .CK(w_clk), .RN(n201), .Q(
        \fifo[11][4] ) );
  DFFRQX2M \fifo_reg[11][3]  ( .D(n74), .CK(w_clk), .RN(n201), .Q(
        \fifo[11][3] ) );
  DFFRQX2M \fifo_reg[11][2]  ( .D(n73), .CK(w_clk), .RN(n201), .Q(
        \fifo[11][2] ) );
  DFFRQX2M \fifo_reg[11][1]  ( .D(n72), .CK(w_clk), .RN(n201), .Q(
        \fifo[11][1] ) );
  DFFRQX2M \fifo_reg[11][0]  ( .D(n71), .CK(w_clk), .RN(n201), .Q(
        \fifo[11][0] ) );
  DFFRQX2M \fifo_reg[15][7]  ( .D(n46), .CK(w_clk), .RN(n203), .Q(
        \fifo[15][7] ) );
  DFFRQX2M \fifo_reg[15][6]  ( .D(n45), .CK(w_clk), .RN(n203), .Q(
        \fifo[15][6] ) );
  DFFRQX2M \fifo_reg[15][5]  ( .D(n44), .CK(w_clk), .RN(n203), .Q(
        \fifo[15][5] ) );
  DFFRQX2M \fifo_reg[15][4]  ( .D(n43), .CK(w_clk), .RN(n203), .Q(
        \fifo[15][4] ) );
  DFFRQX2M \fifo_reg[15][3]  ( .D(n42), .CK(w_clk), .RN(n203), .Q(
        \fifo[15][3] ) );
  DFFRQX2M \fifo_reg[15][2]  ( .D(n41), .CK(w_clk), .RN(n203), .Q(
        \fifo[15][2] ) );
  DFFRQX2M \fifo_reg[15][1]  ( .D(n40), .CK(w_clk), .RN(n203), .Q(
        \fifo[15][1] ) );
  DFFRQX2M \fifo_reg[15][0]  ( .D(n39), .CK(w_clk), .RN(n203), .Q(
        \fifo[15][0] ) );
  DFFRQX2M \fifo_reg[2][7]  ( .D(n150), .CK(w_clk), .RN(n195), .Q(\fifo[2][7] ) );
  DFFRQX2M \fifo_reg[2][6]  ( .D(n149), .CK(w_clk), .RN(n195), .Q(\fifo[2][6] ) );
  DFFRQX2M \fifo_reg[2][5]  ( .D(n148), .CK(w_clk), .RN(n195), .Q(\fifo[2][5] ) );
  DFFRQX2M \fifo_reg[2][4]  ( .D(n147), .CK(w_clk), .RN(n195), .Q(\fifo[2][4] ) );
  DFFRQX2M \fifo_reg[2][3]  ( .D(n146), .CK(w_clk), .RN(n195), .Q(\fifo[2][3] ) );
  DFFRQX2M \fifo_reg[2][2]  ( .D(n145), .CK(w_clk), .RN(n195), .Q(\fifo[2][2] ) );
  DFFRQX2M \fifo_reg[2][1]  ( .D(n144), .CK(w_clk), .RN(n195), .Q(\fifo[2][1] ) );
  DFFRQX2M \fifo_reg[2][0]  ( .D(n143), .CK(w_clk), .RN(n195), .Q(\fifo[2][0] ) );
  DFFRQX2M \fifo_reg[6][7]  ( .D(n118), .CK(w_clk), .RN(n197), .Q(\fifo[6][7] ) );
  DFFRQX2M \fifo_reg[6][6]  ( .D(n117), .CK(w_clk), .RN(n197), .Q(\fifo[6][6] ) );
  DFFRQX2M \fifo_reg[6][5]  ( .D(n116), .CK(w_clk), .RN(n197), .Q(\fifo[6][5] ) );
  DFFRQX2M \fifo_reg[6][4]  ( .D(n115), .CK(w_clk), .RN(n197), .Q(\fifo[6][4] ) );
  DFFRQX2M \fifo_reg[6][3]  ( .D(n114), .CK(w_clk), .RN(n198), .Q(\fifo[6][3] ) );
  DFFRQX2M \fifo_reg[6][2]  ( .D(n113), .CK(w_clk), .RN(n198), .Q(\fifo[6][2] ) );
  DFFRQX2M \fifo_reg[6][1]  ( .D(n112), .CK(w_clk), .RN(n198), .Q(\fifo[6][1] ) );
  DFFRQX2M \fifo_reg[6][0]  ( .D(n111), .CK(w_clk), .RN(n198), .Q(\fifo[6][0] ) );
  DFFRQX2M \fifo_reg[10][7]  ( .D(n86), .CK(w_clk), .RN(n200), .Q(
        \fifo[10][7] ) );
  DFFRQX2M \fifo_reg[10][6]  ( .D(n85), .CK(w_clk), .RN(n200), .Q(
        \fifo[10][6] ) );
  DFFRQX2M \fifo_reg[10][5]  ( .D(n84), .CK(w_clk), .RN(n200), .Q(
        \fifo[10][5] ) );
  DFFRQX2M \fifo_reg[10][4]  ( .D(n83), .CK(w_clk), .RN(n200), .Q(
        \fifo[10][4] ) );
  DFFRQX2M \fifo_reg[10][3]  ( .D(n82), .CK(w_clk), .RN(n200), .Q(
        \fifo[10][3] ) );
  DFFRQX2M \fifo_reg[10][2]  ( .D(n81), .CK(w_clk), .RN(n200), .Q(
        \fifo[10][2] ) );
  DFFRQX2M \fifo_reg[10][1]  ( .D(n80), .CK(w_clk), .RN(n200), .Q(
        \fifo[10][1] ) );
  DFFRQX2M \fifo_reg[10][0]  ( .D(n79), .CK(w_clk), .RN(n200), .Q(
        \fifo[10][0] ) );
  DFFRQX2M \fifo_reg[14][7]  ( .D(n54), .CK(w_clk), .RN(n202), .Q(
        \fifo[14][7] ) );
  DFFRQX2M \fifo_reg[14][6]  ( .D(n53), .CK(w_clk), .RN(n202), .Q(
        \fifo[14][6] ) );
  DFFRQX2M \fifo_reg[14][5]  ( .D(n52), .CK(w_clk), .RN(n202), .Q(
        \fifo[14][5] ) );
  DFFRQX2M \fifo_reg[14][4]  ( .D(n51), .CK(w_clk), .RN(n202), .Q(
        \fifo[14][4] ) );
  DFFRQX2M \fifo_reg[14][3]  ( .D(n50), .CK(w_clk), .RN(n202), .Q(
        \fifo[14][3] ) );
  DFFRQX2M \fifo_reg[14][2]  ( .D(n49), .CK(w_clk), .RN(n203), .Q(
        \fifo[14][2] ) );
  DFFRQX2M \fifo_reg[14][1]  ( .D(n48), .CK(w_clk), .RN(n203), .Q(
        \fifo[14][1] ) );
  DFFRQX2M \fifo_reg[14][0]  ( .D(n47), .CK(w_clk), .RN(n203), .Q(
        \fifo[14][0] ) );
  DFFRQX2M \fifo_reg[0][7]  ( .D(n166), .CK(w_clk), .RN(n194), .Q(\fifo[0][7] ) );
  DFFRQX2M \fifo_reg[0][6]  ( .D(n165), .CK(w_clk), .RN(n194), .Q(\fifo[0][6] ) );
  DFFRQX2M \fifo_reg[0][5]  ( .D(n164), .CK(w_clk), .RN(n194), .Q(\fifo[0][5] ) );
  DFFRQX2M \fifo_reg[0][4]  ( .D(n163), .CK(w_clk), .RN(n194), .Q(\fifo[0][4] ) );
  DFFRQX2M \fifo_reg[0][3]  ( .D(n162), .CK(w_clk), .RN(n194), .Q(\fifo[0][3] ) );
  DFFRQX2M \fifo_reg[0][2]  ( .D(n161), .CK(w_clk), .RN(n194), .Q(\fifo[0][2] ) );
  DFFRQX2M \fifo_reg[0][1]  ( .D(n160), .CK(w_clk), .RN(n194), .Q(\fifo[0][1] ) );
  DFFRQX2M \fifo_reg[0][0]  ( .D(n159), .CK(w_clk), .RN(n194), .Q(\fifo[0][0] ) );
  DFFRQX2M \fifo_reg[4][7]  ( .D(n134), .CK(w_clk), .RN(n196), .Q(\fifo[4][7] ) );
  DFFRQX2M \fifo_reg[4][6]  ( .D(n133), .CK(w_clk), .RN(n196), .Q(\fifo[4][6] ) );
  DFFRQX2M \fifo_reg[4][5]  ( .D(n132), .CK(w_clk), .RN(n196), .Q(\fifo[4][5] ) );
  DFFRQX2M \fifo_reg[4][4]  ( .D(n131), .CK(w_clk), .RN(n196), .Q(\fifo[4][4] ) );
  DFFRQX2M \fifo_reg[4][3]  ( .D(n130), .CK(w_clk), .RN(n196), .Q(\fifo[4][3] ) );
  DFFRQX2M \fifo_reg[4][2]  ( .D(n129), .CK(w_clk), .RN(n196), .Q(\fifo[4][2] ) );
  DFFRQX2M \fifo_reg[4][1]  ( .D(n128), .CK(w_clk), .RN(n196), .Q(\fifo[4][1] ) );
  DFFRQX2M \fifo_reg[4][0]  ( .D(n127), .CK(w_clk), .RN(n197), .Q(\fifo[4][0] ) );
  DFFRQX2M \fifo_reg[8][7]  ( .D(n102), .CK(w_clk), .RN(n198), .Q(\fifo[8][7] ) );
  DFFRQX2M \fifo_reg[8][6]  ( .D(n101), .CK(w_clk), .RN(n199), .Q(\fifo[8][6] ) );
  DFFRQX2M \fifo_reg[8][5]  ( .D(n100), .CK(w_clk), .RN(n199), .Q(\fifo[8][5] ) );
  DFFRQX2M \fifo_reg[8][4]  ( .D(n99), .CK(w_clk), .RN(n199), .Q(\fifo[8][4] )
         );
  DFFRQX2M \fifo_reg[8][3]  ( .D(n98), .CK(w_clk), .RN(n199), .Q(\fifo[8][3] )
         );
  DFFRQX2M \fifo_reg[8][2]  ( .D(n97), .CK(w_clk), .RN(n199), .Q(\fifo[8][2] )
         );
  DFFRQX2M \fifo_reg[8][1]  ( .D(n96), .CK(w_clk), .RN(n199), .Q(\fifo[8][1] )
         );
  DFFRQX2M \fifo_reg[8][0]  ( .D(n95), .CK(w_clk), .RN(n199), .Q(\fifo[8][0] )
         );
  DFFRQX2M \fifo_reg[12][7]  ( .D(n70), .CK(w_clk), .RN(n201), .Q(
        \fifo[12][7] ) );
  DFFRQX2M \fifo_reg[12][6]  ( .D(n69), .CK(w_clk), .RN(n201), .Q(
        \fifo[12][6] ) );
  DFFRQX2M \fifo_reg[12][5]  ( .D(n68), .CK(w_clk), .RN(n201), .Q(
        \fifo[12][5] ) );
  DFFRQX2M \fifo_reg[12][4]  ( .D(n67), .CK(w_clk), .RN(n201), .Q(
        \fifo[12][4] ) );
  DFFRQX2M \fifo_reg[12][3]  ( .D(n66), .CK(w_clk), .RN(n201), .Q(
        \fifo[12][3] ) );
  DFFRQX2M \fifo_reg[12][2]  ( .D(n65), .CK(w_clk), .RN(n201), .Q(
        \fifo[12][2] ) );
  DFFRQX2M \fifo_reg[12][1]  ( .D(n64), .CK(w_clk), .RN(n201), .Q(
        \fifo[12][1] ) );
  DFFRQX2M \fifo_reg[12][0]  ( .D(n63), .CK(w_clk), .RN(n201), .Q(
        \fifo[12][0] ) );
  NOR2X2M U2 ( .A(n211), .B(n210), .Y(n13) );
  NOR2X2M U3 ( .A(w_address[1]), .B(w_address[2]), .Y(n24) );
  NOR2X2M U4 ( .A(n211), .B(w_address[1]), .Y(n18) );
  NOR2X2M U5 ( .A(n210), .B(w_address[2]), .Y(n21) );
  BUFX2M U6 ( .A(n204), .Y(n202) );
  BUFX2M U7 ( .A(n205), .Y(n201) );
  BUFX2M U8 ( .A(n205), .Y(n200) );
  BUFX2M U9 ( .A(n206), .Y(n199) );
  BUFX2M U10 ( .A(n206), .Y(n198) );
  BUFX2M U11 ( .A(n207), .Y(n197) );
  BUFX2M U12 ( .A(n207), .Y(n196) );
  BUFX2M U13 ( .A(n208), .Y(n195) );
  BUFX2M U14 ( .A(n208), .Y(n194) );
  BUFX2M U15 ( .A(n204), .Y(n203) );
  NAND2X2M U16 ( .A(n16), .B(n13), .Y(n15) );
  NAND2X2M U17 ( .A(n31), .B(n13), .Y(n30) );
  INVX2M U18 ( .A(n191), .Y(n193) );
  INVX2M U19 ( .A(n191), .Y(n192) );
  BUFX2M U20 ( .A(w_rst_n), .Y(n204) );
  BUFX2M U21 ( .A(w_rst_n), .Y(n205) );
  BUFX2M U22 ( .A(w_rst_n), .Y(n206) );
  BUFX2M U23 ( .A(w_rst_n), .Y(n207) );
  BUFX2M U24 ( .A(w_rst_n), .Y(n208) );
  NAND2X2M U25 ( .A(n18), .B(n14), .Y(n17) );
  NAND2X2M U26 ( .A(n18), .B(n16), .Y(n19) );
  NAND2X2M U27 ( .A(n21), .B(n14), .Y(n20) );
  NAND2X2M U28 ( .A(n21), .B(n16), .Y(n22) );
  NAND2X2M U29 ( .A(n24), .B(n14), .Y(n23) );
  NAND2X2M U30 ( .A(n24), .B(n16), .Y(n26) );
  NAND2X2M U31 ( .A(n29), .B(n18), .Y(n32) );
  NAND2X2M U32 ( .A(n31), .B(n18), .Y(n33) );
  NAND2X2M U33 ( .A(n29), .B(n21), .Y(n34) );
  NAND2X2M U34 ( .A(n31), .B(n21), .Y(n35) );
  NAND2X2M U35 ( .A(n29), .B(n24), .Y(n36) );
  NAND2X2M U36 ( .A(n31), .B(n24), .Y(n38) );
  NAND2X2M U37 ( .A(n29), .B(n13), .Y(n28) );
  NAND2X2M U38 ( .A(n13), .B(n14), .Y(n12) );
  AND2X2M U39 ( .A(n25), .B(n209), .Y(n16) );
  NOR2BX2M U40 ( .AN(w_inc), .B(full_flag), .Y(n27) );
  AND2X2M U41 ( .A(n37), .B(n209), .Y(n31) );
  BUFX2M U42 ( .A(n190), .Y(n191) );
  INVX2M U43 ( .A(n188), .Y(n189) );
  INVX2M U44 ( .A(w_data[0]), .Y(n212) );
  INVX2M U45 ( .A(w_data[1]), .Y(n213) );
  INVX2M U46 ( .A(w_data[7]), .Y(n219) );
  INVX2M U47 ( .A(w_data[2]), .Y(n214) );
  INVX2M U48 ( .A(w_data[3]), .Y(n215) );
  INVX2M U49 ( .A(w_data[4]), .Y(n216) );
  INVX2M U50 ( .A(w_data[5]), .Y(n217) );
  INVX2M U51 ( .A(w_data[6]), .Y(n218) );
  OAI2BB2X1M U52 ( .B0(n12), .B1(n212), .A0N(\fifo[15][0] ), .A1N(n12), .Y(n39) );
  OAI2BB2X1M U53 ( .B0(n12), .B1(n213), .A0N(\fifo[15][1] ), .A1N(n12), .Y(n40) );
  OAI2BB2X1M U54 ( .B0(n12), .B1(n214), .A0N(\fifo[15][2] ), .A1N(n12), .Y(n41) );
  OAI2BB2X1M U55 ( .B0(n12), .B1(n215), .A0N(\fifo[15][3] ), .A1N(n12), .Y(n42) );
  OAI2BB2X1M U56 ( .B0(n12), .B1(n216), .A0N(\fifo[15][4] ), .A1N(n12), .Y(n43) );
  OAI2BB2X1M U57 ( .B0(n12), .B1(n217), .A0N(\fifo[15][5] ), .A1N(n12), .Y(n44) );
  OAI2BB2X1M U58 ( .B0(n12), .B1(n218), .A0N(\fifo[15][6] ), .A1N(n12), .Y(n45) );
  OAI2BB2X1M U59 ( .B0(n12), .B1(n219), .A0N(\fifo[15][7] ), .A1N(n12), .Y(n46) );
  OAI2BB2X1M U60 ( .B0(n212), .B1(n17), .A0N(\fifo[13][0] ), .A1N(n17), .Y(n55) );
  OAI2BB2X1M U61 ( .B0(n213), .B1(n17), .A0N(\fifo[13][1] ), .A1N(n17), .Y(n56) );
  OAI2BB2X1M U62 ( .B0(n214), .B1(n17), .A0N(\fifo[13][2] ), .A1N(n17), .Y(n57) );
  OAI2BB2X1M U63 ( .B0(n215), .B1(n17), .A0N(\fifo[13][3] ), .A1N(n17), .Y(n58) );
  OAI2BB2X1M U64 ( .B0(n216), .B1(n17), .A0N(\fifo[13][4] ), .A1N(n17), .Y(n59) );
  OAI2BB2X1M U65 ( .B0(n217), .B1(n17), .A0N(\fifo[13][5] ), .A1N(n17), .Y(n60) );
  OAI2BB2X1M U66 ( .B0(n218), .B1(n17), .A0N(\fifo[13][6] ), .A1N(n17), .Y(n61) );
  OAI2BB2X1M U67 ( .B0(n219), .B1(n17), .A0N(\fifo[13][7] ), .A1N(n17), .Y(n62) );
  OAI2BB2X1M U68 ( .B0(n212), .B1(n19), .A0N(\fifo[12][0] ), .A1N(n19), .Y(n63) );
  OAI2BB2X1M U69 ( .B0(n213), .B1(n19), .A0N(\fifo[12][1] ), .A1N(n19), .Y(n64) );
  OAI2BB2X1M U70 ( .B0(n214), .B1(n19), .A0N(\fifo[12][2] ), .A1N(n19), .Y(n65) );
  OAI2BB2X1M U71 ( .B0(n215), .B1(n19), .A0N(\fifo[12][3] ), .A1N(n19), .Y(n66) );
  OAI2BB2X1M U72 ( .B0(n216), .B1(n19), .A0N(\fifo[12][4] ), .A1N(n19), .Y(n67) );
  OAI2BB2X1M U73 ( .B0(n217), .B1(n19), .A0N(\fifo[12][5] ), .A1N(n19), .Y(n68) );
  OAI2BB2X1M U74 ( .B0(n218), .B1(n19), .A0N(\fifo[12][6] ), .A1N(n19), .Y(n69) );
  OAI2BB2X1M U75 ( .B0(n219), .B1(n19), .A0N(\fifo[12][7] ), .A1N(n19), .Y(n70) );
  OAI2BB2X1M U76 ( .B0(n212), .B1(n20), .A0N(\fifo[11][0] ), .A1N(n20), .Y(n71) );
  OAI2BB2X1M U77 ( .B0(n213), .B1(n20), .A0N(\fifo[11][1] ), .A1N(n20), .Y(n72) );
  OAI2BB2X1M U78 ( .B0(n214), .B1(n20), .A0N(\fifo[11][2] ), .A1N(n20), .Y(n73) );
  OAI2BB2X1M U79 ( .B0(n215), .B1(n20), .A0N(\fifo[11][3] ), .A1N(n20), .Y(n74) );
  OAI2BB2X1M U80 ( .B0(n216), .B1(n20), .A0N(\fifo[11][4] ), .A1N(n20), .Y(n75) );
  OAI2BB2X1M U81 ( .B0(n217), .B1(n20), .A0N(\fifo[11][5] ), .A1N(n20), .Y(n76) );
  OAI2BB2X1M U82 ( .B0(n218), .B1(n20), .A0N(\fifo[11][6] ), .A1N(n20), .Y(n77) );
  OAI2BB2X1M U83 ( .B0(n219), .B1(n20), .A0N(\fifo[11][7] ), .A1N(n20), .Y(n78) );
  OAI2BB2X1M U84 ( .B0(n212), .B1(n22), .A0N(\fifo[10][0] ), .A1N(n22), .Y(n79) );
  OAI2BB2X1M U85 ( .B0(n213), .B1(n22), .A0N(\fifo[10][1] ), .A1N(n22), .Y(n80) );
  OAI2BB2X1M U86 ( .B0(n214), .B1(n22), .A0N(\fifo[10][2] ), .A1N(n22), .Y(n81) );
  OAI2BB2X1M U87 ( .B0(n215), .B1(n22), .A0N(\fifo[10][3] ), .A1N(n22), .Y(n82) );
  OAI2BB2X1M U88 ( .B0(n216), .B1(n22), .A0N(\fifo[10][4] ), .A1N(n22), .Y(n83) );
  OAI2BB2X1M U89 ( .B0(n217), .B1(n22), .A0N(\fifo[10][5] ), .A1N(n22), .Y(n84) );
  OAI2BB2X1M U90 ( .B0(n218), .B1(n22), .A0N(\fifo[10][6] ), .A1N(n22), .Y(n85) );
  OAI2BB2X1M U91 ( .B0(n219), .B1(n22), .A0N(\fifo[10][7] ), .A1N(n22), .Y(n86) );
  OAI2BB2X1M U92 ( .B0(n212), .B1(n23), .A0N(\fifo[9][0] ), .A1N(n23), .Y(n87)
         );
  OAI2BB2X1M U93 ( .B0(n213), .B1(n23), .A0N(\fifo[9][1] ), .A1N(n23), .Y(n88)
         );
  OAI2BB2X1M U94 ( .B0(n214), .B1(n23), .A0N(\fifo[9][2] ), .A1N(n23), .Y(n89)
         );
  OAI2BB2X1M U95 ( .B0(n215), .B1(n23), .A0N(\fifo[9][3] ), .A1N(n23), .Y(n90)
         );
  OAI2BB2X1M U96 ( .B0(n216), .B1(n23), .A0N(\fifo[9][4] ), .A1N(n23), .Y(n91)
         );
  OAI2BB2X1M U97 ( .B0(n217), .B1(n23), .A0N(\fifo[9][5] ), .A1N(n23), .Y(n92)
         );
  OAI2BB2X1M U98 ( .B0(n218), .B1(n23), .A0N(\fifo[9][6] ), .A1N(n23), .Y(n93)
         );
  OAI2BB2X1M U99 ( .B0(n219), .B1(n23), .A0N(\fifo[9][7] ), .A1N(n23), .Y(n94)
         );
  OAI2BB2X1M U100 ( .B0(n212), .B1(n26), .A0N(\fifo[8][0] ), .A1N(n26), .Y(n95) );
  OAI2BB2X1M U101 ( .B0(n213), .B1(n26), .A0N(\fifo[8][1] ), .A1N(n26), .Y(n96) );
  OAI2BB2X1M U102 ( .B0(n214), .B1(n26), .A0N(\fifo[8][2] ), .A1N(n26), .Y(n97) );
  OAI2BB2X1M U103 ( .B0(n215), .B1(n26), .A0N(\fifo[8][3] ), .A1N(n26), .Y(n98) );
  OAI2BB2X1M U104 ( .B0(n216), .B1(n26), .A0N(\fifo[8][4] ), .A1N(n26), .Y(n99) );
  OAI2BB2X1M U105 ( .B0(n217), .B1(n26), .A0N(\fifo[8][5] ), .A1N(n26), .Y(
        n100) );
  OAI2BB2X1M U106 ( .B0(n218), .B1(n26), .A0N(\fifo[8][6] ), .A1N(n26), .Y(
        n101) );
  OAI2BB2X1M U107 ( .B0(n219), .B1(n26), .A0N(\fifo[8][7] ), .A1N(n26), .Y(
        n102) );
  OAI2BB2X1M U108 ( .B0(n212), .B1(n15), .A0N(\fifo[14][0] ), .A1N(n15), .Y(
        n47) );
  OAI2BB2X1M U109 ( .B0(n213), .B1(n15), .A0N(\fifo[14][1] ), .A1N(n15), .Y(
        n48) );
  OAI2BB2X1M U110 ( .B0(n214), .B1(n15), .A0N(\fifo[14][2] ), .A1N(n15), .Y(
        n49) );
  OAI2BB2X1M U111 ( .B0(n215), .B1(n15), .A0N(\fifo[14][3] ), .A1N(n15), .Y(
        n50) );
  OAI2BB2X1M U112 ( .B0(n216), .B1(n15), .A0N(\fifo[14][4] ), .A1N(n15), .Y(
        n51) );
  OAI2BB2X1M U113 ( .B0(n217), .B1(n15), .A0N(\fifo[14][5] ), .A1N(n15), .Y(
        n52) );
  OAI2BB2X1M U114 ( .B0(n218), .B1(n15), .A0N(\fifo[14][6] ), .A1N(n15), .Y(
        n53) );
  OAI2BB2X1M U115 ( .B0(n219), .B1(n15), .A0N(\fifo[14][7] ), .A1N(n15), .Y(
        n54) );
  OAI2BB2X1M U116 ( .B0(n212), .B1(n28), .A0N(\fifo[7][0] ), .A1N(n28), .Y(
        n103) );
  OAI2BB2X1M U117 ( .B0(n213), .B1(n28), .A0N(\fifo[7][1] ), .A1N(n28), .Y(
        n104) );
  OAI2BB2X1M U118 ( .B0(n214), .B1(n28), .A0N(\fifo[7][2] ), .A1N(n28), .Y(
        n105) );
  OAI2BB2X1M U119 ( .B0(n215), .B1(n28), .A0N(\fifo[7][3] ), .A1N(n28), .Y(
        n106) );
  OAI2BB2X1M U120 ( .B0(n216), .B1(n28), .A0N(\fifo[7][4] ), .A1N(n28), .Y(
        n107) );
  OAI2BB2X1M U121 ( .B0(n217), .B1(n28), .A0N(\fifo[7][5] ), .A1N(n28), .Y(
        n108) );
  OAI2BB2X1M U122 ( .B0(n218), .B1(n28), .A0N(\fifo[7][6] ), .A1N(n28), .Y(
        n109) );
  OAI2BB2X1M U123 ( .B0(n219), .B1(n28), .A0N(\fifo[7][7] ), .A1N(n28), .Y(
        n110) );
  OAI2BB2X1M U124 ( .B0(n212), .B1(n30), .A0N(\fifo[6][0] ), .A1N(n30), .Y(
        n111) );
  OAI2BB2X1M U125 ( .B0(n213), .B1(n30), .A0N(\fifo[6][1] ), .A1N(n30), .Y(
        n112) );
  OAI2BB2X1M U126 ( .B0(n214), .B1(n30), .A0N(\fifo[6][2] ), .A1N(n30), .Y(
        n113) );
  OAI2BB2X1M U127 ( .B0(n215), .B1(n30), .A0N(\fifo[6][3] ), .A1N(n30), .Y(
        n114) );
  OAI2BB2X1M U128 ( .B0(n216), .B1(n30), .A0N(\fifo[6][4] ), .A1N(n30), .Y(
        n115) );
  OAI2BB2X1M U129 ( .B0(n217), .B1(n30), .A0N(\fifo[6][5] ), .A1N(n30), .Y(
        n116) );
  OAI2BB2X1M U130 ( .B0(n218), .B1(n30), .A0N(\fifo[6][6] ), .A1N(n30), .Y(
        n117) );
  OAI2BB2X1M U131 ( .B0(n219), .B1(n30), .A0N(\fifo[6][7] ), .A1N(n30), .Y(
        n118) );
  OAI2BB2X1M U132 ( .B0(n212), .B1(n32), .A0N(\fifo[5][0] ), .A1N(n32), .Y(
        n119) );
  OAI2BB2X1M U133 ( .B0(n213), .B1(n32), .A0N(\fifo[5][1] ), .A1N(n32), .Y(
        n120) );
  OAI2BB2X1M U134 ( .B0(n214), .B1(n32), .A0N(\fifo[5][2] ), .A1N(n32), .Y(
        n121) );
  OAI2BB2X1M U135 ( .B0(n215), .B1(n32), .A0N(\fifo[5][3] ), .A1N(n32), .Y(
        n122) );
  OAI2BB2X1M U136 ( .B0(n216), .B1(n32), .A0N(\fifo[5][4] ), .A1N(n32), .Y(
        n123) );
  OAI2BB2X1M U137 ( .B0(n217), .B1(n32), .A0N(\fifo[5][5] ), .A1N(n32), .Y(
        n124) );
  OAI2BB2X1M U138 ( .B0(n218), .B1(n32), .A0N(\fifo[5][6] ), .A1N(n32), .Y(
        n125) );
  OAI2BB2X1M U139 ( .B0(n219), .B1(n32), .A0N(\fifo[5][7] ), .A1N(n32), .Y(
        n126) );
  OAI2BB2X1M U140 ( .B0(n212), .B1(n33), .A0N(\fifo[4][0] ), .A1N(n33), .Y(
        n127) );
  OAI2BB2X1M U141 ( .B0(n213), .B1(n33), .A0N(\fifo[4][1] ), .A1N(n33), .Y(
        n128) );
  OAI2BB2X1M U142 ( .B0(n214), .B1(n33), .A0N(\fifo[4][2] ), .A1N(n33), .Y(
        n129) );
  OAI2BB2X1M U143 ( .B0(n215), .B1(n33), .A0N(\fifo[4][3] ), .A1N(n33), .Y(
        n130) );
  OAI2BB2X1M U144 ( .B0(n216), .B1(n33), .A0N(\fifo[4][4] ), .A1N(n33), .Y(
        n131) );
  OAI2BB2X1M U145 ( .B0(n217), .B1(n33), .A0N(\fifo[4][5] ), .A1N(n33), .Y(
        n132) );
  OAI2BB2X1M U146 ( .B0(n218), .B1(n33), .A0N(\fifo[4][6] ), .A1N(n33), .Y(
        n133) );
  OAI2BB2X1M U147 ( .B0(n219), .B1(n33), .A0N(\fifo[4][7] ), .A1N(n33), .Y(
        n134) );
  OAI2BB2X1M U148 ( .B0(n212), .B1(n34), .A0N(\fifo[3][0] ), .A1N(n34), .Y(
        n135) );
  OAI2BB2X1M U149 ( .B0(n213), .B1(n34), .A0N(\fifo[3][1] ), .A1N(n34), .Y(
        n136) );
  OAI2BB2X1M U150 ( .B0(n214), .B1(n34), .A0N(\fifo[3][2] ), .A1N(n34), .Y(
        n137) );
  OAI2BB2X1M U151 ( .B0(n215), .B1(n34), .A0N(\fifo[3][3] ), .A1N(n34), .Y(
        n138) );
  OAI2BB2X1M U152 ( .B0(n216), .B1(n34), .A0N(\fifo[3][4] ), .A1N(n34), .Y(
        n139) );
  OAI2BB2X1M U153 ( .B0(n217), .B1(n34), .A0N(\fifo[3][5] ), .A1N(n34), .Y(
        n140) );
  OAI2BB2X1M U154 ( .B0(n218), .B1(n34), .A0N(\fifo[3][6] ), .A1N(n34), .Y(
        n141) );
  OAI2BB2X1M U155 ( .B0(n219), .B1(n34), .A0N(\fifo[3][7] ), .A1N(n34), .Y(
        n142) );
  OAI2BB2X1M U156 ( .B0(n212), .B1(n35), .A0N(\fifo[2][0] ), .A1N(n35), .Y(
        n143) );
  OAI2BB2X1M U157 ( .B0(n213), .B1(n35), .A0N(\fifo[2][1] ), .A1N(n35), .Y(
        n144) );
  OAI2BB2X1M U158 ( .B0(n214), .B1(n35), .A0N(\fifo[2][2] ), .A1N(n35), .Y(
        n145) );
  OAI2BB2X1M U159 ( .B0(n215), .B1(n35), .A0N(\fifo[2][3] ), .A1N(n35), .Y(
        n146) );
  OAI2BB2X1M U160 ( .B0(n216), .B1(n35), .A0N(\fifo[2][4] ), .A1N(n35), .Y(
        n147) );
  OAI2BB2X1M U161 ( .B0(n217), .B1(n35), .A0N(\fifo[2][5] ), .A1N(n35), .Y(
        n148) );
  OAI2BB2X1M U162 ( .B0(n218), .B1(n35), .A0N(\fifo[2][6] ), .A1N(n35), .Y(
        n149) );
  OAI2BB2X1M U163 ( .B0(n219), .B1(n35), .A0N(\fifo[2][7] ), .A1N(n35), .Y(
        n150) );
  OAI2BB2X1M U164 ( .B0(n212), .B1(n36), .A0N(\fifo[1][0] ), .A1N(n36), .Y(
        n151) );
  OAI2BB2X1M U165 ( .B0(n213), .B1(n36), .A0N(\fifo[1][1] ), .A1N(n36), .Y(
        n152) );
  OAI2BB2X1M U166 ( .B0(n214), .B1(n36), .A0N(\fifo[1][2] ), .A1N(n36), .Y(
        n153) );
  OAI2BB2X1M U167 ( .B0(n215), .B1(n36), .A0N(\fifo[1][3] ), .A1N(n36), .Y(
        n154) );
  OAI2BB2X1M U168 ( .B0(n216), .B1(n36), .A0N(\fifo[1][4] ), .A1N(n36), .Y(
        n155) );
  OAI2BB2X1M U169 ( .B0(n217), .B1(n36), .A0N(\fifo[1][5] ), .A1N(n36), .Y(
        n156) );
  OAI2BB2X1M U170 ( .B0(n218), .B1(n36), .A0N(\fifo[1][6] ), .A1N(n36), .Y(
        n157) );
  OAI2BB2X1M U171 ( .B0(n219), .B1(n36), .A0N(\fifo[1][7] ), .A1N(n36), .Y(
        n158) );
  OAI2BB2X1M U172 ( .B0(n212), .B1(n38), .A0N(\fifo[0][0] ), .A1N(n38), .Y(
        n159) );
  OAI2BB2X1M U173 ( .B0(n213), .B1(n38), .A0N(\fifo[0][1] ), .A1N(n38), .Y(
        n160) );
  OAI2BB2X1M U174 ( .B0(n214), .B1(n38), .A0N(\fifo[0][2] ), .A1N(n38), .Y(
        n161) );
  OAI2BB2X1M U175 ( .B0(n215), .B1(n38), .A0N(\fifo[0][3] ), .A1N(n38), .Y(
        n162) );
  OAI2BB2X1M U176 ( .B0(n216), .B1(n38), .A0N(\fifo[0][4] ), .A1N(n38), .Y(
        n163) );
  OAI2BB2X1M U177 ( .B0(n217), .B1(n38), .A0N(\fifo[0][5] ), .A1N(n38), .Y(
        n164) );
  OAI2BB2X1M U178 ( .B0(n218), .B1(n38), .A0N(\fifo[0][6] ), .A1N(n38), .Y(
        n165) );
  OAI2BB2X1M U179 ( .B0(n219), .B1(n38), .A0N(\fifo[0][7] ), .A1N(n38), .Y(
        n166) );
  AND2X2M U180 ( .A(n25), .B(w_address[0]), .Y(n14) );
  AND2X2M U181 ( .A(n37), .B(w_address[0]), .Y(n29) );
  NOR2BX2M U182 ( .AN(n27), .B(w_address[3]), .Y(n37) );
  AND2X2M U183 ( .A(w_address[3]), .B(n27), .Y(n25) );
  INVX2M U184 ( .A(w_address[1]), .Y(n210) );
  INVX2M U185 ( .A(w_address[2]), .Y(n211) );
  INVX2M U186 ( .A(w_address[0]), .Y(n209) );
  MX4X1M U187 ( .A(n183), .B(n181), .C(n182), .D(n180), .S0(N12), .S1(N11), 
        .Y(rd_data[6]) );
  MX4X1M U188 ( .A(\fifo[8][6] ), .B(\fifo[9][6] ), .C(\fifo[10][6] ), .D(
        \fifo[11][6] ), .S0(n192), .S1(n189), .Y(n181) );
  MX4X1M U189 ( .A(\fifo[12][6] ), .B(\fifo[13][6] ), .C(\fifo[14][6] ), .D(
        \fifo[15][6] ), .S0(n192), .S1(n189), .Y(n180) );
  MX4X1M U190 ( .A(\fifo[4][6] ), .B(\fifo[5][6] ), .C(\fifo[6][6] ), .D(
        \fifo[7][6] ), .S0(n192), .S1(n189), .Y(n182) );
  MX4X1M U191 ( .A(n171), .B(n169), .C(n170), .D(n168), .S0(N12), .S1(N11), 
        .Y(rd_data[3]) );
  MX4X1M U192 ( .A(\fifo[8][3] ), .B(\fifo[9][3] ), .C(\fifo[10][3] ), .D(
        \fifo[11][3] ), .S0(n193), .S1(N10), .Y(n169) );
  MX4X1M U193 ( .A(\fifo[4][3] ), .B(\fifo[5][3] ), .C(\fifo[6][3] ), .D(
        \fifo[7][3] ), .S0(n193), .S1(N10), .Y(n170) );
  MX4X1M U194 ( .A(\fifo[0][3] ), .B(\fifo[1][3] ), .C(\fifo[2][3] ), .D(
        \fifo[3][3] ), .S0(n193), .S1(N10), .Y(n171) );
  MX4X1M U195 ( .A(n175), .B(n173), .C(n174), .D(n172), .S0(N12), .S1(N11), 
        .Y(rd_data[4]) );
  MX4X1M U196 ( .A(\fifo[8][4] ), .B(\fifo[9][4] ), .C(\fifo[10][4] ), .D(
        \fifo[11][4] ), .S0(n193), .S1(n189), .Y(n173) );
  MX4X1M U197 ( .A(\fifo[12][4] ), .B(\fifo[13][4] ), .C(\fifo[14][4] ), .D(
        \fifo[15][4] ), .S0(n193), .S1(N10), .Y(n172) );
  MX4X1M U198 ( .A(\fifo[4][4] ), .B(\fifo[5][4] ), .C(\fifo[6][4] ), .D(
        \fifo[7][4] ), .S0(n193), .S1(N10), .Y(n174) );
  MX4X1M U199 ( .A(n4), .B(n2), .C(n3), .D(n1), .S0(N12), .S1(N11), .Y(
        rd_data[0]) );
  MX4X1M U200 ( .A(\fifo[8][0] ), .B(\fifo[9][0] ), .C(\fifo[10][0] ), .D(
        \fifo[11][0] ), .S0(n192), .S1(N10), .Y(n2) );
  MX4X1M U201 ( .A(\fifo[12][0] ), .B(\fifo[13][0] ), .C(\fifo[14][0] ), .D(
        \fifo[15][0] ), .S0(n192), .S1(N10), .Y(n1) );
  MX4X1M U202 ( .A(\fifo[4][0] ), .B(\fifo[5][0] ), .C(\fifo[6][0] ), .D(
        \fifo[7][0] ), .S0(n192), .S1(N10), .Y(n3) );
  MX4X1M U203 ( .A(n179), .B(n177), .C(n178), .D(n176), .S0(N12), .S1(N11), 
        .Y(rd_data[5]) );
  MX4X1M U204 ( .A(\fifo[8][5] ), .B(\fifo[9][5] ), .C(\fifo[10][5] ), .D(
        \fifo[11][5] ), .S0(n192), .S1(n189), .Y(n177) );
  MX4X1M U205 ( .A(\fifo[12][5] ), .B(\fifo[13][5] ), .C(\fifo[14][5] ), .D(
        \fifo[15][5] ), .S0(n192), .S1(n189), .Y(n176) );
  MX4X1M U206 ( .A(\fifo[4][5] ), .B(\fifo[5][5] ), .C(\fifo[6][5] ), .D(
        \fifo[7][5] ), .S0(n192), .S1(n189), .Y(n178) );
  MX4X1M U207 ( .A(n8), .B(n6), .C(n7), .D(n5), .S0(N12), .S1(N11), .Y(
        rd_data[1]) );
  MX4X1M U208 ( .A(\fifo[8][1] ), .B(\fifo[9][1] ), .C(\fifo[10][1] ), .D(
        \fifo[11][1] ), .S0(n192), .S1(N10), .Y(n6) );
  MX4X1M U209 ( .A(\fifo[12][1] ), .B(\fifo[13][1] ), .C(\fifo[14][1] ), .D(
        \fifo[15][1] ), .S0(n192), .S1(N10), .Y(n5) );
  MX4X1M U210 ( .A(\fifo[4][1] ), .B(\fifo[5][1] ), .C(\fifo[6][1] ), .D(
        \fifo[7][1] ), .S0(n193), .S1(N10), .Y(n7) );
  MX4X1M U211 ( .A(\fifo[0][0] ), .B(\fifo[1][0] ), .C(\fifo[2][0] ), .D(
        \fifo[3][0] ), .S0(n192), .S1(N10), .Y(n4) );
  MX4X1M U212 ( .A(\fifo[0][6] ), .B(\fifo[1][6] ), .C(\fifo[2][6] ), .D(
        \fifo[3][6] ), .S0(N9), .S1(n189), .Y(n183) );
  MX4X1M U213 ( .A(\fifo[0][7] ), .B(\fifo[1][7] ), .C(\fifo[2][7] ), .D(
        \fifo[3][7] ), .S0(N9), .S1(n189), .Y(n187) );
  MX4X1M U214 ( .A(\fifo[0][2] ), .B(\fifo[1][2] ), .C(\fifo[2][2] ), .D(
        \fifo[3][2] ), .S0(n193), .S1(N10), .Y(n167) );
  MX4X1M U215 ( .A(\fifo[0][4] ), .B(\fifo[1][4] ), .C(\fifo[2][4] ), .D(
        \fifo[3][4] ), .S0(N9), .S1(N10), .Y(n175) );
  MX4X1M U216 ( .A(\fifo[0][5] ), .B(\fifo[1][5] ), .C(\fifo[2][5] ), .D(
        \fifo[3][5] ), .S0(N9), .S1(n189), .Y(n179) );
  MX4X1M U217 ( .A(\fifo[0][1] ), .B(\fifo[1][1] ), .C(\fifo[2][1] ), .D(
        \fifo[3][1] ), .S0(n193), .S1(N10), .Y(n8) );
  MX4X1M U218 ( .A(\fifo[12][3] ), .B(\fifo[13][3] ), .C(\fifo[14][3] ), .D(
        \fifo[15][3] ), .S0(n193), .S1(N10), .Y(n168) );
  MX4X1M U219 ( .A(n187), .B(n185), .C(n186), .D(n184), .S0(N12), .S1(N11), 
        .Y(rd_data[7]) );
  MX4X1M U220 ( .A(\fifo[8][7] ), .B(\fifo[9][7] ), .C(\fifo[10][7] ), .D(
        \fifo[11][7] ), .S0(N9), .S1(n189), .Y(n185) );
  MX4X1M U221 ( .A(\fifo[12][7] ), .B(\fifo[13][7] ), .C(\fifo[14][7] ), .D(
        \fifo[15][7] ), .S0(N9), .S1(n189), .Y(n184) );
  MX4X1M U222 ( .A(\fifo[4][7] ), .B(\fifo[5][7] ), .C(\fifo[6][7] ), .D(
        \fifo[7][7] ), .S0(N9), .S1(n189), .Y(n186) );
  MX4X1M U223 ( .A(n167), .B(n10), .C(n11), .D(n9), .S0(N12), .S1(N11), .Y(
        rd_data[2]) );
  MX4X1M U224 ( .A(\fifo[8][2] ), .B(\fifo[9][2] ), .C(\fifo[10][2] ), .D(
        \fifo[11][2] ), .S0(n193), .S1(n189), .Y(n10) );
  MX4X1M U225 ( .A(\fifo[12][2] ), .B(\fifo[13][2] ), .C(\fifo[14][2] ), .D(
        \fifo[15][2] ), .S0(n193), .S1(n189), .Y(n9) );
  MX4X1M U226 ( .A(\fifo[4][2] ), .B(\fifo[5][2] ), .C(\fifo[6][2] ), .D(
        \fifo[7][2] ), .S0(n193), .S1(N10), .Y(n11) );
  INVX2M U227 ( .A(N10), .Y(n188) );
  INVX2M U228 ( .A(N9), .Y(n190) );
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


module empty_gen ( sync_grey_coded_wr_ptr, rd_clk, rd_rst_n, rd_inc, 
        rd_ptr_grey_coded, rd_address, empty_flag );
  input [4:0] sync_grey_coded_wr_ptr;
  output [4:0] rd_ptr_grey_coded;
  output [3:0] rd_address;
  input rd_clk, rd_rst_n, rd_inc;
  output empty_flag;
  wire   N7, N8, N9, N10, N11, n1, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12,
         n13, n14, \add_23/carry[4] , \add_23/carry[3] , \add_23/carry[2] , n2,
         n15, n16, n17, n18, n19, n20, n21, n22;
  wire   [4:0] rd_ptr;

  grey_code_gen_1 rd_ptr_gc ( .binary_data(rd_ptr), .grey_coded_data(
        rd_ptr_grey_coded) );
  DFFRQX2M \rd_ptr_reg[4]  ( .D(n13), .CK(rd_clk), .RN(rd_rst_n), .Q(rd_ptr[4]) );
  DFFRQX2M \rd_ptr_reg[0]  ( .D(n14), .CK(rd_clk), .RN(rd_rst_n), .Q(rd_ptr[0]) );
  DFFRQX2M \rd_address_reg[0]  ( .D(n12), .CK(rd_clk), .RN(rd_rst_n), .Q(
        rd_address[0]) );
  DFFRQX2M \rd_address_reg[1]  ( .D(n11), .CK(rd_clk), .RN(rd_rst_n), .Q(
        rd_address[1]) );
  DFFRQX2M \rd_address_reg[2]  ( .D(n10), .CK(rd_clk), .RN(rd_rst_n), .Q(
        rd_address[2]) );
  DFFRQX2M \rd_ptr_reg[1]  ( .D(n8), .CK(rd_clk), .RN(rd_rst_n), .Q(rd_ptr[1])
         );
  DFFRQX2M \rd_ptr_reg[2]  ( .D(n7), .CK(rd_clk), .RN(rd_rst_n), .Q(rd_ptr[2])
         );
  DFFRQX2M \rd_ptr_reg[3]  ( .D(n6), .CK(rd_clk), .RN(rd_rst_n), .Q(rd_ptr[3])
         );
  DFFRQX2M \rd_address_reg[3]  ( .D(n9), .CK(rd_clk), .RN(rd_rst_n), .Q(
        rd_address[3]) );
  INVX2M U3 ( .A(n1), .Y(n22) );
  NAND2BX2M U4 ( .AN(empty_flag), .B(rd_inc), .Y(n1) );
  XNOR2X2M U5 ( .A(rd_address[2]), .B(n4), .Y(n10) );
  NAND2X2M U6 ( .A(rd_address[1]), .B(n5), .Y(n4) );
  AND2X2M U7 ( .A(rd_address[0]), .B(n22), .Y(n5) );
  AO22X1M U8 ( .A0(rd_ptr[3]), .A1(n1), .B0(N10), .B1(n22), .Y(n6) );
  AO22X1M U9 ( .A0(rd_ptr[2]), .A1(n1), .B0(N9), .B1(n22), .Y(n7) );
  AO22X1M U10 ( .A0(rd_ptr[1]), .A1(n1), .B0(N8), .B1(n22), .Y(n8) );
  AO22X1M U11 ( .A0(rd_ptr[4]), .A1(n1), .B0(N11), .B1(n22), .Y(n13) );
  AO22X1M U12 ( .A0(rd_ptr[0]), .A1(n1), .B0(N7), .B1(n22), .Y(n14) );
  CLKXOR2X2M U13 ( .A(rd_address[3]), .B(n3), .Y(n9) );
  NOR2BX2M U14 ( .AN(rd_address[2]), .B(n4), .Y(n3) );
  CLKXOR2X2M U15 ( .A(rd_address[1]), .B(n5), .Y(n11) );
  CLKXOR2X2M U16 ( .A(rd_address[0]), .B(n22), .Y(n12) );
  ADDHX1M U17 ( .A(rd_ptr[1]), .B(rd_ptr[0]), .CO(\add_23/carry[2] ), .S(N8)
         );
  ADDHX1M U18 ( .A(rd_ptr[2]), .B(\add_23/carry[2] ), .CO(\add_23/carry[3] ), 
        .S(N9) );
  ADDHX1M U19 ( .A(rd_ptr[3]), .B(\add_23/carry[3] ), .CO(\add_23/carry[4] ), 
        .S(N10) );
  CLKINVX1M U20 ( .A(rd_ptr[0]), .Y(N7) );
  CLKXOR2X2M U21 ( .A(\add_23/carry[4] ), .B(rd_ptr[4]), .Y(N11) );
  CLKXOR2X2M U22 ( .A(sync_grey_coded_wr_ptr[2]), .B(rd_ptr_grey_coded[2]), 
        .Y(n21) );
  NOR2BX1M U23 ( .AN(sync_grey_coded_wr_ptr[0]), .B(rd_ptr_grey_coded[0]), .Y(
        n2) );
  OAI2B2X1M U24 ( .A1N(rd_ptr_grey_coded[1]), .A0(n2), .B0(
        sync_grey_coded_wr_ptr[1]), .B1(n2), .Y(n17) );
  NOR2BX1M U25 ( .AN(rd_ptr_grey_coded[0]), .B(sync_grey_coded_wr_ptr[0]), .Y(
        n15) );
  OAI2B2X1M U26 ( .A1N(sync_grey_coded_wr_ptr[1]), .A0(n15), .B0(
        rd_ptr_grey_coded[1]), .B1(n15), .Y(n16) );
  CLKNAND2X2M U27 ( .A(n17), .B(n16), .Y(n20) );
  CLKXOR2X2M U28 ( .A(sync_grey_coded_wr_ptr[3]), .B(rd_ptr_grey_coded[3]), 
        .Y(n19) );
  CLKXOR2X2M U29 ( .A(sync_grey_coded_wr_ptr[4]), .B(rd_ptr_grey_coded[4]), 
        .Y(n18) );
  NOR4X1M U30 ( .A(n21), .B(n20), .C(n19), .D(n18), .Y(empty_flag) );
endmodule


module synchronizer_0 ( d1, clk, rst_n, q2 );
  input [4:0] d1;
  output [4:0] q2;
  input clk, rst_n;

  wire   [4:0] q1;

  DFFRQX2M \q2_reg[2]  ( .D(q1[2]), .CK(clk), .RN(rst_n), .Q(q2[2]) );
  DFFRQX2M \q2_reg[1]  ( .D(q1[1]), .CK(clk), .RN(rst_n), .Q(q2[1]) );
  DFFRQX2M \q2_reg[0]  ( .D(q1[0]), .CK(clk), .RN(rst_n), .Q(q2[0]) );
  DFFRQX2M \q2_reg[4]  ( .D(q1[4]), .CK(clk), .RN(rst_n), .Q(q2[4]) );
  DFFRQX2M \q2_reg[3]  ( .D(q1[3]), .CK(clk), .RN(rst_n), .Q(q2[3]) );
  DFFRQX2M \q1_reg[4]  ( .D(d1[4]), .CK(clk), .RN(rst_n), .Q(q1[4]) );
  DFFRQX2M \q1_reg[3]  ( .D(d1[3]), .CK(clk), .RN(rst_n), .Q(q1[3]) );
  DFFRQX2M \q1_reg[2]  ( .D(d1[2]), .CK(clk), .RN(rst_n), .Q(q1[2]) );
  DFFRQX2M \q1_reg[1]  ( .D(d1[1]), .CK(clk), .RN(rst_n), .Q(q1[1]) );
  DFFRQX2M \q1_reg[0]  ( .D(d1[0]), .CK(clk), .RN(rst_n), .Q(q1[0]) );
endmodule


module synchronizer_1 ( d1, clk, rst_n, q2 );
  input [4:0] d1;
  output [4:0] q2;
  input clk, rst_n;

  wire   [4:0] q1;

  DFFRQX2M \q2_reg[0]  ( .D(q1[0]), .CK(clk), .RN(rst_n), .Q(q2[0]) );
  DFFRQX2M \q2_reg[1]  ( .D(q1[1]), .CK(clk), .RN(rst_n), .Q(q2[1]) );
  DFFRQX2M \q2_reg[4]  ( .D(q1[4]), .CK(clk), .RN(rst_n), .Q(q2[4]) );
  DFFRQX2M \q2_reg[3]  ( .D(q1[3]), .CK(clk), .RN(rst_n), .Q(q2[3]) );
  DFFRQX2M \q2_reg[2]  ( .D(q1[2]), .CK(clk), .RN(rst_n), .Q(q2[2]) );
  DFFRQX2M \q1_reg[4]  ( .D(d1[4]), .CK(clk), .RN(rst_n), .Q(q1[4]) );
  DFFRQX2M \q1_reg[3]  ( .D(d1[3]), .CK(clk), .RN(rst_n), .Q(q1[3]) );
  DFFRQX2M \q1_reg[2]  ( .D(d1[2]), .CK(clk), .RN(rst_n), .Q(q1[2]) );
  DFFRQX2M \q1_reg[1]  ( .D(d1[1]), .CK(clk), .RN(rst_n), .Q(q1[1]) );
  DFFRQX2M \q1_reg[0]  ( .D(d1[0]), .CK(clk), .RN(rst_n), .Q(q1[0]) );
endmodule


module fifo_top ( w_clk, w_rst_n, rd_clk, rd_rst_n, w_inc, rd_inc, w_data, 
        rd_data, full_flag, empty_flag );
  input [7:0] w_data;
  output [7:0] rd_data;
  input w_clk, w_rst_n, rd_clk, rd_rst_n, w_inc, rd_inc;
  output full_flag, empty_flag;
  wire   n1, n2, n3, n4;
  wire   [4:0] sync_grey_coded_rd_ptr;
  wire   [4:0] wr_ptr_grey_coded;
  wire   [3:0] w_address;
  wire   [3:0] rd_address;
  wire   [4:0] sync_grey_coded_wr_ptr;
  wire   [4:0] rd_ptr_grey_coded;

  full_gen dut1 ( .sync_grey_coded_rd_ptr(sync_grey_coded_rd_ptr), .w_clk(
        w_clk), .w_rst_n(n1), .w_inc(w_inc), .wr_ptr_grey_coded(
        wr_ptr_grey_coded), .w_address(w_address), .full_flag(full_flag) );
  fifo_memory dut2 ( .w_clk(w_clk), .w_rst_n(n1), .rd_clk(rd_clk), .rd_rst_n(
        n3), .w_address(w_address), .rd_address(rd_address), .w_inc(w_inc), 
        .rd_inc(rd_inc), .full_flag(full_flag), .empty_flag(empty_flag), 
        .w_data(w_data), .rd_data(rd_data) );
  empty_gen dut3 ( .sync_grey_coded_wr_ptr(sync_grey_coded_wr_ptr), .rd_clk(
        rd_clk), .rd_rst_n(n3), .rd_inc(rd_inc), .rd_ptr_grey_coded(
        rd_ptr_grey_coded), .rd_address(rd_address), .empty_flag(empty_flag)
         );
  synchronizer_0 dut4 ( .d1(rd_ptr_grey_coded), .clk(w_clk), .rst_n(n1), .q2(
        sync_grey_coded_rd_ptr) );
  synchronizer_1 dut5 ( .d1(wr_ptr_grey_coded), .clk(rd_clk), .rst_n(n3), .q2(
        sync_grey_coded_wr_ptr) );
  INVX2M U1 ( .A(n2), .Y(n1) );
  INVX2M U2 ( .A(w_rst_n), .Y(n2) );
  INVX2M U3 ( .A(n4), .Y(n3) );
  INVX2M U4 ( .A(rd_rst_n), .Y(n4) );
endmodule


module fsm_controller ( data_valid, serilaizer_done, parity_enable, clk, rst_n, 
        serilaizer_enable, busy, mux_sel );
  output [1:0] mux_sel;
  input data_valid, serilaizer_done, parity_enable, clk, rst_n;
  output serilaizer_enable, busy;
  wire   n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14, n1, n2, n3;
  wire   [2:0] current_state;

  DFFRQX2M \current_state_reg[0]  ( .D(n14), .CK(clk), .RN(rst_n), .Q(
        current_state[0]) );
  DFFRQX2M \current_state_reg[2]  ( .D(n13), .CK(clk), .RN(rst_n), .Q(
        current_state[2]) );
  DFFRX1M \current_state_reg[1]  ( .D(n12), .CK(clk), .RN(rst_n), .Q(
        current_state[1]), .QN(n2) );
  NAND3BX2M U3 ( .AN(n4), .B(n5), .C(n9), .Y(busy) );
  NOR2X2M U4 ( .A(n4), .B(n5), .Y(serilaizer_enable) );
  OAI21X2M U5 ( .A0(n8), .A1(n5), .B0(n9), .Y(n13) );
  AOI21X2M U6 ( .A0(serilaizer_done), .A1(n3), .B0(n4), .Y(n8) );
  OAI2BB2X1M U7 ( .B0(current_state[1]), .B1(current_state[0]), .A0N(
        current_state[0]), .A1N(mux_sel[1]), .Y(mux_sel[0]) );
  NOR2X2M U8 ( .A(n2), .B(current_state[2]), .Y(mux_sel[1]) );
  XNOR2X2M U9 ( .A(current_state[2]), .B(n1), .Y(n4) );
  NAND2X2M U10 ( .A(current_state[2]), .B(current_state[0]), .Y(n9) );
  NAND2X2M U11 ( .A(current_state[1]), .B(n9), .Y(n5) );
  INVX2M U12 ( .A(current_state[0]), .Y(n1) );
  OAI32X1M U13 ( .A0(n1), .A1(current_state[2]), .A2(current_state[1]), .B0(n6), .B1(n2), .Y(n12) );
  NOR2X2M U14 ( .A(current_state[2]), .B(n7), .Y(n6) );
  AOI21X2M U15 ( .A0(serilaizer_done), .A1(n3), .B0(current_state[0]), .Y(n7)
         );
  AOI31X2M U16 ( .A0(n10), .A1(n9), .A2(n11), .B0(n4), .Y(n14) );
  NAND2X2M U17 ( .A(data_valid), .B(n2), .Y(n11) );
  NAND3X2M U18 ( .A(serilaizer_done), .B(current_state[1]), .C(parity_enable), 
        .Y(n10) );
  INVX2M U19 ( .A(parity_enable), .Y(n3) );
endmodule


module serilaizer ( p_data, data_valid, serilaizer_enable, busy, clk, rst_n, 
        serialized_data, serilaizer_done );
  input [7:0] p_data;
  input data_valid, serilaizer_enable, busy, clk, rst_n;
  output serialized_data, serilaizer_done;
  wire   \counter[0] , N24, N25, N26, n1, n2, n4, n5, n6, n7, n8, n9, n10, n11,
         n12, n13, n14, n15, n16, n17, n18, n19, n20, n21, n22, n23, n3;
  wire   [7:1] parallel_data_reg;

  DFFRQX2M \parallel_data_reg_reg[6]  ( .D(n17), .CK(clk), .RN(rst_n), .Q(
        parallel_data_reg[6]) );
  DFFRQX2M \parallel_data_reg_reg[5]  ( .D(n18), .CK(clk), .RN(rst_n), .Q(
        parallel_data_reg[5]) );
  DFFRQX2M \parallel_data_reg_reg[4]  ( .D(n19), .CK(clk), .RN(rst_n), .Q(
        parallel_data_reg[4]) );
  DFFRQX2M \parallel_data_reg_reg[3]  ( .D(n20), .CK(clk), .RN(rst_n), .Q(
        parallel_data_reg[3]) );
  DFFRQX2M \parallel_data_reg_reg[2]  ( .D(n21), .CK(clk), .RN(rst_n), .Q(
        parallel_data_reg[2]) );
  DFFRQX2M \parallel_data_reg_reg[1]  ( .D(n22), .CK(clk), .RN(rst_n), .Q(
        parallel_data_reg[1]) );
  DFFRQX2M \parallel_data_reg_reg[7]  ( .D(n16), .CK(clk), .RN(rst_n), .Q(
        parallel_data_reg[7]) );
  DFFRX1M \counter_reg[2]  ( .D(N26), .CK(clk), .RN(rst_n), .QN(n1) );
  DFFRQX2M \counter_reg[0]  ( .D(N24), .CK(clk), .RN(rst_n), .Q(\counter[0] )
         );
  DFFRX1M \counter_reg[1]  ( .D(N25), .CK(clk), .RN(rst_n), .QN(n2) );
  DFFRQX2M \parallel_data_reg_reg[0]  ( .D(n23), .CK(clk), .RN(rst_n), .Q(
        serialized_data) );
  NOR2X2M U3 ( .A(n14), .B(n5), .Y(n7) );
  NOR2X2M U4 ( .A(n5), .B(n7), .Y(n4) );
  NAND2BX2M U5 ( .AN(serilaizer_done), .B(serilaizer_enable), .Y(n14) );
  NOR2BX2M U6 ( .AN(data_valid), .B(busy), .Y(n5) );
  OAI2BB1X2M U7 ( .A0N(serialized_data), .A1N(n4), .B0(n13), .Y(n23) );
  AOI22X1M U8 ( .A0(parallel_data_reg[1]), .A1(n7), .B0(p_data[0]), .B1(n5), 
        .Y(n13) );
  OAI2BB1X2M U9 ( .A0N(n4), .A1N(parallel_data_reg[1]), .B0(n12), .Y(n22) );
  AOI22X1M U10 ( .A0(parallel_data_reg[2]), .A1(n7), .B0(p_data[1]), .B1(n5), 
        .Y(n12) );
  OAI2BB1X2M U11 ( .A0N(n4), .A1N(parallel_data_reg[2]), .B0(n11), .Y(n21) );
  AOI22X1M U12 ( .A0(parallel_data_reg[3]), .A1(n7), .B0(p_data[2]), .B1(n5), 
        .Y(n11) );
  OAI2BB1X2M U13 ( .A0N(n4), .A1N(parallel_data_reg[3]), .B0(n10), .Y(n20) );
  AOI22X1M U14 ( .A0(parallel_data_reg[4]), .A1(n7), .B0(p_data[3]), .B1(n5), 
        .Y(n10) );
  OAI2BB1X2M U15 ( .A0N(n4), .A1N(parallel_data_reg[4]), .B0(n9), .Y(n19) );
  AOI22X1M U16 ( .A0(parallel_data_reg[5]), .A1(n7), .B0(p_data[4]), .B1(n5), 
        .Y(n9) );
  OAI2BB1X2M U17 ( .A0N(n4), .A1N(parallel_data_reg[5]), .B0(n8), .Y(n18) );
  AOI22X1M U18 ( .A0(parallel_data_reg[6]), .A1(n7), .B0(p_data[5]), .B1(n5), 
        .Y(n8) );
  OAI2BB1X2M U19 ( .A0N(n4), .A1N(parallel_data_reg[6]), .B0(n6), .Y(n17) );
  AOI22X1M U20 ( .A0(n7), .A1(parallel_data_reg[7]), .B0(p_data[6]), .B1(n5), 
        .Y(n6) );
  AO22X1M U21 ( .A0(n4), .A1(parallel_data_reg[7]), .B0(p_data[7]), .B1(n5), 
        .Y(n16) );
  NOR3X2M U22 ( .A(n2), .B(n3), .C(n1), .Y(serilaizer_done) );
  OAI32X1M U23 ( .A0(n14), .A1(n3), .A2(n2), .B0(n1), .B1(n14), .Y(N26) );
  NOR2X2M U24 ( .A(\counter[0] ), .B(n14), .Y(N24) );
  NOR2X2M U25 ( .A(n15), .B(n14), .Y(N25) );
  CLKXOR2X2M U26 ( .A(n2), .B(\counter[0] ), .Y(n15) );
  INVX2M U27 ( .A(\counter[0] ), .Y(n3) );
endmodule


module parity_calc ( p_data, data_valid, busy, parity_type, clk, rst_n, 
        parity_bit );
  input [7:0] p_data;
  input data_valid, busy, parity_type, clk, rst_n;
  output parity_bit;
  wire   n1, n2, n3, n4, n5, n6, n7;

  DFFRQX2M parity_bit_reg ( .D(n7), .CK(clk), .RN(rst_n), .Q(parity_bit) );
  XNOR2X2M U2 ( .A(p_data[3]), .B(p_data[2]), .Y(n5) );
  XOR3XLM U3 ( .A(p_data[5]), .B(p_data[4]), .C(n6), .Y(n3) );
  CLKXOR2X2M U4 ( .A(p_data[7]), .B(p_data[6]), .Y(n6) );
  OAI2BB2X1M U5 ( .B0(n1), .B1(n2), .A0N(parity_bit), .A1N(n2), .Y(n7) );
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


module UART_tx_TOP_MODULE ( p_data, clk, rst_n, data_valid, parity_type, 
        parity_enable, tx_out, busy );
  input [7:0] p_data;
  input clk, rst_n, data_valid, parity_type, parity_enable;
  output tx_out, busy;
  wire   serilaizer_done, serilaizer_enable, serialized_data, parity_bit;
  wire   [1:0] mux_sel;

  fsm_controller uut0 ( .data_valid(data_valid), .serilaizer_done(
        serilaizer_done), .parity_enable(parity_enable), .clk(clk), .rst_n(
        rst_n), .serilaizer_enable(serilaizer_enable), .busy(busy), .mux_sel(
        mux_sel) );
  serilaizer uut1 ( .p_data(p_data), .data_valid(data_valid), 
        .serilaizer_enable(serilaizer_enable), .busy(busy), .clk(clk), .rst_n(
        rst_n), .serialized_data(serialized_data), .serilaizer_done(
        serilaizer_done) );
  parity_calc uut2 ( .p_data(p_data), .data_valid(data_valid), .busy(busy), 
        .parity_type(parity_type), .clk(clk), .rst_n(rst_n), .parity_bit(
        parity_bit) );
  mux uu3 ( .mux_sel(mux_sel), .parity_bit(parity_bit), .serialized_data(
        serialized_data), .tx_out(tx_out) );
endmodule


module rst_synchronizer_0 ( clk, rst_n, sync_rst );
  input clk, rst_n;
  output sync_rst;

  wire   [2:1] syn_rst_reg;

  DFFRQX2M \syn_rst_reg_reg[0]  ( .D(syn_rst_reg[1]), .CK(clk), .RN(rst_n), 
        .Q(sync_rst) );
  DFFRQX2M \syn_rst_reg_reg[1]  ( .D(syn_rst_reg[2]), .CK(clk), .RN(rst_n), 
        .Q(syn_rst_reg[1]) );
  DFFRQX2M \syn_rst_reg_reg[2]  ( .D(1'b1), .CK(clk), .RN(rst_n), .Q(
        syn_rst_reg[2]) );
endmodule


module rst_synchronizer_1 ( clk, rst_n, sync_rst );
  input clk, rst_n;
  output sync_rst;

  wire   [2:1] syn_rst_reg;

  DFFRQX2M \syn_rst_reg_reg[0]  ( .D(syn_rst_reg[1]), .CK(clk), .RN(rst_n), 
        .Q(sync_rst) );
  DFFRQX2M \syn_rst_reg_reg[1]  ( .D(syn_rst_reg[2]), .CK(clk), .RN(rst_n), 
        .Q(syn_rst_reg[1]) );
  DFFRQX2M \syn_rst_reg_reg[2]  ( .D(1'b1), .CK(clk), .RN(rst_n), .Q(
        syn_rst_reg[2]) );
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


module clk_div_0 ( i_ref_clk, i_rst_n, i_clk_en, i_div_ratio, o_div_clk );
  input [7:0] i_div_ratio;
  input i_ref_clk, i_rst_n, i_clk_en;
  output o_div_clk;
  wire   N8, N10, N11, N12, N13, N14, N15, N16, N17, n7, n10, n16, n17, n18,
         n19, n20, n21, n22, n23, n24, n1, n2, n3, n4, n5, n6, n8, n9, n11,
         n12, n13, n14, n15, n25, n26, n27, n28, n29, n30, n31, n32, n33, n34,
         n35, n36, n37, n38, n39, n40, n41, n42, n43, n44, n45;
  wire   [7:0] counter;

  clk_div_0_DW01_inc_0 add_21_aco ( .A({n9, n8, n6, n5, n4, n3, n2, n1}), 
        .SUM({N17, N16, N15, N14, N13, N12, N11, N10}) );
  DFFRX1M clk_reg_reg ( .D(n16), .CK(i_ref_clk), .RN(i_rst_n), .QN(n7) );
  DFFRQX2M \counter_reg[4]  ( .D(n21), .CK(i_ref_clk), .RN(i_rst_n), .Q(
        counter[4]) );
  DFFRQX2M \counter_reg[0]  ( .D(n17), .CK(i_ref_clk), .RN(i_rst_n), .Q(
        counter[0]) );
  DFFRQX2M \counter_reg[6]  ( .D(n23), .CK(i_ref_clk), .RN(i_rst_n), .Q(
        counter[6]) );
  DFFRQX2M \counter_reg[2]  ( .D(n19), .CK(i_ref_clk), .RN(i_rst_n), .Q(
        counter[2]) );
  DFFRQX2M \counter_reg[5]  ( .D(n22), .CK(i_ref_clk), .RN(i_rst_n), .Q(
        counter[5]) );
  DFFRQX2M \counter_reg[1]  ( .D(n18), .CK(i_ref_clk), .RN(i_rst_n), .Q(
        counter[1]) );
  DFFRQX2M \counter_reg[3]  ( .D(n20), .CK(i_ref_clk), .RN(i_rst_n), .Q(
        counter[3]) );
  DFFRQX2M \counter_reg[7]  ( .D(n24), .CK(i_ref_clk), .RN(i_rst_n), .Q(
        counter[7]) );
  OAI2BB2X1M U10 ( .B0(n10), .B1(n7), .A0N(i_ref_clk), .A1N(n10), .Y(o_div_clk) );
  AND2X2M U3 ( .A(counter[0]), .B(N8), .Y(n1) );
  AND2X2M U4 ( .A(counter[1]), .B(N8), .Y(n2) );
  AND2X2M U5 ( .A(counter[2]), .B(N8), .Y(n3) );
  AND2X2M U6 ( .A(counter[3]), .B(N8), .Y(n4) );
  AND2X2M U7 ( .A(counter[4]), .B(N8), .Y(n5) );
  AND2X2M U8 ( .A(counter[5]), .B(N8), .Y(n6) );
  AND2X2M U9 ( .A(counter[6]), .B(N8), .Y(n8) );
  AND2X2M U11 ( .A(N8), .B(counter[7]), .Y(n9) );
  NAND2BX2M U12 ( .AN(n34), .B(i_clk_en), .Y(n10) );
  NAND2X2M U13 ( .A(n36), .B(n37), .Y(N8) );
  CLKMX2X2M U14 ( .A(N17), .B(counter[7]), .S0(n10), .Y(n24) );
  CLKMX2X2M U15 ( .A(N16), .B(counter[6]), .S0(n10), .Y(n23) );
  CLKMX2X2M U16 ( .A(N15), .B(counter[5]), .S0(n10), .Y(n22) );
  CLKMX2X2M U17 ( .A(N14), .B(counter[4]), .S0(n10), .Y(n21) );
  CLKMX2X2M U18 ( .A(N13), .B(counter[3]), .S0(n10), .Y(n20) );
  CLKMX2X2M U19 ( .A(N12), .B(counter[2]), .S0(n10), .Y(n19) );
  CLKMX2X2M U20 ( .A(N11), .B(counter[1]), .S0(n10), .Y(n18) );
  CLKMX2X2M U21 ( .A(N10), .B(counter[0]), .S0(n10), .Y(n17) );
  MXI2X1M U22 ( .A(n11), .B(n7), .S0(n10), .Y(n16) );
  CLKXOR2X2M U23 ( .A(o_div_clk), .B(n12), .Y(n11) );
  AOI221XLM U24 ( .A0(n13), .A1(n14), .B0(n15), .B1(n25), .C0(n26), .Y(n12) );
  CLKINVX1M U25 ( .A(N8), .Y(n26) );
  NOR4X1M U26 ( .A(counter[7]), .B(n27), .C(n28), .D(n29), .Y(n25) );
  CLKXOR2X2M U27 ( .A(i_div_ratio[3]), .B(counter[2]), .Y(n29) );
  CLKXOR2X2M U28 ( .A(i_div_ratio[2]), .B(counter[1]), .Y(n28) );
  CLKXOR2X2M U29 ( .A(i_div_ratio[1]), .B(counter[0]), .Y(n27) );
  NOR4X1M U30 ( .A(n30), .B(n31), .C(n32), .D(n33), .Y(n15) );
  CLKXOR2X2M U31 ( .A(i_div_ratio[7]), .B(counter[6]), .Y(n33) );
  CLKXOR2X2M U32 ( .A(i_div_ratio[6]), .B(counter[5]), .Y(n32) );
  CLKXOR2X2M U33 ( .A(i_div_ratio[5]), .B(counter[4]), .Y(n31) );
  CLKXOR2X2M U34 ( .A(i_div_ratio[4]), .B(counter[3]), .Y(n30) );
  NOR4X1M U35 ( .A(counter[7]), .B(counter[6]), .C(counter[5]), .D(counter[4]), 
        .Y(n14) );
  NOR4X1M U36 ( .A(counter[3]), .B(counter[2]), .C(counter[1]), .D(counter[0]), 
        .Y(n13) );
  NOR4BX1M U37 ( .AN(n35), .B(i_div_ratio[2]), .C(i_div_ratio[3]), .D(
        i_div_ratio[1]), .Y(n34) );
  NOR4X1M U38 ( .A(i_div_ratio[7]), .B(i_div_ratio[6]), .C(i_div_ratio[5]), 
        .D(i_div_ratio[4]), .Y(n35) );
  NOR4X1M U39 ( .A(n38), .B(n39), .C(n40), .D(n41), .Y(n37) );
  CLKXOR2X2M U40 ( .A(i_div_ratio[7]), .B(counter[7]), .Y(n41) );
  CLKXOR2X2M U41 ( .A(i_div_ratio[2]), .B(counter[2]), .Y(n40) );
  CLKXOR2X2M U42 ( .A(i_div_ratio[1]), .B(counter[1]), .Y(n39) );
  CLKXOR2X2M U43 ( .A(i_div_ratio[0]), .B(counter[0]), .Y(n38) );
  NOR4X1M U44 ( .A(n42), .B(n43), .C(n44), .D(n45), .Y(n36) );
  CLKXOR2X2M U45 ( .A(i_div_ratio[6]), .B(counter[6]), .Y(n45) );
  CLKXOR2X2M U46 ( .A(i_div_ratio[5]), .B(counter[5]), .Y(n44) );
  CLKXOR2X2M U47 ( .A(i_div_ratio[4]), .B(counter[4]), .Y(n43) );
  CLKXOR2X2M U48 ( .A(i_div_ratio[3]), .B(counter[3]), .Y(n42) );
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


module clk_div_1 ( i_ref_clk, i_rst_n, i_clk_en, i_div_ratio, o_div_clk );
  input [7:0] i_div_ratio;
  input i_ref_clk, i_rst_n, i_clk_en;
  output o_div_clk;
  wire   N8, N10, N11, N12, N13, N14, N15, N16, N17, n1, n2, n3, n4, n5, n6,
         n8, n9, n11, n12, n13, n14, n15, n25, n26, n27, n28, n29, n30, n31,
         n32, n33, n34, n35, n36, n37, n38, n39, n40, n41, n42, n43, n44, n45,
         n46, n47, n48, n49, n50, n51, n52, n53, n54, n55, n56;
  wire   [7:0] counter;

  clk_div_1_DW01_inc_0 add_21_aco ( .A({n9, n8, n6, n5, n4, n3, n2, n1}), 
        .SUM({N17, N16, N15, N14, N13, N12, N11, N10}) );
  DFFRX1M clk_reg_reg ( .D(n54), .CK(i_ref_clk), .RN(i_rst_n), .QN(n56) );
  DFFRQX2M \counter_reg[4]  ( .D(n49), .CK(i_ref_clk), .RN(i_rst_n), .Q(
        counter[4]) );
  DFFRQX2M \counter_reg[0]  ( .D(n53), .CK(i_ref_clk), .RN(i_rst_n), .Q(
        counter[0]) );
  DFFRQX2M \counter_reg[6]  ( .D(n47), .CK(i_ref_clk), .RN(i_rst_n), .Q(
        counter[6]) );
  DFFRQX2M \counter_reg[2]  ( .D(n51), .CK(i_ref_clk), .RN(i_rst_n), .Q(
        counter[2]) );
  DFFRQX2M \counter_reg[5]  ( .D(n48), .CK(i_ref_clk), .RN(i_rst_n), .Q(
        counter[5]) );
  DFFRQX2M \counter_reg[1]  ( .D(n52), .CK(i_ref_clk), .RN(i_rst_n), .Q(
        counter[1]) );
  DFFRQX2M \counter_reg[3]  ( .D(n50), .CK(i_ref_clk), .RN(i_rst_n), .Q(
        counter[3]) );
  DFFRQX2M \counter_reg[7]  ( .D(n46), .CK(i_ref_clk), .RN(i_rst_n), .Q(
        counter[7]) );
  OAI2BB2X1M U10 ( .B0(n55), .B1(n56), .A0N(i_ref_clk), .A1N(n55), .Y(
        o_div_clk) );
  AND2X2M U3 ( .A(counter[0]), .B(N8), .Y(n1) );
  AND2X2M U4 ( .A(counter[1]), .B(N8), .Y(n2) );
  AND2X2M U5 ( .A(counter[2]), .B(N8), .Y(n3) );
  AND2X2M U6 ( .A(counter[3]), .B(N8), .Y(n4) );
  AND2X2M U7 ( .A(counter[4]), .B(N8), .Y(n5) );
  AND2X2M U8 ( .A(counter[5]), .B(N8), .Y(n6) );
  AND2X2M U9 ( .A(counter[6]), .B(N8), .Y(n8) );
  AND2X2M U11 ( .A(N8), .B(counter[7]), .Y(n9) );
  NAND2BX2M U12 ( .AN(n34), .B(i_clk_en), .Y(n55) );
  NAND2X2M U13 ( .A(n36), .B(n37), .Y(N8) );
  CLKMX2X2M U14 ( .A(N17), .B(counter[7]), .S0(n55), .Y(n46) );
  CLKMX2X2M U15 ( .A(N16), .B(counter[6]), .S0(n55), .Y(n47) );
  CLKMX2X2M U16 ( .A(N15), .B(counter[5]), .S0(n55), .Y(n48) );
  CLKMX2X2M U17 ( .A(N14), .B(counter[4]), .S0(n55), .Y(n49) );
  CLKMX2X2M U18 ( .A(N13), .B(counter[3]), .S0(n55), .Y(n50) );
  CLKMX2X2M U19 ( .A(N12), .B(counter[2]), .S0(n55), .Y(n51) );
  CLKMX2X2M U20 ( .A(N11), .B(counter[1]), .S0(n55), .Y(n52) );
  CLKMX2X2M U21 ( .A(N10), .B(counter[0]), .S0(n55), .Y(n53) );
  MXI2X1M U22 ( .A(n11), .B(n56), .S0(n55), .Y(n54) );
  CLKXOR2X2M U23 ( .A(o_div_clk), .B(n12), .Y(n11) );
  AOI221XLM U24 ( .A0(n13), .A1(n14), .B0(n15), .B1(n25), .C0(n26), .Y(n12) );
  CLKINVX1M U25 ( .A(N8), .Y(n26) );
  NOR4X1M U26 ( .A(counter[7]), .B(n27), .C(n28), .D(n29), .Y(n25) );
  CLKXOR2X2M U27 ( .A(i_div_ratio[3]), .B(counter[2]), .Y(n29) );
  CLKXOR2X2M U28 ( .A(i_div_ratio[2]), .B(counter[1]), .Y(n28) );
  CLKXOR2X2M U29 ( .A(i_div_ratio[1]), .B(counter[0]), .Y(n27) );
  NOR4X1M U30 ( .A(n30), .B(n31), .C(n32), .D(n33), .Y(n15) );
  CLKXOR2X2M U31 ( .A(i_div_ratio[7]), .B(counter[6]), .Y(n33) );
  CLKXOR2X2M U32 ( .A(i_div_ratio[6]), .B(counter[5]), .Y(n32) );
  CLKXOR2X2M U33 ( .A(i_div_ratio[5]), .B(counter[4]), .Y(n31) );
  CLKXOR2X2M U34 ( .A(i_div_ratio[4]), .B(counter[3]), .Y(n30) );
  NOR4X1M U35 ( .A(counter[7]), .B(counter[6]), .C(counter[5]), .D(counter[4]), 
        .Y(n14) );
  NOR4X1M U36 ( .A(counter[3]), .B(counter[2]), .C(counter[1]), .D(counter[0]), 
        .Y(n13) );
  NOR4BX1M U37 ( .AN(n35), .B(i_div_ratio[2]), .C(i_div_ratio[3]), .D(
        i_div_ratio[1]), .Y(n34) );
  NOR4X1M U38 ( .A(i_div_ratio[7]), .B(i_div_ratio[6]), .C(i_div_ratio[5]), 
        .D(i_div_ratio[4]), .Y(n35) );
  NOR4X1M U39 ( .A(n38), .B(n39), .C(n40), .D(n41), .Y(n37) );
  CLKXOR2X2M U40 ( .A(i_div_ratio[7]), .B(counter[7]), .Y(n41) );
  CLKXOR2X2M U41 ( .A(i_div_ratio[2]), .B(counter[2]), .Y(n40) );
  CLKXOR2X2M U42 ( .A(i_div_ratio[1]), .B(counter[1]), .Y(n39) );
  CLKXOR2X2M U43 ( .A(i_div_ratio[0]), .B(counter[0]), .Y(n38) );
  NOR4X1M U44 ( .A(n42), .B(n43), .C(n44), .D(n45), .Y(n36) );
  CLKXOR2X2M U45 ( .A(i_div_ratio[6]), .B(counter[6]), .Y(n45) );
  CLKXOR2X2M U46 ( .A(i_div_ratio[5]), .B(counter[5]), .Y(n44) );
  CLKXOR2X2M U47 ( .A(i_div_ratio[4]), .B(counter[4]), .Y(n43) );
  CLKXOR2X2M U48 ( .A(i_div_ratio[3]), .B(counter[3]), .Y(n42) );
endmodule


module pulse_gen_0 ( clk, rst_n, in, d2, out );
  input clk, rst_n, in;
  output d2, out;
  wire   q;

  DFFRQX2M q_reg ( .D(in), .CK(clk), .RN(rst_n), .Q(q) );
  DFFRQX2M out_reg ( .D(d2), .CK(clk), .RN(rst_n), .Q(out) );
  NOR2BX2M U3 ( .AN(in), .B(q), .Y(d2) );
endmodule


module system_TOP ( Ref_clk, Uart_clk, rst_n, rx_in, tx_out, stop_error, 
        parity_error, start_glitch );
  input Ref_clk, Uart_clk, rst_n, rx_in;
  output tx_out, stop_error, parity_error, start_glitch;
  wire   uart_sync_rst, empty_flag, q1, tx_clk, ref_sync_rst, out_valid,
         rx_d_valid, full_flag, rd_data_valid, alu_en, clk_en, w_en, r_en,
         w_inc, data_valid, rx_clk, gated_clk, rd_inc, busy, n1, n6, n7, n8,
         n9, n10, n11, n12, n13, n14, n15, n16, n17, n18, n19, n20;
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

  sys_ctrl sys_ctrl ( .clk(Ref_clk), .rst_n(n13), .alu_out(alu_out), 
        .out_valid(out_valid), .rx_P_data(rx_P_data), .rx_d_valid(rx_d_valid), 
        .full_flag(full_flag), .rd_data(rd_data), .rd_data_valid(rd_data_valid), .alu_en(alu_en), .alu_fun(alu_fun), .clk_en(clk_en), .address(address), 
        .w_en(w_en), .r_en(r_en), .w_data(w_data), .tx_P_data(tx_P_data), 
        .w_inc(w_inc) );
  data_sync_top_module data_sync ( .dest_clk(Ref_clk), .dest_rst_n(n13), 
        .unsync_bus(p_data), .bus_enable(data_valid), .sync_bus(rx_P_data), 
        .enable_pulse(rx_d_valid) );
  RX_TOP_MODULE uart_RX ( .rx_in(rx_in), .prescale(reg2[7:2]), .parity_enable(
        reg2[0]), .parity_type(reg2[1]), .rx_clk(rx_clk), .rst_n(n15), 
        .p_data(p_data), .stop_error(stop_error), .parity_error(parity_error), 
        .start_glitch(start_glitch), .data_valid(data_valid) );
  RF register_file ( .wren(w_en), .rden(r_en), .clk(Ref_clk), .rst(n13), 
        .wrdata(w_data), .address({address[3:2], n12, n11}), .rddata(rd_data), 
        .rddata_valid(rd_data_valid), .reg0(reg0), .reg1(reg1), .reg2(reg2), 
        .reg3(reg3) );
  bit16_alu alu ( .a(reg0), .b(reg1), .alu_fun(alu_fun), .clk(gated_clk), 
        .rst_n(n13), .enable(alu_en), .alu_out(alu_out), .out_valid(out_valid)
         );
  fifo_top async_fifo ( .w_clk(Ref_clk), .w_rst_n(n13), .rd_clk(tx_clk), 
        .rd_rst_n(n15), .w_inc(w_inc), .rd_inc(rd_inc), .w_data(tx_P_data), 
        .rd_data(fifo_rd_data), .full_flag(full_flag), .empty_flag(empty_flag)
         );
  UART_tx_TOP_MODULE UART_tx ( .p_data(fifo_rd_data), .clk(tx_clk), .rst_n(n15), .data_valid(n1), .parity_type(reg2[1]), .parity_enable(reg2[0]), .tx_out(
        tx_out), .busy(busy) );
  rst_synchronizer_0 ref_clk_rst_sync ( .clk(Ref_clk), .rst_n(rst_n), 
        .sync_rst(ref_sync_rst) );
  rst_synchronizer_1 uart_clk_rst_sync ( .clk(Uart_clk), .rst_n(rst_n), 
        .sync_rst(uart_sync_rst) );
  clock_gating clock_gating_cell ( .clk_enable(clk_en), .clk(Ref_clk), 
        .gated_clk(gated_clk) );
  clk_div_0 tx_div ( .i_ref_clk(Uart_clk), .i_rst_n(n15), .i_clk_en(1'b1), 
        .i_div_ratio(reg3), .o_div_clk(tx_clk) );
  clk_div_1 rx_div ( .i_ref_clk(Uart_clk), .i_rst_n(n15), .i_clk_en(1'b1), 
        .i_div_ratio({1'b0, 1'b0, 1'b0, 1'b0, out}), .o_div_clk(rx_clk) );
  pulse_gen_0 pulse_gen ( .clk(tx_clk), .rst_n(n15), .in(busy), .d2(rd_inc) );
  DFFRX1M q2_reg ( .D(q1), .CK(tx_clk), .RN(n15), .QN(n1) );
  DFFRQX2M q1_reg ( .D(empty_flag), .CK(tx_clk), .RN(n15), .Q(q1) );
  BUFX2M U16 ( .A(address[0]), .Y(n11) );
  BUFX2M U17 ( .A(address[1]), .Y(n12) );
  OAI211X2M U18 ( .A0(n9), .A1(n10), .B0(n20), .C0(n19), .Y(out[0]) );
  NAND2X2M U19 ( .A(n8), .B(n7), .Y(n10) );
  NOR4X1M U20 ( .A(reg2[7]), .B(reg2[6]), .C(reg2[5]), .D(n18), .Y(n9) );
  NAND4BX1M U21 ( .AN(reg2[6]), .B(reg2[5]), .C(n18), .D(n17), .Y(n7) );
  NAND4BX1M U22 ( .AN(reg2[5]), .B(reg2[6]), .C(n18), .D(n17), .Y(n8) );
  NOR3X2M U23 ( .A(n7), .B(reg2[3]), .C(reg2[2]), .Y(out[2]) );
  NOR3X2M U24 ( .A(n8), .B(reg2[3]), .C(reg2[2]), .Y(out[1]) );
  NOR4X1M U25 ( .A(n6), .B(reg2[5]), .C(reg2[7]), .D(reg2[6]), .Y(out[3]) );
  NAND3X2M U26 ( .A(n20), .B(n19), .C(reg2[4]), .Y(n6) );
  INVX4M U27 ( .A(n16), .Y(n15) );
  INVX2M U28 ( .A(uart_sync_rst), .Y(n16) );
  INVX4M U29 ( .A(n14), .Y(n13) );
  INVX2M U30 ( .A(ref_sync_rst), .Y(n14) );
  INVX2M U31 ( .A(reg2[4]), .Y(n18) );
  INVX2M U32 ( .A(reg2[3]), .Y(n19) );
  INVX2M U33 ( .A(reg2[2]), .Y(n20) );
  INVX2M U34 ( .A(reg2[7]), .Y(n17) );
endmodule

