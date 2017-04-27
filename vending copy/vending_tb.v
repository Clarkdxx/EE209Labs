`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   14:35:59 10/12/2016
// Design Name:   vending
// Module Name:   C:/Users/Mark/Dropbox/EE209/Lab/Vending_sol/vending_tb.v
// Project Name:  vending_sol
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: vending
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module vending_tb;

	// Inputs
	reg clk;
	reg reset;
	reg s5;
	reg s10;
	reg s25;
	reg s100;
	reg btnc;
	reg btndc;
	reg btndp;
	reg btns;

	// Outputs
	wire [7:0] m;
	wire [7:0] c;
	wire relq;
	wire reld;
	wire reln;
	wire relc;
	wire reldc;
	wire reldp;
	wire rels;
	wire qcollect;
	wire qrelease;
	wire qinitc;
	wire qchange;

	// Instantiate the Unit Under Test (UUT)
	vending uut (
		.clk(clk), 
		.reset(reset), 
		.s5(s5), 
		.s10(s10), 
		.s25(s25), 
		.s100(s100), 
		.btnc(btnc), 
		.btndc(btndc), 
		.btndp(btndp), 
		.btns(btns), 
		.m(m), 
		.c(c), 
		.relq(relq), 
		.reld(reld), 
		.reln(reln), 
		.relc(relc), 
		.reldc(reldc), 
		.reldp(reldp), 
		.rels(rels), 
		.qcollect(qcollect),
		.qrelease(qrelease),
		.qinitc(qinitc),
		.qchange(qchange)
	);

	always #10 clk = ~clk;
	
// Initialize Inputs
   initial begin
		clk = 0;
		reset = 1;
		s10 = 0;
		s5 = 0;
		s25 = 0;
		btnc = 0;
		btndp = 0;
		btndc = 0;
		btns = 0;
		s100 = 0;
		#55;
		reset = 0;
		#20;  // Note: Each clock cycle is 20ns.
		      //   So this statement delays for a clock cycle
		
		// Enter your stimulus sequence here.
		s100 = 1; //enter 100
		#20
		s100 = 0;
		#20;
		btnc = 1;
		#20;
		btnc = 0;
		#20
		#200; // Leave 200 ns at the end for the change dispenser
		      //  to complete its task.
		s10 = 1;
		#20;
		s10 = 0;
		#20;
		s10 = 1;
		#20;
		s10 = 0;
		#20;
		s5 = 1;
		#20;
		s5 = 0;
		#20;
		s25 = 1;
		#20;
		s25 = 0;
		#20;
		s100 = 1;
		#20;
		s100 = 0;
		#20;
		btndc = 1;
		#20;
		btndc = 0;
		#200;
   end      
endmodule

