`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    07:27:29 08/31/2016 
// Design Name: 
// Module Name:    reg8e 
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
module mux21_8bit(
    input [7:0] I0,
    input [7:0] I1,
    input S,
    output [7:0] Y
    );

	assign Y = S ? I1 : I0;
endmodule
