/*Homework 1 Mux3w_8to1 module by Ben Foster
 *TCES 330 4/16/14
 */
module Mux3w_8to1(S, T, U, V, W, X, Y, Z, SW, M);
	input [2:0] S, T, U, V, W, X, Y, Z; //inputs to 2 to 1 muxes
	input [2:0] SW; //selecting lines
	output [2:0] M; //Overall output
	
	//8 to 1 mux instances
	Mux8_1 Mux0(S[0], T[0], U[0], V[0], W[0], X[0], Y[0], Z[0], SW, M[0]);
	Mux8_1 Mux1(S[1], T[1], U[1], V[1], W[1], X[1], Y[1], Z[1], SW, M[1]);
	Mux8_1 Mux2(S[2], T[2], U[2], V[2], W[2], X[2], Y[2], Z[2], SW, M[2]);
	
endmodule
