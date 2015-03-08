/* Homework 4 Part 4 written by Ben Foster
 * TCES 330 5/13/14
 * Depends: Hex7Seg
 * This module implements a state machine and
 * uses it as a counter.
 * input 0 keeps counter same
 * input 1 increments counter by one
 * input 2 increments counter by two
 * input 3 decrements coutner by one
 */

module Part4(SW, LEDR, KEY, HEX0);
	input [2:0] SW; //input switches
	input [0:0] KEY; //input key
	output [2:0] LEDR; //red led outputs
	output [0:6] HEX0; //hex0 output
	
	wire Clock = KEY[0]; //Key is used as Clock
	wire [1:0] in; //in is the 2 bit input w1w0
	assign in[1] = SW[2]; //SW[2] is one input
	assign in[0] = SW[1]; //SW[1] is the second input
	reg [3:0] currState, nextState; //currState and nextState
	wire reset = SW[0]; //SW[0] is the low reset
	assign LEDR = SW; //light up red leds with switches
	//local params are the different states
	localparam A = 4'b0000, B = 4'b0001, C = 4'b0010,
				D = 4'b0011, E = 4'b0100, F = 4'b0101,
				G = 4'b0110, H = 4'b0111, I = 4'b1000,
				J = 4'b1001;
	
	//always block implements the state table
	always @(in, currState)
	begin : state_table
		//one case picks the state
		//other case chooses the input
		case(currState)
			A : case(in)
					0 : nextState = A;
					1 : nextState = B;
					2 : nextState = C;
					3 : nextState = J;
					default : nextState = 4'bxxxx;
				endcase
			B : case(in)
					0 : nextState = B;
					1 : nextState = C;
					2 : nextState = D;
					3 : nextState = A;
					default : nextState = 4'bxxxx;
				endcase
			C : case(in)
					0 : nextState = C;
					1 : nextState = D;
					2 : nextState = E;
					3 : nextState = B;
					default : nextState = 4'bxxxx;
				endcase
			D : case(in)
					0 : nextState = D;
					1 : nextState = E;
					2 : nextState = F;
					3 : nextState = C;
					default : nextState = 4'bxxxx;
				endcase
			E : case(in)
					0 : nextState = E;
					1 : nextState = F;
					2 : nextState = G;
					3 : nextState = D;
					default : nextState = 4'bxxxx;
				endcase
			F : case(in)
					0 : nextState = F;
					1 : nextState = G;
					2 : nextState = H;
					3 : nextState = E;
					default : nextState = 4'bxxxx;
				endcase
			G : case(in)
					0 : nextState = G;
					1 : nextState = H;
					2 : nextState = I;
					3 : nextState = F;
					default : nextState = 4'bxxxx;
				endcase
			H : case(in)
					0 : nextState = H;
					1 : nextState = I;
					2 : nextState = J;
					3 : nextState = G;
					default : nextState = 4'bxxxx;
				endcase
			I : case(in)
					0 : nextState = I;
					1 : nextState = J;
					2 : nextState = A;
					3 : nextState = H;
					default : nextState = 4'bxxxx;
				endcase
			J : case(in)
					0 : nextState = J;
					1 : nextState = A;
					2 : nextState = B;
					3 : nextState = I;
					default : nextState = 4'bxxxx;
				endcase
			default : nextState = 4'bxxxx;
		endcase
	end //state_table
	
	//always block progresses the state machine
	always @(posedge Clock)
	begin : state_FFS
		currState <= nextState;
		if(~reset) currState <= A;
	end //state_FFS
	
	//Hex7Seg instantiation sends currState to HEX0
	Hex7Seg H0(currState, HEX0);
	
endmodule
	