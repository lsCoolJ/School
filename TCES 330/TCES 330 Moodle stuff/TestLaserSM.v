// TCES 330 
// 4/10/12
// R. Gutmann
// This module is a testbench for the module
// LaserSM (laser surgery state machine). Use ModelSim to perform the simulation

`timescale 1ns/1ns
module TestLaserSM; // note: no I/O ports

  reg Clock, ButtonPress, Reset;
  wire LaserON;

  // module under test:
  // reference: LaserSM( Clk, B, Rst, X );
  LaserSM DUT( Clock, ButtonPress, Reset, LaserON );
  
  // develop a clock (100 MHz)
  always begin
    	Clock <= 0;
    	#5;
    	Clock <= 1;
    	#5;
    end  
    
  
  initial	// Test stimulus
    begin
      ButtonPress = 0;
      Reset = 0;
      #100 ButtonPress = 1;
      #10  ButtonPress = 0;
      #100 ButtonPress = 1;
      #10  ButtonPress = 0;
      #10  Reset = 1;
      #10  Reset = 0;
      #100 $stop;
    end
    
      
endmodule     
