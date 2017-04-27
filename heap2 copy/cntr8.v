`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    09:38:39 04/05/2017 
// Design Name: 
// Module Name:    cntr8 
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
module cntr8(
    input clk,
    input reset,
    input inc,
    input dec,
    output [7:0] q
    );

 reg [7:0] q_fb;
 always @(posedge clk)
 begin
   if(reset == 1) q_fb <= 8'd0;
	else if(inc == 1) q_fb <= q_fb+1;
	else if(dec == 1) q_fb <= q_fb-1;
 
 end
 assign q = q_fb;

endmodule
