	.ORIG x3000 	;Start program at x3000
WARNING .STRINGZ "MAX LENGTH = 100 CHARACTERS.\n\n"	;Warning message
	LEA R0, WARNING	;Load the address of WARNING into R0
	PUTS		;Output WARNING
ENTER 	.FILL x000A	;ENTER = Enter key
QUIT 	.FILL x001B	;QUIT = ESC key
COUNTER .FILL x0064	;COUNTER = 100
LF	 .FILL x000A	;LF = Line Feed
	LD R6, COUNTER	;Load COUNTER into R6
	LD R2, ENTER	;Load ENTER into R2
	NOT R2, R2	;Negate R2
	ADD R2, R2, #1	;Increment R2
	LD R3, QUIT	;Load QUIT into R3
	NOT R3, R3	;Negate R3
	ADD R3, R3, #1	;Increment R3
STRING 	.BLKW 102	;Create a block of 102 memory locations
LOOP0 	LD R6, COUNTER	;Load COUNTER into R6
	LEA R1, STRING	;Load the address of STRING into R1
LOOP1 	GETC		;Get a character from the keyboard and store it in R0
	ADD R4, R0, R2	;Subtract R2 from R0 and store the value in R4
	BRz OUTPUT	;If R4 is zero, OUTPUT
	ADD R5, R0, R3	;Subtract R3 from R0 and store the value in R5
	BRz DONE	;If R5 is zero, DONE
	STR R0, R1, #0	;Store the value from R0 at the address in R1
	ADD R1, R1, #1	;Increment R1
	ADD R6, R6, #-1	;Decrement R6
	BRp LOOP1	;If R6 is positive, LOOP1
OUTPUT 	LD R0, LF	;Load LF into R0
	STR R0, R1, #0	;Store the value from R0 at the address in R1
	ADD R1, R1, #1	;Increment R1
	AND R0, R0, #0	;Clear R0
	STR R0, R1, #0	;Store the value from R0 at the address in R1
	LEA R0, STRING	;Load the address of STRING into R0
	PUTS		;Output STRING
	BRnzp LOOP0	;LOOP0
DONE 	HALT		;Stop assembling
	.END		;End program
