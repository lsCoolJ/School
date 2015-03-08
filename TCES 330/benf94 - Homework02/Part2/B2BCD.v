/*Homework 2 B2BCD written by Ben Foster
 *TCES 330 4/23/14
 */
module B2BCD(SW, D0, D1);
	input [3:0] SW; //Input switches
	output [3:0] D0, D1; //output D0 and D1
	
	wire [2:0] M; //Wire M used for output of CircuitA
	wire OFF; //OFF used for input in M3
	
	assign OFF = 1'b0; //OFF = 0
	
	//Comparator instance C1 checks whether input is over 9
	Comparator C1(SW[3:0], D1[3:0]);
	//CircuitA instance CA determines what is output based on C1
	CircuitA CA(SW[2:0], M[2:0]);
	
	//2 to 1 Mux instances output D1 and D0 for future use.
	Mux2_1 M0(SW[0], M[0], D1[0], D0[0]);
	Mux2_1 M1(SW[1], M[1], D1[0], D0[1]);
	Mux2_1 M2(SW[2], M[2], D1[0], D0[2]);
	Mux2_1 M3(SW[3], OFF, D1[0], D0[3]);
	
	
endmodule
