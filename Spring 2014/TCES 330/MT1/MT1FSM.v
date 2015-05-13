// ************ Your comments **************
// Midterm module MT1FSM partially written by Ben Foster
// TCES 330 5/13/14
// This module takes a clock, a letter, a morse
// character and outputs an outstate which goes
// to a hex display
//
// Letter     Morse Code
// H          Dot-Dot-Dot-Dot
// E          Dot
// L          Dot-Dash-Dot-Dot
// O          Dash-Dash-Dash

module MT1FSM( Clock, Letter, Morse, OutState );
  input Clock;            // system clock (derived from KEY0)
  input  [2:0] Letter;    // the letter to encode
  
  output reg [1:0] Morse; // Morse Code output 
  output[3:0] OutState;  // current state for debug purposes
  
  // our state names
  localparam SGap      = 4'h0,  // State Gap (outputs a Letter Gap)
  
             ODash1    = 4'h1,  // Letter O: Dash-Dash-Dash
             ODash2    = 4'h2, 
             ODash3    = 4'h3, 
				 
             EDot1     = 4'h4,  // Letter E: Dot	
				 
             LDot1     = 4'h5,  // Letter L: Dot-Dash-Dot-Dot				 
             LDash2    = 4'h6,
             LDot3     = 4'h7,
             LDot4     = 4'h8,				 
				 
             HDot1     = 4'h9,  // Letter H: Dot-Dot-Dot-Dot
             HDot2     = 4'hA,
             HDot3     = 4'hB,
             HDot4     = 4'hC;
             
  // possible Letter values
  localparam H = 3'h0,  
             E = 3'h1,
             L = 3'h2,
             O = 3'h3,
	          Blank = 3'h4;			 
				 
  // possible Morse values
  localparam LGap = 2'h0, // letter gap
             Dot  = 2'h1,
             Dash = 2'h2;
                                                                             
  reg [3:0] State = SGap;   // initialize State
  reg [3:0] NextState;
  assign OutState = State;  // for output purposes
  
  // combinational part of state machine
  always @ * begin

  	case( State )
  		
  		SGap: begin
        Morse = LGap;           // send a Gap
        if ( Letter == H )
          NextState = HDot1;    // start the H
        else if ( Letter == E )
          NextState = EDot1;    // start the E
        else if ( Letter == L )
          NextState = LDot1;    // start the L
        else if ( Letter == O )
          NextState = ODash1;   // start the O
        else
          NextState = SGap;     // stay here for blank, etc.
  		end             
		
/////////// Letter O
  		ODash1: begin         // input is an O
  			Morse = Dash;      // send first dash of an O
        NextState = ODash2;
  		end         
  		  
  		ODash2: begin         // input is an O
        Morse = Dash;       // we are at dash-dash
        NextState = ODash3;
  		end        
  		
  		ODash3: begin         // input is an O
  			Morse = Dash;      // we are at dash-dash-dash
  			NextState = SGap;  // done with the O
  		end
		
/////////// Letter E		
		EDot1: begin         // input is an E
		  Morse = Dot;       // send a dot
		  NextState = SGap;  // done with the E
		end
		
/////////// Letter L		
		LDot1: begin         // input is an L
		  Morse = Dot;       // send a Dot
		  NextState = LDash2;
		end
		
		LDash2: begin        // input is an L
		  Morse = Dash;      // send a Dash (we are at Dot-Dash)
		  NextState = LDot3;
		end
		
		LDot3: begin			// input is an L
			Morse = Dot;		// send a Dot (we are at Dot-Dash-Dot)
			NextState = LDot4;
		end
		
		LDot4: begin			// input is an L
			Morse = Dot;		// send a Dot (we are at Dot-Dash-Dot-Dot)
			NextState = SGap; // done with the L
		end
		
// *************** Your Code ***************
		
/////////// Letter H		
		HDot1: begin         // input is an H
		  Morse = Dot;       // send first dot of an H
		  NextState = HDot2;
		end
		
		HDot2: begin			// input is an H
			Morse = Dot;		// send a Dot (we are at Dot-Dot)
			NextState = HDot3;
		end
		
		HDot3: begin			// input is an H
			Morse = Dot;		// send a Dot (we are at Dot-Dot-Dot)
			NextState = HDot4;
		end
		
		HDot4: begin			// input is an H
			Morse = Dot;		// send a Dot (we are at Dot-Dot-Dot-Dot)
			NextState = SGap; // done with the H
		end
		
// *************** Your Code ***************

/////////// Default		
     default: begin
  	  	 Morse = LGap;
  	    NextState = SGap;
  	  end
  	
    endcase
  end  // combinational always  	
  
  
  // sequential 
  always @ (posedge Clock) begin
// *************** Your Code ***************
		State <= NextState; //only one line added.
									//in order to progress
  end  // sequential always	  		  
  
endmodule  		  		  		  		
