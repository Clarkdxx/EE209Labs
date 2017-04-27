`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    07:27:29 08/31/2016 
// Design Name: 
// Module Name:    reg8e 
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
module reg8e(
    input clk,
    input reset,
    input en,
    input [7:0] d,
    output [7:0] q
    );

	// Use 2 reg4e components to build an 8-bit register w/ enable

reg4e reg4e_a(
	.clk(clk),
   .reset(reset),
   .en(en),
   .d(d[7:4]),
   .q(q[7:4]));
	
reg4e reg4e_b(
	.clk(clk),
   .reset(reset),
   .en(en),
   .d(d[3:0]),
   .q(q[3:0]));



	
endmodule
