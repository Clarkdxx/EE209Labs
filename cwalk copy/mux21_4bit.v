`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    09:13:11 03/01/2017 
// Design Name: 
// Module Name:    mux21_4bit 
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
module mux21_4bit(
    input [3:0] I0,
    input [3:0] I1,
    input S,
    output [3:0] Y
    );


	assign Y = (S==1) ? I1 : I0;

endmodule
