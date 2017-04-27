`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    20:07:12 09/25/2016 
// Design Name: 
// Module Name:    fa 
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
module fa(
    input A,
    input B,
    input Cin,
    output S,
    output Cout
    );

assign S = A ^ B ^ Cin;
assign Cout = (A && B) || (B && Cin) || (A && Cin);

endmodule
