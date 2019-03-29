		ORG 0000H 	; Program Entry Point (BIOS Start)
endram:		EQU 27FFH 	; Stack at end of RAM (dec 10239)
		LD SP, endram 	; Load Stack Pointer
		JP start	; JP to main program (subs follow)
disp:		LD A, (HL)	; Display sub for null terminated strings (LCD). A and HL affected
		CP 0		; If end of string
		RET Z		; Return to caller
		OUT (01H),A	; Output to LCD
		INC HL		; Move to next letter
		JP disp		; Loop until word is printed
disppi:		LD A, (HL)	; Same as disp but for RasPI
		CP 127		; terminates by 127 instead of 0
		RET Z
		OUT (04H),A
		INC HL
		JP disppi
delay:		NOP		; Execute nops for delay. Value in B. 
		DJNZ delay	; do while B!=0
		RET		
keybwait:	NOP		; wait for keypress routine (stub)
		RET		
readkeywait:	NOP		; Read keyboard (wait) (stub)
		RET
start:		LD A, 0E0H	; Clear LCD
		OUT (01H), A	
		LD HL, lcdm	; Display Message
		CALL disp
		LD HL, pibytes1	; send bytes to PI for selection screen
		call disppi
		HALT
lcdm:		DEFB "RAINBOW PROJECT"
		DEFB 0
pibytes1:	DEFB 0FFH, 0FEH
		DEFB 0FDH, 05H, 01H
		DEFB "RAINBOW PROJECT"
		DEFB 0FDH, 05H, 03H
		DEFB "Z80 COMPUTER "
		DEFB "SYSTEM"
		DEFB 0FDH, 02H, 05H
		DEFB "PRESS"
		DEFB 0FDH, 02H, 07H
		DEFB "1 FOR SYSTEM "
		DEFB "DEMO"
		DEFB 0FDH, 02H, 09H
		DEFB "2 FOR TRIVIA "
		DEFB "GAME"
		DEFB 07FH