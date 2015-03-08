/*Homework 1 Mux8_1 module by Ben Foster
 *TCES 330 4/16/14
 */
module Mux8_1(S, T, U, V, W, X, Y, Z, SW, M);
	input S, T, U, V, W, X, Y, Z; //inputs to 2 to 1 muxes
	input [2:0] SW; //selecting lines
	output M; //output of 8to1 mux
	
	//outputs of individual 2 to 1 muxes
	wire F1, F2, F3, F4, F5, F6;
	
	//2 to 1 mux instances
	Mux2_1 Mux1(S, T, SW[0], F1);
	Mux2_1 Mux2(U, V, SW[0], F2);
	Mux2_1 Mux3(W, X, SW[0], F3);
	Mux2_1 Mux4(Y, Z, SW[0], F4);
	Mux2_1 Mux5(F1, F2, SW[1], F5);
	Mux2_1 Mux6(F3, F4, SW[1], F6);
	Mux2_1 Mux7(F5, F6, SW[2], M);
	
endmodule
