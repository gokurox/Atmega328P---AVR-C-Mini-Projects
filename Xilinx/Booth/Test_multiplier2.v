`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   21:04:26 11/06/2015
// Design Name:   Booth_Multiplier_II
// Module Name:   /home/gursimran/Documents/Xilinx Projects/Booth_Multiplier/Test_multiplier2.v
// Project Name:  Booth_Multiplier
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: Booth_Multiplier_II
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module Test_multiplier2;

	// Inputs
	wire [7:0] product;
	reg [3:0] multiplicand;
	reg [3:0] multiplier;
	reg clock;
	reg start;
	wire busy;

	// Instantiate the Unit Under Test (UUT)
	Booth_Multiplier_II uut (
		.product(product), 
		.multiplicand(multiplicand), 
		.multiplier(multiplier), 
		.clock(clock), 
		.start(start), 
		.busy(busy)
	);

	initial begin
		// Initialize Inputs
		
		multiplicand = -3;
		multiplier = 7;
		clock = 0;
		start = 0;
		

		// Wait 100 ns for global reset to finish
		#100;
        
		// Add stimulus here

	end
      
endmodule

