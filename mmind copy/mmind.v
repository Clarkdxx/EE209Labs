`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    08:01:31 08/29/2016 
// Design Name: 
// Module Name:    mmind 
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
module mmind( 
  input   		clk,
  input   		reset, 
  input   		setans_btn, 
  input   		guess_btn,
  input [7:0]	switches,
  output			ca,
  output       cb,
  output       cc,
  output       cd,
  output       ce,
  output       cf,
  output       cg
);

wire [7:0] answer;
wire [3:0] digit;
wire [3:0] correct;
wire guess_i, ans_i, equal_i;
wire [3:0]  cnt;
wire increment;
wire cntr_clr;
wire swcntr_rst;

sevenseg_decoder sevseg(
  .I0(correct[0]),
  .I1(correct[1]),
  .I2(correct[2]),
  .I3(correct[3]),
  .A(ca),
  .B(cb),
  .C(cc),
  .D(cd),
  .E(ce),
  .F(cf),
  .G(cg));

mux8 guess_mux(
  .I(switches),
  .S(cnt[2:0]),
  .Y(guess_i));
  
mux8 ans_mux(
  .I(answer),
  .S(cnt[2:0]),
  .Y(ans_i));

or u3(swcntr_rst, swcnt_clr, reset);
  
cntr4 cnt_selector(
  .clk(clk),
  .reset(swcntr_rst),
  .en(swcnt_en),
  .q(cnt));

reg8e ansreg(
  .clk(clk),
  .reset(reset),
  .en(ans_en),
  .d(switches),
  .q(answer));

mmind_fsm fsm(
    .clk(clk),
    .reset(reset),
    .setans(setans_btn),
    .guess(guess_btn),
	 .swcnt(cnt[2:0]),
    .swcnt_clr(swcnt_clr),
    .swcnt_en(swcnt_en),
    .corr_clr(corr_clr),
    .corr_en(corr_en),
    .ans_en(ans_en)
);

or u0(cntr_clr, corr_clr, reset);

// Add the gate to compare ans_i and guess_i here:
xnor u1(equal_i, ans_i, guess_i);

// Add the AND gate to produce increment here:
and u18(increment, equal_i, corr_en); 

cntr4 correct_cntr(
  .clk(clk),
  .reset(cntr_clr),
  .en(increment),
  .q(correct));
  
endmodule
