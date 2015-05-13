/*Homework 1 Mux2_1 module by Ben Foster
 *TCES 330 4/16/14
 */
module Mux2_1(X, Y, S, F);
	input X, Y; //Inputs
	input S; //Select line
	output F; //Output
	
	//Mux equation
	assign F = (~S & X)|(S & Y);
	
endmodule
