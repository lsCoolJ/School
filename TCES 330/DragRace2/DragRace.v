module DragRace(KEY, SW, CLOCK_50, HEX0, HEX1, HEX2, HEX3, HEX4, HEX5, HEX6, HEX7);
	input [0:0]


/*
module DragRace(input [0:0] KEY, 		//Rst
					input [1:0] SW,			//PSB, SB
					input CLOCK_50,	//Clock
					output [1:0] LEDR,		//red leds
					output [0:6] HEX0, HEX1, HEX2,	//
					output [0:6] HEX3, HEX4, HEX5,	//lights
					output [0:6] HEX6, HEX7			//
					);
	assign LEDR = SW;
	wire Rst = KEY[0];
	wire PSB = SW[0];
	wire SB = SW[1];
	wire Clock;
	assign Clock = CLOCK_50;
	wire XPulse, ZPulse;
	reg PSL, SL, A1, A2, A3, GRN, RED;
	reg [2:0] currState, nextState;
	
	reg ACLR; //ACLR resets counter
	reg [25:0] X; //x used for counter
	
	localparam Idle = 3'b000, stage = 3'b001,
				Amb1 = 3'b010, Amb2 = 3'b011,
				Amb3 = 3'b100, Green = 3'b101,
				Red = 3'b110;
	
	always @(currState) begin
		case(currState)
			Idle :if(SB)nextState = stage;
				else nextState = Idle;
				
			stage : if(!SB) nextState = Idle;
				else nextState = Amb1;
			
			Amb1 : if(!SB) nextState = Red;
				else nextState = Amb2;
			
			Amb2 : if(!SB) nextState = Red;
				else nextState = Amb3;
			
			Amb3 : if(!SB) nextState = Red;
				else if(XPulse) nextState = Green;
			
			Green : if(Rst) nextState = Idle;
				else nextState = Green;
			
			Red : if(Rst) nextState = Idle;
				else nextState = Red;
				
			default : nextState = Idle;
		endcase
	end
	
/*			case(currState)
			Idle : begin
				//PSL = 1;
				if(SB)nextState = stage;
				else nextState = Idle;
			end	
			
			stage : begin
				//SL = 1;
				if(!SB) begin 
					nextState = Idle;
				end else if(ZPulse) begin 
					nextState = Amb1;
				end
			end
			
			Amb1 : begin
				//A1 = 1;
				if(!SB) nextState = Red;
				else if(XPulse) nextState = Amb2;
			end
			
			Amb2 : begin
				A2 = 1; 
				if(!SB) nextState = Red;
				else if(XPulse) nextState = Amb3;
			end
			
			Amb3 : begin
				A3 = 1;
				if(!SB) nextState = Red;
				else if(XPulse) nextState = Green;
			end
			
			Green : begin
				GRN = 1;
				if(Rst) nextState = Idle;
				else nextState = Green;
			end
			
			Red : begin
				RED = 1;
				if(Rst) nextState = Idle;
				else nextState = Red;
			end
			default : nextState = Idle;
		endcase*/
	
	// StateReg (use non-blocking assigns)
  always @( posedge Clock ) begin
    if ( Rst == 1 ) begin
      currState <= Idle;       // reset overrides everything else
		//A1 <= 0;
		//A2 <= 0;
		//A3 <= 0;
		//GRN <= 0;
		//RED <= 0;
    end else begin
		if(currState == stage) begin
			if(X == 26'd50000000) begin
				ACLR = 1'b1;
				currState <= nextState;		// otherwise go to the state we set
			end else begin
				ACLR = 1'b0;
			end
		end else begin
			currState <= nextState;
		//A1 <= 0;
		//A2 <= 0;
		//A3 <= 0;
		//GRN <= 0;
		//RED <= 0;
		end
    end
  end  // always
	

	//the lpm_counter instantiation counts
	lpm_counter #(.LPM_WIDTH(26)) U1( .aclr(ACLR), .clock(CLOCK_50), .q(X) );
	
/*	
	// the counter (datapath component)
  CountdownTimer #(.NBits(26)) U1(Clock, SB, Rst, 26'd5000, ZPulse );
  
  // the counter (datapath component)
  CountdownTimer #(.NBits(26)) U2(Clock, SB, Rst, 26'd25000000, XPulse );
  */
	
	//Lights instantiations
	Lights L0(RED, HEX0);
	Lights L1(RED, HEX1);
	Lights L2(GRN, HEX2);
	Lights L3(A3, HEX3);
	Lights L4(A2, HEX4);
	Lights L5(A1, HEX5);
	Lights L6(SB, HEX6);
	Lights L7(PSB, HEX7);
	
endmodule
*/
