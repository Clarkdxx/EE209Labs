`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    11:38:29 10/12/2016 
// Design Name: 
// Module Name:    vending_top 
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
module vending_top(
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

  wire temp;
  wire myreset;
  reg [3:0]	 ANt;
  wire 		 RELC_D, RELDC_D, RELS_D, RELDP_D;
  reg        RELC, RELDC, RELS, RELDP;
  wire       RELQ, RELD, RELN;
  reg  [4:0] BTNS_Q1, BTNS_Q2;
  wire       S5, S10, S25, S100;      
  wire       BTNC, BTNDC, BTNSP, BTNDP;
  wire [7:0] M, C;
  reg  [7:0] NUM; // num to display on 7-segments
  wire [3:0] HUND, TEN, ONE;
  wire       QCOLLECT, QRELEASE, QINITC, QCHANGE;
  reg [9:0]  reset_counter;
  
  reg [3:0] disp;
  wire [6:0] segs;
  reg [25:0] clk_div;
  
  always @(posedge CLKPORT)
  begin
	if(reset_counter != 10'b1000000000)
		reset_counter <= reset_counter+1;
  end
  assign myreset = (~QCOLLECT & ~QRELEASE & ~QINITC & ~QCHANGE) | sw[7];
 
  always @(posedge CLKPORT)
  begin
		clk_div <= clk_div + 1;
  end
  assign clk = clk_div[25];
  
  always @(posedge clk)
  begin
	  BTNS_Q1 <= btn;
	  BTNS_Q2 <= BTNS_Q1;
	  {RELC, RELDC, RELDP, RELS} <= {RELC_D, RELDC_D, RELDP_D, RELS_D};
  end
  // Edge detect / single-cycle pulse for sensors
  assign {S5, temp, S25, S100, S10} = BTNS_Q1;//BTNS & ~BTNS_Q1;
  
  assign {BTNC, BTNDC, BTNDP, BTNSP} = sw[3:0];
   // unused outputs
  assign DP = 1;  
  assign led[7] = clk;
  assign led[6:4] = {RELN, RELD, RELQ};
  assign led[3:0] = {RELC, RELDC, RELDP, RELS};
  assign an = ANt;

  assign {CG,CF,CE,CD,CC,CB,CA} = segs[6:0];

  
  // Form the countdown digit
  sevenseg_decoder led_decoder(
    .I3(disp[3]),
    .I2(disp[2]),
    .I1(disp[1]),
    .I0(disp[0]),
    .A(segs[0]),
    .B(segs[1]),
    .C(segs[2]),
    .D(segs[3]),
    .E(segs[4]),
    .F(segs[5]),
    .G(segs[6])
    );

	// 7-seg display mux
	always @*
	begin
	  ANt = 4'b1111;
	  if(!clk_div[19] && !clk_div[18])
	  begin
		disp = ONE;
		ANt[0] = 0;
	  end
	  else if(clk_div[19] && !clk_div[18])
	  begin
	   disp = TEN;
		ANt[1] = 0;
	  end
	  else if(!clk_div[19] && clk_div[18])
	  begin
	   disp = HUND;
		ANt[2] = 0;
	  end
	  else 
	  begin
	   disp = {QCHANGE, QINITC, QRELEASE, QCOLLECT};
		ANt[3] = 0;
	  end

	end

 
  always @*
  begin
	if(QCHANGE == 1)
		NUM = C;
	else 
		NUM = M;
  end
  bin8_bcd3 num_conv(
						.NUM_IN(NUM),
						.HUND(HUND),
						.TEN(TEN),
						.ONE(ONE));
  vending myvending
					(	.clk(clk), 
						.reset(myreset), 
						.s5(S5), 
						.s10(S10),
						.s25(S25),
						.s100(S100),
						.btnc(BTNC),
						.btndc(BTNDC),
						.btndp(BTNDP),
						.btns(BTNSP),
						.m(M),
						.c(C),
						.relq(RELQ),
						.reld(RELD),
						.reln(RELN),
						.relc(RELC_D),
						.reldc(RELDC_D),
						.reldp(RELDP_D),
						.rels(RELS_D),
						.qcollect(QCOLLECT),
						.qrelease(QRELEASE),
						.qinitc(QINITC),
						.qchange(QCHANGE)
						);

	

endmodule

