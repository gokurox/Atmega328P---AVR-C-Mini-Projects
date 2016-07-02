`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    22:24:05 10/19/2015 
// Design Name: 
// Module Name:    DataFlow_PE 
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
module DataFlow_PE(
    in2,
    in1,
    in0,
    out2,
    out1,
    out0
    );
	 
	input wire in2, in1, in0;
	output reg out2, out1, out0;
	
	assign out2=in2;
	assign out1=(~in2)&(in1);
	assign out0=(~in2)&(~in1)&(in0);

endmodule
