/*Homework 1 Part 2 written by Ben Foster
 *TCES 330 4/23/14
 */
module HW2Part2(SW, LEDR, HEX0, HEX1);
	input [3:0] SW; //Input Switches
	output [3:0] LEDR; //Red LEDs
	output [0:6] HEX0, HEX1; //7 segment hex displays
	
	assign LEDR = SW; //Assign red LEDs to switches
	wire [3:0] D0, D1; //Wires used for segment input
	
	//B2BCD instance. D0 = S0 in sum, D1 = Cout in sum.
	B2BCD B1(SW[3:0], D0[3:0], D1[3:0]);
	
	//7 Segment displays
	Hex7Seg HE0(D0[3:0], HEX0);
	Hex7Seg HE1(D1[3:0], HEX1);
	
endmodule
