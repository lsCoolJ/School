/*Homework 2 Part 4 written by Ben Foster
 *TCES 330 4/23/14
 */
module HW2Part4(SW, LEDR, LEDG, HEX0, HEX1, HEX4, HEX6);
	input[8:0] SW; //Input Switches
	output[8:0] LEDR; //Red LEDs
	output[8:0] LEDG; //Green LEDs
	output[0:6] HEX0, HEX1, HEX4, HEX6; //7 Segment Hex displays
	
	//Assign red LEDs to corresponding siwthces
	assign LEDR = SW;
	
	//Display A and B on HEX4 and HEX6
	Hex7Seg H6(SW[7:4], HEX6);
	Hex7Seg H4(SW[3:0], HEX4);
	
	//Display the two bit adder to LEDG (Same as part 3)
	wire Cin;
	wire [3:0] A, B, Cout, S;
	
	assign A[3:0] = SW[7:4];
	assign B[3:0] = SW[3:0];
	assign Cin = SW[8];
	
	FullAdder F0(Cin, A[0], B[0], Cout[0], S[0]);
	FullAdder F1(Cout[0], A[1], B[1], Cout[1], S[1]);
	FullAdder F2(Cout[1], A[2], B[2], Cout[2], S[2]);
	FullAdder F3(Cout[2], A[3], B[3], Cout[3], S[3]);
	
	assign LEDG[3:0] = S[3:0];
	assign LEDG[4] = Cout[3];
	
	//Above 9 error check
	wire Err;
	Error E(A, B, Err);
	
	assign LEDG[8] = Err;
	
	//Display BCD numbers S1, and S0 to HEX1 and HEX0
	wire [3:0] D0, D1;
	
	//B2BCD5 instance is different from B2BCD
	B2BCD5 B1(LEDG[4:0], D0[3:0], D1[3:0]);
	
	Hex7Seg HE0(D0[3:0], HEX0);
	Hex7Seg HE1(D1[3:0], HEX1);
	
endmodule
