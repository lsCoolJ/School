	.ORIG x3000	;start program at line x3000
	BRnzp PROG	;automatically branch to start
CHECK	.FILL x007F	;fills this memory location with the number 127
VALUE	.FILL x4000	;fills this memory location with the address x4000
PROG	AND R1, R1, #0	;clear register 1
	LD R2, CHECK	;loads register 2 with 127
	LDI R1, VALUE	;loads register 1 with value to be checked
	NOT R3, R1	;flip bits in R1
	ADD R3, R3, #1	;add one to complete 2's complement
	ADD R4, R3, R2	;subtract value from 127
	BRzp BRANCH	;if value is negative, print character
	HALT		;Halt program
BRANCH	ADD R0, R1, #0	;load R0 with R1
	OUT		;Print out ASCII character
	HALT		;Halt program
	.END		;END program
	