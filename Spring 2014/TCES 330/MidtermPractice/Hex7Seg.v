/* Homework 4 Hex7Seg written by Ben Foster
 * TCES 330 5/13/14
 * This module displays numbers 1-9 on hex0
 */
module Hex7Seg(SW, HEX0);
	input [2:0] SW; //Input Switches
	output [0:6] HEX0; //specific 7 segment hex display
	wire [2:0] switch = SW[2:0];
	reg [0:6] hex;
	
	assign HEX0 = hex;
	
	always @(switch) begin
		case(switch)
			0 : hex = 7'b0000001; //0
			1 : hex = 7'b1001111; //1
			2 : hex = 7'b0010010; //2
			3 : hex = 7'b0000110; //3
			4 : hex = 7'b1001100; //4
			5 : hex = 7'b0100100; //5
			default : hex = 7'b1111111; //blank default
		endcase
	end
endmodule
