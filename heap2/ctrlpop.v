`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    15:14:23 04/05/2017 
// Design Name: 
// Module Name:    ctrlpop 
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
module ctrlpop(
    input clk,
    input reset,
    input start,
    input [7:0] mdout,
    input [7:0] size,
    output sizedec,
    output mwen,
    output [7:0] maddr,
    output [7:0] mdin,
    output done
    );

// You complete
	wire didle, dinit, dchild, drcomp, dpcomp, ddone;
	wire qidle, qinit, qchild, qrcomp, qpcomp, qdone;
	wire [7:0] qcidx, cidx2;
	wire size_gt_2, cidx_1_gt_size, c_lt_p, cidx2_lte_size;
	assign size_gt_2 = (size[7:0] > 2);
	assign cidx_1_gt_size = ((qcidx[7:0] + 1) > size[7:0]);
	assign c_lt_p = (qc[7:0] < qp[7:0]);
	assign cidx2 = {qcidx[6:0], 1'b0};
	assign cidx2_lte_size = (cidx2[7:0] <= size[7:0]);
	
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
	assign sizedec = qinit;
	
	dff1s child(
		 .clk(clk),
		 .clr(reset),
		 .set(1'b0),
		 .d(dchild),
		 .q(qchild)
		 );
	assign dchild = (qinit & size_gt_2) | (qpcomp & c_lt_p & cidx2_lte_size);
	
	dff1s rcomp(
		 .clk(clk),
		 .clr(reset),
		 .set(1'b0),
		 .d(drcomp),
		 .q(qrcomp)
		 );
	assign drcomp = qchild & ~cidx_1_gt_size;
		
	dff1s pcomp(
		 .clk(clk),
		 .clr(reset),
		 .set(1'b0),
		 .d(dpcomp),
		 .q(qpcomp)
		 );
	assign dpcomp = qrcomp | (qchild & cidx_1_gt_size);
	
	dff1s dff_done(
		 .clk(clk),
		 .clr(reset),
		 .set(1'b0),
		 .d(ddone),
		 .q(qdone)
		 );
	assign ddone = (qinit & ~size_gt_2) | (qpcomp & (~c_lt_p | ~cidx2_lte_size));
	assign done = qdone;
	
	wire [7:0] didx, qidx;
	wire idx_en;
	reg8e reg_idx(
    .clk(clk),
    .reset(reset),
    .en(idx_en),
    .d(didx),
    .q(qidx)
    );
	mux21_8bit idx_select(
    .I0(qcidx),
    .I1(8'b00000001),
    .S(qinit),
    .Y(didx)
    );
	assign idx_en = qinit | (qpcomp & c_lt_p);
	
	wire [7:0] dcidx, mux_out0, cidxi1;
	wire cidx_en;
	reg8e reg_cidx(
    .clk(clk),
    .reset(reset),
    .en(cidx_en),
    .d(dcidx),
    .q(qcidx)
    );
	assign cidxi1 = (qcidx[7:0]+1);
	mux21_8bit cidx_select0(
    .I0(8'b00000010),
    .I1(cidxi1),
    .S(qrcomp),
    .Y(mux_out0)
    );
	mux21_8bit cidx_select1(
    .I0(mux_out0),
    .I1(cidx2),
    .S(qpcomp),
    .Y(dcidx)
    );
	assign cidx_en = qinit | (qrcomp & ((mdout[7:0] + 1) < qc));
	
	wire [7:0] qc;
	wire c_en;
	reg8e reg_c(
    .clk(clk),
    .reset(reset),
    .en(c_en),
    .d(mdout),
    .q(qc)
    );
	assign c_en = qchild | (qrcomp & ((mdout[7:0] + 1) < qc));
	
	wire [7:0] qp;
	wire p_en;
	reg8e reg_p(
    .clk(clk),
    .reset(reset),
    .en(p_en),
    .d(mdout),
    .q(qp)
    );
	assign p_en = qinit;
	
	//maddr
	wire [7:0] mux_out_0, mux_out_1, maddri1;
	mux21_8bit maddr_select0(
    .I0(size),
    .I1(qcidx),
    .S(qchild),
    .Y(mux_out_0)
    );
	assign maddri1 = (qcidx[7:0]+1);
	mux21_8bit maddr_select1(
    .I0(mux_out_0),
    .I1(maddri1),
    .S(qrcomp),
    .Y(mux_out_1)
    );
	mux21_8bit maddr_select2(
    .I0(mux_out_1),
    .I1(qidx),
    .S(qdone | (qpcomp & c_lt_p)),
    .Y(maddr)
    );
	
	//mdin
	mux21_8bit mdin_select(
    .I0(qc),
    .I1(qp),
    .S(qdone),
    .Y(mdin)
    );
	assign mwen = qdone | (qpcomp & c_lt_p);
	
endmodule
