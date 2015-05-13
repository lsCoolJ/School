/*Homework 1 Part 4 by Ben Foster
 *TCES 330 4/16/14
 */
module HW1Part4(SW, LEDR, HEX0);
	input [2:0] SW; //togle switches
	output [2:0] LEDR; //red LEDs
	output [0:6] HEX0; //seven-segment display
	
	assign LEDR = SW; //displays the input switches
	HexHELO H(SW, HEX0); //hook up the hex display with instance
	
endmodule
