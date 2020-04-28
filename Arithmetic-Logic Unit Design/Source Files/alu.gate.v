/////////////////////////////////////////////////////////////
// Created by: Synopsys DC Expert(TM) in wire load mode
// Version   : L-2016.03-SP2
// Date      : Fri Apr 17 20:37:43 2020
/////////////////////////////////////////////////////////////


module alu_DW01_addsub_0 ( A, B, CI, ADD_SUB, SUM, CO );
  input [8:0] A;
  input [8:0] B;
  output [8:0] SUM;
  input CI, ADD_SUB;
  output CO;

  wire   [9:0] carry;
  wire   [8:0] B_AS;
  assign carry[0] = ADD_SUB;

  FADDX1 U1_7 ( .A(A[7]), .B(B_AS[7]), .CI(carry[7]), .CO(carry[8]), .S(SUM[7]) );
  FADDX1 U1_6 ( .A(A[6]), .B(B_AS[6]), .CI(carry[6]), .CO(carry[7]), .S(SUM[6]) );
  FADDX1 U1_5 ( .A(A[5]), .B(B_AS[5]), .CI(carry[5]), .CO(carry[6]), .S(SUM[5]) );
  FADDX1 U1_4 ( .A(A[4]), .B(B_AS[4]), .CI(carry[4]), .CO(carry[5]), .S(SUM[4]) );
  FADDX1 U1_3 ( .A(A[3]), .B(B_AS[3]), .CI(carry[3]), .CO(carry[4]), .S(SUM[3]) );
  FADDX1 U1_2 ( .A(A[2]), .B(B_AS[2]), .CI(carry[2]), .CO(carry[3]), .S(SUM[2]) );
  FADDX1 U1_1 ( .A(A[1]), .B(B_AS[1]), .CI(carry[1]), .CO(carry[2]), .S(SUM[1]) );
  FADDX1 U1_0 ( .A(A[0]), .B(B_AS[0]), .CI(carry[0]), .CO(carry[1]), .S(SUM[0]) );
  XOR2X1 U1 ( .IN1(carry[0]), .IN2(carry[8]), .Q(SUM[8]) );
  XOR2X1 U2 ( .IN1(B[7]), .IN2(carry[0]), .Q(B_AS[7]) );
  XOR2X1 U3 ( .IN1(B[6]), .IN2(carry[0]), .Q(B_AS[6]) );
  XOR2X1 U4 ( .IN1(B[5]), .IN2(carry[0]), .Q(B_AS[5]) );
  XOR2X1 U5 ( .IN1(B[4]), .IN2(carry[0]), .Q(B_AS[4]) );
  XOR2X1 U6 ( .IN1(B[3]), .IN2(carry[0]), .Q(B_AS[3]) );
  XOR2X1 U7 ( .IN1(B[2]), .IN2(carry[0]), .Q(B_AS[2]) );
  XOR2X1 U8 ( .IN1(B[1]), .IN2(carry[0]), .Q(B_AS[1]) );
  XOR2X1 U9 ( .IN1(B[0]), .IN2(carry[0]), .Q(B_AS[0]) );
endmodule


