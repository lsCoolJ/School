/*Homework 2 Part 5 written by Ben Foster
 *TCES 330 4/23/14
 */
module HW2Part5(SW, LEDR, HEX0, HEX1, HEX2, HEX4, HEX5, HEX6, HEX7);
	input [15:0] SW; //Input switches
	output [15:0] LEDR; //Red LEDs
	output [0:6] HEX0, HEX1, HEX2, HEX4, HEX5, HEX6, HEX7; //7 Segment hex displays
	
	//assign Red LEDs to corresponding switches
	assign LEDR = SW;
	
	//First carry in is 0.
	wire Cin0 = 1'b0;
	//Inputs A, b, Cout and S are split up into two.
	wire [3:0] A0, B0, Cout0, S0;
	wire [3:0] A1, B1, Cout1, S1;
	
	//Assign A and B to certain switches
	assign A1 [3:0] = SW[15:12];
	assign A0[3:0] = SW[11:8];
	assign B1[3:0] = SW[7:4];
	assign B0[3:0] = SW[3:0];

	//Full adder instances taken from Part 4
	FullAdder F0(Cin0, A0[0], B0[0], Cout0[0], S0[0]);
	FullAdder F1(Cout0[0], A0[1], B0[1], Cout0[1], S0[1]);
	FullAdder F2(Cout0[1], A0[2], B0[2], Cout0[2], S0[2]);
	FullAdder F3(Cout0[2], A0[3], B0[3], Cout0[3], S0[3]);
	
	//Second instance of Part 4
	FullAdder F4(Cout0[3], A1[0], B1[0], Cout1[0], S1[0]);
	FullAdder F5(Cout1[0], A1[1], B1[1], Cout1[1], S1[1]);
	FullAdder F6(Cout1[1], A1[2], B1[2], Cout1[2], S1[2]);
	FullAdder F7(Cout1[2], A1[3], B1[3], Cout1[3], S1[3]);
	
	//Separatre the outputs to put into B2BCD5 instances
	wire [3:0] TCout0, TCout1, TS0, TS1;
	wire [4:0] NS0, NS1;
	assign NS0[4] = Cout0[3];
	assign NS0[3:0] = S0 [3:0];
	assign NS1[4] = Cout1[3];
	assign NS1[3:0] = S1[3:0];
	
	//B2BCD5 instances taken from part 4
	B2BCD5 B2_0(NS0[4:0], TS0[3:0], TCout0[3:0]);
	B2BCD5 B2_1(NS1[4:0], TS1[3:0], TCout1[3:0]);
	
	//A hex display
	Hex7Seg H7(SW[15:12], HEX7);
	Hex7Seg H6(SW[11:8], HEX6);
	
	//B hex display
	Hex7Seg H5(SW[7:4], HEX5);
	Hex7Seg H4(SW[3:0], HEX4);
	
	//SUM display
	Hex7Seg H2(TCout1[3:0], HEX2);
	Hex7Seg H1(TS1[3:0], HEX1);
	Hex7Seg H0(TS0[3:0], HEX0);
	
endmodule

