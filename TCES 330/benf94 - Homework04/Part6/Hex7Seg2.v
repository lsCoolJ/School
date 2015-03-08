/* Homework 4 Part 5 written by Ben Foster
 * TCES 330 5/13/14
 * Depends: Hex7Seg2
 * This module displays HELLO on
 * hex displays
 */

module Hex7Seg2(in, HEX0);
	input [3:0] in; //input
	output [0:6] HEX0; //Hex display
	
	reg [0:6] hex; //variable hex
	assign HEX0 = hex;
	
	always @(in) begin
		case(in)
			1 : hex = 7'b1001000;
			2 : hex = 7'b0110000;
			3 : hex = 7'b1110001;
			4 : hex = 7'b1110001;
			5 : hex = 7'b0000001;
			default : hex = 7'b1111111;
		endcase
	end //always
endmodule

	