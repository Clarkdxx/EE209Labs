`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    08:22:47 09/13/2016 
// Design Name: 
// Module Name:    seqdet 
// Project Name: 
// Target Devices: 
// Tool versions: 
// Description: 
//
// Dependencies: 
//
// Revision: 
// Revision 0.01 - File Created
// Additional Comments: 
//
//////////////////////////////////////////////////////////////////////////////////
module seqdet(
    input clk,
    input reset,
    input x,
    output z,
    output q1,
	 output q0
    );

	// Open the dff1.v file to find the input/output order 
	//  to use when instantiating the flip-flops
	wire d1, d0;
	assign d1 = x & q0;
	assign d0 = ~x | (~q1 & q0); 
	
	dff1 dff_0(clk, reset, 0, d0, q0);
	dff1 dff_1(clk, reset, 0, d1, q1);
	
	assign z = ~x & q1 & ~q0;
	
endmodule
