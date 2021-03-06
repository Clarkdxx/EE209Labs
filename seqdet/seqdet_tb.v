// Verilog test fixture created from schematic C:\Users\Mark Redekopp\Dropbox\EE209\Lab\seqdet\seqdet.sch - Wed Oct 07 11:48:00 2015

`timescale 1ns / 1ps

module seqdet_tb();

// Inputs
   reg X;
   reg CLK;
   reg RST;

// Output
   wire Z;
	wire [1:0] q;
// Bidirs
	
// Instantiate the UUT
   seqdet UUT (
		.clk(CLK), 
		.reset(RST), 
		.x(X), 
		.z(Z),
		.q1(q[1]),
		.q0(q[0])
   );
	
	localparam T = 20;
	initial CLK = 1;

	always
	begin
		# (T/2);
	   CLK = ~CLK;
	end
		
// Initialize Inputs
     initial begin
		X = 0;
		RST = 1;
		#125;
		RST = 0;
		
		// Add your desired stimulus sequence here 
		//  to verify your state machine operates
		//  correctly
		X = 1;	//1
		#T;
		X = 0;	//2
		#T;
		X = 0;	//3
		#T;
		X = 1;	//4
		#T;
		X = 0;	//5
		#T;
		X = 1;	//4
		#T;
		X = 1;	//6
		#T;
		X = 0;	//7
		#T;
		X = 1;	//4
		#T;
		X = 1; 	//6
		#T;
		X = 1;	//8
		#T;		
	  end
	  
	
endmodule
