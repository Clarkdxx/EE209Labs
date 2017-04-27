////////////////////////////////////////////////////////////////////////////////
// Copyright (c) 2004 Xilinx, Inc.
// All Rights Reserved
////////////////////////////////////////////////////////////////////////////////
//   ____  ____
//  /   /\/   /
// /___/  \  /    Vendor: Xilinx
// \   \   \/     Version: 1.01
//  \   \         Filename: embedded_kcpsm3.v
//  /   /         Date Last Modified:  08/04/2004
// /___/   /\     Date Created: 06/03/2003
// \   \  /  \
//  \___\/\___\
//
//Device:  	Xilinx
//Purpose: 	
// 	This file instantiates the KCPSM3 processor macro and connects the 
//	program ROM.
//Reference:
// 	None
//Revision History:
//    Rev 1.00 - kc - Start of design entry in VHDL,  06/03/2003.
//    Rev 1.01 - sus - Converted to verilog,  08/04/2004.
////////////////////////////////////////////////////////////////////////////////
// NOTE: The name of the program ROM will probably need to be changed to 
//       reflect the name of the program (PSM) file applied to the assembler.
////////////////////////////////////////////////////////////////////////////////
// Contact: e-mail  picoblaze@xilinx.com
//////////////////////////////////////////////////////////////////////////////////
//
// Disclaimer: 
// LIMITED WARRANTY AND DISCLAIMER. These designs are
// provided to you "as is". Xilinx and its licensors make and you
// receive no warranties or conditions, express, implied,
// statutory or otherwise, and Xilinx specifically disclaims any
// implied warranties of merchantability, non-infringement, or
// fitness for a particular purpose. Xilinx does not warrant that
// the functions contained in these designs will meet your
// requirements, or that the operation of these designs will be
// uninterrupted or error free, or that defects in the Designs
// will be corrected. Furthermore, Xilinx does not warrant or
// make any representations regarding use or the results of the
// use of the designs in terms of correctness, accuracy,
// reliability, or otherwise.
//
// LIMITATION OF LIABILITY. In no event will Xilinx or its
// licensors be liable for any loss of data, lost profits, cost
// or procurement of substitute goods or services, or for any
// special, incidental, consequential, or indirect damages
// arising from the use or operation of the designs or
// accompanying documentation, however caused and on any theory
// of liability. This limitation will apply even if Xilinx
// has been advised of the possibility of such damage. This
// limitation shall apply not-withstanding the failure of the 
// essential purpose of any limited remedies herein. 
//////////////////////////////////////////////////////////////////////////////////



module heap2_top(
  CLKPORT,
  btn,
  sw,
  CA, CB, CC, CD, CE, CF, CG, DP,
  an,
  led
    );
	 
  input CLKPORT;
  input [4:0] btn;
  input [7:0] sw;

  output CA, CB, CC, CD, CE, CF, CG, DP;
  output [3:0] an;
  output [7:0] led;
  

	wire   	    reset, reset_raw;
	wire   	    clk;
	wire [9:0] 	 address;

	reg  [3:0]   an_int;
	reg  [4:0]   btn_r;

	reg  [3:0]   bcd;
	reg  [25:0]  clk_count;

	reg  [3:0]   curr_count;
	reg          ws;

	reg  [1:0]   reset_edge_detect;
	reg  [2:0]   reset_cnt;

	wire  [7:0]  DISP;
	wire  [3:0]  THOUS;
	wire  [3:0]  HUNS;
	wire  [3:0]  TENS;
	wire  [3:0]  ONES;
	wire         size_btn, pop_btn, push_btn;

	//assign led[6:0] = 7'b0000000;
	assign DP = 1;

	//assign clk = clk_count[25];
	assign clk = clk_count[17];
	//assign led[7] = clk;
	assign reset_raw = btn[1];

	always @(posedge clk)
	begin
		if(reset_raw)
			reset_edge_detect <= 2'b00;
		else if(reset_raw == 0 && reset_edge_detect[0])
			reset_edge_detect <= {reset_edge_detect[0], 1'b1};
	end
		
	always @(posedge clk)
	begin
		if(reset_edge_detect == 2'b01)
			reset_cnt <= 3'b001;
		else if(reset_cnt > 3'b000)
			reset_cnt <= reset_cnt+1;
	end
	assign reset = reset_cnt[2];

	always @(posedge CLKPORT)
	begin
		if (reset_raw == 1) 
		  clk_count <= 0;
		else
		  clk_count <= clk_count + 1;
	end

	always @(posedge clk)
	begin
		btn_r <= btn;
	end

	assign {size_btn, top_btn, pop_btn, push_btn} = {btn_r[3],btn_r[2],btn_r[0],btn_r[4]};

	//picoblaze_rom #(.ROM_FILE("cntr.mem")) program(clk, 1'b1, address, instruction);
	heap_soc student_design(
			.clk(clk),
			.reset(reset),
			.btns({size_btn, top_btn, pop_btn, push_btn}),
			.switches(sw),
			.disp(DISP),
			.leds(led)
			);
			
	// Custom logic
	bcd_display bin_bcd_conv(
		 .DISP(DISP),
		 .CLK(clk),
		 .RST(reset),
		 .THOUS(THOUS),
		 .HUNS(HUNS),
		 .TENS(TENS),
		 .ONES(ONES)
		 );

	always @*
	begin
	  an_int = 4'b1111;
	  if(clk_count[12:11] == 2'b00)
	  begin
		  bcd = THOUS;
		  an_int[3] = 0;
	  end
	  else if(clk_count[12:11] == 2'b01)
	  begin
		  bcd = HUNS;
		  an_int[2] = 0;
	  
	  end
	  else if(clk_count[12:11] == 2'b10)
	  begin
		  bcd = TENS;
		  an_int[1] = 0;
	  end
	  else 
	  begin
		  bcd = ONES;
		  an_int[0] = 0;
	  end
	  
	end
	assign an = an_int;
	
	sevenseg_decoder bcd_dec(bcd,CA,CB,CC,CD,CE,CF,CG);
endmodule

//----------------------------------------------------------------------------------
//
// END OF FILE EMBEDDED_KCPSM3.V
//
//----------------------------------------------------------------------------------


