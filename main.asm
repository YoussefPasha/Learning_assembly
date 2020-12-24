INCLUDE Irvine32.inc

.DATA

	EnterQ6 BYTE "Enter a: ",0
	Enter2Q6 BYTE "Enter r: ",0
	Enter3Q6 BYTE "Enter n: ",0
	Enter4Q6 BYTE "The generated sequence:",0

.CODE
main PROC

	mov edx,offset EnterQ6
	call writestring
	
	call readdec
	mov edi, eax ; a

	mov edx,offset Enter2Q6
	call writestring

	call readdec
	mov esi, eax ; r

	mov edx,offset Enter3Q6
	call writestring

	call readdec
	mov ecx, eax ; n

	dec ecx


	mov edx,offset Enter4Q6
	call writestring
	call crlf

	mov eax,edi
	call writedec
		call crlf

	Loop1:
		mov ebx , ecx ; 5
		mov ecx, esi
		mov eax, edi

		dec ecx

		Loop2:
			add eax,edi
		LOOP Loop2
		mov edi,eax
		call writedec
		call crlf
		mov ecx , ebx
	LOOP Loop1
	

	exit
main ENDP





END main