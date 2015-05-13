module Mod5FSM(Clock, Reset, W0, out);
	input Clock; //system clock {derived from key0 in this case}
	input Reset; //resets the mod 5 counter to 0
	input W0; //determines count up or count down
	
	output [2:0] out; //output D
	reg [2:0] currState, nextState;
	localparam A = 3'b000, B = 3'b001, C = 3'b010,
				D = 3'b011, E = 3'b100;
	
	always @(W0, currState)
	begin : state_table
		case(currState)
			A : if(~W0) nextState = B;
				else nextState = E;
			B : if(~W0) nextState = C;
				else nextState = A;
			C : if(~W0) nextState = D;
				else nextState = B;
			D : if(~W0) nextState = E;
				else nextState = C;
			E : if(~W0) nextState = A;
				else nextState = D;
		endcase
	end //state_table
	
	always @(posedge Clock)
	begin : state_FFS
		currState <= nextState;
		if(~Reset) currState <= A;
	end //state_FFS
	
	assign out = currState;
	
endmodule