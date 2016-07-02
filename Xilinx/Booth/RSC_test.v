`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   22:33:26 11/01/2015
// Design Name:   Multiplier_1
// Module Name:   /home/gursimran/Documents/Xilinx Projects/Booth_Multiplier/RSC_test.v
// Project Name:  Booth_Multiplier
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: Multiplier_1
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module RSC_test;

	// Inputs
	reg [3:0] A;

	// Outputs
	wire [3:0] B;

	// Instantiate the Unit Under Test (UUT)
	Multiplier_1 uut (
		.A(A), 
		.B(B)
	);

	initial begin
		// Initialize Inputs
		A = 4'b1100;

		// Wait 100 ns for global reset to finish
		#100;
        
		// Add stimulus here
		$display (B);
	end
      
endmodule

