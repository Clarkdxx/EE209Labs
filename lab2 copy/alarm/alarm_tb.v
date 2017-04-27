`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   10:52:50 12/29/2016
// Design Name:   alarm
// Module Name:   C:/Users/Mark/Dropbox/EE209/Lab/alarm/alarm_tb.v
// Project Name:  alarm
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: alarm
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

 module alarm_tb;

	// Inputs
	reg N;
	reg X;
	reg W;
	reg D;
	reg G;

	// Outputs
	wire A;

	// Instantiate the Unit Under Test (UUT)
	alarm uut (
		.N(N), 
		.X(X), 
		.W(W), 
		.D(D), 
		.G(G), 
		.A(A)
	);

	initial begin
		// Initialize Inputs
		N = 0;
		X = 0;
		W = 1;
		D = 1;
		G = 1; // Start with secure (W,D,G=1,1,1)

		// Wait 100 ns for global reset to finish
		#100;
        
		// Add stimulus here
		N = 0; //0
		X = 0;
		W = 0;
		D = 0;
		G = 0;
		
		#10;
		
		N = 0; //1
		X = 0;
		W = 0;
		D = 0;
		G = 1;
		
		#10;
		
		N = 0; //2
		X = 0;
		W = 0;
		D = 1;
		G = 0;
		
		#10;
		
		N = 0; //3
		X = 0;
		W = 0;
		D = 1;
		G = 1;
		
		#10;
		
		N = 0; //4
		X = 0;
		W = 1;
		D = 0;
		G = 0;
		
		#10;
		
		N = 0; //5
		X = 0;
		W = 1;
		D = 0;
		G = 1;
		
		#10;
		
		N = 0; //6
		X = 0;
		W = 1;
		D = 1;
		G = 0;
		
		#10;
		
		N = 0; //7
		X = 0;
		W = 1;
		D = 1;
		G = 1;
		
		#10;
		
		N = 0; //8
		X = 1;
		W = 0;
		D = 0;
		G = 0;
		
		#10;
		
		N = 0; //9
		X = 1;
		W = 0;
		D = 0;
		G = 1;
		
		#10;
		
		N = 0; //10
		X = 1;
		W = 0;
		D = 1;
		G = 0;
		
		#10;
		
		N = 0; //11
		X = 1;
		W = 0;
		D = 1;
		G = 1;
		
		#10;
		
		N = 0; //12
		X = 1;
		W = 1;
		D = 0;
		G = 0;
		
		#10;
		
		N = 0; //13
		X = 1;
		W = 1;
		D = 0;
		G = 1;
		
		#10;
		
		N = 0; //14
		X = 1;
		W = 1;
		D = 1;
		G = 0;
		
		#10;
		
		N = 0; //15
		X = 1;
		W = 1;
		D = 1;
		G = 1;
		
		#10;
		
		N = 1; //16
		X = 0;
		W = 0;
		D = 0;
		G = 0;
		
		#10;
		
		N = 1; //17
		X = 0;
		W = 0;
		D = 0;
		G = 1;
		
		#10;
		
		N = 1; //18
		X = 0;
		W = 0;
		D = 1;
		G = 0;
		
		#10;
		
		N = 1; //19
		X = 0;
		W = 0;
		D = 1;
		G = 1;
		
		#10;
		
		N = 1; //20
		X = 0;
		W = 1;
		D = 0;
		G = 0;
		
		#10;
		
		N = 1; //21
		X = 0;
		W = 1;
		D = 0;
		G = 1;
		
		#10;
		
		N = 1; //22
		X = 0;
		W = 1;
		D = 1;
		G = 0;
		
		#10;
		
		N = 1; //23
		X = 0;
		W = 1;
		D = 1;
		G = 1;
		
		#10;
		
		N = 1; //24
		X = 1;
		W = 0;
		D = 0;
		G = 0;
		
		#10;
		
		N = 1; //25
		X = 1;
		W = 0;
		D = 0;
		G = 1;
		
		#10;
		
		N = 1; //26
		X = 1;
		W = 0;
		D = 1;
		G = 0;
		
		#10;
		
		N = 1; //27
		X = 1;
		W = 0;
		D = 1;
		G = 1;
		
		#10;
		
		N = 1; //28
		X = 1;
		W = 1;
		D = 0;
		G = 0;
		
		#10;
		
		N = 1; //29
		X = 1;
		W = 1;
		D = 0;
		G = 1;
		
		#10;
		
		N = 1; //30
		X = 1;
		W = 1;
		D = 1;
		G = 0;
		
		#10;
		
		N = 1; //31
		X = 1;
		W = 1;
		D = 1;
		G = 1;
		
		#10;
	end
      
endmodule

