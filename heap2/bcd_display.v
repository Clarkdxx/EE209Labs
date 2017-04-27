`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    20:46:08 11/24/2015 
// Design Name: 
// Module Name:    sqrt_display 
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
module bcd_display(
    input [7:0] DISP,
    input CLK,
    input RST,
    output reg [3:0] THOUS,
    output reg [3:0] HUNS,
    output reg [3:0] TENS,
    output reg [3:0] ONES
    );

   integer i;
	reg [4:0] th1;
	reg [4:0] h1;
	reg [4:0] t1;
	reg [4:0] o1;

	reg [4:0] th0;
	reg [4:0] h0;
	reg [4:0] t0;
	reg [4:0] o0;
	
/*	
	always @(X or DISP)
	begin
	  thous_int[1] = 4'd0;
	  thous_int[0] = 4'd0;
	  huns_int[1] = 4'd0;
	  huns_int[0] = 4'd0;
	  tens_int[1] = 4'd0;
	  tens_int[0] = 4'd0;
	  ones_int[1] = 4'd0;
	  ones_int[0] = 4'd0;
	  
	  // Taken from http://www.eng.utah.edu/~nmcdonal/Tutorials/BCDTutorial/BCDConversion.html
	  for (i=15; i>=0; i=i-1)
	  begin
	    // add 3 to columns >= 5
		 if(thous_int[1] >= 5)
		    thous_int[1] = thous_int[1] + 3;
		 if(huns_int[1] >= 5)
		    huns_int[1] = huns_int[1] + 3;
		 if(tens_int[1] >= 5)
		    tens_int[1] = tens_int[1] + 3;
		 if(ones_int[1] >= 5)
		    ones_int[1] = ones_int[1] + 3;
		
		 // shift left one
		 thous_int[1] = thous_int[1] << 1;
		 thous_int[1][0] = huns_int[1][3];	 
		 huns_int[1] = huns_int[1] << 1;
		 huns_int[1][0] = tens_int[1][3];
		 tens_int[1] = tens_int[1] << 1;
		 tens_int[1][0] = ones_int[1][3];
		 ones_int[1] = ones_int[1] << 1;
		 ones_int[1][0] = X[i];
	   end
	  for (i=7; i>=0; i=i-1)
	  begin
	    // add 3 to columns >= 5
		 if(huns_int[0] >= 5)
		    huns_int[0] = huns_int[0] + 3;
		 if(tens_int[0] >= 5)
		    tens_int[0] = tens_int[0] + 3;
		 if(ones_int[0] >= 5)
		    ones_int[0] = ones_int[0] + 3;
		
		 // shift left one
		 huns_int[0] = huns_int[0] << 1;
		 huns_int[0][0] = tens_int[0][3];
		 tens_int[0] = tens_int[0] << 1;
		 tens_int[0][0] = ones_int[0][3];
		 ones_int[0] = ones_int[0] << 1;
		 ones_int[0][0] = DISP[0];
	   end
		if (which)
		begin
		  THOUS = thous_int[1];
		  HUNS = huns_int[1];
		  TENS = tens_int[1];
		  ONES = ones_int[1];
		end
		else
		begin
		  THOUS = thous_int[0];
		  HUNS = huns_int[0];
		  TENS = tens_int[0];
		  ONES = ones_int[0];
		
		end
	end

	*/
	
	always @*
	begin
		th0 = 0;
		h0 = 0;
		t0 = 0;
		o0 = 0;
      if(DISP[7] == 1) begin
			th0 = th0+0; h0=h0+1; t0=t0+2; o0=o0+8;
			if(o0 >= 10) begin
			  o0 = o0 - 10;
			  t1 = t1 + 1;
			  if(t1 >= 10) begin
			     t0 = t0 - 10;
				  h0 = h0 + 1;
				  if(h0 >=10) begin
				    h0 = h0 - 10;
					 th0 = th0 + 1;
				  end
			  end
			end
		end
      if(DISP[6] == 1) begin
			th0 = th0+0; h0=h0+0; t0=t0+6; o0=o0+4;
			if(o0 >= 10) begin
			  o0 = o0 - 10;
			  t0 = t0 + 1;
			  if(t0 >= 10) begin
			     t0 = t0 - 10;
				  h0 = h0 + 1;
				  if(h0 >=10) begin
				    h0 = h0 - 10;
					 th0 = th0 + 1;
				  end
			  end
			end
		end
      if(DISP[5] == 1) begin
			th0 = th0+0; h0=h0+0; t0=t0+3; o0=o0+2;
			if(o0 >= 10) begin
			  o0 = o0 - 10;
			  t0 = t0 + 1;
			  if(t0 >= 10) begin
			     t0 = t0 - 10;
				  h0 = h0 + 1;
				  if(h0 >=10) begin
				    h0 = h0 - 10;
					 th0 = th0 + 1;
				  end
			  end
			end
		end
      if(DISP[4] == 1) begin
			th0 = th0+0; h0=h0+0; t0=t0+1; o0=o0+6;
			if(o0 >= 10) begin
			  o0 = o0 - 10;
			  t0 = t0 + 1;
			  if(t0 >= 10) begin
			     t0 = t0 - 10;
				  h0 = h0 + 1;
				  if(h0 >=10) begin
				    h0 = h0 - 10;
					 th0 = th0 + 1;
				  end
			  end
			end
		end
      if(DISP[3] == 1) begin
			th0 = th0+0; h0=h0+0; t0=t0+0; o0=o0+8;
			if(o0 >= 10) begin
			  o0 = o0 - 10;
			  t0 = t0 + 1;
			  if(t0 >= 10) begin
			     t0 = t0 - 10;
				  h0 = h0 + 1;
				  if(h0 >=10) begin
				    h0 = h0 - 10;
					 th0 = th0 + 1;
				  end
			  end
			end
		end
      if(DISP[2] == 1) begin
			th0 = th0+0; h0=h0+0; t0=t0+0; o0=o0+4;
			if(o0 >= 10) begin
			  o0 = o0 - 10;
			  t0 = t0 + 1;
			  if(t0 >= 10) begin
			     t0 = t0 - 10;
				  h0 = h0 + 1;
				  if(h0 >=10) begin
				    h0 = h0 - 10;
					 th0 = th0 + 1;
				  end
			  end
			end
		end
      if(DISP[1] == 1) begin
			th0 = th0+0; h0=h0+0; t0=t0+0; o0=o0+2;
			if(o0 >= 10) begin
			  o0 = o0 - 10;
			  t0 = t0 + 1;
			  if(t0 >= 10) begin
			     t0 = t0 - 10;
				  h0 = h0 + 1;
				  if(h0 >=10) begin
				    h0 = h0 - 10;
					 th0 = th0 + 1;
				  end
			  end
			end
		end
      if(DISP[0] == 1) begin
			th0 = th0+0; h0=h0+0; t0=t0+0; o0=o0+1;
			if(o0 >= 10) begin
			  o0 = o0 - 10;
			  t0 = t0 + 1;
			  if(t0 >= 10) begin
			     t0 = t0 - 10;
				  h0 = h0 + 1;
				  if(h0 >=10) begin
				    h0 = h0 - 10;
					 th0 = th0 + 1;
				  end
			  end
			end
		end
   end

	
	always @*
	begin
		  THOUS = th0[3:0];
		  HUNS = h0[3:0];
		  TENS = t0[3:0];
		  ONES = o0[3:0];
	end
	
	

endmodule
