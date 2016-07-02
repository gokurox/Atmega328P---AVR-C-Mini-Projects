`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   14:57:14 10/21/2015
// Design Name:   TFF
// Module Name:   /home/gursimran/IIIT-Delhi/ELD/Assignments/Verilog/Reassign_1/reassign1/TFF_test.v
// Project Name:  reassign1
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: TFF
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module TFF_test;

	// Inputs
	reg in_T;
	reg clk;
	reg reset;

	// Outputs
	wire Q;
	wire QBar;

	// Instantiate the Unit Under Test (UUT)
	TFF uut (
		.Q(Q), 
		.QBar(QBar), 
		.in_T(in_T), 
		.clk(clk), 
		.reset(reset)
	);

	initial begin
		// Initialize Inputs
		in_T = 1;
		clk = 0;
		reset = 0;

		// Wait 100 ns for global reset to finish
		#100;
        
		// Add stimulus here
		reset = 1;
		#5 reset = 0;
	end
	
	always begin
		#20 clk = ~clk;
	end
      
endmodule

