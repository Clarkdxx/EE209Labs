`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    10:06:30 10/24/2008 
// Design Name: 
// Module Name:    sevenseg_decoder 
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
module sevenseg_decoder(
    input I3,
    input I2,
    input I1,
    input I0,
    output A,
    output B,
    output C,
    output D,
    output E,
    output F,
    output G
    );

	wire [3:0] digit;
	wire sb0, sb1, sb2, sb3;
	wire m0, m1, m2, m3, m4, m5, m6, m7, m8, m9;
	
	not u0(sb0, I0);
	not u1(sb1, I1);
	not u2(sb2, I2);
	not u3(sb3, I3);
	
	and u4(m0, sb3, sb2, sb1, sb0);
	and u5(m1, sb3, sb2, sb1, I0);
	and u6(m2, sb3, sb2, I1, sb0);
	and u7(m3, sb3, sb2, I1, I0);
	and u8(m4, sb3, I2, sb1, sb0);
	and u9(m5, sb3, I2, sb1, I0);
	and u10(m6, sb3, I2, I1, sb0);
	and u11(m7, sb3, I2, I1, I0);
	and u12(m8, I3, sb2, sb1, sb0);
	and u13(m9, I3, sb2, sb1, I0);
	
	nor u14(A, m0, m2, m3, m5, m6, m7, m8, m9);
	nor u15(B, m0, m1, m2, m3, m4, m7, m8, m9);
	nor u16(C, m0, m1, m3, m4, m5, m6, m7, m8, m9);
	nor u17(D, m0, m2, m3, m5, m6, m8, m9);
	nor u18(E, m0, m2, m6, m8);
	nor u19(F, m0, m4, m5, m6, m8, m9);
	nor u20(G, m2, m3, m4, m5, m6, m8, m9);
	
	/*
	wire M2, M4, M5, M6, M1, M7, M3, M0;
	or u4(M2, I3, I2, sb1, I0);
	or u5(M4, I3, sb2, I1, I0);
	and (A, M2, M4);
	
	or u6(M5, I3, sb2, I1, sb0);
	or u7(M6, I3, sb2, sb1, I0);
	and u8(B, M5, M6);
	
	assign C = M2;
	
	or u9(M1, I3, I2, I1, sb0);
	or u10(M7, I3, sb2, sb1, sb0);
	and u11(D, M1, M4, M7);
	
	and u12(m0, sb3, sb2, sb1, sb0);
	and u13(m2, sb3, sb2, sb1, I0);
	and u14(m6, sb3, I2, I1, sb0);
	and u15(m8, I3, sb2, sb1, sb0);
	nor u16(E, m0, m2, m6, m8);
	
	or u17(M3, I3, I2, sb1, sb0);
	and u18(F, M1, M2, M3, M7);
	
	or u19(M0, I3, I2, I1, I0);
	and u20(G, M0, M1, M7);*/
	
	
	
endmodule
