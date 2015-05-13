/*Homework 2 Part 1 written by Ben Foster
 *TCES 330 4/23/14
 */
module HW2Part1(HEX0, HEX1, HEX2, HEX3, SW, LEDR);
	input[15:0] SW; //input switches
	output[15:0] LEDR; //Red LEDs
	output[0:6] HEX0, HEX1, HEX2, HEX3; //7-segment Hex displays
	
	assign LEDR = SW; //Assign red LED's to Switches
	
	Hex7Seg H0(SW[3:0], HEX0); //Hex display 0
	Hex7Seg H1(SW[7:4], HEX1); //Hex display 1
	Hex7Seg H2(SW[11:8], HEX2); //Hex display 2
	Hex7Seg H3(SW[15:12], HEX3); //Hex display 3
	
endmodule
