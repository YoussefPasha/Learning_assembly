INCLUDE Irvine32.inc

.DATA
	
	

.CODE
main PROC
	
	mov cx, 0B3A3H ; cx= B3A3H
	movzx ebx,cx ; ebx = 0000B3A3H  ;cx = cl+ch so [cl = A3H] & [ch = B3H]
	movzx edx,cl ; edx = 000000A3H
	movzx cx,ch  ; cx  = 00B3H ; why cx only 4bit ecx => 8bit => cx -> 4bit


	call dumpregs
	exit
main ENDP

END main


