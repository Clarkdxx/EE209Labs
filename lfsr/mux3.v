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
module mux3(
    input I0,
    input I1,
	 input I2,
    input S1,
	 input S0,
    output Y
    );

	wire n0, n1, n2;
	
	assign n0 = I0 & ~S1 & ~S0;
	assign n1 = I1 & ~S1 & S0;
	assign n2 = I2 & S1 & ~S0;
	assign Y = n0 | n1 | n2;

endmodule
