`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    12:38:52 09/28/2016 
// Design Name: 
// Module Name:    cwalk 
// Project Name: 
// Target Devices: 
// Tool versions: 
// Description: I only use counters in this lab. 0-7 is walk. 8-23 is blinking. 
// 24-39 is no walk.
//
// Dependencies: 
//
// Revision: 
// Revision 0.01 - File Created
// Additional Comments: 
//
//////////////////////////////////////////////////////////////////////////////////
module cwalk(
    input clk,
    input reset,
    output walk,
    output hand,
    output num_on,
    output [3:0] num
    );

// Instantiate your datapath units (counters, adder) and FSM module here
// Add other "glue" logic (basic gates) and wires to connect all the components
// together.

wire cntr4_0_tc, cntr4_1_tc, pe_en;
wire [3:0] cntr4_0_q;
wire [3:0] cntr4_1_q;
wire [3:0] cntr4_2_q;
wire ce_2, pe_en2;

assign ce_2 = hand & num_on;	//blink counter
/*assign pe_en2 = cntr4_2_q[3] & ~cntr4_2_q[2] & cntr4_2_q[1] &cntr4_2_q[0];*/
assign pe_en2 = walk; //check if we should reset the couter for num

cntr4 cntr4_0(
    .clk(clk),
    .reset(reset),
    .pe(pe_en),
    .p(4'b0000),
    .ce(1'b1),
    .q(cntr4_0_q),
    .tc(cntr4_0_tc)
    );

cntr4 cntr4_1(
    .clk(clk),
    .reset(reset),
    .pe(pe_en),
    .p(4'b0000),
    .ce(cntr4_0_tc),
    .q(cntr4_1_q),
    .tc(cntr4_1_tc)
);

cntr4 cntr4_2(
    .clk(clk),
    .reset(reset),
    .pe(pe_en2),
    .p(4'b0000),
    .ce(ce_2),
    .q(cntr4_2_q),
    .tc()
);

assign num = 4'b1000 - cntr4_2_q;

assign pe_en = ~cntr4_1_q[3] & ~cntr4_1_q[2] & cntr4_1_q[1] & ~cntr4_1_q[0] & ~cntr4_0_q[3] & cntr4_0_q[2] & cntr4_0_q[1] & cntr4_0_q[0]; // check for 00100111, which is 39

assign walk = ~cntr4_1_q[0] & ~cntr4_1_q[1] & ~cntr4_1_q[2] & ~cntr4_1_q[3] & ~cntr4_0_q[3];

assign hand = (num_on & cntr4_0_q[0]) + cntr4_1_q[1] + (cntr4_1_q[0] & cntr4_0_q[3]); 


/*assign num_on = (cntr4_0_q[3] & ~cntr4_1_q[0] & ~cntr4_1_q[1] & ~cntr4_1_q[2] & ~cntr4_1_q[3]) | 
						(cntr4_1_q[0] & ~cntr4_1_q[1] & ~cntr4_1_q[2] & ~cntr4_1_q[3] & ~cntr4_0_q[3]) |
						(cntr4_1_q[0] & ~cntr4_1_q[1] & ~cntr4_1_q[2] & ~cntr4_1_q[3] & cntr4_0_q[3]
						& ~cntr4_0_q[0] & ~cntr4_0_q[1] & ~cntr4_0_q[2]);*/

assign num_on = (~cntr4_1_q[1] & ~cntr4_1_q[2] & ~cntr4_1_q[3]) & (cntr4_1_q[0] ^ cntr4_0_q[3]);



endmodule
