SECTION .data
seven   db	"this is revision string",0Ah

SECTION .text
global  _start

_start:
	mov 	ebx , seven 	;initial pointer
	mov 	eax , ebx	;ebx-> eax (one more copy)
	
nextchar:
	cmp	byte[eax], 0   ;dereferancing eax and checking with 0
	jz 	breakfunction
	inc	eax
	jmp 	nextchar	; jump to function start kind of recursion

breakfunction:
	sub   	eax , ebx		;substracted ebx from eax where rresult will be stored in eax result in the form of segments
	mov 	edx , eax	; need to store that length in edx for int80h

	mov 	ecx , seven    ; again for register
	mov 	ebx , 1 	;writing to STDOUT
	mov 	eax , 4 	; optcode of SYS_WRITE
	int 80h

	mov  ebx , 0
	mov  eax , 1
	int  80h	
 
	 
 	



