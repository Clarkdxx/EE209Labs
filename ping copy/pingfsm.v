`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    18:10:30 04/05/2017 
// Design Name: 
// Module Name:    pingfsm 
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
module pingfsm(
	input clk,
	input reset,
	input go,
	input pulsein,
	input t5,
	input t750
	
    );
	 
	 wire dwait, dstart, dhold, dpulse, dreceive, ddelay;
	wire qwait, qstart, qhold, qpulse, qreceive, qdelay;
	wire t5, t750, t200;

	dff1s dff_wait(
		 .clk(clk),
		 .clr(),
		 .set(reset),
		 .d(dwait),
		 .q(qwait)
		 );
	assign dwait = (qdelay & t200) | (qwait & ~go);
	
	dff1s dff_start(
		 .clk(clk),
		 .clr(reset),
		 .set(),
		 .d(dstart),
		 .q(qstart)
		 );
	assign dstart = (qwaiting & go) | (qstart & ~t5);
	
	dff1s dff_hold(
		 .clk(clk),
		 .clr(reset),
		 .set(),
		 .d(dhold),
		 .q(qhold)
		 );
	assign dhold = (qstart & t5) | (qhold & ~t750);
	
	dff1s dff_pulse(
		 .clk(clk),
		 .clr(reset),
		 .set(),
		 .d(dpulse),
		 .q(qpulse)
		 );
	assign dpulse = (qhold & t750) | (qpulse | ~pulsein);
	
	dff1s dff_receive(
		 .clk(clk),
		 .clr(reset),
		 .set(),
		 .d(dreceive),
		 .q(qreceive)
		 );
	assign dreceive = (qpulse & pulsein) | (qreceive & pulsein);
	
	dff1s dff_delay(
		 .clk(clk),
		 .clr(reset),
		 .set(),
		 .d(ddelay),
		 .q(qdealy)
		 );
	assign ddelay = (qreceive & ~pulsein) | (qdelay & ~t200);
	
	assign pulseout = qstart;
	assign pulseen = qwait | qstart | qhold;
	


endmodule
