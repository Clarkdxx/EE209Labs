`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    20:10:15 09/25/2016 
// Design Name: 
// Module Name:    adder4 
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
module adder8(
    input [7:0] A,
    input [7:0] B,
    input C0,
    output [7:0] S,
    output C8
    );

  assign {C8,S} = {1'b0, A} + {1'b0, B} + C0;
  

endmodule
