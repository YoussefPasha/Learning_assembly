INCLUDE Irvine32.inc

.DATA
aa dword ?
rr dword ?
nn dword ?
s1 byte "Enter a:",0
s2 byte "Enter r:",0
s3 byte "Enter n:",0

.CODE
main PROC
	mov edx , offset s1
	call writestring 
	call readdec
	mov aa,eax
	call crlf
	mov edx,offset s2
	call writestring
	call readdec
	mov rr,eax
	call crlf
	mov edx, offset s3
	call writestring
	call readdec
	mov nn,eax
	call crlf 
	mov eax,aa
	call writedec
	call crlf 
	mov ecx,nn
	dec ecx 
	l1:
		mov ebx , ecx ; 5
		mov ecx, rr
		mov eax, aa

		dec ecx

	l2:
	add eax,aa
	loop l2
	mov aa,eax
	call writedec
	call crlf
	mov ecx,ebx 
	loop l1
	
	

	exit
main ENDP





END main