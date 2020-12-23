INCLUDE Irvine32.inc

.DATA

	Data DWORD 21 Dup(?) 
	num DWORD ?
	result DWORD 0

.CODE
main PROC
	
	call readint
	mov num, eax
	add num, eax
	mov edx , eax


	mov ecx, num

	mov edi , offset Data
	
	Loop1:
		call readint
		mov [edi], eax
		add edi, 4
	Loop Loop1

	call readint

	mov ecx , edx
	mov edi , offset Data

	Loop2:
		; if( m >= arr[i] && m <= arr[i+1] ) =>  
		; if( !m < arr[i] && !m > arr[i+1] ) => 
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

	mov eax , result
	call writedec




	exit
main ENDP





END main


