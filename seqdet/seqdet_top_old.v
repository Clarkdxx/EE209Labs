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
module seqdet_top(
  CLKPORT,
  BTN3,
  BTN2,
  BTN1,
  BTN0,
  SW0,
  SW1,
  SW2,
  SW3,
  SW4,
  SW5,
  SW6,
  SW7,
  CA, CB, CC, CD, CE, CF, CG, DP,
  AN0, AN1, AN2, AN3,
  LD0, LD1, LD2, LD3, LD4, LD5, LD6, LD7
    );
	 
  input CLKPORT;
  input BTN3;
  input BTN1;
  input BTN2;
  input BTN0;
  input SW0;
  input SW1;
  input SW2;
  input SW3;
  input SW4;
  input SW5;
  input SW6;
  input SW7;
  output CA, CB, CC, CD, CE, CF, CG, DP;
  output AN0, AN1, AN2, AN3;
  output LD0, LD1, LD2, LD3, LD4, LD5, LD6, LD7;
  
  wire [7:0] SWITCHES;
  wire [3:0] BTNS;
  wire [7:0] LEDS;
  

  reg [24:0] clk_div;
  reg BTN1_Q1, BTN0_Q1, BTN1_Q2, BTN0_Q2, BTN1_ED, BTN0_ED;
  
  wire fsm_reset;
  //reg  [12:0] swcnt_raw;
  reg [3:0] swcnt;
  wire x, z;
  wire [6:0] state_dig, cnt_dig;
  reg [6:0] segs;
  
  always @(posedge CLKPORT)
  begin
	clk_div <= clk_div + 1;
  end
  assign clk = clk_div[24];
  
  assign SWITCHES = {SW7, SW6, SW5, SW4, SW3, SW2, SW1, SW0};
  assign BTNS = {BTN3, BTN2, BTN1, BTN0};
  assign {LD7, LD6, LD5, LD4, LD3, LD2, LD1, LD0} = LEDS;



  // unused outputs
  assign DP = 1;  
  assign LEDS[7] = (swcnt == 0);
  assign LEDS[6] = (swcnt == 1);
  assign LEDS[5] = (swcnt == 2);
  assign LEDS[4] = (swcnt == 3);
  assign LEDS[3] = (swcnt == 4);
  assign LEDS[2] = (swcnt == 5);
  assign LEDS[1] = (swcnt == 6);
  assign LEDS[0] = (swcnt == 7);
  
  always @(posedge clk)
  begin
	  if(BTN3) 
		  swcnt <= 4'b1000;
	  if(BTN0)
		  swcnt <= 0;
	  else if(swcnt != 4'b1000)
	     swcnt <= swcnt + 1;
  end
  //assign swcnt = swcnt_raw[11:9];
  always @(posedge clk_div[15])
  begin
		BTN1_Q1 <= BTN1;
		BTN0_Q1 <= BTN0;
		BTN1_Q2 <= BTN1_Q1;
		BTN0_Q2 <= BTN0_Q1;
		BTN1_ED <= BTN1_Q1 & ~BTN1_Q2;
		BTN0_ED <= BTN0_Q1 & ~BTN0_Q2;
  end
  
  assign x = SWITCHES[swcnt];
  assign fsm_reset = swcnt[3];
  seqdet myseqdet(
						.clk(clk), 
						.reset(fsm_reset), 
						.x(x), 
						.z(z),
						.ca(state_dig[0]),
						.cb(state_dig[1]),
						.cc(state_dig[2]),
						.cd(state_dig[3]),
						.ce(state_dig[4]),
						.cf(state_dig[5]),
						.cg(state_dig[6]));

	sevenseg_decoder sevseg(
	  .I0(z),
	  .I1(0),
	  .I2(0),
	  .I3(0),
	  .A(cnt_dig[0]),
	  .B(cnt_dig[1]),
	  .C(cnt_dig[2]),
	  .D(cnt_dig[3]),
	  .E(cnt_dig[4]),
	  .F(cnt_dig[5]),
	  .G(cnt_dig[6]));	

   assign AN0 = clk_div[15];
   assign AN1 = 1'b1;
   assign AN2 = 1'b1;
   assign AN3 = ~clk_div[15];

	// Use switches a 8-bit input and BTN0 to start 
	// feeding those bits in 1 at a time.
	assign {CG,CF,CE,CD,CC,CB,CA} = segs[6:0];
	always @*
	begin
	  if(clk_div[15] == 0)
		segs[6:0] = state_dig;
	  else
	   segs[6:0] = cnt_dig;
	end
	
	
endmodule
