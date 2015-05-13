/*Homework 1 Mux2_1 module by Ben Foster
 *TCES 330 4/16/14
 */
module Mux2_1(X, Y, S, F);
	input X, Y; //mux inputs
	input S; //selecting line
	output F; //output
	
	//2 to 1 mux equation
	assign F = (~S & X)|(S & Y);
	
endmodule
