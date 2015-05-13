/* Homework 6 Hex7Seg written by Ben Foster
 * TCES 330 5/27/14
 * This module displays numbers 0-F on
 * input HEX.
 */
 
module Hex7Seg(in, HEX);
	input [3:0] in; //Input Switches
	output [0:6] HEX; //specific 7 segment hex display
	wire [3:0] switch = in[3:0];
	reg [0:6] hex;
	
	assign HEX = hex;
	
	always @(switch) begin
		case(switch)
			0 : hex = 7'b0000001; //0
			1 : hex = 7'b1001111; //1
			2 : hex = 7'b0010010; //2
			3 : hex = 7'b0000110; //3
			4 : hex = 7'b1001100; //4
			5 : hex = 7'b0100100; //5
			6 : hex = 7'b0100000; //6
			7 : hex = 7'b0001111; //7
			8 : hex = 7'b0000000; //8
			9 : hex = 7'b0000100; //9
			10 : hex = 7'b0001000; //A
			11 : hex = 7'b1100000; //B
			12 : hex = 7'b0110001; //C
			13 : hex = 7'b1000010; //D
			14 : hex = 7'b0110000; //E
			15 : hex = 7'b0111000; //F
			default : hex = 7'b1111111; //blank default
		endcase
	end
endmodule
