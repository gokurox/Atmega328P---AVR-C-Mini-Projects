`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   21:04:04 10/19/2015
// Design Name:   GateLevel_PE
// Module Name:   /home/gursimran/IIIT-Delhi/ELD/Assignments/Verilog/Assignment_2/PriorityEncoder/PE_test.v
// Project Name:  PriorityEncoder
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: GateLevel_PE
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module PE_test;

	// Inputs
	reg in2;
	reg in1;
	reg in0;

	// Outputs
	wire out2;
	wire out1;
	wire out0;

	// Instantiate the Unit Under Test (UUT)
	DataFlow_PE uut (
		.in2(in2), 
		.in1(in1), 
		.in0(in0), 
		.out2(out2), 
		.out1(out1), 
		.out0(out0)
	);
	
	reg i, j, k;
	
	initial begin
		// Initialize Inputs
		in2 = 0;
		in1 = 0;
		in0 = 0;
		i = 0;
		j = 0;
		k = 0;
		// Wait 100 ns for global reset to finish
		#100;
        
		// Add stimulus here
		
	end
	
	always begin
		in2 = 0; in1 = 0; in0 = 0;
		#20;
		
		in2 = 0; in1 = 0; in0 = 1;
		#20;
		
		in2 = 0; in1 = 1; in0 = 0;
		#20;
		
		in2 = 0; in1 = 1; in0 = 1;
		#20;
		
		in2 = 1; in1 = 0; in0 = 0;
		#20;
		
		in2 = 1; in1 = 0; in0 = 1;
		#20;
		
		in2 = 1; in1 = 1; in0 = 0;
		#20;
		
		in2 = 1; in1 = 1; in0 = 1;
		#20;
		
		#40;
	end
	
	
      
endmodule

