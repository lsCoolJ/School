/*Homework 1 HexHELO module by BenFoster
 *TCES 330 4/16/14
 */
module HexHELO(SW, HEX0);
	input [2:0] SW; //3 switch input
	output [0:6] HEX0; //specific hex display
	
	//Assignments determine which displays make which letter pattern
	//Each equation was found by doing a truth table and karnaugh maps
	assign HEX0[0] = ~(SW[0] & ~SW[2]);
	assign HEX0[1] = ~((~SW[2] & ~SW[1] & ~SW[0])|(~SW[2] & SW[1] & SW[0]));
	assign HEX0[2] = ~((~SW[2] & ~SW[1] & ~SW[0])|(~SW[2] & SW[1] & SW[0]));
	assign HEX0[3] = ~((~SW[2] & SW[0]) | (~SW[2] & SW[1]));
	assign HEX0[4] = SW[2];
	assign HEX0[5] = SW[2];
	assign HEX0[6] = ~(~SW[2] & ~SW[1]);
	
endmodule