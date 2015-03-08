/* Homework 6 Hex7SegAddress written by Ben Foster
 * TCES 330 5/27/14
 * This module displays either a 1 or a 0 on
 * the hex display. This module was made because
 * the addresses used in different parts of homework
 * 6 are 5 bits and one hex display can only show 4 bits.
 * An extra hex display is needed but not to show anything
 * above one.
 */
 
module Hex7SegAddress(in, HEX0);
	input in; //Input Switches
	output [0:6] HEX0; //specific 7 segment hex display
	wire switch = in;
	reg [0:6] hex;
	
	assign HEX0 = hex;
	
	always @(switch) begin
		case(switch)
			0 : hex = 7'b0000001; //0
			1 : hex = 7'b1001111; //1
			default : hex = 7'b1111111; //blank default
		endcase
	end
endmodule
