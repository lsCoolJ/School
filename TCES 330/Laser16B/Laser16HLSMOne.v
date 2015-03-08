// TCES 330, Spring 2010
// R. Gutmann
// Laser Timer State Machine
// High-Level State Maching - ONE Procedure
// No external timer
// Laser is ON for 16 clock pulses

module Laser16HLSMOne( B, Clk, Rst, X );
  input B;        // button input = start signal
  input Clk;      // system clock
  input Rst;      // reset signal

  output reg X = 0;   // signal that turns the laser on/off
  
  localparam InitValue = 8'd15;
  reg [7:0] Count;   // eight bit counter - more than enough bits
  
  // state names
  localparam SInit = 3'd0,
             SOff  = 3'd1,
             SOn   = 3'd2;
             
  reg [2:0] State; 
  
  // CombLogic (use blocking assigns)
  always @ (posedge Clk )begin
    X <= 0;  // no output signal by default    
    
    if ( Rst ) begin
      X <= 0;   // turn off laser
      State <= SInit;  
    end
    else begin
      case (State)
      
        SInit: begin
          Count <= InitValue;    // reset the counter here
          State <= SOff;
        end
        
        SOff: begin  // wait for button press
          // laser off, timer disabled, timer not being reset
          if ( B == 1 )  begin
            State <= SOn;  // button pushed
          end
          else begin
            State <= SOff;  // button not pushed
          end
        end
        
        SOn: begin
          X <= 1;  // laser on
          //Ec = 1; // timer enabled
          Count <= Count - 1'b1;
          if ( Count == 0 )     // timer pulse
            State <= SInit;  // go to Init state
          else
            State <= SOn;  // watit for timer pulse
        end
        
        default: begin
          X <= 0;  // make sure!
          State <= SInit;
        end
      endcase
    end // not reset
  end // always
  

  
endmodule
  
