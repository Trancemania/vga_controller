`timescale 1ns / 1ps

module testbench;
reg clk = 0;
wire Hsynq;
wire Vsynq;
wire [3:0] Red;
wire [3:0] Green;
wire [3:0] Blue;

top UUT (cle, Hsynq, Vsynq, Red, Green, Blue);

always #5 clk = ~clk;

endmodule
