`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// EngNUM_INeer: 
// 
// Create Date:    14:48:28 11/05/2008 
// Design Name: 
// Module Name:    bNUM_IN8_bcd3 
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
module bin8_bcd3(
    input [7:0] NUM_IN,
    output reg [3:0] HUND,
    output reg [3:0] TEN,
    output reg [3:0] ONE
    );

  always @(NUM_IN)
  begin
	 TEN = 0;
	 ONE = 0;
	 if(NUM_IN >= 200)
	   HUND <= 4'd2;
	 else if (NUM_IN >= 100)
		HUND <= 4'd1;
	 else
	   HUND <= 4'd0;
	 
	 if(NUM_IN[0])
	   ONE = ONE + 1;	
	 if(NUM_IN[1])
	   ONE = ONE + 2;
	 if(NUM_IN[2])
	   ONE = ONE + 4;
	 if(NUM_IN[3])
	   begin
		ONE = ONE + 8;
		if(ONE >= 4'd10)
		   begin
	      ONE = ONE - 10;
			TEN = TEN + 1;
			end
		end
	 if(NUM_IN[4])
	   begin
		ONE = ONE + 6;
		if(ONE >= 4'd10)
		   begin
	      ONE = ONE - 10;
			TEN = TEN + 1;
			end
		TEN = TEN + 1;
		end
	 if(NUM_IN[5])
	   begin
		ONE = ONE + 2;
		if(ONE >= 4'd10)
		   begin
	      ONE = ONE - 10;
			TEN = TEN + 1;
			end
		TEN = TEN + 3;
		end
	 if(NUM_IN[6])
	   begin
		ONE = ONE + 4;
		if(ONE >= 4'd10)
		   begin
	      ONE = ONE - 10;
			TEN = TEN + 1;
			end
		TEN = TEN + 6;
		if(TEN >= 4'd10)
			  TEN = TEN - 10;
		end
	 if(NUM_IN[7])
	   begin
		ONE = ONE + 8;
		if(ONE >= 4'd10)
		   begin
	      ONE = ONE - 10;
			TEN = TEN + 1;
			end
		TEN = TEN + 2;
		if(TEN >= 4'd10)
			  TEN = TEN - 10;
		end
  end

endmodule
