/*Homework 2 Hex7Seg written by Ben Foster
 *TCES 330 4/14/23
 */
module Hex7Seg(SW, HEX0);
	input [3:0] SW; //Input Switches
	output [0:6] HEX0; //specific 7 segment hex display
	
	//Equations found through Karnaugh maps
	assign HEX0[0] = ~((SW[2]&SW[1])|(SW[1]&~SW[0])|(~SW[3]&~SW[2]&~SW[0])|(~SW[3]&SW[2]&SW[0])|(~SW[3]&SW[1]&SW[0])|(SW[3]&~SW[2]&~SW[1])|(SW[3]&~SW[1]&~SW[0]));
	assign HEX0[1] = ~((~SW[3]&~SW[2])|(~SW[3]&~SW[1]&~SW[0])|(~SW[3]&SW[1]&SW[0])|(SW[3]&~SW[2]&~SW[1])|(SW[3]&~SW[2]&~SW[0])|(SW[3]&~SW[1]&SW[0]));
	assign HEX0[2] = ~((~SW[3]&SW[2])|(SW[3]&~SW[2])|(~SW[1]&SW[0])|(~SW[3]&~SW[1])|(~SW[3]&SW[0]));
	assign HEX0[3] = ~((SW[3]&~SW[1])|(~SW[3]&~SW[2]&~SW[0])|(SW[3]&SW[2]&~SW[0])|(SW[2]&~SW[1]&SW[0])|(SW[3]&~SW[2]&SW[0])|(~SW[2]&SW[1]&SW[0])|(~SW[3]&SW[1]&~SW[0]));
	assign HEX0[4] = ~((SW[3]&SW[2])|(SW[1]&~SW[0])|(SW[3]&SW[1])|(~SW[2]&~SW[1]&~SW[0]));
	assign HEX0[5] = ~((~SW[1]&~SW[0])|(SW[3]&~SW[2])|(SW[3]&SW[1])|(~SW[3]&SW[2]&~SW[1])|(SW[2]&SW[1]&~SW[0]));
	assign HEX0[6] = ~((SW[3]&~SW[2])|(SW[1]&~SW[0])|(SW[3]&SW[0])|(SW[3]&SW[1])|(~SW[3]&SW[2]&~SW[1])|(~SW[3]&~SW[2]&SW[1]));
	
endmodule
