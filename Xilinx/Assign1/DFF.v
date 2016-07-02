`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    16:35:46 10/16/2015 
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
module DFF(
    input wire in_D,
    input wire clk,
	 input wire reset,
    output reg out_Q,
    output reg out_QBar
    );

	initial begin
		$display ("D FLIP FLOP Running");
	end
	
	always @(posedge clk) begin	// At positive edge of clock
		out_Q = in_D;					// Q = D and
		out_QBar = ~in_D;				// QBar = ~D
	end
	
	always @(posedge reset) begin	// At positive edge of reset
		out_Q = 0;						// Q = 0 and
		out_QBar = 1;					// QBar = 1
	end

endmodule
