// TCES 330, Spring 2010
// R. Gutmann
// General Countdown Timer
// Counts down to zero and outputs a pulse 

module CountdownTimer( Clock, Enable, Reset, InitValue, Pulse );
  parameter NBits     = 32;          // How many bits in our timer counter
  
  input [NBits-1:0] InitValue;  // initial counter value
  input Clock;  // our system Clock
  input Enable; // enable countdown
  input Reset;  // resets the timer and loads InitValue
  
  output reg Pulse;  // indicates a zero on the timer counter
  
  reg [NBits-1:0] Count;  // actual counter
  
  // to synchronize Pulse with Count==0
  always @( Count ) begin
  	if ( Count == 0 ) begin
  		Pulse = 1'b1;
  	end else begin
  		Pulse = 1'b0;
  	end
  end
  
  always @ ( posedge Clock ) begin
    if ( Reset ) begin
      Count <= InitValue;
    end
    else if (Enable) begin
      Count <= Count - 1'b1;
      if ( Count == 0 ) begin
        Count <= InitValue;
      end
    end
  end
  
endmodule
