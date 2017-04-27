`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    08:54:46 08/29/2016 
// Design Name: 
// Module Name:    mux8 
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
module mux8(
    input [7:0] I,
    input [2:0] S,
    output Y
    );

	// Complete the 8-to-1 mux using AND, OR, NOT description.
	wire n0, n1, n2, n3, n4, n5, n6, n7, sb0, sb1, sb2;
	not u1(sb0, S[0]);
	not u2(sb1, S[1]);
	not u3(sb2, S[2]);
	and u4(n0, sb2, sb1, sb0, I[0]);
	and u5(n1, sb2, sb1, S[0], I[1]);
	and u6(n2, sb2, S[1], sb0, I[2]);
	and u7(n3, sb2, S[1], S[0], I[3]);
	and u8(n4, S[2], sb1, sb0, I[4]);
	and u9(n5, S[2], sb1, S[0], I[5]);
	and u10(n6, S[2], S[1], sb0, I[6]);
	and u11(n7, S[2], S[1], S[0], I[7]);
	or u12(Y, n0, n1, n2, n3, n4, n5, n6, n7);
	
endmodule
