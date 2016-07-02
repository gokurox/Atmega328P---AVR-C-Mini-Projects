`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   23:04:02 10/16/2015
// Design Name:   t
// Module Name:   /home/gursimran/IIIT-Delhi/ELD/Assignments/Verilog/Assignment_1/Assign1/test2.v
// Project Name:  Assign1
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: t
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module test2;

	// Inputs
	reg t;
	reg c;

	// Outputs
	wire q;
	wire q1;

	// Instantiate the Unit Under Test (UUT)
	t uut (
		.q(q), 
		.q1(q1), 
		.t(t), 
		.c(c)
	);

	initial begin
		// Initialize Inputs
		t = 1;
		c = 0;

		// Wait 100 ns for global reset to finish
		#100;
        
		// Add stimulus here

	end
	always begin
		#10 c = ~c;
	end
      
endmodule

