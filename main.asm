INCLUDE Irvine32.inc

.DATA
	
	x DWORD 20005000h
	y DWORD 60004000h
	z DWORD 70003000h
	finalVal Dword ?

.CODE
main PROC
	
	; Hands on

	MOV eax,x
	ADD eax,y
	SUB eax,z
	mov finalVal, eax
	
	exit
main ENDP

END main


