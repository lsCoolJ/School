// TCES 330, Spring 2010
// R. Gutmann
// Laser Timer State Machine
// Laser is ON for N clock pulses

module Laser16SM( B, Clk, Rst, Z, Ec, Rc, X );
  input B;        // button input = start signal
  input Clk;      // system clock
  input Rst;      // reset signal
  input Z;        // countdown timer output pulse
  
  output reg Ec;  // signal to enable countdown timer
  output reg Rc;  // signal to reset countdown timer
  output reg X;   // signal that turns the laser on/off
  
  localparam SInit = 0,
             SOff = 1,
             SOn  = 2;
             
  reg [1:0] State, StateNext;
  
  // CombLogic (use blocking assigns)
  always @ * begin
  	// default outputs
    X = 0;  // no output signal       
    Rc = 0; // don't reset the timer
    Ec = 0; // dont' enable the timer
    
    case (State)
    
      SInit: begin
      	Rc = 1'b1;  // reset the countdown timer
        StateNext = SOff;
      end
      
      SOff: begin  // wait for button press
      	// laser off, timer disabled, timer not being reset
        if ( B == 1 )  begin
          StateNext = SOn;  // button pushed
        end
        else begin
          StateNext = SOff;  // button not pushed
        end
      end
      
      SOn: begin
        X = 1;  // laser on
        Ec = 1; // timer enabled
        if ( Z == 1'b1 )     // timer pulse
          StateNext = SInit;  // go to Init state
        else
          StateNext = SOn;  // watit for timer pulse
      end
      
      default: begin
        X = 0;  // make sure!
        StateNext = SInit;
      end
    endcase
  end // always
    
  // StateReg (use non-blocking assigns)
  always @( posedge Clk ) begin
    if ( Rst == 1 ) begin
      State <= SInit;       // reset overrides everything else
    end
    else begin
      State <= StateNext;   // otherwise go to the state we set
    end
  end  // always
  
endmodule
  
