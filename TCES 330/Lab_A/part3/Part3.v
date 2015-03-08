// TCES 330, Spring 2011
// R. Gutmann
// Modified by Brian Crabtree and Ben Foster
// Lab 4, Part 3
// 16-bit counter using TFFs
// This is the top-level module (hooked up to DE2 switches, etc.)

module Part3( KEY, SW, HEX3, HEX2, HEX1, HEX0 );
  input  [0:0]KEY;  
  input  [1:0]SW;  
  output [0:6]HEX0, HEX1, HEX2, HEX3;  // 7-segment displays
  
  parameter lpm_width = 16; // counter width
  wire [15:0]Q;
  wire Enable, Clear;
  assign Enable = SW[0];
  assign Clear = SW[1];
  
  // use 16-bit lpm_counter
  lpm_counter #(.LPM_WIDTH(lpm_width)) U1( .clock(KEY[0]), .clk_en(Enable), .sclr(Clear), .q(Q) );
  
  // wire up the 7-seg displays
  Hex7seg H3( Q[15:12], HEX3 );
  Hex7seg H2( Q[11:8],  HEX2 );
  Hex7seg H1( Q[7:4],   HEX1 );
  Hex7seg H0( Q[3:0],   HEX0 );

endmodule
