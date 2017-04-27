`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    13:05:08 10/12/2016 
// Design Name: 
// Module Name:    vending_fsm 
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
module vending_fsm(
    input clk,
    input reset,
    input mge100,
    input bp,
    input ceq0,
    output ren,
	 output loadc,
	 output cen,
	 output qcollect,
	 output qrelease,
	 output qinitc,
    output qchange
    );

	wire dcollect; // qcollect is declared above as an output wire
	wire drelease;
	wire dinitc;
	wire dchange; 
	
	// Important:  Use the *dff1s* design (in dff1s.v) for your flip-flops 
	//  since they have both set and clr inputs.  One is instantiated
	//  below but needs to be wired
	dff1s collect(	.clk(clk),
						.clr(1'b0),
						.set(reset),
						.d(dcollect),
						.q(qcollect));


	// Add more flip-flops and logic for the NSL and OFL.  
	//  We recommend a one-hot approach.
	//  Feel free to use assign statements rather than 
	//  instantiating many gates
	
	dff1s releas(	.clk(clk),
						.clr(reset),
						.set(1'b0),
						.d(drelease),
						.q(qrelease));
	
	dff1s initc(	.clk(clk),
						.clr(reset),
						.set(1'b0),
						.d(dinitc),
						.q(qinitc));
	
	dff1s change(	.clk(clk),
						.clr(reset),
						.set(1'b0),
						.d(dchange),
						.q(qchange));
	
	assign dcollect = (~mge100 & qcollect) | (qchange & ceq0); 
	
	assign drelease = (qcollect & mge100) | (qrelease & ~bp);
	
	assign dinitc = qrelease & bp;
	
	assign dchange = qinitc | (qchange & ~ceq0);
	
	assign ren = qrelease & bp;

	assign loadc = qinitc;
	
	assign cen = qchange;
	
endmodule
