`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    07:27:50 10/27/2016 
// Design Name: 
// Module Name:    compeq16 
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
module compeq16(
    input [15:0] a,
    input [15:0] b,
    output eq
    );

	assign eq = (a == b);
endmodule
