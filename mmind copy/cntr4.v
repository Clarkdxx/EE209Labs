`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    08:42:01 01/25/2017 
// Design Name: 
// Module Name:    cntr4 
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
module cntr4(
    input clk,
    input reset,
    input en,
    output [3:0] q
    );

	// Add the reg4e and inc4 components and wire them 
	//  to form a 4-bit counter
wire [3:0] f_in;

reg4e reg4e_1(
	.clk(clk),
   .reset(reset),
   .en(en),
   .d(f_in),
   .q(q));

inc4 inc4_1(
	.x(q),
	.f(f_in)
);	

	
   
endmodule
