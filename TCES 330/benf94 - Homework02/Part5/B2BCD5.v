/*Homework 2 B2BCD5 written by Ben Foster
 *TCES 330 4/23/14
 */
module B2BCD5(LEDG, D0, D1);
	input [4:0] LEDG; //Inputs are whichever green LED is on.
	output [3:0] D0, D1; //Outputs used elsewhere in heirarchy.
	
	//Wire M is output of Circuit A
	wire [3:0] M; //Used in 2 to 1 muxes
	
	//Comparator instance checks whether input is over 9
	Comparator C1(LEDG[4:0], D1[3:0]);
	//CircuitA instance CA determines what is output based on C1
	CircuitA CA(LEDG[4:0], M[3:0]);
	
	//2 to 1 Mux instances output D1 and D0 for future use.
	Mux2_1 M0(LEDG[0], M[0], D1[0], D0[0]);
	Mux2_1 M1(LEDG[1], M[1], D1[0], D0[1]);
	Mux2_1 M2(LEDG[2], M[2], D1[0], D0[2]);
	Mux2_1 M3(LEDG[3], M[3], D1[0], D0[3]);
	
	
endmodule
