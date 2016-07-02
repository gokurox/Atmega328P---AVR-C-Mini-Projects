`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   14:45:09 10/21/2015
// Design Name:   DFF
// Module Name:   /home/gursimran/IIIT-Delhi/ELD/Assignments/Verilog/Reassign_1/reassign1/DFF_test.v
// Project Name:  reassign1
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

module DFF_test;

	// Inputs
	reg in_D;
	reg clk;
	reg reset;

	// Outputs
	wire Q;
	wire QBar;

	// Instantiate the Unit Under Test (UUT)
	DFF uut (
		.Q(Q), 
		.QBar(QBar), 
		.in_D(in_D), 
		.clk(clk), 
		.reset(reset)
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
	
	always begin
		#20 clk = ~clk;
	end
	
	always begin
		#13 in_D = ~in_D;
	end
      
endmodule

