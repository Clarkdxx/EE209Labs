`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    18:55:35 01/16/2017 
// Design Name: 
// Module Name:    mux 
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
module mux(
    input I0,
    input I1,
    input S,
    output Y
    );

	wire n0, n1, sb;
	
	not u1(sb, S);
	and u2(n0, I0, sb);
	and u3(n1, I1, S);
	or u4(Y, n0, n1);

endmodule
