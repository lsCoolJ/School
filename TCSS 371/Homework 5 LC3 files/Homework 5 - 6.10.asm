	.ORIG x3000	;Start program at line x3000
	AND R0, R0, 0	;Clear R0
	AND R1, R1, 0	;Clear R1
	ADD R1, R2, #0	;Load R1 with R2
	LD R3, VALUE 	;Load R3 with x8000
	AND R4, R2, R3	;Determine if value is negative
	BRz LOOP	;If value is positive, Jump to loop
	NOT R1, R1	;If value is negative
	ADD R1, R1, #1	;convert to positive
LOOP	ADD R1, R1, #-2	;Decerement value by 2
	BRp LOOP	;While value is positive, continue decrementing
	BRz SKIP	;If value is zero skip to SKIP
	LEA R0, OMESG	;If value is negative, load R0 with odd message
	PUTS		;Print out ODD message
	HALT		;HALT program
SKIP	LEA R0, EMESG	;If value is zero, load R0 with even message
	PUTS		;Print out EVEN message
	HALT		;HALT program
VALUE 	.FILL x8000	;VALUE = x8000
OMESG	.STRINGZ "ODD NUMBER!!!!!"
EMESG	.STRINGZ "EVEN NUMBER!!!!!"
	.END		;End program
