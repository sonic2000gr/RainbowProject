;
; Rainbow Project Demo Program
; For Festival use
;
; (C) 2018 - The Rainbow Project Team

	org 0x0000 	; Program entry point
endram: equ 0x27FF 	; Stack at end of RAM (dec 10239) 
	LD SP, endram   ; Load Stack Pointer
	JP start	; JP to main program (subs follow)
disp:	LD A,(HL)	; Display subroutine for null terminated strings 
	CP 0		; affects A, HL. HL points to string.
	JP Z, dend	; RET Z could be used, I know...
	OUT (0x1),A	; Display is on port 0x1 (keyboard will be 0x0)
        INC HL		; Move to next letter
        JP disp		; Loop until word is printed
dend:	RET		; Return to caller
delay:	NOP		; Delay subroutine. Affects B. B must have a valid
	DJNZ delay	; delay value
	RET		; Return to caller
start:	LD C, 192	; Initial display position (0,0)
stloop:	LD A,C		; Load to A for out 
	CP 208		; if end of screen line 0, exit star demo
        JP Z, msgst	; and proceed with names
	OUT (0x1),A	; Send command to display
	LD A,42		; Load A with ASCII for *
	OUT (0x1),A	; Send * to screen
	LD A,224	; Clear screen (no delay!)
	OUT (0x1),A	; Send clear command
	INC C		; Increase column
	JP stloop	; and repeat
msgst:  LD A, 192	; Initial display position (0,0)
	OUT (0x1),A	; Send command to display
	LD HL, messg	; Get HL poiting to Rainbow Project string
	CALL disp	; Display it using the subroutine
	LD B,10		; Load B with delay value
	CALL delay	; Call delay subroutine
	LD HL, mesg2	; Load address of first name (INC HL would also do)
start2:	LD A,224	; Clear screen
	OUT (0x1),A	; Send clear command
	LD A, 192	; Initial display position (0,0)
	OUT (0x1),A	; Send command to display
        CALL disp	; Display message
	LD A,208	; Move cursor to second line
	OUT (0x1),A	; Send command to display
	INC HL		; Get to the next message
	CALL disp	; Display it using the subroutine
	LD B,10		; Load B with delay value
	CALL delay	; Call delay subroutine
	INC HL		; Get to the next message
	LD A,(HL)	; Load A with the first character of the message
	CP 255		; If A=255, no more messages. HALT.
	JP NZ, start2	; else loop
	HALT		; HALT here. HALT LED lights up. Press reset to restart
	org 0x1000	; String Messages start here.
messg:	defm "Rainbow Project"
	defb 0
mesg2:	defm "Nikos"
	defb 0
	defm "Koutsonikolis"
        defb 0
	defm "Giorgos"
	defb 0
	defm "Papadakis"
	defb 0
	defm "Nikos"
	defb 0
	defm "Gkiomakis"
	defb 0
	defm "Giorgos"
	defb 0
	defm "Krommydakis"
	defb 0
	defm "Alexandros"
	defb 0
	defm "Kordatzakis"
	defb 0
	defm "Eftichios"
	defb 0
	defm "Giakoumakis"
	defb 0
	defm "Iasonas"
	defb 0
	defm "Mavrommatakis"
	defb 0
	defm "Giorgos"
	defb 0
	defm "Priftis"
	defb 0
	defm "Manolis"
	defb 0
	defm "Kiagias"
	defb 0
	defb 255
