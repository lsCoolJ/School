/* Homework 5 counter_lpm module written by Ben Foster
 * TCES 330 5/20/14
 * This module is a counter. the only reason its used
 * is because model sim is stupid and wouldn't use
 * lpm_counter that was given by quartus.
 */
 
module counter_lpm (
	aclr, //Asynchronous clear/
	clock, //clock input.
	q); //output q

	input	  aclr;
	input	  clock;
	output	[25:0]  q;

	reg [25:0] out; //out is changed
	
	assign q = out; //q is equal to out

	always @(posedge clock) begin
		if(aclr) out = 26'd0; //if the clear is on, then out is 0.
		else out = out + 26'd1; //otherwise count up.
	end
	
endmodule
