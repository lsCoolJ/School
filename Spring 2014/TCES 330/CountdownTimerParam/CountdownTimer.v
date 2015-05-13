// TCES 330, Spring 2010
// R. Gutmann
// General Countdown Timer
// Counts down to zero and outputs a pulse 

module CountdownTimer( Clock, Enable, Reset, Pulse );
  parameter InitValue = 50_000_000 - 1;  // where to start counting down (default)
  localparam NBits    = 32;          // How many bits in our timer counter
  input Clock;  // our system Clock
  input Enable; // enables the counter
  input Reset;  // resets the timer and loads InitValue
  
  output reg Pulse;  // indicates a zero on the timer counter
  
  reg [NBits-1:0] Count = InitValue;  // actual counter
  
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
    else if ( Enable ) begin
      Count <= Count - 1'b1;  // Note: non-blocking assignment
      if ( Count == 0 ) begin
        Count <= InitValue;
      end
    end
  end
  
endmodule
