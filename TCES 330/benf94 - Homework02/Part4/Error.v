/*Homework 2 Error written by Ben Foster
 *TCES 330 4/23/14
 */
module Error(A, B, Err);
	input [3:0] A, B; //Inputs A and B.
	output Err; //Output Err is the error
	
	//Assign Err to whether A or B are greater than 9.
	//If either are greater than 9 then Err = 1 which then
	//translates to LED8 in the heirarchy.
	assign Err = (A > 9) | (B > 9);
	
endmodule
