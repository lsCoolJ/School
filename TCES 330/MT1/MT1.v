// TCES 330
// Midterm Exam 2014
// R. Gutmann
// This is the high level module that connects a Morse Code 
// encoder to its inputs (switches and a clock) and outputs
// (Dot, Dash, or Gap)
// 
// The switches SW0, SW1 and SW2 are used to set the input to the coder.
// SW2  SW1   SW0   Meaning   Morse Code
// 0    0    0      H         Dot-Dot-Dot-Dot
// 0    0    1      E         Dot
// 0    1    0      L         Dot-Dash-Dot-Dot
// 0    1    1      O         Dash-Dash-Dash
// 1    0    0      Blank     No Morse Code for Blank
//
// HEX0 displays the encoder output as described in the exam handout.
//
// HEX1 displays the current letter selected by SW2, SW1 and SW0
// 
// HEX2 displays the current state of the state machine (for
// debug purposes only)
//

module MT1( KEY, SW, LEDR, LEDG, HEX0, HEX1, HEX2 );
  input [0:0] KEY;  // the clock and reset signals
  input [2:0] SW;   // switches to set the letter to encode
  
  output [2:0]  LEDR;   // shows the switches
  output [0:0]  LEDG;   // shows the key
  output [0:6]  HEX2;   // shows the current state machine state (debug)
  output [0:6]  HEX1;   // shows the currently selected letter
  output [0:6]  HEX0;   // shows the Morse Code signal (dot/dash,gap)
             
  wire Clock = ~KEY[0];
  wire [1:0] Morse;    // the Morse Signal
  wire [3:0] State;    // State machine current state
  
  assign LEDR = SW; 
  assign LEDG[0] = Clock;
  
  MT1FSM FSM( Clock, SW, Morse, State );  // state machine
  
  DashDot7Seg H0( Morse,  HEX0 ); // Morse Signal decoder 
  Char7Seg    H1( SW,     HEX1 ); // currently selected letter
  Hex7Seg     H2( State,  HEX2 ); // state machine state
  
endmodule
