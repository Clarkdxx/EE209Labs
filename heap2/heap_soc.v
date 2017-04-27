module heap_soc(
    input clk,
    input reset,
    input [3:0] btns,
	 input [7:0] switches,
	 output [7:0] leds,
    output [7:0] disp
    );

	// btns mapping => btns[3:0] = {size, top, pop, push}
	
	wire			interrupt;            //See note above
	wire			kcpsm6_sleep;         //See note above
	wire			kcpsm6_reset;         //See note above


	// Generic KCPSM6 I/O
	wire [11:0]  address;
	wire [17:0] instruction;
	wire [7:0] port_id, out_port, in_port;
	wire write_strobe, k_write_strobe, read_strobe, interrupt_ack, bram_enable;
		

	//
	// Some additional signals are required if your system also needs to reset KCPSM6. 
	//
	wire			cpu_reset;
	wire			rdl;

	//
	// When interrupt is to be used then the recommended circuit included below requires 
	// the following signal to represent the request made from your system.
	//
	wire			int_request;

	// Heap engine signals
	wire [7:0] dout;
	wire [7:0] size;
	wire [7:0] din;
	wire push, pop, valid, done, ack;


	/////////////////////////////////////////////////////////////////////////////////////////
	// Add your own declarations here
	/////////////////////////////////////////////////////////////////////////////////////////
	wire [7:0] mux_out1, mux_out2;
	wire doneflag;
	wire din_en, disp_en, leds_en;

	/////////////////////////////////////////////////////////////////////////////////////////
	// Complete:  Instantiate KCPSM6 and connect to Program Memory
	/////////////////////////////////////////////////////////////////////////////////////////
	//
	// The KCPSM6 parameters can be defined as required but the default values are shown below
	// and these would be adequate for most designs.
	//

	kcpsm6 #(
		.interrupt_vector	(12'h3FF),
		.scratch_pad_memory_size(64),
		.hwbuild		(8'h00))
	processor (
		.address 		(address),
		.instruction 	(instruction),
		.bram_enable 	(bram_enable),
		.port_id 		(port_id),
		.write_strobe 	(write_strobe),
		.k_write_strobe 	(k_write_strobe),
		.out_port 		(out_port),
		.read_strobe 	(read_strobe),
		.in_port 		(in_port),
		.interrupt 		(interrupt),
		.interrupt_ack 	(interrupt_ack),
		.reset 		(kcpsm6_reset),
		.sleep		(kcpsm6_sleep),
		.clk 			(clk)); 


	assign kcpsm6_reset = reset; 
	assign kcpsm6_sleep = 1'b0;
	assign interrupt = 1'b0;

	// Using non-JTAG, simplified memory
  heap2_prog program_rom (    				//Name to match your PSM file
	.enable 		(bram_enable),
	.address 		(address),
	.instruction 	(instruction),
	.clk 			(clk));

	heap heap_eng(
	    .clk(clk),
		 .reset(reset),
		 .push(push),
		 .pop(pop),
		 .din(din),
		 .dout(dout),
		 .size(size),
		 .done(done),
		 .valid(valid));
	
	/////////////////////////////////////////////////////////////////////////////////////////
	// Add all of your logic below this point
	/////////////////////////////////////////////////////////////////////////////////////////
	reg8e reg_din(
    .clk(clk),
    .reset(reset),
    .en(din_en),
    .d(out_port),
    .q(din)
    );
	assign din_en = port_id[0] & write_strobe;
	assign pop = port_id[1] & write_strobe & out_port[1];
	assign push = port_id[1] & write_strobe & out_port[0];

	assign ack = port_id[2] & write_strobe;
	reg8e reg_disp(
    .clk(clk),
    .reset(reset),
    .en(disp_en),
    .d(out_port),
    .q(disp)
    );
	assign disp_en = port_id[3] & write_strobe;
	reg8e reg_leds(
    .clk(clk),
    .reset(reset),
    .en(leds_en),
    .d(out_port),
    .q(leds)
    );
	assign leds_en = port_id[4] & write_strobe;
	
	wire [7:0] mux_out3;
	mux21_8bit mux1(
		 .I0({4'b0000, btns[3:0]}),
		 .I1(switches),
		 .S(port_id[0]),
		 .Y(mux_out1)
		 );
	mux21_8bit mux2(
		 .I0({7'b0000000, doneflag}),
		 .I1(dout),
		 .S(port_id[0]),
		 .Y(mux_out2)
		 );
	mux21_8bit mux3(
    .I0(mux_out1),
    .I1(mux_out2),
    .S(port_id[1]),
    .Y(mux_out3)
    );
	mux21_8bit mux4(
    .I0(mux_out3),
    .I1(size),
    .S(port_id[2]),
    .Y(in_port)
    );
	
	dff1s done_signal(
    .clk(clk),
    .clr(ack),
	 .set(done),
    .d(doneflag),
    .q(doneflag)
    );

endmodule
