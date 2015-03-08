	.ORIG x3000	;Start program at line x3000
	LD R2, TERM	;Load - 7
	LD R3, ASCII	;Load ASCII difference
	LD R4, TERM2	;Load -65
	LD R5, TERM3	;Load -90
AGAIN	IN		;Request keyboard input
	ADD R1, R2, R0	;Test for termination character
	BRz EXIT
	ADD R6, R0, R4	;Test for less than A
	BRn EXIT
	ADD R6, R5, R0	;Test for greater than Z
	BRp EXIT
	ADD R0, R0, R3	;Change to lowercase
	OUT		;Output to the monitor
	BRnzp AGAIN	;....and do it again!
TERM	.FILL #-7
TERM2	.FILL #-65
TERM3 	.FILL #-90
ASCII	.FILL x0020
EXIT	HALT		;HALT
	.END