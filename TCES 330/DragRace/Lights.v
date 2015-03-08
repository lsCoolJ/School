/* Homework 5 Lights module written by Ben Foster.
 * TCES 330 5/20/14
 * This module is a variation of the Hex7Seg module
 * That only takes in a one bit input and sets the
 * Displays to either be completely on or completely
 * off depending on the input.
 */

module Lights(onOFF, HEX0);
	input onOFF; //inputs onOFF is either 1 or 0.
	output [0:6] HEX0; //HEX0 is the hex display.
	
	reg [0:6] hex; //variable hex
	assign HEX0 = hex; //HEX0 = hex.
	
	always @(onOFF) begin
		if(onOFF) hex = 7'b0000000; //all segments on.
		else hex = 7'b1111111; //all segments off.
	end //always
	
endmodule
