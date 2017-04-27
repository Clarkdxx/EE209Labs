`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    09:14:03 04/05/2017 
// Design Name: 
// Module Name:    mux3_8bit 
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
module mux3_8bit(
    input [7:0] I0,
    input [7:0] I1,
    input [7:0] I2,
    input [1:0] S,
    output [7:0] Y
    );

	assign Y = (S[1] == 1'b1) ? I2 : (S[0] == 1'b1) ? I1 : I0;
endmodule
