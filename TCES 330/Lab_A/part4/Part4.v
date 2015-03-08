// TCES 330
// Brian Crabtree and Ben Foster
// Lab 4, Part 4
// Depends: Hex7seg, lpm_counter
// This module flashes the digits 0 through 9 on display HEX0
// for one second each

module Part4( HEX0, CLOCK_50);
  input CLOCK_50;
  output [0:6]HEX0;  // 7-segment displays
  
  reg ACLR; // reset for counter
  reg [3:0]Q;	// display
  reg [25:0]X;	// counter
  
  always @(posedge CLOCK_50)
  begin
	if (X == 26'd50000000)	// 1 second at 50 MHz
	begin
		Q = (Q + 4'b0001) % 4'd10; // increment Q, and when Q > 9 reset to 0
		ACLR = 1'b1; // reset timer
	end
	else begin
		ACLR = 1'b0; // otherwise don't reset timer
	end
  end
		
  
  // count 1 second worth of clock
  lpm_counter #(.LPM_WIDTH(26)) U1( .aclr(ACLR), .clock(CLOCK_50), .q(X) );
  
  // wire up the 7-seg displays
  Hex7seg H0( Q,   HEX0 );

endmodule
