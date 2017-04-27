`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   13:00:53 10/25/2016
// Design Name:   ping
// Module Name:   C:/Users/Mark/Dropbox/EE209/Lab/ping_sol/ping_tb.v
// Project Name:  ping_sol
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: ping
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module ping_tb;

	// Inputs
	reg clk;
	reg reset;
	reg go;
	reg inches;
	reg pulsein;

	// Outputs
	wire pulseout;
	wire pulseen;
	wire convdone;
	wire [7:0] result;

	// Instantiate the Unit Under Test (UUT)
	ping uut (
		.clk(clk), 
		.reset(reset), 
		.go(go), 
		.inches(inches), 
		.pulsein(pulsein), 
		.pulseout(pulseout), 
		.pulseen(pulseen), 
		.convdone(convdone), 
		.result(result)
	);

	always #1.28 clk =  ~clk;
	
	initial begin
		// Initialize Inputs
		clk = 0;
		reset = 1;
		go = 0;
		inches = 0;
		pulsein = 0;

		// Wait 100 ns for global reset to finish
		
		// Note: For the sake of simulation we'll assume a
		//  2.56ns clock rather than a 2.56us clock.  Thus,
		//  everything will be scaled down from microseconds (us)
		//  to nanoseconds (ns) in the simulation.
		#100;
		reset = 0;
		#5;
        
		#2.56;
		go = 1;
		#50;
		go = 0;
		#750;
		pulsein = 1;    // Sample return pulse of 200 ns (really us)
		#400;           //   This sound be around 156-157 cycles
		pulsein = 0;    //  156-157 cycles => 6-7 cm, 2-3 inches
		#250;
		
		// Repeat for inches
		inches = 1;
		#2.56;
		go = 1;
		#50;
		go = 0;
		#750;
		pulsein = 1;    // Sample return pulse of 200 ns (really us)
		#400;           //   This sound be around 156-157 cycles
		pulsein = 0;    //  156-157 cycles => 6-7 cm, 2-3 inches
		#250;
		
		// Add stimulus here
		inches = 0;
		#2.56;
		go = 1;
		#50;
		go = 0;
		#750;
		pulsein = 1;  // Sample return pulse of 400 ns (really us)
		#800;           //   This sound be around 312-314 cycles
		pulsein = 0;    //  195-196 cycles => 12-14 cm, 4-6 inches
		#250;
		/*inches = 0;
		#2.56;
		go = 1;
		#5;
		go = 0;
		#750;
		pulsein = 1;  // Sample return pulse of 400 ns (really us)
		#800;           //   This sound be around 312-314 cycles
		pulsein = 0;    //  195-196 cycles => 12-14 cm, 4-6 inches
		#250;*/
	end
      
endmodule

