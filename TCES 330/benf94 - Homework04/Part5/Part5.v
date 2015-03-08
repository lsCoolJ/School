/* Homework 4 Part 5 written by Ben Foster
 * TCES 330 5/13/14
 * Depends: Hex7Seg2
 * This module implements a state machine in order to
 * display HELLO across the Hex displays.
 */

module Part5(SW, KEY, HEX0, HEX1, HEX2, 
				HEX3, HEX4, HEX5, HEX6, HEX7);
	input [0:0] SW; //input Switch
	input [0:0] KEY; //input key
	//7 seg hex outputs
	output [0:6] HEX0, HEX1, HEX2, HEX3,
					HEX4, HEX5, HEX6, HEX7;
					
	wire Clock = KEY[0]; //Key[0] is clock
	wire reset = SW[0]; //SW[0] is reset
	
	//in0-7 are the registers that hold specific data
	reg [3:0] currState, nextState, in0, in1, in2, in3, in4, in5, in6, in7;
	//local params are the states
	localparam A = 4'b0000, B = 4'b0001, C = 4'b0010,
				D = 4'b0011, E = 4'b0100, F = 4'b0101,
				G = 4'b0110, H = 4'b0111, I = 4'b1000;
				
	//always block just moves through states
	always @(currState) 
	begin : state_table
		case(currState)
			A : nextState = B;
			B : nextState = C;
			C : nextState = D;
			D : nextState = E;
			E : nextState = F;
			F : nextState = G;
			G : nextState = H;
			H : nextState = I;
			I : nextState = I;
		endcase
	end //state_table
	
	//this always block shifts the hex displays over
	always @(posedge Clock)
	begin : state_FFS
		if(~reset) begin
			//clear all hex displays
			in0 <= 4'b0000;
			in1 <= 4'b0000;
			in2 <= 4'b0000;
			in3 <= 4'b0000;
			in4 <= 4'b0000;
			in5 <= 4'b0000;
			in6 <= 4'b0000;
			in7 <= 4'b0000;
			currState <= A;
		end else if(currState != I) begin
			//beginning the program when nothing is on hex displays
			currState <= nextState;
			in0 <= currState;
			in1 <= in0;
			in2 <= in1;
			in3 <= in2;
			in4 <= in3;
			in5 <= in4;
			in6 <= in5;
			in7 <= in6; 
		end else begin
			//continuing the program after hello is on the displays
			currState <= nextState;
			in0 <= in7;
			in1 <= in0;
			in2 <= in1;
			in3 <= in2;
			in4 <= in3;
			in5 <= in4;
			in6 <= in5;
			in7 <= in6;
		end
	end //state_FFS
	
	//Hex7Seg2 instantiations
	Hex7Seg2 H0(in0, HEX0);
	Hex7Seg2 H1(in1, HEX1);
	Hex7Seg2 H2(in2, HEX2);
	Hex7Seg2 H3(in3, HEX3);
	Hex7Seg2 H4(in4, HEX4);
	Hex7Seg2 H5(in5, HEX5);
	Hex7Seg2 H6(in6, HEX6);
	Hex7Seg2 H7(in7, HEX7);
endmodule
