INCLUDE Irvine32.inc

.DATA

.CODE
main PROC
	
	;Comment by the way

	; Ex1 100-50+25

	mov eax,100
	sub eax,50
	add eax,25

	call dumpregs	
	exit
main ENDP

END main


