`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    12:43:26 10/12/2016 
// Design Name: 
// Module Name:    pe4_2 
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
module pe4_2(
    input I0,
    input I1,
    input I2,
    input I3,
    output [1:0] Y,
    output V
    );

	reg [1:0] yint;
	always @*
	begin
		if(I3==1) yint = 2'b11;
		else if(I2==1) yint = 2'b10;
		else if(I1==1) yint = 2'b01;
		else yint = 2'b00;
	end
	assign V = I3 | I2 | I1 | I0;
	assign Y = yint;
endmodule
