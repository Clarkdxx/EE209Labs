`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    07:19:20 10/27/2016 
// Design Name: 
// Module Name:    cntr16ce 
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
module cntr16ce(
    input clk,
    input reset,
    input ce,
    output [15:0] q
    );

	reg [15:0] q_fb;
	always @(posedge clk)
	begin
		if(reset == 1)
			q_fb <= 0;
		else if(ce == 1)
			q_fb <= q_fb+1;
	end
	assign q = q_fb;
	
endmodule
