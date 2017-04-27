`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    12:38:02 09/19/2016 
// Design Name: 
// Module Name:    slreg12 
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
module slreg9(
    input clk,
    input reset,
    input [8:0] d,
	 input d_in,
    input shift,
    input load,
    output [8:0] q
    );



	wire [8:0] myd;

	// Add logic to produce the myd[i] inputs which the FF's will use as their
	//  true D input.  You may use assign statements or use components/modules
	//  that are already available and just need to be instantiated, or a 
	//  combination of both
	 
	mux3 mux3_0(q[0],d_in,d[0],load,shift,myd[0]);
	mux3 mux3_1(q[1],q[0],d[1],load,shift,myd[1]);
	mux3 mux3_2(q[2],q[1],d[2],load,shift,myd[2]);
	mux3 mux3_3(q[3],q[2],d[3],load,shift,myd[3]);
	mux3 mux3_4(q[4],q[3],d[4],load,shift,myd[4]);
	mux3 mux3_5(q[5],q[4],d[5],load,shift,myd[5]);
	mux3 mux3_6(q[6],q[5],d[6],load,shift,myd[6]);
	mux3 mux3_7(q[7],q[6],d[7],load,shift,myd[7]);
	mux3 mux3_8(q[8],q[7],d[8],load,shift,myd[8]);
	
	


	// You should not need to change any of these FF connections
	dff1 ff0(.clk(clk),
				.reset(reset),
				.d(myd[0]),
				.q(q[0]) );

	dff1 ff1(.clk(clk),
				.reset(reset),
				.d(myd[1]),
				.q(q[1]) );

	dff1 ff2(.clk(clk),
				.reset(reset),
				.d(myd[2]),
				.q(q[2]) );

	dff1 ff3(.clk(clk),
				.reset(reset),
				.d(myd[3]),
				.q(q[3]) );

	dff1 ff4(.clk(clk),
				.reset(reset),
				.d(myd[4]),
				.q(q[4]) );

	dff1 ff5(.clk(clk),
				.reset(reset),
				.d(myd[5]),
				.q(q[5]) );

	dff1 ff6(.clk(clk),
				.reset(reset),
				.d(myd[6]),
				.q(q[6]) );

	dff1 ff7(.clk(clk),
				.reset(reset),
				.d(myd[7]),
				.q(q[7]) );
	
	dff1 ff8(.clk(clk),
				.reset(reset),
				.d(myd[8]),
				.q(q[8]) );
endmodule
