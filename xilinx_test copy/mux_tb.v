`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   19:11:41 01/16/2017
// Design Name:   mux
// Module Name:   U:/Documents/EE209Labs/xilinx_test/mux_tb.v
// Project Name:  xilinx_test
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: mux
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module mux_tb;

	// Inputs
	reg I0;
	reg I1;
	reg S;

	// Outputs
	wire Y;

	// Instantiate the Unit Under Test (UUT)
	mux uut (
		.I0(I0), 
		.I1(I1), 
		.S(S), 
		.Y(Y)
	);

	initial begin
		// Initialize Inputs
		I0 = 0;
		I1 = 0;
		S = 0;

		// Wait 100 ns for global reset to finish
		#100;
        
		// Add stimulus here
		I1 = 1;
		//expect  Y = I0 = 0
		#50;
		S = 1;
		//expect Y = I1 = 1
		#50
		I0 = 1;
		I1 = 0;
		S = 0;
		//expect Y = I0 = 1
		#50;
	end
      
endmodule

