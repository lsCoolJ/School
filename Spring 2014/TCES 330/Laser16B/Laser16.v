// TCES 330, Spring 2009
// Laser Surgery Example
// Top level module integrates the Datapath and
// State Machine modules.
// Laser is on for 16 clock pulses.
// R. Gutmann

module Laser16( B, X, Clk, Rst );
  input B;        // button input = start signal
  input Clk;      // system clock
  input Rst;      // system reset 
  
  output X;    // signal that turns the laser on/off
    
  // the state machine
  Laser16HLSMOne U0( B, Clk, Rst, X );
  
endmodule

