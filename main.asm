INCLUDE Irvine32.inc

.DATA

	exEax DWORD ?
	space BYTE " ",0
	negma BYTE "*",0
	exEcx DWORD ?

.CODE
main PROC
	
	call readdec
	mov ecx , eax
	mov exEax, eax
	mov exEcx, eax
	inc ecx
	mov ebx, ecx	; ebx saved ecx Val 
	Loop1:			; (b) Loop1
	sub ecx, eax
	mov edi , ebx
	dec edi 
	mov ecx, edi
	Loop2:			; (b) Loop2
	mov edx, offset space
	call writestring
	LOOP Loop2		; (e) Loop2
	sub eax, ebx
	add eax,eax
	inc eax
	inc eax
	inc eax
	mov ecx, eax
	Loop3:			; (b) Loop3
	mov edx, offset negma
	call writestring
	LOOP Loop3		; (e) Loop3
	call crlf

	dec ebx
	mov ecx, ebx
	mov eax, exEax

	LOOP Loop1		; (e) Loop 1
	mov ecx, exEcx
	mov ebx,ecx
	dec ecx
	Loop4:			; (b) Loop4
	sub eax,ecx
	inc eax
	mov ecx,eax
	Loop5:			; (b) Loop5
	mov edx, offset space
	call writestring
	LOOP Loop5		; (e) Loop5
	mov ecx,ebx
	add ecx,ecx
	dec ecx
	dec ecx
	dec ecx
	Loop6:			; (b) Loop6
	mov edx, offset negma
	call writestring
	LOOP Loop6		; (e) Loop6
	call crlf

	dec ebx
	mov ecx, ebx
	mov eax, exEax
	LOOP Loop4



	exit
main ENDP
END main