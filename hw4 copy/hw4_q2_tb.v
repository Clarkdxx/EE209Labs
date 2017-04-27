// Verilog test fixture created from schematic C:\Users\Mark Redekopp\Documents\XilinxMaterials\ee101_hw5\ee101_hw5_q3.sch - Thu Oct 04 10:31:25 2012

`timescale 1ns / 1ps

module hw4q2_tb();

// Inputs
   reg X;
   reg Y;
   reg Cin;

// Output
   wire S;
   wire Cout;

   integer i;

// Instantiate the UUT
   hw4_q2 UUT (
		.X(X), 
		.Y(Y), 
		.Cin(Cin), 
		.S(S), 
		.Cout(Cout)
   );
// Initialize Inputs

	initial begin
		X = 0;
		Y = 0;
		Cin = 0;
		
		for(i=0; i < 8; i = i+1)
		begin
			{X,Y,Cin} = i;
			#25;
		end
	end
endmodule
