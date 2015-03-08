/*Homework 3 Test_Mux3w5to1 written by Ben Foster
 *TCES 330 4/29/14
 *This module is the testbench for the
 *Mux3w_5to1 module. Use ModelSim to run the simulation.
 */
`timescale 1ns/1ns
module Test_Mux3w5to1; //note: no I/O ports

reg [2:0] U, V, W, X, Y, S; //Inputs to module
wire [2:0] M; //module output

//Module under test
Mux3w_5to1 DUT(U, V, W, X, Y, S, M);

integer I, J, K, L, N, O; //for-loop indices

initial //Test stimulus
	begin
		for (I = 0; I < 8; I = I + 1) begin
			U = I;
			#20;
			for(J = 0; J < 8; J = J + 1) begin
				V = J;
				#20;
				for(K = 0; K < 8; K = K + 1) begin
					W = K;
					#20;
					for(L = 0; L < 8; L = L + 1) begin
						X = L;
						#20
						for(N = 0; N < 8; N = N + 1) begin
							Y = N;
							#20;
							for(O = 0; O < 8; O = O + 1) begin
								S = O;
								#20;
							end
						end
					end
				end
			end
		end
		#20 $stop;
	end
	
initial
	$monitor($stime, , M);
endmodule
