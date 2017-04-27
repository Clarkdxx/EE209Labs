`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    15:29:08 09/04/2015 
// Design Name: 
// Module Name:    mmind_fsm 
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
module mmind_fsm(
    input clk,
    input reset,
    input setans,
    input guess,
	 input [2:0] swcnt,
    output swcnt_clr,
    output swcnt_en,
    output corr_clr,
    output corr_en,
    output ans_en
    );

	wire [1:0] d;
	wire [1:0] q;
	
	wire q1b, q0b, setansb, guessb;
	
	localparam INIT = 2'b00;
	localparam CAPTURE = 2'b01;
	localparam WAIT = 2'b11;
	localparam COMPARE = 2'b10;

	assign eq = (swcnt == 3'b111);
	// Complete the following:
   // Next State Logic
	not u0(q1b, q[1]);
	not u1(q0b, q[0]);
	not u2(setansb, setans);
	not u3(guessb, guess);

	//assign d[1] = (setansb & q[0]) | (setansb & q[1]) | (q1b & q[0]);
	assign d[1] = (setansb & q[0]) | (q1b & q[0]);
	assign d[0] = setans | (q1b & q[0]) | (q[0] & ~guess) | (q[1] & q0b & eq);

	
	// State memory (Complete -- do not change)
	dff1 st0(
		.clk(clk),
		.reset(reset),
		.d(d[0]),
		.q(q[0]));
		
	dff1 st1(
		.clk(clk),
		.reset(reset),
		.d(d[1]),
		.q(q[1]));
	
	// Output Function Logic (Complete -- do not change)
	assign swcnt_clr = (q == CAPTURE) || (q == WAIT);
	assign swcnt_en = (q == COMPARE);
	assign ans_en = (q == CAPTURE);
	assign corr_clr = (q == CAPTURE) || (q == WAIT)  && (guess == 1'b1);
	assign corr_en = (q == COMPARE);

endmodule
