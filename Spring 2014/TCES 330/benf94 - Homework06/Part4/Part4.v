/* Homework 6 Part 4 written by Ben Foster
 * TCES 330 5/27/14
 * depends: Hex7Seg, ALU
 * This module instantiates the ALU 
 * module and relays the inputs and
 * outputs to 7 segment hex displays.
 */
module Part4(SW, LEDR, HEX0, HEX1, HEX4, HEX5,
				HEX6, HEX7);
	input [10:0] SW; //input switches
	output [10:0] LEDR; //output red leds
	output [0:6] HEX0, HEX1, HEX4,
			HEX5, HEX6, HEX7; //7 segment hex displays
	
	//let all red leds light up with
	//every switch.
	assign LEDR = SW;
	
	//Sel wire is the select wire.
	wire [2:0] Sel = SW[2:0];
	//A wire is the first input.
	wire [3:0] A = SW[6:3];
	//B wire is the second input.
	wire [3:0] B = SW[10:7];
	//Q wire is the output.
	wire [15:0] Q;
	
	//ALU instantiation takes in three
	//inputs (A, B and Sel) and spits
	//out Q.
	ALU I1(A, B, Sel, Q);
	
	//These two instantiations of Hex7Seg
	//display A and B.
	Hex7Seg H0(A, HEX0);
	Hex7Seg H1(B, HEX1);
	
	//These four instantiations of Hex7Seg
	//display Q.
	Hex7Seg H4(Q[3:0], HEX4);
	Hex7Seg H5(Q[7:4], HEX5);
	Hex7Seg H6(Q[11:8], HEX6);
	Hex7Seg H7(Q[15:12], HEX7);
	
endmodule
