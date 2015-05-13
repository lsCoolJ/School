/* Homework 6 Part 1 written by Ben Foster
 * TCES 330 5/27/14
 * depends: ramlpm, Hex7Seg, Hex7SegAddress
 * This module is the top level module for Part 1.
 * It relays input hardware to output hardware.
 */

module Part1(KEY, SW, LEDG, LEDR, HEX0, HEX1, HEX4, HEX5, HEX6, HEX7);
	input [0:0] KEY; //input Key.
	input [17:0] SW; //input switches.
	output [17:0] LEDR; //output red leds.
	output [0:0] LEDG; //output green led.
	//7 segment hex displays.
	output [0:6] HEX0, HEX1, HEX4, HEX5, HEX6, HEX7;
	
	wire [7:0] indat = SW[7:0]; //7-0 bits is the incoming data.
	wire [4:0] address = SW[15:11]; //15-11 is the address being written to or read from.
	wire wren = SW[17]; //17 is the write enable.
	wire clock = KEY[0]; //KEY0 is the clock.
	wire [7:0] Q; //Q is the output from ramlpm.
	
	assign LEDG[0] = SW[17]; //exactly what it says.
	assign LEDR = SW; //duh.
	
	//ramlpm instantiation takes in the address and data and write enable and clock
	//and outputs the data that was either written to or read from the register.
	ramlpm RLPM(.address(address), .clock(clock), .data(indat), .wren(wren), .q(Q));
	
	//Hex7Seg instantiations H0 and H1 display Q.
	Hex7Seg H0(Q[3:0], HEX0);
	Hex7Seg H1(Q[7:4], HEX1);
	
	//Hex7Seg instantiations H4 and H5 display the incoming data.
	Hex7Seg H4(indat[3:0], HEX4);
	Hex7Seg H5(indat[7:4], HEX5);
	
	//Hex7Seg instantiations H6 and H7 display the address being read from or written to.
	Hex7Seg H6(address[3:0], HEX6);
	Hex7SegAddress H7(address[4], HEX7);
	
endmodule
