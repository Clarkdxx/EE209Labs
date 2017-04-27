`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    11:40:13 04/05/2017 
// Design Name: 
// Module Name:    ctrlpush 
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
module ctrlpush(
    input clk,
    input reset,
    input start,
    input [7:0] mdout,
    input [7:0] size,
	 input [7:0] din,
    output sizeinc,
    output mwen,
    output [7:0] maddr,
    output [7:0] mdin,
    output done
    );



// You complete
	wire size_gt_0, din_lt_p, idx_ha_eq1;
	wire [7:0] idx_ha;
	assign size_gt_0 = (size[7:0] > 0);
	assign idx_ha = {1'b0, qidx[7:1]};
	assign din_lt_p = (din[7:0] < qp);
	assign idx_ha_eq1 = (idx_ha == 1);
	
	wire didle, dinit, dparent, ddone, qidle, qinit, qparent, qcomp, qdone; 

	dff1s idle(
		 .clk(clk),
		 .clr(1'b0),
		 .set(reset),
		 .d(didle),
		 .q(qidle)
		 );
	assign didle = qdone | (qidle & ~start);
	
	dff1s init(
		 .clk(clk),
		 .clr(reset),
		 .set(1'b0),
		 .d(dinit),
		 .q(qinit)
		 );
	assign dinit = qidle & start;
	assign sizeinc = qinit;
	
	dff1s parent(
		 .clk(clk),
		 .clr(reset),
		 .set(1'b0),
		 .d(dparent),
		 .q(qparent)
		 );
	assign dparent = (qinit & size_gt_0) | (qcomp & din_lt_p & (~idx_ha_eq1));
	
	dff1s comp(
		 .clk(clk),
		 .clr(reset),
		 .set(1'b0),
		 .d(qparent),
		 .q(qcomp)
		 );
	
	dff1s dff_done(
		 .clk(clk),
		 .clr(reset),
		 .set(1'b0),
		 .d(ddone),
		 .q(qdone)
		 );
	assign ddone = (qinit & (~size_gt_0)) | (qcomp & (~din_lt_p | idx_ha_eq1));
	assign done = qdone;
	
	wire [7:0] didx, qidx, size_add_1;
	wire idx_en;
	reg8e reg_idx(
    .clk(clk),
    .reset(reset),
    .en(idx_en),
    .d(didx),
    .q(qidx)
    );
	assign idx_en = qinit | (qcomp & din_lt_p);
	assign size_add_1 = size + 1;
	mux21_8bit idx_select(
    .I0(idx_ha),
    .I1(size_add_1),
    .S(qinit),
    .Y(didx)
    );
	 
	wire [7:0] dp, qp, dmaddr, ddin;
	reg8e reg_parent(
    .clk(clk),
    .reset(reset),
    .en(qparent),
    .d(mdout),
    .q(qp)
    );
	 
	mux21_8bit addr_select(
    .I0(qidx),
    .I1(idx_ha),
    .S(qparent),
    .Y(maddr)
    );
	 
	 mux21_8bit din_select(
    .I0(qp),
    .I1(din),
    .S(qdone),
    .Y(mdin)
    );
	 
	 assign mwen = (qcomp & din_lt_p) | qdone;
	
endmodule

module mux21_8bit(
    input [7:0] I0,
    input [7:0] I1,
    input S,
    output reg [7:0] Y
    );

	always @*
	begin
		if(S == 1) Y = I1;
		else  		Y = I0;
	end

endmodule

module dff1s(
    input clk,
    input clr,
	 input set,
    input d,
    output reg q
    );

always@(posedge clk)
begin
	if(clr == 1) 
		q <= 0;
	else if(set == 1)
	   q <= 1;
	else 
		q <= d;
end

endmodule

module reg8e(
    input clk,
    input reset,
    input en,
    input [7:0] d,
    output reg [7:0] q
    );

	always @(posedge clk)
	begin
		if(reset) q <= 8'b00000000;
		else if(en) q <= d;
	end
	
endmodule
