/*Homework 3 testBCDAdd written by Ben Foster
 *TCES 330 4/29/14
 *This module is a testbench for the module
 *FullAdder. Use ModelSim to perform the simulation
 */
`timescale 1ns/1ns
module testBCDAdd;

reg Cin; //Input: Carry In.
reg [3:0] A, B; //Inputs: the two digit BCD numbers.
wire [3:0] Cout, S; //Outputs Carry out and total sum.

//Modules under test (I didn't have a 4 wide Full Adder.
FullAdder F0(Cin, A[0], B[0], Cout[0], S[0]);
FullAdder F1(Cout[0], A[1], B[1], Cout[1], S[1]);
FullAdder F2(Cout[1], A[2], B[2], Cout[2], S[2]);
FullAdder F3(Cout[2], A[3], B[3], Cout[3], S[3]);

integer I, J, K;

initial //Test Stimuli
	begin
		for(I = 0; I < 2; I = I + 1) begin //Test both cases of Cin
			Cin = I;
			#20;
			for(J = 0; J < 16; J = J + 1) begin //Test All cases for A
				A = J;
				#20;
				for(K = 0; K < 16; K = K + 1) begin //Test All cases for B
					B = K;
					#20;
				end
			end
		end
		#20 $stop;
	end
	
initial
	$monitor($stime, , Cin, , A, , B, , Cout, , S);
	
endmodule
