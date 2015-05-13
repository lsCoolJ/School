/*Homework 1 Mux5_1 module by Ben Foster
 *TCES 330 4/16/14
 */
module Mux5_1(U, V, W, X, Y, S, M);
	input U, V, W, X, Y; //Mux inputs
	input[2:0] S; //Selecting lines
	output M; //Overall Output
	
	//Smaller mux outputs
	wire F1, F2, F3;
	
	//2 to 1 mux instances
	Mux2_1 Mux1(U, V, S[0], F1);
	Mux2_1 Mux2(W, X, S[0], F2);
	Mux2_1 Mux3(F1, F2, S[1], F3);
	Mux2_1 Mux4(F3, Y, S[2], M);
	
endmodule
