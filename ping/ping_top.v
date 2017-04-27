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
module ping_top(
  CLKPORT,
  btn,
  sw,
  CA, CB, CC, CD, CE, CF, CG, DP,
  an,
  led,
  PULSPIN 
    );
	 
  input CLKPORT;
  input [4:0] btn;
  input [7:0] sw;
  output CA, CB, CC, CD, CE, CF, CG, DP;
  output [3:0] an;
  output [7:0] led;	 
  inout PULSPIN;
  
  wire [7:0] SWITCHES;
  wire [4:0] BTNS;
  wire [7:0] LEDS;

  wire reset;
  reg [3:0]	 ANt;
  wire PULSE_IN, PULSE_EN, PULSE_OUT;
  reg  [4:0] BTNS_Q1, BTNS_Q2;
  wire [3:0] THOUS, HUND, TEN, ONE;
  wire GO;
  wire INCHES;
  wire [7:0] state, NUM;
  reg [7:0] val;
  reg [3:0] disp;
  wire [6:0] segs;
  reg [24:0] clk_div;
  
  
  assign led = 8'b0;
  always @(posedge CLKPORT)
  begin
		clk_div <= clk_div + 1;
  end
  assign clk = clk_div[7];
  always @(posedge clk)
  begin
	  BTNS_Q1 <= btn;
	  BTNS_Q2 <= BTNS_Q1;
  end
  
  // Edge detect / single-cycle pulse for sensors
  
  assign SWITCHES = sw;
  assign BTNS = btn;
  assign GO = ~BTNS_Q2[0] & BTNS_Q1[0];
  assign reset = ~BTNS_Q2[1] & BTNS_Q1[1];
   // unused outputs
  assign DP = 1;  
  assign LEDS[7:0] = state;
  assign an = ANt;

  assign {CG,CF,CE,CD,CC,CB,CA} = segs[6:0];

  assign THOUS = 4'b0000;
  assign INCHES = sw[0];
  
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
	  ANt[0] = 1;
	  ANt[1] = 1;
	  ANt[2] = 1;
	  ANt[3] = 1;
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
	   disp = {THOUS};
		ANt[3] = 0;
	  end

	end

 
  bin8_bcd3 num_conv(
						.NUM_IN(val),
						.HUND(HUND),
						.TEN(TEN),
						.ONE(ONE));

  ping myping	(	.clk(clk), 
						.reset(reset), 
						.go(GO), 
						.inches(INCHES),
						.pulsein(PULSE_IN),
						.pulseout(PULSE_OUT),
						.pulseen(PULSE_EN),
						.convdone(CONVDONE),
						.result(NUM)
						);

	always @(posedge clk)
	begin
	  if(reset == 1) val <= 0;
	  else if(CONVDONE) val <= NUM;
	end
	
	// tri-state gate
	assign PULSPIN = (PULSE_EN) ? PULSE_OUT : 1'bz;
	// condition of pulse input to ping
	assign PULSE_IN = PULSPIN;
	

endmodule

