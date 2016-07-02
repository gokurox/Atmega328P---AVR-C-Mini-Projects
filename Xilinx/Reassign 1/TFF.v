`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    14:51:44 10/21/2015 
// Design Name: 
// Module Name:    TFF 
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
module TFF (Q, QBar, in_T, clk, reset);

	output Q, QBar;
	input in_T, clk, reset;
	wire in_D;
	
	xor x1 (in_D, in_T, Q);
	DFF dff0 (Q, QBar, in_D, clk, reset);

endmodule