module alu_DW01_ash_0 ( A, DATA_TC, SH, SH_TC, B );
  input [8:0] A;
  input [7:0] SH;
  output [8:0] B;
  input DATA_TC, SH_TC;
  wire   \temp_int_SH[3] , \temp_int_SH[2] , \temp_int_SH[1] , \MR_int[1][0] ,
         \ML_int[2][0] , \ML_int[5][8] , \ML_int[5][7] , \ML_int[5][6] ,
         \ML_int[5][5] , \ML_int[5][4] , \ML_int[5][3] , \ML_int[5][2] ,
         \ML_int[5][1] , \ML_int[5][0] , n1, n2, n3, n4, n5, n6, n7, n8, n9,
         n10, n11, n12, n13, n14, n15, n16, n17, n18, n19, n20, n21, n22, n23,
         n24;
  assign B[8] = \ML_int[5][8] ;
  assign B[7] = \ML_int[5][7] ;
  assign B[6] = \ML_int[5][6] ;
  assign B[5] = \ML_int[5][5] ;
  assign B[4] = \ML_int[5][4] ;
  assign B[3] = \ML_int[5][3] ;
  assign B[2] = \ML_int[5][2] ;
  assign B[1] = \ML_int[5][1] ;
  assign B[0] = \ML_int[5][0] ;

  AND2X1 U3 ( .IN1(\temp_int_SH[1] ), .IN2(n8), .Q(n1) );
  AND2X1 U4 ( .IN1(\temp_int_SH[2] ), .IN2(n10), .Q(n2) );
  AND2X1 U5 ( .IN1(\temp_int_SH[3] ), .IN2(n9), .Q(n3) );
  INVX0 U6 ( .IN(n17), .QN(n12) );
  INVX0 U7 ( .IN(n19), .QN(n14) );
  INVX0 U8 ( .IN(\temp_int_SH[1] ), .QN(n11) );
  INVX0 U9 ( .IN(\temp_int_SH[3] ), .QN(n15) );
  INVX0 U10 ( .IN(\temp_int_SH[2] ), .QN(n13) );
  AND2X1 U11 ( .IN1(\temp_int_SH[2] ), .IN2(\ML_int[2][0] ), .Q(n4) );
  INVX0 U12 ( .IN(n18), .QN(n10) );
  AND2X1 U13 ( .IN1(\temp_int_SH[2] ), .IN2(n1), .Q(n5) );
  AND2X1 U14 ( .IN1(\temp_int_SH[2] ), .IN2(n7), .Q(n6) );
  INVX0 U15 ( .IN(n20), .QN(n9) );
  INVX0 U16 ( .IN(\MR_int[1][0] ), .QN(n8) );
  AND2X1 U17 ( .IN1(\temp_int_SH[1] ), .IN2(\MR_int[1][0] ), .Q(n7) );
  INVX0 U18 ( .IN(SH[7]), .QN(n16) );
  AND2X1 U19 ( .IN1(n3), .IN2(n16), .Q(\ML_int[5][8] ) );
  AND2X1 U20 ( .IN1(n6), .IN2(n14), .Q(\ML_int[5][7] ) );
  AND2X1 U21 ( .IN1(n5), .IN2(n14), .Q(\ML_int[5][6] ) );
  AND2X1 U22 ( .IN1(n2), .IN2(n14), .Q(\ML_int[5][5] ) );
  AND2X1 U23 ( .IN1(n4), .IN2(n14), .Q(\ML_int[5][4] ) );
  AND2X1 U24 ( .IN1(n7), .IN2(n12), .Q(\ML_int[5][3] ) );
  AND2X1 U25 ( .IN1(n1), .IN2(n12), .Q(\ML_int[5][2] ) );
  NOR2X0 U26 ( .IN1(n17), .IN2(n18), .QN(\ML_int[5][1] ) );
  NAND2X0 U27 ( .IN1(n14), .IN2(n13), .QN(n17) );
  NOR2X0 U28 ( .IN1(n19), .IN2(n20), .QN(\ML_int[5][0] ) );
  NAND2X0 U29 ( .IN1(n15), .IN2(n16), .QN(n19) );
  AO21X1 U30 ( .IN1(SH[3]), .IN2(n21), .IN3(n22), .Q(\temp_int_SH[3] ) );
  NAND2X0 U31 ( .IN1(\ML_int[2][0] ), .IN2(n13), .QN(n20) );
  AO21X1 U32 ( .IN1(SH[2]), .IN2(n21), .IN3(n22), .Q(\temp_int_SH[2] ) );
  NAND2X0 U33 ( .IN1(\MR_int[1][0] ), .IN2(n11), .QN(n18) );
  NOR2X0 U34 ( .IN1(\MR_int[1][0] ), .IN2(\temp_int_SH[1] ), .QN(
        \ML_int[2][0] ) );
  AO21X1 U35 ( .IN1(SH[1]), .IN2(n21), .IN3(n22), .Q(\temp_int_SH[1] ) );
  AO21X1 U36 ( .IN1(SH[0]), .IN2(n21), .IN3(n22), .Q(\MR_int[1][0] ) );
  AND2X1 U37 ( .IN1(n23), .IN2(n16), .Q(n22) );
  OR3X1 U38 ( .IN1(SH[5]), .IN2(SH[6]), .IN3(SH[4]), .Q(n23) );
  NAND2X0 U39 ( .IN1(SH[7]), .IN2(n24), .QN(n21) );
  NAND3X0 U40 ( .IN1(SH[5]), .IN2(SH[4]), .IN3(SH[6]), .QN(n24) );
endmodule


