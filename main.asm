INCLUDE Irvine32.inc

.DATA
	
	s1Q3 byte " IS CORRECT",0
	s2Q3 byte " IS ALMOST CORRECT",0
	s3Q3 byte" IS WRONG",0
	arr1Q3 byte 20 dup(0)
	arr2Q3 byte 20 dup(0)
	xxQ3 dword ?
	YyQ3 dword ?
	cntrQ3 dword 0

.CODE
main PROC
	
	mov edx,offset arr1Q3
	mov cntrQ3,0
	mov ecx, lengthof arr1Q3
	call readstring
	mov xxQ3,eax
	mov edx,offset arr2Q3
	mov ecx,lengthof arr2Q3
	call readstring
	mov YyQ3,eax 
	mov esi,offset arr1Q3
	mov edi ,offset arr2Q3
	mov edx,offset arr2Q3
	call writestring
	mov eax,xxQ3
	cmp eax,YyQ3
	jae grtQ3 

	mov ecx,YyQ3
	JMP L1Q3
	grtQ3:
	mov ecx,xxQ3

	l1Q3:

	mov ebx,0
	mov bl,[esi]
	cmp bl,[edi]
	je l2Q3
	inc cntrQ3
	l2Q3:
	add esi,1
	add edi,1
	loop l1Q3
	cmp cntrQ3,2

	jbe corQ3
	mov edx, offset s3Q3
	call writestring
	jmp endingQ3

	corQ3:
	cmp cntrQ3,0
	je correctQ3
	mov edx,offset s2Q3
	call writestring
	jmp endingQ3
	correctQ3:
	mov edx,offset s1Q3
	call Writestring


	endingQ3:
	call crlf
	exit
main ENDP

END main