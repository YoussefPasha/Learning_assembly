INCLUDE Irvine32.inc

.DATA

.CODE
main PROC
	
	ByteVal0 BYTE ? ;Uninitialized byte
	ByteVal1 BYTE 48 ;Decimal value
	ByteVal2 BYTE 30H ;Hexadecimal value
	ByteVal3 BYTE 01010110B ;Binary value
	ByteVal4 BYTE 1, 2, 3, 4 ;Define 4-item array of size byte
	ByteVal5 BYTE 'Hello‘ ;Character string

	ByteVal6 BYTE 'H', 'e', 'l', 'l', 'o’ ;List of characters and it is equivalent to the previous character string 'Hello'
	ByteVal7 BYTE 5 Dup (3) ;Define 5-item array, with each item initialized with value = 3
	ByteVal8 BYTE 3 Dup (1, 2, 3) ;Define 3-item array, with items initialized with values 1, 2, and 3 respectively 2D Arr

	call dumpregs	
	exit
main ENDP

END main


