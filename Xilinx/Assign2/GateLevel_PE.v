`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    20:54:12 10/19/2015 
// Design Name: 
// Module Name:    GateLevel_PE 
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
module GateLevel_PE(
    input wire in2,
    input wire in1,
    input wire in0,
    output wire out2,
    output wire out1,
    output wire out0
    );

	wire _in2, _in1, _in0;					// Inversions of inputs
	
	not not_1 (_in2, in2);
	not not_2 (_in1, in1);
	not not_3 (_in0, in0);
	
	buf buf_1 (out2, in2);					// out2 = in2
	and and_1 (out1, _in2, in1);			// out1 = _in2 . in1
	and and_2 (out0, _in2, _in1, in0);	// out0 = _in2 . _in1 . in0

endmodule
