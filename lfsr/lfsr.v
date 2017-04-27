`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    10:06:19 09/02/2016 
// Design Name: 
// Module Name:    lfsr 
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
module lfsr(
	input         clk,
	input         reset,
	input  [7:0]  key,
	input  [2:0]  tap,
	input  [7:0]  in_byte,
	input         in_en, 
	input         start,
	input         stop,
	output [7:0]  out_byte,
	output        out_en
);

wire [8:0]  lfsr;
wire [7:0]  in_byte_q;
wire        in_en_q;
wire mux8_out;
wire d_in;
wire vaild;
wire running, shload;

dff1 dff_en(.clk(clk), .reset(reset), .d(in_en), .q(in_en_q));

reg8 in_reg(.clk(clk), .reset(reset), .d(in_byte), .q(in_byte_q));
 
mux8 mux8_0(lfsr, tap, mux8_out);

assign d_in = mux8_out ^ lfsr[8];

/*
integer i;
initial
	begin
		for(i=0; i<8; i=i+1)
		begin
			out_byte[i] = lfsr[i] ^ in_byte_q[i];
		end
	end*/

assign out_byte[0] = lfsr[0] ^ in_byte_q[0];
assign out_byte[1] = lfsr[1] ^ in_byte_q[1];
assign out_byte[2] = lfsr[2] ^ in_byte_q[2];
assign out_byte[3] = lfsr[3] ^ in_byte_q[3];
assign out_byte[4] = lfsr[4] ^ in_byte_q[4];
assign out_byte[5] = lfsr[5] ^ in_byte_q[5];
assign out_byte[6] = lfsr[6] ^ in_byte_q[6];
assign out_byte[7] = lfsr[7] ^ in_byte_q[7];

slreg9 slreg9_0(clk, reset, {1'b0, key}, d_in, vaild, shload, lfsr);

lfsr_fsm lfsr_fsm_0(clk, reset, start, stop, running, shload);

assign vaild = running & in_en_q;
assign out_en = vaild;
 
endmodule