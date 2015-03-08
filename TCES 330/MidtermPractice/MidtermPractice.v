module MidtermPractice(KEY, SW, LEDR, HEX0);
	input [1:1] KEY;
	input [1:0] SW;
	output [1:0] LEDR;
	output [0:6] HEX0;
	
	assign LEDR = SW;
	wire [2:0] D;
	
	wire Clock = KEY[1];
	wire Reset = SW[1];
	wire W0 = SW[0];
	
	Mod5FSM M1(Clock, Reset, W0, D);
	
	Hex7Seg H0(D, HEX0);
endmodule
