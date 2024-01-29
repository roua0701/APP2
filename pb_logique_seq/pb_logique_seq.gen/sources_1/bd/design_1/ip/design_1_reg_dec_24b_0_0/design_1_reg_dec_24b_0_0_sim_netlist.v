// Copyright 1986-2020 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2020.2 (win64) Build 3064766 Wed Nov 18 09:12:45 MST 2020
// Date        : Tue Jan 16 11:58:52 2024
// Host        : gegi-3014-bmwin running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim
//               c:/Users/rosj2103/Downloads/pb_logique_seq/pb_logique_seq.gen/sources_1/bd/design_1/ip/design_1_reg_dec_24b_0_0/design_1_reg_dec_24b_0_0_sim_netlist.v
// Design      : design_1_reg_dec_24b_0_0
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7z010clg400-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "design_1_reg_dec_24b_0_0,reg_dec_24b,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* ip_definition_source = "module_ref" *) 
(* x_core_info = "reg_dec_24b,Vivado 2020.2" *) 
(* NotValidForBitStream *)
module design_1_reg_dec_24b_0_0
   (i_clk,
    i_reset,
    i_load,
    i_en,
    i_dat_bit,
    i_dat_load,
    o_dat);
  (* x_interface_info = "xilinx.com:signal:clock:1.0 i_clk CLK" *) (* x_interface_parameter = "XIL_INTERFACENAME i_clk, ASSOCIATED_RESET i_reset, FREQ_HZ 100000000, FREQ_TOLERANCE_HZ 0, PHASE 0.000, CLK_DOMAIN design_1_clk_100MHz, INSERT_VIP 0" *) input i_clk;
  (* x_interface_info = "xilinx.com:signal:reset:1.0 i_reset RST" *) (* x_interface_parameter = "XIL_INTERFACENAME i_reset, POLARITY ACTIVE_LOW, INSERT_VIP 0" *) input i_reset;
  input i_load;
  input i_en;
  input i_dat_bit;
  input [23:0]i_dat_load;
  output [23:0]o_dat;

  wire i_clk;
  wire i_dat_bit;
  wire [23:0]i_dat_load;
  wire i_en;
  wire i_load;
  wire i_reset;
  wire [23:0]o_dat;

  design_1_reg_dec_24b_0_0_reg_dec_24b U0
       (.i_clk(i_clk),
        .i_dat_bit(i_dat_bit),
        .i_dat_load(i_dat_load),
        .i_en(i_en),
        .i_load(i_load),
        .i_reset(i_reset),
        .o_dat(o_dat));
endmodule

