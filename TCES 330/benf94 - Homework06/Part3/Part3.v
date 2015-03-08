/* Homework 6 Part 3 written by Ben Foster
 * TCES 330 5/27/14
 * depends: lpm_counter, ramlpm, Hex7Seg, Hex7SegAddress
 * This module is the top level module
 * for part 3 and connects the input hardware
 * to the output hardware.
 */

module Part3(SW, KEY, CLOCK_50, LEDG, LEDR, HEX0, HEX1, HEX2, HEX3, HEX4, HEX5, HEX6, HEX7);
	input [17:0] SW; //input switches
	input [0:0] KEY; //input Key
	input CLOCK_50; //input 50 Mhz clock
	
	output [0:0] LEDG = SW[17]; //assign green led to last switch
	output [17:0] LEDR = SW[17:0]; //red leds = switches
	output [0:6] HEX0, HEX1, HEX2, 
			HEX3, HEX4, HEX5,
			HEX6, HEX7; //7 segment hex displays
			
	wire [7:0] indat = SW[7:0]; //first 8 switches are data input.
	wire [4:0] wrAddr = SW[15:11]; //15-11 is the address to write to.
	wire wren = SW[17]; //17 is the write enable switch.
	wire reset = !KEY[0]; //key 0 is the reset.
	wire clock = CLOCK_50; //clock 50 is the clock. wow.
	wire [7:0] Q; //Q is the output of ramlpm module.
	
	//rdAddr is the read address which changes.
	reg [4:0] rdAddr = 0;
	//muxAddr is the address that goes into the ramlpm
	//module and is either wrAddr or rdAddr.
	reg [4:0] muxAddr;
	//X is used for the lpm_counter.
	reg [25:0] X;
	//en_delay is the enable delay and is used 
	//to get rid of errors when flipping the 
	//enable switch before the clock cycle is done.
	reg en_delay = 1'b0;
	//ACLR is the asynchronous clear for the lpm_counter.
	reg ACLR;
	
	always @(posedge clock) begin
		if(X == 26'd25000000) begin
			ACLR = 1'b1;
			//if write enable is on, use the write
			//address to write to a register.
			if(wren) begin
				muxAddr = wrAddr;
				en_delay = 1'b1;
			//otherwise read from rdAddr.
			end else begin
				en_delay = 1'b0;
				rdAddr = rdAddr + 5'd1;
				muxAddr = rdAddr;
				//if reset is clicked, then
				//reset the rdAddr.
				if (reset) begin
					rdAddr = 5'd0;
					muxAddr = rdAddr;
				end
			end
		end else ACLR = 1'b0;
	end
	
	//lpm_counter instantiation is used as a counter for the clock.
	lpm_counter #(.LPM_WIDTH(26)) U1( .aclr(ACLR), .clock(clock), .q(X) );
	
	//ramlpm spits out the register that is either read from or written to.
	ramlpm RLPM(.address(muxAddr), .clock(clock), .data(indat), .wren(en_delay), .q(Q));

	//Hex7Seg instantiations H0 and H1 display
	//the output Q.
	Hex7Seg H0(Q[3:0], HEX0);
	Hex7Seg H1(Q[7:4], HEX1);
	
	//Hex7Seg instantiations H2 and H3 display
	//the address being read.
	Hex7Seg H2(rdAddr[3:0], HEX2);
	Hex7SegAddress H3(rdAddr[4], HEX3);
	
	//Hex7Seg instantiations H4 and H5 display
	//the data being written in.
	Hex7Seg H4(indat[3:0], HEX4);
	Hex7Seg H5(indat[7:4], HEX5);
	
	//Hex7Seg instantiations H6 and H7 display
	//the address to write to.
	Hex7Seg H6(wrAddr[3:0], HEX6);
	Hex7SegAddress H7(wrAddr[4], HEX7);
	
endmodule
