INCLUDE Irvine32.inc

.DATA
	EnterQ5 BYTE "Please Enter N: ",0
	Enter2Q5 BYTE "The factorial is: ",0

.CODE
main PROC
	
	mov edx,offset EnterQ5
	call writestring

	call readdec

	mov ecx, eax
	dec ecx
	dec ecx
	mov ebx , eax
	Fac_loop:
		mov esi, ecx
		mov edx, ebx
		sum_loop:
			add ebx, edx
		LOOP sum_loop
		mov ecx, esi
	LOOP Fac_loop

	mov edx,offset Enter2Q5
	call writestring

	mov eax, ebx
	call writedec

	exit
main ENDP





END main