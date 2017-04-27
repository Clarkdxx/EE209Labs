`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    13:31:33 10/24/2016 
// Design Name: 
// Module Name:    ping 
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
module ping(
    input clk,
    input reset,
    input go,
    input inches,
    input pulsein,
	 output pulseout,
	 output pulseen,
    output convdone,
    output [7:0] result
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
	assign dstart = (qwait & go) | (qstart & ~t5);
	
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
	assign dpulse = (qhold & t750) | (qpulse & ~pulsein);
	
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
		 .q(qdelay)
		 );
	assign ddelay = (qreceive & ~pulsein) | (qdelay & ~t200);
	
	assign pulseout = qstart;
	assign pulseen = qwait | qstart | qhold;
	
	
	wire [15:0] cntr_5;
	wire [15:0] cntr_750;
	wire [15:0] cntr_200;
	wire [15:0] cntr_pulsein;
	

	cntr16ce cntrce_5(
		 .clk(clk),
		 .reset(reset | qhold),
		 .ce(qstart),
		 .q(cntr_5)
		 );
		 
	compeq16 compeq_2c(
    .a(cntr_5),
    .b(16'b0000000000000001),
    .eq(t5)
    );
	 
	cntr16ce cntrce_750(
		 .clk(clk),
		 .reset(reset | qpulse),
		 .ce(qhold),
		 .q(cntr_750)
		 );
		 
	compeq16 compeq_293c(
    .a(cntr_750),
    .b(16'b0000000100100101),
    .eq(t750)
    );
	 
	cntr16ce cntrce_200(
		 .clk(clk),
		 .reset(reset | qwait),
		 .ce(qdelay),
		 .q(cntr_200)
		 );
		 
	compeq16 compeq_79c(
    .a(cntr_200),
    .b(16'b0000000001001111),
    .eq(t200)
    );
	
	compeq16 compeq_78c(
    .a(cntr_200),
    .b(16'b0000000001001110),
    .eq(convdone)
    );
	
	cntr16ce cntrce_measure(
		 .clk(clk),
		 .reset(reset | qwait),
		 .ce(pulsein),
		 .q(cntr_pulsein)
		 );
		 
	wire [31:0] inch_prod;
	wire [31:0] cm_prod;
	wire [7:0] inch_result;
	wire [7:0] cm_result;
	
	mult16x16 mult_inch(
    .a(cntr_pulsein),
    .b(16'b0000010001111001),
    .prod(inch_prod)
    );
	assign inch_result = inch_prod[23:16];
	
	mult16x16 mult_cm(
    .a(cntr_pulsein),
    .b(16'b0000101101011101),
    .prod(cm_prod)
    );
	assign cm_result = cm_prod[23:16];
	
	//wire result_7, result_6, result_5, result_4, result_3, result_2, result_1, result_0;
	
	wire [7:0] result_in;
	assign result_in[7] = (cm_result[7] & ~inches) | (inch_result[7] & inches);
	assign result_in[6] = (cm_result[6] & ~inches) | (inch_result[6] & inches);
	assign result_in[5] = (cm_result[5] & ~inches) | (inch_result[5] & inches);
	assign result_in[4] = (cm_result[4] & ~inches) | (inch_result[4] & inches);
	assign result_in[3] = (cm_result[3] & ~inches) | (inch_result[3] & inches);
	assign result_in[2] = (cm_result[2] & ~inches) | (inch_result[2] & inches);
	assign result_in[1] = (cm_result[1] & ~inches) | (inch_result[1] & inches);
	assign result_in[0] = (cm_result[0] & ~inches) | (inch_result[0] & inches);
	
	reg8e reg_result(
    .clk(clk),
    .reset(reset),
    .en(qdelay),
    .d(result_in),
    .q(result)
    );
	
	 
	 
	 
	 

endmodule
