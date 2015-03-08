/*Homework 2 Part 3 written by Ben Foster
 *TCES 330 4/23/14
 */
module HW2Part3(SW, LEDR, LEDG);
	input [8:0] SW; //Input Switches
	output [8:0] LEDR; //Red LEDs
	output [4:0] LEDG; //Green LEDs
	
	//assign red LEDs to corresponding switches.
	assign LEDR = SW;
	
	//wire Cin is the first carry in for the full adder
	wire Cin;
	//A and B are whats being added.
	//Cout is the carry out for each full adder
	//S is the total Sum of A and B
	wire [3:0] A, B, Cout, S;
	
	//Assign certain switches to A, B and Cin.
	assign A[3:0] = SW[7:4];
	assign B[3:0] = SW[3:0];
	assign Cin = SW[8];
	
	//Full adder instances. The Couts in the last three
	//instances are the carry ins for those full adders
	//since this is a ripple carry adder.
	FullAdder F0(Cin, A[0], B[0], Cout[0], S[0]);
	FullAdder F1(Cout[0], A[1], B[1], Cout[1], S[1]);
	FullAdder F2(Cout[1], A[2], B[2], Cout[2], S[2]);
	FullAdder F3(Cout[2], A[3], B[3], Cout[3], S[3]);
	
	//Make the green LEDs light up when we get an output.
	assign LEDG[3:0] = S[3:0];
	assign LEDG[4] = Cout[3];
	
endmodule
