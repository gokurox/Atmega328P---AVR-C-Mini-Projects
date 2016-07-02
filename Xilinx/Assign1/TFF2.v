`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    13:09:59 10/21/2015 
// Design Name: 
// Module Name:    TFF2 
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
module TFF2(out_Q, out_QBar, in_T, clk, reset, in_D);

	output reg out_Q, out_QBar;
	input wire in_D;
	input in_T, clk;
	input reset;
	
	xor x1 (in_D, in_T, out_Q);
	
	DFF dff (in_D, clk, reset, out_Q, out_QBar);
	
	always @(posedge clk) begin
		$display ("Q = ", out_Q);
	end
	
endmodule
