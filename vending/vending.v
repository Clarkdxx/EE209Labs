`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    12:38:31 10/12/2016 
// Design Name: 
// Module Name:    vending 
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
module vending(
    input clk,
    input reset,
    input s5,
    input s10,
    input s25,
    input s100,
    input btnc,
    input btndc,
    input btndp,
    input btns,
    output [7:0] m,
    output [7:0] c,
    output relq,
    output reld,
    output reln,
    output relc,
    output reldc,
    output reldp,
    output rels,
	 output qcollect,
	 output qrelease,
	 output qinitc,
    output qchange
    );

	wire loadm, mge100, bp, ren, loadc, cen;
	wire [1:0] mmux_sel;
	wire [7:0] m_d, msnum;

	vending_fsm fsm(
    .clk(clk),
    .reset(reset),
    .mge100(mge100),
    .bp(bp),
    .ceq0(ceq0),
    .ren(ren),
	 .loadc(loadc),
	 .cen(cen),
	 .qcollect(qcollect),
	 .qrelease(qrelease),
	 .qinitc(qinitc),
    .qchange(qchange)
    );

	// Partially complete datapath
	//   Map/draw out what we've given and look for signals
	//   you will still need to produce.  Then add all the other
	//   datapath components you need.
	
   adder8 money_adder(	.A(m),
								.B(msnum),
								.C0(1'b0),
								.S(m_d),
								.C8());
								
	pe4_2 enc(  .I0(s5),
					.I1(s10),
					.I2(s25),
					.I3(s100),
					.Y(mmux_sel),
					.V(loadm) );

	moneymux mmux1( .S(mmux_sel),
						 .MONEY( msnum )
						 );
	
	
	reg8e mreg( .clk(clk),
					.reset(mreset),
					.en(loadm),
					.d(m_d),
					.q(m) );
	
	comp8 comp_mge( .A(m),
						 .B(8'b01100011),
						 .LT(),
						 .GT(mge100),
						 .EQ() );
	
	assign bp = btnc | btndc | btndp | btns;
	
	wire relen;
	
	assign relen = ren;
	
	assign mreset = qchange | reset; //may have problem
	
	assign relc = btnc & relen;
	assign reldc = ~btnc & relen & btndc;
	assign reldp = ~btnc & ~btndc & relen & btndp;
	assign rels = ~btnc & ~btndc & ~btndp & relen & btns;
	
	//make change
	wire mge5_c, mge10_c, mge25_c, load_c, creset;
	wire [1:0] mmux_sel2;
	wire [7:0] c_d, msnum2, d_in_c, m_sub;
	
	comp8 comp_mge5( .A(c),
						 .B(8'b00000100), //4
						 .LT(),
						 .GT(mge5),
						 .EQ() );
	
	comp8 comp_mge10( .A(c),
						 .B(8'b00001001), //9
						 .LT(),
						 .GT(mge10),
						 .EQ() );
	
	comp8 comp_mge25( .A(c),
						 .B(8'b00011000), //24
						 .LT(),
						 .GT(mge25),
						 .EQ() );
	
	comp8 comp_ceq0( .A(c),
						 .B(8'b00000000),
						 .LT(),
						 .GT(),
						 .EQ(ceq0) );
	
						 
	moneymux mmux2( .S(mmux_sel2),
						 .MONEY( msnum2 )
						 );
	
	
	pe4_2 enc2(  .I0(mge5 & cen),
					.I1(mge10 & cen),
					.I2(mge25 & cen),
					.I3(loadc),
					.Y(mmux_sel2),
					.V(load_c) );
	
	
	adder8 change_subtractor(	.A(c),
								.B(~msnum2), //might have problem
								.C0(1'b1),
								.S(c_d),
								.C8());
								
	adder8 m_subtractor(	.A(m),
								.B(8'b10011011), //might have problem
								.C0(1'b1),
								.S(m_sub),
								.C8());
	
	reg8e creg( .clk(clk),
					.reset(reset), //might have problem
					.en(load_c | loadc),
					.d(d_in_c),
					.q(c) );
	
	/*mux21_8bit c_or_m(
    .I0(c),
    .I1(m_sub),
    .S(loadc),
    .Y(d_sub)
    );*/
	 mux21_8bit c_or_m(
    .I0(c_d),
    .I1(m_sub),
    .S(loadc),
    .Y(d_in_c)
    );
	 
	 
	 assign relq = cen & mge25;
	 
	 assign reld = cen & ~mge25 & mge10;
	 
	 assign reln = cen & ~mge25 & ~mge10 & mge5;
	
	
endmodule
