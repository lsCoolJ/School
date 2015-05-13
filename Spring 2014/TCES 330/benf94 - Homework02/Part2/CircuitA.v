/*Homework 2 CircuitA written by Ben Foster
 *TCES 330 4/23/14
 */
module CircuitA(SW, M);
	input [2:0] SW; //input switches
	output [2:0] M; //Output M
	
	//Output assignments determined by karnaugh maps
	assign M[2] = SW[2] & SW[1];
	assign M[1] = ~SW[1];
	assign M[0] = SW[0];
	
endmodule
