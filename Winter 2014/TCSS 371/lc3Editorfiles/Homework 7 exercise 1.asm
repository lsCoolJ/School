	.ORIG x3000
	LD R6, STACK	;Initialize the stack pointer
	LEA R0, KBHAND	;Load address of the keyboard interrup handler
	STI R0, KBITE	;Store keyboard interrupt handle in the interrup vector table
	LD R0, INTON	;Set bit 14 (15th bit) to 1
	STI R0, KBSR	;Turn on keyboard interrupts
	LEA R4, BUFFER	
	AND R3, R3, #0
LOOP	BR LOOP		;Do nothing
STACK	.FILL x4000
KBITE	.FILL x0180	;Keyboard interrupt vector table entry (must be x180
KBSR	.FILL xFE00
KBDR	.FILL xFE02
INTON	.FILL x4000	;Value used to "turn on" keyboard interrupts (bit 14)
BUFFER	.BLKW #4	;Reserved for ... ?
	.FILL x0000

KBHAND	ADD R6, R6, #-3
	STR R0, R6, #0	;Push R0 onto the stack
	STR R7, R6, #1	;Push R7 onto the stack
	STR R4, R6, #2	;Push R4 onto the stack
	LDI R0, KBDR
	ADD R4, R4, R3
	STR R0, R4, #0
	ADD R5, R3, #-2
	BRn NOTYET
	LEA R0, BUFFER
	PUTS
	AND R3, R3, #0
	BR CLEANUP
NOTYET	ADD R3, R3, #1

CLEANUP	LDR R4, R6, #2	;Pop R4 off the stack
	LDR R7, R6, #1	;Pop R7 off the stack
	LDR R0, R6, #0	;Pop R0 off the stack
	ADD R6, R6, #3
	RTI
	.END