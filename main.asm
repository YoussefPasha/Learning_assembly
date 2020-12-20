INCLUDE Irvine32.inc

.DATA

	myWord WORD 1000h

.CODE
main PROC
	
	inc myWord ; 1001
	mov bx, myWord
	dec bx ; 1000

	call dumpregs

	exit
main ENDP

END main


