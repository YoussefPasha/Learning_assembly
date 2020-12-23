INCLUDE Irvine32.inc

.DATA

.CODE
main PROC
	
	call readdec
	mov edx, eax ; a
	call readdec
	mov esi, eax ; r
	call readdec
	mov ecx, eax ; n

	dec ecx


	mov eax,edx
	call writedec
		call crlf

	Loop1:
		mov ebx , ecx ; 5
		mov ecx, esi
		mov eax, edx

		dec ecx

		Loop2:
			add eax,edx
		LOOP Loop2
		mov edx,eax
		call writedec
		call crlf
		mov ecx , ebx
	LOOP Loop1
	

	exit
main ENDP





END main


