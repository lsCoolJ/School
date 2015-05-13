`// TCES 330, Spring 2009
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
  
  wire Rt,     // signal to reset the countdown timer
       Et,     // countdown timer enable signal
       ZPulse; // countdown timer output pulse
    
  // the state machine
  Laser16SM U0( B, Clk, Rst, ZPulse, Et, Rt, X );
  
  // the counter (datapath component)
  CountdownTimer #(.NBits(8)) U1( Clk, Et, Rt | Rst, 8'd15, ZPulse );
  
endmodule
