// TCES 330 
// 4/10/12
// R. Gutmann
// This module is a testbench for the module
// ThreeOnes. Use ModelSim to perform the simulation

`timescale 1ns/1ns
module testCountNG; // note: no I/O ports
  localparam M=4;
  reg Clk;       // our system clock
  reg Enable;    // test module enable bit
  reg Clear;     // test module clear bit

  wire [M-1:0] X;   // test module output

  CountNG #(.N(M)) DUT( Clk, Enable, Clear, X );

  // generate the clock signal
  always begin
  	Clk <= 0;
  	#10;
  	Clk <= 1;
  	#10;
  end  
  
  // when to stop
  always @( posedge Clk )
    if ( X == {M{1'b1}} )  // X = all 1s
      $stop;
  
  integer I, J;
  // generate the test stimulus
  // note this really doesn't test Enable and Clear
  // very well
  initial
    begin
      Enable = 1'b1;
	    Clear = 1'b0;
    end
  
  // print out something
  initial
    $monitor( $stime,, X ); 
    
endmodule     
