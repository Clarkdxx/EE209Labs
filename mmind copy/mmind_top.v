`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    12:47:54 09/04/2015 
// Design Name: 
// Module Name:    mmind_top 
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
module mmind_top(
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
  
//  wire [7:0] SWITCHES;
//  wire [3:0] BTNS;
//  wire [7:0] LEDS;
  

  reg [22:0] clk_div;
  reg BTN1_Q1, BTN0_Q1, BTN1_Q2, BTN0_Q2, BTN1_ED, BTN0_ED;
  
  always @(posedge CLKPORT)
  begin
	clk_div <= clk_div + 1;
  end
  assign clk = clk_div[20];
  

  // unused outputs
  assign DP = 1;  
  assign led = 8'b0;
  assign an[0] = 1'b0;  // Left-most digit on
  assign an[1] = 1'b1;
  assign an[2] = 1'b1;
  assign an[3] = 1'b1;
  
  always @(posedge clk)
  begin
		BTN1_Q1 <= btn[1];
		BTN0_Q1 <= btn[0];
		BTN1_Q2 <= BTN1_Q1;
		BTN0_Q2 <= BTN0_Q1;
		BTN1_ED <= BTN1_Q1 & ~BTN1_Q2;
		BTN0_ED <= BTN0_Q1 & ~BTN0_Q2;
  end
  
  mmind mymmind(	.clk(clk), 
						.reset(btn[3]), 
						.setans_btn(BTN1_ED), 
						.guess_btn(BTN0_ED),
						.switches(sw),
						.ca(CA),
						.cb(CB),
						.cc(CC),
						.cd(CD),
						.ce(CE),
						.cf(CF),
						.cg(CG));

	

endmodule
