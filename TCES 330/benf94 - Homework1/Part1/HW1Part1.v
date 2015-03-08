/*Homework 1 Part 1 module by Ben Foster
 *TCES 330 4/16/14
 */
module HW1Part1(SW, LEDR);
	input [17:0] SW; //All switches for input
	output [17:0] LEDR; //All red LEDs for output
	assign LEDR = SW; //map each switch to each LED

endmodule
