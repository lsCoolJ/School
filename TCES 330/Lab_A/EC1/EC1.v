// TCES 330
// Ben Foster
// Lab A, Part 4 EXTRA CREDIT
// Depends: Ascii7seg, lpm_counter
// This module flashes the digits 0 through 9 on display HEX0
// for one second each if both switches are off.
// twice as fast if switch 0 is on and 1 is off
// four times as fast if switch 1 is on and 0 is off
// eight times as fast if both switches are on

module EC1( SW, LEDR, HEX0, HEX1, HEX2, HEX3, HEX4, HEX5, HEX6, HEX7, CLOCK_50);
  input CLOCK_50;
  input [1:0] SW;
  output [1:0] LEDR;
  output [0:6]HEX0, HEX1, HEX2, HEX3, HEX4, HEX5, HEX6, HEX7;  // 7-segment displays
  
  assign LEDR = SW;
  reg [3:0] Q, A0, A1, A2, A3, A4, A5, A6, A7;
  reg [25:0]X, S;
  reg ACLR;
  
  always @(posedge CLOCK_50)
  begin
	case(SW)
		2'b00 : S = 26'd50000000;
		2'b01 : S = 26'd25000000;
		2'b10 : S = 26'd12500000;
		default : S = 26'd6250000;
	endcase
		
	if (X == S)
	begin
		Q = (Q + 4'b0001) % 4'd8;
		A7 = Q;
		A6 = (Q + 4'd1) % 4'd8;
		A5 = (Q + 4'd2) % 4'd8;
		A4 = (Q + 4'd3) % 4'd8;
		A3 = (Q + 4'd4) % 4'd8;
		A2 = (Q + 4'd5) % 4'd8;
		A1 = (Q + 4'd6) % 4'd8;
		A0 = (Q + 4'd7) % 4'd8;
		ACLR = 1'd1; // reset counter
	end
	else begin
		ACLR = 1'd0; // otherwise don't reset counter (this is important)
	end
  end
		
  
  // count 1 second worth of clock
  lpm_counter #(.LPM_WIDTH(26)) U1( .aclr(ACLR), .clock(CLOCK_50), .q(X) );
  
  // wire up the 7-seg displays
  Ascii7seg H0( A0,   HEX0 );
  Ascii7seg H1( A1,   HEX1 );
  Ascii7seg H2( A2,   HEX2 );
  Ascii7seg H3( A3,   HEX3 );
  Ascii7seg H4( A4,   HEX4 );
  Ascii7seg H5( A5,   HEX5 );
  Ascii7seg H6( A6,   HEX6 );
  Ascii7seg H7( A7,   HEX7 );

endmodule
