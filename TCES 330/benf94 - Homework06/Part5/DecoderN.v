/* Homework 6 DecoderN module written by Ben Foster
 * TCES 330, Spring 2009
 * Implement an N to 2**N decoder
 */

module DecoderN(W, E, Y);
  parameter N = 2;
  localparam M = 2**N; //M = 2^N exponent
  input [N-1:0] W;      // the inputs
  input E;              // enable
  output reg [M-1:0] Y; // the outputs 
  
  always @(W, E) begin
    if ( E ) begin
      Y = 1'b1 << W;  // shift a '1' into position
    end
    else begin
      Y = 0;
    end
  end  // always
endmodule
