// TCES 330, Spring 2011
// R. Gutmann
// Altered by Brian Crabtree and Ben Foster
// Lab 4, Part 2
// N-bit counter using TFFs and a generate loop

module CountNG ( Clock, Enable, Clear, Q );
  parameter N = 16; // default size of counter (bits)
  input Clock;      // system clock
  input Enable;     //
  input Clear;      // 
  output [N-1:0]Q;  // counter output
  
  reg [N-1:0]Q;
  
  wire T[N-1:0];    // all the T's wire
  wire Qn[N-1:0];   // 
	
	always @(posedge Clock) begin
		if(Enable) begin
			Q <= Q + 1'b1;	// increment, rather than using flip flops
		end
		if(Clear) begin
			Q <= 1'b0;
		end
	end
endmodule
