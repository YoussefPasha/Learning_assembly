INCLUDE Irvine32.inc

.DATA

.CODE
main PROC
	mov eax,3
	mov bx,ax
	call dumpregs	
	exit
main ENDP

END main


