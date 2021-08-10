// Copyright 1986-2021 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2020.2.2 (win64) Build 3118627 Tue Feb  9 05:14:06 MST 2021
// Date        : Sun Aug  8 20:47:56 2021
// Host        : DESKTOP-H7PIQVP running 64-bit major release  (build 9200)
// Command     : write_verilog -mode timesim -nolib -sdf_anno true -force -file
//               D:/Workspace/vivado/vga_controller/vga_controller.sim/sim_1/synth/timing/xsim/top_time_synth.v
// Design      : top
// Purpose     : This verilog netlist is a timing simulation representation of the design and should not be modified or
//               synthesized. Please ensure that this netlist is used with the corresponding SDF file.
// Device      : xc7a35tlftg256-2L
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps
`define XIL_TIMING

(* NotValidForBitStream *)
module top
   (clk,
    Hsynq,
    Vsynq,
    Red,
    Green,
    Blue);
  input clk;
  output Hsynq;
  output Vsynq;
  output [3:0]Red;
  output [3:0]Green;
  output [3:0]Blue;

  wire [3:0]Blue;
  wire [3:0]Green;
  wire Hsynq;
  wire [3:0]Red;
  wire Vsynq;

initial begin
 $sdf_annotate("top_time_synth.sdf",,,,"tool_control");
end
  OBUF \Blue_OBUF[0]_inst 
       (.I(1'b0),
        .O(Blue[0]));
  OBUF \Blue_OBUF[1]_inst 
       (.I(1'b0),
        .O(Blue[1]));
  OBUF \Blue_OBUF[2]_inst 
       (.I(1'b0),
        .O(Blue[2]));
  OBUF \Blue_OBUF[3]_inst 
       (.I(1'b0),
        .O(Blue[3]));
  OBUF \Green_OBUF[0]_inst 
       (.I(1'b0),
        .O(Green[0]));
  OBUF \Green_OBUF[1]_inst 
       (.I(1'b0),
        .O(Green[1]));
  OBUF \Green_OBUF[2]_inst 
       (.I(1'b0),
        .O(Green[2]));
  OBUF \Green_OBUF[3]_inst 
       (.I(1'b0),
        .O(Green[3]));
  OBUF Hsynq_OBUF_inst
       (.I(1'b1),
        .O(Hsynq));
  OBUF \Red_OBUF[0]_inst 
       (.I(1'b0),
        .O(Red[0]));
  OBUF \Red_OBUF[1]_inst 
       (.I(1'b0),
        .O(Red[1]));
  OBUF \Red_OBUF[2]_inst 
       (.I(1'b0),
        .O(Red[2]));
  OBUF \Red_OBUF[3]_inst 
       (.I(1'b0),
        .O(Red[3]));
  OBUF Vsynq_OBUF_inst
       (.I(1'b1),
        .O(Vsynq));
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
