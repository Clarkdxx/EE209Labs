`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    09:19:07 08/29/2016 
// Design Name: 
// Module Name:    cntr3 
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
module cntrn(
    clk,
    reset,
    en,
    q
    );
	parameter           WIDTH = 16;
	input    clk;
	input    reset;
	input    en;
	output reg [WIDTH-1:0]     q;
	
	always@(posedge clk)
	begin
		if(reset == 1) q <= 0;
		else if(en == 1) q <= q+1;
	end

endmodule
