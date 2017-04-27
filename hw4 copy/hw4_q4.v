`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    20:23:02 09/25/2016 
// Design Name: 
// Module Name:    hw4_q4 
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
module hw4_q4(
    input [3:0] A,
    input [3:0] B,
    input [3:0] C,
    input [3:0] D,
    output [5:0] F
    );
	
	// You may attach bit slices of a signal/output to another module by simply
	//  writing signal[x:y].  For example if a module outputs 3-bits that we 
	//  want to drive the lower 3-bits of a 5-bit signal F, we could connect
	//  only F[2:0] to the output of that module.  Then another module or gates
	//  could drive F[5], F[4], F[3]

	// Use the 'adder4' modules where possible and then a minimal number of 
	//  'fa' and 'ha' modules to complete the design

wire adder4_0_Out, adder4_1_Out, adder4_2_Out;
wire [3:0] S0; 
wire [3:0] S1; 
wire [3:0] S2; 
wire S4, fa_Out;

adder4 adder4_0(A, B, 1'b0, S0, adder4_0_Out);
adder4 adder4_1(C, D, 1'b0, S1, adder4_1_Out);
adder4 adder4_2(S0, S1, 1'b0, F[3:0], adder4_2_Out);
fa da_0(adder4_0_Out, adder4_1_Out, adder4_2_Out, F[4], F[5]);

endmodule
