`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    08:47:31 01/25/2017 
// Design Name: 
// Module Name:    reg4e 
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
module reg4e(
    input clk,
    input reset,
    input en,
    input [3:0] d,
    output [3:0] q
    );

   wire [3:0] d_in;
	
	// Add 2-to-1 mux instantiations (see mux.v)
	// to create the 4-bit register w/ enable

mux mux_0(
	.I0(q[0]),
	.I1(d[0]),
	.S(en),
	.Y(d_in[0])
);

mux mux_1(
	.I0(q[1]),
	.I1(d[1]),
	.S(en),
	.Y(d_in[1])
);

mux mux_2(
	.I0(q[2]),
	.I1(d[2]),
	.S(en),
	.Y(d_in[2])
);
	
mux mux_3(
	.I0(q[3]),
	.I1(d[3]),
	.S(en),
	.Y(d_in[3])
);
	
	dff1 d0(clk, reset, d_in[0], q[0]);

	dff1 d1(clk, reset, d_in[1], q[1]);

	dff1 d2(clk, reset, d_in[2], q[2]);

	dff1 d3(clk, reset, d_in[3], q[3]);

endmodule
