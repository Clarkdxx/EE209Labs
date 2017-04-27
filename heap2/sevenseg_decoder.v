`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    10:06:30 10/24/2008 
// Design Name: 
// Module Name:    sevenseg_decoder 
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
module sevenseg_decoder(
    input [3:0] digit,
    output reg A,
    output reg B,
    output reg C,
    output reg D,
    output reg E,
    output reg F,
    output reg G
    );

  
  always @(digit)
  begin
    A <= 1;
	 B <= 1;
	 C <= 1;
    D <= 1;
	 E <= 1;
	 F <= 1;
	 G <= 1;
	 case(digit)
	   4'd0:
		begin
		  A <= 0;
		  B <= 0;
		  C <= 0;
		  D <= 0;
		  E <= 0;
		  F <= 0;
		end
	   4'd1:
		begin
		  B <= 0;
		  C <= 0;
		end
	   4'd2:
		begin
		  A <= 0;
		  B <= 0;
		  D <= 0;
		  E <= 0;
		  G <= 0;
		end
	   4'd3:
		begin
		  A <= 0;
		  B <= 0;
		  C <= 0;
		  D <= 0;
		  G <= 0;
		end
	   4'd4:
		begin
		  B <= 0;
		  C <= 0;
		  F <= 0;
		  G <= 0;
		end
	   4'd5:
		begin
		  A <= 0;
		  C <= 0;
		  D <= 0;
		  F <= 0;
		  G <= 0;
		end
	   4'd6:
		begin
		  C <= 0;
		  D <= 0;
		  E <= 0;
		  F <= 0;
		  G <= 0;
		end
	   4'd7:
		begin
		  A <= 0;
		  B <= 0;
		  C <= 0;
		end
	   4'd8:
		begin
		  A <= 0;
		  B <= 0;
		  C <= 0;
		  D <= 0;
		  E <= 0;
		  F <= 0;
		  G <= 0;
		end
	   4'd9:
		begin
		  A <= 0;
		  B <= 0;
		  C <= 0;
		  F <= 0;
		  G <= 0;
		end
	 endcase
  end
endmodule
