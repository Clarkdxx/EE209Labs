// Verilog test fixture created from schematic C:\Users\Mark Redekopp\Documents\XilinxMaterials\ee101_hw5\ee101_hw5_q5.sch - Thu Oct 04 10:36:09 2012

`timescale 1ns / 1ps

module hw4q4_tb();

// Inputs
   reg [3:0] A;
   reg [3:0] B;
   reg [3:0] C;
   reg [3:0] D;
 
// Output
   wire [5:0] F;

// Bidirs

// Instantiate the UUT
   hw4_q4 UUT (
		.A(A), 
		.B(B), 
		.C(C), 
		.D(D), 
		.F(F)
   );
// Initialize Inputs
   initial begin
		A = 0;
		B = 0;
		C = 0;
		D = 0;
		#200;
		A=15; B=1; C=1; D=15;
		#50;
		A=15; B=15; C=15; D=15;
		#50;
		A=14; B=1; C=14; D=1;
		#50;
		A=15; B=15; C=8; D=8;
		#50;
		A=15; B=15; C=4; D=4;
		#50;
		A=8; B=8; C=15; D=15;
		#50;
		A=4; B=4; C=15; D=15;
		#50;
		A=3; B=8; C=7; D=6;
		#50;
		A=1; B=2; C=4; D=8;
		#50;
   end
endmodule
