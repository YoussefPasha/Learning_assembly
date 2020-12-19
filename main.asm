INCLUDE Irvine32.inc

.DATA

.CODE
main PROC
	mov eax,3
	mov bx,ax

	add eax,4
	add al,ah

	mov ebx,6
	sub ebx,3
	call dumpregs	
	exit
main ENDP

END main


