`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   13:19:02 10/21/2015
// Design Name:   TFF2
// Module Name:   /home/gursimran/IIIT-Delhi/ELD/Assignments/Verilog/Assignment_1/Assign1/test_TFF2.v
// Project Name:  Assign1
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: TFF2
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module test_TFF2;

	// Inputs
	reg in_T;
	reg clk;
	reg reset;

	// Outputs
	wire out_Q;
	wire out_QBar;
	reg in_D;

	// Instantiate the Unit Under Test (UUT)
	TFF2 uut (
		.out_Q(out_Q), 
		.out_QBar(out_QBar), 
		.in_T(in_T), 
		.clk(clk), 
		.reset(reset),
		.in_D(in_D)
	);

	initial begin
		// Initialize Inputs
		in_T = 1;
		clk = 0;
		reset = 1;
		in_D = 0;
		
		#2 reset = 0;

		// Wait 100 ns for global reset to finish
		#100;
        
		// Add stimulus here

	end
	
	always begin
		#20 clk = ~clk;
	end
      
endmodule

