/* Homework 5 testDragRace module written by Ben Foster
 * TCES 330 5/20/14
 * This module is a test for DragSm module
 * This testbench doesn't work for some reason.
 * Use modelsim to perform simulation.
 */

`timescale 1ns/1ns
module testDragRace;
  reg [0:0] Rst, Clock;
  reg [1:0] SW;
  wire PSL, SL, A1, A2, A3, GRN, RED;
  
  DragSM DUT(Rst, SW[0], SW[1], Clock, PSL, SL, A1, A2, A3, GRN, RED);
  
 // integer I, J, K, L, N, O; //for-loop indices
  
  always begin
    Clock = 0;
    #10;
    Clock = 1;
    #10;
  end
  
  initial
  begin
    Rst = 1'b1;
    #10;
    SW[0] = 1'b1;
    #10;
    SW[1] = 1'b1;
    #1000000000; //wait long enough to 
          //let all the amber lights
          //and the green light to turn on.
          //it doesnt make any sense that 
          //this isnt working because its waiting
          //a really long time and it doesnt work.
          //however my program actually works on the DE2
          //board. I looked at the example for the laser
          //where I copied and pasted it below, but it 
          //didn't help.
    
    Rst = 1'b0; //Reset everything
    SW[0] = 1'b0;
    SW[1] = 1'b0;
    #10;
    
    Rst = 1'b1;
    SW[0] = 1'b1;
    SW[1] = 1'b1;
    #50; //wait long enough to
        //let the first amber light
        //to turn on.
    SW[1] = 1'b0; //SB = 0;
    //we should see the red light turn on here.
    #10;
    
    Rst = 1'b0; //Reset everything
    SW[0] = 1'b0;
    SW[1] = 1'b0;
    #10;
    
    Rst = 1'b1;
    SW[0] = 1'b1;
    SW[1] = 1'b1;
    #100; //wait long enough to
          //let the first and second amber
          //light to turn on.
    SW[1] = 1'b0; //SB = 0;
    //we should see the red light turn on here.
    #10;
    
    Rst = 1'b0; //Reset everything
    SW[0] = 1'b0;
    SW[1] = 1'b0;
    #10;
    
    Rst = 1'b1;
    SW[0] = 1'b1;
    SW[1] = 1'b1;
    #125; //wait long enough to
          //let the first, second and third
          //amber lights to turn on.
    SW[1] = 1'b0; //SB = 0;
    //we should see the red light turn on here.
    #10;
    
    Rst = 1'b0; //Reset everything
    SW[0] = 1'b0;
    SW[1] = 1'b0;
    #10 $stop;
    
  end //Initial
  
  
  
  initial
	$monitor($stime, , "Rst: ", Rst, , "Clock: ", Clock, , "SW: ", SW, ,
	       "PSL: ", PSL, , "SL: ", SL, , "A1: ", A1, , "A2: ", A2, , 
	       "A3: ", A3, , "GRN: ", GRN, , "RED: ", RED); 
endmodule

/*

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
    #195 B = 1'b1;     // button press ON
    #20  B = 1'b0;     // button press OFF
    #1000 $stop;
  end
 
endmodule */