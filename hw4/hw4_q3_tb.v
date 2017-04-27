// Verilog test fixture created from schematic C:\Users\Mark Redekopp\Documents\XilinxMaterials\ee101_hw5\ee101_hw5_q4.sch - Thu Oct 04 10:33:13 2012

`timescale 1ns / 1ps

module hw4q3_tb();

// Inputs
   reg [4:0] X;

// Output
   wire [5:0] S;

// Bidirs

// Instantiate the UUT
   hw4_q3 UUT (
		.X(X), 
		.S(S)
   );
// Initialize Inputs
   initial begin
		X = 0;
		#200;
		X = 5;
		#50;
		X = 31;
		#50;
		X = 10;
		#50;
		X = 16;
		#50;
		X = 23;
		#50;
		X = 9;
		#50;
		X = 18;
		#50;
	end
endmodule
