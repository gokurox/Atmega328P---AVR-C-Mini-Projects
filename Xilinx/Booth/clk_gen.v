`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    21:41:06 11/06/2015 
// Design Name: 
// Module Name:    clk_gen 
// Project Name: 
// Target Devices: 
// Tool versions: 
// Description: 
//
// Dependencies: 
//
// Revision: 
// Revision 0.01 - File Created
// Additional Comments: 
//
//////////////////////////////////////////////////////////////////////////////////
module clk_gen (clk_50M, clk_2Hz);

	input clk_50M;
	output reg clk_2Hz;
	
	reg [20:0] counter;
	
	initial begin
		counter = 0;
		clk_2Hz = 0;
	end
	
	always @(posedge clk_50M) begin
		if (counter < 25000000) begin
			counter = counter + 1;
		end else begin
			counter = 0;
			clk_2Hz = ~clk_2Hz;
		end
	end

endmodule
