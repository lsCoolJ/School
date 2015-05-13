// TCES 330
// Midterm Exam
// 5/13/2014
// This is a test module to test the 
// midterm Morse Code FSM.

module testMT1FSM;
  reg Clock;
  reg [2:0]  Letter;
  wire [1:0] Morse;
  wire [3:0] State;
  
  // possible Letter values
  localparam H = 3'h0,  
             E = 3'h1,
             L = 3'h2,
             O = 3'h3,   
             B = 3'h4;  // blank

  reg [31:0] SLetter;  // holds the ASCII (string) version of Letter  
  reg [63:0] SMorse;   // holds the ASCII (string) version of Morse               
  
  // module MT1FSM( Clock, Letter, Morse, OutState );
  MT1FSM DUT1( Clock, Letter, Morse, State );
  
  // generate clock
  always begin
    Clock = 0;
    #10;
    Clock = 1;
    #10;
  end
  
  // generate test stimulus (HELLO)
  initial begin
  	     Letter = B;  // blank
 	 #83  Letter = H;  
  	#100 Letter = E; 
  	#40  Letter = L;  
  	#80  Letter = L;  
  	#120 Letter = O; 
  	#80  $stop;       
  end  // initial
  
  // turn Morse into a string for $monitor()
  always @ (Morse) begin
    case ( Morse )
      2'h0: SMorse = "Gap ";
      2'h1: SMorse = "Dot ";
      2'h2: SMorse = "Dash";
      default: SMorse = "    ";
    endcase
  end  // always
  
  // turn Letter into a string for $monitor()
  always @(Letter) begin
    case (Letter)
      3'h0: SLetter = "H";
      3'h1: SLetter = "E";
      3'h2: SLetter = "L";
      3'h3: SLetter = "O";
      default: SLetter = " "; // blank
    endcase
  end
  
  initial begin
    $monitor( "At: %d  Letter: %s,  Morse: %s,  State: %h",  $stime, SLetter, SMorse, State );
  end
  
endmodule

/* 
You should get the following output:

# At:          0  Letter:     ,  Morse:     Gap ,  State: 0
# At:         83  Letter:    H,  Morse:     Gap ,  State: 0
# At:         90  Letter:    H,  Morse:     Dot ,  State: 9 // start of H
# At:        110  Letter:    H,  Morse:     Dot ,  State: a
# At:        130  Letter:    H,  Morse:     Dot ,  State: b
# At:        150  Letter:    H,  Morse:     Dot ,  State: c // end of H
# At:        170  Letter:    H,  Morse:     Gap ,  State: 0
# At:        183  Letter:    E,  Morse:     Gap ,  State: 0
# At:        190  Letter:    E,  Morse:     Dot ,  State: 4 // E dot
# At:        210  Letter:    E,  Morse:     Gap ,  State: 0
# At:        223  Letter:    L,  Morse:     Gap ,  State: 0 // start of first L
# At:        230  Letter:    L,  Morse:     Dot ,  State: 5
# At:        250  Letter:    L,  Morse:     Dash,  State: 6
# At:        270  Letter:    L,  Morse:     Dot ,  State: 7
# At:        290  Letter:    L,  Morse:     Dot ,  State: 8 // end of first L
# At:        310  Letter:    L,  Morse:     Gap ,  State: 0 // gap between Ls
# At:        330  Letter:    L,  Morse:     Dot ,  State: 5 // start of second L
# At:        350  Letter:    L,  Morse:     Dash,  State: 6
# At:        370  Letter:    L,  Morse:     Dot ,  State: 7
# At:        390  Letter:    L,  Morse:     Dot ,  State: 8 // end of second L
# At:        410  Letter:    L,  Morse:     Gap ,  State: 0
# At:        423  Letter:    O,  Morse:     Gap ,  State: 0 
# At:        430  Letter:    O,  Morse:     Dash,  State: 1 // start of O
# At:        450  Letter:    O,  Morse:     Dash,  State: 2
# At:        470  Letter:    O,  Morse:     Dash,  State: 3 // end of O
# At:        490  Letter:    O,  Morse:     Gap ,  State: 0


*/
