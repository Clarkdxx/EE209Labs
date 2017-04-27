`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    23:25:49 02/28/2017 
// Design Name: 
// Module Name:    lfsr_fsm 
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
module lfsr_fsm(
	 input clk,
	 input reset,
	 input start,
	 input stop,
	 output running,
	 output shload
    );

wire d0, d1, q0, q1;

assign d1 = (~q1 & q0) | (~start & ~stop & q0);

assign d0 = start | (~stop & q0) | (~q1 & q0);

assign running = q1 & q0;
assign shload = ~q1 & q0; 

dff1 d_0(clk, reset, d0, q0);
dff1 d_1(clk, reset, d1, q1);

endmodule
