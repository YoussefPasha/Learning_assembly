INCLUDE Irvine32.inc

.DATA
	
	byteVal BYTE 10001111b

.CODE
main PROC
	
	movzx ax, byteVal ; AX = 0000000010001111b

	exit
main ENDP

END main


