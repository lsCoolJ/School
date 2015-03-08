/* Homework 4 Part 6 written by Ben Foster
 * TCES 330 5/13/14
 * Depends: Hex7Seg2, lpm_counter
 * This module uses the lpm_counter in order
 * to have HELLO scroll across the hex displays
 */

module Part6(KEY, CLOCK_50, HEX0, HEX1, HEX2, 
				HEX3, HEX4, HEX5, HEX6, HEX7);
	input [0:0] KEY; //input Key
	input CLOCK_50; //clock
	//output hex displays
	output [0:6] HEX0, HEX1, HEX2, HEX3,
					HEX4, HEX5, HEX6, HEX7;
	wire Clock = CLOCK_50; //clock is clock
	wire reset = KEY[0]; //key[0] is reset
	reg [25:0] X; //x used for counter
	reg ACLR; //ACLR resets counter
	//regs and local params are the same as in part 5
	reg [3:0] currState, nextState, in0, in1, in2, in3, in4, in5, in6, in7;
	localparam A = 4'b0000, B = 4'b0001, C = 4'b0010,
				D = 4'b0011, E = 4'b0100, F = 4'b0101,
				G = 4'b0110, H = 4'b0111, I = 4'b1000;
				
	//this works the same as in part 5
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
	
	//this works the same as in part 5
	always @(posedge Clock)
	begin : state_FFS
		if(X == 26'd50000000) begin
			ACLR <= 1'd1;
			if(~reset) begin
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
		end else begin
			ACLR <= 1'b0;
		end//clock X thingy
	end //state_FFS
	
	//the lpm_counter instantiation counts
	lpm_counter #(.LPM_WIDTH(26)) U1( .aclr(ACLR), .clock(CLOCK_50), .q(X) );
	
	//Hex7Seg2 instantiations display stuff to Hex displays
	Hex7Seg2 H0(in0, HEX0);
	Hex7Seg2 H1(in1, HEX1);
	Hex7Seg2 H2(in2, HEX2);
	Hex7Seg2 H3(in3, HEX3);
	Hex7Seg2 H4(in4, HEX4);
	Hex7Seg2 H5(in5, HEX5);
	Hex7Seg2 H6(in6, HEX6);
	Hex7Seg2 H7(in7, HEX7);
endmodule
