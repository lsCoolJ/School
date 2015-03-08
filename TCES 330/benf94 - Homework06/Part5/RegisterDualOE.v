/* Homework 6 RegisterDualOE module written by Ben Foster.
 * TECES 330 5/27/14
 * This module chooses what comes out of the read.
 */

module RegisterDualOE(I, Ld, Oea, Oeb, Clk, Rst, Qa, Qb);
  parameter N = 16;
  
  input Clk; //system clock
  input Rst; //reset
  input Ld;        // load signal  
  input Oea, Oeb;        // output enables  
  input [N-1:0] I;  // data to load

  output [N-1:0] Qa, Qb;  // switched outputs
  
  reg [N-1:0] Q_a, Q_b;   // standard (unswitched) output

	// Register Procedure
	always @(posedge Clk) begin
		if (Rst == 1) begin
			Q_a <= 0;
			Q_b <= 0;
		end else if (Ld == 1) begin
			Q_a <= I;
			Q_b <= I;
		end
	end

	// Output
	assign Qa = Oea ? Q_a : {N{1'bZ}};
	assign Qb = Oeb ? Q_b : {N{1'bZ}};
	
endmodule

