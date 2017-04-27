`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    10:34:34 08/20/2016 
// Design Name: 
// Module Name:    mux4 
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
module mux4(
    input [3:0] I0,
    input [3:0] I1,
    input S,
    output [3:0] Y
    );

	mux u0( I0[0], I1[0], S, Y[0]);
	mux u1( I0[1], I1[1], S, Y[1]);
	mux u2( I0[2], I1[2], S, Y[2]);
	mux u3( I0[3], I1[3], S, Y[3]);

endmodule
