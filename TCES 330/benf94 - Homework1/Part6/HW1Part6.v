/*Homework 1 Part 6 by Ben Foster
 *TCES 330 4/16/14
 */
module HW1Part6(SW, OFF, HEX0, HEX1, HEX2, HEX3, HEX4, HEX5, HEX6, HEX7);
	/*Switch:         14 13 12 11 10 9 8 7 6 5 4 3 2 1 0
	1 = ON 0 = OFF    0  0  0  0  0  1 0 1 0 0 1 0 0 1 1
	*/
	
	input [17:0] SW; //toggle switches
	output [0:6] HEX0, HEX1, HEX2, HEX3, HEX4, HEX5, HEX6, HEX7; //7 seg displays
	output [2:0] OFF; //Specified OFF switch for easier design
	
	wire [2:0] M0, M1, M2, M3, M4, M5, M6, M7; //Outputs that contain hex letters
	assign OFF = 3'b111; //All 1 binary so that the display is off
	

	//8 to 1 mux instances
	Mux3w_8to1 Mu0(OFF, OFF, OFF, SW[14:12], SW[11:9], SW[8:6], SW[5:3], SW[2:0], SW[17:15], M0);
	Mux3w_8to1 Mu1(OFF, OFF, SW[14:12], SW[11:9], SW[8:6], SW[5:3], SW[2:0], OFF, SW[17:15], M1);
	Mux3w_8to1 Mu2(OFF, SW[14:12], SW[11:9], SW[8:6], SW[5:3], SW[2:0], OFF, OFF, SW[17:15], M2);
	Mux3w_8to1 Mu3(SW[14:12], SW[11:9], SW[8:6], SW[5:3], SW[2:0], OFF, OFF, OFF, SW[17:15], M3);
	Mux3w_8to1 Mu4(SW[11:9], SW[8:6], SW[5:3], SW[2:0], OFF, OFF, OFF, SW[14:12], SW[17:15], M4);
	Mux3w_8to1 Mu5(SW[8:6], SW[5:3], SW[2:0], OFF, OFF, OFF, SW[14:12], SW[11:9], SW[17:15], M5);
	Mux3w_8to1 Mu6(SW[5:3], SW[2:0], OFF, OFF, OFF, SW[14:12], SW[11:9], SW[8:6], SW[17:15], M6);
	Mux3w_8to1 Mu7(SW[2:0], OFF, OFF, OFF, SW[14:12], SW[11:9], SW[8:6], SW[5:3], SW[17:15], M7);
	
	
	//Hex display instances
	HexHELO H0(M0, HEX7); 
	HexHELO H1(M1, HEX6);
	HexHELO H2(M2, HEX5);
	HexHELO H3(M3, HEX4);
	HexHELO H4(M4, HEX3);
	HexHELO H5(M5, HEX2);
	HexHELO H6(M6, HEX1);
	HexHELO H7(M7, HEX0);
	
endmodule
