INCLUDE Irvine32.inc

.DATA
arr dword 25 dup(?)
s1 byte "Enter the number of intervals N:",0
s2 byte "Enter the N intervals:",0
s3 byte "The input number exists the following number of times in the N intervals: ",0
N dword ?
res dword 0
;s3 byte "Enter n:",0

.CODE
main PROC
	mov edx , offset s1
	call writestring 
	call readdec
	call crlf
	mov edx, offset s2
	call writestring 
	call crlf
	mov N,eax
	add N,eax
	mov edx,eax
	mov ecx,N
	mov esi ,offset arr
	;first loop
	l1:
	call readdec
	mov [esi],eax
	add esi,4
	loop l1
	;read M
	call readdec
	mov ecx , edx
	mov esi , offset arr
	;checking intervals
	l2:
	cmp eax,[esi]
	jnb ss1
	add esi,8
	jmp lo
	ss1:
	cmp eax,[esi+4]
	jna ss2
	add esi,8
	jmp lo
	ss2:
	inc res
	add esi,8
	lo:	loop l2
	mov eax,res
	mov edx,offset s3
	call writestring
	call writedec 
	call crlf




	
	

	exit
main ENDP





END main