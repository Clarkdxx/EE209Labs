`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    08:47:31 01/25/2017 
// Design Name: 
// Module Name:    reg4e 
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
module reg4e(
    input clk,
    input reset,
    input en,
    input [3:0] d,
    output reg [3:0] q
    );

	always @(posedge clk)
	begin
	  if(reset == 1)  q <= 4'b0000;
	  else if(en == 1) q <= d;
	end
endmodule
