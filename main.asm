INCLUDE Irvine32.inc

.DATA

.CODE
main PROC
	
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

	mov eax, ebx
	call writedec

	exit
main ENDP





END main


