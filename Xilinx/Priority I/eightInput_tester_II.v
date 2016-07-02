`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   12:26:06 10/22/2015
// Design Name:   eightInput_PE_II
// Module Name:   E:/IIIT-Delhi/Semester III/Courses/ELD/Assignments/PriorityEncoder/eightInput_tester_II.v
// Project Name:  PriorityEncoder
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: eightInput_PE_II
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module eightInput_tester_II;

	// Inputs
	reg in7;
	reg in6;
	reg in5;
	reg in4;
	reg in3;
	reg in2;
	reg in1;
	reg in0;

	// Outputs
	wire out3;
	wire out2;
	wire out1;
	wire out0;

	// Instantiate the Unit Under Test (UUT)
	eightInput_PE_II uut (
		.out3(out3), 
		.out2(out2), 
		.out1(out1), 
		.out0(out0), 
		.in7(in7), 
		.in6(in6), 
		.in5(in5), 
		.in4(in4), 
		.in3(in3), 
		.in2(in2), 
		.in1(in1), 
		.in0(in0)
	);

	initial begin
		// Initialize Inputs
		in7 = 0;
		in6 = 0;
		in5 = 0;
		in4 = 0;
		in3 = 0;
		in2 = 0;
		in1 = 0;
		in0 = 0;

		// Wait 100 ns for global reset to finish
		#100;
        
		// Add stimulus here
	end
	
	integer i;
	initial begin
		for (i = 0; i < 256; i=i+1) begin
			assign {in7, in6, in5, in4, in3, in2, in1, in0} = i;
			#50;
		end
	end
      
endmodule

