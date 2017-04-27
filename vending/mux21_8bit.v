`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    13:16:37 10/12/2016 
// Design Name: 
// Module Name:    mux21_8bit 
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
module mux21_8bit(
    input [7:0] I0,
    input [7:0] I1,
    input S,
    output reg [7:0] Y
    );

	always @*
	begin
		if(S == 1) Y = I1;
		else  		Y = I0;
	end

endmodule
