`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    11:53:17 04/03/2017 
// Design Name: 
// Module Name:    mem16x8 
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

module mem256x8(
    input [7:0] addr,
    input clk,
    input wen,
    input [7:0] din,
    output [7:0] dout
    );

  localparam          WIDTH = 8;
  localparam          DEPTH = 256;
  localparam          ADDR_SIZE = 8;


  
//  input               clk;
//  input [WIDTH-1:0]   din;
//  input               wen;
//  output [WIDTH-1:0]  dout;
  
  reg [WIDTH-1:0]     mem_array[0:DEPTH-1];
  
 
  always @(posedge clk)
  begin

	  if ( wen == 1 )               // normal write
	  begin
		 mem_array[addr] <= din;
	  end
  end  
  
  assign dout = mem_array[addr] ;
  
endmodule
