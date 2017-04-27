`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    20:14:21 09/25/2016 
// Design Name: 
// Module Name:    hw4_q2 
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
module hw4_q2(
    input X,
    input Y,
    input Cin,
    output S,
    output Cout
    );
	// Use the 'ha' and 'fa' modules provided (open them to 
	//   see the port orderings)
wire ha1_S, ha2_S, ha1_out, ha2_out;

ha ha1(.A(X), .B(Y), .S(ha1_S), .Cout(ha1_out));
ha ha2(.A(ha1_S), .B(Cin), .S(S), .Cout(ha2_out));
assign Cout = ha1_out || ha2_out; 	 

endmodule
