		ORG 0000H 	; Program Entry Point (BIOS Start)
endram:	EQU 27FFH 	; Stack at end of RAM (dec 10239)
		LD SP, endram 	; Load Stack Pointer
		LD DE, 250	; Multiply DE
		LD A, 10	; with A
		LD B,8		; 8 bits to shift
		LD HL, 0	; result in HL
start:		add HL,HL	; double HL
		rlca		; rotate A left and check carry
		jr nc, loop  ; if no carry just reloop
		add hl,de	; if carry add de
loop:		djnz start	; repeat from start
		halt