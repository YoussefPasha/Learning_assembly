INCLUDE Irvine32.inc

.DATA
	
	Data DWORD 21 Dup(?)
	Data1 DWORD 21 Dup(?)
	num DWORD ?
	num1 DWORD ?
	num2 DWORD ?
	PO DWORD "["
	PC DWORD "]"
	COM DWORD " ,"
	EnterQ1 BYTE "Enter number of Elements: ",0
	Enter2Q1 BYTE "Enter your Elements: ",0
	Enter3Q1 BYTE "Your Rotated Elements are: ",0
.CODE
main PROC

	mov edx,offset EnterQ1
	call writestring
	
	call readdec
	mov num,eax

	mov edx,offset Enter2Q1
	call writestring

	mov edi , offset Data
	mov ecx, num
	Loop1:
		call readdec
		mov [edi], eax
		add edi, 4
	LOOP Loop1

	mov edx,offset Enter3Q1
	call writestring

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
	dec ecx
	add edi, 4

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