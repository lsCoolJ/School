// TCES 330 Spring 2014
// Lab A part 5
// Brian Crabtree and Ben Foster
// 7 segment decoder for HELLO string

module Ascii7seg( C, Display );
  input  [3:0]C;        // input code
  output [0:6]Display;  // seven-segment display output
  
  assign Display = D;
  
  reg [6:0]D;

  always@ (C)
  case (C)
	0 : D = 7'b1001000;	// H
	1 : D = 7'b0110000;	// E
	2 : D = 7'b1110001;	// L
	3 : D = 7'b1110001;	// L
	4 : D = 7'b0000001;	// O
	default : D = 7'b1111111;	// blank
  endcase
endmodule
