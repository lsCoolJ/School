// TCES 330 
// 5/5/12
// R. Gutmann
// This module is a testbench for the module
// Laser16
// Use ModelSim to perform the simulation

`timescale 1ns/1ns
module testLaser16;

  reg CLK;   // system clock
  reg B;     // button press (conditioned by ButtonSync)
  reg Reset; // system reset

  wire XL;   // Laser ON/OFF signal

  // module under test.
  Laser16 dut( B, XL, CLK, Reset  );
  
  // generate clock
  always begin
    CLK = 0;
    #10;
    CLK = 1;
    #10;
  end
   
  // generate other signals press 
  initial begin
    Reset = 1'b1;      // reset our system
    B = 0;             // no button press
    #50  Reset = 1'b0; // reset off
    #95 B = 1'b1;     // button press ON
    #20  B = 1'b0;     // button press OFF
    #1000 $stop;
  end
 
endmodule