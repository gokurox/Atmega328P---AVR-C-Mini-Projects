`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    12:16:13 10/22/2015 
// Design Name: 
// Module Name:    eightInput_PE_II 
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
module eightInput_PE_II (out3, out2, out1, out0,
		in7, in6, in5, in4, in3, in2, in1, in0);
	
	output reg out3, out2, out1, out0;
	input wire in7, in6, in5, in4, in3, in2, in1, in0;
	
	always @ (in7 or in6 or in5 or in4 or in3 or in2 or in1 or in0) begin
		if (in7) begin
			assign {out3, out2, out1, out0} = 4'b1000;
		end else if (in6) begin
			assign {out3, out2, out1, out0} = 4'b0111;
		end else if (in5) begin
			assign {out3, out2, out1, out0} = 4'b0110;
		end else if (in4) begin
			assign {out3, out2, out1, out0} = 4'b0101;
		end else if (in3) begin
			assign {out3, out2, out1, out0} = 4'b0100;
		end else if (in2) begin
			assign {out3, out2, out1, out0} = 4'b0011;
		end else if (in1) begin
			assign {out3, out2, out1, out0} = 4'b0010;
		end else if (in0) begin
			assign {out3, out2, out1, out0} = 4'b0001;
		end else begin
			assign {out3, out2, out1, out0} = 4'b0000;
		end
	end

endmodule
