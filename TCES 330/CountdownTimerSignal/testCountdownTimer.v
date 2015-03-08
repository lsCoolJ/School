// TCES 330 
// 4/10/22
// R. Gutmann
// This module is a testbench for the module
// CountdownTimer. 
// Use ModelSim to perform the simulation

`timescale 1ns/1ns
module testCountdownTimer;

  reg CLK, Rst;
  reg [7:0] TickCount = 0;
  wire Pout;
  
  //localparam StartValue = 40_000_000-1;
  //localparam SecondStartValue = 20_000_000 - 1;
  localparam StartValue = 40 - 1;
{  reg [31:0] InitValue;
}  
  // module under test.
  // reference: CountdownTimer( Clock, Enable, Reset, Pulse );
  CountdownTimer dut( CLK, 1'b1, Rst, InitValue, Pout );  // always enabled
  
  // generate 50 MHz clock (20 ns period)
  always begin
    CLK = 0;
    #10;
    CLK = 1;
    #10;
  end
  
  always @ ( posedge CLK ) begin
    if ( Pout ) begin
      TickCount <= TickCount + 1'b1;
      if ( TickCount == 2 )
        $stop;
    end  
  end
   
  // generate Button press 
  initial begin
    Rst = 1;
    InitValue = StartValue;
    #205 Rst = 0;
    //#2220 Rst = 1;
    //#20 Rst = 0;
  end
  
  
  // view the waveforms and...  
  initial begin
    $monitor( $stime,,, Rst,,, Pout );
  end
 
endmodule
