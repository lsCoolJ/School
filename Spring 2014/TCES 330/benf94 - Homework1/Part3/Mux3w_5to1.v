/*Homework 1 Mux3w_5to1 module by Ben Foster
 *TCES 330 4/16/14
 */
module Mux3w_5to1(U, V, W, X, Y, S, M);
	input[2:0] U,V,W,X,Y; //Mux inputs
	input[2:0] S; //Selecting lines
	output[2:0] M; //Overall output
	
	//5 to 1 Mux instances
	Mux5_1 Mux0(U[0], V[0], W[0], X[0], Y[0], S, M[0]);
	Mux5_1 Mux1(U[1], V[1], W[1], X[1], Y[1], S, M[1]);
	Mux5_1 Mux2(U[2], V[2], W[2], X[2], Y[2], S, M[2]);
	
endmodule