`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   23:02:01 10/16/2015
// Design Name:   DFF
// Module Name:   /home/gursimran/IIIT-Delhi/ELD/Assignments/Verilog/Assignment_1/Assign1/test_tff.v
// Project Name:  Assign1
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: DFF
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module test_tff;

	// Inputs
	reg in_D;
	reg clk;
	reg reset;

	// Outputs
	wire out_Q;
	wire out_QBar;

	// Instantiate the Unit Under Test (UUT)
	DFF uut (
		.in_D(in_D), 
		.clk(clk), 
		.reset(reset), 
		.out_Q(out_Q), 
		.out_QBar(out_QBar)
	);

	initial begin
		// Initialize Inputs
		in_D = 0;
		clk = 0;
		reset = 0;

		// Wait 100 ns for global reset to finish
		#100;
        
		// Add stimulus here

	end
      
endmodule

