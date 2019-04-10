		ORG 0000H 	; Program Entry Point (BIOS Start)
endram:	EQU 27FFH 	; Stack at end of RAM (dec 10239)
		LD SP, endram 	; Load Stack Pointer
		JP start	; JP to main program (subs follow)
disp:		LD A, (HL)	; Display sub for null terminated strings (LCD). A and HL affected
		CP 0		; If end of string
		RET Z		; Return to caller
		OUT (01H),A	; Output to LCD
		INC HL		; Move to next letter
		JP disp		; Loop until word is printed
disppi:	LD A, (HL)	; Same as disp but for RasPI
		CP 127		; terminates by 127 instead of 0
		RET Z
		OUT (04H),A
		INC HL
		JP disppi
delay:		NOP		; Execute nops for delay. Value in B. 
		DJNZ delay	; do while B!=0
		RET

start:		LD A, 0E0H	; Clear LCD
		OUT (01H), A
		LD HL, lcdm	; Display Message
		CALL disp

startquiz:	LD A, 0FBH   ; Show TI Screen
		OUT (04H), A
		LD B, 10
		CALL delay	; Wait a bit
		
		LD HL, q1	; send bytes to PI for quiz
		call disppi	
		LD B,10
		call delay
		LD HL, q1a
		call disppi
		LD B, 10
		call delay

		LD HL, q2	; send bytes to PI for quiz
		call disppi	
		LD B,10
		call delay
		LD HL, q2a
		call disppi
		LD B, 10
		call delay

		LD HL, q3	; send bytes to PI for quiz
		call disppi	
		LD B,10
		call delay
		LD HL, q3a
		call disppi
		LD B, 10
		call delay

		LD HL, q4	; send bytes to PI for quiz
		call disppi	
		LD B,10
		call delay
		LD HL, q4a
		call disppi
		LD B, 10
		call delay

		LD HL, q5	; send bytes to PI for quiz
		call disppi	
		LD B,10
		call delay
		LD HL, q5a
		call disppi
		LD B, 10
		call delay
		
		LD HL, q6	; send bytes to PI for quiz
		call disppi	
		LD B,10
		call delay
		LD HL, q6a
		call disppi
		LD B, 10
		call delay

		LD HL, q7	; send bytes to PI for quiz
		call disppi	
		LD B,10
		call delay
		LD HL, q7a
		call disppi
		LD B, 10
		call delay

		LD HL, q8	; send bytes to PI for quiz
		call disppi	
		LD B,10
		call delay
		LD HL, q8a
		call disppi
		LD B, 10
		call delay

		LD HL, q9	; send bytes to PI for quiz
		call disppi	
		LD B,10
		call delay
		LD HL, q9a
		call disppi
		LD B, 10
		call delay

		LD HL, q10	; send bytes to PI for quiz
		call disppi	
		LD B,10
		call delay
		LD HL, q10a
		call disppi
		LD B, 10
		call delay

		JP startquiz
		
lcdm:		DEFB "Rainbow Project"
		DEFB 0D0H
		DEFB "Z80 CPU Running"
		DEFB 0
q1:		DEFB 0FFH 		; First question - all reset
		DEFB 0FCH, 01H, 01H	; Set logo position
		DEFB 080H		; Display logo
		DEFB 0FDH, 05H, 01H	
		DEFB "RAINBOW PROJECT"
		DEFB 0FDH, 05H, 03H
		DEFB "What is the "
		DEFB "address bus "
		DEFB 0FDH, 05H, 04H
		DEFB "width of Z80"
		DEFB 0FDH, 05H, 07H
		DEFB "1. 8 BIT"
		DEFB 0FDH, 05H, 09H
		DEFB "2. 16 BIT"
		DEFB 0FDH, 05H, 0BH
		DEFB "3. 20 BIT"
		DEFB 0FDH, 05H, 0DH
		DEFB "4. 32 BIT"
		DEFB 07FH
