/* Midterm module DashDot7Seg written by Ben Foster
 * TCES 330 5/13/14
 * This module takes in 2 bits and displays
 * either a dot a dash or a gap
 */
module DashDot7Seg(Morse, HEX0);
	input [1:0] Morse; //input dot dash or gap
	output [0:6] HEX0; //output hex display
	
	wire [1:0] switch = Morse[1:0];
	reg [0:6] hex;
	assign HEX0 = hex;
	
	// possible Morse values
  localparam LGap = 2'h0, // letter gap
             Dot  = 2'h1, // dot
             Dash = 2'h2; // dash
	
	always @(*) begin
		case(switch)
			LGap : hex = 7'b1111111;
			Dot : hex = 7'b0111111;
			Dash : hex = 7'b0111110;
			default : hex = 7'b111111;
		endcase
	end //always
endmodule
