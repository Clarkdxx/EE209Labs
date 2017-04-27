`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   07:13:46 08/30/2016
// Design Name:   mmind
// Module Name:   C:/Users/Mark/Dropbox/EE209/Lab/mmind1_sol/mmind_tb.v
// Project Name:  mmind
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: mmind
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module mmind_tb;

	// Inputs
	reg clk;
	reg reset;
	reg setans_btn;
	reg guess_btn;
	reg [7:0] switches;

	// Outputs
	wire ca;
	wire cb;
	wire cc;
	wire cd;
	wire ce;
	wire cf;
	wire cg;

	// Instantiate the Unit Under Test (UUT)
	mmind uut (
		.clk(clk), 
		.reset(reset), 
		.setans_btn(setans_btn), 
		.guess_btn(guess_btn), 
		.switches(switches), 
		.ca(ca), 
		.cb(cb), 
		.cc(cc), 
		.cd(cd), 
		.ce(ce), 
		.cf(cf), 
		.cg(cg)
	);

	task wait_n;
	input [31:0] n;
	integer i;
	begin
		for(i=0; i < n; i=i+1)
		begin
			wait(!clk);
			wait(clk);
		end
	end
	endtask
	always #5 clk <= ~clk;
	
	initial begin
		// Initialize Inputs
		clk = 0;
		reset = 1;
		setans_btn = 0;
		guess_btn = 0;
		switches = 0;

		// Wait 100 ns for global reset to finish
		#100;
		
		// Add stimulus here
		reset =0;
		switches = 8'hc3;
		wait_n(1);
		setans_btn = 1;
		wait_n(2);
		setans_btn = 0;
		switches = 8'hff;
		guess_btn = 1;
		wait_n(1);
		guess_btn = 0;
		wait_n(10);
		reset = 1;
		wait_n(2);
		
		
		
		
	end
      
endmodule

