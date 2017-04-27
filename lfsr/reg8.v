`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    07:27:29 08/31/2016 
// Design Name: 
// Module Name:    reg8 
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
module reg8(
    input clk,
    input reset,
    input [7:0] d,
    output [7:0] q
    );

	dff1 d0(clk, reset, d[0], q[0]);
	dff1 d1(clk, reset, d[1], q[1]);
	dff1 d2(clk, reset, d[2], q[2]);
	dff1 d3(clk, reset, d[3], q[3]);
	dff1 d4(clk, reset, d[4], q[4]);
	dff1 d5(clk, reset, d[5], q[5]);
	dff1 d6(clk, reset, d[6], q[6]);
	dff1 d7(clk, reset, d[7], q[7]);
	
endmodule
