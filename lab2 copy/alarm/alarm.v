`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    21:55:19 08/27/2016 
// Design Name: 
// Module Name:    alarm_top 
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
module alarm(
    input N,
    input X,
    input W,
    input D,
    input G,
    output A
    );

	// Complete the design of the home alarm system
	wire n1, n2, n3, n4, sb1, sb2;
	not u1(sb, X);
	and u2(n1, W, D, G);
	not u3(sb2, n1);
	and u4(A, sb2, sb, N);
	
	
	

endmodule
