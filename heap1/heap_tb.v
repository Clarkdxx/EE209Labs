`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   17:00:58 04/05/2017
// Design Name:   heap
// Module Name:   C:/Users/Mark/Dropbox/EE209/Lab/heap_sol/heap_tb.v
// Project Name:  heap_sol
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: heap
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module heap_tb;

	// Inputs
	reg clk;
	reg reset;
	reg push;
	reg pop;
	reg [7:0] din;

	// Outputs
	wire [7:0] dout;
	wire [7:0] size;
	wire done;
	wire valid;

   task do_push;
	input [7:0] val;
	begin
		wait(clk)
		#1;
		push = 1;
		din = val;
		#10;
		push = 0;
		wait(done);
		#32;
	end
	endtask

   task do_pop;
	begin
		wait(clk)
		#1;
		pop = 1;
		#10;
		pop = 0;
		wait(done);
		#32;
	end
	endtask
	
	// Instantiate the Unit Under Test (UUT)
	heap uut (
		.clk(clk), 
		.reset(reset), 
		.push(push), 
		.pop(pop), 
		.din(din), 
		.dout(dout), 
		.done(done), 
		.size(size),
		.valid(valid)
	);

	always #5 clk <= ~clk;

	initial begin
		// Initialize Inputs
		clk = 0;
		reset = 1;
		push = 0;
		pop = 0;
		din = 0;

		// Wait 100 ns for global reset to finish
		#100;
      #12;
		reset = 0;
		
		#10;

		do_push(8'd6);

		do_push(8'd4);

		do_push(8'd2);

		//do_pop();

		//do_pop();

		do_push(8'd1);

		do_pop();

		do_pop();
		
		do_push(8'd2);

      #20;
		// Add stimulus here

	end
      
endmodule

