/*Homework 2 Full Adder written by Ben Foster
 *TCES 330 4/23/14
 */
module FullAdder(Cin, A, B, Cout, S);
	input Cin, A, B; //Inputs A, B, and the carry in.
	output Cout, S; //Outputs S and the carry out.
	
	//Logic to get a full adder.
	assign S = A ^ B ^ Cin; //S = AxorBxorCin
	assign Cout = (A & B) | (A & Cin) | (B & Cin);
	
endmodule
