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
module reg8e(
    input clk,
    input reset,
    input en,
    input [7:0] d,
    output reg [7:0] q
    );

	always @(posedge clk)
	begin
		if(reset) q <= 8'b00000000;
		else if(en) q <= d;
	end
	
endmodule