q1a:		DEFB 0FDH, 05H, 0FH
		DEFB "Correct: 2"
		DEFB 07FH
q2:		DEFB 0FEH		; clear screen
		DEFB 0FDH, 05H, 01H	
		DEFB "RAINBOW PROJECT"
		DEFB 0FDH, 05H, 03H
		DEFB "What is max "
		DEFB "memory size "
		DEFB 0FDH, 05H, 04H
		DEFB "of Z80"
		DEFB 0FDH, 05H, 07H
		DEFB "1. 16 Kbyte"
		DEFB 0FDH, 05H, 09H
		DEFB "2. 16 Mbyte"
		DEFB 0FDH, 05H, 0BH
		DEFB "3. 64 Kbyte"
		DEFB 0FDH, 05H, 0DH
		DEFB "4. 128 Mbyte"
		DEFB 07FH
q2a:		DEFB 0FDH, 05H, 0FH
		DEFB "Correct: 3"
		DEFB 07FH
q3:		DEFB 0FEH		; clear screen
		DEFB 0FDH, 05H, 01H	
		DEFB "RAINBOW PROJECT"
		DEFB 0FDH, 05H, 03H
		DEFB "Which Z80 "
		DEFB "variant runs at"
		DEFB 0FDH, 05H, 04H
		DEFB "6 MHz?"
		DEFB 0FDH, 05H, 07H
		DEFB "1. Z80B"
		DEFB 0FDH, 05H, 09H
		DEFB "2. Z80A"
		DEFB 0FDH, 05H, 0BH
		DEFB "3. Z80C"
		DEFB 0FDH, 05H, 0DH
		DEFB "4. Z80H"
		DEFB 07FH
q3a:		DEFB 0FDH, 05H, 0FH
		DEFB "Correct: 1"
		DEFB 07FH
q4:		DEFB 0FEH		; clear screen
		DEFB 0FDH, 05H, 01H	
		DEFB "RAINBOW PROJECT"
		DEFB 0FDH, 05H, 03H
		DEFB "When was Z80 "
		DEFB "first"
		DEFB 0FDH, 05H, 04H
		DEFB "produced?"
		DEFB 0FDH, 05H, 07H
		DEFB "1. 1974"
		DEFB 0FDH, 05H, 09H
		DEFB "2. 1981"
		DEFB 0FDH, 05H, 0BH
		DEFB "3. 1976"
		DEFB 0FDH, 05H, 0DH
		DEFB "4. 1990"
		DEFB 07FH
q4a:		DEFB 0FDH, 05H, 0FH
		DEFB "Correct: 3"
		DEFB 07FH
q5:		DEFB 0FEH		; clear screen
		DEFB 0FDH, 05H, 01H	
		DEFB "RAINBOW PROJECT"
		DEFB 0FDH, 05H, 03H
		DEFB "What is the "
		DEFB "transistor count"
		DEFB 0FDH, 05H, 04H
		DEFB "of Z80?"
		DEFB 0FDH, 05H, 07H
		DEFB "1. 4500"
		DEFB 0FDH, 05H, 09H
		DEFB "2. 8500"
		DEFB 0FDH, 05H, 0BH
		DEFB "3. 29000"
		DEFB 0FDH, 05H, 0DH
		DEFB "4. 68000"
		DEFB 07FH
q5a:		DEFB 0FDH, 05H, 0FH
		DEFB "Correct: 2"
		DEFB 07FH
q6:		DEFB 0FEH		; clear screen
		DEFB 0FDH, 05H, 01H	
		DEFB "RAINBOW PROJECT"
		DEFB 0FDH, 05H, 03H
		DEFB "What does A "
		DEFB "stand for in "
		DEFB 0FDH, 05H, 04H
		DEFB "Z80 register "
		DEFB "set?"
		DEFB 0FDH, 05H, 07H
		DEFB "1. Adder"
		DEFB 0FDH, 05H, 09H
		DEFB "2. Advanced"
		DEFB 0FDH, 05H, 0BH
		DEFB "3. Appender"
		DEFB 0FDH, 05H, 0DH
		DEFB "4. Accumulator"
		DEFB 07FH
