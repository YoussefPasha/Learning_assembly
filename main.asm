INCLUDE Irvine32.inc

.DATA

.CODE
main PROC
	
	;; Remember WORD SAVED IN 2 BYTES

	WordVal0 WORD ? ;Uninitialized word
	WordVal3 WORD 65, 310 ;Define 2-word array
	WordVal4 WORD 10 Dup (43) ;Define 10-word array, with each item initialized with the value = 43

	;; Remember DWORD SAVED IN 4 BYTES

	DWordVal0 DWORD ? ;Uninitialized double word
	DWordVal2 DWORD 6F34A030H ;Hexadecimal value
	DWordVal3 DWORD 69065, 350, 65 ;Define 3-double-word array
	DWordVal4 DWORD 5 Dup (?) ;Define 5-double-word array without initializing its items

	
	call dumpregs	
	exit
main ENDP

END main


