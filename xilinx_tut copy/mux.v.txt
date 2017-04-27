`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    10:10:18 08/20/2016 
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

	wire n0, n1, s_b;
	
	not(s_b, S);
	and(n0, I0, s_b);
	and(n1, I1, S);
	or(Y, n0, n1);

endmodule
