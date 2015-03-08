/* Homework 6 Part 2 written by Ben Foster
 * TCES 330 5/27/14
 * depends: ramplpm, Hex7Seg, Hex7SegAddress
 * This module is the top level module for Part 2
 * and displays the memory of 32 eight bit registers.
 */

module Part2(SW, KEY, CLOCK_50, LEDG, LEDR,
					HEX0, HEX1, HEX2, HEX3, HEX4,
					HEX5, HEX6, HEX7);
	input [17:0] SW; //input switches.
	input [0:0] KEY; //input key.
	input CLOCK_50; //input clock.
	
	output [0:0] LEDG; //output green led.
	output [17:0] LEDR; //output red led.
	output [0:6] HEX0, HEX1, HEX2,
					HEX3, HEX4, HEX5,
					HEX6, HEX7; //7 segment hex displays.
	
	wire [7:0] indat = SW[7:0]; //bits 7-0 is the incoming data.
	wire [4:0] wrAddr = SW[15:11]; //15-11 is the address being written to.
	wire reset = !KEY[0]; //Key 0 is the reset key.
	wire clock = CLOCK_50; //clock 50 is the clock.
	wire [7:0] Q; //Q is the output for ramlpm.
	
	reg [25:0] X; //X is used for lpm_counter.
	reg ACLR; //ACLR is used for lpm_counter.
	reg [4:0] rdAddr = 5'd0; //rdAddr is the address being read from.
	
	assign LEDG[0] = SW[17]; //exactly what it says.
	assign LEDR = SW; //exactly what it says.
	
	always @(posedge clock) begin
		//continuously count up.
		if(X == 26'd25000000) begin
			ACLR = 1'b1;
			rdAddr = rdAddr + 5'd1;
		end else ACLR = 1'b0;
	end
	
	//lpm_counter instantiation is used as a counter for the clock.
	lpm_counter #(.LPM_WIDTH(26)) U1( .aclr(ACLR), .clock(clock), .q(X) );
	
	//ramlpm instantiation takes in an address to be read or written to
	//and reads or writes to it. Output Q is the data.
	ramlpm RLPM(.clock(clock), .data(indat),
					.rdaddress(rdAddr), .wraddress(wrAddr),
					.wren(reset), .q(Q));
									
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
