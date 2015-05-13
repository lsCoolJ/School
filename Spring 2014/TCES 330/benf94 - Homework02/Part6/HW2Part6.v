/*Homework 2 Part 6 written by Ben Foster
 *TCES 330 4/23/14
 */
module HW2Part6(SW, LEDR, HEX0, HEX1, HEX2, HEX4, HEX5, HEX6, HEX7);
	input [15:0] SW; //Input Switches
	output [15:0] LEDR; //Red LEDs
	output [0:6] HEX0, HEX1, HEX2, HEX4, HEX5, HEX6, HEX7; //7 Segment hex displays
	
	//Assign Red leds to corresponding switches
	assign LEDR = SW;
	//Inputs A and B assigned to certain switches
	wire [3:0] A0, A1, B0, B1;
	assign A1[3:0] = SW[15:12];
	assign A0[3:0] = SW[11:8];
	assign B1[3:0] = SW[7:4];
	assign B0[3:0] = SW[3:0];
	
	//Changing variables
	reg [4:0] T0, T1, C0, C1, C2, Z0, Z1, S2, S1, S0;	
	
	//Begin Procdeure if anything changes
	//Procedure does what 5 or 6 modules did in one module
	always @ (*) begin
		
		T0 = A0 + B0;
		//Check if the sum is above 9
		if (T0 > 9) begin
			Z0 = 5'b01010;
			C1 = 5'b00001;
		end else begin
			Z0 = 5'b00000;
			C1 = 5'b00000;
		end

		S0 = T0 - Z0;
		
		T1 = A1 + B1 + C1;
		//Check if the sum is above 9
		if (T1 > 9) begin
			Z1 = 5'b01010;
			C2 = 5'b00001;
		end else begin
			Z1 = 5'b00000;
			C2 = 5'b00000;
		end
		S1 = T1 - Z1;
		S2 = C2;
	end
	
	//A hex display
	Hex7Seg H7(SW[15:12], HEX7);
	Hex7Seg H6(SW[11:8], HEX6);
	
	//B hex display
	Hex7Seg H5(SW[7:4], HEX5);
	Hex7Seg H4(SW[3:0], HEX4);
	
	//SUM display
	Hex7Seg H2(S2[3:0], HEX2);
	Hex7Seg H1(S1[3:0], HEX1);
	Hex7Seg H0(S0[3:0], HEX0);
	
endmodule
