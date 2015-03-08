/*Homework 2 Comparator written by Ben Foster
 *TCES 330 4/23/14
 *This Comparator module is different from the part 2 comparator.
 */
module Comparator(LEDG, D1);
	input [4:0] LEDG; //Inputs are the green LEDs
	output [3:0] D1; //Output D1
	
	//Assign D1 to say when input is above 9
	assign D1[0] = (LEDG[4] | (LEDG[3] & LEDG[2]) | (LEDG[3] & LEDG[1]));
	//Only bit that actually changes is D1[0].
	assign D1[3:1] = 3'b000;
	
endmodule