q6a:		DEFB 0FDH, 05H, 0FH
		DEFB "Correct: 4"
		DEFB 07FH
q7:		DEFB 0FEH		; clear screen
		DEFB 0FDH, 05H, 01H	
		DEFB "RAINBOW PROJECT"
		DEFB 0FDH, 05H, 03H
		DEFB "Which CPU is "
		DEFB "Z80 compatible"
		DEFB 0FDH, 05H, 04H
		DEFB "with?"
		DEFB 0FDH, 05H, 07H
		DEFB "1. Intel 8086"
		DEFB 0FDH, 05H, 09H
		DEFB "2. Intel 8080"
		DEFB 0FDH, 05H, 0BH
		DEFB "3. TI TMS9900"
		DEFB 0FDH, 05H, 0DH
		DEFB "4. Motorola 68k"
		DEFB 07FH
q7a:		DEFB 0FDH, 05H, 0FH
		DEFB "Correct: 2"
		DEFB 07FH
q8:		DEFB 0FEH		; clear screen
		DEFB 0FDH, 05H, 01H	
		DEFB "RAINBOW PROJECT"
		DEFB 0FDH, 05H, 03H
		DEFB "Which of the "
		DEFB "following "
		DEFB 0FDH, 05H, 04H
		DEFB "machines "
		DEFB "used a Z80?"
		DEFB 0FDH, 05H, 07H
		DEFB "1. Commodore 64"
		DEFB 0FDH, 05H, 09H
		DEFB "2. Apple II"
		DEFB 0FDH, 05H, 0BH
		DEFB "3. Sinclair ZX "
		DEFB "Spectrum"
		DEFB 0FDH, 05H, 0DH
		DEFB "4. Atari ST"
		DEFB 07FH
q8a:		DEFB 0FDH, 05H, 0FH
		DEFB "Correct: 3"
		DEFB 07FH
q9:		DEFB 0FEH		; clear screen
		DEFB 0FDH, 05H, 01H	
		DEFB "RAINBOW PROJECT"
		DEFB 0FDH, 05H, 03H
		DEFB "Zilog was "
		DEFB "created by "
		DEFB 0FDH, 05H, 04H
		DEFB "engineers who "
		DEFB "originally "
		DEFB 0FDH, 05H, 05H
		DEFB "worked at:"
		DEFB 0FDH, 05H, 07H
		DEFB "1. Intel"
		DEFB 0FDH, 05H, 09H
		DEFB "2. Motorola"
		DEFB 0FDH, 05H, 0BH
		DEFB "3. Fairchild"
		DEFB 0FDH, 05H, 0DH
		DEFB "4. Hewlett "
		DEFB " Packard"
		DEFB 07FH
q9a:		DEFB 0FDH, 05H, 0FH
		DEFB "Correct: 1"
		DEFB 07FH 
q10:		DEFB 0FEH		; clear screen
		DEFB 0FDH, 05H, 01H	
		DEFB "RAINBOW PROJECT"
		DEFB 0FDH, 05H, 03H
		DEFB "The Z80 in "
		DEFB "Rainbow Project"
		DEFB 0FDH, 05H, 04H
		DEFB "can run at max:"
		DEFB 0FDH, 05H, 07H
		DEFB "1. 4 MHz"
		DEFB 0FDH, 05H, 09H
		DEFB "2. 8 MHz"
		DEFB 0FDH, 05H, 0BH
		DEFB "3. 6 MHz"
		DEFB 0FDH, 05H, 0DH
		DEFB "4. 20 MHz"
		DEFB 07FH
q10a:		DEFB 0FDH, 05H, 0FH
		DEFB "Correct: 4"
		DEFB 07FH	