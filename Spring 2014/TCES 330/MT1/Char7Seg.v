/* Midterm module Char7Seg written by Ben Foster
 * TCES 330 5/13/14
 * This module takes in a letter and displays
 * it on HEX1
 */
 
module Char7Seg(Letter, HEX1);
	input [2:0] Letter; //input letter
	output [0:6] HEX1; //output hex display
	
	wire [2:0] switch = Letter[2:0];
	reg [0:6] hex;
	assign HEX1 = hex;
	// possible Letter values
  localparam H = 3'h0,  
             E = 3'h1,
             L = 3'h2,
             O = 3'h3,
	          Blank = 3'h4;
	
	always @(*) begin
		case(switch)
			H : hex = 7'b1001000; //H
			E : hex = 7'b0110000; //E
			L : hex = 7'b1110001; //L
			O : hex = 7'b0000001; //O
			default : hex = 7'b1111111; //Blank
		endcase
	end
endmodule
