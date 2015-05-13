/* Homework 5 DragRace module written by Ben Foster
 * TCES 330 5/20/14
 * This module connects takes in the inputs from
 * the DE2 board and sends them to the DragSM and
 * Lights modules to be displayed on the HEX displays.
 */
//inputs are KEY[0], which is the Rst, SW[0], which is PSB, and
//SW[1], which is SB. Outputs are the 7 segment hex displays.
module DragRace(input [0:0] KEY, input [1:0]SW, input CLOCK_50, 
	output [0:6] HEX7, HEX6, HEX5, HEX4, HEX3, HEX2, HEX1, HEX0);
  
	wire Rst = KEY[0]; //Reset
	wire PSB = SW[0];  //Pre-staging beam
	wire SB = SW[1];   //Staging beam
	wire Clock = CLOCK_50; //System clock
	wire PSL, SL, A1, A2, A3, GRN, RED;
  
	//DragSM instantiation takes in all the inputs as well as the
	//light wires.
	DragSM DS1(Rst, PSB, SB, Clock, PSL, SL, A1, A2, A3, GRN, RED);

	//Lights instantiations relay the single bit input to tell
	//the hex displays whether to be on or off.
	Lights H0(RED, HEX0);
	Lights H1(RED, HEX1);
	Lights H2(GRN, HEX2);
	Lights H3(A3, HEX3);
	Lights H4(A2, HEX4);
	Lights H5(A1, HEX5);
	Lights H6(SL, HEX6);
	Lights H7(PSL, HEX7);
  
 endmodule
 