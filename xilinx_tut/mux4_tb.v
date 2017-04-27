`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   10:36:17 08/20/2016
// Design Name:   mux4
// Module Name:   C:/Users/Mark/Dropbox/EE209/Lab/xilinx_tut_sol/mux4_tb.v
// Project Name:  xilinx_tut_sol
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: mux4
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module mux4_tb;

	// Inputs
	reg [3:0] I0;
	reg [3:0] I1;
	reg S;

	// Outputs
	wire [3:0] Y;

	// Instantiate the Unit Under Test (UUT)
	mux4 uut (
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
		I0 = 7;
		I1 = 8;
		S = 1;
		// expect Y = 8
		#100;
		S = 0;
		// expect Y = 7;

	end
      
endmodule

