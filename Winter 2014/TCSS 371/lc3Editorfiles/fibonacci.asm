	.ORIG x3000	    ;Start program at x3000
COUNTER .FILL x0018	    ;COUNTER = 24
	LEA R3, STORE       ;Load the address of STORE into R3
	LD R4, COUNTER      ;Load COUNTER into R4
	AND R0, R0, 0       ;Clear R0
	AND R1, R1, 0       ;Clear R1
	AND R2, R2, 0       ;Clear R2
	ADD R1, R1, 1       ;Increment R1
	STR R2, R3, 0       ;Store the value of R2 into the address in R3
	ADD R3, R3, 1       ;Increment R3
	ADD R4, R4, -1      ;Decrement R4
	STR R1, R3, 0       ;Store the value of R0 into the address in R3
	ADD R3, R3, 1       ;Increment R3
	ADD R4, R4, -1      ;Decrement R4
LOOP 	ADD R2, R0, R1	    ;ADD R0 and R1, and store the value in R2
	STR R2, R3, 0       ;Store the value of R2 into the address in R3
	ADD R3, R3, 1       ;Increment R3
	ADD R0, R1, 0       ;Copy the value in R1 into R0
	ADD R1, R2, 0       ;Copy the value in R2 into R1
	ADD R4, R4, -1      ;Decrement R4
	BRp LOOP            ;If R4 is positive, LOOP
	HALT                ;Stop assembling
STORE 	.BLKW 24      	    ;The block of memory for the Fibonacci Sequence
	.END                ;End program