// Copyright 1986-2020 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2020.2 (win64) Build 3064766 Wed Nov 18 09:12:45 MST 2020
// Date        : Tue Jan 16 11:58:52 2024
// Host        : gegi-3014-bmwin running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim
//               c:/Users/rosj2103/Downloads/pb_logique_seq/pb_logique_seq.gen/sources_1/bd/design_1/ip/design_1_compteur_nbits_0_1/design_1_compteur_nbits_0_1_sim_netlist.v
// Design      : design_1_compteur_nbits_0_1
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7z010clg400-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "design_1_compteur_nbits_0_1,compteur_nbits,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* ip_definition_source = "module_ref" *) 
(* x_core_info = "compteur_nbits,Vivado 2020.2" *) 
(* NotValidForBitStream *)
module design_1_compteur_nbits_0_1
   (clk,
    i_en,
    reset,
    o_val_cpt);
  (* x_interface_info = "xilinx.com:signal:clock:1.0 clk CLK" *) (* x_interface_parameter = "XIL_INTERFACENAME clk, ASSOCIATED_RESET reset, FREQ_HZ 100000000, FREQ_TOLERANCE_HZ 0, PHASE 0.000, CLK_DOMAIN design_1_clk_100MHz, INSERT_VIP 0" *) input clk;
  input i_en;
  (* x_interface_info = "xilinx.com:signal:reset:1.0 reset RST" *) (* x_interface_parameter = "XIL_INTERFACENAME reset, POLARITY ACTIVE_LOW, INSERT_VIP 0" *) input reset;
  output [6:0]o_val_cpt;

  wire clk;
  wire i_en;
  wire [6:0]o_val_cpt;
  wire reset;

  design_1_compteur_nbits_0_1_compteur_nbits U0
       (.clk(clk),
        .i_en(i_en),
        .out(o_val_cpt),
        .reset(reset));
endmodule

(* ORIG_REF_NAME = "compteur_nbits" *) 
module design_1_compteur_nbits_0_1_compteur_nbits
   (out,
    i_en,
    clk,
    reset);
  output [6:0]out;
  input i_en;
  input clk;
  input reset;

  wire clk;
  wire \d_val_cpt[6]_i_2_n_0 ;
  wire i_en;
  wire [6:0]out;
  wire [6:0]plusOp;
  wire reset;

  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT1 #(
    .INIT(2'h1)) 
    \d_val_cpt[0]_i_1 
       (.I0(out[0]),
        .O(plusOp[0]));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \d_val_cpt[1]_i_1 
       (.I0(out[0]),
        .I1(out[1]),
        .O(plusOp[1]));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT3 #(
    .INIT(8'h78)) 
    \d_val_cpt[2]_i_1 
       (.I0(out[0]),
        .I1(out[1]),
        .I2(out[2]),
        .O(plusOp[2]));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT4 #(
    .INIT(16'h7F80)) 
    \d_val_cpt[3]_i_1 
       (.I0(out[1]),
        .I1(out[0]),
        .I2(out[2]),
        .I3(out[3]),
        .O(plusOp[3]));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT5 #(
    .INIT(32'h7FFF8000)) 
    \d_val_cpt[4]_i_1 
       (.I0(out[2]),
        .I1(out[0]),
        .I2(out[1]),
        .I3(out[3]),
        .I4(out[4]),
        .O(plusOp[4]));
  LUT6 #(
    .INIT(64'h7FFFFFFF80000000)) 
    \d_val_cpt[5]_i_1 
       (.I0(out[3]),
        .I1(out[1]),
        .I2(out[0]),
        .I3(out[2]),
        .I4(out[4]),
        .I5(out[5]),
        .O(plusOp[5]));
  LUT3 #(
    .INIT(8'h78)) 
    \d_val_cpt[6]_i_1 
       (.I0(\d_val_cpt[6]_i_2_n_0 ),
        .I1(out[5]),
        .I2(out[6]),
        .O(plusOp[6]));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT5 #(
    .INIT(32'h80000000)) 
    \d_val_cpt[6]_i_2 
       (.I0(out[4]),
        .I1(out[2]),
        .I2(out[0]),
        .I3(out[1]),
        .I4(out[3]),
        .O(\d_val_cpt[6]_i_2_n_0 ));
  FDCE \d_val_cpt_reg[0] 
       (.C(clk),
        .CE(i_en),
        .CLR(reset),
        .D(plusOp[0]),
        .Q(out[0]));
  FDCE \d_val_cpt_reg[1] 
       (.C(clk),
        .CE(i_en),
        .CLR(reset),
        .D(plusOp[1]),
        .Q(out[1]));
  FDCE \d_val_cpt_reg[2] 
       (.C(clk),
        .CE(i_en),
        .CLR(reset),
        .D(plusOp[2]),
        .Q(out[2]));
  FDCE \d_val_cpt_reg[3] 
       (.C(clk),
        .CE(i_en),
        .CLR(reset),
        .D(plusOp[3]),
        .Q(out[3]));
  FDCE \d_val_cpt_reg[4] 
       (.C(clk),
        .CE(i_en),
        .CLR(reset),
        .D(plusOp[4]),
        .Q(out[4]));
  FDCE \d_val_cpt_reg[5] 
       (.C(clk),
        .CE(i_en),
        .CLR(reset),
        .D(plusOp[5]),
        .Q(out[5]));
  FDCE \d_val_cpt_reg[6] 
       (.C(clk),
        .CE(i_en),
        .CLR(reset),
        .D(plusOp[6]),
        .Q(out[6]));
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
