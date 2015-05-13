/*Homework 1 Part 5 by Ben Foster
 *TCES 330 4/16/14
 */
module HW1Part5(SW, HEX0, HEX1, HEX2, HEX3, HEX4);
	/*Switch:         14 13 12 11 10 9 8 7 6 5 4 3 2 1 0
	1 = ON 0 = OFF    0  0  0  0  0  1 0 1 0 0 1 0 0 1 1
	*/
	
	input [17:0] SW; //toggle switches
	output [0:6] HEX0, HEX1, HEX2, HEX3, HEX4; //7 seg displays
	
	//Individual letters that go to the hex displays
	wire [2:0] M0, M1, M2, M3, M4;
	

	//Mux instances
	Mux3w_5to1 Mu0(SW[14:12], SW[11:9], SW[8:6], SW[5:3], SW[2:0], SW[17:15], M0);
	Mux3w_5to1 Mu1(SW[11:9], SW[8:6], SW[5:3], SW[2:0], SW[14:12], SW[17:15], M1);
	Mux3w_5to1 Mu2(SW[8:6], SW[5:3], SW[2:0], SW[14:12], SW[11:9], SW[17:15], M2);
	Mux3w_5to1 Mu3(SW[5:3], SW[2:0], SW[14:12], SW[11:9], SW[8:6], SW[17:15], M3);
	Mux3w_5to1 Mu4(SW[2:0], SW[14:12], SW[11:9], SW[8:6], SW[5:3], SW[17:15], M4);
	
	//Hex display instances
	HexHELO H0(M0, HEX4); 
	HexHELO H1(M1, HEX3);
	HexHELO H2(M2, HEX2);
	HexHELO H3(M3, HEX1);
	HexHELO H4(M4, HEX0);
	
endmodule
