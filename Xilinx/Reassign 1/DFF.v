`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    14:38:00 10/21/2015 
// Design Name: 
// Module Name:    DFF 
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
module DFF (Q, QBar, in_D, clk, reset);

	output reg Q;
	output wire QBar;
	input in_D, clk, reset;
	
	not n1 (QBar, Q);
	
	always @(posedge clk) begin
		if (reset == 1'b0) begin
			Q = in_D;
		end
	end
	
	always @(posedge reset) begin
		Q = 0;
	end

endmodule
