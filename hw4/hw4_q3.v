`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    20:17:54 09/25/2016 
// Design Name: 
// Module Name:    hw4_q3 
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
module hw4_q3(
    input [4:0] X,
    output [5:0] S
    );
	// Important note:  Constant's can be attaced by writing
	//   1'b0 = Logic 0
	//   1'b1 = Logic 1
	
	// Add ha and fa modules to build the requested design

wire ha0_Cout, ha1_Cout, fa2_Cout, ha3_Cout, fa4_Cout;

ha ha_0(X[0], 1'b1, S[0], ha0_Cout);
ha ha_1(X[1], ha0_Cout, S[1], ha1_Cout);
fa fa_2(X[2], 1'b1, ha1_Cout, S[2], fa2_Cout);
ha ha_3(X[3], fa2_Cout, S[3], ha3_Cout);
fa fa_4(X[4], 1'b1, ha3_Cout, S[4], S[5]);

	
endmodule
