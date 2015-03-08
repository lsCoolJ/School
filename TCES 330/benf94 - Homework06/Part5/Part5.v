/* Homework 6 Part 5 written by Ben Foster
 * TCES 330 5/27/14
 * depends: Hex7Seg, RegisterFile
 * This module is the top level module for
 * Part 5 and instantiates the RegisterFile 
 * module and relays the output to 7 segment
 * Hex displays.
 */

module Part5(SW, LEDR, KEY, HEX0, HEX1, HEX2, HEX3, HEX4, HEX5, HEX6, HEX7);
	input [17:0] SW; //input switches.
	input [1:0] KEY; //input keys.
	output [17:0] LEDR; //Red leds.
	//7 segment hex displays.
	output [0:6] HEX0, HEX1, HEX2, HEX3, HEX4, HEX5, HEX6, HEX7;
	
	wire [5:0] W_data = SW[5:0]; //first 6 switches are the write data.
	wire [3:0] W_addr = SW[9:6]; //next 4 switches are the write address.
	wire [3:0] Ra_addr = SW[13:10]; //next 4 switches are the first read address.
	wire [3:0] Rb_addr = SW[17:14]; //next 4 switches are the second read address.
	wire Clk = !KEY[0]; //Key 0 is the clock.
	wire Reset = !KEY[1]; //Key 1 is the reset.
	
	wire [15:0] A_data, B_data; //wires for the output.
	
	assign LEDR = SW; //assign red leds to switches.

	//reference RegisterFile(W_data, W_addr, W_en, Ra_addr, Rb_addr, Ra_en, Rb_en, Clk, Rst, Ra_data, Rb_data);
	RegisterFile RF1(W_data, W_addr, 1'b1, Ra_addr, Rb_addr, 1'b1, 1'b1, Clk, Reset, A_data, B_data);
	
	//reference Hex7Seg(in, HEX0);
	Hex7Seg H0(A_data[3:0], HEX0);
	Hex7Seg H1(A_data[7:4], HEX1);
	Hex7Seg H2(A_data[11:8], HEX2);
	Hex7Seg H3(A_data[15:12], HEX3);
	
	Hex7Seg H4(B_data[3:0], HEX4);
	Hex7Seg H5(B_data[7:4], HEX5);
	Hex7Seg H6(B_data[11:8], HEX6);
	Hex7Seg H7(B_data[15:12], HEX7);

endmodule
