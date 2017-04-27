`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    12:56:56 10/12/2016 
// Design Name: 
// Module Name:    comp8 
// Project Name: 
// Target Devices: 
// Tool versions: 
// Description:   Unsigned 8-bit comparator
//
// Dependencies: 
//
// Revision: 
// Revision 0.01 - File Created
// Additional Comments: 
//
//////////////////////////////////////////////////////////////////////////////////
module comp8(
    input [7:0] A,
    input [7:0] B,
    output LT,
    output GT,
	 output EQ
    );

	wire [8:0] Aint, Bint;
	assign Aint = {1'b0, A};
	assign Bint = {1'b0, B};
	assign LT = (Aint < Bint);
	assign GT = (Aint > Bint);
	assign EQ = (Aint == Bint);

endmodule
