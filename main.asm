INCLUDE Irvine32.inc

.DATA
	Count BYTE 0
	Arr1 BYTE 21 dup("0")  
	Arr2 BYTE 21 dup("0") 
	isWrong BYTE " IS WRONG"
	isCorrect BYTE " IS CORRECT"
	isAlmostCorrect BYTE " IS ALMOST CORRECT"

.CODE
main PROC
	
	mov Count ,0
	; Arr1
	mov edx, offset Arr1
	mov ecx, Lengthof Arr1
	call readstring
	mov ebx, eax

	; Arr2
	mov edx, offset Arr2
	mov ecx, Lengthof Arr2
	call readstring
	mov edx, eax

	; if(ebx > edx) => if(!ebx <= edx) JNBE
	; if(ebx < edx) => if(!ebx >= edx) JNAE
	; if(ebx = edx) => JNE

	CMP ebx , edx
	JE True3
	Jb True2
	Ja True1

	True1: 
	mov eax,0
		mov eax, ebx ; eax = ebx edx < eax
		JMP OutPut
	True2:
	mov eax ,0
		mov eax, edx ; eax = edx ebx < edx 
		JMP OutPut
	True3:
	mov eax,0
		mov eax, edx
		JMP OutPut
	 
	 ; ebx = 10 edx = 5  eax = 10  

	 OutPut:
		
		mov ecx,eax
		mov edi , offset Arr1
		mov esi , offset Arr2
		mov eax,0
	    Loop1:
			mov al, [edi]
			mov bl, [esi]
			CMP al,bl
			JNE True4
			inc edi
			inc esi
			JMP goToLoopy
			True4:
				inc Count
				inc edi
				inc esi
			goToLoopy:	LOOP Loop1

	 CMP Count , 2 
		Ja True5
		CMP Count, 0 

			JE True6

			mov edx,0
				mov edx , offset Arr2
				call writestring
				mov edx , offset isAlmostCorrect
				call writestring
				JMP quit

			True5:
			mov edx,0
				mov edx , offset Arr2
				call writestring
				mov edx , offset isWrong
				call writestring
				JMP quit
			True6:
			mov edx,0
				mov edx , offset Arr2
				call writestring
				mov edx , offset isCorrect
				call writestring
				JMP quit
	quit:
	exit
main ENDP
END main


