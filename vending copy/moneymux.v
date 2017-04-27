`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    12:49:17 10/12/2016 
// Design Name: 
// Module Name:    moneymux 
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
module moneymux(
    input [1:0] S,
    output reg [7:0] MONEY
    );
	 
	 always @*
	 begin
		 if(S == 2'b00) MONEY = 8'd5;
		 else if(S == 2'b01) MONEY = 8'd10;
		 else if(S == 2'b10) MONEY = 8'd25;
		 else MONEY = 8'd100;
	 end

endmodule
