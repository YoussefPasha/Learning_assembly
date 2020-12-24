INCLUDE Irvine32.inc

.DATA
	
	str1Q2 byte"Please, Enter your first index: ",0
	str2Q2 byte"Please, Enter your second index: ",0
	str3Q2 byte"Please, Enter your word: ",0
	str4Q2 byte 30 dup(?),0
	str5Q2 byte "Your Swapped word: ",0
	xQ2 dword ?
	yQ2 dword ?
	zzQ2 dword ?

.CODE
main PROC
	
	mov edx,offset str1Q2
	mov esi, offset str4Q2
	mov ecx,lengthof str4Q2
	mov xQ2,ecx
	call writestring 
	call readdec
	mov yQ2,eax
	;call crlf

	mov edx,offset str2Q2
	call writestring
	call readdec
	mov zzQ2,eax

	;call crlf

	mov edx,offset str3Q2
	call writestring
	mov ecx,30
	mov edx,offset str4Q2
	call readstring	
	mov esi,offset str4Q2
	dec yQ2
	dec zzQ2
	mov edi,esi
	add edi,yQ2
	mov bl,[edi]
	add esi,zzQ2
	xchg bl,[esi]
	mov [edi],bl
	mov edx,offset str5Q2
	call writestring
	mov edx,offset str4Q2
	call writestring
	call crlf
	exit
main ENDP

END main