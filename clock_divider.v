`timescale 1ns / 1ps

//counter based
module clock_divider #(parameter div_value = 1) ( //4999 for 10KHz
input wire clk, // 100MHz
output reg divided_clk = 0 //25MHz
);

//division_value = 100MHz/ (2*desired Frequency) - 1
//counter
integer counter_value = 0; //32 bit wide reg bus

always@ (posedge clk) //sensitivity list // rising edge 0-1
begin
	//keep counting until div_value
	if (counter_value == div_value)
		counter_value <= 0; //reset value
	else
		counter_value <= counter_value + 1; //counter up
end

//divide clock
always@ (posedge clk)
begin
	if(counter_value == div_value)
		divided_clk <= ~divided_clk; //flip the signal
	else
		divided_clk <= divided_clk;
end
endmodule
		