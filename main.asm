INCLUDE Irvine32.inc

.DATA
	
	Data DWORD 21 Dup(?)
	Data1 DWORD 21 Dup(?)
	num DWORD ?
	num1 DWORD ?
	num2 DWORD ?
	PO DWORD "["
	PC DWORD "]"
	COM DWORD ", "

.CODE
main PROC
	
	call readdec
	mov num,eax

	mov edi , offset Data
	mov ecx, num
	Loop1:
		call readdec
		mov [edi], eax
		add edi, 4
	LOOP Loop1
	mov edi , offset Data
	mov edx, [edi]
	mov num1,edx
	add edi, 4
	mov edx, [edi]
	mov num2,edx
	

	mov edx, offset PO
	call writestring
	
	mov ecx, num

	dec ecx

	Loop2:
		mov eax, [edi]
		call writedec
		mov edx,offset COM
		call writestring
		add edi, 4
	LOOP Loop2

	mov eax, num1
	call writedec
	mov edx,offset COM
	call writestring
	mov eax, num2
	call writedec
	mov edx,offset PC
	call writestring

	exit
main ENDP

END main