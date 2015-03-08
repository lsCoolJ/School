/*Homework 1 Part 3 by Ben Foster
 *TCES 330 4/16/14
 */
module HW1Part3(SW, LEDR, LEDG);
	input [17:0] SW; //Toggle switches
	output [17:0] LEDR; //Red LEDs
	output [2:0] LEDG; //Green LEDs
	
	wire [2:0] S; //Selecting wire
	wire [2:0] U, V, W, X, Y; //2to1 Mux inputs
	wire [2:0] M; //Overall output
	
	//Assignments
	assign S = SW[17:15];
	assign U = SW[2:0];
	assign V = SW[5:3];
	assign W = SW[8:6];
	assign X = SW[11:9];
	assign Y = SW[14:12];
	assign LEDR = SW;
	assign LEDG[2:0] = M[2:0];
	
	//Instance of Mux
	Mux3w_5to1 Mux0(U, V, W, X, Y, S, M);

endmodule
