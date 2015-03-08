/*Homework 2 CircuitA written by Ben Foster
 *TCES 330 4/23/14
 *This CircuitA module is different from the one in part 2
 */
module CircuitA(LEDG, M);
	input [4:0] LEDG; //Green LED inputs
	output [3:0] M; //Output M
	
	//Wire Temp used to get rid of most sig bit
	wire [4:0] Temp;
	
	//assigning Temp to LEDG - 10
	assign Temp = LEDG - 5'b01010;
	assign M = Temp[3:0];
	
endmodule
