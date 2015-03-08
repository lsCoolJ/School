	.ORIG x3000	;start the program at line x3000
	BR START ;automatically jumps over the two strings
BSTRING .STRINGZ "=====Number Staircase=====\n"
INSTRING .STRINGZ "Enter a positive integer between 1 and 9: "
OFFSET	.FILL #48
START	AND R0, R0, #0 ;clear R0
 	AND R1, R1, #0 ;clear R1 (k)
        AND R2, R2, #0 ;clear R2 (stepCounter)
        AND R3, R3, #0 ;clear R3 (depthCounter)
        AND R4, R4, #0 ;clear R4 (forwardK)
	AND R5, R5, #0 ;clear R5 (Offset)
	LD R5, OFFSET ;Load R5 with the offset
        LEA R0, BSTRING ;Load R0 with the address of BSTRING
        PUTS ;outputs BSTRING to the console
        LEA R0, INSTRING ;Load R0 with the address of INSTRING
        PUTS ;ouputs INSTRING to the console
        GETC ;takes a character from input and stores it in R0
	NOT R6, R5 ;Not the offset
	ADD R6, R6, #1 ;make the offset negative
        ADD R1, R0, R6 ;Loads what is in R0 into R1 (k)
        ADD R2, R0, R6 ;Loads what is in R0 into R2 (stepCounter)
LOOP 	ADD R4, R4, #1 ;Increment R4 by one. (forwardK)
        ADD R3, R4, #0 ;Load what is in R4 into R3 (depthCounter)
        ADD R0, R3, #0 ;Load what is in R3 into R0
LOOP2 	OUT ;print out what is in R0
        ADD R3, R3, #-1 ;decrement depthCounter by one
        BRp LOOP2
	AND R0, R0, #0 ;clear R0
        ADD R0, R0, #13 ;Loads R0 with carriage return ASCII char
        OUT ;prints out a carriage return
        ADD R2, R2, #-1 ;decrement the stepCounter by 1
        BRp LOOP ;if stepCounter is positive, loop back to LOOP
        HALT ;Halts the program
        .END ;ends the program
BSTRING .STRINGZ "=====Number Staircase====="
INSTRING .STRINGZ "Enter a positive integer: "