INCLUDE Irvine32.inc

.DATA

	myWord WORD 1000h

.CODE
main PROC
	
	NEG myWord ; two's complement 1000 
	mov bx, myWord

	call dumpregs

	exit
main ENDP

END main


