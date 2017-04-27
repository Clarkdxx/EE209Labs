`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    08:37:24 01/25/2017 
// Design Name: 
// Module Name:    inc8 
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
module inc4(
    input [3:0] x,
    output [3:0] f
    );

	// Replace the behavioral description below for your 4-bit incrementer 
	// with AND, OR, NOT, XOR, etc. operations for each output bit. 
	
	//  You may NOT use this behavioral description. 
	// assign f = x+1;
	
	assign f[3] = (x[3] | x[1]) & (x[3] | x[2]) & (x[3] | x[0]) & (~x[3] | ~x[2] | ~x[1] | ~x[0]);
	assign f[2] = (x[2] & ~x[1]) | (x[2] & ~x[0]) | (~x[2] & x[1] & x[0]);
	assign f[1] = (~x[1] & x[0]) | (x[1] & ~x[0]);
	assign f[0] = ~x[0];
	/*
	wire sb3, sb2, sb1, sb0;
	wire m0, m1, m2, m3, m4, m5, m6, m7, m8, m9, m10, m11, m12, m13, m14, m15;
	
	not u0(sb3, x[3]);
	not u1(sb2, x[2]);
	not u2(sb1, x[1]);
	not u3(sb0, x[0]);
	
	and u4(m0, sb3, sb2, sb1, sb0);
	and u5(m1, sb3, sb2, sb1, x[0]);
	and u6(m2, sb3, sb2, x[1], sb0);
	and u7(m3, sb3, sb2, x[1], x[0]);
	and u8(m4, sb3, x[2], sb1, sb0);
	and u9(m5, sb3, x[2], sb1, x[0]);
	and u10(m6, sb3, x[2], x[1], sb0);
	and u11(m7, sb3, x[2], x[1], x[0]);
	and u12(m8, x[3], sb2, sb1, sb0);
	and u13(m9, x[3], sb2, sb1, x[0]);
	and u14(m10, x[3], sb2, x[1], sb0);
	and u15(m11, x[3], sb2, x[1], x[0]);
	and u16(m12, x[3], x[2], sb1, sb0);
	and u17(m13, x[3], x[2], sb1, x[0]);
	and u18(m14, x[3], x[2], x[1], sb0);
	and u19(m15, x[3], x[2], x[1], x[0]);
	
	or u20(f[3], m7, m8, m9, m10, m11, m12, m13, m14);
	or u21(f[2], m3, m4, m5, m6, m11, m12, m13, m14);
	or u22(f[1], m1, m2, m5, m6, m9, m10, m13, m14);
	or u23(f[0], m0, m2, m4, m6, m8, m10, m12, m14);*/
	
endmodule
