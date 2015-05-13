module Lights(onOFF, HEX0);
	input onOFF;
	output [0:6] HEX0;
	
	reg [0:6] hex; //variable hex
	assign HEX0 = hex;
	
	always @(onOFF) begin
		if(onOFF) begin
			hex = 7'b0000000;
		end else begin
			hex = 7'b1111111;
		end
	end //always
endmodule
