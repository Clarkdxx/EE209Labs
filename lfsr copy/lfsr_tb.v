`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   07:39:56 09/09/2016
// Design Name:   lfsr
// Module Name:   C:/Users/Mark/Dropbox/EE209/Lab/lfsr_sol/lfsr_tb.v
// Project Name:  lfsr_sol
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: lfsr
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module lfsr_tb;

	// Inputs
	reg clk;
	reg reset;
	reg [7:0] key;
	reg [2:0] tap;
	reg [7:0] in_byte;
	reg in_en;
	reg start1;
   reg stop1;
	reg start2;
   reg stop2;
	
	// Outputs
	wire [7:0] enc_byte;
	wire enc_en;

	wire [7:0] out_byte;
	wire out_en;

	integer j;
	reg [7:0] data_in[0:7];
	

	task wait_n;
	input [31:0] n;
	integer i;
	begin
		for(i=0; i < n; i=i+1)
		begin
			wait(!clk);
			wait(clk);
		end
	end
	endtask

	always #5 clk <= ~clk;

	// Instantiate the Unit Under Test (UUT)
	lfsr encryptor (
		.clk(clk), 
		.reset(reset), 
		.key(key), 
		.tap(tap), 
		.in_byte(in_byte), 
		.in_en(in_en), 
		.start(start1), 
		.stop(stop1), 
		.out_byte(enc_byte), 
		.out_en(enc_en)
	);

	lfsr decryptor (
		.clk(clk), 
		.reset(reset), 
		.key(key), 
		.tap(tap), 
		.in_byte(enc_byte), 
		.in_en(enc_en), 
		.start(start2), 
		.stop(stop2), 
		.out_byte(out_byte), 
		.out_en(out_en)
	);

	initial begin
		// Initialize Inputs
		clk = 0;
		reset = 1;
		key = 0;
		tap = 0;
		in_byte = 0;
		in_en = 0;
		start1 = 0;
		stop1 = 0;
		start2 = 0;
		stop2 = 0;
		data_in[0] = 8'h61;
		data_in[1] = 8'h62;
		data_in[2] = 8'h63;
		data_in[3] = 8'h64;
		data_in[4] = 8'h65;
		data_in[5] = 8'h66;
		data_in[6] = 8'h67;
		data_in[7] = 8'h68;


		// Wait 100 ns for global reset to finish
		// Add stimulus here
		#100;
		wait_n(1);
		reset = 0;

		// TEST 1 - Pick a key and tap and verify in_byte
		//          is encrypted and then decrypted successfully
		//          by decryptor LFSR.
		wait_n(2);
      tap = 4;
		key = 8'b10010101;
		start1 = 1;
		start2 = 1;
		
		wait_n(2);
		start1 = 0;
		start2 = 0;
		for(j=0; j < 8; j=j+1)
		begin
			in_byte <= data_in[j];
			in_en = 1;
			wait_n(1);
		end
		in_byte = 0;
		in_en = 0;
		
		// TEST 2 - Choose different key & tap...Expect different
		//           encrypted results but same decrypted results.
		wait_n(2);
      tap = 6;
		key = 8'b01110110;
		start1 = 1;
		start2 = 1;
		
		wait_n(2);
		start1 = 0;
		start2 = 0;
		for(j=0; j < 8; j=j+1)
		begin
			in_byte <= data_in[j];
			in_en = 1;
			wait_n(1);
		end
		in_byte = 0;
		in_en = 0;

		// TEST 3 - Don't start Decryptor...expect no valid out_en  
		//          Forcibly stop Encryptor on cycle 3...expect
		//          enc_en to go to 0 immediately.
		wait_n(2);
      tap = 6;
		key = 8'b01110110;
		start1 = 1;
		start2 = 0;
		stop2 = 1;
		
		wait_n(2);
		start1 = 0;
		start2 = 0;
		stop2 = 0;
		for(j=0; j < 8; j=j+1)
		begin
			in_byte <= data_in[j];
			in_en = 1;
			if(j == 3)
			   stop1 = 1;
			else
			   stop1 = 0;
			wait_n(1);
		end
		in_byte = 0;
		in_en = 0;

		// TEST 4 - For you to add!!
		//          Sample sequence from prelab 
		wait_n(2);
      tap = 1;
		key = 8'b10011110;
		start1 = 1;
		start2 = 1;
		
		wait_n(2);
		start1 = 0;
		start2 = 0;
		for(j=0; j < 8; j=j+1)
		begin
			in_byte <= data_in[j];
			in_en = 1;
			wait_n(1);
		end
		in_byte = 0;
		in_en = 0;



		// Wait to finish.
		wait_n(15);
	end
      
endmodule

