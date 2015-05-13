/*Homework 2 Comparator written by Ben Foster
 *TCES 330 4/23/14
 */
module Comparator(SW, D1);
	input [3:0] SW; //Input Switches
	output [3:0] D1; //D1 is output for Comparator.
	
	//Equation determined by karnaugh map
	assign D1[0] = (SW[3]&SW[2])|(SW[3]&SW[1]);
	//only bit that actually changes is D1[0].
	assign D1[3:1] = 3'b000;
	
endmodule
