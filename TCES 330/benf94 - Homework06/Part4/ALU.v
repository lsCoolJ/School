/* Homework 6 ALU module written by Ben Foster
 * TCES 330 5/27/14
 * This module takes in two inputs and a select
 * line and spits out an output depending on what
 * the select line was.
 */
// if S == 0 the output is 0
// if S == 1 the output is A + B
// if S == 2 the output is A - B
// if S == 3 the output is A (pass-through)
// if S == 4 the output is A ^ B
// if S == 5 the output is A | B
// if S == 6 the output is A & B
// if S == 7 the output is A + 1
// the additional functions are for future expansion.
module ALU(A, B, S, Q_act);
	input [2:0] S; //The select line.
	input [15:0] A, B; //Two inputs.
	output [15:0] Q_act; //One output.

	reg [15:0] Q; //Changing Q.
	assign Q_act = Q; //Set actual Q.
	
	//Always block activates when anything changes.
	always @* begin
		case(S)
			0 : Q = 15'd0; //Q = 0
			1 : Q = A + B; //Addition.
			2 : Q = A - B; //Subtraction.
			3 : Q = A; //pass-through.
			4 : Q = A ^ B; //exclusive or
			5 : Q = A | B; //bitwise or
			6 : Q = A & B; //bitwise and
			7 : Q = A + 4'd1; //plus one.
			default : Q = 15'd0; //default is 0.
		endcase
	end //always
	
endmodule
