`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    12:47:54 09/04/2015 
// Design Name: 
// Module Name:    seqdet_top 
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
  

  // unused outputs
  assign DP = 1;  
  assign led[7:1] = 0;
  assign led[0] = (z);
  
//  always @(posedge clk)
//  begin
//	  if(BTN3) 
//		  swcnt <= 4'b1000;
//	  if(BTN0)
//		  swcnt <= 0;
//	  else if(swcnt != 4'b1000)
//	     swcnt <= swcnt + 1;
//  end
//  // x mux
//  assign x = SWITCHES[swcnt];

  always @(posedge clk_div[16])
  begin
		BTN1_Q1 <= btn[1];
		BTN0_Q1 <= btn[0];
		BTN1_Q2 <= BTN1_Q1;
		BTN0_Q2 <= BTN0_Q1;
		BTN1_ED <= BTN1_Q1 & ~BTN1_Q2;
		BTN0_ED <= BTN0_Q1 & ~BTN0_Q2;
  end
  
  assign fsm_reset = btn[3];
  seqdet myseqdet(
						.clk(BTN0_ED), 
						.reset(fsm_reset), 
						.x(sw[0]), 
						.z(z),
						.q1(q1),
						.q0(q0)
						);

	sevenseg_decoder sevseg_z(
	  .I0(z),
	  .I1(1'b0),
	  .I2(1'b0),
	  .I3(1'b0),
	  .A(z_dig[0]),
	  .B(z_dig[1]),
	  .C(z_dig[2]),
	  .D(z_dig[3]),
	  .E(z_dig[4]),
	  .F(z_dig[5]),
	  .G(z_dig[6]));	

	// 7-segment decoder for state
	sevenseg_decoder sevseg_state(
	  .I0(q0),
	  .I1(q1),
	  .I2(1'b0),
	  .I3(1'b0),
	  .A(state_dig[0]),
	  .B(state_dig[1]),
	  .C(state_dig[2]),
	  .D(state_dig[3]),
	  .E(state_dig[4]),
	  .F(state_dig[5]),
	  .G(state_dig[6]));	

   assign an[0] = clk_div[16];
   assign an[1] = 1'b1;
   assign an[2] = 1'b1;
   assign an[3] = ~clk_div[16];

	assign {CG,CF,CE,CD,CC,CB,CA} = segs[6:0];

	// 7-seg display mux
	always @*
	begin
	  if(clk_div[16] == 0)
		segs[6:0] = state_dig;
	  else
	   segs[6:0] = z_dig;
	end
	
	
endmodule
