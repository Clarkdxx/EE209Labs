// Verilog test fixture 

`timescale 1ns / 1ps

module cwalk_tb();

// Inputs
   reg reset;
   reg clk;

// Output
   wire walk;
   wire hand;
   wire num_on;
   wire [3:0] num;

// Bidirs

// Instantiate the UUT
   cwalk UUT (
		.reset(reset), 
		.clk(clk), 
		.walk(walk), 
		.hand(hand),
		.num_on(num_on), 
		.num(num)
   );
// Initialize Inputs
	initial begin
		clk = 0;
		reset = 1;
		#105;
		reset = 0;
		#1500;
		$stop();
	end
	
	always #10 clk = ~clk;
	
endmodule
