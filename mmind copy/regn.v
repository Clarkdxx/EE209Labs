`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    09:25:14 08/29/2016 
// Design Name: 
// Module Name:    reg8 
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
module regn(
    clk,
    reset,
    en,
    d,
    q
    );
parameter           WIDTH = 4;
input  clk;
input  reset;
input  en;
output reg [WIDTH-1:0] q;
input [WIDTH-1:0] d;

always@(posedge clk)
begin
	if(reset == 1) q <= 0;
	else if(en == 1) q <= d;
end

endmodule
