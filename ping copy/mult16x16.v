`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    12:35:34 10/26/2016 
// Design Name: 
// Module Name:    mult16x16 
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
module mult16x16(
    input [15:0] a,
    input [15:0] b,
    output [31:0] prod
    );

	assign prod = a*b;

endmodule
