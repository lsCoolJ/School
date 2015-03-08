	.ORIG x3000	;Start program at line x3000
	LD R3, TERM2	;Load -65
	LD R4, TERM3	;Load -90
	LD R5, TERM4	;Load -97
	LD R6, TERM5	;Load -122
AGAIN	LD R1, TERM	;Load -27
	LD R2, ASCII	;Load ASCII difference
	IN		;Request keyboard input
	ADD R1, R1, R0	;Test for escape termination key
	BRz EXIT	;terminate program
	ADD R1, R3, R0	;Test for less than A
	BRn PRINT
	ADD R1, R4, R0	;Test for greater than Z
	BRp LOWER
	ADD R0, R0, R2	;Change to lowercase
	OUT		;Output to the monitor
	BRnzp AGAIN	;....and do it again!
LOWER	ADD R1, R5, R0	;Test for less than a
	BRn PRINT
	ADD R1, R6, R0	;Test for greater than z
	BRp PRINT
	NOT R2, R2
	ADD R2, R2, #1
	ADD R0, R0, R2	;Change to uppercase
PRINT	OUT		;Output to the monitor
	BRnzp AGAIN	;....and do it again!
TERM	.FILL #-27
TERM2	.FILL #-65
TERM3 	.FILL #-90
TERM4	.FILL #-97
TERM5	.FILL #-122
ASCII	.FILL #32
ASCII2	.FILL #-32
EXIT	HALT		;HALT
	.END