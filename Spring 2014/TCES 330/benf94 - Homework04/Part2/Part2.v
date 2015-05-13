/* Homework 4 Part 2 written by Ben Foster
 * TCES 330 5/13/14
 * This module implements a finite state machine
 * that detects 4 consecutive 0s or 1s.
 */

module Part2(SW, KEY, LEDR, LEDG);
  input [1:0] SW; //Input Switches
  input [0:0] KEY; //Manual Clock input
  output [3:0] LEDR; //Red LEDS to indicate state
  output [0:0] LEDG; //Green LEDS to show output

  wire reset = SW[0]; //reset wire set to SW[0]
  wire w = SW[1]; //input wire set to SW[1]
  wire Clock = KEY[0]; //clock set to KEY[0]
  reg [3:0] currState, nextState; //current and next state registers
  reg Z; //output Z register
  assign LEDG[0] = Z; //green led set to output
  assign LEDR = currState; //Red less show current state
  
  //localparams are the different states
  localparam A = 4'b0000, B = 4'b0001, C = 4'b0010,
      D = 4'b0011, E = 4'b0100, F = 4'b0101, G = 4'b0110,
      H = 4'b0111, I = 4'b1000;

  //always block executes when input or currState changes
  always @(w, currState)
  begin: state_table
    //case block changes state depending on input
    case(currState)
      A : if(!w) nextState = B;
        else nextState = F;
      B : if(!w) nextState = C;
        else nextState = F;
      C : if(!w) nextState = D;
	     else nextState = F;
      D : if(!w) nextState = E;
	     else nextState = F;
      E : if(!w) nextState = E;
	     else nextState = F;
      F : if(!w) nextState = B;
	     else nextState = G;
      G : if(!w) nextState = B;
	     else nextState = H;
      H : if(!w) nextState = B;
	     else nextState = I;
      I : if(!w) nextState = B;
	     else nextState = I;
      default : nextState = 4'bxxxx;
    endcase
  end //state_table

  //always block changes on positive clock edge
  always @(posedge Clock)
  begin : state_FFs
    currState <= nextState;
    if(~reset) begin
      currState <= A;
      Z <= 0;
    end else if (nextState == E || nextState == I)
	 begin
      Z <= 1;
    end else begin
      Z <= 0;
	 end
  end //state_FFs
endmodule