(* ORIG_REF_NAME = "reg_dec_24b" *) 
module design_1_reg_dec_24b_0_0_reg_dec_24b
   (o_dat,
    i_clk,
    i_reset,
    i_dat_load,
    i_load,
    i_dat_bit,
    i_en);
  output [23:0]o_dat;
  input i_clk;
  input i_reset;
  input [23:0]i_dat_load;
  input i_load;
  input i_dat_bit;
  input i_en;

  wire i_clk;
  wire i_dat_bit;
  wire [23:0]i_dat_load;
  wire i_en;
  wire i_load;
  wire i_reset;
  wire [23:0]o_dat;
  wire [23:0]p_1_in;
  wire \q_shift_reg[23]_i_1_n_0 ;

  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \q_shift_reg[0]_i_1 
       (.I0(i_dat_load[0]),
        .I1(i_load),
        .I2(i_dat_bit),
        .O(p_1_in[0]));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \q_shift_reg[10]_i_1 
       (.I0(i_dat_load[10]),
        .I1(i_load),
        .I2(o_dat[9]),
        .O(p_1_in[10]));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \q_shift_reg[11]_i_1 
       (.I0(i_dat_load[11]),
        .I1(i_load),
        .I2(o_dat[10]),
        .O(p_1_in[11]));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \q_shift_reg[12]_i_1 
       (.I0(i_dat_load[12]),
        .I1(i_load),
        .I2(o_dat[11]),
        .O(p_1_in[12]));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \q_shift_reg[13]_i_1 
       (.I0(i_dat_load[13]),
        .I1(i_load),
        .I2(o_dat[12]),
        .O(p_1_in[13]));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \q_shift_reg[14]_i_1 
       (.I0(i_dat_load[14]),
        .I1(i_load),
        .I2(o_dat[13]),
        .O(p_1_in[14]));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \q_shift_reg[15]_i_1 
       (.I0(i_dat_load[15]),
        .I1(i_load),
        .I2(o_dat[14]),
        .O(p_1_in[15]));
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \q_shift_reg[16]_i_1 
       (.I0(i_dat_load[16]),
        .I1(i_load),
        .I2(o_dat[15]),
        .O(p_1_in[16]));
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \q_shift_reg[17]_i_1 
       (.I0(i_dat_load[17]),
        .I1(i_load),
        .I2(o_dat[16]),
        .O(p_1_in[17]));
  (* SOFT_HLUTNM = "soft_lutpair9" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \q_shift_reg[18]_i_1 
       (.I0(i_dat_load[18]),
        .I1(i_load),
        .I2(o_dat[17]),
        .O(p_1_in[18]));
  (* SOFT_HLUTNM = "soft_lutpair9" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \q_shift_reg[19]_i_1 
       (.I0(i_dat_load[19]),
        .I1(i_load),
        .I2(o_dat[18]),
        .O(p_1_in[19]));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \q_shift_reg[1]_i_1 
       (.I0(i_dat_load[1]),
        .I1(i_load),
        .I2(o_dat[0]),
        .O(p_1_in[1]));
  (* SOFT_HLUTNM = "soft_lutpair10" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \q_shift_reg[20]_i_1 
       (.I0(i_dat_load[20]),
        .I1(i_load),
        .I2(o_dat[19]),
        .O(p_1_in[20]));
  (* SOFT_HLUTNM = "soft_lutpair10" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \q_shift_reg[21]_i_1 
       (.I0(i_dat_load[21]),
        .I1(i_load),
        .I2(o_dat[20]),
        .O(p_1_in[21]));
  (* SOFT_HLUTNM = "soft_lutpair11" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \q_shift_reg[22]_i_1 
       (.I0(i_dat_load[22]),
        .I1(i_load),
        .I2(o_dat[21]),
        .O(p_1_in[22]));
  LUT2 #(
    .INIT(4'hE)) 
    \q_shift_reg[23]_i_1 
       (.I0(i_load),
        .I1(i_en),
        .O(\q_shift_reg[23]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair11" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \q_shift_reg[23]_i_2 
       (.I0(i_dat_load[23]),
        .I1(i_load),
        .I2(o_dat[22]),
        .O(p_1_in[23]));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \q_shift_reg[2]_i_1 
       (.I0(i_dat_load[2]),
        .I1(i_load),
        .I2(o_dat[1]),
        .O(p_1_in[2]));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \q_shift_reg[3]_i_1 
       (.I0(i_dat_load[3]),
        .I1(i_load),
        .I2(o_dat[2]),
        .O(p_1_in[3]));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \q_shift_reg[4]_i_1 
       (.I0(i_dat_load[4]),
        .I1(i_load),
        .I2(o_dat[3]),
        .O(p_1_in[4]));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \q_shift_reg[5]_i_1 
       (.I0(i_dat_load[5]),
        .I1(i_load),
        .I2(o_dat[4]),
        .O(p_1_in[5]));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \q_shift_reg[6]_i_1 
       (.I0(i_dat_load[6]),
        .I1(i_load),
        .I2(o_dat[5]),
        .O(p_1_in[6]));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \q_shift_reg[7]_i_1 
       (.I0(i_dat_load[7]),
        .I1(i_load),
        .I2(o_dat[6]),
        .O(p_1_in[7]));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \q_shift_reg[8]_i_1 
       (.I0(i_dat_load[8]),
        .I1(i_load),
        .I2(o_dat[7]),
        .O(p_1_in[8]));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \q_shift_reg[9]_i_1 
       (.I0(i_dat_load[9]),
        .I1(i_load),
        .I2(o_dat[8]),
        .O(p_1_in[9]));
  FDCE \q_shift_reg_reg[0] 
       (.C(i_clk),
        .CE(\q_shift_reg[23]_i_1_n_0 ),
        .CLR(i_reset),
        .D(p_1_in[0]),
        .Q(o_dat[0]));
  FDCE \q_shift_reg_reg[10] 
       (.C(i_clk),
        .CE(\q_shift_reg[23]_i_1_n_0 ),
        .CLR(i_reset),
        .D(p_1_in[10]),
        .Q(o_dat[10]));
  FDCE \q_shift_reg_reg[11] 
       (.C(i_clk),
        .CE(\q_shift_reg[23]_i_1_n_0 ),
        .CLR(i_reset),
        .D(p_1_in[11]),
        .Q(o_dat[11]));
  FDCE \q_shift_reg_reg[12] 
       (.C(i_clk),
        .CE(\q_shift_reg[23]_i_1_n_0 ),
        .CLR(i_reset),
        .D(p_1_in[12]),
        .Q(o_dat[12]));
  FDCE \q_shift_reg_reg[13] 
       (.C(i_clk),
        .CE(\q_shift_reg[23]_i_1_n_0 ),
        .CLR(i_reset),
        .D(p_1_in[13]),
        .Q(o_dat[13]));
  FDCE \q_shift_reg_reg[14] 
       (.C(i_clk),
        .CE(\q_shift_reg[23]_i_1_n_0 ),
        .CLR(i_reset),
        .D(p_1_in[14]),
        .Q(o_dat[14]));
  FDCE \q_shift_reg_reg[15] 
       (.C(i_clk),
        .CE(\q_shift_reg[23]_i_1_n_0 ),
        .CLR(i_reset),
        .D(p_1_in[15]),
        .Q(o_dat[15]));
  FDCE \q_shift_reg_reg[16] 
       (.C(i_clk),
        .CE(\q_shift_reg[23]_i_1_n_0 ),
        .CLR(i_reset),
        .D(p_1_in[16]),
        .Q(o_dat[16]));
  FDCE \q_shift_reg_reg[17] 
       (.C(i_clk),
        .CE(\q_shift_reg[23]_i_1_n_0 ),
        .CLR(i_reset),
        .D(p_1_in[17]),
        .Q(o_dat[17]));
  FDCE \q_shift_reg_reg[18] 
       (.C(i_clk),
        .CE(\q_shift_reg[23]_i_1_n_0 ),
        .CLR(i_reset),
        .D(p_1_in[18]),
        .Q(o_dat[18]));
  FDCE \q_shift_reg_reg[19] 
       (.C(i_clk),
        .CE(\q_shift_reg[23]_i_1_n_0 ),
        .CLR(i_reset),
        .D(p_1_in[19]),
        .Q(o_dat[19]));
  FDCE \q_shift_reg_reg[1] 
       (.C(i_clk),
        .CE(\q_shift_reg[23]_i_1_n_0 ),
        .CLR(i_reset),
        .D(p_1_in[1]),
        .Q(o_dat[1]));
  FDCE \q_shift_reg_reg[20] 
       (.C(i_clk),
        .CE(\q_shift_reg[23]_i_1_n_0 ),
        .CLR(i_reset),
        .D(p_1_in[20]),
        .Q(o_dat[20]));
  FDCE \q_shift_reg_reg[21] 
       (.C(i_clk),
        .CE(\q_shift_reg[23]_i_1_n_0 ),
        .CLR(i_reset),
        .D(p_1_in[21]),
        .Q(o_dat[21]));
  FDCE \q_shift_reg_reg[22] 
       (.C(i_clk),
        .CE(\q_shift_reg[23]_i_1_n_0 ),
        .CLR(i_reset),
        .D(p_1_in[22]),
        .Q(o_dat[22]));
  FDCE \q_shift_reg_reg[23] 
       (.C(i_clk),
        .CE(\q_shift_reg[23]_i_1_n_0 ),
        .CLR(i_reset),
        .D(p_1_in[23]),
        .Q(o_dat[23]));
  FDCE \q_shift_reg_reg[2] 
       (.C(i_clk),
        .CE(\q_shift_reg[23]_i_1_n_0 ),
        .CLR(i_reset),
        .D(p_1_in[2]),
        .Q(o_dat[2]));
  FDCE \q_shift_reg_reg[3] 
       (.C(i_clk),
        .CE(\q_shift_reg[23]_i_1_n_0 ),
        .CLR(i_reset),
        .D(p_1_in[3]),
        .Q(o_dat[3]));
  FDCE \q_shift_reg_reg[4] 
       (.C(i_clk),
        .CE(\q_shift_reg[23]_i_1_n_0 ),
        .CLR(i_reset),
        .D(p_1_in[4]),
        .Q(o_dat[4]));
  FDCE \q_shift_reg_reg[5] 
       (.C(i_clk),
        .CE(\q_shift_reg[23]_i_1_n_0 ),
        .CLR(i_reset),
        .D(p_1_in[5]),
        .Q(o_dat[5]));
  FDCE \q_shift_reg_reg[6] 
       (.C(i_clk),
        .CE(\q_shift_reg[23]_i_1_n_0 ),
        .CLR(i_reset),
        .D(p_1_in[6]),
        .Q(o_dat[6]));
  FDCE \q_shift_reg_reg[7] 
       (.C(i_clk),
        .CE(\q_shift_reg[23]_i_1_n_0 ),
        .CLR(i_reset),
        .D(p_1_in[7]),
        .Q(o_dat[7]));
  FDCE \q_shift_reg_reg[8] 
       (.C(i_clk),
        .CE(\q_shift_reg[23]_i_1_n_0 ),
        .CLR(i_reset),
        .D(p_1_in[8]),
        .Q(o_dat[8]));
  FDCE \q_shift_reg_reg[9] 
       (.C(i_clk),
        .CE(\q_shift_reg[23]_i_1_n_0 ),
        .CLR(i_reset),
        .D(p_1_in[9]),
        .Q(o_dat[9]));
endmodule
`ifndef GLBL
`define GLBL
`timescale  1 ps / 1 ps

module glbl ();

    parameter ROC_WIDTH = 100000;
    parameter TOC_WIDTH = 0;
    parameter GRES_WIDTH = 10000;
    parameter GRES_START = 10000;

//--------   STARTUP Globals --------------
    wire GSR;
    wire GTS;
    wire GWE;
    wire PRLD;
    wire GRESTORE;
    tri1 p_up_tmp;
    tri (weak1, strong0) PLL_LOCKG = p_up_tmp;

    wire PROGB_GLBL;
    wire CCLKO_GLBL;
    wire FCSBO_GLBL;
    wire [3:0] DO_GLBL;
    wire [3:0] DI_GLBL;
   
    reg GSR_int;
    reg GTS_int;
    reg PRLD_int;
    reg GRESTORE_int;

//--------   JTAG Globals --------------
    wire JTAG_TDO_GLBL;
    wire JTAG_TCK_GLBL;
    wire JTAG_TDI_GLBL;
    wire JTAG_TMS_GLBL;
    wire JTAG_TRST_GLBL;

    reg JTAG_CAPTURE_GLBL;
    reg JTAG_RESET_GLBL;
    reg JTAG_SHIFT_GLBL;
    reg JTAG_UPDATE_GLBL;
    reg JTAG_RUNTEST_GLBL;

    reg JTAG_SEL1_GLBL = 0;
    reg JTAG_SEL2_GLBL = 0 ;
    reg JTAG_SEL3_GLBL = 0;
    reg JTAG_SEL4_GLBL = 0;

    reg JTAG_USER_TDO1_GLBL = 1'bz;
    reg JTAG_USER_TDO2_GLBL = 1'bz;
    reg JTAG_USER_TDO3_GLBL = 1'bz;
    reg JTAG_USER_TDO4_GLBL = 1'bz;

    assign (strong1, weak0) GSR = GSR_int;
    assign (strong1, weak0) GTS = GTS_int;
    assign (weak1, weak0) PRLD = PRLD_int;
    assign (strong1, weak0) GRESTORE = GRESTORE_int;

    initial begin
	GSR_int = 1'b1;
	PRLD_int = 1'b1;
	#(ROC_WIDTH)
	GSR_int = 1'b0;
	PRLD_int = 1'b0;
    end

    initial begin
	GTS_int = 1'b1;
	#(TOC_WIDTH)
	GTS_int = 1'b0;
    end

    initial begin 
	GRESTORE_int = 1'b0;
	#(GRES_START);
	GRESTORE_int = 1'b1;
	#(GRES_WIDTH);
	GRESTORE_int = 1'b0;
    end

endmodule
`endif