module alu ( in_a, in_b, opcode, alu_out, alu_zero, alu_carry );
  input [7:0] in_a;
  input [7:0] in_b;
  input [3:0] opcode;
  output [7:0] alu_out;
  output alu_zero, alu_carry;
  wire   N94, N95, N96, N97, N98, N99, N100, N101, N102, N103, N104, N105,
         N106, N107, N108, N109, N110, N111, N112, N113, N114, N115, N116,
         N117, N118, N119, N120, N121, N122, N123, N124, N125, N126, N127,
         N128, N129, N130, N131, N132, N133, N134, N135, N136, N137,
         \U3/U1/Z_0 , \U3/U1/Z_1 , \U3/U1/Z_2 , \U3/U1/Z_3 , \U3/U1/Z_4 ,
         \U3/U1/Z_5 , \U3/U1/Z_6 , \U3/U1/Z_7 , \U3/U2/Z_0 , \U3/U2/Z_1 ,
         \U3/U2/Z_2 , \U3/U2/Z_3 , \U3/U2/Z_4 , \U3/U2/Z_5 , \U3/U2/Z_6 ,
         \U3/U2/Z_7 , \U3/U3/Z_0 , n100, n101, n102, n103, n104, n105, n106,
         n107, n108, n109, n110, n111, n112, n113, n114, n115, n116, n117,
         n118, n119, n120, n121, n122, n123, n124, n125, n126, n127, n128,
         n129, n130, n131, n132, n133, n134, n135, n136, n137, n138, n139,
         n140, n141, n142, n143, n144, n145, n146, n147, n148, n149, n150,
         n151, n152, n153, n154, n155, n156, n157, n158, n159, n160, n161,
         n162, n163, n164, n165, n166, n167, n168, n169, n170, n171, n172,
         n173, n174;

  alu_DW01_addsub_0 r30 ( .A({1'b0, \U3/U1/Z_7 , \U3/U1/Z_6 , \U3/U1/Z_5 , 
        \U3/U1/Z_4 , \U3/U1/Z_3 , \U3/U1/Z_2 , \U3/U1/Z_1 , \U3/U1/Z_0 }), .B(
        {1'b0, \U3/U2/Z_7 , \U3/U2/Z_6 , \U3/U2/Z_5 , \U3/U2/Z_4 , \U3/U2/Z_3 , 
        \U3/U2/Z_2 , \U3/U2/Z_1 , \U3/U2/Z_0 }), .CI(1'b0), .ADD_SUB(
        \U3/U3/Z_0 ), .SUM({N135, N134, N133, N132, N131, N130, N129, N128, 
        N127}) );
  alu_DW01_ash_0 sll_50 ( .A({1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 
        1'b1}), .DATA_TC(1'b0), .SH(in_a), .SH_TC(1'b0), .B({N126, N125, N124, 
        N123, N122, N121, N120, N119, N118}) );
  LATCHX1 alu_carry_reg ( .CLK(N136), .D(N137), .Q(alu_carry) );
  INVX0 U120 ( .IN(n105), .QN(n137) );
  INVX0 U121 ( .IN(opcode[1]), .QN(n136) );
  INVX0 U122 ( .IN(opcode[3]), .QN(n138) );
  NOR2X0 U123 ( .IN1(n138), .IN2(opcode[2]), .QN(n103) );
  NAND2X0 U124 ( .IN1(n155), .IN2(n136), .QN(n105) );
  AND2X1 U125 ( .IN1(n103), .IN2(n137), .Q(n125) );
  AND2X1 U126 ( .IN1(opcode[2]), .IN2(n138), .Q(n102) );
  AND2X1 U127 ( .IN1(n102), .IN2(opcode[0]), .Q(n100) );
  AND2X1 U128 ( .IN1(n100), .IN2(n136), .Q(n132) );
  AND3X1 U129 ( .IN1(opcode[1]), .IN2(n155), .IN3(n103), .Q(n133) );
  AND2X1 U130 ( .IN1(n100), .IN2(opcode[1]), .Q(n131) );
  AO22X1 U131 ( .IN1(n174), .IN2(n133), .IN3(N117), .IN4(n131), .Q(n101) );
  AO221X1 U132 ( .IN1(n125), .IN2(in_a[1]), .IN3(N101), .IN4(n132), .IN5(n101), 
        .Q(n108) );
  AND3X1 U133 ( .IN1(opcode[1]), .IN2(n155), .IN3(n102), .Q(n128) );
  AND3X1 U134 ( .IN1(opcode[0]), .IN2(n136), .IN3(n103), .Q(n129) );
  NOR2X0 U135 ( .IN1(opcode[2]), .IN2(opcode[3]), .QN(n106) );
  NOR2X0 U136 ( .IN1(n136), .IN2(n155), .QN(n104) );
  AO222X1 U137 ( .IN1(n106), .IN2(n105), .IN3(n104), .IN4(n103), .IN5(n102), 
        .IN6(n137), .Q(n130) );
  AO222X1 U138 ( .IN1(N109), .IN2(n128), .IN3(N118), .IN4(n129), .IN5(N127), 
        .IN6(n130), .Q(n107) );
  OR2X1 U139 ( .IN1(n108), .IN2(n107), .Q(alu_out[0]) );
  AO22X1 U140 ( .IN1(n173), .IN2(n133), .IN3(N116), .IN4(n131), .Q(n109) );
  AO221X1 U141 ( .IN1(n125), .IN2(in_a[2]), .IN3(N100), .IN4(n132), .IN5(n109), 
        .Q(n111) );
  AO222X1 U142 ( .IN1(N108), .IN2(n128), .IN3(N119), .IN4(n129), .IN5(N128), 
        .IN6(n130), .Q(n110) );
  OR2X1 U143 ( .IN1(n111), .IN2(n110), .Q(alu_out[1]) );
  AO22X1 U144 ( .IN1(n172), .IN2(n133), .IN3(N115), .IN4(n131), .Q(n112) );
  AO221X1 U145 ( .IN1(n125), .IN2(in_a[3]), .IN3(N99), .IN4(n132), .IN5(n112), 
        .Q(n114) );
  AO222X1 U146 ( .IN1(N107), .IN2(n128), .IN3(N120), .IN4(n129), .IN5(N129), 
        .IN6(n130), .Q(n113) );
  OR2X1 U147 ( .IN1(n114), .IN2(n113), .Q(alu_out[2]) );
  AO22X1 U148 ( .IN1(n171), .IN2(n133), .IN3(N114), .IN4(n131), .Q(n115) );
  AO221X1 U149 ( .IN1(n125), .IN2(in_a[4]), .IN3(N98), .IN4(n132), .IN5(n115), 
        .Q(n117) );
  AO222X1 U150 ( .IN1(N106), .IN2(n128), .IN3(N121), .IN4(n129), .IN5(N130), 
        .IN6(n130), .Q(n116) );
  OR2X1 U151 ( .IN1(n117), .IN2(n116), .Q(alu_out[3]) );
  AO22X1 U152 ( .IN1(n170), .IN2(n133), .IN3(N113), .IN4(n131), .Q(n118) );
  AO221X1 U153 ( .IN1(n125), .IN2(in_a[5]), .IN3(N97), .IN4(n132), .IN5(n118), 
        .Q(n120) );
  AO222X1 U154 ( .IN1(N105), .IN2(n128), .IN3(N122), .IN4(n129), .IN5(N131), 
        .IN6(n130), .Q(n119) );
  OR2X1 U155 ( .IN1(n120), .IN2(n119), .Q(alu_out[4]) );
  AO22X1 U156 ( .IN1(n169), .IN2(n133), .IN3(N112), .IN4(n131), .Q(n121) );
  AO221X1 U157 ( .IN1(n125), .IN2(in_a[6]), .IN3(N96), .IN4(n132), .IN5(n121), 
        .Q(n123) );
  AO222X1 U158 ( .IN1(N104), .IN2(n128), .IN3(N123), .IN4(n129), .IN5(N132), 
        .IN6(n130), .Q(n122) );
  OR2X1 U159 ( .IN1(n123), .IN2(n122), .Q(alu_out[5]) );
  AO22X1 U160 ( .IN1(n168), .IN2(n133), .IN3(N111), .IN4(n131), .Q(n124) );
  AO221X1 U161 ( .IN1(n125), .IN2(in_a[7]), .IN3(N95), .IN4(n132), .IN5(n124), 
        .Q(n127) );
  AO222X1 U162 ( .IN1(N103), .IN2(n128), .IN3(N124), .IN4(n129), .IN5(N133), 
        .IN6(n130), .Q(n126) );
  OR2X1 U163 ( .IN1(n127), .IN2(n126), .Q(alu_out[6]) );
  AOI222X1 U164 ( .IN1(N134), .IN2(n130), .IN3(N125), .IN4(n129), .IN5(N102), 
        .IN6(n128), .QN(n135) );
  AOI222X1 U165 ( .IN1(n167), .IN2(n133), .IN3(N94), .IN4(n132), .IN5(N110), 
        .IN6(n131), .QN(n134) );
  NAND2X0 U166 ( .IN1(n135), .IN2(n134), .QN(alu_out[7]) );
  NOR2X0 U167 ( .IN1(n139), .IN2(n140), .QN(alu_zero) );
  OR4X1 U168 ( .IN1(alu_out[1]), .IN2(alu_out[0]), .IN3(alu_out[3]), .IN4(
        alu_out[2]), .Q(n140) );
  OR4X1 U169 ( .IN1(alu_out[5]), .IN2(alu_out[4]), .IN3(alu_out[7]), .IN4(
        alu_out[6]), .Q(n139) );
  NOR2X0 U170 ( .IN1(n141), .IN2(n142), .QN(\U3/U2/Z_7 ) );
  NOR2X0 U171 ( .IN1(n141), .IN2(n143), .QN(\U3/U2/Z_6 ) );
  NOR2X0 U172 ( .IN1(n141), .IN2(n144), .QN(\U3/U2/Z_5 ) );
  NOR2X0 U173 ( .IN1(n141), .IN2(n145), .QN(\U3/U2/Z_4 ) );
  NOR2X0 U174 ( .IN1(n141), .IN2(n146), .QN(\U3/U2/Z_3 ) );
  NOR2X0 U175 ( .IN1(n141), .IN2(n147), .QN(\U3/U2/Z_2 ) );
  NOR2X0 U176 ( .IN1(n141), .IN2(n148), .QN(\U3/U2/Z_1 ) );
  NAND3X0 U177 ( .IN1(n149), .IN2(n150), .IN3(n151), .QN(\U3/U2/Z_0 ) );
  MUX21X1 U178 ( .IN1(n152), .IN2(n153), .S(opcode[1]), .Q(n151) );
  NAND2X0 U179 ( .IN1(n154), .IN2(opcode[0]), .QN(n153) );
  NAND3X0 U180 ( .IN1(n155), .IN2(n138), .IN3(opcode[2]), .QN(n152) );
  OR2X1 U181 ( .IN1(n156), .IN2(n141), .Q(n149) );
  NAND2X0 U182 ( .IN1(n154), .IN2(n157), .QN(n141) );
  XNOR2X1 U183 ( .IN1(opcode[1]), .IN2(n155), .Q(n157) );
  MUX21X1 U184 ( .IN1(n158), .IN2(n159), .S(n167), .Q(\U3/U1/Z_7 ) );
  MUX21X1 U185 ( .IN1(n158), .IN2(n159), .S(n168), .Q(\U3/U1/Z_6 ) );
  MUX21X1 U186 ( .IN1(n158), .IN2(n159), .S(n169), .Q(\U3/U1/Z_5 ) );
  MUX21X1 U187 ( .IN1(n158), .IN2(n159), .S(n170), .Q(\U3/U1/Z_4 ) );
  MUX21X1 U188 ( .IN1(n158), .IN2(n159), .S(n171), .Q(\U3/U1/Z_3 ) );
  MUX21X1 U189 ( .IN1(n158), .IN2(n159), .S(n172), .Q(\U3/U1/Z_2 ) );
  MUX21X1 U190 ( .IN1(n158), .IN2(n159), .S(n173), .Q(\U3/U1/Z_1 ) );
  MUX21X1 U191 ( .IN1(n158), .IN2(n159), .S(n174), .Q(\U3/U1/Z_0 ) );
  NAND2X0 U192 ( .IN1(n147), .IN2(n172), .QN(N99) );
  NAND2X0 U193 ( .IN1(n146), .IN2(n171), .QN(N98) );
  NAND2X0 U194 ( .IN1(n145), .IN2(n170), .QN(N97) );
  NAND2X0 U195 ( .IN1(n144), .IN2(n169), .QN(N96) );
  NAND2X0 U196 ( .IN1(n143), .IN2(n168), .QN(N95) );
  NAND2X0 U197 ( .IN1(n142), .IN2(n167), .QN(N94) );
  NAND2X0 U198 ( .IN1(n160), .IN2(n161), .QN(N137) );
  NAND4X0 U199 ( .IN1(N126), .IN2(opcode[3]), .IN3(n162), .IN4(opcode[0]), 
        .QN(n161) );
  NOR2X0 U200 ( .IN1(opcode[2]), .IN2(opcode[1]), .QN(n162) );
  NAND2X0 U201 ( .IN1(N135), .IN2(n163), .QN(n160) );
  INVX0 U202 ( .IN(n164), .QN(n163) );
  NAND3X0 U203 ( .IN1(opcode[1]), .IN2(n165), .IN3(n164), .QN(N136) );
  NOR2X0 U204 ( .IN1(n158), .IN2(n159), .QN(n164) );
  INVX0 U205 ( .IN(n150), .QN(n159) );
  NAND4X0 U206 ( .IN1(opcode[3]), .IN2(opcode[0]), .IN3(opcode[1]), .IN4(n165), 
        .QN(n150) );
  AO21X1 U207 ( .IN1(n154), .IN2(opcode[0]), .IN3(\U3/U3/Z_0 ), .Q(n158) );
  AND3X1 U208 ( .IN1(n155), .IN2(n138), .IN3(n166), .Q(\U3/U3/Z_0 ) );
  XNOR2X1 U209 ( .IN1(n165), .IN2(opcode[1]), .Q(n166) );
  INVX0 U210 ( .IN(opcode[0]), .QN(n155) );
  NOR2X0 U211 ( .IN1(opcode[2]), .IN2(opcode[3]), .QN(n154) );
  INVX0 U212 ( .IN(opcode[2]), .QN(n165) );
  XNOR2X1 U213 ( .IN1(n156), .IN2(in_a[0]), .Q(N117) );
  XNOR2X1 U214 ( .IN1(n148), .IN2(in_a[1]), .Q(N116) );
  XNOR2X1 U215 ( .IN1(n147), .IN2(in_a[2]), .Q(N115) );
  XNOR2X1 U216 ( .IN1(n146), .IN2(in_a[3]), .Q(N114) );
  XNOR2X1 U217 ( .IN1(n145), .IN2(in_a[4]), .Q(N113) );
  XNOR2X1 U218 ( .IN1(n144), .IN2(in_a[5]), .Q(N112) );
  XNOR2X1 U219 ( .IN1(n143), .IN2(in_a[6]), .Q(N111) );
  XNOR2X1 U220 ( .IN1(n142), .IN2(in_a[7]), .Q(N110) );
  NOR2X0 U221 ( .IN1(n174), .IN2(n156), .QN(N109) );
  NOR2X0 U222 ( .IN1(n173), .IN2(n148), .QN(N108) );
  NOR2X0 U223 ( .IN1(n172), .IN2(n147), .QN(N107) );
  INVX0 U224 ( .IN(in_b[2]), .QN(n147) );
  INVX0 U225 ( .IN(in_a[2]), .QN(n172) );
  NOR2X0 U226 ( .IN1(n171), .IN2(n146), .QN(N106) );
  INVX0 U227 ( .IN(in_b[3]), .QN(n146) );
  INVX0 U228 ( .IN(in_a[3]), .QN(n171) );
  NOR2X0 U229 ( .IN1(n170), .IN2(n145), .QN(N105) );
  INVX0 U230 ( .IN(in_b[4]), .QN(n145) );
  INVX0 U231 ( .IN(in_a[4]), .QN(n170) );
  NOR2X0 U232 ( .IN1(n169), .IN2(n144), .QN(N104) );
  INVX0 U233 ( .IN(in_b[5]), .QN(n144) );
  INVX0 U234 ( .IN(in_a[5]), .QN(n169) );
  NOR2X0 U235 ( .IN1(n168), .IN2(n143), .QN(N103) );
  INVX0 U236 ( .IN(in_b[6]), .QN(n143) );
  INVX0 U237 ( .IN(in_a[6]), .QN(n168) );
  NOR2X0 U238 ( .IN1(n167), .IN2(n142), .QN(N102) );
  INVX0 U239 ( .IN(in_b[7]), .QN(n142) );
  INVX0 U240 ( .IN(in_a[7]), .QN(n167) );
  NAND2X0 U241 ( .IN1(n156), .IN2(n174), .QN(N101) );
  INVX0 U242 ( .IN(in_a[0]), .QN(n174) );
  INVX0 U243 ( .IN(in_b[0]), .QN(n156) );
  NAND2X0 U244 ( .IN1(n148), .IN2(n173), .QN(N100) );
  INVX0 U245 ( .IN(in_a[1]), .QN(n173) );
  INVX0 U246 ( .IN(in_b[1]), .QN(n148) );
endmodule

