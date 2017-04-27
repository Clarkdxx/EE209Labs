`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    07:23:33 08/31/2016 
// Design Name: 
// Module Name:    dff1 
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
module dff1s(
    input clk,
    input clr,
	 input set,
    input d,
    output reg q
    );

always@(posedge clk)
begin
	if(clr == 1) 
		q <= 0;
	else if(set == 1)
	   q <= 1;
	else 
		q <= d;
end

endmodule
