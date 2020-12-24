INCLUDE Irvine32.inc

.DATA

	Data DWORD 21 Dup(?) 
	num DWORD ?
	result DWORD 0
	EnterQ4 BYTE "Enter the number of intervals N: ",0
	Enter2Q4 BYTE "Enter the N intervals:",0
	Enter3Q4 BYTE "The input number exists the following number of times in the N intervals: ",0

.CODE
main PROC
	
	mov edx,offset EnterQ4
	call writestring

	call readint
	mov num, eax
	add num, eax
	mov ebx , eax


	mov ecx, num

	mov edi , offset Data
	
	mov edx,offset Enter2Q4
	call writestring
	call CRLF

	Loop1:
		call readint
		mov [edi], eax
		add edi, 4
	Loop Loop1

	call readint


	mov ecx , ebx
	mov edi , offset Data

	Loop2:
		CMP eax , [edi]
		JNB True1

		add edi,8
		JMP GoToLoopy
		
		True1: 
			CMP eax , [edi+4]
			JNA True2

			add edi , 8

			JMP GoToLoopy
			True2:
				inc result
				add edi , 8


	GoToLoopy: Loop Loop2

	mov edx,offset Enter3Q4
	call writestring

	mov eax , result
	call writedec




	exit
main ENDP





END main