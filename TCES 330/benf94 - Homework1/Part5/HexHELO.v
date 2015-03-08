/*Homework 1 HexHELO module by Ben Foster
 *TCES 330 4/16/14
 */
module HexHELO(SW, HEX0);
	input [2:0] SW; //Toggle switches
	output [0:6] HEX0; //Hex display
	
	//Assignments
	assign HEX0[0] = ~(SW[0] & ~SW[2]);
	assign HEX0[1] = ~((~SW[2] & ~SW[1] & ~SW[0])|(~SW[2] & SW[1] & SW[0]));
	assign HEX0[2] = ~((~SW[2] & ~SW[1] & ~SW[0])|(~SW[2] & SW[1] & SW[0]));
	assign HEX0[3] = ~((~SW[2] & SW[0]) | (~SW[2] & SW[1]));
	assign HEX0[4] = SW[2];
	assign HEX0[5] = SW[2];
	assign HEX0[6] = ~(~SW[2] & ~SW[1]);
	
endmodule