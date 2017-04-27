`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    12:06:08 09/28/2016 
// Design Name: 
// Module Name:    cwalk_top 
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
module cwalk_top(
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
  
  reg [25:0] clk_div;
  reg BTN1_Q1, BTN0_Q1, BTN1_Q2, BTN0_Q2, BTN1_ED, BTN0_ED;
  
  wire fsm_reset;
  reg [3:0] swcnt;
  wire x, z, q1, q0;
  wire [6:0] state_dig, z_dig;
  reg [6:0] segs;
  
  always @(posedge CLKPORT)
  begin
	clk_div <= clk_div + 1;
  end
  assign clk = clk_div[25];

  assign fsm_reset = btn[1];    

  wire [6:0] CNTDWN;
  wire [6:0] HSYM;
  wire [6:0] GSYM;
 
  wire num_on, walk, hand;
  wire [3:0] num;

  // unused outputs
  assign DP = 1;  
  assign led[7] = clk;
  assign led[6:0] = 7'b0;
  assign an[3] = !(!clk_div[18] && !clk_div[17] && num_on);
  assign an[2] = 1'b1;
  assign an[0] = !(clk_div[18] && !clk_div[17] && walk);
  assign an[1] = !(!clk_div[18] && clk_div[17] && hand);
  

	assign {CG,CF,CE,CD,CC,CB,CA} = segs[6:0];

  
  // Form an G with 7-seg decoder
  assign GSYM = 7'b1000010;
  // Form an G with 7-seg decoder
  assign HSYM = 7'b0001001;

  // Form the countdown digit
  sevenseg_decoder led_decoder(
    .I3(num[3]),
    .I2(num[2]),
    .I1(num[1]),
    .I0(num[0]),
    .A(CNTDWN[0]),
    .B(CNTDWN[1]),
    .C(CNTDWN[2]),
    .D(CNTDWN[3]),
    .E(CNTDWN[4]),
    .F(CNTDWN[5]),
    .G(CNTDWN[6])
    );

	// 7-seg display mux
	always @*
	begin
	  if(!clk_div[18] && !clk_div[17])
		segs[6:0] = CNTDWN;
	  else if(clk_div[18] && !clk_div[17])
	   segs[6:0] = GSYM;
	  else
	   segs[6:0] = HSYM;
	end
	 
  cwalk mycwalk(	.clk(clk), 
						.reset(fsm_reset), 
						.walk(walk), 
						.hand(hand),
						.num_on(num_on),
						.num(num));

	

endmodule
